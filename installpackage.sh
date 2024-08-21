#!/bin/bash

echo "this script is to install package apache2"
echo "installing package"

apt list --installed | grep apache2

if [ $? -eq 0 ]; then
	echo "package apache2 already installed"
	echo "removing package"
	sudo apt remove apache2* -y
else 
	echo "package installing package now!!!!"
	apt-get install apache2 -y
fi	
echo "apache2 package install successfully"
