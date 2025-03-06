# Bloodfen WoW Guides - Custom Shortcodes

This document provides documentation for all the custom shortcodes available in the Bloodfen WoW Guides theme. These shortcodes help create WoW-themed UI elements that enhance the visual appeal and usability of your guides.

## Table of Contents

- [Callout Boxes](#callout-boxes)
- [Tooltips](#tooltips)
- [Tabs](#tabs)
- [Ability Boxes](#ability-boxes)

## Callout Boxes

Use callout boxes to highlight important information in your guides.

### Usage

```markdown
{{%/* wow-callout type="info" title="Note" icon="icon-info" */%}}
This is an informational callout box.
{{%/* /wow-callout */%}}
```

### Parameters

- `type`: The type of callout (default: "info")
  - Options: "info", "warning", "danger", "success", "quest", "legendary"
- `title`: The title of the callout (optional)
- `icon`: The icon class to use (optional)
  - Options: "icon-info", "icon-warning", "icon-danger", "icon-success", "icon-quest", "icon-legendary"

### Examples

#### Info Callout

```markdown
{{%/* wow-callout type="info" title="Note" icon="icon-info" */%}}
This is an informational callout box.
{{%/* /wow-callout */%}}
```

#### Warning Callout

```markdown
{{%/* wow-callout type="warning" title="Warning" icon="icon-warning" */%}}
This is a warning callout box.
{{%/* /wow-callout */%}}
```

#### Quest Callout

```markdown
{{%/* wow-callout type="quest" title="Quest: The War Within" icon="icon-quest" */%}}
This is a quest callout box.
{{%/* /wow-callout */%}}
```

## Tooltips

Use tooltips to provide additional information when hovering over text.

### Usage

```markdown
{{%/* wow-tooltip text="Legendary Item" tooltip="This is a legendary item with special powers." quality="legendary" */%}}
```

### Parameters

- `text`: The text to display
- `tooltip`: The tooltip content to show on hover
- `quality`: The quality/rarity of the item (default: "common")
  - Options: "poor", "common", "uncommon", "rare", "epic", "legendary", "artifact", "heirloom"

### Examples

#### Common Item

```markdown
{{%/* wow-tooltip text="Common Item" tooltip="This is a common item." quality="common" */%}}
```

#### Epic Item

```markdown
{{%/* wow-tooltip text="Epic Item" tooltip="This is an epic item with amazing stats." quality="epic" */%}}
```

## Tabs

Use tabs to organize content into different sections.

### Usage

```markdown
{{%/* wow-tabs */%}}
  {{%/* wow-tab name="Overview" */%}}
  This is the overview tab content.
  {{%/* /wow-tab */%}}
  
  {{%/* wow-tab name="Abilities" */%}}
  This is the abilities tab content.
  {{%/* /wow-tab */%}}
  
  {{%/* wow-tab name="Strategy" */%}}
  This is the strategy tab content.
  {{%/* /wow-tab */%}}
{{%/* /wow-tabs */%}}
```

### Parameters

For `wow-tabs`:
- `id`: A unique ID for the tabs (optional, auto-generated if not provided)

For `wow-tab`:
- `name`: The name of the tab

## Ability Boxes

Use ability boxes to showcase abilities, spells, or talents.

### Usage

```markdown
{{%/* wow-ability name="Fireball" icon="ability-mage-fireball" cooldown="8 sec cooldown" type="spell" */%}}
Hurls a fiery ball that causes X Fire damage.
{{%/* /wow-ability */%}}
```

### Parameters

- `name`: The name of the ability
- `icon`: The CSS class for the ability icon (default: "ability-default")
- `cooldown`: The cooldown text (optional)
- `type`: The type of ability (default: "ability")
  - Options: "ability", "spell", "talent", "passive", "covenant"

### Examples

#### Spell

```markdown
{{%/* wow-ability name="Fireball" icon="ability-mage-fireball" cooldown="8 sec cooldown" type="spell" */%}}
Hurls a fiery ball that causes X Fire damage.
{{%/* /wow-ability */%}}
```

#### Talent

```markdown
{{%/* wow-ability name="Combustion" icon="ability-mage-combustion" cooldown="2 min cooldown" type="talent" */%}}
Engulfs you in flames, increasing your critical strike chance by X% for 10 sec.
{{%/* /wow-ability */%}}
```

## Using Shortcodes in Your Guides

To use these shortcodes in your guides, simply include them in your Markdown files. You can combine multiple shortcodes to create rich, interactive content.

### Example Guide Section

```markdown
# Boss Guide: Fyrakk the Blazing

{{%/* wow-callout type="info" title="Overview" icon="icon-info" */%}}
Fyrakk is the final boss of the Amirdrassil raid.
{{%/* /wow-callout */%}}

## Abilities

{{%/* wow-ability name="Blazing Inferno" icon="ability-fyrakk-inferno" cooldown="30 sec cooldown" type="spell" */%}}
Fyrakk unleashes a blazing inferno, dealing X Fire damage to all players and leaving behind flames on the ground.
{{%/* /wow-ability */%}}

{{%/* wow-ability name="Molten Eruption" icon="ability-fyrakk-eruption" cooldown="1 min cooldown" type="spell" */%}}
Fyrakk causes the ground to erupt, dealing X Fire damage and knocking players back.
{{%/* /wow-ability */%}}

## Strategy

{{%/* wow-tabs */%}}
  {{%/* wow-tab name="Phase 1" */%}}
  During Phase 1, focus on avoiding the flames on the ground while dealing damage to Fyrakk.
  
  **Key Mechanics:**
  - Dodge {{%/* wow-tooltip text="Blazing Inferno" tooltip="Deals X Fire damage and leaves flames on the ground." quality="epic" */%}}
  - Spread out for {{%/* wow-tooltip text="Molten Eruption" tooltip="Deals X Fire damage and knocks players back." quality="rare" */%}}
  {{%/* /wow-tab */%}}
  
  {{%/* wow-tab name="Phase 2" */%}}
  In Phase 2, Fyrakk will summon adds that need to be dealt with quickly.
  
  **Key Mechanics:**
  - Kill adds in priority order
  - Continue avoiding ground effects
  {{%/* /wow-tab */%}}
  
  {{%/* wow-tab name="Phase 3" */%}}
  The final phase combines all previous mechanics with increased damage.
  
  **Key Mechanics:**
  - Use personal defensive cooldowns
  - Healers should save major cooldowns for this phase
  {{%/* /wow-tab */%}}
{{%/* /wow-tabs */%}}

{{%/* wow-callout type="warning" title="Important" icon="icon-warning" */%}}
Make sure to have Fire Resistance consumables for this fight!
{{%/* /wow-callout */%}}
```