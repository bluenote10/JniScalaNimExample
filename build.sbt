
// Define a task for native builds. Inspired by:
// http://stackoverflow.com/questions/24996437/how-to-execute-a-bash-script-as-sbt-task
// http://stackoverflow.com/questions/24174441/how-to-execute-shell-command-before-compile-task
val buildNative = TaskKey[Unit]("buildNative", "Build native code")
val buildNativeSettings = buildNative := {
	val s: TaskStreams = streams.value
	s.log.info("Building native code...")
  val command = Seq("src/native/build.sh", System.getProperty("java.home"))
	if ((command !) == 0) {
		s.log.success("Native build successful")
	} else {
		throw new IllegalStateException("Native build failed")
	}
}

lazy val root = (project in file("."))
//.enablePlugins(JniNative)
.settings(
	name := "JniScalaNimExample",
	version := "0.1.0",
	scalaVersion := "2.12.1",
	mainClass := Some("scalanim.Main"),

	fork in run := true,
	outputStrategy in run := Some(StdoutOutput),
	javaOptions in run += "-Djava.library.path=src/native",

  // add the task and make 'compile' depend on it
	buildNativeSettings,
	compile in Compile <<= (compile in Compile).dependsOn(buildNative),

	// native source to the watched sources
	watchSources <++= baseDirectory map { path =>
    ((path / "src/native") ** "*.nim").get
	},

	target in javah := file("src/native")
)
