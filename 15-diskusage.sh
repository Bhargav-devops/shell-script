#!/bin/bash

DiskUsage=$(df -hT | grep -vE 'tmp|File')
DiskThreshold=1
message=""

while IFS= read lin
do
    usage=$(echo $lin | awk '{print $6f}' | cut -d % -f1)
    partition=$(echo $lin | awk '{print $1f}')
    if [ $usage -ge $DiskThreshold ]
    then 
        message+="High Disk Usage on $partition : $usage \n"
    fi
done <<< $DiskUsage
echo -e "message: $message"