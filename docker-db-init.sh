#wait for the SQL Server to come up
# sleep 25s

# echo "running set up script"
#run the setup script to create the DB and the schema in the DB
# /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P @Batoan01326754@ -d master -i db-init.sql

#!/bin/bash
set -e

wait_time=25s 
password=@Batoan01326754@

# wait for SQL Server to come up
echo importing data will start in $wait_time...
sleep $wait_time

echo running db-init...
# (/opt/mssql/bin/sqlservr --accept-eula & ) | grep -q "Service Broker manager has started" && /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P $password -i db-init.sql

#run the setup script to create the DB and the schema in the DB
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P $password -d master -i db-init.sql
exec "$@"
