/* RESOLVENDO INCONSISTÊNCIAS TABELA EMPRESTIMOS*/

SELECT * FROM EMPRESTIMOS;

-- Verificando se há dados nulos na coluna LOAN_ID
SELECT LOAN_ID FROM EMPRESTIMOS
WHERE LOAN_ID IS NULL;

-- Transformando a coluna LOAN_ID em PRIMARY KEY (chave primária)
ALTER TABLE EMPRESTIMOS
ADD PRIMARY KEY (LOAN_ID);

-- A coluna LOAN_AMNT refere-se ao valor total do emprestimo solicitado,
-- mesmo que todos os campos sejam inteiros, os dados poderiam ser do tipo FLOAT
ALTER TABLE EMPRESTIMOS
MODIFY LOAN_AMNT FLOAT;

-- As colunas LOAN_INT_RATE e LOAN_PERCENT_INCOME são DOUBLE (15-16 dígitos de precisão)
-- porém os campos possuem poucos dígitos (no max 4), sendo possível utilizar o tipo FLOAT (7 dígitos de precisão) 
SELECT LOAN_INT_RATE FROM EMPRESTIMOS
GROUP BY LOAN_INT_RATE ORDER BY LOAN_INT_RATE;

SELECT LOAN_PERCENT_INCOME FROM EMPRESTIMOS
GROUP BY LOAN_PERCENT_INCOME ORDER BY LOAN_PERCENT_INCOME;

ALTER TABLE EMPRESTIMOS
MODIFY LOAN_INT_RATE FLOAT;

ALTER TABLE EMPRESTIMOS
MODIFY LOAN_PERCENT_INCOME FLOAT;

-- Traduzindo o nome das colunas
ALTER TABLE EMPRESTIMOS
CHANGE LOAN_ID ID_EMPRESTIMO VARCHAR(16);

ALTER TABLE EMPRESTIMOS
CHANGE LOAN_INTENT MOTIVO VARCHAR(32);

ALTER TABLE EMPRESTIMOS
CHANGE LOAN_GRADE PONTUACAO VARCHAR(1);

ALTER TABLE EMPRESTIMOS
CHANGE LOAN_AMNT VALOR_TOTAL_EMPRESTIMO FLOAT;

ALTER TABLE EMPRESTIMOS
CHANGE LOAN_INT_RATE TAXA_JUROS FLOAT;

ALTER TABLE EMPRESTIMOS
CHANGE LOAN_STATUS POSSIBILIDADE_INADIMPLENCIA INT;

ALTER TABLE EMPRESTIMOS
CHANGE LOAN_PERCENT_INCOME RENDA_PERCENTUAL FLOAT;

-- Traduzindo os campos da coluna MOTIVO
SELECT MOTIVO, COUNT(MOTIVO) FROM EMPRESTIMOS
GROUP BY MOTIVO ORDER BY MOTIVO;

UPDATE EMPRESTIMOS SET MOTIVO='Pessoal'
WHERE MOTIVO='Personal';

UPDATE EMPRESTIMOS SET MOTIVO='Educativo'
WHERE MOTIVO='Education';

UPDATE EMPRESTIMOS SET MOTIVO='Médico'
WHERE MOTIVO='Medical';

UPDATE EMPRESTIMOS SET MOTIVO='Empreendimento'
WHERE MOTIVO='Venture';

UPDATE EMPRESTIMOS SET MOTIVO='Melhora do lar'
WHERE MOTIVO='Homeimprovement';

UPDATE EMPRESTIMOS SET MOTIVO='Pagamento de débitos'
WHERE MOTIVO='Debtconsolidation';