#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
file=/etc/passwd
if [ ! -f $file ]
then
    echo -e "$R file doesnt exists $N"
fi

while IFS=":" read -r username password user_id group_id user_fullname home_dir 
do
    echo "username $username"
    echo "password $password"
    echo "user id $user_id"
    echo "user full name $user_fullname"
done < file