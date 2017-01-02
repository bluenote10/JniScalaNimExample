package scalanim

import ch.jodersky.jni.nativeLoader

@nativeLoader("nativecpp")
object NativeWrapperCpp {

  @native def addOne(term: Int): Int

}


@nativeLoader("nativenim")
object NativeWrapperNim {

  @native def addOne(term: Int): Int

}


object Main {
  
  def main(args: Array[String]) {
    // alternatively, instead of using @nativeLoader
    // System.loadLibrary("nativecpp")
    // System.loadLibrary("nativenim")
    
    println("JNI/Scala/Nim Test")
    
    val resCpp = NativeWrapperCpp.addOne(1)
    println("Result from JNI call (C++): " + resCpp)

    val resNim = NativeWrapperNim.addOne(1)
    println("Result from JNI call (Nim): " + resNim)
  }
  
}