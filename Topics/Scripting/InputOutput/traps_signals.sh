#!/bin/bash
# Example of trapping events and limiting the shell stopping
# This script can only be stop by SIGINT 9

clear
trap 'echo " - Please Press Q to Exit.."' SIGINT SIGTERM SIGTSTP

while [ "$CHOICE" != "Q" ] && [ "$CHOICE" != "q" ]; do
  echo "MAIN MENU"
  echo "========="
  echo "1) One" 
  echo "2) Two"
  echo "3) Three" 
  echo "4) Quit/Exit"
  echo "" 
  read CHOICE
  clear
done