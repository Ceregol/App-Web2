Delimiter $$
DROP PROCEDURE IF EXISTS crear_triviaOUT$$
CREATE PROCEDURE crear_triviaOUT(out outID INT, in inEmail VARCHAR(20),in inNombre VARCHAR(100),in inDescripcion VARCHAR(150), in inFechaDeCreacion VARCHAR(50), in inNombre_Categoria VARCHAR(50))
BEGIN
	insert into 
		Trivia(Email,Nombre,Descripcion,FechaDeCreacion,Nombre_Categoria )
	values
		( inEmail,inNombre,inDescripcion, inFechaDeCreacion,inNombre_Categoria );
		SET outID = LAST_INSERT_ID();

END$$
