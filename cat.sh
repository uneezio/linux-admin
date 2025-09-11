#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# Get the absolute path of the script's directory.
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Define the path to the library directory.
LIB_DIR="$SCRIPT_DIR/lib"

# Run initialization script
source "$LIB_DIR/init.sh"

echo "$SETUP_START"

# === BEGIN: User-defined code section ===

echo "Hello, Rocky" > "$WS_DIR/rocky.txt"
echo "Hello, Fedoar" > "$WS_DIR/fedora.txt"
echo "first log message" > "$WS_DIR/system.log"

cp "$LIB_DIR"/distros.txt "$WS_DIR"/distros.txt

# === END: User-defined code section ===

echo "$SETUP_COMPLETE"