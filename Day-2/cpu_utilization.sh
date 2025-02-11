#!/bin/bash

read -p "Enter the maxium CPU utilization percentage: Threshold limt: " threshold

cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d. -f1)

if ((cpu_usage > threshold)); then
   echo "Warning! High CPU usage: $cpu_usage%"
else
   echo "CPU usage is normal: $cpu_usage%"
fi






