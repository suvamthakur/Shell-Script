#! /bin/bash

n=$1

if (( n%7 == 0 )) || (( n%10 == 0 ))
then
  echo "$1 is a Buzz number"
else 
  echo "$1 is not a Buzz number"
fi
