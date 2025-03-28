-- DDL SCRIPT - BANCO DE DADOS PROJETO FASE 2

-- TABLE CONSTRUTORA

CREATE TABLE CONSTRUTORA (
    codigo_construtora NUMERIC(2) NOT NULL,
    nome VARCHAR(150) NOT NULL,
    nome_fantasia VARCHAR(150) NULL,
    CONSTRAINT Pk_Construtora PRIMARY KEY (codigo_construtora) 
)

-- TABLE TELEFONES

CREATE TABLE TELEFONES (
    telefone VARCHAR(17) NOT NULL,
    codigo_construtora NUMERIC(2) NOT NULL,
    CONSTRAINT Pk_Telefones PRIMARY KEY (telefone),
    CONSTRAINT Fk_Telefones FOREIGN KEY (codigo_construtora) REFERENCES CONSTRUTORA(codigo_construtora)
)

-- TABLE OBRA

CREATE TABLE OBRA (
    codigo_obra NUMERIC(3) NOT NULL,
    codigo_construtora NUMERIC(2) NOT NULL,
    nome VARCHAR(30) NOT NULL,
    logradouro VARCHAR(150) NOT NULL,
    numero VARCHAR(4) NOT NULL,
    complemento VARCHAR(75) NULL,
    CONSTRAINT Pk_Obra PRIMARY KEY (codigo_obra),
    CONSTRAINT Fk_Obra FOREIGN KEY (codigo_construtora) REFERENCES CONSTRUTORA(codigo_construtora)
)

-- TABLE TRABALHADOR

CREATE TABLE TRABALHADOR (
    cpf VARCHAR(11) NOT NULL,
    codigo_obra NUMERIC(3) NOT NULL,
    nome VARCHAR(150) NOT NULL,
    salario NUMERIC(7, 2) NOT NULL,
    CONSTRAINT Pk_Trabalhador PRIMARY KEY (cpf),
    CONSTRAINT Fk_Trabalhador FOREIGN KEY (codigo_obra) REFERENCES OBRA(codigo_obra)
)

-- TABLE CATEGORIA

CREATE TABLE CATEGORIA (
    codigo_categoria NUMERIC(3) NOT NULL,
    descricao VARCHAR(30) NOT NULL,
    CONSTRAINT Pk_Categoria PRIMARY KEY (codigo_categoria)
)

-- TABLE EQUIPAMENTO

CREATE TABLE EQUIPAMENTO (
    codigo_equipamento NUMERIC(3) NOT NULL,
    codigo_categoria NUMERIC(3) NOT NULL,
    nome VARCHAR(30) NOT NULL,
    valor_diaria NUMERIC(6, 2) NOT NULL,
    CONSTRAINT Pk_Equipamento PRIMARY KEY (codigo_equipamento),
    CONSTRAINT Fk_Equipamento FOREIGN KEY (codigo_categoria) REFERENCES CATEGORIA(codigo_categoria)
)

-- TABLE EQUIPAMENTO_OBRA

CREATE TABLE EQUIPAMENTO_OBRA (
    codigo_obra NUMERIC(3) NOT NULL,
    codigo_equipamento NUMERIC(3) NOT NULL,
    data_inicio DATE,
    data_fim DATE,
    CONSTRAINT Pk_Equipamento_Obra PRIMARY KEY (data_inicio, data_fim),
    CONSTRAINT Fk_Equipamento_Obra1 FOREIGN KEY (codigo_obra) REFERENCES OBRA(codigo_obra),
    CONSTRAINT Fk_Equipamento_Obra2 FOREIGN KEY (codigo_equipamento) REFERENCES EQUIPAMENTO(codigo_equipamento)
)

-- AUTOR: PEDRO JOSÉ DOS PRAZERES LOBÃO
-- DATA: 28/03/2025