#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Larry', 'Morissette', 'lenore.crooks@example.org', '(430)878-1151x9496', '2012-10-06 19:03:43', '2022-01-02 00:52:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Claudie', 'Wiegand', 'verla69@example.net', '1-628-794-5066', '2021-06-23 16:54:45', '2021-12-16 12:57:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Thaddeus', 'Renner', 'daija.cummings@example.org', '+79(1)0233495010', '2021-05-27 18:48:07', '2021-12-15 10:49:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Burley', 'Doyle', 'lakin.gerald@example.com', '331.326.2846x866', '2019-03-06 03:09:25', '2021-12-25 16:59:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Cheyanne', 'Ferry', 'hintz.deven@example.org', '1-528-183-3781x71819', '2016-11-26 04:38:51', '2022-01-12 19:21:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Della', 'Beer', 'maxime35@example.org', '812-475-6681', '2016-07-16 19:25:09', '2022-01-04 07:13:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Jermain', 'Nienow', 'jacinto55@example.com', '870.923.6011x915', '2012-01-19 12:00:49', '2022-01-11 02:28:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Sven', 'Russel', 'ruecker.griffin@example.net', '1-494-813-8183', '2013-09-07 06:29:18', '2021-12-21 13:29:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Else', 'Gibson', 'jeffry91@example.org', '607.275.0610x82138', '2021-02-13 11:42:09', '2021-12-26 10:32:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Cory', 'Ernser', 'hayes.ryley@example.org', '585-823-9876', '2021-12-28 13:57:16', '2021-12-18 14:52:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Anissa', 'Daniel', 'kparker@example.org', '(006)746-9539x3768', '2016-02-14 01:24:31', '2021-12-31 14:43:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Ethel', 'Lind', 'itzel.pfeffer@example.org', '1-004-590-3351x456', '2017-01-02 13:35:09', '2022-01-10 18:43:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Jennyfer', 'Wisoky', 'noelia29@example.org', '991-317-5670x73839', '2019-11-02 20:59:36', '2021-12-26 20:12:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Ayla', 'McLaughlin', 'olaf.heller@example.net', '458.897.7148x95558', '2014-03-05 05:51:10', '2022-01-05 14:33:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Gerda', 'VonRueden', 'eichmann.abigail@example.net', '+06(1)7974851155', '2013-08-06 02:56:05', '2021-12-28 21:35:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Wendy', 'Hauck', 'arlie92@example.com', '1-432-233-9093x995', '2020-01-19 01:31:40', '2021-12-27 07:05:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Ambrose', 'Mraz', 'orlo07@example.org', '424.315.4400x818', '2020-03-13 23:04:28', '2021-12-21 19:57:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Glennie', 'Rutherford', 'ozulauf@example.org', '03428951633', '2015-04-01 19:18:19', '2021-12-29 07:07:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Cletus', 'Grady', 'rath.trevion@example.net', '00132407587', '2013-07-08 04:06:19', '2021-12-18 17:38:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Rylee', 'Kshlerin', 'qhahn@example.com', '04586447154', '2015-12-20 05:50:14', '2022-01-04 09:45:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'America', 'Schmitt', 'jlebsack@example.net', '(832)566-0251', '2020-03-23 01:55:41', '2021-12-30 19:03:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Margarita', 'Bergnaum', 'derek35@example.org', '05172371261', '2017-09-29 20:51:17', '2021-12-31 16:36:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Rocky', 'Powlowski', 'rutherford.mariah@example.org', '772-330-2072x12903', '2016-04-07 02:37:45', '2021-12-31 09:36:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Genevieve', 'Braun', 'israel.ankunding@example.org', '(370)598-3284x15726', '2012-02-21 14:53:51', '2021-12-15 05:52:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Brittany', 'Jenkins', 'dallin24@example.com', '114.022.0753x0380', '2014-04-09 19:24:37', '2022-01-04 10:33:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Cedrick', 'Effertz', 'michale87@example.org', '831-334-2845', '2013-10-09 09:15:16', '2021-12-23 00:00:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Jameson', 'Effertz', 'adams.myriam@example.net', '686-407-5553', '2021-09-22 09:10:26', '2022-01-07 16:35:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Dolly', 'Cole', 'alvera.casper@example.com', '690.696.3345', '2021-09-12 17:48:39', '2022-01-03 03:47:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Mollie', 'Hand', 'freeda.bins@example.net', '651.922.3833x2885', '2017-11-10 20:58:43', '2021-12-16 16:49:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Maritza', 'Tremblay', 'brannon08@example.net', '562-842-4954', '2016-01-09 05:31:59', '2021-12-22 09:27:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Berneice', 'Cummings', 'curt16@example.org', '1-068-828-2671x72689', '2015-11-06 08:51:58', '2022-01-13 20:34:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Hillard', 'Bechtelar', 'harvey.gilda@example.org', '918.809.4287x379', '2019-04-07 22:29:11', '2021-12-19 16:32:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Houston', 'Smitham', 'weissnat.brice@example.org', '+74(0)3979602494', '2018-05-15 15:33:14', '2022-01-06 04:29:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Tad', 'Dickinson', 'gcrona@example.net', '07971975426', '2020-11-05 04:48:17', '2021-12-16 08:29:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Alverta', 'Schroeder', 'cosinski@example.net', '00731096739', '2014-04-04 08:34:34', '2021-12-29 11:58:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Saige', 'Nikolaus', 'waylon.mclaughlin@example.com', '(807)324-2471x4260', '2020-04-27 13:29:23', '2022-01-12 06:24:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Itzel', 'Bailey', 'leopoldo.bode@example.org', '(641)845-5892', '2019-04-29 09:28:14', '2021-12-20 05:26:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Ethel', 'Blick', 'durgan.mossie@example.org', '(958)149-6950x37452', '2020-12-20 05:05:36', '2022-01-08 05:19:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Paolo', 'DuBuque', 'jeremie29@example.net', '170-238-3130x304', '2015-12-17 02:47:03', '2022-01-09 03:37:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Julian', 'Armstrong', 'hannah.little@example.org', '+26(7)4162911418', '2018-07-29 18:40:34', '2021-12-19 06:25:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Darby', 'Collier', 'gstreich@example.com', '+67(4)6526402984', '2020-12-30 10:59:25', '2022-01-01 05:10:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Jovany', 'Predovic', 'columbus.klocko@example.net', '058.722.9323x650', '2020-10-16 22:56:48', '2022-01-13 15:43:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Judy', 'Langosh', 'dfeest@example.net', '04820695592', '2021-10-10 20:27:27', '2022-01-12 02:07:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'London', 'Champlin', 'yost.kacey@example.com', '(162)850-3284', '2012-08-17 18:02:43', '2021-12-24 02:43:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Raphaelle', 'Mosciski', 'rstrosin@example.com', '(319)233-1391x498', '2019-02-11 12:13:40', '2021-12-26 20:02:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Deshawn', 'Schuster', 'preston.o\'keefe@example.com', '184.978.2391', '2021-05-06 03:28:22', '2021-12-23 15:22:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Armani', 'Schulist', 'marion54@example.org', '(991)306-9864', '2018-11-05 23:11:34', '2022-01-08 05:20:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Aurelia', 'Friesen', 'alexandrea.kuhn@example.com', '(539)694-6786x765', '2014-01-01 08:32:17', '2022-01-13 02:48:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Aracely', 'O\'Reilly', 'princess.ullrich@example.org', '866-228-6921x1684', '2018-10-26 00:09:36', '2022-01-04 04:21:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Sunny', 'Predovic', 'einar03@example.net', '803.329.5038', '2012-12-24 04:41:25', '2022-01-06 07:47:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Tate', 'Mertz', 'elda10@example.org', '937.992.1520', '2016-06-18 18:34:30', '2021-12-21 17:23:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Cooper', 'Fisher', 'pinkie68@example.org', '993.027.1421', '2015-12-23 20:15:55', '2021-12-18 10:28:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Henderson', 'Hermann', 'abbott.fannie@example.org', '07975656820', '2021-01-24 17:56:11', '2022-01-11 03:02:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Aletha', 'Cruickshank', 'arolfson@example.com', '965-316-2142x857', '2017-04-27 10:52:10', '2022-01-08 23:39:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Isabella', 'Waelchi', 'qosinski@example.org', '(711)765-4517x358', '2014-03-05 16:00:15', '2021-12-22 13:17:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Chelsie', 'Cartwright', 'vfranecki@example.net', '595-781-8506x0284', '2013-12-11 18:01:04', '2021-12-17 23:47:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Donny', 'Reichert', 'daniel.oran@example.com', '05917516764', '2012-11-30 19:00:40', '2022-01-03 09:17:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Pinkie', 'Daniel', 'qbogan@example.com', '440-372-4155', '2019-01-11 23:55:38', '2022-01-08 05:04:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Hazle', 'Yost', 'caleb93@example.org', '(132)805-5502x20086', '2016-12-11 23:40:05', '2022-01-05 19:39:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Baron', 'Carter', 'vroob@example.org', '966.069.2072x527', '2013-04-24 09:30:03', '2021-12-28 11:11:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Isabelle', 'Pagac', 'naomi64@example.net', '779.426.9950', '2012-12-03 00:53:54', '2021-12-19 21:34:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Lula', 'Murray', 'von.orie@example.com', '1-793-815-7694x34358', '2012-12-06 12:37:57', '2021-12-20 05:11:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Lela', 'Pouros', 'maximillian32@example.net', '345.213.0403x4764', '2019-11-20 00:38:20', '2021-12-21 15:40:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Filiberto', 'Predovic', 'geovanni.carter@example.com', '(675)843-3548', '2019-07-23 15:09:19', '2022-01-07 22:01:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Leslie', 'Dooley', 'pkutch@example.org', '864-402-7614x346', '2018-11-12 00:10:10', '2021-12-16 05:10:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Jamison', 'Turcotte', 'krajcik.cierra@example.net', '891-266-5383x95928', '2015-07-22 15:18:51', '2022-01-12 01:46:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Abdullah', 'Schaefer', 'ilemke@example.com', '202.637.9075', '2014-05-01 04:37:24', '2022-01-05 19:21:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Kareem', 'Hickle', 'tabitha.hirthe@example.com', '+70(2)6453543716', '2020-05-16 08:29:38', '2022-01-13 16:40:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Tremaine', 'Daugherty', 'norbert.bernier@example.org', '1-808-512-2731x56345', '2014-03-29 21:28:59', '2021-12-17 03:55:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Diamond', 'Wilderman', 'jaylon.durgan@example.com', '00138364362', '2017-01-06 08:21:46', '2022-01-14 04:32:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Jackeline', 'Lesch', 'kuhlman.brant@example.net', '444.087.1210x49630', '2019-01-28 15:12:54', '2022-01-05 23:44:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Joannie', 'Bruen', 'welch.alex@example.net', '117.443.4352', '2018-05-03 00:20:27', '2021-12-25 00:07:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Elmo', 'Terry', 'jeff.o\'reilly@example.com', '(257)403-4234x8991', '2015-04-29 06:45:16', '2022-01-02 00:35:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Nichole', 'Conn', 'kessler.amanda@example.com', '(391)085-7592x792', '2021-10-28 08:07:45', '2021-12-26 10:33:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Beau', 'Bosco', 'wisoky.cynthia@example.com', '494-862-0667x6051', '2021-07-06 10:59:42', '2022-01-07 10:36:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Lamont', 'Jacobson', 'alford.sanford@example.org', '1-027-934-9050x085', '2017-01-25 15:54:46', '2022-01-10 17:09:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Danyka', 'Hartmann', 'kirsten.abernathy@example.com', '859.638.2053', '2013-10-09 17:31:45', '2022-01-13 09:22:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Pearlie', 'Stamm', 'watsica.justina@example.net', '06285225638', '2015-05-15 20:44:50', '2021-12-20 18:38:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Pinkie', 'Becker', 'reilly.bryce@example.org', '590.067.3740x688', '2013-02-21 23:53:59', '2022-01-10 01:12:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Sarina', 'Schroeder', 'graham.judy@example.com', '(792)768-0912x69713', '2016-09-10 18:47:02', '2021-12-24 17:26:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Zelda', 'Powlowski', 'garfield.wiegand@example.org', '333.476.3509x09123', '2016-04-01 15:36:02', '2022-01-08 09:00:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Ottilie', 'Miller', 'vonrueden.sienna@example.com', '1-984-698-6818x27482', '2018-01-11 08:43:50', '2022-01-05 04:03:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Crystal', 'VonRueden', 'wisozk.mike@example.net', '(673)819-1001x5100', '2014-04-10 09:48:47', '2022-01-02 16:22:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Savion', 'Effertz', 'kozey.leila@example.org', '(298)195-0803x17547', '2015-08-17 16:08:36', '2021-12-22 20:02:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Berry', 'Hamill', 'gwilliamson@example.com', '232-915-3728', '2012-05-27 14:35:31', '2021-12-30 05:32:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Emilie', 'Hettinger', 'ykunze@example.net', '745.239.6220x1132', '2019-05-12 11:17:54', '2021-12-23 07:59:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Pasquale', 'Morissette', 'lucie.littel@example.com', '1-060-186-0482', '2017-12-26 03:09:20', '2022-01-06 08:17:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Aubree', 'Nienow', 'herminia29@example.org', '099-410-9472x5562', '2020-07-09 06:11:19', '2021-12-15 18:10:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Laurianne', 'Fadel', 'lysanne.hansen@example.com', '(468)740-6093', '2020-01-23 22:01:32', '2021-12-15 23:00:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Keenan', 'Thompson', 'nlegros@example.com', '1-848-885-8204', '2012-02-04 07:17:17', '2021-12-21 01:40:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Sonia', 'Rowe', 'cummings.dixie@example.org', '(467)092-8674', '2012-02-01 14:41:59', '2022-01-01 19:14:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Delores', 'O\'Reilly', 'marques.roob@example.com', '716-370-6872x222', '2013-07-30 11:51:06', '2021-12-22 15:54:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Mitchell', 'Langworth', 'fay45@example.org', '233-198-2951', '2015-09-28 14:58:14', '2022-01-05 17:49:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Felicia', 'Schmidt', 'tcole@example.org', '1-813-082-6005', '2019-04-17 15:11:36', '2021-12-24 14:28:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Jonathan', 'Nitzsche', 'charity65@example.com', '(756)764-9092', '2020-01-06 19:00:07', '2021-12-25 00:04:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Crystel', 'Bauch', 'schmitt.alicia@example.org', '(496)529-3243', '2017-02-12 20:36:08', '2022-01-12 05:42:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Dena', 'Shanahan', 'carole.skiles@example.net', '(162)899-8335', '2013-09-02 15:05:06', '2022-01-08 21:40:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Madelyn', 'Lowe', 'cole.carley@example.net', '05340147135', '2016-12-12 14:01:00', '2021-12-17 01:26:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Ahmad', 'Harris', 'gennaro77@example.com', '(479)830-8448', '2019-10-31 12:57:49', '2021-12-25 10:37:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Gia', 'Sipes', 'leannon.olen@example.org', '968.254.6270x34894', '2021-11-23 22:14:01', '2022-01-11 18:35:59');


#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'Unde commodi quasi quo voluptate sint sequi.', '2013-07-02 14:59:24', '2021-12-16 19:15:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'Fugiat consectetur eum et aut qui non.', '2017-01-04 15:06:23', '2022-01-11 13:11:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'Atque molestiae ad molestiae possimus necessitatibus sit cupiditate labore.', '2020-06-17 06:10:48', '2021-12-22 08:58:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'Cum numquam ut at asperiores ad consequatur optio.', '2019-09-04 17:11:06', '2022-01-03 06:32:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'Sed quos quisquam dolores distinctio.', '2013-06-10 17:12:59', '2021-12-15 02:04:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'Vitae ab adipisci est qui delectus autem.', '2014-11-29 13:07:36', '2021-12-30 10:35:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'Facilis quia numquam minus.', '2013-07-20 06:41:21', '2022-01-05 16:59:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'Molestiae qui est enim.', '2019-09-19 18:13:52', '2021-12-15 07:04:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'Laboriosam sequi eos quia.', '2020-02-06 01:29:12', '2021-12-20 04:52:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'Impedit quisquam cum illo quidem.', '2017-02-01 06:59:18', '2022-01-07 04:58:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'Soluta omnis eos veniam modi.', '2018-09-10 20:26:01', '2021-12-27 13:10:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'Reprehenderit aut occaecati repellat.', '2012-07-11 04:17:28', '2022-01-01 09:59:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'Nihil voluptas quos dignissimos quae voluptatem excepturi esse soluta.', '2012-07-08 08:09:10', '2022-01-10 09:36:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'Et eligendi rem accusamus ipsam blanditiis.', '2017-11-08 22:46:37', '2021-12-25 10:30:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'Architecto veritatis autem ipsum vel.', '2020-07-18 00:45:16', '2022-01-03 13:42:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'Quo et consectetur temporibus quia itaque sint et.', '2021-07-22 15:02:29', '2022-01-11 22:58:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'Eveniet modi eum hic.', '2017-10-29 22:06:13', '2022-01-03 00:22:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'Ut dignissimos quia hic id ipsum repellat.', '2014-09-23 17:13:08', '2022-01-03 12:31:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'Impedit deleniti et et commodi et natus eos.', '2014-07-24 11:08:49', '2021-12-21 22:15:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'Dicta qui sed qui est earum tempore.', '2017-09-01 17:58:12', '2021-12-20 07:07:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'Delectus reprehenderit repudiandae consequuntur voluptatibus.', '2021-08-08 04:49:05', '2022-01-04 00:42:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'Ut est animi sunt suscipit.', '2013-07-14 07:49:30', '2022-01-01 17:43:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'Quis nisi maiores aliquam tempora ea numquam.', '2015-03-26 05:33:40', '2021-12-26 19:26:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'Aut asperiores vel quis qui.', '2014-08-09 13:31:59', '2022-01-14 14:57:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'Saepe vero excepturi iste provident voluptatem et quibusdam.', '2014-12-23 22:23:54', '2021-12-15 03:28:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'Quasi ea possimus commodi sed.', '2012-04-05 14:18:55', '2022-01-01 18:50:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'Et officiis qui quidem praesentium explicabo culpa.', '2017-04-04 22:11:38', '2021-12-24 05:02:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'Officia debitis id est asperiores.', '2016-01-23 13:43:51', '2022-01-12 17:36:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'Inventore quaerat soluta autem est voluptas.', '2016-01-28 01:35:45', '2022-01-05 18:34:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'Deserunt maxime asperiores sit quam necessitatibus perferendis.', '2014-01-05 17:10:09', '2021-12-20 05:58:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'Praesentium iste non in non perspiciatis.', '2016-03-15 06:24:07', '2021-12-19 06:43:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'Perferendis ut facere dicta praesentium ut.', '2014-09-29 18:40:04', '2022-01-01 19:00:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'Distinctio dolor sit rem et quo.', '2014-06-14 03:47:22', '2022-01-14 12:37:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'Consequuntur odit pariatur provident ea.', '2014-11-28 20:47:36', '2021-12-17 01:58:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'Officia sit magnam sit omnis consequatur eos porro.', '2014-01-03 19:27:48', '2022-01-01 11:15:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'Dolorem iusto autem dolores porro.', '2020-12-15 16:34:13', '2021-12-15 01:15:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'Repellat eum est in.', '2020-07-16 18:43:29', '2022-01-04 09:41:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'Ut distinctio repellat eum facere neque nesciunt.', '2014-09-07 11:11:01', '2022-01-03 17:59:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'Soluta sint quam eius qui et assumenda enim.', '2020-09-25 23:50:54', '2021-12-30 18:58:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'Rerum unde odit tenetur qui dolores laborum.', '2017-10-02 15:08:36', '2022-01-01 06:26:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (41, 'Deserunt eaque velit officia sit.', '2018-11-30 23:20:31', '2021-12-27 01:47:41');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (42, 'Quis soluta unde ea.', '2012-06-19 23:05:32', '2021-12-23 17:40:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (43, 'Quisquam labore ut et nesciunt totam in.', '2019-01-04 08:13:44', '2021-12-26 23:20:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (44, 'Necessitatibus quibusdam incidunt commodi sed ipsa earum sit.', '2012-02-01 14:29:08', '2021-12-27 14:43:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (45, 'Velit praesentium magnam reprehenderit voluptas.', '2013-11-08 04:44:33', '2022-01-03 23:08:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (46, 'Ea ut dolore consequuntur ducimus.', '2019-12-10 08:31:20', '2021-12-23 18:19:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (47, 'Accusantium esse ut corrupti suscipit est.', '2020-04-15 01:52:52', '2022-01-10 21:53:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (48, 'Nesciunt dolores qui aut aperiam placeat quae.', '2016-11-06 08:11:58', '2021-12-30 10:30:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (49, 'Voluptatem maxime laudantium architecto dolores.', '2020-02-28 20:08:40', '2022-01-10 22:37:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (50, 'Laboriosam occaecati quasi occaecati rem quas voluptatibus.', '2015-06-10 02:43:20', '2022-01-02 13:42:41');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (51, 'Ex et animi ullam id necessitatibus excepturi sunt.', '2013-06-23 19:35:36', '2021-12-27 13:40:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (52, 'Itaque voluptatibus repellat est est unde sapiente sit.', '2015-05-18 08:38:27', '2022-01-09 14:39:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (53, 'Aut qui labore mollitia voluptatem soluta enim.', '2014-04-14 04:07:19', '2021-12-22 02:50:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (54, 'Perferendis expedita maxime quia molestiae alias perferendis.', '2012-11-11 00:06:42', '2022-01-02 09:21:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (55, 'Voluptates distinctio quos sint.', '2018-10-10 21:12:29', '2022-01-07 09:01:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (56, 'Qui enim quae velit doloribus illo voluptas neque repellat.', '2015-02-05 12:24:57', '2022-01-03 13:05:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (57, 'Incidunt et et fugit veritatis.', '2012-09-02 14:30:54', '2021-12-25 09:49:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (58, 'Sapiente laborum aliquam sequi tempore quo id nihil officiis.', '2013-06-19 06:51:14', '2022-01-07 04:28:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (59, 'Totam qui debitis aut cum.', '2017-06-24 12:35:07', '2021-12-18 11:01:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (60, 'Eligendi saepe dolor cumque asperiores nam.', '2020-01-13 06:55:10', '2021-12-28 17:33:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (61, 'Est nemo et aut sunt vitae voluptatem magnam veritatis.', '2017-03-08 18:44:06', '2021-12-31 17:08:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (62, 'Impedit cupiditate architecto impedit repudiandae.', '2018-11-22 15:39:26', '2022-01-05 23:54:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (63, 'Porro aut sunt vel officia blanditiis delectus.', '2017-12-31 08:55:04', '2022-01-06 19:51:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (64, 'Necessitatibus animi qui aperiam quo quis autem incidunt.', '2016-11-23 05:03:28', '2021-12-28 06:02:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (65, 'In est nulla quo inventore voluptas sit.', '2012-09-23 08:39:19', '2022-01-09 14:07:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (66, 'Aut molestias sit non iusto nemo provident.', '2019-05-25 00:17:00', '2022-01-06 01:14:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (67, 'Facilis tenetur autem magnam qui aut.', '2018-10-16 12:03:51', '2022-01-10 12:49:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (68, 'Sapiente id minima minus eum.', '2016-04-17 03:16:23', '2022-01-14 13:24:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (69, 'Nobis est dignissimos suscipit nostrum esse.', '2012-02-09 00:38:42', '2022-01-12 01:11:26');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (70, 'Non doloremque quibusdam et et iste est dolor qui.', '2013-02-26 00:58:26', '2021-12-19 16:29:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (71, 'Soluta excepturi qui blanditiis quod molestiae occaecati quia quam.', '2019-09-07 17:18:56', '2022-01-10 12:51:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (72, 'Ullam beatae culpa consequatur.', '2015-05-24 09:16:29', '2021-12-25 04:53:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (73, 'Quia odio ut laudantium rerum doloribus sequi error.', '2019-06-17 16:02:14', '2022-01-06 05:34:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (74, 'Molestias et labore nihil suscipit molestiae et sunt.', '2015-10-02 00:40:09', '2022-01-14 01:10:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (75, 'Magnam non et incidunt repellat eveniet non aut.', '2012-07-07 10:55:10', '2021-12-19 21:27:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (76, 'Voluptatem perferendis recusandae voluptatem qui maxime vitae.', '2013-10-09 20:11:17', '2022-01-05 10:05:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (77, 'Natus est adipisci perferendis dignissimos quae.', '2018-03-10 07:50:30', '2021-12-26 05:41:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (78, 'Quibusdam consequatur voluptas deserunt vel.', '2021-03-14 09:04:00', '2022-01-08 11:49:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (79, 'Neque et quas est cumque id quo excepturi cumque.', '2012-05-27 11:31:05', '2022-01-05 16:08:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (80, 'Doloribus aut odit animi quia molestias fuga.', '2014-10-02 03:30:26', '2021-12-28 07:37:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (81, 'Et reprehenderit voluptate expedita sit et doloremque.', '2015-01-01 06:33:11', '2021-12-18 12:39:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (82, 'Iusto adipisci expedita quas repellat.', '2016-12-15 16:08:32', '2021-12-21 03:33:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (83, 'Molestias ipsum qui dolorem optio amet velit.', '2020-09-10 10:16:39', '2021-12-27 01:42:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (84, 'Atque quas dolorem dicta quis iusto explicabo ut officiis.', '2014-03-02 21:49:20', '2022-01-11 07:04:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (85, 'Voluptatem velit minima nulla perspiciatis consectetur qui quidem deserunt.', '2016-11-02 22:41:25', '2021-12-23 14:02:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (86, 'Sequi aut non placeat aut.', '2012-07-29 17:00:04', '2022-01-02 02:21:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (87, 'Delectus quam perspiciatis a sunt perspiciatis in rerum.', '2021-05-21 14:23:35', '2022-01-08 21:36:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (88, 'Et eos voluptatem doloremque voluptatem sunt cum.', '2015-05-19 21:31:25', '2021-12-24 18:35:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (89, 'Perferendis sunt et autem porro.', '2020-05-02 03:44:53', '2022-01-04 12:40:15');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (90, 'Error consequatur accusamus facilis dignissimos ex.', '2021-06-01 09:19:09', '2021-12-30 14:39:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (91, 'Nihil rem rerum possimus magni.', '2020-02-23 17:38:40', '2022-01-10 15:09:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (92, 'Totam itaque aut rem quidem sunt autem.', '2012-11-01 20:23:01', '2022-01-11 15:03:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (93, 'Harum aperiam harum fugit quos in fugiat temporibus.', '2019-08-16 08:42:34', '2021-12-29 06:29:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (94, 'Ea esse cupiditate laudantium iusto maxime voluptas vel.', '2018-01-29 18:59:27', '2021-12-20 03:07:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (95, 'Voluptatem sed repudiandae sit laudantium non corrupti velit pariatur.', '2020-04-27 04:22:21', '2022-01-11 10:21:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (96, 'Assumenda sit aut nesciunt.', '2017-10-21 17:15:00', '2021-12-21 17:25:26');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (97, 'Incidunt quo quo in ipsam molestiae.', '2014-11-29 00:32:01', '2022-01-04 08:19:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (98, 'Est omnis nulla id quasi incidunt veritatis similique.', '2018-12-20 05:37:10', '2021-12-29 22:56:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (99, 'Nam incidunt est reprehenderit aliquam aut in maiores.', '2015-07-04 13:06:29', '2021-12-25 18:45:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (100, 'Sit repellendus magnam molestiae explicabo.', '2016-08-15 07:10:49', '2022-01-06 03:24:18');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 80, '2022-01-14 12:54:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 91, '2022-01-12 21:25:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 33, '2021-12-16 01:52:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 42, '2022-01-05 14:44:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 60, '2022-01-08 22:31:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 86, '2022-01-13 07:59:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 50, '2021-12-15 07:18:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 79, '2021-12-23 23:11:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 10, '2022-01-07 08:13:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 16, '2021-12-28 17:30:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 54, '2021-12-29 00:21:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 88, '2021-12-27 03:44:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 32, '2021-12-29 12:38:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 81, '2022-01-08 19:21:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 40, '2022-01-11 13:03:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 91, '2021-12-22 20:15:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 37, '2022-01-09 19:43:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 56, '2021-12-19 02:12:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 29, '2021-12-16 18:12:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 79, '2022-01-09 01:33:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 92, '2021-12-31 22:17:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 4, '2022-01-01 02:16:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 29, '2022-01-04 18:40:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 85, '2021-12-30 20:03:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 11, '2021-12-15 11:19:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 25, '2021-12-27 18:59:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (21, 10, '2022-01-06 20:47:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (22, 82, '2021-12-26 22:15:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (23, 48, '2021-12-20 21:00:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (23, 73, '2022-01-05 04:54:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 30, '2022-01-13 18:46:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 14, '2021-12-26 07:47:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (28, 18, '2021-12-14 17:31:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 17, '2021-12-28 21:53:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 18, '2022-01-01 21:29:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (31, 18, '2021-12-25 21:00:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (31, 67, '2021-12-18 08:19:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (31, 69, '2022-01-11 20:28:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (32, 97, '2022-01-06 17:53:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (34, 5, '2022-01-05 12:13:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (34, 12, '2021-12-23 15:24:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (34, 49, '2021-12-16 05:39:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (35, 29, '2021-12-28 10:14:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (35, 54, '2021-12-29 12:17:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (35, 73, '2022-01-01 01:38:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (36, 88, '2021-12-28 21:48:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (38, 26, '2021-12-27 08:42:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (38, 57, '2021-12-31 12:51:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (38, 64, '2021-12-18 10:23:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (40, 19, '2021-12-27 07:13:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (40, 88, '2022-01-01 13:13:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (42, 62, '2021-12-16 18:24:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (43, 5, '2022-01-05 02:58:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (43, 47, '2022-01-08 01:14:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (45, 69, '2022-01-03 20:52:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (45, 81, '2022-01-10 01:53:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (46, 97, '2021-12-21 21:16:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (47, 13, '2021-12-17 07:50:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (47, 97, '2021-12-17 20:39:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (48, 73, '2021-12-27 14:20:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (49, 29, '2022-01-10 15:26:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (50, 38, '2022-01-09 02:02:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (53, 91, '2022-01-05 08:13:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (57, 48, '2022-01-05 05:00:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (57, 100, '2022-01-01 15:26:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (60, 49, '2021-12-14 23:38:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (61, 30, '2022-01-09 17:32:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (62, 20, '2022-01-06 11:39:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (62, 27, '2021-12-14 23:24:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (63, 95, '2021-12-23 12:39:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (64, 59, '2021-12-26 22:44:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (64, 63, '2022-01-11 22:39:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (66, 49, '2021-12-20 04:39:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (68, 27, '2021-12-15 13:34:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (68, 54, '2021-12-24 06:57:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (69, 75, '2022-01-13 12:54:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (71, 51, '2021-12-29 04:47:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (72, 36, '2021-12-25 00:48:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (72, 58, '2021-12-23 14:17:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (72, 63, '2021-12-19 07:12:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (75, 70, '2021-12-25 20:22:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (76, 89, '2021-12-24 23:12:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (77, 81, '2021-12-22 18:08:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (77, 90, '2021-12-25 00:38:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (79, 79, '2022-01-07 05:07:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (80, 93, '2021-12-26 18:58:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (83, 70, '2022-01-10 13:46:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (83, 100, '2021-12-22 12:05:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (84, 7, '2022-01-09 22:18:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (85, 82, '2022-01-06 11:12:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (86, 11, '2021-12-31 22:37:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (86, 18, '2022-01-04 05:58:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (88, 5, '2021-12-22 07:30:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (89, 40, '2022-01-11 16:08:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (89, 70, '2021-12-17 16:11:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (91, 17, '2022-01-11 18:05:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (92, 94, '2021-12-28 22:31:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (93, 34, '2022-01-06 15:28:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (93, 61, '2021-12-27 07:05:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (99, 63, '2022-01-01 22:54:28');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'confirmed', '2020-03-17 20:00:13', '2022-01-12 12:53:17');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'rejected', '2015-01-20 16:05:06', '2022-01-14 09:35:24');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'pending', '2013-05-14 03:08:15', '2021-12-14 18:38:25');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `friendship_status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 19, 1, '2021-12-14 16:50:53', '2012-04-30 09:20:49', '2021-12-21 19:12:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 5, 3, '2021-12-15 16:00:10', '2015-12-28 23:44:03', '2022-01-12 07:24:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 12, 2, '2021-12-20 21:50:45', '2020-12-31 19:21:46', '2021-12-30 00:57:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 32, 1, '2022-01-04 04:29:53', '2021-09-19 04:54:52', '2022-01-04 21:04:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 77, 3, '2021-12-23 10:22:12', '2016-12-04 17:19:00', '2022-01-06 05:31:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 73, 2, '2022-01-10 18:54:48', '2016-07-20 12:16:44', '2021-12-27 07:16:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 98, 1, '2021-12-20 23:40:04', '2014-09-13 05:05:17', '2021-12-26 16:01:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 23, 2, '2021-12-25 17:24:16', '2015-02-23 05:20:00', '2021-12-23 13:26:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 33, 2, '2021-12-27 14:50:35', '2017-10-28 11:53:26', '2022-01-07 18:48:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 41, 3, '2021-12-16 17:09:09', '2015-04-08 06:10:56', '2022-01-09 03:20:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 36, 2, '2022-01-05 20:28:14', '2014-11-02 23:57:38', '2022-01-10 00:08:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 23, 3, '2021-12-26 10:13:48', '2014-06-21 14:49:16', '2022-01-10 11:32:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 99, 2, '2021-12-21 02:35:57', '2017-04-14 20:22:31', '2021-12-16 08:54:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 33, 1, '2022-01-08 11:51:14', '2020-06-08 23:18:02', '2022-01-12 18:43:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 64, 1, '2022-01-14 00:06:51', '2021-07-25 07:43:33', '2021-12-17 13:24:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 94, 1, '2022-01-12 20:26:24', '2013-03-30 10:17:48', '2021-12-31 21:15:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 30, 1, '2021-12-29 21:49:40', '2016-09-16 18:51:49', '2022-01-03 14:46:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 81, 1, '2022-01-12 04:30:16', '2020-03-28 11:06:58', '2021-12-23 18:12:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (24, 13, 2, '2021-12-30 13:32:38', '2012-03-09 20:13:13', '2021-12-26 10:10:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 9, 2, '2021-12-30 14:47:12', '2021-04-01 00:09:07', '2021-12-23 02:29:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 43, 3, '2022-01-08 11:15:20', '2018-07-29 05:30:54', '2022-01-12 09:41:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 29, 1, '2021-12-28 08:39:21', '2016-09-06 07:47:06', '2022-01-02 09:05:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 73, 2, '2021-12-14 19:16:38', '2015-11-03 11:52:41', '2022-01-01 00:45:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 13, 3, '2021-12-16 09:38:25', '2019-11-09 16:50:39', '2022-01-10 13:33:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 90, 1, '2021-12-28 15:33:28', '2014-01-01 12:09:34', '2021-12-28 07:32:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 9, 1, '2021-12-30 20:32:26', '2019-01-27 08:24:19', '2022-01-08 16:23:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 56, 3, '2021-12-22 10:15:44', '2019-08-31 22:29:41', '2022-01-12 21:20:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (31, 43, 3, '2022-01-06 22:47:16', '2014-10-22 18:42:35', '2021-12-25 01:50:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 75, 1, '2021-12-30 19:08:19', '2021-03-23 14:29:35', '2022-01-08 05:55:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (34, 83, 1, '2022-01-12 14:40:02', '2021-06-03 08:54:56', '2021-12-22 15:20:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 20, 2, '2022-01-12 12:44:26', '2020-10-23 12:23:19', '2021-12-30 10:13:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 4, 1, '2021-12-16 07:58:52', '2013-08-30 11:39:16', '2021-12-14 16:47:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 84, 1, '2022-01-09 18:38:38', '2013-05-20 12:10:39', '2021-12-15 11:10:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 93, 3, '2021-12-28 10:38:04', '2022-01-11 13:43:30', '2022-01-12 07:15:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 25, 2, '2021-12-30 15:00:23', '2016-11-08 13:47:49', '2022-01-09 17:01:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 62, 2, '2021-12-28 04:31:49', '2017-06-21 09:41:01', '2022-01-12 02:11:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 22, 2, '2021-12-23 13:25:26', '2019-06-28 05:30:07', '2021-12-19 05:32:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 38, 1, '2022-01-09 12:17:06', '2013-01-07 22:58:04', '2022-01-13 05:31:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 91, 3, '2022-01-11 08:41:16', '2014-10-08 17:23:23', '2021-12-17 04:10:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 53, 2, '2022-01-01 12:09:48', '2020-06-23 18:13:56', '2021-12-28 04:35:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (42, 62, 3, '2022-01-07 04:26:16', '2013-03-09 20:20:18', '2021-12-29 19:01:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 89, 2, '2021-12-27 08:40:09', '2014-05-26 23:52:40', '2021-12-26 09:32:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 9, 1, '2022-01-03 16:04:24', '2013-07-21 21:50:16', '2022-01-05 00:08:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 63, 3, '2022-01-07 11:25:00', '2019-12-17 11:46:46', '2021-12-18 20:36:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 90, 3, '2021-12-25 05:50:25', '2013-11-06 09:40:13', '2022-01-05 19:12:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 9, 2, '2021-12-17 00:42:55', '2021-11-23 22:53:56', '2022-01-12 14:24:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 85, 1, '2022-01-12 23:58:54', '2014-02-12 23:37:48', '2021-12-19 21:24:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 86, 1, '2021-12-18 10:37:36', '2013-05-18 12:48:10', '2022-01-11 00:21:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (53, 16, 3, '2021-12-23 14:15:23', '2015-04-05 12:55:24', '2022-01-14 05:44:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (53, 34, 3, '2021-12-26 23:49:11', '2019-09-02 23:14:06', '2021-12-19 07:13:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 11, 3, '2021-12-26 08:54:09', '2020-06-29 11:10:07', '2022-01-09 07:21:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 14, 2, '2022-01-02 16:19:47', '2020-07-20 14:33:28', '2022-01-03 06:03:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 99, 2, '2022-01-13 03:03:46', '2021-10-29 13:05:07', '2021-12-16 00:43:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 99, 2, '2021-12-19 00:37:23', '2017-09-25 11:54:15', '2022-01-14 10:46:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 15, 3, '2021-12-23 16:05:45', '2013-03-24 19:18:14', '2021-12-30 05:03:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 50, 3, '2022-01-01 16:13:57', '2012-10-26 08:01:38', '2022-01-07 08:05:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 89, 1, '2021-12-20 11:40:31', '2020-03-27 19:51:03', '2021-12-28 22:59:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 12, 1, '2021-12-26 09:12:58', '2021-05-07 22:10:10', '2022-01-12 19:52:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 63, 1, '2022-01-04 16:18:52', '2013-07-12 15:07:28', '2022-01-05 20:48:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 71, 2, '2022-01-11 06:01:08', '2012-01-26 04:49:18', '2022-01-03 12:04:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (60, 54, 3, '2021-12-26 02:43:18', '2012-12-03 19:45:20', '2021-12-17 23:18:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (61, 89, 2, '2021-12-17 14:55:14', '2018-10-19 12:32:25', '2021-12-23 12:53:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 21, 3, '2021-12-21 20:52:16', '2021-05-26 09:54:16', '2021-12-31 15:24:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 81, 3, '2022-01-11 06:14:47', '2013-04-30 02:57:14', '2022-01-09 07:07:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (64, 73, 1, '2022-01-01 08:18:08', '2015-04-18 17:06:01', '2022-01-12 04:33:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (65, 92, 1, '2021-12-20 14:41:17', '2017-10-05 15:51:19', '2021-12-26 23:56:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 48, 2, '2022-01-05 22:10:57', '2013-10-16 15:34:04', '2021-12-26 00:34:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 83, 3, '2021-12-20 03:57:40', '2014-11-28 04:08:19', '2021-12-26 20:53:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 94, 2, '2022-01-04 09:37:03', '2014-01-29 02:23:22', '2021-12-30 04:17:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 27, 1, '2021-12-28 09:51:32', '2020-05-31 19:22:01', '2022-01-14 02:13:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 77, 2, '2021-12-25 04:12:33', '2021-02-25 19:34:16', '2022-01-12 15:42:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 97, 3, '2021-12-18 11:31:26', '2018-03-02 11:14:45', '2021-12-18 07:30:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 8, 2, '2021-12-30 20:20:49', '2019-07-19 09:27:56', '2021-12-31 00:44:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 27, 1, '2021-12-17 15:28:23', '2015-10-11 14:11:21', '2021-12-18 03:50:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 36, 1, '2022-01-11 04:32:39', '2021-07-25 00:20:32', '2021-12-20 03:13:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 27, 3, '2022-01-08 08:40:37', '2017-01-06 09:38:24', '2022-01-11 03:35:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 38, 1, '2022-01-10 07:21:15', '2016-10-03 07:14:21', '2022-01-10 19:52:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 41, 3, '2022-01-01 05:54:56', '2017-01-28 23:29:59', '2021-12-22 09:57:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 51, 3, '2021-12-18 08:27:45', '2018-05-13 19:50:29', '2021-12-20 23:45:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (76, 37, 1, '2022-01-01 19:39:21', '2015-01-25 09:25:45', '2021-12-22 17:28:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 4, 2, '2022-01-03 16:28:21', '2017-07-19 19:18:34', '2022-01-10 00:46:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 22, 2, '2021-12-30 13:58:11', '2014-07-19 22:26:09', '2021-12-14 18:46:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 51, 1, '2021-12-22 18:28:54', '2014-06-05 05:50:23', '2022-01-13 01:06:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (79, 41, 2, '2022-01-10 15:32:00', '2019-08-23 09:04:56', '2022-01-10 19:24:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 66, 2, '2022-01-01 22:58:45', '2014-11-08 05:31:38', '2022-01-09 22:57:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (84, 4, 3, '2022-01-13 18:55:39', '2018-08-27 11:00:54', '2021-12-19 23:12:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 11, 3, '2021-12-30 04:56:55', '2020-05-25 22:37:20', '2021-12-31 06:02:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 79, 2, '2022-01-13 13:56:31', '2016-12-01 06:49:51', '2021-12-30 22:28:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (86, 72, 1, '2022-01-07 08:48:11', '2012-08-27 14:59:26', '2022-01-03 23:52:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (86, 76, 1, '2021-12-17 08:22:39', '2021-04-07 17:23:11', '2021-12-27 00:10:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 30, 1, '2021-12-18 21:15:48', '2016-01-14 21:46:24', '2022-01-03 08:14:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 77, 1, '2022-01-01 03:47:14', '2018-05-17 19:21:04', '2021-12-15 14:16:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (88, 13, 3, '2021-12-17 23:48:39', '2019-06-25 01:52:49', '2021-12-20 19:14:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (89, 41, 2, '2021-12-15 06:24:09', '2014-08-21 10:55:02', '2022-01-10 10:32:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 94, 3, '2022-01-11 16:35:01', '2018-11-07 20:02:23', '2022-01-06 23:22:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 13, 3, '2022-01-12 16:32:16', '2020-04-20 04:14:11', '2021-12-31 09:34:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 29, 2, '2021-12-30 07:31:20', '2016-01-26 05:39:24', '2022-01-03 23:36:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 92, 3, '2021-12-30 11:24:49', '2020-09-11 14:28:52', '2022-01-08 04:30:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 4, 2, '2022-01-07 17:52:40', '2013-01-04 14:01:43', '2022-01-05 23:58:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 47, 3, '2022-01-08 00:27:28', '2013-03-23 05:08:53', '2021-12-22 19:58:04');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'mp3', '2017-09-22 04:49:51', '2021-12-17 02:23:38');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'mp4', '2012-03-25 12:05:22', '2021-12-23 17:40:35');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'jpeg', '2021-07-30 07:27:31', '2022-01-01 22:57:46');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'csv', '2020-12-02 18:39:12', '2021-12-16 20:13:34');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'wma', '2016-06-09 11:44:39', '2021-12-30 06:55:24');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'ogg', '2021-11-01 20:58:53', '2021-12-26 23:32:42');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'gif', '2020-10-18 22:52:37', '2022-01-09 12:04:19');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'bmp', '2019-10-03 23:34:52', '2021-12-27 17:19:03');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'ico', '2015-09-06 10:58:13', '2021-12-16 07:05:34');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'png', '2014-05-07 17:48:20', '2021-12-26 12:15:50');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (1, 57, 'doloribus', 29722, NULL, 10, '2018-12-11 11:59:35', '2022-01-06 13:40:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (2, 17, 'illo', 12802, NULL, 10, '2021-01-31 13:13:13', '2022-01-14 07:51:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (3, 53, 'temporibus', 8210, NULL, 7, '2012-10-20 11:27:43', '2021-12-24 03:45:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (4, 76, 'quod', 23707, NULL, 4, '2015-04-24 19:35:37', '2021-12-21 18:39:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (5, 57, 'quisquam', 30597, NULL, 10, '2015-12-12 18:31:20', '2022-01-13 10:14:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (6, 11, 'doloribus', 25837, NULL, 5, '2020-06-23 18:03:24', '2021-12-31 00:13:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (7, 73, 'omnis', 16343, NULL, 3, '2016-03-06 22:43:42', '2021-12-22 12:41:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (8, 48, 'sit', 11547, NULL, 7, '2014-07-08 06:19:18', '2022-01-11 21:24:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (9, 94, 'quia', 20728, NULL, 3, '2021-08-19 12:58:35', '2021-12-23 20:37:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (10, 1, 'animi', 29772, NULL, 8, '2018-07-31 11:16:22', '2022-01-08 19:00:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (11, 87, 'exercitationem', 5579, NULL, 10, '2012-07-20 15:29:55', '2022-01-10 18:10:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (12, 91, 'omnis', 12398, NULL, 10, '2019-02-08 21:11:09', '2022-01-09 07:05:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (13, 90, 'alias', 27434, NULL, 9, '2016-03-04 18:39:59', '2021-12-16 13:50:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (14, 61, 'repudiandae', 9274, NULL, 5, '2020-03-17 21:23:43', '2022-01-13 09:49:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (15, 70, 'ut', 21817, NULL, 8, '2018-01-01 17:22:32', '2022-01-10 17:01:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (16, 71, 'voluptatem', 6077, NULL, 3, '2021-12-14 23:43:58', '2022-01-13 09:40:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (17, 69, 'quia', 27785, NULL, 9, '2012-06-29 09:19:11', '2022-01-11 12:27:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (18, 19, 'minus', 28132, NULL, 3, '2012-11-14 19:28:01', '2021-12-14 17:15:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (19, 51, 'ut', 21617, NULL, 10, '2017-03-01 06:58:03', '2021-12-20 20:49:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (20, 54, 'quasi', 4047, NULL, 1, '2021-04-01 06:54:14', '2021-12-16 06:07:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (21, 87, 'eos', 23245, NULL, 7, '2014-12-24 23:41:59', '2021-12-21 10:10:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (22, 49, 'expedita', 34341, NULL, 6, '2018-05-15 16:39:03', '2022-01-14 07:20:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (23, 91, 'est', 12401, NULL, 10, '2016-10-15 23:48:10', '2022-01-13 17:25:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (24, 20, 'placeat', 8442, NULL, 9, '2012-10-16 19:02:14', '2022-01-04 19:41:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (25, 21, 'voluptatem', 18947, NULL, 3, '2017-10-24 20:30:00', '2021-12-26 23:48:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (26, 58, 'consectetur', 5452, NULL, 1, '2012-08-05 04:10:55', '2022-01-05 08:41:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (27, 20, 'rerum', 6698, NULL, 5, '2020-01-15 03:31:56', '2021-12-28 14:04:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (28, 7, 'ut', 15548, NULL, 1, '2019-05-12 19:24:28', '2021-12-21 07:25:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (29, 36, 'ut', 19297, NULL, 7, '2017-04-09 12:39:25', '2021-12-28 20:36:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (30, 58, 'dolorum', 33674, NULL, 1, '2013-06-18 23:17:50', '2021-12-26 10:28:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (31, 44, 'totam', 15270, NULL, 3, '2017-05-06 17:25:56', '2022-01-07 23:23:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (32, 30, 'ut', 3818, NULL, 2, '2012-09-03 14:42:33', '2022-01-04 16:01:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (33, 15, 'minus', 9734, NULL, 5, '2012-10-18 12:53:57', '2021-12-26 11:16:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (34, 34, 'sit', 10684, NULL, 7, '2016-10-20 10:29:57', '2021-12-31 00:20:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (35, 42, 'voluptatibus', 14458, NULL, 9, '2013-08-24 18:42:58', '2021-12-28 02:03:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (36, 73, 'iusto', 2756, NULL, 3, '2013-12-10 22:45:57', '2022-01-01 20:51:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (37, 51, 'voluptatem', 3022, NULL, 3, '2013-01-12 05:38:59', '2022-01-03 15:40:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (38, 88, 'harum', 17182, NULL, 5, '2017-10-26 04:07:26', '2022-01-10 16:38:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (39, 17, 'sunt', 6802, NULL, 1, '2013-04-15 18:49:54', '2022-01-06 15:39:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (40, 25, 'ipsa', 23716, NULL, 4, '2019-07-18 01:14:48', '2021-12-18 03:04:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (41, 28, 'distinctio', 14740, NULL, 9, '2016-08-03 17:53:34', '2022-01-13 03:01:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (42, 44, 'quia', 8016, NULL, 5, '2017-12-26 21:40:23', '2021-12-30 07:18:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (43, 30, 'sunt', 9847, NULL, 6, '2020-12-22 11:32:23', '2021-12-17 06:48:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (44, 56, 'qui', 13678, NULL, 7, '2016-06-24 07:27:08', '2021-12-21 14:08:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (45, 18, 'minus', 30917, NULL, 2, '2019-03-12 04:15:01', '2022-01-06 23:20:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (46, 70, 'ducimus', 2080, NULL, 7, '2021-07-24 07:15:12', '2022-01-14 00:31:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (47, 41, 'eum', 11359, NULL, 10, '2017-11-18 12:08:42', '2022-01-11 02:02:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (48, 75, 'totam', 26349, NULL, 6, '2020-12-15 03:32:09', '2022-01-01 00:55:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (49, 47, 'et', 33156, NULL, 1, '2013-09-22 19:57:37', '2021-12-22 09:39:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (50, 20, 'quaerat', 18152, NULL, 9, '2017-05-19 07:23:04', '2021-12-23 13:08:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (51, 95, 'labore', 27715, NULL, 10, '2021-09-21 21:37:54', '2021-12-23 05:01:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (52, 16, 'est', 14379, NULL, 5, '2012-09-15 10:10:21', '2021-12-30 07:29:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (53, 12, 'eaque', 17608, NULL, 1, '2013-02-09 00:28:32', '2021-12-19 02:48:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (54, 87, 'ut', 29885, NULL, 3, '2019-11-26 00:19:25', '2022-01-07 02:42:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (55, 11, 'aperiam', 22458, NULL, 2, '2013-05-03 19:50:26', '2021-12-16 11:45:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (56, 65, 'quasi', 8410, NULL, 4, '2017-07-24 02:58:31', '2021-12-27 05:03:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (57, 93, 'ab', 31847, NULL, 1, '2017-02-09 13:17:45', '2021-12-21 23:58:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (58, 86, 'voluptas', 11299, NULL, 3, '2014-05-01 10:22:37', '2022-01-03 18:01:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (59, 60, 'et', 11879, NULL, 5, '2020-10-14 15:10:51', '2022-01-14 06:02:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (60, 87, 'aperiam', 34302, NULL, 8, '2015-07-24 01:04:17', '2022-01-14 11:28:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (61, 55, 'assumenda', 20556, NULL, 6, '2020-03-30 04:03:38', '2021-12-28 12:09:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (62, 39, 'porro', 4571, NULL, 10, '2020-11-13 10:33:01', '2021-12-16 06:16:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (63, 56, 'facere', 22040, NULL, 2, '2013-02-16 10:18:29', '2022-01-07 09:13:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (64, 50, 'similique', 19100, NULL, 1, '2020-06-26 20:09:41', '2021-12-26 15:45:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (65, 22, 'est', 19959, NULL, 7, '2013-12-25 01:38:17', '2022-01-14 01:17:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (66, 90, 'alias', 9818, NULL, 2, '2019-05-12 12:13:38', '2022-01-13 20:35:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (67, 61, 'earum', 7710, NULL, 1, '2012-05-25 04:01:26', '2021-12-17 09:50:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (68, 62, 'qui', 16927, NULL, 8, '2018-11-16 12:04:24', '2022-01-03 20:32:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (69, 9, 'iure', 27909, NULL, 5, '2018-03-17 11:39:21', '2022-01-01 03:08:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (70, 1, 'totam', 7356, NULL, 2, '2013-06-23 04:37:48', '2022-01-09 17:00:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (71, 59, 'alias', 15241, NULL, 7, '2012-06-30 05:17:14', '2021-12-20 16:39:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (72, 59, 'et', 26297, NULL, 6, '2017-10-07 22:57:43', '2022-01-06 01:05:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (73, 74, 'dolor', 22942, NULL, 5, '2012-06-17 07:02:24', '2021-12-27 20:25:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (74, 74, 'sed', 20472, NULL, 4, '2015-05-13 22:56:26', '2022-01-04 05:20:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (75, 86, 'saepe', 23955, NULL, 7, '2021-02-14 15:54:05', '2021-12-25 17:28:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (76, 11, 'iste', 10132, NULL, 4, '2017-06-29 02:43:18', '2022-01-06 17:41:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (77, 17, 'ducimus', 27225, NULL, 5, '2015-04-04 01:50:13', '2022-01-12 11:07:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (78, 35, 'molestiae', 32084, NULL, 8, '2019-09-26 20:55:37', '2021-12-22 23:06:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (79, 63, 'officia', 12339, NULL, 9, '2017-08-14 05:21:39', '2021-12-25 21:59:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (80, 74, 'rerum', 14864, NULL, 9, '2020-03-04 01:22:37', '2021-12-15 18:49:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (81, 53, 'praesentium', 14867, NULL, 7, '2016-11-26 23:55:10', '2022-01-04 16:35:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (82, 1, 'ut', 13944, NULL, 2, '2015-12-23 22:54:45', '2022-01-13 18:21:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (83, 68, 'velit', 5420, NULL, 7, '2018-04-18 06:01:27', '2021-12-29 01:38:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (84, 85, 'mollitia', 9590, NULL, 8, '2013-05-09 23:00:19', '2021-12-26 08:52:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (85, 10, 'fuga', 20405, NULL, 9, '2015-05-25 17:57:45', '2021-12-24 13:49:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (86, 96, 'occaecati', 25731, NULL, 7, '2018-10-02 10:51:48', '2021-12-22 15:14:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (87, 51, 'animi', 27796, NULL, 6, '2014-07-02 04:26:01', '2021-12-26 05:24:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (88, 20, 'dolor', 5449, NULL, 3, '2016-08-08 15:53:21', '2021-12-16 12:45:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (89, 98, 'quae', 2535, NULL, 10, '2021-12-20 14:21:44', '2022-01-09 18:17:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (90, 58, 'assumenda', 34004, NULL, 9, '2013-10-26 00:33:00', '2021-12-23 21:44:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (91, 54, 'mollitia', 20102, NULL, 7, '2014-11-23 18:06:05', '2021-12-15 04:17:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (92, 24, 'consequatur', 31771, NULL, 7, '2017-03-08 02:55:22', '2022-01-07 09:24:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (93, 18, 'enim', 23303, NULL, 6, '2012-04-03 15:59:24', '2021-12-23 04:37:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (94, 42, 'laboriosam', 29701, NULL, 9, '2012-09-07 03:04:47', '2022-01-10 14:44:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (95, 42, 'praesentium', 30608, NULL, 2, '2013-12-18 08:02:00', '2021-12-17 04:19:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (96, 64, 'totam', 3101, NULL, 10, '2019-12-05 07:40:58', '2022-01-13 08:16:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (97, 78, 'voluptas', 26374, NULL, 7, '2012-07-08 23:43:22', '2022-01-04 11:27:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (98, 6, 'esse', 12989, NULL, 5, '2015-08-21 07:01:47', '2022-01-08 23:29:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (99, 26, 'asperiores', 12270, NULL, 10, '2012-07-25 05:33:32', '2022-01-12 09:36:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (100, 22, 'rerum', 26001, NULL, 4, '2015-02-10 12:41:08', '2021-12-17 07:15:53');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (1, 66, 24, 'Mollitia dicta dicta natus nesciunt accusamus qui. Fugiat voluptas voluptatibus maiores ea explicabo ducimus cumque in. Est quisquam ipsa dolorem.', 1, 0, '2018-12-30 00:28:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (2, 11, 70, 'Voluptate ipsum autem atque est et ut. Et ducimus hic ullam fugit. Aspernatur placeat non consequatur harum eaque debitis. Exercitationem neque exercitationem nam eum.', 1, 0, '2021-07-05 04:11:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (3, 4, 10, 'Eaque non explicabo ut iure dolorem ea. Aut voluptatibus iste assumenda debitis qui quia deserunt ducimus. Maiores quis et officia rerum asperiores alias dicta. Autem officia illo sint quam sequi recusandae deserunt.', 1, 0, '2016-04-25 17:24:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (4, 6, 24, 'Qui eaque provident magnam dignissimos. Quia omnis inventore qui praesentium. Maiores deleniti ducimus et fugit sapiente sint laboriosam.', 1, 0, '2017-12-31 14:23:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (5, 44, 35, 'Ipsum quibusdam ullam quidem autem illum. Eos nam qui est nisi molestiae cupiditate.', 0, 0, '2019-04-16 06:49:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (6, 64, 3, 'Soluta voluptates est sit voluptas. Ut aut ratione quos velit accusantium. Quasi sint aut molestias qui.', 1, 0, '2021-02-14 02:11:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (7, 63, 97, 'Vitae sed doloribus reiciendis minima blanditiis enim. Vero consequatur blanditiis qui quis consectetur.', 0, 1, '2015-09-09 20:53:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (8, 35, 11, 'Asperiores qui ipsam quis dolor. Aut voluptas impedit quasi est. Quis illum distinctio nihil dolores eos odit. Praesentium incidunt quibusdam est sunt amet.', 0, 0, '2015-11-23 07:43:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (9, 51, 68, 'Autem non voluptatem at est rerum sint consequatur. Quas maiores est atque quia perferendis et unde. Voluptatem eius in nihil alias. Adipisci repudiandae et sit reprehenderit nihil in minus.', 1, 0, '2021-01-20 22:53:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (10, 98, 25, 'Voluptatem numquam aut et temporibus cupiditate. Laudantium saepe mollitia est eos qui a dolor. Omnis culpa quaerat facilis ipsam veniam. Soluta iste laborum laborum voluptatem tempora quasi error quia.', 0, 1, '2015-01-04 04:36:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (11, 79, 72, 'Eos aspernatur sequi nesciunt repudiandae sint sit commodi. Veritatis itaque necessitatibus modi in voluptatum consectetur. Quisquam consequatur facere aut odit.', 0, 1, '2019-04-11 14:50:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (12, 77, 83, 'Magnam quaerat sit molestiae fuga consequatur est qui. Recusandae consectetur natus qui quia dolores quo. Repellendus ratione corporis libero quo et. Mollitia tempore voluptas magnam voluptatem dolorem dolores voluptatem.', 1, 0, '2019-07-26 00:13:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (13, 80, 8, 'Ipsa architecto perferendis qui magni sit. Voluptatem eveniet et ea voluptatem repellat enim voluptas. Cum quisquam voluptas eveniet eveniet aut.', 0, 0, '2017-09-25 20:41:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (14, 87, 16, 'Tempore voluptatibus adipisci autem nihil ad possimus. Molestias repellat molestias voluptas rerum odio in ea. Ut minus dignissimos est accusamus et at magnam.', 1, 1, '2014-10-06 20:43:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (15, 29, 53, 'Aspernatur delectus laboriosam vel. Placeat alias rerum quia vel et. Earum est quibusdam voluptas cum. Impedit corporis cupiditate dicta consectetur incidunt sit sit consequuntur.', 1, 0, '2013-01-01 01:50:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (16, 73, 94, 'Consectetur laboriosam eius laboriosam sunt autem consectetur. Impedit vel delectus odit modi eveniet animi porro. Ratione aut rerum amet dolore. Eos tenetur ducimus consequatur vitae.', 1, 1, '2015-12-07 12:25:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (17, 76, 83, 'Molestiae voluptatum error neque nemo. Aspernatur fuga voluptatem beatae quod autem. Id soluta consequatur reiciendis qui fuga est. Rem voluptas culpa est incidunt recusandae eligendi illo.', 1, 1, '2019-06-22 12:08:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (18, 64, 80, 'Ea adipisci consectetur nostrum repudiandae. Accusantium dolorem repellat sed distinctio distinctio ut voluptatum dolores. Tempore omnis praesentium quia omnis.', 1, 0, '2013-12-09 23:16:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (19, 93, 69, 'A voluptas quo delectus totam provident quae. Necessitatibus maiores sequi labore iste consequatur. In odit voluptas provident est rerum facilis modi esse. Inventore aspernatur qui est sed libero iusto odit.', 0, 1, '2018-10-30 21:21:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (20, 3, 36, 'Ut est quaerat ut odit eveniet et sapiente. Voluptatum soluta tempore et omnis est voluptas quaerat.', 1, 1, '2021-08-07 23:05:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (21, 4, 67, 'Non et non repudiandae doloribus quia. Explicabo quisquam repellendus consectetur iste aliquam. Molestiae quos nihil consequatur. Deleniti explicabo ratione nostrum tempore omnis vitae. Libero sed voluptatibus omnis quibusdam rerum tenetur cum.', 1, 0, '2016-01-19 15:35:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (22, 39, 66, 'Aut sit assumenda dolorem autem ipsa totam. Autem amet consectetur dolor aliquam. Accusantium a ut consequatur dolor itaque sed quia.', 0, 1, '2022-01-04 10:33:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (23, 63, 73, 'Earum rerum architecto saepe consequatur nam. Consequuntur fugiat et est. Quis totam eos voluptas et est.', 1, 0, '2021-08-09 18:35:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (24, 77, 14, 'Magnam consequatur rerum sed commodi et sint aspernatur. Nisi libero eveniet at. Ut magni et commodi debitis officiis.', 1, 1, '2018-06-15 01:57:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (25, 41, 74, 'Facilis fuga voluptatem et dolore quae eum. Iste debitis non pariatur aut rerum. Voluptas aut culpa est maxime ut. Ut in nesciunt officia expedita et vel.', 0, 1, '2021-06-30 22:30:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (26, 38, 19, 'Veritatis at laborum quia qui. Natus cupiditate vel atque doloribus consequuntur. Odio dolorum aliquam nobis sit ut. Ducimus aut cumque id aliquam eligendi magni repellendus. Tempore quam similique accusantium atque in dolores aut.', 0, 0, '2018-09-18 00:51:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (27, 46, 15, 'Iusto repudiandae hic labore magnam minus fugiat doloremque. Excepturi ad unde consequatur. Suscipit quisquam culpa dolorem quae et tempore. Quae veniam nihil in voluptatibus optio consequatur.', 1, 1, '2021-09-23 09:43:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (28, 2, 26, 'Nostrum sapiente officia eos sit. Sequi similique voluptas omnis sed porro maiores expedita. Modi laudantium rerum aliquam voluptatibus consequatur eaque facere.', 1, 0, '2019-06-01 20:03:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (29, 23, 88, 'Provident explicabo corporis iste neque corrupti qui vel. Aut voluptatem voluptatum ad consequatur. Dolore in sequi nesciunt ut nostrum vitae ut. Quas mollitia ratione eos recusandae dicta commodi nihil.', 1, 0, '2014-07-27 05:39:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (30, 41, 51, 'Et ut enim corporis iure facere neque. Enim suscipit nihil vel neque dicta. Commodi veritatis ullam atque aliquam officia iure hic.', 0, 1, '2020-06-08 11:20:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (31, 40, 13, 'Velit nisi at molestiae. Et a omnis aut quam facere. Ea praesentium temporibus repudiandae consequuntur quis omnis quam eius. Minus neque ut corporis.', 1, 0, '2020-10-22 01:59:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (32, 45, 15, 'Consequatur ad et et qui ut consequuntur voluptatibus. Temporibus voluptatem repellat fugiat consequatur dolores. Aliquid laboriosam sit et veritatis facere eaque neque nemo. Assumenda occaecati iste dolores asperiores voluptatem minus ducimus.', 0, 0, '2019-06-18 22:53:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (33, 96, 8, 'Accusantium magnam error commodi libero dolorem. Accusantium at modi autem unde vero asperiores ad. Est sunt ratione non sint cum ipsam.', 1, 0, '2014-09-23 11:53:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (34, 95, 89, 'Fugit quae voluptate sit aspernatur. Cupiditate tenetur dicta fugiat officia quibusdam architecto sit. Est enim ut et rerum. Voluptatibus aut enim quia eos.', 1, 0, '2015-04-11 02:34:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (35, 77, 97, 'Qui modi doloremque occaecati in. Molestiae non ut autem. Eius possimus nihil vel eaque necessitatibus. Dolore quo velit necessitatibus doloribus officia dolor.', 1, 0, '2013-10-16 00:51:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (36, 25, 80, 'Inventore ut temporibus qui eius cupiditate. Eum dolore nesciunt saepe ea sint illum cum. Rerum sed voluptatem beatae id.', 1, 1, '2016-07-16 06:48:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (37, 64, 64, 'Neque amet commodi quaerat eius eveniet. Quos quo id aliquid repellendus unde. Veritatis consequatur dolorem nesciunt explicabo itaque quis. Eum doloribus ipsa sed sit ut error. Neque nulla qui sapiente itaque possimus.', 1, 1, '2014-01-30 20:35:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (38, 46, 26, 'Eos maiores sequi distinctio et praesentium temporibus sunt ratione. Sapiente asperiores odit aut placeat modi sit. Voluptatum aut sit est laudantium quod culpa.', 0, 1, '2013-02-19 19:02:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (39, 37, 22, 'Qui expedita voluptates natus et. Voluptate molestiae repudiandae id.', 0, 0, '2019-09-29 06:17:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (40, 40, 77, 'Sed sit velit dolore. Atque dolorem non dolor error quo quisquam numquam. Atque fuga voluptas aut minus. Voluptatem ut fuga expedita voluptas.', 1, 0, '2013-01-29 16:23:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (41, 96, 77, 'Adipisci enim quisquam et beatae earum earum veritatis voluptatem. Odit ea qui praesentium quia fugiat impedit quia. Sed quas tempore qui ut necessitatibus officia repellendus.', 1, 1, '2020-10-07 15:53:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (42, 96, 41, 'Rerum rem rerum ut aut pariatur dolorum ipsam. Consequatur similique quis sed voluptatem culpa omnis culpa magni.', 1, 1, '2018-03-08 15:48:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (43, 92, 97, 'Veritatis voluptatum nisi sint autem. Error expedita sint dicta dolores est totam modi.', 0, 1, '2020-12-31 12:46:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (44, 66, 14, 'Autem quis odit aut recusandae aut. Ad ullam laborum qui sunt officia optio. Quos corrupti tempora placeat cumque nisi fuga.', 0, 0, '2012-04-13 21:20:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (45, 85, 7, 'Vel quos quas debitis dignissimos. Deserunt eius aut eligendi in. Omnis ducimus sed odio voluptatibus voluptas.', 1, 0, '2014-03-09 09:00:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (46, 64, 24, 'Consectetur esse vitae et illo. Quam facilis veniam velit et ut. Nam doloribus ut placeat. Id voluptatum quasi impedit.', 0, 1, '2012-02-23 17:31:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (47, 19, 9, 'Quia eveniet consequuntur error nesciunt necessitatibus. Velit qui necessitatibus cupiditate ipsum aut incidunt. Maxime aut sunt qui omnis adipisci dolor accusantium. Aut et eum nulla ut molestiae temporibus fugiat quia.', 0, 0, '2017-01-12 23:55:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (48, 39, 15, 'Perspiciatis sequi et qui autem enim aliquam culpa aut. Eveniet at minima qui eos quasi aut qui. Quisquam laborum quasi sed explicabo est. Mollitia sunt qui illo eius est.', 0, 0, '2018-01-22 08:57:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (49, 16, 33, 'Occaecati veritatis in nobis consequatur natus. Dolor hic eaque voluptas rerum deserunt consequatur. Fugiat aut numquam laudantium. Accusantium eligendi soluta aspernatur reprehenderit iste corrupti.', 1, 1, '2017-05-01 22:09:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (50, 4, 93, 'Sed incidunt et voluptate ut. Veritatis unde alias optio fugiat aliquid. Libero non non sunt. Alias odio fugit eos molestiae.', 1, 0, '2015-10-08 05:32:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (51, 30, 28, 'Fuga iste numquam possimus et suscipit mollitia aut. Natus nihil nisi et soluta occaecati. Sunt qui voluptatem et nihil consequatur sed aut. Eos nihil ut non ex.', 0, 0, '2018-04-10 06:24:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (52, 72, 94, 'Voluptas reprehenderit omnis molestias velit beatae vitae quia. Quia asperiores ut eveniet perferendis quasi unde ex. Libero id et veniam sunt ipsam.', 0, 1, '2018-08-21 23:22:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (53, 92, 18, 'Accusantium temporibus sit maiores dolorem. Qui accusamus id ut. Et ullam rerum ipsum assumenda a velit voluptate. Soluta accusamus modi qui accusantium iste aut est.', 1, 0, '2017-01-18 03:29:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (54, 19, 28, 'Natus dolore sunt voluptas tenetur. Nulla non quia ea quam. Sit rem eum aut ratione.', 1, 0, '2017-05-07 17:58:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (55, 39, 58, 'Laboriosam itaque magni quis quos atque eos. Officiis deleniti pariatur incidunt accusantium voluptas. Laborum non enim dolorem soluta nihil et dolores quia. Quas ut explicabo dolor iste consequatur aspernatur sapiente officia.', 1, 1, '2021-06-22 00:12:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (56, 5, 34, 'Deleniti dolores laudantium quia aut vel. Facilis repudiandae id nam. Qui ab esse assumenda consequatur vel ipsam. Qui est ad quas aut laudantium.', 0, 0, '2012-05-15 10:26:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (57, 35, 100, 'Optio est itaque sunt. Est incidunt voluptas est sit consequatur fuga doloremque. Beatae non velit dolor voluptatem fuga est odit. Est vero excepturi omnis sequi qui aut et.', 1, 0, '2019-05-13 01:29:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (58, 75, 27, 'Voluptatem quae unde sapiente eligendi doloremque. Non architecto in sed fugit. Pariatur nesciunt quia explicabo et laborum quidem aliquam. Laboriosam vel dignissimos quam.', 1, 0, '2019-05-06 05:55:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (59, 96, 40, 'Consequuntur temporibus omnis et. Sequi cum iure et error ullam et.', 0, 1, '2015-02-06 04:12:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (60, 40, 80, 'Aut deserunt animi eos ea sunt ab quia. Ea est sunt praesentium laborum quidem minus. Mollitia quisquam repellendus dolore magni odit assumenda.', 1, 1, '2018-12-21 07:02:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (61, 47, 4, 'Qui eligendi dolorem in nostrum placeat a. Eaque deleniti numquam quod cumque. Molestiae qui necessitatibus voluptates dignissimos qui. Ullam itaque nam deserunt odit.', 1, 1, '2019-02-21 11:06:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (62, 4, 66, 'Odit quibusdam error laboriosam. Tenetur reprehenderit quis accusamus reprehenderit consequuntur et omnis.', 0, 1, '2021-06-08 07:56:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (63, 12, 43, 'Rerum ullam voluptas doloremque voluptate sint. Ut nesciunt debitis id voluptas quae. Ut reprehenderit tempore magni atque voluptatum doloribus est. Iure sed voluptatem nemo sed.', 0, 0, '2014-11-05 04:22:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (64, 80, 28, 'Vel et autem quas repellat iure voluptatem sunt. Cum tempora aperiam fuga consequatur ea natus nihil in. Cupiditate quae quo repellat ut. Magni distinctio sunt dolor et.', 1, 1, '2017-01-02 02:59:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (65, 76, 84, 'Modi asperiores labore enim quia perspiciatis velit numquam. Sapiente aspernatur sunt amet laudantium odio id. Qui repellendus voluptatem quia rerum. Quasi fuga consequatur rem tempora.', 0, 0, '2014-06-03 02:56:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (66, 21, 6, 'In commodi libero praesentium. Error quasi omnis perferendis expedita et pariatur modi. Sunt ipsam corporis et molestiae minus aliquid et. Quisquam omnis veniam cupiditate ab velit ex commodi placeat.', 1, 1, '2012-11-17 14:18:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (67, 11, 93, 'Nihil dolorum nulla sit. Dolorem ut non laudantium unde nihil nobis. Qui sed libero impedit sit quis accusamus. Qui eum quam nam.', 1, 1, '2016-11-08 19:38:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (68, 99, 3, 'Totam dolorem dolore minus dolor corrupti. Aut dicta omnis excepturi laudantium voluptate autem atque deserunt. Itaque facilis sint consequatur et officia.', 1, 1, '2017-08-06 09:29:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (69, 10, 18, 'Numquam nobis et asperiores ducimus ducimus dolores assumenda. Nesciunt explicabo sed alias ex. Qui minima facilis corporis molestias ex non rerum. Est error iste blanditiis molestiae labore.', 1, 0, '2019-07-03 19:07:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (70, 30, 48, 'Ea doloribus ducimus in id recusandae recusandae. Qui amet qui culpa nobis delectus et. Est qui id molestiae iure aspernatur et.', 0, 0, '2019-03-01 23:03:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (71, 76, 34, 'Aspernatur omnis laborum aut harum quos placeat. Sed a sed explicabo quod quibusdam similique molestias. Aperiam exercitationem temporibus reprehenderit est enim.', 0, 1, '2013-09-02 10:09:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (72, 82, 11, 'Maiores eum assumenda consequatur mollitia quo sint. Dolorem eveniet atque voluptatem molestiae. Esse et vero magnam ea. Non voluptatem omnis velit voluptatum deserunt. Voluptatem explicabo aperiam porro et.', 0, 1, '2017-09-18 23:05:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (73, 33, 56, 'Voluptate adipisci voluptas rerum sint. Nobis vel dolor quibusdam assumenda quisquam officiis. Quibusdam minima esse hic dolores soluta qui eum.', 1, 1, '2015-02-27 15:42:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (74, 37, 29, 'Et minus labore et doloremque. Aut dolorum adipisci numquam suscipit ipsum. Deleniti fuga et fugit voluptatum quia tempore corporis ipsum. Doloremque qui natus debitis accusantium tempora at qui.', 1, 0, '2020-11-21 00:36:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (75, 95, 77, 'Aliquid magni non occaecati sint qui recusandae rerum magni. Nihil non aperiam pariatur et praesentium. Sapiente praesentium soluta voluptatem ratione.', 1, 0, '2017-03-02 17:20:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (76, 9, 42, 'Sit asperiores officiis rem facere est sit. Rem consequatur dolore vel aperiam et et. Nisi esse quae suscipit repudiandae animi. Eum ut exercitationem ullam aperiam quod.', 0, 1, '2017-08-12 05:35:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (77, 81, 13, 'Laborum aut necessitatibus voluptas aut nihil aut numquam deleniti. Repudiandae delectus ipsam itaque. Est consequuntur sint voluptatem mollitia dolores velit.', 1, 0, '2015-09-27 10:38:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (78, 7, 93, 'Labore recusandae sapiente provident molestiae soluta tempore dolorem laudantium. Laborum vero alias iste ducimus tenetur. Accusantium eos sit voluptates labore. Praesentium ratione voluptatem pariatur fugiat dicta et totam.', 0, 1, '2013-11-06 08:24:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (79, 55, 86, 'Optio omnis dolore perferendis est vero pariatur molestias labore. Itaque dolorem dolorum odio accusantium. Eum culpa quia eum rerum officia qui. Temporibus eius alias hic explicabo minus magnam aspernatur repellat.', 0, 0, '2012-09-25 15:30:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (80, 21, 31, 'Quaerat dolore voluptate ea dolor veniam illum eos. Earum dolores est accusamus id. Voluptas et sequi qui velit fugit. Error eveniet sint voluptas at dicta sunt voluptatem enim.', 1, 0, '2018-06-11 09:47:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (81, 69, 41, 'Et tempore voluptatem est ut maxime exercitationem non. Ut distinctio quia veritatis ea id maxime quam. Sed perferendis itaque non in reprehenderit saepe sed. Non animi expedita quam quasi. Sint doloribus aperiam quos deserunt quidem ipsa.', 0, 0, '2015-05-24 23:50:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (82, 37, 80, 'Rerum esse blanditiis rerum praesentium veniam. Alias magnam asperiores porro recusandae quas ab aspernatur sed. Doloribus voluptatem praesentium laudantium nihil sed minus aut. Asperiores quia recusandae quisquam odio quo.', 0, 0, '2018-09-03 10:45:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (83, 33, 35, 'Fugiat commodi consectetur autem autem ad. Minus nulla possimus ea. Veniam perferendis quis iste tenetur possimus vitae corporis. Recusandae voluptatibus qui et adipisci.', 0, 1, '2013-06-24 14:27:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (84, 82, 43, 'Excepturi corporis ut vel reprehenderit. Molestiae ipsum impedit eum incidunt architecto odit ab labore. Sed eligendi ut eum tempora. Debitis illo veritatis dicta vero pariatur ipsa cupiditate.', 0, 1, '2020-10-13 05:30:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (85, 53, 11, 'Sit at totam omnis labore incidunt et et. Possimus a et quia corporis vitae est expedita. Quasi adipisci non quam cumque ipsam explicabo. Illo officiis quo modi.', 0, 1, '2015-04-28 14:06:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (86, 90, 29, 'Recusandae deserunt repellat dolores dolorem quis aut. Tempore sed praesentium aut cumque. Dolor ab est tempore molestiae sit. Et dolorem a perspiciatis quam eos dolorum.', 0, 1, '2016-01-25 13:55:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (87, 45, 71, 'Ipsum dolorem quas aspernatur assumenda in. Dolore fugit sed laboriosam. Id impedit quia saepe repellendus quo. Dolorum qui esse quas eligendi.', 0, 1, '2019-10-05 02:44:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (88, 39, 77, 'Est reprehenderit iure consequuntur sed cumque et. Sint laudantium minima ut repudiandae labore sit. Est ea a non commodi officia aut. Natus et deleniti et est quae facilis.', 0, 1, '2013-09-27 10:49:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (89, 26, 76, 'Molestiae earum voluptatem laudantium amet voluptatem hic eligendi. Qui unde voluptas velit commodi qui. Quo qui voluptas et. Quia libero velit molestias sequi ut omnis dolores.', 0, 0, '2020-10-20 01:42:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (90, 6, 21, 'Occaecati minus sed ut sint. At similique eligendi consequatur fugit mollitia. Ullam ut dolores quibusdam placeat qui doloribus.', 0, 1, '2013-09-03 14:59:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (91, 53, 14, 'Exercitationem omnis ex quam et eum consequuntur unde. Dolore est nostrum est quaerat. Asperiores iure dicta necessitatibus rem molestiae libero. Facere delectus expedita aut maxime vel earum eum.', 1, 1, '2013-12-17 17:07:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (92, 62, 33, 'Sed in autem commodi quidem. Molestias eum aut id facilis maiores quas. Omnis suscipit aperiam enim corrupti consectetur. A numquam non voluptates nostrum et. Incidunt maxime quos ratione ullam libero.', 1, 0, '2014-01-04 09:08:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (93, 26, 68, 'Reiciendis enim minus placeat sint et. Qui officia quia aut qui nulla impedit. Voluptatem dicta aliquam ipsam illo quas et unde.', 1, 0, '2018-09-02 04:56:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (94, 26, 81, 'Voluptate ut alias quos non quasi dolore dolorum. Corporis dolore architecto est soluta dolorem. Harum soluta aut nam cupiditate doloremque tempore architecto.', 1, 1, '2013-01-04 23:52:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (95, 54, 46, 'Dolore ex hic eaque eum sed veniam. Dolores qui eum rerum sint consequatur omnis ab omnis. Est nulla consequatur deleniti sint cumque. Et nihil reprehenderit repudiandae cupiditate aut.', 1, 0, '2020-09-21 10:36:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (96, 11, 23, 'Voluptas molestiae ullam consequatur voluptatem veritatis numquam accusamus. Est odit doloribus autem dolore. Et sit veritatis ut accusamus.', 1, 1, '2020-09-18 23:46:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (97, 87, 48, 'Et quod sunt sapiente eos ut sapiente. Est officia aut ea voluptatum aperiam deserunt quaerat. Voluptate dicta consectetur odit odio odit sit molestias nam.', 1, 0, '2013-01-06 02:57:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (98, 2, 20, 'Animi iusto excepturi earum suscipit rem voluptatem. Repellendus et magni ea ut qui ut. Quasi ab cumque earum ratione ut suscipit.', 1, 1, '2014-12-04 13:11:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (99, 83, 84, 'Non error sunt necessitatibus unde. Eaque sint illo facilis. Veniam quo blanditiis numquam quisquam qui ratione. Soluta quos ut magnam recusandae dolorum dolorem reprehenderit fugiat. Cupiditate et illum consectetur impedit.', 1, 1, '2020-03-21 13:51:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (100, 62, 35, 'Id non impedit consequatur nostrum quaerat non voluptatibus. Aperiam modi earum officiis nam dolorem nam. Voluptate repellat ipsum labore non rerum. Earum ab similique molestiae alias praesentium quaerat.', 0, 1, '2012-05-20 23:54:59');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `city` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Город проживания',
  `country` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Страна проживания',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (1, 'F', '2020-01-13', 'East Ida', 'Morocco', '2021-06-10 10:29:10', '2021-12-27 18:11:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (2, 'F', '2016-05-08', 'Lake Cecilia', 'New Zealand', '2013-12-22 02:16:34', '2021-12-29 13:51:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (3, 'M', '2015-02-01', 'New Matteobury', 'Nauru', '2021-03-09 11:37:59', '2022-01-05 03:20:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (4, 'F', '2016-10-22', 'North Theresa', 'Sao Tome and Principe', '2021-02-16 23:49:50', '2021-12-23 12:52:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (5, 'F', '2018-06-18', 'Port Myrticemouth', 'Poland', '2014-05-16 22:03:17', '2021-12-19 00:14:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (6, 'M', '2017-04-18', 'Grahamport', 'Lao People\'s Democratic Republic', '2016-10-15 01:23:39', '2021-12-26 23:28:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (7, 'M', '2016-08-09', 'Eddieland', 'Ukraine', '2012-08-18 00:27:42', '2021-12-30 13:13:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (8, 'M', '2018-05-16', 'Lake Emilio', 'Madagascar', '2014-06-11 22:00:49', '2021-12-27 16:40:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (9, 'M', '2017-06-26', 'Reichelfort', 'Comoros', '2015-05-26 00:08:42', '2021-12-19 21:19:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (10, 'F', '2017-03-19', 'Johnsonmouth', 'Egypt', '2015-05-19 08:18:17', '2021-12-16 20:16:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (11, 'F', '2013-07-17', 'Zemlakburgh', 'Niger', '2014-06-23 10:28:52', '2022-01-04 12:20:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (12, 'M', '2013-07-28', 'South Nasirport', 'Oman', '2019-12-31 15:26:16', '2022-01-02 10:13:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (13, 'F', '2017-12-23', 'Port Elissaport', 'Slovenia', '2015-04-19 15:19:23', '2022-01-13 19:53:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (14, 'M', '2014-11-20', 'Port Juliana', 'Greece', '2021-11-03 18:16:41', '2021-12-20 21:43:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (15, 'M', '2017-03-28', 'East Hipolitoborough', 'Angola', '2013-05-29 20:03:20', '2022-01-02 14:43:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (16, 'F', '2021-04-30', 'West Lora', 'Serbia', '2018-05-25 07:01:27', '2022-01-12 09:40:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (17, 'F', '2020-04-14', 'Legrosmouth', 'Timor-Leste', '2020-10-04 14:15:44', '2022-01-11 19:38:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (18, 'F', '2012-09-13', 'Lake Rosabury', 'Iceland', '2015-01-27 11:34:19', '2021-12-31 19:30:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (19, 'M', '2021-04-08', 'Harrisborough', 'Myanmar', '2015-12-27 00:15:06', '2022-01-01 02:21:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (20, 'M', '2021-06-10', 'West Amyview', 'Saint Vincent and the Grenadines', '2019-12-15 17:02:20', '2021-12-29 15:14:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (21, 'F', '2017-02-09', 'Hintzchester', 'Netherlands Antilles', '2013-07-28 06:01:22', '2022-01-08 12:55:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (22, 'F', '2020-08-05', 'South Elwinchester', 'Colombia', '2018-04-12 23:50:32', '2021-12-23 11:18:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (23, 'F', '2020-03-09', 'Aliciastad', 'Turkey', '2019-11-23 12:39:54', '2021-12-18 11:16:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (24, 'M', '2013-12-30', 'Lake Brisaton', 'India', '2016-03-07 16:21:32', '2021-12-28 06:55:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (25, 'M', '2014-09-11', 'Lake Giovanni', 'Mayotte', '2021-06-27 00:42:43', '2022-01-05 04:50:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (26, 'M', '2016-08-27', 'East Bethfort', 'Angola', '2016-05-26 20:54:10', '2021-12-17 10:07:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (27, 'F', '2017-03-24', 'New Mckenna', 'Australia', '2019-03-06 05:05:03', '2022-01-14 14:08:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (28, 'F', '2012-03-21', 'Rodriguezfurt', 'El Salvador', '2015-09-13 20:30:19', '2021-12-18 16:55:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (29, 'F', '2020-05-04', 'South Chesleyborough', 'Cook Islands', '2016-10-03 01:04:52', '2021-12-19 13:52:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (30, 'F', '2013-07-29', 'Davionbury', 'Australia', '2013-04-21 22:43:47', '2021-12-31 00:19:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (31, 'M', '2021-12-12', 'Grantfort', 'Holy See (Vatican City State)', '2019-02-19 01:02:28', '2021-12-16 11:59:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (32, 'M', '2014-10-20', 'Bradtkefort', 'Cyprus', '2014-07-10 00:58:51', '2022-01-09 20:08:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (33, 'F', '2018-05-07', 'Avafurt', 'Botswana', '2014-06-07 17:15:27', '2021-12-28 10:17:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (34, 'M', '2017-06-05', 'South Arielmouth', 'Faroe Islands', '2017-11-13 12:48:10', '2021-12-16 06:26:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (35, 'M', '2013-10-06', 'Port Katrinefurt', 'Reunion', '2018-11-02 14:33:22', '2022-01-02 13:32:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (36, 'F', '2013-02-28', 'Sheilamouth', 'Mozambique', '2020-02-21 18:46:15', '2021-12-30 13:27:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (37, 'M', '2015-06-01', 'North Rogelio', 'Svalbard & Jan Mayen Islands', '2017-11-24 19:56:45', '2021-12-20 01:04:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (38, 'F', '2014-12-02', 'Jeffrytown', 'Slovenia', '2017-03-15 15:02:53', '2021-12-29 07:48:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (39, 'M', '2012-11-21', 'East Veronica', 'Grenada', '2017-03-21 01:44:56', '2022-01-13 05:50:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (40, 'F', '2017-04-06', 'Wilhelmineborough', 'Anguilla', '2013-11-18 00:49:03', '2021-12-30 09:13:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (41, 'F', '2021-01-22', 'East Kingmouth', 'United States Minor Outlying Islands', '2014-08-15 05:55:42', '2022-01-02 02:55:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (42, 'M', '2014-05-19', 'Lake Clifton', 'Eritrea', '2015-12-08 20:08:10', '2022-01-04 21:51:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (43, 'M', '2013-12-07', 'South Lorenzofort', 'New Zealand', '2012-12-07 05:28:07', '2021-12-26 13:11:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (44, 'M', '2016-01-22', 'Lake Eliasburgh', 'Malta', '2017-09-27 12:59:50', '2021-12-20 06:29:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (45, 'F', '2013-07-13', 'South Charlieville', 'Puerto Rico', '2019-09-17 16:43:02', '2021-12-20 19:46:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (46, 'M', '2012-06-06', 'Jazlynborough', 'Italy', '2015-03-22 04:41:15', '2021-12-17 01:26:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (47, 'F', '2019-05-28', 'Hayesview', 'Falkland Islands (Malvinas)', '2016-01-30 02:51:19', '2021-12-20 23:03:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (48, 'M', '2016-06-20', 'Port Prudenceport', 'Burkina Faso', '2020-02-04 00:08:14', '2022-01-02 01:14:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (49, 'M', '2020-03-24', 'Hartmannborough', 'Bouvet Island (Bouvetoya)', '2020-04-09 17:52:04', '2021-12-25 08:52:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (50, 'M', '2021-11-02', 'Port Fredericbury', 'Timor-Leste', '2019-01-02 02:36:34', '2021-12-21 03:54:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (51, 'F', '2019-04-12', 'New Deangelo', 'Netherlands', '2017-07-05 18:21:29', '2021-12-23 04:46:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (52, 'M', '2017-01-04', 'Greenfelderstad', 'Lao People\'s Democratic Republic', '2013-02-27 01:54:11', '2021-12-27 08:08:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (53, 'F', '2021-01-02', 'New Quinn', 'Austria', '2012-12-20 14:17:59', '2022-01-12 13:26:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (54, 'F', '2013-04-22', 'Zenaport', 'Saint Lucia', '2015-10-30 02:29:06', '2021-12-22 19:00:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (55, 'F', '2012-10-14', 'Dickensburgh', 'Saint Martin', '2021-05-08 01:37:55', '2021-12-21 08:21:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (56, 'F', '2012-11-07', 'Crooksmouth', 'Panama', '2020-09-20 04:32:07', '2021-12-15 07:31:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (57, 'M', '2014-04-22', 'East Keven', 'Norfolk Island', '2012-11-09 14:11:29', '2022-01-11 04:44:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (58, 'F', '2017-09-14', 'Billyburgh', 'Armenia', '2018-04-16 20:53:50', '2021-12-15 01:05:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (59, 'M', '2021-09-15', 'Port Zackarychester', 'Georgia', '2013-02-27 09:09:44', '2021-12-25 14:46:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (60, 'M', '2020-09-27', 'Lake Gabriel', 'Guyana', '2019-12-31 07:13:16', '2021-12-21 02:08:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (61, 'F', '2021-09-14', 'Olefurt', 'Saint Martin', '2016-03-23 12:08:48', '2022-01-13 01:12:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (62, 'F', '2012-11-28', 'Tatyanaborough', 'Guernsey', '2012-12-02 09:00:38', '2021-12-30 13:47:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (63, 'F', '2017-03-17', 'Vitamouth', 'Singapore', '2015-04-09 18:57:31', '2022-01-05 00:26:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (64, 'F', '2018-02-10', 'Rudyshire', 'Malawi', '2012-04-17 04:29:13', '2021-12-15 19:13:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (65, 'F', '2020-08-05', 'South Cliftonbury', 'Uganda', '2018-04-20 04:01:53', '2022-01-03 06:48:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (66, 'F', '2021-03-17', 'Tarynton', 'Pakistan', '2013-11-21 06:07:12', '2021-12-28 03:03:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (67, 'M', '2013-01-15', 'East Johan', 'Azerbaijan', '2019-03-22 10:20:50', '2022-01-02 13:17:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (68, 'M', '2019-11-06', 'Lake Kaycee', 'Guinea', '2019-03-27 19:05:37', '2021-12-31 10:36:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (69, 'M', '2018-02-26', 'Reillyfurt', 'New Zealand', '2019-09-22 22:24:17', '2021-12-27 20:23:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (70, 'F', '2015-02-12', 'Schultzville', 'Micronesia', '2018-11-05 21:15:47', '2022-01-04 01:47:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (71, 'M', '2012-06-18', 'Port Elnora', 'Philippines', '2018-03-09 21:06:05', '2021-12-15 05:18:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (72, 'F', '2012-04-02', 'East Stephaniamouth', 'Macao', '2017-09-11 14:01:01', '2021-12-27 16:37:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (73, 'F', '2014-02-21', 'Codyside', 'Qatar', '2012-08-11 07:20:30', '2021-12-29 20:08:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (74, 'M', '2016-11-25', 'Port Aiden', 'Costa Rica', '2015-01-25 20:22:03', '2021-12-21 23:46:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (75, 'F', '2018-09-11', 'South Consuelo', 'Norway', '2012-01-19 07:08:58', '2021-12-24 11:36:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (76, 'M', '2014-12-18', 'New Martin', 'United States Minor Outlying Islands', '2017-05-02 16:04:54', '2022-01-02 00:24:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (77, 'F', '2013-11-22', 'West Turner', 'Libyan Arab Jamahiriya', '2016-02-17 17:07:28', '2021-12-22 18:04:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (78, 'M', '2013-09-09', 'Lake Adellemouth', 'Saint Helena', '2016-03-03 20:57:48', '2022-01-04 09:27:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (79, 'M', '2020-04-03', 'Port Cristian', 'Czech Republic', '2019-01-29 02:46:59', '2022-01-05 11:33:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (80, 'M', '2013-01-02', 'Handport', 'Romania', '2017-08-23 01:54:17', '2022-01-01 23:11:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (81, 'M', '2018-12-08', 'Steveland', 'Tonga', '2018-01-08 07:31:42', '2021-12-18 12:57:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (82, 'F', '2018-03-05', 'New Jaleelton', 'Nigeria', '2021-09-07 10:19:58', '2022-01-07 03:31:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (83, 'M', '2019-11-22', 'Fishertown', 'Greece', '2019-04-03 12:45:00', '2021-12-22 13:49:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (84, 'M', '2018-04-12', 'North Alba', 'Thailand', '2014-11-09 19:46:47', '2021-12-29 18:53:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (85, 'M', '2013-01-09', 'South Adan', 'Denmark', '2020-06-14 12:34:53', '2022-01-13 13:06:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (86, 'M', '2019-08-20', 'West Sabryna', 'Oman', '2012-10-08 13:47:02', '2021-12-28 10:21:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (87, 'F', '2021-03-20', 'New Keshawnside', 'Iran', '2015-12-31 08:40:01', '2021-12-14 22:50:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (88, 'M', '2017-11-03', 'Russelltown', 'Saint Barthelemy', '2020-07-16 14:41:12', '2021-12-15 20:14:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (89, 'F', '2014-01-07', 'West Darryl', 'Lithuania', '2014-05-07 15:42:32', '2022-01-10 13:34:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (90, 'F', '2014-03-21', 'Port Easton', 'Finland', '2018-01-13 14:15:26', '2022-01-05 14:32:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (91, 'M', '2017-07-01', 'Dallinbury', 'Martinique', '2021-07-02 19:04:25', '2022-01-09 16:13:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (92, 'M', '2020-08-24', 'North Haydenfurt', 'Gambia', '2017-06-17 17:41:01', '2022-01-07 00:12:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (93, 'M', '2016-04-23', 'Taliashire', 'Turks and Caicos Islands', '2018-01-22 15:16:24', '2022-01-04 04:57:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (94, 'F', '2019-01-02', 'Lennahaven', 'Barbados', '2019-04-12 15:37:33', '2021-12-16 12:00:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (95, 'M', '2013-01-04', 'Deondremouth', 'Fiji', '2013-02-07 07:45:01', '2022-01-13 21:10:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (96, 'M', '2014-05-04', 'North Altamouth', 'Saint Martin', '2016-09-06 11:34:34', '2022-01-01 06:03:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (97, 'M', '2018-08-16', 'Port Laronview', 'Belarus', '2014-08-01 02:26:50', '2021-12-24 02:10:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (98, 'M', '2016-05-12', 'Amaraland', 'Bangladesh', '2012-11-11 17:33:40', '2022-01-06 04:52:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (99, 'M', '2018-11-22', 'North Amelybury', 'Guernsey', '2021-11-09 05:48:42', '2022-01-06 07:44:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (100, 'F', '2021-04-20', 'North Darrel', 'United States of America', '2021-05-21 00:56:37', '2021-12-15 08:11:12');


