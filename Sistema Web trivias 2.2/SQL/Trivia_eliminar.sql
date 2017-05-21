Delimiter $$
DROP PROCEDURE IF EXISTS Trivia_eliminar$$
CREATE PROCEDURE Trivia_eliminar(in inId_Trivia INT )
BEGIN
DELETE FROM `sistematrivias`.`trivia`
WHERE Id_Trivia = inId_Trivia;

END$$

