# Atividade 6

### Simular um erro na aplicação e visualizar as métricas no Grafana
Vamos parar o container do banco de dados e com isso teremos um erro na aplicação Java, e vamos ver como o erro é apresentado no Grafana.


#### Passo 1
Para parar o container do banco de dados 

![dockercomposeup](images/dockercomposeup.png)

**Observação 1** - A primeira execução pode demorar, se as imagens não foram baixadas anteriormente.
**Observação 2** - Quando todos os conteineres estiverem no estado "Started", esperar uns 90 segundos até que o script SQL seja executado para criar a base de dados de exemplo.

#### Passo 2
Executar o request a API de teste para confirmar que a aplicação está respondendo, para isso abrir o arquivo request.http da pasta appjava com o VSCode.
Para executar o request clicar no texto "Send Request".
Esse request pode ser executado no Postman se preferirem.

![request](images/requesthttp.png)

A resposta deverá trazer um registro como na imagem.

![response](images/requesthttpresponse.png)

Se o request não funcionar, existe como verificar no Docker Desktop se a aplicação está sendo executada de modo correto.

![dockerdesktop](images/dockerdesktop.png)


#### Passo 3
Acessar o Grafana Cloud para visualizar o Trace do chamado da API.

- [https://grafana.com/](https://grafana.com/)

Clicar na opção "Launch" do item Grafana.

![Grafana Launch](images/grafanalaunch.png)

#### Passo 4
Clicar em "Home" e no item "Explore".

![Grafana Explore](images/grafanaexplore.png)

Selecionar o item "Tempo" em Outline, o nome do item deve ter o seguinte formato **grafanacloud-{nomedaconta}-traces**.

![Explore tempo](images/exploretempo.png)

Para visualizar os traces, no item "Query Type", clicar na opção "Search". Depois clicar no botão "Run Query".

![querytrace](images/querytrace.png)

Clicar no "Trace ID" para ver os detalhes do trace.

![viewtrace](images/viewtrace.png)

Podemos ver a árvore de chamadas, o tempo que cada item levou para ser executado, ao clicar no item podemos ver os detalhes da execução do item.

![viewtracedetails](images/viewtracedetails.png)

#### Passo 4
Agora vamos visualizar o log da aplicação.
Alterar a fonte de dados para o "Loki" em Outline, o nome do item deve ter o seguinte formato **grafanacloud-{nomedaconta}-logs**.

![Explore Loki](images/exploreloki.png)

Para visualizar o log, no item "Label Filters", selecionar "AppJava". Depois clicar no botão "Run Query".

![querylog](images/querylog.png)

Pode ser que nenhum registro seja apresentado, isso se deve ao filtro padrão de tempo, para alterar isso, clicar no ícone do relógio no canto superior, selecionar o item "Last 3 hours", e clicar novamente em "Run Query".

![filterlog](images/filterlog.png)

Agora devem ser apresentados os registros de log das últimas 3 horas da aplicação.

![viewlog](images/viewlog.png)

#### Passo 5
Agora vamos visualizar as métricas da aplicação.
Alterar a fonte de dados para o "Prometheus" em Outline, o nome do item deve ter o seguinte formato **grafanacloud-{nomedaconta}-prom**. 

![Explore Prometheus](images/exploremetrics.png)

Vamos apagar a query e criar outra, clicar no ícone da lixeira a direta.

![delete query](images/clearquery.png)

Agora vamos adicionar um query, clicando em "Add query".

![add query](images/addquery.png)

Para selecionar a métrica a ser visualizada, clicar na opção "Metrics browser", e selecionar o item "process_runtime_jvm_cpu_utilization_ratio" 

![selectmetric](images/selectmetric.png)

Selecionar o item "Job" no item "Select label".

![selectmetricjob](images/selectmetricjob.png)

Selecionar o item "Handson/AppJava" no item "Select value".

![selectmetricjobvalue](images/selectmetricjobvalue.png)

Para visualizar a métrica clicar no botão "Run Query".

![querymetric](images/querymetric.png)


Próxima atividade: [Atividade 07](07-atividade.md)

### Passo 6

Vamos forçar um erro de acesso ao banco de dados, habilitando o Firewall do banco de dados no Azure.


Para parar a execução dos conteineres executar o comando:

```bash
docker-compose -f docker-compose-java.yml down
```
