@echo off
:: ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: ::  'OOBE.cmd' -> 'Windows 10' - 'Windows 8.x' - 'Windows 7' - 'Windows Vista' - 'Servers'  ::
:: ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: 
:: Note: All user options are now controlled from the MRPConfig.ini file.

:MRPINSTALL
:: Do NOT Remove/Edit the lines below!
 IF EXIST "%Windir%\Setup\Scripts\DeCompile.exe" (
 CALL "%Windir%\Setup\Scripts\DeCompile.exe"
 DEL /F /Q "%Windir%\Setup\Scripts\DeCompile.exe" >nul
 )

IF EXIST "%Windir%\Setup\Scripts\Install.cmd" CALL "%Windir%\Setup\Scripts\Install.cmd"
IF EXIST "%Windir%\Setup\Scripts\MRPInstall.cmd" CALL "%Windir%\Setup\Scripts\MRPInstall.cmd"

:: ** Note: WinTel.cmd is now CALL'ed from within MRP, if the file is present in the Scripts folder. **

:: You can add your own commands after here.

:: DO NOT DELETE BELOW THIS LINE
:CLOSE
DEL /F /Q "%0%" >nul
