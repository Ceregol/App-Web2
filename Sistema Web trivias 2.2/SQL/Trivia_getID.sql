Delimiter $$
DROP PROCEDURE IF EXISTS Trivia_getID$$
CREATE PROCEDURE Trivia_getID(in inId_Trivia INT(11))

BEGIN
SELECT 
    `trivia`.`Nombre`
    
FROM `sistematrivias`.`trivia`
where  `Id_trivia` = inId_Trivia;

END$$