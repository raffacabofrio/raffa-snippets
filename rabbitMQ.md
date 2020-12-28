# RABBIT MQ

O que mais me chamou atenção no Rabbit é sua versatilidade. Dependendo da forma que vc configura, vc pode ter desde uma fila simples até uma sistema mais complexo de pub/sub. 

Sua arquitetura pode ser o diferencial para entrega mais rápida. 

Aguenta a porrada, com milhões de mensagens por segundo. Mas vai precisar de mais hardware que o kafka.

Intalar o Rabbit parece ser chatinho. Optei por usar o docker o foi suave. Veio com tudo funcionando sem precisar configurar.



docker >> https://hub.docker.com/_/rabbitmq
- guest / guest
- manager >> http://localhost:8080
- docker run -d --hostname my-rabbit --name some-rabbit -p 8080:15672 -p 5672:5672 rabbitmq:3-management
- *atenção* liberar as portas no comando acima.

docker run -d --hostname my-rabbit --name some-rabbit -p 8080:15672 -p 5671:5671 rabbitmq:3-management

# sobre o rabbit mq
- open source!
- nasceu como message broker, mas evoluiu para streaming (pub/sub).
- tem pra linux
- tem cluster. 
- AMQP protocol - padrão de mercado.
- 2007 - maduro.
- 

# durable
queue durable >> se a mensagem é salva no disco. Não perder mensagens em caso de reiniciar servidor.

# fluxo
publisher >> message broker >> consumer

# exchange types
- direct >> envia para a fila que o publisher quer.
- Fanout >> envia para as filas que estiverem ligadas a ele. Bom pra broadcast.
- Topic >> segue o padrão publish/subscriber. (event based)
- Header >> faz a rota de acordo com atributos complicados.

nugget name: RabbitMQ Client.


# serialização byte.
será que o rabbit só aceita byte no body?
- vou ter que ter sempre esse cuidado na hora de serializar?
- *SIM*. analisei o método "_model.BasicPublish".
- colinha: _CURSOS\rabbitmq-by-example\3-rabbitmq-by-example-m3-exercise-files\StandardQueue\Program.cs

onde está meu artigo de filas?


# remote procedure call
- usar a fila de modo síncrono.
- duas filas. fila de entrada e fila de saída. ambas tem o mesmo correlation_id.
- o producer fica esperando até ter a resposta na na fila de saída com o correlation_id 
- não é exatamente um recurso do rabbit. o instrutor fez toda a implementação FORÇANDO o producer a esperar. (while true)
- 


aws sqs - mais simples.
azure storage queue - mais simples. fácil de conectar.
kafka - mais novo. performa melhor.

data out, backup, performance, etc... Mas eu particularmente prefiro ficar com as soluções do provedor de núvem. Se está na AWS, usa as coisas da AWS. Se está na Azure, as da Azure.

