#!/bin/bash

#find . -type f -empty
#echo "prints empty files"
#find . -type f -empty -delete
#echo "delete all empty files"


for file in *
do
        if [ -f "$file" ] && [ ! -s "$file" ]
        then
                echo "delete the empty file: $file"
                rm "$file"
        fi
done
echo "empty files deleted"


