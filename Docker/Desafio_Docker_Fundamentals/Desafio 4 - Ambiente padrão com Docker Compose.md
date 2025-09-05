# Desafio 4 - Ambiente padrão com Docker Compose

O time de desenvolvimento da Rota42 está criando um novo microsserviço em Java, mas os devs reclamam que precisam instalar o PostgreSQL e RabbitMQ localmente. Além disso, não têm uma forma fácil de explorar o banco de dados. Seu desafio agora é padronizar os ambientes para que todos possam desenvolver sem dor de cabeça.

A equipe de desenvolvimento está criando um novo microsserviço, esse microsserviço está sendo desenvolvido utilizando NodeJs (https://github.com/KubeDev/kube-news) e utiliza o banco de dados PostgreSQL.

Mas a equipe frequentemente reclama pelo fato de ter que instalar o PostgreSQL na máquina e pelo fato de não terem uma ferramenta apropriada para consultar os dados no PostgreSQL.

## Missão:

Criar um ambiente completo com PostgreSQL, e uma ferramenta de administração de banco de dados.

Criar um compose.yml com:

* Serviço db (PostgreSQL).
* Serviço db_explorer (pgAdmin).

Todos os serviços devem prever a persistência correta dos seus dados usando volumes e o mapeamento das portas para que a aplicação em NodeJs ( que vai ser executada localhost ) consiga acessar sem problemas.

## Entrega:

Entregar o arquivo compose.yaml para a criação do blog usando o Docker Compose no diretório 04-ambiente dentro do repositório:

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
└── 04-ambiente
    └── compose.yaml
```