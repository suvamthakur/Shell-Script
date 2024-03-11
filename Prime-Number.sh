#! /bin/bash

n=$1

if [ $n -le 2 ] 
then
  echo "$n is not a prime number"
  exit 0
fi

for (( i=2; i*i<=n; i++ ))
do
  if [ $((n%i)) -eq 0 ]
  then
    echo "$n is not a prime number"
    exit 0
  fi
done

echo "$n is a prime number"
  
