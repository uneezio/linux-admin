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

cp "$LIB_DIR"/distro_urls.txt "$WS_DIR"/distro_urls.txt
cp "$LIB_DIR"/vm.log "$WS_DIR"/vm.log
cp "$LIB_DIR"/mint.txt "$WS_DIR"/mint.txt
cp "$LIB_DIR"/special.txt "$WS_DIR"/special.txt
cp "$LIB_DIR"/reference.txt "$WS_DIR"/reference.txt

# === END: User-defined code section ===

echo "$SETUP_COMPLETE"