#!/bin/bash
shopt -s extglob
read -p  "Enter first name " fname
pat1=^[A-Z]{1}[a-z]{2,}$
if [[ $fname =~ $pat1 ]]
then 
	echo  "accept First name"
else 
	echo  "invalid first name "
fi
echo ""
read -p  "Enter Last name " lname
if [[ $lname =~ $pat1 ]]
then 
	echo  "accept Last name"
else 
	echo  "invalid last name"
fi
echo ""
read -p  "Enter Email id "  email

pat2="^[a-zA-Z0-9]+([._+#][a-zA-Z0-9]+)*@[a-zA-Z]+.[a-zA-Z]{2,4}(.[a-zA-Z]{2,2})?$"
if [[ $email =~ $pat2 ]]
then
        echo "accept email id "
else
        echo "invalid email "
fi
echo ""
read -p  "Enter mobile number "  mob
pat3="(^[0-9]{1,3}[ ]+)?[6-9]+[0-9]{9}$"
if [[ $mob =~ $pat3 ]]
then
        echo " accept mobile number "
else
        echo " invalid mobile number "
fi





