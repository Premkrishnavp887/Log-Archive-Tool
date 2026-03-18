#!/bin/bash

# ---------------- VALIDATION ----------------
if [ -z "$1" ]; then
    echo "Usage: $0 <log-directory>"
    exit 1
fi

LOG_DIR=$1

if [ ! -d "$LOG_DIR" ]; then
    echo "Error: Directory does not exist!"
    exit 1
fi

# ---------------- VARIABLES ----------------
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_NAME="logs_archive_${TIMESTAMP}.tar.gz"
ARCHIVE_DIR="$HOME/log-archives"
LOG_FILE="$ARCHIVE_DIR/archive.log"

# ---------------- CREATE ARCHIVE DIR ----------------
mkdir -p "$ARCHIVE_DIR"

# ---------------- CREATE ARCHIVE ----------------
tar -czf "$ARCHIVE_DIR/$ARCHIVE_NAME" "$LOG_DIR" 2>/dev/null

# ---------------- LOG ENTRY ----------------
echo "[$(date)] Archived $LOG_DIR -> $ARCHIVE_DIR/$ARCHIVE_NAME" >> "$LOG_FILE"

# ---------------- OUTPUT ----------------
echo "✅ Logs archived successfully!"
echo "📁 Archive: $ARCHIVE_DIR/$ARCHIVE_NAME"
echo "📝 Log entry added to: $LOG_FILE"
