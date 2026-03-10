#!/bin/bash
getFile() {
# Reading txtFileName to convert its content
echo -n "Enter File Name: "
read -r filename
# Checking if file exists
if [ ! -f "$filename" ]; then
echo "File '$filename' does not exist."
exit 1
fi
}
echo "1. Uppercase to Lowercase"
echo "2. Count the number of characters, words, lines"
echo "3. Exit"
echo -n "Enter your Choice (1-3): "
read -r ch
case "$ch" in
1)
# Function Call to get File
getFile
# Converting to lowercase if user chooses 1
echo "Converting Upper-case to Lower-Case"
tr '[:upper:]' '[:lower:]' < "$filename"
;;
2)
echo "Enter the filename: "
read -r file
# Check if file exists
if [ ! -f "$file" ]; then
echo "File '$file' does not exist."
exit 1
fi
# Counting characters, words, and lines
c=$(wc -c < "$file")
w=$(wc -w < "$file")
l=$(wc -l < "$file")
echo "Number of characters in $file is $c"
echo "Number of words in $file is $w"
echo "Number of lines in $file is $l"
;;
*)
# Exiting for all other cases
echo "Exiting..."
exit
;;
esac
