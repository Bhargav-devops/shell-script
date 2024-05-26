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
while IFS=read -r line
do
    echo "Deleting log files $line"
done <<< $FilesToDelete