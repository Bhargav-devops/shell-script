#!/bin/bash
#conditions in shell script
number=$1
if [ $number -gt 100 ] # -gt greaterthan -lt lessthan -ge greater than equal -le less than equal
then
    echo "given number is ${number} greater than 100"
else
    echo "given number is ${number} less than 100"
fi

