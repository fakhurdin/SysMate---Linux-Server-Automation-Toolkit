#!/bin/bash

# SysMate - Daily Backup Script

set -e

BACKUP_DIR="/var/backups/sysmate"
SOURCE_DIRS="/etc /home"
DATE=$(date +%Y-%m-%d)
ARCHIVE="$BACKUP_DIR/backup-$DATE.tar.gz"

echo "----------------------------------"
echo "Starting backup..."

sudo mkdir -p "$BACKUP_DIR"
sudo tar -czf "$ARCHIVE" $SOURCE_DIRS

echo "Backup completed: $ARCHIVE"
echo "----------------------------------"
