#!/usr/bin/env bash

# forloop
for i in {1..100}
do
  echo $i
done

# start..end..increment BASE 4.0+
for i in {0..100..2}
do
  echo $i
done

# C style loops
for (( i = 0 ; i <= 5; i++ )); do
  ping -c 1 www.google.com
done

# for loop checks for even numbers
for i in {1..99}; do
  if [ $(($i % 2)) == 0 ]
  then
    echo $i
  fi
done

