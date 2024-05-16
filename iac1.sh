#!/bin/bash


echo "Criando diretorios - Aguarde um instante!!!!"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretorio criado com sucesso..."

echo "Criando Grupos de usuarios....."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grudos sendo finalizados...."
echo "Grupo criados com sucesso!!!"

echo "..."
echo "........"
echo ".............."
echo ".................. Criando usuarios ........................."
echo "..."
echo "........"
echo ".............."

useradd carlos -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN


useradd josefina -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC

echo "Permissões aos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec


#Aqui utilizaremos 0 chmod dando permissões ao: root =7 | grupo = 7  |demais = 0 (sem acesso) |pasta publico = 777 com todos os acessos  liberados

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico


echo "Fim do scripts...."







