## Fake Shop - Distroless + Cosign

Esta versão do Fake Shop foi empacotada utilizando imagem [**Distroless da Chainguard**](https://cgr.dev/chainguard/python), reduzindo a superfície de ataque da aplicação.
Além disso, a imagem foi **assinada digitalmente com o Cosign**, garantindo integridade e confiabilidade na cadeia de suprimentos.

#### Estrutura da Imagem
- **Base**: Chainguard Python (distroless) para segurança e leveza.
- **Multi-stage build**:
  - **Builder**: Instala dependências Python em um ambiente com ferramentas.
  - **Final**: Copia apenas o necessário para o runtime, sem shell ou ferramentas extras.
- **Configurações**:
  - Usuário 1000 para execução segura.
  - Variável `PROMETHEUS_MULTIPROC_DIR=/tmp/metrics` para métricas multiprocess.
  - Entrypoint personalizado (`entrypoint.py`) para inicializar diretório de métricas e executar migrações Flask.

#### Problemas Encontrados e Soluções
1. **Execução do entrypoint.sh e permissões em `/tmp/metrics`**:
   - **Problema**: Imagem distroless não possui suporte a bash, e como o intuito é segurança, não fazia sentido instalá-lo. Além disso, erro de permissão ao escrever arquivos de métricas.
   - **Solução**: Usar `entrypoint.py` para executar `flask db upgrade`, `gunicorn` e criar o diretório com permissões 777 antes de iniciar a aplicação.
     ```python
     # entrypoint.py
     import os
     import stat
     import subprocess

     metrics_dir = "/tmp/metrics"
     if not os.path.exists(metrics_dir):
         os.makedirs(metrics_dir)
     os.chmod(metrics_dir, stat.S_IRWXU | stat.S_IRWXG | stat.S_IRWXO)

     subprocess.run(["python", "-m", "flask", "db", "upgrade"], check=True)
     subprocess.run(["gunicorn", "--bind", "0.0.0.0:5000", "index:app"], check=True)
     ```

2. **Importação do SQLAlchemy**:
   - **Problema**: Não existe workaround seguro para rodar SQLAlchemy 2.0.16 com Python 3.13. Não sendo possível utilizar versão anterior do Python, pois Chainguard só libera imagens com Python 3.12/3.11 mediante solicitação.
   - **Solução**: Utilizado `SQLAlchemy==2.0.43` no `requirements.txt`.

3. **Importação do psycopg3**:
   - **Problema**: Falta da biblioteca `libpq` no runtime distroless.
   - **Solução**: Usar `psycopg[binary]==3.2.3` no `requirements.txt`, que inclui a biblioteca necessária.

## Imagem publicada no Docker Hub e pronta para validação

### Imagem no Docker Hub
- Nome: `gilbertomteodoro/fake-shop-distroless:v1`
- URL: [Docker Hub](https://hub.docker.com/r/gilbertomteodoro/fake-shop-distroless/tags)

### Pré-requisitos
- Docker instalado e autenticado (`docker login`).
- Cosign instalado: [guia de instalação](https://docs.sigstore.dev/cosign/system_config/installation/).
- Arquivos no repositório:
  - `./validar.pub` → chave pública em formato PEM.
  - `./cosign-signature.txt` → assinatura gerada pelo Cosign.

### Como verificar a imagem
1. Fazer pull da imagem:
   ```bash
   docker pull gilbertomteodoro/fake-shop-distroless:v1
   ```
2. Validar a assinatura usando a chave pública:
   ```bash
   cosign verify --key ./validar.pub gilbertomteodoro/fake-shop-distroless:v1
   ```
   - O comando deve retornar algo semelhante a:
     ```text
     Verification for index.docker.io/gilbertomteodoro/fake-shop-distroless:v1 --
     The following checks were performed on each of these signatures:
       - The cosign claims were validated
       - Existence of the claims in the transparency log was verified offline
       - The signatures were verified against the specified public key
     ```
   - Se aparecer essa validação, significa que a imagem foi autenticada com sucesso.

#### Conclusão
A imagem distroless reduz significativamente a superfície de ataque, com tamanho otimizado e execução segura. A assinatura com Cosign garante integridade na distribuição. Para produção, considere monitoramento contínuo e testes de carga. Próximos passos incluem integração com Kubernetes ou CI/CD pipelines.