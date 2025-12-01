SELECT 
    id_romaneio,
    numero_romaneio,
    data_envio,
    peso_kg,
    status
FROM romaneio
WHERE status = 'ENTREGUE';


SELECT
    m.nome AS motorista,
    r.numero_romaneio,
    r.status
FROM motorista m
JOIN romaneio r ON r.id_motorista = m.id_motorista
ORDER BY m.nome;


SELECT
    c.nome_cliente,
    r.numero_romaneio,
    r.peso_kg
FROM cliente c
JOIN romaneio r ON c.id_cliente = r.id_cliente
WHERE r.peso_kg > 2000
ORDER BY r.peso_kg DESC;


SELECT
    r.numero_romaneio,
    o.tipo,
    o.descricao,
    o.data_ocorrencia
FROM ocorrencia o
JOIN romaneio r ON r.id_romaneio = o.id_romaneio
ORDER BY o.data_ocorrencia DESC;



SELECT
    id_motorista,
    nome,
    cpf
FROM motorista
ORDER BY nome
LIMIT 2;
