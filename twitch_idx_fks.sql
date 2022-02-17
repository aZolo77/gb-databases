/* Создание внешних ключей и индексов */
	
-- I. Внешние ключи:

-- 1. users
ALTER TABLE users
	ADD CONSTRAINT users_lang_id_fk
		FOREIGN KEY (lang_id) REFERENCES languages(id)
			ON UPDATE CASCADE;
		
-- 2. friendship
ALTER TABLE friendship
	ADD CONSTRAINT friendship_status_id_fk
		FOREIGN KEY (status_id) REFERENCES friendship_statuses(id)
			ON UPDATE CASCADE;

ALTER TABLE friendship
	ADD CONSTRAINT friendship_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON UPDATE CASCADE 
			ON DELETE CASCADE;

ALTER TABLE friendship
	ADD CONSTRAINT friendship_friend_id_fk
		FOREIGN KEY (friend_id) REFERENCES users(id)
			ON UPDATE CASCADE 
			ON DELETE CASCADE;
		
-- 3. messages
ALTER TABLE messages
	ADD CONSTRAINT messages_to_user_id_fk
		FOREIGN KEY (to_user_id) REFERENCES users(id)
			ON UPDATE CASCADE 
			ON DELETE CASCADE;
		
ALTER TABLE messages
	ADD CONSTRAINT messages_from_user_id_fk
		FOREIGN KEY (from_user_id) REFERENCES users(id)
			ON UPDATE CASCADE 
			ON DELETE CASCADE;
		
-- 4. channels
ALTER TABLE channels
	ADD CONSTRAINT channel_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON UPDATE CASCADE 
			ON DELETE CASCADE;
		
ALTER TABLE channels
	ADD CONSTRAINT channel_color_id_fk
		FOREIGN KEY (accent_color_id) REFERENCES colors(id)
			ON UPDATE CASCADE;
		
-- 5. users_followed_channels		
ALTER TABLE users_followed_channels
	ADD CONSTRAINT ufc_channel_id_fk
		FOREIGN KEY (channel_id) REFERENCES channels(id)
			ON UPDATE CASCADE 
			ON DELETE CASCADE;
		
ALTER TABLE users_followed_channels
	ADD CONSTRAINT ufc_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON UPDATE CASCADE 
			ON DELETE CASCADE;
		
ALTER TABLE users_followed_channels
	ADD CONSTRAINT ufc_user_level_id_fk
		FOREIGN KEY (user_level_id) REFERENCES users_level(id)
			ON UPDATE CASCADE;
		
-- 6. channels_achivments
ALTER TABLE channels_achivments
	ADD CONSTRAINT ca_channel_id_fk
		FOREIGN KEY (channel_id) REFERENCES channels(id)
			ON UPDATE CASCADE 
			ON DELETE CASCADE;
		
ALTER TABLE channels_achivments
	ADD CONSTRAINT ca_achivment_id_fk
		FOREIGN KEY (achivment_id) REFERENCES achivments(id)
			ON UPDATE CASCADE 
			ON DELETE CASCADE;
		
-- 7. channels_users_roles
ALTER TABLE channels_users_roles
	ADD CONSTRAINT cur_channel_id_fk
		FOREIGN KEY (channel_id) REFERENCES channels(id)
			ON UPDATE CASCADE 
			ON DELETE CASCADE;
		
ALTER TABLE channels_users_roles
	ADD CONSTRAINT cur_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON UPDATE CASCADE 
			ON DELETE CASCADE;
		
ALTER TABLE channels_users_roles
	ADD CONSTRAINT cur_user_role_id_fk
		FOREIGN KEY (role_id) REFERENCES users_role(id)
			ON UPDATE CASCADE;
	
-- II. Индексы:
		
-- 1. users
CREATE INDEX users_birthday_idx ON users(birthday);
CREATE INDEX users_img_idx ON users(img_url);

-- 2. channels 
CREATE INDEX channels_img_idx ON channels(banner_img_url);
SHOW INDEX FROM users_role;

-- для таблиц с полями created_at и updated_at я бы создавал индексы только по факту большого количества запросов к этим данным.
