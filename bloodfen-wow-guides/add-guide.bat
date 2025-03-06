@echo off
setlocal enabledelayedexpansion

echo ===================================
echo Bloodfen WoW Guides - Add New Guide
echo ===================================
echo.

set /p "source_file=Enter the source markdown file path: "
set /p "guide_title=Enter the guide title: "
set /p "guide_weight=Enter the guide weight (menu order number): "
set /p "guide_filename=Enter the destination filename (without extension): "

if not exist "%source_file%" (
    echo Error: Source file does not exist.
    goto :end
)

set "dest_file=content\world-of-warcraft\the-war-within\%guide_filename%.md"

echo.
echo Creating guide with:
echo - Source: %source_file%
echo - Title: %guide_title%
echo - Weight: %guide_weight%
echo - Destination: %dest_file%
echo.

echo Creating guide...

(
    echo ---
    echo title: "%guide_title%"
    echo weight: %guide_weight%
    echo bookFlatSection: false
    echo bookCollapseSection: false
    echo ---
    echo.
) > "%dest_file%"

type "%source_file%" >> "%dest_file%"

echo Guide created successfully at %dest_file%
echo.
echo Remember to:
echo - Review the content for formatting
echo - Add any necessary shortcodes
echo - Update links and references
echo - Run Hugo to preview the changes

:end
pause 