Delimiter $$
DROP PROCEDURE IF EXISTS Resp_movil_Agregar$$
CREATE PROCEDURE Resp_movil_Agregar(in inId_Unico INT, in inId_Usuario INT,in inId_Trivia INT, in inId_Pregunta INT, in inId_Alternativa INT,in inPuntaje INT)
BEGIN
INSERT INTO `sistematrivias`.`resp_movil`
(`Id_Unico`,
`Id_Usuario`,
`Id_Trivia`,
`Id_Pregunta`,
`Id_Alternativa`,
`Puntaje`)
VALUES
(inId_Unico,
inId_Usuario,
inId_Trivia,
inId_Pregunta,
inId_Alternativa,
inPuntaje);
END$$