#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Angel Rose Jeemon | Reg No: 24BAS10012
# Course: Open Source Software
# Description: Checks if Firefox is installed, shows version and license,
#              and uses a case statement to print philosophy notes.

PACKAGE="firefox"

echo "=================================================="
echo "        FOSS Package Inspector — $PACKAGE         "
echo "=================================================="
echo ""

# if-then-else: Check if the package is installed
# command -v checks if a command exists on the system
if command -v $PACKAGE &>/dev/null; then
    echo "  [FOUND] $PACKAGE is installed on this system."
    echo ""
    echo "  Package Details:"
    echo "  ----------------"
    $PACKAGE --version
else
    echo "  [NOT FOUND] $PACKAGE is not installed on this system."
    echo "  On Linux install it using: sudo dnf install firefox"
fi

echo ""
echo "--------------------------------------------------"
echo "  Open Source Philosophy Notes"
echo "--------------------------------------------------"

# case statement: Print a philosophy note based on package name
case $PACKAGE in
    firefox)
        echo "  Firefox: A nonprofit's answer to corporate browser monopoly."
        echo "  Built by Mozilla Foundation — people over profit."
        ;;
    httpd)
        echo "  Apache: The web server that built the open internet."
        echo "  Powers roughly 30% of all websites globally."
        ;;
    mysql)
        echo "  MySQL: Open source at the heart of millions of apps."
        echo "  A dual-license model — free for open use, paid for commercial."
        ;;
    git)
        echo "  Git: Linus Torvalds built this when a proprietary tool failed him."
        echo "  Now the backbone of nearly all software development."
        ;;
    python3)
        echo "  Python: A language shaped entirely by its community."
        echo "  The PSF license ensures it stays free for everyone."
        ;;
    *)
        echo "  $PACKAGE: An open-source tool contributing to digital freedom."
        ;;
esac

echo ""
echo "=================================================="
