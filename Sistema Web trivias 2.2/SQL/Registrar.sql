Delimiter $$
DROP PROCEDURE IF EXISTS Registrar$$
CREATE PROCEDURE Registrar(out outID INT, in inEmail VARCHAR(100),in inPassword VARCHAR(150), in inRolDeUsuario INT)
begin
INSERT INTO `sistematrivias`.`usuario`
(`Email`,
`Password`,
`RolUsuario`)
VALUES
(inEmail,
inPassword,
inRolDeUsuario);
SET outID = LAST_INSERT_ID();
END
