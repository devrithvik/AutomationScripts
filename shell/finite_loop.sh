#!/bin/bash
lines=$1
count=1
for file in `head -n $lines file1.log`
do 
	echo "file name is  $count:$file"
	count=$((count+1))
done	

# INFO:
# It takes only one aurgument that is no.of lines
# It prints the first n lines of a log file quickly
