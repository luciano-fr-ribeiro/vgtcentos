#!/usr/bin/env bash

echo "==============================================================================="
echo ">>> Criando entrada para ${1} em /etc/hosts"
sudo echo "127.0.0.1 ${1}" >> /etc/hosts
echo "==============================================================================="
