#!/bin/bash

echo "Criação de diretórios..."

mkdir /publico
mkdir /administrativo
mkdir /vendas
mkdir /seguranca


echo "Criação de grupos..."

groupadd GROUP_ADM
groupadd GROUP_VEN
groupadd GROUP_SEC


echo "Criação de usuários e atribuindo-os aos seus respectivos grupos..."

useradd mateus -c "Mateus Amauri" -s /bin/bash -m -p $(openssl passwd -6 senha123) -G GROUP_ADM
useradd roberto -c "Roberto Moraes" -s /bin/bash -m -p $(openssl passwd -6 senha123) -G GROUP_ADM
useradd juliano -c "Juliano da Silva" -s /bin/bash -m -p $(openssl passwd -6 senha123) -G GROUP_ADM

useradd leticia -c "Leticia Ferreira" -s /bin/bash -m -p $(openssl passwd -6 senha123) -G GROUP_VEN
useradd rodrigo -c "Rodrigo Gomes" -s /bin/bash -m -p $(openssl passwd -6 senha123) -G GROUP_VEN
useradd veronica -c "Verônica Medeiros" -s /bin/bash -m -p $(openssl passwd -6 senha123) -G GROUP_VEN

useradd igor -c "Igor Rodrigues" -s /bin/bash -m -p $(openssl passwd -6 senha123) -G GROUP_SEC
useradd afonso -c "Afonso Miguel" -s /bin/bash -m -p $(openssl passwd -6 senha123) -G GROUP_SEC
useradd mariana -c "Mariana Souza" -s /bin/bash -m -p $(openssl passwd -6 senha123) -G GROUP_SEC


echo "Permissões dos diretórios.."

chown root:GROUP_ADM /administrativo
chown root:GROUP_VEN /vendas
chown root:GROUP_SEC /seguranca

chmod 770 /administrativo
chmod 770 /vendas
chmod 770 /seguranca 
chmod 777 /publico

echo "Fim.."
