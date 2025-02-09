-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 09 2025 г., 19:15
-- Версия сервера: 8.0.24
-- Версия PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `uchebnik`
--

-- --------------------------------------------------------

--
-- Структура таблицы `contents`
--

CREATE TABLE `contents` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `contents`
--

INSERT INTO `contents` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(3, '3️⃣ Backend-разработка (Node.js, Laravel, Django)', '📌 Backend — это серверная часть веб-приложения, которая отвечает за логику, работу с базами данных и API. <br>\r\n📌 Node.js позволяет писать серверный код на JavaScript, что делает разработку унифицированной.<br>\r\n📌 Laravel (PHP) — мощный фреймворк для быстрой разработки сайтов, особенно популярных в бизнес-среде.<br>\r\n📌 Django (Python) — фреймворк с принципом \"всё включено\", который позволяет быстро разрабатывать надежные приложения.<br>\r\n📌 Сервер взаимодействует с базами данных (MySQL, PostgreSQL, MongoDB) и управляет пользователями, авторизацией, платежами и многим другим.<br>\r\n📌 Backend должен быть безопасным, оптимизированным и масштабируемым, чтобы справляться с нагрузками.<br>\r\n📌 Важные технологии: REST API, GraphQL, WebSockets для реального времени, OAuth2 для авторизации.<br>\r\n📌 В Laravel удобные механизмы маршрутизации, миграции базы данных, аутентификации и шаблонизации.<br>\r\n📌 Django подходит для быстрого прототипирования, а также отлично подходит для работы с машинным обучением.<br>\r\n📌 Backend — это не только код, но и DevOps-часть: серверы, контейнеризация (Docker), CI/CD и мониторинг.<br>', NULL, NULL),
(4, '4️⃣ REST API и GraphQL', '📌 REST API — это способ взаимодействия между клиентом и сервером через HTTP-запросы (GET, POST, PUT, DELETE).<br>\r\n📌 В REST используется формат JSON для передачи данных, а также URL-адреса для определения ресурсов.<br>\r\n📌 Принципы REST: клиент-серверная архитектура, отсутствие состояния (stateless), кэширование, единообразие интерфейса.<br>\r\n📌 API должны быть хорошо документированы (например, с использованием Swagger или Postman).<br>\r\n📌 GraphQL — это альтернатива REST, где клиент сам выбирает, какие данные ему нужны, что уменьшает нагрузку на сервер.<br>\r\n📌 В REST API часто бывают проблемы из-за избыточных данных или множества запросов, GraphQL решает это одной гибкой схемой.<br>\r\n📌 REST-архитектура проще в освоении и хорошо подходит для большинства проектов.<br>\r\n📌 GraphQL лучше для сложных приложений, требующих оптимизированных данных.<br>\r\n📌 Безопасность API важна: защита от SQL-инъекций, CORS, аутентификация через JWT или OAuth.<br>\r\n📌 API — это мост между фронтендом и бэкендом, и их правильная реализация влияет на скорость и удобство работы приложения.<br>', NULL, NULL),
(5, '5️⃣ Безопасность веб-приложений', '📌 Веб-безопасность — ключевой аспект разработки, так как сайты часто подвергаются атакам.<br>\r\n📌 Основные угрозы: XSS (Cross-Site Scripting), SQL-инъекции, CSRF (Cross-Site Request Forgery).<br>\r\n📌 XSS позволяет злоумышленникам внедрять вредоносный код в веб-страницы, что угрожает пользователям.<br>\r\n📌 SQL-инъекции позволяют получить доступ к базе данных через уязвимые запросы.<br>\r\n📌 CSRF-атаки заставляют пользователя выполнять нежелательные действия (например, перевод денег без согласия).<br>\r\n📌 Использование HTTPS защищает данные при передаче между клиентом и сервером.<br>\r\n📌 Защита паролей с помощью bcrypt, Argon2 или других алгоритмов хеширования.<br>\r\n📌 Ограничение количества запросов (Rate Limiting) защищает API от атак типа DDoS.<br>\r\n📌 Регулярное обновление зависимостей снижает риски уязвимостей в сторонних библиотеках.<br>\r\n📌 Безопасность — это процесс, требующий постоянного мониторинга и внедрения лучших практик.<br>', NULL, NULL),
(7, '1️⃣ Основы HTML, CSS и JavaScript', '📌 HTML (HyperText Markup Language) отвечает за структуру веб-страницы, CSS (Cascading Style Sheets) — за внешний вид, а JavaScript — за динамическое поведение. <br>\n📌 Важно понимать работу HTML-элементов, семантику тегов и взаимодействие с CSS.<br>\n📌 CSS включает стилизацию, адаптивную верстку (media queries) и Flexbox/Grid для удобного расположения элементов.<br>\n📌 JavaScript позволяет добавлять интерактивность, например, обработку событий, валидацию форм и динамическую загрузку контента.<br>\n📌 Современный CSS включает в себя переменные, анимации и кастомные свойства для удобства в разработке.<br>\n📌 JavaScript может работать с DOM (Document Object Model), что позволяет изменять элементы страницы в реальном времени.<br>\n📌 ES6+ (новые версии JavaScript) добавляет стрелочные функции, деструктуризацию, async/await и другие полезные возможности.<br>\n📌 Адаптивная верстка — ключевой аспект разработки, так как сайты должны выглядеть хорошо на разных устройствах.<br>\n📌 Хороший код должен быть оптимизирован, минимизирован и валидирован для лучшей производительности.<br>\n📌 Все эти технологии — основа, без которой невозможно создать современное веб-приложение.<br>', '2025-02-09 11:00:48', '2025-02-09 11:00:48'),
(10, '2️⃣ Современные фреймворки (Vue, React, Angular)', '📌 Фреймворки упрощают разработку сложных веб-приложений, предоставляя удобные инструменты и архитектурные решения.<br>\n📌 Vue.js — легковесный и удобный для начинающих фреймворк с компонентной архитектурой. Он позволяет легко создавать динамические интерфейсы.<br>\n📌 React — библиотека от Facebook для создания UI, использует виртуальный DOM и позволяет разрабатывать масштабируемые приложения.<br>\n📌 Angular — мощный фреймворк от Google с TypeScript, который идеально подходит для крупных корпоративных решений.<br>\n📌 Все три технологии используют компонентный подход, что делает код модульным и удобным в поддержке.<br>\n📌 Vue прост в освоении и имеет реактивную систему, которая автоматически обновляет данные в DOM.<br>\n📌 React активно используется в индустрии и имеет огромную экосистему с Redux, Next.js и другими инструментами.<br>\n📌 Angular требует строгой структуры кода, но благодаря этому удобен для командной разработки.<br>\n📌 Компиляция и сборка проекта через Webpack, Vite или другие инструменты делает разработку эффективной.<br>\n📌 Выбор фреймворка зависит от требований проекта: Vue хорош для быстрого старта, React — для динамических UI, Angular — для сложных бизнес-логик.<br>', '2025-02-09 11:03:35', '2025-02-09 11:03:35');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_02_08_161251_create_contents_table', 1),
(6, '2025_02_08_195312_create_photos_table', 1),
(7, '2025_02_08_201500_create_settings_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(15, 'App\\Models\\User', 1, 'token', '61409c5b4f3ca9008f303a6f0fea5e37060b8c5440623905db28ff7e81bdf03c', '[\"*\"]', '2025-02-09 11:14:15', NULL, '2025-02-09 09:04:23', '2025-02-09 11:14:15');

-- --------------------------------------------------------

--
-- Структура таблицы `photos`
--

CREATE TABLE `photos` (
  `id` bigint UNSIGNED NOT NULL,
  `content_id` bigint UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgUrl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `autor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `title`, `description`, `imgUrl`, `autor`, `organization`, `created_at`, `updated_at`) VALUES
(1, 'ЭУП \"Web-дизайн и разработка\"', 'Электронное учебное пособие по дисциплине \"Веб-дизайн и разработка\". \nДанное учебное пособие предназначено для подготовки к чемпионату профессионального мастерства WorldSkills Kazakhstan по компетенции \"Веб технологии\"', 'https://urtt.ru/wp-content/uploads/2020/04/LogotipMasterskojVDiR.png', 'Иванов Иван Иванович', 'ГККП \"Высший технический колледж, город Щучинск, Бурабайский район\" при управлении образования Акмолинской области', NULL, '2025-02-09 09:53:20');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Рамиль', 'ramikshudabaev@gmail.com', NULL, '$2y$12$e1eTBZZZ8QfYUAtCXnGkG.oon.hDHLVVoVtzbz4Ti0yV7E1VMDgHi', NULL, '2025-02-09 07:42:28', '2025-02-09 07:42:28'),
(2, 'Администратор', 'admin@admin.com', NULL, '$2y$12$eHXGcG.TXgqZTwVaj008Ue42FQVPjJav9EalwFy7KpEn7zpRq0G9.', NULL, '2025-02-09 08:03:41', '2025-02-09 08:03:41');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photos_content_id_foreign` (`content_id`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `contents`
--
ALTER TABLE `contents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_content_id_foreign` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
