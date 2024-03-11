#! /bin/bash

n=$1

x=$n
y=0

while [ $x -gt 0 ]
do
  r=$(( x%10 ))
  x=$(( x/10 ))
  y=$(( r + y*10))
done

if [ $y -eq $n ]
then 
  echo "$n is palindrom"
else
  echo "$n is not palindrom"
fi
