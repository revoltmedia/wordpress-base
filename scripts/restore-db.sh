#!/bin/bash

#Get config
. scripts-config.sh

mysql -u$user -p$password -h $host $db_name < $latest_path/$db_name-$environment-latest.sql
