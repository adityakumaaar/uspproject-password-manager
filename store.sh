#!/bin/bash

read -p 'Enter your name: ' nameOfPerson

# echo $nameOfPerson

FILE=/home/aditya/pass-man/$nameOfPerson

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

