--Buscar romaneios entregues

-- ============================================
-- SCRIPT 03 – CONSULTAS SELECT
-- Sistema de Gestão de Romaneios
-- ============================================


-- 1) Selecionar todos os romaneios que já foram entregues
SELECT 
    id_romaneio,
    numero_romaneio,
    data_envio,
    peso_kg,
    status
FROM romaneio
WHERE status = 'ENTREGUE';


-- 2) Listar motoristas e seus respectivos romaneios
SELECT
    m.nome AS motorista,
    r.numero_romaneio,
    r.status
FROM motorista m
JOIN romaneio r ON r.id_motorista = m.id_motorista
ORDER BY m.nome;


-- 3) Buscar clientes com romaneios acima de 2000 kg
SELECT
    c.nome_cliente,
    r.numero_romaneio,
    r.peso_kg
FROM cliente c
JOIN romaneio r ON c.id_cliente = r.id_cliente
WHERE r.peso_kg > 2000
ORDER BY r.peso_kg DESC;


-- 4) Listar todas as ocorrências com seus romaneios
SELECT
    r.numero_romaneio,
    o.tipo,
    o.descricao,
    o.data_ocorrencia
FROM ocorrencia o
JOIN romaneio r ON r.id_romaneio = o.id_romaneio
ORDER BY o.data_ocorrencia DESC;


-- 5) Selecionar apenas os dois primeiros motoristas cadastrados (ordem alfabética)
SELECT
    id_motorista,
    nome,
    cpf
FROM motorista
ORDER BY nome
LIMIT 2;
