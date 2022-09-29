# GERAR RELATÓRIO DE CODE COVERAGE LOCAL

```bash 
dotnet test --collect:"XPlat Code Coverage"

dotnet tool install  --global dotnet-reportgenerator-globaltool --version 4.5.8

reportgenerator -reports:C:\REPOS\TestPipelinePoc\TestProject1\TestResults\**\coverage.cobertura.xml -targetdir:C:\REPOS\TestPipelinePoc\converlet\reports -reporttypes:Html
```

-----------------------------------------------------------------
# GITHUB
- Coverlet DataCollector: https://github.com/coverlet-coverage/coverlet
- AltCover DataCollector: https://github.com/SteveGilham/altcover/wiki/QuickStart-Guide
- Geradores de relatório: https://github.com/danielpalme/ReportGenerator

# sobre o coverlet
- vem junto do projeto de teste padrão 
- o mais popular no mundo .net
- problemático pra funcionar no ubuntu 
- abandonei o coverlet e passei a usar o AltCover. Que atendeu bem.

-----------------------------------------------------------------
# quebra de linha no bash
- ubunbtu: \
- power shell: `
- win cmd: ^



-----------------------------------------------------------------
-----------------------------------------------------------------
# INTEGRANDO COM O SONAR - TESTE NO UBUNTU WSL

-----------------------------------------------------------------------------
# PRÉ-REQUISITOS

```bash 
# obter a versão do ubuntu ( 20.04 )
lsb_release -a

# add o repositório da microsoft ( é de lá que vem o dotnet )
https://learn.microsoft.com/pt-br/windows-server/administration/linux-package-repository-for-microsoft-software

# instala o .net 6 sdk
sudo apt-get install -y dotnet-sdk-6.0

# verifica se o .net realmente foi instalado
dotnet --version

# instala o java ( o sonar precisa dessa porra )
sudo apt install default-jre

# instalar o altCover no projeto de teste. 
https://github.com/SteveGilham/altcover/wiki/QuickStart-Guide

# instala o sonar-scaner
dotnet tool install --global dotnet-sonarscanner
```

-----------------------------------------------------------------------------
# HORA DA VERDADE

```bash 
# vai pra pasta do projeto poc
cd /mnt/c/REPOS/TestPipelinePoc

export SONAR_KEY="" 
export SONAR_LOGIN=""
export SONAR_OPEN_COVER_FILE=""
export SONAR_HOST=""

dotnet-sonarscanner begin /k:"$SONAR_KEY" \
    /d:sonar.login="$SONAR_LOGIN" \
    /d:sonar.cs.opencover.reportsPaths="$SONAR_OPEN_COVER_FILE" \
	/d:sonar.host.url="$SONAR_HOST"

dotnet build --no-incremental

# gera o arquivo de cobertura nos formatos "Cobertura" e "opencover". Pra atender o azure e o sonar.
dotnet test /p:AltCover=true /p:AltCoverCobertura=coverage.cobertura.xml


dotnet sonarscanner end /d:sonar.login="sqp_ada1cfb4195f7c13b15085aa21cd7faed729e71f"
```

** DEU CERTO!! **








