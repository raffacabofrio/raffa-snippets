REDIS - ABSURDAMENTE RÁPIDO

BOM TUTORIAL
https://www.tutorialspoint.com/redis/index.htm



# ----------------------------------------------
# INSTALANDO REDIS NUM BOCKER UBUNTU
# também seria 

# inicia um contaner ubuntu do docker
docker run -it ubuntu bash

# instala redis
apt-get update
apt-get install redis-server

# inicia o server
redis-server





redis-cli

ping

config get *

CONFIG SET loglevel "notice"


# TIPOS DE DADOS
----------------------------------------------
STRING - 512 MB
set name "Raffaello Damgaard"
get name 

----------------------------------------------
HASH MAPS - estrutura complexas - 4 bilhões de nós

HMSET user:1 username tutorialspoint password tutorialspoint points 200 
HGETALL user:1 


----------------------------------------------
LIST
- sorted by insertion order
- pode repetir

lpush tutoriallist redis
lpush tutoriallist mongodb
lpush tutoriallist rebitmq

lrange tutoriallist 0 10


----------------------------------------------
SETS 
- listas desordenadas.
- chave única.



----------------------------------------------
ORDERED SETS 
- tem um score pra cada item pra ordenar.
- chave única.



- HyperLogLog  >> pra contar o total de itens em sets.






CONECTANDO AO REDIS REMOTO

redis-cli -h master.dashboard-cache-dev.kh4dqu.sae1.cache.amazonaws.com -p 6379 -a aLnMy5dA37SgnJGB




del key


# ----------------------------------------------
# MAIS RECURSOS DO REDIS

SUBSCRIPT
- um publisher
- vários subscribers
- exemplo: um chat

TRANSACTION

SAVE
- Redis SAVE command is used to create a backup of the current Redis database.
- This command will create a dump.rdb file in your Redis directory.

CLIENT LIST
- Returns the list of clients connected to Redis server

PARTITIONING
- múltiplos servers redis pra servir o mesmo serviço.
- soma de memória dos servers
- 



