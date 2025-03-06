# Bloodfen WoW Guides - CSS Restructuring Project

## Project Overview
Restructure the CSS for the Bloodfen WoW Guides website to follow the ITCSS (Inverted Triangle CSS) methodology for better organization, maintainability, and scalability.

## Progress Notes
- Implemented ITCSS structure with settings, tools, generic, elements, objects, components, and utilities layers
- Created foundational styles for typography, colors, and spacing
- Established component-specific styles with BEM naming convention
- Added utility classes for common styling needs
- Updated HTML files to use the new CSS framework
- Updated JavaScript to use the new class names
- Updated shortcodes to use the new class names
- Created copies of shortcode files with the new bf- prefix
- Removed old wow- prefixed files that have been replaced
- Updated remaining shortcodes (wowitem.html → bf-item.html, wownpc.html → bf-npc.html)
- Created documentation for the new CSS framework
- Created additional shortcodes with bf- prefix (class.html → bf-class.html, tip.html → bf-tip.html, warning.html → bf-warning.html)
- Updated error pages (404.html) to use the new CSS framework
- Verified sitemap.xml (no CSS updates needed as it's an XML file for SEO)
- Checked all template files in layouts directory for CSS class usage
- Updated HTML files in _default directory (single.html, list.html)
- Updated HTML files in partials/docs directory (menu.html, menu-bundle.html, menu-filetree.html)
- Identified need to update tailwind.css to replace "wow-" prefixed classes with "bf-" prefixed classes

## Completed Tasks

### Phase 1: Project Setup
- [x] Create new CSS directory structure
- [x] Set up main.css file to import all partials
- [x] Define project variables and mixins

### Phase 2: Create Base Styles
- [x] Create reset/normalize styles
- [x] Define typography styles
- [x] Establish color system
- [x] Set up spacing system

### Phase 3: Develop Component Styles
- [x] Create button styles
- [x] Develop card component styles
- [x] Style navigation components
- [x] Create hero section styles
- [x] Style footer components

### Phase 4: Implement Layout System
- [x] Create grid system
- [x] Define container styles
- [x] Establish responsive breakpoints
- [x] Create layout utility classes

### Phase 5: Migrate Utility Styles
- [x] Create `_spacing.css` with margin and padding utilities
- [x] Create `_colors.css` with text, background, and border color utilities
- [x] Create `_animations.css` with animation and transition utilities
- [x] Create `_helpers.css` with display, positioning, and other utility classes

### Phase 6: Update HTML Templates
- [x] Update `index.html` to use new CSS classes
- [x] Update `baseof.html` template to use new CSS classes
- [x] Create new JavaScript file with updated class references
- [x] Update shortcodes to use new CSS classes
  - [x] Update `wow-ability.html` to `bf-ability.html`
  - [x] Update `wow-callout.html` to `bf-callout.html`
  - [x] Update `wow-tabs.html` to `bf-tabs.html`
  - [x] Update `wow-tooltip.html` to `bf-tooltip.html`
  - [x] Update `back-to-top.html`
- [x] Create copies of shortcode files with the new bf- prefix
- [x] Remove old wow- prefixed files
- [x] Update error pages (404.html) to use the new CSS framework
- [x] Check sitemap.xml (no CSS updates needed)
- [x] Verify all template files in layouts directory
- [x] Update HTML files in _default directory (single.html, list.html)
- [x] Update HTML files in partials/docs directory (menu.html, menu-bundle.html, menu-filetree.html)

### Phase 7: Cleanup and Documentation
- [x] Remove deprecated JavaScript files
- [x] Remove deprecated shortcode files
- [x] Update remaining shortcodes (wowitem.html → bf-item.html, wownpc.html → bf-npc.html)
- [x] Create documentation for the new CSS framework
- [x] Create additional shortcodes with bf- prefix (class.html → bf-class.html, tip.html → bf-tip.html, warning.html → bf-warning.html)
- [ ] Update tailwind.css to replace "wow-" prefixed classes with "bf-" prefixed classes
- [ ] Verify syntax.css is compatible with the new CSS framework

## Next Steps
1. Test the new CSS structure across different pages and screen sizes
2. Update Hugo templates to use the new shortcode names
3. Regenerate tailwind.css with updated class prefixes

## Notes
- The new CSS framework uses the "bf-" prefix for component classes (previously "wow-")
- Utility classes follow a functional naming convention (e.g., `.text-center`, `.mt-4`)
- The ITCSS approach organizes CSS from generic to specific, reducing specificity conflicts
- Tailwind-inspired utility classes are included for rapid development
- Documentation is available in the `bloodfen-wow-guides/static/css/new-structure/README.md` file
- The syntax.css file doesn't need prefix updates as it uses standard Hugo syntax highlighting classes
- The tailwind.css file needs to be regenerated with the new "bf-" prefix instead of "wow-" prefix
