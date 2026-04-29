#!/bin/bash

echo "U-25 Check bash script"

result=$(find / -type f -ferm -2 2>/dev/null)

if [ -z "$result" ]; then
	echo "[SAFE]"
else
	echo "[VULENRABLE]"
	echo "$result"
fi
