#!/bin/bash

echo "U-25 Check bash script"

result=$(find / -path /proc -prune -o -path /sys -prune -o -type f -perm -2 -print 2>/dev/null)

if [ -z "$result" ]; then
	echo "[SAFE]"
else
	echo "[VULNERABLE]"
fi
