#!/bin/bash

# Install Netdata
echo "Installing Netdata..."

sudo curl https://get.netdata.cloud/kickstart.sh > /tmp/netdata-kickstart.sh && sh /tmp/netdata-kickstart.sh

echo "Netdata installation complete."
