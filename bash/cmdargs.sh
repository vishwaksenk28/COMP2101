#!/bin/bash
# This script demonstrates how the shift command works

# create an empty array to put the command line arguments into
myargs=()
verbosevar=0
debugvar=0
# loop through the command line arguments
while [ $# -gt 0 ]; do
  # tell the user how many things are left on the command line
  echo "There are $# things left to process on the command line."
  # add whatever is in $1 to the myargs array
  myargs+=("$1")
  # tell the user what we did
  echo "Added \'$1\' to the arguments array"

# TASK 1: instead of just adding arguments to an array, use a case statement to recognize some options
#          Options to recognize: -h for help, -v for verbose mode, -d N for debug mode with N being a single digit number
#          If the help option is recognized, print out help for the command and exit
#          If the verbose option is recognized, set a variable to indicate verbose mode is on
#          If the debug optionis recognized, set a variable with the debug level from the number given after the -d on the command line
#             display an'(curl -s icanhazip.com)' error if the user gave the -d option without a single digit number after it
#          Anything that wasn't recognized on the command line should still go into the myargs array
echo "Processing the value '$1'."
case $1 in
  -h)
  echo "Help is added '-h' to the options"
  ;;
  -v)
  echo "Varbose is added '-v' to the options"
  verbosevar=1
  ;;
  -d)
  case "$2" in
    [1-5])
    echo "Debug is added '-d' to the options for $2"
    debugvar=$2
    shift
    ;;
  *)
    echo "[1-5] are level of debug '-d'."
    shift
   esac
   ;;
  *)
 error=$1
 echo "The error is $error"
 shift
 ;;
esac


  # each time through the loop, shift the arguments left
  # this decrements the argument count for us
  shift
  # tell the user we shifted things
  echo "Shifted command line, leaving $# things left to process."
  echo "--------------------------"
  # go back to the top of the loop to see if anything is left to work on
done
echo "Done"
if [ $verbosevar = 1 ]; then
  echo "Varbose mode is On."
else
  echo "Varbose mode is Off."
fi
if [ $debugvar -gt 0 ]; then
  echo "Debug Mode is On with level $debugvar."
else
  echo "Debug Mode is Off."
fi

# TASK2: display the settings and myargs contents
#         Tell the user if vebose mode is on
#         Tell the user if debug mode is on and if it is, what number it is set to
#         Print out the myargs array with a label
