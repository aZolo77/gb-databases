/* Процедура и триггер */

-- Процедура: принимает id'шники пользователей и выводит сообщение, что они теперь друзья
DROP PROCEDURE IF EXISTS friends_log;

DELIMITER //
CREATE PROCEDURE friends_log(IN user_id INT, IN friend_id INT)
BEGIN 
	DECLARE u1, u2 VARCHAR(100);
	SELECT nickname INTO u1 FROM users WHERE id = user_id;
	SELECT nickname INTO u2 FROM users WHERE id = friend_id;
	SELECT CONCAT(u1, ' теперь дружит с ', u2) AS friends_message;
END//
DELIMITER ;

CALL friends_log(1, 5);

-- Триггер: при присвоении каналу статуса "partner", добавлять в таблицу `channels_achivments` соответствующее достижение:
DELIMITER //
CREATE TRIGGER check_channels_achivments_after_update AFTER UPDATE ON channels
FOR EACH ROW 
BEGIN 
	IF NEW.status = 'partner' THEN 
		INSERT INTO channels_achivments (channel_id, achivment_id) VALUES(NEW.id, (SELECT id FROM achivments WHERE name = 'You are a partner!'));
	END IF;
END//
DELIMITER ;
