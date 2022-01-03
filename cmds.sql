-- 1. Создайте базу данных example, разместите в ней таблицу users, состоящую из двух столбцов, числового id и строкового name:
CREATE DATABASE
IF NOT EXISTS example;
-- Query OK, 1 row affected (0,55 sec)
SHOW DATABASES;
/*
+--------------------+
| Database           |
+--------------------+
| example            |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0,00 sec)
*/
USE example
-- Database changed
CREATE TABLE users
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
);
-- Query OK, 0 rows affected (0,56 sec)
DESCRIBE users;
/*
+-------+-----------------+------+-----+---------+----------------+
| Field | Type            | Null | Key | Default | Extra          |
+-------+-----------------+------+-----+---------+----------------+
| id    | bigint unsigned | NO   | PRI | NULL    | auto_increment |
| name  | varchar(255)    | YES  |     | NULL    |                |
+-------+-----------------+------+-----+---------+----------------+
2 rows in set (0,00 sec)
*/
CREATE DATABASE
IF NOT EXISTS sample;
-- Query OK, 1 row affected (0,55 sec)
\q
Bye

-- 2. Создайте дамп базы данных example из предыдущего задания, разверните содержимое дампа в новую базу данных sample:
/* Далее работал просто из terminal'а
zollo@zollo-VirtualBox:~$ mysqldump example > example.sql
zollo@zollo-VirtualBox:~$ mysql sample < example.sql

zollo@zollo-VirtualBox:~$ mysql

Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is...
*/

USE sample;
/* 
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
*/
DESCRIBE users;
/*
+-------+-----------------+------+-----+---------+----------------+
| Field | Type            | Null | Key | Default | Extra          |
+-------+-----------------+------+-----+---------+----------------+
| id    | bigint unsigned | NO   | PRI | NULL    | auto_increment |
| name  | varchar(255)    | YES  |     | NULL    |                |
+-------+-----------------+------+-----+---------+----------------+
2 rows in set (0,00 sec)
*/

-- 3. Создайте дамп единственной таблицы help_keyword базы данных mysql. Причем добейтесь того, чтобы дамп содержал только первые 100 строк таблицы:
/*
zollo@zollo-VirtualBox:~$ mysqldump --where="true limit 100" mysql help_keyword > help_keyword_tbl.sql
*/