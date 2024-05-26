#!/bin/bash

Source_Dir="/tmp/shellscript-logs"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ ! -d "$Source_Dir" ]
then
    echo -e " $R directory doesnt exists $N" 
fi

FilesToDelete=$(find $Source_Dir -type f -mtime +14 -name "*.log")
while IS= read -r line
do
    echo -e "Deleting log $G files $line $N"
    rm -rf $line
done <<< $FilesToDelete