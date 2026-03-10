#!/bin/bash
echo "Enter a number:"
read n
# Check if the input is a valid number
if ! [[ "$n" =~ ^[0-9]+$ ]]; then
echo "Invalid input. Please enter a valid number."
exit 1
fi
reversed=0
while [ $n -gt 0 ]; do
reversed=$((reversed * 10))
digit=$((n % 10))
reversed=$((reversed + digit))
n=$((n / 10))
done
echo "Reversed number is $reversed"
