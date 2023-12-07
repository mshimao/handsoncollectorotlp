# Atividade 4

### Configurar exportação dos logs.

Vamos configurar o coletor para exportar os traces para o Loki.

#### Passo 1
Clicar na opção "Send Logs" do Loki.

![Loki](images/loki.png)

Copiar a url do Loki (sem o https://) e colar na tag {Loki url} do Loki no arquivo collector.yaml.

![urlloki](images/lokiurl.png)

![urllokicollector](images/lokiurlcollector.png)

Clicar em "Generate now" para gerar o token de acesso ao Loki.

![lokitoken](images/lokitoken.png)

No popup informar o nome do token e clicar em "Create token".

![lokitoken2](images/lokitoken2.png)


Copiar o token gerado e colar na tag {token} da url do Loki no arquivo collector.yaml.

![lokitoken3](images/lokitoken3.png)

![lokitoken4](images/lokitoken4.png)

Copiar o user e colar e substituir a tag {user} da configuração do Loki no arquivo collector.yaml e salvar o arquivo.

![lokitoken5](images/lokitoken5.png)

![lokitoken6](images/lokitoken6.png)



Próxima atividade: [Atividade 05](05-atividade.md)


