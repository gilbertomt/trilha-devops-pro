# Desafio 1: DevContainer Completo para o Kube News

A equipe da Rota42 escolheu os projetos Kube News e Fake Shop para testar a implementação de DevContainers no fluxo de desenvolvimento. O objetivo é garantir que qualquer desenvolvedor consiga iniciar o projeto sem precisar configurar manualmente dependências, bancos de dados ou ferramentas adicionais.

Atualmente, o Kube News é um projeto baseado em Node.js que depende de um banco de dados PostgreSQL. A instalação manual dessas dependências pode levar a erros de compatibilidade e inconsistências entre os ambientes dos desenvolvedores.

Para resolver isso, será necessário criar um ambiente DevContainer completo, que inclua todas as dependências essenciais e esteja pronto para ser executado no VS Code DevContainers.

### Missão
1. Fazer um fork do repositório do Kube News e trabalhar na implementação do DevContainer dentro do repositório forkado.
2. Criar a configuração do DevContainer para o Kube News, configurando um ambiente baseado em Node.js.
3. Adicionar um banco de dados PostgreSQL ao DevContainer.
4. Criar um arquivo .devcontainer/devcontainer.json para definir as configurações do ambiente.
5. Configurar um Dockerfile para desenvolvimento, garantindo que a aplicação rode dentro do container.
6. Criar um docker-compose.yml para orquestrar os serviços necessários, incluindo a aplicação e o banco de dados.
7. Garantir que o ambiente seja iniciado corretamente no VS Code ao abrir o repositório.

### Entrega Esperada
A entrega deve ser feita pelo fork do repositório [Kube News](https://github.com/KubeDev/kube-news), com a implementação do DevContainer dentro do projeto.

Os arquivos esperados dentro do repositório forkado são:
```text
kube-news/
└── .devcontainer/
      ├── devcontainer.json
      ├── Dockerfile
      └── docker-compose.yaml
```