Delimiter $$
DROP PROCEDURE IF EXISTS Trivia_Editar$$
CREATE PROCEDURE Trivia_Editar(in inId_trivia INT, in inNombre VARCHAR(200),in inDescripcion VARCHAR(200), in inFechaDeCreacion VARCHAR(200), in inNombre_Categoria VARCHAR(200) )
BEGIN
UPDATE `sistematrivias`.`trivia`
SET
`Nombre` =inNombre,
`Descripcion` =inDescripcion,
`FechaDeCreacion` = inFechaDeCreacion,
`Nombre_Categoria` = inNombre_Categoria
WHERE `Id_trivia` = inId_trivia;

END$$