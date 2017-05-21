Delimiter $$
DROP PROCEDURE IF EXISTS crear_trivia$$
CREATE PROCEDURE crear_trivia(in inId_trivia INT, in inNombre VARCHAR(100),in inDescripcion VARCHAR(150), in inFechaDeCreacion VARCHAR(50), in inId_Categoria INT)
BEGIN
	insert into 
		Trivia(Id_trivia, Nombre,Descripcion,FechaDeCreacion,Id_Categoria )
	values
		(inId_trivia, inNombre,inDescripcion, inFechaDeCreacion,inId_Categoria );

END$$