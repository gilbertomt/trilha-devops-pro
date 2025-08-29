#!/bin/bash

set -e
DIR=$(pwd)

# INICIO
echo "# Iniciando script para configurar logs persistentes no Nginx com Docker. #"

# Passo 1: Criar volume e arquivo de configuração
echo "# Criando arquivo nginx.conf personalizado..."
cat > $DIR/nginx.conf <<'EOF'
events { }

http {
    access_log /var/log/nginx/nginx_access.log;
    error_log /var/log/nginx/nginx_error.log warn;

    server {
        listen 80;

        location / {
	    root /usr/share/nginx/html;
    	    index index.html;
	}
    }
}
EOF

echo "# Criando o volume 'nginx_logs'..."
docker volume create nginx_logs

# Passo 2: Rodar container com volume montado e config customizada no Nginx
echo "# Iniciando o container Nginx..."
docker run -d --name nginx -p 8080:80 \
  --mount source=nginx_logs,target=/var/log/nginx \
  -v $(pwd)/nginx.conf:/etc/nginx/nginx.conf:ro \
  nginx

# Passo 3: Gerar logs
echo "# Aguardando Nginx subir..."
sleep 1
echo "# Gerando logs acessando a página do Nginx..."
curl -s http://localhost:8080 > /dev/null
curl -s http://localhost:8080/erro > /dev/null
echo "*Logs gerados com sucesso!"

# Passo 4: Parar e remover container
echo "# Parando e removendo o container Nginx..."
docker container rm -f nginx

# Passo 5: Criar um novo contêiner e validar que os logs antigos ainda existem.
echo "# Recriando o container Nginx para validar a persistência dos logs..."
docker run -d --name nginx -p 8080:80 \
  --mount source=nginx_logs,target=/var/log/nginx \
  -v $(pwd)/nginx.conf:/etc/nginx/nginx.conf:ro \
  nginx

sleep 1
echo "---------------- Validando persistência dos logs -------------"
docker container exec nginx ls -l /var/log/nginx
echo "---------------- Conteúdo do nginx_access.log ----------------"
docker container exec nginx cat /var/log/nginx/nginx_access.log
echo "---------------- Conteúdo do nginx_error.log -----------------"
docker container exec nginx cat /var/log/nginx/nginx_error.log
echo "--------------------------------------------------------------"
echo "# Script concluído! Os logs estão persistindo no volume 'nginx_logs'. #"

# FIM