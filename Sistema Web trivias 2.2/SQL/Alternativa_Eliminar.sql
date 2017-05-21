
Delimiter $$
DROP PROCEDURE IF EXISTS Alternativa_Eliminar$$
CREATE PROCEDURE Alternativa_Eliminar(in inId_Alternativa INT)
BEGIN
DELETE FROM `sistematrivias`.`alternativa`
WHERE Id_Alternativa= inId_Alternativa;

END$$


