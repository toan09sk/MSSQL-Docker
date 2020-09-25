### connect MSSQL
```bash
mkdir mssql
cd mssql
code .
docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=Pa$$w0rd2019' -e 'MSSQL_PID=Express' -p 1433:1433 -d mcr.microsoft.com/mssql/server:2017-latest-ubuntu
localhost,1433
docker exec -it 0ac7fcd0bf0d bash /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P 'Pa$$w0rd2019'
``` 

### Docker volume
```bash
docker run --name sqldev --rm -d -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=Pa$$w0rd2019' -e 'MSSQL_PID=Express' -p 1533:1433 mcr.microsoft.com/mssql/server:2017-latest-ubuntu
.,1533
docker cp "C:\..." sqldev:/
docker cp "C:\..." sqldev:/var/opt/mssql/data
docker run --name sqldev -d -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=Pa$$w0rd2019' -e 'MSSQL_PID=Express' -p 1533:1433 -v "C:\..\:/var/opt/mssql/data/" mcr.microsoft.com/mssql/server:2017-latest-ubuntu
docker logs --tail 100 --follow sqldev

```

### database cmd
```bash
sp_databases
select @@version go
```
### dotnet
```dotnet
dotnet
dotnet -?
dotnet new --help
dotnew new list
dotnet run --help
dotnet new console -lange F# --name fsharp-console
dotnet run -p fsharp-console
dotnet dotnetcore.dll
dotnet publish myApp.csproj
dotnet publish -c Release -o D:\WindowsService -r win10-x64 
```
- publish : Đóng gói toàn bộ ứng dụng ra một thư mục (thành file exe).
- pack : Đóng gói code vào NuGet package.
- restore : Tải về các thành phần phụ thuộc trong project.