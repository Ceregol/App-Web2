delimiter $$
DROP PROCEDURE IF EXISTS Profesor_Crear $$
 CREATE PROCEDURE Profesor_Crear
 (
 	inId_usuario INT
 )
 BEGIN
 	INSERT INTO Profesor(id_usuario)
 	VALUES (inId_usuario);
 	SELECT LAST_INSERT_ID() AS ultimo_id_insertado;
END$$
