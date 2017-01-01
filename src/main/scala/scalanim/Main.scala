package scalanim

import ch.jodersky.jni.nativeLoader

@nativeLoader("native")
object NativeWrapper {
  @native def plus(term: Int): Int
}

object Main {
  
  def main(args: Array[String]) {
    // alternatively, instead of using @nativeLoader
    // System.loadLibrary("native")
    
    println("JNI/Scala/Nim Test")
    
    val res = NativeWrapper.plus(1)
    println("Result from JNI call: " + res)
  }
  
}