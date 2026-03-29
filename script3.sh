#!/bin/bash

# Script 3: Disk and Permission Auditor
# Author: Anuj Parashar
# Course: CSE0002

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "======================================"
echo " Disk and Permission Audit Report"
echo "======================================"

for DIR in "${DIRS[@]}"; do

 if [ -d "$DIR" ]; then

 PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
 SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

 echo "$DIR"
 echo "Permissions : $PERMS"
 echo "Size        : $SIZE"
 echo "--------------------------------------"

 else

 echo "$DIR does not exist"

 fi

done

echo ""
echo "Checking Git Config Directory"
echo "--------------------------------------"

CONFIG="/etc/git"

if [ -d "$CONFIG" ]; then
 echo "Git config directory exists"
 ls -ld $CONFIG
else
 echo "Git config directory not found"
fi

echo "======================================"
echo "Audit Completed"
