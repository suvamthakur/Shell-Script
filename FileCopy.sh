#! /bin/bash

read -p "Enter 1st filename: " f1
read -p "Enter 2nd filename: " f2

touch "$f2"

if [ -f $f1 ]
then
 sed -n '4,10p' $f1 > $f2
 
 echo "Copied from line 4 to 10"
else
 echo "$f1 file not found" 
fi

