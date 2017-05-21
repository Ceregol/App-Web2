delimiter $$
DROP PROCEDURE IF EXISTS Profesor_SeleccionarPorRut $$
CREATE PROCEDURE Profesor_SeleccionarPorRut
(
	inRut INT
) 
BEGIN
SELECT rut, nombre, email, telefono, Id_Profesor, contrasenia
FROM 
	Profesor p
	INNER JOIN Usuario u
	ON (p.id_usuario = u.rut AND p.id_usuario = inRut);
END$$