#!/bin/bash
echo "enter the file and directory name"
read name
if [ -f "$name" ]
then
	echo " it is file: $name"
else
	echo " it is a directory: $name"
fi

