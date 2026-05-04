#!/bin/bash

echo "===== System Health Check ====="

# Uptime
echo "Uptime:"
uptime
echo "-------------------------------"

# CPU Load
echo "CPU Load:"
top -bn1 | grep "load average"
echo "-------------------------------"

# Memory Usage
echo "Memory Usage:"
free -h
echo "-------------------------------"

# Disk Usage
echo "Disk Usage:"
df -h
echo "-------------------------------"

# Top 5 Processes by Memory
echo "Top 5 Processes by Memory:"
ps aux --sort=-%mem | head -n 6
echo "-------------------------------"

# Top 5 Processes by CPU
echo "Top 5 Processes by CPU:"
ps aux --sort=-%cpu | head -n 6
echo "-------------------------------"

echo "===== Health Check Complete ====="

