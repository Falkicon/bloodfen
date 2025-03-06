# Bloodfen CSS Framework Documentation

## Overview

The Bloodfen CSS Framework is a custom CSS architecture built on the ITCSS (Inverted Triangle CSS) methodology. It provides a structured, scalable, and maintainable approach to styling the Bloodfen WoW Guides website.

## Directory Structure

The framework follows the ITCSS structure, organizing CSS from generic to specific:

```
css/new-structure/
├── settings/         # Global variables, config
│   └── _variables.css
├── tools/            # Mixins and functions
│   └── _mixins.css
├── generic/          # Reset and normalize styles
│   ├── _reset.css
│   └── _base.css
├── elements/         # Styling for bare HTML elements
│   ├── _typography.css
│   └── _links.css
├── objects/          # Class-based selectors for layout patterns
│   ├── _container.css
│   └── _grid.css
├── components/       # Specific UI components
│   ├── _buttons.css
│   ├── _cards.css
│   ├── _hero.css
│   ├── _navigation.css
│   └── _footer.css
├── utilities/        # Helper classes
│   ├── _spacing.css
│   ├── _colors.css
│   ├── _animations.css
│   └── _helpers.css
└── main.css          # Main file that imports all partials
```

## Naming Conventions

The framework uses a combination of BEM (Block, Element, Modifier) methodology and functional naming for utility classes:

### Component Classes

Component classes use the "bf-" prefix (Bloodfen) and follow the BEM naming convention:

```css
/* Block */
.bf-card { }

/* Element */
.bf-card-title { }
.bf-card-content { }

/* Modifier */
.bf-card--featured { }
.bf-button--primary { }
```

### Utility Classes

Utility classes follow a functional naming convention:

```css
/* Spacing utilities */
.mt-4 { margin-top: 1rem; }
.p-2 { padding: 0.5rem; }

/* Display utilities */
.d-flex { display: flex; }
.d-none { display: none; }

/* Text utilities */
.text-center { text-align: center; }
.text-primary { color: var(--bf-text-primary); }
```

## Color System

The framework uses CSS variables for colors, defined in `settings/_variables.css`:

```css
:root {
  /* Background colors */
  --bf-bg-dark: #121212;
  --bf-bg: #1a1a1a;
  --bf-bg-light: #2a2a2a;
  
  /* Text colors */
  --bf-text-primary: #ffffff;
  --bf-text-secondary: #cccccc;
  
  /* Brand colors */
  --bf-highlight: #ffb100;
  --bf-highlight-dark: #e69d00;
  
  /* Class colors */
  --class-warrior: #c79c6e;
  --class-mage: #69ccf0;
  /* ... other class colors ... */
}
```

## Responsive Design

The framework includes responsive utilities with breakpoints defined as:

```css
/* Mobile first approach */
.d-none { display: none; }

/* Tablet (md) */
@media (min-width: 768px) {
  .d-md-none { display: none; }
  .d-md-block { display: block; }
}

/* Desktop (lg) */
@media (min-width: 1024px) {
  .d-lg-none { display: none; }
  .d-lg-block { display: block; }
}

/* Large Desktop (xl) */
@media (min-width: 1280px) {
  .d-xl-none { display: none; }
  .d-xl-block { display: block; }
}
```

## Usage Examples

### Basic Layout

```html
<div class="bf-container">
  <div class="bf-grid bf-grid-cols-3 bf-grid-gap-md">
    <div class="bf-grid-item">Content 1</div>
    <div class="bf-grid-item">Content 2</div>
    <div class="bf-grid-item">Content 3</div>
  </div>
</div>
```

### Component Example

```html
<div class="bf-card">
  <div class="bf-card-content">
    <span class="card-badge badge-essential">Essential</span>
    <h3 class="card-title">Card Title</h3>
    <p class="card-summary">Card description text goes here.</p>
    <a href="#" class="card-read-more">Read More <span class="arrow">→</span></a>
  </div>
</div>
```

### Utility Classes Example

```html
<div class="d-flex justify-content-between align-items-center p-4 mb-5 bg-bf-bg-light rounded-lg">
  <h2 class="text-bf-highlight font-bold text-xl">Section Title</h2>
  <button class="bf-button-primary">Action</button>
</div>
```

## Shortcodes

The framework includes several Hugo shortcodes for common UI patterns:

- `bf-ability.html` - Display WoW abilities with icons
- `bf-callout.html` - Create highlighted information boxes
- `bf-tabs.html` - Create tabbed content sections
- `bf-tooltip.html` - Add tooltips to text
- `bf-item.html` - Display WoW items with Wowhead integration
- `bf-npc.html` - Display WoW NPCs with Wowhead integration
- `bf-class.html` - Display class-specific content with appropriate styling
- `bf-tip.html` - Display helpful tips with an icon
- `bf-warning.html` - Display warning messages with an icon

### Shortcode Examples

#### Class Shortcode

```
{{< bf-class "warrior" >}}
This content is specific to the Warrior class.
{{< /bf-class >}}
```

#### Tip Shortcode

```
{{< bf-tip >}}
Here's a helpful tip for players.
{{< /bf-tip >}}
```

#### Warning Shortcode

```
{{< bf-warning >}}
Be careful about this important warning.
{{< /bf-warning >}}
```

## JavaScript Integration

The framework includes a JavaScript file (`bf-theme.js`) that enhances the functionality of various components:

- Mobile menu toggle
- Back to top button
- Accordion functionality
- Tab functionality
- Dark/light mode toggle

## Best Practices

1. **Use the component classes for UI elements** - Prefer using the predefined component classes for consistent styling.
2. **Leverage utility classes for minor adjustments** - Use utility classes for spacing, alignment, and other small tweaks.
3. **Follow the BEM naming convention for new components** - When creating new components, follow the BEM methodology.
4. **Use CSS variables for theming** - Leverage the CSS variables for consistent colors and spacing.
5. **Mobile-first approach** - Start with mobile styles and add responsive utilities for larger screens.
6. **Minimize custom CSS** - Try to use the existing components and utilities before writing custom CSS. 