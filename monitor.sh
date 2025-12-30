#!/bin/bash

# Log file
LOGFILE="system.log"
DATE=$(date "+%Y-%m-%d %H:%M:%S")

# Function to check CPU usage
cpu_usage() {
    top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}'
}

# Function to check Memory usage
memory_usage() {
    free | awk '/Mem/ {printf "%.2f", $3/$2 * 100}'
}

# Function to check Disk usage
disk_usage() {
    df / | awk 'NR==2 {print $5}' | sed 's/%//'
}

CPU=$(cpu_usage)
MEMORY=$(memory_usage)
DISK=$(disk_usage)

# Log system health
echo "$DATE | CPU: $CPU% | MEMORY: $MEMORY% | DISK: $DISK%" >> $LOGFILE

# CPU warning
if (( $(echo "$CPU > 80" | bc -l) )); then
    echo "$DATE WARNING: High CPU usage detected!" >> $LOGFILE
fi

# Memory warning
if (( $(echo "$MEMORY > 75" | bc -l) )); then
    echo "$DATE WARNING: High Memory usage detected!" >> $LOGFILE
fi

# Disk warning
if [ "$DISK" -gt 85 ]; then
    echo "$DATE WARNING: Disk usage critical!" >> $LOGFILE
fi
