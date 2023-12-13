# Atividade 1

Vamos entender um pouco o conceito de observabilidade e elementos de sofware que fazem parte da implementação da observabilidade numa aplicação.

### Observabilidade

Observabilidade em uma aplicação é a capacidade de entender o estado interno de um sistema apenas observando suas saídas. Isso é especialmente importante em ambientes de produção, onde você não tem acesso direto ao sistema. A observabilidade é alcançada através de três pilares principais: logs, métricas e rastreamento distribuído.

No contexto de observabilidade de uma aplicação, um log é um registro de eventos que ocorreram no sistema. Esses eventos podem incluir erros, transações, solicitações de usuários e qualquer outra atividade que ocorra dentro do sistema. Logs são essenciais para entender o que aconteceu no sistema em um determinado momento. Eles são frequentemente usados para diagnosticar problemas, monitorar o desempenho do sistema e realizar análises de segurança.

![Grafana Log](images/grafanalog.png)

![Grafana Log detalhe](images/grafanalog2.png)

O rastreamento (trace) é um dos pilares da observabilidade que permite acompanhar uma solicitação à medida que ela passa por vários serviços em um sistema distribuído. Cada operação que a solicitação passa é registrada, criando um "trace" ou rastreamento da solicitação. Isso permite que os desenvolvedores vejam exatamente como uma solicitação se move através do sistema, o que pode ser útil para identificar gargalos de desempenho, falhas ou outros problemas.

![Grafana Trace](images/grafanatrace.png)

Métricas são medidas quantitativas do comportamento do sistema ao longo do tempo. Elas podem incluir coisas como uso de CPU, memória, tempo de resposta de rede, número de solicitações por segundo, entre outros. As métricas são úteis para entender o desempenho geral do sistema, identificar tendências ao longo do tempo e alertar sobre condições anormais.

Esses três pilares permitem que os desenvolvedores e operadores entendam o que está acontecendo dentro de um sistema, identifiquem problemas e otimizem o desempenho.

### Grafana

Grafana é uma plataforma de análise e visualização de dados de código aberto. É comumente usada para visualizar séries temporais de dados de infraestrutura e aplicativos e criar painéis com gráficos ricos. Com Grafana, você pode criar alertas, notificações e ad-hoc explorar seus dados além de apenas visualizá-los. É muito usada em conjunto com outras ferramentas de observabilidade para monitorar o desempenho e a saúde de aplicações e sistemas.

- [Site Grafana](https://grafana.com/grafana/)

![Grafana Dashboard](images/grafanadashboard.png)

### Coletor OpenTelemetry

OpenTelemetry Collector é uma implementação de código aberto que permite aos desenvolvedores coletar telemetria de seus aplicativos e exportá-la para várias plataformas de análise. Ele suporta a coleta de métricas, rastreamentos e logs.

O Collector é projetado para ser um componente intermediário, o que significa que pode receber dados de várias fontes, transformá-los conforme necessário e, em seguida, exportá-los para vários destinos. Isso torna o Collector uma peça central na arquitetura de observabilidade, pois permite a interoperabilidade entre diferentes sistemas e ferramentas.

- [OpenTelemetry Collector](https://opentelemetry.io/docs/collector/)

### Armazenamento das informações

Para armazenar as informações dos logs, traces e métricas são utilizados "Bancos de dados" específicos para cada tipo de informação, no caso do Grafana Cloud os softwares utilizados são os seguintes:

| Tipo de informação | Software de armazenamento | Documentação |
| -------- | -------- | -------- |
| Log  | Loki  | [Documentação Loki](https://grafana.com/docs/loki/latest/get-started/overview/) |
| Trace  | Tempo  | [Documentação Tempo](https://grafana.com/docs/tempo/latest/getting-started/) |
| Métrica  | Prometheus  | [Documentação Prometheus](https://prometheus.io/docs/introduction/overview/) |

### Arquitetura da solução

O Grafana Cloud nos provê os serviços do Grafana, Loki, Tempo e Prometheus, sendo que não é necessário a instalação e configuração desses softwares.
O coletor OpenTelemetry também é open source, este elemento geralmente é instalado próximo a aplicação que está sendo monitorada.
Como esses softwares são open source, é possível a instalação deles num ambiente on premise ou na nuvem.

O diagrama abaixo apresenta a arquitetura dos componentes:

![diagrama dos componentes](images/opentelemetrydiagram.png)

### Copiar os arquivos do hands-on

Para prosseguir será necessário copiar os arquivos do hands-on, para isso realizar o clone do repositório git ou o download do zip.

![githubproject](images/githubproject.png)

Próxima atividade: [Atividade 02](02-atividade.md)

