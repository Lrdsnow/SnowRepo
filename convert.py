import os
import sys
from fontTools.ttLib import TTFont

def rename_font(input_path, output_path, new_name):
    font = TTFont(input_path)
    for record in font['name'].names:
        if record.nameID in [1, 4, 6]:  # Family name, Full name, PostScript name
            record.string = new_name.encode(record.getEncoding())
    font.save(output_path)

def generate_fonts(input_path, output_dir):
    output_fonts = {
        "ggsans-400-normal.ttf": "gg sans Normal",
        "ggsans-400-normalitalic.ttf": "gg sans Normal Italic",
        "ggsans-500-medium.ttf": "gg sans Medium",
        "ggsans-600-semibold.ttf": "gg sans SemiBold",
        "ggsans-700-bold.ttf": "gg sans Bold",
        "ggsans-700-bolditalic.ttf": "gg sans Bold Italic",
        "ggsans-800-extrabold.ttf": "gg sans Extra Bold",
    }
    
    for output_name, new_name in output_fonts.items():
        output_path = os.path.join(output_dir, output_name)
        rename_font(input_path, output_path, new_name)
        print(f"Generated: {output_name}")

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python3 generate_fonts.py <font path> <output dir>")
        sys.exit(1)
    
    input_font_path = sys.argv[1]
    output_directory = sys.argv[2]
    
    # Ensure output directory exists
    os.makedirs(output_directory, exist_ok=True)

    generate_fonts(input_font_path, output_directory)