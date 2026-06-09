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

#Gather the Linux kernel version.
kernel_version=$(uname -r)

#Gather the system architecture.
architecture=$(uname -m)

#Gather total memory in a human-readable format.
total_memory=$(free -h | awk '/^Mem:/ {print $2}')

#Gather root filesystem disk usage.
disk_usage=$(df -h | awk 'NR==2 {print $2 " total, " $3 " used, " $4 " available"}')

echo "User Name: $current_user"
echo "Computer Name: $computer_name"
echo "Operating System: $os_name"
echo "Kernel Version: $kernel_version"
echo "Architecture: $architecture"
echo "Total Memory: $total_memory"
echo "Root Disk Usage: $disk_usage"
