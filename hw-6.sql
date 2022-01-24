/* ДЗ 6. Операторы, фильтрация, сортировка и ограничение. Агрегация данных */
USE vk;

-- 1. Создать и заполнить таблицы лайков и постов
-- создание таблицы лайков:
CREATE TABLE likes (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	user_id INT UNSIGNED NOT NULL,
	target_id INT UNSIGNED NOT NULL,
	target_type ENUM(
		'messages',
		'users',
		'posts',
		'media'
	) NOT NULL,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- создание временной таблицы типов лайков:
CREATE TEMPORARY TABLE target_types (
	name VARCHAR(100) NOT NULL UNIQUE
);

-- заполнение временной таблицы
INSERT INTO target_types (name) VALUES ('messages'), ('users'), ('posts'), ('media');

-- заполнение таблицы лайков:
INSERT INTO likes
	SELECT
		id,
		FLOOR(1 + (RAND() * 100)),
		FLOOR(1 + (RAND() * 100)),
		(SELECT name FROM target_types ORDER BY RAND() LIMIT 1),
		CURRENT_TIMESTAMP
	FROM
		messages;

-- создание таблицы постов:
CREATE TABLE posts(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	user_id INT UNSIGNED NOT NULL,
	community_id INT UNSIGNED,
	head VARCHAR(255),
	body TEXT NOT NULL,
	media_id INT UNSIGNED,
	is_public BOOLEAN DEFAULT TRUE,
	is_archived BOOLEAN DEFAULT FALSE,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- для заполнения постов создал временную таблицу `random_text` с текстами для заголовков и содержимого постов и с помощью генератора заполнил её:
CREATE TEMPORARY TABLE `random_text` (
  `head` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT
	INTO
	`random_text`
VALUES (
	'Sit veritatis harum vitae aliquam iure ducimus quo qui.',
	'Aliquid est dolorem accusantium asperiores. Eos ad a nam. Temporibus sint quis dolorem blanditiis enim et quibusdam dicta.'
),
(
	'Atque optio nihil cumque aut laboriosam tempore.',
	'Eius et voluptas fugiat et quo minus occaecati. Vero rerum nobis tempora minus eius cumque. Quia quibusdam nobis minus est.'
),
(
	'Delectus eum suscipit qui pariatur nulla enim occaecati corporis.',
	'Velit alias necessitatibus ut veniam. Id ad ut repudiandae rerum ex et. Voluptatem mollitia eos occaecati doloribus. Itaque magni et aut architecto sequi. Fugit consequatur enim magnam.'
),
(
	'Corporis excepturi natus numquam repudiandae illo est.',
	'Qui incidunt voluptas quibusdam ipsum sequi aut. Corrupti omnis quod incidunt eaque eum non earum. Deleniti aut maiores qui consequatur incidunt debitis dolorem.'
),
(
	'Numquam labore aspernatur ullam a.',
	'Error illo autem quas voluptates. Sed quibusdam voluptates nisi fugiat. Similique natus quod qui eos. Rerum nihil consequuntur soluta rerum quas impedit.'
),
(
	'Ut sunt omnis fugit minus quia cum fugit.',
	'Sed ut perspiciatis libero praesentium laudantium ab. Dicta necessitatibus debitis sint qui. Delectus iste impedit voluptatem natus nobis sunt in.'
),
(
	'Quis fuga ipsum incidunt nemo.',
	'Reprehenderit nam ducimus sint non dolores rerum cupiditate. Et atque architecto fugiat. Aut illum voluptas aspernatur et recusandae rerum modi.'
),
(
	'Adipisci quibusdam omnis maiores qui optio.',
	'Minus reprehenderit temporibus nulla nam ea. Velit reiciendis eos aut esse et. Aut dolorem eaque ab qui eligendi tenetur.'
),
(
	'Minima occaecati ad ea soluta quae.',
	'Voluptas harum et earum aut quia magni. Et debitis quam unde. Quia maxime et sunt ut in est. Et aperiam qui quas tempora aliquid.'
),
(
	'Aut ut dolore sunt.',
	'Quis qui inventore dolorem id officia. Repudiandae ab minima id. Labore rerum qui ut dolorem commodi vitae et.'
);

-- заполнение таблицы постов:
-- по ряду причин, я не смог вставить все значения одним запросом, поэтому пришлось делать несколько:
INSERT INTO posts (id, user_id, head, body, media_id, is_public, is_archived, created_at, updated_at)
	SELECT 
		id,
		FLOOR(1 + RAND() * 100),
		(SELECT head FROM random_text ORDER BY RAND() LIMIT 1),
		'body',
		FLOOR(1 + RAND() * 100),
		FLOOR(0 + RAND() * 2),
		FLOOR(0 + RAND() * 2),
		CURRENT_TIMESTAMP,
		CURRENT_TIMESTAMP
	FROM users;

UPDATE posts SET body = (SELECT body FROM random_text ORDER BY RAND() LIMIT 1);
UPDATE posts SET community_id = IF(FLOOR(0 + RAND() * 2), FLOOR(1 + RAND() * 100), NULL);

-- 2. Создать все необходимые внешние ключи и диаграмму отношений:
-- таблица profiles:
ALTER TABLE profiles
	ADD CONSTRAINT profiles_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE;

ALTER TABLE profiles MODIFY COLUMN city_id INT UNSIGNED;		
	
ALTER TABLE profiles
	ADD CONSTRAINT profiles_city_id_fk
		FOREIGN KEY (city_id) REFERENCES cities(id)
			ON DELETE SET NULL;
		
-- таблица cities:
ALTER TABLE cities MODIFY COLUMN country_id INT UNSIGNED;

ALTER TABLE cities
	ADD CONSTRAINT cities_country_id_fk
		FOREIGN KEY (country_id) REFERENCES countries(id)
			ON DELETE CASCADE;
		
-- таблица messsages
ALTER TABLE messages MODIFY COLUMN to_user_id INT UNSIGNED DEFAULT NULL;
ALTER TABLE messages
	ADD CONSTRAINT messages_to_user_id_fk
		FOREIGN KEY (to_user_id) REFERENCES users(id)
			ON DELETE SET NULL;
		
ALTER TABLE messages MODIFY COLUMN from_user_id INT UNSIGNED DEFAULT NULL;
ALTER TABLE messages
	ADD CONSTRAINT messages_from_user_id_fk
		FOREIGN KEY (from_user_id) REFERENCES users(id)
			ON DELETE SET NULL;
	
-- таблица friendship
ALTER TABLE friendship
	ADD CONSTRAINT friendship_status_id_fk
		FOREIGN KEY (friendship_status_id) REFERENCES friendship_statuses(id)
			ON DELETE NO ACTION;

ALTER TABLE friendship
	ADD CONSTRAINT friendship_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE;

ALTER TABLE friendship
	ADD CONSTRAINT friendship_friend_id_fk
		FOREIGN KEY (friend_id) REFERENCES users(id)
			ON DELETE CASCADE;
		
-- таблица media:
ALTER TABLE media
	ADD CONSTRAINT media_type_id_fk
		FOREIGN KEY (media_type_id) REFERENCES media_types(id)
			ON DELETE RESTRICT;
		
ALTER TABLE media
	ADD CONSTRAINT media_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE;
		
-- таблица communities_users:
ALTER TABLE communities_users
	ADD CONSTRAINT communities_users_community_id_fk
		FOREIGN KEY (community_id) REFERENCES communities(id)
			ON DELETE CASCADE;
		
ALTER TABLE communities_users
	ADD CONSTRAINT communities_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE;
	
-- таблица likes:
ALTER TABLE likes
	ADD CONSTRAINT likes_user_id_fk
		FOREIGN KEy (user_id) REFERENCES users(id)
			ON DELETE CASCADE;
	
-- таблица posts:
ALTER TABLE posts
	ADD CONSTRAINT posts_media_id_fk
		FOREIGN KEY (media_id) REFERENCES media(id)
			ON DELETE CASCADE;
		
ALTER TABLE posts
	ADD CONSTRAINT posts_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE;
		
ALTER TABLE posts
	ADD CONSTRAINT posts_community_id_fk
		FOREIGN KEY (community_id) REFERENCES communities(id)
			ON DELETE CASCADE;
	
-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?
SELECT ANY_VALUE(gender) AS gender, COUNT(*) AS total FROM profiles WHERE user_id IN (
	SELECT user_id FROM likes WHERE profiles.user_id = likes.user_id 
) GROUP BY gender;
	
-- 4. Вывести для каждого пользователя количество созданных сообщений, постов, загруженных медиафайлов и поставленных лайков:
SELECT COUNT(*) AS messsages FROM messages WHERE from_user_id = 77;
SELECT 
	CONCAT(first_name, ' ', last_name) AS user,
	(SELECT COUNT(*) FROM messages WHERE users.id = messages.from_user_id) AS messages,
	(SELECT COUNT(*) FROM posts WHERE users.id = posts.user_id) AS posts,
	(SELECT COUNT(*) FROM media WHERE users.id = media.user_id) AS media_files,
	(SELECT COUNT(*) FROM likes WHERE users.id = likes.user_id) AS likes
FROM users
ORDER BY id;