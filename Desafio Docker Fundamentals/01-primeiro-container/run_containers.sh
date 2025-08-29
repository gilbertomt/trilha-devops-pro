#!/bin/bash

set -e

# INICIO
echo "# Nginx em Container Docker #"

# Passo 1: Baixar a imagem nginx
echo "# Baixando imagem do Nginx..."
docker pull nginx

# Passo 2: Iniciar um contêiner nginx com nome meu-servidor
echo "# Iniciando o contêiner Nginx..."
docker container run -d --name meu-servidor -p 8080:8080 nginx

# Passo 3: Listar todos os contêineres em execução
echo "# Listando todos os contêineres em execução..."
docker container ls

# Passo 4: Parar e remover o contêiner
echo "# Parando e removendo o contêiner 'meu-servidor'..."
docker container rm -f meu-servidor

# Passo 5: Listar todos os contêineres (incluindo os parados)
echo "# Listando todos os contêineres (incluindo os parados)..."
docker container ls -a

# FIM
echo "# Docker é simples e eficiente! #"

