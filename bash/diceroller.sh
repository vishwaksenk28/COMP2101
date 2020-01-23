#!/bin/bash
#
# this script rolls a six-sided die
#

# Task: Improve this script by making it roll as many dice as there are letters in your first name, instead of just one


echo "
Rolling 5 Six-sided dice...
$(( RANDOM % 6 + 1)) rolled of first dice
$(( RANDOM % 6 + 1)) rolled of second dice
$(( RANDOM % 6 + 1)) rolled of third dice
$(( RANDOM % 6 + 1)) rolled of fourth dice
$(( RANDOM % 6 + 1)) rolled of fifth dice
"

echo "
Rolling a 20-sided dice...
$(( RANDOM % 20 +1)) rolled
"
