#!/bin/bash
if [ $# -eq 1 ]
    then 
        FILE=/home/aditya/pass-man/$1
    else
        read -p 'Enter your name: ' nameOfPerson
        FILE=/home/aditya/pass-man/$nameOfPerson
fi

createdPassword=$(pwgen 20 1)

cd $FILE  	
ccdecrypt passwords.cpt
read -p "Enter webiste name : " websiteName
read -p "Enter username/email-id : " emailid
echo $websiteName "|" $emailid "|" $createdPassword >> passwords
ccencrypt passwords