#!/bin/bash

# Script 4: Log File Analyzer
# Author: Anuj Parashar
# Course: CSE0002

LOGFILE=$1
KEYWORD=${2:-"error"}

COUNT=0

echo "================================"
echo " Log File Analyzer"
echo "================================"

if [ ! -f "$LOGFILE" ]; then
 echo "Error: File not found"
 exit 1
fi

while IFS= read -r LINE; do

 if echo "$LINE" | grep -iq "$KEYWORD"; then
 COUNT=$((COUNT + 1))
 fi

done < "$LOGFILE"

echo ""
echo "Keyword '$KEYWORD' found $COUNT times"

echo ""
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5

echo "================================"
echo "Analysis Completed"
