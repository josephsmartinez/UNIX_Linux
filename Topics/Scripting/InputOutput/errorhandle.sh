#!/bin/bash
# demo of using error hadling with exit

FAIL=`ls -)(`

if [ "$?" -eq 0 ];then
  echo "command ran error code 0"
  elif [ "$?" -gt 0 ];then
    echo "error caught error code 1"
    exit 1
fi