-- 1. Deletar um pagamento específico
DELETE FROM pagamento
WHERE id_pagamento = 3;

-- 2. Deletar um plano (desde que não esteja sendo usado)
DELETE FROM plano
WHERE id_plano = 5;

-- 3. Deletar cliente sem assinatura
DELETE FROM cliente
WHERE id_cliente = 3;
