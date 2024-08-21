#!/bin/bash

echo "install multiple pkg using command line argument"

runuser=`/usr/bin/whoami`
if [ "$# -eq 0 " ]; then
       echo "Boss pls provide atleast one software as command line argument"
	exit 1
fi

if [ $runuser != "root" ]; then
	echo "boss please become root user to install software"
	exit 2
fi



