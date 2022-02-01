/* 
	ДЗ 8
	Переписать запросы, заданые к ДЗ урока 6, с использованием JOIN. По возможности не используйте вложенные запросы и UNION.
*/

USE vk;

-- 1. Определить кто больше поставил лайков (всего) - мужчины или женщины?
SELECT p.gender, COUNT(*) AS total_likes
  FROM profiles p
    JOIN likes l
      ON p.user_id = l.user_id
  GROUP BY p.gender
  ORDER BY total_likes DESC
  LIMIT 1;
	
-- 2. Вывести для каждого пользователя количество созданных сообщений, постов, загруженных медиафайлов и поставленных лайков:
SELECT 
	u.id,
	CONCAT(u.first_name, ' ', u.last_name) AS user,
	COUNT(DISTINCT m.id) AS messages,
	COUNT(DISTINCT p.id) AS posts,
	COUNT(DISTINCT m2.id) AS media,
	COUNT(DISTINCT l.id) AS likes 
	FROM users u 
		LEFT JOIN messages m
			ON u.id = m.from_user_id
		LEFT JOIN posts p 
			ON u.id = p.user_id 
		LEFT JOIN media m2 
			ON u.id = m2.user_id 
		LEFT JOIN likes l
			ON u.id = l.user_id 
	GROUP BY 1
	ORDER BY u.id;
	
-- 3. (по желанию) Подсчитать количество лайков которые получили 10 самых последних сообщений (как смог):
SELECT m.id, COUNT(l.target_id) AS likes
	FROM messages m 
		LEFT JOIN likes l 
			ON l.target_id = m.id AND l.target_type =  "messages"
	GROUP BY 1
	ORDER BY m.created_at DESC 
	LIMIT 10;