Delimiter $$
DROP PROCEDURE IF EXISTS Crear_AlternativaCorrecta$$
CREATE PROCEDURE Crear_AlternativaCorrecta(in inId_Pregunta INT, in inAlternativa VARCHAR(100))
BEGIN
INSERT INTO `sistematrivias`.`alternativacorrecta`
(`Id_Pregunta`,
`alternativa`)
VALUES
(inId_Pregunta,
inAlternativa);

END$$