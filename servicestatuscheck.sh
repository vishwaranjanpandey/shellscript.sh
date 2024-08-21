#!/bin/bash
echo "==check service status running or not"
status=`systemctl status apache2 | awk 'NR==3{print}'|cut -d ':' -f 2 | cut -d '(' -f 1`
echo "$status"

if [ $status = "active" ]; then
	echo "Boss your service apache2 are running fine "
else
	echo "Boss your apache2 servive having some issue and its not in running status"
	echo "restarting service"
	systemctl start apache2
fi


