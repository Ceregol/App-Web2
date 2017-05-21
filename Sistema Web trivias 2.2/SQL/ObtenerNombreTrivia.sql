delimiter $$
DROP PROCEDURE IF EXISTS ObtenerNombreTrivia
 $$
CREATE PROCEDURE ObtenerNombreTrivia(inID_Trivia INT(11))
BEGIN
      select nombre from trivia where Id_Trivia = inID_Trivia; 
END$$