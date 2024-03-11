#! /bin/bash

read -p "Enter a no: " n

x=$n

while [ $n -gt 0 ]
do
 r=$(( n%10 ))
 n=$(( n/10 ))
 if [ $r -eq 0 ]
 then
  echo "$x is a duck number"
  exit 0
 fi
done

echo "$x is not a duck number"
