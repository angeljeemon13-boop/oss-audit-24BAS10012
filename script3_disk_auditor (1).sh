#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Angel Rose Jeemon | Reg No: 24BAS10012
# Course: Open Source Software
# Description: Loops through important system directories and reports
#              their size, owner, and permissions.

# Array of important Linux directories to audit
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=================================================="
echo "         Disk and Permission Auditor              "
echo "=================================================="
echo ""
printf "%-20s %-25s %-10s\n" "Directory" "Permissions" "Size"
echo "--------------------------------------------------"

# for loop: iterate over each directory in the array
for DIR in "${DIRS[@]}"; do

    # Check if the directory exists before inspecting it
    if [ -d "$DIR" ]; then

        # ls -ld shows directory info; awk extracts permissions, owner, group
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')

        # du -sh gives human-readable size; cut extracts only the size column
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)

        printf "%-20s %-25s %-10s\n" "$DIR" "$PERMS" "$SIZE"
    else
        printf "%-20s %s\n" "$DIR" "does not exist on this system"
    fi
done

# Check Firefox config directory specifically
echo ""
echo "--------------------------------------------------"
echo "  Firefox Config Directory Check"
echo "--------------------------------------------------"

FIREFOX_CONFIG="$HOME/.mozilla/firefox"

if [ -d "$FIREFOX_CONFIG" ]; then
    FF_PERMS=$(ls -ld "$FIREFOX_CONFIG" | awk '{print $1, $3, $4}')
    FF_SIZE=$(du -sh "$FIREFOX_CONFIG" 2>/dev/null | cut -f1)
    echo "  Path        : $FIREFOX_CONFIG"
    echo "  Permissions : $FF_PERMS"
    echo "  Size        : $FF_SIZE"
else
    echo "  Firefox config not found at $FIREFOX_CONFIG"
    echo "  Firefox may not have been launched yet."
fi

echo "=================================================="
