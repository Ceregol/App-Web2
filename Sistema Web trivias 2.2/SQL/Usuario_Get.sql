Delimiter $$
DROP PROCEDURE IF EXISTS Usuario_Get$$
CREATE PROCEDURE Usuario_Get()
begin
SELECT `usuario`.`Id_Usuario`,
    `usuario`.`Email`,
    `usuario`.`Password`,
    `usuario`.`RolUsuario`
FROM `sistematrivias`.`usuario`;
END