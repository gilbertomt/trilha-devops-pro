# Desafio 1: Identificando Vulnerabilidades no Projeto com Docker Scout

A equipe de engenharia da Rota42 iniciou a auditoria de segurança do projeto [Kube News](https://github.com/KubeDev/kube-news). O primeiro passo é analisar as dependências do projeto para identificar possíveis vulnerabilidades que possam comprometer a aplicação.

A equipe de desenvolvimento precisa de um relatório detalhado no formato SARIF (Static Analysis Results Interchange Format), que pode ser integrado a ferramentas de análise de segurança e CI/CD. Esse relatório ajudará os desenvolvedores a entenderem quais pacotes precisam ser atualizados ou corrigidos.

## Missão:
1. Clonar o repositório do [Kube News](https://github.com/KubeDev/kube-news) e garantir que todas as dependências estejam instaladas.
2. Utilizar o Docker Scout para escanear as dependências do projeto e identificar vulnerabilidades.
3. Não analisar a imagem Docker neste momento. O foco deve ser apenas nas vulnerabilidades das dependências da aplicação.
4. Gerar um relatório no formato SARIF para que a equipe de desenvolvimento possa analisar os problemas e priorizar correções.
5. Salvar o relatório gerado em um arquivo chamado vulnerabilities-report.sarif.

## Entrega:
Arquivo vulnerabilities-report.sarif, contendo a análise detalhada das vulnerabilidades do projeto.
```text
.
└── 01-identificando-vulnerabilidades
    └── vulnerabilities-report.sarif
```