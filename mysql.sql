SELECT * FROM orgtech;
SELECT * FROM cartridge;
SELECT * FROM repairpc;
update cartridge SET id_cartridge = 29 WHERE id_cartridge = 29;
ALTER TABLE cartridge AUTO_INCREMENT=25;
#####################################################
#	Поиск минимального значения номера картриджа	#
#####################################################
SELECT MIN(number_cartridge) AS min_number_cartridge FROM cartridge;
#################################################################
#	Вывод значений за определенный период от текущего момента	#
#################################################################
SELECT * FROM cartridge WHERE date_cartridge >= adddate(NOW(), interval -30 day);
#############################################
#	Вывод значений за определенный день		#
#############################################
SELECT * FROM cartridge WHERE date_format(date_cartridge, '%Y-%m-%d') = '2014-08-04';
#####################################################
#	Количество значений за определенный день		#
#####################################################
SELECT count(id_cartridge) FROM cartridge WHERE date_format(date_cartridge, '%Y-%m-%d') = '2014-08-04';
#####################################################
#	Вывод всех значений конкретного владельца		#
#####################################################
SELECT * FROM cartridge WHERE owner_cartridge = 'Русское Золото';
