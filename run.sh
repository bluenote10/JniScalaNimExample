#!/bin/bash

for i in `seq 1 1000`; do
  echo "Iteration $i"
  java NativeTest
  if [ "$?" -ne 0 ]; then
    echo "Terminating after segfault"
    break
  fi
done