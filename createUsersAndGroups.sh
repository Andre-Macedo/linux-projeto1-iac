#!/bin/bash

cd /

echo "Creating directiories..."

mkdir publico
mkdir adm
mkdir ven
mkdir sec

echo "Creating groups..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Creating users..."
useradd carlos -m -c "Carlos" -s /bin/bash
usermod -a -G GRP_ADM carlos
useradd maria -m -c "Maria" -s /bin/bash
usermod -a -G GRP_ADM maria
useradd joao -m -c "Joao" -s /bin/bash
usermod -a -G GRP_ADM joao

useradd debora -m -c "Debora" -s /bin/bash
usermod -a -G GRP_SEC debora
useradd sebastiana -m -c "Sebastiana" -s /bin/bash
usermod -a -G GRP_SEC sebastiana
useradd roberto -m -c "Roberto" -s /bin/bash
usermod -a -G GRP_SEC roberto

useradd josefina -m -c "Josefina" -s /bin/bash -p $(openssl passwd Senha123)
usermod -a -G GRP_VEN josefina
useradd amanda -m -c "Amanda" -s /bin/bash -p $(openssl passwd Senha123)
usermod -a -G GRP_VEN amanda
useradd rogerio -m -c "Rogerio" -s /bin/bash -p $(openssl passwd Senha123)
usermod -a -G GRP_VEN rogerio

echo "Defining permissions..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Done!"
