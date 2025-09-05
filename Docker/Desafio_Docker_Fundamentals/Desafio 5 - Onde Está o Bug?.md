# Desafio 5 - Onde Está o Bug?

Depois que os microsserviços começaram a rodar em containers, os desenvolvedores começaram a relatar problemas: "A aplicação está com erro, mas não sabemos por quê!". Sem logs estruturados e sem acesso fácil ao container, o time de suporte está perdido.

## Missão:

Analisar o Docker Compose da aplicação e resolver o problema.

1. Rodar os serviços do docker-compose.yml.

```yaml
services:
    postgre:
        image: postgres:13.16
        restart: always
        environment:
            POSTGRES_USER: ecommerce
            POSTGRES_DB: fakeshop
            POSTGRES_PASSWORD: pg1234
        ports:
            - "5432:5432"
        volumes:
            - postgre_data:/var/lib/postgresql/data

    ecommerce:
        image: fabricioveronez/fake-shop
        restart: always
        environment:
            DB_HOST: postgre
            DB_USER: fakeshop
            DB_PASSWORD: Pg1234
            DB_NAME: ecommerce
            DB_PORT: "5432"
            FLASK_APP: index.py
        ports:
            - "5000:5000"
        depends_on:
            - postgre

    volumes:
        postgre_data:
```

2. Listar os logs.

## Entrega:

Entregar ocompose.yml corrigido no diretório 05-onde-esta-bug:
```text
.
├── 01-primeiro-container
│   └── run_containers.sh
│
├── 02-container-logs
│   └── ngnix_volume_container.sh
│
├── 03-blog
│   └── compose.yaml
│
├── 04-ambiente
│   └── compose.yaml
│
└── 05-onde-esta-bug
    └── compose.yaml
```