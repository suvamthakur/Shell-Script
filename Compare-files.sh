#! /bin/bash

file1=$1
file2=$2

if [ ! -f $file1 ] && [ ! -f $file2 ]
then
   echo "File doesn't exists"
   exit 0
fi

diff $file1 $file2
