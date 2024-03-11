#! /bin/bash

echo -n "Current working directory: " 
pwd

echo "----List of files modified within last 24 hours-----"

find . -type f -mtime -1 

# -type f -> type of the file , 'f' is regular files
# -1 means last 24hr, +1 means 24hr ago
