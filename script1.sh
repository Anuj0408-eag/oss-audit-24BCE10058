#!/bin/bash

# Script 1: System Identity Report
# Author: Anuj Parashar
# Course: CSE0002

STUDENT_NAME="Anuj Parashar"
SOFTWARE_CHOICE="Git"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)

DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2)

echo "================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "================================"

echo "Software Chosen: $SOFTWARE_CHOICE"
echo "Kernel : $KERNEL"
echo "User : $USER_NAME"
echo "Uptime : $UPTIME"
echo "Date : $DATE"
echo "Distribution : $DISTRO"
echo "License : Linux is licensed under GNU GPL (Open Source)"
echo "================================"
