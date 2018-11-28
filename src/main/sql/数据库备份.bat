rem auther:www.dawn7.cc
rem date:20171102
rem ******MySQL backup start---按需修改********
@echo off
forfiles /p "D:\db_backup" /m backup_*.sql -d -30 /c "cmd /c del /f @path"
set "Ymd=%date:~0,4%%date:~5,2%%date:~8,2%0%time:~1,1%%time:~3,2%%time:~6,2%"
D:\mysql\bin\mysqldump --opt --single-transaction=TRUE   --user=root  --password=123 --host=127.0.0.1 --protocol=tcp --port=3306 --default-character-set=utf8 --single-transaction=TRUE --routines --events "contracts" > D:\db_backup\backup_%Ymd%.sql
@echo on
rem ******MySQL backup end********
