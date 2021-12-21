-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 17, 2021 at 11:28 AM
-- Server version: 10.3.32-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `react4multisite`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_2_actionscheduler_actions`
--

CREATE TABLE `wp_2_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_2_actionscheduler_claims`
--

CREATE TABLE `wp_2_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_2_actionscheduler_groups`
--

CREATE TABLE `wp_2_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_2_actionscheduler_groups`
--

INSERT INTO `wp_2_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration');

-- --------------------------------------------------------

--
-- Table structure for table `wp_2_actionscheduler_logs`
--

CREATE TABLE `wp_2_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_2_commentmeta`
--

CREATE TABLE `wp_2_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_2_comments`
--

CREATE TABLE `wp_2_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_2_comments`
--

INSERT INTO `wp_2_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-05-25 03:41:40', '2021-05-25 07:41:40', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_2_links`
--

CREATE TABLE `wp_2_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_2_options`
--

CREATE TABLE `wp_2_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_2_options`
--

INSERT INTO `wp_2_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://react-dev1.wp.wellnessliving.local', 'yes'),
(2, 'home', 'https://react-dev1.wp.wellnessliving.local', 'yes'),
(3, 'blogname', 'Dev1', 'yes'),
(4, 'blogdescription', 'Just another Сайты React 4 Multisite site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@example.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F Y g:i a', 'yes'),
(26, 'comment_moderation', '1', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:114:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:25:\"index.php?xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:42:\"technical_page/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:52:\"technical_page/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:72:\"technical_page/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"technical_page/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"technical_page/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\"technical_page/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"technical_page/([^/]+)/embed/?$\";s:47:\"index.php?technical_page=$matches[1]&embed=true\";s:35:\"technical_page/([^/]+)/trackback/?$\";s:41:\"index.php?technical_page=$matches[1]&tb=1\";s:43:\"technical_page/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?technical_page=$matches[1]&paged=$matches[2]\";s:50:\"technical_page/([^/]+)/comment-page-([0-9]{1,})/?$\";s:54:\"index.php?technical_page=$matches[1]&cpage=$matches[2]\";s:39:\"technical_page/([^/]+)(?:/([0-9]+))?/?$\";s:53:\"index.php?technical_page=$matches[1]&page=$matches[2]\";s:31:\"technical_page/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"technical_page/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"technical_page/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"technical_page/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"technical_page/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"technical_page/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:35:\"crop-thumbnails/crop-thumbnails.php\";i:1;s:25:\"gtranslate/gtranslate.php\";i:2;s:30:\"seo-by-rank-math/rank-math.php\";i:3;s:21:\"wl-roles/wl-roles.php\";i:4;s:41:\"wordpress-importer/wordpress-importer.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '0', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'constructor_wl', 'yes'),
(41, 'stylesheet', 'constructor_wl', 'yes'),
(42, 'comment_registration', '', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '0', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', '', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'America/Toronto', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '5', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '0', 'yes'),
(90, 'show_comments_cookies_opt_in', '', 'yes'),
(91, 'admin_email_lifespan', '1653127897', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'WPLANG', 'en_CA', 'yes'),
(99, 'wp_2_user_roles', 'a:8:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:77:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:23:\"rank_math_edit_htaccess\";b:1;s:16:\"rank_math_titles\";b:1;s:17:\"rank_math_general\";b:1;s:17:\"rank_math_sitemap\";b:1;s:21:\"rank_math_404_monitor\";b:1;s:22:\"rank_math_link_builder\";b:1;s:22:\"rank_math_redirections\";b:1;s:22:\"rank_math_role_manager\";b:1;s:19:\"rank_math_analytics\";b:1;s:23:\"rank_math_site_analysis\";b:1;s:25:\"rank_math_onpage_analysis\";b:1;s:24:\"rank_math_onpage_general\";b:1;s:25:\"rank_math_onpage_advanced\";b:1;s:24:\"rank_math_onpage_snippet\";b:1;s:23:\"rank_math_onpage_social\";b:1;s:19:\"rank_math_admin_bar\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:39:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:23:\"rank_math_site_analysis\";b:1;s:25:\"rank_math_onpage_analysis\";b:1;s:24:\"rank_math_onpage_general\";b:1;s:24:\"rank_math_onpage_snippet\";b:1;s:23:\"rank_math_onpage_social\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:14:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:25:\"rank_math_onpage_analysis\";b:1;s:24:\"rank_math_onpage_general\";b:1;s:24:\"rank_math_onpage_snippet\";b:1;s:23:\"rank_math_onpage_social\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:9:\"wl_client\";a:2:{s:4:\"name\";s:21:\"WellnessLiving Client\";s:12:\"capabilities\";a:35:{s:20:\"edit_published_posts\";b:1;s:12:\"upload_files\";b:1;s:22:\"delete_published_posts\";b:1;s:12:\"delete_posts\";b:1;s:4:\"read\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:12:\"create_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:17:\"manage_categories\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:13:\"publish_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:17:\"edit_others_posts\";b:0;s:10:\"edit_files\";b:0;s:18:\"edit_theme_options\";b:0;s:14:\"manage_options\";b:0;s:17:\"moderate_comments\";b:0;s:12:\"manage_links\";b:0;s:17:\"edit_others_pages\";b:0;s:19:\"delete_others_pages\";b:0;s:19:\"delete_others_posts\";b:0;s:15:\"unfiltered_html\";b:0;s:15:\"install_plugins\";b:0;s:13:\"update_plugin\";b:0;s:11:\"update_core\";b:0;s:11:\"edit_themes\";b:0;s:13:\"switch_themes\";b:0;}}s:14:\"wl_constructor\";a:2:{s:4:\"name\";s:16:\"Site Constructor\";s:12:\"capabilities\";a:34:{s:20:\"edit_published_posts\";b:1;s:12:\"upload_files\";b:1;s:22:\"delete_published_posts\";b:1;s:12:\"delete_posts\";b:1;s:4:\"read\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:12:\"create_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:17:\"manage_categories\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:13:\"publish_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:17:\"edit_others_posts\";b:0;s:10:\"edit_files\";b:0;s:18:\"edit_theme_options\";b:1;s:12:\"manage_links\";b:0;s:17:\"edit_others_pages\";b:0;s:19:\"delete_others_pages\";b:0;s:19:\"delete_others_posts\";b:0;s:15:\"unfiltered_html\";b:0;s:15:\"install_plugins\";b:0;s:13:\"update_plugin\";b:0;s:11:\"update_core\";b:0;s:11:\"edit_themes\";b:1;s:12:\"create_pages\";b:1;s:5:\"write\";b:1;}}s:11:\"wlr_blogger\";a:2:{s:4:\"name\";s:7:\"Blogger\";s:12:\"capabilities\";a:7:{s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:12:\"upload_files\";b:1;}}}', 'yes'),
(100, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'theme_mods_twentytwentyone', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1621928500;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(107, 'current_theme', 'Constructor WL', 'yes'),
(108, 'theme_mods_constructor_wl', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:5:{s:8:\"top-menu\";i:2;s:11:\"footer-menu\";i:3;s:16:\"main-menu-second\";i:7;s:18:\"footer-menu-second\";i:0;s:17:\"footer-menu-third\";i:8;}s:18:\"custom_css_post_id\";i:227;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1624919498;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(109, 'theme_switched', '', 'yes'),
(110, 'fresh_site', '0', 'yes'),
(111, 'wl_sdk_business_id', '48137', 'no'),
(112, 'wl_sdk_website_type', 'website', 'yes'),
(113, 'wl_sdk_environment', 'staging', 'no'),
(114, 'wl_multi__locations', 's:90:\"a:2:{s:16:\"default_location\";s:5:\"49872\";s:18:\"required_locations\";a:1:{i:0;s:5:\"49872\";}}\";', 'no'),
(115, 'cron', 'a:7:{i:1639731444;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1639734105;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1639770105;a:1:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1639785600;a:2:{s:35:\"rank_math/redirection/clean_trashed\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"rank_math/links/internal_links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1639813331;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1640158905;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(116, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(122, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(123, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(124, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(126, 'https_detection_errors', 'a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}s:19:\"bad_response_source\";a:1:{i:0;s:55:\"It looks like the response did not come from this site.\";}}', 'yes'),
(138, 'acf_version', '5.7.10', 'yes'),
(141, 'finished_updating_comment_type', '1', 'yes'),
(142, '_transient_health-check-site-status-result', '{\"good\":\"12\",\"recommended\":\"6\",\"critical\":\"2\"}', 'yes'),
(164, 'visitors_counter', '10736', 'yes'),
(166, 'react_config_option', 'a:16:{s:4:\"Site\";a:1:{s:6:\"config\";a:1:{s:4:\"main\";a:1:{s:5:\"theme\";s:7:\"fitness\";}}}s:27:\"Static Terms and Conditions\";a:1:{s:6:\"config\";a:7:{s:9:\"container\";a:1:{s:5:\"style\";a:1:{s:15:\"backgroundColor\";s:0:\"\";}}s:5:\"title\";a:1:{s:5:\"style\";a:0:{}}s:7:\"content\";a:1:{s:5:\"style\";a:0:{}}s:13:\"content_title\";a:1:{s:5:\"style\";a:0:{}}s:13:\"business_name\";a:1:{s:5:\"style\";a:0:{}}s:16:\"business_address\";a:1:{s:5:\"style\";a:0:{}}s:4:\"link\";a:1:{s:5:\"style\";a:0:{}}}}s:21:\"Static Privacy Policy\";a:1:{s:6:\"config\";a:7:{s:9:\"container\";a:1:{s:5:\"style\";a:1:{s:15:\"backgroundColor\";s:19:\"rgba(155,155,155,1)\";}}s:5:\"title\";a:2:{s:4:\"text\";s:0:\"\";s:5:\"style\";a:1:{s:5:\"color\";s:16:\"rgba(208,2,27,1)\";}}s:13:\"content_title\";a:1:{s:5:\"style\";a:1:{s:5:\"color\";s:16:\"rgba(208,2,27,1)\";}}s:7:\"content\";a:1:{s:5:\"style\";a:1:{s:5:\"color\";s:18:\"rgba(248,231,28,1)\";}}s:13:\"business_name\";a:2:{s:4:\"text\";s:0:\"\";s:5:\"style\";a:1:{s:5:\"color\";s:18:\"rgba(189,16,224,1)\";}}s:16:\"business_address\";a:1:{s:5:\"style\";a:1:{s:5:\"color\";s:18:\"rgba(245,166,35,1)\";}}s:4:\"link\";a:1:{s:5:\"style\";a:1:{s:5:\"color\";s:18:\"rgba(80,227,194,1)\";}}}}s:13:\"Header Banner\";a:1:{s:6:\"config\";a:4:{s:9:\"container\";a:1:{s:10:\"visibility\";b:1;}s:6:\"banner\";a:3:{s:12:\"sectionsList\";a:3:{i:0;a:3:{s:7:\"bigText\";s:56:\"<p>аываываываываываываывавы</p>\n\";s:15:\"backgroundColor\";s:0:\"\";s:7:\"visible\";b:0;}i:1;a:3:{s:7:\"bigText\";s:60:\"<p>ываываываываываываываываыв</p>\n\";s:15:\"backgroundColor\";s:0:\"\";s:7:\"visible\";b:0;}i:2;a:3:{s:7:\"bigText\";s:66:\"<p>ываываываываываываываываываыв</p>\n\";s:15:\"backgroundColor\";s:0:\"\";s:7:\"visible\";b:0;}}s:5:\"style\";a:1:{s:5:\"color\";s:0:\"\";}s:8:\"autoplay\";b:1;}s:16:\"bannerPagination\";a:1:{s:5:\"style\";a:1:{s:15:\"backgroundColor\";s:18:\"rgba(248,231,28,1)\";}}s:22:\"bannerPaginationActive\";a:1:{s:5:\"style\";a:1:{s:15:\"backgroundColor\";s:18:\"rgba(245,166,35,1)\";}}}}s:5:\"Store\";a:1:{s:6:\"config\";a:1:{s:4:\"cart\";a:3:{s:10:\"visibility\";b:0;s:4:\"text\";s:9:\"Uniq Cart\";s:5:\"style\";a:2:{s:5:\"color\";s:17:\"rgba(74,48,221,1)\";s:10:\"fontFamily\";s:11:\"Arial Black\";}}}}s:10:\"App Banner\";a:1:{s:6:\"config\";a:6:{s:23:\"appBannerInnerContainer\";a:1:{s:5:\"style\";a:2:{s:15:\"backgroundColor\";s:18:\"rgba(245,166,35,1)\";s:6:\"margin\";s:15:\"0px 0px 0px 0px\";}}s:24:\"appBannerVisitorsCounter\";a:3:{s:5:\"style\";a:1:{s:5:\"color\";s:18:\"rgba(248,231,28,1)\";}s:5:\"count\";i:500;s:10:\"visibility\";b:0;}s:21:\"appBannerVisitorsText\";a:2:{s:4:\"text\";s:11:\"Custom text\";s:5:\"style\";a:1:{s:5:\"color\";s:16:\"rgba(208,2,27,1)\";}}s:19:\"appBannerSubHeading\";a:2:{s:4:\"text\";s:16:\"Описание\";s:5:\"style\";a:1:{s:5:\"color\";s:18:\"rgba(189,16,224,1)\";}}s:26:\"appBannerVisitorsContainer\";a:1:{s:5:\"style\";a:1:{s:15:\"backgroundColor\";s:19:\"rgba(155,155,155,1)\";}}s:13:\"appBannerMain\";a:2:{s:5:\"style\";a:1:{s:15:\"backgroundColor\";s:17:\"rgba(43,14,197,1)\";}s:5:\"image\";a:7:{s:3:\"alt\";s:0:\"\";s:5:\"title\";s:68:\"pacific-ocean-1920x1080-5k-4k-wallpaper-big-sur-california-beach-389\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:6:\"height\";i:150;s:5:\"width\";i:150;s:3:\"url\";s:157:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/pacific-ocean-1920x1080-5k-4k-wallpaper-big-sur-california-beach-389-150x150.jpg\";s:11:\"orientation\";s:9:\"landscape\";}s:6:\"medium\";a:4:{s:6:\"height\";i:169;s:5:\"width\";i:300;s:3:\"url\";s:157:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/pacific-ocean-1920x1080-5k-4k-wallpaper-big-sur-california-beach-389-300x169.jpg\";s:11:\"orientation\";s:9:\"landscape\";}s:5:\"large\";a:4:{s:6:\"height\";i:576;s:5:\"width\";i:1024;s:3:\"url\";s:158:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/pacific-ocean-1920x1080-5k-4k-wallpaper-big-sur-california-beach-389-1024x576.jpg\";s:11:\"orientation\";s:9:\"landscape\";}s:4:\"full\";a:4:{s:3:\"url\";s:149:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/pacific-ocean-1920x1080-5k-4k-wallpaper-big-sur-california-beach-389.jpg\";s:6:\"height\";i:1080;s:5:\"width\";i:1920;s:11:\"orientation\";s:9:\"landscape\";}}s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:3:\"url\";s:149:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/pacific-ocean-1920x1080-5k-4k-wallpaper-big-sur-california-beach-389.jpg\";s:12:\"selectedSize\";s:9:\"thumbnail\";}}}}s:28:\"Product & Affiliate Partners\";a:1:{s:6:\"config\";a:3:{s:9:\"container\";a:1:{s:5:\"style\";a:1:{s:15:\"backgroundColor\";s:19:\"rgba(139,139,241,1)\";}}s:16:\"carouselPartners\";a:7:{s:5:\"style\";a:0:{}s:6:\"slides\";a:3:{i:0;a:9:{s:7:\"isImage\";b:1;s:3:\"alt\";s:0:\"\";s:5:\"title\";s:21:\"samurai-anime-minimal\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:6:\"height\";i:150;s:5:\"width\";i:150;s:3:\"url\";s:110:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/samurai-anime-minimal-150x150.jpg\";s:11:\"orientation\";s:9:\"landscape\";}s:6:\"medium\";a:4:{s:6:\"height\";i:169;s:5:\"width\";i:300;s:3:\"url\";s:110:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/samurai-anime-minimal-300x169.jpg\";s:11:\"orientation\";s:9:\"landscape\";}s:5:\"large\";a:4:{s:6:\"height\";i:576;s:5:\"width\";i:1024;s:3:\"url\";s:111:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/samurai-anime-minimal-1024x576.jpg\";s:11:\"orientation\";s:9:\"landscape\";}s:4:\"full\";a:4:{s:3:\"url\";s:102:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/samurai-anime-minimal.jpg\";s:6:\"height\";i:1080;s:5:\"width\";i:1920;s:11:\"orientation\";s:9:\"landscape\";}}s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:3:\"url\";s:102:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/samurai-anime-minimal.jpg\";s:12:\"selectedSize\";s:9:\"thumbnail\";s:9:\"imageLink\";s:18:\"https://google.com\";}i:1;a:9:{s:7:\"isImage\";b:1;s:3:\"alt\";s:0:\"\";s:5:\"title\";s:68:\"pacific-ocean-1920x1080-5k-4k-wallpaper-big-sur-california-beach-389\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:6:\"height\";i:150;s:5:\"width\";i:150;s:3:\"url\";s:157:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/pacific-ocean-1920x1080-5k-4k-wallpaper-big-sur-california-beach-389-150x150.jpg\";s:11:\"orientation\";s:9:\"landscape\";}s:6:\"medium\";a:4:{s:6:\"height\";i:169;s:5:\"width\";i:300;s:3:\"url\";s:157:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/pacific-ocean-1920x1080-5k-4k-wallpaper-big-sur-california-beach-389-300x169.jpg\";s:11:\"orientation\";s:9:\"landscape\";}s:5:\"large\";a:4:{s:6:\"height\";i:576;s:5:\"width\";i:1024;s:3:\"url\";s:158:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/pacific-ocean-1920x1080-5k-4k-wallpaper-big-sur-california-beach-389-1024x576.jpg\";s:11:\"orientation\";s:9:\"landscape\";}s:4:\"full\";a:4:{s:3:\"url\";s:149:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/pacific-ocean-1920x1080-5k-4k-wallpaper-big-sur-california-beach-389.jpg\";s:6:\"height\";i:1080;s:5:\"width\";i:1920;s:11:\"orientation\";s:9:\"landscape\";}}s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:3:\"url\";s:149:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/pacific-ocean-1920x1080-5k-4k-wallpaper-big-sur-california-beach-389.jpg\";s:12:\"selectedSize\";s:5:\"large\";s:9:\"imageLink\";s:17:\"https://apple.com\";}i:2;a:9:{s:7:\"isImage\";b:1;s:3:\"alt\";s:0:\"\";s:5:\"title\";s:6:\"3vRqDI\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:6:\"height\";i:150;s:5:\"width\";i:150;s:3:\"url\";s:95:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/3vRqDI-150x150.jpg\";s:11:\"orientation\";s:9:\"landscape\";}s:6:\"medium\";a:4:{s:6:\"height\";i:169;s:5:\"width\";i:300;s:3:\"url\";s:95:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/3vRqDI-300x169.jpg\";s:11:\"orientation\";s:9:\"landscape\";}s:5:\"large\";a:4:{s:6:\"height\";i:576;s:5:\"width\";i:1024;s:3:\"url\";s:96:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/3vRqDI-1024x576.jpg\";s:11:\"orientation\";s:9:\"landscape\";}s:4:\"full\";a:4:{s:3:\"url\";s:87:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/3vRqDI.jpg\";s:6:\"height\";i:1080;s:5:\"width\";i:1920;s:11:\"orientation\";s:9:\"landscape\";}}s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:3:\"url\";s:87:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/3vRqDI.jpg\";s:12:\"selectedSize\";s:6:\"medium\";s:9:\"imageLink\";s:20:\"https://facebook.com\";}}s:8:\"autoplay\";b:1;s:13:\"autoplaySpeed\";s:2:\"30\";s:4:\"dots\";b:0;s:6:\"arrows\";b:0;s:12:\"slidesToShow\";N;}s:7:\"heading\";a:2:{s:5:\"style\";a:3:{s:5:\"color\";s:18:\"rgba(245,166,35,1)\";s:8:\"fontSize\";s:4:\"35px\";s:10:\"fontFamily\";s:11:\"Courier New\";}s:9:\"titleText\";s:8:\"Partners\";}}}s:16:\"Featured Classes\";a:1:{s:6:\"config\";a:1:{s:4:\"main\";a:1:{s:5:\"style\";a:0:{}}}}s:11:\"Site footer\";a:1:{s:6:\"config\";a:3:{s:10:\"footerLogo\";a:1:{s:5:\"image\";a:7:{s:3:\"alt\";s:0:\"\";s:5:\"title\";s:68:\"pacific-ocean-1920x1080-5k-4k-wallpaper-big-sur-california-beach-389\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:6:\"height\";i:150;s:5:\"width\";i:150;s:3:\"url\";s:157:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/pacific-ocean-1920x1080-5k-4k-wallpaper-big-sur-california-beach-389-150x150.jpg\";s:11:\"orientation\";s:9:\"landscape\";}s:6:\"medium\";a:4:{s:6:\"height\";i:169;s:5:\"width\";i:300;s:3:\"url\";s:157:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/pacific-ocean-1920x1080-5k-4k-wallpaper-big-sur-california-beach-389-300x169.jpg\";s:11:\"orientation\";s:9:\"landscape\";}s:5:\"large\";a:4:{s:6:\"height\";i:576;s:5:\"width\";i:1024;s:3:\"url\";s:158:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/pacific-ocean-1920x1080-5k-4k-wallpaper-big-sur-california-beach-389-1024x576.jpg\";s:11:\"orientation\";s:9:\"landscape\";}s:4:\"full\";a:4:{s:3:\"url\";s:149:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/pacific-ocean-1920x1080-5k-4k-wallpaper-big-sur-california-beach-389.jpg\";s:6:\"height\";i:1080;s:5:\"width\";i:1920;s:11:\"orientation\";s:9:\"landscape\";}}s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:3:\"url\";s:149:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/pacific-ocean-1920x1080-5k-4k-wallpaper-big-sur-california-beach-389.jpg\";s:12:\"selectedSize\";s:4:\"full\";}}s:14:\"socialIconList\";a:2:{s:5:\"style\";a:10:{s:7:\"padding\";s:0:\"\";s:11:\"borderColor\";s:18:\"rgba(245,166,35,1)\";s:12:\"borderRadius\";s:3:\"3px\";s:11:\"borderStyle\";s:5:\"solid\";s:11:\"borderWidth\";s:3:\"2px\";s:6:\"margin\";s:0:\"\";s:5:\"color\";s:17:\"rgba(67,54,129,1)\";s:8:\"fontSize\";s:4:\"36px\";s:9:\"textAlign\";s:6:\"center\";s:15:\"backgroundColor\";s:19:\"rgba(184,233,134,1)\";}s:12:\"sectionsList\";a:2:{i:0;a:5:{s:7:\"bigText\";s:0:\"\";s:15:\"backgroundColor\";s:0:\"\";s:7:\"visible\";b:0;s:4:\"icon\";s:16:\"css-icon-twitter\";s:4:\"link\";s:56:\"https://monosnap.com/file/qD28tPmaCszSPpKtL29lsyFmQKffPw\";}i:1;a:5:{s:7:\"bigText\";s:0:\"\";s:15:\"backgroundColor\";s:0:\"\";s:7:\"visible\";b:0;s:4:\"icon\";s:17:\"css-icon-linkedin\";s:4:\"link\";s:56:\"https://monosnap.com/file/qD28tPmaCszSPpKtL29lsyFmQKffPw\";}}}s:10:\"menuTitles\";a:3:{s:5:\"first\";s:16:\"erewrwerwerwerwe\";s:6:\"second\";s:14:\"erwerwerwerwer\";s:5:\"third\";s:11:\"werwerwerwe\";}}}s:10:\"Contact Us\";a:1:{s:6:\"config\";a:4:{s:9:\"mapMarker\";a:1:{s:5:\"style\";a:1:{s:5:\"color\";s:16:\"rgba(65,117,5,1)\";}}s:4:\"text\";a:1:{s:5:\"style\";a:1:{s:5:\"color\";s:18:\"rgba(245,166,35,1)\";}}s:12:\"getDirection\";a:1:{s:5:\"style\";a:1:{s:5:\"color\";s:18:\"rgba(74,144,226,1)\";}}s:5:\"notes\";a:2:{s:5:\"style\";a:2:{s:5:\"color\";s:0:\"\";s:10:\"fontFamily\";s:0:\"\";}s:7:\"bigText\";s:8:\"<p></p>\n\";}}}s:8:\"Packages\";a:1:{s:6:\"config\";a:2:{s:11:\"moreDetails\";a:1:{s:5:\"style\";a:0:{}}s:16:\"moreDetailsArrow\";a:1:{s:5:\"style\";a:0:{}}}}s:11:\"Site header\";a:1:{s:6:\"config\";a:3:{s:6:\"header\";a:1:{s:5:\"theme\";s:7:\"Header1\";}s:10:\"gTranslate\";a:1:{s:10:\"visibility\";b:1;}s:7:\"topMenu\";a:1:{s:7:\"topMenu\";b:1;}}}s:13:\"General Style\";a:1:{s:6:\"config\";a:1:{s:4:\"main\";a:1:{s:5:\"style\";a:5:{s:5:\"color\";s:0:\"\";s:15:\"backgroundColor\";s:0:\"\";s:11:\"borderColor\";s:0:\"\";s:9:\"linkColor\";s:0:\"\";s:14:\"linkHoverColor\";s:0:\"\";}}}}s:13:\"generalStyles\";a:3:{s:7:\"fitness\";s:0:\"\";s:4:\"yoga\";s:0:\"\";s:8:\"personal\";s:0:\"\";}s:17:\"Book Appointments\";a:1:{s:6:\"config\";a:1:{s:6:\"button\";a:1:{s:5:\"style\";a:0:{}}}}s:12:\"Contact Form\";a:1:{s:6:\"config\";a:1:{s:9:\"container\";a:1:{s:5:\"style\";a:0:{}}}}}', 'yes'),
(179, 'post_count', '24', 'yes'),
(181, 'theme_mods_wl-wizard', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1624919501;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(204, 'category_children', 'a:0:{}', 'yes'),
(211, 'recently_activated', 'a:0:{}', 'yes'),
(247, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(422, 'action_scheduler_hybrid_store_demarkation', '200', 'yes'),
(423, 'schema-ActionScheduler_StoreSchema', '3.0.1632308304', 'yes'),
(424, 'schema-ActionScheduler_LoggerSchema', '2.0.1632308304', 'yes'),
(425, 'rank_math_known_post_types', 'a:3:{s:4:\"post\";s:4:\"post\";s:4:\"page\";s:4:\"page\";s:10:\"attachment\";s:10:\"attachment\";}', 'yes'),
(426, 'rank_math_modules', 'a:10:{i:0;s:12:\"link-counter\";i:1;s:9:\"analytics\";i:2;s:12:\"seo-analysis\";i:3;s:7:\"sitemap\";i:4;s:12:\"rich-snippet\";i:5;s:11:\"woocommerce\";i:6;s:10:\"buddypress\";i:7;s:7:\"bbpress\";i:8;s:3:\"acf\";i:9;s:11:\"web-stories\";}', 'yes'),
(427, 'rank-math-options-general', 'a:38:{s:19:\"strip_category_base\";s:3:\"off\";s:24:\"attachment_redirect_urls\";s:2:\"on\";s:27:\"attachment_redirect_default\";s:41:\"https://react-dev1.wp.wellnessliving.local\";s:23:\"nofollow_external_links\";s:2:\"on\";s:20:\"nofollow_image_links\";s:3:\"off\";s:25:\"new_window_external_links\";s:2:\"on\";s:11:\"add_img_alt\";s:3:\"off\";s:14:\"img_alt_format\";s:11:\" %filename%\";s:13:\"add_img_title\";s:3:\"off\";s:16:\"img_title_format\";s:22:\"%title% %count(title)%\";s:11:\"breadcrumbs\";s:3:\"off\";s:21:\"breadcrumbs_separator\";s:1:\"-\";s:16:\"breadcrumbs_home\";s:2:\"on\";s:22:\"breadcrumbs_home_label\";s:4:\"Home\";s:26:\"breadcrumbs_archive_format\";s:15:\"Archives for %s\";s:25:\"breadcrumbs_search_format\";s:14:\"Results for %s\";s:21:\"breadcrumbs_404_label\";s:25:\"404 Error: page not found\";s:31:\"breadcrumbs_ancestor_categories\";s:3:\"off\";s:21:\"breadcrumbs_blog_page\";s:3:\"off\";s:16:\"404_monitor_mode\";s:6:\"simple\";s:17:\"404_monitor_limit\";i:100;s:35:\"404_monitor_ignore_query_parameters\";s:2:\"on\";s:24:\"redirections_header_code\";s:3:\"301\";s:18:\"redirections_debug\";s:3:\"off\";s:23:\"console_caching_control\";s:2:\"90\";s:27:\"link_builder_links_per_page\";s:1:\"7\";s:29:\"link_builder_links_per_target\";s:1:\"1\";s:22:\"wc_remove_product_base\";s:3:\"off\";s:23:\"wc_remove_category_base\";s:3:\"off\";s:31:\"wc_remove_category_parent_slugs\";s:3:\"off\";s:18:\"rss_before_content\";s:0:\"\";s:17:\"rss_after_content\";s:0:\"\";s:19:\"wc_remove_generator\";s:2:\"on\";s:24:\"remove_shop_snippet_data\";s:2:\"on\";s:18:\"frontend_seo_score\";s:3:\"off\";s:29:\"frontend_seo_score_post_types\";a:1:{i:0;s:4:\"post\";}s:27:\"frontend_seo_score_position\";s:3:\"top\";s:10:\"setup_mode\";s:8:\"advanced\";}', 'yes'),
(428, 'rank-math-options-titles', 'a:97:{s:24:\"noindex_empty_taxonomies\";s:2:\"on\";s:15:\"title_separator\";s:1:\"-\";s:17:\"capitalize_titles\";s:3:\"off\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:19:\"knowledgegraph_type\";s:6:\"person\";s:19:\"knowledgegraph_name\";s:8:\"Mr Frodo\";s:19:\"local_business_type\";s:12:\"Organization\";s:20:\"local_address_format\";s:43:\"{address} {locality}, {region} {postalcode}\";s:13:\"opening_hours\";a:7:{i:0;a:2:{s:3:\"day\";s:6:\"Monday\";s:4:\"time\";s:11:\"09:00-17:00\";}i:1;a:2:{s:3:\"day\";s:7:\"Tuesday\";s:4:\"time\";s:11:\"09:00-17:00\";}i:2;a:2:{s:3:\"day\";s:9:\"Wednesday\";s:4:\"time\";s:11:\"09:00-17:00\";}i:3;a:2:{s:3:\"day\";s:8:\"Thursday\";s:4:\"time\";s:11:\"09:00-17:00\";}i:4;a:2:{s:3:\"day\";s:6:\"Friday\";s:4:\"time\";s:11:\"09:00-17:00\";}i:5;a:2:{s:3:\"day\";s:8:\"Saturday\";s:4:\"time\";s:11:\"09:00-17:00\";}i:6;a:2:{s:3:\"day\";s:6:\"Sunday\";s:4:\"time\";s:11:\"09:00-17:00\";}}s:20:\"opening_hours_format\";s:3:\"off\";s:14:\"homepage_title\";s:34:\"%sitename% %page% %sep% %sitedesc%\";s:20:\"homepage_description\";s:0:\"\";s:22:\"homepage_custom_robots\";s:3:\"off\";s:23:\"disable_author_archives\";s:3:\"off\";s:15:\"url_author_base\";s:6:\"author\";s:20:\"author_custom_robots\";s:2:\"on\";s:13:\"author_robots\";a:1:{i:0;s:7:\"noindex\";}s:20:\"author_archive_title\";s:30:\"%name% %sep% %sitename% %page%\";s:19:\"author_add_meta_box\";s:2:\"on\";s:21:\"disable_date_archives\";s:2:\"on\";s:18:\"date_archive_title\";s:30:\"%date% %page% %sep% %sitename%\";s:12:\"search_title\";s:38:\"%search_query% %page% %sep% %sitename%\";s:9:\"404_title\";s:31:\"Page Not Found %sep% %sitename%\";s:19:\"date_archive_robots\";a:1:{i:0;s:7:\"noindex\";}s:14:\"noindex_search\";s:2:\"on\";s:24:\"noindex_archive_subpages\";s:3:\"off\";s:26:\"noindex_password_protected\";s:3:\"off\";s:32:\"pt_download_default_rich_snippet\";s:7:\"product\";s:13:\"pt_post_title\";s:24:\"%title% %sep% %sitename%\";s:19:\"pt_post_description\";s:9:\"%excerpt%\";s:14:\"pt_post_robots\";a:0:{}s:21:\"pt_post_custom_robots\";s:3:\"off\";s:28:\"pt_post_default_rich_snippet\";s:7:\"article\";s:28:\"pt_post_default_article_type\";s:11:\"BlogPosting\";s:28:\"pt_post_default_snippet_name\";s:11:\"%seo_title%\";s:28:\"pt_post_default_snippet_desc\";s:17:\"%seo_description%\";s:17:\"pt_post_ls_use_fk\";s:6:\"titles\";s:20:\"pt_post_add_meta_box\";s:2:\"on\";s:20:\"pt_post_bulk_editing\";s:7:\"editing\";s:24:\"pt_post_link_suggestions\";s:2:\"on\";s:24:\"pt_post_primary_taxonomy\";s:8:\"category\";s:13:\"pt_page_title\";s:24:\"%title% %sep% %sitename%\";s:19:\"pt_page_description\";s:9:\"%excerpt%\";s:14:\"pt_page_robots\";a:0:{}s:21:\"pt_page_custom_robots\";s:3:\"off\";s:28:\"pt_page_default_rich_snippet\";s:7:\"article\";s:28:\"pt_page_default_article_type\";s:7:\"Article\";s:28:\"pt_page_default_snippet_name\";s:11:\"%seo_title%\";s:28:\"pt_page_default_snippet_desc\";s:17:\"%seo_description%\";s:17:\"pt_page_ls_use_fk\";s:6:\"titles\";s:20:\"pt_page_add_meta_box\";s:2:\"on\";s:20:\"pt_page_bulk_editing\";s:7:\"editing\";s:24:\"pt_page_link_suggestions\";s:2:\"on\";s:19:\"pt_attachment_title\";s:24:\"%title% %sep% %sitename%\";s:25:\"pt_attachment_description\";s:9:\"%excerpt%\";s:20:\"pt_attachment_robots\";a:1:{i:0;s:7:\"noindex\";}s:27:\"pt_attachment_custom_robots\";s:2:\"on\";s:34:\"pt_attachment_default_rich_snippet\";s:3:\"off\";s:34:\"pt_attachment_default_article_type\";s:7:\"Article\";s:34:\"pt_attachment_default_snippet_name\";s:11:\"%seo_title%\";s:34:\"pt_attachment_default_snippet_desc\";s:17:\"%seo_description%\";s:26:\"pt_attachment_add_meta_box\";s:3:\"off\";s:16:\"pt_product_title\";s:24:\"%title% %sep% %sitename%\";s:22:\"pt_product_description\";s:9:\"%excerpt%\";s:17:\"pt_product_robots\";a:0:{}s:24:\"pt_product_custom_robots\";s:3:\"off\";s:31:\"pt_product_default_rich_snippet\";s:7:\"product\";s:31:\"pt_product_default_article_type\";s:7:\"Article\";s:31:\"pt_product_default_snippet_name\";s:11:\"%seo_title%\";s:31:\"pt_product_default_snippet_desc\";s:17:\"%seo_description%\";s:20:\"pt_product_ls_use_fk\";s:6:\"titles\";s:23:\"pt_product_add_meta_box\";s:2:\"on\";s:23:\"pt_product_bulk_editing\";s:7:\"editing\";s:27:\"pt_product_link_suggestions\";s:2:\"on\";s:27:\"pt_product_primary_taxonomy\";s:11:\"product_cat\";s:18:\"pt_web-story_title\";s:24:\"%title% %sep% %sitename%\";s:24:\"pt_web-story_description\";s:9:\"%excerpt%\";s:19:\"pt_web-story_robots\";a:0:{}s:26:\"pt_web-story_custom_robots\";s:3:\"off\";s:33:\"pt_web-story_default_rich_snippet\";s:7:\"article\";s:33:\"pt_web-story_default_article_type\";s:7:\"Article\";s:33:\"pt_web-story_default_snippet_name\";s:11:\"%seo_title%\";s:33:\"pt_web-story_default_snippet_desc\";s:17:\"%seo_description%\";s:25:\"pt_web-story_add_meta_box\";s:3:\"off\";s:18:\"tax_category_title\";s:23:\"%term% %sep% %sitename%\";s:19:\"tax_category_robots\";a:0:{}s:25:\"tax_category_add_meta_box\";s:2:\"on\";s:26:\"tax_category_custom_robots\";s:3:\"off\";s:24:\"tax_category_description\";s:18:\"%term_description%\";s:18:\"tax_post_tag_title\";s:23:\"%term% %sep% %sitename%\";s:19:\"tax_post_tag_robots\";a:1:{i:0;s:7:\"noindex\";}s:25:\"tax_post_tag_add_meta_box\";s:2:\"on\";s:26:\"tax_post_tag_custom_robots\";s:2:\"on\";s:24:\"tax_post_tag_description\";s:18:\"%term_description%\";s:19:\"knowledgegraph_logo\";s:93:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/09/harry-potter.jpg\";s:22:\"knowledgegraph_logo_id\";s:3:\"198\";s:28:\"tax_post_format_add_meta_box\";s:2:\"on\";}', 'yes'),
(429, 'rank-math-options-sitemap', 'a:12:{s:14:\"items_per_page\";i:200;s:14:\"include_images\";s:2:\"on\";s:22:\"include_featured_image\";s:3:\"off\";s:19:\"ping_search_engines\";s:2:\"on\";s:13:\"exclude_roles\";a:5:{s:11:\"contributor\";s:11:\"Contributor\";s:10:\"subscriber\";s:10:\"Subscriber\";s:9:\"wl_client\";s:21:\"WellnessLiving Client\";s:14:\"wl_constructor\";s:16:\"Site Constructor\";s:11:\"wlr_blogger\";s:7:\"Blogger\";}s:15:\"pt_post_sitemap\";s:2:\"on\";s:15:\"pt_page_sitemap\";s:2:\"on\";s:21:\"pt_attachment_sitemap\";s:3:\"off\";s:18:\"pt_product_sitemap\";s:2:\"on\";s:20:\"pt_web-story_sitemap\";s:3:\"off\";s:20:\"tax_category_sitemap\";s:2:\"on\";s:20:\"tax_post_tag_sitemap\";s:3:\"off\";}', 'yes'),
(432, 'rank_math_version', '1.0.64', 'yes'),
(433, 'rank_math_db_version', '1', 'yes'),
(434, 'rank_math_install_date', '1632293904', 'yes'),
(436, 'action_scheduler_lock_async-request-runner', '1639666304', 'yes'),
(442, 'rank_math_registration_skip', '1', 'yes'),
(444, 'rank_math_review_posts_converted', '1', 'yes');
INSERT INTO `wp_2_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(445, '_transient_rank_math_first_submenu_id', 'rank-math', 'yes'),
(446, 'rank_math_wizard_completed', '1', 'yes'),
(450, '_transient__rank_math_site_type', 'blog', 'yes'),
(454, 'rank_math_is_configured', '1', 'yes'),
(787, 'GTranslate', 'a:33:{s:11:\"pro_version\";s:0:\"\";s:18:\"enterprise_version\";s:0:\"\";s:15:\"url_translation\";s:0:\"\";s:17:\"add_hreflang_tags\";s:0:\"\";s:17:\"email_translation\";s:0:\"\";s:23:\"email_translation_debug\";s:0:\"\";s:10:\"new_window\";s:0:\"\";s:12:\"show_in_menu\";s:0:\"\";s:26:\"floating_language_selector\";s:2:\"no\";s:21:\"native_language_names\";s:0:\"\";s:9:\"analytics\";s:0:\"\";s:23:\"detect_browser_language\";s:0:\"\";s:12:\"add_new_line\";i:1;s:16:\"default_language\";s:2:\"en\";s:18:\"translation_method\";s:5:\"onfly\";s:11:\"widget_look\";s:19:\"dropdown_with_flags\";s:9:\"flag_size\";i:16;s:16:\"monochrome_flags\";s:0:\"\";s:11:\"widget_code\";s:7339:\"<!-- GTranslate: https://gtranslate.io/ -->\n<style>\n.switcher {font-family:Arial;font-size:10pt;text-align:left;cursor:pointer;overflow:hidden;width:163px;line-height:17px;}\n.switcher a {text-decoration:none;display:block;font-size:10pt;-webkit-box-sizing:content-box;-moz-box-sizing:content-box;box-sizing:content-box;}\n.switcher a img {vertical-align:middle;display:inline;border:0;padding:0;margin:0;opacity:0.8;}\n.switcher a:hover img {opacity:1;}\n.switcher .selected {background:#fff linear-gradient(180deg, #efefef 0%, #fff 70%);position:relative;z-index:9999;}\n.switcher .selected a {border:1px solid #ccc;color:#666;padding:3px 5px;width:151px;}\n.switcher .selected a:after {height:16px;display:inline-block;position:absolute;right:5px;width:15px;background-position:50%;background-size:7px;background-image:url(\"data:image/svg+xml;utf8,<svg xmlns=\'http://www.w3.org/2000/svg\' width=\'16\' height=\'16\' viewBox=\'0 0 285 285\'><path d=\'M282 76.5l-14.2-14.3a9 9 0 0 0-13.1 0L142.5 174.4 30.3 62.2a9 9 0 0 0-13.2 0L3 76.5a9 9 0 0 0 0 13.1l133 133a9 9 0 0 0 13.1 0l133-133a9 9 0 0 0 0-13z\' style=\'fill:%23666\'/></svg>\");background-repeat:no-repeat;content:\"\"!important;transition:all .2s;}\n.switcher .selected a.open:after {-webkit-transform: rotate(-180deg);transform:rotate(-180deg);}\n.switcher .selected a:hover {background:#fff}\n.switcher .option {position:relative;z-index:9998;border-left:1px solid #ccc;border-right:1px solid #ccc;border-bottom:1px solid #ccc;background-color:#eee;display:none;width:161px;max-height:198px;-webkit-box-sizing:content-box;-moz-box-sizing:content-box;box-sizing:content-box;overflow-y:auto;overflow-x:hidden;}\n.switcher .option a {color:#000;padding:3px 5px;}\n.switcher .option a:hover {background:#fff;}\n.switcher .option a.selected {background:#fff;}\n#selected_lang_name {float: none;}\n.l_name {float: none !important;margin: 0;}\n.switcher .option::-webkit-scrollbar-track{-webkit-box-shadow:inset 0 0 3px rgba(0,0,0,0.3);border-radius:5px;background-color:#f5f5f5;}\n.switcher .option::-webkit-scrollbar {width:5px;}\n.switcher .option::-webkit-scrollbar-thumb {border-radius:5px;-webkit-box-shadow: inset 0 0 3px rgba(0,0,0,.3);background-color:#888;}\n</style>\n<div class=\"switcher notranslate\">\n<div class=\"selected\">\n<a href=\"#\" onclick=\"return false;\"><img src=\"//react-dev1.wp.wellnessliving.local/wp-content/plugins/gtranslate/flags/16/en.png\" height=\"16\" width=\"16\" alt=\"en\" /> English</a>\n</div>\n<div class=\"option\">\n<a href=\"#\" onclick=\"doGTranslate(\'en|ceb\');jQuery(\'div.switcher div.selected a\').html(jQuery(this).html());return false;\" title=\"Cebuano\" class=\"nturl\"><img data-gt-lazy-src=\"//react-dev1.wp.wellnessliving.local/wp-content/plugins/gtranslate/flags/16/ceb.png\" height=\"16\" width=\"16\" alt=\"ceb\" /> Cebuano</a><a href=\"#\" onclick=\"doGTranslate(\'en|en\');jQuery(\'div.switcher div.selected a\').html(jQuery(this).html());return false;\" title=\"English\" class=\"nturl selected\"><img data-gt-lazy-src=\"//react-dev1.wp.wellnessliving.local/wp-content/plugins/gtranslate/flags/16/en.png\" height=\"16\" width=\"16\" alt=\"en\" /> English</a><a href=\"#\" onclick=\"doGTranslate(\'en|de\');jQuery(\'div.switcher div.selected a\').html(jQuery(this).html());return false;\" title=\"German\" class=\"nturl\"><img data-gt-lazy-src=\"//react-dev1.wp.wellnessliving.local/wp-content/plugins/gtranslate/flags/16/de.png\" height=\"16\" width=\"16\" alt=\"de\" /> German</a><a href=\"#\" onclick=\"doGTranslate(\'en|jw\');jQuery(\'div.switcher div.selected a\').html(jQuery(this).html());return false;\" title=\"Javanese\" class=\"nturl\"><img data-gt-lazy-src=\"//react-dev1.wp.wellnessliving.local/wp-content/plugins/gtranslate/flags/16/jw.png\" height=\"16\" width=\"16\" alt=\"jw\" /> Javanese</a><a href=\"#\" onclick=\"doGTranslate(\'en|ru\');jQuery(\'div.switcher div.selected a\').html(jQuery(this).html());return false;\" title=\"Russian\" class=\"nturl\"><img data-gt-lazy-src=\"//react-dev1.wp.wellnessliving.local/wp-content/plugins/gtranslate/flags/16/ru.png\" height=\"16\" width=\"16\" alt=\"ru\" /> Russian</a><a href=\"#\" onclick=\"doGTranslate(\'en|uk\');jQuery(\'div.switcher div.selected a\').html(jQuery(this).html());return false;\" title=\"Ukrainian\" class=\"nturl\"><img data-gt-lazy-src=\"//react-dev1.wp.wellnessliving.local/wp-content/plugins/gtranslate/flags/16/uk.png\" height=\"16\" width=\"16\" alt=\"uk\" /> Ukrainian</a></div>\n</div>\n<script>\njQuery(\'.switcher .selected\').click(function() {jQuery(\'.switcher .option a img\').each(function() {if(!jQuery(this)[0].hasAttribute(\'src\'))jQuery(this).attr(\'src\', jQuery(this).attr(\'data-gt-lazy-src\'))});if(!(jQuery(\'.switcher .option\').is(\':visible\'))) {jQuery(\'.switcher .option\').stop(true,true).delay(100).slideDown(500);jQuery(\'.switcher .selected a\').toggleClass(\'open\')}});\njQuery(\'.switcher .option\').bind(\'mousewheel\', function(e) {var options = jQuery(\'.switcher .option\');if(options.is(\':visible\'))options.scrollTop(options.scrollTop() - e.originalEvent.wheelDelta);return false;});\njQuery(\'body\').not(\'.switcher\').click(function(e) {if(jQuery(\'.switcher .option\').is(\':visible\') && e.target != jQuery(\'.switcher .option\').get(0)) {jQuery(\'.switcher .option\').stop(true,true).delay(100).slideUp(500);jQuery(\'.switcher .selected a\').toggleClass(\'open\')}});\n</script>\n<style>\n#goog-gt-tt {display:none !important;}\n.goog-te-banner-frame {display:none !important;}\n.goog-te-menu-value:hover {text-decoration:none !important;}\n.goog-text-highlight {background-color:transparent !important;box-shadow:none !important;}\nbody {top:0 !important;}\n#google_translate_element2 {display:none!important;}\n</style>\n\n<div id=\"google_translate_element2\"></div>\n<script>\nfunction googleTranslateElementInit2() {new google.translate.TranslateElement({pageLanguage: \'en\',autoDisplay: false}, \'google_translate_element2\');}\n</script><script src=\"//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit2\"></script>\n\n\n<script>\nfunction GTranslateGetCurrentLang() {var keyValue = document[\'cookie\'].match(\'(^|;) ?googtrans=([^;]*)(;|$)\');return keyValue ? keyValue[2].split(\'/\')[2] : null;}\nfunction GTranslateFireEvent(element,event){try{if(document.createEventObject){var evt=document.createEventObject();element.fireEvent(\'on\'+event,evt)}else{var evt=document.createEvent(\'HTMLEvents\');evt.initEvent(event,true,true);element.dispatchEvent(evt)}}catch(e){}}\nfunction doGTranslate(lang_pair){if(lang_pair.value)lang_pair=lang_pair.value;if(lang_pair==\'\')return;var lang=lang_pair.split(\'|\')[1];if(GTranslateGetCurrentLang() == null && lang == lang_pair.split(\'|\')[0])return;var teCombo;var sel=document.getElementsByTagName(\'select\');for(var i=0;i<sel.length;i++)if(sel[i].className.indexOf(\'goog-te-combo\')!=-1){teCombo=sel[i];break;}if(document.getElementById(\'google_translate_element2\')==null||document.getElementById(\'google_translate_element2\').innerHTML.length==0||teCombo.length==0||teCombo.innerHTML.length==0){setTimeout(function(){doGTranslate(lang_pair)},500)}else{teCombo.value=lang;GTranslateFireEvent(teCombo,\'change\');GTranslateFireEvent(teCombo,\'change\')}}\nif(GTranslateGetCurrentLang() != null)jQuery(document).ready(function() {var lang_html = jQuery(\'div.switcher div.option\').find(\'img[alt=\"\'+GTranslateGetCurrentLang()+\'\"]\').parent().html();if(typeof lang_html != \'undefined\')jQuery(\'div.switcher div.selected a\').html(lang_html.replace(\'data-gt-lazy-\', \'\'));});\n</script>\n\";s:10:\"incl_langs\";a:1:{i:0;s:2:\"en\";}s:11:\"fincl_langs\";a:6:{i:0;s:3:\"ceb\";i:1;s:2:\"en\";i:2;s:2:\"de\";i:3;s:2:\"jw\";i:4;s:2:\"ru\";i:5;s:2:\"uk\";}s:9:\"alt_flags\";a:0:{}s:19:\"switcher_text_color\";s:4:\"#666\";s:20:\"switcher_arrow_color\";s:4:\"#666\";s:21:\"switcher_border_color\";s:4:\"#ccc\";s:25:\"switcher_background_color\";s:4:\"#fff\";s:32:\"switcher_background_shadow_color\";s:7:\"#efefef\";s:31:\"switcher_background_hover_color\";s:4:\"#fff\";s:19:\"dropdown_text_color\";s:4:\"#000\";s:20:\"dropdown_hover_color\";s:4:\"#fff\";s:25:\"dropdown_background_color\";s:4:\"#eee\";s:14:\"language_codes\";s:320:\"af,sq,am,ar,hy,az,eu,be,bn,bs,bg,ca,ceb,ny,zh-CN,zh-TW,co,hr,cs,da,nl,en,eo,et,tl,fi,fr,fy,gl,ka,de,el,gu,ht,ha,haw,iw,hi,hmn,hu,is,ig,id,ga,it,ja,jw,kn,kk,km,ko,ku,ky,lo,la,lv,lt,lb,mk,mg,ms,ml,mt,mi,mr,mn,my,ne,no,ps,fa,pl,pt,pa,ro,ru,sm,gd,sr,st,sn,sd,si,sk,sl,so,es,su,sw,sv,tg,ta,te,th,tr,uk,ur,uz,vi,cy,xh,yi,yo,zu\";s:15:\"language_codes2\";s:320:\"af,sq,am,ar,hy,az,eu,be,bn,bs,bg,ca,ceb,ny,zh-CN,zh-TW,co,hr,cs,da,nl,en,eo,et,tl,fi,fr,fy,gl,ka,de,el,gu,ht,ha,haw,iw,hi,hmn,hu,is,ig,id,ga,it,ja,jw,kn,kk,km,ko,ku,ky,lo,la,lv,lt,lb,mk,mg,ms,ml,mt,mi,mr,mn,my,ne,no,ps,fa,pl,pt,pa,ro,ru,sm,gd,sr,st,sn,sd,si,sk,sl,so,es,su,sw,sv,tg,ta,te,th,tr,uk,ur,uz,vi,cy,xh,yi,yo,zu\";}', 'yes'),
(788, 'widget_gtranslate', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(789, 'gtranslate_admin_notice', 'a:2:{s:15:\"two_week_review\";a:3:{s:5:\"start\";s:9:\"9/28/2021\";s:3:\"int\";i:5;s:9:\"dismissed\";i:1;}s:12:\"upgrade_tips\";a:3:{s:5:\"start\";s:9:\"9/25/2021\";s:3:\"int\";i:2;s:9:\"dismissed\";i:1;}}', 'yes'),
(871, 'rank_math_sitemap_cache_files', 'a:0:{}', 'yes'),
(1486, 'action_scheduler_migration_status', 'complete', 'yes'),
(2565, 'rank_math_review_notice_delayed', '1', 'no'),
(3949, 'crop-post-thumbs', 'a:1:{s:9:\"hide_size\";a:3:{s:4:\"post\";a:1:{s:9:\"thumbnail\";s:1:\"1\";}s:4:\"page\";a:1:{s:9:\"thumbnail\";s:1:\"1\";}s:14:\"technical_page\";a:1:{s:9:\"thumbnail\";s:1:\"1\";}}}', 'yes'),
(7285, 'rank_math_notifications', 'a:0:{}', 'yes'),
(7286, 'rank_math_review_notice_date', '1640063745', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_2_postmeta`
--

CREATE TABLE `wp_2_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_2_postmeta`
--

INSERT INTO `wp_2_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_menu_item_type', 'custom'),
(3, 3, '_menu_item_menu_item_parent', '0'),
(4, 3, '_menu_item_object_id', '3'),
(5, 3, '_menu_item_object', 'custom'),
(6, 3, '_menu_item_target', ''),
(7, 3, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(8, 3, '_menu_item_xfn', ''),
(9, 3, '_menu_item_url', '#'),
(10, 4, '_menu_item_type', 'custom'),
(11, 4, '_menu_item_menu_item_parent', '0'),
(12, 4, '_menu_item_object_id', '4'),
(13, 4, '_menu_item_object', 'custom'),
(14, 4, '_menu_item_target', ''),
(15, 4, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(16, 4, '_menu_item_xfn', ''),
(17, 4, '_menu_item_url', '#'),
(18, 6, '_menu_item_type', 'post_type'),
(19, 6, '_menu_item_menu_item_parent', '0'),
(20, 6, '_menu_item_object_id', '5'),
(21, 6, '_menu_item_object', 'page'),
(22, 6, '_menu_item_target', ''),
(23, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(24, 6, '_menu_item_xfn', ''),
(25, 6, '_menu_item_url', ''),
(26, 8, '_menu_item_type', 'post_type'),
(27, 8, '_menu_item_menu_item_parent', '3'),
(28, 8, '_menu_item_object_id', '7'),
(29, 8, '_menu_item_object', 'page'),
(30, 8, '_menu_item_target', ''),
(31, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(32, 8, '_menu_item_xfn', ''),
(33, 8, '_menu_item_url', ''),
(34, 9, '_menu_item_type', 'post_type'),
(35, 9, '_menu_item_menu_item_parent', '0'),
(36, 9, '_menu_item_object_id', '7'),
(37, 9, '_menu_item_object', 'page'),
(38, 9, '_menu_item_target', ''),
(39, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(40, 9, '_menu_item_xfn', ''),
(41, 9, '_menu_item_url', ''),
(42, 10, '_menu_item_type', 'post_type'),
(43, 10, '_menu_item_menu_item_parent', '0'),
(44, 10, '_menu_item_object_id', '7'),
(45, 10, '_menu_item_object', 'page'),
(46, 10, '_menu_item_target', ''),
(47, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(48, 10, '_menu_item_xfn', ''),
(49, 10, '_menu_item_url', ''),
(50, 12, '_menu_item_type', 'post_type'),
(51, 12, '_menu_item_menu_item_parent', '3'),
(52, 12, '_menu_item_object_id', '11'),
(53, 12, '_menu_item_object', 'page'),
(54, 12, '_menu_item_target', ''),
(55, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(56, 12, '_menu_item_xfn', ''),
(57, 12, '_menu_item_url', ''),
(58, 13, '_menu_item_type', 'post_type'),
(59, 13, '_menu_item_menu_item_parent', '0'),
(60, 13, '_menu_item_object_id', '11'),
(61, 13, '_menu_item_object', 'page'),
(62, 13, '_menu_item_target', ''),
(63, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(64, 13, '_menu_item_xfn', ''),
(65, 13, '_menu_item_url', ''),
(66, 14, '_menu_item_type', 'post_type'),
(67, 14, '_menu_item_menu_item_parent', '0'),
(68, 14, '_menu_item_object_id', '11'),
(69, 14, '_menu_item_object', 'page'),
(70, 14, '_menu_item_target', ''),
(71, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(72, 14, '_menu_item_xfn', ''),
(73, 14, '_menu_item_url', ''),
(74, 16, '_menu_item_type', 'post_type'),
(75, 16, '_menu_item_menu_item_parent', '3'),
(76, 16, '_menu_item_object_id', '15'),
(77, 16, '_menu_item_object', 'page'),
(78, 16, '_menu_item_target', ''),
(79, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(80, 16, '_menu_item_xfn', ''),
(81, 16, '_menu_item_url', ''),
(82, 17, '_menu_item_type', 'post_type'),
(83, 17, '_menu_item_menu_item_parent', '0'),
(84, 17, '_menu_item_object_id', '15'),
(85, 17, '_menu_item_object', 'page'),
(86, 17, '_menu_item_target', ''),
(87, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(88, 17, '_menu_item_xfn', ''),
(89, 17, '_menu_item_url', ''),
(90, 18, '_menu_item_type', 'post_type'),
(91, 18, '_menu_item_menu_item_parent', '0'),
(92, 18, '_menu_item_object_id', '15'),
(93, 18, '_menu_item_object', 'page'),
(94, 18, '_menu_item_target', ''),
(95, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(96, 18, '_menu_item_xfn', ''),
(97, 18, '_menu_item_url', ''),
(98, 20, '_menu_item_type', 'post_type'),
(99, 20, '_menu_item_menu_item_parent', '0'),
(100, 20, '_menu_item_object_id', '19'),
(101, 20, '_menu_item_object', 'page'),
(102, 20, '_menu_item_target', ''),
(103, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(104, 20, '_menu_item_xfn', ''),
(105, 20, '_menu_item_url', ''),
(106, 21, '_menu_item_type', 'post_type'),
(107, 21, '_menu_item_menu_item_parent', '0'),
(108, 21, '_menu_item_object_id', '19'),
(109, 21, '_menu_item_object', 'page'),
(110, 21, '_menu_item_target', ''),
(111, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(112, 21, '_menu_item_xfn', ''),
(113, 21, '_menu_item_url', ''),
(114, 22, '_menu_item_type', 'post_type'),
(115, 22, '_menu_item_menu_item_parent', '0'),
(116, 22, '_menu_item_object_id', '19'),
(117, 22, '_menu_item_object', 'page'),
(118, 22, '_menu_item_target', ''),
(119, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(120, 22, '_menu_item_xfn', ''),
(121, 22, '_menu_item_url', ''),
(122, 24, '_menu_item_type', 'post_type'),
(123, 24, '_menu_item_menu_item_parent', '0'),
(124, 24, '_menu_item_object_id', '23'),
(125, 24, '_menu_item_object', 'page'),
(126, 24, '_menu_item_target', ''),
(127, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(128, 24, '_menu_item_xfn', ''),
(129, 24, '_menu_item_url', ''),
(130, 25, '_menu_item_type', 'post_type'),
(131, 25, '_menu_item_menu_item_parent', '0'),
(132, 25, '_menu_item_object_id', '23'),
(133, 25, '_menu_item_object', 'page'),
(134, 25, '_menu_item_target', ''),
(135, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(136, 25, '_menu_item_xfn', ''),
(137, 25, '_menu_item_url', ''),
(138, 26, '_menu_item_type', 'post_type'),
(139, 26, '_menu_item_menu_item_parent', '0'),
(140, 26, '_menu_item_object_id', '23'),
(141, 26, '_menu_item_object', 'page'),
(142, 26, '_menu_item_target', ''),
(143, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(144, 26, '_menu_item_xfn', ''),
(145, 26, '_menu_item_url', ''),
(146, 28, '_menu_item_type', 'post_type'),
(147, 28, '_menu_item_menu_item_parent', '4'),
(148, 28, '_menu_item_object_id', '27'),
(149, 28, '_menu_item_object', 'page'),
(150, 28, '_menu_item_target', ''),
(151, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(152, 28, '_menu_item_xfn', ''),
(153, 28, '_menu_item_url', ''),
(154, 29, '_menu_item_type', 'post_type'),
(155, 29, '_menu_item_menu_item_parent', '0'),
(156, 29, '_menu_item_object_id', '27'),
(157, 29, '_menu_item_object', 'page'),
(158, 29, '_menu_item_target', ''),
(159, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(160, 29, '_menu_item_xfn', ''),
(161, 29, '_menu_item_url', ''),
(162, 30, '_menu_item_type', 'post_type'),
(163, 30, '_menu_item_menu_item_parent', '0'),
(164, 30, '_menu_item_object_id', '27'),
(165, 30, '_menu_item_object', 'page'),
(166, 30, '_menu_item_target', ''),
(167, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(168, 30, '_menu_item_xfn', ''),
(169, 30, '_menu_item_url', ''),
(170, 32, '_menu_item_type', 'post_type'),
(171, 32, '_menu_item_menu_item_parent', '4'),
(172, 32, '_menu_item_object_id', '31'),
(173, 32, '_menu_item_object', 'page'),
(174, 32, '_menu_item_target', ''),
(175, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(176, 32, '_menu_item_xfn', ''),
(177, 32, '_menu_item_url', ''),
(178, 33, '_menu_item_type', 'post_type'),
(179, 33, '_menu_item_menu_item_parent', '0'),
(180, 33, '_menu_item_object_id', '31'),
(181, 33, '_menu_item_object', 'page'),
(182, 33, '_menu_item_target', ''),
(183, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(184, 33, '_menu_item_xfn', ''),
(185, 33, '_menu_item_url', ''),
(186, 34, '_menu_item_type', 'post_type'),
(187, 34, '_menu_item_menu_item_parent', '0'),
(188, 34, '_menu_item_object_id', '31'),
(189, 34, '_menu_item_object', 'page'),
(190, 34, '_menu_item_target', ''),
(191, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(192, 34, '_menu_item_xfn', ''),
(193, 34, '_menu_item_url', ''),
(194, 36, '_menu_item_type', 'post_type'),
(195, 36, '_menu_item_menu_item_parent', '0'),
(196, 36, '_menu_item_object_id', '35'),
(197, 36, '_menu_item_object', 'page'),
(198, 36, '_menu_item_target', ''),
(199, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(200, 36, '_menu_item_xfn', ''),
(201, 36, '_menu_item_url', ''),
(202, 37, '_menu_item_type', 'post_type'),
(203, 37, '_menu_item_menu_item_parent', '0'),
(204, 37, '_menu_item_object_id', '35'),
(205, 37, '_menu_item_object', 'page'),
(206, 37, '_menu_item_target', ''),
(207, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(208, 37, '_menu_item_xfn', ''),
(209, 37, '_menu_item_url', ''),
(210, 38, '_menu_item_type', 'post_type'),
(211, 38, '_menu_item_menu_item_parent', '0'),
(212, 38, '_menu_item_object_id', '35'),
(213, 38, '_menu_item_object', 'page'),
(214, 38, '_menu_item_target', ''),
(215, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(216, 38, '_menu_item_xfn', ''),
(217, 38, '_menu_item_url', ''),
(218, 40, '_menu_item_type', 'post_type'),
(219, 40, '_menu_item_menu_item_parent', '0'),
(220, 40, '_menu_item_object_id', '39'),
(221, 40, '_menu_item_object', 'page'),
(222, 40, '_menu_item_target', ''),
(223, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(224, 40, '_menu_item_xfn', ''),
(225, 40, '_menu_item_url', ''),
(226, 41, '_menu_item_type', 'post_type'),
(227, 41, '_menu_item_menu_item_parent', '0'),
(228, 41, '_menu_item_object_id', '39'),
(229, 41, '_menu_item_object', 'page'),
(230, 41, '_menu_item_target', ''),
(231, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(232, 41, '_menu_item_xfn', ''),
(233, 41, '_menu_item_url', ''),
(234, 42, '_menu_item_type', 'post_type'),
(235, 42, '_menu_item_menu_item_parent', '0'),
(236, 42, '_menu_item_object_id', '39'),
(237, 42, '_menu_item_object', 'page'),
(238, 42, '_menu_item_target', ''),
(239, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(240, 42, '_menu_item_xfn', ''),
(241, 42, '_menu_item_url', ''),
(242, 44, '_menu_item_type', 'post_type'),
(243, 44, '_menu_item_menu_item_parent', '0'),
(244, 44, '_menu_item_object_id', '43'),
(245, 44, '_menu_item_object', 'page'),
(246, 44, '_menu_item_target', ''),
(247, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(248, 44, '_menu_item_xfn', ''),
(249, 44, '_menu_item_url', ''),
(250, 45, '_menu_item_type', 'post_type'),
(251, 45, '_menu_item_menu_item_parent', '0'),
(252, 45, '_menu_item_object_id', '43'),
(253, 45, '_menu_item_object', 'page'),
(254, 45, '_menu_item_target', ''),
(255, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(256, 45, '_menu_item_xfn', ''),
(257, 45, '_menu_item_url', ''),
(258, 46, '_menu_item_type', 'post_type'),
(259, 46, '_menu_item_menu_item_parent', '0'),
(260, 46, '_menu_item_object_id', '43'),
(261, 46, '_menu_item_object', 'page'),
(262, 46, '_menu_item_target', ''),
(263, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(264, 46, '_menu_item_xfn', ''),
(265, 46, '_menu_item_url', ''),
(266, 48, '_menu_item_type', 'post_type'),
(267, 48, '_menu_item_menu_item_parent', '0'),
(268, 48, '_menu_item_object_id', '47'),
(269, 48, '_menu_item_object', 'page'),
(270, 48, '_menu_item_target', '_blank'),
(271, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(272, 48, '_menu_item_xfn', ''),
(273, 48, '_menu_item_url', ''),
(274, 49, '_menu_item_type', 'post_type'),
(275, 49, '_menu_item_menu_item_parent', '0'),
(276, 49, '_menu_item_object_id', '47'),
(277, 49, '_menu_item_object', 'page'),
(278, 49, '_menu_item_target', ''),
(279, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(280, 49, '_menu_item_xfn', ''),
(281, 49, '_menu_item_url', ''),
(282, 50, '_menu_item_type', 'post_type'),
(283, 50, '_menu_item_menu_item_parent', '0'),
(284, 50, '_menu_item_object_id', '47'),
(285, 50, '_menu_item_object', 'page'),
(286, 50, '_menu_item_target', ''),
(287, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(288, 50, '_menu_item_xfn', ''),
(289, 50, '_menu_item_url', ''),
(290, 52, '_menu_item_type', 'post_type'),
(291, 52, '_menu_item_menu_item_parent', '0'),
(292, 52, '_menu_item_object_id', '51'),
(293, 52, '_menu_item_object', 'page'),
(294, 52, '_menu_item_target', ''),
(295, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(296, 52, '_menu_item_xfn', ''),
(297, 52, '_menu_item_url', ''),
(298, 54, '_menu_item_type', 'post_type'),
(299, 54, '_menu_item_menu_item_parent', '0'),
(300, 54, '_menu_item_object_id', '53'),
(301, 54, '_menu_item_object', 'page'),
(302, 54, '_menu_item_target', ''),
(303, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(304, 54, '_menu_item_xfn', ''),
(305, 54, '_menu_item_url', ''),
(306, 56, '_wp_page_template', 'locations.php'),
(307, 57, '_menu_item_type', 'post_type'),
(308, 57, '_menu_item_menu_item_parent', '0'),
(309, 57, '_menu_item_object_id', '56'),
(310, 57, '_menu_item_object', 'page'),
(311, 57, '_menu_item_target', ''),
(312, 57, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(313, 57, '_menu_item_xfn', ''),
(314, 57, '_menu_item_url', ''),
(315, 58, '_menu_item_type', 'post_type'),
(316, 58, '_menu_item_menu_item_parent', '0'),
(317, 58, '_menu_item_object_id', '56'),
(318, 58, '_menu_item_object', 'page'),
(319, 58, '_menu_item_target', ''),
(320, 58, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(321, 58, '_menu_item_xfn', ''),
(322, 58, '_menu_item_url', ''),
(323, 59, '_menu_item_type', 'post_type'),
(324, 59, '_menu_item_menu_item_parent', '0'),
(325, 59, '_menu_item_object_id', '56'),
(326, 59, '_menu_item_object', 'page'),
(327, 59, '_menu_item_target', ''),
(328, 59, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(329, 59, '_menu_item_xfn', ''),
(330, 59, '_menu_item_url', ''),
(331, 23, 'react_config_option', 'a:2:{s:10:\"components\";a:1:{i:0;a:6:{s:10:\"colsPerRow\";i:1;s:16:\"colsPerRowTablet\";i:1;s:16:\"colsPerRowMobile\";i:1;s:5:\"align\";s:7:\"stretch\";s:6:\"gutter\";i:0;s:4:\"cols\";a:1:{i:0;a:5:{s:6:\"gutter\";i:0;s:5:\"align\";s:6:\"middle\";s:7:\"justify\";s:6:\"center\";s:4:\"flow\";s:3:\"row\";s:8:\"children\";a:1:{i:0;a:3:{s:2:\"id\";s:13:\"pe18I2j5WIVym\";s:4:\"name\";s:5:\"Store\";s:5:\"views\";a:0:{}}}}}}}s:6:\"config\";a:2:{s:9:\"undefined\";a:1:{s:6:\"config\";a:3:{s:15:\"bannerContainer\";a:1:{s:15:\"backgroundImage\";a:7:{s:3:\"alt\";s:0:\"\";s:5:\"title\";s:10:\"counter-bg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:6:\"height\";i:150;s:5:\"width\";i:150;s:3:\"url\";s:99:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/06/counter-bg-150x150.jpg\";s:11:\"orientation\";s:9:\"landscape\";}s:6:\"medium\";a:4:{s:6:\"height\";i:175;s:5:\"width\";i:300;s:3:\"url\";s:99:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/06/counter-bg-300x175.jpg\";s:11:\"orientation\";s:9:\"landscape\";}s:4:\"full\";a:4:{s:3:\"url\";s:91:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/06/counter-bg.jpg\";s:6:\"height\";i:425;s:5:\"width\";i:730;s:11:\"orientation\";s:9:\"landscape\";}}s:5:\"width\";i:730;s:6:\"height\";i:425;s:3:\"url\";s:91:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/06/counter-bg.jpg\";s:12:\"selectedSize\";s:4:\"full\";}}s:9:\"container\";a:1:{s:15:\"backgroundImage\";a:7:{s:3:\"alt\";s:0:\"\";s:5:\"title\";s:10:\"counter-bg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:6:\"height\";i:150;s:5:\"width\";i:150;s:3:\"url\";s:99:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/06/counter-bg-150x150.jpg\";s:11:\"orientation\";s:9:\"landscape\";}s:6:\"medium\";a:4:{s:6:\"height\";i:175;s:5:\"width\";i:300;s:3:\"url\";s:99:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/06/counter-bg-300x175.jpg\";s:11:\"orientation\";s:9:\"landscape\";}s:4:\"full\";a:4:{s:3:\"url\";s:91:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/06/counter-bg.jpg\";s:6:\"height\";i:425;s:5:\"width\";i:730;s:11:\"orientation\";s:9:\"landscape\";}}s:5:\"width\";i:730;s:6:\"height\";i:425;s:3:\"url\";s:91:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/06/counter-bg.jpg\";s:12:\"selectedSize\";s:4:\"full\";}}s:5:\"image\";a:1:{s:5:\"image\";a:7:{s:3:\"alt\";s:0:\"\";s:5:\"title\";s:10:\"counter-bg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:6:\"height\";i:150;s:5:\"width\";i:150;s:3:\"url\";s:99:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/06/counter-bg-150x150.jpg\";s:11:\"orientation\";s:9:\"landscape\";}s:6:\"medium\";a:4:{s:6:\"height\";i:175;s:5:\"width\";i:300;s:3:\"url\";s:99:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/06/counter-bg-300x175.jpg\";s:11:\"orientation\";s:9:\"landscape\";}s:4:\"full\";a:4:{s:3:\"url\";s:91:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/06/counter-bg.jpg\";s:6:\"height\";i:425;s:5:\"width\";i:730;s:11:\"orientation\";s:9:\"landscape\";}}s:5:\"width\";i:730;s:6:\"height\";i:425;s:3:\"url\";s:91:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/06/counter-bg.jpg\";s:12:\"selectedSize\";s:4:\"full\";}}}}s:13:\"pe18I2j5WIVym\";a:4:{s:20:\"availableWidgetViews\";a:0:{}s:10:\"viewToEdit\";s:4:\"main\";s:11:\"viewsConfig\";a:0:{}s:6:\"config\";a:5:{s:11:\"search_icon\";a:1:{s:5:\"style\";a:1:{s:5:\"color\";s:18:\"rgba(74,144,226,1)\";}}s:10:\"categories\";a:1:{s:5:\"style\";a:8:{s:15:\"backgroundColor\";s:19:\"rgba(155,155,155,1)\";s:11:\"borderColor\";s:18:\"rgba(80,227,194,1)\";s:12:\"borderRadius\";s:3:\"0px\";s:11:\"borderWidth\";s:3:\"2px\";s:20:\"backgroundHoverColor\";s:16:\"rgba(208,2,27,1)\";s:10:\"hoverColor\";s:19:\"rgba(255,255,255,1)\";s:5:\"color\";s:19:\"rgba(255,255,255,1)\";s:11:\"borderStyle\";s:5:\"solid\";}}s:11:\"add_to_cart\";a:1:{s:5:\"style\";a:2:{s:20:\"backgroundHoverColor\";s:18:\"rgba(126,211,33,1)\";s:10:\"hoverColor\";s:17:\"rgba(139,87,42,1)\";}}s:16:\"categoriesActive\";a:1:{s:5:\"style\";a:2:{s:15:\"backgroundColor\";s:16:\"rgba(208,2,27,1)\";s:5:\"color\";s:19:\"rgba(255,255,255,1)\";}}s:15:\"categoriesHover\";a:1:{s:5:\"style\";a:5:{s:15:\"backgroundColor\";s:18:\"rgba(126,211,33,1)\";s:5:\"color\";s:13:\"rgba(0,0,0,1)\";s:11:\"borderColor\";s:18:\"rgba(74,144,226,1)\";s:11:\"borderStyle\";s:5:\"solid\";s:11:\"borderWidth\";s:3:\"2px\";}}}}}}'),
(332, 70, '_edit_lock', '1623056393:1'),
(333, 70, '_wp_page_template', 'sandbox-with-react.php'),
(334, 72, '_wp_attached_file', '2021/06/goals-img.jpg'),
(335, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:598;s:6:\"height\";i:320;s:4:\"file\";s:21:\"2021/06/goals-img.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"goals-img-300x161.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:161;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"goals-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(336, 73, '_wp_attached_file', '2021/06/hiphop_1.jpg'),
(337, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2400;s:6:\"height\";i:1590;s:4:\"file\";s:20:\"2021/06/hiphop_1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"hiphop_1-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"hiphop_1-1024x678.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:678;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"hiphop_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"hiphop_1-768x509.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:509;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"hiphop_1-1536x1018.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1018;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"hiphop_1-2048x1357.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1357;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(338, 74, '_wp_attached_file', '2021/06/lead-captire-yoga-bg.jpg'),
(339, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1922;s:6:\"height\";i:692;s:4:\"file\";s:32:\"2021/06/lead-captire-yoga-bg.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"lead-captire-yoga-bg-300x108.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:108;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"lead-captire-yoga-bg-1024x369.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:369;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"lead-captire-yoga-bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"lead-captire-yoga-bg-768x277.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:33:\"lead-captire-yoga-bg-1536x553.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:553;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(340, 75, '_wp_attached_file', '2021/06/counter-bg.jpg'),
(341, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:730;s:6:\"height\";i:425;s:4:\"file\";s:22:\"2021/06/counter-bg.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"counter-bg-300x175.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"counter-bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(350, 5, 'react_config_option', 'a:2:{s:10:\"components\";a:3:{i:0;a:6:{s:10:\"colsPerRow\";i:1;s:16:\"colsPerRowTablet\";i:1;s:16:\"colsPerRowMobile\";i:1;s:5:\"align\";s:7:\"stretch\";s:6:\"gutter\";i:0;s:4:\"cols\";a:1:{i:0;a:5:{s:6:\"gutter\";i:0;s:5:\"align\";s:6:\"middle\";s:7:\"justify\";s:6:\"center\";s:4:\"flow\";s:3:\"row\";s:8:\"children\";a:1:{i:0;a:3:{s:2:\"id\";s:13:\"5Uy2oQQVVx0q4\";s:4:\"name\";s:16:\"Featured Classes\";s:5:\"views\";a:0:{}}}}}}i:1;a:6:{s:10:\"colsPerRow\";i:1;s:16:\"colsPerRowTablet\";i:1;s:16:\"colsPerRowMobile\";i:1;s:5:\"align\";s:7:\"stretch\";s:6:\"gutter\";i:0;s:4:\"cols\";a:1:{i:0;a:5:{s:6:\"gutter\";i:0;s:5:\"align\";s:6:\"middle\";s:7:\"justify\";s:6:\"center\";s:4:\"flow\";s:3:\"row\";s:8:\"children\";a:1:{i:0;a:3:{s:2:\"id\";s:13:\"doEoz3tqqmFUn\";s:4:\"name\";s:8:\"Packages\";s:5:\"views\";a:0:{}}}}}}i:2;a:6:{s:10:\"colsPerRow\";i:1;s:16:\"colsPerRowTablet\";i:1;s:16:\"colsPerRowMobile\";i:1;s:5:\"align\";s:7:\"stretch\";s:6:\"gutter\";i:0;s:4:\"cols\";a:1:{i:0;a:5:{s:6:\"gutter\";i:0;s:5:\"align\";s:6:\"middle\";s:7:\"justify\";s:6:\"center\";s:4:\"flow\";s:3:\"row\";s:8:\"children\";a:1:{i:0;a:3:{s:2:\"id\";s:13:\"2zNkFidsj3zDs\";s:4:\"name\";s:10:\"App Banner\";s:5:\"views\";a:0:{}}}}}}}s:6:\"config\";a:4:{s:13:\"2zNkFidsj3zDs\";a:3:{s:20:\"availableWidgetViews\";a:0:{}s:10:\"viewToEdit\";s:4:\"main\";s:11:\"viewsConfig\";a:0:{}}s:9:\"undefined\";a:1:{s:6:\"config\";a:1:{s:14:\"socialIconList\";a:2:{s:5:\"style\";a:9:{s:7:\"padding\";s:0:\"\";s:11:\"borderColor\";s:18:\"rgba(245,166,35,1)\";s:12:\"borderRadius\";s:3:\"3px\";s:11:\"borderStyle\";s:5:\"solid\";s:11:\"borderWidth\";s:3:\"2px\";s:5:\"color\";s:17:\"rgba(67,54,129,1)\";s:8:\"fontSize\";s:4:\"36px\";s:9:\"textAlign\";s:6:\"center\";s:15:\"backgroundColor\";s:19:\"rgba(184,233,134,1)\";}s:12:\"sectionsList\";a:2:{i:0;a:5:{s:7:\"bigText\";s:0:\"\";s:15:\"backgroundColor\";s:0:\"\";s:7:\"visible\";b:0;s:4:\"icon\";s:16:\"css-icon-twitter\";s:4:\"link\";s:56:\"https://monosnap.com/file/qD28tPmaCszSPpKtL29lsyFmQKffPw\";}i:1;a:5:{s:7:\"bigText\";s:0:\"\";s:15:\"backgroundColor\";s:0:\"\";s:7:\"visible\";b:0;s:4:\"icon\";s:17:\"css-icon-linkedin\";s:4:\"link\";s:56:\"https://monosnap.com/file/qD28tPmaCszSPpKtL29lsyFmQKffPw\";}}}}}s:13:\"doEoz3tqqmFUn\";a:4:{s:20:\"availableWidgetViews\";a:0:{}s:10:\"viewToEdit\";s:4:\"main\";s:11:\"viewsConfig\";a:0:{}s:6:\"config\";a:1:{s:4:\"main\";a:2:{s:20:\"packageIdsByLocation\";a:1:{i:49722;a:192:{i:0;s:5:\"98402\";i:1;s:5:\"98498\";i:2;s:5:\"98529\";i:3;s:5:\"98531\";i:4;s:5:\"98535\";i:5;s:5:\"99731\";i:6;s:5:\"99733\";i:7;s:6:\"106124\";i:8;s:6:\"109593\";i:9;s:6:\"110111\";i:10;s:6:\"113033\";i:11;s:6:\"116682\";i:12;s:6:\"118242\";i:13;s:6:\"120003\";i:14;s:6:\"127593\";i:15;s:6:\"127907\";i:16;s:6:\"127909\";i:17;s:6:\"128140\";i:18;s:6:\"129349\";i:19;s:6:\"129594\";i:20;s:6:\"131398\";i:21;s:6:\"131537\";i:22;s:6:\"131655\";i:23;s:6:\"131675\";i:24;s:6:\"131679\";i:25;s:6:\"131680\";i:26;s:6:\"131701\";i:27;s:6:\"135985\";i:28;s:6:\"142803\";i:29;s:6:\"146960\";i:30;s:6:\"146990\";i:31;s:6:\"147081\";i:32;s:6:\"147720\";i:33;s:6:\"147753\";i:34;s:6:\"149175\";i:35;s:6:\"149176\";i:36;s:6:\"149907\";i:37;s:6:\"149912\";i:38;s:5:\"94241\";i:39;s:5:\"94245\";i:40;s:5:\"94285\";i:41;s:5:\"94286\";i:42;s:5:\"94290\";i:43;s:5:\"94296\";i:44;s:5:\"94297\";i:45;s:5:\"94298\";i:46;s:5:\"98379\";i:47;s:5:\"98532\";i:48;s:5:\"98540\";i:49;s:5:\"99037\";i:50;s:6:\"109765\";i:51;s:6:\"112081\";i:52;s:6:\"113292\";i:53;s:6:\"127594\";i:54;s:6:\"127874\";i:55;s:6:\"127908\";i:56;s:6:\"127910\";i:57;s:6:\"127916\";i:58;s:6:\"127919\";i:59;s:6:\"128284\";i:60;s:6:\"128444\";i:61;s:6:\"129587\";i:62;s:6:\"130238\";i:63;s:6:\"130933\";i:64;s:6:\"131411\";i:65;s:6:\"131412\";i:66;s:6:\"131654\";i:67;s:6:\"131669\";i:68;s:6:\"131673\";i:69;s:6:\"131711\";i:70;s:6:\"132317\";i:71;s:6:\"134122\";i:72;s:6:\"142804\";i:73;s:6:\"146944\";i:74;s:6:\"146977\";i:75;s:6:\"146988\";i:76;s:6:\"147023\";i:77;s:6:\"149913\";i:78;s:6:\"150097\";i:79;s:6:\"130887\";i:80;s:6:\"131672\";i:81;s:6:\"150292\";i:82;s:6:\"112085\";i:83;s:5:\"98536\";i:84;s:5:\"98543\";i:85;s:6:\"129929\";i:86;s:6:\"131656\";i:87;s:6:\"149177\";i:88;s:6:\"149178\";i:89;s:5:\"94238\";i:90;s:5:\"94242\";i:91;s:5:\"94284\";i:92;s:5:\"94467\";i:93;s:5:\"94469\";i:94;s:6:\"120023\";i:95;s:6:\"128292\";i:96;s:6:\"128314\";i:97;s:6:\"128317\";i:98;s:6:\"135988\";i:99;s:6:\"128283\";i:100;s:5:\"94239\";i:101;s:6:\"127911\";i:102;s:6:\"127914\";i:103;s:6:\"127918\";i:104;s:6:\"131414\";i:105;s:6:\"131662\";i:106;s:6:\"131663\";i:107;s:6:\"147082\";i:108;s:6:\"148962\";i:109;s:6:\"115457\";i:110;s:6:\"120613\";i:111;s:6:\"113017\";i:112;s:6:\"113018\";i:113;s:6:\"129342\";i:114;s:6:\"130946\";i:115;s:5:\"98414\";i:116;s:6:\"109605\";i:117;s:6:\"127877\";i:118;s:6:\"127878\";i:119;s:6:\"127883\";i:120;s:6:\"127879\";i:121;s:6:\"127880\";i:122;s:6:\"127882\";i:123;s:6:\"127884\";i:124;s:6:\"127885\";i:125;s:6:\"127887\";i:126;s:6:\"130237\";i:127;s:6:\"127881\";i:128;s:6:\"127886\";i:129;s:6:\"127888\";i:130;s:6:\"129592\";i:131;s:6:\"130945\";i:132;s:6:\"131410\";i:133;s:6:\"131653\";i:134;s:6:\"131683\";i:135;s:6:\"131627\";i:136;s:6:\"134957\";i:137;s:6:\"147166\";i:138;s:6:\"148511\";i:139;s:6:\"127657\";i:140;s:6:\"146992\";i:141;s:6:\"147740\";i:142;s:6:\"148423\";i:143;s:6:\"148457\";i:144;s:5:\"98544\";i:145;s:6:\"127917\";i:146;s:5:\"95515\";i:147;s:5:\"98503\";i:148;s:5:\"98517\";i:149;s:5:\"98518\";i:150;s:6:\"112608\";i:151;s:6:\"127658\";i:152;s:6:\"127659\";i:153;s:6:\"128282\";i:154;s:6:\"135989\";i:155;s:6:\"147717\";i:156;s:5:\"98495\";i:157;s:5:\"98499\";i:158;s:5:\"98500\";i:159;s:5:\"98502\";i:160;s:5:\"98504\";i:161;s:5:\"98505\";i:162;s:5:\"98507\";i:163;s:5:\"98519\";i:164;s:5:\"98521\";i:165;s:5:\"98525\";i:166;s:6:\"112595\";i:167;s:6:\"128130\";i:168;s:6:\"129344\";i:169;s:6:\"129593\";i:170;s:6:\"131413\";i:171;s:6:\"131666\";i:172;s:6:\"131667\";i:173;s:6:\"131668\";i:174;s:6:\"132315\";i:175;s:6:\"146788\";i:176;s:6:\"147260\";i:177;s:6:\"149916\";i:178;s:5:\"98501\";i:179;s:5:\"98506\";i:180;s:5:\"98523\";i:181;s:6:\"130885\";i:182;s:6:\"112084\";i:183;s:5:\"94312\";i:184;s:5:\"94310\";i:185;s:5:\"94311\";i:186;s:6:\"127915\";i:187;s:6:\"129343\";i:188;s:6:\"145707\";i:189;s:6:\"146995\";i:190;s:6:\"147716\";i:191;s:6:\"148512\";}}s:5:\"limit\";i:3;}}}s:13:\"5Uy2oQQVVx0q4\";a:4:{s:20:\"availableWidgetViews\";a:0:{}s:10:\"viewToEdit\";s:4:\"main\";s:11:\"viewsConfig\";a:0:{}s:6:\"config\";a:1:{s:4:\"main\";a:1:{s:18:\"classIdsByLocation\";a:1:{i:50387;a:4:{i:0;s:5:\"67627\";i:1;s:5:\"67628\";i:2;s:5:\"67632\";i:3;s:5:\"67655\";}}}}}}}'),
(351, 35, 'react_config_option', 'a:2:{s:10:\"components\";a:1:{i:0;a:6:{s:10:\"colsPerRow\";i:1;s:16:\"colsPerRowTablet\";i:1;s:16:\"colsPerRowMobile\";i:1;s:5:\"align\";s:7:\"stretch\";s:6:\"gutter\";i:0;s:4:\"cols\";a:1:{i:0;a:5:{s:6:\"gutter\";i:0;s:5:\"align\";s:6:\"middle\";s:7:\"justify\";s:6:\"center\";s:4:\"flow\";s:3:\"row\";s:8:\"children\";a:1:{i:0;a:3:{s:2:\"id\";s:13:\"AwfmxFkhtQbDg\";s:4:\"name\";s:7:\"Reviews\";s:5:\"views\";a:0:{}}}}}}}s:6:\"config\";a:1:{s:13:\"AwfmxFkhtQbDg\";a:4:{s:20:\"availableWidgetViews\";a:0:{}s:10:\"viewToEdit\";s:4:\"main\";s:11:\"viewsConfig\";a:0:{}s:6:\"config\";a:5:{s:10:\"pagination\";a:1:{s:5:\"style\";a:1:{s:5:\"color\";s:18:\"rgba(245,166,35,1)\";}}s:4:\"role\";a:0:{}s:19:\"paginationNotActive\";a:1:{s:5:\"style\";a:1:{s:5:\"color\";s:18:\"rgba(126,211,33,1)\";}}s:16:\"paginationActive\";a:1:{s:5:\"style\";a:1:{s:5:\"color\";s:16:\"rgba(208,2,27,1)\";}}s:8:\"readMore\";a:1:{s:5:\"style\";a:3:{s:5:\"color\";s:18:\"rgba(245,166,35,1)\";s:8:\"fontSize\";s:4:\"13px\";s:10:\"fontFamily\";s:7:\"Candara\";}}}}}}'),
(362, 84, '_edit_lock', '1623080134:1'),
(363, 84, 'react_config_option', 'a:2:{s:10:\"components\";a:0:{}s:6:\"config\";a:0:{}}'),
(364, 19, 'react_config_option', 'a:2:{s:10:\"components\";a:1:{i:0;a:6:{s:10:\"colsPerRow\";i:1;s:16:\"colsPerRowTablet\";i:1;s:16:\"colsPerRowMobile\";i:1;s:5:\"align\";s:7:\"stretch\";s:6:\"gutter\";i:0;s:4:\"cols\";a:1:{i:0;a:5:{s:6:\"gutter\";i:0;s:5:\"align\";s:6:\"middle\";s:7:\"justify\";s:6:\"center\";s:4:\"flow\";s:3:\"row\";s:8:\"children\";a:1:{i:0;a:2:{s:2:\"id\";s:13:\"NeHIHbiP2gAAu\";s:4:\"name\";s:8:\"Schedule\";}}}}}}s:6:\"config\";a:1:{s:13:\"NeHIHbiP2gAAu\";a:1:{s:6:\"config\";a:4:{s:12:\"filterButton\";a:1:{s:5:\"style\";a:6:{s:15:\"backgroundColor\";s:16:\"rgba(208,2,27,1)\";s:20:\"backgroundHoverColor\";s:18:\"rgba(248,231,28,1)\";s:23:\"backgroundSelectedColor\";s:18:\"rgba(126,211,33,1)\";s:11:\"borderStyle\";s:5:\"solid\";s:12:\"borderRadius\";s:4:\"12px\";s:11:\"borderWidth\";s:3:\"0px\";}}s:10:\"dateButton\";a:1:{s:5:\"style\";a:3:{s:15:\"backgroundColor\";s:18:\"rgba(245,166,35,1)\";s:20:\"backgroundHoverColor\";s:16:\"rgba(208,2,27,1)\";s:23:\"backgroundSelectedColor\";s:16:\"rgba(65,117,5,1)\";}}s:14:\"calendarButton\";a:1:{s:5:\"style\";a:3:{s:15:\"backgroundColor\";s:16:\"rgba(208,2,27,1)\";s:20:\"backgroundHoverColor\";s:18:\"rgba(248,231,28,1)\";s:23:\"backgroundSelectedColor\";s:16:\"rgba(65,117,5,1)\";}}s:7:\"heading\";a:2:{s:5:\"style\";a:0:{}s:4:\"text\";s:0:\"\";}}}}}'),
(365, 86, '_edit_lock', '1623080749:1'),
(366, 5, '_edit_lock', '1634297573:1'),
(367, 89, '_edit_lock', '1625140200:1'),
(368, 91, '_wp_page_template', 'step-1.php'),
(369, 92, '_wp_page_template', 'step-2.php'),
(370, 93, '_wp_page_template', 'step-3.php'),
(371, 94, '_wp_page_template', 'step-4.php'),
(372, 95, '_wp_page_template', 'step-5.php'),
(373, 96, '_wp_page_template', 'wrench.php'),
(374, 43, 'react_config_option', 'a:2:{s:10:\"components\";a:2:{i:0;a:6:{s:10:\"colsPerRow\";i:1;s:16:\"colsPerRowTablet\";i:1;s:16:\"colsPerRowMobile\";i:1;s:5:\"align\";s:7:\"stretch\";s:6:\"gutter\";i:0;s:4:\"cols\";a:1:{i:0;a:5:{s:6:\"gutter\";i:0;s:5:\"align\";s:6:\"middle\";s:7:\"justify\";s:6:\"center\";s:4:\"flow\";s:3:\"row\";s:8:\"children\";a:1:{i:0;a:3:{s:2:\"id\";s:13:\"aYG34FdkiXS4O\";s:4:\"name\";s:4:\"Blog\";s:5:\"views\";a:0:{}}}}}}i:1;a:6:{s:10:\"colsPerRow\";i:1;s:16:\"colsPerRowTablet\";i:1;s:16:\"colsPerRowMobile\";i:1;s:5:\"align\";s:7:\"stretch\";s:6:\"gutter\";i:0;s:4:\"cols\";a:1:{i:0;a:5:{s:6:\"gutter\";i:0;s:5:\"align\";s:6:\"middle\";s:7:\"justify\";s:6:\"center\";s:4:\"flow\";s:3:\"row\";s:8:\"children\";a:1:{i:0;a:3:{s:2:\"id\";s:13:\"EKsxbnlvEMIzA\";s:4:\"name\";s:12:\"Real Results\";s:5:\"views\";a:2:{i:0;s:4:\"main\";i:1;s:4:\"page\";}}}}}}}s:6:\"config\";a:1:{s:13:\"EKsxbnlvEMIzA\";a:4:{s:20:\"availableWidgetViews\";a:2:{i:0;s:4:\"main\";i:1;s:4:\"page\";}s:10:\"viewToEdit\";s:4:\"main\";s:11:\"viewsConfig\";a:2:{s:4:\"main\";a:1:{s:12:\"targetPageId\";i:5;}s:4:\"page\";a:1:{s:12:\"targetPageId\";i:43;}}s:6:\"config\";a:4:{s:4:\"main\";a:1:{s:7:\"results\";a:1:{i:0;a:9:{s:7:\"bigText\";s:73:\"<p><span style=\"color: #555555;\">How to become a real big man</span></p>\n\";s:9:\"imgBefore\";a:7:{s:3:\"alt\";s:0:\"\";s:5:\"title\";s:12:\"harry-potter\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:3:\"url\";s:101:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/09/harry-potter-150x150.jpg\";s:6:\"height\";i:150;s:5:\"width\";i:150;s:11:\"orientation\";s:9:\"landscape\";}s:6:\"medium\";a:4:{s:3:\"url\";s:101:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/09/harry-potter-180x300.jpg\";s:6:\"height\";i:300;s:5:\"width\";i:180;s:11:\"orientation\";s:8:\"portrait\";}s:4:\"full\";a:4:{s:3:\"url\";s:93:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/09/harry-potter.jpg\";s:6:\"height\";i:533;s:5:\"width\";i:319;s:11:\"orientation\";s:8:\"portrait\";}}s:5:\"width\";i:319;s:6:\"height\";i:533;s:3:\"url\";s:93:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/09/harry-potter.jpg\";s:12:\"selectedSize\";s:4:\"full\";}s:16:\"imgBeforeCaption\";s:5:\"Garry\";s:8:\"imgAfter\";a:7:{s:3:\"alt\";s:0:\"\";s:5:\"title\";s:9:\"goals-img\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:3:\"url\";s:98:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/06/goals-img-150x150.jpg\";s:6:\"height\";i:150;s:5:\"width\";i:150;s:11:\"orientation\";s:9:\"landscape\";}s:6:\"medium\";a:4:{s:3:\"url\";s:98:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/06/goals-img-300x161.jpg\";s:6:\"height\";i:161;s:5:\"width\";i:300;s:11:\"orientation\";s:9:\"landscape\";}s:4:\"full\";a:4:{s:3:\"url\";s:90:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/06/goals-img.jpg\";s:6:\"height\";i:320;s:5:\"width\";i:598;s:11:\"orientation\";s:9:\"landscape\";}}s:5:\"width\";i:598;s:6:\"height\";i:320;s:3:\"url\";s:90:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/06/goals-img.jpg\";s:12:\"selectedSize\";s:4:\"full\";}s:15:\"imgAfterCaption\";s:7:\"Big Man\";s:8:\"username\";s:21:\"from Garry to Big Man\";s:3:\"age\";s:2:\"28\";s:6:\"result\";s:10:\"Big Muscle\";s:6:\"period\";s:8:\"6 months\";}}}s:7:\"heading\";a:1:{s:4:\"text\";s:0:\"\";}s:4:\"line\";a:1:{s:5:\"style\";a:1:{s:15:\"backgroundColor\";s:18:\"rgba(248,231,28,1)\";}}s:9:\"lastBlock\";a:1:{s:4:\"text\";s:0:\"\";}}}}}'),
(375, 7, 'react_config_option', 'a:2:{s:10:\"components\";a:1:{i:0;a:6:{s:10:\"colsPerRow\";i:1;s:16:\"colsPerRowTablet\";i:1;s:16:\"colsPerRowMobile\";i:1;s:5:\"align\";s:7:\"stretch\";s:6:\"gutter\";i:0;s:4:\"cols\";a:1:{i:0;a:5:{s:6:\"gutter\";i:0;s:5:\"align\";s:6:\"middle\";s:7:\"justify\";s:6:\"center\";s:4:\"flow\";s:3:\"row\";s:8:\"children\";a:1:{i:0;a:3:{s:2:\"id\";s:13:\"RUWvwFqwDDPaY\";s:4:\"name\";s:17:\"Book Appointments\";s:5:\"views\";a:0:{}}}}}}}s:6:\"config\";a:1:{s:13:\"RUWvwFqwDDPaY\";a:4:{s:20:\"availableWidgetViews\";a:0:{}s:10:\"viewToEdit\";s:4:\"main\";s:11:\"viewsConfig\";a:0:{}s:6:\"config\";a:5:{s:6:\"button\";a:1:{s:5:\"style\";a:1:{s:15:\"backgroundColor\";s:0:\"\";}}s:4:\"tabs\";a:1:{s:5:\"style\";a:8:{s:15:\"backgroundColor\";s:18:\"rgba(245,166,35,1)\";s:11:\"borderColor\";s:18:\"rgba(245,166,35,1)\";s:12:\"borderRadius\";s:3:\"8px\";s:11:\"borderStyle\";s:5:\"solid\";s:11:\"borderWidth\";s:3:\"1px\";s:5:\"color\";s:13:\"rgba(0,0,0,1)\";s:8:\"fontSize\";s:4:\"10px\";s:10:\"fontFamily\";s:11:\"Courier New\";}}s:4:\"main\";a:2:{s:16:\"appointmentsList\";a:1:{i:50387;a:7:{i:0;s:5:\"50686\";i:1;s:5:\"50687\";i:2;s:5:\"50688\";i:3;s:5:\"50689\";i:4;s:5:\"50690\";i:5;s:5:\"50694\";i:6;s:5:\"50696\";}}s:5:\"theme\";s:7:\"fitness\";}s:10:\"tabsActive\";a:1:{s:5:\"style\";a:8:{s:15:\"backgroundColor\";s:17:\"rgba(139,87,42,1)\";s:11:\"borderColor\";s:17:\"rgba(139,87,42,1)\";s:12:\"borderRadius\";s:3:\"8px\";s:11:\"borderStyle\";s:6:\"dashed\";s:11:\"borderWidth\";s:3:\"3px\";s:5:\"color\";s:19:\"rgba(255,255,255,1)\";s:8:\"fontSize\";s:4:\"14px\";s:10:\"fontFamily\";s:5:\"Arial\";}}s:9:\"tabsHover\";a:1:{s:5:\"style\";a:6:{s:15:\"backgroundColor\";s:18:\"rgba(126,211,33,1)\";s:11:\"borderColor\";s:18:\"rgba(245,166,35,1)\";s:12:\"borderRadius\";s:3:\"8px\";s:11:\"borderStyle\";s:6:\"dashed\";s:11:\"borderWidth\";s:3:\"3px\";s:5:\"color\";s:16:\"rgba(208,2,27,1)\";}}}}}}'),
(376, 11, 'react_config_option', 'a:2:{s:10:\"components\";a:1:{i:0;a:6:{s:10:\"colsPerRow\";i:1;s:16:\"colsPerRowTablet\";i:1;s:16:\"colsPerRowMobile\";i:1;s:5:\"align\";s:7:\"stretch\";s:6:\"gutter\";i:0;s:4:\"cols\";a:1:{i:0;a:5:{s:6:\"gutter\";i:0;s:5:\"align\";s:6:\"middle\";s:7:\"justify\";s:6:\"center\";s:4:\"flow\";s:3:\"row\";s:8:\"children\";a:1:{i:0;a:3:{s:2:\"id\";s:13:\"fDkA3AjjBrTIJ\";s:4:\"name\";s:12:\"Book Classes\";s:5:\"views\";a:0:{}}}}}}}s:6:\"config\";a:1:{s:13:\"fDkA3AjjBrTIJ\";a:4:{s:20:\"availableWidgetViews\";a:0:{}s:10:\"viewToEdit\";s:4:\"main\";s:11:\"viewsConfig\";a:0:{}s:6:\"config\";a:3:{s:4:\"main\";a:1:{s:18:\"classIdsByLocation\";a:3:{i:50387;a:6:{i:0;s:5:\"67627\";i:1;s:5:\"67628\";i:2;s:5:\"67668\";i:3;s:5:\"67634\";i:4;s:5:\"67632\";i:5;s:5:\"67655\";}i:50388;a:0:{}i:50389;a:3:{i:0;s:5:\"67632\";i:1;s:5:\"67634\";i:2;s:5:\"67655\";}}}s:10:\"tabsActive\";a:1:{s:5:\"style\";a:1:{s:15:\"backgroundColor\";s:18:\"rgba(126,211,33,1)\";}}s:9:\"tabsHover\";a:1:{s:5:\"style\";a:1:{s:15:\"backgroundColor\";s:18:\"rgba(245,166,35,1)\";}}}}}}'),
(377, 23, '_edit_lock', '1625140166:1'),
(378, 39, 'react_config_option', 'a:2:{s:10:\"components\";a:1:{i:0;a:6:{s:10:\"colsPerRow\";i:1;s:16:\"colsPerRowTablet\";i:1;s:16:\"colsPerRowMobile\";i:1;s:5:\"align\";s:7:\"stretch\";s:6:\"gutter\";i:0;s:4:\"cols\";a:1:{i:0;a:5:{s:6:\"gutter\";i:0;s:5:\"align\";s:6:\"middle\";s:7:\"justify\";s:6:\"center\";s:4:\"flow\";s:3:\"row\";s:8:\"children\";a:1:{i:0;a:3:{s:2:\"id\";s:13:\"nk2cndSpfODyA\";s:4:\"name\";s:3:\"FAQ\";s:5:\"views\";a:0:{}}}}}}}s:6:\"config\";a:1:{s:13:\"nk2cndSpfODyA\";a:4:{s:20:\"availableWidgetViews\";a:0:{}s:10:\"viewToEdit\";s:4:\"main\";s:11:\"viewsConfig\";a:0:{}s:6:\"config\";a:3:{s:3:\"faq\";a:1:{s:12:\"sectionsList\";a:1:{i:0;a:2:{s:12:\"section_name\";s:12:\"Section Name\";s:5:\"items\";a:2:{i:0;a:2:{s:8:\"question\";s:8:\"Question\";s:6:\"answer\";s:6:\"Answer\";}i:1;a:2:{s:8:\"question\";s:8:\"Question\";s:6:\"answer\";s:6:\"Answer\";}}}}}s:15:\"inner_container\";a:1:{s:5:\"style\";a:1:{s:8:\"maxWidth\";i:600;}}s:9:\"faqArrows\";a:1:{s:5:\"style\";a:1:{s:5:\"color\";s:18:\"rgba(245,166,35,1)\";}}}}}}'),
(385, 100, '_edit_lock', '1626877175:1'),
(386, 53, '_edit_lock', '1626944125:1'),
(387, 53, 'react_config_option', 'a:2:{s:10:\"components\";a:0:{}s:6:\"config\";a:1:{s:9:\"undefined\";a:1:{s:6:\"config\";a:1:{s:9:\"container\";a:1:{s:15:\"backgroundImage\";a:7:{s:3:\"alt\";s:0:\"\";s:5:\"title\";s:10:\"counter-bg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:6:\"height\";i:150;s:5:\"width\";i:150;s:3:\"url\";s:99:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/06/counter-bg-150x150.jpg\";s:11:\"orientation\";s:9:\"landscape\";}s:6:\"medium\";a:4:{s:6:\"height\";i:175;s:5:\"width\";i:300;s:3:\"url\";s:99:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/06/counter-bg-300x175.jpg\";s:11:\"orientation\";s:9:\"landscape\";}s:4:\"full\";a:4:{s:3:\"url\";s:91:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/06/counter-bg.jpg\";s:6:\"height\";i:425;s:5:\"width\";i:730;s:11:\"orientation\";s:9:\"landscape\";}}s:5:\"width\";i:730;s:6:\"height\";i:425;s:3:\"url\";s:91:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/06/counter-bg.jpg\";s:12:\"selectedSize\";s:4:\"full\";}}}}}}'),
(388, 51, 'react_config_option', 'a:2:{s:10:\"components\";a:0:{}s:6:\"config\";a:0:{}}'),
(389, 102, '_edit_lock', '1627297391:1'),
(396, 1, '_edit_lock', '1627297408:1'),
(397, 43, '_edit_lock', '1637924014:1'),
(398, 105, '_edit_lock', '1627297381:1'),
(401, 107, '_edit_lock', '1627297369:1'),
(404, 109, '_edit_lock', '1627297355:1'),
(407, 111, '_wp_attached_file', '2021/07/3vRqDI.jpg'),
(408, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:18:\"2021/07/3vRqDI.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"3vRqDI-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"3vRqDI-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"3vRqDI-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"3vRqDI-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"3vRqDI-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(411, 114, '_wp_attached_file', '2021/07/pacific-ocean-1920x1080-5k-4k-wallpaper-big-sur-california-beach-389.jpg'),
(412, 114, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:80:\"2021/07/pacific-ocean-1920x1080-5k-4k-wallpaper-big-sur-california-beach-389.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:80:\"pacific-ocean-1920x1080-5k-4k-wallpaper-big-sur-california-beach-389-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:81:\"pacific-ocean-1920x1080-5k-4k-wallpaper-big-sur-california-beach-389-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:80:\"pacific-ocean-1920x1080-5k-4k-wallpaper-big-sur-california-beach-389-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:80:\"pacific-ocean-1920x1080-5k-4k-wallpaper-big-sur-california-beach-389-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:81:\"pacific-ocean-1920x1080-5k-4k-wallpaper-big-sur-california-beach-389-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(415, 116, '_edit_lock', '1627297339:1'),
(416, 117, '_wp_attached_file', '2021/07/samurai-anime-minimal.jpg'),
(417, 117, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:33:\"2021/07/samurai-anime-minimal.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"samurai-anime-minimal-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"samurai-anime-minimal-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"samurai-anime-minimal-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"samurai-anime-minimal-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:34:\"samurai-anime-minimal-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(422, 109, '_edit_last', '1'),
(425, 107, '_edit_last', '1'),
(428, 105, '_edit_last', '1'),
(433, 116, '_thumbnail_id', '117'),
(436, 109, '_thumbnail_id', '111'),
(439, 107, '_thumbnail_id', '72'),
(442, 105, '_thumbnail_id', '73'),
(445, 102, '_thumbnail_id', '114'),
(448, 1, '_thumbnail_id', '74'),
(449, 121, '_edit_lock', '1627377108:1'),
(452, 121, '_thumbnail_id', '74'),
(453, 121, '_edit_last', '1'),
(456, 123, '_edit_lock', '1627376997:1'),
(459, 123, '_thumbnail_id', '73'),
(460, 125, '_edit_lock', '1627377019:1'),
(463, 125, '_thumbnail_id', '74'),
(464, 127, '_edit_lock', '1627377043:1'),
(467, 127, '_thumbnail_id', '117'),
(468, 129, '_edit_lock', '1627377063:1'),
(471, 129, '_thumbnail_id', '114'),
(472, 131, '_edit_lock', '1627377088:1'),
(475, 131, '_thumbnail_id', '74'),
(476, 133, '_edit_lock', '1627377111:1'),
(479, 133, '_thumbnail_id', '72'),
(480, 135, '_edit_lock', '1627377132:1'),
(483, 135, '_thumbnail_id', '73'),
(484, 137, '_edit_lock', '1627377154:1'),
(487, 137, '_thumbnail_id', '75'),
(488, 139, '_edit_lock', '1627377172:1'),
(491, 139, '_thumbnail_id', '111'),
(492, 141, '_edit_lock', '1627377209:1'),
(495, 141, '_thumbnail_id', '114'),
(496, 143, '_edit_lock', '1627377240:1'),
(499, 143, '_thumbnail_id', '72'),
(500, 145, '_edit_lock', '1627377256:1'),
(503, 145, '_thumbnail_id', '114'),
(504, 147, '_edit_lock', '1632923572:1'),
(507, 147, '_thumbnail_id', '111'),
(508, 149, '_edit_lock', '1631012075:1'),
(512, 151, '_edit_lock', '1631009615:1'),
(516, 153, '_edit_lock', '1631009610:1'),
(520, 155, '_edit_lock', '1632399187:1');
INSERT INTO `wp_2_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(524, 47, 'react_config_option', 'a:2:{s:10:\"components\";a:1:{i:0;a:6:{s:10:\"colsPerRow\";i:1;s:16:\"colsPerRowTablet\";i:1;s:16:\"colsPerRowMobile\";i:1;s:5:\"align\";s:7:\"stretch\";s:6:\"gutter\";i:0;s:4:\"cols\";a:1:{i:0;a:5:{s:6:\"gutter\";i:0;s:5:\"align\";s:6:\"middle\";s:7:\"justify\";s:6:\"center\";s:4:\"flow\";s:3:\"row\";s:8:\"children\";a:1:{i:0;a:3:{s:2:\"id\";s:13:\"tRNljwk3t7P0R\";s:4:\"name\";s:12:\"Contact Form\";s:5:\"views\";a:0:{}}}}}}}s:6:\"config\";a:1:{s:13:\"tRNljwk3t7P0R\";a:4:{s:20:\"availableWidgetViews\";a:0:{}s:10:\"viewToEdit\";s:4:\"main\";s:11:\"viewsConfig\";a:0:{}s:6:\"config\";a:4:{s:4:\"main\";a:1:{s:6:\"skinId\";i:9706;}s:9:\"container\";a:1:{s:15:\"backgroundImage\";a:7:{s:3:\"alt\";s:0:\"\";s:5:\"title\";s:1:\"4\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:3:\"url\";s:91:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/10/4-150x150.webp\";s:6:\"height\";i:150;s:5:\"width\";i:150;s:11:\"orientation\";s:9:\"landscape\";}s:6:\"medium\";a:4:{s:3:\"url\";s:91:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/10/4-300x226.webp\";s:6:\"height\";i:226;s:5:\"width\";i:300;s:11:\"orientation\";s:9:\"landscape\";}s:4:\"full\";a:4:{s:3:\"url\";s:83:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/10/4.webp\";s:6:\"height\";i:772;s:5:\"width\";i:1024;s:11:\"orientation\";s:9:\"landscape\";}}s:5:\"width\";i:1024;s:6:\"height\";i:772;s:3:\"url\";s:83:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/10/4.webp\";s:12:\"selectedSize\";s:4:\"full\";}}s:15:\"containerTablet\";a:1:{s:15:\"backgroundImage\";a:7:{s:3:\"alt\";s:0:\"\";s:5:\"title\";s:68:\"pacific-ocean-1920x1080-5k-4k-wallpaper-big-sur-california-beach-389\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:3:\"url\";s:157:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/pacific-ocean-1920x1080-5k-4k-wallpaper-big-sur-california-beach-389-150x150.jpg\";s:6:\"height\";i:150;s:5:\"width\";i:150;s:11:\"orientation\";s:9:\"landscape\";}s:6:\"medium\";a:4:{s:3:\"url\";s:157:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/pacific-ocean-1920x1080-5k-4k-wallpaper-big-sur-california-beach-389-300x169.jpg\";s:6:\"height\";i:169;s:5:\"width\";i:300;s:11:\"orientation\";s:9:\"landscape\";}s:5:\"large\";a:4:{s:3:\"url\";s:158:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/pacific-ocean-1920x1080-5k-4k-wallpaper-big-sur-california-beach-389-1024x576.jpg\";s:6:\"height\";i:576;s:5:\"width\";i:1024;s:11:\"orientation\";s:9:\"landscape\";}s:4:\"full\";a:4:{s:3:\"url\";s:149:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/pacific-ocean-1920x1080-5k-4k-wallpaper-big-sur-california-beach-389.jpg\";s:6:\"height\";i:1080;s:5:\"width\";i:1920;s:11:\"orientation\";s:9:\"landscape\";}s:9:\"1536x1536\";a:4:{s:3:\"url\";s:158:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/pacific-ocean-1920x1080-5k-4k-wallpaper-big-sur-california-beach-389-1536x864.jpg\";s:6:\"height\";i:864;s:5:\"width\";i:1536;s:11:\"orientation\";s:9:\"landscape\";}}s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:3:\"url\";s:149:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/pacific-ocean-1920x1080-5k-4k-wallpaper-big-sur-california-beach-389.jpg\";s:12:\"selectedSize\";s:4:\"full\";}}s:15:\"containerMobile\";a:1:{s:15:\"backgroundImage\";a:7:{s:3:\"alt\";s:0:\"\";s:5:\"title\";s:21:\"samurai-anime-minimal\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:3:\"url\";s:110:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/samurai-anime-minimal-150x150.jpg\";s:6:\"height\";i:150;s:5:\"width\";i:150;s:11:\"orientation\";s:9:\"landscape\";}s:6:\"medium\";a:4:{s:3:\"url\";s:110:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/samurai-anime-minimal-300x169.jpg\";s:6:\"height\";i:169;s:5:\"width\";i:300;s:11:\"orientation\";s:9:\"landscape\";}s:5:\"large\";a:4:{s:3:\"url\";s:111:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/samurai-anime-minimal-1024x576.jpg\";s:6:\"height\";i:576;s:5:\"width\";i:1024;s:11:\"orientation\";s:9:\"landscape\";}s:4:\"full\";a:4:{s:3:\"url\";s:102:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/samurai-anime-minimal.jpg\";s:6:\"height\";i:1080;s:5:\"width\";i:1920;s:11:\"orientation\";s:9:\"landscape\";}s:9:\"1536x1536\";a:4:{s:3:\"url\";s:111:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/samurai-anime-minimal-1536x864.jpg\";s:6:\"height\";i:864;s:5:\"width\";i:1536;s:11:\"orientation\";s:9:\"landscape\";}}s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:3:\"url\";s:102:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/samurai-anime-minimal.jpg\";s:12:\"selectedSize\";s:4:\"full\";}}}}}}'),
(535, 9, '_wp_old_date', '2021-05-25'),
(536, 13, '_wp_old_date', '2021-05-25'),
(537, 17, '_wp_old_date', '2021-05-25'),
(538, 21, '_wp_old_date', '2021-05-25'),
(539, 25, '_wp_old_date', '2021-05-25'),
(540, 29, '_wp_old_date', '2021-05-25'),
(541, 33, '_wp_old_date', '2021-05-25'),
(542, 37, '_wp_old_date', '2021-05-25'),
(543, 41, '_wp_old_date', '2021-05-25'),
(544, 45, '_wp_old_date', '2021-05-25'),
(545, 49, '_wp_old_date', '2021-05-25'),
(546, 58, '_wp_old_date', '2021-05-25'),
(556, 3, '_wp_old_date', '2021-05-25'),
(557, 8, '_wp_old_date', '2021-05-25'),
(558, 12, '_wp_old_date', '2021-05-25'),
(559, 16, '_wp_old_date', '2021-05-25'),
(560, 4, '_wp_old_date', '2021-05-25'),
(561, 28, '_wp_old_date', '2021-05-25'),
(562, 32, '_wp_old_date', '2021-05-25'),
(563, 20, '_wp_old_date', '2021-05-25'),
(564, 24, '_wp_old_date', '2021-05-25'),
(565, 36, '_wp_old_date', '2021-05-25'),
(566, 40, '_wp_old_date', '2021-05-25'),
(567, 44, '_wp_old_date', '2021-05-25'),
(568, 48, '_wp_old_date', '2021-05-25'),
(569, 57, '_wp_old_date', '2021-05-25'),
(617, 185, '_edit_lock', '1629374597:1'),
(618, 187, '_menu_item_type', 'post_type'),
(619, 187, '_menu_item_menu_item_parent', '0'),
(620, 187, '_menu_item_object_id', '185'),
(621, 187, '_menu_item_object', 'page'),
(622, 187, '_menu_item_target', ''),
(623, 187, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(624, 187, '_menu_item_xfn', ''),
(625, 187, '_menu_item_url', ''),
(627, 185, 'react_config_option', 'a:2:{s:10:\"components\";a:3:{i:0;a:6:{s:10:\"colsPerRow\";i:1;s:16:\"colsPerRowTablet\";i:1;s:16:\"colsPerRowMobile\";i:1;s:5:\"align\";s:7:\"stretch\";s:6:\"gutter\";i:0;s:4:\"cols\";a:1:{i:0;a:5:{s:6:\"gutter\";i:0;s:5:\"align\";s:6:\"middle\";s:7:\"justify\";s:6:\"center\";s:4:\"flow\";s:3:\"row\";s:8:\"children\";a:1:{i:0;a:3:{s:2:\"id\";s:13:\"vBF70h1yNBtLH\";s:4:\"name\";s:16:\"Our Appointments\";s:5:\"views\";a:0:{}}}}}}i:1;a:6:{s:10:\"colsPerRow\";i:1;s:16:\"colsPerRowTablet\";i:1;s:16:\"colsPerRowMobile\";i:1;s:5:\"align\";s:7:\"stretch\";s:6:\"gutter\";i:0;s:4:\"cols\";a:1:{i:0;a:5:{s:6:\"gutter\";i:0;s:5:\"align\";s:6:\"middle\";s:7:\"justify\";s:6:\"center\";s:4:\"flow\";s:3:\"row\";s:8:\"children\";a:1:{i:0;a:3:{s:2:\"id\";s:13:\"sbuDCmTwTbBk1\";s:4:\"name\";s:10:\"App Banner\";s:5:\"views\";a:0:{}}}}}}i:2;a:6:{s:10:\"colsPerRow\";i:1;s:16:\"colsPerRowTablet\";i:1;s:16:\"colsPerRowMobile\";i:1;s:5:\"align\";s:7:\"stretch\";s:6:\"gutter\";i:0;s:4:\"cols\";a:1:{i:0;a:5:{s:6:\"gutter\";i:0;s:5:\"align\";s:6:\"middle\";s:7:\"justify\";s:6:\"center\";s:4:\"flow\";s:3:\"row\";s:8:\"children\";a:1:{i:0;a:3:{s:2:\"id\";s:13:\"PPrLHzvTNbyhU\";s:4:\"name\";s:28:\"Product & Affiliate Partners\";s:5:\"views\";a:0:{}}}}}}}s:6:\"config\";a:3:{s:13:\"sbuDCmTwTbBk1\";a:3:{s:20:\"availableWidgetViews\";a:0:{}s:10:\"viewToEdit\";s:4:\"main\";s:11:\"viewsConfig\";a:0:{}}s:13:\"PPrLHzvTNbyhU\";a:3:{s:20:\"availableWidgetViews\";a:0:{}s:10:\"viewToEdit\";s:4:\"main\";s:11:\"viewsConfig\";a:0:{}}s:13:\"vBF70h1yNBtLH\";a:4:{s:20:\"availableWidgetViews\";a:0:{}s:10:\"viewToEdit\";s:4:\"main\";s:11:\"viewsConfig\";a:0:{}s:6:\"config\";a:1:{s:4:\"main\";a:1:{s:16:\"appointmentsList\";a:1:{i:249402;a:6:{i:0;s:6:\"161785\";i:1;s:6:\"161786\";i:2;s:6:\"161789\";i:3;s:6:\"161794\";i:4;s:6:\"163811\";i:5;s:6:\"166228\";}}}}}}}'),
(628, 188, '_menu_item_type', 'custom'),
(629, 188, '_menu_item_menu_item_parent', '0'),
(630, 188, '_menu_item_object_id', '188'),
(631, 188, '_menu_item_object', 'custom'),
(632, 188, '_menu_item_target', '_blank'),
(633, 188, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(634, 188, '_menu_item_xfn', ''),
(635, 188, '_menu_item_url', 'https://www.google.com/'),
(637, 189, '_menu_item_type', 'custom'),
(638, 189, '_menu_item_menu_item_parent', '4'),
(639, 189, '_menu_item_object_id', '189'),
(640, 189, '_menu_item_object', 'custom'),
(641, 189, '_menu_item_target', ''),
(642, 189, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(643, 189, '_menu_item_xfn', ''),
(644, 189, '_menu_item_url', 'https://www.apple.com/'),
(646, 3, '_wp_old_date', '2021-08-19'),
(647, 8, '_wp_old_date', '2021-08-19'),
(648, 12, '_wp_old_date', '2021-08-19'),
(649, 16, '_wp_old_date', '2021-08-19'),
(650, 4, '_wp_old_date', '2021-08-19'),
(651, 28, '_wp_old_date', '2021-08-19'),
(652, 32, '_wp_old_date', '2021-08-19'),
(653, 189, '_wp_old_date', '2021-08-19'),
(654, 20, '_wp_old_date', '2021-08-19'),
(655, 24, '_wp_old_date', '2021-08-19'),
(656, 36, '_wp_old_date', '2021-08-19'),
(657, 40, '_wp_old_date', '2021-08-19'),
(658, 44, '_wp_old_date', '2021-08-19'),
(659, 48, '_wp_old_date', '2021-08-19'),
(660, 57, '_wp_old_date', '2021-08-19'),
(661, 187, '_wp_old_date', '2021-08-19'),
(662, 188, '_wp_old_date', '2021-08-19'),
(663, 191, '_edit_lock', '1629986558:1'),
(664, 194, '_edit_lock', '1630681302:1'),
(674, 114, '_edit_lock', '1631704877:1'),
(677, 198, '_wp_attached_file', '2021/09/harry-potter.jpg'),
(678, 198, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:319;s:6:\"height\";i:533;s:4:\"file\";s:24:\"2021/09/harry-potter.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"harry-potter-180x300.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"harry-potter-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(679, 35, '_edit_lock', '1631795554:1'),
(681, 43, 'rank_math_seo_score', '68'),
(682, 43, 'rank_math_title', 'Perfect Blog Website page'),
(683, 43, 'rank_math_description', 'Lorem blog dolor sit post, consectetur adipiscing elit, stories do eiusmod tempor incididunt ut story et dolore wellnessliving aliqua.'),
(684, 43, 'rank_math_facebook_enable_image_overlay', 'off'),
(685, 43, '_edit_last', '1'),
(686, 43, 'rank_math_internal_links_processed', '1'),
(687, 43, '_thumbnail_id', '114'),
(688, 43, 'rank_math_focus_keyword', 'blog,post,story,wellnessliving'),
(689, 39, '_edit_lock', '1632315108:1'),
(690, 39, 'rank_math_seo_score', '8'),
(691, 39, '_edit_last', '1'),
(692, 39, 'rank_math_internal_links_processed', '1'),
(693, 194, 'rank_math_internal_links_processed', '1'),
(694, 191, 'rank_math_internal_links_processed', '1'),
(695, 185, 'rank_math_internal_links_processed', '1'),
(696, 155, 'rank_math_internal_links_processed', '1'),
(697, 153, 'rank_math_internal_links_processed', '1'),
(698, 151, 'rank_math_internal_links_processed', '1'),
(699, 149, 'rank_math_internal_links_processed', '1'),
(700, 147, 'rank_math_internal_links_processed', '1'),
(701, 145, 'rank_math_internal_links_processed', '1'),
(702, 143, 'rank_math_internal_links_processed', '1'),
(704, 141, 'rank_math_internal_links_processed', '1'),
(705, 139, 'rank_math_internal_links_processed', '1'),
(706, 137, 'rank_math_internal_links_processed', '1'),
(707, 135, 'rank_math_internal_links_processed', '1'),
(708, 133, 'rank_math_internal_links_processed', '1'),
(709, 131, 'rank_math_internal_links_processed', '1'),
(710, 129, 'rank_math_internal_links_processed', '1'),
(711, 127, 'rank_math_internal_links_processed', '1'),
(712, 125, 'rank_math_internal_links_processed', '1'),
(713, 123, 'rank_math_internal_links_processed', '1'),
(714, 121, 'rank_math_internal_links_processed', '1'),
(715, 116, 'rank_math_internal_links_processed', '1'),
(716, 109, 'rank_math_internal_links_processed', '1'),
(717, 107, 'rank_math_internal_links_processed', '1'),
(718, 105, 'rank_math_internal_links_processed', '1'),
(719, 102, 'rank_math_internal_links_processed', '1'),
(720, 100, 'rank_math_internal_links_processed', '1'),
(721, 91, 'rank_math_internal_links_processed', '1'),
(722, 92, 'rank_math_internal_links_processed', '1'),
(723, 93, 'rank_math_internal_links_processed', '1'),
(724, 94, 'rank_math_internal_links_processed', '1'),
(725, 95, 'rank_math_internal_links_processed', '1'),
(726, 96, 'rank_math_internal_links_processed', '1'),
(727, 89, 'rank_math_internal_links_processed', '1'),
(728, 86, 'rank_math_internal_links_processed', '1'),
(729, 84, 'rank_math_internal_links_processed', '1'),
(730, 70, 'rank_math_internal_links_processed', '1'),
(731, 47, 'rank_math_internal_links_processed', '1'),
(732, 51, 'rank_math_internal_links_processed', '1'),
(733, 53, 'rank_math_internal_links_processed', '1'),
(735, 89, 'react_config_option', 'a:2:{s:10:\"components\";a:1:{i:0;a:6:{s:10:\"colsPerRow\";i:1;s:16:\"colsPerRowTablet\";i:1;s:16:\"colsPerRowMobile\";i:1;s:5:\"align\";s:7:\"stretch\";s:6:\"gutter\";i:0;s:4:\"cols\";a:1:{i:0;a:5:{s:6:\"gutter\";i:0;s:5:\"align\";s:6:\"middle\";s:7:\"justify\";s:6:\"center\";s:4:\"flow\";s:3:\"row\";s:8:\"children\";a:1:{i:0;a:3:{s:2:\"id\";s:13:\"5aledOmO7pWye\";s:4:\"name\";s:12:\"Real Results\";s:5:\"views\";a:2:{i:0;s:4:\"main\";i:1;s:4:\"page\";}}}}}}}s:6:\"config\";a:1:{s:13:\"5aledOmO7pWye\";a:4:{s:20:\"availableWidgetViews\";a:2:{i:0;s:4:\"main\";i:1;s:4:\"page\";}s:10:\"viewToEdit\";s:4:\"main\";s:11:\"viewsConfig\";a:2:{s:4:\"main\";a:1:{s:12:\"targetPageId\";i:5;}s:4:\"page\";a:1:{s:12:\"targetPageId\";i:89;}}s:6:\"config\";a:1:{s:4:\"main\";a:1:{s:7:\"results\";a:1:{i:0;a:9:{s:7:\"bigText\";s:57:\"<p>retertertretretretertfgdfgdfgfdgfdgfdgdfgfdgdfgfd</p>\n\";s:9:\"imgBefore\";a:7:{s:3:\"alt\";s:0:\"\";s:5:\"title\";s:12:\"harry-potter\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:3:\"url\";s:101:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/09/harry-potter-150x150.jpg\";s:6:\"height\";i:150;s:5:\"width\";i:150;s:11:\"orientation\";s:9:\"landscape\";}s:6:\"medium\";a:4:{s:3:\"url\";s:101:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/09/harry-potter-180x300.jpg\";s:6:\"height\";i:300;s:5:\"width\";i:180;s:11:\"orientation\";s:8:\"portrait\";}s:4:\"full\";a:4:{s:3:\"url\";s:93:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/09/harry-potter.jpg\";s:6:\"height\";i:533;s:5:\"width\";i:319;s:11:\"orientation\";s:8:\"portrait\";}}s:5:\"width\";i:319;s:6:\"height\";i:533;s:3:\"url\";s:93:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/09/harry-potter.jpg\";s:12:\"selectedSize\";s:4:\"full\";}s:8:\"imgAfter\";a:7:{s:3:\"alt\";s:0:\"\";s:5:\"title\";s:21:\"samurai-anime-minimal\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:3:\"url\";s:110:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/samurai-anime-minimal-150x150.jpg\";s:6:\"height\";i:150;s:5:\"width\";i:150;s:11:\"orientation\";s:9:\"landscape\";}s:6:\"medium\";a:4:{s:3:\"url\";s:110:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/samurai-anime-minimal-300x169.jpg\";s:6:\"height\";i:169;s:5:\"width\";i:300;s:11:\"orientation\";s:9:\"landscape\";}s:5:\"large\";a:4:{s:3:\"url\";s:111:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/samurai-anime-minimal-1024x576.jpg\";s:6:\"height\";i:576;s:5:\"width\";i:1024;s:11:\"orientation\";s:9:\"landscape\";}s:4:\"full\";a:4:{s:3:\"url\";s:102:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/samurai-anime-minimal.jpg\";s:6:\"height\";i:1080;s:5:\"width\";i:1920;s:11:\"orientation\";s:9:\"landscape\";}s:9:\"1536x1536\";a:4:{s:3:\"url\";s:111:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/samurai-anime-minimal-1536x864.jpg\";s:6:\"height\";i:864;s:5:\"width\";i:1536;s:11:\"orientation\";s:9:\"landscape\";}}s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:3:\"url\";s:102:\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/samurai-anime-minimal.jpg\";s:12:\"selectedSize\";s:4:\"full\";}s:16:\"imgBeforeCaption\";s:7:\"werwrwe\";s:15:\"imgAfterCaption\";s:8:\"ewrwerwe\";s:8:\"username\";s:14:\"rwerwerfdsfsdf\";s:3:\"age\";s:2:\"25\";s:6:\"result\";s:8:\"fgdfgdfg\";s:6:\"period\";s:2:\"20\";}}}}}}}'),
(736, 55, 'rank_math_internal_links_processed', '1'),
(737, 56, 'rank_math_internal_links_processed', '1'),
(738, 23, 'rank_math_internal_links_processed', '1'),
(739, 27, 'rank_math_internal_links_processed', '1'),
(740, 31, 'rank_math_internal_links_processed', '1'),
(741, 212, '_wp_attached_file', '2021/10/cart-test.png'),
(742, 212, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:21:\"2021/10/cart-test.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"cart-test-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"cart-test-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(743, 213, '_wp_attached_file', '2021/10/Arrow_down_red.svg_.png'),
(744, 213, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1566;s:6:\"height\";i:2048;s:4:\"file\";s:31:\"2021/10/Arrow_down_red.svg_.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"Arrow_down_red.svg_-229x300.png\";s:5:\"width\";i:229;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"Arrow_down_red.svg_-783x1024.png\";s:5:\"width\";i:783;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Arrow_down_red.svg_-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"Arrow_down_red.svg_-768x1004.png\";s:5:\"width\";i:768;s:6:\"height\";i:1004;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:33:\"Arrow_down_red.svg_-1175x1536.png\";s:5:\"width\";i:1175;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(745, 31, 'react_config_option', 'a:2:{s:10:\"components\";a:1:{i:0;a:6:{s:10:\"colsPerRow\";i:1;s:16:\"colsPerRowTablet\";i:1;s:16:\"colsPerRowMobile\";i:1;s:5:\"align\";s:7:\"stretch\";s:6:\"gutter\";i:0;s:4:\"cols\";a:1:{i:0;a:5:{s:6:\"gutter\";i:0;s:5:\"align\";s:6:\"middle\";s:7:\"justify\";s:6:\"center\";s:4:\"flow\";s:3:\"row\";s:8:\"children\";a:1:{i:0;a:3:{s:2:\"id\";s:13:\"1MV4g8G0opM2B\";s:4:\"name\";s:10:\"Staff list\";s:5:\"views\";a:0:{}}}}}}}s:6:\"config\";a:1:{s:13:\"1MV4g8G0opM2B\";a:4:{s:20:\"availableWidgetViews\";a:0:{}s:10:\"viewToEdit\";s:4:\"main\";s:11:\"viewsConfig\";a:0:{}s:6:\"config\";a:4:{s:4:\"main\";a:1:{s:18:\"staffIdsByLocation\";a:3:{i:50387;a:4:{i:0;s:5:\"62521\";i:1;s:5:\"62520\";i:2;s:5:\"62522\";i:3;s:5:\"62523\";}i:50388;a:0:{}i:50389;a:0:{}}}s:9:\"staffName\";a:1:{s:5:\"style\";a:1:{s:5:\"color\";s:18:\"rgba(245,166,35,1)\";}}s:9:\"staffRole\";a:1:{s:5:\"style\";a:1:{s:5:\"color\";s:19:\"rgba(184,233,134,1)\";}}s:6:\"button\";a:1:{s:15:\"showSeeSchedule\";b:1;}}}}}'),
(746, 35, 'rank_math_internal_links_processed', '1'),
(747, 5, 'rank_math_internal_links_processed', '1'),
(748, 7, 'rank_math_internal_links_processed', '1'),
(749, 11, 'rank_math_internal_links_processed', '1'),
(750, 15, 'rank_math_internal_links_processed', '1'),
(751, 56, 'react_config_option', 'a:2:{s:10:\"components\";a:2:{i:0;a:6:{s:10:\"colsPerRow\";i:1;s:16:\"colsPerRowTablet\";i:1;s:16:\"colsPerRowMobile\";i:1;s:5:\"align\";s:7:\"stretch\";s:6:\"gutter\";i:0;s:4:\"cols\";a:1:{i:0;a:5:{s:6:\"gutter\";i:0;s:5:\"align\";s:6:\"middle\";s:7:\"justify\";s:6:\"center\";s:4:\"flow\";s:3:\"row\";s:8:\"children\";a:1:{i:0;a:3:{s:2:\"id\";s:13:\"NJEJXLEBv00nk\";s:4:\"name\";s:15:\"Multi Locations\";s:5:\"views\";a:0:{}}}}}}i:1;a:6:{s:10:\"colsPerRow\";i:1;s:16:\"colsPerRowTablet\";i:1;s:16:\"colsPerRowMobile\";i:1;s:5:\"align\";s:7:\"stretch\";s:6:\"gutter\";i:0;s:4:\"cols\";a:1:{i:0;a:5:{s:6:\"gutter\";i:0;s:5:\"align\";s:6:\"middle\";s:7:\"justify\";s:6:\"center\";s:4:\"flow\";s:3:\"row\";s:8:\"children\";a:1:{i:0;a:3:{s:2:\"id\";s:13:\"NLv0PMq0ltaM4\";s:4:\"name\";s:10:\"App Banner\";s:5:\"views\";a:0:{}}}}}}}s:6:\"config\";a:1:{s:13:\"NJEJXLEBv00nk\";a:4:{s:20:\"availableWidgetViews\";a:0:{}s:10:\"viewToEdit\";s:4:\"main\";s:11:\"viewsConfig\";a:0:{}s:6:\"config\";a:1:{s:9:\"container\";a:1:{s:5:\"style\";a:1:{s:15:\"backgroundColor\";s:18:\"rgba(248,231,28,1)\";}}}}}}'),
(752, 19, 'rank_math_internal_links_processed', '1'),
(753, 2, 'rank_math_internal_links_processed', '1'),
(754, 1, 'rank_math_internal_links_processed', '1'),
(755, 214, 'react_config_option', ''),
(756, 214, '_menu_item_type', 'post_type'),
(757, 214, '_menu_item_menu_item_parent', '0'),
(758, 214, '_menu_item_object_id', '27'),
(759, 214, '_menu_item_object', 'page'),
(760, 214, '_menu_item_target', ''),
(761, 214, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(762, 214, '_menu_item_xfn', ''),
(763, 214, '_menu_item_url', ''),
(765, 215, 'react_config_option', ''),
(766, 215, '_menu_item_type', 'post_type'),
(767, 215, '_menu_item_menu_item_parent', '0'),
(768, 215, '_menu_item_object_id', '43'),
(769, 215, '_menu_item_object', 'page'),
(770, 215, '_menu_item_target', ''),
(771, 215, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(772, 215, '_menu_item_xfn', ''),
(773, 215, '_menu_item_url', ''),
(775, 216, 'react_config_option', ''),
(776, 216, '_menu_item_type', 'post_type'),
(777, 216, '_menu_item_menu_item_parent', '0'),
(778, 216, '_menu_item_object_id', '11'),
(779, 216, '_menu_item_object', 'page'),
(780, 216, '_menu_item_target', ''),
(781, 216, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(782, 216, '_menu_item_xfn', ''),
(783, 216, '_menu_item_url', ''),
(785, 217, 'react_config_option', ''),
(786, 217, '_menu_item_type', 'post_type'),
(787, 217, '_menu_item_menu_item_parent', '0'),
(788, 217, '_menu_item_object_id', '47'),
(789, 217, '_menu_item_object', 'page'),
(790, 217, '_menu_item_target', ''),
(791, 217, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(792, 217, '_menu_item_xfn', ''),
(793, 217, '_menu_item_url', ''),
(797, 220, '_wp_attached_file', '2021/10/4.webp'),
(798, 220, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:772;s:4:\"file\";s:14:\"2021/10/4.webp\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"4-300x226.webp\";s:5:\"width\";i:300;s:6:\"height\";i:226;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"4-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"4-768x579.webp\";s:5:\"width\";i:768;s:6:\"height\";i:579;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(804, 220, '_edit_lock', '1634901605:1'),
(808, 227, 'react_config_option', ''),
(814, 232, '_wp_trash_meta_status', 'publish'),
(815, 232, '_wp_trash_meta_time', '1637156983'),
(816, 234, '_wp_trash_meta_status', 'publish'),
(817, 234, '_wp_trash_meta_time', '1637157018'),
(818, 236, 'react_config_option', ''),
(819, 236, '_edit_lock', '1637334288:1'),
(820, 236, 'rank_math_seo_score', '1'),
(821, 236, '_edit_last', '1'),
(822, 236, 'rank_math_internal_links_processed', '1'),
(823, 236, '_wp_trash_meta_status', 'publish'),
(824, 236, '_wp_trash_meta_time', '1637334333'),
(825, 236, '_wp_desired_post_slug', 'receipt-2'),
(826, 238, 'react_config_option', ''),
(827, 238, '_menu_item_type', 'post_type'),
(828, 238, '_menu_item_menu_item_parent', '0'),
(829, 238, '_menu_item_object_id', '191'),
(830, 238, '_menu_item_object', 'page'),
(831, 238, '_menu_item_target', ''),
(832, 238, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(833, 238, '_menu_item_xfn', ''),
(834, 238, '_menu_item_url', ''),
(836, 3, '_wp_old_date', '2021-08-25'),
(837, 3, 'react_config_option', ''),
(838, 8, '_wp_old_date', '2021-08-25'),
(839, 8, 'react_config_option', ''),
(840, 12, '_wp_old_date', '2021-08-25'),
(841, 12, 'react_config_option', ''),
(842, 16, '_wp_old_date', '2021-08-25'),
(843, 16, 'react_config_option', ''),
(844, 4, '_wp_old_date', '2021-08-25'),
(845, 4, 'react_config_option', ''),
(846, 28, '_wp_old_date', '2021-08-25'),
(847, 28, 'react_config_option', ''),
(848, 32, '_wp_old_date', '2021-08-25'),
(849, 32, 'react_config_option', ''),
(850, 189, '_wp_old_date', '2021-08-25'),
(851, 189, 'react_config_option', ''),
(852, 20, '_wp_old_date', '2021-08-25'),
(853, 20, 'react_config_option', ''),
(854, 24, '_wp_old_date', '2021-08-25'),
(855, 24, 'react_config_option', ''),
(856, 36, '_wp_old_date', '2021-08-25'),
(857, 36, 'react_config_option', ''),
(858, 40, '_wp_old_date', '2021-08-25'),
(859, 40, 'react_config_option', ''),
(860, 44, '_wp_old_date', '2021-08-25'),
(861, 44, 'react_config_option', ''),
(862, 48, '_wp_old_date', '2021-08-25'),
(863, 48, 'react_config_option', ''),
(864, 57, '_wp_old_date', '2021-08-25'),
(865, 57, 'react_config_option', ''),
(866, 187, '_wp_old_date', '2021-08-25'),
(867, 187, 'react_config_option', ''),
(868, 188, '_wp_old_date', '2021-08-25'),
(869, 188, 'react_config_option', ''),
(871, 15, 'react_config_option', 'a:2:{s:10:\"components\";a:1:{i:0;a:6:{s:10:\"colsPerRow\";i:1;s:16:\"colsPerRowTablet\";i:1;s:16:\"colsPerRowMobile\";i:1;s:5:\"align\";s:7:\"stretch\";s:6:\"gutter\";i:0;s:4:\"cols\";a:1:{i:0;a:5:{s:6:\"gutter\";i:0;s:5:\"align\";s:6:\"middle\";s:7:\"justify\";s:6:\"center\";s:4:\"flow\";s:3:\"row\";s:8:\"children\";a:1:{i:0;a:3:{s:2:\"id\";s:13:\"g4slUxjPV7uxC\";s:4:\"name\";s:11:\"Book Events\";s:5:\"views\";a:0:{}}}}}}}s:6:\"config\";a:1:{s:13:\"g4slUxjPV7uxC\";a:4:{s:20:\"availableWidgetViews\";a:0:{}s:10:\"viewToEdit\";s:4:\"main\";s:11:\"viewsConfig\";a:0:{}s:6:\"config\";a:4:{s:4:\"main\";a:2:{s:18:\"classIdsByLocation\";a:2:{i:50032;a:3:{i:0;s:5:\"67163\";i:1;s:5:\"67679\";i:2;s:5:\"67681\";}i:50068;a:1:{i:0;s:5:\"67678\";}}s:5:\"limit\";N;}s:4:\"tabs\";a:1:{s:5:\"style\";a:1:{s:15:\"backgroundColor\";s:0:\"\";}}s:10:\"tabsActive\";a:1:{s:5:\"style\";a:4:{s:15:\"backgroundColor\";s:18:\"rgba(245,166,35,1)\";s:11:\"borderColor\";s:18:\"rgba(126,211,33,1)\";s:11:\"borderWidth\";s:3:\"6px\";s:11:\"borderStyle\";s:5:\"solid\";}}s:9:\"tabsHover\";a:1:{s:5:\"style\";a:4:{s:15:\"backgroundColor\";s:19:\"rgba(184,233,134,1)\";s:11:\"borderColor\";s:18:\"rgba(245,166,35,1)\";s:11:\"borderStyle\";s:5:\"solid\";s:11:\"borderWidth\";s:3:\"6px\";}}}}}}'),
(873, 241, 'react_config_option', ''),
(874, 241, '_menu_item_type', 'custom'),
(875, 241, '_menu_item_menu_item_parent', '0'),
(876, 241, '_menu_item_object_id', '241'),
(877, 241, '_menu_item_object', 'custom'),
(878, 241, '_menu_item_target', ''),
(879, 241, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(880, 241, '_menu_item_xfn', ''),
(881, 241, '_menu_item_url', 'https://www.apple.com/ru/iphone/'),
(883, 3, '_wp_old_date', '2021-11-19'),
(884, 8, '_wp_old_date', '2021-11-19'),
(885, 12, '_wp_old_date', '2021-11-19'),
(886, 16, '_wp_old_date', '2021-11-19'),
(887, 4, '_wp_old_date', '2021-11-19'),
(888, 28, '_wp_old_date', '2021-11-19'),
(889, 32, '_wp_old_date', '2021-11-19'),
(890, 189, '_wp_old_date', '2021-11-19'),
(891, 20, '_wp_old_date', '2021-11-19'),
(892, 24, '_wp_old_date', '2021-11-19'),
(893, 36, '_wp_old_date', '2021-11-19'),
(894, 40, '_wp_old_date', '2021-11-19'),
(895, 44, '_wp_old_date', '2021-11-19'),
(896, 48, '_wp_old_date', '2021-11-19'),
(897, 57, '_wp_old_date', '2021-11-19'),
(898, 187, '_wp_old_date', '2021-11-19'),
(899, 188, '_wp_old_date', '2021-11-19'),
(900, 238, '_wp_old_date', '2021-11-19'),
(901, 242, 'react_config_option', ''),
(902, 242, '_menu_item_type', 'custom'),
(903, 242, '_menu_item_menu_item_parent', '0'),
(904, 242, '_menu_item_object_id', '242'),
(905, 242, '_menu_item_object', 'custom'),
(906, 242, '_menu_item_target', ''),
(907, 242, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(908, 242, '_menu_item_xfn', ''),
(909, 242, '_menu_item_url', 'https://www.apple.com/ru/iphone/'),
(911, 214, '_wp_old_date', '2021-10-07'),
(912, 217, '_wp_old_date', '2021-10-07'),
(913, 215, '_wp_old_date', '2021-10-07'),
(914, 216, '_wp_old_date', '2021-10-07'),
(916, 244, 'react_config_option', ''),
(917, 244, '_menu_item_type', 'post_type'),
(918, 244, '_menu_item_menu_item_parent', '0'),
(919, 244, '_menu_item_object_id', '56'),
(920, 244, '_menu_item_object', 'page'),
(921, 244, '_menu_item_target', ''),
(922, 244, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(923, 244, '_menu_item_xfn', ''),
(924, 244, '_menu_item_url', ''),
(926, 245, 'react_config_option', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_2_posts`
--

CREATE TABLE `wp_2_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_2_posts`
--

INSERT INTO `wp_2_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-05-25 03:41:40', '2021-05-25 07:41:40', 'Welcome to <a href=\"https://react-dev.wp.wellnessliving.local/\">Сайты React 4 Multisite</a>. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-07-26 07:05:49', '2021-07-26 11:05:49', '', 0, 'https://react-dev1.wp.wellnessliving.local/?p=1', 0, 'post', '', 1),
(2, 1, '2021-05-25 03:41:40', '2021-05-25 07:41:40', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://react-dev1.wp.wellnessliving.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-05-25 03:41:40', '2021-05-25 07:41:40', '', 0, 'https://react-dev1.wp.wellnessliving.local/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-12-02 05:34:10', '2021-05-25 07:41:41', '', 'Book Now', '', 'publish', 'closed', 'closed', '', 'book-now', '', '', '2021-12-02 05:34:10', '2021-12-02 10:34:10', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/book-now/', 1, 'nav_menu_item', '', 0),
(4, 1, '2021-12-02 05:34:10', '2021-05-25 07:41:41', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2021-12-02 05:34:10', '2021-12-02 10:34:10', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/about-us/', 5, 'nav_menu_item', '', 0),
(5, 1, '2021-05-25 03:41:41', '2021-05-25 07:41:41', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-05-25 03:41:41', '2021-05-25 07:41:41', '', 0, 'https://react-dev1.wp.wellnessliving.local/home/', 0, 'page', '', 0),
(6, 1, '2021-05-25 03:41:41', '2021-05-25 07:41:41', ' ', '', '', 'publish', 'closed', 'closed', '', '6', '', '', '2021-05-25 03:41:41', '2021-05-25 07:41:41', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/6/', 0, 'nav_menu_item', '', 0),
(7, 1, '2021-05-25 03:41:41', '2021-05-25 07:41:41', '', 'Appointments', '', 'publish', 'closed', 'closed', '', 'appointments', '', '', '2021-05-25 03:41:41', '2021-05-25 07:41:41', '', 0, 'https://react-dev1.wp.wellnessliving.local/appointments/', 0, 'page', '', 0),
(8, 1, '2021-12-02 05:34:10', '2021-05-25 07:41:41', ' ', '', '', 'publish', 'closed', 'closed', '', '8', '', '', '2021-12-02 05:34:10', '2021-12-02 10:34:10', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/8/', 2, 'nav_menu_item', '', 0),
(9, 1, '2021-08-19 03:44:01', '2021-05-25 07:41:41', ' ', '', '', 'publish', 'closed', 'closed', '', '9', '', '', '2021-08-19 03:44:01', '2021-08-19 07:44:01', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/9/', 1, 'nav_menu_item', '', 0),
(10, 1, '2021-05-25 03:41:41', '2021-05-25 07:41:41', ' ', '', '', 'publish', 'closed', 'closed', '', '10', '', '', '2021-05-25 03:41:41', '2021-05-25 07:41:41', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/10/', 2, 'nav_menu_item', '', 0),
(11, 1, '2021-05-25 03:41:41', '2021-05-25 07:41:41', '', 'Classes', '', 'publish', 'closed', 'closed', '', 'classes', '', '', '2021-05-25 03:41:41', '2021-05-25 07:41:41', '', 0, 'https://react-dev1.wp.wellnessliving.local/classes/', 0, 'page', '', 0),
(12, 1, '2021-12-02 05:34:10', '2021-05-25 07:41:41', ' ', '', '', 'publish', 'closed', 'closed', '', '12', '', '', '2021-12-02 05:34:10', '2021-12-02 10:34:10', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/12/', 3, 'nav_menu_item', '', 0),
(13, 1, '2021-08-19 03:44:01', '2021-05-25 07:41:41', ' ', '', '', 'publish', 'closed', 'closed', '', '13', '', '', '2021-08-19 03:44:01', '2021-08-19 07:44:01', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/13/', 2, 'nav_menu_item', '', 0),
(14, 1, '2021-05-25 03:41:41', '2021-05-25 07:41:41', ' ', '', '', 'publish', 'closed', 'closed', '', '14', '', '', '2021-05-25 03:41:41', '2021-05-25 07:41:41', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/14/', 3, 'nav_menu_item', '', 0),
(15, 1, '2021-05-25 03:41:41', '2021-05-25 07:41:41', '', 'Events', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2021-05-25 03:41:41', '2021-05-25 07:41:41', '', 0, 'https://react-dev1.wp.wellnessliving.local/events/', 0, 'page', '', 0),
(16, 1, '2021-12-02 05:34:10', '2021-05-25 07:41:41', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2021-12-02 05:34:10', '2021-12-02 10:34:10', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/16/', 4, 'nav_menu_item', '', 0),
(17, 1, '2021-08-19 03:44:01', '2021-05-25 07:41:41', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2021-08-19 03:44:01', '2021-08-19 07:44:01', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/17/', 3, 'nav_menu_item', '', 0),
(18, 1, '2021-05-25 03:41:41', '2021-05-25 07:41:41', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2021-05-25 03:41:41', '2021-05-25 07:41:41', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/18/', 4, 'nav_menu_item', '', 0),
(19, 1, '2021-05-25 03:41:41', '2021-05-25 07:41:41', '', 'Schedule', '', 'publish', 'closed', 'closed', '', 'schedule', '', '', '2021-05-25 03:41:41', '2021-05-25 07:41:41', '', 0, 'https://react-dev1.wp.wellnessliving.local/schedule/', 0, 'page', '', 0),
(20, 1, '2021-12-02 05:34:10', '2021-05-25 07:41:41', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2021-12-02 05:34:10', '2021-12-02 10:34:10', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/20/', 10, 'nav_menu_item', '', 0),
(21, 1, '2021-08-19 03:44:01', '2021-05-25 07:41:41', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2021-08-19 03:44:01', '2021-08-19 07:44:01', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/21/', 4, 'nav_menu_item', '', 0),
(22, 1, '2021-05-25 03:41:42', '2021-05-25 07:41:42', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2021-05-25 03:41:42', '2021-05-25 07:41:42', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/22/', 5, 'nav_menu_item', '', 0),
(23, 1, '2021-05-25 03:41:42', '2021-05-25 07:41:42', '', 'Store', '', 'publish', 'closed', 'closed', '', 'store', '', '', '2021-05-25 03:41:42', '2021-05-25 07:41:42', '', 0, 'https://react-dev1.wp.wellnessliving.local/store/', 0, 'page', '', 0),
(24, 1, '2021-12-02 05:34:10', '2021-05-25 07:41:42', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2021-12-02 05:34:10', '2021-12-02 10:34:10', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/24/', 11, 'nav_menu_item', '', 0),
(25, 1, '2021-08-19 03:44:01', '2021-05-25 07:41:42', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2021-08-19 03:44:01', '2021-08-19 07:44:01', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/25/', 5, 'nav_menu_item', '', 0),
(26, 1, '2021-05-25 03:41:42', '2021-05-25 07:41:42', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2021-05-25 03:41:42', '2021-05-25 07:41:42', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/26/', 6, 'nav_menu_item', '', 0),
(27, 1, '2021-05-25 03:41:42', '2021-05-25 07:41:42', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2021-05-25 03:41:42', '2021-05-25 07:41:42', '', 0, 'https://react-dev1.wp.wellnessliving.local/about-us/', 0, 'page', '', 0),
(28, 1, '2021-12-02 05:34:10', '2021-05-25 07:41:42', '', 'Our Story', '', 'publish', 'closed', 'closed', '', 'our-story', '', '', '2021-12-02 05:34:10', '2021-12-02 10:34:10', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/our-story/', 6, 'nav_menu_item', '', 0),
(29, 1, '2021-08-19 03:44:01', '2021-05-25 07:41:42', '', 'Our Story', '', 'publish', 'closed', 'closed', '', 'our-story-2', '', '', '2021-08-19 03:44:01', '2021-08-19 07:44:01', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/our-story-2/', 6, 'nav_menu_item', '', 0),
(30, 1, '2021-05-25 03:41:42', '2021-05-25 07:41:42', '', 'Our Story', '', 'publish', 'closed', 'closed', '', 'our-story-3', '', '', '2021-05-25 03:41:42', '2021-05-25 07:41:42', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/our-story-3/', 7, 'nav_menu_item', '', 0),
(31, 1, '2021-05-25 03:41:42', '2021-05-25 07:41:42', '', 'Staff', '', 'publish', 'closed', 'closed', '', 'staff', '', '', '2021-05-25 03:41:42', '2021-05-25 07:41:42', '', 0, 'https://react-dev1.wp.wellnessliving.local/staff/', 0, 'page', '', 0),
(32, 1, '2021-12-02 05:34:10', '2021-05-25 07:41:42', '', 'Our Team', '', 'publish', 'closed', 'closed', '', 'our-team', '', '', '2021-12-02 05:34:10', '2021-12-02 10:34:10', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/our-team/', 7, 'nav_menu_item', '', 0),
(33, 1, '2021-08-19 03:44:01', '2021-05-25 07:41:42', '', 'Our Team', '', 'publish', 'closed', 'closed', '', 'our-team-2', '', '', '2021-08-19 03:44:01', '2021-08-19 07:44:01', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/our-team-2/', 7, 'nav_menu_item', '', 0),
(34, 1, '2021-05-25 03:41:42', '2021-05-25 07:41:42', '', 'Our Team', '', 'publish', 'closed', 'closed', '', 'our-team-3', '', '', '2021-05-25 03:41:42', '2021-05-25 07:41:42', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/our-team-3/', 8, 'nav_menu_item', '', 0),
(35, 1, '2021-05-25 03:41:42', '2021-05-25 07:41:42', '', 'Reviews', '', 'publish', 'closed', 'closed', '', 'reviews', '', '', '2021-05-25 03:41:42', '2021-05-25 07:41:42', '', 0, 'https://react-dev1.wp.wellnessliving.local/reviews/', 0, 'page', '', 0),
(36, 1, '2021-12-02 05:34:10', '2021-05-25 07:41:42', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2021-12-02 05:34:10', '2021-12-02 10:34:10', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/36/', 12, 'nav_menu_item', '', 0),
(37, 1, '2021-08-19 03:44:01', '2021-05-25 07:41:42', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2021-08-19 03:44:01', '2021-08-19 07:44:01', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/37/', 8, 'nav_menu_item', '', 0),
(38, 1, '2021-05-25 03:41:42', '2021-05-25 07:41:42', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2021-05-25 03:41:42', '2021-05-25 07:41:42', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/38/', 9, 'nav_menu_item', '', 0),
(39, 1, '2021-05-25 03:41:42', '2021-05-25 07:41:42', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":117,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/samurai-anime-minimal-1024x576.jpg\" alt=\"\" class=\"wp-image-117\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'FAQ', '', 'publish', 'closed', 'closed', '', 'faq', '', '', '2021-09-22 08:51:27', '2021-09-22 12:51:27', '', 0, 'https://react-dev1.wp.wellnessliving.local/faq/', 0, 'page', '', 0),
(40, 1, '2021-12-02 05:34:10', '2021-05-25 07:41:42', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2021-12-02 05:34:10', '2021-12-02 10:34:10', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/40/', 13, 'nav_menu_item', '', 0),
(41, 1, '2021-08-19 03:44:01', '2021-05-25 07:41:42', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2021-08-19 03:44:01', '2021-08-19 07:44:01', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/41/', 9, 'nav_menu_item', '', 0),
(42, 1, '2021-05-25 03:41:42', '2021-05-25 07:41:42', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2021-05-25 03:41:42', '2021-05-25 07:41:42', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/42/', 10, 'nav_menu_item', '', 0),
(43, 1, '2021-05-25 03:41:42', '2021-05-25 07:41:42', '<!-- wp:paragraph -->\n<p>Blog wellnessliving dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim <a href=\"https://google.com\" target=\"_blank\" data-type=\"URL\" data-id=\"https://google.com\" rel=\"noreferrer noopener nofollow\" class=\"rank-math-link\">veniam</a>, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in post velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Blog wellnessliving dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim <a href=\"https://google.com/\" target=\"_blank\" rel=\"noreferrer noopener\">veniam</a>, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in post velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":114,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/pacific-ocean-1920x1080-5k-4k-wallpaper-big-sur-california-beach-389-1024x576.jpg\" alt=\"\" class=\"wp-image-114\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Blog wellnessliving dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim <a href=\"https://google.com/\" target=\"_blank\" rel=\"noreferrer noopener\">veniam</a>, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in post velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Blog wellnessliving dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim <a href=\"https://google.com/\" target=\"_blank\" rel=\"noreferrer noopener\">veniam</a>, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in post velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Blog wellnessliving dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim <a href=\"https://google.com/\" target=\"_blank\" rel=\"noreferrer noopener\">veniam</a>, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in post velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Blog wellnessliving dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim <a href=\"https://google.com/\" target=\"_blank\" rel=\"noreferrer noopener\">veniam</a>, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in post velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Blog wellnessliving dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim <a href=\"https://google.com/\" target=\"_blank\" rel=\"noreferrer noopener\">veniam</a>, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in post velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Blog wellnessliving dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim <a href=\"https://google.com/\" target=\"_blank\" rel=\"noreferrer noopener\">veniam</a>, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in post velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Blog wellnessliving dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim <a href=\"https://google.com/\" target=\"_blank\" rel=\"noreferrer noopener\">veniam</a>, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim <a href=\"https://google.com/\" target=\"_blank\" rel=\"noreferrer noopener\">veniam</a>, quis nostrud exercitation ullamco laboris nisi ut aliquip ex.</p>\n<!-- /wp:paragraph -->', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2021-09-22 08:18:24', '2021-09-22 12:18:24', '', 0, 'https://react-dev1.wp.wellnessliving.local/blog/', 0, 'page', '', 0),
(44, 1, '2021-12-02 05:34:10', '2021-05-25 07:41:42', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2021-12-02 05:34:10', '2021-12-02 10:34:10', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/44/', 14, 'nav_menu_item', '', 0),
(45, 1, '2021-08-19 03:44:01', '2021-05-25 07:41:43', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2021-08-19 03:44:01', '2021-08-19 07:44:01', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/45/', 10, 'nav_menu_item', '', 0),
(46, 1, '2021-05-25 03:41:43', '2021-05-25 07:41:43', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2021-05-25 03:41:43', '2021-05-25 07:41:43', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/46/', 11, 'nav_menu_item', '', 0),
(47, 1, '2021-05-25 03:41:43', '2021-05-25 07:41:43', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2021-05-25 03:41:43', '2021-05-25 07:41:43', '', 0, 'https://react-dev1.wp.wellnessliving.local/contact/', 0, 'page', '', 0),
(48, 1, '2021-12-02 05:34:10', '2021-05-25 07:41:43', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2021-12-02 05:34:10', '2021-12-02 10:34:10', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/48/', 15, 'nav_menu_item', '', 0),
(49, 1, '2021-08-19 03:44:01', '2021-05-25 07:41:43', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2021-08-19 03:44:01', '2021-08-19 07:44:01', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/49/', 11, 'nav_menu_item', '', 0),
(50, 1, '2021-05-25 03:41:43', '2021-05-25 07:41:43', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2021-05-25 03:41:43', '2021-05-25 07:41:43', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/50/', 12, 'nav_menu_item', '', 0),
(51, 1, '2021-05-25 03:41:43', '2021-05-25 07:41:43', '', 'Privacy', '', 'publish', 'closed', 'closed', '', 'privacy', '', '', '2021-05-25 03:41:43', '2021-05-25 07:41:43', '', 0, 'https://react-dev1.wp.wellnessliving.local/privacy/', 0, 'page', '', 0),
(52, 1, '2021-05-25 03:41:43', '2021-05-25 07:41:43', ' ', '', '', 'publish', 'closed', 'closed', '', '52', '', '', '2021-05-25 03:41:43', '2021-05-25 07:41:43', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/52/', 13, 'nav_menu_item', '', 0),
(53, 1, '2021-05-25 03:41:43', '2021-05-25 07:41:43', '', 'Terms Conditions', '', 'publish', 'closed', 'closed', '', 'terms-conditions', '', '', '2021-05-25 03:41:43', '2021-05-25 07:41:43', '', 0, 'https://react-dev1.wp.wellnessliving.local/terms-conditions/', 0, 'page', '', 0),
(54, 1, '2021-05-25 03:41:43', '2021-05-25 07:41:43', ' ', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2021-05-25 03:41:43', '2021-05-25 07:41:43', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/54/', 14, 'nav_menu_item', '', 0),
(55, 1, '2021-05-25 03:41:43', '2021-05-25 07:41:43', '', 'real-results-single', '', 'publish', 'closed', 'closed', '', 'real-results-single', '', '', '2021-05-25 03:41:43', '2021-05-25 07:41:43', '', 0, 'https://react-dev1.wp.wellnessliving.local/real-results-single/', 0, 'page', '', 0),
(56, 1, '2021-05-25 03:41:43', '2021-05-25 07:41:43', '', 'Locations', '', 'publish', 'closed', 'closed', '', 'locations', '', '', '2021-05-25 03:41:43', '2021-05-25 07:41:43', '', 0, 'https://react-dev1.wp.wellnessliving.local/locations/', 0, 'page', '', 0),
(57, 1, '2021-12-02 05:34:10', '2021-05-25 07:41:43', ' ', '', '', 'publish', 'closed', 'closed', '', '57', '', '', '2021-12-02 05:34:10', '2021-12-02 10:34:10', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/57/', 16, 'nav_menu_item', '', 0),
(58, 1, '2021-08-19 03:44:01', '2021-05-25 07:41:43', ' ', '', '', 'publish', 'closed', 'closed', '', '58', '', '', '2021-08-19 03:44:01', '2021-08-19 07:44:01', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/58/', 12, 'nav_menu_item', '', 0),
(59, 1, '2021-05-25 03:41:43', '2021-05-25 07:41:43', ' ', '', '', 'publish', 'closed', 'closed', '', '59', '', '', '2021-05-25 03:41:43', '2021-05-25 07:41:43', '', 0, 'https://react-dev1.wp.wellnessliving.local/2021/05/25/59/', 15, 'nav_menu_item', '', 0),
(60, 0, '2021-05-25 03:41:45', '2021-05-25 07:41:45', '', 'sign-in', '', 'publish', 'closed', 'closed', '', 'sign-in', '', '', '2021-05-25 03:41:45', '2021-05-25 07:41:45', '', 0, 'https://react-dev1.wp.wellnessliving.local/sign-in/', 0, 'technical_page', '', 0),
(61, 0, '2021-05-25 03:41:45', '2021-05-25 07:41:45', '', 'sign-up', '', 'publish', 'closed', 'closed', '', 'sign-up', '', '', '2021-05-25 03:41:45', '2021-05-25 07:41:45', '', 0, 'https://react-dev1.wp.wellnessliving.local/sign-up/', 0, 'technical_page', '', 0),
(62, 0, '2021-05-25 03:41:45', '2021-05-25 07:41:45', '', 'confirm', '', 'publish', 'closed', 'closed', '', 'confirm', '', '', '2021-05-25 03:41:45', '2021-05-25 07:41:45', '', 0, 'https://react-dev1.wp.wellnessliving.local/confirm/', 0, 'technical_page', '', 0),
(63, 0, '2021-05-25 03:41:45', '2021-05-25 07:41:45', '', 'profile', '', 'publish', 'closed', 'closed', '', 'profile', '', '', '2021-05-25 03:41:45', '2021-05-25 07:41:45', '', 0, 'https://react-dev1.wp.wellnessliving.local/profile/', 0, 'technical_page', '', 0),
(64, 0, '2021-05-25 03:41:45', '2021-05-25 07:41:45', '', 'create-account', '', 'publish', 'closed', 'closed', '', 'create-account', '', '', '2021-05-25 03:41:45', '2021-05-25 07:41:45', '', 0, 'https://react-dev1.wp.wellnessliving.local/create-account/', 0, 'technical_page', '', 0),
(65, 0, '2021-05-25 03:41:45', '2021-05-25 07:41:45', '', 'forgot-password', '', 'publish', 'closed', 'closed', '', 'forgot-password', '', '', '2021-05-25 03:41:45', '2021-05-25 07:41:45', '', 0, 'https://react-dev1.wp.wellnessliving.local/forgot-password/', 0, 'technical_page', '', 0),
(66, 0, '2021-05-25 03:41:45', '2021-05-25 07:41:45', '', 'reset-password', '', 'publish', 'closed', 'closed', '', 'reset-password', '', '', '2021-05-25 03:41:45', '2021-05-25 07:41:45', '', 0, 'https://react-dev1.wp.wellnessliving.local/reset-password/', 0, 'technical_page', '', 0),
(67, 0, '2021-05-25 03:41:45', '2021-05-25 07:41:45', '', 'user-waiver', '', 'publish', 'closed', 'closed', '', 'user-waiver', '', '', '2021-05-25 03:41:45', '2021-05-25 07:41:45', '', 0, 'https://react-dev1.wp.wellnessliving.local/user-waiver/', 0, 'technical_page', '', 0),
(70, 1, '2021-06-07 03:48:55', '2021-06-07 07:48:55', '', 'Sandbox', '', 'publish', 'closed', 'closed', '', 'sandbox', '', '', '2021-06-07 03:50:51', '2021-06-07 07:50:51', '', 0, 'https://react-dev1.wp.wellnessliving.local/?page_id=70', 0, 'page', '', 0),
(71, 1, '2021-06-07 03:48:55', '2021-06-07 07:48:55', '', 'Sandbox', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2021-06-07 03:48:55', '2021-06-07 07:48:55', '', 70, 'https://react-dev1.wp.wellnessliving.local/?p=71', 0, 'revision', '', 0),
(72, 1, '2021-06-07 04:35:15', '2021-06-07 08:35:15', '', 'goals-img', '', 'inherit', 'open', 'closed', '', 'goals-img', '', '', '2021-06-07 04:35:15', '2021-06-07 08:35:15', '', 0, 'https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/06/goals-img.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2021-06-07 04:35:16', '2021-06-07 08:35:16', '', 'hiphop_1', '', 'inherit', 'open', 'closed', '', 'hiphop_1', '', '', '2021-06-07 04:35:16', '2021-06-07 08:35:16', '', 0, 'https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/06/hiphop_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2021-06-07 04:35:18', '2021-06-07 08:35:18', '', 'lead-captire-yoga-bg', '', 'inherit', 'open', 'closed', '', 'lead-captire-yoga-bg', '', '', '2021-06-07 04:35:18', '2021-06-07 08:35:18', '', 0, 'https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/06/lead-captire-yoga-bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2021-06-07 04:49:06', '2021-06-07 08:49:06', '', 'counter-bg', '', 'inherit', 'open', 'closed', '', 'counter-bg', '', '', '2021-06-07 04:49:06', '2021-06-07 08:49:06', '', 0, 'https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/06/counter-bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2021-06-07 11:37:53', '2021-06-07 15:37:53', '', 'Product', '', 'publish', 'closed', 'closed', '', 'product', '', '', '2021-06-07 11:37:53', '2021-06-07 15:37:53', '', 0, 'https://react-dev1.wp.wellnessliving.local/?page_id=84', 0, 'page', '', 0),
(85, 1, '2021-06-07 11:37:53', '2021-06-07 15:37:53', '', 'Product', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2021-06-07 11:37:53', '2021-06-07 15:37:53', '', 84, 'https://react-dev1.wp.wellnessliving.local/?p=85', 0, 'revision', '', 0),
(86, 1, '2021-06-07 11:47:52', '2021-06-07 15:47:52', '', 'Class Booking', '', 'publish', 'closed', 'closed', '', 'class-booking', '', '', '2021-06-07 11:47:52', '2021-06-07 15:47:52', '', 0, 'https://react-dev1.wp.wellnessliving.local/?page_id=86', 0, 'page', '', 0),
(87, 1, '2021-06-07 11:47:52', '2021-06-07 15:47:52', '', 'Class Booking', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2021-06-07 11:47:52', '2021-06-07 15:47:52', '', 86, 'https://react-dev1.wp.wellnessliving.local/?p=87', 0, 'revision', '', 0),
(89, 1, '2021-06-24 10:57:01', '2021-06-24 14:57:01', '', 'store cart', '', 'publish', 'closed', 'closed', '', 'store-cart', '', '', '2021-06-24 10:57:01', '2021-06-24 14:57:01', '', 0, 'https://react-dev1.wp.wellnessliving.local/?page_id=89', 0, 'page', '', 0),
(90, 1, '2021-06-24 10:57:01', '2021-06-24 14:57:01', '', 'store cart', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2021-06-24 10:57:01', '2021-06-24 14:57:01', '', 89, 'https://react-dev1.wp.wellnessliving.local/?p=90', 0, 'revision', '', 0),
(91, 1, '2021-06-28 18:31:39', '2021-06-28 22:31:39', '', 'STEP 1', '', 'publish', 'closed', 'closed', '', 'step-1', '', '', '2021-06-28 18:31:39', '2021-06-28 22:31:39', '', 0, 'https://react-dev1.wp.wellnessliving.local/step-1/', 0, 'page', '', 0),
(92, 1, '2021-06-28 18:31:39', '2021-06-28 22:31:39', '', 'STEP 2', '', 'publish', 'closed', 'closed', '', 'step-2', '', '', '2021-06-28 18:31:39', '2021-06-28 22:31:39', '', 0, 'https://react-dev1.wp.wellnessliving.local/step-2/', 0, 'page', '', 0),
(93, 1, '2021-06-28 18:31:39', '2021-06-28 22:31:39', '', 'STEP 3', '', 'publish', 'closed', 'closed', '', 'step-3', '', '', '2021-06-28 18:31:39', '2021-06-28 22:31:39', '', 0, 'https://react-dev1.wp.wellnessliving.local/step-3/', 0, 'page', '', 0),
(94, 1, '2021-06-28 18:31:39', '2021-06-28 22:31:39', '', 'STEP 4', '', 'publish', 'closed', 'closed', '', 'step-4', '', '', '2021-06-28 18:31:39', '2021-06-28 22:31:39', '', 0, 'https://react-dev1.wp.wellnessliving.local/step-4/', 0, 'page', '', 0),
(95, 1, '2021-06-28 18:31:39', '2021-06-28 22:31:39', '', 'STEP 5', '', 'publish', 'closed', 'closed', '', 'step-5', '', '', '2021-06-28 18:31:39', '2021-06-28 22:31:39', '', 0, 'https://react-dev1.wp.wellnessliving.local/step-5/', 0, 'page', '', 0),
(96, 1, '2021-06-28 18:31:39', '2021-06-28 22:31:39', '', 'WRENCH', '', 'publish', 'closed', 'closed', '', 'wrench', '', '', '2021-06-28 18:31:39', '2021-06-28 22:31:39', '', 0, 'https://react-dev1.wp.wellnessliving.local/wrench/', 0, 'page', '', 0),
(100, 1, '2021-07-21 10:17:27', '2021-07-21 14:17:27', '', 'Error Page', '', 'publish', 'closed', 'closed', '', 'error-page', '', '', '2021-07-21 10:17:27', '2021-07-21 14:17:27', '', 0, 'https://react-dev1.wp.wellnessliving.local/?page_id=100', 0, 'page', '', 0),
(101, 1, '2021-07-21 10:17:27', '2021-07-21 14:17:27', '', 'Error Page', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2021-07-21 10:17:27', '2021-07-21 14:17:27', '', 100, 'https://react-dev1.wp.wellnessliving.local/?p=101', 0, 'revision', '', 0),
(102, 1, '2021-07-26 06:19:42', '2021-07-26 10:19:42', '<!-- wp:image {\"id\":114,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/pacific-ocean-1920x1080-5k-4k-wallpaper-big-sur-california-beach-389-1024x576.jpg\" alt=\"\" class=\"wp-image-114\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nibh erat, sagittis nec tortor id, accumsan interdum metus. Vestibulum felis augue, vehicula id erat in, consequat consequat justo. Nullam urna orci, tincidunt vel finibus eu, feugiat vitae diam. Nam elementum, ipsum non convallis dictum, ante tellus convallis felis, eget hendrerit leo libero ut libero. Praesent eleifend, tortor vitae porttitor tincidunt, sem urna malesuada justo, sed scelerisque nisi nibh ac elit. Phasellus nec ligula vel turpis rutrum rhoncus. Aliquam varius metus a urna molestie, sit amet porta tellus vulputate. Nam vulputate nec lorem elementum aliquet. Proin sit amet neque euismod, laoreet tellus id, sagittis sapien. Vivamus rhoncus, massa sed dignissim dictum, ante enim fringilla nisi, sed tincidunt leo urna non sapien. Vivamus porta tortor vel nunc rutrum, ac malesuada ex semper. Nunc ut auctor diam, non pulvinar mauris. In sed quam in sapien ornare elementum in eget neque. Quisque mi libero, accumsan sed consequat vitae, interdum ut nisi. Sed tincidunt orci leo. Nulla vitae justo laoreet, elementum enim at, tincidunt tortor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque pharetra lectus ut viverra dictum. Duis suscipit nisi lacinia, eleifend nunc ut, iaculis massa. Donec tincidunt turpis sit amet urna auctor, at ultrices nisi sagittis. Mauris ac velit a quam molestie sodales. Pellentesque mi dolor, tincidunt eget erat quis, fringilla tincidunt nisi. Sed suscipit iaculis elit, et posuere erat maximus ut. Sed finibus diam a ipsum fringilla dictum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris mattis, orci sed condimentum tempor, ligula erat tristique mauris, ac egestas eros metus vitae risus. Vivamus pharetra porttitor nisl quis tristique. Donec et diam commodo, aliquet sem vel, vehicula eros. Etiam erat lectus, elementum pretium sagittis vel, viverra nec mauris. Phasellus euismod, dui ut ornare mollis, diam dui mollis leo, fringilla cursus nibh est ac erat. Praesent vel quam pretium, tempus metus iaculis, scelerisque massa. Suspendisse ligula eros, tempor non est vel, pretium pulvinar libero. Aenean felis felis, vestibulum et felis porta, auctor tincidunt diam. Proin ut viverra orci, ut congue orci.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nam a urna in lectus pulvinar pharetra. Maecenas eget neque dignissim, ultrices quam id, convallis leo. Duis iaculis tristique tempor. Sed volutpat arcu sed posuere accumsan. Integer fringilla sapien sit amet nisi vulputate, nec posuere est dictum. In ullamcorper suscipit metus. Vestibulum eu ultrices eros, et rutrum nibh. Nunc id orci elementum, efficitur enim ut, blandit arcu. Nulla interdum sit amet quam nec venenatis. Donec a mi eget libero vestibulum aliquet id et ante. Sed mi justo, facilisis eget fermentum eget, molestie eu felis. Suspendisse laoreet, quam vel vulputate maximus, lectus lorem consequat magna, eu lacinia elit lorem suscipit tortor. Donec ut libero scelerisque, tempus arcu non, condimentum neque. Sed sit amet dictum magna, nec vehicula justo. Vestibulum vestibulum mi semper porttitor scelerisque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec in eleifend felis. Maecenas sit amet lobortis arcu, non dignissim orci. Vestibulum euismod hendrerit diam id dapibus. Suspendisse sapien est, ornare et justo sit amet, bibendum ultrices nunc. Duis congue porta velit quis mattis. Aliquam velit ligula, dignissim ut augue ut, blandit vehicula augue. Fusce blandit nec dui vel elementum.</p>\n<!-- /wp:paragraph -->', 'Simple product Fat Loss Program and Losing Weight', '', 'publish', 'closed', 'closed', '', 'simple-product-fat-loss-program-and-losing-weight', '', '', '2021-07-26 07:05:34', '2021-07-26 11:05:34', '', 0, 'https://react-dev1.wp.wellnessliving.local/?p=102', 0, 'post', '', 0),
(103, 1, '2021-07-26 06:19:42', '2021-07-26 10:19:42', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nibh erat, sagittis nec tortor id, accumsan interdum metus. Vestibulum felis augue, vehicula id erat in, consequat consequat justo. Nullam urna orci, tincidunt vel finibus eu, feugiat vitae diam. Nam elementum, ipsum non convallis dictum, ante tellus convallis felis, eget hendrerit leo libero ut libero. Praesent eleifend, tortor vitae porttitor tincidunt, sem urna malesuada justo, sed scelerisque nisi nibh ac elit. Phasellus nec ligula vel turpis rutrum rhoncus. Aliquam varius metus a urna molestie, sit amet porta tellus vulputate. Nam vulputate nec lorem elementum aliquet. Proin sit amet neque euismod, laoreet tellus id, sagittis sapien. Vivamus rhoncus, massa sed dignissim dictum, ante enim fringilla nisi, sed tincidunt leo urna non sapien. Vivamus porta tortor vel nunc rutrum, ac malesuada ex semper. Nunc ut auctor diam, non pulvinar mauris. In sed quam in sapien ornare elementum in eget neque. Quisque mi libero, accumsan sed consequat vitae, interdum ut nisi. Sed tincidunt orci leo. Nulla vitae justo laoreet, elementum enim at, tincidunt tortor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque pharetra lectus ut viverra dictum. Duis suscipit nisi lacinia, eleifend nunc ut, iaculis massa. Donec tincidunt turpis sit amet urna auctor, at ultrices nisi sagittis. Mauris ac velit a quam molestie sodales. Pellentesque mi dolor, tincidunt eget erat quis, fringilla tincidunt nisi. Sed suscipit iaculis elit, et posuere erat maximus ut. Sed finibus diam a ipsum fringilla dictum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris mattis, orci sed condimentum tempor, ligula erat tristique mauris, ac egestas eros metus vitae risus. Vivamus pharetra porttitor nisl quis tristique. Donec et diam commodo, aliquet sem vel, vehicula eros. Etiam erat lectus, elementum pretium sagittis vel, viverra nec mauris. Phasellus euismod, dui ut ornare mollis, diam dui mollis leo, fringilla cursus nibh est ac erat. Praesent vel quam pretium, tempus metus iaculis, scelerisque massa. Suspendisse ligula eros, tempor non est vel, pretium pulvinar libero. Aenean felis felis, vestibulum et felis porta, auctor tincidunt diam. Proin ut viverra orci, ut congue orci.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nam a urna in lectus pulvinar pharetra. Maecenas eget neque dignissim, ultrices quam id, convallis leo. Duis iaculis tristique tempor. Sed volutpat arcu sed posuere accumsan. Integer fringilla sapien sit amet nisi vulputate, nec posuere est dictum. In ullamcorper suscipit metus. Vestibulum eu ultrices eros, et rutrum nibh. Nunc id orci elementum, efficitur enim ut, blandit arcu. Nulla interdum sit amet quam nec venenatis. Donec a mi eget libero vestibulum aliquet id et ante. Sed mi justo, facilisis eget fermentum eget, molestie eu felis. Suspendisse laoreet, quam vel vulputate maximus, lectus lorem consequat magna, eu lacinia elit lorem suscipit tortor. Donec ut libero scelerisque, tempus arcu non, condimentum neque. Sed sit amet dictum magna, nec vehicula justo. Vestibulum vestibulum mi semper porttitor scelerisque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec in eleifend felis. Maecenas sit amet lobortis arcu, non dignissim orci. Vestibulum euismod hendrerit diam id dapibus. Suspendisse sapien est, ornare et justo sit amet, bibendum ultrices nunc. Duis congue porta velit quis mattis. Aliquam velit ligula, dignissim ut augue ut, blandit vehicula augue. Fusce blandit nec dui vel elementum.</p>\n<!-- /wp:paragraph -->', 'Simple product Fat Loss Program and Losing Weight', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2021-07-26 06:19:42', '2021-07-26 10:19:42', '', 102, 'https://react-dev1.wp.wellnessliving.local/?p=103', 0, 'revision', '', 0),
(105, 1, '2021-07-26 06:26:47', '2021-07-26 10:26:47', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nibh erat, sagittis nec tortor id, accumsan interdum metus. Vestibulum felis augue, vehicula id erat in, consequat consequat justo. Nullam urna orci, tincidunt vel finibus eu, feugiat vitae diam. Nam elementum, ipsum non convallis dictum, ante tellus convallis felis, eget hendrerit leo libero ut libero. Praesent eleifend, tortor vitae porttitor tincidunt, sem urna malesuada justo, sed scelerisque nisi nibh ac elit. Phasellus nec ligula vel turpis rutrum rhoncus. Aliquam varius metus a urna molestie, sit amet porta tellus vulputate. Nam vulputate nec lorem elementum aliquet. Proin sit amet neque euismod, laoreet tellus id, sagittis sapien. Vivamus rhoncus, massa sed dignissim dictum, ante enim fringilla nisi, sed tincidunt leo urna non sapien. Vivamus porta tortor vel nunc rutrum, ac malesuada ex semper. Nunc ut auctor diam, non pulvinar mauris. In sed quam in sapien ornare elementum in eget neque. Quisque mi libero, accumsan sed consequat vitae, interdum ut nisi. Sed tincidunt orci leo. Nulla vitae justo laoreet, elementum enim at, tincidunt tortor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque pharetra lectus ut viverra dictum. Duis suscipit nisi lacinia, eleifend nunc ut, iaculis massa. Donec tincidunt turpis sit amet urna auctor, at ultrices nisi sagittis. Mauris ac velit a quam molestie sodales. Pellentesque mi dolor, tincidunt eget erat quis, fringilla tincidunt nisi. Sed suscipit iaculis elit, et posuere erat maximus ut. Sed finibus diam a ipsum fringilla dictum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris mattis, orci sed condimentum tempor, ligula erat tristique mauris, ac egestas eros metus vitae risus. Vivamus pharetra porttitor nisl quis tristique. Donec et diam commodo, aliquet sem vel, vehicula eros. Etiam erat lectus, elementum pretium sagittis vel, viverra nec mauris. Phasellus euismod, dui ut ornare mollis, diam dui mollis leo, fringilla cursus nibh est ac erat. Praesent vel quam pretium, tempus metus iaculis, scelerisque massa. Suspendisse ligula eros, tempor non est vel, pretium pulvinar libero. Aenean felis felis, vestibulum et felis porta, auctor tincidunt diam. Proin ut viverra orci, ut congue orci.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nam a urna in lectus pulvinar pharetra. Maecenas eget neque dignissim, ultrices quam id, convallis leo. Duis iaculis tristique tempor. Sed volutpat arcu sed posuere accumsan. Integer fringilla sapien sit amet nisi vulputate, nec posuere est dictum. In ullamcorper suscipit metus. Vestibulum eu ultrices eros, et rutrum nibh. Nunc id orci elementum, efficitur enim ut, blandit arcu. Nulla interdum sit amet quam nec venenatis. Donec a mi eget libero vestibulum aliquet id et ante. Sed mi justo, facilisis eget fermentum eget, molestie eu felis. Suspendisse laoreet, quam vel vulputate maximus, lectus lorem consequat magna, eu lacinia elit lorem suscipit tortor. Donec ut libero scelerisque, tempus arcu non, condimentum neque. Sed sit amet dictum magna, nec vehicula justo. Vestibulum vestibulum mi semper porttitor scelerisque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec in eleifend felis. Maecenas sit amet lobortis arcu, non dignissim orci. Vestibulum euismod hendrerit diam id dapibus. Suspendisse sapien est, ornare et justo sit amet, bibendum ultrices nunc. Duis congue porta velit quis mattis. Aliquam velit ligula, dignissim ut augue ut, blandit vehicula augue. Fusce blandit nec dui vel elementum.</p>\n<!-- /wp:paragraph -->', 'Program and Losing Weight', '', 'publish', 'open', 'open', '', 'program-and-losing-weight', '', '', '2021-07-26 07:05:23', '2021-07-26 11:05:23', '', 0, 'https://react-dev1.wp.wellnessliving.local/?p=105', 0, 'post', '', 0);
INSERT INTO `wp_2_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(106, 1, '2021-07-26 06:26:47', '2021-07-26 10:26:47', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nibh erat, sagittis nec tortor id, accumsan interdum metus. Vestibulum felis augue, vehicula id erat in, consequat consequat justo. Nullam urna orci, tincidunt vel finibus eu, feugiat vitae diam. Nam elementum, ipsum non convallis dictum, ante tellus convallis felis, eget hendrerit leo libero ut libero. Praesent eleifend, tortor vitae porttitor tincidunt, sem urna malesuada justo, sed scelerisque nisi nibh ac elit. Phasellus nec ligula vel turpis rutrum rhoncus. Aliquam varius metus a urna molestie, sit amet porta tellus vulputate. Nam vulputate nec lorem elementum aliquet. Proin sit amet neque euismod, laoreet tellus id, sagittis sapien. Vivamus rhoncus, massa sed dignissim dictum, ante enim fringilla nisi, sed tincidunt leo urna non sapien. Vivamus porta tortor vel nunc rutrum, ac malesuada ex semper. Nunc ut auctor diam, non pulvinar mauris. In sed quam in sapien ornare elementum in eget neque. Quisque mi libero, accumsan sed consequat vitae, interdum ut nisi. Sed tincidunt orci leo. Nulla vitae justo laoreet, elementum enim at, tincidunt tortor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque pharetra lectus ut viverra dictum. Duis suscipit nisi lacinia, eleifend nunc ut, iaculis massa. Donec tincidunt turpis sit amet urna auctor, at ultrices nisi sagittis. Mauris ac velit a quam molestie sodales. Pellentesque mi dolor, tincidunt eget erat quis, fringilla tincidunt nisi. Sed suscipit iaculis elit, et posuere erat maximus ut. Sed finibus diam a ipsum fringilla dictum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris mattis, orci sed condimentum tempor, ligula erat tristique mauris, ac egestas eros metus vitae risus. Vivamus pharetra porttitor nisl quis tristique. Donec et diam commodo, aliquet sem vel, vehicula eros. Etiam erat lectus, elementum pretium sagittis vel, viverra nec mauris. Phasellus euismod, dui ut ornare mollis, diam dui mollis leo, fringilla cursus nibh est ac erat. Praesent vel quam pretium, tempus metus iaculis, scelerisque massa. Suspendisse ligula eros, tempor non est vel, pretium pulvinar libero. Aenean felis felis, vestibulum et felis porta, auctor tincidunt diam. Proin ut viverra orci, ut congue orci.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nam a urna in lectus pulvinar pharetra. Maecenas eget neque dignissim, ultrices quam id, convallis leo. Duis iaculis tristique tempor. Sed volutpat arcu sed posuere accumsan. Integer fringilla sapien sit amet nisi vulputate, nec posuere est dictum. In ullamcorper suscipit metus. Vestibulum eu ultrices eros, et rutrum nibh. Nunc id orci elementum, efficitur enim ut, blandit arcu. Nulla interdum sit amet quam nec venenatis. Donec a mi eget libero vestibulum aliquet id et ante. Sed mi justo, facilisis eget fermentum eget, molestie eu felis. Suspendisse laoreet, quam vel vulputate maximus, lectus lorem consequat magna, eu lacinia elit lorem suscipit tortor. Donec ut libero scelerisque, tempus arcu non, condimentum neque. Sed sit amet dictum magna, nec vehicula justo. Vestibulum vestibulum mi semper porttitor scelerisque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec in eleifend felis. Maecenas sit amet lobortis arcu, non dignissim orci. Vestibulum euismod hendrerit diam id dapibus. Suspendisse sapien est, ornare et justo sit amet, bibendum ultrices nunc. Duis congue porta velit quis mattis. Aliquam velit ligula, dignissim ut augue ut, blandit vehicula augue. Fusce blandit nec dui vel elementum.</p>\n<!-- /wp:paragraph -->', 'Program and Losing Weight', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2021-07-26 06:26:47', '2021-07-26 10:26:47', '', 105, 'https://react-dev1.wp.wellnessliving.local/?p=106', 0, 'revision', '', 0),
(107, 1, '2021-07-26 06:27:06', '2021-07-26 10:27:06', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nibh erat, sagittis nec tortor id, accumsan interdum metus. Vestibulum felis augue, vehicula id erat in, consequat consequat justo. Nullam urna orci, tincidunt vel finibus eu, feugiat vitae diam. Nam elementum, ipsum non convallis dictum, ante tellus convallis felis, eget hendrerit leo libero ut libero. Praesent eleifend, tortor vitae porttitor tincidunt, sem urna malesuada justo, sed scelerisque nisi nibh ac elit. Phasellus nec ligula vel turpis rutrum rhoncus. Aliquam varius metus a urna molestie, sit amet porta tellus vulputate. Nam vulputate nec lorem elementum aliquet. Proin sit amet neque euismod, laoreet tellus id, sagittis sapien. Vivamus rhoncus, massa sed dignissim dictum, ante enim fringilla nisi, sed tincidunt leo urna non sapien. Vivamus porta tortor vel nunc rutrum, ac malesuada ex semper. Nunc ut auctor diam, non pulvinar mauris. In sed quam in sapien ornare elementum in eget neque. Quisque mi libero, accumsan sed consequat vitae, interdum ut nisi. Sed tincidunt orci leo. Nulla vitae justo laoreet, elementum enim at, tincidunt tortor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque pharetra lectus ut viverra dictum. Duis suscipit nisi lacinia, eleifend nunc ut, iaculis massa. Donec tincidunt turpis sit amet urna auctor, at ultrices nisi sagittis. Mauris ac velit a quam molestie sodales. Pellentesque mi dolor, tincidunt eget erat quis, fringilla tincidunt nisi. Sed suscipit iaculis elit, et posuere erat maximus ut. Sed finibus diam a ipsum fringilla dictum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris mattis, orci sed condimentum tempor, ligula erat tristique mauris, ac egestas eros metus vitae risus. Vivamus pharetra porttitor nisl quis tristique. Donec et diam commodo, aliquet sem vel, vehicula eros. Etiam erat lectus, elementum pretium sagittis vel, viverra nec mauris. Phasellus euismod, dui ut ornare mollis, diam dui mollis leo, fringilla cursus nibh est ac erat. Praesent vel quam pretium, tempus metus iaculis, scelerisque massa. Suspendisse ligula eros, tempor non est vel, pretium pulvinar libero. Aenean felis felis, vestibulum et felis porta, auctor tincidunt diam. Proin ut viverra orci, ut congue orci.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nam a urna in lectus pulvinar pharetra. Maecenas eget neque dignissim, ultrices quam id, convallis leo. Duis iaculis tristique tempor. Sed volutpat arcu sed posuere accumsan. Integer fringilla sapien sit amet nisi vulputate, nec posuere est dictum. In ullamcorper suscipit metus. Vestibulum eu ultrices eros, et rutrum nibh. Nunc id orci elementum, efficitur enim ut, blandit arcu. Nulla interdum sit amet quam nec venenatis. Donec a mi eget libero vestibulum aliquet id et ante. Sed mi justo, facilisis eget fermentum eget, molestie eu felis. Suspendisse laoreet, quam vel vulputate maximus, lectus lorem consequat magna, eu lacinia elit lorem suscipit tortor. Donec ut libero scelerisque, tempus arcu non, condimentum neque. Sed sit amet dictum magna, nec vehicula justo. Vestibulum vestibulum mi semper porttitor scelerisque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec in eleifend felis. Maecenas sit amet lobortis arcu, non dignissim orci. Vestibulum euismod hendrerit diam id dapibus. Suspendisse sapien est, ornare et justo sit amet, bibendum ultrices nunc. Duis congue porta velit quis mattis. Aliquam velit ligula, dignissim ut augue ut, blandit vehicula augue. Fusce blandit nec dui vel elementum.</p>\n<!-- /wp:paragraph -->', 'Losing Weight', '', 'publish', 'open', 'open', '', 'losing-weight', '', '', '2021-07-26 07:05:12', '2021-07-26 11:05:12', '', 0, 'https://react-dev1.wp.wellnessliving.local/?p=107', 0, 'post', '', 0),
(108, 1, '2021-07-26 06:27:06', '2021-07-26 10:27:06', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nibh erat, sagittis nec tortor id, accumsan interdum metus. Vestibulum felis augue, vehicula id erat in, consequat consequat justo. Nullam urna orci, tincidunt vel finibus eu, feugiat vitae diam. Nam elementum, ipsum non convallis dictum, ante tellus convallis felis, eget hendrerit leo libero ut libero. Praesent eleifend, tortor vitae porttitor tincidunt, sem urna malesuada justo, sed scelerisque nisi nibh ac elit. Phasellus nec ligula vel turpis rutrum rhoncus. Aliquam varius metus a urna molestie, sit amet porta tellus vulputate. Nam vulputate nec lorem elementum aliquet. Proin sit amet neque euismod, laoreet tellus id, sagittis sapien. Vivamus rhoncus, massa sed dignissim dictum, ante enim fringilla nisi, sed tincidunt leo urna non sapien. Vivamus porta tortor vel nunc rutrum, ac malesuada ex semper. Nunc ut auctor diam, non pulvinar mauris. In sed quam in sapien ornare elementum in eget neque. Quisque mi libero, accumsan sed consequat vitae, interdum ut nisi. Sed tincidunt orci leo. Nulla vitae justo laoreet, elementum enim at, tincidunt tortor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque pharetra lectus ut viverra dictum. Duis suscipit nisi lacinia, eleifend nunc ut, iaculis massa. Donec tincidunt turpis sit amet urna auctor, at ultrices nisi sagittis. Mauris ac velit a quam molestie sodales. Pellentesque mi dolor, tincidunt eget erat quis, fringilla tincidunt nisi. Sed suscipit iaculis elit, et posuere erat maximus ut. Sed finibus diam a ipsum fringilla dictum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris mattis, orci sed condimentum tempor, ligula erat tristique mauris, ac egestas eros metus vitae risus. Vivamus pharetra porttitor nisl quis tristique. Donec et diam commodo, aliquet sem vel, vehicula eros. Etiam erat lectus, elementum pretium sagittis vel, viverra nec mauris. Phasellus euismod, dui ut ornare mollis, diam dui mollis leo, fringilla cursus nibh est ac erat. Praesent vel quam pretium, tempus metus iaculis, scelerisque massa. Suspendisse ligula eros, tempor non est vel, pretium pulvinar libero. Aenean felis felis, vestibulum et felis porta, auctor tincidunt diam. Proin ut viverra orci, ut congue orci.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nam a urna in lectus pulvinar pharetra. Maecenas eget neque dignissim, ultrices quam id, convallis leo. Duis iaculis tristique tempor. Sed volutpat arcu sed posuere accumsan. Integer fringilla sapien sit amet nisi vulputate, nec posuere est dictum. In ullamcorper suscipit metus. Vestibulum eu ultrices eros, et rutrum nibh. Nunc id orci elementum, efficitur enim ut, blandit arcu. Nulla interdum sit amet quam nec venenatis. Donec a mi eget libero vestibulum aliquet id et ante. Sed mi justo, facilisis eget fermentum eget, molestie eu felis. Suspendisse laoreet, quam vel vulputate maximus, lectus lorem consequat magna, eu lacinia elit lorem suscipit tortor. Donec ut libero scelerisque, tempus arcu non, condimentum neque. Sed sit amet dictum magna, nec vehicula justo. Vestibulum vestibulum mi semper porttitor scelerisque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec in eleifend felis. Maecenas sit amet lobortis arcu, non dignissim orci. Vestibulum euismod hendrerit diam id dapibus. Suspendisse sapien est, ornare et justo sit amet, bibendum ultrices nunc. Duis congue porta velit quis mattis. Aliquam velit ligula, dignissim ut augue ut, blandit vehicula augue. Fusce blandit nec dui vel elementum.</p>\n<!-- /wp:paragraph -->', 'Losing Weight', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2021-07-26 06:27:06', '2021-07-26 10:27:06', '', 107, 'https://react-dev1.wp.wellnessliving.local/?p=108', 0, 'revision', '', 0),
(109, 1, '2021-07-26 06:27:40', '2021-07-26 10:27:40', '<!-- wp:image {\"id\":111,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/3vRqDI-1024x576.jpg\" alt=\"\" class=\"wp-image-111\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nibh erat, sagittis nec tortor id, accumsan interdum metus. Vestibulum felis augue, vehicula id erat in, consequat consequat justo. Nullam urna orci, tincidunt vel finibus eu, feugiat vitae diam. Nam elementum, ipsum non convallis dictum, ante tellus convallis felis, eget hendrerit leo libero ut libero. Praesent eleifend, tortor vitae porttitor tincidunt, sem urna malesuada justo, sed scelerisque nisi nibh ac elit. Phasellus nec ligula vel turpis rutrum rhoncus. Aliquam varius metus a urna molestie, sit amet porta tellus vulputate. Nam vulputate nec lorem elementum aliquet. Proin sit amet neque euismod, laoreet tellus id, sagittis sapien. Vivamus rhoncus, massa sed dignissim dictum, ante enim fringilla nisi, sed tincidunt leo urna non sapien. Vivamus porta tortor vel nunc rutrum, ac malesuada ex semper. Nunc ut auctor diam, non pulvinar mauris. In sed quam in sapien ornare elementum in eget neque. Quisque mi libero, accumsan sed consequat vitae, interdum ut nisi. Sed tincidunt orci leo. Nulla vitae justo laoreet, elementum enim at, tincidunt tortor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque pharetra lectus ut viverra dictum. Duis suscipit nisi lacinia, eleifend nunc ut, iaculis massa. Donec tincidunt turpis sit amet urna auctor, at ultrices nisi sagittis. Mauris ac velit a quam molestie sodales. Pellentesque mi dolor, tincidunt eget erat quis, fringilla tincidunt nisi. Sed suscipit iaculis elit, et posuere erat maximus ut. Sed finibus diam a ipsum fringilla dictum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris mattis, orci sed condimentum tempor, ligula erat tristique mauris, ac egestas eros metus vitae risus. Vivamus pharetra porttitor nisl quis tristique. Donec et diam commodo, aliquet sem vel, vehicula eros. Etiam erat lectus, elementum pretium sagittis vel, viverra nec mauris. Phasellus euismod, dui ut ornare mollis, diam dui mollis leo, fringilla cursus nibh est ac erat. Praesent vel quam pretium, tempus metus iaculis, scelerisque massa. Suspendisse ligula eros, tempor non est vel, pretium pulvinar libero. Aenean felis felis, vestibulum et felis porta, auctor tincidunt diam. Proin ut viverra orci, ut congue orci.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nam a urna in lectus pulvinar pharetra. Maecenas eget neque dignissim, ultrices quam id, convallis leo. Duis iaculis tristique tempor. Sed volutpat arcu sed posuere accumsan. Integer fringilla sapien sit amet nisi vulputate, nec posuere est dictum. In ullamcorper suscipit metus. Vestibulum eu ultrices eros, et rutrum nibh. Nunc id orci elementum, efficitur enim ut, blandit arcu. Nulla interdum sit amet quam nec venenatis. Donec a mi eget libero vestibulum aliquet id et ante. Sed mi justo, facilisis eget fermentum eget, molestie eu felis. Suspendisse laoreet, quam vel vulputate maximus, lectus lorem consequat magna, eu lacinia elit lorem suscipit tortor. Donec ut libero scelerisque, tempus arcu non, condimentum neque. Sed sit amet dictum magna, nec vehicula justo. Vestibulum vestibulum mi semper porttitor scelerisque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec in eleifend felis. Maecenas sit amet lobortis arcu, non dignissim orci. Vestibulum euismod hendrerit diam id dapibus. Suspendisse sapien est, ornare et justo sit amet, bibendum ultrices nunc. Duis congue porta velit quis mattis. Aliquam velit ligula, dignissim ut augue ut, blandit vehicula augue. Fusce blandit nec dui vel elementum.</p>\n<!-- /wp:paragraph -->', 'Pellentesque pharetra lectus', '', 'publish', 'open', 'open', '', 'pellentesque-pharetra-lectus', '', '', '2021-07-26 07:04:55', '2021-07-26 11:04:55', '', 0, 'https://react-dev1.wp.wellnessliving.local/?p=109', 0, 'post', '', 0),
(110, 1, '2021-07-26 06:27:40', '2021-07-26 10:27:40', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nibh erat, sagittis nec tortor id, accumsan interdum metus. Vestibulum felis augue, vehicula id erat in, consequat consequat justo. Nullam urna orci, tincidunt vel finibus eu, feugiat vitae diam. Nam elementum, ipsum non convallis dictum, ante tellus convallis felis, eget hendrerit leo libero ut libero. Praesent eleifend, tortor vitae porttitor tincidunt, sem urna malesuada justo, sed scelerisque nisi nibh ac elit. Phasellus nec ligula vel turpis rutrum rhoncus. Aliquam varius metus a urna molestie, sit amet porta tellus vulputate. Nam vulputate nec lorem elementum aliquet. Proin sit amet neque euismod, laoreet tellus id, sagittis sapien. Vivamus rhoncus, massa sed dignissim dictum, ante enim fringilla nisi, sed tincidunt leo urna non sapien. Vivamus porta tortor vel nunc rutrum, ac malesuada ex semper. Nunc ut auctor diam, non pulvinar mauris. In sed quam in sapien ornare elementum in eget neque. Quisque mi libero, accumsan sed consequat vitae, interdum ut nisi. Sed tincidunt orci leo. Nulla vitae justo laoreet, elementum enim at, tincidunt tortor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque pharetra lectus ut viverra dictum. Duis suscipit nisi lacinia, eleifend nunc ut, iaculis massa. Donec tincidunt turpis sit amet urna auctor, at ultrices nisi sagittis. Mauris ac velit a quam molestie sodales. Pellentesque mi dolor, tincidunt eget erat quis, fringilla tincidunt nisi. Sed suscipit iaculis elit, et posuere erat maximus ut. Sed finibus diam a ipsum fringilla dictum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris mattis, orci sed condimentum tempor, ligula erat tristique mauris, ac egestas eros metus vitae risus. Vivamus pharetra porttitor nisl quis tristique. Donec et diam commodo, aliquet sem vel, vehicula eros. Etiam erat lectus, elementum pretium sagittis vel, viverra nec mauris. Phasellus euismod, dui ut ornare mollis, diam dui mollis leo, fringilla cursus nibh est ac erat. Praesent vel quam pretium, tempus metus iaculis, scelerisque massa. Suspendisse ligula eros, tempor non est vel, pretium pulvinar libero. Aenean felis felis, vestibulum et felis porta, auctor tincidunt diam. Proin ut viverra orci, ut congue orci.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nam a urna in lectus pulvinar pharetra. Maecenas eget neque dignissim, ultrices quam id, convallis leo. Duis iaculis tristique tempor. Sed volutpat arcu sed posuere accumsan. Integer fringilla sapien sit amet nisi vulputate, nec posuere est dictum. In ullamcorper suscipit metus. Vestibulum eu ultrices eros, et rutrum nibh. Nunc id orci elementum, efficitur enim ut, blandit arcu. Nulla interdum sit amet quam nec venenatis. Donec a mi eget libero vestibulum aliquet id et ante. Sed mi justo, facilisis eget fermentum eget, molestie eu felis. Suspendisse laoreet, quam vel vulputate maximus, lectus lorem consequat magna, eu lacinia elit lorem suscipit tortor. Donec ut libero scelerisque, tempus arcu non, condimentum neque. Sed sit amet dictum magna, nec vehicula justo. Vestibulum vestibulum mi semper porttitor scelerisque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec in eleifend felis. Maecenas sit amet lobortis arcu, non dignissim orci. Vestibulum euismod hendrerit diam id dapibus. Suspendisse sapien est, ornare et justo sit amet, bibendum ultrices nunc. Duis congue porta velit quis mattis. Aliquam velit ligula, dignissim ut augue ut, blandit vehicula augue. Fusce blandit nec dui vel elementum.</p>\n<!-- /wp:paragraph -->', 'Pellentesque pharetra lectus', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2021-07-26 06:27:40', '2021-07-26 10:27:40', '', 109, 'https://react-dev1.wp.wellnessliving.local/?p=110', 0, 'revision', '', 0),
(111, 1, '2021-07-26 06:28:13', '2021-07-26 10:28:13', '', '3vRqDI', '', 'inherit', 'open', 'closed', '', '3vrqdi', '', '', '2021-07-26 06:28:13', '2021-07-26 10:28:13', '', 109, 'https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/3vRqDI.jpg', 0, 'attachment', 'image/jpeg', 0),
(113, 1, '2021-07-26 06:28:26', '2021-07-26 10:28:26', '<!-- wp:image {\"id\":111,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/3vRqDI-1024x576.jpg\" alt=\"\" class=\"wp-image-111\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nibh erat, sagittis nec tortor id, accumsan interdum metus. Vestibulum felis augue, vehicula id erat in, consequat consequat justo. Nullam urna orci, tincidunt vel finibus eu, feugiat vitae diam. Nam elementum, ipsum non convallis dictum, ante tellus convallis felis, eget hendrerit leo libero ut libero. Praesent eleifend, tortor vitae porttitor tincidunt, sem urna malesuada justo, sed scelerisque nisi nibh ac elit. Phasellus nec ligula vel turpis rutrum rhoncus. Aliquam varius metus a urna molestie, sit amet porta tellus vulputate. Nam vulputate nec lorem elementum aliquet. Proin sit amet neque euismod, laoreet tellus id, sagittis sapien. Vivamus rhoncus, massa sed dignissim dictum, ante enim fringilla nisi, sed tincidunt leo urna non sapien. Vivamus porta tortor vel nunc rutrum, ac malesuada ex semper. Nunc ut auctor diam, non pulvinar mauris. In sed quam in sapien ornare elementum in eget neque. Quisque mi libero, accumsan sed consequat vitae, interdum ut nisi. Sed tincidunt orci leo. Nulla vitae justo laoreet, elementum enim at, tincidunt tortor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque pharetra lectus ut viverra dictum. Duis suscipit nisi lacinia, eleifend nunc ut, iaculis massa. Donec tincidunt turpis sit amet urna auctor, at ultrices nisi sagittis. Mauris ac velit a quam molestie sodales. Pellentesque mi dolor, tincidunt eget erat quis, fringilla tincidunt nisi. Sed suscipit iaculis elit, et posuere erat maximus ut. Sed finibus diam a ipsum fringilla dictum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris mattis, orci sed condimentum tempor, ligula erat tristique mauris, ac egestas eros metus vitae risus. Vivamus pharetra porttitor nisl quis tristique. Donec et diam commodo, aliquet sem vel, vehicula eros. Etiam erat lectus, elementum pretium sagittis vel, viverra nec mauris. Phasellus euismod, dui ut ornare mollis, diam dui mollis leo, fringilla cursus nibh est ac erat. Praesent vel quam pretium, tempus metus iaculis, scelerisque massa. Suspendisse ligula eros, tempor non est vel, pretium pulvinar libero. Aenean felis felis, vestibulum et felis porta, auctor tincidunt diam. Proin ut viverra orci, ut congue orci.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nam a urna in lectus pulvinar pharetra. Maecenas eget neque dignissim, ultrices quam id, convallis leo. Duis iaculis tristique tempor. Sed volutpat arcu sed posuere accumsan. Integer fringilla sapien sit amet nisi vulputate, nec posuere est dictum. In ullamcorper suscipit metus. Vestibulum eu ultrices eros, et rutrum nibh. Nunc id orci elementum, efficitur enim ut, blandit arcu. Nulla interdum sit amet quam nec venenatis. Donec a mi eget libero vestibulum aliquet id et ante. Sed mi justo, facilisis eget fermentum eget, molestie eu felis. Suspendisse laoreet, quam vel vulputate maximus, lectus lorem consequat magna, eu lacinia elit lorem suscipit tortor. Donec ut libero scelerisque, tempus arcu non, condimentum neque. Sed sit amet dictum magna, nec vehicula justo. Vestibulum vestibulum mi semper porttitor scelerisque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec in eleifend felis. Maecenas sit amet lobortis arcu, non dignissim orci. Vestibulum euismod hendrerit diam id dapibus. Suspendisse sapien est, ornare et justo sit amet, bibendum ultrices nunc. Duis congue porta velit quis mattis. Aliquam velit ligula, dignissim ut augue ut, blandit vehicula augue. Fusce blandit nec dui vel elementum.</p>\n<!-- /wp:paragraph -->', 'Pellentesque pharetra lectus', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2021-07-26 06:28:26', '2021-07-26 10:28:26', '', 109, 'https://react-dev1.wp.wellnessliving.local/?p=113', 0, 'revision', '', 0),
(114, 1, '2021-07-26 06:28:43', '2021-07-26 10:28:43', '', 'pacific-ocean-1920x1080-5k-4k-wallpaper-big-sur-california-beach-389', '', 'inherit', 'open', 'closed', '', 'pacific-ocean-1920x1080-5k-4k-wallpaper-big-sur-california-beach-389', '', '', '2021-07-26 06:28:43', '2021-07-26 10:28:43', '', 102, 'https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/pacific-ocean-1920x1080-5k-4k-wallpaper-big-sur-california-beach-389.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2021-07-26 06:28:50', '2021-07-26 10:28:50', '<!-- wp:image {\"id\":114,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/pacific-ocean-1920x1080-5k-4k-wallpaper-big-sur-california-beach-389-1024x576.jpg\" alt=\"\" class=\"wp-image-114\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nibh erat, sagittis nec tortor id, accumsan interdum metus. Vestibulum felis augue, vehicula id erat in, consequat consequat justo. Nullam urna orci, tincidunt vel finibus eu, feugiat vitae diam. Nam elementum, ipsum non convallis dictum, ante tellus convallis felis, eget hendrerit leo libero ut libero. Praesent eleifend, tortor vitae porttitor tincidunt, sem urna malesuada justo, sed scelerisque nisi nibh ac elit. Phasellus nec ligula vel turpis rutrum rhoncus. Aliquam varius metus a urna molestie, sit amet porta tellus vulputate. Nam vulputate nec lorem elementum aliquet. Proin sit amet neque euismod, laoreet tellus id, sagittis sapien. Vivamus rhoncus, massa sed dignissim dictum, ante enim fringilla nisi, sed tincidunt leo urna non sapien. Vivamus porta tortor vel nunc rutrum, ac malesuada ex semper. Nunc ut auctor diam, non pulvinar mauris. In sed quam in sapien ornare elementum in eget neque. Quisque mi libero, accumsan sed consequat vitae, interdum ut nisi. Sed tincidunt orci leo. Nulla vitae justo laoreet, elementum enim at, tincidunt tortor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque pharetra lectus ut viverra dictum. Duis suscipit nisi lacinia, eleifend nunc ut, iaculis massa. Donec tincidunt turpis sit amet urna auctor, at ultrices nisi sagittis. Mauris ac velit a quam molestie sodales. Pellentesque mi dolor, tincidunt eget erat quis, fringilla tincidunt nisi. Sed suscipit iaculis elit, et posuere erat maximus ut. Sed finibus diam a ipsum fringilla dictum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris mattis, orci sed condimentum tempor, ligula erat tristique mauris, ac egestas eros metus vitae risus. Vivamus pharetra porttitor nisl quis tristique. Donec et diam commodo, aliquet sem vel, vehicula eros. Etiam erat lectus, elementum pretium sagittis vel, viverra nec mauris. Phasellus euismod, dui ut ornare mollis, diam dui mollis leo, fringilla cursus nibh est ac erat. Praesent vel quam pretium, tempus metus iaculis, scelerisque massa. Suspendisse ligula eros, tempor non est vel, pretium pulvinar libero. Aenean felis felis, vestibulum et felis porta, auctor tincidunt diam. Proin ut viverra orci, ut congue orci.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nam a urna in lectus pulvinar pharetra. Maecenas eget neque dignissim, ultrices quam id, convallis leo. Duis iaculis tristique tempor. Sed volutpat arcu sed posuere accumsan. Integer fringilla sapien sit amet nisi vulputate, nec posuere est dictum. In ullamcorper suscipit metus. Vestibulum eu ultrices eros, et rutrum nibh. Nunc id orci elementum, efficitur enim ut, blandit arcu. Nulla interdum sit amet quam nec venenatis. Donec a mi eget libero vestibulum aliquet id et ante. Sed mi justo, facilisis eget fermentum eget, molestie eu felis. Suspendisse laoreet, quam vel vulputate maximus, lectus lorem consequat magna, eu lacinia elit lorem suscipit tortor. Donec ut libero scelerisque, tempus arcu non, condimentum neque. Sed sit amet dictum magna, nec vehicula justo. Vestibulum vestibulum mi semper porttitor scelerisque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec in eleifend felis. Maecenas sit amet lobortis arcu, non dignissim orci. Vestibulum euismod hendrerit diam id dapibus. Suspendisse sapien est, ornare et justo sit amet, bibendum ultrices nunc. Duis congue porta velit quis mattis. Aliquam velit ligula, dignissim ut augue ut, blandit vehicula augue. Fusce blandit nec dui vel elementum.</p>\n<!-- /wp:paragraph -->', 'Simple product Fat Loss Program and Losing Weight', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2021-07-26 06:28:50', '2021-07-26 10:28:50', '', 102, 'https://react-dev1.wp.wellnessliving.local/?p=115', 0, 'revision', '', 0),
(116, 1, '2021-07-26 06:29:39', '2021-07-26 10:29:39', '<!-- wp:image {\"id\":117,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/samurai-anime-minimal-1024x576.jpg\" alt=\"\" class=\"wp-image-117\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nibh erat, sagittis nec tortor id, accumsan interdum metus. Vestibulum felis augue, vehicula id erat in, consequat consequat justo. Nullam urna orci, tincidunt vel finibus eu, feugiat vitae diam. Nam elementum, ipsum non convallis dictum, ante tellus convallis felis, eget hendrerit leo libero ut libero. Praesent eleifend, tortor vitae porttitor tincidunt, sem urna malesuada justo, sed scelerisque nisi nibh ac elit. Phasellus nec ligula vel turpis rutrum rhoncus. Aliquam varius metus a urna molestie, sit amet porta tellus vulputate. Nam vulputate nec lorem elementum aliquet. Proin sit amet neque euismod, laoreet tellus id, sagittis sapien. Vivamus rhoncus, massa sed dignissim dictum, ante enim fringilla nisi, sed tincidunt leo urna non sapien. Vivamus porta tortor vel nunc rutrum, ac malesuada ex semper. Nunc ut auctor diam, non pulvinar mauris. In sed quam in sapien ornare elementum in eget neque. Quisque mi libero, accumsan sed consequat vitae, interdum ut nisi. Sed tincidunt orci leo. Nulla vitae justo laoreet, elementum enim at, tincidunt tortor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque pharetra lectus ut viverra dictum. Duis suscipit nisi lacinia, eleifend nunc ut, iaculis massa. Donec tincidunt turpis sit amet urna auctor, at ultrices nisi sagittis. Mauris ac velit a quam molestie sodales. Pellentesque mi dolor, tincidunt eget erat quis, fringilla tincidunt nisi. Sed suscipit iaculis elit, et posuere erat maximus ut. Sed finibus diam a ipsum fringilla dictum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris mattis, orci sed condimentum tempor, ligula erat tristique mauris, ac egestas eros metus vitae risus. Vivamus pharetra porttitor nisl quis tristique. Donec et diam commodo, aliquet sem vel, vehicula eros. Etiam erat lectus, elementum pretium sagittis vel, viverra nec mauris. Phasellus euismod, dui ut ornare mollis, diam dui mollis leo, fringilla cursus nibh est ac erat. Praesent vel quam pretium, tempus metus iaculis, scelerisque massa. Suspendisse ligula eros, tempor non est vel, pretium pulvinar libero. Aenean felis felis, vestibulum et felis porta, auctor tincidunt diam. Proin ut viverra orci, ut congue orci.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nam a urna in lectus pulvinar pharetra. Maecenas eget neque dignissim, ultrices quam id, convallis leo. Duis iaculis tristique tempor. Sed volutpat arcu sed posuere accumsan. Integer fringilla sapien sit amet nisi vulputate, nec posuere est dictum. In ullamcorper suscipit metus. Vestibulum eu ultrices eros, et rutrum nibh. Nunc id orci elementum, efficitur enim ut, blandit arcu. Nulla interdum sit amet quam nec venenatis. Donec a mi eget libero vestibulum aliquet id et ante. Sed mi justo, facilisis eget fermentum eget, molestie eu felis. Suspendisse laoreet, quam vel vulputate maximus, lectus lorem consequat magna, eu lacinia elit lorem suscipit tortor. Donec ut libero scelerisque, tempus arcu non, condimentum neque. Sed sit amet dictum magna, nec vehicula justo. Vestibulum vestibulum mi semper porttitor scelerisque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec in eleifend felis. Maecenas sit amet lobortis arcu, non dignissim orci. Vestibulum euismod hendrerit diam id dapibus. Suspendisse sapien est, ornare et justo sit amet, bibendum ultrices nunc. Duis congue porta velit quis mattis. Aliquam velit ligula, dignissim ut augue ut, blandit vehicula augue. Fusce blandit nec dui vel elementum.</p>\n<!-- /wp:paragraph -->', 'Donec in eleifend felis', '', 'publish', 'open', 'open', '', 'donec-in-eleifend-felis', '', '', '2021-07-26 07:04:32', '2021-07-26 11:04:32', '', 0, 'https://react-dev1.wp.wellnessliving.local/?p=116', 0, 'post', '', 0),
(117, 1, '2021-07-26 06:29:32', '2021-07-26 10:29:32', '', 'samurai-anime-minimal', '', 'inherit', 'open', 'closed', '', 'samurai-anime-minimal', '', '', '2021-07-26 06:29:32', '2021-07-26 10:29:32', '', 116, 'https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/samurai-anime-minimal.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2021-07-26 06:29:39', '2021-07-26 10:29:39', '<!-- wp:image {\"id\":117,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/samurai-anime-minimal-1024x576.jpg\" alt=\"\" class=\"wp-image-117\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nibh erat, sagittis nec tortor id, accumsan interdum metus. Vestibulum felis augue, vehicula id erat in, consequat consequat justo. Nullam urna orci, tincidunt vel finibus eu, feugiat vitae diam. Nam elementum, ipsum non convallis dictum, ante tellus convallis felis, eget hendrerit leo libero ut libero. Praesent eleifend, tortor vitae porttitor tincidunt, sem urna malesuada justo, sed scelerisque nisi nibh ac elit. Phasellus nec ligula vel turpis rutrum rhoncus. Aliquam varius metus a urna molestie, sit amet porta tellus vulputate. Nam vulputate nec lorem elementum aliquet. Proin sit amet neque euismod, laoreet tellus id, sagittis sapien. Vivamus rhoncus, massa sed dignissim dictum, ante enim fringilla nisi, sed tincidunt leo urna non sapien. Vivamus porta tortor vel nunc rutrum, ac malesuada ex semper. Nunc ut auctor diam, non pulvinar mauris. In sed quam in sapien ornare elementum in eget neque. Quisque mi libero, accumsan sed consequat vitae, interdum ut nisi. Sed tincidunt orci leo. Nulla vitae justo laoreet, elementum enim at, tincidunt tortor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque pharetra lectus ut viverra dictum. Duis suscipit nisi lacinia, eleifend nunc ut, iaculis massa. Donec tincidunt turpis sit amet urna auctor, at ultrices nisi sagittis. Mauris ac velit a quam molestie sodales. Pellentesque mi dolor, tincidunt eget erat quis, fringilla tincidunt nisi. Sed suscipit iaculis elit, et posuere erat maximus ut. Sed finibus diam a ipsum fringilla dictum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris mattis, orci sed condimentum tempor, ligula erat tristique mauris, ac egestas eros metus vitae risus. Vivamus pharetra porttitor nisl quis tristique. Donec et diam commodo, aliquet sem vel, vehicula eros. Etiam erat lectus, elementum pretium sagittis vel, viverra nec mauris. Phasellus euismod, dui ut ornare mollis, diam dui mollis leo, fringilla cursus nibh est ac erat. Praesent vel quam pretium, tempus metus iaculis, scelerisque massa. Suspendisse ligula eros, tempor non est vel, pretium pulvinar libero. Aenean felis felis, vestibulum et felis porta, auctor tincidunt diam. Proin ut viverra orci, ut congue orci.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nam a urna in lectus pulvinar pharetra. Maecenas eget neque dignissim, ultrices quam id, convallis leo. Duis iaculis tristique tempor. Sed volutpat arcu sed posuere accumsan. Integer fringilla sapien sit amet nisi vulputate, nec posuere est dictum. In ullamcorper suscipit metus. Vestibulum eu ultrices eros, et rutrum nibh. Nunc id orci elementum, efficitur enim ut, blandit arcu. Nulla interdum sit amet quam nec venenatis. Donec a mi eget libero vestibulum aliquet id et ante. Sed mi justo, facilisis eget fermentum eget, molestie eu felis. Suspendisse laoreet, quam vel vulputate maximus, lectus lorem consequat magna, eu lacinia elit lorem suscipit tortor. Donec ut libero scelerisque, tempus arcu non, condimentum neque. Sed sit amet dictum magna, nec vehicula justo. Vestibulum vestibulum mi semper porttitor scelerisque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec in eleifend felis. Maecenas sit amet lobortis arcu, non dignissim orci. Vestibulum euismod hendrerit diam id dapibus. Suspendisse sapien est, ornare et justo sit amet, bibendum ultrices nunc. Duis congue porta velit quis mattis. Aliquam velit ligula, dignissim ut augue ut, blandit vehicula augue. Fusce blandit nec dui vel elementum.</p>\n<!-- /wp:paragraph -->', 'Donec in eleifend felis', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2021-07-26 06:29:39', '2021-07-26 10:29:39', '', 116, 'https://react-dev1.wp.wellnessliving.local/?p=118', 0, 'revision', '', 0),
(119, 1, '2021-07-26 07:05:49', '2021-07-26 11:05:49', 'Welcome to <a href=\"https://react-dev.wp.wellnessliving.local/\">Сайты React 4 Multisite</a>. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-07-26 07:05:49', '2021-07-26 11:05:49', '', 1, 'https://react-dev1.wp.wellnessliving.local/?p=119', 0, 'revision', '', 0),
(121, 1, '2021-07-27 05:11:33', '2021-07-27 09:11:33', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper nisl in metus varius ornare. Donec ut ex venenatis, sagittis eros eget, euismod massa. Phasellus eget eros arcu. Sed suscipit commodo finibus. Praesent egestas dui lobortis sapien ullamcorper, vel rhoncus elit tristique. Integer auctor arcu arcu, vitae tempus velit convallis vitae. Duis eleifend tristique hendrerit. Maecenas quis arcu condimentum, tristique enim ullamcorper, facilisis ante. Pellentesque aliquet suscipit enim, quis posuere ante mattis eget. Duis cursus laoreet nibh, et pretium dolor scelerisque at. Integer varius magna enim, sit amet fermentum lorem pulvinar ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec tristique, massa quis pulvinar porta, libero quam mattis leo, quis posuere quam sapien lacinia augue. Mauris in orci sit amet lorem pharetra pretium bibendum a quam. Pellentesque tristique odio lorem. Nullam dictum tristique augue, eget dignissim nisi imperdiet sed. Sed in elit at risus porta mattis vel ut orci. Pellentesque in arcu elit. Pellentesque imperdiet libero vitae justo hendrerit, non faucibus est auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris ac bibendum erat. Morbi ut sem odio. In non elit et massa efficitur convallis. Maecenas tempor tempus magna, sit amet pretium erat. Phasellus molestie tellus nibh, et mollis nisl convallis a. Proin varius nisl facilisis, malesuada ligula vitae, interdum lectus. Etiam fermentum nibh non purus bibendum, eget eleifend felis sagittis. Aliquam erat volutpat. Nulla tincidunt libero vel auctor vestibulum. Fusce imperdiet turpis vel ipsum mollis dictum. Suspendisse ullamcorper congue ullamcorper. Maecenas velit tellus, porttitor nec venenatis et, condimentum nec felis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis nec ligula a dui mollis tempus. Sed ipsum massa, ornare in mauris ultricies, gravida suscipit ipsum. Sed sagittis enim leo, molestie rutrum ligula placerat in. Nullam tincidunt a orci semper cursus. Sed mauris ipsum, ultrices in posuere at, tincidunt quis orci. Fusce id massa sagittis, pretium est et, fringilla arcu. Morbi tempor et velit in tempus. Cras faucibus urna ac diam pulvinar, quis rhoncus lorem dictum. Praesent pulvinar nec sem vel aliquam. Maecenas vitae massa ante. Phasellus luctus tempor convallis. Suspendisse at justo nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin dignissim massa quis ligula tempus, sed blandit lorem maximus. Curabitur finibus metus id magna tincidunt egestas. Morbi scelerisque enim nec nisi tempus posuere. Integer interdum, mi ac congue dignissim, lorem nunc tincidunt dui, nec tincidunt mauris ligula ac libero. Pellentesque luctus neque magna, ac finibus lacus malesuada sed. Nam lacinia ex in pharetra pretium. Cras eget porttitor orci, ut tincidunt turpis. Sed id lacus faucibus, bibendum dui id, consequat sapien. Vivamus in turpis sed diam pulvinar sollicitudin. Phasellus mattis sodales quam, nec condimentum nibh consectetur quis. Suspendisse quis semper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis non faucibus mi.</p>\n<!-- /wp:paragraph -->', 'Mauris ac bibendum', '', 'publish', 'open', 'open', '', 'mauris-ac-bibendum', '', '', '2021-07-27 05:11:48', '2021-07-27 09:11:48', '', 0, 'https://react-dev1.wp.wellnessliving.local/?p=121', 0, 'post', '', 0),
(122, 1, '2021-07-27 05:11:33', '2021-07-27 09:11:33', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper nisl in metus varius ornare. Donec ut ex venenatis, sagittis eros eget, euismod massa. Phasellus eget eros arcu. Sed suscipit commodo finibus. Praesent egestas dui lobortis sapien ullamcorper, vel rhoncus elit tristique. Integer auctor arcu arcu, vitae tempus velit convallis vitae. Duis eleifend tristique hendrerit. Maecenas quis arcu condimentum, tristique enim ullamcorper, facilisis ante. Pellentesque aliquet suscipit enim, quis posuere ante mattis eget. Duis cursus laoreet nibh, et pretium dolor scelerisque at. Integer varius magna enim, sit amet fermentum lorem pulvinar ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec tristique, massa quis pulvinar porta, libero quam mattis leo, quis posuere quam sapien lacinia augue. Mauris in orci sit amet lorem pharetra pretium bibendum a quam. Pellentesque tristique odio lorem. Nullam dictum tristique augue, eget dignissim nisi imperdiet sed. Sed in elit at risus porta mattis vel ut orci. Pellentesque in arcu elit. Pellentesque imperdiet libero vitae justo hendrerit, non faucibus est auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris ac bibendum erat. Morbi ut sem odio. In non elit et massa efficitur convallis. Maecenas tempor tempus magna, sit amet pretium erat. Phasellus molestie tellus nibh, et mollis nisl convallis a. Proin varius nisl facilisis, malesuada ligula vitae, interdum lectus. Etiam fermentum nibh non purus bibendum, eget eleifend felis sagittis. Aliquam erat volutpat. Nulla tincidunt libero vel auctor vestibulum. Fusce imperdiet turpis vel ipsum mollis dictum. Suspendisse ullamcorper congue ullamcorper. Maecenas velit tellus, porttitor nec venenatis et, condimentum nec felis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis nec ligula a dui mollis tempus. Sed ipsum massa, ornare in mauris ultricies, gravida suscipit ipsum. Sed sagittis enim leo, molestie rutrum ligula placerat in. Nullam tincidunt a orci semper cursus. Sed mauris ipsum, ultrices in posuere at, tincidunt quis orci. Fusce id massa sagittis, pretium est et, fringilla arcu. Morbi tempor et velit in tempus. Cras faucibus urna ac diam pulvinar, quis rhoncus lorem dictum. Praesent pulvinar nec sem vel aliquam. Maecenas vitae massa ante. Phasellus luctus tempor convallis. Suspendisse at justo nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin dignissim massa quis ligula tempus, sed blandit lorem maximus. Curabitur finibus metus id magna tincidunt egestas. Morbi scelerisque enim nec nisi tempus posuere. Integer interdum, mi ac congue dignissim, lorem nunc tincidunt dui, nec tincidunt mauris ligula ac libero. Pellentesque luctus neque magna, ac finibus lacus malesuada sed. Nam lacinia ex in pharetra pretium. Cras eget porttitor orci, ut tincidunt turpis. Sed id lacus faucibus, bibendum dui id, consequat sapien. Vivamus in turpis sed diam pulvinar sollicitudin. Phasellus mattis sodales quam, nec condimentum nibh consectetur quis. Suspendisse quis semper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis non faucibus mi.</p>\n<!-- /wp:paragraph -->', 'Mauris ac bibendum', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2021-07-27 05:11:33', '2021-07-27 09:11:33', '', 121, 'https://react-dev1.wp.wellnessliving.local/?p=122', 0, 'revision', '', 0),
(123, 1, '2021-07-27 05:12:19', '2021-07-27 09:12:19', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper nisl in metus varius ornare. Donec ut ex venenatis, sagittis eros eget, euismod massa. Phasellus eget eros arcu. Sed suscipit commodo finibus. Praesent egestas dui lobortis sapien ullamcorper, vel rhoncus elit tristique. Integer auctor arcu arcu, vitae tempus velit convallis vitae. Duis eleifend tristique hendrerit. Maecenas quis arcu condimentum, tristique enim ullamcorper, facilisis ante. Pellentesque aliquet suscipit enim, quis posuere ante mattis eget. Duis cursus laoreet nibh, et pretium dolor scelerisque at. Integer varius magna enim, sit amet fermentum lorem pulvinar ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec tristique, massa quis pulvinar porta, libero quam mattis leo, quis posuere quam sapien lacinia augue. Mauris in orci sit amet lorem pharetra pretium bibendum a quam. Pellentesque tristique odio lorem. Nullam dictum tristique augue, eget dignissim nisi imperdiet sed. Sed in elit at risus porta mattis vel ut orci. Pellentesque in arcu elit. Pellentesque imperdiet libero vitae justo hendrerit, non faucibus est auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris ac bibendum erat. Morbi ut sem odio. In non elit et massa efficitur convallis. Maecenas tempor tempus magna, sit amet pretium erat. Phasellus molestie tellus nibh, et mollis nisl convallis a. Proin varius nisl facilisis, malesuada ligula vitae, interdum lectus. Etiam fermentum nibh non purus bibendum, eget eleifend felis sagittis. Aliquam erat volutpat. Nulla tincidunt libero vel auctor vestibulum. Fusce imperdiet turpis vel ipsum mollis dictum. Suspendisse ullamcorper congue ullamcorper. Maecenas velit tellus, porttitor nec venenatis et, condimentum nec felis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis nec ligula a dui mollis tempus. Sed ipsum massa, ornare in mauris ultricies, gravida suscipit ipsum. Sed sagittis enim leo, molestie rutrum ligula placerat in. Nullam tincidunt a orci semper cursus. Sed mauris ipsum, ultrices in posuere at, tincidunt quis orci. Fusce id massa sagittis, pretium est et, fringilla arcu. Morbi tempor et velit in tempus. Cras faucibus urna ac diam pulvinar, quis rhoncus lorem dictum. Praesent pulvinar nec sem vel aliquam. Maecenas vitae massa ante. Phasellus luctus tempor convallis. Suspendisse at justo nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin dignissim massa quis ligula tempus, sed blandit lorem maximus. Curabitur finibus metus id magna tincidunt egestas. Morbi scelerisque enim nec nisi tempus posuere. Integer interdum, mi ac congue dignissim, lorem nunc tincidunt dui, nec tincidunt mauris ligula ac libero. Pellentesque luctus neque magna, ac finibus lacus malesuada sed. Nam lacinia ex in pharetra pretium. Cras eget porttitor orci, ut tincidunt turpis. Sed id lacus faucibus, bibendum dui id, consequat sapien. Vivamus in turpis sed diam pulvinar sollicitudin. Phasellus mattis sodales quam, nec condimentum nibh consectetur quis. Suspendisse quis semper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis non faucibus mi.</p>\n<!-- /wp:paragraph -->', 'Duis nec ligula', '', 'publish', 'open', 'open', '', 'duis-nec-ligula', '', '', '2021-07-27 05:12:19', '2021-07-27 09:12:19', '', 0, 'https://react-dev1.wp.wellnessliving.local/?p=123', 0, 'post', '', 0);
INSERT INTO `wp_2_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(124, 1, '2021-07-27 05:12:19', '2021-07-27 09:12:19', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper nisl in metus varius ornare. Donec ut ex venenatis, sagittis eros eget, euismod massa. Phasellus eget eros arcu. Sed suscipit commodo finibus. Praesent egestas dui lobortis sapien ullamcorper, vel rhoncus elit tristique. Integer auctor arcu arcu, vitae tempus velit convallis vitae. Duis eleifend tristique hendrerit. Maecenas quis arcu condimentum, tristique enim ullamcorper, facilisis ante. Pellentesque aliquet suscipit enim, quis posuere ante mattis eget. Duis cursus laoreet nibh, et pretium dolor scelerisque at. Integer varius magna enim, sit amet fermentum lorem pulvinar ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec tristique, massa quis pulvinar porta, libero quam mattis leo, quis posuere quam sapien lacinia augue. Mauris in orci sit amet lorem pharetra pretium bibendum a quam. Pellentesque tristique odio lorem. Nullam dictum tristique augue, eget dignissim nisi imperdiet sed. Sed in elit at risus porta mattis vel ut orci. Pellentesque in arcu elit. Pellentesque imperdiet libero vitae justo hendrerit, non faucibus est auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris ac bibendum erat. Morbi ut sem odio. In non elit et massa efficitur convallis. Maecenas tempor tempus magna, sit amet pretium erat. Phasellus molestie tellus nibh, et mollis nisl convallis a. Proin varius nisl facilisis, malesuada ligula vitae, interdum lectus. Etiam fermentum nibh non purus bibendum, eget eleifend felis sagittis. Aliquam erat volutpat. Nulla tincidunt libero vel auctor vestibulum. Fusce imperdiet turpis vel ipsum mollis dictum. Suspendisse ullamcorper congue ullamcorper. Maecenas velit tellus, porttitor nec venenatis et, condimentum nec felis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis nec ligula a dui mollis tempus. Sed ipsum massa, ornare in mauris ultricies, gravida suscipit ipsum. Sed sagittis enim leo, molestie rutrum ligula placerat in. Nullam tincidunt a orci semper cursus. Sed mauris ipsum, ultrices in posuere at, tincidunt quis orci. Fusce id massa sagittis, pretium est et, fringilla arcu. Morbi tempor et velit in tempus. Cras faucibus urna ac diam pulvinar, quis rhoncus lorem dictum. Praesent pulvinar nec sem vel aliquam. Maecenas vitae massa ante. Phasellus luctus tempor convallis. Suspendisse at justo nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin dignissim massa quis ligula tempus, sed blandit lorem maximus. Curabitur finibus metus id magna tincidunt egestas. Morbi scelerisque enim nec nisi tempus posuere. Integer interdum, mi ac congue dignissim, lorem nunc tincidunt dui, nec tincidunt mauris ligula ac libero. Pellentesque luctus neque magna, ac finibus lacus malesuada sed. Nam lacinia ex in pharetra pretium. Cras eget porttitor orci, ut tincidunt turpis. Sed id lacus faucibus, bibendum dui id, consequat sapien. Vivamus in turpis sed diam pulvinar sollicitudin. Phasellus mattis sodales quam, nec condimentum nibh consectetur quis. Suspendisse quis semper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis non faucibus mi.</p>\n<!-- /wp:paragraph -->', 'Duis nec ligula', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2021-07-27 05:12:19', '2021-07-27 09:12:19', '', 123, 'https://react-dev1.wp.wellnessliving.local/?p=124', 0, 'revision', '', 0),
(125, 1, '2021-07-27 05:12:41', '2021-07-27 09:12:41', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper nisl in metus varius ornare. Donec ut ex venenatis, sagittis eros eget, euismod massa. Phasellus eget eros arcu. Sed suscipit commodo finibus. Praesent egestas dui lobortis sapien ullamcorper, vel rhoncus elit tristique. Integer auctor arcu arcu, vitae tempus velit convallis vitae. Duis eleifend tristique hendrerit. Maecenas quis arcu condimentum, tristique enim ullamcorper, facilisis ante. Pellentesque aliquet suscipit enim, quis posuere ante mattis eget. Duis cursus laoreet nibh, et pretium dolor scelerisque at. Integer varius magna enim, sit amet fermentum lorem pulvinar ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec tristique, massa quis pulvinar porta, libero quam mattis leo, quis posuere quam sapien lacinia augue. Mauris in orci sit amet lorem pharetra pretium bibendum a quam. Pellentesque tristique odio lorem. Nullam dictum tristique augue, eget dignissim nisi imperdiet sed. Sed in elit at risus porta mattis vel ut orci. Pellentesque in arcu elit. Pellentesque imperdiet libero vitae justo hendrerit, non faucibus est auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris ac bibendum erat. Morbi ut sem odio. In non elit et massa efficitur convallis. Maecenas tempor tempus magna, sit amet pretium erat. Phasellus molestie tellus nibh, et mollis nisl convallis a. Proin varius nisl facilisis, malesuada ligula vitae, interdum lectus. Etiam fermentum nibh non purus bibendum, eget eleifend felis sagittis. Aliquam erat volutpat. Nulla tincidunt libero vel auctor vestibulum. Fusce imperdiet turpis vel ipsum mollis dictum. Suspendisse ullamcorper congue ullamcorper. Maecenas velit tellus, porttitor nec venenatis et, condimentum nec felis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis nec ligula a dui mollis tempus. Sed ipsum massa, ornare in mauris ultricies, gravida suscipit ipsum. Sed sagittis enim leo, molestie rutrum ligula placerat in. Nullam tincidunt a orci semper cursus. Sed mauris ipsum, ultrices in posuere at, tincidunt quis orci. Fusce id massa sagittis, pretium est et, fringilla arcu. Morbi tempor et velit in tempus. Cras faucibus urna ac diam pulvinar, quis rhoncus lorem dictum. Praesent pulvinar nec sem vel aliquam. Maecenas vitae massa ante. Phasellus luctus tempor convallis. Suspendisse at justo nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin dignissim massa quis ligula tempus, sed blandit lorem maximus. Curabitur finibus metus id magna tincidunt egestas. Morbi scelerisque enim nec nisi tempus posuere. Integer interdum, mi ac congue dignissim, lorem nunc tincidunt dui, nec tincidunt mauris ligula ac libero. Pellentesque luctus neque magna, ac finibus lacus malesuada sed. Nam lacinia ex in pharetra pretium. Cras eget porttitor orci, ut tincidunt turpis. Sed id lacus faucibus, bibendum dui id, consequat sapien. Vivamus in turpis sed diam pulvinar sollicitudin. Phasellus mattis sodales quam, nec condimentum nibh consectetur quis. Suspendisse quis semper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis non faucibus mi.</p>\n<!-- /wp:paragraph -->', 'Pellentesque tristique odio lorem', '', 'publish', 'open', 'open', '', 'pellentesque-tristique-odio-lorem', '', '', '2021-07-27 05:12:41', '2021-07-27 09:12:41', '', 0, 'https://react-dev1.wp.wellnessliving.local/?p=125', 0, 'post', '', 0),
(126, 1, '2021-07-27 05:12:41', '2021-07-27 09:12:41', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper nisl in metus varius ornare. Donec ut ex venenatis, sagittis eros eget, euismod massa. Phasellus eget eros arcu. Sed suscipit commodo finibus. Praesent egestas dui lobortis sapien ullamcorper, vel rhoncus elit tristique. Integer auctor arcu arcu, vitae tempus velit convallis vitae. Duis eleifend tristique hendrerit. Maecenas quis arcu condimentum, tristique enim ullamcorper, facilisis ante. Pellentesque aliquet suscipit enim, quis posuere ante mattis eget. Duis cursus laoreet nibh, et pretium dolor scelerisque at. Integer varius magna enim, sit amet fermentum lorem pulvinar ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec tristique, massa quis pulvinar porta, libero quam mattis leo, quis posuere quam sapien lacinia augue. Mauris in orci sit amet lorem pharetra pretium bibendum a quam. Pellentesque tristique odio lorem. Nullam dictum tristique augue, eget dignissim nisi imperdiet sed. Sed in elit at risus porta mattis vel ut orci. Pellentesque in arcu elit. Pellentesque imperdiet libero vitae justo hendrerit, non faucibus est auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris ac bibendum erat. Morbi ut sem odio. In non elit et massa efficitur convallis. Maecenas tempor tempus magna, sit amet pretium erat. Phasellus molestie tellus nibh, et mollis nisl convallis a. Proin varius nisl facilisis, malesuada ligula vitae, interdum lectus. Etiam fermentum nibh non purus bibendum, eget eleifend felis sagittis. Aliquam erat volutpat. Nulla tincidunt libero vel auctor vestibulum. Fusce imperdiet turpis vel ipsum mollis dictum. Suspendisse ullamcorper congue ullamcorper. Maecenas velit tellus, porttitor nec venenatis et, condimentum nec felis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis nec ligula a dui mollis tempus. Sed ipsum massa, ornare in mauris ultricies, gravida suscipit ipsum. Sed sagittis enim leo, molestie rutrum ligula placerat in. Nullam tincidunt a orci semper cursus. Sed mauris ipsum, ultrices in posuere at, tincidunt quis orci. Fusce id massa sagittis, pretium est et, fringilla arcu. Morbi tempor et velit in tempus. Cras faucibus urna ac diam pulvinar, quis rhoncus lorem dictum. Praesent pulvinar nec sem vel aliquam. Maecenas vitae massa ante. Phasellus luctus tempor convallis. Suspendisse at justo nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin dignissim massa quis ligula tempus, sed blandit lorem maximus. Curabitur finibus metus id magna tincidunt egestas. Morbi scelerisque enim nec nisi tempus posuere. Integer interdum, mi ac congue dignissim, lorem nunc tincidunt dui, nec tincidunt mauris ligula ac libero. Pellentesque luctus neque magna, ac finibus lacus malesuada sed. Nam lacinia ex in pharetra pretium. Cras eget porttitor orci, ut tincidunt turpis. Sed id lacus faucibus, bibendum dui id, consequat sapien. Vivamus in turpis sed diam pulvinar sollicitudin. Phasellus mattis sodales quam, nec condimentum nibh consectetur quis. Suspendisse quis semper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis non faucibus mi.</p>\n<!-- /wp:paragraph -->', 'Pellentesque tristique odio lorem', '', 'inherit', 'closed', 'closed', '', '125-revision-v1', '', '', '2021-07-27 05:12:41', '2021-07-27 09:12:41', '', 125, 'https://react-dev1.wp.wellnessliving.local/?p=126', 0, 'revision', '', 0),
(127, 1, '2021-07-27 05:13:04', '2021-07-27 09:13:04', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper nisl in metus varius ornare. Donec ut ex venenatis, sagittis eros eget, euismod massa. Phasellus eget eros arcu. Sed suscipit commodo finibus. Praesent egestas dui lobortis sapien ullamcorper, vel rhoncus elit tristique. Integer auctor arcu arcu, vitae tempus velit convallis vitae. Duis eleifend tristique hendrerit. Maecenas quis arcu condimentum, tristique enim ullamcorper, facilisis ante. Pellentesque aliquet suscipit enim, quis posuere ante mattis eget. Duis cursus laoreet nibh, et pretium dolor scelerisque at. Integer varius magna enim, sit amet fermentum lorem pulvinar ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec tristique, massa quis pulvinar porta, libero quam mattis leo, quis posuere quam sapien lacinia augue. Mauris in orci sit amet lorem pharetra pretium bibendum a quam. Pellentesque tristique odio lorem. Nullam dictum tristique augue, eget dignissim nisi imperdiet sed. Sed in elit at risus porta mattis vel ut orci. Pellentesque in arcu elit. Pellentesque imperdiet libero vitae justo hendrerit, non faucibus est auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris ac bibendum erat. Morbi ut sem odio. In non elit et massa efficitur convallis. Maecenas tempor tempus magna, sit amet pretium erat. Phasellus molestie tellus nibh, et mollis nisl convallis a. Proin varius nisl facilisis, malesuada ligula vitae, interdum lectus. Etiam fermentum nibh non purus bibendum, eget eleifend felis sagittis. Aliquam erat volutpat. Nulla tincidunt libero vel auctor vestibulum. Fusce imperdiet turpis vel ipsum mollis dictum. Suspendisse ullamcorper congue ullamcorper. Maecenas velit tellus, porttitor nec venenatis et, condimentum nec felis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis nec ligula a dui mollis tempus. Sed ipsum massa, ornare in mauris ultricies, gravida suscipit ipsum. Sed sagittis enim leo, molestie rutrum ligula placerat in. Nullam tincidunt a orci semper cursus. Sed mauris ipsum, ultrices in posuere at, tincidunt quis orci. Fusce id massa sagittis, pretium est et, fringilla arcu. Morbi tempor et velit in tempus. Cras faucibus urna ac diam pulvinar, quis rhoncus lorem dictum. Praesent pulvinar nec sem vel aliquam. Maecenas vitae massa ante. Phasellus luctus tempor convallis. Suspendisse at justo nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin dignissim massa quis ligula tempus, sed blandit lorem maximus. Curabitur finibus metus id magna tincidunt egestas. Morbi scelerisque enim nec nisi tempus posuere. Integer interdum, mi ac congue dignissim, lorem nunc tincidunt dui, nec tincidunt mauris ligula ac libero. Pellentesque luctus neque magna, ac finibus lacus malesuada sed. Nam lacinia ex in pharetra pretium. Cras eget porttitor orci, ut tincidunt turpis. Sed id lacus faucibus, bibendum dui id, consequat sapien. Vivamus in turpis sed diam pulvinar sollicitudin. Phasellus mattis sodales quam, nec condimentum nibh consectetur quis. Suspendisse quis semper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis non faucibus mi.</p>\n<!-- /wp:paragraph -->', 'Proin dignissim massa', '', 'publish', 'open', 'open', '', 'proin-dignissim-massa', '', '', '2021-07-27 05:13:04', '2021-07-27 09:13:04', '', 0, 'https://react-dev1.wp.wellnessliving.local/?p=127', 0, 'post', '', 0),
(128, 1, '2021-07-27 05:13:04', '2021-07-27 09:13:04', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper nisl in metus varius ornare. Donec ut ex venenatis, sagittis eros eget, euismod massa. Phasellus eget eros arcu. Sed suscipit commodo finibus. Praesent egestas dui lobortis sapien ullamcorper, vel rhoncus elit tristique. Integer auctor arcu arcu, vitae tempus velit convallis vitae. Duis eleifend tristique hendrerit. Maecenas quis arcu condimentum, tristique enim ullamcorper, facilisis ante. Pellentesque aliquet suscipit enim, quis posuere ante mattis eget. Duis cursus laoreet nibh, et pretium dolor scelerisque at. Integer varius magna enim, sit amet fermentum lorem pulvinar ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec tristique, massa quis pulvinar porta, libero quam mattis leo, quis posuere quam sapien lacinia augue. Mauris in orci sit amet lorem pharetra pretium bibendum a quam. Pellentesque tristique odio lorem. Nullam dictum tristique augue, eget dignissim nisi imperdiet sed. Sed in elit at risus porta mattis vel ut orci. Pellentesque in arcu elit. Pellentesque imperdiet libero vitae justo hendrerit, non faucibus est auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris ac bibendum erat. Morbi ut sem odio. In non elit et massa efficitur convallis. Maecenas tempor tempus magna, sit amet pretium erat. Phasellus molestie tellus nibh, et mollis nisl convallis a. Proin varius nisl facilisis, malesuada ligula vitae, interdum lectus. Etiam fermentum nibh non purus bibendum, eget eleifend felis sagittis. Aliquam erat volutpat. Nulla tincidunt libero vel auctor vestibulum. Fusce imperdiet turpis vel ipsum mollis dictum. Suspendisse ullamcorper congue ullamcorper. Maecenas velit tellus, porttitor nec venenatis et, condimentum nec felis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis nec ligula a dui mollis tempus. Sed ipsum massa, ornare in mauris ultricies, gravida suscipit ipsum. Sed sagittis enim leo, molestie rutrum ligula placerat in. Nullam tincidunt a orci semper cursus. Sed mauris ipsum, ultrices in posuere at, tincidunt quis orci. Fusce id massa sagittis, pretium est et, fringilla arcu. Morbi tempor et velit in tempus. Cras faucibus urna ac diam pulvinar, quis rhoncus lorem dictum. Praesent pulvinar nec sem vel aliquam. Maecenas vitae massa ante. Phasellus luctus tempor convallis. Suspendisse at justo nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin dignissim massa quis ligula tempus, sed blandit lorem maximus. Curabitur finibus metus id magna tincidunt egestas. Morbi scelerisque enim nec nisi tempus posuere. Integer interdum, mi ac congue dignissim, lorem nunc tincidunt dui, nec tincidunt mauris ligula ac libero. Pellentesque luctus neque magna, ac finibus lacus malesuada sed. Nam lacinia ex in pharetra pretium. Cras eget porttitor orci, ut tincidunt turpis. Sed id lacus faucibus, bibendum dui id, consequat sapien. Vivamus in turpis sed diam pulvinar sollicitudin. Phasellus mattis sodales quam, nec condimentum nibh consectetur quis. Suspendisse quis semper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis non faucibus mi.</p>\n<!-- /wp:paragraph -->', 'Proin dignissim massa', '', 'inherit', 'closed', 'closed', '', '127-revision-v1', '', '', '2021-07-27 05:13:04', '2021-07-27 09:13:04', '', 127, 'https://react-dev1.wp.wellnessliving.local/?p=128', 0, 'revision', '', 0),
(129, 1, '2021-07-27 05:13:26', '2021-07-27 09:13:26', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper nisl in metus varius ornare. Donec ut ex venenatis, sagittis eros eget, euismod massa. Phasellus eget eros arcu. Sed suscipit commodo finibus. Praesent egestas dui lobortis sapien ullamcorper, vel rhoncus elit tristique. Integer auctor arcu arcu, vitae tempus velit convallis vitae. Duis eleifend tristique hendrerit. Maecenas quis arcu condimentum, tristique enim ullamcorper, facilisis ante. Pellentesque aliquet suscipit enim, quis posuere ante mattis eget. Duis cursus laoreet nibh, et pretium dolor scelerisque at. Integer varius magna enim, sit amet fermentum lorem pulvinar ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec tristique, massa quis pulvinar porta, libero quam mattis leo, quis posuere quam sapien lacinia augue. Mauris in orci sit amet lorem pharetra pretium bibendum a quam. Pellentesque tristique odio lorem. Nullam dictum tristique augue, eget dignissim nisi imperdiet sed. Sed in elit at risus porta mattis vel ut orci. Pellentesque in arcu elit. Pellentesque imperdiet libero vitae justo hendrerit, non faucibus est auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris ac bibendum erat. Morbi ut sem odio. In non elit et massa efficitur convallis. Maecenas tempor tempus magna, sit amet pretium erat. Phasellus molestie tellus nibh, et mollis nisl convallis a. Proin varius nisl facilisis, malesuada ligula vitae, interdum lectus. Etiam fermentum nibh non purus bibendum, eget eleifend felis sagittis. Aliquam erat volutpat. Nulla tincidunt libero vel auctor vestibulum. Fusce imperdiet turpis vel ipsum mollis dictum. Suspendisse ullamcorper congue ullamcorper. Maecenas velit tellus, porttitor nec venenatis et, condimentum nec felis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis nec ligula a dui mollis tempus. Sed ipsum massa, ornare in mauris ultricies, gravida suscipit ipsum. Sed sagittis enim leo, molestie rutrum ligula placerat in. Nullam tincidunt a orci semper cursus. Sed mauris ipsum, ultrices in posuere at, tincidunt quis orci. Fusce id massa sagittis, pretium est et, fringilla arcu. Morbi tempor et velit in tempus. Cras faucibus urna ac diam pulvinar, quis rhoncus lorem dictum. Praesent pulvinar nec sem vel aliquam. Maecenas vitae massa ante. Phasellus luctus tempor convallis. Suspendisse at justo nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin dignissim massa quis ligula tempus, sed blandit lorem maximus. Curabitur finibus metus id magna tincidunt egestas. Morbi scelerisque enim nec nisi tempus posuere. Integer interdum, mi ac congue dignissim, lorem nunc tincidunt dui, nec tincidunt mauris ligula ac libero. Pellentesque luctus neque magna, ac finibus lacus malesuada sed. Nam lacinia ex in pharetra pretium. Cras eget porttitor orci, ut tincidunt turpis. Sed id lacus faucibus, bibendum dui id, consequat sapien. Vivamus in turpis sed diam pulvinar sollicitudin. Phasellus mattis sodales quam, nec condimentum nibh consectetur quis. Suspendisse quis semper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis non faucibus mi.</p>\n<!-- /wp:paragraph -->', 'Sed id lacus faucibus', '', 'publish', 'open', 'open', '', 'sed-id-lacus-faucibus', '', '', '2021-07-27 05:13:26', '2021-07-27 09:13:26', '', 0, 'https://react-dev1.wp.wellnessliving.local/?p=129', 0, 'post', '', 0),
(130, 1, '2021-07-27 05:13:26', '2021-07-27 09:13:26', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper nisl in metus varius ornare. Donec ut ex venenatis, sagittis eros eget, euismod massa. Phasellus eget eros arcu. Sed suscipit commodo finibus. Praesent egestas dui lobortis sapien ullamcorper, vel rhoncus elit tristique. Integer auctor arcu arcu, vitae tempus velit convallis vitae. Duis eleifend tristique hendrerit. Maecenas quis arcu condimentum, tristique enim ullamcorper, facilisis ante. Pellentesque aliquet suscipit enim, quis posuere ante mattis eget. Duis cursus laoreet nibh, et pretium dolor scelerisque at. Integer varius magna enim, sit amet fermentum lorem pulvinar ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec tristique, massa quis pulvinar porta, libero quam mattis leo, quis posuere quam sapien lacinia augue. Mauris in orci sit amet lorem pharetra pretium bibendum a quam. Pellentesque tristique odio lorem. Nullam dictum tristique augue, eget dignissim nisi imperdiet sed. Sed in elit at risus porta mattis vel ut orci. Pellentesque in arcu elit. Pellentesque imperdiet libero vitae justo hendrerit, non faucibus est auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris ac bibendum erat. Morbi ut sem odio. In non elit et massa efficitur convallis. Maecenas tempor tempus magna, sit amet pretium erat. Phasellus molestie tellus nibh, et mollis nisl convallis a. Proin varius nisl facilisis, malesuada ligula vitae, interdum lectus. Etiam fermentum nibh non purus bibendum, eget eleifend felis sagittis. Aliquam erat volutpat. Nulla tincidunt libero vel auctor vestibulum. Fusce imperdiet turpis vel ipsum mollis dictum. Suspendisse ullamcorper congue ullamcorper. Maecenas velit tellus, porttitor nec venenatis et, condimentum nec felis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis nec ligula a dui mollis tempus. Sed ipsum massa, ornare in mauris ultricies, gravida suscipit ipsum. Sed sagittis enim leo, molestie rutrum ligula placerat in. Nullam tincidunt a orci semper cursus. Sed mauris ipsum, ultrices in posuere at, tincidunt quis orci. Fusce id massa sagittis, pretium est et, fringilla arcu. Morbi tempor et velit in tempus. Cras faucibus urna ac diam pulvinar, quis rhoncus lorem dictum. Praesent pulvinar nec sem vel aliquam. Maecenas vitae massa ante. Phasellus luctus tempor convallis. Suspendisse at justo nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin dignissim massa quis ligula tempus, sed blandit lorem maximus. Curabitur finibus metus id magna tincidunt egestas. Morbi scelerisque enim nec nisi tempus posuere. Integer interdum, mi ac congue dignissim, lorem nunc tincidunt dui, nec tincidunt mauris ligula ac libero. Pellentesque luctus neque magna, ac finibus lacus malesuada sed. Nam lacinia ex in pharetra pretium. Cras eget porttitor orci, ut tincidunt turpis. Sed id lacus faucibus, bibendum dui id, consequat sapien. Vivamus in turpis sed diam pulvinar sollicitudin. Phasellus mattis sodales quam, nec condimentum nibh consectetur quis. Suspendisse quis semper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis non faucibus mi.</p>\n<!-- /wp:paragraph -->', 'Sed id lacus faucibus', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2021-07-27 05:13:26', '2021-07-27 09:13:26', '', 129, 'https://react-dev1.wp.wellnessliving.local/?p=130', 0, 'revision', '', 0),
(131, 1, '2021-07-27 05:13:48', '2021-07-27 09:13:48', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper nisl in metus varius ornare. Donec ut ex venenatis, sagittis eros eget, euismod massa. Phasellus eget eros arcu. Sed suscipit commodo finibus. Praesent egestas dui lobortis sapien ullamcorper, vel rhoncus elit tristique. Integer auctor arcu arcu, vitae tempus velit convallis vitae. Duis eleifend tristique hendrerit. Maecenas quis arcu condimentum, tristique enim ullamcorper, facilisis ante. Pellentesque aliquet suscipit enim, quis posuere ante mattis eget. Duis cursus laoreet nibh, et pretium dolor scelerisque at. Integer varius magna enim, sit amet fermentum lorem pulvinar ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec tristique, massa quis pulvinar porta, libero quam mattis leo, quis posuere quam sapien lacinia augue. Mauris in orci sit amet lorem pharetra pretium bibendum a quam. Pellentesque tristique odio lorem. Nullam dictum tristique augue, eget dignissim nisi imperdiet sed. Sed in elit at risus porta mattis vel ut orci. Pellentesque in arcu elit. Pellentesque imperdiet libero vitae justo hendrerit, non faucibus est auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris ac bibendum erat. Morbi ut sem odio. In non elit et massa efficitur convallis. Maecenas tempor tempus magna, sit amet pretium erat. Phasellus molestie tellus nibh, et mollis nisl convallis a. Proin varius nisl facilisis, malesuada ligula vitae, interdum lectus. Etiam fermentum nibh non purus bibendum, eget eleifend felis sagittis. Aliquam erat volutpat. Nulla tincidunt libero vel auctor vestibulum. Fusce imperdiet turpis vel ipsum mollis dictum. Suspendisse ullamcorper congue ullamcorper. Maecenas velit tellus, porttitor nec venenatis et, condimentum nec felis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis nec ligula a dui mollis tempus. Sed ipsum massa, ornare in mauris ultricies, gravida suscipit ipsum. Sed sagittis enim leo, molestie rutrum ligula placerat in. Nullam tincidunt a orci semper cursus. Sed mauris ipsum, ultrices in posuere at, tincidunt quis orci. Fusce id massa sagittis, pretium est et, fringilla arcu. Morbi tempor et velit in tempus. Cras faucibus urna ac diam pulvinar, quis rhoncus lorem dictum. Praesent pulvinar nec sem vel aliquam. Maecenas vitae massa ante. Phasellus luctus tempor convallis. Suspendisse at justo nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin dignissim massa quis ligula tempus, sed blandit lorem maximus. Curabitur finibus metus id magna tincidunt egestas. Morbi scelerisque enim nec nisi tempus posuere. Integer interdum, mi ac congue dignissim, lorem nunc tincidunt dui, nec tincidunt mauris ligula ac libero. Pellentesque luctus neque magna, ac finibus lacus malesuada sed. Nam lacinia ex in pharetra pretium. Cras eget porttitor orci, ut tincidunt turpis. Sed id lacus faucibus, bibendum dui id, consequat sapien. Vivamus in turpis sed diam pulvinar sollicitudin. Phasellus mattis sodales quam, nec condimentum nibh consectetur quis. Suspendisse quis semper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis non faucibus mi.</p>\n<!-- /wp:paragraph -->', 'Mauris in orci', '', 'publish', 'open', 'open', '', 'mauris-in-orci', '', '', '2021-07-27 05:13:48', '2021-07-27 09:13:48', '', 0, 'https://react-dev1.wp.wellnessliving.local/?p=131', 0, 'post', '', 0),
(132, 1, '2021-07-27 05:13:48', '2021-07-27 09:13:48', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper nisl in metus varius ornare. Donec ut ex venenatis, sagittis eros eget, euismod massa. Phasellus eget eros arcu. Sed suscipit commodo finibus. Praesent egestas dui lobortis sapien ullamcorper, vel rhoncus elit tristique. Integer auctor arcu arcu, vitae tempus velit convallis vitae. Duis eleifend tristique hendrerit. Maecenas quis arcu condimentum, tristique enim ullamcorper, facilisis ante. Pellentesque aliquet suscipit enim, quis posuere ante mattis eget. Duis cursus laoreet nibh, et pretium dolor scelerisque at. Integer varius magna enim, sit amet fermentum lorem pulvinar ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec tristique, massa quis pulvinar porta, libero quam mattis leo, quis posuere quam sapien lacinia augue. Mauris in orci sit amet lorem pharetra pretium bibendum a quam. Pellentesque tristique odio lorem. Nullam dictum tristique augue, eget dignissim nisi imperdiet sed. Sed in elit at risus porta mattis vel ut orci. Pellentesque in arcu elit. Pellentesque imperdiet libero vitae justo hendrerit, non faucibus est auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris ac bibendum erat. Morbi ut sem odio. In non elit et massa efficitur convallis. Maecenas tempor tempus magna, sit amet pretium erat. Phasellus molestie tellus nibh, et mollis nisl convallis a. Proin varius nisl facilisis, malesuada ligula vitae, interdum lectus. Etiam fermentum nibh non purus bibendum, eget eleifend felis sagittis. Aliquam erat volutpat. Nulla tincidunt libero vel auctor vestibulum. Fusce imperdiet turpis vel ipsum mollis dictum. Suspendisse ullamcorper congue ullamcorper. Maecenas velit tellus, porttitor nec venenatis et, condimentum nec felis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis nec ligula a dui mollis tempus. Sed ipsum massa, ornare in mauris ultricies, gravida suscipit ipsum. Sed sagittis enim leo, molestie rutrum ligula placerat in. Nullam tincidunt a orci semper cursus. Sed mauris ipsum, ultrices in posuere at, tincidunt quis orci. Fusce id massa sagittis, pretium est et, fringilla arcu. Morbi tempor et velit in tempus. Cras faucibus urna ac diam pulvinar, quis rhoncus lorem dictum. Praesent pulvinar nec sem vel aliquam. Maecenas vitae massa ante. Phasellus luctus tempor convallis. Suspendisse at justo nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin dignissim massa quis ligula tempus, sed blandit lorem maximus. Curabitur finibus metus id magna tincidunt egestas. Morbi scelerisque enim nec nisi tempus posuere. Integer interdum, mi ac congue dignissim, lorem nunc tincidunt dui, nec tincidunt mauris ligula ac libero. Pellentesque luctus neque magna, ac finibus lacus malesuada sed. Nam lacinia ex in pharetra pretium. Cras eget porttitor orci, ut tincidunt turpis. Sed id lacus faucibus, bibendum dui id, consequat sapien. Vivamus in turpis sed diam pulvinar sollicitudin. Phasellus mattis sodales quam, nec condimentum nibh consectetur quis. Suspendisse quis semper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis non faucibus mi.</p>\n<!-- /wp:paragraph -->', 'Mauris in orci', '', 'inherit', 'closed', 'closed', '', '131-revision-v1', '', '', '2021-07-27 05:13:48', '2021-07-27 09:13:48', '', 131, 'https://react-dev1.wp.wellnessliving.local/?p=132', 0, 'revision', '', 0),
(133, 1, '2021-07-27 05:14:14', '2021-07-27 09:14:14', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper nisl in metus varius ornare. Donec ut ex venenatis, sagittis eros eget, euismod massa. Phasellus eget eros arcu. Sed suscipit commodo finibus. Praesent egestas dui lobortis sapien ullamcorper, vel rhoncus elit tristique. Integer auctor arcu arcu, vitae tempus velit convallis vitae. Duis eleifend tristique hendrerit. Maecenas quis arcu condimentum, tristique enim ullamcorper, facilisis ante. Pellentesque aliquet suscipit enim, quis posuere ante mattis eget. Duis cursus laoreet nibh, et pretium dolor scelerisque at. Integer varius magna enim, sit amet fermentum lorem pulvinar ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec tristique, massa quis pulvinar porta, libero quam mattis leo, quis posuere quam sapien lacinia augue. Mauris in orci sit amet lorem pharetra pretium bibendum a quam. Pellentesque tristique odio lorem. Nullam dictum tristique augue, eget dignissim nisi imperdiet sed. Sed in elit at risus porta mattis vel ut orci. Pellentesque in arcu elit. Pellentesque imperdiet libero vitae justo hendrerit, non faucibus est auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris ac bibendum erat. Morbi ut sem odio. In non elit et massa efficitur convallis. Maecenas tempor tempus magna, sit amet pretium erat. Phasellus molestie tellus nibh, et mollis nisl convallis a. Proin varius nisl facilisis, malesuada ligula vitae, interdum lectus. Etiam fermentum nibh non purus bibendum, eget eleifend felis sagittis. Aliquam erat volutpat. Nulla tincidunt libero vel auctor vestibulum. Fusce imperdiet turpis vel ipsum mollis dictum. Suspendisse ullamcorper congue ullamcorper. Maecenas velit tellus, porttitor nec venenatis et, condimentum nec felis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis nec ligula a dui mollis tempus. Sed ipsum massa, ornare in mauris ultricies, gravida suscipit ipsum. Sed sagittis enim leo, molestie rutrum ligula placerat in. Nullam tincidunt a orci semper cursus. Sed mauris ipsum, ultrices in posuere at, tincidunt quis orci. Fusce id massa sagittis, pretium est et, fringilla arcu. Morbi tempor et velit in tempus. Cras faucibus urna ac diam pulvinar, quis rhoncus lorem dictum. Praesent pulvinar nec sem vel aliquam. Maecenas vitae massa ante. Phasellus luctus tempor convallis. Suspendisse at justo nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin dignissim massa quis ligula tempus, sed blandit lorem maximus. Curabitur finibus metus id magna tincidunt egestas. Morbi scelerisque enim nec nisi tempus posuere. Integer interdum, mi ac congue dignissim, lorem nunc tincidunt dui, nec tincidunt mauris ligula ac libero. Pellentesque luctus neque magna, ac finibus lacus malesuada sed. Nam lacinia ex in pharetra pretium. Cras eget porttitor orci, ut tincidunt turpis. Sed id lacus faucibus, bibendum dui id, consequat sapien. Vivamus in turpis sed diam pulvinar sollicitudin. Phasellus mattis sodales quam, nec condimentum nibh consectetur quis. Suspendisse quis semper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis non faucibus mi.</p>\n<!-- /wp:paragraph -->', 'Donec tristique, massa quis pulvinar', '', 'publish', 'open', 'open', '', 'donec-tristique-massa-quis-pulvinar', '', '', '2021-07-27 05:14:14', '2021-07-27 09:14:14', '', 0, 'https://react-dev1.wp.wellnessliving.local/?p=133', 0, 'post', '', 0),
(134, 1, '2021-07-27 05:14:14', '2021-07-27 09:14:14', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper nisl in metus varius ornare. Donec ut ex venenatis, sagittis eros eget, euismod massa. Phasellus eget eros arcu. Sed suscipit commodo finibus. Praesent egestas dui lobortis sapien ullamcorper, vel rhoncus elit tristique. Integer auctor arcu arcu, vitae tempus velit convallis vitae. Duis eleifend tristique hendrerit. Maecenas quis arcu condimentum, tristique enim ullamcorper, facilisis ante. Pellentesque aliquet suscipit enim, quis posuere ante mattis eget. Duis cursus laoreet nibh, et pretium dolor scelerisque at. Integer varius magna enim, sit amet fermentum lorem pulvinar ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec tristique, massa quis pulvinar porta, libero quam mattis leo, quis posuere quam sapien lacinia augue. Mauris in orci sit amet lorem pharetra pretium bibendum a quam. Pellentesque tristique odio lorem. Nullam dictum tristique augue, eget dignissim nisi imperdiet sed. Sed in elit at risus porta mattis vel ut orci. Pellentesque in arcu elit. Pellentesque imperdiet libero vitae justo hendrerit, non faucibus est auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris ac bibendum erat. Morbi ut sem odio. In non elit et massa efficitur convallis. Maecenas tempor tempus magna, sit amet pretium erat. Phasellus molestie tellus nibh, et mollis nisl convallis a. Proin varius nisl facilisis, malesuada ligula vitae, interdum lectus. Etiam fermentum nibh non purus bibendum, eget eleifend felis sagittis. Aliquam erat volutpat. Nulla tincidunt libero vel auctor vestibulum. Fusce imperdiet turpis vel ipsum mollis dictum. Suspendisse ullamcorper congue ullamcorper. Maecenas velit tellus, porttitor nec venenatis et, condimentum nec felis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis nec ligula a dui mollis tempus. Sed ipsum massa, ornare in mauris ultricies, gravida suscipit ipsum. Sed sagittis enim leo, molestie rutrum ligula placerat in. Nullam tincidunt a orci semper cursus. Sed mauris ipsum, ultrices in posuere at, tincidunt quis orci. Fusce id massa sagittis, pretium est et, fringilla arcu. Morbi tempor et velit in tempus. Cras faucibus urna ac diam pulvinar, quis rhoncus lorem dictum. Praesent pulvinar nec sem vel aliquam. Maecenas vitae massa ante. Phasellus luctus tempor convallis. Suspendisse at justo nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin dignissim massa quis ligula tempus, sed blandit lorem maximus. Curabitur finibus metus id magna tincidunt egestas. Morbi scelerisque enim nec nisi tempus posuere. Integer interdum, mi ac congue dignissim, lorem nunc tincidunt dui, nec tincidunt mauris ligula ac libero. Pellentesque luctus neque magna, ac finibus lacus malesuada sed. Nam lacinia ex in pharetra pretium. Cras eget porttitor orci, ut tincidunt turpis. Sed id lacus faucibus, bibendum dui id, consequat sapien. Vivamus in turpis sed diam pulvinar sollicitudin. Phasellus mattis sodales quam, nec condimentum nibh consectetur quis. Suspendisse quis semper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis non faucibus mi.</p>\n<!-- /wp:paragraph -->', 'Donec tristique, massa quis pulvinar', '', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2021-07-27 05:14:14', '2021-07-27 09:14:14', '', 133, 'https://react-dev1.wp.wellnessliving.local/?p=134', 0, 'revision', '', 0),
(135, 1, '2021-07-27 05:14:34', '2021-07-27 09:14:34', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper nisl in metus varius ornare. Donec ut ex venenatis, sagittis eros eget, euismod massa. Phasellus eget eros arcu. Sed suscipit commodo finibus. Praesent egestas dui lobortis sapien ullamcorper, vel rhoncus elit tristique. Integer auctor arcu arcu, vitae tempus velit convallis vitae. Duis eleifend tristique hendrerit. Maecenas quis arcu condimentum, tristique enim ullamcorper, facilisis ante. Pellentesque aliquet suscipit enim, quis posuere ante mattis eget. Duis cursus laoreet nibh, et pretium dolor scelerisque at. Integer varius magna enim, sit amet fermentum lorem pulvinar ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec tristique, massa quis pulvinar porta, libero quam mattis leo, quis posuere quam sapien lacinia augue. Mauris in orci sit amet lorem pharetra pretium bibendum a quam. Pellentesque tristique odio lorem. Nullam dictum tristique augue, eget dignissim nisi imperdiet sed. Sed in elit at risus porta mattis vel ut orci. Pellentesque in arcu elit. Pellentesque imperdiet libero vitae justo hendrerit, non faucibus est auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris ac bibendum erat. Morbi ut sem odio. In non elit et massa efficitur convallis. Maecenas tempor tempus magna, sit amet pretium erat. Phasellus molestie tellus nibh, et mollis nisl convallis a. Proin varius nisl facilisis, malesuada ligula vitae, interdum lectus. Etiam fermentum nibh non purus bibendum, eget eleifend felis sagittis. Aliquam erat volutpat. Nulla tincidunt libero vel auctor vestibulum. Fusce imperdiet turpis vel ipsum mollis dictum. Suspendisse ullamcorper congue ullamcorper. Maecenas velit tellus, porttitor nec venenatis et, condimentum nec felis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis nec ligula a dui mollis tempus. Sed ipsum massa, ornare in mauris ultricies, gravida suscipit ipsum. Sed sagittis enim leo, molestie rutrum ligula placerat in. Nullam tincidunt a orci semper cursus. Sed mauris ipsum, ultrices in posuere at, tincidunt quis orci. Fusce id massa sagittis, pretium est et, fringilla arcu. Morbi tempor et velit in tempus. Cras faucibus urna ac diam pulvinar, quis rhoncus lorem dictum. Praesent pulvinar nec sem vel aliquam. Maecenas vitae massa ante. Phasellus luctus tempor convallis. Suspendisse at justo nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin dignissim massa quis ligula tempus, sed blandit lorem maximus. Curabitur finibus metus id magna tincidunt egestas. Morbi scelerisque enim nec nisi tempus posuere. Integer interdum, mi ac congue dignissim, lorem nunc tincidunt dui, nec tincidunt mauris ligula ac libero. Pellentesque luctus neque magna, ac finibus lacus malesuada sed. Nam lacinia ex in pharetra pretium. Cras eget porttitor orci, ut tincidunt turpis. Sed id lacus faucibus, bibendum dui id, consequat sapien. Vivamus in turpis sed diam pulvinar sollicitudin. Phasellus mattis sodales quam, nec condimentum nibh consectetur quis. Suspendisse quis semper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis non faucibus mi.</p>\n<!-- /wp:paragraph -->', 'Mauris ac bibendum', '', 'publish', 'open', 'open', '', 'mauris-ac-bibendum-2', '', '', '2021-07-27 05:14:34', '2021-07-27 09:14:34', '', 0, 'https://react-dev1.wp.wellnessliving.local/?p=135', 0, 'post', '', 0),
(136, 1, '2021-07-27 05:14:34', '2021-07-27 09:14:34', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper nisl in metus varius ornare. Donec ut ex venenatis, sagittis eros eget, euismod massa. Phasellus eget eros arcu. Sed suscipit commodo finibus. Praesent egestas dui lobortis sapien ullamcorper, vel rhoncus elit tristique. Integer auctor arcu arcu, vitae tempus velit convallis vitae. Duis eleifend tristique hendrerit. Maecenas quis arcu condimentum, tristique enim ullamcorper, facilisis ante. Pellentesque aliquet suscipit enim, quis posuere ante mattis eget. Duis cursus laoreet nibh, et pretium dolor scelerisque at. Integer varius magna enim, sit amet fermentum lorem pulvinar ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec tristique, massa quis pulvinar porta, libero quam mattis leo, quis posuere quam sapien lacinia augue. Mauris in orci sit amet lorem pharetra pretium bibendum a quam. Pellentesque tristique odio lorem. Nullam dictum tristique augue, eget dignissim nisi imperdiet sed. Sed in elit at risus porta mattis vel ut orci. Pellentesque in arcu elit. Pellentesque imperdiet libero vitae justo hendrerit, non faucibus est auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris ac bibendum erat. Morbi ut sem odio. In non elit et massa efficitur convallis. Maecenas tempor tempus magna, sit amet pretium erat. Phasellus molestie tellus nibh, et mollis nisl convallis a. Proin varius nisl facilisis, malesuada ligula vitae, interdum lectus. Etiam fermentum nibh non purus bibendum, eget eleifend felis sagittis. Aliquam erat volutpat. Nulla tincidunt libero vel auctor vestibulum. Fusce imperdiet turpis vel ipsum mollis dictum. Suspendisse ullamcorper congue ullamcorper. Maecenas velit tellus, porttitor nec venenatis et, condimentum nec felis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis nec ligula a dui mollis tempus. Sed ipsum massa, ornare in mauris ultricies, gravida suscipit ipsum. Sed sagittis enim leo, molestie rutrum ligula placerat in. Nullam tincidunt a orci semper cursus. Sed mauris ipsum, ultrices in posuere at, tincidunt quis orci. Fusce id massa sagittis, pretium est et, fringilla arcu. Morbi tempor et velit in tempus. Cras faucibus urna ac diam pulvinar, quis rhoncus lorem dictum. Praesent pulvinar nec sem vel aliquam. Maecenas vitae massa ante. Phasellus luctus tempor convallis. Suspendisse at justo nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin dignissim massa quis ligula tempus, sed blandit lorem maximus. Curabitur finibus metus id magna tincidunt egestas. Morbi scelerisque enim nec nisi tempus posuere. Integer interdum, mi ac congue dignissim, lorem nunc tincidunt dui, nec tincidunt mauris ligula ac libero. Pellentesque luctus neque magna, ac finibus lacus malesuada sed. Nam lacinia ex in pharetra pretium. Cras eget porttitor orci, ut tincidunt turpis. Sed id lacus faucibus, bibendum dui id, consequat sapien. Vivamus in turpis sed diam pulvinar sollicitudin. Phasellus mattis sodales quam, nec condimentum nibh consectetur quis. Suspendisse quis semper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis non faucibus mi.</p>\n<!-- /wp:paragraph -->', 'Mauris ac bibendum', '', 'inherit', 'closed', 'closed', '', '135-revision-v1', '', '', '2021-07-27 05:14:34', '2021-07-27 09:14:34', '', 135, 'https://react-dev1.wp.wellnessliving.local/?p=136', 0, 'revision', '', 0),
(137, 1, '2021-07-27 05:14:55', '2021-07-27 09:14:55', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper nisl in metus varius ornare. Donec ut ex venenatis, sagittis eros eget, euismod massa. Phasellus eget eros arcu. Sed suscipit commodo finibus. Praesent egestas dui lobortis sapien ullamcorper, vel rhoncus elit tristique. Integer auctor arcu arcu, vitae tempus velit convallis vitae. Duis eleifend tristique hendrerit. Maecenas quis arcu condimentum, tristique enim ullamcorper, facilisis ante. Pellentesque aliquet suscipit enim, quis posuere ante mattis eget. Duis cursus laoreet nibh, et pretium dolor scelerisque at. Integer varius magna enim, sit amet fermentum lorem pulvinar ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec tristique, massa quis pulvinar porta, libero quam mattis leo, quis posuere quam sapien lacinia augue. Mauris in orci sit amet lorem pharetra pretium bibendum a quam. Pellentesque tristique odio lorem. Nullam dictum tristique augue, eget dignissim nisi imperdiet sed. Sed in elit at risus porta mattis vel ut orci. Pellentesque in arcu elit. Pellentesque imperdiet libero vitae justo hendrerit, non faucibus est auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris ac bibendum erat. Morbi ut sem odio. In non elit et massa efficitur convallis. Maecenas tempor tempus magna, sit amet pretium erat. Phasellus molestie tellus nibh, et mollis nisl convallis a. Proin varius nisl facilisis, malesuada ligula vitae, interdum lectus. Etiam fermentum nibh non purus bibendum, eget eleifend felis sagittis. Aliquam erat volutpat. Nulla tincidunt libero vel auctor vestibulum. Fusce imperdiet turpis vel ipsum mollis dictum. Suspendisse ullamcorper congue ullamcorper. Maecenas velit tellus, porttitor nec venenatis et, condimentum nec felis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis nec ligula a dui mollis tempus. Sed ipsum massa, ornare in mauris ultricies, gravida suscipit ipsum. Sed sagittis enim leo, molestie rutrum ligula placerat in. Nullam tincidunt a orci semper cursus. Sed mauris ipsum, ultrices in posuere at, tincidunt quis orci. Fusce id massa sagittis, pretium est et, fringilla arcu. Morbi tempor et velit in tempus. Cras faucibus urna ac diam pulvinar, quis rhoncus lorem dictum. Praesent pulvinar nec sem vel aliquam. Maecenas vitae massa ante. Phasellus luctus tempor convallis. Suspendisse at justo nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin dignissim massa quis ligula tempus, sed blandit lorem maximus. Curabitur finibus metus id magna tincidunt egestas. Morbi scelerisque enim nec nisi tempus posuere. Integer interdum, mi ac congue dignissim, lorem nunc tincidunt dui, nec tincidunt mauris ligula ac libero. Pellentesque luctus neque magna, ac finibus lacus malesuada sed. Nam lacinia ex in pharetra pretium. Cras eget porttitor orci, ut tincidunt turpis. Sed id lacus faucibus, bibendum dui id, consequat sapien. Vivamus in turpis sed diam pulvinar sollicitudin. Phasellus mattis sodales quam, nec condimentum nibh consectetur quis. Suspendisse quis semper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis non faucibus mi.</p>\n<!-- /wp:paragraph -->', 'Duis eleifend tristique hendrerit', '', 'publish', 'open', 'open', '', 'duis-eleifend-tristique-hendrerit', '', '', '2021-07-27 05:14:55', '2021-07-27 09:14:55', '', 0, 'https://react-dev1.wp.wellnessliving.local/?p=137', 0, 'post', '', 0);
INSERT INTO `wp_2_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(138, 1, '2021-07-27 05:14:55', '2021-07-27 09:14:55', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper nisl in metus varius ornare. Donec ut ex venenatis, sagittis eros eget, euismod massa. Phasellus eget eros arcu. Sed suscipit commodo finibus. Praesent egestas dui lobortis sapien ullamcorper, vel rhoncus elit tristique. Integer auctor arcu arcu, vitae tempus velit convallis vitae. Duis eleifend tristique hendrerit. Maecenas quis arcu condimentum, tristique enim ullamcorper, facilisis ante. Pellentesque aliquet suscipit enim, quis posuere ante mattis eget. Duis cursus laoreet nibh, et pretium dolor scelerisque at. Integer varius magna enim, sit amet fermentum lorem pulvinar ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec tristique, massa quis pulvinar porta, libero quam mattis leo, quis posuere quam sapien lacinia augue. Mauris in orci sit amet lorem pharetra pretium bibendum a quam. Pellentesque tristique odio lorem. Nullam dictum tristique augue, eget dignissim nisi imperdiet sed. Sed in elit at risus porta mattis vel ut orci. Pellentesque in arcu elit. Pellentesque imperdiet libero vitae justo hendrerit, non faucibus est auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris ac bibendum erat. Morbi ut sem odio. In non elit et massa efficitur convallis. Maecenas tempor tempus magna, sit amet pretium erat. Phasellus molestie tellus nibh, et mollis nisl convallis a. Proin varius nisl facilisis, malesuada ligula vitae, interdum lectus. Etiam fermentum nibh non purus bibendum, eget eleifend felis sagittis. Aliquam erat volutpat. Nulla tincidunt libero vel auctor vestibulum. Fusce imperdiet turpis vel ipsum mollis dictum. Suspendisse ullamcorper congue ullamcorper. Maecenas velit tellus, porttitor nec venenatis et, condimentum nec felis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis nec ligula a dui mollis tempus. Sed ipsum massa, ornare in mauris ultricies, gravida suscipit ipsum. Sed sagittis enim leo, molestie rutrum ligula placerat in. Nullam tincidunt a orci semper cursus. Sed mauris ipsum, ultrices in posuere at, tincidunt quis orci. Fusce id massa sagittis, pretium est et, fringilla arcu. Morbi tempor et velit in tempus. Cras faucibus urna ac diam pulvinar, quis rhoncus lorem dictum. Praesent pulvinar nec sem vel aliquam. Maecenas vitae massa ante. Phasellus luctus tempor convallis. Suspendisse at justo nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin dignissim massa quis ligula tempus, sed blandit lorem maximus. Curabitur finibus metus id magna tincidunt egestas. Morbi scelerisque enim nec nisi tempus posuere. Integer interdum, mi ac congue dignissim, lorem nunc tincidunt dui, nec tincidunt mauris ligula ac libero. Pellentesque luctus neque magna, ac finibus lacus malesuada sed. Nam lacinia ex in pharetra pretium. Cras eget porttitor orci, ut tincidunt turpis. Sed id lacus faucibus, bibendum dui id, consequat sapien. Vivamus in turpis sed diam pulvinar sollicitudin. Phasellus mattis sodales quam, nec condimentum nibh consectetur quis. Suspendisse quis semper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis non faucibus mi.</p>\n<!-- /wp:paragraph -->', 'Duis eleifend tristique hendrerit', '', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2021-07-27 05:14:55', '2021-07-27 09:14:55', '', 137, 'https://react-dev1.wp.wellnessliving.local/?p=138', 0, 'revision', '', 0),
(139, 1, '2021-07-27 05:15:16', '2021-07-27 09:15:16', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper nisl in metus varius ornare. Donec ut ex venenatis, sagittis eros eget, euismod massa. Phasellus eget eros arcu. Sed suscipit commodo finibus. Praesent egestas dui lobortis sapien ullamcorper, vel rhoncus elit tristique. Integer auctor arcu arcu, vitae tempus velit convallis vitae. Duis eleifend tristique hendrerit. Maecenas quis arcu condimentum, tristique enim ullamcorper, facilisis ante. Pellentesque aliquet suscipit enim, quis posuere ante mattis eget. Duis cursus laoreet nibh, et pretium dolor scelerisque at. Integer varius magna enim, sit amet fermentum lorem pulvinar ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec tristique, massa quis pulvinar porta, libero quam mattis leo, quis posuere quam sapien lacinia augue. Mauris in orci sit amet lorem pharetra pretium bibendum a quam. Pellentesque tristique odio lorem. Nullam dictum tristique augue, eget dignissim nisi imperdiet sed. Sed in elit at risus porta mattis vel ut orci. Pellentesque in arcu elit. Pellentesque imperdiet libero vitae justo hendrerit, non faucibus est auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris ac bibendum erat. Morbi ut sem odio. In non elit et massa efficitur convallis. Maecenas tempor tempus magna, sit amet pretium erat. Phasellus molestie tellus nibh, et mollis nisl convallis a. Proin varius nisl facilisis, malesuada ligula vitae, interdum lectus. Etiam fermentum nibh non purus bibendum, eget eleifend felis sagittis. Aliquam erat volutpat. Nulla tincidunt libero vel auctor vestibulum. Fusce imperdiet turpis vel ipsum mollis dictum. Suspendisse ullamcorper congue ullamcorper. Maecenas velit tellus, porttitor nec venenatis et, condimentum nec felis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis nec ligula a dui mollis tempus. Sed ipsum massa, ornare in mauris ultricies, gravida suscipit ipsum. Sed sagittis enim leo, molestie rutrum ligula placerat in. Nullam tincidunt a orci semper cursus. Sed mauris ipsum, ultrices in posuere at, tincidunt quis orci. Fusce id massa sagittis, pretium est et, fringilla arcu. Morbi tempor et velit in tempus. Cras faucibus urna ac diam pulvinar, quis rhoncus lorem dictum. Praesent pulvinar nec sem vel aliquam. Maecenas vitae massa ante. Phasellus luctus tempor convallis. Suspendisse at justo nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin dignissim massa quis ligula tempus, sed blandit lorem maximus. Curabitur finibus metus id magna tincidunt egestas. Morbi scelerisque enim nec nisi tempus posuere. Integer interdum, mi ac congue dignissim, lorem nunc tincidunt dui, nec tincidunt mauris ligula ac libero. Pellentesque luctus neque magna, ac finibus lacus malesuada sed. Nam lacinia ex in pharetra pretium. Cras eget porttitor orci, ut tincidunt turpis. Sed id lacus faucibus, bibendum dui id, consequat sapien. Vivamus in turpis sed diam pulvinar sollicitudin. Phasellus mattis sodales quam, nec condimentum nibh consectetur quis. Suspendisse quis semper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis non faucibus mi.</p>\n<!-- /wp:paragraph -->', 'Sed suscipit commodo finibus', '', 'publish', 'open', 'open', '', 'sed-suscipit-commodo-finibus', '', '', '2021-07-27 05:15:16', '2021-07-27 09:15:16', '', 0, 'https://react-dev1.wp.wellnessliving.local/?p=139', 0, 'post', '', 0),
(140, 1, '2021-07-27 05:15:16', '2021-07-27 09:15:16', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper nisl in metus varius ornare. Donec ut ex venenatis, sagittis eros eget, euismod massa. Phasellus eget eros arcu. Sed suscipit commodo finibus. Praesent egestas dui lobortis sapien ullamcorper, vel rhoncus elit tristique. Integer auctor arcu arcu, vitae tempus velit convallis vitae. Duis eleifend tristique hendrerit. Maecenas quis arcu condimentum, tristique enim ullamcorper, facilisis ante. Pellentesque aliquet suscipit enim, quis posuere ante mattis eget. Duis cursus laoreet nibh, et pretium dolor scelerisque at. Integer varius magna enim, sit amet fermentum lorem pulvinar ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec tristique, massa quis pulvinar porta, libero quam mattis leo, quis posuere quam sapien lacinia augue. Mauris in orci sit amet lorem pharetra pretium bibendum a quam. Pellentesque tristique odio lorem. Nullam dictum tristique augue, eget dignissim nisi imperdiet sed. Sed in elit at risus porta mattis vel ut orci. Pellentesque in arcu elit. Pellentesque imperdiet libero vitae justo hendrerit, non faucibus est auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris ac bibendum erat. Morbi ut sem odio. In non elit et massa efficitur convallis. Maecenas tempor tempus magna, sit amet pretium erat. Phasellus molestie tellus nibh, et mollis nisl convallis a. Proin varius nisl facilisis, malesuada ligula vitae, interdum lectus. Etiam fermentum nibh non purus bibendum, eget eleifend felis sagittis. Aliquam erat volutpat. Nulla tincidunt libero vel auctor vestibulum. Fusce imperdiet turpis vel ipsum mollis dictum. Suspendisse ullamcorper congue ullamcorper. Maecenas velit tellus, porttitor nec venenatis et, condimentum nec felis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis nec ligula a dui mollis tempus. Sed ipsum massa, ornare in mauris ultricies, gravida suscipit ipsum. Sed sagittis enim leo, molestie rutrum ligula placerat in. Nullam tincidunt a orci semper cursus. Sed mauris ipsum, ultrices in posuere at, tincidunt quis orci. Fusce id massa sagittis, pretium est et, fringilla arcu. Morbi tempor et velit in tempus. Cras faucibus urna ac diam pulvinar, quis rhoncus lorem dictum. Praesent pulvinar nec sem vel aliquam. Maecenas vitae massa ante. Phasellus luctus tempor convallis. Suspendisse at justo nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin dignissim massa quis ligula tempus, sed blandit lorem maximus. Curabitur finibus metus id magna tincidunt egestas. Morbi scelerisque enim nec nisi tempus posuere. Integer interdum, mi ac congue dignissim, lorem nunc tincidunt dui, nec tincidunt mauris ligula ac libero. Pellentesque luctus neque magna, ac finibus lacus malesuada sed. Nam lacinia ex in pharetra pretium. Cras eget porttitor orci, ut tincidunt turpis. Sed id lacus faucibus, bibendum dui id, consequat sapien. Vivamus in turpis sed diam pulvinar sollicitudin. Phasellus mattis sodales quam, nec condimentum nibh consectetur quis. Suspendisse quis semper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis non faucibus mi.</p>\n<!-- /wp:paragraph -->', 'Sed suscipit commodo finibus', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2021-07-27 05:15:16', '2021-07-27 09:15:16', '', 139, 'https://react-dev1.wp.wellnessliving.local/?p=140', 0, 'revision', '', 0),
(141, 1, '2021-07-27 05:15:51', '2021-07-27 09:15:51', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper nisl in metus varius ornare. Donec ut ex venenatis, sagittis eros eget, euismod massa. Phasellus eget eros arcu. Sed suscipit commodo finibus. Praesent egestas dui lobortis sapien ullamcorper, vel rhoncus elit tristique. Integer auctor arcu arcu, vitae tempus velit convallis vitae. Duis eleifend tristique hendrerit. Maecenas quis arcu condimentum, tristique enim ullamcorper, facilisis ante. Pellentesque aliquet suscipit enim, quis posuere ante mattis eget. Duis cursus laoreet nibh, et pretium dolor scelerisque at. Integer varius magna enim, sit amet fermentum lorem pulvinar ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec tristique, massa quis pulvinar porta, libero quam mattis leo, quis posuere quam sapien lacinia augue. Mauris in orci sit amet lorem pharetra pretium bibendum a quam. Pellentesque tristique odio lorem. Nullam dictum tristique augue, eget dignissim nisi imperdiet sed. Sed in elit at risus porta mattis vel ut orci. Pellentesque in arcu elit. Pellentesque imperdiet libero vitae justo hendrerit, non faucibus est auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris ac bibendum erat. Morbi ut sem odio. In non elit et massa efficitur convallis. Maecenas tempor tempus magna, sit amet pretium erat. Phasellus molestie tellus nibh, et mollis nisl convallis a. Proin varius nisl facilisis, malesuada ligula vitae, interdum lectus. Etiam fermentum nibh non purus bibendum, eget eleifend felis sagittis. Aliquam erat volutpat. Nulla tincidunt libero vel auctor vestibulum. Fusce imperdiet turpis vel ipsum mollis dictum. Suspendisse ullamcorper congue ullamcorper. Maecenas velit tellus, porttitor nec venenatis et, condimentum nec felis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis nec ligula a dui mollis tempus. Sed ipsum massa, ornare in mauris ultricies, gravida suscipit ipsum. Sed sagittis enim leo, molestie rutrum ligula placerat in. Nullam tincidunt a orci semper cursus. Sed mauris ipsum, ultrices in posuere at, tincidunt quis orci. Fusce id massa sagittis, pretium est et, fringilla arcu. Morbi tempor et velit in tempus. Cras faucibus urna ac diam pulvinar, quis rhoncus lorem dictum. Praesent pulvinar nec sem vel aliquam. Maecenas vitae massa ante. Phasellus luctus tempor convallis. Suspendisse at justo nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin dignissim massa quis ligula tempus, sed blandit lorem maximus. Curabitur finibus metus id magna tincidunt egestas. Morbi scelerisque enim nec nisi tempus posuere. Integer interdum, mi ac congue dignissim, lorem nunc tincidunt dui, nec tincidunt mauris ligula ac libero. Pellentesque luctus neque magna, ac finibus lacus malesuada sed. Nam lacinia ex in pharetra pretium. Cras eget porttitor orci, ut tincidunt turpis. Sed id lacus faucibus, bibendum dui id, consequat sapien. Vivamus in turpis sed diam pulvinar sollicitudin. Phasellus mattis sodales quam, nec condimentum nibh consectetur quis. Suspendisse quis semper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis non faucibus mi.</p>\n<!-- /wp:paragraph -->', 'Sed ipsum massa, ornare in mauris ultricies', '', 'publish', 'open', 'open', '', 'sed-ipsum-massa-ornare-in-mauris-ultricies', '', '', '2021-07-27 05:15:51', '2021-07-27 09:15:51', '', 0, 'https://react-dev1.wp.wellnessliving.local/?p=141', 0, 'post', '', 0),
(142, 1, '2021-07-27 05:15:51', '2021-07-27 09:15:51', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper nisl in metus varius ornare. Donec ut ex venenatis, sagittis eros eget, euismod massa. Phasellus eget eros arcu. Sed suscipit commodo finibus. Praesent egestas dui lobortis sapien ullamcorper, vel rhoncus elit tristique. Integer auctor arcu arcu, vitae tempus velit convallis vitae. Duis eleifend tristique hendrerit. Maecenas quis arcu condimentum, tristique enim ullamcorper, facilisis ante. Pellentesque aliquet suscipit enim, quis posuere ante mattis eget. Duis cursus laoreet nibh, et pretium dolor scelerisque at. Integer varius magna enim, sit amet fermentum lorem pulvinar ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec tristique, massa quis pulvinar porta, libero quam mattis leo, quis posuere quam sapien lacinia augue. Mauris in orci sit amet lorem pharetra pretium bibendum a quam. Pellentesque tristique odio lorem. Nullam dictum tristique augue, eget dignissim nisi imperdiet sed. Sed in elit at risus porta mattis vel ut orci. Pellentesque in arcu elit. Pellentesque imperdiet libero vitae justo hendrerit, non faucibus est auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris ac bibendum erat. Morbi ut sem odio. In non elit et massa efficitur convallis. Maecenas tempor tempus magna, sit amet pretium erat. Phasellus molestie tellus nibh, et mollis nisl convallis a. Proin varius nisl facilisis, malesuada ligula vitae, interdum lectus. Etiam fermentum nibh non purus bibendum, eget eleifend felis sagittis. Aliquam erat volutpat. Nulla tincidunt libero vel auctor vestibulum. Fusce imperdiet turpis vel ipsum mollis dictum. Suspendisse ullamcorper congue ullamcorper. Maecenas velit tellus, porttitor nec venenatis et, condimentum nec felis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis nec ligula a dui mollis tempus. Sed ipsum massa, ornare in mauris ultricies, gravida suscipit ipsum. Sed sagittis enim leo, molestie rutrum ligula placerat in. Nullam tincidunt a orci semper cursus. Sed mauris ipsum, ultrices in posuere at, tincidunt quis orci. Fusce id massa sagittis, pretium est et, fringilla arcu. Morbi tempor et velit in tempus. Cras faucibus urna ac diam pulvinar, quis rhoncus lorem dictum. Praesent pulvinar nec sem vel aliquam. Maecenas vitae massa ante. Phasellus luctus tempor convallis. Suspendisse at justo nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin dignissim massa quis ligula tempus, sed blandit lorem maximus. Curabitur finibus metus id magna tincidunt egestas. Morbi scelerisque enim nec nisi tempus posuere. Integer interdum, mi ac congue dignissim, lorem nunc tincidunt dui, nec tincidunt mauris ligula ac libero. Pellentesque luctus neque magna, ac finibus lacus malesuada sed. Nam lacinia ex in pharetra pretium. Cras eget porttitor orci, ut tincidunt turpis. Sed id lacus faucibus, bibendum dui id, consequat sapien. Vivamus in turpis sed diam pulvinar sollicitudin. Phasellus mattis sodales quam, nec condimentum nibh consectetur quis. Suspendisse quis semper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis non faucibus mi.</p>\n<!-- /wp:paragraph -->', 'Sed ipsum massa, ornare in mauris ultricies', '', 'inherit', 'closed', 'closed', '', '141-revision-v1', '', '', '2021-07-27 05:15:51', '2021-07-27 09:15:51', '', 141, 'https://react-dev1.wp.wellnessliving.local/?p=142', 0, 'revision', '', 0),
(143, 1, '2021-07-27 05:16:20', '2021-07-27 09:16:20', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper nisl in metus varius ornare. Donec ut ex venenatis, sagittis eros eget, euismod massa. Phasellus eget eros arcu. Sed suscipit commodo finibus. Praesent egestas dui lobortis sapien ullamcorper, vel rhoncus elit tristique. Integer auctor arcu arcu, vitae tempus velit convallis vitae. Duis eleifend tristique hendrerit. Maecenas quis arcu condimentum, tristique enim ullamcorper, facilisis ante. Pellentesque aliquet suscipit enim, quis posuere ante mattis eget. Duis cursus laoreet nibh, et pretium dolor scelerisque at. Integer varius magna enim, sit amet fermentum lorem pulvinar ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec tristique, massa quis pulvinar porta, libero quam mattis leo, quis posuere quam sapien lacinia augue. Mauris in orci sit amet lorem pharetra pretium bibendum a quam. Pellentesque tristique odio lorem. Nullam dictum tristique augue, eget dignissim nisi imperdiet sed. Sed in elit at risus porta mattis vel ut orci. Pellentesque in arcu elit. Pellentesque imperdiet libero vitae justo hendrerit, non faucibus est auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris ac bibendum erat. Morbi ut sem odio. In non elit et massa efficitur convallis. Maecenas tempor tempus magna, sit amet pretium erat. Phasellus molestie tellus nibh, et mollis nisl convallis a. Proin varius nisl facilisis, malesuada ligula vitae, interdum lectus. Etiam fermentum nibh non purus bibendum, eget eleifend felis sagittis. Aliquam erat volutpat. Nulla tincidunt libero vel auctor vestibulum. Fusce imperdiet turpis vel ipsum mollis dictum. Suspendisse ullamcorper congue ullamcorper. Maecenas velit tellus, porttitor nec venenatis et, condimentum nec felis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis nec ligula a dui mollis tempus. Sed ipsum massa, ornare in mauris ultricies, gravida suscipit ipsum. Sed sagittis enim leo, molestie rutrum ligula placerat in. Nullam tincidunt a orci semper cursus. Sed mauris ipsum, ultrices in posuere at, tincidunt quis orci. Fusce id massa sagittis, pretium est et, fringilla arcu. Morbi tempor et velit in tempus. Cras faucibus urna ac diam pulvinar, quis rhoncus lorem dictum. Praesent pulvinar nec sem vel aliquam. Maecenas vitae massa ante. Phasellus luctus tempor convallis. Suspendisse at justo nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin dignissim massa quis ligula tempus, sed blandit lorem maximus. Curabitur finibus metus id magna tincidunt egestas. Morbi scelerisque enim nec nisi tempus posuere. Integer interdum, mi ac congue dignissim, lorem nunc tincidunt dui, nec tincidunt mauris ligula ac libero. Pellentesque luctus neque magna, ac finibus lacus malesuada sed. Nam lacinia ex in pharetra pretium. Cras eget porttitor orci, ut tincidunt turpis. Sed id lacus faucibus, bibendum dui id, consequat sapien. Vivamus in turpis sed diam pulvinar sollicitudin. Phasellus mattis sodales quam, nec condimentum nibh consectetur quis. Suspendisse quis semper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis non faucibus mi.</p>\n<!-- /wp:paragraph -->', 'Nullam tincidunt a orci', '', 'publish', 'open', 'open', '', 'nullam-tincidunt-a-orci', '', '', '2021-07-27 05:16:20', '2021-07-27 09:16:20', '', 0, 'https://react-dev1.wp.wellnessliving.local/?p=143', 0, 'post', '', 0),
(144, 1, '2021-07-27 05:16:20', '2021-07-27 09:16:20', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper nisl in metus varius ornare. Donec ut ex venenatis, sagittis eros eget, euismod massa. Phasellus eget eros arcu. Sed suscipit commodo finibus. Praesent egestas dui lobortis sapien ullamcorper, vel rhoncus elit tristique. Integer auctor arcu arcu, vitae tempus velit convallis vitae. Duis eleifend tristique hendrerit. Maecenas quis arcu condimentum, tristique enim ullamcorper, facilisis ante. Pellentesque aliquet suscipit enim, quis posuere ante mattis eget. Duis cursus laoreet nibh, et pretium dolor scelerisque at. Integer varius magna enim, sit amet fermentum lorem pulvinar ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec tristique, massa quis pulvinar porta, libero quam mattis leo, quis posuere quam sapien lacinia augue. Mauris in orci sit amet lorem pharetra pretium bibendum a quam. Pellentesque tristique odio lorem. Nullam dictum tristique augue, eget dignissim nisi imperdiet sed. Sed in elit at risus porta mattis vel ut orci. Pellentesque in arcu elit. Pellentesque imperdiet libero vitae justo hendrerit, non faucibus est auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris ac bibendum erat. Morbi ut sem odio. In non elit et massa efficitur convallis. Maecenas tempor tempus magna, sit amet pretium erat. Phasellus molestie tellus nibh, et mollis nisl convallis a. Proin varius nisl facilisis, malesuada ligula vitae, interdum lectus. Etiam fermentum nibh non purus bibendum, eget eleifend felis sagittis. Aliquam erat volutpat. Nulla tincidunt libero vel auctor vestibulum. Fusce imperdiet turpis vel ipsum mollis dictum. Suspendisse ullamcorper congue ullamcorper. Maecenas velit tellus, porttitor nec venenatis et, condimentum nec felis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis nec ligula a dui mollis tempus. Sed ipsum massa, ornare in mauris ultricies, gravida suscipit ipsum. Sed sagittis enim leo, molestie rutrum ligula placerat in. Nullam tincidunt a orci semper cursus. Sed mauris ipsum, ultrices in posuere at, tincidunt quis orci. Fusce id massa sagittis, pretium est et, fringilla arcu. Morbi tempor et velit in tempus. Cras faucibus urna ac diam pulvinar, quis rhoncus lorem dictum. Praesent pulvinar nec sem vel aliquam. Maecenas vitae massa ante. Phasellus luctus tempor convallis. Suspendisse at justo nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin dignissim massa quis ligula tempus, sed blandit lorem maximus. Curabitur finibus metus id magna tincidunt egestas. Morbi scelerisque enim nec nisi tempus posuere. Integer interdum, mi ac congue dignissim, lorem nunc tincidunt dui, nec tincidunt mauris ligula ac libero. Pellentesque luctus neque magna, ac finibus lacus malesuada sed. Nam lacinia ex in pharetra pretium. Cras eget porttitor orci, ut tincidunt turpis. Sed id lacus faucibus, bibendum dui id, consequat sapien. Vivamus in turpis sed diam pulvinar sollicitudin. Phasellus mattis sodales quam, nec condimentum nibh consectetur quis. Suspendisse quis semper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis non faucibus mi.</p>\n<!-- /wp:paragraph -->', 'Nullam tincidunt a orci', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2021-07-27 05:16:20', '2021-07-27 09:16:20', '', 143, 'https://react-dev1.wp.wellnessliving.local/?p=144', 0, 'revision', '', 0),
(145, 1, '2021-07-27 05:16:39', '2021-07-27 09:16:39', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper nisl in metus varius ornare. Donec ut ex venenatis, sagittis eros eget, euismod massa. Phasellus eget eros arcu. Sed suscipit commodo finibus. Praesent egestas dui lobortis sapien ullamcorper, vel rhoncus elit tristique. Integer auctor arcu arcu, vitae tempus velit convallis vitae. Duis eleifend tristique hendrerit. Maecenas quis arcu condimentum, tristique enim ullamcorper, facilisis ante. Pellentesque aliquet suscipit enim, quis posuere ante mattis eget. Duis cursus laoreet nibh, et pretium dolor scelerisque at. Integer varius magna enim, sit amet fermentum lorem pulvinar ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec tristique, massa quis pulvinar porta, libero quam mattis leo, quis posuere quam sapien lacinia augue. Mauris in orci sit amet lorem pharetra pretium bibendum a quam. Pellentesque tristique odio lorem. Nullam dictum tristique augue, eget dignissim nisi imperdiet sed. Sed in elit at risus porta mattis vel ut orci. Pellentesque in arcu elit. Pellentesque imperdiet libero vitae justo hendrerit, non faucibus est auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris ac bibendum erat. Morbi ut sem odio. In non elit et massa efficitur convallis. Maecenas tempor tempus magna, sit amet pretium erat. Phasellus molestie tellus nibh, et mollis nisl convallis a. Proin varius nisl facilisis, malesuada ligula vitae, interdum lectus. Etiam fermentum nibh non purus bibendum, eget eleifend felis sagittis. Aliquam erat volutpat. Nulla tincidunt libero vel auctor vestibulum. Fusce imperdiet turpis vel ipsum mollis dictum. Suspendisse ullamcorper congue ullamcorper. Maecenas velit tellus, porttitor nec venenatis et, condimentum nec felis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis nec ligula a dui mollis tempus. Sed ipsum massa, ornare in mauris ultricies, gravida suscipit ipsum. Sed sagittis enim leo, molestie rutrum ligula placerat in. Nullam tincidunt a orci semper cursus. Sed mauris ipsum, ultrices in posuere at, tincidunt quis orci. Fusce id massa sagittis, pretium est et, fringilla arcu. Morbi tempor et velit in tempus. Cras faucibus urna ac diam pulvinar, quis rhoncus lorem dictum. Praesent pulvinar nec sem vel aliquam. Maecenas vitae massa ante. Phasellus luctus tempor convallis. Suspendisse at justo nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin dignissim massa quis ligula tempus, sed blandit lorem maximus. Curabitur finibus metus id magna tincidunt egestas. Morbi scelerisque enim nec nisi tempus posuere. Integer interdum, mi ac congue dignissim, lorem nunc tincidunt dui, nec tincidunt mauris ligula ac libero. Pellentesque luctus neque magna, ac finibus lacus malesuada sed. Nam lacinia ex in pharetra pretium. Cras eget porttitor orci, ut tincidunt turpis. Sed id lacus faucibus, bibendum dui id, consequat sapien. Vivamus in turpis sed diam pulvinar sollicitudin. Phasellus mattis sodales quam, nec condimentum nibh consectetur quis. Suspendisse quis semper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis non faucibus mi.</p>\n<!-- /wp:paragraph -->', 'Duis cursus laoreet nibh', '', 'publish', 'open', 'open', '', 'duis-cursus-laoreet-nibh', '', '', '2021-07-27 05:16:39', '2021-07-27 09:16:39', '', 0, 'https://react-dev1.wp.wellnessliving.local/?p=145', 0, 'post', '', 0),
(146, 1, '2021-07-27 05:16:39', '2021-07-27 09:16:39', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper nisl in metus varius ornare. Donec ut ex venenatis, sagittis eros eget, euismod massa. Phasellus eget eros arcu. Sed suscipit commodo finibus. Praesent egestas dui lobortis sapien ullamcorper, vel rhoncus elit tristique. Integer auctor arcu arcu, vitae tempus velit convallis vitae. Duis eleifend tristique hendrerit. Maecenas quis arcu condimentum, tristique enim ullamcorper, facilisis ante. Pellentesque aliquet suscipit enim, quis posuere ante mattis eget. Duis cursus laoreet nibh, et pretium dolor scelerisque at. Integer varius magna enim, sit amet fermentum lorem pulvinar ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec tristique, massa quis pulvinar porta, libero quam mattis leo, quis posuere quam sapien lacinia augue. Mauris in orci sit amet lorem pharetra pretium bibendum a quam. Pellentesque tristique odio lorem. Nullam dictum tristique augue, eget dignissim nisi imperdiet sed. Sed in elit at risus porta mattis vel ut orci. Pellentesque in arcu elit. Pellentesque imperdiet libero vitae justo hendrerit, non faucibus est auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris ac bibendum erat. Morbi ut sem odio. In non elit et massa efficitur convallis. Maecenas tempor tempus magna, sit amet pretium erat. Phasellus molestie tellus nibh, et mollis nisl convallis a. Proin varius nisl facilisis, malesuada ligula vitae, interdum lectus. Etiam fermentum nibh non purus bibendum, eget eleifend felis sagittis. Aliquam erat volutpat. Nulla tincidunt libero vel auctor vestibulum. Fusce imperdiet turpis vel ipsum mollis dictum. Suspendisse ullamcorper congue ullamcorper. Maecenas velit tellus, porttitor nec venenatis et, condimentum nec felis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis nec ligula a dui mollis tempus. Sed ipsum massa, ornare in mauris ultricies, gravida suscipit ipsum. Sed sagittis enim leo, molestie rutrum ligula placerat in. Nullam tincidunt a orci semper cursus. Sed mauris ipsum, ultrices in posuere at, tincidunt quis orci. Fusce id massa sagittis, pretium est et, fringilla arcu. Morbi tempor et velit in tempus. Cras faucibus urna ac diam pulvinar, quis rhoncus lorem dictum. Praesent pulvinar nec sem vel aliquam. Maecenas vitae massa ante. Phasellus luctus tempor convallis. Suspendisse at justo nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin dignissim massa quis ligula tempus, sed blandit lorem maximus. Curabitur finibus metus id magna tincidunt egestas. Morbi scelerisque enim nec nisi tempus posuere. Integer interdum, mi ac congue dignissim, lorem nunc tincidunt dui, nec tincidunt mauris ligula ac libero. Pellentesque luctus neque magna, ac finibus lacus malesuada sed. Nam lacinia ex in pharetra pretium. Cras eget porttitor orci, ut tincidunt turpis. Sed id lacus faucibus, bibendum dui id, consequat sapien. Vivamus in turpis sed diam pulvinar sollicitudin. Phasellus mattis sodales quam, nec condimentum nibh consectetur quis. Suspendisse quis semper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis non faucibus mi.</p>\n<!-- /wp:paragraph -->', 'Duis cursus laoreet nibh', '', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2021-07-27 05:16:39', '2021-07-27 09:16:39', '', 145, 'https://react-dev1.wp.wellnessliving.local/?p=146', 0, 'revision', '', 0),
(147, 1, '2021-07-27 05:16:57', '2021-07-27 09:16:57', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper nisl in metus varius ornare. Donec ut ex venenatis, sagittis eros eget, euismod massa. Phasellus eget eros arcu. Sed suscipit commodo finibus. Praesent egestas dui lobortis sapien ullamcorper, vel rhoncus elit tristique. Integer auctor arcu arcu, vitae tempus velit convallis vitae. Duis eleifend tristique hendrerit. Maecenas quis arcu condimentum, tristique enim ullamcorper, facilisis ante. Pellentesque aliquet suscipit enim, quis posuere ante mattis eget. Duis cursus laoreet nibh, et pretium dolor scelerisque at. Integer varius magna enim, sit amet fermentum lorem pulvinar ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec tristique, massa quis pulvinar porta, libero quam mattis leo, quis posuere quam sapien lacinia augue. Mauris in orci sit amet lorem pharetra pretium bibendum a quam. Pellentesque tristique odio lorem. Nullam dictum tristique augue, eget dignissim nisi imperdiet sed. Sed in elit at risus porta mattis vel ut orci. Pellentesque in arcu elit. Pellentesque imperdiet libero vitae justo hendrerit, non faucibus est auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris ac bibendum erat. Morbi ut sem odio. In non elit et massa efficitur convallis. Maecenas tempor tempus magna, sit amet pretium erat. Phasellus molestie tellus nibh, et mollis nisl convallis a. Proin varius nisl facilisis, malesuada ligula vitae, interdum lectus. Etiam fermentum nibh non purus bibendum, eget eleifend felis sagittis. Aliquam erat volutpat. Nulla tincidunt libero vel auctor vestibulum. Fusce imperdiet turpis vel ipsum mollis dictum. Suspendisse ullamcorper congue ullamcorper. Maecenas velit tellus, porttitor nec venenatis et, condimentum nec felis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis nec ligula a dui mollis tempus. Sed ipsum massa, ornare in mauris ultricies, gravida suscipit ipsum. Sed sagittis enim leo, molestie rutrum ligula placerat in. Nullam tincidunt a orci semper cursus. Sed mauris ipsum, ultrices in posuere at, tincidunt quis orci. Fusce id massa sagittis, pretium est et, fringilla arcu. Morbi tempor et velit in tempus. Cras faucibus urna ac diam pulvinar, quis rhoncus lorem dictum. Praesent pulvinar nec sem vel aliquam. Maecenas vitae massa ante. Phasellus luctus tempor convallis. Suspendisse at justo nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin dignissim massa quis ligula tempus, sed blandit lorem maximus. Curabitur finibus metus id magna tincidunt egestas. Morbi scelerisque enim nec nisi tempus posuere. Integer interdum, mi ac congue dignissim, lorem nunc tincidunt dui, nec tincidunt mauris ligula ac libero. Pellentesque luctus neque magna, ac finibus lacus malesuada sed. Nam lacinia ex in pharetra pretium. Cras eget porttitor orci, ut tincidunt turpis. Sed id lacus faucibus, bibendum dui id, consequat sapien. Vivamus in turpis sed diam pulvinar sollicitudin. Phasellus mattis sodales quam, nec condimentum nibh consectetur quis. Suspendisse quis semper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis non faucibus mi.</p>\n<!-- /wp:paragraph -->', 'Duis nec ligula a dui', '', 'publish', 'open', 'open', '', 'duis-nec-ligula-a-dui', '', '', '2021-07-27 05:16:57', '2021-07-27 09:16:57', '', 0, 'https://react-dev1.wp.wellnessliving.local/?p=147', 0, 'post', '', 0),
(148, 1, '2021-07-27 05:16:57', '2021-07-27 09:16:57', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper nisl in metus varius ornare. Donec ut ex venenatis, sagittis eros eget, euismod massa. Phasellus eget eros arcu. Sed suscipit commodo finibus. Praesent egestas dui lobortis sapien ullamcorper, vel rhoncus elit tristique. Integer auctor arcu arcu, vitae tempus velit convallis vitae. Duis eleifend tristique hendrerit. Maecenas quis arcu condimentum, tristique enim ullamcorper, facilisis ante. Pellentesque aliquet suscipit enim, quis posuere ante mattis eget. Duis cursus laoreet nibh, et pretium dolor scelerisque at. Integer varius magna enim, sit amet fermentum lorem pulvinar ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec tristique, massa quis pulvinar porta, libero quam mattis leo, quis posuere quam sapien lacinia augue. Mauris in orci sit amet lorem pharetra pretium bibendum a quam. Pellentesque tristique odio lorem. Nullam dictum tristique augue, eget dignissim nisi imperdiet sed. Sed in elit at risus porta mattis vel ut orci. Pellentesque in arcu elit. Pellentesque imperdiet libero vitae justo hendrerit, non faucibus est auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris ac bibendum erat. Morbi ut sem odio. In non elit et massa efficitur convallis. Maecenas tempor tempus magna, sit amet pretium erat. Phasellus molestie tellus nibh, et mollis nisl convallis a. Proin varius nisl facilisis, malesuada ligula vitae, interdum lectus. Etiam fermentum nibh non purus bibendum, eget eleifend felis sagittis. Aliquam erat volutpat. Nulla tincidunt libero vel auctor vestibulum. Fusce imperdiet turpis vel ipsum mollis dictum. Suspendisse ullamcorper congue ullamcorper. Maecenas velit tellus, porttitor nec venenatis et, condimentum nec felis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis nec ligula a dui mollis tempus. Sed ipsum massa, ornare in mauris ultricies, gravida suscipit ipsum. Sed sagittis enim leo, molestie rutrum ligula placerat in. Nullam tincidunt a orci semper cursus. Sed mauris ipsum, ultrices in posuere at, tincidunt quis orci. Fusce id massa sagittis, pretium est et, fringilla arcu. Morbi tempor et velit in tempus. Cras faucibus urna ac diam pulvinar, quis rhoncus lorem dictum. Praesent pulvinar nec sem vel aliquam. Maecenas vitae massa ante. Phasellus luctus tempor convallis. Suspendisse at justo nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin dignissim massa quis ligula tempus, sed blandit lorem maximus. Curabitur finibus metus id magna tincidunt egestas. Morbi scelerisque enim nec nisi tempus posuere. Integer interdum, mi ac congue dignissim, lorem nunc tincidunt dui, nec tincidunt mauris ligula ac libero. Pellentesque luctus neque magna, ac finibus lacus malesuada sed. Nam lacinia ex in pharetra pretium. Cras eget porttitor orci, ut tincidunt turpis. Sed id lacus faucibus, bibendum dui id, consequat sapien. Vivamus in turpis sed diam pulvinar sollicitudin. Phasellus mattis sodales quam, nec condimentum nibh consectetur quis. Suspendisse quis semper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis non faucibus mi.</p>\n<!-- /wp:paragraph -->', 'Duis nec ligula a dui', '', 'inherit', 'closed', 'closed', '', '147-revision-v1', '', '', '2021-07-27 05:16:57', '2021-07-27 09:16:57', '', 147, 'https://react-dev1.wp.wellnessliving.local/?p=148', 0, 'revision', '', 0),
(149, 1, '2021-07-27 05:17:17', '2021-07-27 09:17:17', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper nisl in metus varius ornare. Donec ut ex venenatis, sagittis eros eget, euismod massa. Phasellus eget eros arcu. Sed suscipit commodo finibus. Praesent egestas dui lobortis sapien ullamcorper, vel rhoncus elit tristique. Integer auctor arcu arcu, vitae tempus velit convallis vitae. Duis eleifend tristique hendrerit. Maecenas quis arcu condimentum, tristique enim ullamcorper, facilisis ante. Pellentesque aliquet suscipit enim, quis posuere ante mattis eget. Duis cursus laoreet nibh, et pretium dolor scelerisque at. Integer varius magna enim, sit amet fermentum lorem pulvinar ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec tristique, massa quis pulvinar porta, libero quam mattis leo, quis posuere quam sapien lacinia augue. Mauris in orci sit amet lorem pharetra pretium bibendum a quam. Pellentesque tristique odio lorem. Nullam dictum tristique augue, eget dignissim nisi imperdiet sed. Sed in elit at risus porta mattis vel ut orci. Pellentesque in arcu elit. Pellentesque imperdiet libero vitae justo hendrerit, non faucibus est auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris ac bibendum erat. Morbi ut sem odio. In non elit et massa efficitur convallis. Maecenas tempor tempus magna, sit amet pretium erat. Phasellus molestie tellus nibh, et mollis nisl convallis a. Proin varius nisl facilisis, malesuada ligula vitae, interdum lectus. Etiam fermentum nibh non purus bibendum, eget eleifend felis sagittis. Aliquam erat volutpat. Nulla tincidunt libero vel auctor vestibulum. Fusce imperdiet turpis vel ipsum mollis dictum. Suspendisse ullamcorper congue ullamcorper. Maecenas velit tellus, porttitor nec venenatis et, condimentum nec felis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis nec ligula a dui mollis tempus. Sed ipsum massa, ornare in mauris ultricies, gravida suscipit ipsum. Sed sagittis enim leo, molestie rutrum ligula placerat in. Nullam tincidunt a orci semper cursus. Sed mauris ipsum, ultrices in posuere at, tincidunt quis orci. Fusce id massa sagittis, pretium est et, fringilla arcu. Morbi tempor et velit in tempus. Cras faucibus urna ac diam pulvinar, quis rhoncus lorem dictum. Praesent pulvinar nec sem vel aliquam. Maecenas vitae massa ante. Phasellus luctus tempor convallis. Suspendisse at justo nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin dignissim massa quis ligula tempus, sed blandit lorem maximus. Curabitur finibus metus id magna tincidunt egestas. Morbi scelerisque enim nec nisi tempus posuere. Integer interdum, mi ac congue dignissim, lorem nunc tincidunt dui, nec tincidunt mauris ligula ac libero. Pellentesque luctus neque magna, ac finibus lacus malesuada sed. Nam lacinia ex in pharetra pretium. Cras eget porttitor orci, ut tincidunt turpis. Sed id lacus faucibus, bibendum dui id, consequat sapien. Vivamus in turpis sed diam pulvinar sollicitudin. Phasellus mattis sodales quam, nec condimentum nibh consectetur quis. Suspendisse quis semper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis non faucibus mi.</p>\n<!-- /wp:paragraph -->', 'Phasellus luctus tempor convallis', '', 'publish', 'open', 'open', '', 'phasellus-luctus-tempor-convallis', '', '', '2021-09-07 06:16:05', '2021-09-07 10:16:05', '', 0, 'https://react-dev1.wp.wellnessliving.local/?p=149', 0, 'post', '', 0),
(150, 1, '2021-07-27 05:17:17', '2021-07-27 09:17:17', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper nisl in metus varius ornare. Donec ut ex venenatis, sagittis eros eget, euismod massa. Phasellus eget eros arcu. Sed suscipit commodo finibus. Praesent egestas dui lobortis sapien ullamcorper, vel rhoncus elit tristique. Integer auctor arcu arcu, vitae tempus velit convallis vitae. Duis eleifend tristique hendrerit. Maecenas quis arcu condimentum, tristique enim ullamcorper, facilisis ante. Pellentesque aliquet suscipit enim, quis posuere ante mattis eget. Duis cursus laoreet nibh, et pretium dolor scelerisque at. Integer varius magna enim, sit amet fermentum lorem pulvinar ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec tristique, massa quis pulvinar porta, libero quam mattis leo, quis posuere quam sapien lacinia augue. Mauris in orci sit amet lorem pharetra pretium bibendum a quam. Pellentesque tristique odio lorem. Nullam dictum tristique augue, eget dignissim nisi imperdiet sed. Sed in elit at risus porta mattis vel ut orci. Pellentesque in arcu elit. Pellentesque imperdiet libero vitae justo hendrerit, non faucibus est auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris ac bibendum erat. Morbi ut sem odio. In non elit et massa efficitur convallis. Maecenas tempor tempus magna, sit amet pretium erat. Phasellus molestie tellus nibh, et mollis nisl convallis a. Proin varius nisl facilisis, malesuada ligula vitae, interdum lectus. Etiam fermentum nibh non purus bibendum, eget eleifend felis sagittis. Aliquam erat volutpat. Nulla tincidunt libero vel auctor vestibulum. Fusce imperdiet turpis vel ipsum mollis dictum. Suspendisse ullamcorper congue ullamcorper. Maecenas velit tellus, porttitor nec venenatis et, condimentum nec felis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis nec ligula a dui mollis tempus. Sed ipsum massa, ornare in mauris ultricies, gravida suscipit ipsum. Sed sagittis enim leo, molestie rutrum ligula placerat in. Nullam tincidunt a orci semper cursus. Sed mauris ipsum, ultrices in posuere at, tincidunt quis orci. Fusce id massa sagittis, pretium est et, fringilla arcu. Morbi tempor et velit in tempus. Cras faucibus urna ac diam pulvinar, quis rhoncus lorem dictum. Praesent pulvinar nec sem vel aliquam. Maecenas vitae massa ante. Phasellus luctus tempor convallis. Suspendisse at justo nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin dignissim massa quis ligula tempus, sed blandit lorem maximus. Curabitur finibus metus id magna tincidunt egestas. Morbi scelerisque enim nec nisi tempus posuere. Integer interdum, mi ac congue dignissim, lorem nunc tincidunt dui, nec tincidunt mauris ligula ac libero. Pellentesque luctus neque magna, ac finibus lacus malesuada sed. Nam lacinia ex in pharetra pretium. Cras eget porttitor orci, ut tincidunt turpis. Sed id lacus faucibus, bibendum dui id, consequat sapien. Vivamus in turpis sed diam pulvinar sollicitudin. Phasellus mattis sodales quam, nec condimentum nibh consectetur quis. Suspendisse quis semper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis non faucibus mi.</p>\n<!-- /wp:paragraph -->', 'Phasellus luctus tempor convallis', '', 'inherit', 'closed', 'closed', '', '149-revision-v1', '', '', '2021-07-27 05:17:17', '2021-07-27 09:17:17', '', 149, 'https://react-dev1.wp.wellnessliving.local/?p=150', 0, 'revision', '', 0),
(151, 1, '2021-07-27 05:17:38', '2021-07-27 09:17:38', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper nisl in metus varius ornare. Donec ut ex venenatis, sagittis eros eget, euismod massa. Phasellus eget eros arcu. Sed suscipit commodo finibus. Praesent egestas dui lobortis sapien ullamcorper, vel rhoncus elit tristique. Integer auctor arcu arcu, vitae tempus velit convallis vitae. Duis eleifend tristique hendrerit. Maecenas quis arcu condimentum, tristique enim ullamcorper, facilisis ante. Pellentesque aliquet suscipit enim, quis posuere ante mattis eget. Duis cursus laoreet nibh, et pretium dolor scelerisque at. Integer varius magna enim, sit amet fermentum lorem pulvinar ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec tristique, massa quis pulvinar porta, libero quam mattis leo, quis posuere quam sapien lacinia augue. Mauris in orci sit amet lorem pharetra pretium bibendum a quam. Pellentesque tristique odio lorem. Nullam dictum tristique augue, eget dignissim nisi imperdiet sed. Sed in elit at risus porta mattis vel ut orci. Pellentesque in arcu elit. Pellentesque imperdiet libero vitae justo hendrerit, non faucibus est auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris ac bibendum erat. Morbi ut sem odio. In non elit et massa efficitur convallis. Maecenas tempor tempus magna, sit amet pretium erat. Phasellus molestie tellus nibh, et mollis nisl convallis a. Proin varius nisl facilisis, malesuada ligula vitae, interdum lectus. Etiam fermentum nibh non purus bibendum, eget eleifend felis sagittis. Aliquam erat volutpat. Nulla tincidunt libero vel auctor vestibulum. Fusce imperdiet turpis vel ipsum mollis dictum. Suspendisse ullamcorper congue ullamcorper. Maecenas velit tellus, porttitor nec venenatis et, condimentum nec felis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis nec ligula a dui mollis tempus. Sed ipsum massa, ornare in mauris ultricies, gravida suscipit ipsum. Sed sagittis enim leo, molestie rutrum ligula placerat in. Nullam tincidunt a orci semper cursus. Sed mauris ipsum, ultrices in posuere at, tincidunt quis orci. Fusce id massa sagittis, pretium est et, fringilla arcu. Morbi tempor et velit in tempus. Cras faucibus urna ac diam pulvinar, quis rhoncus lorem dictum. Praesent pulvinar nec sem vel aliquam. Maecenas vitae massa ante. Phasellus luctus tempor convallis. Suspendisse at justo nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin dignissim massa quis ligula tempus, sed blandit lorem maximus. Curabitur finibus metus id magna tincidunt egestas. Morbi scelerisque enim nec nisi tempus posuere. Integer interdum, mi ac congue dignissim, lorem nunc tincidunt dui, nec tincidunt mauris ligula ac libero. Pellentesque luctus neque magna, ac finibus lacus malesuada sed. Nam lacinia ex in pharetra pretium. Cras eget porttitor orci, ut tincidunt turpis. Sed id lacus faucibus, bibendum dui id, consequat sapien. Vivamus in turpis sed diam pulvinar sollicitudin. Phasellus mattis sodales quam, nec condimentum nibh consectetur quis. Suspendisse quis semper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis non faucibus mi.</p>\n<!-- /wp:paragraph -->', 'Maecenas quis arcu condimentum', '', 'publish', 'open', 'open', '', 'maecenas-quis-arcu-condimentum', '', '', '2021-09-07 06:15:59', '2021-09-07 10:15:59', '', 0, 'https://react-dev1.wp.wellnessliving.local/?p=151', 0, 'post', '', 0);
INSERT INTO `wp_2_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(152, 1, '2021-07-27 05:17:38', '2021-07-27 09:17:38', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper nisl in metus varius ornare. Donec ut ex venenatis, sagittis eros eget, euismod massa. Phasellus eget eros arcu. Sed suscipit commodo finibus. Praesent egestas dui lobortis sapien ullamcorper, vel rhoncus elit tristique. Integer auctor arcu arcu, vitae tempus velit convallis vitae. Duis eleifend tristique hendrerit. Maecenas quis arcu condimentum, tristique enim ullamcorper, facilisis ante. Pellentesque aliquet suscipit enim, quis posuere ante mattis eget. Duis cursus laoreet nibh, et pretium dolor scelerisque at. Integer varius magna enim, sit amet fermentum lorem pulvinar ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec tristique, massa quis pulvinar porta, libero quam mattis leo, quis posuere quam sapien lacinia augue. Mauris in orci sit amet lorem pharetra pretium bibendum a quam. Pellentesque tristique odio lorem. Nullam dictum tristique augue, eget dignissim nisi imperdiet sed. Sed in elit at risus porta mattis vel ut orci. Pellentesque in arcu elit. Pellentesque imperdiet libero vitae justo hendrerit, non faucibus est auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris ac bibendum erat. Morbi ut sem odio. In non elit et massa efficitur convallis. Maecenas tempor tempus magna, sit amet pretium erat. Phasellus molestie tellus nibh, et mollis nisl convallis a. Proin varius nisl facilisis, malesuada ligula vitae, interdum lectus. Etiam fermentum nibh non purus bibendum, eget eleifend felis sagittis. Aliquam erat volutpat. Nulla tincidunt libero vel auctor vestibulum. Fusce imperdiet turpis vel ipsum mollis dictum. Suspendisse ullamcorper congue ullamcorper. Maecenas velit tellus, porttitor nec venenatis et, condimentum nec felis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis nec ligula a dui mollis tempus. Sed ipsum massa, ornare in mauris ultricies, gravida suscipit ipsum. Sed sagittis enim leo, molestie rutrum ligula placerat in. Nullam tincidunt a orci semper cursus. Sed mauris ipsum, ultrices in posuere at, tincidunt quis orci. Fusce id massa sagittis, pretium est et, fringilla arcu. Morbi tempor et velit in tempus. Cras faucibus urna ac diam pulvinar, quis rhoncus lorem dictum. Praesent pulvinar nec sem vel aliquam. Maecenas vitae massa ante. Phasellus luctus tempor convallis. Suspendisse at justo nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin dignissim massa quis ligula tempus, sed blandit lorem maximus. Curabitur finibus metus id magna tincidunt egestas. Morbi scelerisque enim nec nisi tempus posuere. Integer interdum, mi ac congue dignissim, lorem nunc tincidunt dui, nec tincidunt mauris ligula ac libero. Pellentesque luctus neque magna, ac finibus lacus malesuada sed. Nam lacinia ex in pharetra pretium. Cras eget porttitor orci, ut tincidunt turpis. Sed id lacus faucibus, bibendum dui id, consequat sapien. Vivamus in turpis sed diam pulvinar sollicitudin. Phasellus mattis sodales quam, nec condimentum nibh consectetur quis. Suspendisse quis semper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis non faucibus mi.</p>\n<!-- /wp:paragraph -->', 'Maecenas quis arcu condimentum', '', 'inherit', 'closed', 'closed', '', '151-revision-v1', '', '', '2021-07-27 05:17:38', '2021-07-27 09:17:38', '', 151, 'https://react-dev1.wp.wellnessliving.local/?p=152', 0, 'revision', '', 0),
(153, 1, '2021-07-27 05:17:57', '2021-07-27 09:17:57', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper nisl in metus varius ornare. Donec ut ex venenatis, sagittis eros eget, euismod massa. Phasellus eget eros arcu. Sed suscipit commodo finibus. Praesent egestas dui lobortis sapien ullamcorper, vel rhoncus elit tristique. Integer auctor arcu arcu, vitae tempus velit convallis vitae. Duis eleifend tristique hendrerit. Maecenas quis arcu condimentum, tristique enim ullamcorper, facilisis ante. Pellentesque aliquet suscipit enim, quis posuere ante mattis eget. Duis cursus laoreet nibh, et pretium dolor scelerisque at. Integer varius magna enim, sit amet fermentum lorem pulvinar ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec tristique, massa quis pulvinar porta, libero quam mattis leo, quis posuere quam sapien lacinia augue. Mauris in orci sit amet lorem pharetra pretium bibendum a quam. Pellentesque tristique odio lorem. Nullam dictum tristique augue, eget dignissim nisi imperdiet sed. Sed in elit at risus porta mattis vel ut orci. Pellentesque in arcu elit. Pellentesque imperdiet libero vitae justo hendrerit, non faucibus est auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris ac bibendum erat. Morbi ut sem odio. In non elit et massa efficitur convallis. Maecenas tempor tempus magna, sit amet pretium erat. Phasellus molestie tellus nibh, et mollis nisl convallis a. Proin varius nisl facilisis, malesuada ligula vitae, interdum lectus. Etiam fermentum nibh non purus bibendum, eget eleifend felis sagittis. Aliquam erat volutpat. Nulla tincidunt libero vel auctor vestibulum. Fusce imperdiet turpis vel ipsum mollis dictum. Suspendisse ullamcorper congue ullamcorper. Maecenas velit tellus, porttitor nec venenatis et, condimentum nec felis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis nec ligula a dui mollis tempus. Sed ipsum massa, ornare in mauris ultricies, gravida suscipit ipsum. Sed sagittis enim leo, molestie rutrum ligula placerat in. Nullam tincidunt a orci semper cursus. Sed mauris ipsum, ultrices in posuere at, tincidunt quis orci. Fusce id massa sagittis, pretium est et, fringilla arcu. Morbi tempor et velit in tempus. Cras faucibus urna ac diam pulvinar, quis rhoncus lorem dictum. Praesent pulvinar nec sem vel aliquam. Maecenas vitae massa ante. Phasellus luctus tempor convallis. Suspendisse at justo nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin dignissim massa quis ligula tempus, sed blandit lorem maximus. Curabitur finibus metus id magna tincidunt egestas. Morbi scelerisque enim nec nisi tempus posuere. Integer interdum, mi ac congue dignissim, lorem nunc tincidunt dui, nec tincidunt mauris ligula ac libero. Pellentesque luctus neque magna, ac finibus lacus malesuada sed. Nam lacinia ex in pharetra pretium. Cras eget porttitor orci, ut tincidunt turpis. Sed id lacus faucibus, bibendum dui id, consequat sapien. Vivamus in turpis sed diam pulvinar sollicitudin. Phasellus mattis sodales quam, nec condimentum nibh consectetur quis. Suspendisse quis semper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis non faucibus mi.</p>\n<!-- /wp:paragraph -->', 'Sed ipsum massa, ornare', '', 'publish', 'open', 'open', '', 'sed-ipsum-massa-ornare', '', '', '2021-09-07 06:15:53', '2021-09-07 10:15:53', '', 0, 'https://react-dev1.wp.wellnessliving.local/?p=153', 0, 'post', '', 0),
(154, 1, '2021-07-27 05:17:57', '2021-07-27 09:17:57', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper nisl in metus varius ornare. Donec ut ex venenatis, sagittis eros eget, euismod massa. Phasellus eget eros arcu. Sed suscipit commodo finibus. Praesent egestas dui lobortis sapien ullamcorper, vel rhoncus elit tristique. Integer auctor arcu arcu, vitae tempus velit convallis vitae. Duis eleifend tristique hendrerit. Maecenas quis arcu condimentum, tristique enim ullamcorper, facilisis ante. Pellentesque aliquet suscipit enim, quis posuere ante mattis eget. Duis cursus laoreet nibh, et pretium dolor scelerisque at. Integer varius magna enim, sit amet fermentum lorem pulvinar ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec tristique, massa quis pulvinar porta, libero quam mattis leo, quis posuere quam sapien lacinia augue. Mauris in orci sit amet lorem pharetra pretium bibendum a quam. Pellentesque tristique odio lorem. Nullam dictum tristique augue, eget dignissim nisi imperdiet sed. Sed in elit at risus porta mattis vel ut orci. Pellentesque in arcu elit. Pellentesque imperdiet libero vitae justo hendrerit, non faucibus est auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris ac bibendum erat. Morbi ut sem odio. In non elit et massa efficitur convallis. Maecenas tempor tempus magna, sit amet pretium erat. Phasellus molestie tellus nibh, et mollis nisl convallis a. Proin varius nisl facilisis, malesuada ligula vitae, interdum lectus. Etiam fermentum nibh non purus bibendum, eget eleifend felis sagittis. Aliquam erat volutpat. Nulla tincidunt libero vel auctor vestibulum. Fusce imperdiet turpis vel ipsum mollis dictum. Suspendisse ullamcorper congue ullamcorper. Maecenas velit tellus, porttitor nec venenatis et, condimentum nec felis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis nec ligula a dui mollis tempus. Sed ipsum massa, ornare in mauris ultricies, gravida suscipit ipsum. Sed sagittis enim leo, molestie rutrum ligula placerat in. Nullam tincidunt a orci semper cursus. Sed mauris ipsum, ultrices in posuere at, tincidunt quis orci. Fusce id massa sagittis, pretium est et, fringilla arcu. Morbi tempor et velit in tempus. Cras faucibus urna ac diam pulvinar, quis rhoncus lorem dictum. Praesent pulvinar nec sem vel aliquam. Maecenas vitae massa ante. Phasellus luctus tempor convallis. Suspendisse at justo nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin dignissim massa quis ligula tempus, sed blandit lorem maximus. Curabitur finibus metus id magna tincidunt egestas. Morbi scelerisque enim nec nisi tempus posuere. Integer interdum, mi ac congue dignissim, lorem nunc tincidunt dui, nec tincidunt mauris ligula ac libero. Pellentesque luctus neque magna, ac finibus lacus malesuada sed. Nam lacinia ex in pharetra pretium. Cras eget porttitor orci, ut tincidunt turpis. Sed id lacus faucibus, bibendum dui id, consequat sapien. Vivamus in turpis sed diam pulvinar sollicitudin. Phasellus mattis sodales quam, nec condimentum nibh consectetur quis. Suspendisse quis semper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis non faucibus mi.</p>\n<!-- /wp:paragraph -->', 'Sed ipsum massa, ornare', '', 'inherit', 'closed', 'closed', '', '153-revision-v1', '', '', '2021-07-27 05:17:57', '2021-07-27 09:17:57', '', 153, 'https://react-dev1.wp.wellnessliving.local/?p=154', 0, 'revision', '', 0),
(155, 1, '2021-07-27 05:18:16', '2021-07-27 09:18:16', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper nisl in metus varius ornare. Donec ut ex venenatis, sagittis eros eget, euismod massa. Phasellus eget eros arcu. Sed suscipit commodo finibus. Praesent egestas dui lobortis sapien ullamcorper, vel rhoncus elit tristique. Integer auctor arcu arcu, vitae tempus velit convallis vitae. Duis eleifend tristique hendrerit. Maecenas quis arcu condimentum, tristique enim ullamcorper, facilisis ante. Pellentesque aliquet suscipit enim, quis posuere ante mattis eget. Duis cursus laoreet nibh, et pretium dolor scelerisque at. Integer varius magna enim, sit amet fermentum lorem pulvinar ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec tristique, massa quis pulvinar porta, libero quam mattis leo, quis posuere quam sapien lacinia augue. Mauris in orci sit amet lorem pharetra pretium bibendum a quam. Pellentesque tristique odio lorem. Nullam dictum tristique augue, eget dignissim nisi imperdiet sed. Sed in elit at risus porta mattis vel ut orci. Pellentesque in arcu elit. Pellentesque imperdiet libero vitae justo hendrerit, non faucibus est auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris ac bibendum erat. Morbi ut sem odio. In non elit et massa efficitur convallis. Maecenas tempor tempus magna, sit amet pretium erat. Phasellus molestie tellus nibh, et mollis nisl convallis a. Proin varius nisl facilisis, malesuada ligula vitae, interdum lectus. Etiam fermentum nibh non purus bibendum, eget eleifend felis sagittis. Aliquam erat volutpat. Nulla tincidunt libero vel auctor vestibulum. Fusce imperdiet turpis vel ipsum mollis dictum. Suspendisse ullamcorper congue ullamcorper. Maecenas velit tellus, porttitor nec venenatis et, condimentum nec felis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis nec ligula a dui mollis tempus. Sed ipsum massa, ornare in mauris ultricies, gravida suscipit ipsum. Sed sagittis enim leo, molestie rutrum ligula placerat in. Nullam tincidunt a orci semper cursus. Sed mauris ipsum, ultrices in posuere at, tincidunt quis orci. Fusce id massa sagittis, pretium est et, fringilla arcu. Morbi tempor et velit in tempus. Cras faucibus urna ac diam pulvinar, quis rhoncus lorem dictum. Praesent pulvinar nec sem vel aliquam. Maecenas vitae massa ante. Phasellus luctus tempor convallis. Suspendisse at justo nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin dignissim massa quis ligula tempus, sed blandit lorem maximus. Curabitur finibus metus id magna tincidunt egestas. Morbi scelerisque enim nec nisi tempus posuere. Integer interdum, mi ac congue dignissim, lorem nunc tincidunt dui, nec tincidunt mauris ligula ac libero. Pellentesque luctus neque magna, ac finibus lacus malesuada sed. Nam lacinia ex in pharetra pretium. Cras eget porttitor orci, ut tincidunt turpis. Sed id lacus faucibus, bibendum dui id, consequat sapien. Vivamus in turpis sed diam pulvinar sollicitudin. Phasellus mattis sodales quam, nec condimentum nibh consectetur quis. Suspendisse quis semper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis non faucibus mi.</p>\n<!-- /wp:paragraph -->', 'Nullam tincidunt a orci semper cursus', '', 'publish', 'open', 'open', '', 'nullam-tincidunt-a-orci-semper-cursus', '', '', '2021-09-07 06:15:45', '2021-09-07 10:15:45', '', 0, 'https://react-dev1.wp.wellnessliving.local/?p=155', 0, 'post', '', 0),
(156, 1, '2021-07-27 05:18:16', '2021-07-27 09:18:16', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper nisl in metus varius ornare. Donec ut ex venenatis, sagittis eros eget, euismod massa. Phasellus eget eros arcu. Sed suscipit commodo finibus. Praesent egestas dui lobortis sapien ullamcorper, vel rhoncus elit tristique. Integer auctor arcu arcu, vitae tempus velit convallis vitae. Duis eleifend tristique hendrerit. Maecenas quis arcu condimentum, tristique enim ullamcorper, facilisis ante. Pellentesque aliquet suscipit enim, quis posuere ante mattis eget. Duis cursus laoreet nibh, et pretium dolor scelerisque at. Integer varius magna enim, sit amet fermentum lorem pulvinar ut.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec tristique, massa quis pulvinar porta, libero quam mattis leo, quis posuere quam sapien lacinia augue. Mauris in orci sit amet lorem pharetra pretium bibendum a quam. Pellentesque tristique odio lorem. Nullam dictum tristique augue, eget dignissim nisi imperdiet sed. Sed in elit at risus porta mattis vel ut orci. Pellentesque in arcu elit. Pellentesque imperdiet libero vitae justo hendrerit, non faucibus est auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris ac bibendum erat. Morbi ut sem odio. In non elit et massa efficitur convallis. Maecenas tempor tempus magna, sit amet pretium erat. Phasellus molestie tellus nibh, et mollis nisl convallis a. Proin varius nisl facilisis, malesuada ligula vitae, interdum lectus. Etiam fermentum nibh non purus bibendum, eget eleifend felis sagittis. Aliquam erat volutpat. Nulla tincidunt libero vel auctor vestibulum. Fusce imperdiet turpis vel ipsum mollis dictum. Suspendisse ullamcorper congue ullamcorper. Maecenas velit tellus, porttitor nec venenatis et, condimentum nec felis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis nec ligula a dui mollis tempus. Sed ipsum massa, ornare in mauris ultricies, gravida suscipit ipsum. Sed sagittis enim leo, molestie rutrum ligula placerat in. Nullam tincidunt a orci semper cursus. Sed mauris ipsum, ultrices in posuere at, tincidunt quis orci. Fusce id massa sagittis, pretium est et, fringilla arcu. Morbi tempor et velit in tempus. Cras faucibus urna ac diam pulvinar, quis rhoncus lorem dictum. Praesent pulvinar nec sem vel aliquam. Maecenas vitae massa ante. Phasellus luctus tempor convallis. Suspendisse at justo nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin dignissim massa quis ligula tempus, sed blandit lorem maximus. Curabitur finibus metus id magna tincidunt egestas. Morbi scelerisque enim nec nisi tempus posuere. Integer interdum, mi ac congue dignissim, lorem nunc tincidunt dui, nec tincidunt mauris ligula ac libero. Pellentesque luctus neque magna, ac finibus lacus malesuada sed. Nam lacinia ex in pharetra pretium. Cras eget porttitor orci, ut tincidunt turpis. Sed id lacus faucibus, bibendum dui id, consequat sapien. Vivamus in turpis sed diam pulvinar sollicitudin. Phasellus mattis sodales quam, nec condimentum nibh consectetur quis. Suspendisse quis semper mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis non faucibus mi.</p>\n<!-- /wp:paragraph -->', 'Nullam tincidunt a orci semper cursus', '', 'inherit', 'closed', 'closed', '', '155-revision-v1', '', '', '2021-07-27 05:18:16', '2021-07-27 09:18:16', '', 155, 'https://react-dev1.wp.wellnessliving.local/?p=156', 0, 'revision', '', 0),
(185, 1, '2021-08-19 08:05:36', '2021-08-19 12:05:36', '', 'Custom PAGE', '', 'publish', 'closed', 'closed', '', 'custom-page', '', '', '2021-08-19 08:05:37', '2021-08-19 12:05:37', '', 0, 'https://react-dev1.wp.wellnessliving.local/custom-page/', 0, 'page', '', 0),
(186, 1, '2021-08-19 08:05:37', '2021-08-19 12:05:37', '', 'Custom PAGE', '', 'inherit', 'closed', 'closed', '', '185-revision-v1', '', '', '2021-08-19 08:05:37', '2021-08-19 12:05:37', '', 185, 'https://react-dev1.wp.wellnessliving.local/?p=186', 0, 'revision', '', 0),
(187, 1, '2021-12-02 05:34:11', '2021-08-19 12:05:49', ' ', '', '', 'publish', 'closed', 'closed', '', '187', '', '', '2021-12-02 05:34:11', '2021-12-02 10:34:11', '', 0, 'https://react-dev1.wp.wellnessliving.local/?p=187', 17, 'nav_menu_item', '', 0),
(188, 1, '2021-12-02 05:34:11', '2021-08-19 13:15:58', '', 'Google', '', 'publish', 'closed', 'closed', '', 'google', '', '', '2021-12-02 05:34:11', '2021-12-02 10:34:11', '', 0, 'https://react-dev1.wp.wellnessliving.local/?p=188', 18, 'nav_menu_item', '', 0),
(189, 1, '2021-12-02 05:34:10', '2021-08-19 13:16:55', '', 'Apple', '', 'publish', 'closed', 'closed', '', 'google-2', '', '', '2021-12-02 05:34:10', '2021-12-02 10:34:10', '', 0, 'https://react-dev1.wp.wellnessliving.local/?p=189', 8, 'nav_menu_item', '', 0),
(191, 1, '2021-08-26 10:05:01', '2021-08-26 14:05:01', '', 'Receipt', '', 'publish', 'closed', 'closed', '', 'receipt', '', '', '2021-08-26 10:05:01', '2021-08-26 14:05:01', '', 0, 'https://react-dev1.wp.wellnessliving.local/receipt/', 0, 'page', '', 0),
(192, 1, '2021-08-26 10:05:01', '2021-08-26 14:05:01', '', 'Receipt', '', 'inherit', 'closed', 'closed', '', '191-revision-v1', '', '', '2021-08-26 10:05:01', '2021-08-26 14:05:01', '', 191, 'https://react-dev1.wp.wellnessliving.local/?p=192', 0, 'revision', '', 0),
(194, 1, '2021-09-03 11:04:04', '2021-09-03 15:04:04', '', 'Success registration', '', 'publish', 'closed', 'closed', '', 'success-registration', '', '', '2021-09-03 11:04:04', '2021-09-03 15:04:04', '', 0, 'https://react-dev1.wp.wellnessliving.local/success-registration/', 0, 'page', '', 0),
(195, 1, '2021-09-03 11:04:04', '2021-09-03 15:04:04', '', 'Success registration', '', 'inherit', 'closed', 'closed', '', '194-revision-v1', '', '', '2021-09-03 11:04:04', '2021-09-03 15:04:04', '', 194, 'https://react-dev1.wp.wellnessliving.local/?p=195', 0, 'revision', '', 0),
(198, 1, '2021-09-15 08:17:38', '2021-09-15 12:17:38', '', 'harry-potter', '', 'inherit', 'open', 'closed', '', 'harry-potter', '', '', '2021-09-15 08:17:38', '2021-09-15 12:17:38', '', 0, 'https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/09/harry-potter.jpg', 0, 'attachment', 'image/jpeg', 0),
(201, 1, '2021-09-22 07:10:56', '2021-09-22 11:10:56', '<!-- wp:heading -->\n<h2>Blog</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Blog ipsum dolor sit posts, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Blog ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna Blog. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit, blog do posts tempor incididunt ut labore et dolore magna.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Blog</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Blog ipsum dolor sit posts, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Blog ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna Blog. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit, blog do posts tempor incididunt ut labore et dolore magna.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Blog</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Blog ipsum dolor sit posts, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Blog ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna Blog. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit, blog do posts tempor incididunt ut labore et dolore magna.</p>\n<!-- /wp:paragraph -->', 'Blog', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2021-09-22 07:10:56', '2021-09-22 11:10:56', '', 43, 'https://react-dev1.wp.wellnessliving.local/?p=201', 0, 'revision', '', 0),
(203, 1, '2021-09-22 07:12:56', '2021-09-22 11:12:56', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2021-09-22 07:12:56', '2021-09-22 11:12:56', '', 43, 'https://react-dev1.wp.wellnessliving.local/?p=203', 0, 'revision', '', 0),
(205, 1, '2021-09-22 07:15:56', '2021-09-22 11:15:56', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim <a href=\"https://google.com\" target=\"_blank\" data-type=\"URL\" data-id=\"https://google.com\" rel=\"noreferrer noopener nofollow\" class=\"rank-math-link\">veniam</a>, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'Blog', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2021-09-22 07:15:56', '2021-09-22 11:15:56', '', 43, 'https://react-dev1.wp.wellnessliving.local/?p=205', 0, 'revision', '', 0),
(207, 1, '2021-09-22 07:19:11', '2021-09-22 11:19:11', '<!-- wp:paragraph -->\n<p>Blog wellnessliving dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim <a href=\"https://google.com\" target=\"_blank\" data-type=\"URL\" data-id=\"https://google.com\" rel=\"noreferrer noopener nofollow\" class=\"rank-math-link\">veniam</a>, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in post velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Blog wellnessliving dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim <a href=\"https://google.com/\" target=\"_blank\" rel=\"noreferrer noopener\">veniam</a>, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in post velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Blog wellnessliving dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim <a href=\"https://google.com/\" target=\"_blank\" rel=\"noreferrer noopener\">veniam</a>, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in post velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Blog wellnessliving dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim <a href=\"https://google.com/\" target=\"_blank\" rel=\"noreferrer noopener\">veniam</a>, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in post velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Blog wellnessliving dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim <a href=\"https://google.com/\" target=\"_blank\" rel=\"noreferrer noopener\">veniam</a>, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in post velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Blog wellnessliving dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim <a href=\"https://google.com/\" target=\"_blank\" rel=\"noreferrer noopener\">veniam</a>, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in post velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Blog wellnessliving dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim <a href=\"https://google.com/\" target=\"_blank\" rel=\"noreferrer noopener\">veniam</a>, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in post velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Blog wellnessliving dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim <a href=\"https://google.com/\" target=\"_blank\" rel=\"noreferrer noopener\">veniam</a>, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in post velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Blog wellnessliving dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim <a href=\"https://google.com/\" target=\"_blank\" rel=\"noreferrer noopener\">veniam</a>, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim <a href=\"https://google.com/\" target=\"_blank\" rel=\"noreferrer noopener\">veniam</a>, quis nostrud exercitation ullamco laboris nisi ut aliquip ex.</p>\n<!-- /wp:paragraph -->', 'Blog', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2021-09-22 07:19:11', '2021-09-22 11:19:11', '', 43, 'https://react-dev1.wp.wellnessliving.local/?p=207', 0, 'revision', '', 0),
(208, 1, '2021-09-22 08:18:24', '2021-09-22 12:18:24', '<!-- wp:paragraph -->\n<p>Blog wellnessliving dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim <a href=\"https://google.com\" target=\"_blank\" data-type=\"URL\" data-id=\"https://google.com\" rel=\"noreferrer noopener nofollow\" class=\"rank-math-link\">veniam</a>, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in post velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Blog wellnessliving dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim <a href=\"https://google.com/\" target=\"_blank\" rel=\"noreferrer noopener\">veniam</a>, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in post velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":114,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/pacific-ocean-1920x1080-5k-4k-wallpaper-big-sur-california-beach-389-1024x576.jpg\" alt=\"\" class=\"wp-image-114\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Blog wellnessliving dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim <a href=\"https://google.com/\" target=\"_blank\" rel=\"noreferrer noopener\">veniam</a>, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in post velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Blog wellnessliving dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim <a href=\"https://google.com/\" target=\"_blank\" rel=\"noreferrer noopener\">veniam</a>, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in post velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Blog wellnessliving dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim <a href=\"https://google.com/\" target=\"_blank\" rel=\"noreferrer noopener\">veniam</a>, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in post velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Blog wellnessliving dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim <a href=\"https://google.com/\" target=\"_blank\" rel=\"noreferrer noopener\">veniam</a>, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in post velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Blog wellnessliving dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim <a href=\"https://google.com/\" target=\"_blank\" rel=\"noreferrer noopener\">veniam</a>, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in post velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Blog wellnessliving dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim <a href=\"https://google.com/\" target=\"_blank\" rel=\"noreferrer noopener\">veniam</a>, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in post velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Blog wellnessliving dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim <a href=\"https://google.com/\" target=\"_blank\" rel=\"noreferrer noopener\">veniam</a>, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Ut enim ad minim <a href=\"https://google.com/\" target=\"_blank\" rel=\"noreferrer noopener\">veniam</a>, quis nostrud exercitation ullamco laboris nisi ut aliquip ex.</p>\n<!-- /wp:paragraph -->', 'Blog', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2021-09-22 08:18:24', '2021-09-22 12:18:24', '', 43, 'https://react-dev1.wp.wellnessliving.local/?p=208', 0, 'revision', '', 0),
(209, 1, '2021-09-22 08:51:27', '2021-09-22 12:51:27', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":117,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/07/samurai-anime-minimal-1024x576.jpg\" alt=\"\" class=\"wp-image-117\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'FAQ', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2021-09-22 08:51:27', '2021-09-22 12:51:27', '', 39, 'https://react-dev1.wp.wellnessliving.local/?p=209', 0, 'revision', '', 0),
(212, 1, '2021-10-04 08:08:14', '2021-10-04 12:08:14', '', 'cart-test', '', 'inherit', 'open', 'closed', '', 'cart-test', '', '', '2021-10-04 08:08:14', '2021-10-04 12:08:14', '', 0, 'https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/10/cart-test.png', 0, 'attachment', 'image/png', 0),
(213, 1, '2021-10-04 10:06:42', '2021-10-04 14:06:42', '', 'Arrow_down_red.svg', '', 'inherit', 'open', 'closed', '', 'arrow_down_red-svg', '', '', '2021-10-04 10:06:42', '2021-10-04 14:06:42', '', 0, 'https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/10/Arrow_down_red.svg_.png', 0, 'attachment', 'image/png', 0),
(214, 1, '2021-12-02 05:35:13', '2021-10-07 11:17:50', ' ', '', '', 'publish', 'closed', 'closed', '', '214', '', '', '2021-12-02 05:35:13', '2021-12-02 10:35:13', '', 0, 'https://react-dev1.wp.wellnessliving.local/?p=214', 1, 'nav_menu_item', '', 0),
(215, 1, '2021-12-02 05:35:13', '2021-10-07 11:17:50', ' ', '', '', 'publish', 'closed', 'closed', '', '215', '', '', '2021-12-02 05:35:13', '2021-12-02 10:35:13', '', 0, 'https://react-dev1.wp.wellnessliving.local/?p=215', 3, 'nav_menu_item', '', 0),
(216, 1, '2021-12-02 05:35:13', '2021-10-07 11:17:50', ' ', '', '', 'publish', 'closed', 'closed', '', '216', '', '', '2021-12-02 05:35:13', '2021-12-02 10:35:13', '', 0, 'https://react-dev1.wp.wellnessliving.local/?p=216', 4, 'nav_menu_item', '', 0),
(217, 1, '2021-12-02 05:35:13', '2021-10-07 11:33:51', ' ', '', '', 'publish', 'closed', 'closed', '', '217', '', '', '2021-12-02 05:35:13', '2021-12-02 10:35:13', '', 0, 'https://react-dev1.wp.wellnessliving.local/?p=217', 2, 'nav_menu_item', '', 0),
(220, 1, '2021-10-20 06:32:06', '2021-10-20 10:32:06', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2021-10-20 06:32:06', '2021-10-20 10:32:06', '', 0, 'https://react-dev1.wp.wellnessliving.local/wp-content/uploads/sites/2/2021/10/4.webp', 0, 'attachment', 'image/webp', 0),
(227, 1, '2021-11-15 05:03:32', '2021-11-15 10:03:32', '', 'constructor_wl', '', 'publish', 'closed', 'closed', '', 'constructor_wl', '', '', '2021-11-17 08:50:18', '2021-11-17 13:50:18', '', 0, 'https://react-dev1.wp.wellnessliving.local/constructor_wl/', 0, 'custom_css', '', 0);
INSERT INTO `wp_2_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(228, 1, '2021-11-15 05:03:32', '2021-11-15 10:03:32', '.css-fitness .page-inner-container .css-section-booking .css-staff-row .css-toggle-tab:hover .css-img-staff:before, .css-fitness .page-inner-container .css-section-booking .css-staff-row .css-toggle-tab.js-selected .css-img-staff:before {\n	border-color: #B2B2B2;\n}\n.css-fitness .page-inner-container .css-section-booking .css-staff-row .css-toggle-tab .css-staff-position {\n	color: #B2B2B2;\n}\n.css-fitness .page-inner-container .css-gift-card-content .ant-tabs .ant-tabs-nav .ant-tabs-nav-wrap .ant-tabs-tab.ant-tabs-tab-active {\n	background-color: #B2B2B2;\n  border-color: #B2B2B2;\n}\n\n.css-fitness .page-inner-container .css-gift-card-content .css-gift-card-gallery .css-row-gift-card-gallery.css-row .css-row-col img.css-selected {\n  border-color: #B2B2B2;	\n}\n.css-fitness .css-footer-bottom .css-footer-inner a.css-footer-col {\n	flex-basis:auto;\n}\n.css-fitness .page-inner-container .css-number-input .ant-input-number .ant-input-number-handler-wrap .ant-input-number-handler-up:hover .ant-input-number-handler-up-inner, .css-fitness .ant-modal-content .css-number-input .ant-input-number .ant-input-number-handler-wrap .ant-input-number-handler-up:hover .ant-input-number-handler-up-inner, .css-fitness .page-inner-container .css-number-input .ant-input-number .ant-input-number-handler-wrap .ant-input-number-handler-down:hover .ant-input-number-handler-down-inner, .css-fitness .ant-modal-content .css-number-input .ant-input-number .ant-input-number-handler-wrap .ant-input-number-handler-down:hover .ant-input-number-handler-down-inner {\n	color: #B2B2B2 !important;\n}\n.css-fitness .page-inner-container .css-btn-schedule {\n	background-color: #000;\n}\n.css-fitness .css-btn-schedule:disabled, .css-fitness .css-btn-schedule.css-disabled {\n	background-color: #808080 !important;\n}\n.css-fitness .page-inner-container .css-schedule-section .css-schedule-day .ant-table-container table > tbody > tr td .css-img-and-title .css-title,\n.ant-table-tbody > tr > td a,\n.ant-table-tbody > tr > td a:hover,\n.css-fitness .page-inner-container .css-section-result .css-section-result-content p,\n.css-detail-page .css-detail-content .css-detail-description .css-btn-show-more {\n	color: #B2B2B2;\n}\n.css-fitness .page-inner-container .css-booking-session-wrapper .css-single-session-box {\n	border-color: #B2B2B2;\n}\n.css-fitness .page-inner-container .css-booking-session-wrapper .css-title-row > span,\n.css-fitness .page-inner-container .css-booking-session-wrapper .css-price,\n.css-fitness .page-inner-container .css-booking-session-wrapper .css-item-add,\n.css-fitness .page-inner-container .css-purchase-row .css-purchase-item .css-purchase-details .css-toggle-text-link,\n.css-fitness .page-inner-container .css-purchase-item .css-price,\n.css-fitness .page-inner-container .css-cart .css-row-col .css-row-wrapper .css-sum{\n	color: #B2B2B2;\n}\n\n.css-fitness .page-inner-container .css-booking-schedule .css-schedule-filters .css-calendar-wrapper:hover {\n	background-color: #B2B2B2;\n}\n.css-fitness .page-inner-container .css-booking-schedule .css-booking-schedule-wrapper .css-booking-schedule-box .css-detail-content .css-detail-date {\n	color: #B2B2B2;\n}\n.css-fitness .page-inner-container .css-booking-schedule .css-booking-schedule-wrapper .css-cart .css-row-sessions-price .css-heading-h3 {\n	color: #B2B2B2;\n}\n.css-fitness .css-booking-schedule .css-schedule-filters .css-filter-view-all {\n	color: #B2B2B2;\n}\n.css-fitness .ant-modal-body > .ant-row.css-modal-popup {\n	overflow: auto;\n}\n.css-reviews .css-single-review-box .css-read-more-btn {\n	color: #B2B2B2;\n}\n.ant-tabs-tab-btn:focus, .ant-tabs-tab-remove:focus, .ant-tabs-tab-btn:active, .ant-tabs-tab-remove:active {\n	color: #B2B2B2 !important;\n}\n.css-fitness .page-inner-container .css-section-page404-wrapper .css-text-404 {\n	color: #B2B2B2;\n}\n.css-fitness .page-inner-container .css-section-application-image-bg {\n	background-color: #B2B2B2;\n}\n.css-fitness .page-inner-container .css-booking-location .css-detail-content .css-detail-addition .css-detail-instructor {\n	color: #B2B2B2;\n}\n.css-fitness .page-inner-container .css-breadcrumbs:hover, .css-fitness .page-inner-container .css-breadcrumbs:active {\n	color: #B2B2B2;\n}\n.css-fitness .page-inner-container .css-tabs-links .css-tabs-item:hover {\n	background-color: #B2B2B2 !important;\n	border-color: #B2B2B2 !important;\n}\n.css-fitness .page-inner-container .ant-input-search .ant-input-search-button .anticon-search, .css-fitness .ant-modal-content .ant-input-search .ant-input-search-button .anticon-search {\n	color: #B2B2B2 !important;\n}\n.css-fitness .page-inner-container  .css-btn-load-more {\n	background-color: #B2B2B2;\n}\n.page-inner-container .css-our-classes-section .css-our-classes-list .css-our-classes-item-wrapper .css-our-classes-item.css-our-classes-item-more .css-our-classes-item-data .css-link-more {\n	top: 0;\n	bottom: 0;\n	left: 0;\n	right: 0;\n	width: 100%;\n	height: 100%;\n	border-radius: 50%;\n	transform: none;\n}\n\n.css-fitness .ant-modal-root .ant-modal-mask {\n	background-color: rgba(0,0,0, .6);\n} \n\n.css-our-classes-section .css-our-classes-list .css-our-classes-item-wrapper .css-our-classes-item.css-our-classes-item-more .css-our-classes-item-data .css-our-classes-item-content .css-our-classes-item-title {\n	top: 50% !important;\n}\n.css-schedule-section .css-schedule-day .ant-table-cell:nth-child(6) {\n	display: none;\n}\n.css-modal-info-wrapper .ant-modal {\n	transform: none !important;\n}\n\n.css-modal-info-wrapper:not(.ant-modal-centered) .ant-modal {\n	top: 50% !important;\n	margin-top: -30vh;\n}\n\n.css-modal-info-wrapper .ant-modal-footer {\n	padding: 0;\n}\n.css-fitness .css-checkbox-tabs .css-checkbox-tab .ant-checkbox-wrapper:hover {\n  background-color: #B2B2B2 !important;\n	border-color: #B2B2B2 !important;\n}\n.css-fitness .css-post-content a,\n.css-fitness .css-post-content a:hover {\n  color: #B2B2B2;\n}\n.css-section-our-story-yoga .css-section-our-story .css-toggle-text-link {\n  color: #B2B2B2 !important;\n}\n.css-fitness .page-inner-container .ant-radio-checked .ant-radio-inner, .css-fitness .ant-popover .ant-radio-checked .ant-radio-inner, .css-fitness .page-inner-container .ant-radio-wrapper:hover .ant-radio, .css-fitness .ant-popover .ant-radio-wrapper:hover .ant-radio, .css-fitness .page-inner-container .ant-radio:hover .ant-radio-inner, .css-fitness .ant-popover .ant-radio:hover .ant-radio-inner, .css-fitness .page-inner-container .ant-radio-input:focus + .ant-radio-inner, .css-fitness .ant-popover .ant-radio-input:focus + .ant-radio-inner, .css-fitness .page-inner-container .ant-radio-checked::after, .css-fitness .ant-popover .ant-radio-checked::after {\n  border-color: #B2B2B2 !important;\n}\n\n.css-fitness .page-inner-container .ant-radio-inner::after, .css-fitness .ant-popover .ant-radio-inner::after {\n  background-color: #B2B2B2 !important;\n}\n.css-fitness .ant-picker-dropdown .ant-picker-panel-container .ant-picker-panel .ant-picker-month-panel .ant-picker-header .ant-picker-header-super-prev-btn:before, .css-fitness .ant-picker-dropdown .ant-picker-panel-container .ant-picker-panel .ant-picker-year-panel .ant-picker-header .ant-picker-header-super-prev-btn:before, .css-fitness .ant-picker-dropdown .ant-picker-panel-container .ant-picker-panel .ant-picker-decade-panel .ant-picker-header .ant-picker-header-super-prev-btn:before, .css-fitness .ant-picker-dropdown .ant-picker-panel-container .ant-picker-panel .ant-picker-month-panel .ant-picker-header .ant-picker-header-super-next-btn:before, .css-fitness .ant-picker-dropdown .ant-picker-panel-container .ant-picker-panel .ant-picker-year-panel .ant-picker-header .ant-picker-header-super-next-btn:before, .css-fitness .ant-picker-dropdown .ant-picker-panel-container .ant-picker-panel .ant-picker-decade-panel .ant-picker-header .ant-picker-header-super-next-btn:before {\n  color: #B2B2B2 !important;\n}\n\n.css-fitness .ant-picker-dropdown .ant-picker-panel-container .ant-picker-panel .ant-picker-month-panel .ant-picker-body .ant-picker-content .ant-picker-cell.ant-picker-cell-selected .ant-picker-cell-inner, .css-fitness .ant-picker-dropdown .ant-picker-panel-container .ant-picker-panel .ant-picker-year-panel .ant-picker-body .ant-picker-content .ant-picker-cell.ant-picker-cell-selected .ant-picker-cell-inner, .css-fitness .ant-picker-dropdown .ant-picker-panel-container .ant-picker-panel .ant-picker-decade-panel .ant-picker-body .ant-picker-content .ant-picker-cell.ant-picker-cell-selected .ant-picker-cell-inner,\n.css-fitness .ant-picker-dropdown .ant-picker-panel-container .ant-picker-panel .ant-picker-month-panel .ant-picker-body .ant-picker-content .ant-picker-cell .ant-picker-cell-inner:hover, .css-fitness .ant-picker-dropdown .ant-picker-panel-container .ant-picker-panel .ant-picker-year-panel .ant-picker-body .ant-picker-content .ant-picker-cell .ant-picker-cell-inner:hover, .css-fitness .ant-picker-dropdown .ant-picker-panel-container .ant-picker-panel .ant-picker-decade-panel .ant-picker-body .ant-picker-content .ant-picker-cell .ant-picker-cell-inner:hover,\n.css-fitness .css-schedule-filters-list-wrapper .css-schedule-filters-list .ant-tabs .ant-tabs-content-holder .css-schedule-filters-data-list-wrapper .css-schedule-filters-data-list .ant-checkbox-wrapper:hover,\n.css-fitness .css-schedule-filters-list-wrapper .css-schedule-filters-list .ant-tabs .ant-tabs-content-holder .css-schedule-filters-data-list-wrapper .css-schedule-filters-data-list .ant-checkbox-wrapper:hover .ant-checkbox .ant-checkbox-inner{\n  background-color: #B2B2B2 !important;\n}\n.css-fitness .page-inner-container .css-schedule-section .css-schedule-calendar .css-schedule-calendar-time .css-time-triangle {\n  border-left-color: #B2B2B2;\n}\n\n.css-fitness .page-inner-container .css-schedule-section .css-schedule-calendar .css-schedule-calendar-content .css-time-line,\n.css-fitness .ant-picker-dropdown .ant-picker-panel-container .ant-picker-panel .ant-picker-year-panel .ant-picker-body .ant-picker-content .ant-picker-cell .ant-picker-cell-inner:hover\n{\n  background-color: #B2B2B2;\n}\n\n.css-fitness .page-inner-container .css-schedule-section .ant-picker-calendar .ant-picker-panel .ant-picker-body tbody .ant-picker-cell.ant-picker-cell-today .ant-picker-cell-inner .ant-picker-calendar-date-value {\n  color: #B2B2B2;\n}\n\n.css-fitness .page-inner-container .css-btn-primary,\n.css-fitness .ant-modal-wrap .css-btn-primary\n{\n  background-color: #B2B2B2;\n}\n.css-fitness .css-header .css-menu-item > a.css-menu-link:hover,\n.css-fitness .css-header .css-menu-item > a.css-menu-link.js-active,\n.css-header .css-content .css-header-login-menu .css-menu-link.css-link-login> a.js-active,\n.css-fitness .css-header .css-content .css-header-login-menu .css-link-cart > a.js-active,\n.css-fitness .css-header .css-content .css-header-login-menu .css-link-cart > a:hover,\n.css-fitness .css-header .css-content .css-header-login-menu .css-link-login > a:hover,\n.css-fitness .css-header .css-menu-box .css-menu-box-main:hover span,\n.css-fitness .css-header .css-menu-box .css-submenu-list .css-submenu-link:hover {\n  color: #B2B2B2 !important;\n}\n\n.css-fitness .css-section-application .css-section-application-counter,\n.css-fitness .css-section-application .css-section-application-block {\n  position: relative;\n  z-index: 1;\n  background: transparent;\n}\n\n\n.css-fitness .css-section-application:before {\n  position: absolute;\n  content: \'\';\n  top: 56px;\n  bottom: 56px;\n  width: 100%;\n  background-image: none;\n  background-size: cover;\n  z-index: 0;\n}\n\n.css-fitness .css-booking-list .css-section-card .css-card-item .css-buttons-box .css-btn-text:hover {\n  color: #B2B2B2;\n}\n\n.css-cart .css-row-item-wrapper .css-icon-trash-can-wrapper:hover::before, .css-cart .css-row-item-wrapper .css-icon-trash-can-wrapper:hover::after {\n  display: none;\n}\n\n.css-fitness .css-footer .css-footer-col-social .css-social-links a:hover,\n.css-fitness .css-footer-menu .css-footer-item .css-link:hover,\n.css-fitness .css-schedule-section .css-content .css-pdf-download,\n.css-fitness .page-inner-container .css-toggle-tab:hover, .css-fitness .page-inner-container .css-toggle-tab.js-selected,\n.css-fitness .page-inner-container .css-breadcrumbs i,\n.css-fitness .page-inner-container .css-booking-steps-wrapper .css-booking-steps-item.js-active,\n.css-fitness .page-inner-container .css-section-booking .css-booking-calendar-wrapper .css-calendar-wrapper .css-calendar-header .css-calendar-prev, .css-fitness .page-inner-container .css-section-booking .css-booking-calendar-wrapper .css-calendar-wrapper .css-calendar-header .css-calendar-next,\n.css-fitness .page-inner-container .css-section-booking .css-booking-calendar-wrapper .css-calendar-wrapper .css-calendar-header .css-calendar-title,\n.css-fitness .page-inner-container .css-section-booking .css-booking-calendar-wrapper .css-calendar-wrapper .css-calendar-header .css-calendar-title:hover,\n.css-fitness .page-inner-container .css-section-booking .css-booking-calendar-wrapper .css-calendar-wrapper .css-calendar-body .css-calendar-days-wrapper .css-calendar-day.css-available:hover,\n.css-fitness .page-inner-container  .css-btn-text,\n.css-fitness .page-inner-container .css-section-contract .css-box-signature .css-icon-close,\n.css-fitness .page-inner-container .css-section-contract .css-checkbox-box .popover-link,\n.css-fitness .page-inner-container .css-breadcrumbs:hover i, .css-fitness .css-breadcrumbs:active i,\n.css-fitness .page-inner-container .css-section-booking .css-checkout-subsection .css-booking-summary-cart .css-price, .css-fitness .page-inner-container .css-section-booking .css-review-cart-wrapper .css-booking-summary-cart .css-price,\n.css-fitness .page-inner-container .css-cart .ant-form-item-control-input-content .ant-input-affix-wrapper .ant-input-suffix,\n.css-fitness .page-inner-container .css-footer-top .css-footer-col .css-footer-location-info .css-link:hover,\n.css-fitness .ant-popover-content .css-btn-text {\n  color: #B2B2B2;\n}\n\n.css-fitness .page-inner-container .css-section-booking .css-booking-calendar-wrapper .css-calendar-wrapper .css-calendar-body .css-calendar-days-wrapper .css-calendar-day.css-current span,\n.css-fitness .page-inner-container .css-content .ant-checkbox-wrapper .ant-checkbox .ant-checkbox-inner, .css-fitness .ant-popover .ant-popover-content  .ant-checkbox-wrapper .ant-checkbox .ant-checkbox-inner,\n.css-fitness .page-inner-container .css-content .ant-checkbox-wrapper .ant-checkbox-checked .ant-checkbox-inner::after, .css-fitness .ant-popover .ant-popover-content .ant-checkbox-wrapper .ant-checkbox-checked .ant-checkbox-inner::after,\n.css-fitness .page-inner-container .css-purchase-row .css-purchase-item.js-selected .css-purchase-info:before,\n.css-fitness .page-inner-container .css-purchase-row .css-purchase-item .css-purchase-info:after,\n\n.css-fitness .page-inner-container .css-content .ant-checkbox-wrapper .ant-checkbox .ant-checkbox-inner, .css-fitness  .ant-popover .ant-popover-content .ant-checkbox-wrapper .ant-checkbox .ant-checkbox-inner {\n  border-color: #B2B2B2;\n}\n\n.css-fitness .page-inner-container .ant-form-item-control-input-content #sign_in_remember > div >div {\n  border-color: #B2B2B2 !important;\n}\n\n.css-fitness .page-inner-container .ant-form-item-control-input-content #sign_in_remember > div >div svg {\n  stroke: #B2B2B2 !important;\n}\n\n.css-fitness .css-section-card .css-card-item .css-buttons-box .css-btn-border:hover,\n.css-fitness .page-inner-container .css-section-booking .css-booking-calendar-wrapper .css-calendar-wrapper .css-calendar-body .css-calendar-days-wrapper .css-calendar-day.css-active span,\n.css-fitness .ant-popover-content .css-schedule-filters-list-wrapper .css-schedule-filters-list .ant-tabs .ant-tabs-nav .ant-tabs-nav-wrap .ant-tabs-nav-list .ant-tabs-ink-bar,\n.css-fitness .ant-popover-content .css-schedule-filters-list-wrapper .css-schedule-filters-list .ant-tabs .ant-tabs-nav .ant-tabs-nav-wrap .ant-tabs-nav-list .ant-tabs-tab:hover::before,\n.css-fitness .ant-popover-content .css-btn-primary {\n  background-color: #B2B2B2;\n}\n\n.css-fitness .css-schedule-section .css-schedule-filters .css-calendar-wrapper .css-btn-rectangular,\n.css-fitness .css-schedule-section .css-schedule-filters .css-btn-rectangular.js-selected,\n.css-fitness .css-schedule-section .css-btn-rectangular:hover, .css-fitness .css-btn-rectangular:active,\n.css-fitness .css-schedule-section .css-schedule-filters .css-schedule-filters-orientation .css-schedule-filters-btn:hover, .css-fitness .css-schedule-section .css-schedule-filters .css-schedule-filters-orientation .css-schedule-filters-btn.ant-popover-open,\n.css-fitness .page-inner-container .css-section-booking .css-start-time .css-toggle-tab:hover, .css-fitness .page-inner-container .css-section-booking .css-start-time .css-toggle-tab.js-selected,\n.css-fitness .page-inner-container .css-checkout-subsection .css-payment-method .css-payment-method-tabs-wrapper .css-toggle-tab:hover, .css-fitness .page-inner-container .css-checkout-subsection .css-payment-method .css-payment-method-tabs-wrapper .css-toggle-tab.js-selected {\n  background-color: #B2B2B2;\n  border: 1px solid #B2B2B2;\n}\n\n.css-fitness .ant-picker-dropdown .ant-picker-panel-container .ant-picker-panel .ant-picker-date-panel .ant-picker-header .ant-picker-header-prev-btn:before, .css-fitness .ant-picker-dropdown .ant-picker-panel-container .ant-picker-panel .ant-picker-date-panel .ant-picker-header .ant-picker-header-next-btn:before,\n.css-fitness .css-store-main .css-section-card .css-card-item-wrapper .css-card-item .css-heading-h3:hover,\n.css-fitness .css-store-main .css-heading-with-search .ant-input-search .ant-input-affix-wrapper .ant-input-suffix .ant-input-clear-icon:hover::after,\n.css-fitness .css-cart .css-row-col .css-row-wrapper .css-icon-trash-can-wrapper .css-icon-trash-can::before,\n.css-fitness .css-cart .ant-form-item-control-input-content .ant-input-affix-wrapper .ant-input-suffix,\n.css-fitness .css-cart .css-row-col .css-row-wrapper .css-icon-trash-can-wrapper .css-icon-trash-can::before,\n.css-fitness .css-select-no-border-dropdown .ant-select-item-option-active,\n.css-fitness .page-inner-container .css-profile-section-form .css-profile-section-form-userinfo .css-profile-section-img-container .css-avatar-uploader .ant-upload-select-picture-card span::before,\n.css-fitness .css-footer-top .css-footer-col .css-footer-location-info .css-link:hover {\n  color: #B2B2B2 !important;\n}\n\n.css-fitness .ant-picker-dropdown .ant-picker-panel-container .ant-picker-panel .ant-picker-date-panel .ant-picker-body .ant-picker-content .ant-picker-cell.ant-picker-cell-today .ant-picker-cell-inner {\n  border-color: #B2B2B2 !important;\n}\n\n.css-fitness .ant-picker-dropdown .ant-picker-panel-container .ant-picker-panel .ant-picker-date-panel .ant-picker-body .ant-picker-content .ant-picker-cell .ant-picker-cell-inner:hover,\n.css-fitness .ant-picker-dropdown .ant-picker-panel-container .ant-picker-panel .ant-picker-date-panel .ant-picker-body .ant-picker-content .ant-picker-cell.ant-picker-cell-selected .ant-picker-cell-inner,\n.css-fitness .css-header .css-header-login-menu .css-link-cart .css-counter,\n.css-fitness .css-cart .css-counter-wrapper .css-counter,\n.css-fitness .css-cart .css-quantity-box .css-icon-wrapper .css-icon-minus:hover,\n.css-fitness .css-cart .css-quantity-box .css-icon-wrapper .css-icon-plus:hover,\n.css-fitness .page-inner-container .css-profile-section-form .css-input-search .css-btn-border {\n  background: #B2B2B2 !important;\n}\n\n.css-fitness .css-section-our-story .css-row-article {\n  box-shadow: -7px 8px 30px 0 rgb(103 103 103 / 12%);\n}\n\n.css-fitness .css-section-our-story .css-mission-block + .css-row-article {\n  box-shadow: none;\n}\n\n@media screen and (min-width: 992px) {\n  .css-fitness .css-header .css-menu-item > a .css-menu-link-line, .css-fitness .css-header .css-menu-box-main .css-menu-link-line, .css-fitness .css-header .css-header-login-menu .css-link-cart > a .css-menu-link-line, .css-fitness .css-header .css-header-login-menu .css-link-login > a .css-menu-link-line {	\n		pointer-events: none;\n}\n  .page-inner-container .css-section-application .css-section-application-links .css-section-application-link:hover, .page-inner-container .css-section-application .css-section-application-links .css-btn-primary.ant-btn-sm:hover {\n    color: #B2B2B2;\n  }\n}\n\n@media (max-width: 991px) {\n  .css-fitness .css-section-application .css-section-application-counter {\n    display: none;\n  }\n}\n\n@media (max-width: 767px) {\n  .css-fitness .css-section-application-data .css-section-application-title {\n    text-align: center;\n  }\n\n  .css-fitness .css-section-contact-us .css-section-contact-us-btns .css-btn-widget {\n    padding-left: 20px;\n    padding-right: 20px;\n  }\n}', 'constructor_wl', '', 'inherit', 'closed', 'closed', '', '227-revision-v1', '', '', '2021-11-15 05:03:32', '2021-11-15 10:03:32', '', 227, 'https://react-dev1.wp.wellnessliving.local/?p=228', 0, 'revision', '', 0),
(230, 1, '2021-11-15 09:03:58', '2021-11-15 14:03:58', '', 'constructor_wl', '', 'inherit', 'closed', 'closed', '', '227-revision-v1', '', '', '2021-11-15 09:03:58', '2021-11-15 14:03:58', '', 227, 'https://react-dev1.wp.wellnessliving.local/?p=230', 0, 'revision', '', 0),
(232, 1, '2021-11-17 08:49:43', '2021-11-17 13:49:43', '{\n    \"custom_css[constructor_wl]\": {\n        \"value\": \".super-class {\\n\\tcolor: black;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-11-17 13:49:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '97c1ff9a-8b40-4ea7-84a1-b5982d2f932b', '', '', '2021-11-17 08:49:43', '2021-11-17 13:49:43', '', 0, 'https://react-dev1.wp.wellnessliving.local/97c1ff9a-8b40-4ea7-84a1-b5982d2f932b/', 0, 'customize_changeset', '', 0),
(233, 1, '2021-11-17 08:49:43', '2021-11-17 13:49:43', '.super-class {\n	color: black;\n}', 'constructor_wl', '', 'inherit', 'closed', 'closed', '', '227-revision-v1', '', '', '2021-11-17 08:49:43', '2021-11-17 13:49:43', '', 227, 'https://react-dev1.wp.wellnessliving.local/?p=233', 0, 'revision', '', 0),
(234, 1, '2021-11-17 08:50:18', '2021-11-17 13:50:18', '{\n    \"custom_css[constructor_wl]\": {\n        \"value\": \"\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-11-17 13:50:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f0c1ef5c-7750-4d8e-81c4-63d3065b3f23', '', '', '2021-11-17 08:50:18', '2021-11-17 13:50:18', '', 0, 'https://react-dev1.wp.wellnessliving.local/f0c1ef5c-7750-4d8e-81c4-63d3065b3f23/', 0, 'customize_changeset', '', 0),
(235, 1, '2021-11-17 08:50:18', '2021-11-17 13:50:18', '', 'constructor_wl', '', 'inherit', 'closed', 'closed', '', '227-revision-v1', '', '', '2021-11-17 08:50:18', '2021-11-17 13:50:18', '', 227, 'https://react-dev1.wp.wellnessliving.local/?p=235', 0, 'revision', '', 0),
(236, 1, '2021-11-19 10:04:48', '2021-11-19 15:04:48', '', 'Receipt', '', 'trash', 'closed', 'closed', '', 'receipt-2__trashed', '', '', '2021-11-19 10:05:33', '2021-11-19 15:05:33', '', 0, 'https://react-dev1.wp.wellnessliving.local/receipt-2/', 0, 'page', '', 0),
(237, 1, '2021-11-19 10:04:48', '2021-11-19 15:04:48', '', 'Receipt', '', 'inherit', 'closed', 'closed', '', '236-revision-v1', '', '', '2021-11-19 10:04:48', '2021-11-19 15:04:48', '', 236, 'https://react-dev1.wp.wellnessliving.local/?p=237', 0, 'revision', '', 0),
(238, 1, '2021-12-02 05:34:11', '2021-11-19 15:05:55', ' ', '', '', 'publish', 'closed', 'closed', '', '238', '', '', '2021-12-02 05:34:11', '2021-12-02 10:34:11', '', 0, 'https://react-dev1.wp.wellnessliving.local/?p=238', 19, 'nav_menu_item', '', 0),
(241, 1, '2021-12-02 05:34:10', '2021-12-02 10:34:10', '', 'Apple', '', 'publish', 'closed', 'closed', '', 'apple', '', '', '2021-12-02 05:34:10', '2021-12-02 10:34:10', '', 0, 'https://react-dev1.wp.wellnessliving.local/?p=241', 9, 'nav_menu_item', '', 0),
(242, 1, '2021-12-02 05:35:13', '2021-12-02 10:35:13', '', 'Apple', '', 'publish', 'closed', 'closed', '', 'apple-2', '', '', '2021-12-02 05:35:13', '2021-12-02 10:35:13', '', 0, 'https://react-dev1.wp.wellnessliving.local/?p=242', 5, 'nav_menu_item', '', 0),
(244, 1, '2021-12-10 12:05:33', '2021-12-10 12:26:56', ' ', '', '', 'publish', 'closed', 'closed', '', '244', '', '', '2021-12-10 12:05:33', '2021-12-10 17:05:33', '', 0, 'https://react-dev1.wp.wellnessliving.local/?p=244', 1, 'nav_menu_item', '', 0),
(245, 1, '2021-12-14 03:56:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-12-14 03:56:39', '0000-00-00 00:00:00', '', 0, 'https://react-dev1.wp.wellnessliving.local/?p=245', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_2_rank_math_internal_links`
--

CREATE TABLE `wp_2_rank_math_internal_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_2_rank_math_internal_links`
--

INSERT INTO `wp_2_rank_math_internal_links` (`id`, `url`, `post_id`, `target_post_id`, `type`) VALUES
(12, 'https://google.com', 43, 0, 'external'),
(13, 'https://google.com/', 43, 0, 'external'),
(14, 'https://google.com/', 43, 0, 'external'),
(15, 'https://google.com/', 43, 0, 'external'),
(16, 'https://google.com/', 43, 0, 'external'),
(17, 'https://google.com/', 43, 0, 'external'),
(18, 'https://google.com/', 43, 0, 'external'),
(19, 'https://google.com/', 43, 0, 'external'),
(20, 'https://google.com/', 43, 0, 'external'),
(21, 'https://google.com/', 43, 0, 'external'),
(22, 'https://react-dev1.wp.wellnessliving.local/wp-admin/', 2, 0, 'internal'),
(23, 'https://react-dev.wp.wellnessliving.local/', 1, 0, 'external');

-- --------------------------------------------------------

--
-- Table structure for table `wp_2_rank_math_internal_meta`
--

CREATE TABLE `wp_2_rank_math_internal_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT 0,
  `external_link_count` int(10) UNSIGNED DEFAULT 0,
  `incoming_link_count` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_2_rank_math_internal_meta`
--

INSERT INTO `wp_2_rank_math_internal_meta` (`object_id`, `internal_link_count`, `external_link_count`, `incoming_link_count`) VALUES
(1, 0, 1, 0),
(2, 1, 0, 0),
(5, 0, 0, 0),
(7, 0, 0, 0),
(11, 0, 0, 0),
(15, 0, 0, 0),
(19, 0, 0, 0),
(23, 0, 0, 0),
(27, 0, 0, 0),
(31, 0, 0, 0),
(35, 0, 0, 0),
(39, 0, 0, 0),
(43, 0, 10, 0),
(47, 0, 0, 0),
(51, 0, 0, 0),
(53, 0, 0, 0),
(55, 0, 0, 0),
(56, 0, 0, 0),
(70, 0, 0, 0),
(84, 0, 0, 0),
(86, 0, 0, 0),
(89, 0, 0, 0),
(91, 0, 0, 0),
(92, 0, 0, 0),
(93, 0, 0, 0),
(94, 0, 0, 0),
(95, 0, 0, 0),
(96, 0, 0, 0),
(100, 0, 0, 0),
(102, 0, 0, 0),
(105, 0, 0, 0),
(107, 0, 0, 0),
(109, 0, 0, 0),
(116, 0, 0, 0),
(121, 0, 0, 0),
(123, 0, 0, 0),
(125, 0, 0, 0),
(127, 0, 0, 0),
(129, 0, 0, 0),
(131, 0, 0, 0),
(133, 0, 0, 0),
(135, 0, 0, 0),
(137, 0, 0, 0),
(139, 0, 0, 0),
(141, 0, 0, 0),
(143, 0, 0, 0),
(145, 0, 0, 0),
(147, 0, 0, 0),
(149, 0, 0, 0),
(151, 0, 0, 0),
(153, 0, 0, 0),
(155, 0, 0, 0),
(185, 0, 0, 0),
(191, 0, 0, 0),
(194, 0, 0, 0),
(236, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_2_termmeta`
--

CREATE TABLE `wp_2_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_2_terms`
--

CREATE TABLE `wp_2_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_2_terms`
--

INSERT INTO `wp_2_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main menu', 'main-menu', 0),
(3, 'Footer menu', 'footer-menu', 0),
(4, 'Second Footer menu', 'second-footer-menu', 0),
(5, 'Store', 'store', 0),
(6, 'Appointment', 'appointment', 0),
(7, 'Second Main Menu', 'second-main-menu', 0),
(8, 'Third Menu', 'third-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_2_term_relationships`
--

CREATE TABLE `wp_2_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_2_term_relationships`
--

INSERT INTO `wp_2_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(3, 2, 0),
(4, 2, 0),
(6, 4, 0),
(8, 2, 0),
(9, 3, 0),
(10, 4, 0),
(12, 2, 0),
(13, 3, 0),
(14, 4, 0),
(16, 2, 0),
(17, 3, 0),
(18, 4, 0),
(20, 2, 0),
(21, 3, 0),
(22, 4, 0),
(24, 2, 0),
(25, 3, 0),
(26, 4, 0),
(28, 2, 0),
(29, 3, 0),
(30, 4, 0),
(32, 2, 0),
(33, 3, 0),
(34, 4, 0),
(36, 2, 0),
(37, 3, 0),
(38, 4, 0),
(40, 2, 0),
(41, 3, 0),
(42, 4, 0),
(44, 2, 0),
(45, 3, 0),
(46, 4, 0),
(48, 2, 0),
(49, 3, 0),
(50, 4, 0),
(52, 4, 0),
(54, 4, 0),
(57, 2, 0),
(58, 3, 0),
(59, 4, 0),
(102, 5, 0),
(105, 1, 0),
(105, 5, 0),
(105, 6, 0),
(107, 5, 0),
(109, 6, 0),
(116, 6, 0),
(121, 6, 0),
(123, 5, 0),
(123, 6, 0),
(125, 6, 0),
(127, 5, 0),
(129, 5, 0),
(131, 5, 0),
(133, 5, 0),
(135, 5, 0),
(137, 5, 0),
(139, 5, 0),
(141, 5, 0),
(143, 6, 0),
(145, 6, 0),
(147, 6, 0),
(149, 6, 0),
(151, 6, 0),
(153, 1, 0),
(153, 5, 0),
(153, 6, 0),
(155, 1, 0),
(155, 5, 0),
(155, 6, 0),
(187, 2, 0),
(188, 2, 0),
(189, 2, 0),
(214, 7, 0),
(215, 7, 0),
(216, 7, 0),
(217, 7, 0),
(238, 2, 0),
(241, 2, 0),
(242, 7, 0),
(244, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_2_term_taxonomy`
--

CREATE TABLE `wp_2_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_2_term_taxonomy`
--

INSERT INTO `wp_2_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(2, 2, 'nav_menu', '', 0, 19),
(3, 3, 'nav_menu', '', 0, 12),
(4, 4, 'nav_menu', '', 0, 15),
(5, 5, 'category', '', 0, 14),
(6, 6, 'category', '', 0, 13),
(7, 7, 'nav_menu', '', 0, 5),
(8, 8, 'nav_menu', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_3_commentmeta`
--

CREATE TABLE `wp_3_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_3_comments`
--

CREATE TABLE `wp_3_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_3_comments`
--

INSERT INTO `wp_3_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-05-25 03:43:03', '2021-05-25 07:43:03', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_3_links`
--

CREATE TABLE `wp_3_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_3_options`
--

CREATE TABLE `wp_3_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_3_options`
--

INSERT INTO `wp_3_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://react-dev2.wp.wellnessliving.local', 'yes'),
(2, 'home', 'https://react-dev2.wp.wellnessliving.local', 'yes'),
(3, 'blogname', 'Dev2', 'yes'),
(4, 'blogdescription', 'Just another Сайты React 4 Multisite site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@example.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:111:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:42:\"technical_page/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:52:\"technical_page/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:72:\"technical_page/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"technical_page/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"technical_page/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\"technical_page/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"technical_page/([^/]+)/embed/?$\";s:47:\"index.php?technical_page=$matches[1]&embed=true\";s:35:\"technical_page/([^/]+)/trackback/?$\";s:41:\"index.php?technical_page=$matches[1]&tb=1\";s:43:\"technical_page/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?technical_page=$matches[1]&paged=$matches[2]\";s:50:\"technical_page/([^/]+)/comment-page-([0-9]{1,})/?$\";s:54:\"index.php?technical_page=$matches[1]&cpage=$matches[2]\";s:39:\"technical_page/([^/]+)(?:/([0-9]+))?/?$\";s:53:\"index.php?technical_page=$matches[1]&page=$matches[2]\";s:31:\"technical_page/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"technical_page/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"technical_page/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"technical_page/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"technical_page/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"technical_page/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:17:\"wl_sdk/wl-sdk.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'constructor_wl', 'yes'),
(41, 'stylesheet', 'constructor_wl', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'America/Toronto', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '5', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '0', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1637480583', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'WPLANG', 'en_CA', 'yes'),
(99, 'wp_3_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'theme_mods_twentytwentyone', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1621928583;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(107, 'current_theme', 'Constructor WL', 'yes'),
(108, 'theme_mods_constructor_wl', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:8:\"top-menu\";i:2;s:11:\"footer-menu\";i:3;s:18:\"footer-menu-second\";i:4;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(109, 'theme_switched', '', 'yes'),
(110, 'fresh_site', '0', 'yes'),
(111, 'wl_sdk_business_id', '48038', 'yes'),
(112, 'wl_sdk_website_type', 'website', 'yes'),
(113, 'wl_sdk_environment', 'staging', 'yes'),
(114, 'wl_multi__locations', 'a:2:{s:16:\"default_location\";s:5:\"49800\";s:18:\"required_locations\";a:3:{i:0;s:5:\"49800\";i:1;s:5:\"49722\";i:2;s:5:\"49783\";}}', 'yes'),
(115, 'cron', 'a:4:{i:1627303388;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1627328588;a:1:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1627458188;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(116, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(122, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(123, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(124, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(126, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(127, 'acf_version', '5.7.10', 'yes'),
(128, 'visitors_counter', '10', 'yes'),
(130, '_transient_health-check-site-status-result', '{\"good\":11,\"recommended\":5,\"critical\":4}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_3_postmeta`
--

CREATE TABLE `wp_3_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_3_postmeta`
--

INSERT INTO `wp_3_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_menu_item_type', 'custom'),
(3, 3, '_menu_item_menu_item_parent', '0'),
(4, 3, '_menu_item_object_id', '3'),
(5, 3, '_menu_item_object', 'custom'),
(6, 3, '_menu_item_target', ''),
(7, 3, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(8, 3, '_menu_item_xfn', ''),
(9, 3, '_menu_item_url', '#'),
(10, 4, '_menu_item_type', 'custom'),
(11, 4, '_menu_item_menu_item_parent', '0'),
(12, 4, '_menu_item_object_id', '4'),
(13, 4, '_menu_item_object', 'custom'),
(14, 4, '_menu_item_target', ''),
(15, 4, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(16, 4, '_menu_item_xfn', ''),
(17, 4, '_menu_item_url', '#'),
(18, 6, '_menu_item_type', 'post_type'),
(19, 6, '_menu_item_menu_item_parent', '0'),
(20, 6, '_menu_item_object_id', '5'),
(21, 6, '_menu_item_object', 'page'),
(22, 6, '_menu_item_target', ''),
(23, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(24, 6, '_menu_item_xfn', ''),
(25, 6, '_menu_item_url', ''),
(26, 8, '_menu_item_type', 'post_type'),
(27, 8, '_menu_item_menu_item_parent', '3'),
(28, 8, '_menu_item_object_id', '7'),
(29, 8, '_menu_item_object', 'page'),
(30, 8, '_menu_item_target', ''),
(31, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(32, 8, '_menu_item_xfn', ''),
(33, 8, '_menu_item_url', ''),
(34, 9, '_menu_item_type', 'post_type'),
(35, 9, '_menu_item_menu_item_parent', '0'),
(36, 9, '_menu_item_object_id', '7'),
(37, 9, '_menu_item_object', 'page'),
(38, 9, '_menu_item_target', ''),
(39, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(40, 9, '_menu_item_xfn', ''),
(41, 9, '_menu_item_url', ''),
(42, 10, '_menu_item_type', 'post_type'),
(43, 10, '_menu_item_menu_item_parent', '0'),
(44, 10, '_menu_item_object_id', '7'),
(45, 10, '_menu_item_object', 'page'),
(46, 10, '_menu_item_target', ''),
(47, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(48, 10, '_menu_item_xfn', ''),
(49, 10, '_menu_item_url', ''),
(50, 12, '_menu_item_type', 'post_type'),
(51, 12, '_menu_item_menu_item_parent', '3'),
(52, 12, '_menu_item_object_id', '11'),
(53, 12, '_menu_item_object', 'page'),
(54, 12, '_menu_item_target', ''),
(55, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(56, 12, '_menu_item_xfn', ''),
(57, 12, '_menu_item_url', ''),
(58, 13, '_menu_item_type', 'post_type'),
(59, 13, '_menu_item_menu_item_parent', '0'),
(60, 13, '_menu_item_object_id', '11'),
(61, 13, '_menu_item_object', 'page'),
(62, 13, '_menu_item_target', ''),
(63, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(64, 13, '_menu_item_xfn', ''),
(65, 13, '_menu_item_url', ''),
(66, 14, '_menu_item_type', 'post_type'),
(67, 14, '_menu_item_menu_item_parent', '0'),
(68, 14, '_menu_item_object_id', '11'),
(69, 14, '_menu_item_object', 'page'),
(70, 14, '_menu_item_target', ''),
(71, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(72, 14, '_menu_item_xfn', ''),
(73, 14, '_menu_item_url', ''),
(74, 16, '_menu_item_type', 'post_type'),
(75, 16, '_menu_item_menu_item_parent', '3'),
(76, 16, '_menu_item_object_id', '15'),
(77, 16, '_menu_item_object', 'page'),
(78, 16, '_menu_item_target', ''),
(79, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(80, 16, '_menu_item_xfn', ''),
(81, 16, '_menu_item_url', ''),
(82, 17, '_menu_item_type', 'post_type'),
(83, 17, '_menu_item_menu_item_parent', '0'),
(84, 17, '_menu_item_object_id', '15'),
(85, 17, '_menu_item_object', 'page'),
(86, 17, '_menu_item_target', ''),
(87, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(88, 17, '_menu_item_xfn', ''),
(89, 17, '_menu_item_url', ''),
(90, 18, '_menu_item_type', 'post_type'),
(91, 18, '_menu_item_menu_item_parent', '0'),
(92, 18, '_menu_item_object_id', '15'),
(93, 18, '_menu_item_object', 'page'),
(94, 18, '_menu_item_target', ''),
(95, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(96, 18, '_menu_item_xfn', ''),
(97, 18, '_menu_item_url', ''),
(98, 20, '_menu_item_type', 'post_type'),
(99, 20, '_menu_item_menu_item_parent', '0'),
(100, 20, '_menu_item_object_id', '19'),
(101, 20, '_menu_item_object', 'page'),
(102, 20, '_menu_item_target', ''),
(103, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(104, 20, '_menu_item_xfn', ''),
(105, 20, '_menu_item_url', ''),
(106, 21, '_menu_item_type', 'post_type'),
(107, 21, '_menu_item_menu_item_parent', '0'),
(108, 21, '_menu_item_object_id', '19'),
(109, 21, '_menu_item_object', 'page'),
(110, 21, '_menu_item_target', ''),
(111, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(112, 21, '_menu_item_xfn', ''),
(113, 21, '_menu_item_url', ''),
(114, 22, '_menu_item_type', 'post_type'),
(115, 22, '_menu_item_menu_item_parent', '0'),
(116, 22, '_menu_item_object_id', '19'),
(117, 22, '_menu_item_object', 'page'),
(118, 22, '_menu_item_target', ''),
(119, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(120, 22, '_menu_item_xfn', ''),
(121, 22, '_menu_item_url', ''),
(122, 24, '_menu_item_type', 'post_type'),
(123, 24, '_menu_item_menu_item_parent', '0'),
(124, 24, '_menu_item_object_id', '23'),
(125, 24, '_menu_item_object', 'page'),
(126, 24, '_menu_item_target', ''),
(127, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(128, 24, '_menu_item_xfn', ''),
(129, 24, '_menu_item_url', ''),
(130, 25, '_menu_item_type', 'post_type'),
(131, 25, '_menu_item_menu_item_parent', '0'),
(132, 25, '_menu_item_object_id', '23'),
(133, 25, '_menu_item_object', 'page'),
(134, 25, '_menu_item_target', ''),
(135, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(136, 25, '_menu_item_xfn', ''),
(137, 25, '_menu_item_url', ''),
(138, 26, '_menu_item_type', 'post_type'),
(139, 26, '_menu_item_menu_item_parent', '0'),
(140, 26, '_menu_item_object_id', '23'),
(141, 26, '_menu_item_object', 'page'),
(142, 26, '_menu_item_target', ''),
(143, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(144, 26, '_menu_item_xfn', ''),
(145, 26, '_menu_item_url', ''),
(146, 28, '_menu_item_type', 'post_type'),
(147, 28, '_menu_item_menu_item_parent', '4'),
(148, 28, '_menu_item_object_id', '27'),
(149, 28, '_menu_item_object', 'page'),
(150, 28, '_menu_item_target', ''),
(151, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(152, 28, '_menu_item_xfn', ''),
(153, 28, '_menu_item_url', ''),
(154, 29, '_menu_item_type', 'post_type'),
(155, 29, '_menu_item_menu_item_parent', '0'),
(156, 29, '_menu_item_object_id', '27'),
(157, 29, '_menu_item_object', 'page'),
(158, 29, '_menu_item_target', ''),
(159, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(160, 29, '_menu_item_xfn', ''),
(161, 29, '_menu_item_url', ''),
(162, 30, '_menu_item_type', 'post_type'),
(163, 30, '_menu_item_menu_item_parent', '0'),
(164, 30, '_menu_item_object_id', '27'),
(165, 30, '_menu_item_object', 'page'),
(166, 30, '_menu_item_target', ''),
(167, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(168, 30, '_menu_item_xfn', ''),
(169, 30, '_menu_item_url', ''),
(170, 32, '_menu_item_type', 'post_type'),
(171, 32, '_menu_item_menu_item_parent', '4'),
(172, 32, '_menu_item_object_id', '31'),
(173, 32, '_menu_item_object', 'page'),
(174, 32, '_menu_item_target', ''),
(175, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(176, 32, '_menu_item_xfn', ''),
(177, 32, '_menu_item_url', ''),
(178, 33, '_menu_item_type', 'post_type'),
(179, 33, '_menu_item_menu_item_parent', '0'),
(180, 33, '_menu_item_object_id', '31'),
(181, 33, '_menu_item_object', 'page'),
(182, 33, '_menu_item_target', ''),
(183, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(184, 33, '_menu_item_xfn', ''),
(185, 33, '_menu_item_url', ''),
(186, 34, '_menu_item_type', 'post_type'),
(187, 34, '_menu_item_menu_item_parent', '0'),
(188, 34, '_menu_item_object_id', '31'),
(189, 34, '_menu_item_object', 'page'),
(190, 34, '_menu_item_target', ''),
(191, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(192, 34, '_menu_item_xfn', ''),
(193, 34, '_menu_item_url', ''),
(194, 36, '_menu_item_type', 'post_type'),
(195, 36, '_menu_item_menu_item_parent', '0'),
(196, 36, '_menu_item_object_id', '35'),
(197, 36, '_menu_item_object', 'page'),
(198, 36, '_menu_item_target', ''),
(199, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(200, 36, '_menu_item_xfn', ''),
(201, 36, '_menu_item_url', ''),
(202, 37, '_menu_item_type', 'post_type'),
(203, 37, '_menu_item_menu_item_parent', '0'),
(204, 37, '_menu_item_object_id', '35'),
(205, 37, '_menu_item_object', 'page'),
(206, 37, '_menu_item_target', ''),
(207, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(208, 37, '_menu_item_xfn', ''),
(209, 37, '_menu_item_url', ''),
(210, 38, '_menu_item_type', 'post_type'),
(211, 38, '_menu_item_menu_item_parent', '0'),
(212, 38, '_menu_item_object_id', '35'),
(213, 38, '_menu_item_object', 'page'),
(214, 38, '_menu_item_target', ''),
(215, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(216, 38, '_menu_item_xfn', ''),
(217, 38, '_menu_item_url', ''),
(218, 40, '_menu_item_type', 'post_type'),
(219, 40, '_menu_item_menu_item_parent', '0'),
(220, 40, '_menu_item_object_id', '39'),
(221, 40, '_menu_item_object', 'page'),
(222, 40, '_menu_item_target', ''),
(223, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(224, 40, '_menu_item_xfn', ''),
(225, 40, '_menu_item_url', ''),
(226, 41, '_menu_item_type', 'post_type'),
(227, 41, '_menu_item_menu_item_parent', '0'),
(228, 41, '_menu_item_object_id', '39'),
(229, 41, '_menu_item_object', 'page'),
(230, 41, '_menu_item_target', ''),
(231, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(232, 41, '_menu_item_xfn', ''),
(233, 41, '_menu_item_url', ''),
(234, 42, '_menu_item_type', 'post_type'),
(235, 42, '_menu_item_menu_item_parent', '0'),
(236, 42, '_menu_item_object_id', '39'),
(237, 42, '_menu_item_object', 'page'),
(238, 42, '_menu_item_target', ''),
(239, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(240, 42, '_menu_item_xfn', ''),
(241, 42, '_menu_item_url', ''),
(242, 44, '_menu_item_type', 'post_type'),
(243, 44, '_menu_item_menu_item_parent', '0'),
(244, 44, '_menu_item_object_id', '43'),
(245, 44, '_menu_item_object', 'page'),
(246, 44, '_menu_item_target', ''),
(247, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(248, 44, '_menu_item_xfn', ''),
(249, 44, '_menu_item_url', ''),
(250, 45, '_menu_item_type', 'post_type'),
(251, 45, '_menu_item_menu_item_parent', '0'),
(252, 45, '_menu_item_object_id', '43'),
(253, 45, '_menu_item_object', 'page'),
(254, 45, '_menu_item_target', ''),
(255, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(256, 45, '_menu_item_xfn', ''),
(257, 45, '_menu_item_url', ''),
(258, 46, '_menu_item_type', 'post_type'),
(259, 46, '_menu_item_menu_item_parent', '0'),
(260, 46, '_menu_item_object_id', '43'),
(261, 46, '_menu_item_object', 'page'),
(262, 46, '_menu_item_target', ''),
(263, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(264, 46, '_menu_item_xfn', ''),
(265, 46, '_menu_item_url', ''),
(266, 48, '_menu_item_type', 'post_type'),
(267, 48, '_menu_item_menu_item_parent', '0'),
(268, 48, '_menu_item_object_id', '47'),
(269, 48, '_menu_item_object', 'page'),
(270, 48, '_menu_item_target', ''),
(271, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(272, 48, '_menu_item_xfn', ''),
(273, 48, '_menu_item_url', ''),
(274, 49, '_menu_item_type', 'post_type'),
(275, 49, '_menu_item_menu_item_parent', '0'),
(276, 49, '_menu_item_object_id', '47'),
(277, 49, '_menu_item_object', 'page'),
(278, 49, '_menu_item_target', ''),
(279, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(280, 49, '_menu_item_xfn', ''),
(281, 49, '_menu_item_url', ''),
(282, 50, '_menu_item_type', 'post_type'),
(283, 50, '_menu_item_menu_item_parent', '0'),
(284, 50, '_menu_item_object_id', '47'),
(285, 50, '_menu_item_object', 'page'),
(286, 50, '_menu_item_target', ''),
(287, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(288, 50, '_menu_item_xfn', ''),
(289, 50, '_menu_item_url', ''),
(290, 52, '_menu_item_type', 'post_type'),
(291, 52, '_menu_item_menu_item_parent', '0'),
(292, 52, '_menu_item_object_id', '51'),
(293, 52, '_menu_item_object', 'page'),
(294, 52, '_menu_item_target', ''),
(295, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(296, 52, '_menu_item_xfn', ''),
(297, 52, '_menu_item_url', ''),
(298, 54, '_menu_item_type', 'post_type'),
(299, 54, '_menu_item_menu_item_parent', '0'),
(300, 54, '_menu_item_object_id', '53'),
(301, 54, '_menu_item_object', 'page'),
(302, 54, '_menu_item_target', ''),
(303, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(304, 54, '_menu_item_xfn', ''),
(305, 54, '_menu_item_url', ''),
(306, 56, '_wp_page_template', 'locations.php'),
(307, 57, '_menu_item_type', 'post_type'),
(308, 57, '_menu_item_menu_item_parent', '0'),
(309, 57, '_menu_item_object_id', '56'),
(310, 57, '_menu_item_object', 'page'),
(311, 57, '_menu_item_target', ''),
(312, 57, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(313, 57, '_menu_item_xfn', ''),
(314, 57, '_menu_item_url', ''),
(315, 58, '_menu_item_type', 'post_type'),
(316, 58, '_menu_item_menu_item_parent', '0'),
(317, 58, '_menu_item_object_id', '56'),
(318, 58, '_menu_item_object', 'page'),
(319, 58, '_menu_item_target', ''),
(320, 58, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(321, 58, '_menu_item_xfn', ''),
(322, 58, '_menu_item_url', ''),
(323, 59, '_menu_item_type', 'post_type'),
(324, 59, '_menu_item_menu_item_parent', '0'),
(325, 59, '_menu_item_object_id', '56'),
(326, 59, '_menu_item_object', 'page'),
(327, 59, '_menu_item_target', ''),
(328, 59, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(329, 59, '_menu_item_xfn', ''),
(330, 59, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_3_posts`
--

CREATE TABLE `wp_3_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_3_posts`
--

INSERT INTO `wp_3_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-05-25 03:43:03', '2021-05-25 07:43:03', 'Welcome to <a href=\"https://react-dev.wp.wellnessliving.local/\">Сайты React 4 Multisite</a>. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-05-25 03:43:03', '2021-05-25 07:43:03', '', 0, 'https://react-dev2.wp.wellnessliving.local/?p=1', 0, 'post', '', 1),
(2, 1, '2021-05-25 03:43:03', '2021-05-25 07:43:03', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://react-dev2.wp.wellnessliving.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-05-25 03:43:03', '2021-05-25 07:43:03', '', 0, 'https://react-dev2.wp.wellnessliving.local/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-05-25 03:43:03', '2021-05-25 07:43:03', '', 'Book Now', '', 'publish', 'closed', 'closed', '', 'book-now', '', '', '2021-05-25 03:43:03', '2021-05-25 07:43:03', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/book-now/', 0, 'nav_menu_item', '', 0),
(4, 1, '2021-05-25 03:43:03', '2021-05-25 07:43:03', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2021-05-25 03:43:03', '2021-05-25 07:43:03', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/about-us/', 2, 'nav_menu_item', '', 0),
(5, 1, '2021-05-25 03:43:04', '2021-05-25 07:43:04', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-05-25 03:43:04', '2021-05-25 07:43:04', '', 0, 'https://react-dev2.wp.wellnessliving.local/home/', 0, 'page', '', 0),
(6, 1, '2021-05-25 03:43:04', '2021-05-25 07:43:04', ' ', '', '', 'publish', 'closed', 'closed', '', '6', '', '', '2021-05-25 03:43:04', '2021-05-25 07:43:04', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/6/', 0, 'nav_menu_item', '', 0),
(7, 1, '2021-05-25 03:43:04', '2021-05-25 07:43:04', '', 'Appointments', '', 'publish', 'closed', 'closed', '', 'appointments', '', '', '2021-05-25 03:43:04', '2021-05-25 07:43:04', '', 0, 'https://react-dev2.wp.wellnessliving.local/appointments/', 0, 'page', '', 0),
(8, 1, '2021-05-25 03:43:04', '2021-05-25 07:43:04', ' ', '', '', 'publish', 'closed', 'closed', '', '8', '', '', '2021-05-25 03:43:04', '2021-05-25 07:43:04', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/8/', 3, 'nav_menu_item', '', 0),
(9, 1, '2021-05-25 03:43:04', '2021-05-25 07:43:04', ' ', '', '', 'publish', 'closed', 'closed', '', '9', '', '', '2021-05-25 03:43:04', '2021-05-25 07:43:04', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/9/', 0, 'nav_menu_item', '', 0),
(10, 1, '2021-05-25 03:43:04', '2021-05-25 07:43:04', ' ', '', '', 'publish', 'closed', 'closed', '', '10', '', '', '2021-05-25 03:43:04', '2021-05-25 07:43:04', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/10/', 2, 'nav_menu_item', '', 0),
(11, 1, '2021-05-25 03:43:04', '2021-05-25 07:43:04', '', 'Classes', '', 'publish', 'closed', 'closed', '', 'classes', '', '', '2021-05-25 03:43:04', '2021-05-25 07:43:04', '', 0, 'https://react-dev2.wp.wellnessliving.local/classes/', 0, 'page', '', 0),
(12, 1, '2021-05-25 03:43:04', '2021-05-25 07:43:04', ' ', '', '', 'publish', 'closed', 'closed', '', '12', '', '', '2021-05-25 03:43:04', '2021-05-25 07:43:04', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/12/', 4, 'nav_menu_item', '', 0),
(13, 1, '2021-05-25 03:43:04', '2021-05-25 07:43:04', ' ', '', '', 'publish', 'closed', 'closed', '', '13', '', '', '2021-05-25 03:43:04', '2021-05-25 07:43:04', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/13/', 2, 'nav_menu_item', '', 0),
(14, 1, '2021-05-25 03:43:04', '2021-05-25 07:43:04', ' ', '', '', 'publish', 'closed', 'closed', '', '14', '', '', '2021-05-25 03:43:04', '2021-05-25 07:43:04', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/14/', 3, 'nav_menu_item', '', 0),
(15, 1, '2021-05-25 03:43:04', '2021-05-25 07:43:04', '', 'Events', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2021-05-25 03:43:04', '2021-05-25 07:43:04', '', 0, 'https://react-dev2.wp.wellnessliving.local/events/', 0, 'page', '', 0),
(16, 1, '2021-05-25 03:43:04', '2021-05-25 07:43:04', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2021-05-25 03:43:04', '2021-05-25 07:43:04', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/16/', 5, 'nav_menu_item', '', 0),
(17, 1, '2021-05-25 03:43:04', '2021-05-25 07:43:04', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2021-05-25 03:43:04', '2021-05-25 07:43:04', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/17/', 3, 'nav_menu_item', '', 0),
(18, 1, '2021-05-25 03:43:04', '2021-05-25 07:43:04', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2021-05-25 03:43:04', '2021-05-25 07:43:04', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/18/', 4, 'nav_menu_item', '', 0),
(19, 1, '2021-05-25 03:43:04', '2021-05-25 07:43:04', '', 'Schedule', '', 'publish', 'closed', 'closed', '', 'schedule', '', '', '2021-05-25 03:43:04', '2021-05-25 07:43:04', '', 0, 'https://react-dev2.wp.wellnessliving.local/schedule/', 0, 'page', '', 0),
(20, 1, '2021-05-25 03:43:04', '2021-05-25 07:43:04', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2021-05-25 03:43:04', '2021-05-25 07:43:04', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/20/', 6, 'nav_menu_item', '', 0),
(21, 1, '2021-05-25 03:43:04', '2021-05-25 07:43:04', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2021-05-25 03:43:04', '2021-05-25 07:43:04', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/21/', 4, 'nav_menu_item', '', 0),
(22, 1, '2021-05-25 03:43:04', '2021-05-25 07:43:04', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2021-05-25 03:43:04', '2021-05-25 07:43:04', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/22/', 5, 'nav_menu_item', '', 0),
(23, 1, '2021-05-25 03:43:04', '2021-05-25 07:43:04', '', 'Store', '', 'publish', 'closed', 'closed', '', 'store', '', '', '2021-05-25 03:43:04', '2021-05-25 07:43:04', '', 0, 'https://react-dev2.wp.wellnessliving.local/store/', 0, 'page', '', 0),
(24, 1, '2021-05-25 03:43:05', '2021-05-25 07:43:05', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2021-05-25 03:43:05', '2021-05-25 07:43:05', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/24/', 7, 'nav_menu_item', '', 0),
(25, 1, '2021-05-25 03:43:05', '2021-05-25 07:43:05', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2021-05-25 03:43:05', '2021-05-25 07:43:05', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/25/', 5, 'nav_menu_item', '', 0),
(26, 1, '2021-05-25 03:43:05', '2021-05-25 07:43:05', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2021-05-25 03:43:05', '2021-05-25 07:43:05', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/26/', 6, 'nav_menu_item', '', 0),
(27, 1, '2021-05-25 03:43:05', '2021-05-25 07:43:05', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2021-05-25 03:43:05', '2021-05-25 07:43:05', '', 0, 'https://react-dev2.wp.wellnessliving.local/about-us/', 0, 'page', '', 0),
(28, 1, '2021-05-25 03:43:05', '2021-05-25 07:43:05', '', 'Our Story', '', 'publish', 'closed', 'closed', '', 'our-story', '', '', '2021-05-25 03:43:05', '2021-05-25 07:43:05', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/our-story/', 8, 'nav_menu_item', '', 0),
(29, 1, '2021-05-25 03:43:05', '2021-05-25 07:43:05', '', 'Our Story', '', 'publish', 'closed', 'closed', '', 'our-story-2', '', '', '2021-05-25 03:43:05', '2021-05-25 07:43:05', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/our-story-2/', 6, 'nav_menu_item', '', 0),
(30, 1, '2021-05-25 03:43:05', '2021-05-25 07:43:05', '', 'Our Story', '', 'publish', 'closed', 'closed', '', 'our-story-3', '', '', '2021-05-25 03:43:05', '2021-05-25 07:43:05', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/our-story-3/', 7, 'nav_menu_item', '', 0),
(31, 1, '2021-05-25 03:43:05', '2021-05-25 07:43:05', '', 'Staff', '', 'publish', 'closed', 'closed', '', 'staff', '', '', '2021-05-25 03:43:05', '2021-05-25 07:43:05', '', 0, 'https://react-dev2.wp.wellnessliving.local/staff/', 0, 'page', '', 0),
(32, 1, '2021-05-25 03:43:05', '2021-05-25 07:43:05', '', 'Our Team', '', 'publish', 'closed', 'closed', '', 'our-team', '', '', '2021-05-25 03:43:05', '2021-05-25 07:43:05', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/our-team/', 9, 'nav_menu_item', '', 0),
(33, 1, '2021-05-25 03:43:05', '2021-05-25 07:43:05', '', 'Our Team', '', 'publish', 'closed', 'closed', '', 'our-team-2', '', '', '2021-05-25 03:43:05', '2021-05-25 07:43:05', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/our-team-2/', 7, 'nav_menu_item', '', 0),
(34, 1, '2021-05-25 03:43:05', '2021-05-25 07:43:05', '', 'Our Team', '', 'publish', 'closed', 'closed', '', 'our-team-3', '', '', '2021-05-25 03:43:05', '2021-05-25 07:43:05', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/our-team-3/', 8, 'nav_menu_item', '', 0),
(35, 1, '2021-05-25 03:43:05', '2021-05-25 07:43:05', '', 'Reviews', '', 'publish', 'closed', 'closed', '', 'reviews', '', '', '2021-05-25 03:43:05', '2021-05-25 07:43:05', '', 0, 'https://react-dev2.wp.wellnessliving.local/reviews/', 0, 'page', '', 0),
(36, 1, '2021-05-25 03:43:05', '2021-05-25 07:43:05', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2021-05-25 03:43:05', '2021-05-25 07:43:05', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/36/', 10, 'nav_menu_item', '', 0),
(37, 1, '2021-05-25 03:43:05', '2021-05-25 07:43:05', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2021-05-25 03:43:05', '2021-05-25 07:43:05', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/37/', 8, 'nav_menu_item', '', 0),
(38, 1, '2021-05-25 03:43:05', '2021-05-25 07:43:05', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2021-05-25 03:43:05', '2021-05-25 07:43:05', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/38/', 9, 'nav_menu_item', '', 0),
(39, 1, '2021-05-25 03:43:05', '2021-05-25 07:43:05', '', 'FAQ', '', 'publish', 'closed', 'closed', '', 'faq', '', '', '2021-05-25 03:43:05', '2021-05-25 07:43:05', '', 0, 'https://react-dev2.wp.wellnessliving.local/faq/', 0, 'page', '', 0),
(40, 1, '2021-05-25 03:43:05', '2021-05-25 07:43:05', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2021-05-25 03:43:05', '2021-05-25 07:43:05', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/40/', 11, 'nav_menu_item', '', 0),
(41, 1, '2021-05-25 03:43:05', '2021-05-25 07:43:05', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2021-05-25 03:43:05', '2021-05-25 07:43:05', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/41/', 9, 'nav_menu_item', '', 0),
(42, 1, '2021-05-25 03:43:06', '2021-05-25 07:43:06', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2021-05-25 03:43:06', '2021-05-25 07:43:06', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/42/', 10, 'nav_menu_item', '', 0),
(43, 1, '2021-05-25 03:43:06', '2021-05-25 07:43:06', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2021-05-25 03:43:06', '2021-05-25 07:43:06', '', 0, 'https://react-dev2.wp.wellnessliving.local/blog/', 0, 'page', '', 0),
(44, 1, '2021-05-25 03:43:06', '2021-05-25 07:43:06', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2021-05-25 03:43:06', '2021-05-25 07:43:06', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/44/', 12, 'nav_menu_item', '', 0),
(45, 1, '2021-05-25 03:43:06', '2021-05-25 07:43:06', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2021-05-25 03:43:06', '2021-05-25 07:43:06', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/45/', 10, 'nav_menu_item', '', 0),
(46, 1, '2021-05-25 03:43:06', '2021-05-25 07:43:06', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2021-05-25 03:43:06', '2021-05-25 07:43:06', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/46/', 11, 'nav_menu_item', '', 0),
(47, 1, '2021-05-25 03:43:06', '2021-05-25 07:43:06', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2021-05-25 03:43:06', '2021-05-25 07:43:06', '', 0, 'https://react-dev2.wp.wellnessliving.local/contact/', 0, 'page', '', 0),
(48, 1, '2021-05-25 03:43:06', '2021-05-25 07:43:06', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2021-05-25 03:43:06', '2021-05-25 07:43:06', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/48/', 13, 'nav_menu_item', '', 0),
(49, 1, '2021-05-25 03:43:06', '2021-05-25 07:43:06', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2021-05-25 03:43:06', '2021-05-25 07:43:06', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/49/', 11, 'nav_menu_item', '', 0),
(50, 1, '2021-05-25 03:43:06', '2021-05-25 07:43:06', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2021-05-25 03:43:06', '2021-05-25 07:43:06', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/50/', 12, 'nav_menu_item', '', 0),
(51, 1, '2021-05-25 03:43:06', '2021-05-25 07:43:06', '', 'Privacy', '', 'publish', 'closed', 'closed', '', 'privacy', '', '', '2021-05-25 03:43:06', '2021-05-25 07:43:06', '', 0, 'https://react-dev2.wp.wellnessliving.local/privacy/', 0, 'page', '', 0),
(52, 1, '2021-05-25 03:43:06', '2021-05-25 07:43:06', ' ', '', '', 'publish', 'closed', 'closed', '', '52', '', '', '2021-05-25 03:43:06', '2021-05-25 07:43:06', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/52/', 13, 'nav_menu_item', '', 0),
(53, 1, '2021-05-25 03:43:06', '2021-05-25 07:43:06', '', 'Terms Conditions', '', 'publish', 'closed', 'closed', '', 'terms-conditions', '', '', '2021-05-25 03:43:06', '2021-05-25 07:43:06', '', 0, 'https://react-dev2.wp.wellnessliving.local/terms-conditions/', 0, 'page', '', 0),
(54, 1, '2021-05-25 03:43:06', '2021-05-25 07:43:06', ' ', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2021-05-25 03:43:06', '2021-05-25 07:43:06', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/54/', 14, 'nav_menu_item', '', 0),
(55, 1, '2021-05-25 03:43:06', '2021-05-25 07:43:06', '', 'real-results-single', '', 'publish', 'closed', 'closed', '', 'real-results-single', '', '', '2021-05-25 03:43:06', '2021-05-25 07:43:06', '', 0, 'https://react-dev2.wp.wellnessliving.local/real-results-single/', 0, 'page', '', 0),
(56, 1, '2021-05-25 03:43:06', '2021-05-25 07:43:06', '', 'Locations', '', 'publish', 'closed', 'closed', '', 'locations', '', '', '2021-05-25 03:43:06', '2021-05-25 07:43:06', '', 0, 'https://react-dev2.wp.wellnessliving.local/locations/', 0, 'page', '', 0),
(57, 1, '2021-05-25 03:43:06', '2021-05-25 07:43:06', ' ', '', '', 'publish', 'closed', 'closed', '', '57', '', '', '2021-05-25 03:43:06', '2021-05-25 07:43:06', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/57/', 14, 'nav_menu_item', '', 0),
(58, 1, '2021-05-25 03:43:06', '2021-05-25 07:43:06', ' ', '', '', 'publish', 'closed', 'closed', '', '58', '', '', '2021-05-25 03:43:06', '2021-05-25 07:43:06', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/58/', 12, 'nav_menu_item', '', 0),
(59, 1, '2021-05-25 03:43:06', '2021-05-25 07:43:06', ' ', '', '', 'publish', 'closed', 'closed', '', '59', '', '', '2021-05-25 03:43:06', '2021-05-25 07:43:06', '', 0, 'https://react-dev2.wp.wellnessliving.local/2021/05/25/59/', 15, 'nav_menu_item', '', 0),
(60, 0, '2021-05-25 03:43:08', '2021-05-25 07:43:08', '', 'sign-in', '', 'publish', 'closed', 'closed', '', 'sign-in', '', '', '2021-05-25 03:43:08', '2021-05-25 07:43:08', '', 0, 'https://react-dev2.wp.wellnessliving.local/sign-in/', 0, 'technical_page', '', 0),
(61, 0, '2021-05-25 03:43:08', '2021-05-25 07:43:08', '', 'sign-up', '', 'publish', 'closed', 'closed', '', 'sign-up', '', '', '2021-05-25 03:43:08', '2021-05-25 07:43:08', '', 0, 'https://react-dev2.wp.wellnessliving.local/sign-up/', 0, 'technical_page', '', 0),
(62, 0, '2021-05-25 03:43:08', '2021-05-25 07:43:08', '', 'confirm', '', 'publish', 'closed', 'closed', '', 'confirm', '', '', '2021-05-25 03:43:08', '2021-05-25 07:43:08', '', 0, 'https://react-dev2.wp.wellnessliving.local/confirm/', 0, 'technical_page', '', 0),
(63, 0, '2021-05-25 03:43:08', '2021-05-25 07:43:08', '', 'profile', '', 'publish', 'closed', 'closed', '', 'profile', '', '', '2021-05-25 03:43:08', '2021-05-25 07:43:08', '', 0, 'https://react-dev2.wp.wellnessliving.local/profile/', 0, 'technical_page', '', 0),
(64, 0, '2021-05-25 03:43:08', '2021-05-25 07:43:08', '', 'create-account', '', 'publish', 'closed', 'closed', '', 'create-account', '', '', '2021-05-25 03:43:08', '2021-05-25 07:43:08', '', 0, 'https://react-dev2.wp.wellnessliving.local/create-account/', 0, 'technical_page', '', 0),
(65, 0, '2021-05-25 03:43:08', '2021-05-25 07:43:08', '', 'forgot-password', '', 'publish', 'closed', 'closed', '', 'forgot-password', '', '', '2021-05-25 03:43:08', '2021-05-25 07:43:08', '', 0, 'https://react-dev2.wp.wellnessliving.local/forgot-password/', 0, 'technical_page', '', 0),
(66, 0, '2021-05-25 03:43:08', '2021-05-25 07:43:08', '', 'reset-password', '', 'publish', 'closed', 'closed', '', 'reset-password', '', '', '2021-05-25 03:43:08', '2021-05-25 07:43:08', '', 0, 'https://react-dev2.wp.wellnessliving.local/reset-password/', 0, 'technical_page', '', 0),
(67, 0, '2021-05-25 03:43:08', '2021-05-25 07:43:08', '', 'user-waiver', '', 'publish', 'closed', 'closed', '', 'user-waiver', '', '', '2021-05-25 03:43:08', '2021-05-25 07:43:08', '', 0, 'https://react-dev2.wp.wellnessliving.local/user-waiver/', 0, 'technical_page', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_3_termmeta`
--

CREATE TABLE `wp_3_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_3_terms`
--

CREATE TABLE `wp_3_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_3_terms`
--

INSERT INTO `wp_3_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main menu', 'main-menu', 0),
(3, 'Footer menu', 'footer-menu', 0),
(4, 'Second Footer menu', 'second-footer-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_3_term_relationships`
--

CREATE TABLE `wp_3_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_3_term_relationships`
--

INSERT INTO `wp_3_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(3, 2, 0),
(4, 2, 0),
(6, 4, 0),
(8, 2, 0),
(9, 3, 0),
(10, 4, 0),
(12, 2, 0),
(13, 3, 0),
(14, 4, 0),
(16, 2, 0),
(17, 3, 0),
(18, 4, 0),
(20, 2, 0),
(21, 3, 0),
(22, 4, 0),
(24, 2, 0),
(25, 3, 0),
(26, 4, 0),
(28, 2, 0),
(29, 3, 0),
(30, 4, 0),
(32, 2, 0),
(33, 3, 0),
(34, 4, 0),
(36, 2, 0),
(37, 3, 0),
(38, 4, 0),
(40, 2, 0),
(41, 3, 0),
(42, 4, 0),
(44, 2, 0),
(45, 3, 0),
(46, 4, 0),
(48, 2, 0),
(49, 3, 0),
(50, 4, 0),
(52, 4, 0),
(54, 4, 0),
(57, 2, 0),
(58, 3, 0),
(59, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_3_term_taxonomy`
--

CREATE TABLE `wp_3_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_3_term_taxonomy`
--

INSERT INTO `wp_3_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 14),
(3, 3, 'nav_menu', '', 0, 12),
(4, 4, 'nav_menu', '', 0, 15);

-- --------------------------------------------------------

--
-- Table structure for table `wp_4_commentmeta`
--

CREATE TABLE `wp_4_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_4_comments`
--

CREATE TABLE `wp_4_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_4_comments`
--

INSERT INTO `wp_4_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-05-25 03:44:44', '2021-05-25 07:44:44', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_4_links`
--

CREATE TABLE `wp_4_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_4_options`
--

CREATE TABLE `wp_4_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_4_options`
--

INSERT INTO `wp_4_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://react-dev3.wp.wellnessliving.local', 'yes'),
(2, 'home', 'https://react-dev3.wp.wellnessliving.local', 'yes'),
(3, 'blogname', 'Dev3', 'yes'),
(4, 'blogdescription', 'Just another Сайты React 4 Multisite site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@example.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:111:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:42:\"technical_page/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:52:\"technical_page/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:72:\"technical_page/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"technical_page/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"technical_page/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\"technical_page/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"technical_page/([^/]+)/embed/?$\";s:47:\"index.php?technical_page=$matches[1]&embed=true\";s:35:\"technical_page/([^/]+)/trackback/?$\";s:41:\"index.php?technical_page=$matches[1]&tb=1\";s:43:\"technical_page/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?technical_page=$matches[1]&paged=$matches[2]\";s:50:\"technical_page/([^/]+)/comment-page-([0-9]{1,})/?$\";s:54:\"index.php?technical_page=$matches[1]&cpage=$matches[2]\";s:39:\"technical_page/([^/]+)(?:/([0-9]+))?/?$\";s:53:\"index.php?technical_page=$matches[1]&page=$matches[2]\";s:31:\"technical_page/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"technical_page/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"technical_page/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"technical_page/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"technical_page/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"technical_page/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:17:\"wl_sdk/wl-sdk.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'constructor_wl', 'yes'),
(41, 'stylesheet', 'constructor_wl', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'America/Toronto', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '5', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '0', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1637480683', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'WPLANG', 'en_CA', 'yes'),
(99, 'wp_4_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'theme_mods_twentytwentyone', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1621928684;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(107, 'current_theme', 'Constructor WL', 'yes'),
(108, 'theme_mods_constructor_wl', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:8:\"top-menu\";i:2;s:11:\"footer-menu\";i:3;s:18:\"footer-menu-second\";i:4;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(109, 'theme_switched', '', 'yes'),
(110, 'fresh_site', '0', 'yes'),
(111, 'wl_sdk_business_id', '48038', 'yes'),
(112, 'wl_sdk_website_type', 'website', 'yes'),
(113, 'wl_sdk_environment', 'staging', 'yes'),
(114, 'wl_multi__locations', 'a:2:{s:16:\"default_location\";s:5:\"49800\";s:18:\"required_locations\";a:3:{i:0;s:5:\"49800\";i:1;s:5:\"49722\";i:2;s:5:\"49783\";}}', 'yes'),
(115, 'cron', 'a:4:{i:1621932288;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1621971888;a:1:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1622015088;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(116, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(122, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(123, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(124, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(126, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(127, 'acf_version', '5.7.10', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_4_postmeta`
--

CREATE TABLE `wp_4_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_4_postmeta`
--

INSERT INTO `wp_4_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_menu_item_type', 'custom'),
(3, 3, '_menu_item_menu_item_parent', '0'),
(4, 3, '_menu_item_object_id', '3'),
(5, 3, '_menu_item_object', 'custom'),
(6, 3, '_menu_item_target', ''),
(7, 3, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(8, 3, '_menu_item_xfn', ''),
(9, 3, '_menu_item_url', '#'),
(10, 4, '_menu_item_type', 'custom'),
(11, 4, '_menu_item_menu_item_parent', '0'),
(12, 4, '_menu_item_object_id', '4'),
(13, 4, '_menu_item_object', 'custom'),
(14, 4, '_menu_item_target', ''),
(15, 4, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(16, 4, '_menu_item_xfn', ''),
(17, 4, '_menu_item_url', '#'),
(18, 6, '_menu_item_type', 'post_type'),
(19, 6, '_menu_item_menu_item_parent', '0'),
(20, 6, '_menu_item_object_id', '5'),
(21, 6, '_menu_item_object', 'page'),
(22, 6, '_menu_item_target', ''),
(23, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(24, 6, '_menu_item_xfn', ''),
(25, 6, '_menu_item_url', ''),
(26, 8, '_menu_item_type', 'post_type'),
(27, 8, '_menu_item_menu_item_parent', '3'),
(28, 8, '_menu_item_object_id', '7'),
(29, 8, '_menu_item_object', 'page'),
(30, 8, '_menu_item_target', ''),
(31, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(32, 8, '_menu_item_xfn', ''),
(33, 8, '_menu_item_url', ''),
(34, 9, '_menu_item_type', 'post_type'),
(35, 9, '_menu_item_menu_item_parent', '0'),
(36, 9, '_menu_item_object_id', '7'),
(37, 9, '_menu_item_object', 'page'),
(38, 9, '_menu_item_target', ''),
(39, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(40, 9, '_menu_item_xfn', ''),
(41, 9, '_menu_item_url', ''),
(42, 10, '_menu_item_type', 'post_type'),
(43, 10, '_menu_item_menu_item_parent', '0'),
(44, 10, '_menu_item_object_id', '7'),
(45, 10, '_menu_item_object', 'page'),
(46, 10, '_menu_item_target', ''),
(47, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(48, 10, '_menu_item_xfn', ''),
(49, 10, '_menu_item_url', ''),
(50, 12, '_menu_item_type', 'post_type'),
(51, 12, '_menu_item_menu_item_parent', '3'),
(52, 12, '_menu_item_object_id', '11'),
(53, 12, '_menu_item_object', 'page'),
(54, 12, '_menu_item_target', ''),
(55, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(56, 12, '_menu_item_xfn', ''),
(57, 12, '_menu_item_url', ''),
(58, 13, '_menu_item_type', 'post_type'),
(59, 13, '_menu_item_menu_item_parent', '0'),
(60, 13, '_menu_item_object_id', '11'),
(61, 13, '_menu_item_object', 'page'),
(62, 13, '_menu_item_target', ''),
(63, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(64, 13, '_menu_item_xfn', ''),
(65, 13, '_menu_item_url', ''),
(66, 14, '_menu_item_type', 'post_type'),
(67, 14, '_menu_item_menu_item_parent', '0'),
(68, 14, '_menu_item_object_id', '11'),
(69, 14, '_menu_item_object', 'page'),
(70, 14, '_menu_item_target', ''),
(71, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(72, 14, '_menu_item_xfn', ''),
(73, 14, '_menu_item_url', ''),
(74, 16, '_menu_item_type', 'post_type'),
(75, 16, '_menu_item_menu_item_parent', '3'),
(76, 16, '_menu_item_object_id', '15'),
(77, 16, '_menu_item_object', 'page'),
(78, 16, '_menu_item_target', ''),
(79, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(80, 16, '_menu_item_xfn', ''),
(81, 16, '_menu_item_url', ''),
(82, 17, '_menu_item_type', 'post_type'),
(83, 17, '_menu_item_menu_item_parent', '0'),
(84, 17, '_menu_item_object_id', '15'),
(85, 17, '_menu_item_object', 'page'),
(86, 17, '_menu_item_target', ''),
(87, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(88, 17, '_menu_item_xfn', ''),
(89, 17, '_menu_item_url', ''),
(90, 18, '_menu_item_type', 'post_type'),
(91, 18, '_menu_item_menu_item_parent', '0'),
(92, 18, '_menu_item_object_id', '15'),
(93, 18, '_menu_item_object', 'page'),
(94, 18, '_menu_item_target', ''),
(95, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(96, 18, '_menu_item_xfn', ''),
(97, 18, '_menu_item_url', ''),
(98, 20, '_menu_item_type', 'post_type'),
(99, 20, '_menu_item_menu_item_parent', '0'),
(100, 20, '_menu_item_object_id', '19'),
(101, 20, '_menu_item_object', 'page'),
(102, 20, '_menu_item_target', ''),
(103, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(104, 20, '_menu_item_xfn', ''),
(105, 20, '_menu_item_url', ''),
(106, 21, '_menu_item_type', 'post_type'),
(107, 21, '_menu_item_menu_item_parent', '0'),
(108, 21, '_menu_item_object_id', '19'),
(109, 21, '_menu_item_object', 'page'),
(110, 21, '_menu_item_target', ''),
(111, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(112, 21, '_menu_item_xfn', ''),
(113, 21, '_menu_item_url', ''),
(114, 22, '_menu_item_type', 'post_type'),
(115, 22, '_menu_item_menu_item_parent', '0'),
(116, 22, '_menu_item_object_id', '19'),
(117, 22, '_menu_item_object', 'page'),
(118, 22, '_menu_item_target', ''),
(119, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(120, 22, '_menu_item_xfn', ''),
(121, 22, '_menu_item_url', ''),
(122, 24, '_menu_item_type', 'post_type'),
(123, 24, '_menu_item_menu_item_parent', '0'),
(124, 24, '_menu_item_object_id', '23'),
(125, 24, '_menu_item_object', 'page'),
(126, 24, '_menu_item_target', ''),
(127, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(128, 24, '_menu_item_xfn', ''),
(129, 24, '_menu_item_url', ''),
(130, 25, '_menu_item_type', 'post_type'),
(131, 25, '_menu_item_menu_item_parent', '0'),
(132, 25, '_menu_item_object_id', '23'),
(133, 25, '_menu_item_object', 'page'),
(134, 25, '_menu_item_target', ''),
(135, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(136, 25, '_menu_item_xfn', ''),
(137, 25, '_menu_item_url', ''),
(138, 26, '_menu_item_type', 'post_type'),
(139, 26, '_menu_item_menu_item_parent', '0'),
(140, 26, '_menu_item_object_id', '23'),
(141, 26, '_menu_item_object', 'page'),
(142, 26, '_menu_item_target', ''),
(143, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(144, 26, '_menu_item_xfn', ''),
(145, 26, '_menu_item_url', ''),
(146, 28, '_menu_item_type', 'post_type'),
(147, 28, '_menu_item_menu_item_parent', '4'),
(148, 28, '_menu_item_object_id', '27'),
(149, 28, '_menu_item_object', 'page'),
(150, 28, '_menu_item_target', ''),
(151, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(152, 28, '_menu_item_xfn', ''),
(153, 28, '_menu_item_url', ''),
(154, 29, '_menu_item_type', 'post_type'),
(155, 29, '_menu_item_menu_item_parent', '0'),
(156, 29, '_menu_item_object_id', '27'),
(157, 29, '_menu_item_object', 'page'),
(158, 29, '_menu_item_target', ''),
(159, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(160, 29, '_menu_item_xfn', ''),
(161, 29, '_menu_item_url', ''),
(162, 30, '_menu_item_type', 'post_type'),
(163, 30, '_menu_item_menu_item_parent', '0'),
(164, 30, '_menu_item_object_id', '27'),
(165, 30, '_menu_item_object', 'page'),
(166, 30, '_menu_item_target', ''),
(167, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(168, 30, '_menu_item_xfn', ''),
(169, 30, '_menu_item_url', ''),
(170, 32, '_menu_item_type', 'post_type'),
(171, 32, '_menu_item_menu_item_parent', '4'),
(172, 32, '_menu_item_object_id', '31'),
(173, 32, '_menu_item_object', 'page'),
(174, 32, '_menu_item_target', ''),
(175, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(176, 32, '_menu_item_xfn', ''),
(177, 32, '_menu_item_url', ''),
(178, 33, '_menu_item_type', 'post_type'),
(179, 33, '_menu_item_menu_item_parent', '0'),
(180, 33, '_menu_item_object_id', '31'),
(181, 33, '_menu_item_object', 'page'),
(182, 33, '_menu_item_target', ''),
(183, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(184, 33, '_menu_item_xfn', ''),
(185, 33, '_menu_item_url', ''),
(186, 34, '_menu_item_type', 'post_type'),
(187, 34, '_menu_item_menu_item_parent', '0'),
(188, 34, '_menu_item_object_id', '31'),
(189, 34, '_menu_item_object', 'page'),
(190, 34, '_menu_item_target', ''),
(191, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(192, 34, '_menu_item_xfn', ''),
(193, 34, '_menu_item_url', ''),
(194, 36, '_menu_item_type', 'post_type'),
(195, 36, '_menu_item_menu_item_parent', '0'),
(196, 36, '_menu_item_object_id', '35'),
(197, 36, '_menu_item_object', 'page'),
(198, 36, '_menu_item_target', ''),
(199, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(200, 36, '_menu_item_xfn', ''),
(201, 36, '_menu_item_url', ''),
(202, 37, '_menu_item_type', 'post_type'),
(203, 37, '_menu_item_menu_item_parent', '0'),
(204, 37, '_menu_item_object_id', '35'),
(205, 37, '_menu_item_object', 'page'),
(206, 37, '_menu_item_target', ''),
(207, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(208, 37, '_menu_item_xfn', ''),
(209, 37, '_menu_item_url', ''),
(210, 38, '_menu_item_type', 'post_type'),
(211, 38, '_menu_item_menu_item_parent', '0'),
(212, 38, '_menu_item_object_id', '35'),
(213, 38, '_menu_item_object', 'page'),
(214, 38, '_menu_item_target', ''),
(215, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(216, 38, '_menu_item_xfn', ''),
(217, 38, '_menu_item_url', ''),
(218, 40, '_menu_item_type', 'post_type'),
(219, 40, '_menu_item_menu_item_parent', '0'),
(220, 40, '_menu_item_object_id', '39'),
(221, 40, '_menu_item_object', 'page'),
(222, 40, '_menu_item_target', ''),
(223, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(224, 40, '_menu_item_xfn', ''),
(225, 40, '_menu_item_url', ''),
(226, 41, '_menu_item_type', 'post_type'),
(227, 41, '_menu_item_menu_item_parent', '0'),
(228, 41, '_menu_item_object_id', '39'),
(229, 41, '_menu_item_object', 'page'),
(230, 41, '_menu_item_target', ''),
(231, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(232, 41, '_menu_item_xfn', ''),
(233, 41, '_menu_item_url', ''),
(234, 42, '_menu_item_type', 'post_type'),
(235, 42, '_menu_item_menu_item_parent', '0'),
(236, 42, '_menu_item_object_id', '39'),
(237, 42, '_menu_item_object', 'page'),
(238, 42, '_menu_item_target', ''),
(239, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(240, 42, '_menu_item_xfn', ''),
(241, 42, '_menu_item_url', ''),
(242, 44, '_menu_item_type', 'post_type'),
(243, 44, '_menu_item_menu_item_parent', '0'),
(244, 44, '_menu_item_object_id', '43'),
(245, 44, '_menu_item_object', 'page'),
(246, 44, '_menu_item_target', ''),
(247, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(248, 44, '_menu_item_xfn', ''),
(249, 44, '_menu_item_url', ''),
(250, 45, '_menu_item_type', 'post_type'),
(251, 45, '_menu_item_menu_item_parent', '0'),
(252, 45, '_menu_item_object_id', '43'),
(253, 45, '_menu_item_object', 'page'),
(254, 45, '_menu_item_target', ''),
(255, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(256, 45, '_menu_item_xfn', ''),
(257, 45, '_menu_item_url', ''),
(258, 46, '_menu_item_type', 'post_type'),
(259, 46, '_menu_item_menu_item_parent', '0'),
(260, 46, '_menu_item_object_id', '43'),
(261, 46, '_menu_item_object', 'page'),
(262, 46, '_menu_item_target', ''),
(263, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(264, 46, '_menu_item_xfn', ''),
(265, 46, '_menu_item_url', ''),
(266, 48, '_menu_item_type', 'post_type'),
(267, 48, '_menu_item_menu_item_parent', '0'),
(268, 48, '_menu_item_object_id', '47'),
(269, 48, '_menu_item_object', 'page'),
(270, 48, '_menu_item_target', ''),
(271, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(272, 48, '_menu_item_xfn', ''),
(273, 48, '_menu_item_url', ''),
(274, 49, '_menu_item_type', 'post_type'),
(275, 49, '_menu_item_menu_item_parent', '0'),
(276, 49, '_menu_item_object_id', '47'),
(277, 49, '_menu_item_object', 'page'),
(278, 49, '_menu_item_target', ''),
(279, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(280, 49, '_menu_item_xfn', ''),
(281, 49, '_menu_item_url', ''),
(282, 50, '_menu_item_type', 'post_type'),
(283, 50, '_menu_item_menu_item_parent', '0'),
(284, 50, '_menu_item_object_id', '47'),
(285, 50, '_menu_item_object', 'page'),
(286, 50, '_menu_item_target', ''),
(287, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(288, 50, '_menu_item_xfn', ''),
(289, 50, '_menu_item_url', ''),
(290, 52, '_menu_item_type', 'post_type'),
(291, 52, '_menu_item_menu_item_parent', '0'),
(292, 52, '_menu_item_object_id', '51'),
(293, 52, '_menu_item_object', 'page'),
(294, 52, '_menu_item_target', ''),
(295, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(296, 52, '_menu_item_xfn', ''),
(297, 52, '_menu_item_url', ''),
(298, 54, '_menu_item_type', 'post_type'),
(299, 54, '_menu_item_menu_item_parent', '0'),
(300, 54, '_menu_item_object_id', '53'),
(301, 54, '_menu_item_object', 'page'),
(302, 54, '_menu_item_target', ''),
(303, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(304, 54, '_menu_item_xfn', ''),
(305, 54, '_menu_item_url', ''),
(306, 56, '_wp_page_template', 'locations.php'),
(307, 57, '_menu_item_type', 'post_type'),
(308, 57, '_menu_item_menu_item_parent', '0'),
(309, 57, '_menu_item_object_id', '56'),
(310, 57, '_menu_item_object', 'page'),
(311, 57, '_menu_item_target', ''),
(312, 57, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(313, 57, '_menu_item_xfn', ''),
(314, 57, '_menu_item_url', ''),
(315, 58, '_menu_item_type', 'post_type'),
(316, 58, '_menu_item_menu_item_parent', '0'),
(317, 58, '_menu_item_object_id', '56'),
(318, 58, '_menu_item_object', 'page'),
(319, 58, '_menu_item_target', ''),
(320, 58, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(321, 58, '_menu_item_xfn', ''),
(322, 58, '_menu_item_url', ''),
(323, 59, '_menu_item_type', 'post_type'),
(324, 59, '_menu_item_menu_item_parent', '0'),
(325, 59, '_menu_item_object_id', '56'),
(326, 59, '_menu_item_object', 'page'),
(327, 59, '_menu_item_target', ''),
(328, 59, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(329, 59, '_menu_item_xfn', ''),
(330, 59, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_4_posts`
--

CREATE TABLE `wp_4_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_4_posts`
--

INSERT INTO `wp_4_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-05-25 03:44:44', '2021-05-25 07:44:44', 'Welcome to <a href=\"https://react-dev.wp.wellnessliving.local/\">Сайты React 4 Multisite</a>. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-05-25 03:44:44', '2021-05-25 07:44:44', '', 0, 'https://react-dev3.wp.wellnessliving.local/?p=1', 0, 'post', '', 1),
(2, 1, '2021-05-25 03:44:44', '2021-05-25 07:44:44', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://react-dev3.wp.wellnessliving.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-05-25 03:44:44', '2021-05-25 07:44:44', '', 0, 'https://react-dev3.wp.wellnessliving.local/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-05-25 03:44:44', '2021-05-25 07:44:44', '', 'Book Now', '', 'publish', 'closed', 'closed', '', 'book-now', '', '', '2021-05-25 03:44:44', '2021-05-25 07:44:44', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/book-now/', 0, 'nav_menu_item', '', 0),
(4, 1, '2021-05-25 03:44:44', '2021-05-25 07:44:44', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2021-05-25 03:44:44', '2021-05-25 07:44:44', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/about-us/', 2, 'nav_menu_item', '', 0),
(5, 1, '2021-05-25 03:44:44', '2021-05-25 07:44:44', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-05-25 03:44:44', '2021-05-25 07:44:44', '', 0, 'https://react-dev3.wp.wellnessliving.local/home/', 0, 'page', '', 0),
(6, 1, '2021-05-25 03:44:44', '2021-05-25 07:44:44', ' ', '', '', 'publish', 'closed', 'closed', '', '6', '', '', '2021-05-25 03:44:44', '2021-05-25 07:44:44', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/6/', 0, 'nav_menu_item', '', 0),
(7, 1, '2021-05-25 03:44:44', '2021-05-25 07:44:44', '', 'Appointments', '', 'publish', 'closed', 'closed', '', 'appointments', '', '', '2021-05-25 03:44:44', '2021-05-25 07:44:44', '', 0, 'https://react-dev3.wp.wellnessliving.local/appointments/', 0, 'page', '', 0),
(8, 1, '2021-05-25 03:44:44', '2021-05-25 07:44:44', ' ', '', '', 'publish', 'closed', 'closed', '', '8', '', '', '2021-05-25 03:44:44', '2021-05-25 07:44:44', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/8/', 3, 'nav_menu_item', '', 0),
(9, 1, '2021-05-25 03:44:44', '2021-05-25 07:44:44', ' ', '', '', 'publish', 'closed', 'closed', '', '9', '', '', '2021-05-25 03:44:44', '2021-05-25 07:44:44', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/9/', 0, 'nav_menu_item', '', 0),
(10, 1, '2021-05-25 03:44:44', '2021-05-25 07:44:44', ' ', '', '', 'publish', 'closed', 'closed', '', '10', '', '', '2021-05-25 03:44:44', '2021-05-25 07:44:44', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/10/', 2, 'nav_menu_item', '', 0),
(11, 1, '2021-05-25 03:44:44', '2021-05-25 07:44:44', '', 'Classes', '', 'publish', 'closed', 'closed', '', 'classes', '', '', '2021-05-25 03:44:44', '2021-05-25 07:44:44', '', 0, 'https://react-dev3.wp.wellnessliving.local/classes/', 0, 'page', '', 0),
(12, 1, '2021-05-25 03:44:44', '2021-05-25 07:44:44', ' ', '', '', 'publish', 'closed', 'closed', '', '12', '', '', '2021-05-25 03:44:44', '2021-05-25 07:44:44', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/12/', 4, 'nav_menu_item', '', 0),
(13, 1, '2021-05-25 03:44:44', '2021-05-25 07:44:44', ' ', '', '', 'publish', 'closed', 'closed', '', '13', '', '', '2021-05-25 03:44:44', '2021-05-25 07:44:44', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/13/', 2, 'nav_menu_item', '', 0),
(14, 1, '2021-05-25 03:44:45', '2021-05-25 07:44:45', ' ', '', '', 'publish', 'closed', 'closed', '', '14', '', '', '2021-05-25 03:44:45', '2021-05-25 07:44:45', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/14/', 3, 'nav_menu_item', '', 0),
(15, 1, '2021-05-25 03:44:45', '2021-05-25 07:44:45', '', 'Events', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2021-05-25 03:44:45', '2021-05-25 07:44:45', '', 0, 'https://react-dev3.wp.wellnessliving.local/events/', 0, 'page', '', 0),
(16, 1, '2021-05-25 03:44:45', '2021-05-25 07:44:45', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2021-05-25 03:44:45', '2021-05-25 07:44:45', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/16/', 5, 'nav_menu_item', '', 0),
(17, 1, '2021-05-25 03:44:45', '2021-05-25 07:44:45', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2021-05-25 03:44:45', '2021-05-25 07:44:45', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/17/', 3, 'nav_menu_item', '', 0),
(18, 1, '2021-05-25 03:44:45', '2021-05-25 07:44:45', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2021-05-25 03:44:45', '2021-05-25 07:44:45', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/18/', 4, 'nav_menu_item', '', 0),
(19, 1, '2021-05-25 03:44:45', '2021-05-25 07:44:45', '', 'Schedule', '', 'publish', 'closed', 'closed', '', 'schedule', '', '', '2021-05-25 03:44:45', '2021-05-25 07:44:45', '', 0, 'https://react-dev3.wp.wellnessliving.local/schedule/', 0, 'page', '', 0),
(20, 1, '2021-05-25 03:44:45', '2021-05-25 07:44:45', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2021-05-25 03:44:45', '2021-05-25 07:44:45', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/20/', 6, 'nav_menu_item', '', 0),
(21, 1, '2021-05-25 03:44:45', '2021-05-25 07:44:45', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2021-05-25 03:44:45', '2021-05-25 07:44:45', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/21/', 4, 'nav_menu_item', '', 0),
(22, 1, '2021-05-25 03:44:45', '2021-05-25 07:44:45', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2021-05-25 03:44:45', '2021-05-25 07:44:45', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/22/', 5, 'nav_menu_item', '', 0),
(23, 1, '2021-05-25 03:44:45', '2021-05-25 07:44:45', '', 'Store', '', 'publish', 'closed', 'closed', '', 'store', '', '', '2021-05-25 03:44:45', '2021-05-25 07:44:45', '', 0, 'https://react-dev3.wp.wellnessliving.local/store/', 0, 'page', '', 0),
(24, 1, '2021-05-25 03:44:45', '2021-05-25 07:44:45', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2021-05-25 03:44:45', '2021-05-25 07:44:45', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/24/', 7, 'nav_menu_item', '', 0),
(25, 1, '2021-05-25 03:44:45', '2021-05-25 07:44:45', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2021-05-25 03:44:45', '2021-05-25 07:44:45', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/25/', 5, 'nav_menu_item', '', 0),
(26, 1, '2021-05-25 03:44:45', '2021-05-25 07:44:45', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2021-05-25 03:44:45', '2021-05-25 07:44:45', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/26/', 6, 'nav_menu_item', '', 0),
(27, 1, '2021-05-25 03:44:45', '2021-05-25 07:44:45', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2021-05-25 03:44:45', '2021-05-25 07:44:45', '', 0, 'https://react-dev3.wp.wellnessliving.local/about-us/', 0, 'page', '', 0),
(28, 1, '2021-05-25 03:44:45', '2021-05-25 07:44:45', '', 'Our Story', '', 'publish', 'closed', 'closed', '', 'our-story', '', '', '2021-05-25 03:44:45', '2021-05-25 07:44:45', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/our-story/', 8, 'nav_menu_item', '', 0),
(29, 1, '2021-05-25 03:44:45', '2021-05-25 07:44:45', '', 'Our Story', '', 'publish', 'closed', 'closed', '', 'our-story-2', '', '', '2021-05-25 03:44:45', '2021-05-25 07:44:45', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/our-story-2/', 6, 'nav_menu_item', '', 0),
(30, 1, '2021-05-25 03:44:45', '2021-05-25 07:44:45', '', 'Our Story', '', 'publish', 'closed', 'closed', '', 'our-story-3', '', '', '2021-05-25 03:44:45', '2021-05-25 07:44:45', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/our-story-3/', 7, 'nav_menu_item', '', 0),
(31, 1, '2021-05-25 03:44:45', '2021-05-25 07:44:45', '', 'Staff', '', 'publish', 'closed', 'closed', '', 'staff', '', '', '2021-05-25 03:44:45', '2021-05-25 07:44:45', '', 0, 'https://react-dev3.wp.wellnessliving.local/staff/', 0, 'page', '', 0),
(32, 1, '2021-05-25 03:44:45', '2021-05-25 07:44:45', '', 'Our Team', '', 'publish', 'closed', 'closed', '', 'our-team', '', '', '2021-05-25 03:44:45', '2021-05-25 07:44:45', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/our-team/', 9, 'nav_menu_item', '', 0),
(33, 1, '2021-05-25 03:44:45', '2021-05-25 07:44:45', '', 'Our Team', '', 'publish', 'closed', 'closed', '', 'our-team-2', '', '', '2021-05-25 03:44:45', '2021-05-25 07:44:45', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/our-team-2/', 7, 'nav_menu_item', '', 0),
(34, 1, '2021-05-25 03:44:46', '2021-05-25 07:44:46', '', 'Our Team', '', 'publish', 'closed', 'closed', '', 'our-team-3', '', '', '2021-05-25 03:44:46', '2021-05-25 07:44:46', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/our-team-3/', 8, 'nav_menu_item', '', 0),
(35, 1, '2021-05-25 03:44:46', '2021-05-25 07:44:46', '', 'Reviews', '', 'publish', 'closed', 'closed', '', 'reviews', '', '', '2021-05-25 03:44:46', '2021-05-25 07:44:46', '', 0, 'https://react-dev3.wp.wellnessliving.local/reviews/', 0, 'page', '', 0),
(36, 1, '2021-05-25 03:44:46', '2021-05-25 07:44:46', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2021-05-25 03:44:46', '2021-05-25 07:44:46', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/36/', 10, 'nav_menu_item', '', 0),
(37, 1, '2021-05-25 03:44:46', '2021-05-25 07:44:46', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2021-05-25 03:44:46', '2021-05-25 07:44:46', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/37/', 8, 'nav_menu_item', '', 0),
(38, 1, '2021-05-25 03:44:46', '2021-05-25 07:44:46', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2021-05-25 03:44:46', '2021-05-25 07:44:46', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/38/', 9, 'nav_menu_item', '', 0),
(39, 1, '2021-05-25 03:44:46', '2021-05-25 07:44:46', '', 'FAQ', '', 'publish', 'closed', 'closed', '', 'faq', '', '', '2021-05-25 03:44:46', '2021-05-25 07:44:46', '', 0, 'https://react-dev3.wp.wellnessliving.local/faq/', 0, 'page', '', 0),
(40, 1, '2021-05-25 03:44:46', '2021-05-25 07:44:46', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2021-05-25 03:44:46', '2021-05-25 07:44:46', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/40/', 11, 'nav_menu_item', '', 0),
(41, 1, '2021-05-25 03:44:46', '2021-05-25 07:44:46', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2021-05-25 03:44:46', '2021-05-25 07:44:46', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/41/', 9, 'nav_menu_item', '', 0),
(42, 1, '2021-05-25 03:44:46', '2021-05-25 07:44:46', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2021-05-25 03:44:46', '2021-05-25 07:44:46', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/42/', 10, 'nav_menu_item', '', 0),
(43, 1, '2021-05-25 03:44:46', '2021-05-25 07:44:46', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2021-05-25 03:44:46', '2021-05-25 07:44:46', '', 0, 'https://react-dev3.wp.wellnessliving.local/blog/', 0, 'page', '', 0),
(44, 1, '2021-05-25 03:44:46', '2021-05-25 07:44:46', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2021-05-25 03:44:46', '2021-05-25 07:44:46', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/44/', 12, 'nav_menu_item', '', 0),
(45, 1, '2021-05-25 03:44:46', '2021-05-25 07:44:46', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2021-05-25 03:44:46', '2021-05-25 07:44:46', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/45/', 10, 'nav_menu_item', '', 0),
(46, 1, '2021-05-25 03:44:46', '2021-05-25 07:44:46', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2021-05-25 03:44:46', '2021-05-25 07:44:46', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/46/', 11, 'nav_menu_item', '', 0),
(47, 1, '2021-05-25 03:44:46', '2021-05-25 07:44:46', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2021-05-25 03:44:46', '2021-05-25 07:44:46', '', 0, 'https://react-dev3.wp.wellnessliving.local/contact/', 0, 'page', '', 0),
(48, 1, '2021-05-25 03:44:46', '2021-05-25 07:44:46', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2021-05-25 03:44:46', '2021-05-25 07:44:46', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/48/', 13, 'nav_menu_item', '', 0),
(49, 1, '2021-05-25 03:44:46', '2021-05-25 07:44:46', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2021-05-25 03:44:46', '2021-05-25 07:44:46', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/49/', 11, 'nav_menu_item', '', 0),
(50, 1, '2021-05-25 03:44:46', '2021-05-25 07:44:46', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2021-05-25 03:44:46', '2021-05-25 07:44:46', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/50/', 12, 'nav_menu_item', '', 0),
(51, 1, '2021-05-25 03:44:46', '2021-05-25 07:44:46', '', 'Privacy', '', 'publish', 'closed', 'closed', '', 'privacy', '', '', '2021-05-25 03:44:46', '2021-05-25 07:44:46', '', 0, 'https://react-dev3.wp.wellnessliving.local/privacy/', 0, 'page', '', 0),
(52, 1, '2021-05-25 03:44:46', '2021-05-25 07:44:46', ' ', '', '', 'publish', 'closed', 'closed', '', '52', '', '', '2021-05-25 03:44:46', '2021-05-25 07:44:46', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/52/', 13, 'nav_menu_item', '', 0),
(53, 1, '2021-05-25 03:44:47', '2021-05-25 07:44:47', '', 'Terms Conditions', '', 'publish', 'closed', 'closed', '', 'terms-conditions', '', '', '2021-05-25 03:44:47', '2021-05-25 07:44:47', '', 0, 'https://react-dev3.wp.wellnessliving.local/terms-conditions/', 0, 'page', '', 0),
(54, 1, '2021-05-25 03:44:47', '2021-05-25 07:44:47', ' ', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2021-05-25 03:44:47', '2021-05-25 07:44:47', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/54/', 14, 'nav_menu_item', '', 0),
(55, 1, '2021-05-25 03:44:47', '2021-05-25 07:44:47', '', 'real-results-single', '', 'publish', 'closed', 'closed', '', 'real-results-single', '', '', '2021-05-25 03:44:47', '2021-05-25 07:44:47', '', 0, 'https://react-dev3.wp.wellnessliving.local/real-results-single/', 0, 'page', '', 0),
(56, 1, '2021-05-25 03:44:47', '2021-05-25 07:44:47', '', 'Locations', '', 'publish', 'closed', 'closed', '', 'locations', '', '', '2021-05-25 03:44:47', '2021-05-25 07:44:47', '', 0, 'https://react-dev3.wp.wellnessliving.local/locations/', 0, 'page', '', 0),
(57, 1, '2021-05-25 03:44:47', '2021-05-25 07:44:47', ' ', '', '', 'publish', 'closed', 'closed', '', '57', '', '', '2021-05-25 03:44:47', '2021-05-25 07:44:47', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/57/', 14, 'nav_menu_item', '', 0),
(58, 1, '2021-05-25 03:44:47', '2021-05-25 07:44:47', ' ', '', '', 'publish', 'closed', 'closed', '', '58', '', '', '2021-05-25 03:44:47', '2021-05-25 07:44:47', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/58/', 12, 'nav_menu_item', '', 0),
(59, 1, '2021-05-25 03:44:47', '2021-05-25 07:44:47', ' ', '', '', 'publish', 'closed', 'closed', '', '59', '', '', '2021-05-25 03:44:47', '2021-05-25 07:44:47', '', 0, 'https://react-dev3.wp.wellnessliving.local/2021/05/25/59/', 15, 'nav_menu_item', '', 0),
(60, 0, '2021-05-25 03:44:48', '2021-05-25 07:44:48', '', 'sign-in', '', 'publish', 'closed', 'closed', '', 'sign-in', '', '', '2021-05-25 03:44:48', '2021-05-25 07:44:48', '', 0, 'https://react-dev3.wp.wellnessliving.local/sign-in/', 0, 'technical_page', '', 0),
(61, 0, '2021-05-25 03:44:48', '2021-05-25 07:44:48', '', 'sign-up', '', 'publish', 'closed', 'closed', '', 'sign-up', '', '', '2021-05-25 03:44:48', '2021-05-25 07:44:48', '', 0, 'https://react-dev3.wp.wellnessliving.local/sign-up/', 0, 'technical_page', '', 0),
(62, 0, '2021-05-25 03:44:48', '2021-05-25 07:44:48', '', 'confirm', '', 'publish', 'closed', 'closed', '', 'confirm', '', '', '2021-05-25 03:44:48', '2021-05-25 07:44:48', '', 0, 'https://react-dev3.wp.wellnessliving.local/confirm/', 0, 'technical_page', '', 0),
(63, 0, '2021-05-25 03:44:48', '2021-05-25 07:44:48', '', 'profile', '', 'publish', 'closed', 'closed', '', 'profile', '', '', '2021-05-25 03:44:48', '2021-05-25 07:44:48', '', 0, 'https://react-dev3.wp.wellnessliving.local/profile/', 0, 'technical_page', '', 0),
(64, 0, '2021-05-25 03:44:48', '2021-05-25 07:44:48', '', 'create-account', '', 'publish', 'closed', 'closed', '', 'create-account', '', '', '2021-05-25 03:44:48', '2021-05-25 07:44:48', '', 0, 'https://react-dev3.wp.wellnessliving.local/create-account/', 0, 'technical_page', '', 0),
(65, 0, '2021-05-25 03:44:48', '2021-05-25 07:44:48', '', 'forgot-password', '', 'publish', 'closed', 'closed', '', 'forgot-password', '', '', '2021-05-25 03:44:48', '2021-05-25 07:44:48', '', 0, 'https://react-dev3.wp.wellnessliving.local/forgot-password/', 0, 'technical_page', '', 0),
(66, 0, '2021-05-25 03:44:48', '2021-05-25 07:44:48', '', 'reset-password', '', 'publish', 'closed', 'closed', '', 'reset-password', '', '', '2021-05-25 03:44:48', '2021-05-25 07:44:48', '', 0, 'https://react-dev3.wp.wellnessliving.local/reset-password/', 0, 'technical_page', '', 0),
(67, 0, '2021-05-25 03:44:49', '2021-05-25 07:44:49', '', 'user-waiver', '', 'publish', 'closed', 'closed', '', 'user-waiver', '', '', '2021-05-25 03:44:49', '2021-05-25 07:44:49', '', 0, 'https://react-dev3.wp.wellnessliving.local/user-waiver/', 0, 'technical_page', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_4_termmeta`
--

CREATE TABLE `wp_4_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_4_terms`
--

CREATE TABLE `wp_4_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_4_terms`
--

INSERT INTO `wp_4_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main menu', 'main-menu', 0),
(3, 'Footer menu', 'footer-menu', 0),
(4, 'Second Footer menu', 'second-footer-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_4_term_relationships`
--

CREATE TABLE `wp_4_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_4_term_relationships`
--

INSERT INTO `wp_4_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(3, 2, 0),
(4, 2, 0),
(6, 4, 0),
(8, 2, 0),
(9, 3, 0),
(10, 4, 0),
(12, 2, 0),
(13, 3, 0),
(14, 4, 0),
(16, 2, 0),
(17, 3, 0),
(18, 4, 0),
(20, 2, 0),
(21, 3, 0),
(22, 4, 0),
(24, 2, 0),
(25, 3, 0),
(26, 4, 0),
(28, 2, 0),
(29, 3, 0),
(30, 4, 0),
(32, 2, 0),
(33, 3, 0),
(34, 4, 0),
(36, 2, 0),
(37, 3, 0),
(38, 4, 0),
(40, 2, 0),
(41, 3, 0),
(42, 4, 0),
(44, 2, 0),
(45, 3, 0),
(46, 4, 0),
(48, 2, 0),
(49, 3, 0),
(50, 4, 0),
(52, 4, 0),
(54, 4, 0),
(57, 2, 0),
(58, 3, 0),
(59, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_4_term_taxonomy`
--

CREATE TABLE `wp_4_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_4_term_taxonomy`
--

INSERT INTO `wp_4_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 14),
(3, 3, 'nav_menu', '', 0, 12),
(4, 4, 'nav_menu', '', 0, 15);

-- --------------------------------------------------------

--
-- Table structure for table `wp_blogmeta`
--

CREATE TABLE `wp_blogmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_blogs`
--

CREATE TABLE `wp_blogs` (
  `blog_id` bigint(20) NOT NULL,
  `site_id` bigint(20) NOT NULL DEFAULT 0,
  `domain` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `public` tinyint(2) NOT NULL DEFAULT 1,
  `archived` tinyint(2) NOT NULL DEFAULT 0,
  `mature` tinyint(2) NOT NULL DEFAULT 0,
  `spam` tinyint(2) NOT NULL DEFAULT 0,
  `deleted` tinyint(2) NOT NULL DEFAULT 0,
  `lang_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_blogs`
--

INSERT INTO `wp_blogs` (`blog_id`, `site_id`, `domain`, `path`, `registered`, `last_updated`, `public`, `archived`, `mature`, `spam`, `deleted`, `lang_id`) VALUES
(1, 1, 'react-dev.wp.wellnessliving.local', '/', '2021-05-05 18:00:11', '2021-05-05 15:03:43', 1, 0, 0, 0, 0, 0),
(2, 1, 'react-dev1.wp.wellnessliving.local', '/', '2021-05-25 07:41:40', '2021-11-19 15:05:33', 1, 0, 0, 0, 0, 0),
(3, 1, 'react-dev2.wp.wellnessliving.local', '/', '2021-05-25 07:43:02', '2021-05-25 07:43:06', 1, 0, 0, 0, 0, 0),
(4, 1, 'react-dev3.wp.wellnessliving.local', '/', '2021-05-25 07:44:43', '2021-05-25 07:44:47', 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-05-05 17:58:55', '2021-05-05 14:58:55', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_domain_mapping`
--

CREATE TABLE `wp_domain_mapping` (
  `id` bigint(20) NOT NULL,
  `blog_id` bigint(20) NOT NULL,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_domain_mapping_logins`
--

CREATE TABLE `wp_domain_mapping_logins` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `blog_id` bigint(20) NOT NULL,
  `t` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://react-dev.wp.wellnessliving.local', 'yes'),
(2, 'home', 'https://react-dev.wp.wellnessliving.local', 'yes'),
(3, 'blogname', 'React 4 Multisite', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@example.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:96:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:16:\".*wp-signup.php$\";s:21:\"index.php?signup=true\";s:18:\".*wp-activate.php$\";s:23:\"index.php?activate=true\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:41:\"advanced-custom-fields-pro-master/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:17:\"wl-log/wl-log.php\";i:3;s:21:\"wl-roles/wl-roles.php\";i:4;s:17:\"wl_sdk/wl-sdk.php\";i:5;s:43:\"wl_site_constructor/wl-site-constructor.php\";i:6;s:46:\"wordpress-mu-domain-mapping/domain_mapping.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'wl-wizard', 'yes'),
(41, 'stylesheet', 'wl-wizard', 'yes'),
(42, 'comment_registration', '', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '5', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1653127922', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:8:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:11:\"wlr_blogger\";a:2:{s:4:\"name\";s:7:\"Blogger\";s:12:\"capabilities\";a:7:{s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:12:\"upload_files\";b:1;}}s:9:\"wl_client\";a:2:{s:4:\"name\";s:21:\"WellnessLiving Client\";s:12:\"capabilities\";a:35:{s:20:\"edit_published_posts\";b:1;s:12:\"upload_files\";b:1;s:22:\"delete_published_posts\";b:1;s:12:\"delete_posts\";b:1;s:4:\"read\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:12:\"create_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:17:\"manage_categories\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:13:\"publish_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:17:\"edit_others_posts\";b:0;s:10:\"edit_files\";b:0;s:18:\"edit_theme_options\";b:0;s:14:\"manage_options\";b:0;s:17:\"moderate_comments\";b:0;s:12:\"manage_links\";b:0;s:17:\"edit_others_pages\";b:0;s:19:\"delete_others_pages\";b:0;s:19:\"delete_others_posts\";b:0;s:15:\"unfiltered_html\";b:0;s:15:\"install_plugins\";b:0;s:13:\"update_plugin\";b:0;s:11:\"update_core\";b:0;s:11:\"edit_themes\";b:0;s:13:\"switch_themes\";b:0;}}s:14:\"wl_constructor\";a:2:{s:4:\"name\";s:16:\"Site Constructor\";s:12:\"capabilities\";a:34:{s:20:\"edit_published_posts\";b:1;s:12:\"upload_files\";b:1;s:22:\"delete_published_posts\";b:1;s:12:\"delete_posts\";b:1;s:4:\"read\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:12:\"create_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:17:\"manage_categories\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:13:\"publish_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:17:\"edit_others_posts\";b:0;s:10:\"edit_files\";b:0;s:18:\"edit_theme_options\";b:1;s:12:\"manage_links\";b:0;s:17:\"edit_others_pages\";b:0;s:19:\"delete_others_pages\";b:0;s:19:\"delete_others_posts\";b:0;s:15:\"unfiltered_html\";b:0;s:15:\"install_plugins\";b:0;s:13:\"update_plugin\";b:0;s:11:\"update_core\";b:0;s:11:\"edit_themes\";b:1;s:12:\"create_pages\";b:1;s:5:\"write\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'WPLANG', 'en_CA', 'yes'),
(102, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(108, 'cron', 'a:7:{i:1639141136;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1639148336;a:5:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1639148354;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1639148355;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1639148509;a:1:{s:21:\"update_network_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1639666736;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(109, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1620227023;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(121, 'https_detection_errors', 'a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}s:19:\"bad_response_source\";a:1:{i:0;s:55:\"It looks like the response did not come from this site.\";}}', 'yes'),
(125, '_site_transient_timeout_theme_roots', '1620228539', 'no'),
(126, '_site_transient_theme_roots', 'a:5:{s:14:\"constructor_wl\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:9:\"wl-wizard\";s:7:\"/themes\";}', 'no'),
(130, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.7.1.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.7.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.1\";s:7:\"version\";s:5:\"5.7.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.1-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.7.1-partial-0.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.1\";s:7:\"version\";s:5:\"5.7.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:3:\"5.7\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.7.1.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.7.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.1\";s:7:\"version\";s:5:\"5.7.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1620226741;s:15:\"version_checked\";s:3:\"5.7\";s:12:\"translations\";a:0:{}}', 'no'),
(131, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1620226742;s:7:\"checked\";a:5:{s:14:\"constructor_wl\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.7\";s:15:\"twentytwentyone\";s:3:\"1.2\";s:9:\"wl-wizard\";s:3:\"1.0\";}s:8:\"response\";a:1:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.3.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:2:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(132, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1620226743;s:7:\"checked\";a:26:{s:47:\"advanced-cron-manager/advanced-cron-manager.php\";s:5:\"2.3.8\";s:41:\"advanced-custom-fields-pro-master/acf.php\";s:6:\"5.7.10\";s:19:\"akismet/akismet.php\";s:5:\"4.1.9\";s:23:\"chatbot/qcld-wpwbot.php\";s:5:\"3.4.5\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:43:\"conversational-forms/qcformbuilder-core.php\";s:5:\"1.1.3\";s:23:\"elementor/elementor.php\";s:6:\"3.0.11\";s:31:\"elementor-pro/elementor-pro.php\";s:5:\"3.0.6\";s:29:\"elementor-wl/elementor-wl.php\";s:5:\"1.0.0\";s:25:\"gtranslate/gtranslate.php\";s:6:\"2.8.60\";s:31:\"embed-form/jotform-wp-embed.php\";s:5:\"1.2.3\";s:30:\"seo-by-rank-math/rank-math.php\";s:8:\"1.0.56.1\";s:38:\"seo-by-rank-math-pro/rank-math-pro.php\";s:5:\"2.4.2\";s:17:\"wl_sdk/wl-sdk.php\";s:3:\"1.0\";s:35:\"autodescription/autodescription.php\";s:5:\"4.1.3\";s:17:\"wl-log/wl-log.php\";s:3:\"0.3\";s:21:\"wl-roles/wl-roles.php\";s:3:\"1.0\";s:43:\"wl_site_constructor/wl-site-constructor.php\";s:3:\"0.1\";s:46:\"wordpress-mu-domain-mapping/domain_mapping.php\";s:7:\"0.5.5.1\";s:27:\"wp-crontrol/wp-crontrol.php\";s:5:\"1.7.1\";s:61:\"amazon-s3-and-cloudfront-pro/amazon-s3-and-cloudfront-pro.php\";s:5:\"2.3.2\";s:77:\"amazon-s3-and-cloudfront-assets-pull/amazon-s3-and-cloudfront-assets-pull.php\";s:5:\"1.1.1\";s:41:\"amazon-s3-and-cloudfront/wordpress-s3.php\";s:5:\"2.3.2\";s:23:\"wp-rocket/wp-rocket.php\";s:5:\"3.5.1\";s:24:\"wordpress-seo/wp-seo.php\";s:4:\"13.4\";s:40:\"wordpress-seo-premium/wp-seo-premium.php\";s:4:\"13.1\";}s:8:\"response\";a:10:{s:47:\"advanced-cron-manager/advanced-cron-manager.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:35:\"w.org/plugins/advanced-cron-manager\";s:4:\"slug\";s:21:\"advanced-cron-manager\";s:6:\"plugin\";s:47:\"advanced-cron-manager/advanced-cron-manager.php\";s:11:\"new_version\";s:5:\"2.4.1\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/advanced-cron-manager/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/advanced-cron-manager.2.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:66:\"https://ps.w.org/advanced-cron-manager/assets/icon.svg?rev=2520950\";s:3:\"svg\";s:66:\"https://ps.w.org/advanced-cron-manager/assets/icon.svg?rev=2520950\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/advanced-cron-manager/assets/banner-1544x500.png?rev=2520953\";s:2:\"1x\";s:76:\"https://ps.w.org/advanced-cron-manager/assets/banner-772x250.png?rev=2520953\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.6.3\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:23:\"chatbot/qcld-wpwbot.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/chatbot\";s:4:\"slug\";s:7:\"chatbot\";s:6:\"plugin\";s:23:\"chatbot/qcld-wpwbot.php\";s:11:\"new_version\";s:5:\"3.7.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/chatbot/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/chatbot.3.7.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/chatbot/assets/icon-256x256.png?rev=1990923\";s:2:\"1x\";s:60:\"https://ps.w.org/chatbot/assets/icon-256x256.png?rev=1990923\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:62:\"https://ps.w.org/chatbot/assets/banner-772x250.jpg?rev=2507463\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.7.1\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.7.1\";s:12:\"requires_php\";s:5:\"5.2.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:23:\"elementor/elementor.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:23:\"w.org/plugins/elementor\";s:4:\"slug\";s:9:\"elementor\";s:6:\"plugin\";s:23:\"elementor/elementor.php\";s:11:\"new_version\";s:5:\"3.2.3\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/elementor/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/elementor.3.2.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:62:\"https://ps.w.org/elementor/assets/icon-256x256.png?rev=1427768\";s:2:\"1x\";s:54:\"https://ps.w.org/elementor/assets/icon.svg?rev=1426809\";s:3:\"svg\";s:54:\"https://ps.w.org/elementor/assets/icon.svg?rev=1426809\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/elementor/assets/banner-1544x500.png?rev=1475479\";s:2:\"1x\";s:64:\"https://ps.w.org/elementor/assets/banner-772x250.png?rev=1475479\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.7.1\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:25:\"gtranslate/gtranslate.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:24:\"w.org/plugins/gtranslate\";s:4:\"slug\";s:10:\"gtranslate\";s:6:\"plugin\";s:25:\"gtranslate/gtranslate.php\";s:11:\"new_version\";s:6:\"2.8.63\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/gtranslate/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/gtranslate.2.8.63.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/gtranslate/assets/icon-256x256.png?rev=1625219\";s:2:\"1x\";s:63:\"https://ps.w.org/gtranslate/assets/icon-128x128.png?rev=1579941\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/gtranslate/assets/banner-1544x500.png?rev=2034820\";s:2:\"1x\";s:65:\"https://ps.w.org/gtranslate/assets/banner-772x250.png?rev=2034820\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.7.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:31:\"embed-form/jotform-wp-embed.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:24:\"w.org/plugins/embed-form\";s:4:\"slug\";s:10:\"embed-form\";s:6:\"plugin\";s:31:\"embed-form/jotform-wp-embed.php\";s:11:\"new_version\";s:5:\"1.2.5\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/embed-form/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/embed-form.1.2.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/embed-form/assets/icon-256x256.png?rev=2392194\";s:2:\"1x\";s:63:\"https://ps.w.org/embed-form/assets/icon-128x128.png?rev=2392194\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/embed-form/assets/banner-772x250.png?rev=2392194\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.7.1\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:30:\"seo-by-rank-math/rank-math.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:30:\"w.org/plugins/seo-by-rank-math\";s:4:\"slug\";s:16:\"seo-by-rank-math\";s:6:\"plugin\";s:30:\"seo-by-rank-math/rank-math.php\";s:11:\"new_version\";s:6:\"1.0.63\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/seo-by-rank-math/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/seo-by-rank-math.1.0.63.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:69:\"https://ps.w.org/seo-by-rank-math/assets/icon-256x256.png?rev=2348086\";s:2:\"1x\";s:61:\"https://ps.w.org/seo-by-rank-math/assets/icon.svg?rev=2348086\";s:3:\"svg\";s:61:\"https://ps.w.org/seo-by-rank-math/assets/icon.svg?rev=2348086\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/seo-by-rank-math/assets/banner-1544x500.png?rev=2348086\";s:2:\"1x\";s:71:\"https://ps.w.org/seo-by-rank-math/assets/banner-772x250.png?rev=2348086\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.7.1\";s:12:\"requires_php\";s:3:\"7.2\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"wp-crontrol/wp-crontrol.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/wp-crontrol\";s:4:\"slug\";s:11:\"wp-crontrol\";s:6:\"plugin\";s:27:\"wp-crontrol/wp-crontrol.php\";s:11:\"new_version\";s:6:\"1.10.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/wp-crontrol/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-crontrol.1.10.0.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:64:\"https://ps.w.org/wp-crontrol/assets/icon-256x256.png?rev=2455895\";s:2:\"1x\";s:56:\"https://ps.w.org/wp-crontrol/assets/icon.svg?rev=2455895\";s:3:\"svg\";s:56:\"https://ps.w.org/wp-crontrol/assets/icon.svg?rev=2455895\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-crontrol/assets/banner-1544x500.jpg?rev=2455905\";s:2:\"1x\";s:66:\"https://ps.w.org/wp-crontrol/assets/banner-772x250.jpg?rev=2455905\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.7.1\";s:12:\"requires_php\";s:5:\"5.3.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:41:\"amazon-s3-and-cloudfront/wordpress-s3.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:38:\"w.org/plugins/amazon-s3-and-cloudfront\";s:4:\"slug\";s:24:\"amazon-s3-and-cloudfront\";s:6:\"plugin\";s:41:\"amazon-s3-and-cloudfront/wordpress-s3.php\";s:11:\"new_version\";s:5:\"2.5.3\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/amazon-s3-and-cloudfront/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/amazon-s3-and-cloudfront.2.5.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/amazon-s3-and-cloudfront/assets/icon-256x256.jpg?rev=1809890\";s:2:\"1x\";s:77:\"https://ps.w.org/amazon-s3-and-cloudfront/assets/icon-128x128.jpg?rev=1809890\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/amazon-s3-and-cloudfront/assets/banner-1544x500.jpg?rev=1809890\";s:2:\"1x\";s:79:\"https://ps.w.org/amazon-s3-and-cloudfront/assets/banner-772x250.jpg?rev=1809890\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.7.1\";s:12:\"requires_php\";s:3:\"5.5\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"16.2\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.16.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=2363699\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}s:6:\"tested\";s:5:\"5.7.1\";s:12:\"requires_php\";s:6:\"5.6.20\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:6:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"classic-editor\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2019-07-07 18:34:45\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/plugin/classic-editor/1.5/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:9:\"elementor\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:6:\"3.0.11\";s:7:\"updated\";s:19:\"2020-10-12 12:19:14\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/translation/plugin/elementor/3.0.11/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:10:\"gtranslate\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:6:\"2.8.60\";s:7:\"updated\";s:19:\"2019-05-15 14:37:17\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/gtranslate/2.8.60/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:16:\"seo-by-rank-math\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:8:\"1.0.56.1\";s:7:\"updated\";s:19:\"2020-12-14 05:24:57\";s:7:\"package\";s:86:\"https://downloads.wordpress.org/translation/plugin/seo-by-rank-math/1.0.56.1/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:4;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:15:\"autodescription\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.1.3\";s:7:\"updated\";s:19:\"2021-02-18 17:28:28\";s:7:\"package\";s:82:\"https://downloads.wordpress.org/translation/plugin/autodescription/4.1.3/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:5;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:13:\"wordpress-seo\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:4:\"13.4\";s:7:\"updated\";s:19:\"2020-03-07 10:03:34\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/plugin/wordpress-seo/13.4/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:4:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.9\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"conversational-forms/qcformbuilder-core.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/conversational-forms\";s:4:\"slug\";s:20:\"conversational-forms\";s:6:\"plugin\";s:43:\"conversational-forms/qcformbuilder-core.php\";s:11:\"new_version\";s:5:\"1.1.3\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/conversational-forms/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/conversational-forms.1.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/conversational-forms/assets/icon-256x256.png?rev=2159992\";s:2:\"1x\";s:73:\"https://ps.w.org/conversational-forms/assets/icon-256x256.png?rev=2159992\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:75:\"https://ps.w.org/conversational-forms/assets/banner-772x250.jpg?rev=2156017\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"autodescription/autodescription.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/autodescription\";s:4:\"slug\";s:15:\"autodescription\";s:6:\"plugin\";s:35:\"autodescription/autodescription.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/autodescription/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/autodescription.4.1.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:68:\"https://ps.w.org/autodescription/assets/icon-256x256.png?rev=2153256\";s:2:\"1x\";s:60:\"https://ps.w.org/autodescription/assets/icon.svg?rev=2153256\";s:3:\"svg\";s:60:\"https://ps.w.org/autodescription/assets/icon.svg?rev=2153256\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/autodescription/assets/banner-1544x500.png?rev=2157443\";s:2:\"1x\";s:70:\"https://ps.w.org/autodescription/assets/banner-772x250.png?rev=2157443\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/autodescription/assets/banner-1544x500-rtl.png?rev=2157443\";s:2:\"1x\";s:74:\"https://ps.w.org/autodescription/assets/banner-772x250-rtl.png?rev=2157443\";}}s:46:\"wordpress-mu-domain-mapping/domain_mapping.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:41:\"w.org/plugins/wordpress-mu-domain-mapping\";s:4:\"slug\";s:27:\"wordpress-mu-domain-mapping\";s:6:\"plugin\";s:46:\"wordpress-mu-domain-mapping/domain_mapping.php\";s:11:\"new_version\";s:7:\"0.5.5.1\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/wordpress-mu-domain-mapping/\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/plugin/wordpress-mu-domain-mapping.0.5.5.1.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:71:\"https://s.w.org/plugins/geopattern-icon/wordpress-mu-domain-mapping.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(133, '_site_transient_timeout_browser_54855be98a049915c6fe552dcf945444', '1620831555', 'no'),
(134, '_site_transient_browser_54855be98a049915c6fe552dcf945444', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"88.0.4324.150\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(135, '_site_transient_timeout_php_check_6a93f292d9a273c004fc36e1f86d97b3', '1620831555', 'no'),
(136, '_site_transient_php_check_6a93f292d9a273c004fc36e1f86d97b3', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(138, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1620269957', 'no'),
(139, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:2:{i:0;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:64:\"Demo + Discussion group: Creating and Registering Block Patterns\";s:3:\"url\";s:68:\"https://www.meetup.com/learn-wordpress-discussions/events/277669527/\";s:6:\"meetup\";s:27:\"Learn WordPress Discussions\";s:10:\"meetup_url\";s:51:\"https://www.meetup.com/learn-wordpress-discussions/\";s:4:\"date\";s:19:\"2021-05-11 11:00:00\";s:8:\"end_date\";s:19:\"2021-05-11 12:00:00\";s:20:\"start_unix_timestamp\";i:1620756000;s:18:\"end_unix_timestamp\";i:1620759600;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:37.779998779297;s:9:\"longitude\";d:-122.41999816895;}}i:1;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:18:\"WordCamp Venezuela\";s:3:\"url\";s:36:\"https://venezuela.wordcamp.org/2021/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2021-05-06 16:00:00\";s:8:\"end_date\";s:19:\"2021-05-07 00:00:00\";s:20:\"start_unix_timestamp\";i:1620331200;s:18:\"end_unix_timestamp\";i:1620360000;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"VE\";s:8:\"latitude\";d:10.4805937;s:9:\"longitude\";d:-66.9036063;}}}}', 'no'),
(144, 'can_compress_scripts', '1', 'no'),
(153, 'finished_updating_comment_type', '1', 'yes'),
(157, 'new_admin_email', 'admin@example.com', 'yes'),
(164, 'current_theme', 'WL WIZARD', 'yes'),
(165, 'theme_mods_wl-wizard', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(166, 'theme_switched', '', 'yes'),
(167, 'recently_activated', 'a:0:{}', 'yes'),
(168, 'acf_version', '5.7.10', 'yes'),
(186, 'wl_sdk_business_id', '', 'yes'),
(187, 'wl_sdk_environment', 'staging', 'yes'),
(193, '_transient_health-check-site-status-result', '{\"good\":12,\"recommended\":5,\"critical\":3}', 'yes'),
(313, '_transient_timeout_acf_plugin_updates', '1639311903', 'no'),
(314, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:41:\"advanced-custom-fields-pro-master/acf.php\";s:11:\"new_version\";s:6:\"5.11.4\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.8.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";s:6:\"5.7.10\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_page_template', 'step-1.php'),
(4, 6, '_wp_page_template', 'step-2.php'),
(5, 7, '_wp_page_template', 'step-3.php'),
(6, 8, '_wp_page_template', 'step-4.php'),
(7, 9, '_wp_page_template', 'step-5.php'),
(8, 10, '_wp_page_template', 'wrench.php');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-05-05 17:58:55', '2021-05-05 14:58:55', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2021-05-05 17:58:55', '2021-05-05 14:58:55', '', 0, 'https://react-dev.wp.wellnessliving.local/?p=1', 0, 'post', '', 1),
(2, 1, '2021-05-05 17:58:55', '2021-05-05 14:58:55', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"https://react-dev.wp.wellnessliving.local/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-05-05 17:58:55', '2021-05-05 14:58:55', '', 0, 'https://react-dev.wp.wellnessliving.local/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-05-05 17:58:55', '2021-05-05 14:58:55', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Наш адрес сайта: https://react-dev.wp.wellnessliving.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Комментарии</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Медиафайлы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куки</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Встраиваемое содержимое других вебсайтов</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы запросите сброс пароля, ваш IP будет указан в email-сообщении о сбросе.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда мы отправляем ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph -->', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-05-05 17:58:55', '2021-05-05 14:58:55', '', 0, 'https://react-dev.wp.wellnessliving.local/?page_id=3', 0, 'page', '', 0),
(5, 1, '2021-05-05 18:03:43', '2021-05-05 15:03:43', '', 'STEP 1', '', 'publish', 'closed', 'closed', '', 'step-1', '', '', '2021-05-05 18:03:43', '2021-05-05 15:03:43', '', 0, 'https://react-dev.wp.wellnessliving.local/step-1/', 0, 'page', '', 0),
(6, 1, '2021-05-05 18:03:43', '2021-05-05 15:03:43', '', 'STEP 2', '', 'publish', 'closed', 'closed', '', 'step-2', '', '', '2021-05-05 18:03:43', '2021-05-05 15:03:43', '', 0, 'https://react-dev.wp.wellnessliving.local/step-2/', 0, 'page', '', 0),
(7, 1, '2021-05-05 18:03:43', '2021-05-05 15:03:43', '', 'STEP 3', '', 'publish', 'closed', 'closed', '', 'step-3', '', '', '2021-05-05 18:03:43', '2021-05-05 15:03:43', '', 0, 'https://react-dev.wp.wellnessliving.local/step-3/', 0, 'page', '', 0),
(8, 1, '2021-05-05 18:03:43', '2021-05-05 15:03:43', '', 'STEP 4', '', 'publish', 'closed', 'closed', '', 'step-4', '', '', '2021-05-05 18:03:43', '2021-05-05 15:03:43', '', 0, 'https://react-dev.wp.wellnessliving.local/step-4/', 0, 'page', '', 0),
(9, 1, '2021-05-05 18:03:43', '2021-05-05 15:03:43', '', 'STEP 5', '', 'publish', 'closed', 'closed', '', 'step-5', '', '', '2021-05-05 18:03:43', '2021-05-05 15:03:43', '', 0, 'https://react-dev.wp.wellnessliving.local/step-5/', 0, 'page', '', 0),
(10, 1, '2021-05-05 18:03:43', '2021-05-05 15:03:43', '', 'WRENCH', '', 'publish', 'closed', 'closed', '', 'wrench', '', '', '2021-05-05 18:03:43', '2021-05-05 15:03:43', '', 0, 'https://react-dev.wp.wellnessliving.local/wrench/', 0, 'page', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_registration_log`
--

CREATE TABLE `wp_registration_log` (
  `ID` bigint(20) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `IP` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `blog_id` bigint(20) NOT NULL DEFAULT 0,
  `date_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_registration_log`
--

INSERT INTO `wp_registration_log` (`ID`, `email`, `IP`, `blog_id`, `date_registered`) VALUES
(1, 'admin@example.com', '127.0.0.1', 2, '2021-05-05 18:23:45'),
(2, 'admin@example.com', '127.0.0.1', 2, '2021-05-25 10:41:40'),
(3, 'admin@example.com', '127.0.0.1', 3, '2021-05-25 10:43:03'),
(4, 'admin@example.com', '127.0.0.1', 4, '2021-05-25 10:44:44'),
(5, 'admin@example.com', '127.0.0.1', 5, '2021-08-11 17:10:52');

-- --------------------------------------------------------

--
-- Table structure for table `wp_signups`
--

CREATE TABLE `wp_signups` (
  `signup_id` bigint(20) NOT NULL,
  `domain` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `title` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `activation_key` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `meta` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_site`
--

CREATE TABLE `wp_site` (
  `id` bigint(20) NOT NULL,
  `domain` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_site`
--

INSERT INTO `wp_site` (`id`, `domain`, `path`) VALUES
(1, 'react-dev.wp.wellnessliving.local', '/');

-- --------------------------------------------------------

--
-- Table structure for table `wp_sitemeta`
--

CREATE TABLE `wp_sitemeta` (
  `meta_id` bigint(20) NOT NULL,
  `site_id` bigint(20) NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_sitemeta`
--

INSERT INTO `wp_sitemeta` (`meta_id`, `site_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'site_name', 'Сайты React 4 Multisite'),
(2, 1, 'admin_email', 'admin@example.com'),
(3, 1, 'admin_user_id', '1'),
(4, 1, 'registration', 'all'),
(5, 1, 'upload_filetypes', 'jpg jpeg png gif mov avi mpg 3gp 3g2 midi mid pdf doc ppt odt pptx docx pps ppsx xls xlsx key mp3 ogg flac m4a wav mp4 m4v webm ogv flv webp'),
(6, 1, 'blog_upload_space', '250'),
(7, 1, 'fileupload_maxk', '60000'),
(8, 1, 'site_admins', 'a:1:{i:0;s:5:\"admin\";}'),
(9, 1, 'allowedthemes', 'a:2:{s:14:\"constructor_wl\";b:1;s:9:\"wl-wizard\";b:1;}'),
(10, 1, 'illegal_names', 'a:9:{i:0;s:3:\"www\";i:1;s:3:\"web\";i:2;s:4:\"root\";i:3;s:5:\"admin\";i:4;s:4:\"main\";i:5;s:6:\"invite\";i:6;s:13:\"administrator\";i:7;s:5:\"files\";i:8;s:4:\"blog\";}'),
(11, 1, 'wpmu_upgrade_site', '49752'),
(12, 1, 'welcome_email', 'Howdy USERNAME,\r\n\r\nYour new SITE_NAME site has been successfully set up at:\r\nBLOG_URL\r\n\r\nYou can log in to the administrator account with the following information:\r\n\r\nUsername: USERNAME\r\nPassword: PASSWORD\r\nLog in here: BLOG_URLwp-login.php\r\n\r\nWe hope you enjoy your new site. Thanks!\r\n\r\n--The Team @ SITE_NAME'),
(13, 1, 'first_post', 'Welcome to %s. This is your first post. Edit or delete it, then start writing!'),
(14, 1, 'siteurl', 'https://react-dev.wp.wellnessliving.local/'),
(15, 1, 'add_new_users', '1'),
(16, 1, 'upload_space_check_disabled', '1'),
(17, 1, 'subdomain_install', '1'),
(18, 1, 'global_terms_enabled', '0'),
(19, 1, 'ms_files_rewriting', '0'),
(20, 1, 'initial_db_version', '49752'),
(21, 1, 'active_sitewide_plugins', 'a:0:{}'),
(22, 1, 'WPLANG', 'en_CA'),
(28, 1, 'user_count', '2'),
(29, 1, 'blog_count', '4'),
(30, 1, 'can_compress_scripts', '1'),
(37, 1, 'site_meta_supported', '1'),
(38, 1, 'recently_activated', 'a:0:{}'),
(45, 1, 'registrationnotification', 'yes'),
(46, 1, 'welcome_user_email', 'Howdy USERNAME,\r\n\r\nYour new account is set up.\r\n\r\nYou can log in with the following information:\r\nUsername: USERNAME\r\nPassword: PASSWORD\r\nLOGINLINK\r\n\r\nThanks!\r\n\r\n--The Team @ SITE_NAME'),
(47, 1, 'menu_items', 'a:0:{}'),
(48, 1, 'first_page', ''),
(49, 1, 'first_comment', ''),
(50, 1, 'first_comment_url', ''),
(51, 1, 'first_comment_author', ''),
(52, 1, 'limited_email_domains', ''),
(53, 1, 'banned_email_domains', ''),
(54, 1, 'new_admin_email', 'admin@example.com'),
(55, 1, 'first_comment_email', ''),
(56, 1, 'classic-editor-replace', 'classic'),
(57, 1, 'classic-editor-allow-sites', 'disallow'),
(58, 1, 'dm_hash', '0feddaf06bea20f19ac9783718754a71'),
(59, 1, 'dm_remote_login', '1'),
(60, 1, 'dm_redirect_admin', '1'),
(61, 1, 'dm_user_settings', '1'),
(68, 1, 'network_pages_2', 'a:4:{s:8:\"business\";a:5:{s:5:\"title\";s:11:\"Multisite 1\";s:6:\"domain\";s:31:\"multisite1.wellnessliving.local\";s:11:\"business_id\";s:5:\"48038\";s:12:\"website_type\";s:7:\"website\";s:11:\"environment\";s:7:\"staging\";}s:9:\"locations\";a:2:{s:16:\"default_location\";s:5:\"49800\";s:18:\"required_locations\";a:3:{i:0;s:5:\"49800\";i:1;s:5:\"49783\";i:2;s:5:\"49722\";}}s:5:\"theme\";s:14:\"constructor_wl\";s:5:\"pages\";a:14:{i:0;s:4:\"home\";i:1;s:7:\"classes\";i:2;s:8:\"schedule\";i:3;s:5:\"staff\";i:4;s:3:\"faq\";i:5;s:12:\"appointments\";i:6;s:7:\"reviews\";i:7;s:5:\"about\";i:8;s:6:\"events\";i:9;s:4:\"blog\";i:10;s:7:\"contact\";i:11;s:5:\"store\";i:12;s:7:\"privacy\";i:13;s:5:\"terms\";}}'),
(78, 1, 'wl_log_last_time_sent', '1639139100'),
(89, 1, 'network_pages_3', 'a:4:{s:8:\"business\";a:5:{s:5:\"title\";s:4:\"Dev2\";s:6:\"domain\";s:34:\"react-dev2.wp.wellnessliving.local\";s:11:\"business_id\";s:5:\"48038\";s:12:\"website_type\";s:7:\"website\";s:11:\"environment\";s:7:\"staging\";}s:9:\"locations\";a:2:{s:16:\"default_location\";s:5:\"49800\";s:18:\"required_locations\";a:3:{i:0;s:5:\"49800\";i:1;s:5:\"49722\";i:2;s:5:\"49783\";}}s:5:\"theme\";s:14:\"constructor_wl\";s:5:\"pages\";a:14:{i:0;s:4:\"home\";i:1;s:7:\"classes\";i:2;s:8:\"schedule\";i:3;s:5:\"staff\";i:4;s:3:\"faq\";i:5;s:12:\"appointments\";i:6;s:7:\"reviews\";i:7;s:5:\"about\";i:8;s:6:\"events\";i:9;s:4:\"blog\";i:10;s:7:\"contact\";i:11;s:5:\"store\";i:12;s:7:\"privacy\";i:13;s:5:\"terms\";}}'),
(90, 1, 'network_pages_4', 'a:4:{s:8:\"business\";a:5:{s:5:\"title\";s:4:\"Dev3\";s:6:\"domain\";s:34:\"react-dev3.wp.wellnessliving.local\";s:11:\"business_id\";s:5:\"48038\";s:12:\"website_type\";s:7:\"website\";s:11:\"environment\";s:7:\"staging\";}s:9:\"locations\";a:2:{s:16:\"default_location\";s:5:\"49800\";s:18:\"required_locations\";a:3:{i:0;s:5:\"49800\";i:1;s:5:\"49722\";i:2;s:5:\"49783\";}}s:5:\"theme\";s:14:\"constructor_wl\";s:5:\"pages\";a:14:{i:0;s:4:\"home\";i:1;s:7:\"classes\";i:2;s:8:\"schedule\";i:3;s:5:\"staff\";i:4;s:3:\"faq\";i:5;s:12:\"appointments\";i:6;s:7:\"reviews\";i:7;s:5:\"about\";i:8;s:6:\"events\";i:9;s:4:\"blog\";i:10;s:7:\"contact\";i:11;s:5:\"store\";i:12;s:7:\"privacy\";i:13;s:5:\"terms\";}}'),
(294, 1, 'network_pages_5', 'a:4:{s:8:\"business\";a:5:{s:5:\"title\";s:4:\"Test\";s:6:\"domain\";s:18:\"www.super-site.com\";s:11:\"business_id\";s:5:\"48038\";s:12:\"website_type\";s:7:\"website\";s:11:\"environment\";s:7:\"staging\";}s:9:\"locations\";a:2:{s:16:\"default_location\";s:5:\"49722\";s:18:\"required_locations\";a:3:{i:0;s:5:\"49722\";i:1;s:5:\"49800\";i:2;s:5:\"49783\";}}s:5:\"theme\";s:14:\"constructor_wl\";s:5:\"pages\";a:14:{i:0;s:4:\"home\";i:1;s:7:\"classes\";i:2;s:8:\"schedule\";i:3;s:5:\"staff\";i:4;s:3:\"faq\";i:5;s:12:\"appointments\";i:6;s:7:\"reviews\";i:7;s:5:\"about\";i:8;s:6:\"events\";i:9;s:4:\"blog\";i:10;s:7:\"contact\";i:11;s:5:\"store\";i:12;s:7:\"privacy\";i:13;s:5:\"terms\";}}'),
(450, 1, 'auto_update_plugins', 'a:0:{}'),
(674, 1, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:4:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/en_CA/wordpress-5.8.2.zip\";s:6:\"locale\";s:5:\"en_CA\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/en_CA/wordpress-5.8.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.2\";s:7:\"version\";s:5:\"5.8.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.2\";s:7:\"version\";s:5:\"5.8.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.2\";s:7:\"version\";s:5:\"5.8.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.4-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.7.4-partial-2.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.4-rollback-2.zip\";}s:7:\"current\";s:5:\"5.7.4\";s:7:\"version\";s:5:\"5.7.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:5:\"5.7.2\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1639139105;s:15:\"version_checked\";s:5:\"5.7.2\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-14 18:30:49\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}}'),
(675, 1, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1639139106;s:7:\"checked\";a:2:{s:14:\"constructor_wl\";s:3:\"1.0\";s:9:\"wl-wizard\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}'),
(676, 1, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1639139106;s:7:\"checked\";a:13:{s:41:\"advanced-custom-fields-pro-master/acf.php\";s:6:\"5.7.10\";s:23:\"chatbot/qcld-wpwbot.php\";s:5:\"3.8.1\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.6\";s:35:\"crop-thumbnails/crop-thumbnails.php\";s:5:\"1.4.0\";s:25:\"gtranslate/gtranslate.php\";s:6:\"2.8.63\";s:30:\"seo-by-rank-math/rank-math.php\";s:6:\"1.0.64\";s:38:\"seo-by-rank-math-pro/rank-math-pro.php\";s:5:\"2.4.2\";s:17:\"wl_sdk/wl-sdk.php\";s:3:\"1.0\";s:17:\"wl-log/wl-log.php\";s:3:\"0.3\";s:21:\"wl-roles/wl-roles.php\";s:3:\"1.0\";s:43:\"wl_site_constructor/wl-site-constructor.php\";s:3:\"0.1\";s:41:\"wordpress-importer/wordpress-importer.php\";s:3:\"0.7\";s:46:\"wordpress-mu-domain-mapping/domain_mapping.php\";s:7:\"0.5.5.1\";}s:8:\"response\";a:5:{s:23:\"chatbot/qcld-wpwbot.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:21:\"w.org/plugins/chatbot\";s:4:\"slug\";s:7:\"chatbot\";s:6:\"plugin\";s:23:\"chatbot/qcld-wpwbot.php\";s:11:\"new_version\";s:5:\"3.9.0\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/chatbot/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/chatbot.3.9.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/chatbot/assets/icon-256x256.png?rev=1990923\";s:2:\"1x\";s:60:\"https://ps.w.org/chatbot/assets/icon-256x256.png?rev=1990923\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:62:\"https://ps.w.org/chatbot/assets/banner-772x250.jpg?rev=2507463\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";s:5:\"5.2.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:25:\"gtranslate/gtranslate.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:24:\"w.org/plugins/gtranslate\";s:4:\"slug\";s:10:\"gtranslate\";s:6:\"plugin\";s:25:\"gtranslate/gtranslate.php\";s:11:\"new_version\";s:5:\"2.9.6\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/gtranslate/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/plugin/gtranslate.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/gtranslate/assets/icon-256x256.png?rev=2595917\";s:2:\"1x\";s:63:\"https://ps.w.org/gtranslate/assets/icon-128x128.png?rev=2595917\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/gtranslate/assets/banner-1544x500.png?rev=2034820\";s:2:\"1x\";s:65:\"https://ps.w.org/gtranslate/assets/banner-772x250.png?rev=2034820\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"2.8.1\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:30:\"seo-by-rank-math/rank-math.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:30:\"w.org/plugins/seo-by-rank-math\";s:4:\"slug\";s:16:\"seo-by-rank-math\";s:6:\"plugin\";s:30:\"seo-by-rank-math/rank-math.php\";s:11:\"new_version\";s:6:\"1.0.78\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/seo-by-rank-math/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/seo-by-rank-math.1.0.78.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:69:\"https://ps.w.org/seo-by-rank-math/assets/icon-256x256.png?rev=2639678\";s:2:\"1x\";s:61:\"https://ps.w.org/seo-by-rank-math/assets/icon.svg?rev=2639678\";s:3:\"svg\";s:61:\"https://ps.w.org/seo-by-rank-math/assets/icon.svg?rev=2639678\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/seo-by-rank-math/assets/banner-1544x500.png?rev=2639678\";s:2:\"1x\";s:71:\"https://ps.w.org/seo-by-rank-math/assets/banner-772x250.png?rev=2639678\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.6\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";s:3:\"7.2\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:41:\"advanced-custom-fields-pro-master/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:41:\"advanced-custom-fields-pro-master/acf.php\";s:11:\"new_version\";s:6:\"5.11.4\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.8.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:2:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:18:\"wordpress-importer\";s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:3:\"0.7\";s:7:\"updated\";s:19:\"2021-02-18 22:59:39\";s:7:\"package\";s:83:\"https://downloads.wordpress.org/translation/plugin/wordpress-importer/0.7/en_CA.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:18:\"wordpress-importer\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"0.7\";s:7:\"updated\";s:19:\"2021-08-15 22:46:06\";s:7:\"package\";s:83:\"https://downloads.wordpress.org/translation/plugin/wordpress-importer/0.7/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:3:{s:35:\"crop-thumbnails/crop-thumbnails.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:29:\"w.org/plugins/crop-thumbnails\";s:4:\"slug\";s:15:\"crop-thumbnails\";s:6:\"plugin\";s:35:\"crop-thumbnails/crop-thumbnails.php\";s:11:\"new_version\";s:5:\"1.4.0\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/crop-thumbnails/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/crop-thumbnails.1.4.0.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:60:\"https://ps.w.org/crop-thumbnails/assets/icon.svg?rev=1228698\";s:3:\"svg\";s:60:\"https://ps.w.org/crop-thumbnails/assets/icon.svg?rev=1228698\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/crop-thumbnails/assets/banner-1544x500.jpg?rev=626571\";s:2:\"1x\";s:69:\"https://ps.w.org/crop-thumbnails/assets/banner-772x250.jpg?rev=626571\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:32:\"w.org/plugins/wordpress-importer\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:3:\"0.7\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/wordpress-importer.0.7.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:71:\"https://ps.w.org/wordpress-importer/assets/icon-256x256.png?rev=1908375\";s:2:\"1x\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";s:3:\"svg\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.7\";}s:46:\"wordpress-mu-domain-mapping/domain_mapping.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:41:\"w.org/plugins/wordpress-mu-domain-mapping\";s:4:\"slug\";s:27:\"wordpress-mu-domain-mapping\";s:6:\"plugin\";s:46:\"wordpress-mu-domain-mapping/domain_mapping.php\";s:11:\"new_version\";s:7:\"0.5.5.1\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/wordpress-mu-domain-mapping/\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/plugin/wordpress-mu-domain-mapping.0.5.5.1.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:71:\"https://s.w.org/plugins/geopattern-icon/wordpress-mu-domain-mapping.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.1\";}}}'),
(677, 1, '_site_transient_timeout_browser_3b1f858232081161f48c9f461516f001', '1639761081'),
(678, 1, '_site_transient_browser_3b1f858232081161f48c9f461516f001', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"96.0.4664.45\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}'),
(681, 1, '_site_transient_timeout_browser_fe1f83deb80158b443a2e4acea08b442', '1640076999'),
(682, 1, '_site_transient_browser_fe1f83deb80158b443a2e4acea08b442', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"96.0.4664.93\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}'),
(685, 1, '_site_transient_timeout_available_translations', '1639484021');
INSERT INTO `wp_sitemeta` (`meta_id`, `site_id`, `meta_key`, `meta_value`) VALUES
(686, 1, '_site_transient_available_translations', 'a:126:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.2/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-09-05 06:01:21\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.2/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.17\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.17/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-14 14:01:58\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.18/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-20 19:46:45\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:22:\"Продължение\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"5.4.8\";s:7:\"updated\";s:19:\"2020-10-31 08:48:37\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.8/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.2/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-04-25 07:27:37\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-07-06 08:29:04\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.2/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-30 15:14:54\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-07-19 10:54:01\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.2/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-07-09 08:43:53\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Forts&#230;t\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-03-14 20:06:23\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-03-14 20:06:52\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/5.7.2/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-07-19 12:13:54\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.7.2/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-08 07:32:43\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-07-19 12:13:47\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-04-15 13:33:04\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.7.2/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-08-02 14:02:20\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.2/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-04-15 04:12:28\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-04-15 07:22:30\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-16 08:10:36\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-04-15 04:12:51\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-04-15 04:12:40\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-04-18 09:35:35\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.2/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-09-08 09:07:54\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-14 16:02:22\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-04 22:59:08\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-02 03:00:51\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-04-15 02:05:15\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.6.6\";s:7:\"updated\";s:19:\"2020-12-11 02:12:59\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.6/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:5:\"5.4.8\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.8/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.13\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.13/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-04-15 02:05:34\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-04-16 02:17:21\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-04-16 13:07:32\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2020-08-12 08:38:59\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.2/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-24 16:08:10\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-08-20 15:43:06\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-28 10:15:19\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-05-06 05:21:48\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.2/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-02-22 13:54:46\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-24 08:28:29\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-04-30 13:29:35\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.17\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.17/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-08-09 08:24:51\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.18/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.25\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.25/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-05-28 16:42:59\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"להמשיך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"5.4.8\";s:7:\"updated\";s:19:\"2020-11-06 12:34:38\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.8/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-05-13 08:03:31\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.2/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-04-15 13:34:18\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.7.2/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-26 14:52:10\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Tovább\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-04-24 02:11:27\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.18/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-07-24 17:20:09\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-09-03 00:25:42\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.2/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.18/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nutugne\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-07-03 08:25:10\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-30 20:40:17\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.7.2/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2018-07-10 11:35:44\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.18/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.13\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.13/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2021-10-03 06:15:17\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.18/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರೆಸಿ\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-07-08 04:56:41\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-17 10:36:11\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.7.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ຕໍ່\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-03-23 12:35:40\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-27 17:07:17\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.2/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"5.4.8\";s:7:\"updated\";s:19:\"2020-07-01 09:16:57\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.8/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2019-11-22 15:32:08\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.18/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2018-08-31 11:57:07\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.18/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.30\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.30/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ေဆာင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-09-01 14:13:48\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:6:\"5.2.13\";s:7:\"updated\";s:19:\"2020-05-31 16:07:59\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.13/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"जारीराख्नु \";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-05-10 14:42:01\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.7.2/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-18 08:55:40\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-08-30 13:21:21\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.17\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.17/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-09-08 12:05:21\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.26\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.26/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"دوام\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-05-30 09:51:29\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-02 12:53:00\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-07-20 18:36:04\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-07-20 18:29:14\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.7.2/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-09-08 21:24:34\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-14 18:30:49\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:5:\"5.4.8\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.8/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-07-11 15:17:09\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-04-23 11:54:14\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.7.2/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:6:\"5.1.11\";s:7:\"updated\";s:19:\"2019-04-30 13:03:56\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.1.11/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Nadaljujte\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-05-13 15:40:47\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.2/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-14 19:47:34\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-07-02 21:27:49\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:6:\"5.3.10\";s:7:\"updated\";s:19:\"2019-10-13 15:35:35\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.3.10/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.30\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.30/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.5.7\";s:7:\"updated\";s:19:\"2021-07-13 19:33:34\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.5.7/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.17\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.17/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-05-23 09:26:34\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2021-07-03 18:41:33\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.18/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-07-24 15:34:57\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.2/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"5.4.8\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.8/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-05-23 07:16:16\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.7.2/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-06-15 12:16:10\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-07-15 13:16:04\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-08-03 04:52:33\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}');
INSERT INTO `wp_sitemeta` (`meta_id`, `site_id`, `meta_key`, `meta_value`) VALUES
(687, 1, '_site_transient_timeout_php_check_9236ad8f2e178e4ce7b4ef5302b7fae9', '1640086880'),
(688, 1, '_site_transient_php_check_9236ad8f2e178e4ce7b4ef5302b7fae9', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}'),
(689, 1, '_site_transient_timeout_theme_roots', '1639560536'),
(690, 1, '_site_transient_theme_roots', 'a:2:{s:14:\"constructor_wl\";s:7:\"/themes\";s:9:\"wl-wizard\";s:7:\"/themes\";}'),
(693, 1, '_site_transient_timeout_browser_f2dcfae9f86a6bb04bcd228267797cd3', '1640251319'),
(694, 1, '_site_transient_browser_f2dcfae9f86a6bb04bcd228267797cd3', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"96.0.4664.110\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}'),
(695, 1, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1639689720'),
(696, 1, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:1:{i:0;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:17:\"State of the Word\";s:3:\"url\";s:58:\"https://wordpress.org/news/2021/11/state-of-the-word-2021/\";s:6:\"meetup\";s:0:\"\";s:10:\"meetup_url\";s:0:\"\";s:4:\"date\";s:19:\"2021-12-14 17:00:00\";s:8:\"end_date\";s:19:\"2021-12-14 19:00:00\";s:20:\"start_unix_timestamp\";i:1639519200;s:18:\"end_unix_timestamp\";i:1639526400;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:29.768241024468665;s:9:\"longitude\";d:-95.36765276500797;}}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Mr. Frodo II'),
(2, 1, 'first_name', 'Mr'),
(3, 1, 'last_name', 'Frodo'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '12'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'source_domain', 'react-dev.wp.wellnessliving.local'),
(20, 1, 'primary_blog', '1'),
(23, 2, 'nickname', 'constructor_'),
(24, 2, 'first_name', ''),
(25, 2, 'last_name', ''),
(26, 2, 'description', ''),
(27, 2, 'rich_editing', 'true'),
(28, 2, 'syntax_highlighting', 'true'),
(29, 2, 'comment_shortcuts', 'false'),
(30, 2, 'admin_color', 'fresh'),
(31, 2, 'use_ssl', '0'),
(32, 2, 'show_admin_bar_front', 'true'),
(33, 2, 'locale', ''),
(36, 2, 'dismissed_wp_pointers', ''),
(37, 1, 'wp_2_dashboard_quick_press_last_post_id', '245'),
(38, 2, 'primary_blog', ''),
(39, 2, 'source_domain', ''),
(40, 1, 'wp_2_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(41, 1, 'wp_2_user_level', '10'),
(42, 1, 'wp_3_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(43, 1, 'wp_3_user_level', '10'),
(44, 1, 'wp_4_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(45, 1, 'wp_4_user_level', '10'),
(46, 1, 'closedpostboxes_dashboard', 'a:5:{i:0;s:21:\"dashboard_site_health\";i:1;s:19:\"dashboard_right_now\";i:2;s:18:\"dashboard_activity\";i:3;s:21:\"dashboard_quick_press\";i:4;s:17:\"dashboard_primary\";}'),
(47, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(49, 1, 'wp_2_user-settings', 'libraryContent=browse'),
(50, 1, 'wp_2_user-settings-time', '1633110401'),
(54, 1, 'nav_menu_recently_edited', '8'),
(55, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:15:\"title-attribute\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(56, 1, 'metaboxhidden_nav-menus', 'a:0:{}'),
(65, 1, 'manageedit-postcolumnshidden', 'a:3:{i:0;s:0:\"\";i:1;s:15:\"rank_math_title\";i:2;s:21:\"rank_math_description\";}'),
(66, 1, 'manageedit-postcolumnshidden_default', '1'),
(67, 1, 'manageedit-pagecolumnshidden', 'a:3:{i:0;s:0:\"\";i:1;s:15:\"rank_math_title\";i:2;s:21:\"rank_math_description\";}'),
(68, 1, 'manageedit-pagecolumnshidden_default', '1'),
(69, 1, 'closedpostboxes_', 'a:1:{i:0;s:34:\"rank_math_metabox_link_suggestions\";}'),
(70, 1, 'metaboxhidden_', 'a:0:{}'),
(71, 1, 'last_update', '1639454199'),
(72, 1, 'meta-box-order_', 'a:3:{s:4:\"side\";s:56:\"rank_math_metabox_link_suggestions,wl_component_settings\";s:6:\"normal\";s:0:\"\";s:8:\"advanced\";s:0:\"\";}'),
(74, 1, 'closedpostboxes_dashboard-network', 'a:2:{i:0;s:27:\"network_dashboard_right_now\";i:1;s:17:\"dashboard_primary\";}'),
(75, 1, 'metaboxhidden_dashboard-network', 'a:0:{}'),
(77, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(79, 1, 'session_tokens', 'a:2:{s:64:\"2829b9b71fdb61f75f1a97a8df256178e3b5d5f91eed691e22ffab931200e1a5\";a:4:{s:10:\"expiration\";i:1639745690;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36\";s:5:\"login\";i:1639572890;}s:64:\"f2da266e878c41d821ded5b61c7f32f1abe64ade73828e8af3f044e5902f903c\";a:4:{s:10:\"expiration\";i:1639821522;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36\";s:5:\"login\";i:1639648722;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `spam` tinyint(2) NOT NULL DEFAULT 0,
  `deleted` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`, `spam`, `deleted`) VALUES
(1, 'admin', '$P$BWYyO.QaI.7iBpbvKtHmb3VGblkOWq.', 'admin', 'admin@example.com', 'https://react-dev.wp.wellnessliving.local', '2021-05-05 14:58:55', '', 0, 'Mr Frodo', 0, 0),
(2, 'constructor_', '$P$B7/6v1pjjWSLu3OzsK5b2NnHdFB0iD.', 'constructor_', '', '', '2021-05-05 15:23:45', '', 0, 'constructor_', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wl_log`
--

CREATE TABLE `wp_wl_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(32) NOT NULL,
  `event` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_wl_log`
--

INSERT INTO `wp_wl_log` (`id`, `time`, `type`, `event`) VALUES
(1, 1621892549, 'sdk', 'Method \"wl_sdk\\classes\\SDK::get_staff_members\". Message: The ID value for `k_business` that you have specified is empty.'),
(2, 1622882333, 'sdk', 'Method \"wl_sdk\\classes\\SDK::get_staff_members\". Message: The ID value for `k_business` that you have specified is empty.'),
(3, 1623052091, 'sdk', 'Method \"wl_sdk\\classes\\SDK::get_staff_members\". Message: The ID value for `k_business` that you have specified is empty.'),
(4, 1623093775, 'sdk', 'Method \"wl_sdk\\classes\\SDK::get_staff_members\". Message: The ID value for `k_business` that you have specified is empty.'),
(5, 1624919410, 'sdk', 'Method \"wl_sdk\\classes\\SDK::get_staff_members\". Message: The ID value for `k_business` that you have specified is empty.'),
(6, 1626951598, 'sdk', 'Method \"wl_sdk\\classes\\SDK::get_staff_members\". Message: The ID value for `k_business` that you have specified is empty.'),
(7, 1627295554, 'sdk', 'Method \"wl_sdk\\classes\\SDK::get_staff_members\". Message: The ID value for `k_business` that you have specified is empty.'),
(8, 1628666973, 'sdk', 'Method \"wl_sdk\\classes\\SDK::get_staff_members\". Message: The ID value for `k_business` that you have specified is empty.'),
(9, 1628694002, 'sdk', 'Method \"wl_sdk\\classes\\SDK::get_staff_members\". Message: The ID value for `k_business` that you have specified is empty.'),
(10, 1628886682, 'sdk', 'Method \"wl_sdk\\classes\\SDK::get_staff_members\". Message: Call to undefined function WellnessLiving\\bcdiv()'),
(11, 1629199881, 'sdk', 'Method \"wl_sdk\\classes\\SDK::get_staff_members\". Message: Call to undefined function WellnessLiving\\bcdiv()'),
(12, 1629285560, 'sdk', 'Method \"wl_sdk\\classes\\SDK::get_staff_members\". Message: Call to undefined function WellnessLiving\\bcdiv()'),
(13, 1629889708, 'sdk', 'Method \"wl_sdk\\classes\\SDK::get_staff_members\". Message: Call to undefined function WellnessLiving\\bcdiv()'),
(14, 1631708029, 'sdk', 'Method \"wl_sdk\\classes\\SDK::get_staff_members\". Message: Call to undefined function WellnessLiving\\bcdiv()'),
(15, 1632138940, 'sdk', 'Method \"wl_sdk\\classes\\SDK::get_staff_members\". Message: Call to undefined function WellnessLiving\\bcdiv()'),
(16, 1632818277, 'sdk', 'Method \"wl_sdk\\classes\\SDK::get_staff_members\". Message: Call to undefined function WellnessLiving\\bcdiv()'),
(17, 1633544109, 'sdk', 'Method \"wl_sdk\\classes\\SDK::get_staff_members\". Message: Call to undefined function WellnessLiving\\bcdiv()'),
(18, 1634668100, 'sdk', 'Method \"wl_sdk\\classes\\SDK::get_staff_members\". Message: Call to undefined function WellnessLiving\\bcdiv()'),
(19, 1634899191, 'sdk', 'Method \"wl_sdk\\classes\\SDK::get_staff_members\". Message: Call to undefined function WellnessLiving\\bcdiv()'),
(20, 1637575922, 'sdk', 'Method \"wl_sdk\\classes\\SDK::get_staff_members\". Message: Call to undefined function WellnessLiving\\bcdiv()'),
(21, 1639139107, 'sdk', 'Method \"wl_sdk\\classes\\SDK::get_staff_members\". Message: Call to undefined function WellnessLiving\\bcdiv()');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_2_actionscheduler_actions`
--
ALTER TABLE `wp_2_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`);

--
-- Indexes for table `wp_2_actionscheduler_claims`
--
ALTER TABLE `wp_2_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexes for table `wp_2_actionscheduler_groups`
--
ALTER TABLE `wp_2_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_2_actionscheduler_logs`
--
ALTER TABLE `wp_2_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indexes for table `wp_2_commentmeta`
--
ALTER TABLE `wp_2_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_2_comments`
--
ALTER TABLE `wp_2_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_2_links`
--
ALTER TABLE `wp_2_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_2_options`
--
ALTER TABLE `wp_2_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_2_postmeta`
--
ALTER TABLE `wp_2_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_2_posts`
--
ALTER TABLE `wp_2_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_2_rank_math_internal_links`
--
ALTER TABLE `wp_2_rank_math_internal_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Indexes for table `wp_2_rank_math_internal_meta`
--
ALTER TABLE `wp_2_rank_math_internal_meta`
  ADD PRIMARY KEY (`object_id`);

--
-- Indexes for table `wp_2_termmeta`
--
ALTER TABLE `wp_2_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_2_terms`
--
ALTER TABLE `wp_2_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_2_term_relationships`
--
ALTER TABLE `wp_2_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_2_term_taxonomy`
--
ALTER TABLE `wp_2_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_3_commentmeta`
--
ALTER TABLE `wp_3_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_3_comments`
--
ALTER TABLE `wp_3_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_3_links`
--
ALTER TABLE `wp_3_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_3_options`
--
ALTER TABLE `wp_3_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_3_postmeta`
--
ALTER TABLE `wp_3_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_3_posts`
--
ALTER TABLE `wp_3_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_3_termmeta`
--
ALTER TABLE `wp_3_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_3_terms`
--
ALTER TABLE `wp_3_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_3_term_relationships`
--
ALTER TABLE `wp_3_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_3_term_taxonomy`
--
ALTER TABLE `wp_3_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_4_commentmeta`
--
ALTER TABLE `wp_4_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_4_comments`
--
ALTER TABLE `wp_4_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_4_links`
--
ALTER TABLE `wp_4_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_4_options`
--
ALTER TABLE `wp_4_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_4_postmeta`
--
ALTER TABLE `wp_4_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_4_posts`
--
ALTER TABLE `wp_4_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_4_termmeta`
--
ALTER TABLE `wp_4_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_4_terms`
--
ALTER TABLE `wp_4_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_4_term_relationships`
--
ALTER TABLE `wp_4_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_4_term_taxonomy`
--
ALTER TABLE `wp_4_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_blogmeta`
--
ALTER TABLE `wp_blogmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `meta_key` (`meta_key`(191)),
  ADD KEY `blog_id` (`blog_id`);

--
-- Indexes for table `wp_blogs`
--
ALTER TABLE `wp_blogs`
  ADD PRIMARY KEY (`blog_id`),
  ADD KEY `domain` (`domain`(50),`path`(5)),
  ADD KEY `lang_id` (`lang_id`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_domain_mapping`
--
ALTER TABLE `wp_domain_mapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_id` (`blog_id`,`domain`,`active`);

--
-- Indexes for table `wp_domain_mapping_logins`
--
ALTER TABLE `wp_domain_mapping_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_registration_log`
--
ALTER TABLE `wp_registration_log`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IP` (`IP`);

--
-- Indexes for table `wp_signups`
--
ALTER TABLE `wp_signups`
  ADD PRIMARY KEY (`signup_id`),
  ADD KEY `activation_key` (`activation_key`),
  ADD KEY `user_email` (`user_email`),
  ADD KEY `user_login_email` (`user_login`,`user_email`),
  ADD KEY `domain_path` (`domain`(140),`path`(51));

--
-- Indexes for table `wp_site`
--
ALTER TABLE `wp_site`
  ADD PRIMARY KEY (`id`),
  ADD KEY `domain` (`domain`(140),`path`(51));

--
-- Indexes for table `wp_sitemeta`
--
ALTER TABLE `wp_sitemeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `meta_key` (`meta_key`(191)),
  ADD KEY `site_id` (`site_id`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wl_log`
--
ALTER TABLE `wp_wl_log`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_2_actionscheduler_actions`
--
ALTER TABLE `wp_2_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `wp_2_actionscheduler_claims`
--
ALTER TABLE `wp_2_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7827;

--
-- AUTO_INCREMENT for table `wp_2_actionscheduler_groups`
--
ALTER TABLE `wp_2_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_2_actionscheduler_logs`
--
ALTER TABLE `wp_2_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wp_2_commentmeta`
--
ALTER TABLE `wp_2_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_2_comments`
--
ALTER TABLE `wp_2_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_2_links`
--
ALTER TABLE `wp_2_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_2_options`
--
ALTER TABLE `wp_2_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8456;

--
-- AUTO_INCREMENT for table `wp_2_postmeta`
--
ALTER TABLE `wp_2_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=927;

--
-- AUTO_INCREMENT for table `wp_2_posts`
--
ALTER TABLE `wp_2_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `wp_2_rank_math_internal_links`
--
ALTER TABLE `wp_2_rank_math_internal_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_2_termmeta`
--
ALTER TABLE `wp_2_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_2_terms`
--
ALTER TABLE `wp_2_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_2_term_taxonomy`
--
ALTER TABLE `wp_2_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_3_commentmeta`
--
ALTER TABLE `wp_3_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_3_comments`
--
ALTER TABLE `wp_3_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_3_links`
--
ALTER TABLE `wp_3_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_3_options`
--
ALTER TABLE `wp_3_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `wp_3_postmeta`
--
ALTER TABLE `wp_3_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=331;

--
-- AUTO_INCREMENT for table `wp_3_posts`
--
ALTER TABLE `wp_3_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `wp_3_termmeta`
--
ALTER TABLE `wp_3_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_3_terms`
--
ALTER TABLE `wp_3_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_3_term_taxonomy`
--
ALTER TABLE `wp_3_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_4_commentmeta`
--
ALTER TABLE `wp_4_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_4_comments`
--
ALTER TABLE `wp_4_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_4_links`
--
ALTER TABLE `wp_4_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_4_options`
--
ALTER TABLE `wp_4_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `wp_4_postmeta`
--
ALTER TABLE `wp_4_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=331;

--
-- AUTO_INCREMENT for table `wp_4_posts`
--
ALTER TABLE `wp_4_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `wp_4_termmeta`
--
ALTER TABLE `wp_4_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_4_terms`
--
ALTER TABLE `wp_4_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_4_term_taxonomy`
--
ALTER TABLE `wp_4_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_blogmeta`
--
ALTER TABLE `wp_blogmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_blogs`
--
ALTER TABLE `wp_blogs`
  MODIFY `blog_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_domain_mapping`
--
ALTER TABLE `wp_domain_mapping`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=315;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wp_registration_log`
--
ALTER TABLE `wp_registration_log`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_signups`
--
ALTER TABLE `wp_signups`
  MODIFY `signup_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_site`
--
ALTER TABLE `wp_site`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_sitemeta`
--
ALTER TABLE `wp_sitemeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=697;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_wl_log`
--
ALTER TABLE `wp_wl_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
