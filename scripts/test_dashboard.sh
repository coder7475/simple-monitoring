#!/bin/bash

echo "Generating CPU load for testing..."
# Run a CPU-intensive task (like stress)
sudo apt-get install -y stress
stress --cpu 4 --timeout 30

echo "Load test complete. Check the Netdata dashboard for metrics."
