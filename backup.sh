#!/bin/bash

source=$(cat config.txt)
backup_dir="backups"
timestamp=$(date +"%Y%m%d_%H%M%S")
log_file="backup.log"

#create backup file name
backup_name="backup_${timestamp}.tar.gz"

#create backup
tar -czf "$backup_dir/$backup_name" "$source"

#log creation
echo "[$(date)] Backup created: $backup_name" >> $log_file

#keep only last 5 records
count=$(ls -1 $backup_dir | wc -l)

if [ $count -gt 5 ]
then
  old=$(ls -1 $backup_dir | head -1)
  rm "$backup_dir/$old"
  echo "[$(date)] Removed old backup: $old" >> $log_file
fi
