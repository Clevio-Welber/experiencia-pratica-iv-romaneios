CREATE TABLE motorista (
    id_motorista SERIAL PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    cnh VARCHAR(30),
    categoria_cnh VARCHAR(10)
);

CREATE TABLE cliente (
    id_cliente SERIAL PRIMARY KEY,
    nome_cliente VARCHAR(150) NOT NULL,
    cnpj VARCHAR(18),
    endereco VARCHAR(255)
);

CREATE TABLE veiculo (
    id_veiculo SERIAL PRIMARY KEY,
    placa VARCHAR(12) UNIQUE NOT NULL,
    modelo VARCHAR(100),
    capacidade_kg DECIMAL(10,2)
);

CREATE TABLE romaneio (
    id_romaneio SERIAL PRIMARY KEY,
    numero_romaneio VARCHAR(50) UNIQUE NOT NULL,
    data_envio DATE NOT NULL,
    peso_kg DECIMAL(10,2),
    status VARCHAR(30) NOT NULL,
    id_motorista INT REFERENCES motorista(id_motorista),
    id_cliente INT REFERENCES cliente(id_cliente),
    id_veiculo INT REFERENCES veiculo(id_veiculo)
);

CREATE TABLE ocorrencia (
    id_ocorrencia SERIAL PRIMARY KEY,
    id_romaneio INT REFERENCES romaneio(id_romaneio),
    descricao TEXT NOT NULL,
    data_ocorrencia TIMESTAMP NOT NULL,
    tipo VARCHAR(50)
);
