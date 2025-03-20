#!/bin/bash


directory="/home/Sarah/backup"
timestamp=$(date +%Y-%m-%d)
backup_file="$directory/apache_backup_$timestamp.tar.gz"
log_file="$directory/apache_backup_$timestamp.log"

if [ ! -d "$directory" ];then
	echo "$directory doesn't exist, creating directory $directory....."
	sudo mkdir -p "$directory"
fi

#tar -czvf $backup_file /etc/apache2 /var/www/html /etc/apache2/sites-available


if tar -czvf "$backup_file" /etc/apache2 /var/www/html /etc/apache2/sites-available; then
    echo "$(date +"%Y-%m-%d %H:%M:%S") Apache backup successful: $backup_file" >> "$log_file"
else
    echo "$(date +"%Y-%m-%d %H:%M:%S") Apache backup FAILED" >> "$log_file"
fi


