# Trabalho final - Diógines Goldoni

## Contexto
Unindo as disciplinas de `Técnicas de Programação`, `Mineração de Dados` e `Trabalho Individual I`, este trabalho tem por objetivo facilitar a reprodutibilidade da análise de clusterização efetuada sob um dataset de 10000 amostras de equações algébricas de 1° grau resolvidas, no Sistema Tutor Inteligente Pat2Math, por alunos do 7° ano, a fim de agrupar os tipos de equações que posam um maior nível de dificuldade para os alunos.


## Estrutura
![Estrutura de serviços](https://github.com/dicogoldoni/tecnicasProg_trabFinal_dioginesGoldoni/blob/master/images/docker_image.png)

### Imagens utilizadas:
- `postgres:9.6`: PostgreSQL é o banco de dados utilizado para persistência do dataset que será gerado no projeto.
- `jupyter/datascience-notebook`: Jupyter é a aplicação web open-source utilizada para o desenvolvimento interativo em Python.
### Volumes:
- /data: O código `init.sql` utilizado para a criação do banco de dados fica aqui.
- /notebooks: Aqui fica o código fonte do Jupyter Notebook, além do dataset em formato `.csv` e um script shell para instalar a biblioteca `psycopg2`.


### Como utilizar:
1. Utilize o commando `docker-compose up`, preferencialmente não utilizando o parâmetro `-d`, a fim de visualizar o log da imagem abaixo, que sinaliza o fim da inicialização: 
![Levantando o container](https://github.com/dicogoldoni/tecnicasProg_trabFinal_dioginesGoldoni/blob/master/images/container_up.png)

2. Após a inicialização, para verificar se a tabela `equations` foi criada com sucesso, utilize o comando `docker-compose exec postgres psql -U ppgca -c '\l'`:
![Checando o banco de dados](https://github.com/dicogoldoni/tecnicasProg_trabFinal_dioginesGoldoni/blob/master/images/database1.png)

3. Para acessar o Jupyter notebook que contém o  código Python, utilize o browser para acessar `localhost:8888` e utilize a senha `ppgca`:
![Jupyter login](https://github.com/dicogoldoni/tecnicasProg_trabFinal_dioginesGoldoni/blob/master/images/jupyter_1.png)


4. Selecione o notebook `DataMining_trabFinal.ipynb`
![Jupyter notebook](https://github.com/dicogoldoni/tecnicasProg_trabFinal_dioginesGoldoni/blob/master/images/jupyter2.png)


4. Pronto, agora é só utilizá-lo:
![Jupyter notebook](https://github.com/dicogoldoni/tecnicasProg_trabFinal_dioginesGoldoni/blob/master/images/jupyter3.png)
