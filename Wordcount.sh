#! /bin/bash

read -p "Enter a string: " n

count=1

for (( i=0;i<${#n};i++ ))
do
  if [ "${n:i:1}" == " " ]
  then
    (( count++ ))
  fi
done

echo "result: $count"

#count=$(echo "$n" | wc -w) SHORT WAY
