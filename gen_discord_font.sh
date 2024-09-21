if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <path_to_input_file>"
    exit 1
fi

INPUT_FILE="$1"

DISCORD_DIR="Overwrite/var/containers/Bundle/Application/%AppUUID{'com.hammerandchisel.discord', 'Bundle'}%/Discord.app"
mkdir -p "$DISCORD_DIR"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
python3 $SCRIPT_DIR/convert.py "$INPUT_FILE" "$DISCORD_DIR"


