# SUSE Branded Mermaid Diagrams

Official Mermaid.js theme and semantic classes for SUSE Lead Architects.

## 🎨 Brand Palette
- **Pine (#0c322c):** Backgrounds, Primary Logic.
- **Jungle (#30ba78):** Strategic AI, Secondary highlights.
- **Mint (#90ebcd):** Inputs, Hover states.
- **Fog (#efefef):** Container backgrounds.

## 🛠 Installation & Usage (Linux)
To generate high-resolution, brand-compliant PNGs from your Linux VM:

### 1. Prerequisites
Install Mermaid CLI and ensure your environment has the required rendering libraries:
```bash
npm install -g @mermaid-js/mermaid-cli
sudo zypper install fontconfig dejavu-fonts libpango-1_0-0 libcairo2 # SUSE specific
```

### 2. Install SUSE Font (Highly Recommended)
For the most reliable rendering (especially offline or behind proxies), install the SUSE font directly on your Linux host:
1. Download `SUSE-VariableFont_wght.ttf` from [Google Fonts](https://fonts.google.com/specimen/SUSE).
2. `mkdir -p ~/.local/share/fonts`
3. `cp SUSE-VariableFont_wght.ttf ~/.local/share/fonts/`
4. `fc-cache -fv`

### 3. Generate Diagram
Run the CLI passing the CSS for font overrides and the Puppeteer config to handle Google Fonts correctly:
```bash
mmdc -i example-sizer.mmd -o output.png -w 3000 -C suse-font.css -p puppeteer-config.json
```

## ⚠️ Important Notes
- **GitHub/GitLab:** These platforms do NOT render custom fonts or `%%{init...}%%` blocks in their built-in Mermaid viewers for security reasons. They will always fall back to default fonts.
- **VS Code:** Ensure you have the `Mermaid Editor` extension and configure it to point to your local `suse-font.css`.

## 📐 Semantic Classes
- `:::mint` -> Entry points / Excel Files
- `:::pine` -> Local Rules / Math
- `:::jungle` -> Gemini / Cloud AI
- `:::fog` -> Subgraphs / Containers