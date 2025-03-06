@echo off
setlocal enabledelayedexpansion

echo ===================================
echo Bloodfen WoW Guides - Image Optimizer
echo ===================================
echo.
echo This script helps optimize images for the website.
echo.

:: Check if npm is installed
where npm >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: npm is not installed. Please install Node.js from https://nodejs.org/
    echo.
    pause
    exit /b 1
)

:: Check if sharp-cli is installed
call npm list -g sharp-cli >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo Installing sharp-cli globally...
    call npm install -g sharp-cli
    if %ERRORLEVEL% NEQ 0 (
        echo ERROR: Failed to install sharp-cli. Please try installing it manually:
        echo npm install -g sharp-cli
        pause
        exit /b 1
    )
)

echo Sharp CLI is installed and ready to use.
echo.

:menu
echo Choose an option:
echo 1. Optimize a single image
echo 2. Optimize all images in a directory
echo 3. Resize an image
echo 4. Exit
echo.

set /p choice="Enter your choice (1-4): "

if "%choice%"=="1" goto single_image
if "%choice%"=="2" goto directory
if "%choice%"=="3" goto resize
if "%choice%"=="4" goto end

echo Invalid choice. Please try again.
goto menu

:single_image
echo.
set /p image_path="Enter the path to the image file: "

if not exist "%image_path%" (
    echo ERROR: File does not exist.
    echo.
    goto menu
)

set output_path=%image_path:.=_optimized.%

echo Optimizing image...
call sharp --input "%image_path%" --output "%output_path%" --quality 80

echo Image optimized and saved to: %output_path%
echo.
goto menu

:directory
echo.
set /p dir_path="Enter the directory path containing images: "

if not exist "%dir_path%" (
    echo ERROR: Directory does not exist.
    echo.
    goto menu
)

echo Creating 'optimized' subdirectory...
if not exist "%dir_path%\optimized" mkdir "%dir_path%\optimized"

echo Optimizing all images in directory...
for %%f in ("%dir_path%\*.jpg", "%dir_path%\*.jpeg", "%dir_path%\*.png", "%dir_path%\*.gif") do (
    echo Processing: %%f
    call sharp --input "%%f" --output "%dir_path%\optimized\%%~nxf" --quality 80
)

echo All images have been optimized and saved to: %dir_path%\optimized\
echo.
goto menu

:resize
echo.
set /p image_path="Enter the path to the image file: "

if not exist "%image_path%" (
    echo ERROR: File does not exist.
    echo.
    goto menu
)

set /p width="Enter the desired width in pixels (or press Enter to keep aspect ratio): "
set /p height="Enter the desired height in pixels (or press Enter to keep aspect ratio): "

set output_path=%image_path:.=_resized.%

if "%width%"=="" set width=null
if "%height%"=="" set height=null

echo Resizing image...
if "%width%"=="null" (
    if "%height%"=="null" (
        echo ERROR: You must specify at least one dimension.
        goto resize
    ) else (
        call sharp --input "%image_path%" --output "%output_path%" --resize null,%height% --quality 80
    )
) else (
    if "%height%"=="null" (
        call sharp --input "%image_path%" --output "%output_path%" --resize %width%,null --quality 80
    ) else (
        call sharp --input "%image_path%" --output "%output_path%" --resize %width%,%height% --quality 80
    )
)

echo Image resized and saved to: %output_path%
echo.
goto menu

:end
echo Thank you for using the Image Optimizer!
echo.
pause 