#!/bin/sh

# Container startup script
echo "Container-Root/startup.sh executed"

# Start CPU burn loop
while true; do date; cpuburn & ; sleep 20; kill -9 $(ps -a | grep cpuburn | awk '{print $1}'); sleep 10; done

