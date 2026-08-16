#!/bin/bash
# backup.sh - creates a timestamped tar.gz backup of a folder

SOURCE_DIR="./sample_data"
BACKUP_DIR="./backups"
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_NAME="backup_$TIMESTAMP.tar.gz"

mkdir -p "$BACKUP_DIR"

tar -czf "$BACKUP_DIR/$BACKUP_NAME" "$SOURCE_DIR"

echo "Backup created: $BACKUP_DIR/$BACKUP_NAME"

