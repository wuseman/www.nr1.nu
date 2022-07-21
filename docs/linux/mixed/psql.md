# psql

##### List all databases in Postgres and their (byte/human) sizes, ordering by byte size descending

   psql  -c "SELECT pg_database.datname, pg_database_size(pg_database.datname), pg_size_pretty(pg_database_size(pg_database.datname)) FROM pg_database ORDER BY pg_database_size DESC;" -d <ANYDBNAME>

##### List all PostgreSQL databases. Useful when doing backups

   psql  -U postgres -lAt | gawk -F\| '$1 !~ /^template/ && $1 !~ /^postgres/ && NF > 1 {print $1}'

##### lazy SQL QUERYING

   psql 

##### Get a PostgreSQL servers version

   psql  -h <SERVER NAME HERE>  -t -c 'SELECT version();' |head -1

##### Get a PostgreSQL servers version

   psql  -X -A -t -c "SELECT version();"

##### Basic search for Quassel PostgreSQL database

   psql  -U quassel quassel -c "SELECT message FROM backlog ORDER BY time DESC LIMIT 1000;" | grep my-query

##### postgresql : drop all tables from a schema

   psql  -h <pg_host> -p <pg_port> -U <pg_user> <pg_db> -t -c "select 'drop table \"' || tablename || '\" cascade;' from pg_tables where schemaname='public'" | psql -h <pg_host> -p <pg_port> -U <pg_user> <pg_db>

##### postgresql : drop all sequences from the public schema

   psql  -h <ph_host> -p <pg_port> -U <pg_user> <pg_db> -t -c "select 'drop sequence \"' || relname || '\" cascade;' from pg_class where relkind='S'" | psql -h <ph_host> -p <pg_port> -U <pg_user> <pg_db>

##### Get a PostgreSQL servers version

   psql  -h <SERVER NAME HERE> -c 'SELECT version();' | grep -v 'version\|-\|row\|^ *$' | sed 's/^\s*//'

##### List all databases in Postgres and their (byte/human) sizes, ordering by byte size descending

   psql  -c "SELECT pg_database.datname, pg_database_size(pg_database.datname), pg_size_pretty(pg_database_size(pg_database.datname)) FROM pg_database ORDER BY pg_database_size DESC;" -d <ANYDBNAME>

##### List all PostgreSQL databases. Useful when doing backups

   psql  -U postgres -lAt | gawk -F\| '$1 !~ /^template/ && $1 !~ /^postgres/ && NF > 1 {print $1}'

##### lazy SQL QUERYING

   psql 

##### Get a PostgreSQL servers version

   psql  -h <SERVER NAME HERE>  -t -c 'SELECT version();' |head -1

##### Get a PostgreSQL servers version

   psql  -X -A -t -c "SELECT version();"
