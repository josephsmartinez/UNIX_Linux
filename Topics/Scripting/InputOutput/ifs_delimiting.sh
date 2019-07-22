#!/bin/bash

FILE="usernames.csv"
IFS=','
while read -r USERACC FNAME LNAME GEN BD TEAM NUM POS LOC SHELL; do
  echo "Account Name: $USERACC"
  echo "First Name: $FNAME"
  echo "Last Name: $LNAME"
  echo "Gender: $GEN"
  echo "Birthday: $BD"
  echo "Team: $TEAM"
  echo "Number: $NUM"
  echo "Position: $POS"
  echo "Location: $LOC"
  echo "Shell Type: $SHELL"
  echo ""
done <"$FILE"