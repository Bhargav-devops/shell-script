#!/bin/bash

ID=$(id -u)

Validate(){
    if [ $1 -ne 0]
    then
        echo "$2 failed"
    else 
        echo "$2 success"
}
if [ $ID -ne 0 ]
then
    echo " Error: Please login as root user to install "
    exit 1
else
    echo " you are root user "
fi 

yum install mysql -y

Validate $? "installing mysql"

yum install git -y

Validate $? "installing git"