## Bootcamp Dio DevOps Projeto IaC

#### Esse script é a entrega de um projeto do bootcamp da Dio, onde fomos desafiados a criar um script para criação de estrutura de Usuários, Diretórios e Permissões com as seguintes definições:

- O dono de todos os diretórios criados será o usuário root;
- Todos os usuários terão permissão total dentro do diretório público;
- Os usuários de cada grupo terão permissão total dentro de seu respectivo diretório;
- Os usuários não poderão ter permissão de leitura, escrita e execução em diretórios de departamentos em que eles não pertencem.

### Esse é o script que fiz:
```bash
  #/bin/bash
  
  echo "Iniciando Script..."
  
  #criar diretórios
  mkdir publico adm ven sec
  
  #criar grupos
  groupadd GRP_ADM
  groupadd GRP_VEN
  groupadd GRP_SEC
  
  echo "Criando Usuários...."
  
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
  
  #adicionar usuários existentes aos grupos
  usermod -g GRP_ADM, carlos
  usermod -g GRP_ADM, maria
  usermod -g GRP_ADM, joao
  usermod -g GRP_VEN, debora
  usermod -g GRP_VEN, sebastiana
  usermod -g GRP_VEN, roberto
  usermod -g GRP_SEC, josefina
  usermod -g GRP_SEC, amanda
  usermod -g GRP_SEC, rogerio
  
  echo "Criando Permissões..."
  chmod 770 adm ven sec
  
  chmod 777 publico
  
  echo "Script Finalizado!..."

