# Netdata Installation and Testing Scripts

This repository contains scripts for installing, testing, and cleaning up Netdata monitoring system.

## Scripts Overview

### setup.sh

- Installs Netdata using the official kickstart script
- Handles the complete installation process automatically

### test_dashboard.sh

- Generates CPU load for testing Netdata metrics
- Uses the `stress` tool to create artificial system load
- Helps verify that Netdata is collecting metrics properly

### cleanup.sh

- Completely uninstalls Netdata from the system
- Removes all configurations, services, and related files
- Ensures a clean removal of both kickstart and package manager installations

## Usage

1. Install Netdata:

   ```bash
   ./setup.sh
   ```

2. Test the dashboard:

   ```bash
   ./test_dashboard.sh
   ```

3. When finished, uninstall Netdata:
   ```bash
   ./cleanup.sh
   ```

## Project Link

This submission for project: [simple-monitoring](https://roadmap.sh/projects/simple-monitoring-dashboard)
