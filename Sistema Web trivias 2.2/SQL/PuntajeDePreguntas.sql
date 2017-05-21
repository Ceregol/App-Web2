Delimiter $$
DROP PROCEDURE IF EXISTS PuntajeDePreguntas$$
CREATE PROCEDURE PuntajeDePreguntas(inId_Trivia INT(11))
BEGIN

select sum(puntaje) as puntaje,Id_Pregunta
from resp_movil
where Id_Trivia = inId_Trivia
GROUP BY Id_Pregunta
ORDER BY Id_Pregunta ASC;

END$$