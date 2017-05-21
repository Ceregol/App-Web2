Delimiter $$
DROP PROCEDURE IF EXISTS Pregunta_Editar$$
CREATE PROCEDURE Pregunta_Editar(in inId_Pregunta INT, in inTitulo VARCHAR(300), in inQuestion VARCHAR(300),in inDescripcion VARCHAR(45))
BEGIN
	UPDATE `sistematrivias`.`pregunta`
	SET
		
		`Titulo` = inTitulo,
		`Question` = inQuestion,
		`Descripcion` = inDescripcion
	WHERE `Id_Pregunta` = inId_Pregunta;

END$$
