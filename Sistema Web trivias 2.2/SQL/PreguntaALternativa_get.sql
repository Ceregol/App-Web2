Delimiter $$
DROP PROCEDURE IF EXISTS PreguntaALternativa_get$$
CREATE PROCEDURE PreguntaALternativa_get(in inID_Pregunta INT)
BEGIN

SELECT `pregunta_alternativa`.`Id_Pregunta`,
    `pregunta_alternativa`.`Id_Alternativa`
FROM `sistematrivias`.`pregunta_alternativa`
WHERE `pregunta_alternativa`.`Id_Pregunta` = inID_Pregunta;

END$$