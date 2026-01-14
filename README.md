# Pixelblaze Marquee & Text Converter

This project contains an advanced scrolling marquee pattern for Pixelblaze and a helper tool to generate the required text arrays.

## Contents

- **`marquee_pattern.js`**: The main Pixelblaze pattern code.
  - Features: Multi-size (Small, Med, Large, Full), 4-Way Scrolling config (now locked to R->L for stability), Gradient/Rainbow/Solid color modes.
- **`text_converter.html`**: A local web tool to convert text into the ASCII array format required by the pattern.
- **`Launch_Converter.bat`**: A Windows batch script to launch the converter tool in your browser via a local server.
- **`docs/`**: Reference documentation for Pixelblaze.

## How to Use

### 1. Install the Pattern
1. Open your Pixelblaze web interface.
2. Create a new pattern.
3. Copy the contents of `marquee_pattern.js` and paste it into the editor.
4. Save the pattern.

### 2. Set the Message
1. Double-click `Launch_Converter.bat` (Windows) or open `text_converter.html` in your browser.
2. Type your message and click "Generate Code".
3. Copy the generated line (e.g., `var message = [72, 101...]`).
4. Replace the `var message = [...]` line at the top of your Pixelblaze pattern.

### 3. Controls
In the Pixelblaze UI, you will see controls for:
- **Speed**: Slider.
- **Size**: Buttons for Small, Medium, Large, and Full Height.
- **Color Mode**: Buttons for Solid, Rainbow, Gradient.
- **Colors**: Pickers for Solid mode and for the 3-point Gradient (Top, Mid, Bottom).
