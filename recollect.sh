#!/bin/bash

read -p 'Enter your name: ' nameOfPerson

# echo $nameOfPerson

FILE=/home/aditya/pass-man/$nameOfPerson

if [ -e "$FILE" ]; 
then
	cd $FILE  	
    read -p "Enter the webiste you want the password for : " websiteChoice
	ccat passwords.cpt | grep $websiteChoice 		
else 
	echo "No such user found, please create a user to store passwords first"
fi

