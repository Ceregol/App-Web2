Delimiter $$
DROP PROCEDURE IF EXISTS TriviasCategoria$$
CREATE PROCEDURE TriviasCategoria( in inNombre_Categoria INT)
BEGIN

select distinct (`trivia`.`Nombre`)
	from `sistematrivias`.`trivia`, `sistematrivias`.`categoria`
	where trivia.Nombre_Categoria = inNombre_Categoria;

END$$