Delimiter $$
DROP PROCEDURE IF EXISTS Alternativa_Editar$$
CREATE PROCEDURE Alternativa_Editar(in inId_Alternativa INT, in inNombre VARCHAR(300), in inStatus INT)
BEGIN
UPDATE `sistematrivias`.`alternativa`
SET
`Nombre` = inNombre,
`Status` = inStatus
WHERE `Id_Alternativa` = inId_Alternativa;
END$$