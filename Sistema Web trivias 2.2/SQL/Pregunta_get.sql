Delimiter $$
DROP PROCEDURE IF EXISTS Pregunta_Get$$
CREATE PROCEDURE Pregunta_Get()
BEGIN

SELECT `pregunta`.`Id_Pregunta`,
    `pregunta`.`Titulo`,
    `pregunta`.`Question`,
    `pregunta`.`Descripcion`
FROM `sistematrivias`.`pregunta`;

END$$