#!/bin/bash

echo "this program get 5 biggest file in the file system via passing command line argument"

path=$1
echo "$path"
if [ ! $1  ]; then
	echo "Boss please enter valid path as command line argument"
	exit 1
fi

du -ah $path | sort -hr | head -n  5 > /tmp/filesize.txt

echo "this is the list top 5 biggest file the system $path"
cat /tmp/filesize.txt
