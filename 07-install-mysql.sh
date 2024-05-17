#!/bin/bash

ID=$(id -u)
if [ $ID -ne 0 ]
then 
    echo "Error : please run the cmd with root user"
    exit 1
else 
    echo "you are the root user"
fi
yum install mysql -y
if [ $? -ne 0 ]
then
    echo "Error: installing mysql failed"
else
    echo "Successfully installed mysql"
fi
yum install git -y
if [ $? -ne 0 ]
then
    echo "Error: installing GIT failed"
else
    echo "Successfully installed GIT"
fi