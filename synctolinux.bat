@echo off

echo !!!this script removes previous files in target device before copying
set /p answer="are you sure? (y/n): "

if /I "%answer%" NEQ "y" (
    exit /b
)

echo removing previous files in target device...
ssh shinji@wode "rm -rf $HOME/pics/_synced"
echo copying files to target device...
scp -r %USERPROFILE%\Pictures\_synced shinji@wode:/home/shinji/pics/

pause
