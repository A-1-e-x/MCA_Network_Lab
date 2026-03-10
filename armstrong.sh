#!/bin/bash
# Prompt the user to enter a number
echo "Enter a number: "
read c
# Store the original number in a variable
x=$c
sum=0
r=0
n=0
# Loop through each digit of the number
while [ $x -gt 0 ]; do
r=$(( $x % 10 ))
n=$(( $r * $r * $r ))
sum=$(( $sum + $n ))
x=$(( $x / 10 ))
done
# Check if the sum of cubes of digits is equal to the original number
if [ $sum -eq $c ]; then
echo "It is an Armstrong Number."
else
	echo "It is not an Armstrong Number."
fi
