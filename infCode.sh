#!/bin/bash

echo "Criando diretório para infraestrutura..."
mkdir /projeto1
mkdir /projeto1/publico
mkdir /projeto1/adm
mkdir /projeto1/ven
mkdir /projeto1/sec

echo "Diretórios criados na pasta /projeto1"

echo "Criando os grupos de usuários..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Grupos criados!"

echo "Criando usuários..."
useradd carlos -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_ADM
useradd debora -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_VEN
useradd josefina -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_SEC

echo "Usuários criados com sucesso!"

echo "Definindo permissões dos diretórios..."
chown root:GRP_ADM /projeto1/adm
chown root:GRP_VEN /projeto1/ven
chown root:GRP_SEC /projeto1/sec

echo "Definindo permissões para cada diretório..."
chmod 770 /projeto1/adm
chmod 770 /projeto1/ven
chmod 770 /projeto1/sec
chmod 777 /projeto1/publico

echo "Especificações concluídas com sucesso!"
echo "Script finalizado."
