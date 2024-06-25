#!/bin/bash
# A simple backup script using Bash

SOURCE="./documents"
DEST="./backup"
DATE=$(date +%Y-%m-%d)

# Create backup directory if it doesn't exist
mkdir -p "$DEST/$DATE"

# Copy files
cp -r "$SOURCE" "$DEST/$DATE"

echo "Backup completed on $DATE"
