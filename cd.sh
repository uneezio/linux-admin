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

# create project_a
source "$LIB_DIR"/create_project_a.sh

# create project_b
source "$LIB_DIR"/create_project_b.sh

# Create directory structure
mkdir -p "$WS_DIR"/archive
mkdir -p "$WS_DIR"/.hidden_dir

# Create files and add content
echo "This is a private directory. Only authorized users can see its contents." > "$WS_DIR"/.hidden_dir/readme.txt
echo "This is a hidden file. Use the 'ls -a' command to find it." > "$WS_DIR"/.hidden_file

# Generate distros.txt file
cp "$LIB_DIR"/distros.txt "$WS_DIR"/distros.txt

# Set modification dates for tutorial purposes
touch -d "2025-08-01 10:00" "$WS_DIR"/project_a
touch -d "2025-08-02 11:00" "$WS_DIR"/project_b
touch -d "2025-08-03 12:00" "$WS_DIR"/archive
touch -d "2025-08-04 13:00" "$WS_DIR"/.hidden_dir
touch -d "2025-08-05 14:00" "$WS_DIR"/.hidden_file
touch -d "2025-08-06 15:00" "$WS_DIR"/distros.txt

# === END: User-defined code section ===

echo "$SETUP_COMPLETE"
