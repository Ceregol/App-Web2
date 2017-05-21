
Delimiter $$
DROP PROCEDURE IF EXISTS Usuario_eliminar$$
CREATE PROCEDURE Usuario_eliminar(in inId_Usuario INT )
BEGIN
DELETE FROM usuario
WHERE Id_Usuario = inId_Usuario;

END$$