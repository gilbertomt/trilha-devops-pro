# Desafios - Docker Primeiros Passos #

## Desafio 01 - Banco de Dados Postgresql ##
```bash
docker container run --name postgre_dev -e POSTGRES_DB=curso_docker -e POSTGRES_USER=docker_usr -e POSTGRES_PASSWORD=docker_pwd -p 5432:5432 -d postgres:17
```
## Desafio 02 - Banco de dados MySQL ##
```bash
docker container run --name mysql_dev -e MYSQL_DATABASE=docker_db -e MYSQL_USER=docker_usr -e MYSQL_PASSWORD=docker_pwd -e MYSQL_ROOT_PASSWORD=root -p 3306:3306 -d mysql:8.0
```
## Desafio 03 - Banco de Dados MongoDB ##
```bash
docker container run --name mongo_dev -e MONGO_INITDB_ROOT_USERNAME=mongo_usr -e MONGO_INITDB_ROOT_PASSWORD=mongo_pwd -p 27017:27017 -d mongo:8
```
