# Pixelblaze Development Guidelines

*Context for future projects and AI assistants.*

## Core Platform
Pixelblaze is built on the ElectroMage PixelBlaze platform. Code is a simplified **SUBSET of Javascript ES6** tailored for real-time LED control.

### Documentation Resources
- **Language Reference**: [electromage.com/docs/language-reference](https://electromage.com/docs/language-reference)
- **Patterns**: [patterns.electromage.com](https://patterns.electromage.com/)
- **GPIO**: [electromage.com/docs/GPIO](https://electromage.com/docs/GPIO)
- **Mapping**: [electromage.com/docs/intro-to-mapping](https://electromage.com/docs/intro-to-mapping)
- **Websockets**: [electromage.com/docs/websockets-api](https://electromage.com/docs/websockets-api)
- **Forums**: [forum.electromage.com](https://forum.electromage.com/)

## Coding Standards

### Style
- **Clarity over Conciseness**: Use clear variable names and abundant comments.
- **Explain Steps**: Don't optimize code to the point of unreadability.
- **Tunable Parameters**: Use separate variables for any parameters that might need tuning (speed, color, size).

### Performance & Memory (CRITICAL)
Pixelblaze runs on ESP32-style controllers.
1.  **Memory Leaks**: Arrays are the *only* dynamically allocated objects and are **never freed** (no Garbage Collection).
    - **NEVER** create array literals `[...]` inside loops or `render()` functions.
    - **NEVER** allocate new arrays every frame.
    - Doing so will crash the controller in seconds.
2.  **Execution Speed**:
    - Avoid extra loops over all pixels per-pixel.
    - Do not use full-strip loops inside `render`.
    - Put expensive calculations in `beforeRender(delta)`.
3.  **Fixed-Point Math**: Ensure all operations terminate quickly.

### Common Pitfalls
- **hsv() Calls**: `render()`, `render2D()`, and `render3D()` must call `hsv()` (or `rgb()`) directly. Do not wrap `hsv()` in functions that might fail to pass arguments correctly.
- **Language Subset**: Not all JS functions exist. Always check the Language Reference.
- **Scope**: Variables are `var` or implicit global. No `let`/`const`.

## AI Instructions
When writing code for this platform:
- Review the provided "Language Reference - ElectroMage.pdf" (or online docs).
- Clarify requirements before starting from scratch.
- Bias towards minimal changes when modifying existing code.
- Format code blocks as Javascript.
