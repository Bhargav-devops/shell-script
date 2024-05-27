#!/bin/bash

DiskUsage=$(df -hT | grep -vE 'tmp|File')
DiskThreshold=1
message=""

while IFS= read -r line
do
    usage=$(echo $line | awk '{print $6f}' | cut -d % -f1)
    partition=$(echo $line | awk '{print $1f}')
    if [ $usage -ge $DiskThreshold ]
    then 
        message+="High Disk Usage on $partition : $usage"
    fi
done <<< $DiskUsage
echo -e "message: $message"
#echo -e "$message" | mail -s "high disk usage" bhargav.devopsaws@gmail.com

sh mail.sh "Devops Team" "High Disk Usage" "$message" "bhargav.devopsaws@gmail.com" "Alret High Disk Usage"
