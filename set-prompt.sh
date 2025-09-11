#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# Get the absolute path of the script's directory.
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Define the path to the library directory.
LIB_DIR="$SCRIPT_DIR"/lib

# Run initialization script
source "$LIB_DIR"/init.sh

sudo cp "$LIB_DIR"/zzz-my-bash-prompt.sh /etc/profile.d/zzz-my-bash-prompt.sh

echo "$SETUP_PROMPT"