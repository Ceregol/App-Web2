Delimiter $$
DROP PROCEDURE IF EXISTS PuntajeDeUnaTrivia$$
CREATE PROCEDURE PuntajeDeUnaTrivia(in inId_Usuario INT,in inId_Trivia INT )
BEGIN
SELECT Id_Unico,sum(puntaje)
FROM resp_movil
WHERE Id_Usuario=inId_Usuario and Id_Trivia =inId_Trivia
GROUP BY Id_Unico;
END$$