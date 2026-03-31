#!/bin/bash
# Script 1: System Identity Report
# Author: Angel Rose Jeemon | Reg No: 24BAS10012
# Course: Open Source Software
# Description: Displays a welcome screen with system information
#              and identifies the open-source license of the OS.

# Variables — store student and software details
STUDENT_NAME="Angel Rose Jeemon"
REG_NUMBER="24BAS10012"
SOFTWARE_CHOICE="Mozilla Firefox"

# Gather system information using command substitution
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
CURRENT_DATE=$(date '+%d %B %Y %H:%M:%S')

# Get uptime — fallback if uptime command not available
UPTIME=$(uptime -p 2>/dev/null || echo "Uptime not available")

# Get the Linux distribution name from the os-release file
source /etc/os-release 2>/dev/null
DISTRO_NAME=${NAME:-"Git Bash on Windows"}

# OS License
OS_LICENSE="GNU General Public License v2 (GPL v2)"

# Display the system identity report
echo "=================================================="
echo "     Open Source Audit — System Identity Report   "
echo "=================================================="
echo ""
echo "  Student   : $STUDENT_NAME ($REG_NUMBER)"
echo "  Software  : $SOFTWARE_CHOICE"
echo "--------------------------------------------------"
echo "  Distro    : $DISTRO_NAME"
echo "  Kernel    : $KERNEL"
echo "  User      : $USER_NAME"
echo "  Home Dir  : $HOME_DIR"
echo "  Uptime    : $UPTIME"
echo "  Date/Time : $CURRENT_DATE"
echo "--------------------------------------------------"
echo "  OS License: $OS_LICENSE"
echo "  Linux is free software: you can use, study,"
echo "  modify, and share it under the terms of the GPL."
echo "=================================================="
