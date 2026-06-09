#!/bin/bash

# sysreport.sh
# Purpose: Display important system identity information in a clean report.
# This script gathers data dynamically at runtime.

# Gather the current user's login name.
current_user=$(whoami)

#Gather the computer hostname.
computer_name=$(hostname)

#Gather the operating system name.
os_name=$(source /etc/os-release 2>/dev/null && echo "$PRETTY_NAME")

echo "User Name: $current_user"
echo "Computer Name: $computer_name"
echo "Operating System: $os_name"
