#!/bin/bash
set -e

echo "🦎 Installing SUSE font locally for Mermaid CLI..."

# Create local fonts directory
FONT_DIR="$HOME/.local/share/fonts/suse"
mkdir -p "$FONT_DIR"

# Download the SUSE font directly from the official Google Fonts repository
echo "Downloading SUSE-VariableFont_wght.ttf..."
wget -q --show-progress -O "$FONT_DIR/SUSE-VariableFont_wght.ttf" "https://github.com/googlefonts/suse/raw/main/fonts/variable/SUSE%5Bwght%5D.ttf"

# Update the font cache
echo "Updating font cache..."
fc-cache -fv "$FONT_DIR"

echo ""
echo "✅ Done! The SUSE font is now installed on your system."
echo "Mermaid CLI (Puppeteer) will now find it instantly without relying on the network."