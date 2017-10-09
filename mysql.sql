SELECT * FROM orgtech;
SELECT * FROM cartridge;
SELECT * FROM repairpc;

SELECT * FROM cartridge WHERE owner_cartridge = 'Не известно' 
						and date_format(date_cartridge, '%Y-%m-%d') >= '2014-10-01'
						and date_format(date_cartridge, '%Y-%m-%d') <= '2014-10-31';

#ALTER TABLE repairpc AUTO_INCREMENT=6;
#################################################################
#	Вывод значений за определенный период от текущего момента	#
#################################################################
SELECT * FROM cartridge WHERE date_cartridge >= adddate(NOW(), interval - 30 day);
#############################################
#	Вывод значений за определенный день		#
#############################################
SELECT * FROM cartridge WHERE date_format(date_cartridge, '%Y-%m-%d') = '2015-05-14';

#UPDATE `test`.`cartridge` SET `date_cartridge`='2015-05-06 10:00:00' WHERE `id_cartridge`>='1203';
#####################################################
#	Количество значений за определенный день		#
#####################################################
SELECT count(id_cartridge) FROM cartridge WHERE date_format(date_cartridge, '%Y-%m-%d') = '2014-10-07';
#####################################################
#	Вывод всех значений конкретного владельца		#
#####################################################
SELECT date_format(date_cartridge, '%d %b') as Дата,
	   owner_cartridge as Владелец,
	   model_cartridge as Картридж,
	   refill as Заправка,
	   drum as Замена_барабана,
	   pcr as Замена_ролика,
	   rakel as Замена_ракеля,
	   mag_roller as Замена_маг_вала,
	   сlean_cartridge as Чистка,
	   repair as Ремонт
	FROM cartridge 
	WHERE owner_cartridge = 'Дуэт' and date_format(date_cartridge, '%Y-%m-%d') >= '2015-03-13' ORDER BY model_cartridge;
#####################################################
#	Вывод всех значений конкретного картриджа		#
#####################################################
SELECT * FROM cartridge WHERE number_cartridge = 0;

SELECT count(id_cartridge) AS Заправки FROM cartridge
		WHERE (date_format(date_cartridge, '%Y-%m-%d') >= '2014-11-01'
			AND date_format(date_cartridge, '%Y-%m-%d') <= '2014-11-30')
			AND refill = 1;

SELECT count(id_cartridge) AS ЗБ FROM cartridge
		WHERE (date_format(date_cartridge, '%Y-%m-%d') >= '2014-11-01'
			AND date_format(date_cartridge, '%Y-%m-%d') <= '2014-11-30')
			AND drum = 1;

SELECT count(id_cartridge) AS ЗР FROM cartridge
		WHERE (date_format(date_cartridge, '%Y-%m-%d') >= '2014-11-01'
			AND date_format(date_cartridge, '%Y-%m-%d') <= '2014-11-30')
			AND PCR = 1;

SELECT count(id_cartridge) AS ЗРак FROM cartridge
		WHERE (date_format(date_cartridge, '%Y-%m-%d') >= '2014-11-01'
			AND date_format(date_cartridge, '%Y-%m-%d') <= '2014-11-30')
			AND rakel = 1;

SELECT count(id_cartridge) AS Чистка FROM cartridge
		WHERE (date_format(date_cartridge, '%Y-%m-%d') >= '2014-11-01'
			AND date_format(date_cartridge, '%Y-%m-%d') <= '2014-11-30')
			AND сlean_cartridge = 1;

SELECT count(id_cartridge) AS Ремонт FROM cartridge
		WHERE (date_format(date_cartridge, '%Y-%m-%d') >= '2014-11-01'
			AND date_format(date_cartridge, '%Y-%m-%d') <= '2014-11-30')
			AND repair != "";

CALL change_id();
CALL test1();

SELECT * FROM cartridge WHERE owner_cartridge = 'ИП Леонова';

SELECT * FROM cartridge WHERE date_format(date_cartridge, '%Y-%m-%d') >= '2015-03-01'
						and date_format(date_cartridge, '%Y-%m-%d') <= '2015-03-31';
						
SELECT * FROM cartridge WHERE date_format(date_cartridge, '%Y-%m-%d') BETWEEN '2017-06-09' AND '2017-06-10';


						

						
select distinct(number_cartridge) 
	from cartridge 
	where number_cartridge <= 100 
    order by number_cartridge;
    
create temporary table temp
	select distinct(number_cartridge) 
	from cartridge 
	where number_cartridge <= 100 
    order by number_cartridge;
    
select @total := count(number_cartridge) as total from temp;
