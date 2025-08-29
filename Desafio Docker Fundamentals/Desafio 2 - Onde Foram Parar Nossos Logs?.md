Agora que os desenvolvedores começaram a usar containers, um novo problema surgiu: os logs desaparecem toda vez que o container é reiniciado. O time de observabilidade está preocupado, pois não consegue monitorar os acessos ao sistema.

Missão:

Criar um volume para armazenar os logs do Nginx de forma persistente.

1 - Criar um volume Docker chamado nginx_logs.
2 - Executar um contêiner nginx, montando o volume nginx_logs no dirétorio /var/log/nginx do container e expondo a página web na porta 8080 da máquina local.
3 - Gerar logs acessando a página hospedada no nginx executando localmente o comando curl http://localhost:8080.
4 - Parar e remover o contêiner.
5 - Criar um novo contêiner e validar que os logs antigos ainda existem.

O script deve ser adicionado no diretório 02-container-logs dentro do repositório:

.
├── 01-primeiro-container
│   └── run_containers.sh
│
└── 02-container-logs
    └── ngnix_volume_container.sh
