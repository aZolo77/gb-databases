/* Представления */

-- 1. Показать всех пользователей с ролью модераторов на каналах
CREATE OR REPLACE VIEW moderators (`role`, name, birthday) AS
SELECT ur.name, u.nickname, u.birthday 
FROM users_role ur 
	LEFT JOIN channels_users_roles cur
		ON cur.role_id = ur.id
	LEFT JOIN users u 
		ON u.id = cur.user_id
WHERE ur.name = 'moderator';

SELECT * FROM moderators;

-- 2. Показать какие цвета выбирают самые успешные владельцы каналов:
CREATE OR REPLACE VIEW partner_colors(status, color) AS
SELECT c.status, c2.name 
FROM channels c 
	LEFT JOIN colors c2 
		ON c.accent_color_id = c2.id
WHERE c.status = 'partner';

SELECT * FROM partner_colors;
