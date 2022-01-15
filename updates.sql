/* ������� ���������� ����� */
-- 1. �������� �������
CREATE TABLE countries (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  name VARCHAR(130) NOT NULL UNIQUE COMMENT "�������� ������",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������"
) COMMENT "���������� �����";
-- 2. ���������� ������� ���������� �� ������� profiles:
INSERT INTO countries (name) (SELECT country FROM profiles);
-- 3. �������� �������� ��������:
ALTER TABLE profiles DROP COLUMN city;
ALTER TABLE profiles DROP COLUMN country;


/* ������� ���������� ������� */
-- 1. �������� �������
CREATE TABLE cities (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(130) NOT NULL COMMENT "�������� ������",
  country_id INT COMMENT "������ �� ������",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "����� �������� ������",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "����� ���������� ������"
) COMMENT "������";
-- 2. ���������� ������� ���������� �� ������� profiles:
INSERT INTO cities (name) (SELECT city FROM profiles);
-- 3. ���������� �������� ����� 'country_id' ��������� �� ������� �����:
UPDATE cities SET country_id = FLOOR(1 + RAND() * 100);


/* ������� users */
-- 1. ��������� ���� �������� ������ � �������� users � profiles:
UPDATE users SET created_at = (SELECT created_at FROM profiles WHERE users.id = profiles.user_id);
-- 2. �������� �� ������������ ������ � �������� �������� � ���������� ������ � �� �������������:
SELECT * FROM users WHERE created_at > updated_at;
UPDATE users SET updated_at = NOW() WHERE created_at  > updated_at;


/* ������� profiles */
-- 1. ������� ��� ������� 'gender':
ALTER TABLE profiles MODIFY COLUMN gender ENUM('M', 'F');
-- 2. ������� ������� 'city_id' ��� ������� ���� � ������� �������:
ALTER TABLE profiles ADD COLUMN city_id INT AFTER birthday;
-- 3. ���������� ������� � ������� ������ �� ������� �������:
UPDATE profiles SET city_id = FLOOR(1 + RAND() * 100);


/* ������� messages ��� ��������� */

/* ������� communities ��� ��������� */

/* ������� communities_users ��� ��������� */

/* ������� media_types ��� ��������� */


/* ������� media */
-- 1. ������� ������� 'is_shared' ��� ������� ����, ��� ���� ��� ��������, � ����� �������� ��� �������:
ALTER TABLE media ADD COLUMN is_shared BOOLEAN AFTER user_id;
UPDATE media SET is_shared = FLOOR(0 + RAND() * 2);
-- 2. ������ � �������� ������� ��������� ������� � ������������ ������ ��� ��������� ����� � ������� 'filename':
CREATE TEMPORARY TABLE extensions (name VARCHAR(10));
INSERT INTO extensions VALUES ('jpeg'), ('mp4'), ('mp3'), ('avi'), ('png');
SELECT * FROM extensions;
UPDATE media SET filename = CONCAT(
	'https://dropbox.net/vk/',
	filename,
	'.',
	(SELECT name FROM extensions ORDER  BY RAND() LIMIT 1)
);
-- 3. ��� ��� ��� ��������� ������ � ������� filldb �� ���� ���� json, �������� ������ �������� ��� ������� 'metadata':
ALTER TABLE media MODIFY COLUMN metadata JSON;
-- 4. �������� ����������:
UPDATE media SET metadata = CONCAT(
	'{"owner": "',
	(SELECT CONCAT( first_name, ' ', last_name) FROM users WHERE id = user_id),
	'"}'
);


/* ������� friendship_statuses ��� ��������� */


/* ������� friendship */
-- 1. ������� ������� 'rejected_at' ��� ����, ����� ����������� ����� � ������ ������ �� ����������� ������:
ALTER TABLE friendship ADD COLUMN rejected_at DATETIME AFTER confirmed_at;
-- 2. ������� ������� 'rejected_by_id' ��� ������ id user'a, ������� ��� �����:
ALTER TABLE friendship  ADD COLUMN rejected_by_id INT AFTER rejected_at;
-- 3. ��������� �������� � ������� 'rejected_at':
UPDATE friendship SET rejected_at = updated_at WHERE FLOOR(0 + RAND() * 2);
-- 4. ��������� �������� � ������� 'rejected_by_id' (��� ����, ����� �������� ������� �������� �� �������� 'user_id' � 'friend_id' �������������� ������� ���������):
UPDATE  friendship SET rejected_by_id = user_id WHERE rejected_at IS NOT NULL AND FLOOR(0 + RAND() * 2);
UPDATE  friendship SET rejected_by_id = friend_id WHERE rejected_at IS NOT NULL AND rejected_by_id IS NULL;
-- 5. ������� ������� 'friendship_status_id' � �������, ��� ������ ������ ������� �������������, ��������� ������ � ������ ������� ������ ������� ������ ��������:
UPDATE friendship SET friendship_status_id = 2 WHERE rejected_at IS NOT NULL;
UPDATE friendship SET friendship_status_id = 1 WHERE rejected_at IS NULL AND friendship_status_id = 2 AND user_id < 51;
UPDATE friendship SET friendship_status_id = 3 WHERE rejected_at IS NULL AND friendship_status_id = 2 AND user_id > 50;

SELECT * FROM friendship WHERE created_at < updated_at;