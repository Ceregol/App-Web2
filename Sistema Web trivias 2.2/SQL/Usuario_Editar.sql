Delimiter $$
DROP PROCEDURE IF EXISTS Usuario_Editar$$
CREATE PROCEDURE Usuario_Editar(in inEmail VARCHAR(300), in inPassword VARCHAR(300))
BEGIN
UPDATE `sistematrivias`.`usuario`
SET


`Password` = inPassword
WHERE `Email` = inEmail;


END$$