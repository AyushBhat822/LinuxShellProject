#!/bin/bash
alert=90
#reading the output
df -H | awk '{print $5 " " $1}' | while read output
#anything that is read by while can be used in b/w do and done
do
    #echo "Disk Detail: $output"
    # $ to make variable
    usage=$(echo $output | awk '{print $1}' | cut -d'%' -f1)
    file_sys=$(echo $output | awk '{print $2}')

    if [ $usage -ge $alert ]
    then
        echo "CRITICAL for $file_sys"
    fi
done
