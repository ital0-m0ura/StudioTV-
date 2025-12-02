-- INSERTS --

INSERT INTO cliente(nome, email, senha, telefone)
VALUES
('kauan melo','kauan123@gmail.com','00000000000','79 9 99999999'),
('feliepe luiz','felipe123@gmail.com','11111111111','79 9 88888888');



INSERT INTO servico(nome_servico, descricao)
VALUES
('StreamTV+', 'Serviço de streaming com filmes e séries');



INSERT INTO plano(nome_plano, valor_mensal, id_servico)
VALUES
('premium',29.90, 1),
('basico',15.90, 1);



INSERT INTO status_assinatura (descricao)
VALUES ('pendente'), ('ativa'), ('cancelada'), ('suspensa');



INSERT INTO assinatura(data_inicio, id_status, id_cliente, id_plano)
VALUES
('2025-03-05', 2, 1, 1),
('2025-04-22', 3, 2, 2);



INSERT INTO pagamento(data_pagamento, valor, metodo_pagamento, id_assinatura)
VALUES
('2025-03-06', 29.90, 'cartao', 1),
('2025-04-23', 15.90, 'cartao', 2);

