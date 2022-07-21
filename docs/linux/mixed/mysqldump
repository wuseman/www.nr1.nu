# mysqldump

##### Dump a MySQL-Database to another Database

   mysqldump  force -uUSER -pPASS PRODUCTION_DB | mysql -uUSER -pPASS COPY_DB

##### Convert mysql database from latin1 to utf8

   mysqldump  add-drop-table -uroot -p "DB_name"  | replace CHARSET=latin1 CHARSET=utf8 | iconv -f latin1 -t utf8 | mysql -uroot -p "DB_name"

##### Copy a MySQL Database to a new Server via SSH with one command

   mysqldump  add-drop-table extended-insert force log-error=error.log -uUSER -pPASS OLD_DB_NAME | ssh -C user@newhost "mysql -uUSER -pPASS NEW_DB_NAME"

##### backup local MySQL database into a folder and removes older then 5 days backups

   mysqldump  -uUSERNAME -pPASSWORD database | gzip > /path/to/db/files/db-backup-`date +%Y-%m-%d`.sql.gz ;find /path/to/db/files/* -mtime +5 -exec rm {} \;

##### Create MySQL-Dump, copy db to other Server and upload the db.

   mysqldump  -uUserName -pPassword tudb | ssh root@rootsvr.com "mysql -uUserName -pPassword -h mysql.rootsvr.com YourDBName"

##### dump a single table of a database to file

   mysqldump  -u UNAME -p DBNAME TABLENAME> FILENAME

##### Drop all tables from a database, without deleting it

   mysqldump  -u $USER password=$PASSWORD  add-drop-table no-data "$DATABASE" | grep ^DROP | mysql -u $USER password=$PASSWORD "$DATABASE"

##### Create a backup copy of a MySQL database on the same host

   mysqldump  OLD_DB | cat <(echo "CREATE DATABASE NEW_DB; USE NEW_DB;") - | mysql

##### Dump and bz2compress a mysql db

   mysqldump  -u user -h host -ppwd -B dbname | bzip2 -zc9 > dbname.sql.bz2

##### Dump mySQL db from Remote Database to Local Database

   mysqldump  host=[remote host] user=[remote user] password=[remote password] -C db_name | mysql host=localhost user=[local user] password=[local password] db_name

##### Show database sql schema from Remote or Local database

   mysqldump  -u<dbusername>  -p<dbpassword> <databasename>  no-data tables

##### get a mysqldump with a timestamp in the filename and gzip it all in one go

   mysqldump  [options] |gzip ->mysqldump-$(date +%Y-%m-%d-%H.%M.%S).gz

##### Export a subset of a database

   mysqldump  where="true LIMIT X" databasename > output.sql

##### How to extract 5000 records from each table in MySQL

   mysqldump  opt where="true LIMIT 5000" dbinproduzione > miodbditest.sql

##### Remote mysql dump all databases with ssh

   mysqldump  -u user -p all-databases | ssh user@host dd of=/opt/all-databases.dump

##### dump the whole database

   mysqldump  -u UNAME -p DBNAME > FILENAME

##### dump the whole database

   mysqldump  lock-tables opt DBNAME -u UNAME password=PASS | gzip > OUTFILE

##### Export mysql database to another database without having to save the output first

   mysqldump  -u<username> -p<password> -h<source database host> databasename table1 table2 table_n | mysql -u<user> -p<password> -h<destination database host> databasename

##### do replication and sql backup

   mysqldump  -pyourpass single-transaction  master-data=2 -q  flush-logs databases db_for_doslave |tee /home/db_bak.sql |ssh mysqladmin@slave.db.com "mysql"

##### Back up only databases matching PATTERN

   mysqldump  -eBv `echo "show databases like 'MYSQL_PATTERN'"|mysql -N`> OUTPUTFILE

##### mysql: Convert MyISAM tables to InnoDB via mysqldump

   mysqldump  | sed -e 's/^) ENGINE=MyISAM/) ENGINE=InnoDB/'

##### MySQL: Slice out a specific table from a specific database (assumes existence of the USE statement) from output of mysqldump

   mysqldump  | sed -n "/^USE \`employees\`/,/^USE \`/p" | sed -n "/^ Table structure for table \`departments\`/,/^ Table structure for table/p"

##### Dump MySql to File

   mysqldump  opt -uUSERNAME -pPASSWORD -h mysql.host.com database > ~/filename.sql

##### backup with mysqldump a really big mysql database to a remote machine over ssh

   mysqldump  -q skip-opt force log-error=dbname_error.log -uroot -pmysqlpassword dbname | ssh -C user@sshserver 'cd /path/to/backup/dir; cat > dbname.sql'

##### Backup a whole database to a file

   mysqldump  -p MYDB > MYDB.sql

##### Convert mysql database from latin1 to utf8

   mysqldump  add-drop-table -uroot -p "DB_name"  | replace CHARSET=latin1 CHARSET=utf8 | iconv -f latin1 -t utf8 | mysql -uroot -p "DB_name"

##### Copy a MySQL Database to a new Server via SSH with one command

   mysqldump  add-drop-table extended-insert force log-error=error.log -uUSER -pPASS OLD_DB_NAME | ssh -C user@newhost "mysql -uUSER -pPASS NEW_DB_NAME"

##### backup local MySQL database into a folder and removes older then 5 days backups

   mysqldump  -uUSERNAME -pPASSWORD database | gzip > /path/to/db/files/db-backup-`date +%Y-%m-%d`.sql.gz ;find /path/to/db/files/* -mtime +5 -exec rm {} \;

##### Create MySQL-Dump, copy db to other Server and upload the db.

   mysqldump  -uUserName -pPassword tudb | ssh root@rootsvr.com "mysql -uUserName -pPassword -h mysql.rootsvr.com YourDBName"

##### dump a single table of a database to file

   mysqldump  -u UNAME -p DBNAME TABLENAME> FILENAME

##### Drop all tables from a database, without deleting it

   mysqldump  -u $USER password=$PASSWORD  add-drop-table no-data "$DATABASE" | grep ^DROP | mysql -u $USER password=$PASSWORD "$DATABASE"

##### Create a backup copy of a MySQL database on the same host

   mysqldump  OLD_DB | cat <(echo "CREATE DATABASE NEW_DB; USE NEW_DB;") - | mysql

##### Dump and bz2compress a mysql db

   mysqldump  -u user -h host -ppwd -B dbname | bzip2 -zc9 > dbname.sql.bz2

##### Dump mySQL db from Remote Database to Local Database

   mysqldump  host=[remote host] user=[remote user] password=[remote password] -C db_name | mysql host=localhost user=[local user] password=[local password] db_name

##### Show database sql schema from Remote or Local database

   mysqldump  -u<dbusername>  -p<dbpassword> <databasename>  no-data tables

##### get a mysqldump with a timestamp in the filename and gzip it all in one go

   mysqldump  [options] |gzip ->mysqldump-$(date +%Y-%m-%d-%H.%M.%S).gz

##### Export a subset of a database

   mysqldump  where="true LIMIT X" databasename > output.sql

##### How to extract 5000 records from each table in MySQL

   mysqldump  opt where="true LIMIT 5000" dbinproduzione > miodbditest.sql

##### Remote mysql dump all databases with ssh

   mysqldump  -u user -p all-databases | ssh user@host dd of=/opt/all-databases.dump

##### dump the whole database

   mysqldump  -u UNAME -p DBNAME > FILENAME

##### dump the whole database

   mysqldump  lock-tables opt DBNAME -u UNAME password=PASS | gzip > OUTFILE

##### Export mysql database to another database without having to save the output first

   mysqldump  -u<username> -p<password> -h<source database host> databasename table1 table2 table_n | mysql -u<user> -p<password> -h<destination database host> databasename

##### do replication and sql backup

   mysqldump  -pyourpass single-transaction  master-data=2 -q  flush-logs databases db_for_doslave |tee /home/db_bak.sql |ssh mysqladmin@slave.db.com "mysql"

##### Back up only databases matching PATTERN

   mysqldump  -eBv `echo "show databases like 'MYSQL_PATTERN'"|mysql -N`> OUTPUTFILE

##### mysql: Convert MyISAM tables to InnoDB via mysqldump

   mysqldump  | sed -e 's/^) ENGINE=MyISAM/) ENGINE=InnoDB/'

##### MySQL: Slice out a specific table from a specific database (assumes existence of the USE statement) from output of mysqldump

   mysqldump  | sed -n "/^USE \`employees\`/,/^USE \`/p" | sed -n "/^ Table structure for table \`departments\`/,/^ Table structure for table/p"

##### Dump MySql to File

   mysqldump  opt -uUSERNAME -pPASSWORD -h mysql.host.com database > ~/filename.sql

##### backup with mysqldump a really big mysql database to a remote machine over ssh

   mysqldump  -q skip-opt force log-error=dbname_error.log -uroot -pmysqlpassword dbname | ssh -C user@sshserver 'cd /path/to/backup/dir; cat > dbname.sql'
