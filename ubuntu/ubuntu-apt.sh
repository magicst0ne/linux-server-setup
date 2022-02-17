#!/bin/sh

### Install Ubuntu 20.04.3

### Apply OS updates
sudo apt-get update && sudo apt-get -y dist-upgrade

### Install basic tools
sudo apt-get -y install net-tools selinux-utils gzip curl

### Install essential development tools
sudo apt-get -y install build-essential git npm

### Install other programs
sudo apt-get -y install lzip patchelf

### Remove cloud-init
sudo apt-get purge cloud-init
sudo rm -rf /etc/cloud/ && sudo rm -rf /var/lib/cloud/

echo "linux reboot required"