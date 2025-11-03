#!/bin/bash
set -e

echo "Actualizando los repositorios"
sudo apt update -y

echo "Instalando apache, php, mysql, git y mariadb-client"
sudo apt install -y apache2 php libapache2-mod-php php-mysql git mariadb-client

echo "Clonando aplicacion desde github"
cd /tmp
git clone https://github.com/josejuansanchez/iaw-practica-lamp.git

echo "Copiando la aplicacion a la carpeta web"
rm -r /var/www/html/*
cp -rf iaw-practica-lamp/src/* /var/www/html/
chown -R www-data:www-data /var/www/html
chmod -R 755 /var/www/html

echo "Configurando la conexion a la base de datos"
sudo sed -i "s/define('DB_HOST'.*/define('DB_HOST', '192.168.0.6');/" /var/www/html/config.php
sudo sed -i "s/define('DB_NAME'.*/define('DB_NAME', 'lamp_db');/" /var/www/html/config.php
sudo sed -i "s/define('DB_USER'.*/define('DB_USER', 'uapp');/" /var/www/html/config.php
sudo sed -i "s/define('DB_PASSWORD'.*/define('DB_PASSWORD', 'papp');/" /var/www/html/config.php

echo "Reiniciando apache"
systemctl restart apache2

echo "Servidor apache con aplicacion desplegada correctamente"
