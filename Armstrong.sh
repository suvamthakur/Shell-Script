#! /bin/bash

n=$1
count=0

x=$n

while [ $x -gt 0 ]
do
   x=$(( x/10 ))
   (( count++ ))
done
x=$n

for (( i=0; i<count ; i++ ))
do
   r=$(( x%10 ))
   x=$(( x/10 ))
   y=$(( r**count + y ))
done

if [ $y -eq  $n ]
 then
   echo "$n is an armstrong number"
 else
   echo "$n is not an armstrong number"
fi
