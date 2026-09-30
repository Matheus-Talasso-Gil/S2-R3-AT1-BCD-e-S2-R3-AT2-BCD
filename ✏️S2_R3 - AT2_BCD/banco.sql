CREATE DATABASE pedidos;
x'x'
CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY,
    cpf CHAR(11) NOT NULL UNIQUE,
    nome_cliente VARCHAR(100) NOT NULL,
    cep CHAR(8) NOT NULL,
    numero INT NOT NULL,
    complemento VARCHAR(50)
);

CREATE TABLE cliente_telefone (
    id_cliente INT NOT NULL,
    telefone VARCHAR(20) NOT NULL,

    PRIMARY KEY (id_cliente, telefone),

    FOREIGN KEY (id_cliente)
        REFERENCES cliente(id_cliente)
);

CREATE TABLE entregador (
    id_entregador INT PRIMARY KEY,
    nome_entregador VARCHAR(100) NOT NULL,
    veiculo VARCHAR(30) NOT NULL
);

CREATE TABLE produto (
    id_produto INT PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL
);

CREATE TABLE pedido (
    id_pedido INT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_entregador INT NOT NULL,
    data DATE NOT NULL,
    hora_pedido TIME NOT NULL,
    hora_entrega TIME,
    hora_fim TIME,

    FOREIGN KEY (id_cliente)
        REFERENCES cliente(id_cliente),

    FOREIGN KEY (id_entregador)
        REFERENCES entregador(id_entregador)
);

CREATE TABLE pedido_produto (
    id_pedido INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    subtotal DECIMAL(10,2) NOT NULL,

    PRIMARY KEY (id_pedido, id_produto),

    FOREIGN KEY (id_pedido)
        REFERENCES pedido(id_pedido),

    FOREIGN KEY (id_produto)
        REFERENCES produto(id_produto)
);