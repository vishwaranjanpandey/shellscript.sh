#!/bin/bash

echo "this script delete files which are then 30 days "
# +n for greater then n, -n for less then n , n for exect n
#-mtime +30:"get the file more then 30 days"
path=$1
echo "you are in $path"

if [ ! $1 ]; then 
	echo "Boss please enter valid path"
	exit 1
	
#find $path -mtime +30 -delete  

if [[ $? -eq 0 ]]; then
	echo "files are successfully deleted"
else 
	echo "deletion having some issue"
fi	



