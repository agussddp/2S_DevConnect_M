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


----Exiba todos os nomes dos seguidores (de quem esta seguindo e de quem será seguido) 
SELECT 
    seguidor.nomeusuario AS Seguidor,
    seguido.nomeusuario  AS Seguindo
FROM tb_seguidor S
INNER JOIN tb_usuario seguidor ON S.id_usuarioseguir = seguidor.id
INNER JOIN tb_usuario seguido ON S.id_usuarioseguindo = seguido.id;
 


----Exiba quantos seguidores possui um respectivo usuário
SELECT 
    USU.nomeusuario AS NomeUser,
    COUNT(S.id_usuarioseguir) AS qtd_seguidores
FROM tb_usuario USU
	LEFT JOIN tb_seguidor S  ON S.id_usuarioseguindo = USU.id
	GROUP BY USU.nomeusuario;



----Exiba todas as publicações contendo a descrição, o caminho da imagem, o nome de usuário
SELECT
    publi.descricao,
    USU.nomeusuario,
    publi.imagemurl
    
FROM tb_publicacao publi
LEFT JOIN tb_usuario USU ON USU.id = publi.id;
    



-- Exiba todos os comentários com o nome e o texto de uma respectiva publicação
SELECT 
    USU.nomeusuario,
    com.texto
FROM tb_usuario USU
LEFT JOIN  tb_comentario com ON com.id_usuario = USU.id
WHERE id_publicacao = 1;


---- Exiba a quantidade de curtidas de uma respectiva publicação.
SELECT 
    curti.id_publicacao,
    COUNT(curti.id) AS qtd_curtidas
FROM tb_curtidas curti
	LEFT JOIN tb_publicacao publi  ON curti.id_publicacao = publi.id
    GROUP BY curti.id_publicacao;



-- Exiba todos usuários que não chegaram a fazer publicações.
SELECT 
    USU.nomeusuario
FROM tb_usuario USU
LEFT JOIN tb_publicacao publi ON publi.id_usuario = USU.id
WHERE publi.id_usuario IS NULL;



-- Exiba todos usuários que não chegaram a fazer reações.
SELECT 
    USU.nomeusuario
FROM tb_usuario USU
LEFT JOIN tb_curtidas curti ON curti.id_usuario = USU.id
WHERE curti.id_usuario IS NULL;



-- Descurtir: remova uma curtida de um usuário há uma publicação.
-- Tornar a coluna e como chave composta na tabela comentário. Para evitar duplicidade de curtida do mesmo usuário e publicação.






