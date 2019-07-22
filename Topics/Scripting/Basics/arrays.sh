#!/bin/bash

NAMES=("John" "Mike" "Sammy" "Kim")
echo ${NAMES[*]}
COUNT=0

for name in ${NAMES[@]}; do
  echo $COUNT $name
  COUNT=$(($COUNT + 1))
done
