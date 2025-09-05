# Desafio 2 - Boas Práticas no Dockerfile

A equipe de desenvolvimento da Rota42 está trabalhando na padronização do processo de desenvolvimento das suas aplicações. Então, eles estão criando boilerplates de projetos.

Mas como a equipe tem pouca experiencia em Docker, a construção da imagem não está com bom desempenho e o processo de build está muito lento.

Segue abaixo o boilerplate usado pela equipe:

https://drive.google.com/file/d/1aEbsLgpfCfxQx2iRBOFAcx8LPHAey5xl/view?usp=drive_link

## Missão:

1. Refatorar o Dockerfile, aplicando boas práticas.
2. Adicionar um arquivo de compose para facilitar a execução da aplicação e o build e push da imagem.

## Entrega:

- Arquivo Dockerfile otimizado.
- Arquivo compose.yaml

```text
.
├── 01-primeiro-dockerfile
│   ├── Dockerfile
│   └── compose.yaml
└── 02-boas-raticas-dockerfile
    ├── Dockerfile
    ├── app.py
    ├── compose.yaml
    └── requirements.txt
```