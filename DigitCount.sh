#! /bin/bash

n=$1
count=0

if [ $n -lt 0 ]
then
  n=$(( -n ))
fi

while [ $n -gt 0 ]
do
  n=$(( n/10 ))
  (( count++ ))
done

echo "No of digit is: $count"
