# Stack Recipes

## HTML-only Mockup (fast)
Use when user needs quick preview or concept validation.
- Single `.html` file
- Embedded `<style>`
- No build step

## HTML + CSS + JS (clean handoff)
Use when user needs maintainability.
- `index.html`
- `styles.css`
- `app.js`

## Vite + TypeScript
Use when user asks for professional app structure, scaling, or componentized code.
- Initialize with Vite
- Use TypeScript for predictable behavior
- Add lint/format tools

## Recommended CLI tools
- `prettier` for formatting
- `eslint` for code quality
- `vite` for local dev/build
- `lhci` for Lighthouse checks
