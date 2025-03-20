#!/bin/bash

directory="/home/Mike/backup"
timestamp=$(date +"%Y-%m-%d")
backup_file="$directory/nginx_backup_$timestamp.tar.gz"
log_file="$directory/nginx_backup_$timestamp.log"


if [ ! -d "$directory" ]; then
    echo "Directory '$directory' doesn't exist, creating..."
    sudo mkdir -p "$directory"
fi


if tar -czvf "$backup_file" /etc/nginx /usr/share/nginx/html; then
    echo "$(date): Nginx backup successful: $backup_file" >> "$log_file"
    tar -tzf "$backup_file" >> "$log_file"
else
    echo "$(date): Nginx backup FAILED" >> "$log_file"
fi

