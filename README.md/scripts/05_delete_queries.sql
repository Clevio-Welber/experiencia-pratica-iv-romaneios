DELETE FROM ocorrencia
WHERE tipo = 'AVARIA';

DELETE FROM romaneio
WHERE status = 'PENDENTE';

DELETE FROM cliente
WHERE nome_cliente = 'Atacadão do Povo';
