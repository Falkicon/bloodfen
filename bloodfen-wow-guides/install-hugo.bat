@echo off
echo ===================================
echo Bloodfen WoW Guides - Install Hugo
echo ===================================
echo.
echo This script will help you install Hugo on your Windows system.
echo.

set /p "install_choice=Do you want to install Hugo using Chocolatey (C) or download the binary (D)? [C/D]: "

if /i "%install_choice%"=="C" (
    echo.
    echo Installing Hugo using Chocolatey...
    echo.
    echo Checking if Chocolatey is installed...
    
    where choco >nul 2>nul
    if %errorlevel% neq 0 (
        echo Chocolatey is not installed. Installing Chocolatey...
        echo.
        echo Please run this script as Administrator to install Chocolatey.
        echo.
        echo To install Chocolatey manually, open an Administrator PowerShell and run:
        echo Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient^).DownloadString('https://community.chocolatey.org/install.ps1'^)^)
        echo.
        pause
        exit /b
    )
    
    echo Chocolatey is installed. Installing Hugo...
    choco install hugo -y
    
    echo.
    echo Hugo has been installed using Chocolatey.
) else if /i "%install_choice%"=="D" (
    echo.
    echo We'll download the Hugo binary from GitHub.
    echo.
    
    echo Opening the Hugo releases page in your browser...
    start "" "https://github.com/gohugoio/hugo/releases"
    
    echo.
    echo Please download the appropriate Windows version (e.g., hugo_extended_0.123.0_windows-amd64.zip)
    echo Extract the zip file and add the folder containing hugo.exe to your PATH.
    echo.
    echo Instructions:
    echo 1. Download the latest hugo_extended_*_windows-amd64.zip
    echo 2. Extract the zip file to a folder (e.g., C:\Hugo)
    echo 3. Add that folder to your PATH environment variable
    echo 4. Open a new command prompt and type 'hugo version' to verify installation
) else (
    echo Invalid choice. Please run the script again and enter C or D.
    pause
    exit /b
)

echo.
echo To verify Hugo installation, open a new command prompt and type:
echo hugo version
echo.
echo After installation, you can run the site using:
echo run-hugo.bat
echo.
pause 