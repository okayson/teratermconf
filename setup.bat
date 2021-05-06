@echo off

set TERATERM_DIR="C:\Program Files (x86)\teraterm"
set THIS_FILE=%0
cd %~dp0
set THIS_DIR=%cd%

if not exist %TERATERM_DIR% (
	echo %TERATERM_DIR% does not exist.
	echo Try to modify teraterm directory in "%THIS_FILE%".
	exit /b 1
)

if exist %TERATERM_DIR%\TERATERM.INI (
	echo TERATERM.INI already exists in %TERATERM_DIR%.
	echo Please remove it.
	exit /b 1
)

mklink %TERATERM_DIR%\TERATERM.INI "%THIS_DIR%\TERATERM.INI"

exit /b 0

