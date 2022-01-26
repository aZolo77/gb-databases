/* ДЗ 7 */
-- 1. Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине
SELECT id, name FROM users WHERE id IN (SELECT user_id FROM orders);

-- 2. Выведите список товаров products и разделов catalogs, который соответствует товару
SELECT c.name, p.name
FROM 
	products p 
JOIN
	catalogs c 
WHERE c.id = p.catalog_id;

-- 3. (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name).
-- Поля from, to и label содержат английские названия городов, поле name — русское.
-- Выведите список рейсов flights с русскими названиями городов
USE example;
CREATE TABLE flights (
	id SERIAL PRIMARY KEY,
	`from` VARCHAR(100),
	`to` VARCHAR(100)
);
INSERT INTO flights (`from`, `to`)
VALUES 
	('moscow', 'omsk'), 
	('novgorod', 'kazan'), 
	('irkutsk', 'moscow'), 
	('omsk', 'irkutsk'), 
	('moscow', 'kazan');
	
CREATE TABLE cities (
	id SERIAL PRIMARY KEY,
	`label` VARCHAR(100),
	`name` VARCHAR(100)
);
INSERT INTO cities (`label`, `name`)
VALUES 
	('moscow', 'Москва'),
	('irkutsk', 'Иркутск'),  
	('novgorod', 'Новгород'), 
	('kazan', 'Казань'), 
	('omsk', 'Омск');

SELECT
	id,
	(SELECT c.name FROM cities c WHERE flights.`from` = c.label) AS `from`,
	(SELECT c.name FROM cities c WHERE flights.`to` = c.label) AS `to`
FROM flights;
	
