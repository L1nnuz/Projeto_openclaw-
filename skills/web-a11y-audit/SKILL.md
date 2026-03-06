---
name: web-a11y-audit
description: Audit and improve website accessibility, performance, and UX quality. Use when the user asks to make a page accessible (WCAG basics), improve Lighthouse score, fix contrast/focus/semantic issues, or deliver professional QA feedback for HTML/CSS/JS interfaces.
---

# Web A11y Audit

Use this skill to run practical front-end quality audits and propose concrete fixes.

## Workflow

1. Identify the target page/file and current issues.
2. Check semantic structure (`header/main/section/article/footer`, heading order).
3. Check keyboard/focus behavior and interactive element labels.
4. Check contrast and text readability.
5. Check responsive behavior and layout stability.
6. Check performance basics (image weight, blocking resources, JS bloat).
7. Return prioritized fixes (Critical → Important → Nice to have).

## Output format

Always provide:
- Audit summary
- Critical issues (must-fix)
- Important issues (should-fix)
- Nice improvements
- Patch-ready code suggestions

## Quick commands

- Lighthouse CI is available for local checks: `lhci`
- Prefer minimal patches over full rewrites unless requested.

## References

- Use `references/a11y-checklist.md` for manual checks.
- Use `references/lighthouse-playbook.md` for performance/quality review.
