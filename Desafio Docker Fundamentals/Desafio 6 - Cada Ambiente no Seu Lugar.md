Com a adoção crescente de containers, a Rota42 precisa separar seus ambientes de desenvolvimento e homologação, mas tudo ainda está no mesmo arquivo Compose. Isso gera conflitos de configuração e risco de erro ao subir para produção.

Missão:

Alterar o arquivo compose.yaml do desafio anterior e suportar múltiplos arquivos de ambiente.

1 - Alterar o arquivo compose para suportar o uso de variáveis de ambiente.
2 - Criar dois arquivos .env, um para cada ambiente:
    .dev.env (ambiente de desenvolvimento).
    .homolog.env(ambiente de homologação).

Entrega:

Entregar ocompose.yml e os arquivos de ambiente no diretório 06-multiplos-ambientes:

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
├── 05-onde-esta-bug
│   └── compose.yaml
│
└── 06-multiplos-ambientes
    ├── compose.yaml
    ├── .dev.env
    └── .homolog.env