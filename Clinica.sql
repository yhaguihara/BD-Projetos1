CREATE DATABASE db_clinica;
USE db_clinica;

CREATE TABLE tbl_paciente (
	RG VARCHAR (20),
	nome VARCHAR (50),
	endereco VARCHAR (100),
	convenio VARCHAR (10),
	PRIMARY KEY (RG)
);

INSERT INTO tbl_paciente(RG, nome, endereco, convenio) VALUES	
	('23.515.563-8', 'Detergente', 'Rua Costa Fernandes', '2485961'),
	('38.526.245-3', 'Coração', 'Rua Quinto Salvadori', '503914'),
	('27.577.156-9', 'Pé de moleque', 'Rua Paulino Gomes da Costa', '8241'),
	('42.474.855-8', 'Dagoberto', 'Rua Manoel Pereira de Castro', '3958472'),
	('11.222.333-4', 'Maria Silva', 'Avenida Paulista N1000', '1029384');

CREATE TABLE tbl_medico (
	CRM VARCHAR (20),
	nome VARCHAR (100),
	RG VARCHAR (20),
	PRIMARY KEY (CRM)
);

INSERT INTO tbl_medico(CRM, nome, RG) VALUES	
	('142.857', 'Thiago Ruan Bernardo Lopes', '48.052.081-1'),
	('205.419', 'Cecília Milena Barbosa', '41.999.560-2'),
	('189.362', 'Julio Mário Barbosa', '17.434.809-5'),
	('231.074', 'Elaine Melissa Melo', '34.911.247-2'),
	('300.123', 'Carlos Eduardo Santos', '55.666.777-8');

CREATE TABLE tbl_consulta (
	cod_consulta INT,
	data_consulta DATE,
	hora VARCHAR (10),
	RG_paciente VARCHAR (20),
	CRM_medico VARCHAR (20),
	PRIMARY KEY (cod_consulta),
	FOREIGN KEY (RG_paciente) REFERENCES tbl_paciente(RG),
	FOREIGN KEY (CRM_medico) REFERENCES tbl_medico(CRM)
);

INSERT INTO tbl_consulta(cod_consulta, data_consulta, hora, RG_paciente, CRM_medico) VALUES	
	(1, '2020-02-20', '19:12', '23.515.563-8', '142.857'),
	(2, '1999-12-31', '12:42', '38.526.245-3', '205.419'),
	(3, '2001-01-01', '10:30', '27.577.156-9', '189.362'),
	(4, '2016-09-11', '08:32', '42.474.855-8', '231.074'),
	(5, '2023-05-15', '14:00', '11.222.333-4', '300.123');

SELECT * FROM tbl_paciente;
SELECT * FROM tbl_medico;
SELECT * FROM tbl_consulta;