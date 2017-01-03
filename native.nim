import jnim

proc Java_NativeTest_run*(env: JNIEnvPtr, obj: jobject) {. cdecl, exportc, dynlib .} =
  system.setupForeignThreadGc()
  echo "Printing from JNI..."
