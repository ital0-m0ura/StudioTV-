BEGIN TRANSACTION;

-- TABELA CLIENTE
CREATE TABLE cliente (
    id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    email TEXT(120) NOT NULL UNIQUE,
    senha TEXT(250) NOT NULL,
    telefone TEXT(15) NOT NULL
);

-- TABELA SERVIÇO
CREATE TABLE servico(
    id_servico INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_servico TEXT(50) NOT NULL,
    descricao TEXT(100) NOT NULL
);

-- TABELA PLANO
CREATE TABLE plano(
    id_plano INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_plano TEXT(30) NOT NULL,
    valor_mensal REAL NOT NULL,
    id_servico INTEGER NOT NULL,
    FOREIGN KEY (id_servico) REFERENCES servico(id_servico)
);

-- TABELA STATUS ASSINATURA
CREATE TABLE status_assinatura (
    id_status INTEGER PRIMARY KEY AUTOINCREMENT,
    descricao TEXT NOT NULL
);

-- TABELA ASSINATURA
CREATE TABLE assinatura(
    id_assinatura INTEGER PRIMARY KEY AUTOINCREMENT,
    data_inicio NUMERIC NOT NULL,
    id_status INTEGER NOT NULL,
    id_cliente INTEGER NOT NULL,
    id_plano INTEGER NOT NULL,
    FOREIGN KEY (id_status) REFERENCES status_assinatura(id_status),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_plano) REFERENCES plano(id_plano)
);

-- TABELA PAGAMENTO
CREATE TABLE pagamento(
    id_pagamento INTEGER PRIMARY KEY AUTOINCREMENT,
    data_pagamento NUMERIC NOT NULL,
    valor REAL NOT NULL,
    metodo_pagamento TEXT NOT NULL DEFAULT 'cartao',
    id_assinatura INTEGER NOT NULL,
    FOREIGN KEY (id_assinatura) REFERENCES assinatura(id_assinatura)
);

COMMIT;