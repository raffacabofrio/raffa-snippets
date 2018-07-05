## List Docker CLI commands
docker
docker container --help

## Display Docker version and info
docker --version
docker version
docker info

# mostra os containers
docker ps -a

# inicia o container 
docker start dashboard

# abre o shell do container
docker exec -it dashboard bash


# ----------------------------------------------
# DASHBOARD

# 1 - cria um container
docker run --dashboard -it ubuntu

# 2 - atualiza o gerenciador de pacotes
apt-get update
apt-get install curl

# 3 - roda o script de instalação do dashboard
curl -L https://raw.githubusercontent.com/deividsanches/deploy-shiny-server-dashboard/master/install-shiny.sh -o ~/configure-dashboard.sh && chmod +x ~/configure-dashboard.sh && ~/configure-dashboard.sh





