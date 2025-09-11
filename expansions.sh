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

touch "$WS_DIR"/file{1..4}.txt
touch "$WS_DIR"/fileNN.txt
touch "$WS_DIR"/file_test

touch "$WS_DIR"/.hidden_file

# === END: User-defined code section ===

echo "$SETUP_COMPLETE"