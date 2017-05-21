Delimiter $$
DROP PROCEDURE IF EXISTS Alternativa_Get$$
CREATE PROCEDURE Alternativa_Get()
BEGIN

SELECT `alternativa`.`Id_Alternativa`,
    `alternativa`.`Nombre`,
    `alternativa`.`Status`
FROM `sistematrivias`.`alternativa`;

END$$