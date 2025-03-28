-- DML SCRIPT - BANCO DE DADOS PROJETO FASE 2

-- CONSULTAS AO BANCO DE DADOS:

-- a) Selecionar CPFs e nomes dos trabalhadores que ganham mais do que 2.500,00;

CREATE OR REPLACE VIEW SALARIO_ACIMA AS
SELECT cpf, nome FROM TRABALHADORES
WHERE salario > 2500.00

-- d) Calcular e exibir a folha de pagamento de cada obra. Uma folha de pagamento é determinada pela soma dos salários dos seus trabalhadores;

CREATE OR REPLACE VIEW FOLHA_PAGAMENTO AS 
SELECT codigo_obra, SUM(salario) as total_obras FROM TRABALHADORES
GROUP BY codigo_obra

-- f) Listar as categorias de equipamentos utilizadas nas obras da construtora ALFA.

CREATE OR REPLACE VIEW CATEGORIAS_ALFA AS
SELECT cat.descricao as categorias, count(*) as quantidade
FROM CATEGORIAS cat
JOIN EQUIPAMENTOS equ
ON (cat.codigo_categoria = equ.codigo_categoria)
JOIN EQUIPAMENTOS_OBRAS eqo
ON (equ.codigo_equipamento = eqo.codigo_equipamento)
WHERE eqo.codigo_obra in (
    SELECT codigo_obra FROM OBRAS
    WHERE codigo_construtora = 10
)
GROUP BY cat.descricao

-- b) Selecionar nomes e salários dos trabalhadores da empresa ALFA, ordenados em ordem alfabética crescente;

CREATE OR REPLACE VIEW ALFA_TRABALHADORES AS
SELECT nome, salario
FROM TRABALHADORES
WHERE codigo_obra in (
    SELECT codigo_obra FROM OBRAS
    WHERE codigo_construtora = 10
)
ORDER BY nome ASC

-- AUTOR: PEDRO JOSÉ DOS PRAZERES LOBÃO
-- DATA: 28/03/2025

