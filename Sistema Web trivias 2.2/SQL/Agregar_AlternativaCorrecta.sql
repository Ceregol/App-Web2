Delimiter $$
DROP PROCEDURE IF EXISTS Agregar_AlternativaCorrecta$$
CREATE PROCEDURE Agregar_AlternativaCorrecta(in inId_trivia INT, in inId_Pregunta INT,in inAlternativa VARCHAR(150))
BEGIN
INSERT INTO `sistematrivias`.`alternativacorrecta`
(`Id_trivia`,
`Id_Pregunta`,
`alternativa`)
VALUES
(inId_trivia,
inId_Pregunta,
inAlternativa);

END$$