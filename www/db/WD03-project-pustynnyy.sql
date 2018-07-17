-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 17 2018 г., 12:17
-- Версия сервера: 5.6.38
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `WD03-project-pustynnyy`
--

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `surname` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `avatar_small` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `recovery_code` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `recovery_code_times` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `name`, `surname`, `country`, `city`, `avatar`, `avatar_small`, `recovery_code`, `recovery_code_times`) VALUES
(2, 'yan@mail.ru', '$2y$10$pdzC1mX9LfJwReAnpBAoI.74I1tYug1DkXGd8qIw6PDOBzb.dd1mK', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'yan@mail.ru2', '$2y$10$m5mNmlb8JQtWXL548r2oZOc0YMuzQ5lR.3Ygngl5qxRKhwF4Bi2Pu', 'user', 'Yan test2', 'Necro', 'www', 'intenet', '4005584.jpg', '48-4005584.jpg', NULL, NULL),
(7, 'yan3@mail.ru', '$2y$10$HAPlUT1Qi1L2KjV7uP4QE.CQy1iBl/idHubefXRxlqj3Cld32eMpa', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'ya12n@mail.ru', '$2y$10$bJP.jP7V3QYvZlGLSmXI8.KdDoWNyzv3/vyMcy0mUEa44LRSBXAdO', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'yan@mail.com', '$2y$10$MT/wlCwNw7VfQH0K1diBQOxpzaLRfP7WAEc3g8AtY13m6WY1c7CH6', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'redis@mail.ru', '$2y$10$Bbb1zgdO0VdUhM2VsFAFY.1xzQWQZgp4WYl1R/MnGiy48pJjeqZJy', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'ananas@mail.ru', '$2y$10$R3WO9p6B2llVevwFUUkTzOpQbGvnwf3hmIOfk0MrFkDtEH3Ceqkou', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'baklazhan@mail.ru', '$2y$10$GphZRrRXcm24uBqDGIdqvujea3SLrZxnP1y9gQEPgsVoCM1L/bCQ2', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'satan@mail.com', '$2y$10$bu2/jIGJ3GNwxLq0Cz3AeO87L5tOT2i4SJ/T8hEbWAlViOVI9xdVi', 'admin', 'Сатан', 'Бафомет', 'Ад', 'Дит', NULL, NULL, NULL, NULL),
(33, 'apple@mail.ru', '$2y$10$k8kmr9GLP0JI42TvDHYveuCSCC5bpHeCYDPN1CCeHPdTOcgFJN8jG', 'user', 'Стив', 'Джобс', 'Рай', '', '6678283.PNG', '48-6678283.PNG', NULL, NULL),
(34, 'windows@mail.com', '$2y$10$5yCoqAqxr2TV5wwBq/jWu.nxhxq761Z9UMieg2e0Z5Epo/V4yGxf2', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'windows@mail.ru', '$2y$10$ZiTJtjwa1P6/9uuwG0eGnORXtmesDGalt8Enn.IEen0ex5gSm62G6', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'windows2@mail.com', '$2y$10$FTYGsjtGvyrLqb4ThzdSTe0YY0kvaMvkBVqh4j1qy0prTM54BPHl.', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'necrosith@yandex.ru', '$2y$10$AhN0AOv4g1VPHnDMnKqvFuNELevwtyNZZTtgS/wdAQPk8frBc4elu', 'user', NULL, NULL, NULL, NULL, NULL, NULL, 'Pgmj7HaCzA3kJuMw912tGn4Q5', -3),
(38, 'momo@mail.ru', '$2y$10$pGyWtVlVvqtz1sfNSK5wmuQt0nA/ze8cT84.AP8zVgFV7zxlSevoi', 'user', NULL, NULL, NULL, NULL, NULL, NULL, 'drscO0QC5MbjLn1YH64pKqtz2', 0),
(39, 'fruit@mail.ru', '$2y$10$iEXwa1e8dX8SXT/45Xgj1u.P3NUAmz7tbQbyv1gzG0LEpPVG/aUNm', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
