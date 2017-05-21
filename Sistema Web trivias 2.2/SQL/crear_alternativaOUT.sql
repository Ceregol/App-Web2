Delimiter $$
DROP PROCEDURE IF EXISTS crear_AlternativaOUT$$
CREATE PROCEDURE crear_AlternativaOUT(out outID INT, in inNombre VARCHAR(300), in inStatus INT, in inId_Pregunta INT)
BEGIN
	INSERT INTO `sistematrivias`.`alternativa`
		(`Nombre`,
		`Status`)
	VALUES
		(inNombre,
		inStatus);
	SET outID = LAST_INSERT_ID();
	INSERT INTO `sistematrivias`.`pregunta_alternativa`
		(`Id_Pregunta`,
		`Id_Alternativa`)
	VALUES
		(inId_Pregunta,
		outID);

END$$