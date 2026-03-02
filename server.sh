#!/bin/bash

echo "server health"
uptime 
df -h
date
free -m

USAGE=$(df / | awk 'NR==2 {print$5}' | sed 's/%//')
echo "$USAGE"
