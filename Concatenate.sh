#! /bin/bash

read -p "Enter two files: " f1 f2
read -p "Enter the file name to concatenate to: " f
 
if [ -f $f1 -a -f $f2 ]
then
 cat $f1 $f2 > $f
fi

echo "File1: $(cat $f1)"
echo "File2: $(cat $f2)"
echo "New file: $(cat $f)"
