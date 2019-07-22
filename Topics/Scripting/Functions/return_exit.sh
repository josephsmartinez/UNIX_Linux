#!/bin/bash

function is_foo_or_bar(){
  if [ $1 == "foo" ]; then
    echo "is foo"
    return 0
  elif [ $1 == "bar" ]; then
    echo "is bar"
    return 0
  else
    echo "unknown"
    return 1
  fi
}

BAR="bar"
is_foo_or_bar $BAR
echo $?

FOO="foo"
is_foo_or_bar $FOO
echo $?


POO="poo"
is_foo_or_bar $POO
echo $?