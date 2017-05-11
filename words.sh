
#!bin/bash

echo "Enter the file to be considered as wordlist"
read e
echo "Enter the filename to be purify"
read b
cat $b | grep -v -f $e > temp
cp temp $b
rm temp

