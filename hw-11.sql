/* ДЗ 11: оптимизация запросов */

/*
	1. Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users,
	catalogs и products в таблицу logs помещается время и дата создания записи, название
	таблицы, идентификатор первичного ключа и содержимое поля name.
*/
USE shop;

CREATE TABLE logs (
	id SERIAL PRIMARY KEY,
	`table_name` VARCHAR(100) NOT NULL,
	`row_id` INT UNSIGNED NOT NULL,
	`row_name` VARCHAR(255) NOT NULL,
	`date_time` DATETIME DEFAULT CURRENT_TIMESTAMP
) ENGINE=ARCHIVE;

DESCRIBE logs;

DELIMITER //
CREATE TRIGGER products_after_insert AFTER INSERT ON products
FOR EACH ROW 
BEGIN 
	INSERT INTO logs VALUES (NULL, 'products', NEW.id, NEW.name, DEFAULT);
END//
DELIMITER ;

DELIMITER //
CREATE TRIGGER users_after_insert AFTER INSERT ON users
FOR EACH ROW 
BEGIN  
	INSERT INTO logs VALUES (NULL, 'users', NEW.id, NEW.name, DEFAULT);
END//
DELIMITER ;

DELIMITER //
CREATE TRIGGER catalogs_after_insert AFTER INSERT ON catalogs
FOR EACH ROW 
BEGIN 
	INSERT INTO logs VALUES (NULL, 'catalogs', NEW.id, NEW.name, DEFAULT);
END//
DELIMITER ;