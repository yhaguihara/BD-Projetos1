CREATE DATABASE db_confeitaria;

USE db_confeitaria;

CREATE TABLE tbl_cliente (
	codigo_cliente INT,
	nome VARCHAR(100),
	endereco  VARCHAR(100),
	PRIMARY KEY (codigo_cliente)
);

INSERT INTO tbl_cliente(codigo_cliente, nome, endereco) VALUES
	(10432, 'Ana Beatriz Silva', 'Rua das Flores, 45, Centro, São Paulo - SP'),
	(25891, 'Carlos Eduardo Souza', 'Av. Paulista, 1500, Bela Vista, São Paulo - SP'),
	(36925, 'Juliana Mendes Costa', 'Rua Amazonas, 78, Gonzaga, Santos - SP'),
	(41256, 'Rodrigo Oliveira Paz', 'Alameda Lorena, 321, Jardins, São Paulo - SP'),
	(58963, 'Fernanda Lima Rocha', 'Rua XV de Novembro, 999, Batel, Curitiba - PR');

CREATE TABLE tbl_pedido (
	codigo_pedido INT,
	data_pedido DATE,
	valor_total DECIMAL(10,2),
	PRIMARY KEY (codigo_pedido)
);

INSERT INTO tbl_pedido (codigo_pedido, data_pedido, valor_total) VALUES
	(1001, '2026-01-15', 120.50),
	(1002, '2026-02-20', 350.00),
	(1003, '2026-03-05', 85.90),
	(1004, '2026-04-12', 540.00),
	(1005, '2026-05-18', 215.30);

CREATE TABLE tbl_telefone_cliente (
	codigo_cliente INT,
	telefone VARCHAR(14),
	PRIMARY KEY (codigo_cliente)
);

INSERT INTO tbl_telefone_cliente (codigo_cliente, telefone) VALUES
	(10432, '(11)98123-4567'),
	(25891, '(11)97234-5678'),
	(36925, '(13)99345-6789'),
	(41256, '(11)96456-7890'),
	(58963, '(41)95567-8901');

CREATE TABLE tbl_produto (
	codigo_produto INT,
	valor_kg DECIMAL(10,2),
	descricao VARCHAR(100),
	PRIMARY KEY (codigo_produto)
);

INSERT INTO tbl_produto (codigo_produto, valor_kg, descricao) VALUES
	(501, 85.00, 'Bolo de Festa Red Velvet com Recheio de Cream Cheese'),
	(502, 65.00, 'Torta Holandesa Tradicional com Cobertura de Ganache'),
	(503, 45.50, 'Cento de Brigadeiros Gourmet Belga'),
	(504, 75.00, 'Cheesecake de Frutas Vermelhas'),
	(505, 90.00, 'Bolo de Chocolate Crocante com Nozes');

CREATE TABLE tbl_item_pedido (
	codigo_produto INT,
	codigo_pedido INT,
	quantidade INT,
	PRIMARY KEY (codigo_produto, codigo_pedido)
);

INSERT INTO tbl_item_pedido (codigo_produto, codigo_pedido, quantidade) VALUES
	(501, 1001, 2),
	(503, 1002, 1),
	(505, 1003, 1),
	(502, 1004, 3),
	(504, 1005, 2);

DROP TABLE tbl_item_pedido;
DROP TABLE tbl_telefone_cliente;
DROP TABLE tbl_produto;
DROP TABLE tbl_pedido;
DROP TABLE tbl_cliente;

SELECT * FROM tbl_cliente;
SELECT * FROM tbl_pedido;
SELECT * FROM tbl_telefone_cliente;
SELECT * FROM tbl_produto;
SELECT * FROM tbl_item_pedido;
