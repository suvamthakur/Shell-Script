#! /bin/bash

a=$1
b=$2

x=$a
y=$b

if [ $a -eq 0 -a $b -ne 0 ]
then 
 gcd=$b
elif [ $a -ne 0 -a $b -eq 0 ]
then
 gcd=$a
elif [ $a -eq 0 -a $a -eq 0 ]
then
 gcd=0
else
 r=1
 while [ $r -ne 0 ]
 do
  r=$(( a%b ))
  a=$b
  b=$r
 done
 gcd=$a
fi

lcm=$(( ( $x*$y ) / $gcd )) 

echo "LCM is: $lcm"
