#/bin/bash

echo "Iniciando script..."

#criar diretórios
mkdir publico adm ven sec

#criar grupos
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários...."

#criar usuários, usando -e para o usuário trocar a senha ao fazer o primeiro login
useradd carlos -c “Carlos” -s /bin/bash -m -p $(openssl passwd -6 Senha123) && passwd carlos -e
useradd maria -c “Maria” -s /bin/bash -m -p $(openssl passwd -6 Senha123) && passwd maria -e
useradd joao -c “João” -s /bin/bash -m -p $(openssl passwd -6 Senha123) && passwd joao -e
useradd debora -c “Débora” -s /bin/bash -m -p $(openssl passwd -6 Senha123) && passwd debora -e
useradd sebastiana -c “Sebastiana” -s /bin/bash -m -p $(openssl passwd -6 Senha123) && passwd sebastiana -e
useradd roberto -c “Roberto” -s /bin/bash -m -p $(openssl passwd -6 Senha123) && passwd roberto -e
useradd josefina -c “Josefina” -s /bin/bash -m -p $(openssl passwd -6 Senha123) && passwd josefina -e
useradd amanda -c “Amanda” -s /bin/bash -m -p $(openssl passwd -6 Senha123) && passwd amanda -e
useradd rogerio -c “Rogério” -s /bin/bash -m -p $(openssl passwd -6 Senha123) && passwd rogerio -e

#Adicionar usuários criados aos grupos
usermod -g GRP_ADM, carlos
usermod -g GRP_ADM, maria
usermod -g GRP_ADM, joao
usermod -g GRP_VEN, debora
usermod -g GRP_VEN, sebastiana
usermod -g GRP_VEN, roberto
usermod -g GRP_SEC, josefina
usermod -g GRP_SEC, amanda
usermod -g GRP_SEC, rogerio

echo "Criando permissões..."
chmod 770 adm ven sec

chmod 777 publico

echo "Script finalizado!..."
