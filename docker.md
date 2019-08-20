# ----------------------------------------------
# BASICS

## List Docker CLI commands
docker container --help

## Display Docker version and info
docker version
docker info



# ----------------------------------------------
# IMAGES ( similar a classes )

# lista imagens
docker images

# baixa uma imagem
docker pull ubuntu

# cria um nova imagem
# ( antes gerar arquivo Dockerfile na mesma pasta que vai rodar )
docker build -t my_app .


# ----------------------------------------------
# CONTAINERS ( similar a objetos )

# mostra os containers ( apenas rodando )
docker ps

# mostra os containers ( todos )
docker ps -a

# cria um novo container e executa o bash
docker run -it ubuntu bash

# executando bash num container já existente
docker exec -i -t 98c5eff63d78 /bin/bash


#parar um container
Docker stop 6c179d953e7d

# removendo um container
docker rm 0f218f400238


# ----------------------------------------------
# PROGRAMAS ÚTEIS NO BASH

apt-get install htop
apt-get install iputils-ping
apt-get install nano



## --------------------------------------------
## ABRINDO O REDIS POR OUTRO DOCKER

# rodar o docker redis
docker run --name my-redis -d redis

# obter ip do docker redis
docker inspect 6d785e862b45
ipAddress: 172.17.0.3

#abre o container ubuntu
docker exec -i -t 53be342209e6 bash

apt-get update
apt-get redis-server

#conecta ao redis do outro
redis-cli -h 172.17.0.3




