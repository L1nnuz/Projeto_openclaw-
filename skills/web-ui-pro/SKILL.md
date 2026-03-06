---
name: web-ui-pro
description: Build or refactor professional front-end pages/apps with HTML5, modern CSS, and optional JS/TS. Use when the user asks for better visual design, responsive layout, component structure, accessibility improvements, performance polish, or "make this look professional" for websites, landing pages, dashboards, docs pages, and mockups.
---

# Web UI Pro

Use this skill to deliver production-style UI quality fast.

## Quick workflow

1. Identify target type: landing page, dashboard, docs page, or app screen.
2. Build semantic HTML5 structure first (`header`, `main`, `section`, `article`, `footer`).
3. Apply a design system: spacing scale, typography scale, color tokens.
4. Implement responsive layout with CSS Grid/Flex and mobile-first breakpoints.
5. Add states and interactions (hover/focus/active/loading/empty/error).
6. Run polish checks: accessibility, readability, spacing consistency, and performance basics.

## Output standard

Always include:
- Clean HTML5 structure
- CSS variables/tokens in `:root`
- Responsive behavior for small and large screens
- Clear visual hierarchy (title, subtitle, cards, actions)
- At least basic accessibility (contrast, labels, focus visibility)

Prefer:
- Reusable classes/components
- Short, maintainable CSS blocks
- Minimal JS unless interaction requires it

## File patterns

- Single-page mockup: one `.html` file with embedded style for fast iteration.
- Professional handoff: split into `index.html`, `styles.css`, `app.js` when complexity grows.
- Include sample placeholders for real data regions.

## Design rules

- Use an 8px spacing rhythm.
- Keep line length readable (~60–90 chars for body text).
- Use no more than 2 font families.
- Avoid overcrowding: prefer whitespace and card grouping.
- Keep interactions subtle (fast transitions, no heavy animation by default).

## When the user asks for “more professional”

Apply this order:
1. Improve hierarchy (titles, sections, emphasis)
2. Improve spacing and alignment
3. Improve color contrast and consistency
4. Improve responsiveness
5. Add component polish (badges, cards, tables, callouts)

## References

- Use `references/ui-checklist.md` for acceptance checks.
- Use `references/stack-recipes.md` for stack-specific implementation choices.

## Assets

- Use `assets/html5-starter/` as a quick base skeleton for new pages.
