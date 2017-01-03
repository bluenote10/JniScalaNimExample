java -cp target/scala-2.12/jniscalanimexample_2.12-0.1.0.jar:/home/fabian/.ivy2/cache/org.scala-lang/scala-library/jars/scala-library-2.12.1.jar:/home/fabian/.ivy2/cache/org.scala-lang/scala-reflect/jars/scala-reflect-2.12.1.jar:/home/fabian/.ivy2/cache/ch.jodersky/sbt-jni-macros_2.12/jars/sbt-jni-macros_2.12-1.2.5.jar:/home/fabian/.ivy2/cache/org.typelevel/macro-compat_2.12/jars/macro-compat_2.12-1.1.1.jar -Djava.library.path=src/native scalanim.Main


gdb java


run -cp target/scala-2.12/jniscalanimexample_2.12-0.1.0.jar:/home/fabian/.ivy2/cache/org.scala-lang/scala-library/jars/scala-library-2.12.1.jar:/home/fabian/.ivy2/cache/org.scala-lang/scala-reflect/jars/scala-reflect-2.12.1.jar:/home/fabian/.ivy2/cache/ch.jodersky/sbt-jni-macros_2.12/jars/sbt-jni-macros_2.12-1.2.5.jar:/home/fabian/.ivy2/cache/org.typelevel/macro-compat_2.12/jars/macro-compat_2.12-1.1.1.jar -Djava.library.path=src/native scalanim.Main



valgrind --leak-check=yes --trace-children=yes --smc-check=all --log-file=valgrind.log java -cp target/scala-2.12/jniscalanimexample_2.12-0.1.0.jar:/home/fabian/.ivy2/cache/org.scala-lang/scala-library/jars/scala-library-2.12.1.jar:/home/fabian/.ivy2/cache/org.scala-lang/scala-reflect/jars/scala-reflect-2.12.1.jar:/home/fabian/.ivy2/cache/ch.jodersky/sbt-jni-macros_2.12/jars/sbt-jni-macros_2.12-1.2.5.jar:/home/fabian/.ivy2/cache/org.typelevel/macro-compat_2.12/jars/macro-compat_2.12-1.1.1.jar -Djava.library.path=src/native scalanim.Main -Djava.compiler=NONE


valgrind --tool=memcheck --trace-children=yes --smc-check=all --log-file=valgrind.log java -cp target/scala-2.12/jniscalanimexample_2.12-0.1.0.jar:/home/fabian/.ivy2/cache/org.scala-lang/scala-library/jars/scala-library-2.12.1.jar:/home/fabian/.ivy2/cache/org.scala-lang/scala-reflect/jars/scala-reflect-2.12.1.jar:/home/fabian/.ivy2/cache/ch.jodersky/sbt-jni-macros_2.12/jars/sbt-jni-macros_2.12-1.2.5.jar:/home/fabian/.ivy2/cache/org.typelevel/macro-compat_2.12/jars/macro-compat_2.12-1.1.1.jar -Djava.library.path=src/native scalanim.Main -Djava.compiler=NONE


