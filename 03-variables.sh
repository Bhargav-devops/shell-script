#!/bin/bash

# read command take arguments at runtime

echo " Please enter username"
read -s USERNAME

echo " please enter password"
read -s PASSWORD # -s this option will hide the value entered on the terminal
echo " username : ${USERNAME} and password : ${PASSWORD}"