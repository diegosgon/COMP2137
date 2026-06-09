#!/bin/bash

# sysreport.sh
# Purpose: Display important system identity information in a clean report.
# This script gathers data dynamically at runtime.

# Gather the current user's login name.
current_user=$(whoami)

echo "User Name: $current_user"
