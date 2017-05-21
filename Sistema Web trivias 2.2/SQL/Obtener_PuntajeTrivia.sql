Delimiter $$
DROP PROCEDURE IF EXISTS Obtener_PuntajeTrivia$$
CREATE PROCEDURE Obtener_PuntajeTrivia(in inId_Usuario INT)
BEGIN
SELECT Id_Unico,  SUM(Puntaje) FROM sistematrivias.resp_movil 
where Id_Usuario =inId_Usuario
GROUP BY Id_Unico ;

END$$