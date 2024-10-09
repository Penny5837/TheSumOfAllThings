@echo off
title Penny's Updater Script
rem This script will automatically update all the applications
Echo This script will automatically update all the applications
pause
Echo Update process opening and starting
rem this next command tries to get elevated access
pushd "%~dp0"
rem if it doesnt work, you have to press yes everytime an app updates
echo The apps may require you to press Yes as admin to update
rem this next command starts powershell and uses the base windows system to update all the apps
start powershell winget update -h --all  --accept-package-agreements --accept-source-agreements
Echo Update process open and running
Echo This window will now be able to be closed
pause