#!/bin/bash
# Script 4: Log File Analyzer
# Author: Angel Rose Jeemon | Reg No: 24BAS10012
# Course: Open Source Software
# Description: Reads a log file line by line, counts keyword matches,
#              retries if file is empty, prints last 5 matching lines.
# Usage: bash script4_log_analyzer.sh [logfile] [keyword]

# Command-line arguments
LOGFILE=${1:-"testlog.txt"}   # Default log file
KEYWORD=${2:-"error"}          # Default keyword
COUNT=0                         # Counter for matching lines
MAX_RETRIES=3                   # Maximum retry attempts if file is empty
ATTEMPT=1                       # Track current attempt

echo "=================================================="
echo "            Log File Analyzer                     "
echo "=================================================="
echo ""

# Validate that the log file exists
if [ ! -f "$LOGFILE" ]; then
    echo "  ERROR: File '$LOGFILE' not found."
    echo "  Usage: $0 [logfile] [keyword]"
    exit 1
fi

# do-while style retry loop — retries if file is empty
while [ $ATTEMPT -le $MAX_RETRIES ]; do
    # -s checks if the file is non-empty
    if [ -s "$LOGFILE" ]; then
        echo "  File found: $LOGFILE"
        echo "  Searching for keyword: '$KEYWORD'"
        echo ""
        break
    else
        echo "  Attempt $ATTEMPT/$MAX_RETRIES: File is empty. Retrying..."
        sleep 1
        ATTEMPT=$((ATTEMPT + 1))
    fi
done

# Exit if file still empty after retries
if [ ! -s "$LOGFILE" ]; then
    echo "  ERROR: File is empty after $MAX_RETRIES attempts."
    exit 1
fi

# while read loop: Read the file line by line
while IFS= read -r LINE; do
    # if-then: check if line contains the keyword (case-insensitive)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# Print summary
echo "--------------------------------------------------"
echo "  Log file : $LOGFILE"
echo "  Keyword  : '$KEYWORD'"
echo "  Matches  : $COUNT lines found"
echo ""

# Show last 5 matching lines
if [ $COUNT -gt 0 ]; then
    echo "  Last 5 matching lines:"
    echo "  ----------------------"
    grep -i "$KEYWORD" "$LOGFILE" | tail -5 | while IFS= read -r MATCH; do
        echo "  >> $MATCH"
    done
else
    echo "  No matches found for '$KEYWORD'"
fi

echo ""
echo "=================================================="
