#!/bin/bash

ID=$(id -u)

# echo " script name $0 here $0 gives the script name

TimeStamp=$(date +%F-%H-%M-%S)
LogFile="/tmp/$0-$TimeStamp.log"

Validate(){
    if [ $1 -ne 0 ]
    then
        echo "$2 failed"
    else 
        echo "$2 success"
    fi
}
if [ $ID -ne 0 ]
then
    echo " Error: Please login as root user to install "
    exit 1
else
    echo " you are root user "
fi 

yum install mysql -y &>> $LogFile

Validate $? "installing mysql"

yum install git -y &>> $LogFile

Validate $? "installing git"