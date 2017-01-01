#include <jni.h>
#include "scalanim_NativeWrapper__.h"

JNIEXPORT jint JNICALL Java_scalanim_NativeWrapper_00024_plus
  (JNIEnv * env, jobject class, jint value) {

  printf("Printing from JNI...\n");
  fflush(stdout);

  return 42;
}
