#!/bin/bash
<<ABOUT 
file decriptors should be <= 3
0 stdin, 1 stdout, 2 stderr
ABOUT

FILE=usernames.csv
# Open file for read and write
exec 5<>$FILE
while read -r line; do
  echo "$line"
done <&5

# Write a new line
#echo "\nfile was read on: `date`" >&5

# Close the file
exec 5>&-
