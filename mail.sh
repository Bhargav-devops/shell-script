#!/bin/bash

To_Team=$1
AlertType=$2
BodyType=$3
echo "test $BodyType"
EscapeBody=$(printf '%s\n' "$BodyType" | sed -e 's/[]\/$*.^[]/\\&/g');
To_address=$4
Subject=$5

FinalBody=$(sed -e "s/To_Team/$To_Team/g" -e "s/Alert/$AlertType/g" -e "s/Body/$EscapeBody/g" template.html)

echo "$FinalBody" | mail -s "$(echo -e "$Subject\nContent-Type: text/html")" "$To_address"