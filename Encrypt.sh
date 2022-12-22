#!/bin/bash
# echo "Will start encrypting soon
echo "Enter Partition Name like /dev/sda1, /dev/sdb2"
read $partition_name
cryptsetup luksFormat $partition_name
cryptsetup luksOpen spartition_name secret-disk
echo "secret-disk $partition_name" > /etc/crypttab
mkfs -t ext4 /dev/mapper/secret-disk
mkdir -p /secret
echo "/dev/mapper/secret-disk     /secret   ext4  defaults  1 2 " > /etc/fstab
mount /secret
mount -a

