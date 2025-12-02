-- 1. Atualizar telefone do cliente
UPDATE cliente
SET telefone = '11911112222'
WHERE id_cliente = 1;

-- 2. Alterar o status de uma assinatura
UPDATE assinatura
SET id_status = 2
WHERE id_assinatura = 3;

-- 3. Atualizar o valor mensal de um plano
UPDATE plano
SET valor_mensal = 49.90
WHERE id_plano = 2;
