@ECHO OFF
ECHO CD path
for /f "tokens=1-4 delims=/ " %%i in ("%date%") do (
     set dow=%%i
     set month=%%j
     set day=%%k
     set year=%%l
)
set datestr=%day%_%month%_%year%
D:
ECHO CD to mysql
CD xampp\mysql\bin
ECHO Connect database
mysqldump --host=[db_ip_public_server] --user=[db_user] --password=[db_password] [db_schema_dbackup] > [local_absolute_path]\%datestr%_db_backup.sql
ECHO BACKUP DONE
PAUSE
