#!/bin/bash

To_Team=$1
AlertType=$2
BodyType=$3
To_address=$4
Subject=$5

FinalBody=$(sed -e "s/To_Team/$To_Team/g" -e "s/Alert/$AlertType/g" -e "s/Body/$Body/g" template.html)

echo "$FinalBody" | mail -s $Subject $To_address