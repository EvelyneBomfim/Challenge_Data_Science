## Dicionário de dados por tabela

### dados_mutuarios

Tabela contendo os dados pessoais de cada solicitante

| Feature | Traduzido | Característica |
| --- | --- | --- |
|`person_id`|id_solicitante|ID da pessoa solicitante|
| `person_age` |idade_solicitante| Idade da pessoa - em anos - que solicita empréstimo |
| `person_income` |salario_anual| Salário anual da pessoa solicitante |
| `person_home_ownership` |situacao_propriedade| Situação da propriedade que a pessoa possui: *Alugada* (`Rent`), *Própria* (`Own`), *Hipotecada* (`Mortgage`) e *Outros casos* (`Other`) |
| `person_emp_length` |anos_trabalhados| Tempo - em anos - que a pessoa trabalhou |

### emprestimos

Tabela contendo as informações do empréstimo solicitado

| Feature | Traduzido | Característica |
| --- | --- | --- |
|`loan_id`|id_emprestimo|ID da solicitação de empréstico de cada solicitante|
| `loan_intent` |motivo| Motivo do empréstimo: *Pessoal* (`Personal`), *Educativo* (`Education`), *Médico* (`Medical`), *Empreendimento* (`Venture`), *Melhora do lar* (`Homeimprovement`), *Pagamento de débitos* (`Debtconsolidation`) |
| `loan_grade` |pontuacao| Pontuação de empréstimos, por nível variando de `A` a `G` |
| `loan_amnt` |valor_total_emprestimo| Valor total do empréstimo solicitado |
| `loan_int_rate` |taxa_juros| Taxa de juros |
| `loan_status` |possibilidade_inadimplencia| Possibilidade de inadimplência |
| `loan_percent_income` |renda_percentual| Renda percentual entre o *valor total do empréstimo* e o *salário anual* |


### historicos_banco

Histório de emprétimos de cada cliente

| Feature | Traduzido | Característica |
| --- | --- | --- |
|`cb_id`|id_historico|ID do histórico de cada solicitante|
| `cb_person_default_on_file` |historico_inadimplente| Indica se a pessoa já foi inadimplente: sim (`Y`,`YES`) e não (`N`,`NO`) |
| `cb_person_cred_hist_length` |anos_cartao_credito| Tempo - em anos - desde a primeira solicitação de crédito ou aquisição de um cartão de crédito |

### id

Tabela que relaciona os IDs de cada informação da pessoa solicitante

| Feature | Traduzido | Característica |
| --- | --- | --- |
|`person_id`|id_solicitante|ID da pessoa solicitante|
|`loan_id`|id_emprestimo|ID da solicitação de empréstico de cada solicitante|
|`cb_id`|id_historico|ID do histórico de cada solicitante|
