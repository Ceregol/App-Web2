Delimiter $$
DROP PROCEDURE IF EXISTS Pregunta_Eliminar$$
CREATE PROCEDURE Pregunta_Eliminar(in inId_Pregunta INT)
BEGIN
DELETE FROM `sistematrivias`.`pregunta`
WHERE Id_Pregunta= inId_Pregunta;


END$$