#!/usr/bin/env bash

echo "==============================================================================="
echo ">>> Instalando apache"
sudo yum -y install httpd httpd-devel
echo "==============================================================================="

echo "==============================================================================="
echo ">>> Adicionando o usuário vagrant ao grupo do apache"
sudo usermod -a -G apache vagrant
echo "==============================================================================="

echo "==============================================================================="
echo ">>> Ativando inicializacao automatica do apache"
sudo systemctl enable httpd
sudo systemctl start httpd
echo "==============================================================================="

# Configuração geral de vhosts
# fonte: https://www.digitalocean.com/community/tutorials/how-to-set-up-apache-virtual-hosts-on-centos-7
echo "==============================================================================="
echo ">>> Configurando vhost"
sudo mkdir /etc/httpd/sites-available
sudo mkdir /etc/httpd/sites-enabled
sudo echo "IncludeOptional sites-enabled/*.conf" >> /etc/httpd/conf/httpd.conf
echo "==============================================================================="
