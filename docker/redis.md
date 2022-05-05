# DICAS DOCKER + REDIS

```bash

# redis acessível pelo windows
docker run --name=redis-devel --publish=6379:6379 --hostname=redis --restart=on-failure --detach redis:latest

# UM BOM CLIENT REDIS FEITO EM NODE
client redis
npm install -g redis-commander
redis-commander

```


# ABRINDO O REDIS POR OUTRO DOCKER

```bash

# rodar o docker redis
docker run --name my-redis -d redis

# obter ip do docker redis
docker inspect 6d785e862b45
ipAddress: 172.17.0.3

# abre o container ubuntu
docker exec -i -t 53be342209e6 bash

apt-get update
apt-get redis-server

#conecta ao redis do outro
redis-cli -h 172.17.0.3

```