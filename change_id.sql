DELIMITER $$

CREATE DEFINER=`neo`@`%` PROCEDURE `change_id`()
BEGIN
	declare i int default 42;
	declare j int default 45;
	WHILE i < 50 DO
		UPDATE `test`.`cartridge` SET `id_cartridge` = i WHERE `id_cartridge` = j;
		SET i = i + 1;
		SET j = j + 1;
	END while;
END
