
CREATE TABLE Usuario (
    id_usuario INTEGER PRIMARY KEY,
    nome VARCHAR(100),
    cpf VARCHAR(11) UNIQUE,
    rg VARCHAR(10),
    telefone VARCHAR(15),
    email VARCHAR(100),
    senha VARCHAR(50),
    tipo_usuario VARCHAR(20), 
    id_endereco INTEGER
);

CREATE TABLE Endereco (
    id_endereco INTEGER PRIMARY KEY,
    cep VARCHAR(9),
    logradouro VARCHAR(100),
    complemento VARCHAR(50),
    bairro VARCHAR(50),
    cidade VARCHAR(50),
    estado VARCHAR(2),
    numero INTEGER
);

CREATE TABLE Veiculo (
    id_veiculo INTEGER PRIMARY KEY,
    placa VARCHAR(8) UNIQUE,
    modelo VARCHAR(50),
    cor VARCHAR(30),
    id_usuario INTEGER
);

CREATE TABLE Vaga (
    id_vaga INTEGER PRIMARY KEY,
    numero INTEGER UNIQUE,
    setor VARCHAR(20),
    ocupado BOOLEAN,
    id_estacionamento INTEGER
);

CREATE TABLE Estacionamento (
    id_estacionamento INTEGER PRIMARY KEY,
    nome VARCHAR(100),
    capacidade_total INTEGER,
    vagas_ocupadas INTEGER,
    id_endereco INTEGER
);

CREATE TABLE Reserva (
    id_reserva INTEGER PRIMARY KEY,
    data_inicio DATETIME,
    data_fim DATETIME,
    valor DECIMAL(10,2),
    status VARCHAR(20), 
    id_veiculo INTEGER,
    id_vaga INTEGER
);

CREATE TABLE Pagamento (
    id_pagamento INTEGER PRIMARY KEY,
    id_reserva INTEGER,
    forma_pagamento VARCHAR(20), 
    valor_pago DECIMAL(10,2),
    data_pagamento DATETIME
);

CREATE TABLE Funcionario (
    id_funcionario INTEGER PRIMARY KEY,
    nome VARCHAR(100),
    cpf VARCHAR(11) UNIQUE,
    cargo VARCHAR(50),
    salario DECIMAL(10,2),
    id_usuario INTEGER
);

CREATE TABLE Gestor (
    id_gestor INTEGER PRIMARY KEY,
    nome VARCHAR(100),
    cpf VARCHAR(11) UNIQUE,
    cargo VARCHAR(50),
    id_usuario INTEGER
);



CREATE TABLE usuario_veiculo (
    id_usuario INTEGER,
    id_veiculo INTEGER
);

CREATE TABLE estacionamento_vaga (
    id_estacionamento INTEGER,
    id_vaga INTEGER
);

CREATE TABLE reserva_pagamento (
    id_reserva INTEGER,
    id_pagamento INTEGER
);

CREATE TABLE funcionario_estacionamento (
    id_funcionario INTEGER,
    id_estacionamento INTEGER
);
