#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

echo "Choose the first number"
read firstnum
echo "Choose the second number"
read secondnum
echo "Choose the third number"
read thirdnum

sum=$((firstnum + secondnum + thirdnum))
product=$((firstnum * secondnum * thirdnum))

division=$((firstnum/secondnum))
fpd=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")
remainder=$((firstnum%secondnum))

echo "The sum of the three numbers is $sum"
printf "\n"
echo "The product of the three numbers is $product"
printf "\n"
echo "The division of the first and second number is $division wih a remainder of $remainder. The precise answer would be $fpd"
printf "\n"
###dividend=$((firstnum / secondnum))
###fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")

###cat <<EOF
###$firstnum plus $secondnum is $sum
###$firstnum divided by $secondnum is $dividend
###  - More precisely, it is $fpdividend
###EOF

echo "The answer of the first number raised to the power of second number is echo $(($secondnum**$firstnum))"
printf "\n"
