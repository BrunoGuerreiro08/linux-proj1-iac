#!/bin/bash

echo "Criando diretorios..."

mkdir /publico/
mkdir /adm/
mkdir /ven/
mkdir /sec/

echo "Criando usuarios..."

useradd carlos  -c "Carlos" -m -s /bin/bash -p $(openssl passwd 12345678)
passwd -e carlos

useradd maria  -c "Maria" -m -s /bin/bash -p $(openssl passwd 12345678)
passwd -e maria

useradd joao_ -c "Joao" -m -s /bin/bash -p $(openssl passwd 12345678)
passwd -e joao_

useradd debora -c "Debora" -m -s /bin/bash -p $(openssl passwd 12345678)
passwd -e debora

useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd 12345678)
passwd -e sebastiana

useradd roberto  -c "Roberto" -m -s /bin/bash -p $(openssl passwd 12345678)
passwd -e roberto

useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd 12345678)
passwd -e josefina

useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd 12345678)
passwd -e amanda

useradd rogerio -c "Rogerio" -m -s /bin/bash -p $(openssl passwd 12345678)
passwd -e rogerio

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Adicionando usuarios aos grupos..."

usermod -g GRP_ADM carlos
usermod -g GRP_ADM maria
usermod -g GRP_ADM joao_
usermod -g GRP_VEN debora
usermod -g GRP_VEN sebastiana
usermod -g GRP_VEN roberto
usermod -g GRP_SEC josefina
usermod -g GRP_SEC amanda
usermod -g GRP_SEC rogerio

echo "Garantindo permissoes..."

chown root:root /publico
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico
