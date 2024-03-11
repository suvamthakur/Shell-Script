#! /bin/bash

n=$1

i0=0
i1=1

echo -e "$i0 $i1 \c"

for (( i=2; i<=n ; i++ ))
do
   f=$(( i0+i1 ))
   i0=$i1
   i1=$f 
   echo -e "$f \c"
done
