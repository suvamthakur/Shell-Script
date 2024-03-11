#! /bin/bash

n=$1
sp=$(( $2-1 ))
length=$3

substring=${n:sp:length}

echo "Substring of $1 is: $substring"
