@echo off
color 1a

echo Press enter to start!
pause

set CURRENT_DIR=%~dp0
echo %CURRENT_DIR%

rem %CURRENT_DIR%/bin/mysqld --skip-grant-tables

%CURRENT_DIR%/bin/mysqld --defaults-file="%CURRENT_DIR%\my.ini" --console

rem >NUL 2>&1 REG.exe query "HKU\S-1-5-19" || (
rem     ECHO SET UAC = CreateObject^("Shell.Application"^) > "%TEMP%\Getadmin.vbs"
rem     ECHO UAC.ShellExecute "%~f0", "%1", "", "runas", 1 >> "%TEMP%\Getadmin.vbs"
rem     "%TEMP%\Getadmin.vbs"
rem     DEL /f /q "%TEMP%\Getadmin.vbs" 2>NUL
rem     Exit /b
rem )

rem net start mysql

pause

exit 0