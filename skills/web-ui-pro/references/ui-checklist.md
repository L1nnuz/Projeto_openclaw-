# UI Quality Checklist

## Structure
- Semantic HTML5 landmarks present
- Clear heading hierarchy (h1 -> h2 -> h3)
- Logical grouping of content in sections/cards

## Visual Design
- Consistent spacing scale (prefer multiples of 8)
- Typography scale is clear and consistent
- Color palette is coherent and readable
- Primary action is visually obvious

## Responsiveness
- Works at ~360px mobile width
- Works at tablet widths
- Works on desktop without stretched unreadable lines

## Accessibility Basics
- Sufficient text/background contrast
- Inputs and buttons have labels or accessible names
- Focus state visible for keyboard users
- Links and buttons are distinguishable

## Content States
- Empty state considered
- Error/fallback state considered
- Loading hint considered for async regions

## Performance Basics
- Avoid oversized images
- Avoid unnecessary heavy JS for static pages
- Keep CSS maintainable and scoped
