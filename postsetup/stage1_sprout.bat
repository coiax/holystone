@echo off & cls & mode 90,40 & title %~n0

echo This batch file installs Python, and then invokes the TRUE post-setup build script.
echo Running the Python installer...
:: TODO work out how to pick the correct python installer based on architecture.
call C:\Holystone\installers\python-3.7.0-amd64.exe /passive InstallAllUsers=1 PrependPath=1
echo Python installer finished.
echo Running Stage 2.
call "C:\Program Files\Python37\python" "C:\Holystone\postsetup\stage2_seedling.py"
