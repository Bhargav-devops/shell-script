#!/bin/bash

#arrays can store multiple values in a variable
fruits=("mango" "apple" "banana" "grapes")
echo " first variable: ${fruits[0]}"
echo "second variable: ${fruits[1]}"
echo " third variable: ${fruits[2]}"
echo " fourth variable: ${fruits[3]}"
echo " all fruits: ${fruits[@]}"
