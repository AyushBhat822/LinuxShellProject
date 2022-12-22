#!/bin/bash
# every day back : we need time stamp

echo "Enter Source Directory"

read src_dir

echo "Enter Target Directory

read tgt_dir

#tgt_dir=/root/backups

curr_timestamp=$(date ''+%Y-%m-%d-%H-%M-%S")
backup_file=$tgt_dir/$curr_timestamp.tgz

echo "Taking backup on $curr_timestamp"
#echo "$backup_file"

tar czf $backup_file --absolute-names $src_dir

echo "backup completed"
