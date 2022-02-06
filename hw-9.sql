/* Транзакции ДЗ-9 */

/* 
	1. В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных.
	Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.
*/

START TRANSACTION;
	USE sample;
	-- в таблице sample.users не было 3х столбцов, пришлось добавить
	ALTER TABLE users ADD COLUMN birthday_at DATE AFTER name;
	ALTER TABLE users ADD COLUMN created_at DATETIME DEFAULT CURRENT_TIMESTAMP AFTER birthday_at;
	ALTER TABLE users ADD COLUMN updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP AFTER created_at;
	INSERT INTO users SELECT * FROM shop.users WHERE shop.users.id = 1;
	USE shop;
	DELETE FROM users WHERE id = 1; 
COMMIT;

/* 
	2. Создайте представление, которое выводит название name товарной позиции из таблицы products 
	и соответствующее название каталога name из таблицы catalogs.
*/

USE shop;
CREATE OR REPLACE VIEW products_catalogs_v (product, `catalog`) AS
SELECT p.name, c.name
FROM products p
LEFT JOIN catalogs c
ON p.catalog_id = c.id;

SELECT * FROM products_catalogs_v;

/* 
	3. (по желанию) Пусть имеется таблица с календарным полем created_at.
	В ней размещены разряженые календарные записи за август 2018 года '2018-08-01', '2018-08-04', '2018-08-16' и 2018-08-17.
	Составьте запрос, который выводит полный список дат за август,
	выставляя в соседнем поле значение 1, если дата присутствует в исходном таблице и 0, если она отсутствует.
*/
-- создал таблицу в тестовой БД
USE example;
CREATE TABLE news (
	id SERIAL PRIMARY KEY,
	heading VARCHAR(100) NOT NULL,
	created_at DATE NOT NULL
);
-- заполнил её теми записями, которые даны в условии:
INSERT INTO news (heading, created_at) 
VALUES 
	('heading 1', '2018-08-01'),
	('heading 2', '2018-08-04'),
	('heading 3', '2018-08-16'),
	('heading 4', '2018-08-17');

-- временная таблица для количества дней:
CREATE TEMPORARY TABLE month_temp (
	day INT
);

INSERT INTO month_temp 
VALUES 
	(0), (1), (2), (3), (4),
	(5), (6), (7), (8), (9), 
	(10), (11), (12), (13), (14),
	(15), (16), (17), (18), (19),
	(20), (21), (22), (23), (24),
	(25), (26), (27), (28), (29), (30);

-- непосредственный запрос:
SET @last_day := '2018-08-31';
SELECT 
	DATE(DATE(@last_day) - INTERVAL m.day DAY) AS day_of_month,
	NOT ISNULL(n.created_at) AS news_exist
FROM month_temp AS m
	LEFT JOIN news n 
		ON DATE(DATE(@last_day) - INTERVAL m.day DAY) = n.created_at 
ORDER BY day_of_month;


/* 
	4. (по желанию) Пусть имеется любая таблица с календарным полем created_at.
	Создайте запрос, который удаляет устаревшие записи из таблицы, оставляя только 5 самых свежих записей.
*/

-- добавил записи в таблицу news:
INSERT INTO news (heading, created_at) 
VALUES 
	('heading 5', '2018-08-02'),
	('heading 6', '2018-08-20'),
	('heading 7', '2018-08-27'),
	('heading 8', '2018-08-30'),
	('heading 9', '2018-08-09'),
	('heading 10', '2018-08-12');

-- воспользовался динамическим запросом и переменной:
SET @deleted_quantity := (SELECT COUNT(*) - 5 FROM news);
SELECT @deleted_quantity;
PREPARE update_news FROM 'DELETE FROM news ORDER BY created_at LIMIT ?';
EXECUTE update_news USING @deleted_quantity;

/* Хранимые процедуры и функции, триггеры */

/*
	1. Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток.
	С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро",
	с 12:00 до 18:00 функция должна возвращать фразу "Добрый день",
	с 18:00 до 00:00 — "Добрый вечер",
	с 00:00 до 6:00 — "Доброй ночи".
*/

DELIMITER //
DROP FUNCTION IF EXISTS hello_fn//
CREATE FUNCTION hello_fn()
RETURNS VARCHAR(100) NO SQL
BEGIN
	DECLARE exact_time INT;
	SET exact_time = HOUR(NOW());
	CASE
	WHEN (exact_time BETWEEN 6 AND 12) THEN 
		RETURN 'Доброе утро';
	WHEN (exact_time BETWEEN 12 AND 18) THEN 
		RETURN 'Добрый день';
	WHEN (exact_time BETWEEN 18 AND 23) THEN 
		RETURN 'Добрый вечер';
	ELSE
		RETURN 'Доброй ночи';
	END CASE;		
END//
DELIMITER ;

SELECT hello_fn();

/*
	2. В таблице products есть два текстовых поля: name с названием товара и description с его описанием.
	Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема.
	Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены.
	При попытке присвоить полям NULL-значение необходимо отменить операцию.
*/
USE shop;

DELIMITER //
CREATE TRIGGER check_products_before_insert BEFORE INSERT ON products 
FOR EACH ROW 
BEGIN 
	IF NEW.name IS NULL AND NEW.description IS NULL THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = `You shouldn't insert both NULL values to product name and description simultaneously`;
	END IF;
END//
DELIMITER ;

DELIMITER //
CREATE TRIGGER check_products_before_update BEFORE UPDATE ON products 
FOR EACH ROW 
BEGIN 
	IF NEW.name IS NULL AND NEW.description IS NULL THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = `You shouldn't update both values: product name and description with NULL value simultaneously`;
	END IF;
END//
DELIMITER ;
