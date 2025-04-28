#!/bin/bash

# SysMate - Firewall Configuration Script

set -e

echo "----------------------------------"
echo "Configuring UFW Firewall..."

sudo ufw allow OpenSSH
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp

sudo ufw default deny incoming
sudo ufw default allow outgoing

sudo ufw enable

echo "UFW firewall enabled and configured!"
echo "----------------------------------"