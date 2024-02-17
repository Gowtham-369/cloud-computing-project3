#!/bin/sh

# Run the Python script
python3 /app/script.py

# Keep the container running by sleeping indefinitely
while true; do sleep 86400; done
