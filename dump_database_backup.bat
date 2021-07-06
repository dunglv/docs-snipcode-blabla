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
mysqldump --host=139.162.1.218 --user=dev --password=Toil@toi123 rikkei-test > D:\project\rikkeisoft.com\19094dn1_renew_rikkeisite_docs\DB_BACKUP\%datestr%_rikkeisoft_backup.sql
ECHO BACKUP DONE
PAUSE