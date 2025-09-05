# Desafio 1 - O Primeiro Container da Rota 42

O CTO precisa que a equipe tenha um contato inicial com Docker. Mas ninguém quer parar o que está fazendo para aprender algo "difícil". Então, seu primeiro desafio é mostrar como rodar um container na prática e quebrar esse mito.

## Missão:

Criar um script para rodar um container básico do Nginx e outros comandos básicos, mostrando que Docker é simples e eficiente.

Crie um script run_containers.sh que:

1. Baixe a imagem nginx.
2. Inicie um contêiner nginx, nomeando-o meu-servidor.
3. Liste todos os contêineres em execução.
4. Pare e remova o contêiner.
5. Liste todos os containers.

O script deve ser adicionado no diretório 01-primeiro-container dentro do repositório:

```text
.
└── 01-primeiro-container
    └── run_containers.sh
```