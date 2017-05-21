Delimiter $$
DROP PROCEDURE IF EXISTS ListaAlumnos$$
CREATE PROCEDURE ListaAlumnos(in inId_trivia INT)
begin
select distinct resp_movil.Id_Usuario, Email from resp_movil 
inner join usuario
where Id_Trivia = inId_trivia and resp_movil.Id_Usuario = usuario.Id_Usuario;
END