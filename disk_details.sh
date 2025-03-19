#!/bin/bash

LOGFILE="/var/log/system_monitor.log"

sudo touch $LOGFILE
sudo chmod 644 $LOGFILE

echo  "---- SYSTEM HEALTH CHECK MONITORING / METRICS" >> $LOGFILE

echo  "---- $(date) ----" >> $LOGFILE

echo  "---- To identify resource-intensive applications ----" >> $LOGFILE

echo  "Top CPU Consuming Processes: " >> $LOGFILE
ps aux --sort=-%cpu | head -5 >> $LOGFILE    # to get the top 5 cpu most process accoring to cpu usage

echo  "Top Memory Consuming Processes: " >> $LOGFILE
ps aux --sort=-%mem | head -5  >> $LOGFILE   # to get the top 5 cpu most process accoring to memory usage


echo "--- CPU USAGE ---" >> $LOGFILE
top -b -n 1 | head -5 >> $LOGFILE

echo "--- Memory Usage ---" >> $LOGFILE
free -h >> $LOGFILE

echo  "--- Disk Usage ---" >> $LOGFILE
df -h  >> $LOGFILE

echo  "--- END ---"  >> $LOGFILE
