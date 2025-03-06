# Bloodfen WoW Guides - Design System Implementation Plan

## Overview
This document outlines the plan for implementing a comprehensive Tailwind CSS-based design system for the Bloodfen WoW Guides website. The design system will ensure consistency, scalability, and maintainability across all pages and components.

## Goals
- Create a cohesive visual language using Tailwind CSS
- Establish reusable components and patterns
- Ensure responsive design across all device sizes
- Maintain WoW-themed aesthetics while improving usability
- Document the design system for future development

## Phase 1: Design System Foundation

### 1.1 Design Tokens
- [x] Define color palette (primary, secondary, accent, etc.)
- [x] Establish typography system (fonts, sizes, weights)
- [x] Create spacing scale
- [x] Define border radiuses and shadows
- [x] Set up animation durations and easing functions

### 1.2 Tailwind Configuration
- [x] Set up tailwind.config.js with custom theme extensions
- [x] Configure color palette in Tailwind
- [x] Add custom font families
- [x] Define custom spacing, shadows, and animations
- [x] Create custom plugin for WoW-specific utilities if needed

## Phase 2: Core Components

### 2.1 Layout Components
- [x] Container system
- [x] Grid system
- [x] Flexbox utilities
- [x] Responsive breakpoints
- [x] Section templates

### 2.2 Navigation Components
- [x] Header
- [x] Main navigation
- [x] Mobile navigation
- [ ] Breadcrumbs (on hold)
- [x] Footer

### 2.3 UI Elements
- [x] Buttons (primary, secondary, tertiary)
- [x] Cards (guide cards, feature cards)
- [x] Badges (essential, endgame, world, pvp)
- [ ] Icons (on hold)
- [x] Dividers and separators

### 2.4 Form Components
- [ ] Input fields (on hold)
- [ ] Select dropdowns (on hold)
- [ ] Checkboxes and radio buttons (on hold)
- [ ] Form layouts (on hold)
- [ ] Validation states (on hold)

### 2.5 Interactive Components
- [ ] Tooltips (on hold)
- [ ] Modals (on hold)
- [ ] Accordions (on hold)
- [ ] Tabs (on hold)
- [ ] Dropdowns (on hold)

## Phase 3: Page-Specific Components

### 3.1 Homepage Components
- [x] Hero section
- [x] Guide card grid
- [ ] Featured content section (on hold)
- [x] Call-to-action sections

### 3.2 Guide Page Components
- [ ] Guide headers (on hold)
- [ ] Table of contents (on hold)
- [ ] Content sections (on hold)
- [ ] Code blocks (on hold)
- [ ] Tables (on hold)
- [ ] Callouts (info, warning, tip) (on hold)
- [ ] Related guides section (on hold)

### 3.3 About/Contact Pages
- [ ] Team member cards (on hold)
- [ ] Contact form (on hold)
- [ ] FAQ accordion (on hold)
- [ ] Social proof sections (on hold)

## Phase 4: Implementation

### 4.1 Base Template Updates
- [x] Update baseof.html to use Tailwind classes
- [x] Create reusable partial templates for common components
- [x] Implement responsive design patterns

### 4.2 Page Template Updates
- [x] Homepage template
- [ ] Guide list template (on hold)
- [ ] Single guide template (on hold)
- [ ] About page template (on hold)
- [ ] Contact page template (on hold)

### 4.3 Component Migration
- [x] Migrate existing components to use Tailwind classes
- [x] Ensure consistent styling across all components
- [x] Test components at all breakpoints

## Phase 5: Documentation & Refinement

### 5.1 Design System Documentation
- [ ] Create component library page (on hold)
- [ ] Document usage guidelines for each component (on hold)
- [ ] Provide examples and code snippets (on hold)
- [ ] Create color and typography reference (on hold)

### 5.2 Performance Optimization
- [ ] Purge unused Tailwind classes
- [ ] Optimize for Core Web Vitals
- [ ] Ensure accessibility compliance
- [ ] Test loading performance

### 5.3 Final Review & Launch
- [ ] Cross-browser testing
- [ ] Mobile device testing
- [ ] Accessibility audit
- [ ] Final design review
- [ ] Deploy design system

## Implementation Approach

### Tailwind Component Strategy
We'll use Tailwind's `@layer components` to create reusable component classes while maintaining the utility-first approach. This gives us the flexibility of utilities with the reusability of components.

Example:
```css
@layer components {
  .wow-button {
    @apply px-4 py-2 rounded-md font-medium transition-all duration-300;
  }
  
  .wow-button-primary {
    @apply wow-button bg-wow-accent text-white hover:bg-blue-600;
  }
}
```

### Responsive Design Strategy
We'll use Tailwind's responsive modifiers to ensure all components work well across different screen sizes:

- Mobile-first approach
- Breakpoints: sm (640px), md (768px), lg (1024px), xl (1280px), 2xl (1536px)
- Use responsive variants for layout changes: `md:flex-row`

### Component Documentation Format
For each component, we'll document:
1. Purpose and usage
2. Available variants
3. Responsive behavior
4. Example HTML with Tailwind classes
5. Accessibility considerations

## Current Focus: Index.html Components
We're currently focusing on implementing and refining the components needed for the homepage (index.html):

1. **Hero Section**
   - Banner with text overlay
   - Responsive text sizing
   - CTA button

2. **Guide Card Grid**
   - Card layout and styling
   - Badge system for categorization
   - Responsive grid layout

3. **Navigation**
   - Header with logo and navigation
   - Mobile-responsive menu

4. **Grid System**
   - Implementing consistent grid layouts
   - Responsive column adjustments

All other components are temporarily on hold until these core homepage components are fully implemented and refined.

# Code Review Results and Future Tasks

## Completed Code Review
A comprehensive code review has been completed, addressing all high-priority issues in the codebase. The following improvements have been made:

1. **Project Structure:**
   - Removed duplicate and unnecessary directories
   - Consolidated CSS files to avoid duplication
   - Improved organization of assets

2. **Code Quality:**
   - Improved HTML semantics and accessibility
   - Enhanced JavaScript performance and error handling
   - Added linting for CSS and JavaScript
   - Fixed circular dependency issues in CSS

3. **Documentation:**
   - Updated TASKS.md with comprehensive review findings
   - Added implementation details for completed tasks
   - Documented code structure and organization

## Content Cleanup Tasks

### Duplicate Guides Issue 1: guides vs world-of-warcraft
During the review, we discovered duplicate guides in the content directory:
- `/content/guides/` contained older, generic versions of guides
- `/content/world-of-warcraft/` contains newer, Season 2-specific versions

#### Action Plan:
- [x] Review all guides in both directories to confirm duplicates
- [x] Delete duplicate guides from the `/content/guides/` directory
- [x] Update the `/content/guides/_index.md` file to redirect to the world-of-warcraft section
- [x] Remove the guides directory completely and update config.yaml

#### Affected Files (Deleted):
1. `/content/guides/first-week-activities-checklist.md` ✅
2. `/content/guides/delves-world-content-guide.md` ✅
3. `/content/guides/mythic-plus-dungeon-guide.md` ✅
4. `/content/guides/_index.md` ✅

#### Implementation Details:
- Completely removed the duplicate guide files from the `/content/guides/` directory
- Removed the `/content/guides/` directory entirely
- Updated config.yaml to point directly to `/world-of-warcraft/` instead of `/guides/`
- This approach keeps the codebase clean and avoids confusion since the site is newly built with no existing users

### Duplicate Guides Issue 2: world-of-warcraft vs the-war-within
We've identified another set of duplicate guides:
- `/content/world-of-warcraft/` contains guides directly in the root
- `/content/world-of-warcraft/the-war-within/` contains similar guides in a subfolder

#### Action Plan:
- [x] Review all guides in both directories to confirm duplicates
- [x] Decide on the preferred structure (flat vs. nested)
- [x] Delete duplicate guides from one of the directories
- [x] Update any internal links that may point to the deleted files

#### Decision:
After reviewing both sets of files, we've decided to **keep the nested structure** (`/world-of-warcraft/the-war-within/`) and remove the duplicate files from the root directory for the following reasons:
1. The main `/world-of-warcraft/_index.md` file already links to the nested structure
2. The nested structure allows for better organization by expansion
3. The nested files have proper book-related frontmatter for the Hugo theme
4. This structure will be more maintainable as new expansions are added

#### Affected Files (Deleted):
1. `/content/world-of-warcraft/first-week-activities-checklist.md` ✅
2. `/content/world-of-warcraft/delves-world-content-guide.md` ✅
3. `/content/world-of-warcraft/mythic-plus-dungeon-guide.md` ✅
4. `/content/world-of-warcraft/liberation-of-undermine-raid-guide.md` ✅
5. `/content/world-of-warcraft/pvp-guide.md` ✅
6. `/content/world-of-warcraft/gear-meta-guide.md` ✅
7. `/content/world-of-warcraft/crafting-professions-guide.md` ✅

#### Implementation Details:
- Deleted all duplicate guide files from the root `/content/world-of-warcraft/` directory
- Kept the nested structure in `/content/world-of-warcraft/the-war-within/`
- No internal links needed to be updated as the main index page already pointed to the nested structure
- This approach maintains a clean, organized content structure that can easily accommodate future expansions

## Remaining Tasks

### Medium Priority:
- [ ] Implement PurgeCSS for production builds
- [ ] Add testing setup for critical components
- [ ] Further enhance code documentation

### Long-term Improvements:
- [ ] Create a comprehensive component library
- [ ] Implement automated testing
- [ ] Optimize build process for production

The codebase is now more maintainable, accessible, and follows better coding practices. The next steps focus on further optimization and enhancing the developer experience. 

# CSS Restructuring Project for Bloodfen WoW Guides

## Project Overview
This project aims to restructure the CSS for the Bloodfen WoW Guides website, moving from a flat structure to a more organized approach using the ITCSS methodology. The new structure will improve maintainability, reduce CSS conflicts, and make the codebase more scalable.

## Completed Tasks

### Phase 1: Setup and Planning
- [x] Create a new directory structure for CSS files
- [x] Define naming conventions and coding standards
- [x] Create a plan for migrating existing styles

### Phase 2: Core Styles
- [x] Migrate reset/normalize styles
- [x] Set up global variables (colors, typography, spacing)
- [x] Create base element styles

### Phase 3: Layout Components
- [x] Create grid system
- [x] Develop container components
- [x] Implement responsive breakpoints

### Phase 4: UI Components
- [x] Migrate button styles
- [x] Develop card components
- [x] Create form elements
- [x] Implement navigation components
- [x] Style tables and lists

### Phase 5: Utilities
- [x] Create utility classes for spacing
- [x] Develop text utilities
- [x] Implement color utilities
- [x] Create flexbox and grid utilities

### Phase 6: Integration
- [x] Update HTML files to use new CSS classes
- [x] Test components in different contexts
- [x] Fix any styling issues or conflicts
- [x] Update shortcodes to use new CSS classes
- [x] Create additional shortcodes with bf- prefix
- [x] Update class.html, tip.html, and warning.html shortcodes to use bf- prefix

### Phase 7: Cleanup and Documentation
- [x] Remove deprecated CSS files
- [x] Document new CSS structure
- [x] Create component usage examples
- [x] Update tailwind.config.js to use bf- prefix instead of wow- prefix
- [x] Update assets/css/main.css to use bf- prefix instead of wow- prefix
- [x] Regenerate tailwind.css with updated class prefixes

## Current Structure (ITCSS)

The CSS is now organized following the ITCSS (Inverted Triangle CSS) methodology:

1. **Settings** - Variables and configuration
   - `_variables.css` - Color schemes, typography, spacing
   - `_breakpoints.css` - Media query breakpoints

2. **Tools** - Mixins and functions
   - `_mixins.css` - Reusable patterns

3. **Generic** - Reset and normalize
   - `_reset.css` - CSS reset
   - `_base.css` - Base HTML elements

4. **Elements** - Bare HTML elements
   - `_typography.css` - Headings, paragraphs, lists
   - `_links.css` - Anchor styles
   - `_tables.css` - Table styles
   - `_forms.css` - Form element styles

5. **Objects** - Layout patterns
   - `_container.css` - Container objects
   - `_grid.css` - Grid system
   - `_media.css` - Media objects

6. **Components** - UI components
   - `_buttons.css` - Button styles
   - `_cards.css` - Card components
   - `_navigation.css` - Navigation components
   - `_hero.css` - Hero sections
   - `_footer.css` - Footer styles
   - `_sidebar.css` - Sidebar components
   - `_alerts.css` - Alert and notification styles

7. **Utilities** - Helper classes
   - `_spacing.css` - Margin and padding utilities
   - `_display.css` - Display utilities
   - `_text.css` - Text utilities
   - `_colors.css` - Color utilities

## Next Steps
- [x] Test the new CSS structure across different pages and screen sizes
- [x] Update Hugo templates to use the new shortcode names
- [ ] Create documentation for the new CSS framework
- [ ] Conduct final review and optimization 