@echo off
color 1a

set CURRENT_DIR=%~dp0
echo %CURRENT_DIR%

echo ===============Begin to init password to comex
%CURRENT_DIR%/bin/mysql -u root -p"" -e"set password for root@localhost = password('comex'); "

pause