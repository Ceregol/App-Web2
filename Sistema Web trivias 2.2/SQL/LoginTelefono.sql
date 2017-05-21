Delimiter $$
DROP PROCEDURE IF EXISTS LoginTelefono$$
CREATE PROCEDURE LoginTelefono(in inEmail VARCHAR(100),in inPassword VARCHAR(150))
begin
select Id_Usuario, RolUsuario from usuario 
where Email = inEmail and Password = inPassword ;
END
