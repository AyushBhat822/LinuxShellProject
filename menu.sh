#!/bin/bash
input=0
while (($input < 4));
do
echo "Choose the operation you want to perform: "
echo -e "\n Press 1 for Automated Backups \n Press 2 for Disk Space \n Press 3 for Encrypting Disks
\n Press 4 for exit \n
read input
if [ $input -eq 1 ]
then
      ./Backup.sh
      
elif [[ $input -eq 2 ]]
then
      ./DiskSpace.sh

elif [[ $input -eq 3 ]]
then
      ./Encrypt.sh

else
      echo "Bye"
fi
done
