#!/bin/bash

for i in {1..100000}
do
    if [ $i%2 -ne 0 ]
    then
        echo "number is odd $i"
    else
        echo "number is even $i"
done