#!/bin/bash

# SysMate - User Management Script

set -e

read -p "Enter username to create: " username
read -p "Enter group (optional, press Enter to skip): " group

echo "Creating user: $username"
sudo adduser "$username"

if [[ -n "$group" ]]; then
    echo "Adding user $username to group $group"
    sudo usermod -aG "$group" "$username"
fi

echo "User setup complete!"
