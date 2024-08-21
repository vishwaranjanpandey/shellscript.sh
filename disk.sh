#!/bin/bash

echo "check disk usages"
disk_size=`df -H | grep /dev/root | awk '{print $5}' | cut -d % -f1`

echo "$disk_size is filled"
if [ $disk_size -gt 80 ]; then
	echo "your disk utilization is reached to $disk_size,expand disk or delete something "
else
	echo "enough disk is available"
fi


