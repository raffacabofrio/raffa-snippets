# .NET - CODE COVERAGE TUTORIAL

```bash 
dotnet test --collect:"XPlat Code Coverage"

dotnet tool install  --global dotnet-reportgenerator-globaltool --version 4.5.8

reportgenerator -reports:C:\REPOS\TestPipelinePoc\TestProject1\TestResults\**\coverage.cobertura.xml -targetdir:C:\REPOS\TestPipelinePoc\converlet\reports -reporttypes:Html
```


# GITHUB
- DataCollectors: https://github.com/coverlet-coverage/coverlet
- Geradores de relatório: https://github.com/danielpalme/ReportGenerator

# sobre o coverlet
- veio junto do projeto de teste padrão 
- N.B. You MUST add package only to test projects
- o mais popular no mundo .net

