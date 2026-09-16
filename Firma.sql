CREATE DATABASE db_firma;
USE db_firma;

CREATE TABLE tbl_produto (
	id INT,
	nome VARCHAR (30),
	quantidade_produto VARCHAR (4),
	preco VARCHAR (10),
	categoria VARCHAR (30),
	PRIMARY KEY (id)
);

INSERT INTO tbl_produto (id, nome, quantidade_produto, preco, categoria) VALUES
	(1, 'Detergente', '10', '67.00', 'sabão'),
	(2, 'Coração', '7', '67.00', 'comida'),
	(3, 'Pé de moleque', '6', '67.00', 'comida'),
	(4, 'Dagoberto', '42', '67.00', 'humano'),
	(5, 'Sabão em pó', '15', '25.50', 'sabão');

CREATE TABLE tbl_pedido (
	num_pedido INT,
	data_elaboracao VARCHAR (10),
	quantidade_pedido VARCHAR (4),
	PRIMARY KEY (num_pedido)
);

INSERT INTO tbl_pedido (num_pedido, data_elaboracao, quantidade_pedido) VALUES
	(1, '20/02/2020', '69'),
	(2, '31/12/1999', '96'),
	(3, '01/01/2001', '11'),
	(4, '11/09/2011', '13'),
	(5, '15/05/2023', '25');

CREATE TABLE tbl_cliente (
	id_cliente INT,
	credito VARCHAR (10),
	endereco VARCHAR (200),
	telefone VARCHAR (17),
	avaliacao VARCHAR (25),
	PRIMARY KEY (id_cliente)
);

INSERT INTO tbl_cliente (id_cliente, credito, endereco, telefone, avaliacao) VALUES
	(10, '50.00', 'Rua do Amor N150', '+55 11 963410642', 'RUIM'),
	(20, '5000.00', 'Avenida do Progresso N500', '+55 13 922135245', 'BOM'),
	(30, '1000.00', 'Rua do Chapéu N67', '+55 11 993579796', 'EXCELENTE'),
	(40, '50.00', 'Travessa da Fé N10', '+55 11 912759287', 'EXCELENTE'),
	(50, '2500.00', 'Rua das Flores N88', '+55 11 988887777', 'BOM');

SELECT * FROM tbl_produto;
SELECT * FROM tbl_pedido;
SELECT * FROM tbl_cliente;