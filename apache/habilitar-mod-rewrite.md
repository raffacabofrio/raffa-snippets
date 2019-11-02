# habilitando o mod_rewrite na unha!!!


# encontra o container que está rodando o apache
docker ps

container
960e12b78430


# executando bash no container
docker exec -i -t 960e12b78430 /bin/bash

# atualiza o 'npm' do ubuntu
apt-get update

# ferramentas adm apache que facilitam a vida
apt-get install apache2-utils

#habilita o mod_rewrite
a2enmod rewrite

# reinicia o apache
service apache2 restart

# reinicia o app
docker-compose up
