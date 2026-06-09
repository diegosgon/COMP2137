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
disk_space=$(df -h / | tail -n 1 | awk '{print $2 " total, " $3 " used, " $4 " available, " $5 " used"}')

#Gather the primary IP address.
ip_address=$(hostname -I | awk '{print $1}')
cat <<EOF

System Information Report
=========================

User Name:		$current_user
Computer Name:		$computer_name
Operating System:	$os_name
Kernel Version:		$kernel_version
Architecture:		$architecture
Total Memory:		$total_memory
Root Disk Usage:	$disk_space
Primary IP Address:	$ip_address

EOF
