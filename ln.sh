#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# Get the absolute path of the script's directory.
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Define the path to the library directory.
LIB_DIR="$SCRIPT_DIR"/lib

# Run initialization script
source "$LIB_DIR"/init.sh

echo "$SETUP_START"

# === BEGIN: User-defined code section ===

mkdir -p "$WS_DIR"/hard
mkdir -p "$WS_DIR"/sym

echo "Original file for creating a hard link." > "$WS_DIR"/hard/original.txt
echo "Original file for creating a symbolic link." > "$WS_DIR"/sym/original.txt

# === END: User-defined code section ===

echo "$SETUP_COMPLETE"