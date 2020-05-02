# confirma que tem php instalado nesse ambiente e se tem xdebug.
php -v

# confere configurações de debug
php --info | grep xdebug.remote

# roda em modo dev
php -S 0.0.0.0:3001 -t /app

# lista de componentes do composer
https://packagist.org/?query=pdf

# cria um projeto do zero
composer init