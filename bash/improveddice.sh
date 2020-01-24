#!/bin/bash
#
# this script rolls a pair of six-sided dice and displays both the rolls
#

# Task 1:
#  put the number of sides in a variable which is used as the range for the random number
#  put the bias, or minimum value for the generated number in another variable
#  roll the dice using the variables for the range and bias i.e. RANDOM % range + bias

# Task 2:
#  generate the sum of the dice
#  generate the average of the dice

#  display a summary of what was rolled, and what the results of your arithmetic were

# Tell the user we have started processing
###echo "Rolling..."
# roll the dice and save the results
###die1=$(( RANDOM % 6 + 1))
###die2=$(( RANDOM % 6 + 1 ))
# display the results
###echo "Rolled $die1, $die2"

# I set the range as a variable which can be choosed by the user
echo "Choose the number of sided dice you want"
read range
# I set the bias as a variable which can be choosed by the user
echo "Choose the minimum value needed (Recommended value is 1)"
read bias

printf "\n"
echo "Rolling the dice..."
die1=$((RANDOM % range + bias))
die2=$((RANDOM % range + bias))

printf "\n"
echo "The rolled outcomes are $die1, $die2 "

# Generating the sum of the outcomes
printf "\n"
echo "The sum of the outcomes is" $(($die1+$die2))

# Generating the average of the outcomes
printf "\n"
echo "The average of the outcomes is" $((($die1+$die2)/ 2))
printf "\n"
