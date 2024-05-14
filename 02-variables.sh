#!/bin/bash

# variables
person1=ramesh
person2=raju
echo "$person1: HI gm"
echo "$person2: hi vm"
echo "$person1: hw r u"
echo "$person2: im fine"
# arguments
person1=$1
person2=$2
echo "$person1: Hi this passing argments in command line"
echo "$person2: hi yes this i this is working"
echo "$person1: hw r u"
echo "$person2: im fine"
DATE=$(date)
echo "script started executing s: ${DATE}"