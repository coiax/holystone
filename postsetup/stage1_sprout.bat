@echo off & cls & mode 90,40 & title %~n0
:: Make a visible terminal.

:: This file should be called by SetupComplete.cmd, which is created by asking
:: NTLite to add this script to Automate->Post Setup

:: This file is run immediately after windows setup completes
:: Since windows batch is... not particularly fun to write in
:: We want to immediately transition into a python script.

:: So first, let's install python.
echo This batch file installs Python, and then invokes the TRUE post-setup build script.
echo Running the Python installer...
:: TODO work out how to pick the correct python installer based on architecture.
call C:\Holystone\installers\python-3.7.0-amd64.exe /passive InstallAllUsers=1 PrependPath=1
echo Python installer finished.
echo Running Stage 2.
call "C:\Program Files\Python37\python" "C:\Holystone\postsetup\stage2_seedling.py"