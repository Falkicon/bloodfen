@echo off
echo Adding remaining guides to the Hugo site...

:: PvP Guide
echo Processing PvP Guide...
copy "..\04-PvP Guide.md" "content\world-of-warcraft\the-war-within\pvp-guide.md"
echo --->> "content\world-of-warcraft\the-war-within\pvp-guide.md.tmp"
echo title: "PvP Guide">> "content\world-of-warcraft\the-war-within\pvp-guide.md.tmp"
echo weight: 5>> "content\world-of-warcraft\the-war-within\pvp-guide.md.tmp"
echo bookToc: true>> "content\world-of-warcraft\the-war-within\pvp-guide.md.tmp"
echo --->> "content\world-of-warcraft\the-war-within\pvp-guide.md.tmp"
echo.>> "content\world-of-warcraft\the-war-within\pvp-guide.md.tmp"
type "content\world-of-warcraft\the-war-within\pvp-guide.md" >> "content\world-of-warcraft\the-war-within\pvp-guide.md.tmp"
move /y "content\world-of-warcraft\the-war-within\pvp-guide.md.tmp" "content\world-of-warcraft\the-war-within\pvp-guide.md"

:: Gear & Meta Guide
echo Processing Gear & Meta Guide...
copy "..\05-Gear & Meta Guide.md" "content\world-of-warcraft\the-war-within\gear-meta-guide.md"
echo --->> "content\world-of-warcraft\the-war-within\gear-meta-guide.md.tmp"
echo title: "Gear & Meta Guide">> "content\world-of-warcraft\the-war-within\gear-meta-guide.md.tmp"
echo weight: 6>> "content\world-of-warcraft\the-war-within\gear-meta-guide.md.tmp"
echo bookToc: true>> "content\world-of-warcraft\the-war-within\gear-meta-guide.md.tmp"
echo --->> "content\world-of-warcraft\the-war-within\gear-meta-guide.md.tmp"
echo.>> "content\world-of-warcraft\the-war-within\gear-meta-guide.md.tmp"
type "content\world-of-warcraft\the-war-within\gear-meta-guide.md" >> "content\world-of-warcraft\the-war-within\gear-meta-guide.md.tmp"
move /y "content\world-of-warcraft\the-war-within\gear-meta-guide.md.tmp" "content\world-of-warcraft\the-war-within\gear-meta-guide.md"

:: Crafting & Professions Guide
echo Processing Crafting & Professions Guide...
copy "..\06-Crafting & Professions Guide.md" "content\world-of-warcraft\the-war-within\crafting-professions.md"
echo --->> "content\world-of-warcraft\the-war-within\crafting-professions.md.tmp"
echo title: "Crafting & Professions Guide">> "content\world-of-warcraft\the-war-within\crafting-professions.md.tmp"
echo weight: 7>> "content\world-of-warcraft\the-war-within\crafting-professions.md.tmp"
echo bookToc: true>> "content\world-of-warcraft\the-war-within\crafting-professions.md.tmp"
echo --->> "content\world-of-warcraft\the-war-within\crafting-professions.md.tmp"
echo.>> "content\world-of-warcraft\the-war-within\crafting-professions.md.tmp"
type "content\world-of-warcraft\the-war-within\crafting-professions.md" >> "content\world-of-warcraft\the-war-within\crafting-professions.md.tmp"
move /y "content\world-of-warcraft\the-war-within\crafting-professions.md.tmp" "content\world-of-warcraft\the-war-within\crafting-professions.md"

echo All guides have been processed and added to the Hugo site.
echo.
pause 