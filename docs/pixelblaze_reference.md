# Pixelblaze Language Reference

*Source: [electromage.com/docs/language-reference](https://electromage.com/docs/language-reference)*

## Writing Patterns
Code is compiled on the fly. Key exported functions: `render(index)` (1D), `render2D(index, x, y)`, `render3D(index, x, y, z)`.
`beforeRender(delta)` is called before each frame. `delta` is milliseconds since last frame.

## Syntax & Features
Based on JavaScript (ES6) with a subset of features.
- **Numbers**: 16.16 fixed-point (-32,768 to +32,768).
- **Variables**: `var` or implicit globals. No `let`/`const`.
- **Arrays**: `array(size)` or `[...]`.
- **Functions**: `function name(arg) {}` or arrows `(arg) => exp`.
- **Control**: `if`, `else`, `while`, `for`, `break`, `continue`.
- **Math**: `abs`, `floor`, `ceil`, `min`, `max`, `clamp`, `sin`, `cos`, `tan`, `sqrt`, `random`, `hypot`, `pow`, `log`, `exp`.
- **Waveforms**: `time(interval)`, `wave(v)`, `square(v, duty)`, `triangle(v)`.

## UI Controls
Export these functions to create UI widgets:
- `sliderName(v)`: 0.0 to 1.0.
- `hsvPickerName(h, s, v)` / `rgbPickerName(r, g, b)`.
- `triggerName()`: Button.
- `toggleName(isEnabled)`: Switch.

## Limitations
- No Objects (`{}`), Classes, or named properties.
- No `switch/case`.
- No Garbage Collection (arrays persist).
- No Closures.
