#!/bin/bash

<<info
Creating backup script
This shell script will take a perodic backups whenever we run the script
e.g.,
scr = /home/ubuntu/scripts
dest = /home/ubuntu/backups
info

scr=$1
dest=$2

timestamp=$(date '+%Y-%m-%d-%H-%M')

zip -r "$dest/backup-$timestamp.zip" $scr

echo "Backup Completed"

aws s3 sync "$dest" s3://mayank-backup-e

echo "Backups are Sync in S3"


