Delimiter $$
DROP PROCEDURE IF EXISTS crear_Pregunta$$
CREATE PROCEDURE crear_Pregunta(in inId_Pregunta INT, in inTitulo VARCHAR(50), in inQuestion VARCHAR(300),in inDescripcion VARCHAR(45),in inId_Trivia INT)
BEGIN
	insert into 
		Pregunta(Id_Pregunta, Titulo,Question,Descripcion)
	values
		(inId_Pregunta, inTitulo,inQuestion, inDescripcion);
     
    INSERT INTO trivia_pregunta(Id_trivia, Id_Pregunta)
VALUES
(inId_Trivia, inId_Pregunta);

END$$