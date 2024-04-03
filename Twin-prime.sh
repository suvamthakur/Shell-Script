#! /bin/bash

a=$1
b=$2

if [ $a -eq 0 -o $b -eq 0 ]
then 
 echo "Not twin prime"
 exit 0
fi

if [ $a -eq 1 -o $b -eq 1 ]
then 
 echo "Not twin prime"
 exit 0
fi

is_prime () {
 n=$1
 for (( i=2;i<=n/2; i++ ))
 do
  if [ $(( n%i )) -eq 0 ]
  then 
   return 0
  fi
 done
 return 1
}

is_prime $a
if [ $? -eq 0 ]
then
 echo "Not twin prime"
 exit 0
fi

is_prime $b
if [ $? -eq 0 ]
then
 echo "Not twin prime"
 exit 0
fi

if [ $(( a-b )) -eq 2 ] || [ $(( b-a )) -eq 2 ]
then
  echo "Twin prime"
 else 
  echo "Not twin prime"
fi


