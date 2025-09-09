## Kube News - Distroless + Cosign

Esta versão do Kube News foi empacotada utilizando imagem [**Distroless da Chainguard**](https://cgr.dev/chainguard/node), reduzindo a superfície de ataque da aplicação.
Além disso, a imagem foi **assinada digitalmente com o Cosign**, garantindo integridade e confiabilidade na cadeia de suprimentos.

Imagem publicada no Docker Hub e pronta para validação:

### Imagem no Docker Hub
- Nome: `gilbertomteodoro/kube-news-distroless:v1`
- URL: [Docker Hub](https://hub.docker.com/r/gilbertomteodoro/kube-news-distroless/tags)

### Pré-requisitos
- Docker instalado e autenticado (`docker login`).
- Cosign instalado: [guia de instalação](https://docs.sigstore.dev/cosign/system_config/installation/).
- Arquivos no repositório:
  - `./validar.pub` → chave pública em formato PEM.
  - `./cosign-signature.txt` → assinatura gerada pelo Cosign.

### Como verificar a imagem

1. Fazer pull da imagem:
   ```bash
   docker pull gilbertomteodoro/kube-news-distroless:v1
   ```
2. Validar a assinatura usando a chave pública:
   ```bash
   cosign verify --key ./validar.pub gilbertomteodoro/kube-news-distroless:v1
   ```
    - O comando deve retornar algo semelhante a:
    ```text
    Verification for index.docker.io/gilbertomteodoro/kube-news-distroless:v1 --
    The following checks were performed on each of these signatures:
      - The cosign claims were validated
      - Existence of the claims in the transparency log was verified offline
      - The signatures were verified against the specified public key
    ```
    - Se aparecer essa validação, significa que a imagem foi autenticada com sucesso.