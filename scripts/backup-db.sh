#!/bin/bash

#Get config
. scripts-config.sh

#Date
  date=$(date +"%Y-%m-%d-%H-%M-%S")
#Set default file permissions
  umask 177
#Delete files in Latest Path
  find $latest_path/* -exec rm {} \;

# Dump
mysqldump --user=$user --password=$password --host $host $db_name > $backup_path/$db_name-$environment-$date.sql

cp $backup_path/$db_name-$environment-$date.sql $latest_path/$db_name-$environment-latest.sql

echo "${environment} backup-db: DB backup completed.";
#Delete files older than 30 days
 find $backup_path/* -mtime +30 -exec rm {} \;
