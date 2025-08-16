#!/bin/sh

# Container startup script
echo "Container-Root/startup.sh executed"

# Start CPU burn loop
while true; do date; cpuburn & sleep 20; killall cpuburn ; sleep 10; done

