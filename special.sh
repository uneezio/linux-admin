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

sudo groupadd devteam 2> /dev/null || true

mkdir "$WS_DIR"/project
sudo chown fedora:devteam "$WS_DIR"/project

sudo useradd -m user01
sudo echo "user01:user01" | sudo chpasswd


# === END: User-defined code section ===

echo "$SETUP_COMPLETE"