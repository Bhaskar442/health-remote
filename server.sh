#!/bin/bash

echo "server health"
uptime 
df -h
date
free -m

USAGE=$(df / | awk 'NR==2 {print$5}' | sed 's/%//')
echo "$USAGE"

TOP_USAGE="ps -eo pid,ppid,cmd,%cpu --sort=-%cpu"
echo "$TOP_USAGE"
