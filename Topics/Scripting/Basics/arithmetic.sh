#!/bin/bash

expr 1 + 2
expr 1 - 2
expr 2 / 1
expr 2 * 2
expr 15 % 3

# Basic arithmetic using let
let a=5+4
echo $a # 9
let "a = 5 + 4"
echo $a # 9
let a++
echo $a # 10
let "a = 4 * 5"
echo $a # 20
let "a = $1 + 30"
echo $a # 30 + first command line argument