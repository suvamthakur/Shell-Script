#! /bin/bash

n=$1
y=0
x=$n

while [ $n -gt 0 ]
do
 r=$(( n%10 ))
 n=$(( n/10 ))
 
 f=1
 for (( i=1;i<=r;i++ ))
 do
  f=$(( f*i ))
 done
 
 y=$(( y+f ))
done

if [ $y -eq $x ]
then 
 echo "$x is a special number"
else
 echo "$x is not a special number"
fi
