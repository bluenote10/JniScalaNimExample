package scalanim

import ch.jodersky.jni.nativeLoader

@nativeLoader("nativenim")
object NativeWrapperNim {

  @native def addOne(term: Int): Int

}


object Main {
  
  def main(args: Array[String]) {
    val resNim = NativeWrapperNim.addOne(1)
  }
  
}