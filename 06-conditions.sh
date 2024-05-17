#!/bin/bash
#conditions in shell script
number=$1
# if conditions should have spaces remember 
if [ $number -gt 100 ] 
# -gt greaterthan -lt lessthan -ge greater than equal -le less than equal -ne not equal -eq equal check
then
    echo "given number is ${number} greater than 100"
else
    echo "given number is ${number} less than 100"
fi

