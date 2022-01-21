USE shop;

/* Операторы, фильтрация, сортировка и ограничение */
-- 1. Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.
UPDATE
	users
SET
	created_at = NOW(),
	updated_at = NOW();

/* 2. Таблица users была неудачно спроектирована. 
Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались значения в формате "20.10.2017 8:10".
Необходимо преобразовать поля к типу DATETIME, сохранив введеные ранее значения */
UPDATE users SET created_at = STR_TO_DATE(created_at,'%d.%m.%Y %H:%i');
UPDATE users SET updated_at = STR_TO_DATE(updated_at,'%d.%m.%Y %H:%i');
ALTER TABLE users MODIFY COLUMN created_at datetime DEFAULT NOW();
ALTER TABLE users MODIFY COLUMN updated_at datetime DEFAULT NOW();

/* 3. В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 
0, если товар закончился и выше нуля, если на складе имеются запасы.
Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения значения value.
Однако, нулевые запасы должны выводиться в конце, после всех записей. */

-- для начала я заполнил таблицу данными, т.к. в дампе данное действие не производилось:
-- (каждую операцию запустил раз по 5):
INSERT INTO storehouses_products (storehouse_id, product_id, value) VALUES (FLOOR(1 + RAND() * 5),  FLOOR(1 + RAND() * 7),  FLOOR(0 + RAND() * 50));
INSERT INTO storehouses_products (storehouse_id, product_id, value) VALUES (FLOOR(1 + RAND() * 5),  FLOOR(1 + RAND() * 7),  0);
-- получилась следующая таблица с данными:
SELECT * FROM storehouses_products ORDER BY RAND() LIMIT 7;

/*
+----+---------------+------------+-------+---------------------+---------------------+
| id | storehouse_id | product_id | value | created_at          | updated_at          |
+----+---------------+------------+-------+---------------------+---------------------+
| 14 |             4 |          2 |     0 | 2022-01-19 12:11:17 | 2022-01-19 12:11:17 |
| 16 |             5 |          1 |     0 | 2022-01-19 12:11:18 | 2022-01-19 12:11:18 |
|  5 |             1 |          6 |    34 | 2022-01-19 12:10:28 | 2022-01-19 12:10:28 |
| 15 |             5 |          7 |     0 | 2022-01-19 12:11:18 | 2022-01-19 12:11:18 |
|  6 |             1 |          5 |     3 | 2022-01-19 12:10:29 | 2022-01-19 12:10:29 |
| 13 |             4 |          5 |     0 | 2022-01-19 12:11:16 | 2022-01-19 12:11:16 |
| 10 |             5 |          6 |    20 | 2022-01-19 12:10:33 | 2022-01-19 12:10:33 |
+----+---------------+------------+-------+---------------------+---------------------+
*/

-- отсортировал записи по условию задачи:
-- вариант 1:
SELECT * FROM storehouses_products
ORDER BY IF(value = 0, 1, 0), value;

-- вариант 2:
SELECT * FROM storehouses_products
ORDER BY value = 0, value;

/* 5. (по желанию) Из таблицы catalogs извлекаются записи при помощи запроса: SELECT * FROM catalogs WHERE id IN (5, 1, 2); 
Отсортируйте записи в порядке, заданном в списке IN. */
SELECT * FROM catalogs WHERE id IN(5, 1, 2) ORDER BY FIELD(id, 5, 1, 2);


/* Агрегация данных */
-- 1. Подсчитайте средний возраст пользователей в таблице users:
SELECT
	ROUND(AVG(TIMESTAMPDIFF(YEAR, birthday_at, NOW()))) AS avg_age
FROM
	users;


-- 2. Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели.
-- Следует учесть, что необходимы дни недели текущего года, а не года рождения.
SELECT
	DATE_FORMAT(DATE(CONCAT_WS('-', YEAR(NOW()), MONTH(birthday_at), DAY(birthday_at))),
	'%W') AS total_days,
	COUNT(*) AS total
FROM
	users
GROUP BY
	total_days
ORDER BY
	total DESC;

-- 3. (по желанию) Подсчитайте произведение чисел в столбце таблицы:
SELECT ROUND(EXP(SUM(LN(id)))) AS mult FROM catalogs;
