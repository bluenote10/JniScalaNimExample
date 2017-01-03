#!/bin/bash

cd `dirname $0`

JDK_PATH=`readlink -f $1/..`
echo "Compiling... (using JDK from: ${JDK_PATH})"


# --------------------------------------
# C++
# --------------------------------------
gcc -c -Wall -Werror -fpic -I${JDK_PATH}/include -I${JDK_PATH}/include/linux scalanim_NativeWrapperCpp__.c
gcc -shared -o libnativecpp.so scalanim_NativeWrapperCpp__.o


# --------------------------------------
# Nim
# --------------------------------------

# to control which JVM path jnim uses:
export JAVA_HOME=${JDK_PATH}

# nim --verbosity:1 --app:lib -o:libnativenim.so --debugger:native --debugger c native.nim
nim --verbosity:1 --app:lib -o:libnativenim.so --threads:on c native.nim

