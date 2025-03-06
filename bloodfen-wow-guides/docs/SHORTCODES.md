# Custom Shortcodes

This document outlines the custom shortcodes available for use in the Bloodfen WoW Guides.

## Tip Shortcode

Use the `tip` shortcode to highlight helpful tips or important information.

**Usage:**

```markdown
{{</* tip */>}}
This is a helpful tip for players.
{{</* /tip */>}}
```

**Result:**

A styled box containing the tip text.

## Warning Shortcode

Use the `warning` shortcode to highlight warnings or potential issues.

**Usage:**

```markdown
{{</* warning */>}}
Be careful when attempting this strategy on higher difficulty levels.
{{</* /warning */>}}
```

**Result:**

A styled box containing the warning text.

## Class Shortcode

Use the `class` shortcode to provide class-specific information. The shortcode takes one parameter: the class name.

**Usage:**

```markdown
{{</* class "warrior" */>}}
Warriors should use Shield Wall during this phase to mitigate damage.
{{</* /class */>}}
```

**Result:**

A styled box with class-specific coloring and icon.

### Available Classes

The following class names are supported:

- warrior
- paladin
- hunter
- rogue
- priest
- shaman
- mage
- warlock
- monk
- druid
- demon-hunter
- death-knight
- evoker

Each class has its own color scheme and icon.

## Combining Shortcodes

You can use Markdown formatting inside shortcodes:

```markdown
{{</* tip */>}}
Remember to **always** bring consumables for raid nights:
- Flasks
- Food
- Augment Runes
{{</* /tip */>}}
```

## Adding Shortcodes to Your Guides

When writing guides, use these shortcodes to highlight important information and make your content more readable and visually appealing. 