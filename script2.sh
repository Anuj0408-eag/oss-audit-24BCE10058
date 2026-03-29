#!/bin/bash

# Script 2: FOSS Package Inspector
# Author: Anuj Parashar
# Course: CSE0002

PACKAGE="git"

echo "Checking package: $PACKAGE"
echo "--------------------------------"

# Check if package is installed
if dpkg -l | grep -q $PACKAGE; then
 echo "$PACKAGE is installed."
 echo ""
 echo "Package Details:"
 dpkg -l | grep $PACKAGE
else
 echo "$PACKAGE is NOT installed."
fi

echo ""
echo "Package Philosophy"
echo "--------------------------------"

case $PACKAGE in
 git) echo "Git: Distributed version control built for open collaboration" ;;
 firefox) echo "Firefox: Open web browser supporting internet freedom" ;;
 vlc) echo "VLC: Open media player supporting all formats" ;;
 apache2) echo "Apache: Web server powering open internet" ;;
 *) echo "Unknown package" ;;
esac

echo "--------------------------------"
echo "Inspection Completed"
