#!/bin/bash

echo "U-15 Check bash script"

result=$(find / \( -path /proc -o -path /sys \) -prune -o \( -nouser -o -nogroup \) -print 2>/dev/null)

if [ -z "$result" ]; then
	echo "[SAFE]"
else
	echo "[VULNERABLE]"
fi
