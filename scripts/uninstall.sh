#!/bin/bash

# Uninstall Netdata script

echo "Stopping and disabling Netdata service..."
sudo systemctl stop netdata
sudo systemctl disable netdata

echo "Killing any running Netdata processes..."
sudo killall netdata

echo "Removing Netdata files and directories..."
sudo rm -rf /etc/netdata /usr/libexec/netdata /var/lib/netdata /var/log/netdata /var/cache/netdata

echo "Removing Netdata systemd service files..."
sudo rm -rf /etc/systemd/system/netdata.service /usr/lib/systemd/system/netdata.service

echo "Unmasking Netdata service (if needed)..."
sudo systemctl unmask netdata

echo "Checking if Netdata has been successfully uninstalled..."
if sudo systemctl status netdata | grep -q "Unit netdata.service could not be found."; then
    echo "Netdata successfully uninstalled."
else
    echo "Netdata uninstallation failed or service still exists."
fi

echo "Uninstallation complete."
