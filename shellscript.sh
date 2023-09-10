#!/bin/bash
#
#########
#Check file is present or not
########
#
#if [ -x "terraform.tf" ] ; then
#eicho " file have execute permission"
#if not then 
#else 
#echo "file don't have execute permission"
#fi

# check weather running user is root user or not 

#RUNUSER=`/usr/bin/whoami`
#if [ "$RUNUSER" == "root" ] ; then
#echo " current running user is root user"
#else
#echo " boss you are not root user"
#fi
##################
#Display result of student
##################

#PERC=30
#if [ "$PERC" -ge 75 ] ; then
#echo "  Boss you got first devision"

#elif [ "$PERC" -gt 55 ] ; then
#echo " Boss you got second devision"

#elif [ "$PERC" -gt 35 ] ; then
#echo " Boss you got thirt devision"

#else
#echo " Boss you are fail"
#fi

######################
#create a user if not existing
#######################

##################
#Accept username as command line argument
##################
MYUSER=$1
if [ ! "$MYUSER" ]; then
echo "BOSS ENTER USERNAME"
fi

MYPASS='devops'

################
#Check running user is root user or not
###############

RUNUSER=`/usr/bin/whoami`

if [ "$RUNUSER" != "root" ]; then
echo "BOSSU R NOT ROOT USER U ARE NOT AUTHORIZE TO CREATE USER"
fi

###################
#check creating user is alreay present or not
###################

/usr/bin/id $MYUSER
if [ $? -eq 0 ];then
echo " BOSS the user which u are trying to create is alreay present"
exit
fi

#################
# TO add user
#################

/usr/sbin/useradd $MYUSER

#################
#Set password as standered input
#################

echo "$MYPASS" | /usr/bin/passwd --stdin $MYUSER

################
#Print a success message
################

echo " user is created successfully"








































































