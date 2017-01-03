#!/bin/bash

# compile java source
javac NativeTest.java

# set JAVA_HOME to control which JVM path jnim uses:
export JAVA_HOME=`which java | xargs readlink -f | xargs dirname | xargs dirname`
echo "Using JDK from: ${JAVA_HOME}"

# compile nim
nim --verbosity:1 --app:lib -o:libnativetest.so --threads:on c native.nim
