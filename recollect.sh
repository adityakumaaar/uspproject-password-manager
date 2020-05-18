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
	cd $FILE  	
    read -p "Enter the webiste you want the password for : " websiteChoice

	if [ "$websiteChoice" = "all" ];
		then ccat passwords.cpt
	else
		ccat passwords.cpt | grep $websiteChoice
	fi 		
else 
	echo "No such user found, please create a user to store passwords first"
fi

