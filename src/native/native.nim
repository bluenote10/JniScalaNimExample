
import jnim

proc Java_scalanim_NativeWrapperNim_00024_addOne*(env: JNIEnvPtr, obj: jobject, value: jint): jint {. cdecl, exportc, dynlib .} =
  # dynlib does not seem to be required
  # exportc alone seems to suffice
  system.setupForeignThreadGc()
  echo "Printing from JNI..."
  result = value + 1
