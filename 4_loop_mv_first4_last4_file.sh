#!/bin/bash

source_dir=`ls -r /opt/scripts`

#source_dir=`ls -r /opt/scripts`

target_dir="/opt/scripts/loop"



sudo mkdir -p $target_dir

counter=0
for file in $source_dir; do
    if [ $counter -lt 4 ]; then
       mv "$file" "$target_dir"
       counter=$((counter+1))
    else
       break
       fi

done
echo "Files successfuly moved"
