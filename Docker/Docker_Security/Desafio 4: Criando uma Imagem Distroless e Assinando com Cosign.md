# Desafio 4: Criando uma Imagem Distroless e Assinando com Cosign

Após a análise e otimização da imagem Docker do Kube News, a equipe identificou a necessidade de reduzir ainda mais a superfície de ataque da aplicação. Para isso, foi decidido que a aplicação será empacotada utilizando imagens Distroless da Chainguard, garantindo que apenas as bibliotecas essenciais estejam presentes na imagem final.

Além disso, para aumentar a confiabilidade e rastreabilidade da imagem, será necessário utilizar o Cosign para assinar digitalmente a imagem antes de publicá-la. Isso garantirá que qualquer alteração ou comprometimento na imagem possa ser detectado, seguindo as melhores práticas de segurança na cadeia de suprimentos de software.

## Missão
1. Refatorar o Dockerfile, garantindo que:
      - A nova imagem utilize Distroless da Chainguard.
      - O ambiente seja o mais leve e seguro possível.
2. Construir a nova imagem Docker Distroless e nomeá-la como kube-news-distroless.
3. Publicar a imagem no Docker Hub.
4. Assinar a imagem com o Cosign, garantindo a verificação da integridade da imagem.
5. Salvar a assinatura gerada no arquivo cosign-signature.txt.
6. Criar um README.md contendo:
      - O nome e a URL da imagem no Docker Hub.
      - Instruções sobre como verificar a assinatura da imagem.

## Entrega
- Arquivo Dockerfile atualizado com a imagem Distroless da Chainguard.
- Arquivo cosign-signature.txt contendo a assinatura da imagem gerada pelo Cosign.
- Arquivo README.md contendo a URL da imagem no Docker Hub e instruções para validação.

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
└── 04-distroless-e-cosign
    ├── Dockerfile
    ├── README.md
    └── cosign-signature.txt
```