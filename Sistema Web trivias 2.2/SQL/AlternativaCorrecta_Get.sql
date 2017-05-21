

Delimiter $$
DROP PROCEDURE IF EXISTS AlternativaCorrecta_Get$$
CREATE PROCEDURE AlternativaCorrecta_Get(in inId_trivia INT)
BEGIN

SELECT `alternativacorrecta`.`Id_Pregunta`,
    `alternativacorrecta`.`alternativa`
FROM `sistematrivias`.`alternativacorrecta`
WHERE `alternativacorrecta`.`Id_trivia` = inId_trivia;

END$$

