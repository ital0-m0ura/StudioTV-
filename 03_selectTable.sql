-- 1. Listar assinaturas com nome do cliente e nome do plano
SELECT 
    assinatura.id_assinatura,
    cliente.nome,
    plano.nome_plano,
    servico.nome_servico AS servico
FROM assinatura
JOIN cliente ON cliente.id_cliente = assinatura.id_cliente
JOIN plano ON plano.id_plano = assinatura.id_plano
JOIN servico ON servico.id_servico = plano.id_servico;


-- 2. Clientes com assinaturas ativas
SELECT 
    c.nome,
    st.descricao AS status
FROM assinatura a
JOIN cliente c ON c.id_cliente = a.id_cliente
JOIN status_assinatura st ON st.id_status = a.id_status
WHERE st.descricao = 'Ativa';

-- 3. Pagamentos ordenados (mais recentes primeiro)
SELECT * 
FROM pagamento
ORDER BY data_pagamento DESC
LIMIT 5;

-- 4. Busca por serviços da Netflix
SELECT s.nome_servico, p.nome_plano, p.valor_mensal
FROM servico s
JOIN plano p ON p.id_servico = s.id_servico
ORDER BY s.nome_servico;

-- 5. Limitar a 2 clientes
SELECT * FROM Cliente LIMIT 2;
