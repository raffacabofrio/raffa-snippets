MONGODB

# docker
- docker run --name mongodb -p 27017:27017 -e MONGO_INITDB_ROOT_USERNAME=raffa -e MONGO_INITDB_ROOT_PASSWORD=raffa123 mongo
- instruções: https://balta.io/artigos/mongodb-docker
- 

# string conexão
- mongodb://raffa:raffa123@localhost:27017/admin


# anotações
- INSANAMENTE RÁPIDO. Pra instalar e pra rodar.
- MongoDB is the most widely used document-based database.
- Quase 10x mais popular que o segundo colocado. aws DynamoDB.
- sharding onde o dado será "hospedado". ,
	- domínio no korus é um bom candidato para sharding.
- BSON  >> Binary JSON.
- “In-Memory” para consultas rápidas.
- não tem trigger. Ou não achei. No DynamoDB foi bem evidente e uma das primeiras coisas que eu vi.
- escalabilidade horizontal. Abre mão de consistência e ganha escala.
- sem "impedância". O objeto persistido é igual ao objeto na aplicação. (sem precisar de um ORM pra mapear)
- shell em javascript. inclusive para operações complexas de administração.
- no korus não vai ter concorrência de uso. Não preciso me preocupar com isso.



# réplicas
- primary >> único responsável por escrita.
- secundary >> apenas leitura. ele que dá escala horizontal pra aplicação.
- arbiter >> caso o primary falhe, decide quem será o novo primary. não tem dados nem nada, só vota. pode ser uma máquina simples.

- em dev todas as réplicas podem ficar na mesma máquina.
- em prod, é bom ficar em máquinas separadas, por segurança.


# POC
- https://docs.microsoft.com/pt-br/aspnet/core/tutorials/first-mongo-app?view=aspnetcore-5.0&tabs=visual-studio
- mesmo nugget package que o agfa usa. Bom!
- 


# Most popular NoSql databases
1. MongoDB - O mais popular do mundo!
2. Amazon DynamoDB - Simples, fácil. 
3. Azure Cosmos DB - Tem crescido consistentemente. Se vc está no azure nem tem o que pensar.
4. Couchbase - não conheço.
5. Firebase - conheço superficialmente. Absurdamente prático e rápido.

Elastic Search não é "Document-Store". 
- É um "Search Engine".
- Índice para cada campo!!!
- 

fonte: https://db-engines.com/en/ranking/document+store

# Elastic Search vs MongoDB 
- https://medium.com/data-hackers/comparando-elasticsearch-vs-mongodb-4b5932c613d9


------------------------------------------------------------------
# comandos
esses comandos não precisam do payload inteiro. (lembrei do elastic)

update 
	>> é atômico em relação à um documento.
	>> executa um update de cada vez.
	>> o save tem perigo de inconsistência. (não se preocupe com isso em caso de não ter concorrência)
	>> multi:true - atualiza vários documentos ao mesmo tempo.
	
set >> add uma propriedade ao json.
unset >> remove uma propriedade do json.
push 
	>> add um elemento ao array.
	>> addToSet - evita duplicidade no push.
	
pop >> remove o último elemento do array. 
findAndModify >> ...


------------------------------------------------------------------
# find

- query  >> equivalente ao WHERE.
- projection >> equivalente ao SELECT xxx.

operadores úteis
- $gt >> maior que
- $lt >> menor que
- { $gt:2, $lt:4} >> maior que 2 AND menor que 4.
- a vírgula na query equivale ao AND.
- $not >> negando a condição lógica.
- $in >> igual ao IN do sql.
- $all >> bom pra array. pesquisa que tenha os dois elementos. exempplo 'animal' e 'agua'
- "info.canFly": true >> para acessar propriedades nested.
- $exists >> diferente de null. se realmente tem a propriedade.
- projection >> colocar 1 quer que traga os campos. colocar 0 quer que NÃO traga os campos.

cursor
- o resultado de uma pesquisa é um cursor.
- size >> tamanho
- hasNext 
- forEach
- sort
	- name: 1 >> ascending
	- name: -1 >> descending

paginação
- limit >> igual do mysql
- skip
- db.animals.find( {}, {_id:1} ).sort( {_id:-1} ).skip(1).limit(3)

findOne >> firstOrDefault server side. ;-)


------------------------------------------------------------------
# índices

- ensureIndex(keys, options)
	- cria o índice
	- também dá pra criar pela IDE.
- explain >> usa junto do find pra ver se o índice vai ser usado. olhar o cursor prop.

- nested
	- db.animals.ensureIndex({"info.color":1})
	- dot notation
	- 
- pode criar um índice unique também. Que nem no SQL.
- cuidado com os documentos que NÃO TEM A PROPRIEDADE que é índice. Eles não serão encontrados.
- cuidado com índices mortos. mongo não tem schema e isso pode acontecer.






