# Desafio 4: Criando um DevContainer Completo para o Fake Shop

Após a implementação bem-sucedida do DevContainer no Kube News, a equipe da Rota42 decidiu expandir essa abordagem para outro projeto importante: o Fake Shop.

O Fake Shop é um projeto baseado em Python (Flask) e, assim como o Kube News, depende de um banco de dados PostgreSQL. Para garantir que os desenvolvedores tenham um ambiente de trabalho consistente e que a transição para produção seja mais eficiente, é necessário estruturar corretamente os ambientes de desenvolvimento e produção.

Agora, o desafio é replicar e adaptar as configurações do DevContainer para o Fake Shop, garantindo que os desenvolvedores possam trabalhar no projeto sem precisar configurar o ambiente manualmente e que a aplicação possa ser executada corretamente tanto em desenvolvimento quanto em produção.

### Missão
1. Fazer um fork do repositório do Fake Shop e trabalhar na implementação do DevContainer dentro do repositório forkado.
2. Criar a estrutura do DevContainer para o Fake Shop, utilizando Python e Flask.
3. Criar dois Dockerfiles distintos:
      - .devcontainer/Dockerfile.dev → Contendo ferramentas de desenvolvimento, como debug mode.
      - Dockerfile → Otimizado para produção, garantindo menor tamanho da imagem e melhor segurança.
4. Criar um compose.yml para rodar a aplicação no ambiente de produção.
5. Criar um .devcontainer/docker-compose.override.yml para modificar o comportamento do compose.yml, permitindo que o ambiente funcione corretamente no modo desenvolvimento com o DevContainer.
6. Adicionar variáveis de ambiente para separar os ambientes de desenvolvimento e produção.
7. Adicionar extensões ao DevContainer, garantindo que as seguintes ferramentas sejam carregadas automaticamente no VS Code ao iniciar o ambiente:
      - Python ([link](https://marketplace.visualstudio.com/items?itemName=ms-python.python)) - Para suporte ao desenvolvimento em Python e Flask.
      - REST Client ([link](https://marketplace.visualstudio.com/items?itemName=humao.rest-client)) - Para testar APIs diretamente no VS Code.
      - Docker ([link](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)) - Para integração com Docker dentro do VS Code.
8. Documentar as instruções de uso no README.md, explicando claramente:
      - Como rodar o ambiente em produção usando compose.yml.
      - Como rodar o ambiente em desenvolvimento com o DevContainer, utilizando compose.yml combinado com .devcontainer/docker-compose.override.yml.

### Entrega
A entrega deve ser feita pelo fork do repositório [Fake Shop](https://github.com/KubeDev/fake-shop), com a implementação dos arquivos para os ambientes de desenvolvimento e produção.

Os arquivos esperados dentro do repositório forkado são:
```text
fake-shop/
├── .devcontainer/
│     ├── devcontainer.json # Configuração do DevContainer com extensões e ambientes
│     ├── Dockerfile        # Dockerfile para desenvolvimento
│     └── docker-compose.override.yaml  # Ajustes para desenvolvimento dentro do DevContainer
├── compose.yml  # Docker Compose para produção
├── Dockerfile   # Dockerfile de produção
└── README.md    # Documentação explicando como rodar os ambientes
```