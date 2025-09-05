# Desafio 4 - Multistage Build

A Rota42 está melhorando sua solução de processamento de vídeos e recentemente migrou o código do conversor de vídeos de Shell Script para Golang, buscando desempenho e flexibilidade.

Agora, o próximo passo é containerizar essa aplicação de forma eficiente. Atualmente, o time de desenvolvimento criou um Dockerfile simples, mas a imagem gerada está muito grande, pois inclui pacotes de desenvolvimento que não são necessários em produção.

Seu desafio é refatorar a criação da imagem utilizando Multistage Build, garantindo que a imagem final seja leve e eficiente.

## Missão:

1. Criar um Dockerfile otimizado utilizando Multistage Build, garantindo que:
- A imagem seja a menor possível e garantindo todas as funcionalidades.
- O contêiner aceite parâmetros dinâmicos para conversão de vídeos.
2. Criar um compose.yaml que:
- Construa a imagem otimizando o processo de build.
- Permita rodar o contêiner de forma simples.

## Entrega:

Arquivo Dockerfile utilizando Multistage Build.
Arquivo compose.yaml para facilitar a execução.

```text
.
├── 01-primeiro-dockerfile
│   ├── Dockerfile
│   └── compose.yaml
├── 02-boas-raticas-dockerfile
│   ├── Dockerfile
│   ├── app.py
│   ├── compose.yaml
│   └── requirements.txt
├── 03-entrypoint-vs-cmd
│   ├── Dockerfile
│   ├── compose.yaml
│   └── convert.sh
└── 04-multistage-build
    ├── Dockerfile
    ├── compose.yaml
    ├── converter.go
    ├── go.mod
    └── go.sum
```