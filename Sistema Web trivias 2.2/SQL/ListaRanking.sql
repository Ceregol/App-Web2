Delimiter $$
DROP PROCEDURE IF EXISTS ListaRanking$$
CREATE PROCEDURE ListaRanking()
BEGIN
SELECT Id_Unico,sum(puntaje),Id_Usuario,Id_Trivia
FROM resp_movil
GROUP BY Id_Unico;
END$$