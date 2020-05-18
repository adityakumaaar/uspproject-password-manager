#!/bin/bash

if [ $# -eq 1 ]
    then 
        FILE=/home/aditya/pass-man/$1
    else
        read -p 'Enter your name: ' nameOfPerson
        FILE=/home/aditya/pass-man/$nameOfPerson
fi

if [ -e "$FILE" ]; 
then
	echo "Folder exists"
	cd $FILE  	
	ccdecrypt passwords.cpt
	read -p "Enter webiste name : " websiteName
	read -p "Enter username/email-id : " emailid
	read -p "Enter password : " websitePassword
	echo $websiteName "|" $emailid "|" $websitePassword >> passwords
	ccencrypt passwords
			
else 
	echo "Creating folder..."
    mkdir $FILE
	cd $FILE
	touch passwords
	read -p "Enter webiste name : " websiteName
	read -p "Enter username/email-id : " emailid
	read -p "Enter password : " websitePassword
	echo $websiteName "|" $emailid "|" $websitePassword >> passwords
	ccencrypt passwords
fi

