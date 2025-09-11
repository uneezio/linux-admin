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

mkdir -p "$WS_DIR"/archive
echo "first log message" > "$WS_DIR"/system.log
echo "Move me to the archive dirctory" > "$WS_DIR"/old_file
echo "Hello, World" > "$WS_DIR"/hello.txt


source "$LIB_DIR"/create_project_a.sh

# === END: User-defined code section ===

echo "$SETUP_COMPLETE"