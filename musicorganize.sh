#!/bin/bash
# make sure the current folder contains the files to be moved
# then run . ~/path/to/musicorganize.sh
cp -r * "$(dirname "$PWD")"
echo "Delete files? [y/n]"
read input
[ $input == "y" ] && rm -r "$PWD" 
cd "`dirname "$PWD"`" 
