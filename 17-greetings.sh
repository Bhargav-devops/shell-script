#!/bin/bash

name=""
wishes="Good morning"

Usage() {
echo " usage $(basename $0) -n <name> -w <wishes> "   
echo "options to use"
echo "-n : give name (mandatory)"
echo "-w: provide wishes"
echo "-h: display help with text"

}

while getopts ":n:w:h:" opt; do
    case $opt in
        n) name="$OPTARG";;
        w) wishes="$OPTARG";;
        h) echo "help option"; Usage;exit;;
        \?) echo "invalid options "$OPTARG"" >&2; Usage;exit;;
        :) echo "test";Usage;exit

    esac    
done

if [ -z $name ] #|| [ -z $wishes ] make wishes optional and by default make wishes constant value
then
    #echo "error both -n and -w are mandatory options"
    echo "error both -n  are mandatory option"
    Usage
    exit 1
fi

echo "hello $name $wishes iam learning shell"