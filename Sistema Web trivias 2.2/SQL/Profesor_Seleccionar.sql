
DROP PROCEDURE IF EXISTS Profesor_Seleccionar $$
CREATE PROCEDURE Profesor_Seleccionar
(
	inId_Profesor INT
) 
BEGIN
SELECT rut, nombre, email, telefono, Id_Profesor, contrasenia
FROM 
	Profesor Profesor_Trivia
LEFT JOIN usuario us
	ON us.rut = Profesor_Trivia.id_usuario
WHERE Profesor_Trivia.id_personal = inId_Profesor;
END$$