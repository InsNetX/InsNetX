@echo off
setlocal


set ARCHIVE_PATH=C:\Path\to\your\archive.zip
set TARGET_PATH=C:\path\to\target\directory


if not exist "%TARGET_PATH%" (
    echo Error 0x04a. Please install or reinstall your Ampps to this path: "C:/Program Files/".
)

powershell -Command "Expand-Archive -Path '%ARCHIVE_PATH%' -DestinationPath '%TARGET_PATH%' -Force"

if %errorlevel% neq 0 (
    echo error 0x07c. Please try again or later.
    exit /b %errorlevel%
) else (
    echo successfully completed 1
)

endlocal
@echo on