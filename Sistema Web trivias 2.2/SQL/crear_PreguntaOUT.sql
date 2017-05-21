Delimiter $$
DROP PROCEDURE IF EXISTS crear_PreguntaOUT$$
CREATE PROCEDURE crear_PreguntaOUT(out outID INT, in inTitulo VARCHAR(50), in inQuestion VARCHAR(300),in inDescripcion VARCHAR(45),in inId_Trivia INT)
BEGIN
	insert into 
		Pregunta(Titulo,Question,Descripcion)
	values
		(inTitulo,inQuestion, inDescripcion);
     SET outID = LAST_INSERT_ID();
    INSERT INTO trivia_pregunta(Id_trivia, id_Pregunta)
VALUES
(inId_Trivia, outID);


END$$