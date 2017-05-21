Delimiter $$
DROP PROCEDURE IF EXISTS VerSiEstaBuena$$
CREATE PROCEDURE VerSiEstaBuena(in inId_AlternativaMovil INT(11))
BEGIN

SELECT 
    `alternativa`.`Status`
FROM `sistematrivias`.`alternativa`
where alternativa.Id_Alternativa = inId_AlternativaMovil;

END$$