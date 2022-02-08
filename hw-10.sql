/* ДЗ-10: Индексы и оконные функции */
USE vk;

/* 
	1. Проанализировать, какие запросы могут выполняться наиболее часто в процессе работы приложения и добавить необходимые индексы.
*/

-- 1.1 Для мелких табличек-справочников создавать индексы не рекомендуется, поэтому я сразу отмёл таблицы: media_types и friendship_statuses;

-- 1.2 Построить индексы на самые частые запросы может помочь логирование запросов. 
-- Я посмотрел, запросы к каким полям таблиц были самыми частыми в наших ДЗ и на основе этого создал несколько индексов:
CREATE INDEX users_last_name_first_name_idx ON users(last_name, first_name);
CREATE INDEX profiles_birthday_idx ON profiles(birthday);
CREATE INDEX likes_target_id_idx ON likes(target_id);
CREATE INDEX messages_created_at_idx ON messages(created_at);
CREATE INDEX posts_head_idx ON posts(head);
CREATE INDEX media_size_idx ON media(size);
CREATE INDEX media_filename_idx ON media(filename);

-- 1.3 Создал индексы, которые теоретически, в моём представлении, могут быть полезными:
CREATE INDEX communities_name_idx ON communities(name);
CREATE INDEX cities_name_idx ON cities(name);
CREATE INDEX countries_name_idx ON countries(name);
CREATE INDEX friendship_confirmed_idx ON friendship(confirmed_at);
CREATE INDEX friendship_rejected_idx ON friendship(rejected_at);

/*
	2. Построить запрос, который будет выводить следующие столбцы:
	- имя группы +
	- количество пользователей в группе +
	- всего пользователей в системе (количество пользователей в таблице users) +
	- среднее количество пользователей в группах (количество пользователей во всех группах / на количество групп) +
	- самый молодой пользователь в группе (желательно вывести имя и фамилию) +
	- самый старший пользователь в группе (желательно вывести имя и фамилию) +
	- отношение в процентах для последних двух значений (общее количество пользователей в группе / всего пользователей в системе) * 100
*/		
-- каким образом выводить имя и фамилию пользователей в полях `самый молодой` и `самый старший` по группам, я не понял пока.
SELECT 
	DISTINCT c.name AS group_name, -- название группы
	COUNT(cu.user_id) OVER(PARTITION BY cu.community_id) AS users_quantity, -- количество пользователей в группе
	COUNT(u.id) OVER() AS total_users, -- всего пользователей в системе
	(COUNT(cu.user_id) OVER() / COUNT(c.id) OVER()) AS avg_users, -- среднее количество пользователей в группах
	MIN(p.birthday) OVER(PARTITION BY c.name) AS youngest, -- самый молодой пользователь в группе
	MAX(p.birthday) OVER(PARTITION BY c.name) AS oldest, -- самый старший пользователь в группе
	(COUNT(cu.user_id) OVER(PARTITION BY cu.community_id) / COUNT(u.id) OVER()) * 100 AS `%%` -- отношение в процентах
	FROM communities c
		JOIN communities_users cu
			ON c.id = cu.community_id
		JOIN users u 
			ON cu.user_id = u.id
		JOIN profiles p 
			ON u.id = p.user_id;

