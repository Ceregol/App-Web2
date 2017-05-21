delimiter $$
DROP PROCEDURE IF EXISTS Profesor_Trivia $$
CREATE PROCEDURE Profesor_Trivia (
	inId_Profesor INT
)
BEGIN
	SELECT
		*
	FROM
		profesor_trivia
	WHERE
		Id_Profesor = inId_Profesor;
END
$$