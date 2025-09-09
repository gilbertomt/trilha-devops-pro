# Desafio 5: Vulnerabilidades no Projeto Fake Shop com Trivy

Agora que a auditoria de segurança no projeto Kube News foi realizada, a equipe da Rota42 decidiu aplicar o mesmo processo ao [Fake Shop](https://github.com/KubeDev/fake-shop), um e-commerce fictício utilizado para demonstrações e testes de DevOps.

Assim como no primeiro desafio, a primeira etapa da auditoria será analisar as dependências da aplicação para identificar possíveis vulnerabilidades antes de avaliar a imagem Docker. Para isso, será utilizado o Trivy, uma ferramenta amplamente adotada para análise de segurança em projetos e containers.

A equipe de desenvolvimento precisa de um relatório detalhado em formato SARIF, para que as vulnerabilidades encontradas possam ser priorizadas e corrigidas.

## Missão
1. Clonar o repositório do Fake Shop e garantir que todas as dependências estejam instaladas.
2. Utilizar o Trivy para escanear as dependências da aplicação e identificar vulnerabilidades.
3. Não analisar a imagem Docker neste momento. O foco deve ser apenas nas vulnerabilidades das dependências da aplicação.
4. Gerar um relatório no formato SARIF e salvar o arquivo como vulnerabilities-report.sarif.

## Entrega
- Arquivo vulnerabilities-report.sarif, contendo a análise detalhada das vulnerabilidades do projeto Fake Shop.

```text
.
├── 01-identificando-vulnerabilidades
│   └── vulnerabilities-report.sarif
├── 02-imagem-docker-segura
│   ├── Dockerfile
│   ├── after-fix-report.sarif
│   ├── before-fix-report.sarif
│   ├── hadolint-report.txt
│   └── package.json
├── 03-sbom-docker-scout
│   └── sbom-report.json
├── 04-distroless-e-cosign
│   ├── Dockerfile
│   ├── README.md
│   └── cosign-signature.txt
└── 05-identificando-vulnerabilidades-fake-shop
    └── vulnerabilities-report.sarif
```