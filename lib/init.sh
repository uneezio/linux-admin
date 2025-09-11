# Set the workspace directory based on the user's home directory.
WS_DIR="$HOME"/workspace

# Remove any existing workspace directory.
sudo rm -rf "$WS_DIR"

# Create a new workspace directory.
mkdir -p "$WS_DIR"

# Define the path to the library directory.
LANG_DIR="$SCRIPT_DIR"/lang

# Get the user's language code.
LANG_CODE="${LANG%_*}"

# Load the messages for the language.
source "$LANG_DIR/messages_${LANG_CODE}.sh"
