delimiter $$
DROP PROCEDURE IF EXISTS AlternativaDeUnaPregunta
 $$
CREATE PROCEDURE AlternativaDeUnaPregunta(inId_Pregunta INT(11))
	BEGIN
select distinct `alternativa`.`Id_Alternativa`, `alternativa`.`Nombre` , `alternativa`.`status`
from `alternativa` 
inner join `pregunta_alternativa`
on `pregunta_alternativa`.`Id_Pregunta` = `inId_Pregunta` and `pregunta_alternativa`.`Id_Alternativa`= `alternativa`.`Id_Alternativa`;

END$$