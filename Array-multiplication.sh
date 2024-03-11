#! /bin/bash

read -p "Enter length of an array: " n

for (( i=0;i<n;i++ ))
do
  read -p "Enter element: " arr[i]
done

read -p "Enter scalar value: " scalar

for (( i=0;i<n;i++ ))
do
  arr[i]=$(( ${arr[i]}*scalar ))
done

echo "Result: ${arr[@]}"
 
