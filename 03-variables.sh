#!/bin/bash

# read command take arguments at runtime

echo " Please enter username"
read USERNAME
echo " username : ${USERNAME}"

echo " please enter password"
read -s PASSWORD # -s this option will hide the value entered on the terminal
echo " password : ${PASSWORD}"