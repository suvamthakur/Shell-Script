#! /bin/bash

a=$1
b=$2

if [ $a -eq 0 -a $b -ne 0 ]
then 
  echo "GCD is: $a"
elif [ $a -ne 0 -a $b -eq 0 ]
then
  echo "GCD is: $b"
elif [ $a -eq 0 -a $b -eq 0 ]
then 
  echo "GCD is: 0"
else
  r=1
  while [ $r -ne 0 ]
  do
    r=$(( a%b ))
    a=$b
    b=$r
  done
  echo "GCD is: $a"
fi
