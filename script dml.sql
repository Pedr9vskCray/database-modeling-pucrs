-- DML SCRIPT - BANCO DE DADOS PROJETO FASE 2

-- IMPORTANTE: IREI INSERIR OS DADOS DA CONSTRUTORA ALFA PRIMEIRO E APÓS OS DADOS DA NOVA CONSTRUTORA!

-- DADOS CONSTRUTORA ALFA:

-- TABLE CONSTRUTORAS

INSERT INTO CONSTRUTORAS (codigo_construtora, nome, nome_fantasia)
VALUES (10, 'Construtora Alfa S.A', 'Alfa Incorporações')

-- TABLE TELEFONES 

INSERT INTO TELEFONES (telefone, codigo_construtora)
VALUES 
('(51) 3333-3334', 10),
('(51) 3333-3335', 10),
('(51) 3333-3336', 10)

-- TABLE OBRAS

INSERT INTO OBRAS (codigo_obra, codigo_construtora, nome, logradouro, numero, complemento)
VALUES
(115, 10, 'Condomínio dos Lagos', 'Travessa dos Lagos', '100', 'Norte'),
(116, 10, 'Condomínio Araras', 'Avenida Rio Grande', '22', 'Lado A')

-- TABLE TRABALHADORES

INSERT INTO TRABALHADORES (cpf, nome, salario, codigo_obra)
VALUES
('101.101.101-34', 'José Chaves', 2200.00, 115),
('102.102.102-91', 'Pedro Passos', 3502.18, 115),
('103.103.103-18', 'Maria Aparecida', 2800.87, 115),
('104.104.104-52', 'Carlos Dutra', 3100.00, 116),
('105.105.105-85', 'Mário Pires', 4323.29, 116)

-- TABLE CATEGORIAS

INSERT INTO CATEGORIAS (codigo_categoria, descricao)
VALUES
(1, 'Concretagem'),
(2, 'Acesso e Elevação'),
(3, 'Geradores e Compressores'),
(4, 'Andaimes'),
(5, 'Ferramenta Elétrica')

-- TABLE EQUIPAMENTOS

INSERT INTO EQUIPAMENTOS (codigo_equipamento, nome, valor_diaria, codigo_categoria)
VALUES
(301, 'Betoneira', 100.00, 1),
(302, 'Cortadora de Piso', 10.00, 1),
(303, 'Mangote', 30.50, 1),
(304, 'Guincho', 250.00, 2),
(305, 'Gerador', 451.00, 3),
(306, 'Piso Metálico', 150.00, 4),
(307, 'Furadeira de bancada', 65.00, 5),
(308, 'Parafusadeira', 37.00, 5),
(309, 'Plaina', 25.00, 5)

-- TABLE EQUIPAMENTOS_OBRAS

INSERT INTO EQUIPAMENTOS_OBRAS (codigo_obra, codigo_equipamento, data_inicio, data_fim)
VALUES
(115, 301, TO_DATE('18/03/2022', 'DD/MM/YYYY'), TO_DATE('24/10/2022', 'DD/MM/YYYY')),
(115, 304, TO_DATE('20/04/2022', 'DD/MM/YYYY'), TO_DATE('02/08/2022', 'DD/MM/YYYY')),
(115, 306, TO_DATE('06/07/2021', 'DD/MM/YYYY'), TO_DATE('18/07/2021', 'DD/MM/YYYY')),
(115, 307, TO_DATE('04/03/2022', 'DD/MM/YYYY'), TO_DATE('20/03/2022', 'DD/MM/YYYY')),
(115, 309, TO_DATE('04/08/2021', 'DD/MM/YYYY'), TO_DATE('10/08/2021', 'DD/MM/YYYY')),
(116, 304, TO_DATE('22/10/2022', 'DD/MM/YYYY'), TO_DATE('25/10/2022', 'DD/MM/YYYY')),
(116, 305, TO_DATE('07/03/2022', 'DD/MM/YYYY'), TO_DATE('10/03/2022', 'DD/MM/YYYY')),
(116, 306, TO_DATE('12/09/2022', 'DD/MM/YYYY'), TO_DATE('21/09/2022', 'DD/MM/YYYY')),
(116, 307, TO_DATE('16/08/2022', 'DD/MM/YYYY'), TO_DATE('24/08/2022', 'DD/MM/YYYY')),
(116, 308, TO_DATE('23/10/2022', 'DD/MM/YYYY'), TO_DATE('25/10/2022', 'DD/MM/YYYY'))

-- AUTOR: PEDRO JOSÉ DOS PRAZERES LOBÃO
-- DATA: 28/03/2025
