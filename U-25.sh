#!/bin/bash

echo "U-25 Check bash script"

result=$(find / -type f -perm -2 2>/dev/null)

if [ -z "$result" ]; then
	echo "[SAFE]"
else
	echo "[VULNERABLE]"
	echo "$result"
fi
