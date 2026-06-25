CREATE DATABASE dbEcoCiente;

CREATE TABLE condominio(
	id_condominio INT NOT NULL,
	nome VARCHAR(60) NOT NULL,
	cnpj VARCHAR(14) NOT NULL UNIQUE CHECK(cnpj < 14),
	id_endereco INT NOT NULL,
	id_tipo_condominio INT NOT NULL

	CONSTRAINT pk_condominio 
	PRIMARY KEY(id_condominio)

	CONSTRAINT fk_id_tipo_condominio
	FOREIGN KEY(id_tipo_condominio)
	REFERENCES tipo_condominio(id_tipo_condominio)	
);

CREATE TABLE tipo_condominio(
	id_tipo_condominio INT,
	nome_tipo VARCHAR(60),
	descricao VARCHAR(100)

	CONSTRAINT pk_id_tipo_condominio
	PRIMARY KEY(id_tipo_condominio)
);