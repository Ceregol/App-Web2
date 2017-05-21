Delimiter $$
DROP PROCEDURE IF EXISTS ObtenerIdUsuario$$
CREATE PROCEDURE ObtenerIdUsuario(in inEmail VARCHAR(50))
BEGIN
SELECT Id_Usuario FROM sistematrivias.usuario
where Email = inEmail;
END$$