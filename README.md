# SUSE Branded Mermaid Diagrams

Official Mermaid.js theme and semantic classes for SUSE Lead Architects.

## 🎨 Brand Palette
- **Pine (#0c322c):** Backgrounds, Primary Logic.
- **Jungle (#30ba78):** Strategic AI, Secondary highlights.
- **Mint (#90ebcd):** Inputs, Hover states.
- **Fog (#efefef):** Container backgrounds.

## 🛠 Installation & Usage (Linux)
To generate high-resolution, brand-compliant PNGs from your Linux VM:

1. **Install Mermaid CLI:**
   ```bash
   npm install -g @mermaid-js/mermaid-cli
   ```
2. **Generate Diagram:**
   ```bash
   mmdc -i your-diagram.mmd -o output.png -w 3000 -C theme.css
   ```

## 📐 Semantic Classes
- `:::mint` -> Entry points / Excel Files
- `:::pine` -> Local Rules / Math
- `:::jungle` -> Gemini / Cloud AI
- `:::fog` -> Subgraphs / Containers