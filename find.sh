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
dd if=/dev/zero of="$WS_DIR"/archive/file_1MB.bin bs=1024 count=1024 &> /dev/null

mkdir -p "$WS_DIR"/blog
mkdir -p "$WS_DIR"/assets

# Create nMB files filled with zeros
dd if=/dev/zero of="$WS_DIR"/assets/file_1MB.bin bs=1024 count=1024 &> /dev/null
dd if=/dev/zero of="$WS_DIR"/assets/file_2MB.bin bs=1024 count=2048 &> /dev/null
dd if=/dev/zero of="$WS_DIR"/assets/file_3MB.bin bs=1024 count=3072 &> /dev/null

echo "This file was created today." > "$WS_DIR"/blog/today.txt
echo "This file was created yesterday." > "$WS_DIR"/blog/yesterday.txt
echo "This file was created two days ago." > "$WS_DIR"/blog/two_days_ago.txt
echo "This file was created three days ago." > "$WS_DIR"/blog/three_days_ago.txt
echo "This file was created three days ago." > "$WS_DIR"/blog/four_days_ago.txt

README_CONTENT="This is a README file."
echo "$README_CONTENT" > "$WS_DIR"/README.txt
echo "$README_CONTENT" > "$WS_DIR"/README.md

# Set mtime
touch -d "now" "$WS_DIR"/blog/today.txt
touch -d "1 day ago" "$WS_DIR"/blog/yesterday.txt
touch -d "2 days ago" "$WS_DIR"/blog/two_days_ago.txt
touch -d "3 days ago" "$WS_DIR"/blog/three_days_ago.txt
touch -d "4 days ago" "$WS_DIR"/blog/four_days_ago.txt

echo "This is a hidden file." > "$WS_DIR"/.hidden_file

ROCKY_CONTENT="Discover who develops Rocky Linux and how you can support the Rocky Linux community."
echo "$ROCKY_CONTENT" > "$WS_DIR"/rocky.txt

# === END: User-defined code section ===

echo "$SETUP_COMPLETE"