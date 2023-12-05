# Hands-On OpenTelemetry Collector

Hands-On configuração do coletor OpenTelemetry e exploração dos dados no Grafana. 
Neste treinamento será utilizado o Docker para execução da aplicação de exemplo e do coletor.
Os dados serão enviados para o Grafana Cloud, onde serão armazenados os logs, os traces e métricas.

### Requisitos

Inicialmente é necessário configurar os requisitos para trabalharmos com o coletor Opentelemetry e Grafana.

Os requisitos são:
- Conta do Grafana Cloud
- Docker Desktop for Windows

Software opcionais:
- [VS Code](https://code.visualstudio.com/download) - Editor de código open source.
- [Extensão para o VSCode - REST Client](https://marketplace.visualstudio.com/items?itemName=humao.rest-client) - Extensão que permite realizar chamadas a APIs REST.
- [DevToys](https://devtoys.app/) - DevToys é um aplicativo para Windows que oferece uma coleção de ferramentas úteis para desenvolvedores. Ele inclui recursos como um comparador de texto, um verificador de JSON, um codificador/decodificador de URL, entre outros. É uma ferramenta útil para tarefas rápidas de desenvolvimento e depuração.

### Criar uma conta no Grafana Cloud

Vamos utilizar o Grafana para exibir os dados coletados, o Grafana Cloud disponibiliza uma conta gratuita com vários recursos já configurados que permite rapidamente visualizar os dados que iremos coletar da aplicação.

Acessar o link abaixo e clicar no botão "Create free account" para criar a conta gratuíta:
- [Grafana Cloud](https://grafana.com/products/cloud/)

### Instalação do Docker Desktop for Windows

O primeiro passo é ler a documentação do Docker que explica os requisitos para a instalação do Docker Desktop for Windows:

- [Requisitos para o Docker Desktop for Windows](https://docs.docker.com/desktop/install/windows-install/#system-requirements)

Após a leitura e configuração dos requisitos, agora é fazer o download do Docker Desktop for Windows e a instalação.

- [Instalar o Docker Desktop for Windows](https://docs.docker.com/desktop/install/windows-install/#install-docker-desktop-on-windows)

Com isso temos o ambiente preparado para executar os contêineres Docker.

Próximo: [Atividade 01](docs/01-atividade.md)