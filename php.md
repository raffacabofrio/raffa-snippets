# confirma que tem php instalado nesse ambiente e se tem xdebug.
php -v

# confere configurações de debug
php --info | grep xdebug.remote

# RODA O PHP

## sem docker
php -S localhost:8080 -t /src

# com docker
docker run -d -p 8080:80 --name php-pdf-example -v "$PWD"/src:/var/www/html php:7.3-apache

# lista de componentes do composer
https://packagist.org/?query=pdf

# cria um projeto do zero
composer init