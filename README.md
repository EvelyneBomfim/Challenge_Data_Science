# Challenge Dados da Alura

Somos uma equipe de dados que foi contratada para fazer parte do banco digital internacional chamado **Alura Cash**. No primeiro dia, a diretoria financeira nos convocou para uma reunião para informar que, recorrentemente, estão surgindo pessoas inadimplentes após a liberação de créditos.

Por conta disso, foi solicitada uma solução para diminuir as perdas financeiras geradas por pessoas mutuárias que não quitam suas dívidas. Nos foi informado também que teríamos o prazo de um mês para encontrar essa solução e apresentá-la à diretoria financeira. Sendo assim, solicitamos um conjunto de dados contendo as informações de clientes, da solicitação de empréstimo, do histórico de crédito, bem como se a pessoa mutuária é inadimplente ou não.

## 1° semana

O conjunto de dados foi disponibilizado em dump, sendo necessário o uso do MySQL para manipulação. Logo, verificamos que os dados estavam divididos em quatro tabelas, em que uma delas relacionava as outras três.

Ao analisar os dados, percebemos que não havia padronização. As tabelas não possuiam suas chaves-primárias ou estrangeiras, não havia padrão nos tipos de colunas e em alguns valores, além de estar tudo em inglês.

Foi efetuada a correção das inconsistências, padronizado os valores, traduzido as colunas e os campos para o português.

Para dar continuidade ao trabalho, foram unidos os valores utilizando a tabela de relacionamento, juntando-os através dos ids. Assim, foi possível efetuar a exportação do conjunto de dados para um arquivo csv.

-- Para leitura da minha análise mais detalhada, acesse o meu perfil no [Medium](https://medium.com/@evelynebomfim/challenge-dados-da-alura-1-semana-26d00116b729).

[Dicionário do meu conjunto de dados](https://github.com/EvelyneBomfim/Challenge_Data_Science/tree/main/Dados)


[Dados originais do Challenge](https://github.com/Mirlaa/Challenge-Data-Science-1ed)

[Dicionário do conjunto de dados original](https://github.com/Mirlaa/Challenge-Data-Science-1ed/tree/main/Dados)

## 2° semana

Nesta etapa, o desafio foi a construção de um modelo Machine Learning para predizer quais clientes poderiam ou não se tornar um inadimplente.

Antes de iniciar o modelo ML, foi feito o tratamento do conjunto de dados coletado da 1° etapa do desafio. Utilizando o Python, no Google Colab, foi feita a remoção de dados nulos, tratamento de ouliers, encoding, normalização e balanceamento das variáveis.

Em seguida, foram construídos três modelos de aprendizagem para serem comparados seus resultados: 
