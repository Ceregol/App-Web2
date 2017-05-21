Delimiter $$
DROP PROCEDURE IF EXISTS esRol$$
CREATE PROCEDURE esRol(in inEmail varchar(30))
BEGIN
select idRoles from rolesUsuario
where Email = inEmail;

END$$