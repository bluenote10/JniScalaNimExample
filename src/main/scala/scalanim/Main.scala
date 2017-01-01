package scalanim

object NativeWrapper {
  @native def plus(term: Int): Int
}

object Main {
  
  def main(args: Array[String]) {
    println("JNI/Scala/Nim Test")
  }
  
}