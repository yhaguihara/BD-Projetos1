CREATE DATABASE db_automotiva

USE db_automotiva;

CREATE TABLE tbl_cliente (
	id_cliente INT,
	nome VARCHAR (10),
	endereco VARCHAR (200),
	email VARCHAR (17),
	cpf_cnpj VARCHAR (17),
	PRIMARY KEY (id_cliente)
);
INSERT INTO tbl_cliente(id_cliente, nome, endereco, email, cpf_cnpj) VALUES
	(10, 'Felipe' , 'Rua do Amor N150', 'felipemelo@gmail.com', '356.203.550-04'),
	(20, 'José' , 'Avenida do Progresso N500', 'josesilva@estudo.com', '651.637.490-21'),
	(30, 'Cacique', 'Rua do Chapéu N67', 'pedrinho@gmail.com', '732.254.960-06'),
	(40, 'Wellington', 'Travessa da Fé N10', 'wellin@outlook.cps', '105.313.260-39'),
	(50, 'Joana', 'Rua da Ponte N15', 'joana@hotmail.com', '105.313.260-39');

CREATE TABLE tbl_pedido (
	id_pedido INT,
	data_pedido VARCHAR (10),
	valor_total VARCHAR (4),
	status VARCHAR (10),
	PRIMARY KEY (id_pedido)
);
INSERT INTO tbl_pedido(id_pedido, data_pedido, valor_total, status) VALUES
	(1, '20/02/2020',69, 'Bom'),
	(2, '31/12/1999', 96, 'Mal'),
	(3, '01/01/2001', 11, 'Péssimo'),
	(4, '11/09/2011', 13, 'Anjinho'),
	(5, '15/05/2009', 250,00, 'Horrível');

CREATE TABLE tbl_item_pedido (
	id_pedido INT,
	id_peça INT,
	quantidade VARCHAR (30),
	preco_unitario VARCHAR (10),
	desconto_item VARCHAR (6),
	sub_total VARCHAR (10),
	PRIMARY KEY (id_pedido, id_peça)
);
INSERT INTO tbl_item_pedido(id_pedido ,id_peça, quantidade, preco_unitario, desconto_item, sub_total) VALUES
	(1, 5, '76', '37.00', '50%', '2.812'),
	(2, 6, '76', '76.00', '67%', '5776.00'),
	(3, 7, '67', '67.00', '75%', '4489.00'),
	(4, 8, '26', '164.00', '20%', '4267.00'),
	(5, 15, '1', '50.50', '15%', '50.50');

CREATE TABLE tbl_peca (
	id_peca INT, 
	descricao VARCHAR (50),
	categoria VARCHAR (30),
	marca VARCHAR (25),
	preco_venda VARCHAR (10),
	estoque VARCHAR (30),
	PRIMARY KEY (id_peca)
);

INSERT INTO tbl_peca(id_peca,descricao,categoria,marca,preco_venda, estoque) VALUES
	(1000, 'Vela de ignição', 'Sistema de Ignição','Nakata','R$35,00', '10'),
	(2000, 'Burrinho de freio','Sistema de Freio','NGK', 'R$149,99', 'ESGOTADO'),
	(3000, 'Cebolinha de temperatura','Sistema Elétrico','TDW', 'R$14,99','500'),
	(4000, 'Dagoberto','Acabamento Externo','Luango', 'R$34,50','150'),
	(5000, 'Homocinética', 'Sistema de Transmissão','Brás', 'R$95,00','25');

	CREATE TABLE tbl_fornecedor (
	id_fornecedor INT, 
	razao_social VARCHAR (50),
	cnpj VARCHAR (30),
	email VARCHAR (75),
	endereco VARCHAR (100),
	PRIMARY KEY (id_fornecedor)
);

INSERT INTO tbl_fornecedor(id_fornecedor,razao_social,cnpj,email,endereco) VALUES
	(270, 'OmniParts Distribuidora' , '42.404.197/0001-74','alzira.carvel@outlook.com','Rua José Duarte Maduro, 11'),
	(412, 'MetalPrime Peças Industriais' ,'74.006.789/0001-24','daniellelacerda2@geradornv.com', 'Rua São Francisco, 99'),
	(629, 'TecnoTorque Componentes' ,'31.676.737/0001-52','aurelino.mota8@hotmail.com', 'Núcleo Rural Casa Grande Módulo 4 MA - 6'),
	(154, 'Dinamite Rodrigues','96.572.204/0001-76' ,'veronica_vaz92@outlook.com', 'Rua Industrial José Flávio Pinheiro, 277'),
	(879, 'Vertex Autopeças e Mecânica', '13.387.445/0001-18' ,'cassioeger4@geradornv.com', 'Avenida Aracaju, 150');

	CREATE TABLE tbl_fornecimento (
	id_fornecedor INT, 
	id_peca INT,
	preco_compra VARCHAR (50),
	prazo_entrega_dias VARCHAR (30),
	ativo VARCHAR (75),
	PRIMARY KEY (id_fornecedor, id_peca)
);
	
INSERT INTO tbl_fornecimento(id_fornecedor,id_peca,preco_compra,prazo_entrega_dias,ativo) VALUES
	('270','1000','150.50', '5', 'Não'),
	('412', '2000','989.90','3', 'Sim'),
	('629','3000','142.00','12','Sim'),
	('154','4000','1250.0','20','Não'),
	('879','5000','145.00','2','Sim');

	SELECT * FROM tbl_item_pedido;
	SELECT * FROM tbl_pedido;
	SELECT * FROM tbl_cliente;
	SELECT * FROM tbl_peca;
	SELECT * FROM tbl_fornecedor;
	SELECT * FROM tbl_fornecimento;