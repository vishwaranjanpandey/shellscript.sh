#!/bin/bash

echo "check the current folder if directory exist then delete the folder or directory"

for folder in $(find -type d); 
do 
	echo " the folder is $folder"
	if [ -d test ]; then
		echo " this folder is exists"
		echo "removing the folder"
		rm -rf test
	else	
		echo "test folder doesnot exist"
	fi
done


