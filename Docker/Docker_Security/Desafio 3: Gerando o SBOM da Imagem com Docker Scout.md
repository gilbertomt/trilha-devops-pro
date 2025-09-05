# Desafio 3: Gerando o SBOM da Imagem com Docker Scout

Após a aplicação de boas práticas na construção da imagem Docker do Kube News, a equipe agora precisa garantir transparência e rastreabilidade sobre os componentes presentes na imagem.

Para isso, será necessário gerar um SBOM (Software Bill of Materials), um documento que lista todas as dependências da imagem, incluindo pacotes do sistema operacional e bibliotecas da aplicação. Esse SBOM permitirá que a equipe monitore possíveis vulnerabilidades futuras, garantindo que nenhuma dependência desatualizada passe despercebida.

O SBOM será gerado utilizando o Docker Scout, que permite a análise detalhada da imagem e a exportação do relatório para um formato compatível com auditorias de segurança.

## Missão
1. Utilizar o Docker Scout para gerar um SBOM detalhado da imagem Docker do Kube News.
2. Exportar o relatório no formato JSON para facilitar a integração com ferramentas de análise de segurança.
3. Salvar o relatório gerado no arquivo sbom-report.json.

## Entrega
- Arquivo sbom-report.json, contendo o SBOM gerado pelo Docker Scout.

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
└── 03-sbom-docker-scout
    └── sbom-report.json
```