-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 26 2018 г., 16:46
-- Версия сервера: 5.6.38
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `Burgers`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Orders`
--

CREATE TABLE `Orders` (
  `user_id` int(5) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `comment` text,
  `card_pay` varchar(2) DEFAULT NULL,
  `no_callback` varchar(2) DEFAULT NULL,
  `need_change` varchar(2) DEFAULT NULL,
  `order_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Orders`
--

INSERT INTO `Orders` (`user_id`, `address`, `comment`, `card_pay`, `no_callback`, `need_change`, `order_id`) VALUES
(19, 'Танкиста Хрустицкого 5 к 1 кв. 36 этаж 7', 'без кетчупа', '', '', 'on', 1),
(15, ' 3 2 23 1', 'комментарий какой то довольно таки длинный', '', 'on', 'on', 2),
(16, 'Ленина 34 1 33 6', 'комментарий какой то довольно таки длинный комментарий какой то довольно таки длинный  комментарий какой то довольно таки длинный  комментарий какой то довольно таки длинный  комментарий какой то довольно таки длинный  комментарий какой то довольно таки длинный    ', '', '', 'on', 3),
(17, 'Науки 17 к 2 кв. 12 этаж 2', 'кукукукукукукук', 'on', '', '', 4),
(18, 'Кукусиков 33 к 1 кв. 23 этаж 1', 'прпорпылорчдлфыосджсьювыьмюбватмбыв вборсатд', '', 'on', 'on', 5),
(28, 'улица erewrewr 3 к 4 кв. 2 этаж 4', 'fdfwwe', '', 'on', '', 54),
(34, 'улица eqw 2 к 2 кв. 2 этаж 2', '222', '', 'on', 'on', 110),
(9, '  к  кв.  этаж ', '', '', '', '', 122),
(13, 'Московская 22 к 1 кв. 45 этаж 5', 'встречу у дома', '', 'on', '', 134),
(27, 'улица rtretrg r к r кв. rr этаж r', 'gsfgerge', 'on', 'on', '', 137),
(34, 'улица eqw 2 к 2 кв. 2 этаж 2', '222', '', 'on', 'on', 163),
(18, 'улица Курочкина 7 к 5 кв. 12 этаж 3', 'это комментарий', 'on', '', '', 176),
(18, 'улица Орлова 56 к 2 кв. 54 этаж 2', '2', '', 'on', 'on', 207),
(21, '  к  кв.  этаж ', '', '', '', '', 263),
(13, 'улица wdwqdqwd 3 к 1 кв. 2 этаж 3', 'ewfewfewwf', '', '', 'on', 381),
(24, 'улица Леонида 3 к 2 кв. 12 этаж 4', '5', '', 'on', 'on', 500),
(1, 'улица trtertrt.2 343 к 34 кв. 223 этаж ', 'dferet', '', 'on', 'on', 627),
(32, 'улица dfvfdvfdavfdv 34 к 543 кв. 22 этаж 3', 'fgdgdfgdfg', '', '', 'on', 640),
(34, 'улица eqw 2 к 2 кв. 2 этаж 2', '222', '', 'on', 'on', 709),
(33, 'улица hndfgvaf 4 к 2 кв. 4 этаж 1', 'fdfsdf', '', 'on', '', 713),
(25, 'улица Оли 5 к 4 кв. 2 этаж 4', 'екиееие ', 'on', 'on', '', 776),
(33, 'улица hndfgvaf 4 к 2 кв. 4 этаж 1', 'fdfsdf', '', 'on', '', 782),
(34, 'улица eqw 2 к 2 кв. 2 этаж 2', '222', '', 'on', 'on', 804),
(23, 'улица Химиков 55 к 3 кв. 123 этаж 9', 'комментарий fefesgfsf', '', 'on', 'on', 809),
(18, 'улица werwrwqr 3 к 2 кв. 34 этаж 1', 'ggtregr', '', 'on', '', 879),
(34, 'улица eqw 2 к 2 кв. 2 этаж 2', '222', '', 'on', 'on', 1045),
(33, 'улица hndfgvaf 4 к 2 кв. 4 этаж 1', 'fdfsdf', '', 'on', '', 1060),
(34, 'улица eqw 2 к 2 кв. 2 этаж 2', '222', '', 'on', 'on', 1104),
(34, 'улица eqw 2 к 2 кв. 2 этаж 2', '222', '', 'on', 'on', 1122),
(31, 'улица sdaqd  5 к 4 кв. 3 этаж 3', 'gregeregrg', '', 'on', '', 1141),
(34, 'улица eqw 2 к 2 кв. 2 этаж 2', '222', '', 'on', 'on', 1178),
(22, 'Невский пр. 7 к 4 кв. 33 этаж 1', 'комментарий', 'on', 'on', '', 1191),
(30, 'улица ddsadsd 3 к 4 кв. 43 этаж 1', 'ffgfgfgdg', '', 'on', 'on', 1195),
(34, 'улица eqw 2 к 2 кв. 2 этаж 2', '222', '', 'on', 'on', 1201),
(33, 'улица hndfgvaf 4 к 2 кв. 4 этаж 1', 'fdfsdf', '', 'on', '', 1231),
(18, 'улица Нинина 5 к 1 кв. 34 этаж 5', 'комментарий Нины', '', 'on', 'on', 1236),
(20, 'Михайлова 5 к 1 кв. 22 этаж 4', '----------------------------------', '', 'on', 'on', 1243),
(26, 'улица erewrererewr 4 к 3 кв. 4 этаж 5', 'grfgf', '', 'on', '', 1253),
(34, 'улица eqw 2 к 2 кв. 2 этаж 2', '222', '', 'on', 'on', 1288),
(34, 'улица eqw 2 к 2 кв. 2 этаж 2', '222', '', 'on', 'on', 1289),
(34, 'улица eqw 2 к 2 кв. 2 этаж 2', '222', '', 'on', 'on', 1374),
(18, 'улица Нинина 5 к 1 кв. 34 этаж 5', 'комментарий Нины', '', 'on', 'on', 1403),
(34, 'улица eqw 2 к 2 кв. 2 этаж 2', '222', '', 'on', 'on', 1409),
(34, 'улица eqw 2 к 2 кв. 2 этаж 2', '222', '', 'on', 'on', 1509),
(29, 'улица dsfwef 4 к 5 кв. 3 этаж 1', 'rtrt', '', 'on', '', 1612),
(30, 'улица 34rewfew 3 к 3 кв. 2 этаж 1', 'fsdfdfdf', '', 'on', '', 1650),
(34, 'улица eqw 2 к 2 кв. 2 этаж 2', '222', '', 'on', 'on', 1738),
(34, 'улица eqw 2 к 2 кв. 2 этаж 2', '222', '', 'on', 'on', 1810),
(34, 'улица eqw 2 к 2 кв. 2 этаж 2', '222', '', 'on', 'on', 1830),
(34, 'улица eqw 2 к 2 кв. 2 этаж 2', '222', '', 'on', 'on', 1940),
(35, 'улица Подводников 12 к 2 кв. 1 этаж 8', 'ваваывсч', '', '', 'on', 1941),
(35, 'улица Подводников 12 к 2 кв. 1 этаж 8', 'ваваывсч', '', '', 'on', 1942),
(35, 'улица Подводников 12 к 2 кв. 1 этаж 8', 'ваваывсч', '', '', 'on', 1943),
(35, 'улица Подводников 12 к 2 кв. 1 этаж 8', 'ваваывсч', '', '', 'on', 1944),
(35, 'улица Подводников 12 к 2 кв. 1 этаж 8', 'ваваывсч', '', '', 'on', 1945),
(35, 'улица Подводников 12 к 2 кв. 1 этаж 8', 'ваваывсч', '', '', 'on', 1946),
(35, 'улица Подводников 12 к 2 кв. 1 этаж 8', 'ваваывсч', '', '', 'on', 1947),
(35, 'улица Подводников 12 к 2 кв. 1 этаж 8', 'ваваывсч', '', '', 'on', 1948);

-- --------------------------------------------------------

--
-- Структура таблицы `Users`
--

CREATE TABLE `Users` (
  `user_id` int(5) NOT NULL,
  `name` varchar(15) DEFAULT NULL,
  `phone_number` varchar(18) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Users`
--

INSERT INTO `Users` (`user_id`, `name`, `phone_number`, `email`) VALUES
(1, 'werer', '111223434', 'voineg82@gmail.com'),
(3, 'Саша', '7', 'email'),
(7, 'Мааа', '+7 (222) 222 22 22', 'tusia95@mail.ru'),
(8, 'роланд', '+7 (444) 444 44 44', 'popopip@mail.ru'),
(9, 'Оля', '+7 (222) 232 33 23', 'olik@yandex.ru'),
(10, 'Аня', '+7 (344) 545 45 45', 'anik@bk.ru'),
(11, 'Ира', '+7 (222) 222 22 22', 'ira@gamail.com'),
(12, 'Тоня', '+7 (777) 777 77 77', 'tonik@mail.ru'),
(13, 'Лола', '+7 (787) 678 76 87', 'lola@mail.ru'),
(14, 'Даша', '+7 (323) 433 33 33', 'mimi@mail.ru'),
(15, 'Саша', '+7 (888) 888 88 88', 'sasha@yandex.ru'),
(16, 'Леша', '+7 (767) 287 67 87', 'lesha@yandex.ru'),
(17, 'Мария', '+7 (743) 333 33 33', 'maria@mail.ru'),
(18, 'Нина', '+7 (222) 222 22 22', 'nina@mail.ru'),
(19, 'Рома', '+7 (487) 399 99 94', 'roma@mail.ru'),
(20, 'Антон', '+7 (555) 555 55 55', 'anton@yandex.ru'),
(21, '', '', ''),
(22, 'Миша', '+7 (222) 222 22 22', 'misha@yandex.ru'),
(23, 'Инна', '+7 (344) 355 46 65', 'inna@mail.ru'),
(24, 'Леонид', '+7 (746) 754 63 46', 'leonid@mail.ru'),
(25, 'Оля', '+7 (563) 456 56 45', 'olya@yandex.ru'),
(26, '2323', '+7 (234) 435 45 45', '1212@mail.ru'),
(27, '23234', '+7 (344) 354 54 54', '353@mail.ru'),
(28, 'fewf', '+7 (353) 253 25 32', 'Li@mail.ru'),
(29, 'trert', '+7 (453) 454 54 54', 'uuuu@mail.ru'),
(30, '32434', '+7 (343) 434 34 34', 'ikikiki@mail.ru'),
(31, 'rweffdfd', '+7 (222) 222 22 22', 'imik@mail.ru'),
(32, 'erfef r', '+7 (333) 234 45 55', 'rgtrt@mail.ru'),
(33, '34324', '+7 (333) 333 33 3_', '423434@mail.ru'),
(34, 'wdewe', '+7 (222) 222 33 31', 'ililil@mail.ru'),
(35, 'Мирра', '+7 (111) 122 23 34', 'mirra@bk.ru');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Orders`
--
ALTER TABLE `Orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Orders`
--
ALTER TABLE `Orders`
  MODIFY `order_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1949;

--
-- AUTO_INCREMENT для таблицы `Users`
--
ALTER TABLE `Users`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Orders`
--
ALTER TABLE `Orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
