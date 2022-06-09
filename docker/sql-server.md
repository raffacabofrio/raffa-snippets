```bash
docker run --name my-sql-server -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=LpVgt4fLMZbg7kcp" -p 1433:1433 -d mcr.microsoft.com/mssql/server:2022-latest 

# exemplo string conexão: "Server=localhost;Database=DEVinSales;User=sa;Password=LpVgt4fLMZbg7kcp"
```
