USE DB___DevConnect


SELECT * FROM tb_usuario;

SELECT * FROM tb_publicacao;

SELECT * FROM tb_curtidas;

SELECT * FROM tb_comentario;

SELECT * FROM  tb_seguidor;






SELECT nomeusuario
FROM tb_usuario
ORDER BY nomecompleto ASC;


SELECT COUNT(nomeusuario) AS qtd_users FROM tb_usuario;

SELECT COUNT(id_usuario) AS qtd_users FROM tb_curtidas;

