```bash
mkdir mssql
cd mssql
code .
docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=Pa$$w0rd2019' -e 'MSSQL_PID=Express' -p 1433:1433 -d mcr.microsoft.com/mssql/server:2017-latest-ubuntu

localhost,1433

docker exec -it 0ac7fcd0bf0d bash /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P 'Pa$$w0rd2019'
``` 