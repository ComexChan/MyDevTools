@echo off
color 1a

set CURRENT_DIR=%~dp0
echo %CURRENT_DIR%

echo ===============Begin to shutdown mysql
%CURRENT_DIR%/bin/mysqladmin -u root -pchengzhi shutdown

echo ===============Begin to delete data dir
rd /q/s %CURRENT_DIR%\data

echo ===============Begin to init mysql server
%CURRENT_DIR%/bin/mysqld --defaults-file=%CURRENT_DIR%\my.ini --user=mysql --initialize-insecure --console

echo ===============Begin to start mysql server
%CURRENT_DIR%/bin/mysqld --defaults-file=%CURRENT_DIR%\my.ini --console

exit 0