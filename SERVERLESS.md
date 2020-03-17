SERVERLESS

# core concepts
- paga apenas o que usa.
- auto-escala.
- não pode custom software, tipo apache. mas pode biblioteca, tipo axios.
- não pode demorar mais que 300 segundos.  (5 minutos)
- não é necessariamente mais barato.
- bom para programação reativa.
- parece que tudo na aws tem auto-scale. bom!!!
- cloud watch >> análise de logs.
- s3 pode ser usado pra servir sites estáticos.

# serverless.com
- o maior framework open source hoje em dia.
- serverless offline >> https://serverless.com/plugins/serverless-offline/#installation

# instalar serverless no mac
curl -o- -L https://slss.io/install | bash





# ------------------------------------------------------------------
# CLI COMMANDS

# verifica se tem os cli essenciais instalados.
sls -v
aws -v

# pra colocar as credenciais
# não esquecer de criá-las no aws primeiro :)
aws configure

# cria um zip com todos os arquivos e envia pro S3.
serverless deploy

# request na função criada.
serverless invoke --function dailyReminder --log

# deploy de apenas uma função - mais rápido
serverless deploy --function dailyReminder

# remove toda infra-estrutura publicada
serverless remove

# Invokes an AWS Lambda Function on your local machine and returns logs.
serverless invoke local -f hello -l

# Open up a separate tab in your console and stream all logs for a specific Function using this command.
serverless logs -f hello -t

# plugin para hospedar sites estáticos no aws.
serverless finch


# ------------------------------------------------------------------

# aws api gateway
- recebe as requisições http e encaminha pras funções lambda
- métricas de acesso
- autorização
- conecta fácil com vários serviços aws.




# node last stable
- 12.16 
- 12.x >> tem que ficar assim no serverless.yml


