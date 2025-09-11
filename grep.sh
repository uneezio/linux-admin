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

FEDORA_INFO="Fedora offers a fantastic collection of apps which cater to every need."
ROCKY_INFO="Discover who develops Rocky Linux and how you can support the Rocky Linux community."

mkdir -p "$WS_DIR"/dir1
mkdir -p "$WS_DIR"/dir2
echo "$FEDORA_INFO" > "$WS_DIR"/dir1/fedora.txt
echo "$FEDORA_INFO" > "$WS_DIR"/dir2/fedora.txt

cp "$LIB_DIR"/distros.txt "$WS_DIR"/distros.txt

echo "$FEDORA_INFO" > "$WS_DIR"/.hidden_file

echo "$ROCKY_INFO" > "$WS_DIR"/rocky.txt

# === END: User-defined code section ===

echo "$SETUP_COMPLETE"