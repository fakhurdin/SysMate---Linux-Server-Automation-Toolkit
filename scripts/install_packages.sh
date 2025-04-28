#!/bin/bash

# SysMate - Install Essential Packages Script

set -e

PACKAGES="curl wget vim git ufw net-tools htop unzip"

echo "----------------------------------"
echo "Updating package repositories..."
sudo apt update

echo "Installing essential packages: $PACKAGES"
sudo apt install -y $PACKAGES

echo "Package installation complete!"
echo "----------------------------------"