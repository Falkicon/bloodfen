@echo off
setlocal enabledelayedexpansion

echo ===================================
echo Bloodfen WoW Guides - Analytics Setup
echo ===================================
echo.
echo This script helps set up analytics for your site.
echo.

:menu
echo Choose an analytics provider:
echo 1. Google Analytics
echo 2. Plausible Analytics (Privacy-focused)
echo 3. GoatCounter (Simple, privacy-friendly)
echo 4. Exit
echo.

set /p choice="Enter your choice (1-4): "

if "%choice%"=="1" goto google_analytics
if "%choice%"=="2" goto plausible
if "%choice%"=="3" goto goatcounter
if "%choice%"=="4" goto end

echo Invalid choice. Please try again.
goto menu

:google_analytics
echo.
echo Setting up Google Analytics...
echo.
set /p ga_id="Enter your Google Analytics Measurement ID (G-XXXXXXXXXX): "

if "%ga_id%"=="" (
    echo Error: Measurement ID cannot be empty.
    goto google_analytics
)

echo Creating partial for Google Analytics...

if not exist "layouts\partials" (
    mkdir "layouts\partials"
)

(
echo <!-- Google Analytics -->
echo ^<script async src="https://www.googletagmanager.com/gtag/js?id=%ga_id%"^>^</script^>
echo ^<script^>
echo   window.dataLayer = window.dataLayer ^|^| [];
echo   function gtag(){dataLayer.push(arguments);}
echo   gtag('js', new Date^(^));
echo   gtag('config', '%ga_id%');
echo ^</script^>
) > "layouts\partials\analytics.html"

echo Google Analytics has been set up with ID: %ga_id%
echo The tracking code has been added to layouts\partials\analytics.html
echo.
goto update_config

:plausible
echo.
echo Setting up Plausible Analytics...
echo.
set /p plausible_domain="Enter your domain name (e.g., example.com): "

if "%plausible_domain%"=="" (
    echo Error: Domain name cannot be empty.
    goto plausible
)

echo Creating partial for Plausible Analytics...

if not exist "layouts\partials" (
    mkdir "layouts\partials"
)

(
echo <!-- Plausible Analytics -->
echo ^<script defer data-domain="%plausible_domain%" src="https://plausible.io/js/plausible.js"^>^</script^>
) > "layouts\partials\analytics.html"

echo Plausible Analytics has been set up for domain: %plausible_domain%
echo The tracking code has been added to layouts\partials\analytics.html
echo.
goto update_config

:goatcounter
echo.
echo Setting up GoatCounter...
echo.
set /p goatcounter_code="Enter your GoatCounter code (e.g., yoursite): "

if "%goatcounter_code%"=="" (
    echo Error: GoatCounter code cannot be empty.
    goto goatcounter
)

echo Creating partial for GoatCounter...

if not exist "layouts\partials" (
    mkdir "layouts\partials"
)

(
echo <!-- GoatCounter -->
echo ^<script data-goatcounter="https://%goatcounter_code%.goatcounter.com/count" async src="//gc.zgo.at/count.js"^>^</script^>
) > "layouts\partials\analytics.html"

echo GoatCounter has been set up with code: %goatcounter_code%
echo The tracking code has been added to layouts\partials\analytics.html
echo.
goto update_config

:update_config
echo Checking if analytics partial is included in the theme...

if not exist "layouts\partials\docs\html-head.html" (
    echo Creating custom html-head.html partial...
    
    if not exist "layouts\partials\docs" (
        mkdir "layouts\partials\docs"
    )
    
    (
    echo {{ partial "docs/shared" . }}
    echo ^<title^>{{ partial "docs/title" . }} | {{ .Site.Title }}^</title^>
    echo ^<meta name="description" content="{{ partial "docs/description" . }}"^>
    echo {{ partial "analytics.html" . }}
    echo {{ partial "docs/html-head" . }}
    ) > "layouts\partials\docs\html-head.html"
    
    echo Created custom html-head.html with analytics included.
) else (
    echo Checking if analytics partial is already included...
    findstr /C:"{{ partial \"analytics.html\" . }}" "layouts\partials\docs\html-head.html" >nul
    
    if %ERRORLEVEL% NEQ 0 (
        echo Adding analytics partial to html-head.html...
        powershell -Command "(Get-Content 'layouts\partials\docs\html-head.html') -replace '(\<title\>)', '{{ partial \"analytics.html\" . }}\n\$1' | Set-Content 'layouts\partials\docs\html-head.html'"
        echo Added analytics partial to html-head.html.
    ) else (
        echo Analytics partial is already included in html-head.html.
    )
)

echo.
echo Analytics setup is complete!
echo.
echo Next steps:
echo 1. Restart the Hugo server if it's running
echo 2. Visit your site to verify that analytics is working
echo 3. Check your analytics dashboard after some time to see the data
echo.
goto menu

:end
echo Thank you for using the Analytics Setup script!
echo.
pause 