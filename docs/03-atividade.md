# Atividade 3

### Configurar exportação dos traces.

Vamos configurar o coletor para exportar os traces para o Tempo.

#### Passo 1
Clicar na opção "Send Traces" do Tempo.

![Tempo](images/Tempo.png)

Copiar a url do Tempo (sem o https:// e sem /tempo), adicionar :433 no final e colar na tag {Tempo endpoint} do otlp no arquivo collector.yaml.

![urltempo](images/tempendpoint.png)

![urltempocollector](images/tempourlcollector.png)

Clicar em "Generate now" para gerar o token de acesso ao Tempo.

![tempotoken](images/tempotoken.png)

No popup informar o nome do token e clicar em "Create token".

![tempotoken2](images/tempotoken2.png)


Copiar o token gerado e guardar num arquivo texto.

![tempotoken3](images/tempotoken3.png)


Copiar o Username e usando um encoder base64, encodar a string "username:token". Para isso você pode utilizar o DevToys uma ferramenta gratuida para Windows que possui várias funções úteis para o dia a dia.

- [Download DevToys](https://devtoys.app/)

Você também pode usar um o site https://www.base64encode.org/ para fazer o encode.

![tempotoken4](images/tempotoken4.png)

![tempotoken5](images/tempotoken5.png)

Copiar a string resultante do encoding, substituir a tag {base64 encoded username:password} da configuração do Tempo no arquivo collector.yaml e salvar o arquivo.

![tempotokencollector](images/tempotokencollector.png)


Próxima atividade: [Atividade 04](04-atividade.md)


