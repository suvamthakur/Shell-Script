#! /bin/bash

echo -e "--------Process Attributes---------\n"

echo "Process id: $$" 
echo "Process name: $(basename $0)"
echo "Process user: $USER"
echo "Process start time: $(date "+%Y-%m-%d %H:%M:%S")"
echo "Process CPU usage: $(ps -p $$ -o %cpu=)"
echo "Process memory usage: $(ps -p $$ -o %mem=)"


echo "Process id: $$" > processInfo.info
echo "Process name: $(basename $0)" >> processInfo.info
echo "Process user: $USER" >> processInfo.info
echo "Process start time: $(date)" >> processInfo.info
echo "Process CPU usage: $(ps -p $$ -o %cpu=)" >> processInfo.info
echo "Process memory usage: $(ps -p $$ -o %mem=)" >> processInfo.info

echo -e "\nThese information are stored in processInfo.info file"
