# Desafio 3 - Conectando Serviços Com Redes Docker

Um dos projetos mais importantes da Rota42 é seu blog corporativo, onde a equipe de marketing publica conteúdos sobre produtos e tendências. Mas quando tentaram migrá-lo para Docker, algo deu errado: toda vez que recriam os containers, os dados desaparecem!

## Missão:

Criar um ambiente Docker Compose para rodar o blog da Rota42 (WordPress + MySQL), garantindo persistência de dados.

1. Criar um docker compose que seja utilizado para criar todos os componentes necessários para o blog: Um banco de dados MySQL e o Wordpress.
2. Usar as imagens oficiais para a criação dos serviços.
3. Garantir que os dados do MySQL e nem do Wordpress sejam perdidos.

## Entrega:

Entregar o arquivo compose.yaml para a criação do blog usando o Docker Compose no diretório 03-blog dentro do repositório:

```text
.
├── 01-primeiro-container
│   └── run_containers.sh
│
├── 02-container-logs
│   └── ngnix_volume_container.sh
│
└── 03-blog
    └── compose.yaml
```