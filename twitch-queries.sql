/* Запросы к БД twitch */

-- 1. Найти 5 каналов хотя бы с одним подписчиком 3го уровня и с наибольшим количеством достижений
SELECT DISTINCT ufc.channel_id, ufc.user_level_id,
	(SELECT COUNT(*) FROM channels_achivments ca WHERE ca.channel_id = ufc.channel_id) AS achivments,
	(SELECT nickname FROM users u WHERE u.id = ufc.channel_id) AS channel_owner
FROM users_followed_channels ufc 
WHERE ufc.user_level_id > 3
ORDER BY achivments DESC
LIMIT  5;

-- 2. Получить список пользователей младше 15 лет, у кого есть статус партнёра
SELECT u.nickname, u.birthday, u.email, c.status 
FROM users u
	LEFT JOIN channels c
		ON u.id = c.user_id 
	WHERE YEAR(NOW()) - YEAR(u.birthday) < 15 AND c.status = 'partner';

-- 3. Вывести данные о пользователях, у которых больше 3 подписчиков
SELECT DISTINCT ufc.channel_id, u.nickname, u.email, u.phone, COUNT(ufc.user_id) AS followers 
FROM users_followed_channels ufc
	LEFT JOIN channels c 
		ON ufc.channel_id = c.id 
	LEFT JOIN users u 
		ON c.user_id = u.id
	GROUP BY channel_id
	HAVING followers > 3
	ORDER BY ufc.channel_id;

-- 4. Вычислить 10 самых больших языковых групп, зарегистрированных на сервисе
SELECT DISTINCT l.name AS lang,
	COUNT(u.nickname) OVER(PARTITION BY u.lang_id) AS users_lang_group
	FROM users u
		LEFT JOIN languages l
			ON u.lang_id = l.id
	ORDER BY users_lang_group DESC, lang
	LIMIT 10;
  