-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 14 2022 г., 19:19
-- Версия сервера: 8.0.24
-- Версия PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `articles`
--

-- --------------------------------------------------------

--
-- Структура таблицы `authors`
--

CREATE TABLE `authors` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(1, 'Author First'),
(2, 'Author Second'),
(3, 'Author Third'),
(4, 'Author Fourth');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `code`) VALUES
(1, 'category 1', 'code1'),
(2, 'category 2', 'code2'),
(3, 'category 3', 'code3'),
(4, 'category 4', 'code4'),
(5, 'category 5', 'code5'),
(6, 'category 6', 'code6');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int NOT NULL,
  `author_id` int NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `active`, `title`, `code`, `content`, `category_id`, `author_id`, `date`) VALUES
(1, 1, 'Article 1', '1111', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sed, ratione unde! Voluptates adipisci obcaecati maxime minus temporibus cupiditate.\r\n                    Tempore voluptate quisquam eaque in, consequatur voluptatem dolorum iste doloribus hic, culpa deserunt eveniet laudantium beatae eos ullam\r\n                    quos aspernatur consequuntur iure debitis quas totam dignissimos velit nesciunt. Sunt perspiciatis quos error maiores dolorum, accusamus minima!\r\n                    Est, nihil delectus. Ducimus, impedit, delectus fugit nulla tempora repudiandae quos minima voluptatibus commodi laudantium deserunt nemo eum\r\n                    velit voluptatem facilis reprehenderit iste? Et earum odio expedita fugiat a deleniti voluptatum ipsa, veniam illum quidem itaque repellendus\r\n                    exercitationem atque ea incidunt magnam alias ex nesciunt ducimus.', 1, 1, '2022-03-03 22:04:51'),
(2, 1, 'Article 2', '2222', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sed, ratione unde! Voluptates adipisci obcaecati maxime minus temporibus cupiditate.\r\n                    Tempore voluptate quisquam eaque in, consequatur voluptatem dolorum iste doloribus hic, culpa deserunt eveniet laudantium beatae eos ullam\r\n                    quos aspernatur consequuntur iure debitis quas totam dignissimos velit nesciunt. Sunt perspiciatis quos error maiores dolorum, accusamus minima!\r\n                    Est, nihil delectus. Ducimus, impedit, delectus fugit nulla tempora repudiandae quos minima voluptatibus commodi laudantium deserunt nemo eum\r\n                    velit voluptatem facilis reprehenderit iste? Et earum odio expedita fugiat a deleniti voluptatum ipsa, veniam illum quidem itaque repellendus\r\n                    exercitationem atque ea incidunt magnam alias ex nesciunt ducimus.', 2, 2, '2022-03-03 22:05:14'),
(3, 1, 'Article 3', '3333', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sed, ratione unde! Voluptates adipisci obcaecati maxime minus temporibus cupiditate.\r\n                    Tempore voluptate quisquam eaque in, consequatur voluptatem dolorum iste doloribus hic, culpa deserunt eveniet laudantium beatae eos ullam\r\n                    quos aspernatur consequuntur iure debitis quas totam dignissimos velit nesciunt. Sunt perspiciatis quos error maiores dolorum, accusamus minima!\r\n                    Est, nihil delectus. Ducimus, impedit, delectus fugit nulla tempora repudiandae quos minima voluptatibus commodi laudantium deserunt nemo eum\r\n                    velit voluptatem facilis reprehenderit iste? Et earum odio expedita fugiat a deleniti voluptatum ipsa, veniam illum quidem itaque repellendus\r\n                    exercitationem atque ea incidunt magnam alias ex nesciunt ducimus.', 3, 3, '2022-03-03 22:05:34'),
(4, 1, 'Article 4', '4444', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sed, ratione unde! Voluptates adipisci obcaecati maxime minus temporibus cupiditate.\r\n                    Tempore voluptate quisquam eaque in, consequatur voluptatem dolorum iste doloribus hic, culpa deserunt eveniet laudantium beatae eos ullam\r\n                    quos aspernatur consequuntur iure debitis quas totam dignissimos velit nesciunt. Sunt perspiciatis quos error maiores dolorum, accusamus minima!\r\n                    Est, nihil delectus. Ducimus, impedit, delectus fugit nulla tempora repudiandae quos minima voluptatibus commodi laudantium deserunt nemo eum\r\n                    velit voluptatem facilis reprehenderit iste? Et earum odio expedita fugiat a deleniti voluptatum ipsa, veniam illum quidem itaque repellendus\r\n                    exercitationem atque ea incidunt magnam alias ex nesciunt ducimus.', 4, 4, '2022-03-03 22:05:52'),
(5, 1, 'Article 5', '5555', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sed, ratione unde! Voluptates adipisci obcaecati maxime minus temporibus cupiditate.\r\n                    Tempore voluptate quisquam eaque in, consequatur voluptatem dolorum iste doloribus hic, culpa deserunt eveniet laudantium beatae eos ullam\r\n                    quos aspernatur consequuntur iure debitis quas totam dignissimos velit nesciunt. Sunt perspiciatis quos error maiores dolorum, accusamus minima!\r\n                    Est, nihil delectus. Ducimus, impedit, delectus fugit nulla tempora repudiandae quos minima voluptatibus commodi laudantium deserunt nemo eum\r\n                    velit voluptatem facilis reprehenderit iste? Et earum odio expedita fugiat a deleniti voluptatum ipsa, veniam illum quidem itaque repellendus\r\n                    exercitationem atque ea incidunt magnam alias ex nesciunt ducimus.', 1, 1, '2022-03-03 22:06:17'),
(6, 1, 'Article 6', '6666', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sed, ratione unde! Voluptates adipisci obcaecati maxime minus temporibus cupiditate.\r\n                    Tempore voluptate quisquam eaque in, consequatur voluptatem dolorum iste doloribus hic, culpa deserunt eveniet laudantium beatae eos ullam\r\n                    quos aspernatur consequuntur iure debitis quas totam dignissimos velit nesciunt. Sunt perspiciatis quos error maiores dolorum, accusamus minima!\r\n                    Est, nihil delectus. Ducimus, impedit, delectus fugit nulla tempora repudiandae quos minima voluptatibus commodi laudantium deserunt nemo eum\r\n                    velit voluptatem facilis reprehenderit iste? Et earum odio expedita fugiat a deleniti voluptatum ipsa, veniam illum quidem itaque repellendus\r\n                    exercitationem atque ea incidunt magnam alias ex nesciunt ducimus.', 2, 2, '2022-03-03 22:06:37'),
(7, 1, 'Article 7', '7777', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.\r\nLorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.\r\nLorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.\r\nLorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.', 5, 2, '2022-03-06 20:36:50'),
(8, 1, 'Article 8', '8888', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.\r\nLorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.\r\nLorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.', 6, 3, '2022-03-06 20:36:50'),
(9, 1, 'Article 9', '9999', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.', 1, 3, '2022-03-07 12:41:45'),
(10, 1, 'Article 10', '1000', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.', 1, 2, '2022-03-07 12:41:45'),
(11, 1, 'Article 11', '1001', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.', 1, 2, '2022-03-07 12:42:47'),
(12, 1, 'Article 12', '1002', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.', 1, 4, '2022-03-07 12:42:47'),
(13, 1, 'Article 13', '1003', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.', 1, 1, '2022-03-07 12:43:43'),
(14, 1, 'Article 14', '1004', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit.\r\n                            Dignissimos, earum.', 1, 2, '2022-03-07 12:43:43'),
(15, 1, 'Article 15', '1005', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.', 1, 3, '2022-03-08 21:37:42'),
(16, 1, 'Article 16', '1006', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.', 1, 1, '2022-03-08 21:37:42'),
(17, 1, 'Article 17', '1007', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.', 1, 2, '2022-03-08 21:38:32'),
(18, 1, 'Article 18', '1008', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.', 1, 4, '2022-03-08 21:38:32'),
(19, 1, 'Article 19', '1009', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.', 1, 4, '2022-03-08 22:16:16'),
(20, 1, 'Article 20', '1010', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos, earum.', 1, 2, '2022-03-08 22:16:16');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
