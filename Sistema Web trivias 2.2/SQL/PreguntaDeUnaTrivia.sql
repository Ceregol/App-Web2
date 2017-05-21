Delimiter $$
DROP PROCEDURE IF EXISTS PreguntaDeUnaTrivia$$
CREATE PROCEDURE PreguntaDeUnaTrivia(inId_Trivia INT(11))
BEGIN

SELECT  distinct  `pregunta`.`Question`,  `pregunta`.`Id_Pregunta`
FROM `trivia_pregunta`
inner JOIN `pregunta`
    on `trivia_pregunta`.`Id_trivia` = `inId_Trivia` and `trivia_pregunta`.`Id_Pregunta` = `pregunta`.`Id_Pregunta`;


END$$