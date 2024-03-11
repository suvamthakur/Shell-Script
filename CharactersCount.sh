#! /bin/bash

date_time=$(date "+%Y-%m-%d %H:%M:%S") 
pwd=$(pwd)
username=$USER

read -p "Enter file name: " f

echo "Date and time: $date_time" > $f
echo "Present working directory: $pwd" >> $f
echo "Username: $username" >> $f

echo "$(cat $f)" 

count=$(wc -c < "$f")
echo "No of characters in the file: $count"
