# Lighthouse Playbook

## Core goals
- Performance: reduce blocking resources and oversized media
- Accessibility: labels, contrast, semantics, focus
- Best Practices: avoid obvious runtime anti-patterns
- SEO: title/description/basic crawlability for public pages

## Common wins
1. Compress images and avoid giant hero assets.
2. Defer non-critical scripts.
3. Use semantic HTML and proper labels.
4. Ensure color contrast and focus visibility.
5. Reduce CSS/JS duplication.

## Suggested process
1. Run baseline check.
2. Fix top-impact issues first (critical rendering + accessibility blockers).
3. Re-test and compare.
4. Document before/after with concise notes.
