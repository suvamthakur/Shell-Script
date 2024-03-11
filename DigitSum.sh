#! /bin/bash

read -p "Enter a no: " n

y=0

while [ $n -gt 0 ]
do
 r=$(( n%10 ))
 n=$(( n/10 ))
 y=$(( y + $r ))
done

echo "Sum: $y"
