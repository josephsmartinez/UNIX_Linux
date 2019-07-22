#!/bin/bash

## Currnent env vars
printenv
env
set

# Setting user defined variable
FIRSTNAME="john"
SQLUSERNAME="sqluser"
echo $FIRSTNAME
echo $SQLUSERNAME

# Using currently set environment variables
SOME_ENV=$PWD
echo $PATH
echo $LOGNAME
echo $SOME_ENV

## Setting alias names for variables
## NOTE: `shopt` will enable `-s` aliases for interactive shells
shopt -s expand_aliases
alias TODAY=`date`
echo $TODAY

## Export variables
## Exporting a variable causes the variable to be inherited
export TEST="testing command"
echo $TEST

## Set variable

## String types

## Types of Variable (implicit vs explicit)
declare -i TEN=10
declare -p TEN
