lazy val root = (project in file(".")).
settings(
	name := "JniScalaNimExample",
	version := "0.1.0",
	scalaVersion := "2.12.1",
	mainClass := Some("scalanim.Main"),

	fork in run := true,
	outputStrategy in run := Some(StdoutOutput)
)
