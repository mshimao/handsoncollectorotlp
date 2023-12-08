# Atividade 5

### Arquivo de configuração do coletor OpenTelemetry

Após a configuração dos exporters do Prometheus, Loki e Tempo, o arquivo collector.yaml ficaria parecido com o exemplo abaixo:

```yaml
receivers:
  otlp:
    protocols:
        grpc:          
        http:          

processors:   
  resource:
    attributes:
    - action: insert
      key: loki.format
      value: json
    - action: insert 
      key: service_name 
      value: AppJava
    - action: insert 
      key: service_namespace 
      value: Handson    
    - action: insert 
      key: loki.resource.labels 
      value: service_name,service_namespace 

exporters:
  prometheusremotewrite/grafana-cloud:
    endpoint: https://prometheus-us-central1.grafana.net/api/prom/push
    headers:
      authorization: Basic NjUyNDMzOmdsY19leUp5SWpvaU56UTBOVGczSWl3aWJpSTZJbk4wWVdOckxUUTNOVGd6TUMxb2JTMTNjbWwwWlMxb1lXNWtjMjl1SWl3aWF5STZJbUZsU1ZOUU1tUlRlalJtU3pnMmNUTTRPR1JyTWpWNk5pSXNJbTBpT25zaWNpSTZJblZ6SW4xOQ==

  otlp:
    endpoint: tempo-us-central1.grafana.net:443
    headers:
      authorization: Basic MzIxNzAwOmdsY10leUp2SWpvaU56UTBOVGczSWl3aWJpSTZJbk4wWVdOckxUUTNOVGd6TUMxb2RDMTNjbWwwWlMxMGIydGxiblJsYlhCdklpd2lheUk2SWpKYU9UazJSSHBRWTBoWU5HazNNRUl5V0c4ek0ycDVjU0lzSW0waU9uc2ljaUk2SW5WekluMTk=

  loki:
    endpoint: https://325187:glc_eyJvIjoiNzQ0NTg3IiwibiI7InN0YWNrLTQ3NTgzMC1obC13cml0ZS1oYW5kc29ubG9raSIsImsiOiI4M2w3cmdYUlBoMTUyMW1lMU02bnl5UDUiLCJtIjp7InIiOiJ1cyJ9fQ==@logs-prod3.grafana.net/loki/api/v1/push
    
  debug:
    verbosity: detailed

service:
  pipelines:
    metrics:
      receivers: [otlp]
      exporters: [prometheusremotewrite/grafana-cloud]
    traces:
      receivers: [ otlp]
      exporters: [ otlp]
    logs:
      receivers: [ otlp]
      processors: [resource]
      exporters: [ loki]
  telemetry:
    logs:
      level: debug
```

#### Processors

No OpenTelemetry Collector, é possível configurar vários tipos de processadores para manipular e transformar os dados de telemetria antes de serem exportados. Aqui estão alguns exemplos:

- **Attribute Processor**: Permite a modificação (inserção, atualização, exclusão) de atributos de span.

- **Batch Processor**: Agrupa os dados de telemetria em lotes por um período de tempo especificado antes de serem exportados.

- **Memory Limiter Processor**: Permite que você defina limites de memória para garantir que o coletor não exceda um certo limite.

- **Span Processor**: Permite a modificação de spans. Você pode usar isso para adicionar automaticamente atributos a todos os spans ou para renomear spans.

- **Filter Processor**: Filtra spans com base em certos atributos.

- **Probabilistic Sampler Processor**: Amostra spans com base em uma taxa de amostragem definida.

- **Rate Limiting Processor**: Limita a taxa de dados que passam pelo coletor.

- **Resource Processor**: Permite adicionar, atualizar ou excluir atributos de recursos.

Cada um desses processadores tem suas próprias configurações específicas que pode ser ajustado para atender às necessidades do projeto. Você pode encontrar mais detalhes na documentação oficial do OpenTelemetry.

- [Documentação do OpenTelemetry](https://grafana.com/grafana/)


No arquivo collector.yaml que estamos editando existem processadores para adicionar atributos:

![attributes](images/collectorprocessors.png)

Esses processadores estão sendo usados no pipeline do log.

![pipeline](images/collectorpipeline.png)

Próxima atividade: [Atividade 06](06-atividade.md)


