USE DB___DevConnect

INSERT INTO tb_usuario(nomecompleto, nomeusuario, email, senha, fotoperfilurl)
VALUES ('giulia marzano', 'giuk44', 'giukam@gmail.com', '1234', 'DevConnect/foto-giu'),
('maria apareida', 'mar1div', 'marisantg@gmail.com', '2007', 'DevConnect/foto-mari'),
('graziela marzano', 'rgazu', 'laulaub@gmail.com', '329034', 'DevConnect/foto-grazi'),
('Min Yoongi', 'agussd', 'guinho07@gmail.com', '0007', 'DevConnect/foto-yoongi'),
('jung hoseok', 'uarmyhope', 'jhopeelovy@gmail.com', '0007', 'DevConnect/foto-jhoseok');


SELECT * FROM tb_usuario;

INSERT INTO tb_publicacao(descricao, datapubli, id_usuario)
VALUES ('abdcsfh' , '2025/09/23' , '1'),
('i lv bts' , '2025/09/23' , '5'),
('huh?' , '2025/09/23' , '4');

SELECT * FROM tb_publicacao;

INSERT INTO tb_curtidas(id_usuario, id_publicacao)
VALUES ('4', '1'),
('3', '1'),
('1', '3'),
('2', '3');

SELECT * FROM tb_curtidas;

INSERT INTO tb_comentario(id_usuario, id_publicacao, texto, datacomentario)
VALUES('4', '1', 'legaal', '2025/09/23'),
('5', '1', 'what do you', '2025/09/23');

SELECT * FROM tb_comentario;


INSERT INTO tb_seguidor(id_usuarioseguir, id_usuarioseguindo)
VALUES('5','4'),
('3','1'),
('2','1'),
('4','1'),
('5','1');

SELECT * FROM  tb_seguidor;


