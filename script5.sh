#!/bin/bash

# Script 5: Open Source Manifesto Generator
# Author: Anuj Parashar
# Course: CSE0002

echo "===================================="
echo " Open Source Manifesto Generator"
echo "===================================="

echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
USER=$(whoami)

OUTPUT="manifesto_$USER.txt"

echo "Open Source Manifesto" > $OUTPUT
echo "----------------------" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT

echo "I believe open source represents $FREEDOM." >> $OUTPUT
echo "I use $TOOL regularly and benefit from community collaboration." >> $OUTPUT
echo "In the future, I would like to build $BUILD and share it freely" >> $OUTPUT
echo "so others can learn, modify, and improve it." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""

cat $OUTPUT
