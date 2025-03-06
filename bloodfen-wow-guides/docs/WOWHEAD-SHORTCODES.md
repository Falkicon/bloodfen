# Wowhead Shortcodes Documentation

This document explains how to use the Bloodfen WoW Guides shortcodes for Wowhead integration.

## Item Shortcode

Use the `bf-item` shortcode to create links to items with tooltips and icons.

### Basic Usage

```hugo
{{</* bf-item name="Gallywix's Gilded Greataxe" id="123456" */>}}
```

This will render as a link to the item on Wowhead with a tooltip that appears on hover.

### Parameters

The `bf-item` shortcode accepts the following parameters:

- `id` (required): The Wowhead item ID
- `name` (required): The name of the item
- `quality` (optional): The quality of the item (common, uncommon, rare, epic, legendary)
- `icon` (optional): The icon ID for the item

### Advanced Usage

```hugo
{{</* bf-item name="Staff of Cascading Currents" id="123457" quality="epic" icon="inv_staff_2h_artifactstaffoftheearthenring_d_01" */>}}
```

## NPC Shortcode

Use the `bf-npc` shortcode to create links to NPCs with tooltips.

### Basic Usage

```hugo
{{</* bf-npc name="Chrome King Gallywix" id="209090" */>}}
```

### Parameters

The `bf-npc` shortcode accepts the following parameters:

- `id` (required): The Wowhead NPC ID
- `name` (required): The name of the NPC

## Examples in Context

Here's how you might use these shortcodes in a guide:

```markdown
## Best Weapons for Tanks

For tanks, the best weapon is {{</* bf-item name="Gallywix's Gilded Greataxe" id="123456" quality="epic" icon="inv_axe_2h_blacksmithing_01" */>}}, which drops from {{</* bf-npc name="Chrome King Gallywix" id="209090" */>}} in the Liberation of Undermine raid.

## How to Get the Best Trinkets

To get the best trinkets, you'll need to:

1. Defeat {{</* bf-npc name="The Cauldron of Carnage" id="209096" */>}} for a chance at {{</* bf-item name="Alchemist's Rejuvenation Vial" id="208843" */>}}
2. Run Operation: Floodgate for {{</* bf-item name="Undermine Detonator" id="208838" */>}}
```

## Tooltip Script

The tooltips are powered by the Wowhead Tooltips script, which is automatically included in the site's header. No additional configuration is needed.

## Troubleshooting

If tooltips aren't appearing:

1. Make sure you're using the correct item or NPC ID
2. Check that the shortcode syntax is correct (no spaces between `{{<` and `bf-item`)
3. Verify that your browser isn't blocking the Wowhead script

## Finding Wowhead IDs and Icons

1. **Item IDs**: Search for the item on [Wowhead](https://www.wowhead.com/) and look at the URL. For example, for [Thunderfury](https://www.wowhead.com/item=19019/thunderfury-blessed-blade-of-the-windseeker), the ID is 19019.

2. **NPC IDs**: Search for the NPC on Wowhead and look at the URL. For example, for [Hogger](https://www.wowhead.com/npc=448/hogger), the ID is 448.

3. **Icon Names**: When viewing an item on Wowhead, right-click on the item's icon and select "Copy Image Address". The icon name is the part after "icons/large/" and before ".jpg".

## Example Usage in Guides

Here's how you might use these shortcodes in a guide:

```markdown
For tanks, the best weapon is {{</* bf-item name="Gallywix's Gilded Greataxe" id="123456" quality="epic" icon="inv_axe_2h_blacksmithing_01" */>}}, 
which drops from {{</* bf-npc name="Chrome King Gallywix" id="209090" */>}} in the raid.
```

## Item Quality Colors

The shortcode supports all standard WoW item quality colors:

- Poor (gray)
- Common (white)
- Uncommon (green)
- Rare (blue)
- Epic (purple)
- Legendary (orange)
- Artifact (gold)
- Heirloom (light blue) 