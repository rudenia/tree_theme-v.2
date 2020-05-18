-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 18 2020 г., 11:24
-- Версия сервера: 10.4.11-MariaDB
-- Версия PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `universe`
--

-- --------------------------------------------------------

--
-- Структура таблицы `unirse_commentmeta`
--

CREATE TABLE `unirse_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `unirse_comments`
--

CREATE TABLE `unirse_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `unirse_comments`
--

INSERT INTO `unirse_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-05-06 17:24:13', '2020-05-06 17:24:13', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `unirse_links`
--

CREATE TABLE `unirse_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `unirse_options`
--

CREATE TABLE `unirse_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `unirse_options`
--

INSERT INTO `unirse_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/universe', 'yes'),
(2, 'home', 'http://localhost/universe', 'yes'),
(3, 'blogname', 'JC', 'yes'),
(4, 'blogdescription', 'legal Advisory Services', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'viewerrr@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:192:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:15:\"testimonials/?$\";s:31:\"index.php?post_type=testimonial\";s:45:\"testimonials/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=testimonial&feed=$matches[1]\";s:40:\"testimonials/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=testimonial&feed=$matches[1]\";s:32:\"testimonials/page/([0-9]{1,})/?$\";s:49:\"index.php?post_type=testimonial&paged=$matches[1]\";s:11:\"services/?$\";s:27:\"index.php?post_type=service\";s:41:\"services/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=service&feed=$matches[1]\";s:36:\"services/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=service&feed=$matches[1]\";s:28:\"services/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=service&paged=$matches[1]\";s:7:\"news/?$\";s:24:\"index.php?post_type=news\";s:37:\"news/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=news&feed=$matches[1]\";s:32:\"news/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=news&feed=$matches[1]\";s:24:\"news/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=news&paged=$matches[1]\";s:11:\"features/?$\";s:27:\"index.php?post_type=feature\";s:41:\"features/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=feature&feed=$matches[1]\";s:36:\"features/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=feature&feed=$matches[1]\";s:28:\"features/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=feature&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:40:\"testimonials/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"testimonials/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"testimonials/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"testimonials/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"testimonials/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"testimonials/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"testimonials/([^/]+)/embed/?$\";s:44:\"index.php?testimonial=$matches[1]&embed=true\";s:33:\"testimonials/([^/]+)/trackback/?$\";s:38:\"index.php?testimonial=$matches[1]&tb=1\";s:53:\"testimonials/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?testimonial=$matches[1]&feed=$matches[2]\";s:48:\"testimonials/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?testimonial=$matches[1]&feed=$matches[2]\";s:41:\"testimonials/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?testimonial=$matches[1]&paged=$matches[2]\";s:48:\"testimonials/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?testimonial=$matches[1]&cpage=$matches[2]\";s:37:\"testimonials/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?testimonial=$matches[1]&page=$matches[2]\";s:29:\"testimonials/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"testimonials/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"testimonials/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"testimonials/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"testimonials/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"testimonials/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"services/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"services/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"services/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"services/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"services/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"services/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"services/([^/]+)/embed/?$\";s:40:\"index.php?service=$matches[1]&embed=true\";s:29:\"services/([^/]+)/trackback/?$\";s:34:\"index.php?service=$matches[1]&tb=1\";s:49:\"services/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?service=$matches[1]&feed=$matches[2]\";s:44:\"services/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?service=$matches[1]&feed=$matches[2]\";s:37:\"services/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?service=$matches[1]&paged=$matches[2]\";s:44:\"services/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?service=$matches[1]&cpage=$matches[2]\";s:33:\"services/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?service=$matches[1]&page=$matches[2]\";s:25:\"services/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"services/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"services/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"services/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"services/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"services/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"news/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"news/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"news/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"news/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"news/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"news/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"news/([^/]+)/embed/?$\";s:37:\"index.php?news=$matches[1]&embed=true\";s:25:\"news/([^/]+)/trackback/?$\";s:31:\"index.php?news=$matches[1]&tb=1\";s:45:\"news/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?news=$matches[1]&feed=$matches[2]\";s:40:\"news/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?news=$matches[1]&feed=$matches[2]\";s:33:\"news/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?news=$matches[1]&paged=$matches[2]\";s:40:\"news/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?news=$matches[1]&cpage=$matches[2]\";s:29:\"news/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?news=$matches[1]&page=$matches[2]\";s:21:\"news/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"news/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"news/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"news/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"news/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"news/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"features/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"features/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"features/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"features/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"features/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"features/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"features/([^/]+)/embed/?$\";s:40:\"index.php?feature=$matches[1]&embed=true\";s:29:\"features/([^/]+)/trackback/?$\";s:34:\"index.php?feature=$matches[1]&tb=1\";s:49:\"features/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?feature=$matches[1]&feed=$matches[2]\";s:44:\"features/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?feature=$matches[1]&feed=$matches[2]\";s:37:\"features/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?feature=$matches[1]&paged=$matches[2]\";s:44:\"features/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?feature=$matches[1]&cpage=$matches[2]\";s:33:\"features/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?feature=$matches[1]&page=$matches[2]\";s:25:\"features/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"features/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"features/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"features/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"features/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"features/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"service-type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?service-type=$matches[1]&feed=$matches[2]\";s:48:\"service-type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?service-type=$matches[1]&feed=$matches[2]\";s:29:\"service-type/([^/]+)/embed/?$\";s:45:\"index.php?service-type=$matches[1]&embed=true\";s:41:\"service-type/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?service-type=$matches[1]&paged=$matches[2]\";s:23:\"service-type/([^/]+)/?$\";s:34:\"index.php?service-type=$matches[1]\";s:54:\"news-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?news-category=$matches[1]&feed=$matches[2]\";s:49:\"news-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?news-category=$matches[1]&feed=$matches[2]\";s:30:\"news-category/([^/]+)/embed/?$\";s:46:\"index.php?news-category=$matches[1]&embed=true\";s:42:\"news-category/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?news-category=$matches[1]&paged=$matches[2]\";s:24:\"news-category/([^/]+)/?$\";s:35:\"index.php?news-category=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:35:\"redux-framework/redux-framework.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'tree_theme', 'yes'),
(41, 'stylesheet', 'tree_theme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '47018', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '6', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1604337849', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'unirse_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:1:{i:0;s:8:\"search-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:7:{i:1589796631;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1589822657;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1589822658;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1589822711;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1589822714;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1590081857;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1588785936;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(115, 'recovery_keys', 'a:1:{s:22:\"bZwP8fqwv13VCyyJzGmEBs\";a:2:{s:10:\"hashed_key\";s:34:\"$P$B62my6ZdtKfnbF52syQIPj/ai05irM/\";s:10:\"created_at\";i:1589753174;}}', 'yes'),
(123, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1589779488;s:15:\"version_checked\";s:5:\"5.4.1\";s:12:\"translations\";a:0:{}}', 'no'),
(125, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:18:\"viewerrr@gmail.com\";s:7:\"version\";s:5:\"5.4.1\";s:9:\"timestamp\";i:1588785898;}', 'no'),
(131, 'can_compress_scripts', '1', 'no'),
(144, 'current_theme', 'tree_theme', 'yes'),
(145, 'theme_mods_tree_theme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:11:\"menu-header\";i:2;s:15:\"menu-footer-map\";i:3;s:20:\"menu-footer-services\";i:4;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(146, 'theme_switched', '', 'yes'),
(147, 'recently_activated', 'a:0:{}', 'yes'),
(155, 'r_notice_data', '{}', 'yes'),
(156, 'redux_blast', '1588786085', 'yes'),
(157, 'redux_version_upgraded_from', '3.6.18', 'yes'),
(159, 'tree_theme_options', 'a:29:{s:8:\"last_tab\";s:1:\"1\";s:12:\"social_links\";a:4:{s:7:\"Vk link\";s:1:\"#\";s:13:\"Facebook link\";s:1:\"#\";s:12:\"Twitter link\";s:1:\"#\";s:14:\"Instagram link\";s:1:\"#\";}s:18:\"header_phone_label\";s:29:\"Заказать звонок\";s:12:\"header_phone\";s:19:\"+ 7 (495) 567-28-15\";s:14:\"footer_address\";s:69:\"г. Москва, ул. Бутырская, 62 Z-Plaza, 5-й этаж\";s:12:\"footer_phone\";a:2:{i:0;s:19:\"+ 7 (495) 577-18-11\";i:1;s:19:\"+ 7 (495) 567-28-15\";}s:12:\"footer_email\";s:17:\"JClegal@gmail.com\";s:11:\"footer_info\";s:73:\"Разработано специально для коучинга WAYUP\";s:17:\"footer_copyrights\";s:54:\"<p>©2007-2020 Все права защищены.</p>\";s:15:\"footer_section1\";s:21:\"Карта сайта\";s:15:\"footer_section2\";s:12:\"Услуги\";s:15:\"footer_section3\";s:16:\"Контакты\";s:15:\"footer_section4\";s:61:\"Подписаться на рассылку новостей\";s:9:\"header_bg\";a:9:{s:3:\"url\";s:72:\"http://localhost/universe/wp-content/themes/tree_theme/assets/img/bg.jpg\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";s:5:\"title\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:11:\"header_time\";s:4:\"1:30\";s:12:\"header_video\";s:43:\"https://www.youtube.com/watch?v=FWxRRbnwRf0\";s:18:\"header_video_title\";s:79:\"Посмотрите короткое видео о нашей компании\";s:18:\"home_header_slider\";a:3:{i:0;a:9:{s:5:\"title\";s:42:\"Вы хотите изменить мир.\";s:11:\"description\";s:285:\"<h1 class=\"offer__title\">Мы хотим вам помочь.</h1>\r\n<p class=\"offer__descr\">Мы современная Юридическая фирма,<br> помогающая перспективным стартапам, фрилансерам и малому бизнесу.</p>\";s:3:\"url\";s:1:\"#\";s:4:\"sort\";s:1:\"1\";s:13:\"attachment_id\";s:0:\"\";s:5:\"thumb\";s:0:\"\";s:5:\"image\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";}i:1;a:9:{s:5:\"title\";s:42:\"Вы хотите изменить мир.\";s:11:\"description\";s:321:\"<h1 class=\"offer__title\">Мы хотим вам помочь.</h1>\r\n<p class=\"offer__descr\">Юристы JC проведут вас и вашу компанию через многочисленные юридические проблемы, стоящие перед компаниями Москвы сегодня.</p>\";s:3:\"url\";s:1:\"#\";s:4:\"sort\";s:1:\"2\";s:13:\"attachment_id\";s:0:\"\";s:5:\"thumb\";s:0:\"\";s:5:\"image\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";}i:2;a:9:{s:5:\"title\";s:42:\"Вы хотите изменить мир.\";s:11:\"description\";s:343:\"<h1 class=\"offer__title\">Мы хотим вам помочь.</h1>\r\n<p class=\"offer__descr\">Мы предпочитаем обсуждать проблемы и решения, а не участвовать в теоретических юридических дебатах, которые никогда не заканчиваются.</p>\";s:3:\"url\";s:1:\"#\";s:4:\"sort\";s:1:\"3\";s:13:\"attachment_id\";s:0:\"\";s:5:\"thumb\";s:0:\"\";s:5:\"image\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";}}s:18:\"testimonial_label1\";s:26:\"За нас говорят\";s:18:\"testimonial_label2\";s:23:\"Наши клиенты\";s:17:\"testimonial_posts\";s:1:\"6\";s:26:\"testimonial_form_shortcode\";s:41:\"[contact-form-7 id=\"46\" title=\"Untitled\"]\";s:16:\"service_currency\";s:1:\"$\";s:11:\"cases_label\";s:59:\"Посмотрите наши последние кейсы\";s:22:\"service_archive_title1\";s:8:\"Наши\";s:22:\"service_archive_title2\";s:12:\"Услуги\";s:27:\"service_archive_description\";s:257:\"Вы хотите реализовать свои бизнес идеи?<br>\r\nНачало вашего нового бизнеса требует прочной юридической основы, и мы поможем вам на каждом этапе\";s:11:\"news_title1\";s:20:\"Актуальные\";s:11:\"news_title2\";s:14:\"Новости\";}', 'yes'),
(160, 'tree_theme_options-transients', 'a:2:{s:14:\"changed_values\";a:0:{}s:9:\"last_save\";i:1589740526;}', 'yes'),
(163, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.8\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1588786125;s:7:\"version\";s:5:\"5.1.7\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(170, 'WPLANG', '', 'yes'),
(171, 'new_admin_email', 'viewerrr@gmail.com', 'yes'),
(174, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(181, 'category_children', 'a:0:{}', 'yes'),
(195, '_transient_health-check-site-status-result', '{\"good\":11,\"recommended\":6,\"critical\":0}', 'yes'),
(216, 'service-type_children', 'a:0:{}', 'yes'),
(304, 'news-category_children', 'a:0:{}', 'yes'),
(353, '_transient_timeout_select2-css_style_cdn_is_up', '1589824485', 'no'),
(354, '_transient_select2-css_style_cdn_is_up', '1', 'no'),
(355, '_transient_timeout_select2-js_script_cdn_is_up', '1589824486', 'no'),
(356, '_transient_select2-js_script_cdn_is_up', '1', 'no'),
(361, 'recovery_mode_email_last_sent', '1589753171', 'yes'),
(372, '_site_transient_timeout_theme_roots', '1589781289', 'no'),
(373, '_site_transient_theme_roots', 'a:4:{s:10:\"tree_theme\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(374, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1589779491;s:7:\"checked\";a:4:{s:10:\"tree_theme\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"1.5\";s:15:\"twentyseventeen\";s:3:\"2.3\";s:12:\"twentytwenty\";s:3:\"1.2\";}s:8:\"response\";a:1:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.3.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(375, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1589779492;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.1.4\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.8\";s:35:\"redux-framework/redux-framework.php\";s:6:\"3.6.18\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.8\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=2279696\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"redux-framework/redux-framework.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/redux-framework\";s:4:\"slug\";s:15:\"redux-framework\";s:6:\"plugin\";s:35:\"redux-framework/redux-framework.php\";s:11:\"new_version\";s:6:\"3.6.18\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/redux-framework/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/redux-framework.3.6.18.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/redux-framework/assets/icon-256x256.png?rev=995554\";s:2:\"1x\";s:59:\"https://ps.w.org/redux-framework/assets/icon.svg?rev=995554\";s:3:\"svg\";s:59:\"https://ps.w.org/redux-framework/assets/icon.svg?rev=995554\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/redux-framework/assets/banner-772x250.png?rev=793165\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `unirse_postmeta`
--

CREATE TABLE `unirse_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `unirse_postmeta`
--

INSERT INTO `unirse_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_form', '<div class=\"inner__form log order-form\" id=\"popupOrder\">\n    <p class=\"log__title\">Оформить заказ</p>\n    <div class=\"log__group\">\n        <label>Имя</label>      \n        [text* your-name class:log__input]\n    </div>\n    <div class=\"log__group\">\n        <label>Телефон</label>\n        [tel* tel-190 class:log__input]\n    </div>\n    <div class=\"log__group\">\n        <label>Email</label>\n        [email* email-773 class:log__input]\n\n    </div>\n    <p class=\"log__line\"><span>*</span>Поля обязательные для заполнения</p>\n    <div class=\"log__btn\">\n        [submit id:order class:btn]\n    </div>\n</div >'),
(4, 5, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:25:\"Universe \"[your-subject]\"\";s:6:\"sender\";s:29:\"Universe <viewerrr@gmail.com>\";s:9:\"recipient\";s:18:\"viewerrr@gmail.com\";s:4:\"body\";s:172:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Universe (http://localhost/universe)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(5, 5, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:25:\"Universe \"[your-subject]\"\";s:6:\"sender\";s:29:\"Universe <viewerrr@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:114:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Universe (http://localhost/universe)\";s:18:\"additional_headers\";s:28:\"Reply-To: viewerrr@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(6, 5, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(7, 5, '_additional_settings', ''),
(8, 5, '_locale', 'en_US'),
(9, 6, '_edit_lock', '1588786520:1'),
(10, 6, '_wp_page_template', 'template-home.php'),
(12, 9, '_menu_item_type', 'custom'),
(13, 9, '_menu_item_menu_item_parent', '0'),
(14, 9, '_menu_item_object_id', '9'),
(15, 9, '_menu_item_object', 'custom'),
(16, 9, '_menu_item_target', ''),
(17, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(18, 9, '_menu_item_xfn', ''),
(19, 9, '_menu_item_url', '#'),
(21, 10, '_menu_item_type', 'custom'),
(22, 10, '_menu_item_menu_item_parent', '0'),
(23, 10, '_menu_item_object_id', '10'),
(24, 10, '_menu_item_object', 'custom'),
(25, 10, '_menu_item_target', ''),
(26, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(27, 10, '_menu_item_xfn', ''),
(28, 10, '_menu_item_url', '#'),
(48, 13, '_menu_item_type', 'custom'),
(49, 13, '_menu_item_menu_item_parent', '0'),
(50, 13, '_menu_item_object_id', '13'),
(51, 13, '_menu_item_object', 'custom'),
(52, 13, '_menu_item_target', ''),
(53, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(54, 13, '_menu_item_xfn', ''),
(55, 13, '_menu_item_url', '#'),
(57, 14, '_menu_item_type', 'custom'),
(58, 14, '_menu_item_menu_item_parent', '0'),
(59, 14, '_menu_item_object_id', '14'),
(60, 14, '_menu_item_object', 'custom'),
(61, 14, '_menu_item_target', ''),
(62, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(63, 14, '_menu_item_xfn', ''),
(64, 14, '_menu_item_url', '#'),
(120, 21, '_menu_item_type', 'custom'),
(121, 21, '_menu_item_menu_item_parent', '0'),
(122, 21, '_menu_item_object_id', '21'),
(123, 21, '_menu_item_object', 'custom'),
(124, 21, '_menu_item_target', ''),
(125, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(126, 21, '_menu_item_xfn', ''),
(127, 21, '_menu_item_url', '#'),
(129, 22, '_menu_item_type', 'custom'),
(130, 22, '_menu_item_menu_item_parent', '0'),
(131, 22, '_menu_item_object_id', '22'),
(132, 22, '_menu_item_object', 'custom'),
(133, 22, '_menu_item_target', ''),
(134, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(135, 22, '_menu_item_xfn', ''),
(136, 22, '_menu_item_url', '#'),
(138, 23, '_menu_item_type', 'custom'),
(139, 23, '_menu_item_menu_item_parent', '0'),
(140, 23, '_menu_item_object_id', '23'),
(141, 23, '_menu_item_object', 'custom'),
(142, 23, '_menu_item_target', ''),
(143, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(144, 23, '_menu_item_xfn', ''),
(145, 23, '_menu_item_url', '#'),
(156, 25, '_menu_item_type', 'custom'),
(157, 25, '_menu_item_menu_item_parent', '0'),
(158, 25, '_menu_item_object_id', '25'),
(159, 25, '_menu_item_object', 'custom'),
(160, 25, '_menu_item_target', ''),
(161, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(162, 25, '_menu_item_xfn', ''),
(163, 25, '_menu_item_url', '#'),
(219, 32, '_edit_lock', '1588838011:1'),
(220, 33, '_edit_last', '1'),
(221, 33, '_edit_lock', '1588839117:1'),
(222, 34, '_wp_attached_file', '2020/05/callback6.jpg'),
(223, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:231;s:4:\"file\";s:21:\"2020/05/callback6.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"callback6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(224, 35, '_wp_attached_file', '2020/05/callback1.jpg'),
(225, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:231;s:4:\"file\";s:21:\"2020/05/callback1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"callback1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(226, 36, '_wp_attached_file', '2020/05/callback2.jpg'),
(227, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:231;s:4:\"file\";s:21:\"2020/05/callback2.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"callback2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(228, 37, '_wp_attached_file', '2020/05/callback3.jpg'),
(229, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:231;s:4:\"file\";s:21:\"2020/05/callback3.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"callback3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(230, 38, '_wp_attached_file', '2020/05/callback4.jpg'),
(231, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:231;s:4:\"file\";s:21:\"2020/05/callback4.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"callback4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(232, 39, '_wp_attached_file', '2020/05/callback5.jpg'),
(233, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:231;s:4:\"file\";s:21:\"2020/05/callback5.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"callback5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(234, 35, '_wp_attachment_image_alt', 'Анна Свиридова'),
(235, 33, '_thumbnail_id', '35'),
(236, 33, 'tree_theme_social_link', '#'),
(238, 33, 'tree_theme_testimonials_date', '07.05.2020'),
(239, 40, '_edit_last', '1'),
(240, 40, '_edit_lock', '1588839140:1'),
(241, 36, '_wp_attachment_image_alt', 'Екатерина Еременко'),
(242, 40, '_thumbnail_id', '36'),
(243, 40, 'tree_theme_social_link', '#'),
(244, 40, 'tree_theme_testimonials_date', '08.04.2020'),
(245, 41, '_edit_last', '1'),
(246, 41, '_edit_lock', '1588839160:1'),
(247, 37, '_wp_attachment_image_alt', 'Алла Анохина'),
(248, 41, '_thumbnail_id', '37'),
(249, 41, 'tree_theme_social_link', '#'),
(250, 41, 'tree_theme_testimonials_date', '05.04.2020'),
(251, 43, '_edit_last', '1'),
(252, 43, '_edit_lock', '1588839096:1'),
(253, 38, '_wp_attachment_image_alt', 'Юрий Богдан'),
(254, 43, '_thumbnail_id', '38'),
(255, 43, 'tree_theme_social_link', '#'),
(256, 43, 'tree_theme_testimonials_date', '01.04.2020'),
(257, 44, '_edit_last', '1'),
(258, 44, '_edit_lock', '1588839183:1'),
(259, 39, '_wp_attachment_image_alt', 'Мария Иванова'),
(260, 44, '_thumbnail_id', '39'),
(261, 44, 'tree_theme_social_link', '#'),
(262, 44, 'tree_theme_testimonials_date', '22.05.2020'),
(263, 45, '_edit_last', '1'),
(264, 45, '_edit_lock', '1588839230:1'),
(265, 34, '_wp_attachment_image_alt', 'Дмитрий Борсук'),
(266, 45, '_thumbnail_id', '34'),
(267, 45, 'tree_theme_social_link', '#'),
(268, 45, 'tree_theme_testimonials_date', '04.05.2020'),
(269, 46, '_form', '<div class=\"clients__form-block\">\n    <div class=\"log clients__form review-form\" id=\"popupMessage\"> \n        <p class=\"log__title\">Оставьте ваш отзыв</p>\n        <div class=\"log__wrap\">\n            <div class=\"log__group\">\n                <label>Имя</label>\n                [text* your-name class:log__input]\n            </div>\n            <div class=\"log__group\">\n                <label>Email</label>\n                [email* your-email class:log__input]\n            </div>\n            <div class=\"log__group\">\n                <label>Телефон</label>\n                [number* number-903 class:log__input]\n            </div>\n            <div class=\"log__group log__group_socials\">\n                <label>Ссылка на соцсеть</label>\n                [text social-14 class:log__input]\n            </div>\n            <div class=\"log__group log__group_textarea\">\n                <label>Ваш отзыв</label>\n                [textarea message class:log__input]\n            </div>\n            <p class=\"log__line\"><span>*</span>Поля обязательные для заполнения</p>\n            <div class=\"log__btn\">\n                [submit class:btn \"Отправить\"]\n            </div>\n        </div>\n    </div>\n</div>'),
(270, 46, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:19:\"JC \"[your-subject]\"\";s:6:\"sender\";s:23:\"JC <viewerrr@gmail.com>\";s:9:\"recipient\";s:18:\"viewerrr@gmail.com\";s:4:\"body\";s:166:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on JC (http://localhost/universe)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(271, 46, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:19:\"JC \"[your-subject]\"\";s:6:\"sender\";s:23:\"JC <viewerrr@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:108:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on JC (http://localhost/universe)\";s:18:\"additional_headers\";s:28:\"Reply-To: viewerrr@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(272, 46, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(273, 46, '_additional_settings', ''),
(274, 46, '_locale', 'en_US'),
(275, 47, '_menu_item_type', 'post_type_archive'),
(276, 47, '_menu_item_menu_item_parent', '0'),
(277, 47, '_menu_item_object_id', '-12'),
(278, 47, '_menu_item_object', 'testimonial'),
(279, 47, '_menu_item_target', ''),
(280, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(281, 47, '_menu_item_xfn', ''),
(282, 47, '_menu_item_url', ''),
(284, 48, '_menu_item_type', 'post_type_archive'),
(285, 48, '_menu_item_menu_item_parent', '0'),
(286, 48, '_menu_item_object_id', '-12'),
(287, 48, '_menu_item_object', 'testimonial'),
(288, 48, '_menu_item_target', ''),
(289, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(290, 48, '_menu_item_xfn', ''),
(291, 48, '_menu_item_url', ''),
(293, 49, '_edit_last', '1'),
(294, 49, '_edit_lock', '1588843504:1'),
(295, 50, '_wp_attached_file', '2020/05/callback7.jpg'),
(296, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:1280;s:4:\"file\";s:21:\"2020/05/callback7.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"callback7-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"callback7-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"callback7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"callback7-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"testimonial-thumb\";a:4:{s:4:\"file\";s:21:\"callback7-225x231.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:231;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"service-thumb\";a:4:{s:4:\"file\";s:21:\"callback7-960x635.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:635;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(297, 50, '_wp_attachment_image_alt', 'Иван Руденя'),
(298, 49, '_thumbnail_id', '50'),
(299, 49, 'tree_theme_social_link', 'http://facebook.com/ivan.rudenia'),
(300, 49, 'tree_theme_testimonials_date', '10.05.2020'),
(301, 51, '_edit_last', '1'),
(302, 51, '_edit_lock', '1589308492:1'),
(303, 52, '_wp_attached_file', '2020/05/service-img.jpg'),
(304, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1170;s:6:\"height\";i:635;s:4:\"file\";s:23:\"2020/05/service-img.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"service-img-300x163.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:163;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"service-img-1024x556.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:556;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"service-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"service-img-768x417.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:417;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"testimonial-thumb\";a:4:{s:4:\"file\";s:23:\"service-img-225x231.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:231;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(305, 51, '_thumbnail_id', '52'),
(306, 51, 'tree_theme_service_price', '350'),
(309, 51, '_wp_old_slug', '%d0%ba%d0%be%d1%80%d0%bf%d0%be%d1%80%d0%b0%d1%82%d0%b8%d0%b2%d0%bd%d0%be%d0%b5-%d0%bf%d1%80%d0%b0%d0%b2%d0%be-%d0%b8-ma'),
(310, 32, '_wp_trash_meta_status', 'draft'),
(311, 32, '_wp_trash_meta_time', '1588850139'),
(312, 32, '_wp_desired_post_slug', ''),
(313, 56, '_edit_lock', '1588850042:1'),
(314, 56, '_wp_page_template', 'template-contact.php'),
(315, 58, '_edit_lock', '1588850064:1'),
(316, 58, '_wp_page_template', 'template-about.php'),
(317, 60, '_edit_lock', '1588935362:1'),
(318, 60, '_wp_page_template', 'template-order.php'),
(319, 62, '_wp_attached_file', '2020/05/order-img.jpg'),
(320, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1170;s:6:\"height\";i:554;s:4:\"file\";s:21:\"2020/05/order-img.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"order-img-300x142.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:142;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"order-img-1024x485.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:485;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"order-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"order-img-768x364.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:364;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"testimonial-thumb\";a:4:{s:4:\"file\";s:21:\"order-img-225x231.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:231;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(321, 60, '_thumbnail_id', '62'),
(322, 60, '_edit_last', '1'),
(323, 60, 'tree_theme_shortcode_checkout', '[contact-form-7 id=\"5\" title=\"Contact form 1\"]'),
(327, 5, '_config_errors', 'a:1:{s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:51:\"Invalid mailbox syntax is used in the %name% field.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(328, 65, '_edit_last', '1'),
(329, 65, '_edit_lock', '1588936802:1'),
(330, 66, '_wp_attached_file', '2020/05/case4.jpg'),
(331, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:438;s:6:\"height\";i:455;s:4:\"file\";s:17:\"2020/05/case4.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"case4-289x300.jpg\";s:5:\"width\";i:289;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"case4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"testimonial-thumb\";a:4:{s:4:\"file\";s:17:\"case4-225x231.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:231;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(332, 67, '_wp_attached_file', '2020/05/case1.jpg'),
(333, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:438;s:6:\"height\";i:455;s:4:\"file\";s:17:\"2020/05/case1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"case1-289x300.jpg\";s:5:\"width\";i:289;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"case1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"testimonial-thumb\";a:4:{s:4:\"file\";s:17:\"case1-225x231.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:231;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(334, 68, '_wp_attached_file', '2020/05/case2.jpg'),
(335, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:438;s:6:\"height\";i:455;s:4:\"file\";s:17:\"2020/05/case2.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"case2-289x300.jpg\";s:5:\"width\";i:289;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"case2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"testimonial-thumb\";a:4:{s:4:\"file\";s:17:\"case2-225x231.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:231;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(336, 69, '_wp_attached_file', '2020/05/case3.jpg'),
(337, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:438;s:6:\"height\";i:455;s:4:\"file\";s:17:\"2020/05/case3.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"case3-289x300.jpg\";s:5:\"width\";i:289;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"case3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"testimonial-thumb\";a:4:{s:4:\"file\";s:17:\"case3-225x231.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:231;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(338, 65, '_thumbnail_id', '67'),
(339, 70, '_edit_last', '1'),
(340, 70, '_thumbnail_id', '68'),
(341, 70, '_edit_lock', '1588936870:1'),
(342, 71, '_edit_last', '1'),
(343, 71, '_edit_lock', '1588936890:1'),
(344, 71, '_thumbnail_id', '69'),
(345, 72, '_edit_last', '1'),
(346, 72, '_edit_lock', '1588937157:1'),
(347, 72, '_thumbnail_id', '66'),
(348, 73, '_edit_last', '1'),
(349, 73, '_edit_lock', '1589308517:1'),
(350, 73, '_thumbnail_id', '52'),
(351, 73, 'tree_theme_service_price', '390'),
(352, 74, '_edit_last', '1'),
(353, 74, '_edit_lock', '1589308573:1'),
(354, 74, '_thumbnail_id', '52'),
(355, 74, 'tree_theme_service_price', '480'),
(356, 75, '_edit_last', '1'),
(357, 75, '_edit_lock', '1589308594:1'),
(358, 75, '_thumbnail_id', '52'),
(359, 75, 'tree_theme_service_price', '525'),
(360, 76, '_edit_last', '1'),
(361, 76, '_thumbnail_id', '52'),
(362, 76, 'tree_theme_service_price', '345'),
(363, 76, '_edit_lock', '1589308615:1'),
(364, 77, '_edit_last', '1'),
(365, 77, '_edit_lock', '1589450790:1'),
(366, 77, '_thumbnail_id', '52'),
(367, 77, 'tree_theme_service_price', '410'),
(368, 77, 'tree_theme_service_icon', 'target'),
(369, 76, 'tree_theme_service_icon', 'busy'),
(370, 74, 'tree_theme_service_icon', 'internet'),
(371, 75, 'tree_theme_service_icon', 'info'),
(372, 73, 'tree_theme_service_icon', 'idea'),
(373, 51, 'tree_theme_service_icon', 'stat'),
(374, 79, '_edit_last', '1'),
(375, 79, '_edit_lock', '1589307768:1'),
(376, 79, '_thumbnail_id', '35'),
(377, 79, 'tree_theme_service_price', '534'),
(378, 79, 'tree_theme_service_icon', 'internet'),
(379, 79, '_wp_trash_meta_status', 'publish'),
(380, 79, '_wp_trash_meta_time', '1589307923'),
(381, 79, '_wp_desired_post_slug', 'rgrehherhe'),
(382, 82, '_menu_item_type', 'post_type_archive'),
(383, 82, '_menu_item_menu_item_parent', '0'),
(384, 82, '_menu_item_object_id', '-34'),
(385, 82, '_menu_item_object', 'service'),
(386, 82, '_menu_item_target', ''),
(387, 82, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(388, 82, '_menu_item_xfn', ''),
(389, 82, '_menu_item_url', ''),
(391, 83, '_menu_item_type', 'post_type'),
(392, 83, '_menu_item_menu_item_parent', '82'),
(393, 83, '_menu_item_object_id', '77'),
(394, 83, '_menu_item_object', 'service'),
(395, 83, '_menu_item_target', ''),
(396, 83, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(397, 83, '_menu_item_xfn', ''),
(398, 83, '_menu_item_url', ''),
(400, 84, '_menu_item_type', 'post_type'),
(401, 84, '_menu_item_menu_item_parent', '82'),
(402, 84, '_menu_item_object_id', '76'),
(403, 84, '_menu_item_object', 'service'),
(404, 84, '_menu_item_target', ''),
(405, 84, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(406, 84, '_menu_item_xfn', ''),
(407, 84, '_menu_item_url', ''),
(409, 85, '_menu_item_type', 'post_type'),
(410, 85, '_menu_item_menu_item_parent', '82'),
(411, 85, '_menu_item_object_id', '75'),
(412, 85, '_menu_item_object', 'service'),
(413, 85, '_menu_item_target', ''),
(414, 85, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(415, 85, '_menu_item_xfn', ''),
(416, 85, '_menu_item_url', ''),
(418, 86, '_menu_item_type', 'post_type'),
(419, 86, '_menu_item_menu_item_parent', '82'),
(420, 86, '_menu_item_object_id', '74'),
(421, 86, '_menu_item_object', 'service'),
(422, 86, '_menu_item_target', ''),
(423, 86, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(424, 86, '_menu_item_xfn', ''),
(425, 86, '_menu_item_url', ''),
(427, 87, '_menu_item_type', 'post_type'),
(428, 87, '_menu_item_menu_item_parent', '82'),
(429, 87, '_menu_item_object_id', '73'),
(430, 87, '_menu_item_object', 'service'),
(431, 87, '_menu_item_target', ''),
(432, 87, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(433, 87, '_menu_item_xfn', ''),
(434, 87, '_menu_item_url', ''),
(436, 88, '_menu_item_type', 'post_type'),
(437, 88, '_menu_item_menu_item_parent', '82'),
(438, 88, '_menu_item_object_id', '51'),
(439, 88, '_menu_item_object', 'service'),
(440, 88, '_menu_item_target', ''),
(441, 88, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(442, 88, '_menu_item_xfn', ''),
(443, 88, '_menu_item_url', ''),
(445, 89, '_menu_item_type', 'post_type'),
(446, 89, '_menu_item_menu_item_parent', '0'),
(447, 89, '_menu_item_object_id', '77'),
(448, 89, '_menu_item_object', 'service'),
(449, 89, '_menu_item_target', ''),
(450, 89, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(451, 89, '_menu_item_xfn', ''),
(452, 89, '_menu_item_url', ''),
(454, 90, '_menu_item_type', 'post_type'),
(455, 90, '_menu_item_menu_item_parent', '0'),
(456, 90, '_menu_item_object_id', '76'),
(457, 90, '_menu_item_object', 'service'),
(458, 90, '_menu_item_target', ''),
(459, 90, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(460, 90, '_menu_item_xfn', ''),
(461, 90, '_menu_item_url', ''),
(463, 91, '_menu_item_type', 'post_type'),
(464, 91, '_menu_item_menu_item_parent', '0'),
(465, 91, '_menu_item_object_id', '75'),
(466, 91, '_menu_item_object', 'service'),
(467, 91, '_menu_item_target', ''),
(468, 91, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(469, 91, '_menu_item_xfn', ''),
(470, 91, '_menu_item_url', ''),
(472, 92, '_menu_item_type', 'post_type'),
(473, 92, '_menu_item_menu_item_parent', '0'),
(474, 92, '_menu_item_object_id', '74'),
(475, 92, '_menu_item_object', 'service'),
(476, 92, '_menu_item_target', ''),
(477, 92, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(478, 92, '_menu_item_xfn', ''),
(479, 92, '_menu_item_url', ''),
(481, 93, '_menu_item_type', 'post_type'),
(482, 93, '_menu_item_menu_item_parent', '0'),
(483, 93, '_menu_item_object_id', '73'),
(484, 93, '_menu_item_object', 'service'),
(485, 93, '_menu_item_target', ''),
(486, 93, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(487, 93, '_menu_item_xfn', ''),
(488, 93, '_menu_item_url', ''),
(490, 94, '_menu_item_type', 'post_type'),
(491, 94, '_menu_item_menu_item_parent', '0'),
(492, 94, '_menu_item_object_id', '51'),
(493, 94, '_menu_item_object', 'service'),
(494, 94, '_menu_item_target', ''),
(495, 94, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(496, 94, '_menu_item_xfn', ''),
(497, 94, '_menu_item_url', ''),
(499, 73, '_wp_old_slug', '%d0%b8%d0%bd%d1%82%d0%b5%d0%bb%d0%bb%d0%b5%d0%ba%d1%82%d1%83%d0%b0%d0%bb%d1%8c%d0%bd%d0%b0%d1%8f-%d1%81%d0%be%d0%b1%d1%81%d1%82%d0%b2%d0%b5%d0%bd%d0%bd%d0%be%d1%81%d1%82%d1%8c'),
(500, 74, '_wp_old_slug', '%d0%b8%d0%bd%d1%82%d0%b5%d1%80%d0%bd%d0%b5%d1%82-%d0%b1%d0%b8%d0%b7%d0%bd%d0%b5%d1%81-%d0%b8-%d1%86%d0%b8%d1%84%d1%80%d0%be%d0%b2%d0%b0%d1%8f-%d1%8d%d0%ba%d0%be%d0%bd%d0%be%d0%bc%d0%b8%d0%ba%d0%b0'),
(501, 75, '_wp_old_slug', '%d0%b8%d0%bd%d1%84%d0%be%d1%80%d0%bc%d0%b0%d1%86%d0%b8%d0%be%d0%bd%d0%bd%d1%8b%d0%b5-%d1%82%d0%b5%d1%85%d0%bd%d0%be%d0%bb%d0%be%d0%b3%d0%b8%d0%b8-%d1%82%d0%bc%d1%82'),
(502, 76, '_wp_old_slug', 'government-relations'),
(503, 77, '_wp_old_slug', '%d0%ba%d0%be%d0%bc%d0%bc%d0%b5%d1%80%d1%87%d0%b5%d1%81%d0%ba%d0%b0%d1%8f-%d0%bf%d1%80%d0%b0%d0%ba%d1%82%d0%b8%d0%ba%d0%b0'),
(504, 95, '_edit_last', '1'),
(505, 95, '_edit_lock', '1589742463:1'),
(506, 96, '_wp_attached_file', '2020/05/post.jpg'),
(507, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:979;s:6:\"height\";i:395;s:4:\"file\";s:16:\"2020/05/post.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"post-300x121.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:121;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"post-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"post-768x310.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"testimonial-thumb\";a:4:{s:4:\"file\";s:16:\"post-225x231.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:231;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"feature-thumb\";a:4:{s:4:\"file\";s:16:\"post-438x395.jpg\";s:5:\"width\";i:438;s:6:\"height\";i:395;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(508, 97, '_wp_attached_file', '2020/05/post-bg.jpg'),
(509, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:741;s:4:\"file\";s:19:\"2020/05/post-bg.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"post-bg-300x116.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:116;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"post-bg-1024x395.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:395;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"post-bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"post-bg-768x296.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:296;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"post-bg-1536x593.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:593;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"testimonial-thumb\";a:4:{s:4:\"file\";s:19:\"post-bg-225x231.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:231;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"service-thumb\";a:4:{s:4:\"file\";s:20:\"post-bg-1170x554.jpg\";s:5:\"width\";i:1170;s:6:\"height\";i:554;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"feature-thumb\";a:4:{s:4:\"file\";s:19:\"post-bg-438x455.jpg\";s:5:\"width\";i:438;s:6:\"height\";i:455;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(510, 95, '_thumbnail_id', '102'),
(511, 98, '_edit_last', '1'),
(512, 98, '_edit_lock', '1589740801:1'),
(513, 99, '_edit_last', '1'),
(514, 99, '_edit_lock', '1589740501:1'),
(518, 101, '_wp_attached_file', '2020/05/photo1.jpg'),
(519, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:409;s:6:\"height\";i:266;s:4:\"file\";s:18:\"2020/05/photo1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"photo1-300x195.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"photo1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"testimonial-thumb\";a:4:{s:4:\"file\";s:18:\"photo1-225x231.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:231;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(520, 98, '_thumbnail_id', '101'),
(521, 102, '_wp_attached_file', '2020/05/post-bg-1.jpg'),
(522, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:741;s:4:\"file\";s:21:\"2020/05/post-bg-1.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"post-bg-1-300x116.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:116;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"post-bg-1-1024x395.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:395;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"post-bg-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"post-bg-1-768x296.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:296;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"post-bg-1-1536x593.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:593;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"testimonial-thumb\";a:4:{s:4:\"file\";s:21:\"post-bg-1-225x231.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:231;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"service-thumb\";a:4:{s:4:\"file\";s:22:\"post-bg-1-1170x554.jpg\";s:5:\"width\";i:1170;s:6:\"height\";i:554;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"feature-thumb\";a:4:{s:4:\"file\";s:21:\"post-bg-1-438x455.jpg\";s:5:\"width\";i:438;s:6:\"height\";i:455;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"news-thumb\";a:4:{s:4:\"file\";s:21:\"post-bg-1-733x476.jpg\";s:5:\"width\";i:733;s:6:\"height\";i:476;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Структура таблицы `unirse_posts`
--

CREATE TABLE `unirse_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `unirse_posts`
--

INSERT INTO `unirse_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-05-06 17:24:13', '2020-05-06 17:24:13', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-05-06 17:24:13', '2020-05-06 17:24:13', '', 0, 'http://localhost/universe/?p=1', 0, 'post', '', 1),
(2, 1, '2020-05-06 17:24:13', '2020-05-06 17:24:13', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/universe/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-05-06 17:24:13', '2020-05-06 17:24:13', '', 0, 'http://localhost/universe/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-05-06 17:24:13', '2020-05-06 17:24:13', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/universe.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-05-06 17:24:13', '2020-05-06 17:24:13', '', 0, 'http://localhost/universe/?page_id=3', 0, 'page', '', 0),
(5, 1, '2020-05-06 17:28:44', '2020-05-06 17:28:44', '<div class=\"inner__form log order-form\" id=\"popupOrder\">\r\n    <p class=\"log__title\">Оформить заказ</p>\r\n    <div class=\"log__group\">\r\n        <label>Имя</label>      \r\n        [text* your-name class:log__input]\r\n    </div>\r\n    <div class=\"log__group\">\r\n        <label>Телефон</label>\r\n        [tel* tel-190 class:log__input]\r\n    </div>\r\n    <div class=\"log__group\">\r\n        <label>Email</label>\r\n        [email* email-773 class:log__input]\r\n\r\n    </div>\r\n    <p class=\"log__line\"><span>*</span>Поля обязательные для заполнения</p>\r\n    <div class=\"log__btn\">\r\n        [submit id:order class:btn]\r\n    </div>\r\n</div >\n1\nUniverse \"[your-subject]\"\nUniverse <viewerrr@gmail.com>\nviewerrr@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Universe (http://localhost/universe)\nReply-To: [your-email]\n\n\n\n\nUniverse \"[your-subject]\"\nUniverse <viewerrr@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Universe (http://localhost/universe)\nReply-To: viewerrr@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Form for checkout', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2020-05-08 11:00:49', '2020-05-08 11:00:49', '', 0, 'http://localhost/universe/?post_type=wpcf7_contact_form&#038;p=5', 0, 'wpcf7_contact_form', '', 0),
(6, 1, '2020-05-06 17:37:37', '2020-05-06 17:37:37', '', 'Homepage', '', 'publish', 'closed', 'closed', '', 'homepage', '', '', '2020-05-06 17:37:37', '2020-05-06 17:37:37', '', 0, 'http://localhost/universe/?page_id=6', 0, 'page', '', 0),
(7, 1, '2020-05-06 17:37:37', '2020-05-06 17:37:37', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-06 17:37:37', '2020-05-06 17:37:37', '', 6, 'http://localhost/universe/2020/05/06/6-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2020-05-06 17:47:41', '2020-05-06 17:47:41', '', 'Главная', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f', '', '', '2020-05-12 18:33:27', '2020-05-12 18:33:27', '', 0, 'http://localhost/universe/?p=9', 1, 'nav_menu_item', '', 0),
(10, 1, '2020-05-06 17:47:42', '2020-05-06 17:47:42', '', 'О компании', '', 'publish', 'closed', 'closed', '', '%d0%be-%d0%ba%d0%be%d0%bc%d0%bf%d0%b0%d0%bd%d0%b8%d0%b8', '', '', '2020-05-12 18:33:27', '2020-05-12 18:33:27', '', 0, 'http://localhost/universe/?p=10', 2, 'nav_menu_item', '', 0),
(13, 1, '2020-05-06 17:47:42', '2020-05-06 17:47:42', '', 'Контакты', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b', '', '', '2020-05-12 18:33:28', '2020-05-12 18:33:28', '', 0, 'http://localhost/universe/?p=13', 11, 'nav_menu_item', '', 0),
(14, 1, '2020-05-06 17:47:42', '2020-05-06 17:47:42', '', 'Магазин', '', 'publish', 'closed', 'closed', '', '%d0%bc%d0%b0%d0%b3%d0%b0%d0%b7%d0%b8%d0%bd', '', '', '2020-05-12 18:33:28', '2020-05-12 18:33:28', '', 0, 'http://localhost/universe/?p=14', 12, 'nav_menu_item', '', 0),
(21, 1, '2020-05-06 17:53:11', '2020-05-06 17:53:11', '', 'Главная', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f-2', '', '', '2020-05-07 08:32:43', '2020-05-07 08:32:43', '', 0, 'http://localhost/universe/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2020-05-06 17:53:11', '2020-05-06 17:53:11', '', 'О компании', '', 'publish', 'closed', 'closed', '', '%d0%be-%d0%ba%d0%be%d0%bc%d0%bf%d0%b0%d0%bd%d0%b8%d0%b8-2', '', '', '2020-05-07 08:32:43', '2020-05-07 08:32:43', '', 0, 'http://localhost/universe/?p=22', 2, 'nav_menu_item', '', 0),
(23, 1, '2020-05-06 17:53:11', '2020-05-06 17:53:11', '', 'Кейсы', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%b5%d0%b9%d1%81%d1%8b', '', '', '2020-05-07 08:32:43', '2020-05-07 08:32:43', '', 0, 'http://localhost/universe/?p=23', 3, 'nav_menu_item', '', 0),
(25, 1, '2020-05-06 17:53:11', '2020-05-06 17:53:11', '', 'Новости', '', 'publish', 'closed', 'closed', '', '%d0%bd%d0%be%d0%b2%d0%be%d1%81%d1%82%d0%b8', '', '', '2020-05-07 08:32:43', '2020-05-07 08:32:43', '', 0, 'http://localhost/universe/?p=25', 5, 'nav_menu_item', '', 0),
(32, 1, '2020-05-07 11:15:39', '2020-05-07 11:15:39', '', 'Testimonial', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2020-05-07 11:15:39', '2020-05-07 11:15:39', '', 0, 'http://localhost/universe/?page_id=32', 0, 'page', '', 0),
(33, 1, '2020-05-07 08:04:05', '2020-05-07 08:04:05', 'Наша компания ведет свою деятельность в сфере ИТ-бизнеса, которая на сегодняшний день является специфической областью для правового регулирования. Хотелось бы оставить свой отзыв о Юридической компании JC. Очень меня выручили, спасибо им большое за помощь. Это мой не первый опыт сотрудничества с юридическими фирмами, и везде присутствовали недостатки. К счастью, в этой компании не было никаких проблем. Все очень быстро и главное uрамотно сделали. Огромный плюс - быстрая запись на консультацию и подготовка нужных\r\n\r\nНашей организации был предоставлен обширный перечень юридических услуг, таких как устные и письменные консультации; экспертиза документов и деятельности нашей компании; представление наших интересов перед контрагентами; составление различных юридических документов и т.д. Данные услуги были оказаны своевременно и качественно.', 'Анна Свиридова', '', 'publish', 'closed', 'closed', '', '%d0%b0%d0%bd%d0%bd%d0%b0-%d1%81%d0%b2%d0%b8%d1%80%d0%b8%d0%b4%d0%be%d0%b2%d0%b0', '', '', '2020-05-07 08:14:17', '2020-05-07 08:14:17', '', 0, 'http://localhost/universe/?post_type=testimonial&#038;p=33', 0, 'testimonial', '', 0),
(34, 1, '2020-05-07 08:02:42', '2020-05-07 08:02:42', '', '', '', 'inherit', 'open', 'closed', '', 'callback6', '', '', '2020-05-07 08:10:29', '2020-05-07 08:10:29', '', 33, 'http://localhost/universe/wp-content/uploads/2020/05/callback6.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2020-05-07 08:02:43', '2020-05-07 08:02:43', '', '', '', 'inherit', 'open', 'closed', '', 'callback1', '', '', '2020-05-07 08:03:45', '2020-05-07 08:03:45', '', 33, 'http://localhost/universe/wp-content/uploads/2020/05/callback1.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2020-05-07 08:02:44', '2020-05-07 08:02:44', '', '', '', 'inherit', 'open', 'closed', '', 'callback2', '', '', '2020-05-07 08:06:26', '2020-05-07 08:06:26', '', 33, 'http://localhost/universe/wp-content/uploads/2020/05/callback2.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2020-05-07 08:02:45', '2020-05-07 08:02:45', '', '', '', 'inherit', 'open', 'closed', '', 'callback3', '', '', '2020-05-07 08:07:10', '2020-05-07 08:07:10', '', 33, 'http://localhost/universe/wp-content/uploads/2020/05/callback3.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2020-05-07 08:02:47', '2020-05-07 08:02:47', '', '', '', 'inherit', 'open', 'closed', '', 'callback4', '', '', '2020-05-07 08:09:11', '2020-05-07 08:09:11', '', 33, 'http://localhost/universe/wp-content/uploads/2020/05/callback4.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2020-05-07 08:02:48', '2020-05-07 08:02:48', '', '', '', 'inherit', 'open', 'closed', '', 'callback5', '', '', '2020-05-07 08:09:50', '2020-05-07 08:09:50', '', 33, 'http://localhost/universe/wp-content/uploads/2020/05/callback5.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2020-05-07 08:06:33', '2020-05-07 08:06:33', 'Наша компания ведет свою деятельность в сфере ИТ-бизнеса, которая на сегодняшний день является специфической областью для правового регулирования. Хотелось бы оставить свой отзыв о Юридической компании JC. Очень меня выручили, спасибо им большое за помощь. Это мой не первый опыт сотрудничества с юридическими фирмами, и везде присутствовали недостатки. К счастью, в этой компании не было никаких проблем. Все очень быстро и главное uрамотно сделали. Огромный плюс - быстрая запись на консультацию и подготовка нужных\r\n\r\nНашей организации был предоставлен обширный перечень юридических услуг, таких как устные и письменные консультации; экспертиза документов и деятельности нашей компании; представление наших интересов перед контрагентами; составление различных юридических документов и т.д. Данные услуги были оказаны своевременно и качественно.', 'Екатерина Еременко', '', 'publish', 'closed', 'closed', '', '%d0%b5%d0%ba%d0%b0%d1%82%d0%b5%d1%80%d0%b8%d0%bd%d0%b0-%d0%b5%d1%80%d0%b5%d0%bc%d0%b5%d0%bd%d0%ba%d0%be', '', '', '2020-05-07 08:14:39', '2020-05-07 08:14:39', '', 0, 'http://localhost/universe/?post_type=testimonial&#038;p=40', 0, 'testimonial', '', 0),
(41, 1, '2020-05-07 08:07:18', '2020-05-07 08:07:18', 'Наша компания ведет свою деятельность в сфере ИТ-бизнеса, которая на сегодняшний день является специфической областью для правового регулирования. Хотелось бы оставить свой отзыв о Юридической компании JC. Очень меня выручили, спасибо им большое за помощь. Это мой не первый опыт сотрудничества с юридическими фирмами, и везде присутствовали недостатки. К счастью, в этой компании не было никаких проблем. Все очень быстро и главное uрамотно сделали. Огромный плюс - быстрая запись на консультацию и подготовка нужных\r\n\r\nНашей организации был предоставлен обширный перечень юридических услуг, таких как устные и письменные консультации; экспертиза документов и деятельности нашей компании; представление наших интересов перед контрагентами; составление различных юридических документов и т.д. Данные услуги были оказаны своевременно и качественно.', 'Алла Анохина', '', 'publish', 'closed', 'closed', '', '%d0%b0%d0%bb%d0%bb%d0%b0-%d0%b0%d0%bd%d0%be%d1%85%d0%b8%d0%bd%d0%b0', '', '', '2020-05-07 08:14:59', '2020-05-07 08:14:59', '', 0, 'http://localhost/universe/?post_type=testimonial&#038;p=41', 0, 'testimonial', '', 0),
(43, 1, '2020-05-07 08:09:17', '2020-05-07 08:09:17', 'Наша компания ведет свою деятельность в сфере ИТ-бизнеса, которая на сегодняшний день является специфической областью для правового регулирования. Хотелось бы оставить свой отзыв о Юридической компании JC. Очень меня выручили, спасибо им большое за помощь. Это мой не первый опыт сотрудничества с юридическими фирмами, и везде присутствовали недостатки. К счастью, в этой компании не было никаких проблем. Все очень быстро и главное uрамотно сделали. Огромный плюс - быстрая запись на консультацию и подготовка нужных\r\n\r\nНашей организации был предоставлен обширный перечень юридических услуг, таких как устные и письменные консультации; экспертиза документов и деятельности нашей компании; представление наших интересов перед контрагентами; составление различных юридических документов и т.д. Данные услуги были оказаны своевременно и качественно.', 'Юрий Богдан', '', 'publish', 'closed', 'closed', '', '%d1%8e%d1%80%d0%b8%d0%b9-%d0%b1%d0%be%d0%b3%d0%b4%d0%b0%d0%bd', '', '', '2020-05-07 08:13:20', '2020-05-07 08:13:20', '', 0, 'http://localhost/universe/?post_type=testimonial&#038;p=43', 0, 'testimonial', '', 0),
(44, 1, '2020-05-07 08:09:57', '2020-05-07 08:09:57', 'Наша компания ведет свою деятельность в сфере ИТ-бизнеса, которая на сегодняшний день является специфической областью для правового регулирования. Хотелось бы оставить свой отзыв о Юридической компании JC. Очень меня выручили, спасибо им большое за помощь. Это мой не первый опыт сотрудничества с юридическими фирмами, и везде присутствовали недостатки. К счастью, в этой компании не было никаких проблем. Все очень быстро и главное uрамотно сделали. Огромный плюс - быстрая запись на консультацию и подготовка нужных\r\n\r\nНашей организации был предоставлен обширный перечень юридических услуг, таких как устные и письменные консультации; экспертиза документов и деятельности нашей компании; представление наших интересов перед контрагентами; составление различных юридических документов и т.д. Данные услуги были оказаны своевременно и качественно.', 'Мария Иванова', '', 'publish', 'closed', 'closed', '', '%d0%bc%d0%b0%d1%80%d0%b8%d1%8f-%d0%b8%d0%b2%d0%b0%d0%bd%d0%be%d0%b2%d0%b0', '', '', '2020-05-07 08:15:22', '2020-05-07 08:15:22', '', 0, 'http://localhost/universe/?post_type=testimonial&#038;p=44', 0, 'testimonial', '', 0),
(45, 1, '2020-05-07 08:10:36', '2020-05-07 08:10:36', 'Наша компания ведет свою деятельность в сфере ИТ-бизнеса, которая на сегодняшний день является специфической областью для правового регулирования. Хотелось бы оставить свой отзыв о Юридической компании JC. Очень меня выручили, спасибо им большое за помощь. Это мой не первый опыт сотрудничества с юридическими фирмами, и везде присутствовали недостатки. К счастью, в этой компании не было никаких проблем. Все очень быстро и главное uрамотно сделали. Огромный плюс - быстрая запись на консультацию и подготовка нужных\r\n\r\nНашей организации был предоставлен обширный перечень юридических услуг, таких как устные и письменные консультации; экспертиза документов и деятельности нашей компании; представление наших интересов перед контрагентами; составление различных юридических документов и т.д. Данные услуги были оказаны своевременно и качественно.', 'Дмитрий Борсук', '', 'publish', 'closed', 'closed', '', '%d0%b4%d0%bc%d0%b8%d1%82%d1%80%d0%b8%d0%b9-%d0%b1%d0%be%d1%80%d1%81%d1%83%d0%ba', '', '', '2020-05-07 08:15:43', '2020-05-07 08:15:43', '', 0, 'http://localhost/universe/?post_type=testimonial&#038;p=45', 0, 'testimonial', '', 0),
(46, 1, '2020-05-07 08:20:41', '2020-05-07 08:20:41', '<div class=\"clients__form-block\">\r\n    <div class=\"log clients__form review-form\" id=\"popupMessage\"> \r\n        <p class=\"log__title\">Оставьте ваш отзыв</p>\r\n        <div class=\"log__wrap\">\r\n            <div class=\"log__group\">\r\n                <label>Имя</label>\r\n                [text* your-name class:log__input]\r\n            </div>\r\n            <div class=\"log__group\">\r\n                <label>Email</label>\r\n                [email* your-email class:log__input]\r\n            </div>\r\n            <div class=\"log__group\">\r\n                <label>Телефон</label>\r\n                [number* number-903 class:log__input]\r\n            </div>\r\n            <div class=\"log__group log__group_socials\">\r\n                <label>Ссылка на соцсеть</label>\r\n                [text social-14 class:log__input]\r\n            </div>\r\n            <div class=\"log__group log__group_textarea\">\r\n                <label>Ваш отзыв</label>\r\n                [textarea message class:log__input]\r\n            </div>\r\n            <p class=\"log__line\"><span>*</span>Поля обязательные для заполнения</p>\r\n            <div class=\"log__btn\">\r\n                [submit class:btn \"Отправить\"]\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>\n1\nJC \"[your-subject]\"\nJC <viewerrr@gmail.com>\nviewerrr@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on JC (http://localhost/universe)\nReply-To: [your-email]\n\n\n\n\nJC \"[your-subject]\"\nJC <viewerrr@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on JC (http://localhost/universe)\nReply-To: viewerrr@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Form for page Testimonial', '', 'publish', 'closed', 'closed', '', 'untitled', '', '', '2020-05-07 08:22:07', '2020-05-07 08:22:07', '', 0, 'http://localhost/universe/?post_type=wpcf7_contact_form&#038;p=46', 0, 'wpcf7_contact_form', '', 0),
(47, 1, '2020-05-07 08:32:43', '2020-05-07 08:32:43', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2020-05-07 08:32:43', '2020-05-07 08:32:43', '', 0, 'http://localhost/universe/?p=47', 4, 'nav_menu_item', '', 0),
(48, 1, '2020-05-07 08:33:31', '2020-05-07 08:33:31', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2020-05-12 18:33:28', '2020-05-12 18:33:28', '', 0, 'http://localhost/universe/?p=48', 10, 'nav_menu_item', '', 0),
(49, 1, '2020-05-07 08:44:53', '2020-05-07 08:44:53', 'Наша компания ведет свою деятельность в сфере ИТ-бизнеса, которая на сегодняшний день является специфической областью для правового регулирования. Хотелось бы оставить свой отзыв о Юридической компании JC. Очень меня выручили, спасибо им большое за помощь. Это мой не первый опыт сотрудничества с юридическими фирмами, и везде присутствовали недостатки. К счастью, в этой компании не было никаких проблем. Все очень быстро и главное uрамотно сделали. Огромный плюс – быстрая запись на консультацию и подготовка нужных\r\n\r\nНашей организации был предоставлен обширный перечень юридических услуг, таких как устные и письменные консультации; экспертиза документов и деятельности нашей компании; представление наших интересов перед контрагентами; составление различных юридических документов и т.д. Данные услуги были оказаны своевременно и качественно.', 'Иван Руденя', '', 'publish', 'closed', 'closed', '', '%d0%b8%d0%b2%d0%b0%d0%bd-%d1%80%d1%83%d0%b4%d0%b5%d0%bd%d1%8f', '', '', '2020-05-07 08:44:53', '2020-05-07 08:44:53', '', 0, 'http://localhost/universe/?post_type=testimonial&#038;p=49', 0, 'testimonial', '', 0),
(50, 1, '2020-05-07 08:44:39', '2020-05-07 08:44:39', '', '', '', 'inherit', 'open', 'closed', '', 'callback7', '', '', '2020-05-07 08:44:50', '2020-05-07 08:44:50', '', 49, 'http://localhost/universe/wp-content/uploads/2020/05/callback7.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2020-05-07 09:37:43', '2020-05-07 09:37:43', 'Каждая сделка рассматривается нами как уникальная и ее реализация является нашей приоритетной задачей. С большой степенью ответственности мы подходим к разрешению вопросов в области инкорпорации и деятельности компаний, акционерных соглашений, других способов структуризации отношений между участниками, иных вопросов в области корпоративного права. Мы также разрабатываем варианты по использованию институтов коллективных инвестиций для существенного снижения рисков рейдерского захвата и иных недружественных действий с имуществом, для оптимизации налоговой нагрузки.\r\n\r\nПреимуществом компании является наличие опыта решения ситуаций, прямо неурегулированных в законодательстве или не имеющих практики разрешения.\r\n\r\nМы оказываем содействие в решении любой юридической задачи в вопросах слияний и поглощений, корпоративного права, независимо от ее сложности (консультации, аналитика, реализация сделок).', 'Корпоративное право и M&A', 'Услуги в области корпоративного управления, рынков капитала, M&A', 'publish', 'closed', 'closed', '', 'service_one', '', '', '2020-05-12 18:21:11', '2020-05-12 18:21:11', '', 0, 'http://localhost/universe/?post_type=service&#038;p=51', 0, 'service', '', 0),
(52, 1, '2020-05-07 09:34:38', '2020-05-07 09:34:38', 'Юридическая фирма JC консультирует как российские, так и зарубежные компании по всем вопросам корпоративного права.', '', '', 'inherit', 'open', 'closed', '', 'service-img', '', '', '2020-05-07 09:37:14', '2020-05-07 09:37:14', '', 51, 'http://localhost/universe/wp-content/uploads/2020/05/service-img.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2020-05-07 11:15:39', '2020-05-07 11:15:39', '', 'Testimonial', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2020-05-07 11:15:39', '2020-05-07 11:15:39', '', 32, 'http://localhost/universe/2020/05/07/32-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2020-05-07 11:16:21', '2020-05-07 11:16:21', '', 'Contacts', '', 'publish', 'closed', 'closed', '', 'contacts', '', '', '2020-05-07 11:16:21', '2020-05-07 11:16:21', '', 0, 'http://localhost/universe/?page_id=56', 0, 'page', '', 0),
(57, 1, '2020-05-07 11:16:21', '2020-05-07 11:16:21', '', 'Contacts', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2020-05-07 11:16:21', '2020-05-07 11:16:21', '', 56, 'http://localhost/universe/2020/05/07/56-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2020-05-07 11:16:46', '2020-05-07 11:16:46', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2020-05-07 11:16:46', '2020-05-07 11:16:46', '', 0, 'http://localhost/universe/?page_id=58', 0, 'page', '', 0),
(59, 1, '2020-05-07 11:16:46', '2020-05-07 11:16:46', '', 'About', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2020-05-07 11:16:46', '2020-05-07 11:16:46', '', 58, 'http://localhost/universe/2020/05/07/58-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2020-05-07 11:19:06', '2020-05-07 11:19:06', '', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2020-05-08 10:55:03', '2020-05-08 10:55:03', '', 0, 'http://localhost/universe/?page_id=60', 0, 'page', '', 0),
(61, 1, '2020-05-07 11:19:06', '2020-05-07 11:19:06', '', 'Checkout', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2020-05-07 11:19:06', '2020-05-07 11:19:06', '', 60, 'http://localhost/universe/2020/05/07/60-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2020-05-07 11:23:04', '2020-05-07 11:23:04', '', 'order-img', '', 'inherit', 'open', 'closed', '', 'order-img', '', '', '2020-05-07 11:23:04', '2020-05-07 11:23:04', '', 60, 'http://localhost/universe/wp-content/uploads/2020/05/order-img.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2020-05-08 11:18:01', '2020-05-08 11:18:01', 'Компания JC успешно защитила интересы ведущего глобального поставщика специализированной химическойпродукции в споре с органом Государственной фискальной службы Украины (проще говоря, с налоговым органом).\r\n\r\nСам спор возник из-за противоправных действий должностных лиц налоговой инспекции. Они посетили ООО с плановой выездной проверкой по вопросам соблюдения налогового, валютного и другого законодательства. По ее результатам был составлен акт (документ, отражающий результаты проверки) о, по их словам, выявленных нарушений, а именно: якобы были специально занижены реальные размеры по 2-м налогам - суммы налога на прибыль и НДС. То есть фактически ООО было обвинено в уклонении от уплаты налогов! И как следствие визита, были вынесены налоговые уведомления-решения по обязательствам уплаты более 3 млн. грн. (!!!) незаконно начисленных сумм налогового обязательства.\r\n\r\nПравовая защита интересов Клиента в уголовном производстве осуществлялась адвокатом Сергеем Михайленко. Дело было окончательно и безапелляционно закрыто в связи с отсутствием в действиях должностных лиц ООО состава преступления.', 'Взыскание задолженности с дебитора', '', 'publish', 'closed', 'closed', '', '%d0%b2%d0%b7%d1%8b%d1%81%d0%ba%d0%b0%d0%bd%d0%b8%d0%b5-%d0%b7%d0%b0%d0%b4%d0%be%d0%bb%d0%b6%d0%b5%d0%bd%d0%bd%d0%be%d1%81%d1%82%d0%b8-%d1%81-%d0%b4%d0%b5%d0%b1%d0%b8%d1%82%d0%be%d1%80%d0%b0', '', '', '2020-05-08 11:18:01', '2020-05-08 11:18:01', '', 0, 'http://localhost/universe/?post_type=feature&#038;p=65', 0, 'feature', '', 0),
(66, 1, '2020-05-08 11:17:45', '2020-05-08 11:17:45', '', '', '', 'inherit', 'open', 'closed', '', 'case4', '', '', '2020-05-08 11:24:25', '2020-05-08 11:24:25', '', 65, 'http://localhost/universe/wp-content/uploads/2020/05/case4.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2020-05-08 11:17:47', '2020-05-08 11:17:47', '', '', '', 'inherit', 'open', 'closed', '', 'case1', '', '', '2020-05-08 11:17:56', '2020-05-08 11:17:56', '', 65, 'http://localhost/universe/wp-content/uploads/2020/05/case1.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2020-05-08 11:17:48', '2020-05-08 11:17:48', '', 'case2', '', 'inherit', 'open', 'closed', '', 'case2', '', '', '2020-05-08 11:17:48', '2020-05-08 11:17:48', '', 65, 'http://localhost/universe/wp-content/uploads/2020/05/case2.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2020-05-08 11:17:50', '2020-05-08 11:17:50', '', 'case3', '', 'inherit', 'open', 'closed', '', 'case3', '', '', '2020-05-08 11:17:50', '2020-05-08 11:17:50', '', 65, 'http://localhost/universe/wp-content/uploads/2020/05/case3.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2020-05-08 11:22:49', '2020-05-08 11:22:49', 'Компания JC успешно защитила интересы ведущего глобального поставщика специализированной химическойпродукции в споре с органом Государственной фискальной службы Украины (проще говоря, с налоговым органом).\r\n\r\nСам спор возник из-за противоправных действий должностных лиц налоговой инспекции. Они посетили ООО с плановой выездной проверкой по вопросам соблюдения налогового, валютного и другого законодательства. По ее результатам был составлен акт (документ, отражающий результаты проверки) о, по их словам, выявленных нарушений, а именно: якобы были специально занижены реальные размеры по 2-м налогам - суммы налога на прибыль и НДС. То есть фактически ООО было обвинено в уклонении от уплаты налогов! И как следствие визита, были вынесены налоговые уведомления-решения по обязательствам уплаты более 3 млн. грн. (!!!) незаконно начисленных сумм налогового обязательства.\r\n\r\nПравовая защита интересов Клиента в уголовном производстве осуществлялась адвокатом Сергеем Михайленко. Дело было окончательно и безапелляционно закрыто в связи с отсутствием в действиях должностных лиц ООО состава преступления.', 'Вывод денег через текущие платежи', '', 'publish', 'closed', 'closed', '', '%d0%b2%d1%8b%d0%b2%d0%be%d0%b4-%d0%b4%d0%b5%d0%bd%d0%b5%d0%b3-%d1%87%d0%b5%d1%80%d0%b5%d0%b7-%d1%82%d0%b5%d0%ba%d1%83%d1%89%d0%b8%d0%b5-%d0%bf%d0%bb%d0%b0%d1%82%d0%b5%d0%b6%d0%b8', '', '', '2020-05-08 11:22:49', '2020-05-08 11:22:49', '', 0, 'http://localhost/universe/?post_type=feature&#038;p=70', 0, 'feature', '', 0),
(71, 1, '2020-05-08 11:23:41', '2020-05-08 11:23:41', '<div class=\"inner__text\">\r\n\r\nКомпания JC успешно защитила интересы ведущего глобального поставщика специализированной химическойпродукции в споре с органом Государственной фискальной службы Украины (проще говоря, с налоговым органом).\r\n\r\nСам спор возник из-за противоправных действий должностных лиц налоговой инспекции. Они посетили ООО с плановой выездной проверкой по вопросам соблюдения налогового, валютного и другого законодательства. По ее результатам был составлен акт (документ, отражающий результаты проверки) о, по их словам, выявленных нарушений, а именно: якобы были специально занижены реальные размеры по 2-м налогам - суммы налога на прибыль и НДС. То есть фактически ООО было обвинено в уклонении от уплаты налогов! И как следствие визита, были вынесены налоговые уведомления-решения по обязательствам уплаты более 3 млн. грн. (!!!) незаконно начисленных сумм налогового обязательства.\r\n\r\nПравовая защита интересов Клиента в уголовном производстве осуществлялась адвокатом Сергеем Михайленко. Дело было окончательно и безапелляционно закрыто в связи с отсутствием в действиях должностных лиц ООО состава преступления.\r\n\r\n</div>\r\n<div class=\"gallery\">\r\n<div class=\"gallery__item blue-noise\"></div>\r\n</div>', 'Урегулирование налогового спора', '', 'publish', 'closed', 'closed', '', '%d1%83%d1%80%d0%b5%d0%b3%d1%83%d0%bb%d0%b8%d1%80%d0%be%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5-%d0%bd%d0%b0%d0%bb%d0%be%d0%b3%d0%be%d0%b2%d0%be%d0%b3%d0%be-%d1%81%d0%bf%d0%be%d1%80%d0%b0', '', '', '2020-05-08 11:23:41', '2020-05-08 11:23:41', '', 0, 'http://localhost/universe/?post_type=feature&#038;p=71', 0, 'feature', '', 0),
(72, 1, '2020-05-08 11:28:15', '2020-05-08 11:28:15', 'Компания JC успешно защитила интересы ведущего глобального поставщика специализированной химическойпродукции в споре с органом Государственной фискальной службы Украины (проще говоря, с налоговым органом).\r\n\r\nСам спор возник из-за противоправных действий должностных лиц налоговой инспекции. Они посетили ООО с плановой выездной проверкой по вопросам соблюдения налогового, валютного и другого законодательства. По ее результатам был составлен акт (документ, отражающий результаты проверки) о, по их словам, выявленных нарушений, а именно: якобы были специально занижены реальные размеры по 2-м налогам - суммы налога на прибыль и НДС. То есть фактически ООО было обвинено в уклонении от уплаты налогов! И как следствие визита, были вынесены налоговые уведомления-решения по обязательствам уплаты более 3 млн. грн. (!!!) незаконно начисленных сумм налогового обязательства.\r\n\r\nПравовая защита интересов Клиента в уголовном производстве осуществлялась адвокатом Сергеем Михайленко. Дело было окончательно и безапелляционно закрыто в связи с отсутствием в действиях должностных лиц ООО состава преступления.', 'Представление интересов компании PPD', '', 'publish', 'closed', 'closed', '', '%d0%bf%d1%80%d0%b5%d0%b4%d1%81%d1%82%d0%b0%d0%b2%d0%bb%d0%b5%d0%bd%d0%b8%d0%b5-%d0%b8%d0%bd%d1%82%d0%b5%d1%80%d0%b5%d1%81%d0%be%d0%b2-%d0%ba%d0%be%d0%bc%d0%bf%d0%b0%d0%bd%d0%b8%d0%b8-ppd', '', '', '2020-05-08 11:28:15', '2020-05-08 11:28:15', '', 0, 'http://localhost/universe/?post_type=feature&#038;p=72', 0, 'feature', '', 0),
(73, 1, '2020-05-11 16:44:06', '2020-05-11 16:44:06', 'Каждая сделка рассматривается нами как уникальная и ее реализация является нашей приоритетной задачей. С большой степенью ответственности мы подходим к разрешению вопросов в области инкорпорации и деятельности компаний, акционерных соглашений, других способов структуризации отношений между участниками, иных вопросов в области корпоративного права. Мы также разрабатываем варианты по использованию институтов коллективных инвестиций для существенного снижения рисков рейдерского захвата и иных недружественных действий с имуществом, для оптимизации налоговой нагрузки.\r\n\r\nПреимуществом компании является наличие опыта решения ситуаций, прямо неурегулированных в законодательстве или не имеющих практики разрешения.\r\n\r\nМы оказываем содействие в решении любой юридической задачи в вопросах слияний и поглощений, корпоративного права, независимо от ее сложности (консультации, аналитика, реализация сделок).', 'Интеллектуальная собственность', 'Весь спектр услуг в сфере интеллектуальной собственности\r\n\r\n', 'publish', 'closed', 'closed', '', 'service_two', '', '', '2020-05-12 18:37:38', '2020-05-12 18:37:38', '', 0, 'http://localhost/universe/?post_type=service&#038;p=73', 0, 'service', '', 0),
(74, 1, '2020-05-11 16:44:53', '2020-05-11 16:44:53', 'Каждая сделка рассматривается нами как уникальная и ее реализация является нашей приоритетной задачей. С большой степенью ответственности мы подходим к разрешению вопросов в области инкорпорации и деятельности компаний, акционерных соглашений, других способов структуризации отношений между участниками, иных вопросов в области корпоративного права. Мы также разрабатываем варианты по использованию институтов коллективных инвестиций для существенного снижения рисков рейдерского захвата и иных недружественных действий с имуществом, для оптимизации налоговой нагрузки.\r\n\r\nПреимуществом компании является наличие опыта решения ситуаций, прямо неурегулированных в законодательстве или не имеющих практики разрешения.\r\n\r\nМы оказываем содействие в решении любой юридической задачи в вопросах слияний и поглощений, корпоративного права, независимо от ее сложности (консультации, аналитика, реализация сделок).', 'Интернет-бизнес и цифровая экономика', 'Весь спектр юридических услуг по сопровождению интернет – проектов', 'publish', 'closed', 'closed', '', 'service_three', '', '', '2020-05-12 18:38:32', '2020-05-12 18:38:32', '', 0, 'http://localhost/universe/?post_type=service&#038;p=74', 0, 'service', '', 0),
(75, 1, '2020-05-11 16:45:55', '2020-05-11 16:45:55', 'Каждая сделка рассматривается нами как уникальная и ее реализация является нашей приоритетной задачей. С большой степенью ответственности мы подходим к разрешению вопросов в области инкорпорации и деятельности компаний, акционерных соглашений, других способов структуризации отношений между участниками, иных вопросов в области корпоративного права. Мы также разрабатываем варианты по использованию институтов коллективных инвестиций для существенного снижения рисков рейдерского захвата и иных недружественных действий с имуществом, для оптимизации налоговой нагрузки.\r\n\r\nПреимуществом компании является наличие опыта решения ситуаций, прямо неурегулированных в законодательстве или не имеющих практики разрешения.\r\n\r\nМы оказываем содействие в решении любой юридической задачи в вопросах слияний и поглощений, корпоративного права, независимо от ее сложности (консультации, аналитика, реализация сделок).', 'Информационные технологии / ТМТ', 'Комплексная юридическая поддержка бизнеса в сфере связи, медиа, рекламы', 'publish', 'closed', 'closed', '', 'service_four', '', '', '2020-05-12 18:38:54', '2020-05-12 18:38:54', '', 0, 'http://localhost/universe/?post_type=service&#038;p=75', 0, 'service', '', 0),
(76, 1, '2020-05-11 16:46:48', '2020-05-11 16:46:48', 'Каждая сделка рассматривается нами как уникальная и ее реализация является нашей приоритетной задачей. С большой степенью ответственности мы подходим к разрешению вопросов в области инкорпорации и деятельности компаний, акционерных соглашений, других способов структуризации отношений между участниками, иных вопросов в области корпоративного права. Мы также разрабатываем варианты по использованию институтов коллективных инвестиций для существенного снижения рисков рейдерского захвата и иных недружественных действий с имуществом, для оптимизации налоговой нагрузки.\r\n\r\nПреимуществом компании является наличие опыта решения ситуаций, прямо неурегулированных в законодательстве или не имеющих практики разрешения.\r\n\r\nМы оказываем содействие в решении любой юридической задачи в вопросах слияний и поглощений, корпоративного права, независимо от ее сложности (консультации, аналитика, реализация сделок).', 'Government Relations', 'Решение вопросов, связанных с регулированием бизнеса', 'publish', 'closed', 'closed', '', 'service_five', '', '', '2020-05-12 18:39:15', '2020-05-12 18:39:15', '', 0, 'http://localhost/universe/?post_type=service&#038;p=76', 0, 'service', '', 0),
(77, 1, '2020-05-11 16:47:51', '2020-05-11 16:47:51', 'Услуги по комплексному юридическому сопровождению бизнеса\r\n\r\nКаждая сделка рассматривается нами как уникальная и ее реализация является нашей приоритетной задачей. С большой степенью ответственности мы подходим к разрешению вопросов в области инкорпорации и деятельности компаний, акционерных соглашений, других способов структуризации отношений между участниками, иных вопросов в области корпоративного права. Мы также разрабатываем варианты по использованию институтов коллективных инвестиций для существенного снижения рисков рейдерского захвата и иных недружественных действий с имуществом, для оптимизации налоговой нагрузки.\r\n\r\nПреимуществом компании является наличие опыта решения ситуаций, прямо неурегулированных в законодательстве или не имеющих практики разрешения.\r\n\r\nМы оказываем содействие в решении любой юридической задачи в вопросах слияний и поглощений, корпоративного права, независимо от ее сложности (консультации, аналитика, реализация сделок).', 'Коммерческая практика', 'Услуги по комплексному юридическому сопровождению бизнеса', 'publish', 'closed', 'closed', '', 'service_six', '', '', '2020-05-12 18:39:34', '2020-05-12 18:39:34', '', 0, 'http://localhost/universe/?post_type=service&#038;p=77', 0, 'service', '', 0),
(78, 1, '2020-05-11 17:40:08', '2020-05-11 17:40:08', 'Каждая сделка рассматривается нами как уникальная и ее реализация является нашей приоритетной задачей. С большой степенью ответственности мы подходим к разрешению вопросов в области инкорпорации и деятельности компаний, акционерных соглашений, других способов структуризации отношений между участниками, иных вопросов в области корпоративного права. Мы также разрабатываем варианты по использованию институтов коллективных инвестиций для существенного снижения рисков рейдерского захвата и иных недружественных действий с имуществом, для оптимизации налоговой нагрузки.\n\nПреимуществом компании является наличие опыта решения ситуаций, прямо неурегулированных в законодательстве или не имеющих практики разрешения.\n\nМы оказываем содействие в решении любой юридической задачи в вопросах слияний и поглощений, корпоративного права, независимо от ее сложности (консультации, аналитика, реализация сделок).', 'Интернет-бизнес и цифровая экономика', 'Весь спектр юридических услуг по сопровождению интернет – проектов', 'inherit', 'closed', 'closed', '', '74-autosave-v1', '', '', '2020-05-11 17:40:08', '2020-05-11 17:40:08', '', 74, 'http://localhost/universe/2020/05/11/74-autosave-v1/', 0, 'revision', '', 0),
(79, 1, '2020-05-12 18:22:42', '2020-05-12 18:22:42', 'hrehreheh', 'rgrehherhe', 'dsgdsgds', 'trash', 'closed', 'closed', '', 'rgrehherhe__trashed', '', '', '2020-05-12 18:25:23', '2020-05-12 18:25:23', '', 0, 'http://localhost/universe/?post_type=service&#038;p=79', 0, 'service', '', 0),
(80, 1, '2020-05-12 18:25:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-05-12 18:25:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/universe/?post_type=service&p=80', 0, 'service', '', 0),
(81, 1, '2020-05-12 18:25:15', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-05-12 18:25:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/universe/?post_type=service&p=81', 0, 'service', '', 0),
(82, 1, '2020-05-12 18:33:28', '2020-05-12 18:33:28', ' ', '', '', 'publish', 'closed', 'closed', '', '82', '', '', '2020-05-12 18:33:28', '2020-05-12 18:33:28', '', 0, 'http://localhost/universe/?p=82', 3, 'nav_menu_item', '', 0),
(83, 1, '2020-05-12 18:33:28', '2020-05-12 18:33:28', ' ', '', '', 'publish', 'closed', 'closed', '', '83', '', '', '2020-05-12 18:33:28', '2020-05-12 18:33:28', '', 0, 'http://localhost/universe/?p=83', 9, 'nav_menu_item', '', 0),
(84, 1, '2020-05-12 18:33:28', '2020-05-12 18:33:28', ' ', '', '', 'publish', 'closed', 'closed', '', '84', '', '', '2020-05-12 18:33:28', '2020-05-12 18:33:28', '', 0, 'http://localhost/universe/?p=84', 8, 'nav_menu_item', '', 0),
(85, 1, '2020-05-12 18:33:28', '2020-05-12 18:33:28', ' ', '', '', 'publish', 'closed', 'closed', '', '85', '', '', '2020-05-12 18:33:28', '2020-05-12 18:33:28', '', 0, 'http://localhost/universe/?p=85', 7, 'nav_menu_item', '', 0),
(86, 1, '2020-05-12 18:33:28', '2020-05-12 18:33:28', ' ', '', '', 'publish', 'closed', 'closed', '', '86', '', '', '2020-05-12 18:33:28', '2020-05-12 18:33:28', '', 0, 'http://localhost/universe/?p=86', 6, 'nav_menu_item', '', 0),
(87, 1, '2020-05-12 18:33:28', '2020-05-12 18:33:28', ' ', '', '', 'publish', 'closed', 'closed', '', '87', '', '', '2020-05-12 18:33:28', '2020-05-12 18:33:28', '', 0, 'http://localhost/universe/?p=87', 5, 'nav_menu_item', '', 0),
(88, 1, '2020-05-12 18:33:28', '2020-05-12 18:33:28', ' ', '', '', 'publish', 'closed', 'closed', '', '88', '', '', '2020-05-12 18:33:28', '2020-05-12 18:33:28', '', 0, 'http://localhost/universe/?p=88', 4, 'nav_menu_item', '', 0),
(89, 1, '2020-05-12 18:35:33', '2020-05-12 18:35:33', ' ', '', '', 'publish', 'closed', 'closed', '', '89', '', '', '2020-05-12 18:36:18', '2020-05-12 18:36:18', '', 0, 'http://localhost/universe/?p=89', 6, 'nav_menu_item', '', 0),
(90, 1, '2020-05-12 18:35:33', '2020-05-12 18:35:33', '', 'Government <br> Relations', '', 'publish', 'closed', 'closed', '', '90', '', '', '2020-05-12 18:36:18', '2020-05-12 18:36:18', '', 0, 'http://localhost/universe/?p=90', 4, 'nav_menu_item', '', 0),
(91, 1, '2020-05-12 18:35:33', '2020-05-12 18:35:33', ' ', '', '', 'publish', 'closed', 'closed', '', '91', '', '', '2020-05-12 18:36:18', '2020-05-12 18:36:18', '', 0, 'http://localhost/universe/?p=91', 2, 'nav_menu_item', '', 0),
(92, 1, '2020-05-12 18:35:33', '2020-05-12 18:35:33', ' ', '', '', 'publish', 'closed', 'closed', '', '92', '', '', '2020-05-12 18:36:18', '2020-05-12 18:36:18', '', 0, 'http://localhost/universe/?p=92', 5, 'nav_menu_item', '', 0),
(93, 1, '2020-05-12 18:35:33', '2020-05-12 18:35:33', ' ', '', '', 'publish', 'closed', 'closed', '', '93', '', '', '2020-05-12 18:36:18', '2020-05-12 18:36:18', '', 0, 'http://localhost/universe/?p=93', 3, 'nav_menu_item', '', 0),
(94, 1, '2020-05-12 18:35:32', '2020-05-12 18:35:32', ' ', '', '', 'publish', 'closed', 'closed', '', '94', '', '', '2020-05-12 18:36:18', '2020-05-12 18:36:18', '', 0, 'http://localhost/universe/?p=94', 1, 'nav_menu_item', '', 0);
INSERT INTO `unirse_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(95, 1, '2020-05-14 10:18:41', '2020-05-14 10:18:41', 'Взаимодействие между юридическими лицами осуществляется исключительно по договору. Однако, если сотрудничать с сомнительными компаниями, даже подписанные документы не гарантируют финансовой безопасности.\r\n\r\nК сожалению, компании-должники часто ведут себя недобросовестно. Они не поддерживают диалог, не отвечают на официальную корреспонденцию, не говоря уже о том, что не извещают должным образом о начале процессе ликвидации фирмы. В результате вы ожидаете поступление денежных средств от фирмы, которой уже не существует.\r\n\r\nИ всё же закон на вашей стороне. Он гласит, что если организация не уведомила кредиторов о начале процесса ликвидации, вследствие чего их требования не попали в ликвидационный баланс, денежные средства можно вернуть, даже если предприятие успешно закрылось.\r\n<h4 class=\"event__subtitle\">Как оспорить решение налоговой инспекции</h4>\r\nПроцесс ликвидации завершается сразу после внесения соответствующей записи в ЕГРЮЛ. Однако решениеИФНС возможно оспорить в вышестоящей инстанции или суде.\r\n\r\nЕсли вы решили действовать через суд, следует подать заявление с требованием о признании решения ИФНС недействительным. Законодательством предусмотрен особый порядок подачи подобных заявлений. Он представлен в гл. 24 АПК. Следует помнить о сроках обращения в суд. Он отсчитывается с момента занесения соответствующей записи в ЕГРЮЛ. Заявление следует обязательно обосновать. Так вы можете сообщить о том, что должник не уведомил кредиторов о начале процесса ликвидации или о неверных данных, которые получила налоговая инспекция.\r\n<h4 class=\"event__subtitle\">Как взыскать задолженность с физических лиц</h4>\r\nСуд может вынести решение о том, что ликвидация фирмы-должника произведена законно. В этом случае можно предъявить требования о возмещении убытков к членам ликвидационной комиссии. Однако придётся доказать совокупность обстоятельств.\r\n\r\n<img class=\"alignnone size-full wp-image-96\" src=\"http://localhost/universe/wp-content/uploads/2020/05/post.jpg\" alt=\"\" width=\"979\" height=\"395\" />\r\n<h4 class=\"event__subtitle\">Как получить деньги через распределение имущества</h4>\r\nТакже вы вправе подать иск о распределении имущества должника, если оно осталось у ликвидированной компании. Особенности данной процедуры подробно расписаны в ст. 64 ГК. Кроме того, к имуществу компании относятся его требования к третьим лицам. Это может быть даже исполнение обязательств, не выполненных из-за нарушения очерёдности. Важно соблюдать сроки подачи заявления. Должно пройти не более 5 лет с даты внесения соответствующей записи в ЕГРЮЛ, то есть даты, когда компания должник официально перестала вести деятельность.\r\n\r\nЧтобы вернуть задолженность в кратчайшие сроки, обращайтесь в юридическую компанию. Мы проведем тщательный правовой анализ, поможем собрать все необходимые документы и грамотно обоснуем ваши требования. Ваши деньги не исчезнут с ликвидацией должника.', 'Как вернуть долг, если должник ликвидировался?', 'Взаимодействие между юридическими лицами осуществляется исключительно по договору. Однако, если сотрудничать с сомнительными компаниями, даже подписанные документы не гарантируют финансовой безопасности.', 'publish', 'closed', 'closed', '', '%d0%ba%d0%b0%d0%ba-%d0%b2%d0%b5%d1%80%d0%bd%d1%83%d1%82%d1%8c-%d0%b4%d0%be%d0%bb%d0%b3-%d0%b5%d1%81%d0%bb%d0%b8-%d0%b4%d0%be%d0%bb%d0%b6%d0%bd%d0%b8%d0%ba-%d0%bb%d0%b8%d0%ba%d0%b2%d0%b8%d0%b4%d0%b8', '', '', '2020-05-17 19:07:42', '2020-05-17 19:07:42', '', 0, 'http://localhost/universe/?post_type=news&#038;p=95', 0, 'news', '', 0),
(96, 1, '2020-05-14 10:12:54', '2020-05-14 10:12:54', '', 'post', '', 'inherit', 'open', 'closed', '', 'post', '', '', '2020-05-14 10:12:54', '2020-05-14 10:12:54', '', 95, 'http://localhost/universe/wp-content/uploads/2020/05/post.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2020-05-14 10:17:59', '2020-05-14 10:17:59', '', 'post-bg', '', 'inherit', 'open', 'closed', '', 'post-bg', '', '', '2020-05-14 10:17:59', '2020-05-14 10:17:59', '', 95, 'http://localhost/universe/wp-content/uploads/2020/05/post-bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2020-05-15 09:01:01', '2020-05-15 09:01:01', 'Лучшие юридические компании Москвы зарабатывают свою репутацию годами. Многие из них существуют более 20 лет, а это серьёзный срок для любой организации. Безусловно, каждая юридическая фирма хочет стать лидером на рынке. Но чем выше конкуренция, тем сложнее удержать позицию.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nЛучшие юридические компании Москвы зарабатывают свою репутацию годами. Многие из них существуют более 20 лет, а это серьёзный срок для любой организации. Безусловно, каждая юридическая фирма хочет стать лидером на рынке. Но чем выше конкуренция, тем сложнее удержать позицию.', 'Лучшие юридические компании Москвы', '', 'publish', 'closed', 'closed', '', '%d0%bb%d1%83%d1%87%d1%88%d0%b8%d0%b5-%d1%8e%d1%80%d0%b8%d0%b4%d0%b8%d1%87%d0%b5%d1%81%d0%ba%d0%b8%d0%b5-%d0%ba%d0%be%d0%bc%d0%bf%d0%b0%d0%bd%d0%b8%d0%b8-%d0%bc%d0%be%d1%81%d0%ba%d0%b2%d1%8b', '', '', '2020-05-17 18:41:12', '2020-05-17 18:41:12', '', 0, 'http://localhost/universe/?post_type=news&#038;p=98', 0, 'news', '', 0),
(99, 1, '2020-05-15 09:03:40', '2020-05-15 09:03:40', '1 января этого года вступил в силу новый Федеральный закон №230-ФЗ защищающий права физических лиц при возврате задолженности, которая просрочена – этот же закон регулирует деятельность коллекторов при выполнении своих функций по взаимодействию с должником.\r\n\r\n&nbsp;\r\n\r\n1 января этого года вступил в силу новый Федеральный закон №230-ФЗ защищающий права физических лиц при возврате задолженности, которая просрочена – этот же закон регулирует деятельность коллекторов при выполнении своих функций по взаимодействию с должником.', 'Что разрешено коллекторам по закону?', '', 'publish', 'closed', 'closed', '', '%d1%87%d1%82%d0%be-%d1%80%d0%b0%d0%b7%d1%80%d0%b5%d1%88%d0%b5%d0%bd%d0%be-%d0%ba%d0%be%d0%bb%d0%bb%d0%b5%d0%ba%d1%82%d0%be%d1%80%d0%b0%d0%bc-%d0%bf%d0%be-%d0%b7%d0%b0%d0%ba%d0%be%d0%bd%d1%83', '', '', '2020-05-17 18:37:20', '2020-05-17 18:37:20', '', 0, 'http://localhost/universe/?post_type=news&#038;p=99', 0, 'news', '', 0),
(101, 1, '2020-05-17 18:41:08', '2020-05-17 18:41:08', '', 'photo1', '', 'inherit', 'open', 'closed', '', 'photo1', '', '', '2020-05-17 18:41:08', '2020-05-17 18:41:08', '', 98, 'http://localhost/universe/wp-content/uploads/2020/05/photo1.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2020-05-17 18:43:53', '2020-05-17 18:43:53', '', 'post-bg', '', 'inherit', 'open', 'closed', '', 'post-bg-2', '', '', '2020-05-17 18:43:53', '2020-05-17 18:43:53', '', 95, 'http://localhost/universe/wp-content/uploads/2020/05/post-bg-1.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `unirse_termmeta`
--

CREATE TABLE `unirse_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `unirse_terms`
--

CREATE TABLE `unirse_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `unirse_terms`
--

INSERT INTO `unirse_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'menu-header', 'menu-header', 0),
(3, 'menu-footer-map', 'menu-footer-map', 0),
(4, 'menu-footer-services', 'menu-footer-services', 0),
(5, 'Стартапы', '%d1%81%d1%82%d0%b0%d1%80%d1%82%d0%b0%d0%bf%d1%8b', 0),
(6, 'Фриланс', '%d1%84%d1%80%d0%b8%d0%bb%d0%b0%d0%bd%d1%81', 0),
(7, 'Малый бизнес', '%d0%bc%d0%b0%d0%bb%d1%8b%d0%b9-%d0%b1%d0%b8%d0%b7%d0%bd%d0%b5%d1%81', 0),
(9, 'Судебная практика', '%d1%81%d1%83%d0%b4%d0%b5%d0%b1%d0%bd%d0%b0%d1%8f-%d0%bf%d1%80%d0%b0%d0%ba%d1%82%d0%b8%d0%ba%d0%b0', 0),
(10, 'Социальная сфера', '%d1%81%d0%be%d1%86%d0%b8%d0%b0%d0%bb%d1%8c%d0%bd%d0%b0%d1%8f-%d1%81%d1%84%d0%b5%d1%80%d0%b0', 0),
(11, 'Налоги и бухучет', '%d0%bd%d0%b0%d0%bb%d0%be%d0%b3%d0%b8-%d0%b8-%d0%b1%d1%83%d1%85%d1%83%d1%87%d0%b5%d1%82', 0),
(12, 'Образование', '%d0%be%d0%b1%d1%80%d0%b0%d0%b7%d0%be%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5', 0),
(13, 'Новости в сфере IT', '%d0%bd%d0%be%d0%b2%d0%be%d1%81%d1%82%d0%b8-%d0%b2-%d1%81%d1%84%d0%b5%d1%80%d0%b5-it', 0),
(14, 'Бизнес', '%d0%b1%d0%b8%d0%b7%d0%bd%d0%b5%d1%81', 0),
(15, 'Проверки', '%d0%bf%d1%80%d0%be%d0%b2%d0%b5%d1%80%d0%ba%d0%b8', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `unirse_term_relationships`
--

CREATE TABLE `unirse_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `unirse_term_relationships`
--

INSERT INTO `unirse_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(9, 2, 0),
(10, 2, 0),
(13, 2, 0),
(14, 2, 0),
(21, 3, 0),
(22, 3, 0),
(23, 3, 0),
(25, 3, 0),
(47, 3, 0),
(48, 2, 0),
(51, 5, 0),
(51, 6, 0),
(51, 7, 0),
(73, 5, 0),
(73, 6, 0),
(73, 7, 0),
(74, 5, 0),
(74, 6, 0),
(74, 7, 0),
(75, 5, 0),
(75, 6, 0),
(75, 7, 0),
(76, 5, 0),
(76, 6, 0),
(76, 7, 0),
(77, 5, 0),
(77, 6, 0),
(77, 7, 0),
(79, 7, 0),
(82, 2, 0),
(83, 2, 0),
(84, 2, 0),
(85, 2, 0),
(86, 2, 0),
(87, 2, 0),
(88, 2, 0),
(89, 4, 0),
(90, 4, 0),
(91, 4, 0),
(92, 4, 0),
(93, 4, 0),
(94, 4, 0),
(95, 9, 0),
(95, 10, 0),
(98, 10, 0),
(98, 14, 0),
(99, 9, 0),
(99, 10, 0),
(99, 14, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `unirse_term_taxonomy`
--

CREATE TABLE `unirse_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `unirse_term_taxonomy`
--

INSERT INTO `unirse_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 12),
(3, 3, 'nav_menu', '', 0, 5),
(4, 4, 'nav_menu', '', 0, 6),
(5, 5, 'service-type', '', 0, 6),
(6, 6, 'service-type', '', 0, 6),
(7, 7, 'service-type', '', 0, 6),
(9, 9, 'news-category', '', 0, 2),
(10, 10, 'news-category', '', 0, 3),
(11, 11, 'news-category', '', 0, 0),
(12, 12, 'news-category', '', 0, 0),
(13, 13, 'news-category', '', 0, 0),
(14, 14, 'news-category', '', 0, 2),
(15, 15, 'news-category', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `unirse_usermeta`
--

CREATE TABLE `unirse_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `unirse_usermeta`
--

INSERT INTO `unirse_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'unirse_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'unirse_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"2a8296b33462f28d13e845c9bd2df2df3eecb13c8904b5e0ebda6c7541c2e08a\";a:4:{s:10:\"expiration\";i:1589910867;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";s:5:\"login\";i:1589738067;}}'),
(17, 1, 'unirse_user-settings', 'mfold=o&libraryContent=browse&imgsize=full'),
(18, 1, 'unirse_user-settings-time', '1589451517'),
(19, 1, 'unirse_dashboard_quick_press_last_post_id', '4'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'unirse_r_tru_u_x', 'a:2:{s:2:\"id\";s:0:\"\";s:7:\"expires\";i:86400;}'),
(23, 1, 'ignore_admin_config_tree_theme_options', '1'),
(24, 1, 'ignore_share_config_tree_theme_options', '1'),
(25, 1, 'nav_menu_recently_edited', '4'),
(26, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(27, 1, 'closedpostboxes_service', 'a:0:{}'),
(28, 1, 'metaboxhidden_service', 'a:1:{i:0;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `unirse_users`
--

CREATE TABLE `unirse_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `unirse_users`
--

INSERT INTO `unirse_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BqWkYtVtl92bcn1VLC3Q6hN.SVgrXX/', 'admin', 'viewerrr@gmail.com', 'http://localhost/universe', '2020-05-06 17:24:12', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `unirse_commentmeta`
--
ALTER TABLE `unirse_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `unirse_comments`
--
ALTER TABLE `unirse_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `unirse_links`
--
ALTER TABLE `unirse_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `unirse_options`
--
ALTER TABLE `unirse_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `unirse_postmeta`
--
ALTER TABLE `unirse_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `unirse_posts`
--
ALTER TABLE `unirse_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `unirse_termmeta`
--
ALTER TABLE `unirse_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `unirse_terms`
--
ALTER TABLE `unirse_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `unirse_term_relationships`
--
ALTER TABLE `unirse_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `unirse_term_taxonomy`
--
ALTER TABLE `unirse_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `unirse_usermeta`
--
ALTER TABLE `unirse_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `unirse_users`
--
ALTER TABLE `unirse_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `unirse_commentmeta`
--
ALTER TABLE `unirse_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `unirse_comments`
--
ALTER TABLE `unirse_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `unirse_links`
--
ALTER TABLE `unirse_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `unirse_options`
--
ALTER TABLE `unirse_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=380;

--
-- AUTO_INCREMENT для таблицы `unirse_postmeta`
--
ALTER TABLE `unirse_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=523;

--
-- AUTO_INCREMENT для таблицы `unirse_posts`
--
ALTER TABLE `unirse_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT для таблицы `unirse_termmeta`
--
ALTER TABLE `unirse_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `unirse_terms`
--
ALTER TABLE `unirse_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `unirse_term_taxonomy`
--
ALTER TABLE `unirse_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `unirse_usermeta`
--
ALTER TABLE `unirse_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `unirse_users`
--
ALTER TABLE `unirse_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
