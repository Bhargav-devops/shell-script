#!/bin/bash

for i in {1..100}
do
    if [ $((i%2)) -ne 0 ]
    then
        echo "number is odd $i"
    else
        echo "number is even $i"
    fi
done