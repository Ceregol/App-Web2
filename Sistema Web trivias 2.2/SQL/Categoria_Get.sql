Delimiter $$
DROP PROCEDURE IF EXISTS Categoria_Get$$
CREATE PROCEDURE Categoria_Get()
BEGIN

SELECT distinct `categoria`.`Nombre_Categoria`
FROM `sistematrivias`.`categoria`;

END$$