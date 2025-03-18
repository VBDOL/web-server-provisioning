#!/bin/bash

# Atualizar pacotes
sudo apt-get update -y
sudo apt-get upgrade -y

# Instalar Apache
sudo apt-get install apache2 -y

# Habilitar e iniciar o serviço do Apache
sudo systemctl enable apache2
sudo systemctl start apache2

# Criar uma página inicial básica
echo "<h1>Servidor Web Configurado com Sucesso!</h1>" | sudo tee /var/www/html/index.html

# Testar se o Apache está em execução
if sudo systemctl status apache2 | grep "active (running)"; then
  echo "Servidor web está funcionando corretamente!"
else
  echo "Houve um problema ao iniciar o servidor web."
fi
