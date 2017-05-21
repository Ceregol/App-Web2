Delimiter $$
DROP PROCEDURE IF EXISTS RolesUsuario_Get$$
CREATE PROCEDURE RolesUsuario_Get()
BEGIN
SELECT * FROM sistematrivias.rolesusuario;

END$$