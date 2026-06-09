#!/bin/bash

# sysreport.sh
# Purpose: Display important system identity information in a clean report.
# This script gathers data dynamically at runtime.

# Gather the current user's login name.
current_user=$(whoami)

#Gather the computer hostname.
computer_name=$(hostname)

echo "User Name: $current_user"
echo "Computer Name: $computer_name"
