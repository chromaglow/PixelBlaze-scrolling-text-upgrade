# Pixelblaze Marquee & Text Converter

This project contains an advanced scrolling marquee pattern for Pixelblaze and a helper tool to generate the required text arrays.

## Contents

- **`marquee_pattern.js`**: The main Pixelblaze pattern code.
  - **Vertical Mode**: Scrolls text vertically (stacked characters) so it remains upright and readable.
  - **Orientation Fixes**: Hardcoded for specific matrix hardware (Flip X, Native Y, Reversed default direction).
  - **Controls**: 
    - **Speed**: Linear control (0 to 5), allowing full stop.
    - **Direction**: "Left To Right" or "Right To Left".
    - **Size**: Small, Med, Large, Full.
    - **Color**: Solid, Rainbow, Gradient.
- **`text_converter.html`**: A local web tool to convert text into ASCII arrays.
  - **Theme**: "Hacker Noir" (Black/Green terminal style).
- **`Launch_Converter.bat`**: Script to launch the tool.
- **`docs/`**: Reference documentation.

## How to Use

### 1. Install the Pattern
1. Open your Pixelblaze web interface.
2. Create a new pattern.
3. Copy the contents of `marquee_pattern.js` and paste it into the editor.
4. Save the pattern.

### 2. Set the Message
1. Double-click `Launch_Converter.bat` (Windows) or open `text_converter.html`.
2. Type your message and click "Generate Code".
3. Copy the generated line (e.g., `var message = [72, 101...]`).
4. Replace the `var message = [...]` line at the top of your Pixelblaze pattern.

### 3. Controls
In the Pixelblaze UI:
- **Speed**: Slider (Left=Stop, Right=Fast).
- **Vertical**: Toggle for Vertical Stacking mode.
- **Left To Right / Right To Left**: Change scroll direction.
- **Size**: Buttons for text zoom.
- **Color Mode**: Solid, Rainbow, Gradient.
