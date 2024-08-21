#!/bin/bash

echo "script to install git"
echo "installation started"

VERSION=`git --version`
if [ $(uname) == Linux ]; then
	echo "this is linux OS, installing git"
	apt-get install git -y
fi
echo "installation complited and version is $VERSION "
