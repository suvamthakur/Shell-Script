#! /bin/bash

length=$1

for (( i=0; i<length ;i++ ))
do
   read -p "Enter element: " arr[i]
    
done

echo "Given array: ${arr[@]}"

for (( i=0; i<length; i++ ))
do
   for (( j=0; j<length-i-1; j++ ))
   do
     if [ ${arr[j]} -gt ${arr[j+1]} ]
     then
        temp=${arr[j+1]}
      	arr[j+1]=${arr[j]}
        arr[j]=$temp
      fi
   done
done
     
echo "Sorted array: ${arr[@]}" 
