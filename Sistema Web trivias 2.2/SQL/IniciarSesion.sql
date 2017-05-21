Delimiter $$
DROP PROCEDURE IF EXISTS IniciarSesion$$
CREATE PROCEDURE IniciarSesion(in inEmail VARCHAR(100),in inPassword VARCHAR(150))
begin
SELECT 
*
FROM usuario 
where usuario.Email= inEmail and  usuario.Password = inPassword ;
END