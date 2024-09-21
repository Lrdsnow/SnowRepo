#!/bin/bash

# Check if an input file path is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <path_to_input_file>"
    exit 1
fi

INPUT_FILE="$1"

# Create the required folder structure
mkdir -p "Overwrite/var/containers/Bundle/Application/com.hammerandchisel.discord/Discord.app"

# Copy the input file to the specified font files
cp "$INPUT_FILE" "Overwrite/var/containers/Bundle/Application/com.hammerandchisel.discord/Discord.app/ggsans-400-normal.ttf"
cp "$INPUT_FILE" "Overwrite/var/containers/Bundle/Application/com.hammerandchisel.discord/Discord.app/ggsans-400-normalitalic.ttf"
cp "$INPUT_FILE" "Overwrite/var/containers/Bundle/Application/com.hammerandchisel.discord/Discord.app/ggsans-500-medium.ttf"
cp "$INPUT_FILE" "Overwrite/var/containers/Bundle/Application/com.hammerandchisel.discord/Discord.app/ggsans-600-semibold.ttf"
cp "$INPUT_FILE" "Overwrite/var/containers/Bundle/Application/com.hammerandchisel.discord/Discord.app/ggsans-700-bold.ttf"
cp "$INPUT_FILE" "Overwrite/var/containers/Bundle/Application/com.hammerandchisel.discord/Discord.app/ggsans-700-bolditalic.ttf"
cp "$INPUT_FILE" "Overwrite/var/containers/Bundle/Application/com.hammerandchisel.discord/Discord.app/ggsans-800-extrabold.ttf"

echo "Files copied successfully!"

