CREATE DATABASE DB___DevConnect

/* Alt + x */

CREATE TABLE tb_usuario(
id	INT IDENTITY(1,1) PRIMARY KEY,
nomecompleto	NVARCHAR(250)							NOT NULL,
nomeusuario		NVARCHAR(150)		UNIQUE				NOT NULL,
email			NVARCHAR(250)		UNIQUE				NOT NULL,
senha			NVARCHAR(50)							NOT NULL,
fotoperfilurl	NVARCHAR(150)						    NULL,
);

SELECT * FROM tb_usuario;


CREATE TABLE tb_publicacao(
id	INT IDENTITY(1,1) PRIMARY KEY,
id_usuario INT				NOT NULL, FOREIGN KEY (id_usuario) REFERENCES tb_usuario(id),
descricao  NVARCHAR(570),
imagemurl  NVARCHAR(570),
datapubli DATE              NOT NULL,
);

SELECT * FROM tb_publicacao;

CREATE TABLE tb_curtidas(
id	INT IDENTITY(1,1) PRIMARY KEY,
id_usuario		INT NOT NULL, FOREIGN KEY (id_usuario)		REFERENCES tb_usuario(id),
id_publicacao	INT NOT NULL, FOREIGN KEY (id_publicacao)	REFERENCES tb_publicacao(id),

);

SELECT * FROM tb_curtidas;

CREATE TABLE tb_comentario(
id	INT IDENTITY(1,1) PRIMARY KEY,
id_usuario		INT NOT NULL, FOREIGN KEY (id_usuario)		REFERENCES tb_usuario(id),
id_publicacao	INT NOT NULL, FOREIGN KEY (id_publicacao)	REFERENCES tb_publicacao(id),
texto NVARCHAR(570) NOT NULL,
datacomentario DATE NOT NULL,
);

SELECT * FROM tb_comentario;


CREATE TABLE tb_seguidor(
	id_usuarioseguir	INT		NOT NULL,
	id_usuarioseguindo	INT		NOT NULL,

	PRIMARY KEY (id_usuarioseguir, id_usuarioseguindo),
	FOREIGN KEY ( id_usuarioseguindo) REFERENCES tb_usuario(id),
	FOREIGN KEY ( id_usuarioseguindo) REFERENCES tb_usuario(id),
);

SELECT * FROM tb_seguidor;




