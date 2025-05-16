#!/bin/bash

echo "Iniciando o provisionamento do servidor web..."
echo "Atualizando o sistema..."
ap-get update
apt-get upgrade -y

echo "Instalando o servidor web Apache, Unzip e baixando conteúdo do site de exemplo..."
apt-get install apache2 -y
apt-get install unzip -y
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/