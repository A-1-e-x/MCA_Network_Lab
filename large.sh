#!/bin/bash
echo "Enter the 1st number:"
read m
# Validate input for the first number
if [ -z "$m" ] || ! [[ "$m" =~ ^[0-9]+$ ]]; then
echo "Error: '$m' is not a valid number."
exit 1
fi
echo "Enter the 2nd number:"
read n
# Validate input for the second number
if [ -z "$n" ] || ! [[ "$n" =~ ^[0-9]+$ ]]; then
echo "Error: '$n' is not a valid number."
exit 1
fi
echo "Enter the 3rd number:"
read o
# Validate input for the third number
if [ -z "$o" ] || ! [[ "$o" =~ ^[0-9]+$ ]]; then
echo "Error: '$o' is not a valid number."
exit 1
fi
# Find the largest number
if [ $m -gt $n ] && [ $m -gt $o ]; then
echo "Largest number is $m"
elif [ $n -gt $m ] && [ $n -gt $o ]; then
echo "Largest number is $n"
else
echo "Largest number is $o"
fi
