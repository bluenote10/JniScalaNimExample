#include <jni.h>
#include "scalanim_NativeWrapperCpp__.h"

JNIEXPORT jint JNICALL Java_scalanim_NativeWrapperCpp_00024_addOne
  (JNIEnv * env, jobject class, jint value) {

  printf("Printing from JNI...\n");
  fflush(stdout);

  return value + 1;
}
