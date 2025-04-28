#!/bin/bash

# SysMate - System Update Script

set -e

echo "----------------------------------"
echo "Updating package lists..."
sudo apt update

echo "Upgrading installed packages..."
sudo apt upgrade -y

echo "Cleaning up..."
sudo apt autoremove -y
sudo apt autoclean

echo "System successfully updated and cleaned!"
echo "----------------------------------"
scripts/user_management.sh
scripts/firewall_setup.sh
