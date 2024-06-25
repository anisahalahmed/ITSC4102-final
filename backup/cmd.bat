@echo off
REM A simple backup script using cmd.exe

set SOURCE=.\documents
set DEST=.\backup
set DATE=%date:~10,4%-%date:~4,2%-%date:~7,2%

REM Create backup directory if it doesn't exist
if not exist "%DEST%\%DATE%" mkdir "%DEST%\%DATE%"

REM Copy files
xcopy /E /I "%SOURCE%" "%DEST%\%DATE%"

echo Backup completed on %DATE%
