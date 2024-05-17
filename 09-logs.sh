#!/bin/bash

ID=$(id -u)

# echo " script name $0 here $0 gives the script name

TimeStamp=$(date +%F-%H-%M-%S)
LogFile="/tmp/$0-$TimeStamp.log"
R="\e[31m"
G="\e[32m"
N="\e[0m"

Validate(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 $R failed"
    else 
        echo -e "$2 $G success"
    fi
}
if [ $ID -ne 0 ]
then
    echo -e " $R Error: Please login as root user to install "
    exit 1
else
    echo -e " $G you are root user"
fi 

yum install mysql -y &>> $LogFile

Validate $? "installing mysql"

yum install git -y &>> $LogFile

Validate $? "installing git"