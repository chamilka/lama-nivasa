@echo off
for /f "tokens=1" %%i in ('date /t') do set DATE_DOW=%%i
for /f "tokens=2" %%i in ('date /t') do set DATE_DAY=%%i
for /f %%i in ('echo %date_day:/=-%') do set DATE_DAY=%%i
for /f %%i in ('time /t') do set DATE_TIME=%%i
for /f %%i in ('echo %date_time::=-%') do set DATE_TIME=%%i
"mysqldump" -u root -proot --database child_db >f:\mysqlbackup\%DATE_DAY%_%DATE_TIME%_child_db.sql
wzzip f:\mysqlbackup\%DATE_DAY%_%DATE_TIME%_child_db.zip f:\mysqlbackup\%DATE_DAY%_%DATE_TIME%_child_db.sql -mex