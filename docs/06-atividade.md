# Atividade 6

### Executar a aplicação e visualizar as métricas no Grafana
Vamos executar uma aplicação Java com a observabilidade configurada, essa aplicação foi implantada numa imagem docker.
Será utilizado o docker compose para subir 2 containeres, um com a aplicação Java e outra com o coletor.

#### Passo 1
Abrir um linha de comando e ir até a pasta appjava, e executar o comando docker

```bash
docker-compose -f docker-compose-java.yml up -d
```

![dockercomposeup](images/dockercomposeup.png)

Executar o request para confirmar que a aplicação está respondendo.



Se o request não funcionar, existe como verificar no Docker Desktop se a aplicação está sendo executada de modo correto.




#### Passo 2
Acessar o Grafana Cloud para visualizar as métricas.

- [https://grafana.com/](https://grafana.com/)

Clicar na opção "Launch" do item Grafana.

![Grafana Launch](images/grafanalaunch.png)

#### Passo 3
Clicar em "Home" e no item "Explore".

![Grafana Explore](images/grafanaexplore.png)

Selecionar o item "Prometheus" em Outline.

![Grafana Prometheus](images/grafanaprometheus.png)

Filtrar a métrica ...

#### Passo 4
Alterar a fonte de dados para o "Loki" em Outline.

Filtrar o servicename ...


#### Passo 5
Alterar a fonte de dados para o "Tempo" em Outline.

Filtrar o servicename ...



### Passo 6
Vamos forçar um erro de acesso ao banco de dados, habilitando o Firewall do banco de dados no Azure.


Para parar a execução dos conteineres executar o comando:

```bash
docker-compose -f docker-compose-java.yml down
```
