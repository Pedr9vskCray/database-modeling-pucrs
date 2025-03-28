-- DML SCRIPT - BANCO DE DADOS PROJETO FASE 2

-- NOVA CONSTRUTORA COM MEU NOME:

-- TABELA CONSTRUTORAS

INSERT INTO CONSTRUTORAS (codigo_construtora, nome)
VALUES (21, 'Pedro J. P. Lobão')

-- TABELA OBRAS

INSERT INTO OBRAS (codigo_obra, codigo_construtora, nome, logradouro, numero)
VALUES
(127, 21, 'Condomínio das Águias', 'Rua Senhor do Bonfin', '212')

INSERT INTO OBRAS (codigo_obra, codigo_construtora, nome, logradouro, numero, complemento)
VALUES
(44, 21, 'Edifício Praia Azul', 'Rua Luís Amorim', '111', 'Bloco 14')

-- TABELA TRABALHADORES

INSERT INTO TRABALHADORES (cpf, nome, salario, codigo_obra)
VALUES
('808.990.840-36', 'Daniel Araujo Fernandes', 3362.14, 44),
('409.638.360-05', 'Felipe Cunha Castro', 3089.00, 44),
('177.787.130-12', 'João Lima Barbosa', 2956.22, 44),
('449.451.630-90', 'Marcos Cavalcanti Sousa', 2914.99, 44),
('175.653.420-92', 'Luan Ferreira Goncalves', 2963.65, 44),
('476.588.830-42', 'Nicolas Santos Oliveira', 1687.00, 127),
('534.486.220-28', 'Murilo Cunha Pereira', 1889.04, 127),
('414.457.970-03', 'Vitor Silva Pereira', 3238.69, 127),
('576.767.340-37', 'Nicolash Rocha Correia', 1825.25, 127),
('834.818.070-23', 'Marcos Castro Carvalho', 3459.42, 127)

-- TABELA EQUIPAMENTOS_OBRAS

INSERT INTO EQUIPAMENTOS_OBRAS (codigo_obra, codigo_equipamento, data_inicio, data_fim)
VALUES
(44, 309, TO_DATE('21/02/2023', 'DD/MM/YYYY'), TO_DATE('21/03/2023', 'DD/MM/YYYY')),
(44, 301, TO_DATE('13/03/2023', 'DD/MM/YYYY'), TO_DATE('20/03/2023', 'DD/MM/YYYY')),
(44, 304, TO_DATE('14/05/2023', 'DD/MM/YYYY'), TO_DATE('19/06/2023', 'DD/MM/YYYY')),
(44, 302, TO_DATE('05/06/2023', 'DD/MM/YYYY'), TO_DATE('20/06/2023', 'DD/MM/YYYY'))