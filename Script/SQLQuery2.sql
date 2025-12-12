USE DB___DevConnect;


-- tornar a coluna id do usuario nula
ALTER TABLE tb_publicacao
ALTER COLUMN id_usuario INT NULL;

-- tornar unico a curtida em uma publi
ALTER TABLE tb_curtidas
ADD UNIQUE (id_usuario, id_publicacao)


-- DROP TABLE tb_seguidor;
CREATE TABLE tb_seguidor(
	id_usuarioseguir	INT		NOT NULL,
	id_usuarioseguindo	INT		NOT NULL,

	PRIMARY KEY (id_usuarioseguir, id_usuarioseguindo),
	FOREIGN KEY (id_usuarioseguir) REFERENCES tb_usuario(id),
	FOREIGN KEY (id_usuarioseguindo) REFERENCES tb_usuario(id),
);