# Desafio 2: Melhorando o Ambiente com Extensões e Ferramentas

Após a implementação inicial do DevContainer para o Kube News, a equipe de desenvolvimento da Rota42 percebeu que ainda existem pontos a serem melhorados no ambiente. Atualmente, algumas ferramentas essenciais para a produtividade dos desenvolvedores precisam ser instaladas manualmente dentro do container, o que pode gerar inconsistências e atrasar o desenvolvimento.

Para resolver isso, será necessário customizar ainda mais o DevContainer, adicionando extensões essenciais para o VS Code, otimizando a experiência de desenvolvimento e garantindo um ambiente mais eficiente e pronto para codificação. Além disso, a equipe identificou que algumas configurações adicionais, como o uso de volumes persistentes, podem evitar a perda de dados do banco de dados PostgreSQL.

### Missão
1. Adicionar extensões no DevContainer, garantindo que ferramentas essenciais para o projeto sejam carregadas automaticamente no VS Code ao iniciar o ambiente.
2. Modificar o arquivo .devcontainer/devcontainer.json para incluir as seguintes extensões:
      - REST Client ([link](https://marketplace.visualstudio.com/items?itemName=humao.rest-client)) - Para testar APIs diretamente no VS Code.
      - ESLint ([link](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)) - Para padronização de código JavaScript.
      - Docker ([link](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)) - Para integração com Docker dentro do VS Code.
3. Configurar volumes persistentes no docker-compose.yml, garantindo que o banco de dados PostgreSQL mantenha os dados entre reinicializações.
4. Criar comandos personalizados para garantir que as dependências do projeto sejam instaladas automaticamente ao iniciar o DevContainer.
      - O comando deve executar npm install assim que o ambiente for iniciado, garantindo que todas as dependências do projeto estejam disponíveis.
5. Testar a nova configuração, garantindo que todas as ferramentas estejam disponíveis e funcionando corretamente.

### Entrega
A entrega deve ser feita pelo fork do repositório [Kube News](https://github.com/KubeDev/kube-news), com a implementação do DevContainer dentro do projeto.
Os arquivos esperados dentro do repositório forkado são:
```text
kube-news/
└── .devcontainer/
      ├── devcontainer.json   # Atualizado com extensões e configurações adicionais
      ├── Dockerfile          # Ajustando, se necessário
      └── docker-compose.yaml # Configurado com volumes persistentes
```