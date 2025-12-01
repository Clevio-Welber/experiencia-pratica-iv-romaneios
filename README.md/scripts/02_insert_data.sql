-- ============================
-- INSERTS MOTORISTA
-- ============================
INSERT INTO motorista (nome, cpf, telefone, cnh, categoria_cnh) VALUES
('Carlos Silva', '123.456.789-00', '99999-1111', '1234567', 'D'),
('João Fritzen', '987.654.321-00', '98888-2222', '7654321', 'E'),
('Marcos Werlang', '111.222.333-44', '97777-3333', '1122334', 'D');

-- ============================
-- INSERTS CLIENTE
-- ============================
INSERT INTO cliente (nome_cliente, cnpj, endereco) VALUES
('Supermercado Bom Preço', '12.345.678/0001-99', 'Rua A, 150'),
('Atacadão do Povo', '98.765.432/0001-55', 'Avenida Central, 500');

-- ============================
-- INSERTS VEÍCULO
-- ============================
INSERT INTO veiculo (placa, modelo, capacidade_kg) VALUES
('ABC-1234', 'Volkswagen Delivery', 3000),
('XYZ-9876', 'Mercedes Accelo', 4500);

-- ============================
-- INSERTS ROMANEIO
-- ============================
INSERT INTO romaneio (numero_romaneio, data_envio, peso_kg, status, id_motorista, id_cliente, id_veiculo) VALUES
('325.024', '2025-01-15', 2550, 'ENTREGUE', 1, 1, 1),
('325.025', '2025-01-16', 3000, 'EM_TRANSITO', 2, 2, 2),
('325.026', '2025-01-17', 1800, 'PENDENTE', 3, 1, 2);

-- ============================
-- INSERTS OCORRÊNCIA
-- ============================
INSERT INTO ocorrencia (id_romaneio, descricao, data_ocorrencia, tipo) VALUES
(1, 'Atraso devido ao trânsito.', '2025-01-15 13:00', 'ATRASO'),
(2, 'Avaria leve na embalagem.', '2025-01-16 09:20', 'AVARIA'),
(2, 'Cliente não estava presente para receber.', '2025-01-16 18:40', 'TENTATIVA_FALHA');
