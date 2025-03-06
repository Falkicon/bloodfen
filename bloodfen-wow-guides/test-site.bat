@echo off
setlocal enabledelayedexpansion

echo ===================================
echo Bloodfen WoW Guides - Site Tester
echo ===================================
echo.
echo This script helps test the site's performance and accessibility.
echo.

:: Check if npm is installed
where npm >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: npm is not installed. Please install Node.js from https://nodejs.org/
    echo.
    pause
    exit /b 1
)

:: Check if Hugo is running
netstat -ano | findstr :1313 >nul
if %ERRORLEVEL% NEQ 0 (
    echo WARNING: Hugo server doesn't appear to be running on port 1313.
    echo Would you like to start the Hugo server now?
    set /p start_hugo="Enter Y to start Hugo or N to continue anyway (Y/N): "
    
    if /i "!start_hugo!"=="Y" (
        start cmd /c "hugo server -D"
        echo Hugo server starting...
        echo Waiting 5 seconds for server to start...
        timeout /t 5 >nul
    )
)

:menu
echo.
echo Choose a test to run:
echo 1. Lighthouse Performance Test (requires Chrome)
echo 2. HTML Validation
echo 3. CSS Validation
echo 4. Accessibility Check
echo 5. Link Checker
echo 6. Exit
echo.

set /p choice="Enter your choice (1-6): "

if "%choice%"=="1" goto lighthouse
if "%choice%"=="2" goto html_validation
if "%choice%"=="3" goto css_validation
if "%choice%"=="4" goto accessibility
if "%choice%"=="5" goto link_checker
if "%choice%"=="6" goto end

echo Invalid choice. Please try again.
goto menu

:lighthouse
echo.
echo Running Lighthouse Performance Test...

:: Check if lighthouse is installed
call npm list -g lighthouse >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo Installing Lighthouse globally...
    call npm install -g lighthouse
    if %ERRORLEVEL% NEQ 0 (
        echo ERROR: Failed to install Lighthouse. Please try installing it manually:
        echo npm install -g lighthouse
        pause
        goto menu
    )
)

:: Create reports directory if it doesn't exist
if not exist "reports" mkdir reports

:: Run Lighthouse
call lighthouse http://localhost:1313 --output html --output-path ./reports/lighthouse-report.html --view

echo Lighthouse test completed. Report saved to ./reports/lighthouse-report.html
echo.
goto menu

:html_validation
echo.
echo Running HTML Validation...

:: Check if html-validator-cli is installed
call npm list -g html-validator-cli >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo Installing html-validator-cli globally...
    call npm install -g html-validator-cli
    if %ERRORLEVEL% NEQ 0 (
        echo ERROR: Failed to install html-validator-cli. Please try installing it manually:
        echo npm install -g html-validator-cli
        pause
        goto menu
    )
)

:: Create reports directory if it doesn't exist
if not exist "reports" mkdir reports

:: Run HTML validation
call html-validator --url http://localhost:1313 --format json > ./reports/html-validation.json

echo HTML validation completed. Report saved to ./reports/html-validation.json
echo.
goto menu

:css_validation
echo.
echo Running CSS Validation...
echo.
echo Opening W3C CSS Validator in your browser...
start "" "https://jigsaw.w3.org/css-validator/#validate_by_uri+with_options"
echo Please enter http://localhost:1313 in the Address field and click Check.
echo.
goto menu

:accessibility
echo.
echo Running Accessibility Check...

:: Check if pa11y is installed
call npm list -g pa11y >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo Installing pa11y globally...
    call npm install -g pa11y
    if %ERRORLEVEL% NEQ 0 (
        echo ERROR: Failed to install pa11y. Please try installing it manually:
        echo npm install -g pa11y
        pause
        goto menu
    )
)

:: Create reports directory if it doesn't exist
if not exist "reports" mkdir reports

:: Run pa11y
call pa11y http://localhost:1313 > ./reports/accessibility-report.txt

echo Accessibility check completed. Report saved to ./reports/accessibility-report.txt
echo.
goto menu

:link_checker
echo.
echo Running Link Checker...

:: Check if broken-link-checker is installed
call npm list -g broken-link-checker >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo Installing broken-link-checker globally...
    call npm install -g broken-link-checker
    if %ERRORLEVEL% NEQ 0 (
        echo ERROR: Failed to install broken-link-checker. Please try installing it manually:
        echo npm install -g broken-link-checker
        pause
        goto menu
    )
)

:: Create reports directory if it doesn't exist
if not exist "reports" mkdir reports

:: Run link checker
call blc http://localhost:1313 -ro > ./reports/broken-links-report.txt

echo Link checker completed. Report saved to ./reports/broken-links-report.txt
echo.
goto menu

:end
echo Thank you for using the Site Tester!
echo.
pause 