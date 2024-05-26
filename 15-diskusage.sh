#!/bin/bash

DiskUsage=$(df -hT | grep -vE 'tmp|File')
DiskThreshold=1
message=""

while IFS= read -r line
do
    usage=$($DiskUsage | awk '{print $6f}' | cut -d % -f1)
    partition=$($DiskUsage | awk '{print $1f}')
    if [ $usage -ge $DiskThreshold ]
    then 
        message="High Disk Usage on $partition : $usage"
done <<< $DiskUsage
echo "message: $message"