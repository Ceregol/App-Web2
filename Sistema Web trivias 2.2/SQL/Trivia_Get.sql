Delimiter $$
DROP PROCEDURE IF EXISTS Trivia_Get$$
CREATE PROCEDURE Trivia_Get()
BEGIN

SELECT `trivia`.`Id_trivia`,
    `trivia`.`Nombre`,
    `trivia`.`Descripcion`,
    `trivia`.`FechaDeCreacion`,
    `trivia`.`Nombre_Categoria`,
    `trivia`.`Email`
FROM `sistematrivias`.`trivia`;

END$$