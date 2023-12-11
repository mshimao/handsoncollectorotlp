sleep 90s
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P 'Aglsolutions!2023' -d master -i create-database.sql
