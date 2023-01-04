# PROBLEMA
No MAC o dotnet gera vários processos orfãos que ficam consumindo recursos, e bloqueiam a porta da apicação.



----------------------------
# solução rápida

listar processos que bloqueiam a porta 5000
lsof -i :5000

matar esses safados
kill -9 95129




----------------------------
# caso o mac fique lento

mata a maioria deles
killall dotnet

matar o vs code e reabrir resolve o problema dos plugins frágeis.
- .net test explorer
- c# extension
- 


----------------------------
# util


```bash
# restaurar dependências
dotnet restore ./ShareBook/ShareBook.sln

# build
dotnet build ./ShareBook/ShareBook.Api/ShareBook.Api.csproj --verbosity minimal

# rodar o app com hot reload
dotnet watch --project ./ShareBook/ShareBook.Api/ShareBook.Api.csproj

# rodar os testes
dotnet test ./ShareBook/ShareBook.Test.Unit/ShareBook.Test.Unit.csproj

# clean
dotnet clean ./ShareBook/ShareBook.Api/ShareBook.Api.csproj --verbosity quiet

# lista os sdks instalados
dotnet --list-sdks
```

