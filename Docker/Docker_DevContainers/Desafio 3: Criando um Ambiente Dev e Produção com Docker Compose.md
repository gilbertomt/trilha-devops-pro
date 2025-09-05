# Desafio 3: Criando um Ambiente Dev e Produção com Docker Compose

Após a configuração inicial do DevContainer para o Kube News, a equipe da Rota42 identificou que, embora o ambiente de desenvolvimento esteja funcionando perfeitamente, a transição para o ambiente de produção ainda não está bem definida.

Atualmente, o mesmo Dockerfile está sendo utilizado para desenvolvimento e produção, o que não é uma boa prática, pois ambientes distintos possuem necessidades diferentes. O ambiente de desenvolvimento precisa de ferramentas adicionais, como hot reload, enquanto a versão de produção deve ser otimizada, contendo apenas o necessário para rodar a aplicação com segurança e eficiência.

Para resolver isso, será necessário separar os ambientes, criando uma estrutura onde seja possível alternar facilmente entre desenvolvimento e produção utilizando Docker Compose e o DevContainer.

### Missão
1. Criar dois Dockerfiles distintos:
      - .devcontainer/Dockerfile.dev → Contendo ferramentas de desenvolvimento, como hot reload.
      - Dockerfile → Otimizado para produção, sem dependências desnecessárias.
2. Criar um compose.yml para rodar a aplicação no ambiente de produção, garantindo que todas as dependências sejam carregadas corretamente.
3. Criar um .devcontainer/docker-compose.override.yml para modificar o comportamento do compose.yml, permitindo que o ambiente funcione corretamente no modo desenvolvimento com o DevContainer.
4. Adicionar variáveis de ambiente para que seja possível diferenciar os dois ambientes.
5. Documentar as instruções de uso no README.md, explicando claramente:
Como rodar o ambiente em produção usando compose.yml.

### Entrega
A entrega deve ser feita pelo fork do repositório [Kube News](https://github.com/KubeDev/kube-news), com a implementação dos arquivos para os ambientes de desenvolvimento e produção.
Os arquivos esperados dentro do repositório forkado são:
```text
kube-news/
├── .devcontainer/
│     ├── devcontainer.json
│     ├── Dockerfile
│     └── docker-compose.override.yaml # Ajustes para desenvolvimento dentro do DevContainer
├── compose.yml # Docker Compose para produção
├── Dockerfile   # Dockerfile de produção
└── README.md    # Documentação explicando como rodar os ambientes
```