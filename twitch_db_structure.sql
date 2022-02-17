/* 
	Ссылка: https://www.twitch.tv/
	Описание: продемонстрировать версию того, как может быть организована модель хранения данных популярного стримингового сервиса twitch.
	В данную модель я решил включить информацию о пользователях и их каналах, данные об их взаимодействии между собой, представленные таблицами messages и friendship, а также взаимодействие пользователей с каналами друг друга. Данную информацию можно посмотреть в таблицах-связи:
	users_followed_channels и channels_users_roles (подробное описание в комментариях к таблицам). Дополнительно есть таблица-связи channels_achivments, которая содержит информацию о достижениях на каналах пользователей.
*/
CREATE DATABASE IF NOT EXISTS `twitch`;

USE `twitch`;

/* Создание таблиц */
-- 1. Таблица users 
CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	nickname VARCHAR(100) NOT NULL UNIQUE,
	email VARCHAR(100) NOT NULL UNIQUE,
	phone VARCHAR(100) NOT NULL UNIQUE,
	hashed_psw VARCHAR(255) NOT NULL UNIQUE COMMENT "Hash пароля",
	birthday DATE,
	about_info TEXT COMMENT "Краткая информация о себе",
	img_url VARCHAR(255) DEFAULT 'https://via.placeholder.com/150.png',
	lang_id BIGINT UNSIGNED NOT NULL COMMENT "Язык интерфейса",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
) COMMENT "Пользователи";

-- 2. Таблица channels 
CREATE TABLE channels (
	id SERIAL PRIMARY KEY,
	user_id BIGINT UNSIGNED NOT NULL UNIQUE COMMENT "ID пользователя, которому принадлежит канал",
	accent_color_id BIGINT UNSIGNED NOT NULL COMMENT "Основной цвет для канала",
	banner_img_url VARCHAR(255) DEFAULT "https://via.placeholder.com/728x90.png",
	status ENUM("beginner", "affiliate", "partner", "companion") NOT NULL DEFAULT "beginner" COMMENT "Статус канала",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT "Каналы";

-- 3. Таблица messages 
CREATE TABLE messages (
	id SERIAL PRIMARY KEY,
	from_user_id BIGINT UNSIGNED NOT NULL COMMENT "От какого пользователя пришло сообщение",
	to_user_id BIGINT UNSIGNED NOT NULL COMMENT "Какому пользователю пришло сообщение",
	body TEXT NOT NULL,
	is_delivered BOOLEAN DEFAULT FALSE COMMENT "Признак доставки",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP	
) COMMENT "Сообщения";

-- 4. Таблица связи users_followed_channels 
CREATE TABLE users_followed_channels (
	channel_id BIGINT UNSIGNED NOT NULL COMMENT "ID отслеживаемого канала",
	user_id BIGINT UNSIGNED NOT NULL COMMENT "ID пользователя, который следит за каналом",
	user_level_id INT UNSIGNED NOT NULL COMMENT "Уровень подписки пользователя на канале", 
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT "Отслеживаемые каналы";

-- 5. Таблица связи channels_users_roles 
CREATE TABLE channels_users_roles (
	channel_id BIGINT UNSIGNED NOT NULL COMMENT "ID канала",
	user_id BIGINT UNSIGNED NOT NULL COMMENT "ID пользователя",
	role_id INT UNSIGNED NOT NULL COMMENT "ID роли",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP	
) COMMENT "Роли пользователей на каналах";

-- 6. Таблица связи friendship
CREATE TABLE friendship (
  	user_id BIGINT UNSIGNED NOT NULL COMMENT "Инициатор дружеских отношений",
  	friend_id BIGINT UNSIGNED NOT NULL COMMENT "Получатель приглашения дружить",
  	status_id INT UNSIGNED NOT NULL COMMENT "Статус отношений",
  	confirmed_at DATETIME COMMENT "Время подтверждения приглашения",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  	PRIMARY KEY (user_id, friend_id) COMMENT "Составной первичный ключ"	
) COMMENT "Таблица дружбы";

-- 7. Таблица связи channels_achivments
CREATE TABLE channels_achivments (
	channel_id BIGINT UNSIGNED NOT NULL,
	achivment_id BIGINT UNSIGNED NOT NULL,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  	PRIMARY KEY (channel_id, achivment_id) COMMENT "Составной первичный ключ"
) COMMENT "Таблица связи каналов с достижениями";

-- 8. Таблица-справочник achivments
CREATE TABLE achivments (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL UNIQUE,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT "Справочник достижений";

-- 9. Таблица-справочник users_level
CREATE TABLE users_level (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(255) NOT NULL UNIQUE,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT "Уровни пользователей на отслеживаемых каналах";

-- 10. Таблица-справочник users_role
CREATE TABLE users_role (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	user_role VARCHAR(255) NOT NULL UNIQUE,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT "Роли пользователей на каналах";

-- 11. Таблица-справочник languages
CREATE TABLE languages (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL UNIQUE
) COMMENT "Языки мира";

-- 12. Таблица-справочник colors
CREATE TABLE colors (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL UNIQUE
) COMMENT "Цвета";

-- 13. Таблица-справочник friendship_statuses
CREATE TABLE friendship_statuses (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(150) NOT NULL UNIQUE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP  
) COMMENT "Статусы дружбы";