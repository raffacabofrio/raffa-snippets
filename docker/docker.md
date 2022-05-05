# DOCKER BASICS

```bash

## List Docker CLI commands
docker container --help

## Display Docker version and info
docker version
docker info

```

# IMAGES ( similar a classes )

```bash

# lista imagens
docker images

# baixa uma imagem
docker pull ubuntu

# cria um nova imagem
# ( antes gerar arquivo Dockerfile na mesma pasta que vai rodar )
docker build -t my_app .


```

# CONTAINERS ( similar a objetos )

```bash

# mostra os containers ( apenas rodando )
docker ps

# mostra os containers ( todos )
docker ps -a

# cria um novo container e executa o bash
docker run -it ubuntu bash

# executando bash num container já existente
docker exec -i -t 98c5eff63d78 /bin/bash

# -v >> VOLUME
# roda um container com uma pasta compartilhada local
docker run -p "80:80" -v $PWD:/var/www/html -d php/debug


# parar um container
Docker stop 6c179d953e7d

# removendo um container
docker rm 0f218f400238


```

# PROGRAMAS ÚTEIS NO BASH

```bash

apt-get install htop
apt-get install iputils-ping
apt-get install nano




```

# DOCKER COMPOSER

```bash

# uma rede de vários containers que se comunicam, pra compor uma solução
# exemplo PHP + MYSQL + REDIS

# crie os arquivos dockerfile e docker-compose.yml 

# roda o app
docker-compose up

# para o app
docker-compose down

# força o build
docker-compose up -- build

# fazer o docker acessar um serviço que está na sua máquina. Ex MYSQL.
apenas troque localhost por host.docker.internal.

```