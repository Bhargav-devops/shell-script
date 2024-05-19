#!/bin/bash

ID=$(id -u)

if [ ID -ne 0 ]
then 
    echo "Error please login as root user"
    exit 1
else
    echo " Your are root user"
fi