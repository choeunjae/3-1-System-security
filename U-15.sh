#!/bin/bash

echo "U-15 Check bash script"

result=$(find / -nouser -o -nogroup 2>/dev/null)

if [ -z "$result" ]; then
	echo "[SAFE]"
else
	echo "[VULNERABLE]"
	echo "$result"
fi
