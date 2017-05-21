Delimiter $$
DROP PROCEDURE IF EXISTS TriviaPregunta_Get$$
CREATE PROCEDURE TriviaPregunta_Get(in inId_trivia INT)
BEGIN

SELECT `trivia_pregunta`.`Id_trivia`,
    `trivia_pregunta`.`Id_Pregunta`
FROM `sistematrivias`.`trivia_pregunta`
WHERE `trivia_pregunta`.`Id_trivia` = inId_trivia;

END$$