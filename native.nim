import jnim
#import jnim.private.jni_wrapper

proc Java_NativeTest_run*(env: JNIEnvPtr, class: jnim.jni_wrapper.jclass) {. cdecl, exportc, dynlib .} =
  system.setupForeignThreadGc()
  echo "Printing from JNI..."
