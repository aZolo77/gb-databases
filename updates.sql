/* Таблица справочник стран */
-- 1. создание таблицы
CREATE TABLE countries (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  name VARCHAR(130) NOT NULL UNIQUE COMMENT "Название страны",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Справочник стран";
-- 2. заполнение таблицы значениями из таблицы profiles:
INSERT INTO countries (name) (SELECT country FROM profiles);
-- 3. удаление ненужных столбцов:
ALTER TABLE profiles DROP COLUMN city;
ALTER TABLE profiles DROP COLUMN country;


/* Таблица справочник городов */
-- 1. создание таблицы
CREATE TABLE cities (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(130) NOT NULL COMMENT "Название города",
  country_id INT COMMENT "Ссылка на страну",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Города";
-- 2. заполнение таблицы значениями из таблицы profiles:
INSERT INTO cities (name) (SELECT city FROM profiles);
-- 3. заполнение внешнего ключа 'country_id' индексами из таблицы стран:
UPDATE cities SET country_id = FLOOR(1 + RAND() * 100);


/* Таблица users */
-- 1. приравнял дату создания записи в таблицах users и profiles:
UPDATE users SET created_at = (SELECT created_at FROM profiles WHERE users.id = profiles.user_id);
-- 2. проверка на корректность данных в столбцах создания и обновления записи и их корректировка:
SELECT * FROM users WHERE created_at > updated_at;
UPDATE users SET updated_at = NOW() WHERE created_at  > updated_at;


/* Таблица profiles */
-- 1. изменил тип столбца 'gender':
ALTER TABLE profiles MODIFY COLUMN gender ENUM('M', 'F');
-- 2. добавил столбец 'city_id' как внешний ключ к таблице городов:
ALTER TABLE profiles ADD COLUMN city_id INT AFTER birthday;
-- 3. заполнение столбца с внешним ключом на таблицу городов:
UPDATE profiles SET city_id = FLOOR(1 + RAND() * 100);


/* Таблица messages без изменений */

/* Таблица communities без изменений */

/* Таблица communities_users без изменений */

/* Таблица media_types без изменений */


/* Таблица media */
-- 1. добавил столбец 'is_shared' как признак того, что файл был расшарен, а также заполнил его данными:
ALTER TABLE media ADD COLUMN is_shared BOOLEAN AFTER user_id;
UPDATE media SET is_shared = FLOOR(0 + RAND() * 2);
-- 2. создал и заполнил данными временную таблицу с расширениями файлов для генерации путей в столбце 'filename':
CREATE TEMPORARY TABLE extensions (name VARCHAR(10));
INSERT INTO extensions VALUES ('jpeg'), ('mp4'), ('mp3'), ('avi'), ('png');
SELECT * FROM extensions;
UPDATE media SET filename = CONCAT(
	'https://dropbox.net/vk/',
	filename,
	'.',
	(SELECT name FROM extensions ORDER  BY RAND() LIMIT 1)
);
-- 3. так как при генерации данных в сервисе filldb не было типа json, пришлось заново поменять тип столбца 'metadata':
ALTER TABLE media MODIFY COLUMN metadata JSON;
-- 4. заполнил метаданные:
UPDATE media SET metadata = CONCAT(
	'{"owner": "',
	(SELECT CONCAT( first_name, ' ', last_name) FROM users WHERE id = user_id),
	'"}'
);


/* Таблица friendship_statuses без изменений */


/* Таблица friendship */
-- 1. добавил столбец 'rejected_at' для того, чтобы отслеживать время в случае отказа от предложения дружбы:
ALTER TABLE friendship ADD COLUMN rejected_at DATETIME AFTER confirmed_at;
-- 2. добавил столбец 'rejected_by_id' для записи id user'a, который дал отказ:
ALTER TABLE friendship  ADD COLUMN rejected_by_id INT AFTER rejected_at;
-- 3. проставил значения в столбец 'rejected_at':
UPDATE friendship SET rejected_at = updated_at WHERE FLOOR(0 + RAND() * 2);
-- 4. проставил значения в столбец 'rejected_by_id' (для того, чтобы значения брались рандомно из столбцов 'user_id' и 'friend_id' воспользовался разными условиями):
UPDATE  friendship SET rejected_by_id = user_id WHERE rejected_at IS NOT NULL AND FLOOR(0 + RAND() * 2);
UPDATE  friendship SET rejected_by_id = friend_id WHERE rejected_at IS NOT NULL AND rejected_by_id IS NULL;
-- 5. обновил столбец 'friendship_status_id' в записях, где запрос дружбы отклонён пользователем, остальные записи в данном столбце сделал равными другим статусам:
UPDATE friendship SET friendship_status_id = 2 WHERE rejected_at IS NOT NULL;
UPDATE friendship SET friendship_status_id = 1 WHERE rejected_at IS NULL AND friendship_status_id = 2 AND user_id < 51;
UPDATE friendship SET friendship_status_id = 3 WHERE rejected_at IS NULL AND friendship_status_id = 2 AND user_id > 50;

SELECT * FROM friendship WHERE created_at < updated_at;