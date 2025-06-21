#!/bin/bash
cpu_idle=$(top -bn1 | grep "Cpu(s)" | awk -F',' '{print $4}' | awk '{print $1}')
cpu_usage=$(echo "scale=2; 100 - $cpu_idle" | bc)
echo "Current CPU Utilization: $cpu_usage %"
