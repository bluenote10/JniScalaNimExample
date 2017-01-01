#!/bin/bash

cd `dirname $0`

JDK_PATH=`readlink -f $1/..`
echo "Compiling... (using JDK from: ${JDK_PATH})"

gcc -c -Wall -Werror -fpic -I${JDK_PATH}/include -I${JDK_PATH}/include/linux scalanim_NativeWrapper__.c
gcc -shared -o libnative.so scalanim_NativeWrapper__.o

