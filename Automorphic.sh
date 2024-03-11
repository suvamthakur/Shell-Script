#! /bin/bash

n=$1
count=0

x=$n

while [ $n -gt 0 ]
do 
 n=$(( n/10 ))
 (( count++ ))
done
n=$x

square=$(( n*n ))
lastdigit=$(( square%(10**$count) )) 

if [ $x -eq $lastdigit ]
then
 echo "$x is an automorphic number"
else
 echo "$x is not an automorphic number"
fi
