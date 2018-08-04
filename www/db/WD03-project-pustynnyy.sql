-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 03 2018 г., 15:36
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
-- Структура таблицы `about`
--

CREATE TABLE `about` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`id`, `name`, `description`, `photo`) VALUES
(4, 'Ян Пустынный', '<p>Я веб разработчик из Казани. Мне 28 лет. Занимаюсь разработкой современных сайтов и приложений. Мне нравится делать интересные и современные проекты.</p>\r\n', '955782362.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `cat_title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `cat_title`) VALUES
(2, 'Веб-разработка'),
(4, 'Астрофотография'),
(5, 'Солярография'),
(6, 'Электротехника'),
(7, 'Arduino'),
(8, 'Машинное обучение'),
(9, 'Геоинформационные системы'),
(10, 'Робототехника'),
(11, 'Raspberry Pi'),
(12, 'Разное');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` int(11) UNSIGNED DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `text`, `date_time`) VALUES
(1, 38, 33, 'Круто', '2018-07-29 12:37:42'),
(2, 38, 33, 'Уоу', '2018-07-29 12:39:36'),
(3, 38, 33, 'Уоу', '2018-07-29 12:40:05'),
(4, 38, 33, 'Это блин', '2018-07-29 12:42:01'),
(5, 38, 33, 'Это монтаж', '2018-07-29 12:46:04'),
(6, 29, 33, 'Выглядит круто. Жду продолжения', '2018-07-29 14:02:09');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `surname` varchar(191) DEFAULT NULL,
  `skype` varchar(191) DEFAULT NULL,
  `vk` varchar(191) DEFAULT NULL,
  `fb` varchar(191) DEFAULT NULL,
  `twitter` varchar(191) DEFAULT NULL,
  `telegram` varchar(191) DEFAULT NULL,
  `linkedin` varchar(191) DEFAULT NULL,
  `github` varchar(191) DEFAULT NULL,
  `bitbucket` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `email`, `phone`, `address`, `name`, `surname`, `skype`, `vk`, `fb`, `twitter`, `telegram`, `linkedin`, `github`, `bitbucket`) VALUES
(1, 'y.pustynnyy@yandex.ru', '+7 953 931 00 73', 'Россия, г. Архангельск', 'Ян', 'Пустынный', 'necrosith666', 'https://vk.com/necrosith', 'https://www.facebook.com/yan.pustynnyy', 'https://twitter.com/YanPustynnyy', 'YanPustynnyy', 'www.linkedin.com/in/yanpustynnyy', 'NecroSith', 'yanpustynnyy');

-- --------------------------------------------------------

--
-- Структура таблицы `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) UNSIGNED NOT NULL,
  `period` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `jobs`
--

INSERT INTO `jobs` (`id`, `period`, `title`, `description`) VALUES
(2, 'февраль 2017 &mdash; по настоящее время', 'Frontend разработчик', 'Работы в команде Вконтакте. Работал в команде над обновление сервиса Музыка, работа над видео разделом. Создание видеоплеера. Создание кроссбраузерных компонентов. Работа над оптимизацией скорости загрузки медиа контента.');

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_520_ci,
  `message_file_name_original` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `message_file` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_520_ci,
  `author_id` int(11) UNSIGNED DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `post_image` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_image_small` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_image_original` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `author_id`, `date_time`, `post_image`, `post_image_small`, `post_image_original`, `category`, `update_time`) VALUES
(29, 'Солярография', 'Почти любой, кто хоть немного увлекается фотографией, ну так чтоб не только кошаков снимать и  традиционные отпускные фотки из серии \"я и пальма\", слышал про камеру-обскуру — прородительницу всех фотоаппаратов. Дальнейшее развитие идеи в виде пинхол-камеры тоже известно. У меня давно возникало желание поэкспериментировать с этой специфической техникой съёмки однако природная лень не позволяла преодолеть сопутствующие процессу сложности. В те древние времена, когда господствовала чёрно-белая плёнка, поснимать на пинхол-камеру не составляло никакого труда, ведь наличие фотоаппарата автоматически подразумевало, что фотограф проявляет плёнку и печатает фотографии сам. Соответственно проявить кусочек плёнки и отпечатать фотку из пинхол камеры, проведя таким образом этот интересный эксперимент, особого труда не составляло. Нынче же, когда уже и о цветной плёнке широкие массы фотографов и думать забыли, это куда более хлопотный процесс. Необходимость закупаться реактивами и вникать в тонкости процесса проявки как-то сразу охоту отбивает да ещё заради весьма сомнительного результата. \r\nОднако написать статью меня сподвигла лазейка во всей этой методе, с одной стороны сильно упрощающая процесс, а с другой стороны, позволяющая делать то, что заведомо для других способов съёмки недоступно в принципе. Речь идёт о солярографии.. \r\nВпервые с ней столкнувшись, я удивился красоте и простоте идеи. Суть солярографии в следующем —  наше светило движется по небосклону довольно интересным образом, путь его с востока на запад каждый новый день немного отличается от пути дня предыдущего. Смещения укладываются в цикл между зимним и летним солнцестоянием. Знатоки астрономии могут подробно рассказать почему так происходит, но с точки зрения фотографа это не так уж и важно. Фотографу интересна визуальная сторона процесса. Идея запечатлеть ежедневный путь Солнца в течение дней или даже месяцев выглядит очень интересно. Любой знает про съёмку на длинной выдержке ярких движущихся объектов, тем более результат может быть очень красивым и необычным, но как сделать выдержку в полгода, какой материал допустит такое длительное экспонирование? \r\n\r\nТут-то и пригодится пинхолкамера, но в несколько изменённом виде. Вместо фотоплёнки нужно зарядить в неё фотобумагу. Не знаю точно, что за процессы происходят в чувствительном слое при длительном экспонировании, но изображение они получить позволяют и, главное, существенно упрощают весь процесс получения снимка. Бумагу даже не надо проявлять и вообще возиться с химией! После экспонирования (от дня до полугода) надо всего лишь отсканировать получившийся негатив на сканере (рекомендуют в комнате с приглушенным светом) и слегка подправить в фотошопе. Результат — весьма оригинальная фотка и удовльствие от преобщения к прекрасному. Опять же, духовность просто зашкаливает!', 32, '2018-07-19 12:19:12', '3541412.jpg', '320-3541412.jpg', 'orig-3541412.jpg', '5', NULL),
(30, 'Эволюция глобальной сети Интернет: WEB 1.0, WEB 2.0, WEB 3.0, WEB 4.0', 'Что такое WWW?\r\nВсемирная паутина (англ. World Wide Web) - распределенная система, предоставляющая доступ к связанным между собой документам, расположенным на различных компьютерах, подключенных к Интернету. Всемирную паутину образуют миллионы веб-серверов. Большинство ресурсов всемирной паутины представляет собой гипертекст. Гипертекстовые документы, размещаемые во всемирной паутине, называются веб-страницами. Несколько веб-страниц, объединенных общей темой, дизайном, а также связанных между собой ссылками и обычно находящихся на одном и том же веб-сервере, называются веб-сайтом. Для загрузки и просмотра веб-страниц используются специальные программы - браузеры. Всемирная паутина вызвала настоящую революцию в информационных технологиях и бум в развитии Интернета. Часто, говоря об Интернете, имеют в виду именно Всемирную паутину, однако важно понимать, что это не одно и то же. Для обозначения Всемирной паутины также используют слово веб (англ. web) и аббревиатуру WWW.\r\n\r\nСтруктура и принципы Всемирной паутины\r\nВсемирную паутину образуют миллионы веб-серверов сети Интернет, расположенных по всему миру. Веб-сервер является программой, запускаемой на подключённом к сети компьютере и использующей протокол HTTP для передачи данных. В простейшем виде такая программа получает по сети HTTP-запрос на определённый ресурс, находит соответствующий файл на локальном жёстком диске и отправляет его по сети запросившему компьютеру. Более сложные веб-серверы способны динамически распределять ресурсы в ответ на HTTP-запрос. Для идентификации ресурсов (зачастую файлов или их частей) во Всемирной паутине используются единообразные идентификаторы ресурсов URI (англ. Uniform Resource Identifier). Для определения местонахождения ресурсов в сети используются единообразные локаторы ресурсов URL (англ. Uniform Resource Locator). Такие URL-локаторы сочетают в себе технологию идентификации URI и систему доменных имён DNS (англ. Domain Name System) - доменное имя (или непосредственно IP-адрес в числовой записи) входит в состав URL для обозначения компьютера (точнее - одного из его сетевых интерфейсов), который исполняет код нужного веб-сервера.\r\n\r\nДля обзора информации, полученной от веб-сервера, на клиентском компьютере применяется специальная программа - веб-браузер. Основная функция веб-браузера - отображение гипертекста. Всемирная паутина неразрывно связана с понятиями гипертекста и гиперссы́лки. Большая часть информации в Вебе представляет собой именно гипертекст. Для облегчения создания, хранения и отображения гипертекста во Всемирной паутине традиционно используется язык HTML (англ. HyperText Markup Language), язык разметки гипертекста. Работа по разметке гипертекста называется вёрсткой, ма́стера по разметке называют веб-мастером или вебмастером (без дефиса). После HTML-разметки получившийся гипертекст помещается в файл, такой HTML-файл является основным ресурсом Всемирной паутины. После того, как HTML-файл становится доступен веб-серверу, его начинают называть \"веб-страницей\". Набор веб-страниц образует веб-сайт. В гипертекст веб-страниц добавляются гиперссылки. Гиперссылки помогают пользователям Всемирной паутины легко перемещаться между ресурсами (файлами) вне зависимости от того, находятся ресурсы на локальном компьютере или на удалённом сервере. Гиперссылки веба основаны на технологии URL.\r\n\r\nТехнологии Всемирной паутины\r\nДля улучшения визуального восприятия веба стала широко применяться технология CSS, которая позволяет задавать единые стили оформления для множества веб-страниц. Ещё одно нововведение, на которое стоит обратить внимание, - система обозначения ресурсов URN (англ. Uniform Resource Name).\r\n\r\nПопулярная концепция развития Всемирной паутины - создание семантической паутины. Семантическая паутина - это надстройка над существующей Всемирной паутиной, которая призвана сделать размещённую в сети информацию более понятной для компьютеров. Семантическая паутина - это концепция сети, в которой каждый ресурс на человеческом языке был бы снабжён описанием, понятным компьютеру. Семантическая паутина открывает доступ к чётко структурированной информации для любых приложений, независимо от платформы и независимо от языков программирования. Программы смогут сами находить нужные ресурсы, обрабатывать информацию, классифицировать данные, выявлять логические связи, делать выводы и даже принимать решения на основе этих выводов. При широком распространении и грамотном внедрении семантическая паутина может вызвать революцию в Интернете. Для создания понятного компьютеру описания ресурса, в семантической паутине используется формат RDF (англ. Resource Description Framework), который основан на синтаксисе XML и использует идентификаторы URI для обозначения ресурсов. Новинки в этой области - это RDFS (англ.)русск. (англ. RDF Schema) и SPARQL (англ. Protocol And RDF Query Language) (произносится как \"спа́ркл\"), новый язык запросов для быстрого доступа к данным RDF.\r\n\r\nИстория Всемирной паутины\r\nЕщё в 1945 году Ваннавер Буш разработал концепцию Memex - вспомогательных механических средств \"расширения человеческой памяти\".\r\n\r\nMemex - это устройство, в котором человек хранит все свои книги и записи (а в идеале - и все свои знания, поддающиеся формальному описанию) и которое выдаёт нужную информацию с достаточной скоростью и гибкостью. Оно является расширением и дополнением памяти человека. Бушем было также предсказано всеобъемлющее индексирование текстов и мультимедийных ресурсов с возможностью быстрого поиска необходимой информации. Следующим значительным шагом на пути ко Всемирной паутине было создание гипертекста (термин введён Тедом Нельсоном в 1965 году).\r\n\r\nИзобретателями всемирной паутины считаются Тим Бернерс-Ли и в меньшей степени, Роберт Кайо. Тим Бернерс-Ли является автором технологий HTTP, URI/URL и HTML. В 1980 году он работал в Европейском совете по ядерным исследованиям (фр. Conseil Europйen pour la Recherche Nuclйaire, CERN) консультантом по программному обеспечению. Именно там, в Женеве (Швейцария), он для собственных нужд написал программу \"Энквайр\" (англ. Enquire, можно вольно перевести как \"Дознаватель\"), которая использовала случайные ассоциации для хранения данных и заложила концептуальную основу для Всемирной паутины.\r\n\r\nВ 1989 году, работая в CERN над внутренней сетью организации, Тим Бернерс-Ли предложил глобальный гипертекстовый проект, теперь известный как Всемирная паутина - Web. Проект подразумевал публикацию гипертекстовых документов, связанных между собой гиперссылками, что облегчило бы поиск и консолидацию информации для учёных CERN. Для осуществления проекта Тимом Бернерсом-Ли (совместно с его помощниками) были изобретены идентификаторы URI, протокол HTTP и язык HTML. Это технологии, без которых уже нельзя себе представить современный Интернет. В период с 1991 по 1993 год Бернерс-Ли усовершенствовал технические спецификации этих стандартов и опубликовал их. Но, всё же, официально годом рождения Всемирной паутины нужно считать 1989 год.\r\n\r\nВ рамках проекта Бернерс-Ли написал первый в мире веб-сервер httpd и первый в мире гипертекстовый веб-браузер, называвшийся WorldWideWeb. Этот браузер был одновременно и WYSIWYG-редактором (сокр. от англ. What You See Is What You Get - что видишь, то и получишь), его разработка была начата в октябре 1990 года, а закончена в декабре того же года. Программа работала в среде NeXTStep и начала распространяться по Интернету летом 1991 года.\r\n\r\nС 1994 года основную работу по развитию Всемирной паутины взял на себя консорциум Всемирной паутины (англ. World Wide Web Consortium, W3C), основанный и до сих пор возглавляемый Тимом Бернерсом-Ли. Данный консорциум - организация, разрабатывающая и внедряющая технологические стандарты для Интернета и Всемирной паутины. Миссия W3C: \"Полностью раскрыть потенциал Всемирной паутины путём создания протоколов и принципов, гарантирующих долгосрочное развитие Сети\". Две другие важнейшие задачи консорциума - обеспечить полную \"интернационализа́цию Сети́\" и сделать Сеть доступной для людей с ограниченными возможностями.\r\n\r\nW3C разрабатывает для Интернета единые принципы и стандарты (называемые \"рекомендациями\", англ. W3C Recommendations), которые затем внедряются производителями программ и оборудования. Таким образом достигается совместимость между программными продуктами и аппаратурой различных компаний, что делает Всемирную сеть более совершенной, универсальной и удобной. Все рекомендации консорциума Всемирной паутины открыты, то есть не защищены патентами и могут внедряться любым человеком без всяких финансовых отчислений консорциуму.\r\n\r\n', 32, '2018-07-19 12:34:48', '9081542.jpg', '320-9081542.jpg', 'orig-9081542.jpg', '2 ', '2018-07-28 12:08:35'),
(38, 'Съемка Солнца с помощью гелиоскопа', '<p style=\"text-align:justify\"><span style=\"font-size:16px\">Мысль о том, чтобы рассмотреть Солнце поближе, посещает многих. Увеличенное изображение объектов дает нам телескоп или подзорная труба. Поднеся камеру смартфона к глазку окуляра, можно зафиксировать увеличенное изображение. Например, я сделал вот такой увеличенный снимок пейзажа (с опорой ЛЭП) с помощью камеры смартфона и подзорной трубы &quot;Турист-3&quot;, установленной на штатив.</span></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"ÑÐ¾ÑÐ¾ ÑÐµÑÐµÐ· Ð¿Ð¾Ð´Ð·Ð¾ÑÐ½ÑÑ ÑÑÑÐ±Ñ\" src=\"https://acdc.foxylab.com/sites/default/files/scope_photo.jpg\" /></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\">&nbsp;При таком способе фотографирования сложно зафиксировать камеру смартфона в нужном положении, поэтому выпускаются даже специальные адаптеры для такого вида фотосъемки. Но известный анекдот &quot;На Солнце в телескоп можно посмотреть дважды: один раз левым глазом и один раз &ndash; правым&quot; придуман не зря :-) Британский астроном Марк Томпсон (Mark Thompson) показал, как прожигается(!!!) глаз свиньи, находящийся вблизи окуляра телескопа, направленного на Солнце. Когда я подносил палец к окуляру подзорной трубы, наведенной на Солнце, болезненные ощущения появлялись уже через несколько секунд. </span></p>\r\n\r\n<p><span style=\"font-size:18px\"><strong>Как же быть? Как наблюдать Солнце? </strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Подробные инструкции о наблюдении Солнца приведены <a href=\"http://www.deepskywatch.com/Articles/how-to-look-at-sun.html\">здесь</a>. Можно использовать светофильтр (затемняющее стекло), поместив его перед объективом телескопа или подзорной трубы или за окуляром. Для фильтров перед объективом сейчас используют специальную пленку - Astrosolar (BAADER AstroSolar&trade; Safety Film).</span><img alt=\"Astrosolar\" src=\"https://acdc.foxylab.com/sites/default/files/astrosolar.jpg\" style=\"border-style:solid; border-width:5px; float:right; height:152px; width:164px\" /></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\">Окуляр необходим, так как изображение Солнца, получаемое в главном фокусе объектива, весьма мало (около 1/107 фокусного расстояния) - размер изображения Солнца в сантиметрах приближенно равен фокусному расстоянию в метрах. При этом размеры изображения зависят от силы окуляра - чем сильнее окуляр (чем меньше его фокусное расстояние), тем больше получаемое изображение. Рекомендуется использовать телескопы с диаметром объектива до 80 мм, так как в больших телескопах концентированный световой пучок может их повредить. Эта пленка является очень (12 мкм) тонкой фольгой. Пленка с оптической плотностью 5,0 (для визуальных наблюдений) снижает интенсивность солнечного света на 99,999% (световой поток ослабляется <em>в 105 раз</em>!!!) Пленка с оптической плотностью 3,8 предназначена только для фотографирования! Вот снимок Солнца, сделанный с помощью телескопа и фильтра Astrosolar (автор - Radoslaw Ziomber): </span></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Ð¡Ð¾Ð»Ð½ÑÐµ\" src=\"https://acdc.foxylab.com/sites/default/files/sun_astrosolar.jpg\" style=\"height:400px; width:400px\" /></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\">Следует отметить, что некоторые самодельные фильтры хотя и сильно ослабляют солнечное излучение в видимом диапазоне, но хорошо пропускают инфракрасное излучение (ИК)! В качестве доступных фильтров можно использовать: дискеты: дискета удовлетворительно поглощает ИК-излучение, но дает низкокачественную картину солнечного диска; компакт-диски: толщина алюминиевого покрытия на CD и DVD-дисках широко варьируется (обычно - сотни нанометров). Диск можно использовать как солнечный фильтр, если через него нить накала светящейся лампочки накаливания едва видна (это рекомендуется здесь). Но диск должен быть без покрытия из краски (оно искажает изображение), например, подходит двусторонний DVD-диск: Можно поступить проще - проецировать изображение с окуляра подзорной трубы (или телескопа) на белый экран (например, лист глянцевого картона). Вот и получился <strong>гелиоскоп</strong> (англ. helioscope): </span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\">Гелиоскоп, приспособленный для фотографирования Солнца, называется гелиограф. Для того, чтобы следить за перемещением Солнца по небосводу, используется вращающееся зеркало - гелиостат, позволяющее гелиоскопу оставаться неподвижным. Впервые гелиоскоп был использован итальянским математиком Бенедетто Кастелли (Benedetto Castelli), описавшего его в письме Галилео Галилею (Galileo Galilei). С помощью гелиоскопа Галилей показывал солнечные пятна астрономам в Риме. От Галилея о технике проецирования изображения Солнца узнал немецкий физик и астроном Кристоф Шейнер (Christoph Scheiner). Он изучал с помощью своей системы, которую он назвал Heliotropii Telioscopici, солнечные пятна:</span></p>\r\n', 32, '2018-07-22 12:07:30', '5608215.png', '320-5608215.png', 'orig-5608215.png', '7 ', '2018-07-28 13:31:12'),
(43, '10 мелких ошибок в дизайне, которые мы допускаем до сих пор', '<p style=\"text-align:justify\"><span style=\"font-family:Open Sans\"><span style=\"font-size:16px\">Поговорке &laquo;хороший дизайн &mdash; это дизайн, в котором все очевидно&raquo; сто лет в обед, и я уверен, что в каком-то виде она существовала и в прошлые века, применительно к хорошей еде, музыке, архитектуре, одежде, философии и вообще чему угодно.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Open Sans\"><span style=\"font-size:16px\">Мы забываем, что перемены в человеческом мышлении происходят крайне медленно, и те знания о поведении людей, которыми мы располагаем сейчас, не устареют еще лет пятьдесят или около того. Чтобы всем было проще, мы должны последовательно придерживаться нескольких принципов, которые будут напоминать нам, как делать продукты с хорошим дизайном. Неплохо бы напоминать себе об этих принципах хотя бы раз месяц, пока не начнем им жить и дышать.</span></span></p>\r\n\r\n<h2 style=\"text-align:justify\"><strong><span style=\"font-family:Open Sans\"><span style=\"font-size:16px\">&laquo;Не заставляйте меня думать: дубль два&raquo;</span></span></strong></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Open Sans\"><span style=\"font-size:16px\">Еще в далеком 2000 году, после дотком-бума, Стив Круг изложил некоторые полезные соображения, которые до сих пор не потеряли своей ценности и актуальности. Даже за то время, которое прошло с публикации нового издания ничего, по сути, не изменилось. Да, вы можете мне сказать, что теперь все выглядит по-современному, что сайты лучше структурированы и используют продвинутые технологии (прощай, флэш!). Но я говорю о другом &mdash; поведение людей ничем не отличается. Принцип &laquo;не заставляйте меня думать&raquo; всегда будет полезен для любого продукта, с которым мы взаимодействуем, будь это микроволновка, телевизор, смартфон или машина.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><img src=\"https://sun1-11.userapi.com/c824501/v824501742/195edd/ge8On5kB00A.jpg\" style=\"height:420px; width:700px\" /></p>\r\n\r\n<h2 style=\"text-align:justify\"><strong>1<span style=\"font-family:Open Sans\"><span style=\"font-size:16px\">. Люди не читают, а пробегают глазами</span></span></strong></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Open Sans\"><span style=\"font-size:16px\">Причина проста: у нас есть миссия и мы ищем только то, что нас интересует в связи с ней. Например, я с трудом припоминаю случаи, когда читал текст на странице продукта от и до. Почему? Потому что большинство пользователей в Сети пытаются сделать что-то конкретное, причем как можно быстрее. Нам некогда читать больше, чем строго необходимо. И тем не менее, мы продолжаем нагружать страницы текстом &mdash; нам кажется, что людям же надо все это знать. Или, как говорят некоторые дизайнеры, &laquo;это делает опыт богаче&raquo;.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><img src=\"https://sun1-19.userapi.com/c824501/v824501742/195ee5/MuhnksOulPo.jpg\" /></p>\r\n\r\n<h2 style=\"text-align:justify\"><strong><span style=\"font-family:Open Sans\"><span style=\"font-size:16px\">Что мы делаем vs Что нужно пользователю</span></span></strong></h2>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Open Sans\"><span style=\"font-size:16px\">Вставляйте побольше заголовков &mdash; они объясняют, в чем суть каждой секции и нужна ли она данному конкретному пользователю. Так или иначе, это помогает решить, стоит ли просматривать страницу дальше или лучше уйти.</span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Open Sans\"><span style=\"font-size:16px\">Делайте параграфы короткими &mdash; в длинном текстовом фрагменте читатель с большей вероятностью собьется, к тому же пробегать их глазами сложнее, чем череду небольших параграфов. Всегда найдется какое-нибудь место, на котором текст можно безболезненно разбить на две части.</span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Open Sans\"><span style=\"font-size:16px\">Используйте списки &mdash; оформить в виде списка можно практически что угодно. У вас есть предложение, где много всякого перечисляется через запятую? Это, считайте, готовый список. Также не забывайте оставлять немного пустого пространства между пунктами списка &mdash; так удобнее читать. Для примера можно взять тот же Medium.</span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Open Sans\"><span style=\"font-size:16px\">Выделяйте ключевые фразы &mdash; существенная часть просмотра страницы заключается в поиске определенных ключевых слов и фраз. Выделив их жирным шрифтом, вы упросите пользователю задачу. Только не переусердствуйте &mdash; если выделений слишком много, они теряют эффективность.</span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><img src=\"https://sun1-6.userapi.com/c824501/v824501742/195eef/4aqzoDBA5Vg.jpg\" /></p>\r\n', 32, '2018-07-28 13:46:13', '5741973.jpg', '320-5741973.jpg', 'orig-5741973.jpg', '7 ', '2018-07-28 13:48:08');

-- --------------------------------------------------------

--
-- Структура таблицы `skills`
--

CREATE TABLE `skills` (
  `id` int(11) UNSIGNED NOT NULL,
  `html` int(11) UNSIGNED DEFAULT NULL,
  `css` int(11) UNSIGNED DEFAULT NULL,
  `js` int(11) UNSIGNED DEFAULT NULL,
  `jquery` int(11) UNSIGNED DEFAULT NULL,
  `php` int(11) UNSIGNED DEFAULT NULL,
  `mysql` int(11) UNSIGNED DEFAULT NULL,
  `git` int(11) UNSIGNED DEFAULT NULL,
  `gulp` int(11) UNSIGNED DEFAULT NULL,
  `bower` int(11) UNSIGNED DEFAULT NULL,
  `npm` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `skills`
--

INSERT INTO `skills` (`id`, `html`, `css`, `js`, `jquery`, `php`, `mysql`, `git`, `gulp`, `bower`, `npm`) VALUES
(1, 90, 70, 50, 40, 40, 40, 75, 75, 50, 70);

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
(32, 'satan@mail.com', '$2y$10$bu2/jIGJ3GNwxLq0Cz3AeO87L5tOT2i4SJ/T8hEbWAlViOVI9xdVi', 'admin', 'Сатан', 'Бафомет', 'Ад', 'Дит', '2142578.jpg', '48-2142578.jpg', NULL, NULL),
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
-- Индексы таблицы `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_comments_post` (`post_id`),
  ADD KEY `index_foreignkey_comments_user` (`user_id`);

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_posts_author` (`author_id`);

--
-- Индексы таблицы `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT для таблицы `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;