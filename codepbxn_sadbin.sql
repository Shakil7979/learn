-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 27, 2021 at 12:37 AM
-- Server version: 10.3.31-MariaDB-log-cll-lve
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codepbxn_sadbin`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-03-25 06:18:08', '2021-03-25 06:18:08', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_ctf_feed_locator`
--

CREATE TABLE `wp_ctf_feed_locator` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feed_id` varchar(50) NOT NULL DEFAULT '',
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `html_location` varchar(50) NOT NULL DEFAULT 'unknown',
  `shortcode_atts` longtext NOT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_ctf_feed_locator`
--

INSERT INTO `wp_ctf_feed_locator` (`id`, `feed_id`, `post_id`, `html_location`, `shortcode_atts`, `last_update`) VALUES
(4, 'ctf__shakil_sadbin4', 120, 'footer', '[]', '2021-06-04 16:48:54'),
(3, 'ctf__shakil_sadbin4', 225, 'footer', '[]', '2021-06-04 15:43:48');

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
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
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://shakil.coderit.fun/dev/', 'yes'),
(2, 'home', 'http://shakil.coderit.fun/dev/', 'yes'),
(3, 'blogname', 'theme development', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'shakilsb4646@gmail.com', 'yes'),
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
(22, 'posts_per_page', '1', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:199:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:34:\"slider/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"slider/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"slider/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"slider/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"slider/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"slider/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"slider/([^/]+)/embed/?$\";s:39:\"index.php?slider=$matches[1]&embed=true\";s:27:\"slider/([^/]+)/trackback/?$\";s:33:\"index.php?slider=$matches[1]&tb=1\";s:35:\"slider/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?slider=$matches[1]&paged=$matches[2]\";s:42:\"slider/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?slider=$matches[1]&cpage=$matches[2]\";s:31:\"slider/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?slider=$matches[1]&page=$matches[2]\";s:23:\"slider/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"slider/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"slider/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"slider/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"slider/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"slider/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"works/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"works/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"works/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"works/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"works/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"works/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"works/([^/]+)/embed/?$\";s:38:\"index.php?works=$matches[1]&embed=true\";s:26:\"works/([^/]+)/trackback/?$\";s:32:\"index.php?works=$matches[1]&tb=1\";s:34:\"works/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?works=$matches[1]&paged=$matches[2]\";s:41:\"works/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?works=$matches[1]&cpage=$matches[2]\";s:30:\"works/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?works=$matches[1]&page=$matches[2]\";s:22:\"works/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"works/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"works/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"works/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"works/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"works/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:55:\"works_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?works_category=$matches[1]&feed=$matches[2]\";s:50:\"works_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?works_category=$matches[1]&feed=$matches[2]\";s:31:\"works_category/([^/]+)/embed/?$\";s:47:\"index.php?works_category=$matches[1]&embed=true\";s:43:\"works_category/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?works_category=$matches[1]&paged=$matches[2]\";s:25:\"works_category/([^/]+)/?$\";s:36:\"index.php?works_category=$matches[1]\";s:43:\"superb_features/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\"superb_features/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"superb_features/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"superb_features/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"superb_features/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"superb_features/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"superb_features/([^/]+)/embed/?$\";s:48:\"index.php?superb_features=$matches[1]&embed=true\";s:36:\"superb_features/([^/]+)/trackback/?$\";s:42:\"index.php?superb_features=$matches[1]&tb=1\";s:44:\"superb_features/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?superb_features=$matches[1]&paged=$matches[2]\";s:51:\"superb_features/([^/]+)/comment-page-([0-9]{1,})/?$\";s:55:\"index.php?superb_features=$matches[1]&cpage=$matches[2]\";s:40:\"superb_features/([^/]+)(?:/([0-9]+))?/?$\";s:54:\"index.php?superb_features=$matches[1]&page=$matches[2]\";s:32:\"superb_features/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"superb_features/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"superb_features/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"superb_features/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"superb_features/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"superb_features/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"testimonials/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"testimonials/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"testimonials/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"testimonials/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"testimonials/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"testimonials/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"testimonials/([^/]+)/embed/?$\";s:45:\"index.php?testimonials=$matches[1]&embed=true\";s:33:\"testimonials/([^/]+)/trackback/?$\";s:39:\"index.php?testimonials=$matches[1]&tb=1\";s:41:\"testimonials/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?testimonials=$matches[1]&paged=$matches[2]\";s:48:\"testimonials/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?testimonials=$matches[1]&cpage=$matches[2]\";s:37:\"testimonials/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?testimonials=$matches[1]&page=$matches[2]\";s:29:\"testimonials/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"testimonials/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"testimonials/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"testimonials/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"testimonials/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"testimonials/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:45:\"latest_blog_posts/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:55:\"latest_blog_posts/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:75:\"latest_blog_posts/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"latest_blog_posts/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"latest_blog_posts/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:51:\"latest_blog_posts/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"latest_blog_posts/([^/]+)/embed/?$\";s:50:\"index.php?latest_blog_posts=$matches[1]&embed=true\";s:38:\"latest_blog_posts/([^/]+)/trackback/?$\";s:44:\"index.php?latest_blog_posts=$matches[1]&tb=1\";s:46:\"latest_blog_posts/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?latest_blog_posts=$matches[1]&paged=$matches[2]\";s:53:\"latest_blog_posts/([^/]+)/comment-page-([0-9]{1,})/?$\";s:57:\"index.php?latest_blog_posts=$matches[1]&cpage=$matches[2]\";s:42:\"latest_blog_posts/([^/]+)(?:/([0-9]+))?/?$\";s:56:\"index.php?latest_blog_posts=$matches[1]&page=$matches[2]\";s:34:\"latest_blog_posts/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"latest_blog_posts/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"latest_blog_posts/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"latest_blog_posts/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"latest_blog_posts/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"latest_blog_posts/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"our_team/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"our_team/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"our_team/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"our_team/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"our_team/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"our_team/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"our_team/([^/]+)/embed/?$\";s:41:\"index.php?our_team=$matches[1]&embed=true\";s:29:\"our_team/([^/]+)/trackback/?$\";s:35:\"index.php?our_team=$matches[1]&tb=1\";s:37:\"our_team/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?our_team=$matches[1]&paged=$matches[2]\";s:44:\"our_team/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?our_team=$matches[1]&cpage=$matches[2]\";s:33:\"our_team/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?our_team=$matches[1]&page=$matches[2]\";s:25:\"our_team/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"our_team/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"our_team/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"our_team/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"our_team/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"our_team/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=72&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:25:\"add-to-any/add-to-any.php\";i:1;s:34:\"advanced-custom-fields-pro/acf.php\";i:2;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:3;s:33:\"classic-editor/classic-editor.php\";i:4;s:36:\"contact-form-7/wp-contact-form-7.php\";i:5;s:44:\"custom-twitter-feeds/custom-twitter-feed.php\";i:6;s:35:\"litespeed-cache/litespeed-cache.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'Amber', 'yes'),
(41, 'stylesheet', 'Amber', 'yes'),
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
(76, 'widget_categories', 'a:3:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:3;a:4:{s:5:\"title\";s:10:\"Categories\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:4:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:0:\"\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:854:\"<div class=\"footer-items footer-1\">\r\n<h4>Get in touch</h4>\r\n<ul>\r\n 	<li><a href=\"#\"><i class=\"fas fa-map-marker-alt\"></i><b>Address: </b>321 Street Name, United Kingdom, London</a></li>\r\n 	<li><a href=\"tel:7998711503020\"><i class=\"fas fa-phone-alt\"></i><b>Phone: </b>+7 998 71 150 30 20</a></li>\r\n 	<li><a href=\"mailto:info@ambertheme.com\"><i class=\"far fa-envelope \"></i><b>Email: </b>info@ambertheme.com</a></li>\r\n</ul>\r\n<div class=\"footer-map\"><iframe style=\"border: 0; width: 100%; height: 200px;\" tabindex=\"0\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d68539.0603603397!2d88.85474550245677!3d25.466979041554286!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fca59b7b36a8b1%3A0xf45bc2d5e2fd4e34!2sPhulbari%20Upazila!5e0!3m2!1sen!2sbd!4v1600394265782!5m2!1sen!2sbd\" allowfullscreen=\"\" aria-hidden=\"false\"></iframe></div>\r\n</div>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:591:\"					<div class=\"footer-items folow-us\">\r\n						<h4>Follow us</h4>\r\n						<ul >\r\n							<li><a href=\"\"><i class=\"fab fa-facebook-f\"></i>Like us on Facebook</a>\r\n							</li>\r\n\r\n							<li><a href=\"\"><i class=\"fab fa-twitter\"></i>Follow us on Twitter</a>\r\n							</li>\r\n\r\n							<li><a href=\"\"><i class=\"fab fa-youtube\"></i>Watch videos on YouTube</a>\r\n							</li>\r\n\r\n							<li><a href=\"\"><i class=\"fab fa-instagram-square\"></i>Friend us on Instagram</a>\r\n							</li>\r\n\r\n							<li><a href=\"\"><i class=\"fab fa-pinterest-p\"></i>Repin on Pinterest</a>\r\n							</li>\r\n						</ul>\r\n					</div>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:35:\"litespeed-cache/litespeed-cache.php\";s:47:\"LiteSpeed\\Activation::uninstall_litespeed_cache\";}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '74', 'yes'),
(82, 'page_on_front', '72', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1632205082', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:35:\"manage_custom_twitter_feeds_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-comments', 'a:3:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}i:3;a:2:{s:5:\"title\";s:15:\"Recent Comments\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_archives', 'a:3:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}i:3;a:3:{s:5:\"title\";s:8:\"Archives\";s:5:\"count\";i:0;s:8:\"dropdown\";i:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:7:{s:19:\"wp_inactive_widgets\";a:8:{i:0;s:10:\"archives-3\";i:1;s:10:\"calendar-3\";i:2;s:8:\"search-2\";i:3;s:14:\"recent-posts-2\";i:4;s:17:\"recent-comments-2\";i:5;s:10:\"archives-2\";i:6;s:12:\"categories-2\";i:7;s:6:\"meta-2\";}s:12:\"post_sidebar\";a:4:{i:0;s:12:\"categories-3\";i:1;s:17:\"recent-comments-3\";i:2;s:11:\"tag_cloud-2\";i:3;s:10:\"aw_works-3\";}s:13:\"footer_widget\";a:4:{i:0;s:16:\"af_widget_area-2\";i:1;s:21:\"twitter_widget_area-2\";i:2;s:26:\"amber_social_widget_area-2\";i:3;s:24:\"amber_post_widget_area-2\";}s:8:\"footer_1\";a:1:{i:0;s:6:\"text-3\";}s:8:\"footer_2\";a:1:{i:0;s:6:\"text-4\";}s:9:\"sidebar-1\";a:1:{i:0;s:6:\"text-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(107, 'cron', 'a:11:{i:1636971156;a:3:{s:27:\"litespeed_task_imgoptm_pull\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:16:\"litespeed_filter\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}s:19:\"litespeed_task_ccss\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:16:\"litespeed_filter\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}s:19:\"litespeed_task_lqip\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:16:\"litespeed_filter\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1636971492;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1637000292;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1637000577;a:1:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1637043490;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1637043501;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1637043505;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1637043558;a:1:{s:21:\"ai1wm_storage_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1637302690;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1637378975;a:1:{s:23:\"ctf_usage_tracking_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:2:{i:3;a:1:{s:5:\"title\";s:8:\"Calendar\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:2:{i:2;a:3:{s:5:\"title\";s:9:\"Cloud Tag\";s:5:\"count\";i:0;s:8:\"taxonomy\";s:8:\"post_tag\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'theme_mods_twentytwentyone', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1617869482;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:10:\"archives-3\";i:1;s:10:\"calendar-3\";}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(135, 'can_compress_scripts', '1', 'no'),
(149, 'finished_updating_comment_type', '1', 'yes'),
(151, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:22:\"shakilsb4646@gmail.com\";s:7:\"version\";s:5:\"5.8.2\";s:9:\"timestamp\";i:1636953570;}', 'no'),
(153, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(154, 'current_theme', 'Amber Theme', 'yes'),
(155, 'theme_mods_CoderIT', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:9:\"main_menu\";i:2;s:11:\"header_menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1617783885;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"Right-sidebar\";a:2:{i:0;s:10:\"archives-3\";i:1;s:10:\"calendar-3\";}}}}', 'yes'),
(156, 'theme_switched', '', 'yes'),
(165, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":4,\"critical\":1}', 'yes'),
(179, 'recently_activated', 'a:0:{}', 'yes'),
(182, 'WPLANG', '', 'yes'),
(183, 'new_admin_email', 'shakilsb4646@gmail.com', 'yes'),
(224, 'recovery_mode_email_last_sent', '1619688893', 'yes'),
(225, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(282, 'services-type_children', 'a:0:{}', 'yes'),
(325, 'theme_mods_amber', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"main-menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1617869216;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:8:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";i:6;s:10:\"archives-3\";i:7;s:10:\"calendar-3\";}}}}', 'yes'),
(361, 'redux_version_upgraded_from', '3.6.18', 'yes'),
(362, 'redux_demo', 'a:71:{s:12:\"opt-checkbox\";s:1:\"1\";s:15:\"opt-multi-check\";a:3:{i:1;s:1:\"1\";i:2;s:1:\"0\";i:3;s:1:\"0\";}s:9:\"opt-radio\";s:1:\"2\";s:12:\"opt-sortable\";a:3:{s:8:\"Text One\";s:6:\"Item 1\";s:8:\"Text Two\";s:6:\"Item 2\";s:10:\"Text Three\";s:6:\"Item 3\";}s:18:\"opt-check-sortable\";a:3:{s:3:\"cb1\";b:0;s:3:\"cb2\";b:1;s:3:\"cb3\";b:0;}s:12:\"text-example\";s:12:\"Default Text\";s:17:\"text-example-hint\";s:12:\"Default Text\";s:12:\"opt-textarea\";s:12:\"Default Text\";s:10:\"opt-editor\";s:27:\"Powered by Redux Framework.\";s:15:\"opt-editor-tiny\";s:27:\"Powered by Redux Framework.\";s:18:\"opt-ace-editor-css\";s:29:\"#header{\n   margin: 0 auto;\n}\";s:17:\"opt-ace-editor-js\";s:39:\"jQuery(document).ready(function(){\n\n});\";s:18:\"opt-ace-editor-php\";s:28:\"<?php\n    echo \"PHP String\";\";s:15:\"opt-color-title\";s:7:\"#000000\";s:16:\"opt-color-footer\";s:7:\"#dd9933\";s:16:\"opt-color-header\";a:2:{s:4:\"from\";s:7:\"#1e73be\";s:2:\"to\";s:7:\"#00897e\";}s:14:\"opt-color-rgba\";a:2:{s:5:\"color\";s:7:\"#7e33dd\";s:5:\"alpha\";s:2:\".8\";}s:14:\"opt-link-color\";a:3:{s:7:\"regular\";s:4:\"#aaa\";s:5:\"hover\";s:4:\"#bbb\";s:6:\"active\";s:4:\"#ccc\";}s:17:\"opt-palette-color\";s:3:\"red\";s:17:\"opt-header-border\";a:6:{s:12:\"border-color\";s:7:\"#1e73be\";s:12:\"border-style\";s:5:\"solid\";s:10:\"border-top\";s:3:\"3px\";s:12:\"border-right\";s:3:\"3px\";s:13:\"border-bottom\";s:3:\"3px\";s:11:\"border-left\";s:3:\"3px\";}s:26:\"opt-header-border-expanded\";a:6:{s:12:\"border-color\";s:7:\"#1e73be\";s:12:\"border-style\";s:5:\"solid\";s:10:\"border-top\";s:3:\"3px\";s:12:\"border-right\";s:3:\"3px\";s:13:\"border-bottom\";s:3:\"3px\";s:11:\"border-left\";s:3:\"3px\";}s:14:\"opt-dimensions\";a:2:{s:5:\"width\";i:200;s:6:\"height\";i:100;}s:20:\"opt-dimensions-width\";a:2:{s:5:\"width\";i:200;s:6:\"height\";i:100;}s:11:\"opt-spacing\";a:4:{s:10:\"margin-top\";s:3:\"1px\";s:12:\"margin-right\";s:3:\"2px\";s:13:\"margin-bottom\";s:3:\"3px\";s:11:\"margin-left\";s:3:\"4px\";}s:20:\"opt-spacing-expanded\";a:4:{s:10:\"margin-top\";s:3:\"1px\";s:12:\"margin-right\";s:3:\"2px\";s:13:\"margin-bottom\";s:3:\"3px\";s:11:\"margin-left\";s:3:\"4px\";}s:9:\"opt-media\";a:1:{s:3:\"url\";s:53:\"https://s.wordpress.org/style/images/codeispoetry.png\";}s:14:\"opt-button-set\";s:1:\"2\";s:20:\"opt-button-set-multi\";a:2:{i:0;s:1:\"2\";i:1;s:1:\"3\";}s:9:\"switch-on\";b:1;s:10:\"switch-off\";b:0;s:13:\"switch-parent\";i:0;s:13:\"switch-child1\";b:0;s:13:\"switch-child2\";b:0;s:10:\"opt-select\";s:1:\"2\";s:21:\"opt-select-stylesheet\";s:11:\"default.css\";s:19:\"opt-select-optgroup\";s:1:\"2\";s:16:\"opt-multi-select\";a:2:{i:0;s:1:\"2\";i:1;s:1:\"3\";}s:23:\"opt-image-select-layout\";s:1:\"2\";s:12:\"opt-patterns\";i:0;s:16:\"opt-image-select\";s:1:\"2\";s:11:\"opt-presets\";i:0;s:22:\"opt-select_image-field\";s:94:\"http://localhost/dev/wp-content/themes/Amber/inc/Redux/ReduxCore/../sample/presets/preset2.png\";s:16:\"opt-select-image\";s:98:\"http://localhost/dev/wp-content/themes/Amber/inc/Redux/ReduxCore/../sample/patterns/triangular.png\";s:16:\"opt-slider-label\";i:250;s:15:\"opt-slider-text\";i:75;s:17:\"opt-slider-select\";a:2:{i:1;i:100;i:2;i:300;}s:16:\"opt-slider-float\";d:0.5;s:11:\"opt-spinner\";s:2:\"40\";s:19:\"opt-typography-body\";a:4:{s:5:\"color\";s:7:\"#dd9933\";s:9:\"font-size\";s:4:\"30px\";s:11:\"font-family\";s:26:\"Arial,Helvetica,sans-serif\";s:11:\"font-weight\";s:6:\"Normal\";}s:14:\"opt-typography\";a:6:{s:5:\"color\";s:4:\"#333\";s:10:\"font-style\";s:3:\"700\";s:11:\"font-family\";s:4:\"Abel\";s:6:\"google\";b:1;s:9:\"font-size\";s:4:\"33px\";s:11:\"line-height\";s:4:\"40px\";}s:19:\"opt-homepage-layout\";a:3:{s:7:\"enabled\";a:4:{s:10:\"highlights\";s:10:\"Highlights\";s:6:\"slider\";s:6:\"Slider\";s:10:\"staticpage\";s:11:\"Static Page\";s:8:\"services\";s:8:\"Services\";}s:8:\"disabled\";a:0:{}s:6:\"backup\";a:0:{}}s:21:\"opt-homepage-layout-2\";a:2:{s:8:\"disabled\";a:2:{s:10:\"highlights\";s:10:\"Highlights\";s:6:\"slider\";s:6:\"Slider\";}s:7:\"enabled\";a:2:{s:10:\"staticpage\";s:11:\"Static Page\";s:8:\"services\";s:8:\"Services\";}}s:14:\"opt-text-email\";s:13:\"test@test.com\";s:12:\"opt-text-url\";s:25:\"http://reduxframework.com\";s:16:\"opt-text-numeric\";s:1:\"0\";s:22:\"opt-text-comma-numeric\";s:1:\"0\";s:25:\"opt-text-no-special-chars\";s:1:\"0\";s:20:\"opt-text-str_replace\";s:20:\"This is the default.\";s:21:\"opt-text-preg_replace\";s:1:\"0\";s:24:\"opt-text-custom_validate\";s:1:\"0\";s:20:\"opt-textarea-no-html\";s:27:\"No HTML is allowed in here.\";s:17:\"opt-textarea-html\";s:24:\"HTML is allowed in here.\";s:22:\"opt-textarea-some-html\";s:36:\"<p>Some HTML is allowed in here.</p>\";s:18:\"opt-required-basic\";b:0;s:19:\"opt-required-nested\";b:0;s:29:\"opt-required-nested-buttonset\";s:11:\"button-text\";s:19:\"opt-required-select\";s:10:\"no-sidebar\";s:32:\"opt-required-select-left-sidebar\";s:0:\"\";s:33:\"opt-required-select-right-sidebar\";s:0:\"\";s:19:\"opt-customizer-only\";s:1:\"2\";s:16:\"Upload-logo-text\";s:5:\"amber\";}', 'yes'),
(363, 'redux_demo-transients', 'a:2:{s:14:\"changed_values\";a:0:{}s:9:\"last_save\";i:1618222399;}', 'yes'),
(377, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.4.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1617893189;s:7:\"version\";s:3:\"5.4\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(409, 'amber', 'a:6:{s:8:\"last_tab\";s:0:\"\";s:16:\"Upload-logo-text\";a:9:{s:3:\"url\";s:65:\"http://shakil.coderit.fun/dev/wp-content/uploads/2021/04/logo.png\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";s:5:\"title\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:9:\"header-bg\";a:7:{s:16:\"background-color\";s:7:\"#02baab\";s:17:\"background-repeat\";s:9:\"no-repeat\";s:15:\"background-size\";s:5:\"cover\";s:21:\"background-attachment\";s:0:\"\";s:19:\"background-position\";s:13:\"center center\";s:16:\"background-image\";s:0:\"\";s:5:\"media\";a:4:{s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}}s:9:\"login-url\";s:1:\"#\";s:12:\"register-url\";s:1:\"#\";s:14:\"copyright_text\";s:102:\"<p>&copy; 2014 StylemixThemes. All rights reserved.</p> \r\n                <p>Powered by WordPress.</p>\";}', 'yes'),
(410, 'amber-transients', 'a:2:{s:14:\"changed_values\";a:1:{s:9:\"header-bg\";a:7:{s:16:\"background-color\";s:7:\"#1e73be\";s:17:\"background-repeat\";s:9:\"no-repeat\";s:15:\"background-size\";s:5:\"cover\";s:21:\"background-attachment\";s:0:\"\";s:19:\"background-position\";s:13:\"center center\";s:16:\"background-image\";s:0:\"\";s:5:\"media\";a:4:{s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}}}s:9:\"last_save\";i:1619794966;}', 'yes'),
(460, 'acf_version', '5.9.5', 'yes'),
(527, 'works_category_children', 'a:0:{}', 'yes'),
(742, 'widget_a2a_share_save_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(743, 'widget_a2a_follow_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(744, 'addtoany_options', 'a:39:{s:8:\"position\";s:6:\"bottom\";s:30:\"display_in_posts_on_front_page\";s:1:\"1\";s:33:\"display_in_posts_on_archive_pages\";s:1:\"1\";s:19:\"display_in_excerpts\";s:1:\"1\";s:16:\"display_in_posts\";s:1:\"1\";s:16:\"display_in_pages\";s:1:\"1\";s:22:\"display_in_attachments\";s:1:\"1\";s:15:\"display_in_feed\";s:1:\"1\";s:7:\"onclick\";s:2:\"-1\";s:9:\"icon_size\";s:2:\"32\";s:7:\"icon_bg\";s:8:\"original\";s:13:\"icon_bg_color\";s:7:\"#2a2a2a\";s:7:\"icon_fg\";s:8:\"original\";s:13:\"icon_fg_color\";s:7:\"#ffffff\";s:6:\"button\";s:10:\"A2A_SVG_32\";s:13:\"button_custom\";s:0:\"\";s:17:\"button_show_count\";s:2:\"-1\";s:6:\"header\";s:0:\"\";s:23:\"additional_js_variables\";s:0:\"\";s:14:\"additional_css\";s:0:\"\";s:12:\"custom_icons\";s:2:\"-1\";s:16:\"custom_icons_url\";s:1:\"/\";s:17:\"custom_icons_type\";s:3:\"png\";s:18:\"custom_icons_width\";s:0:\"\";s:19:\"custom_icons_height\";s:0:\"\";s:5:\"cache\";s:2:\"-1\";s:21:\"display_in_cpt_slider\";s:1:\"1\";s:20:\"display_in_cpt_works\";s:1:\"1\";s:30:\"display_in_cpt_superb_features\";s:1:\"1\";s:27:\"display_in_cpt_testimonials\";s:1:\"1\";s:32:\"display_in_cpt_latest_blog_posts\";s:1:\"1\";s:23:\"display_in_cpt_our_team\";s:1:\"1\";s:11:\"button_text\";s:5:\"Share\";s:24:\"special_facebook_options\";a:1:{s:10:\"show_count\";s:2:\"-1\";}s:25:\"special_pinterest_options\";a:1:{s:10:\"show_count\";s:2:\"-1\";}s:15:\"active_services\";a:5:{i:0;s:8:\"facebook\";i:1;s:7:\"twitter\";i:2;s:5:\"email\";i:3;s:9:\"pinterest\";i:4;s:8:\"linkedin\";}s:29:\"special_facebook_like_options\";a:2:{s:10:\"show_count\";s:2:\"-1\";s:4:\"verb\";s:4:\"like\";}s:29:\"special_twitter_tweet_options\";a:1:{s:10:\"show_count\";s:2:\"-1\";}s:29:\"special_pinterest_pin_options\";a:1:{s:10:\"show_count\";s:2:\"-1\";}}', 'yes'),
(762, 'widget_heateor_sss_follow', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(763, 'heateor_sss_gdpr_notification_read', '1', 'yes'),
(780, 'category_children', 'a:0:{}', 'yes'),
(814, 'widget_aw_works', 'a:2:{i:3;a:3:{s:5:\"title\";s:12:\"Letest Works\";s:5:\"limit\";s:1:\"1\";s:5:\"order\";s:4:\"DESC\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(817, 'widget_af_widget_area', 'a:2:{i:2;a:5:{s:5:\"title\";s:12:\"Get in touch\";s:7:\"address\";s:17:\"Khansama Dinajpur\";s:5:\"phone\";s:11:\"01797948798\";s:5:\"email\";s:22:\"shakilcoding@gmail.com\";s:10:\"google_map\";s:405:\"</iframe> \"><iframe style=\"border: 0; width: 100%; height: 200px;\" tabindex=\"0\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d68539.0603603397!2d88.85474550245677!3d25.466979041554286!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fca59b7b36a8b1%3A0xf45bc2d5e2fd4e34!2sPhulbari%20Upazila!5e0!3m2!1sen!2sbd!4v1600394265782!5m2!1sen!2sbd\" allowfullscreen=\"\" aria-hidden=\"false\"></iframe>\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(833, 'ctf_version', '1.8', 'yes'),
(834, 'ctf_usage_tracking', 'a:1:{s:7:\"enabled\";b:0;}', 'no'),
(835, 'widget_custom-twitter-feeds-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(836, 'ctf_usage_tracking_config', 'a:6:{s:3:\"day\";i:6;s:4:\"hour\";i:3;s:6:\"minute\";i:29;s:6:\"second\";i:35;s:6:\"offset\";i:530975;s:8:\"initsend\";i:1619839775;}', 'yes'),
(839, 'ctf_rating_notice', 'dismissed', 'no'),
(840, 'ctf_statuses', 'a:3:{s:13:\"first_install\";i:1619723384;s:12:\"feed_locator\";a:2:{s:10:\"last_check\";i:1622821428;s:11:\"initialized\";i:1619953178;}s:23:\"rating_notice_dismissed\";i:1622297176;}', 'yes'),
(841, 'ctf_db_version', '1.0.1', 'yes'),
(842, 'ctf_notifications', 'a:4:{s:6:\"update\";i:1628875428;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(843, 'ctf_newuser_notifications', 'a:4:{s:6:\"update\";i:1619723385;s:4:\"feed\";a:2:{s:6:\"review\";a:6:{s:5:\"title\";s:22:\"Could you help us out?\";s:7:\"content\";s:273:\"It\'s great to see that you\'ve been using the <strong><span>{plugin}</span></strong> plugin for a while now. Hopefully you\'re happy with it!&nbsp; If so, would you consider leaving a positive review? It really helps to support the plugin and helps others to discover it too!\";s:2:\"id\";s:6:\"review\";s:5:\"image\";s:12:\"ctf-icon.png\";s:4:\"btns\";a:4:{s:7:\"primary\";a:4:{s:3:\"url\";s:12:\"{review-url}\";s:4:\"attr\";a:1:{i:0;s:11:\"targetblank\";}s:5:\"class\";s:31:\"ctf_notice_dismiss ctf_main_cta\";s:4:\"text\";s:18:\"Sure, I\'d love to!\";}s:7:\"dismiss\";a:3:{s:3:\"url\";a:1:{s:28:\"ctf_ignore_rating_notice_nag\";s:1:\"1\";}s:5:\"class\";s:18:\"ctf_notice_dismiss\";s:4:\"text\";s:9:\"No thanks\";}s:8:\"complete\";a:3:{s:3:\"url\";a:1:{s:28:\"ctf_ignore_rating_notice_nag\";s:1:\"1\";}s:5:\"class\";s:18:\"ctf_notice_dismiss\";s:4:\"text\";s:27:\"I\'ve already given a review\";}s:5:\"later\";a:3:{s:3:\"url\";a:1:{s:28:\"ctf_ignore_rating_notice_nag\";s:5:\"later\";}s:5:\"class\";s:18:\"ctf_notice_dismiss\";s:4:\"text\";s:12:\"Ask Me Later\";}}s:4:\"wait\";s:2:\"14\";}s:8:\"discount\";a:8:{s:5:\"title\";s:28:\"Attention {platform} Lovers!\";s:7:\"content\";s:221:\"<strong><span>Exclusive offer!</span></strong> We don\'t run promotions very often, but for a limited time we\'re offering <strong><span>{amount} off</span></strong> our Pro version to all users of our free {plugin} plugin.\";s:2:\"id\";s:8:\"discount\";s:6:\"amount\";s:3:\"60%\";s:5:\"image\";s:12:\"ctf-icon.png\";s:13:\"image_overlay\";s:7:\"60% off\";s:4:\"btns\";a:2:{s:7:\"primary\";a:4:{s:3:\"url\";s:127:\"https://smashballoon.com/{slug}/?utm_campaign={campaign}&utm_source=notices&utm_medium=newuser&discount={lowerplatform}thankyou\";s:5:\"class\";s:32:\"ctf_notice_dismiss ctf_offer_btn\";s:4:\"text\";s:14:\"Get this offer\";s:4:\"attr\";a:1:{i:0;s:11:\"targetblank\";}}s:7:\"dismiss\";a:3:{s:3:\"url\";a:1:{s:31:\"ctf_ignore_new_user_sale_notice\";s:6:\"always\";}s:5:\"class\";s:18:\"ctf_notice_dismiss\";s:4:\"text\";s:18:\"I\'m not interested\";}}s:4:\"wait\";s:2:\"30\";}}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}', 'yes'),
(844, 'ctf_options', 'a:92:{s:12:\"access_token\";s:50:\"1075242205428641792-jdECtudBMIL97hRI3TQ8wigfxFfIoD\";s:19:\"access_token_secret\";s:45:\"MsZaQLoeMLZXoZGnHl6MsI9j7nisbqMyEB24vRf30Dm1x\";s:15:\"have_own_tokens\";b:0;s:16:\"use_own_consumer\";b:0;s:17:\"preserve_settings\";b:0;s:27:\"usertimeline_includereplies\";b:0;s:27:\"hometimeline_includereplies\";b:0;s:31:\"mentionstimeline_includereplies\";b:0;s:3:\"tab\";s:9:\"configure\";s:12:\"consumer_key\";s:0:\"\";s:15:\"consumer_secret\";s:0:\"\";s:4:\"type\";s:12:\"usertimeline\";s:17:\"usertimeline_text\";s:13:\"shakil_sadbin\";s:11:\"search_text\";s:0:\"\";s:3:\"num\";s:1:\"4\";s:10:\"cache_time\";s:1:\"3\";s:15:\"cache_time_unit\";s:4:\"3600\";s:14:\"includereplies\";b:0;s:21:\"width_mobile_no_fixed\";i:0;s:17:\"include_retweeter\";b:1;s:14:\"include_avatar\";b:1;s:14:\"include_author\";b:1;s:12:\"include_logo\";b:1;s:12:\"include_text\";i:0;s:25:\"include_media_placeholder\";b:1;s:12:\"include_date\";b:1;s:15:\"include_actions\";b:1;s:19:\"include_twitterlink\";i:0;s:10:\"ajax_theme\";i:0;s:15:\"include_linkbox\";b:1;s:9:\"creditctf\";i:0;s:10:\"showbutton\";i:0;s:10:\"showheader\";i:0;s:15:\"persistentcache\";b:1;s:11:\"selfreplies\";i:0;s:14:\"disableintents\";i:0;s:14:\"disableawesome\";i:0;s:9:\"shorturls\";i:0;s:5:\"width\";s:3:\"100\";s:10:\"width_unit\";s:1:\"%\";s:6:\"height\";s:0:\"\";s:11:\"height_unit\";s:2:\"px\";s:5:\"class\";s:0:\"\";s:6:\"layout\";s:4:\"list\";s:11:\"masonrycols\";s:1:\"3\";s:17:\"masonrymobilecols\";s:1:\"1\";s:12:\"carouselcols\";s:1:\"3\";s:18:\"carouselmobilecols\";s:1:\"1\";s:12:\"carouselloop\";s:4:\"none\";s:14:\"carouselarrows\";s:7:\"onhover\";s:14:\"carouselheight\";s:7:\"tallest\";s:12:\"carouseltime\";s:4:\"5000\";s:10:\"custom_css\";s:0:\"\";s:9:\"custom_js\";s:0:\"\";s:4:\"gdpr\";s:4:\"auto\";s:14:\"request_method\";s:4:\"auto\";s:16:\"cron_cache_clear\";s:5:\"unset\";s:10:\"multiplier\";s:4:\"1.25\";s:7:\"showbio\";b:1;s:12:\"disablelinks\";b:0;s:17:\"linktexttotwitter\";b:0;s:7:\"bgcolor\";s:1:\"#\";s:12:\"tweetbgcolor\";s:1:\"#\";s:13:\"headerbgcolor\";s:1:\"#\";s:15:\"headertextcolor\";s:7:\"#ffffff\";s:10:\"headertext\";s:0:\"\";s:8:\"timezone\";s:7:\"default\";s:10:\"dateformat\";s:1:\"1\";s:10:\"datecustom\";s:0:\"\";s:5:\"mtime\";s:0:\"\";s:5:\"htime\";s:0:\"\";s:7:\"nowtime\";s:0:\"\";s:12:\"datetextsize\";s:7:\"inherit\";s:14:\"datetextweight\";s:7:\"inherit\";s:14:\"authortextsize\";s:7:\"inherit\";s:16:\"authortextweight\";s:7:\"inherit\";s:8:\"logosize\";s:7:\"inherit\";s:9:\"logocolor\";s:7:\"#ffffff\";s:13:\"tweettextsize\";s:7:\"inherit\";s:15:\"tweettextweight\";s:7:\"inherit\";s:9:\"textcolor\";s:7:\"#ffffff\";s:10:\"textlength\";s:3:\"280\";s:13:\"retweetedtext\";s:9:\"Retweeted\";s:13:\"linktextcolor\";s:7:\"#ffffff\";s:16:\"quotedauthorsize\";s:7:\"inherit\";s:18:\"quotedauthorweight\";s:7:\"inherit\";s:8:\"iconsize\";s:7:\"inherit\";s:9:\"iconcolor\";s:7:\"#ffffff\";s:15:\"twitterlinktext\";s:7:\"Twitter\";s:11:\"buttoncolor\";s:1:\"#\";s:15:\"buttontextcolor\";s:7:\"#ffffff\";s:10:\"buttontext\";s:12:\"Load More...\";}', 'yes'),
(878, 'widget_twitter_widget_area', 'a:2:{i:2;a:1:{s:5:\"title\";s:13:\"Letest Twitts\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(883, 'widget_social_widget_area', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(884, 'widget_amber_social_widget_area', 'a:2:{i:2;a:6:{s:5:\"title\";s:9:\"Follow Us\";s:8:\"facebook\";s:12:\"facebook.com\";s:7:\"twitter\";s:11:\"twitter.com\";s:7:\"youtube\";s:11:\"youtube.com\";s:9:\"Instagram\";s:13:\"instagram.com\";s:9:\"Pinterest\";s:13:\"pinterest.com\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(885, 'widget_amber_post_widget_area', 'a:2:{i:2;a:1:{s:5:\"title\";s:11:\"Letest Post\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1015, 'secret_key', '/Vz-[n($~LlM*yWw[yR*36)gxOwl8w7ay18Q}fpfe9A+j#M]^,P6W+@>_:M]=^cV', 'no'),
(1284, 'ai1wm_secret_key', 'AS0SxCbVhXm0', 'yes'),
(1285, 'ai1wm_status', 'a:2:{s:4:\"type\";s:8:\"download\";s:7:\"message\";s:338:\"<a href=\"http://shakil.coderit.fun/dev/wp-content/ai1wm-backups/shakil.coderit.fun-dev-20210810-044635-vtic39.wpress\" class=\"ai1wm-button-green ai1wm-emphasize ai1wm-button-download\" title=\"shakil.coderit.fun\" download=\"shakil.coderit.fun-dev-20210810-044635-vtic39.wpress\"><span>Download shakil.coderit.fun</span><em>Size: 74 MB</em></a>\";}', 'yes'),
(1289, '_site_transient_ai1wm_last_check_for_updates', '1636953566', 'no'),
(1290, 'ai1wm_updater', 'a:0:{}', 'yes'),
(1385, 'litespeed.cloud._summary', 'a:2:{s:19:\"curr_request.wp/ver\";i:0;s:19:\"last_request.wp/ver\";i:1628875459;}', 'yes'),
(1386, 'litespeed.conf._version', '3.6.4', 'yes'),
(1387, 'litespeed.conf.hash', 'sXe59z0EZ5QTkvdkEn0qnbPTxzCXcYug', 'yes'),
(1388, 'litespeed.conf.auto_upgrade', '', 'yes'),
(1389, 'litespeed.conf.api_key', '', 'yes'),
(1390, 'litespeed.conf.server_ip', '', 'yes'),
(1391, 'litespeed.conf.news', '1', 'yes'),
(1392, 'litespeed.conf.cache', '1', 'yes'),
(1393, 'litespeed.conf.cache-priv', '1', 'yes'),
(1394, 'litespeed.conf.cache-commenter', '1', 'yes'),
(1395, 'litespeed.conf.cache-rest', '1', 'yes'),
(1396, 'litespeed.conf.cache-page_login', '1', 'yes'),
(1397, 'litespeed.conf.cache-favicon', '1', 'yes'),
(1398, 'litespeed.conf.cache-resources', '1', 'yes'),
(1399, 'litespeed.conf.cache-mobile', '', 'yes'),
(1400, 'litespeed.conf.cache-mobile_rules', 'a:7:{i:0;s:6:\"Mobile\";i:1;s:7:\"Android\";i:2;s:5:\"Silk/\";i:3;s:6:\"Kindle\";i:4;s:10:\"BlackBerry\";i:5;s:10:\"Opera Mini\";i:6;s:10:\"Opera Mobi\";}', 'yes'),
(1401, 'litespeed.conf.cache-browser', '', 'yes'),
(1402, 'litespeed.conf.cache-exc_useragents', 'a:0:{}', 'yes'),
(1403, 'litespeed.conf.cache-exc_cookies', 'a:0:{}', 'yes'),
(1404, 'litespeed.conf.cache-exc_qs', 'a:0:{}', 'yes'),
(1405, 'litespeed.conf.cache-exc_cat', 'a:0:{}', 'yes'),
(1406, 'litespeed.conf.cache-exc_tag', 'a:0:{}', 'yes'),
(1407, 'litespeed.conf.cache-force_uri', 'a:0:{}', 'yes'),
(1408, 'litespeed.conf.cache-force_pub_uri', 'a:0:{}', 'yes'),
(1409, 'litespeed.conf.cache-priv_uri', 'a:0:{}', 'yes'),
(1410, 'litespeed.conf.cache-exc', 'a:0:{}', 'yes'),
(1411, 'litespeed.conf.cache-exc_roles', 'a:0:{}', 'yes'),
(1412, 'litespeed.conf.cache-drop_qs', 'a:4:{i:0;s:6:\"fbclid\";i:1;s:5:\"gclid\";i:2;s:4:\"utm*\";i:3;s:3:\"_ga\";}', 'yes'),
(1413, 'litespeed.conf.cache-ttl_pub', '604800', 'yes'),
(1414, 'litespeed.conf.cache-ttl_priv', '1800', 'yes'),
(1415, 'litespeed.conf.cache-ttl_frontpage', '604800', 'yes'),
(1416, 'litespeed.conf.cache-ttl_feed', '604800', 'yes'),
(1417, 'litespeed.conf.cache-ttl_rest', '604800', 'yes'),
(1418, 'litespeed.conf.cache-ttl_browser', '31557600', 'yes'),
(1419, 'litespeed.conf.cache-ttl_status', 'a:3:{i:0;s:8:\"403 3600\";i:1;s:8:\"404 3600\";i:2;s:8:\"500 3600\";}', 'yes'),
(1420, 'litespeed.conf.cache-login_cookie', '', 'yes'),
(1421, 'litespeed.conf.cache-vary_group', 'a:0:{}', 'yes'),
(1422, 'litespeed.conf.purge-upgrade', '1', 'yes'),
(1423, 'litespeed.conf.purge-stale', '', 'yes'),
(1424, 'litespeed.conf.purge-post_all', '', 'yes'),
(1425, 'litespeed.conf.purge-post_f', '1', 'yes'),
(1426, 'litespeed.conf.purge-post_h', '1', 'yes'),
(1427, 'litespeed.conf.purge-post_p', '1', 'yes'),
(1428, 'litespeed.conf.purge-post_pwrp', '1', 'yes'),
(1429, 'litespeed.conf.purge-post_a', '1', 'yes'),
(1430, 'litespeed.conf.purge-post_y', '', 'yes'),
(1431, 'litespeed.conf.purge-post_m', '1', 'yes'),
(1432, 'litespeed.conf.purge-post_d', '', 'yes'),
(1433, 'litespeed.conf.purge-post_t', '1', 'yes'),
(1434, 'litespeed.conf.purge-post_pt', '1', 'yes'),
(1435, 'litespeed.conf.purge-timed_urls', 'a:0:{}', 'yes'),
(1436, 'litespeed.conf.purge-timed_urls_time', '', 'yes'),
(1437, 'litespeed.conf.purge-hook_all', 'a:10:{i:0;s:12:\"switch_theme\";i:1;s:18:\"wp_create_nav_menu\";i:2;s:18:\"wp_update_nav_menu\";i:3;s:18:\"wp_delete_nav_menu\";i:4;s:11:\"create_term\";i:5;s:10:\"edit_terms\";i:6;s:11:\"delete_term\";i:7;s:8:\"add_link\";i:8;s:9:\"edit_link\";i:9;s:11:\"delete_link\";}', 'yes'),
(1438, 'litespeed.conf.esi', '', 'yes'),
(1439, 'litespeed.conf.esi-cache_admbar', '1', 'yes'),
(1440, 'litespeed.conf.esi-cache_commform', '1', 'yes'),
(1441, 'litespeed.conf.esi-nonce', 'a:2:{i:0;s:11:\"stats_nonce\";i:1;s:15:\"subscribe_nonce\";}', 'yes'),
(1442, 'litespeed.conf.util-instant_click', '', 'yes'),
(1443, 'litespeed.conf.util-no_https_vary', '', 'yes'),
(1444, 'litespeed.conf.debug-disable_all', '', 'yes'),
(1445, 'litespeed.conf.debug', '', 'yes'),
(1446, 'litespeed.conf.debug-ips', 'a:1:{i:0;s:9:\"127.0.0.1\";}', 'yes'),
(1447, 'litespeed.conf.debug-level', '', 'yes'),
(1448, 'litespeed.conf.debug-filesize', '3', 'yes'),
(1449, 'litespeed.conf.debug-cookie', '', 'yes'),
(1450, 'litespeed.conf.debug-collaps_qs', '', 'yes'),
(1451, 'litespeed.conf.debug-inc', 'a:0:{}', 'yes'),
(1452, 'litespeed.conf.debug-exc', 'a:0:{}', 'yes'),
(1453, 'litespeed.conf.db_optm-revisions_max', '0', 'yes'),
(1454, 'litespeed.conf.db_optm-revisions_age', '0', 'yes'),
(1455, 'litespeed.conf.optm-css_min', '', 'yes'),
(1456, 'litespeed.conf.optm-css_comb', '', 'yes'),
(1457, 'litespeed.conf.optm-css_comb_ext_inl', '', 'yes'),
(1458, 'litespeed.conf.optm-ucss', '', 'yes'),
(1459, 'litespeed.conf.optm-ucss_async', '', 'yes'),
(1460, 'litespeed.conf.optm-css_http2', '', 'yes'),
(1461, 'litespeed.conf.optm-css_exc', 'a:0:{}', 'yes'),
(1462, 'litespeed.conf.optm-js_min', '', 'yes'),
(1463, 'litespeed.conf.optm-js_comb', '', 'yes'),
(1464, 'litespeed.conf.optm-js_comb_ext_inl', '', 'yes'),
(1465, 'litespeed.conf.optm-js_http2', '', 'yes'),
(1466, 'litespeed.conf.optm-js_exc', 'a:2:{i:0;s:9:\"jquery.js\";i:1;s:13:\"jquery.min.js\";}', 'yes'),
(1467, 'litespeed.conf.optm-ttl', '604800', 'yes'),
(1468, 'litespeed.conf.optm-html_min', '', 'yes'),
(1469, 'litespeed.conf.optm-qs_rm', '', 'yes'),
(1470, 'litespeed.conf.optm-ggfonts_rm', '', 'yes'),
(1471, 'litespeed.conf.optm-css_async', '', 'yes'),
(1472, 'litespeed.conf.optm-ccss_gen', '1', 'yes'),
(1473, 'litespeed.conf.optm-ccss_async', '1', 'yes'),
(1474, 'litespeed.conf.optm-css_async_inline', '1', 'yes'),
(1475, 'litespeed.conf.optm-css_font_display', '', 'yes'),
(1476, 'litespeed.conf.optm-js_defer', '', 'yes'),
(1477, 'litespeed.conf.optm-js_inline_defer', '', 'yes'),
(1478, 'litespeed.conf.optm-emoji_rm', '', 'yes'),
(1479, 'litespeed.conf.optm-noscript_rm', '', 'yes'),
(1480, 'litespeed.conf.optm-ggfonts_async', '', 'yes'),
(1481, 'litespeed.conf.optm-exc_roles', 'a:0:{}', 'yes'),
(1482, 'litespeed.conf.optm-ccss_con', '', 'yes'),
(1483, 'litespeed.conf.optm-js_defer_exc', 'a:2:{i:0;s:9:\"jquery.js\";i:1;s:13:\"jquery.min.js\";}', 'yes'),
(1484, 'litespeed.conf.optm-dns_prefetch', 'a:0:{}', 'yes'),
(1485, 'litespeed.conf.optm-dns_prefetch_ctrl', '', 'yes'),
(1486, 'litespeed.conf.optm-exc', 'a:0:{}', 'yes'),
(1487, 'litespeed.conf.optm-ccss_sep_posttype', 'a:0:{}', 'yes'),
(1488, 'litespeed.conf.optm-ccss_sep_uri', 'a:0:{}', 'yes'),
(1489, 'litespeed.conf.object', '', 'yes'),
(1490, 'litespeed.conf.object-kind', '', 'yes'),
(1491, 'litespeed.conf.object-host', 'localhost', 'yes'),
(1492, 'litespeed.conf.object-port', '11211', 'yes'),
(1493, 'litespeed.conf.object-life', '360', 'yes'),
(1494, 'litespeed.conf.object-persistent', '1', 'yes'),
(1495, 'litespeed.conf.object-admin', '1', 'yes'),
(1496, 'litespeed.conf.object-transients', '1', 'yes'),
(1497, 'litespeed.conf.object-db_id', '0', 'yes'),
(1498, 'litespeed.conf.object-user', '', 'yes'),
(1499, 'litespeed.conf.object-pswd', '', 'yes'),
(1500, 'litespeed.conf.object-global_groups', 'a:12:{i:0;s:5:\"users\";i:1;s:10:\"userlogins\";i:2;s:8:\"usermeta\";i:3;s:9:\"user_meta\";i:4;s:14:\"site-transient\";i:5;s:12:\"site-options\";i:6;s:11:\"site-lookup\";i:7;s:11:\"blog-lookup\";i:8;s:12:\"blog-details\";i:9;s:3:\"rss\";i:10;s:12:\"global-posts\";i:11;s:13:\"blog-id-cache\";}', 'yes'),
(1501, 'litespeed.conf.object-non_persistent_groups', 'a:4:{i:0;s:7:\"comment\";i:1;s:6:\"counts\";i:2;s:7:\"plugins\";i:3;s:13:\"wc_session_id\";}', 'yes'),
(1502, 'litespeed.conf.discuss-avatar_cache', '', 'yes'),
(1503, 'litespeed.conf.discuss-avatar_cron', '', 'yes'),
(1504, 'litespeed.conf.discuss-avatar_cache_ttl', '604800', 'yes'),
(1505, 'litespeed.conf.optm-localize', '', 'yes'),
(1506, 'litespeed.conf.optm-localize_domains', 'a:7:{i:0;s:23:\"### Popular scripts ###\";i:1;s:39:\"https://platform.twitter.com/widgets.js\";i:2;s:39:\"https://www.google.com/recaptcha/api.js\";i:3;s:45:\"https://www.google-analytics.com/analytics.js\";i:4;s:39:\"https://www.googletagmanager.com/gtm.js\";i:5;s:47:\"https://www.googletagservices.com/tag/js/gpt.js\";i:6;s:46:\"https://connect.facebook.net/en_US/fbevents.js\";}', 'yes'),
(1507, 'litespeed.conf.media-lazy', '', 'yes'),
(1508, 'litespeed.conf.media-lazy_placeholder', '', 'yes'),
(1509, 'litespeed.conf.media-placeholder_resp', '', 'yes'),
(1510, 'litespeed.conf.media-placeholder_resp_color', '#cfd4db', 'yes'),
(1511, 'litespeed.conf.media-placeholder_resp_svg', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"{width}\" height=\"{height}\" viewBox=\"0 0 {width} {height}\"><rect width=\"100%\" height=\"100%\" fill=\"{color}\"/></svg>', 'yes'),
(1512, 'litespeed.conf.media-lqip', '', 'yes'),
(1513, 'litespeed.conf.media-lqip_qual', '4', 'yes'),
(1514, 'litespeed.conf.media-lqip_min_w', '150', 'yes'),
(1515, 'litespeed.conf.media-lqip_min_h', '150', 'yes'),
(1516, 'litespeed.conf.media-placeholder_resp_async', '1', 'yes'),
(1517, 'litespeed.conf.media-iframe_lazy', '', 'yes'),
(1518, 'litespeed.conf.media-lazyjs_inline', '', 'yes'),
(1519, 'litespeed.conf.media-lazy_exc', 'a:0:{}', 'yes'),
(1520, 'litespeed.conf.media-lazy_cls_exc', 'a:1:{i:0;s:15:\"wmu-preview-img\";}', 'yes'),
(1521, 'litespeed.conf.media-lazy_parent_cls_exc', 'a:0:{}', 'yes'),
(1522, 'litespeed.conf.media-iframe_lazy_cls_exc', 'a:0:{}', 'yes'),
(1523, 'litespeed.conf.media-iframe_lazy_parent_cls_exc', 'a:0:{}', 'yes'),
(1524, 'litespeed.conf.media-lazy_uri_exc', 'a:0:{}', 'yes'),
(1525, 'litespeed.conf.media-lqip_exc', 'a:0:{}', 'yes'),
(1526, 'litespeed.conf.img_optm-auto', '', 'yes'),
(1527, 'litespeed.conf.img_optm-cron', '1', 'yes'),
(1528, 'litespeed.conf.img_optm-ori', '1', 'yes'),
(1529, 'litespeed.conf.img_optm-rm_bkup', '', 'yes'),
(1530, 'litespeed.conf.img_optm-webp', '', 'yes'),
(1531, 'litespeed.conf.img_optm-lossless', '', 'yes'),
(1532, 'litespeed.conf.img_optm-exif', '', 'yes'),
(1533, 'litespeed.conf.img_optm-webp_replace', '', 'yes'),
(1534, 'litespeed.conf.img_optm-webp_attr', 'a:7:{i:0;s:7:\"img.src\";i:1;s:14:\"div.data-thumb\";i:2;s:12:\"img.data-src\";i:3;s:20:\"div.data-large_image\";i:4;s:19:\"img.retina_logo_url\";i:5;s:23:\"div.data-parallax-image\";i:6;s:12:\"video.poster\";}', 'yes'),
(1535, 'litespeed.conf.img_optm-webp_replace_srcset', '', 'yes'),
(1536, 'litespeed.conf.img_optm-jpg_quality', '82', 'yes'),
(1537, 'litespeed.conf.crawler', '', 'yes'),
(1538, 'litespeed.conf.crawler-usleep', '500', 'yes'),
(1539, 'litespeed.conf.crawler-run_duration', '400', 'yes'),
(1540, 'litespeed.conf.crawler-run_interval', '600', 'yes'),
(1541, 'litespeed.conf.crawler-crawl_interval', '302400', 'yes'),
(1542, 'litespeed.conf.crawler-threads', '3', 'yes'),
(1543, 'litespeed.conf.crawler-timeout', '30', 'yes'),
(1544, 'litespeed.conf.crawler-load_limit', '1', 'yes'),
(1545, 'litespeed.conf.crawler-sitemap', '', 'yes'),
(1546, 'litespeed.conf.crawler-drop_domain', '1', 'yes'),
(1547, 'litespeed.conf.crawler-map_timeout', '120', 'yes'),
(1548, 'litespeed.conf.crawler-roles', 'a:0:{}', 'yes'),
(1549, 'litespeed.conf.crawler-cookies', 'a:0:{}', 'yes'),
(1550, 'litespeed.conf.misc-htaccess_front', '', 'yes'),
(1551, 'litespeed.conf.misc-htaccess_back', '', 'yes'),
(1552, 'litespeed.conf.misc-heartbeat_front', '', 'yes'),
(1553, 'litespeed.conf.misc-heartbeat_front_ttl', '60', 'yes'),
(1554, 'litespeed.conf.misc-heartbeat_back', '', 'yes'),
(1555, 'litespeed.conf.misc-heartbeat_back_ttl', '60', 'yes'),
(1556, 'litespeed.conf.misc-heartbeat_editor', '', 'yes'),
(1557, 'litespeed.conf.misc-heartbeat_editor_ttl', '15', 'yes'),
(1558, 'litespeed.conf.cdn', '', 'yes'),
(1559, 'litespeed.conf.cdn-ori', 'a:0:{}', 'yes'),
(1560, 'litespeed.conf.cdn-ori_dir', 'a:2:{i:0;s:10:\"wp-content\";i:1;s:11:\"wp-includes\";}', 'yes'),
(1561, 'litespeed.conf.cdn-exc', 'a:0:{}', 'yes'),
(1562, 'litespeed.conf.cdn-quic', '', 'yes'),
(1563, 'litespeed.conf.cdn-cloudflare', '', 'yes'),
(1564, 'litespeed.conf.cdn-cloudflare_email', '', 'yes'),
(1565, 'litespeed.conf.cdn-cloudflare_key', '', 'yes'),
(1566, 'litespeed.conf.cdn-cloudflare_name', '', 'yes'),
(1567, 'litespeed.conf.cdn-cloudflare_zone', '', 'yes'),
(1568, 'litespeed.conf.cdn-mapping', 'a:1:{i:0;a:5:{s:3:\"url\";b:0;s:7:\"inc_img\";s:1:\"1\";s:7:\"inc_css\";s:1:\"1\";s:6:\"inc_js\";s:1:\"1\";s:8:\"filetype\";a:17:{i:0;s:4:\".aac\";i:1;s:4:\".css\";i:2;s:4:\".eot\";i:3;s:4:\".gif\";i:4;s:5:\".jpeg\";i:5;s:3:\".js\";i:6;s:4:\".jpg\";i:7;s:5:\".less\";i:8;s:4:\".mp3\";i:9;s:4:\".mp4\";i:10;s:4:\".ogg\";i:11;s:4:\".otf\";i:12;s:4:\".pdf\";i:13;s:4:\".png\";i:14;s:4:\".svg\";i:15;s:4:\".ttf\";i:16;s:5:\".woff\";}}}', 'yes'),
(1569, 'litespeed.conf.cdn-attr', 'a:5:{i:0;s:4:\".src\";i:1;s:9:\".data-src\";i:2;s:5:\".href\";i:3;s:7:\".poster\";i:4;s:13:\"source.srcset\";}', 'yes'),
(1580, 'widget_block', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1599, 'litespeed.gui._summary', 'a:2:{s:11:\"new_version\";i:1628657178;s:5:\"score\";i:1629002778;}', 'yes'),
(1600, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(1627, 'litespeed.admin_display._summary', 'a:4:{s:11:\"new_version\";i:1628657178;s:5:\"score\";i:1629002778;s:22:\"new_version.last_check\";i:1628875459;s:13:\"new_version.v\";s:5:\"3.6.4\";}', 'yes'),
(1900, '_transient_timeout_acf_plugin_updates', '1637126367', 'no'),
(1901, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:4:\"5.11\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.8.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.5\";}}', 'no'),
(1907, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.2\";s:7:\"version\";s:5:\"5.8.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1636971132;s:15:\"version_checked\";s:5:\"5.8.2\";s:12:\"translations\";a:0:{}}', 'no'),
(1910, '_site_transient_timeout_php_check_6a93f292d9a273c004fc36e1f86d97b3', '1637558370', 'no'),
(1911, '_site_transient_php_check_6a93f292d9a273c004fc36e1f86d97b3', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:0;}', 'no'),
(1914, '_site_transient_timeout_theme_roots', '1636972933', 'no'),
(1915, '_site_transient_theme_roots', 'a:5:{s:5:\"Amber\";s:7:\"/themes\";s:7:\"CoderIT\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(1916, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1636971133;s:7:\"checked\";a:5:{s:5:\"Amber\";s:3:\"1.0\";s:7:\"CoderIT\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"1.8\";s:12:\"twentytwenty\";s:3:\"1.6\";s:15:\"twentytwentyone\";s:3:\"1.0\";}s:8:\"response\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(1917, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1636971133;s:8:\"response\";a:8:{s:25:\"add-to-any/add-to-any.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:24:\"w.org/plugins/add-to-any\";s:4:\"slug\";s:10:\"add-to-any\";s:6:\"plugin\";s:25:\"add-to-any/add-to-any.php\";s:11:\"new_version\";s:5:\"1.8.0\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/add-to-any/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/add-to-any.1.8.0.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:62:\"https://ps.w.org/add-to-any/assets/icon-256x256.png?rev=972738\";s:2:\"1x\";s:54:\"https://ps.w.org/add-to-any/assets/icon.svg?rev=972738\";s:3:\"svg\";s:54:\"https://ps.w.org/add-to-any/assets/icon.svg?rev=972738\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/add-to-any/assets/banner-1544x500.png?rev=2167358\";s:2:\"1x\";s:65:\"https://ps.w.org/add-to-any/assets/banner-772x250.png?rev=2167357\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.5\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";s:3:\"5.6\";}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";b:0;}s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"7.50\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.7.50.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2458334\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2458334\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=2626840\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=2626840\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.3\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";s:6:\"5.2.17\";}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.5.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.5.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.7\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";b:0;}s:44:\"custom-twitter-feeds/custom-twitter-feed.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:34:\"w.org/plugins/custom-twitter-feeds\";s:4:\"slug\";s:20:\"custom-twitter-feeds\";s:6:\"plugin\";s:44:\"custom-twitter-feeds/custom-twitter-feed.php\";s:11:\"new_version\";s:5:\"1.8.3\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/custom-twitter-feeds/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/custom-twitter-feeds.1.8.3.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/custom-twitter-feeds/assets/icon-128x128.png?rev=1414207\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:75:\"https://ps.w.org/custom-twitter-feeds/assets/banner-772x250.png?rev=1624166\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.4\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";b:0;}s:35:\"litespeed-cache/litespeed-cache.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:29:\"w.org/plugins/litespeed-cache\";s:4:\"slug\";s:15:\"litespeed-cache\";s:6:\"plugin\";s:35:\"litespeed-cache/litespeed-cache.php\";s:11:\"new_version\";s:5:\"4.4.3\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/litespeed-cache/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/litespeed-cache.4.4.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/litespeed-cache/assets/icon-256x256.png?rev=2554181\";s:2:\"1x\";s:68:\"https://ps.w.org/litespeed-cache/assets/icon-128x128.png?rev=2554181\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/litespeed-cache/assets/banner-1544x500.png?rev=2554181\";s:2:\"1x\";s:70:\"https://ps.w.org/litespeed-cache/assets/banner-772x250.png?rev=2554181\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";b:0;}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:4:\"5.11\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.8.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:9:{s:25:\"add-to-any/add-to-any.php\";s:6:\"1.7.44\";s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.5\";s:19:\"akismet/akismet.php\";s:5:\"4.1.7\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"7.43\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.6\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.4.1\";s:44:\"custom-twitter-feeds/custom-twitter-feed.php\";s:3:\"1.8\";s:9:\"hello.php\";s:5:\"1.7.2\";s:35:\"litespeed-cache/litespeed-cache.php\";s:5:\"3.6.4\";}}', 'no'),
(1918, '_transient_timeout_ctf__shakil_sadbin4', '1636981934', 'no'),
(1919, '_transient_ctf__shakil_sadbin4', '[{\"user\":{\"name\":\"Sadbin Shakil\",\"screen_name\":\"shakil_sadbin\",\"verified\":false,\"profile_image_url_https\":\"https:\\/\\/pbs.twimg.com\\/profile_images\\/1370045189943750661\\/9r_HcJx4_normal.jpg\",\"utc_offset\":null},\"text\":\"Alhamdulillah :)\\nAnother order complete.\\nI am a WordPress Developer.\\nHire me: https:\\/\\/t.co\\/5M4euRVOJI\\nThank you \\n#htmltowordpress #html #css #website #wordpress #wordpressdeveloper \",\"id_str\":\"1405428336478752768\",\"created_at\":\"Thu Jun 17 07:33:21 +0000 2021\",\"retweet_count\":0,\"favorite_count\":0,\"entities\":{\"urls\":[{\"url\":\"https:\\/\\/t.co\\/5M4euRVOJI\",\"expanded_url\":\"https:\\/\\/www.fiverr.com\\/share\\/A0l3wP\",\"display_url\":\"fiverr.com\\/share\\/A0l3wP\"}]},\"extended_entities\":{\"media\":[{\"media_url_https\":\"https:\\/\\/pbs.twimg.com\\/media\\/E4EVP7XUYAMkZ0p.jpg\",\"type\":\"photo\",\"sizes\":{\"thumb\":{\"w\":150,\"h\":150,\"resize\":\"crop\"},\"large\":{\"w\":1365,\"h\":617,\"resize\":\"fit\"},\"small\":{\"w\":680,\"h\":307,\"resize\":\"fit\"},\"medium\":{\"w\":1200,\"h\":542,\"resize\":\"fit\"}}}]}},{\"user\":{\"name\":\"Sadbin Shakil\",\"screen_name\":\"shakil_sadbin\",\"verified\":false,\"profile_image_url_https\":\"https:\\/\\/pbs.twimg.com\\/profile_images\\/1370045189943750661\\/9r_HcJx4_normal.jpg\",\"utc_offset\":null},\"text\":\"RT @NegarSultana56: Hi \\ud83d\\ude4b\\u200d\\u2640\\ufe0f\",\"id_str\":\"1397729882465968131\",\"created_at\":\"Thu May 27 01:42:27 +0000 2021\",\"retweet_count\":81,\"favorite_count\":0,\"retweeted_status\":{\"user\":{\"name\":\"Negar Sultana\\ud83d\\udcab\",\"screen_name\":\"NegarSultana56\",\"verified\":false,\"profile_image_url_https\":\"https:\\/\\/pbs.twimg.com\\/profile_images\\/1459191696751673350\\/2sKSL5m1_normal.jpg\",\"utc_offset\":null},\"text\":\"Hi \\ud83d\\ude4b\\u200d\\u2640\\ufe0f\",\"id_str\":\"1397599464504795138\",\"created_at\":\"Wed May 26 17:04:13 +0000 2021\",\"retweet_count\":81,\"favorite_count\":981}},{\"user\":{\"name\":\"Sadbin Shakil\",\"screen_name\":\"shakil_sadbin\",\"verified\":false,\"profile_image_url_https\":\"https:\\/\\/pbs.twimg.com\\/profile_images\\/1370045189943750661\\/9r_HcJx4_normal.jpg\",\"utc_offset\":null},\"text\":\"I am a web designer and WordPress expert. If you need any type of website. \\nWordPress Website Customization: https:\\/\\/t.co\\/AQ8tmHRGpi\\nWordPress Migration: https:\\/\\/t.co\\/ByNhF9EWE2 \\nConversion HTML Website: https:\\/\\/t.co\\/MgFxlTg9Py\\nThank you \\n#wordpress #html #customization\",\"id_str\":\"1389548855486648324\",\"created_at\":\"Tue May 04 11:53:58 +0000 2021\",\"retweet_count\":0,\"favorite_count\":0,\"entities\":{\"urls\":[{\"url\":\"https:\\/\\/t.co\\/AQ8tmHRGpi\",\"expanded_url\":\"https:\\/\\/fiverr.com\\/share\\/AYNDoB\",\"display_url\":\"fiverr.com\\/share\\/AYNDoB\"},{\"url\":\"https:\\/\\/t.co\\/ByNhF9EWE2\",\"expanded_url\":\"https:\\/\\/fiverr.com\\/share\\/qjYRwg\",\"display_url\":\"fiverr.com\\/share\\/qjYRwg\"},{\"url\":\"https:\\/\\/t.co\\/MgFxlTg9Py\",\"expanded_url\":\"https:\\/\\/fiverr.com\\/share\\/5AZvj7\",\"display_url\":\"fiverr.com\\/share\\/5AZvj7\"}]}},{\"user\":{\"name\":\"Sadbin Shakil\",\"screen_name\":\"shakil_sadbin\",\"verified\":false,\"profile_image_url_https\":\"https:\\/\\/pbs.twimg.com\\/profile_images\\/1370045189943750661\\/9r_HcJx4_normal.jpg\",\"utc_offset\":null},\"text\":\"I am a web designer and WordPress expert. If you need any type of website. \\nWordPress Website Customization: https:\\/\\/t.co\\/AQ8tmHRGpi\\nWordPress Migration: https:\\/\\/t.co\\/ByNhF9EWE2 \\nConversion HTML Website: https:\\/\\/t.co\\/MgFxlTg9Py\\nThank you \\n#wordpress #html #customization\",\"id_str\":\"1388509063567212551\",\"created_at\":\"Sat May 01 15:02:12 +0000 2021\",\"retweet_count\":1,\"favorite_count\":1,\"entities\":{\"urls\":[{\"url\":\"https:\\/\\/t.co\\/AQ8tmHRGpi\",\"expanded_url\":\"https:\\/\\/fiverr.com\\/share\\/AYNDoB\",\"display_url\":\"fiverr.com\\/share\\/AYNDoB\"},{\"url\":\"https:\\/\\/t.co\\/ByNhF9EWE2\",\"expanded_url\":\"https:\\/\\/fiverr.com\\/share\\/qjYRwg\",\"display_url\":\"fiverr.com\\/share\\/qjYRwg\"},{\"url\":\"https:\\/\\/t.co\\/MgFxlTg9Py\",\"expanded_url\":\"https:\\/\\/fiverr.com\\/share\\/5AZvj7\",\"display_url\":\"fiverr.com\\/share\\/5AZvj7\"}]}},{\"user\":{\"name\":\"Sadbin Shakil\",\"screen_name\":\"shakil_sadbin\",\"verified\":false,\"profile_image_url_https\":\"https:\\/\\/pbs.twimg.com\\/profile_images\\/1370045189943750661\\/9r_HcJx4_normal.jpg\",\"utc_offset\":null},\"text\":\"I am a web designer and WordPress expert. If you need any type of website. \\nWordPress Website Customization: https:\\/\\/t.co\\/AQ8tmHRGpi\\nWordPress Migration: https:\\/\\/t.co\\/ByNhF9EWE2\\nConversion HTML Website: https:\\/\\/t.co\\/MgFxlTg9Py \\nThank you \\n#wordpress #html #customization\",\"id_str\":\"1388043579801489408\",\"created_at\":\"Fri Apr 30 08:12:32 +0000 2021\",\"retweet_count\":0,\"favorite_count\":0,\"entities\":{\"urls\":[{\"url\":\"https:\\/\\/t.co\\/AQ8tmHRGpi\",\"expanded_url\":\"https:\\/\\/fiverr.com\\/share\\/AYNDoB\",\"display_url\":\"fiverr.com\\/share\\/AYNDoB\"},{\"url\":\"https:\\/\\/t.co\\/ByNhF9EWE2\",\"expanded_url\":\"https:\\/\\/fiverr.com\\/share\\/qjYRwg\",\"display_url\":\"fiverr.com\\/share\\/qjYRwg\"},{\"url\":\"https:\\/\\/t.co\\/MgFxlTg9Py\",\"expanded_url\":\"https:\\/\\/fiverr.com\\/share\\/5AZvj7\",\"display_url\":\"fiverr.com\\/share\\/5AZvj7\"}]}}]', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 1, '_edit_lock', '1619603179:1'),
(24, 36, '_wp_attached_file', '2021/04/elementor-removebg-preview.png'),
(25, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:38:\"2021/04/elementor-removebg-preview.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(26, 53, '_edit_last', '1'),
(27, 53, '_edit_lock', '1617633158:1'),
(28, 54, '_edit_last', '1'),
(29, 54, '_edit_lock', '1617631850:1'),
(30, 55, '_edit_lock', '1617629575:1'),
(37, 55, '_wp_page_template', 'tamplete-services.php'),
(38, 64, '_edit_lock', '1619984226:1'),
(39, 67, '_form', '<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]'),
(40, 67, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:38:\"[_site_title] <shakilsb4646@gmail.com>\";s:9:\"recipient\";s:22:\"shakilcoding@gmail.com\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(41, 67, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:38:\"[_site_title] <shakilsb4646@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(42, 67, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(43, 67, '_additional_settings', ''),
(44, 67, '_locale', 'en_US'),
(45, 64, '_edit_last', '1'),
(46, 71, '_wp_attached_file', '2021/04/197648.jpg'),
(47, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:18:\"2021/04/197648.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(48, 72, '_edit_last', '1'),
(49, 72, '_edit_lock', '1622542043:1'),
(50, 72, '_wp_page_template', 'template-home.php'),
(51, 74, '_edit_last', '1'),
(52, 74, '_wp_page_template', 'default'),
(53, 74, '_edit_lock', '1622825160:1'),
(56, 76, '_menu_item_type', 'post_type'),
(57, 76, '_menu_item_menu_item_parent', '0'),
(58, 76, '_menu_item_object_id', '72'),
(59, 76, '_menu_item_object', 'page'),
(60, 76, '_menu_item_target', ''),
(61, 76, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(62, 76, '_menu_item_xfn', ''),
(63, 76, '_menu_item_url', ''),
(65, 77, '_menu_item_type', 'post_type'),
(66, 77, '_menu_item_menu_item_parent', '0'),
(67, 77, '_menu_item_object_id', '74'),
(68, 77, '_menu_item_object', 'page'),
(69, 77, '_menu_item_target', ''),
(70, 77, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(71, 77, '_menu_item_xfn', ''),
(72, 77, '_menu_item_url', ''),
(92, 80, '_menu_item_type', 'post_type'),
(93, 80, '_menu_item_menu_item_parent', '0'),
(94, 80, '_menu_item_object_id', '55'),
(95, 80, '_menu_item_object', 'page'),
(96, 80, '_menu_item_target', ''),
(97, 80, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(98, 80, '_menu_item_xfn', ''),
(99, 80, '_menu_item_url', ''),
(101, 83, '_edit_last', '1'),
(102, 83, '_edit_lock', '1618516443:1'),
(135, 98, '_wp_attached_file', '2021/04/speaker-stage-conference-room_38810-2884.jpg'),
(136, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:626;s:6:\"height\";i:352;s:4:\"file\";s:52:\"2021/04/speaker-stage-conference-room_38810-2884.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(137, 99, '_wp_attached_file', '2021/04/istockphoto-1049658692-612x612-1.jpg'),
(138, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:612;s:6:\"height\";i:333;s:4:\"file\";s:44:\"2021/04/istockphoto-1049658692-612x612-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:24:\"Getty Images/iStockphoto\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:109:\"CONTACT US, businessman using mobile smartphone with the icon. Contact us connection concept with copy space.\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(139, 100, '_wp_attached_file', '2021/04/speaker-stage-giving-talk-business-meeting_38810-6305.jpg'),
(140, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:626;s:6:\"height\";i:417;s:4:\"file\";s:65:\"2021/04/speaker-stage-giving-talk-business-meeting_38810-6305.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(147, 101, '_edit_last', '1'),
(148, 101, 'banner_background_img', '197'),
(149, 101, '_banner_background_img', 'field_60788ca14747a'),
(150, 101, 'banner_heading_1', 'Creating a unique look. 1 new '),
(151, 101, '_banner_heading_1', 'field_60788d6493aa8'),
(152, 101, 'banner_heading_2', 'Never been easier.1 new '),
(153, 101, '_banner_heading_2', 'field_60788d9d93aa9'),
(154, 101, 'banner_button_text_1', 'see features 1 new '),
(155, 101, '_banner_button_text_1', 'field_60788db893aaa'),
(156, 101, 'banner_button_url_1', '##'),
(157, 101, '_banner_button_url_1', 'field_60788e0493aac'),
(158, 101, 'banner_button_text_2', 'purchase now 1 new '),
(159, 101, '_banner_button_text_2', 'field_60788ded93aab'),
(160, 101, 'banner_button_url_2', '##'),
(161, 101, '_banner_button_url_2', 'field_60788e2693aad'),
(162, 101, '_edit_lock', '1625219280:1'),
(163, 103, '_edit_last', '1'),
(164, 103, '_edit_lock', '1628876259:1'),
(165, 103, 'banner_background_img', '198'),
(166, 103, '_banner_background_img', 'field_60788ca14747a'),
(167, 103, 'banner_heading_1', 'Creating a unique look. 2'),
(168, 103, '_banner_heading_1', 'field_60788d6493aa8'),
(169, 103, 'banner_heading_2', 'Never been easier. 2'),
(170, 103, '_banner_heading_2', 'field_60788d9d93aa9'),
(171, 103, 'banner_button_text_1', 'see features 2'),
(172, 103, '_banner_button_text_1', 'field_60788db893aaa'),
(173, 103, 'banner_button_url_1', '#'),
(174, 103, '_banner_button_url_1', 'field_60788e0493aac'),
(175, 103, 'banner_button_text_2', 'purchase now 2'),
(176, 103, '_banner_button_text_2', 'field_60788ded93aab'),
(177, 103, 'banner_button_url_2', '#'),
(178, 103, '_banner_button_url_2', 'field_60788e2693aad'),
(179, 105, '_edit_last', '1'),
(180, 105, '_edit_lock', '1622542043:1'),
(181, 72, 'steal_title', 'New Steal of the month'),
(182, 72, '_steal_title', 'field_60794c32162fe'),
(183, 72, 'steal_desc', 'New That we can tuck in our children at night and know that they are fed and clothed and safe from harm. Our trials and triumphs became at once unique and universal. Black and more than black.'),
(184, 72, '_steal_desc', 'field_60794d2ba1b0f'),
(185, 72, 'steal_btn_text', 'purchase now New'),
(186, 72, '_steal_btn_text', 'field_60794d4fa1b10'),
(187, 72, 'steal_btn_url', '#'),
(188, 72, '_steal_btn_url', 'field_60794d76a1b11'),
(189, 72, 'letest_work_title', 'Letest Works'),
(190, 72, '_letest_work_title', 'field_60794cd616300'),
(191, 113, 'steal_title', 'New Steal of the month'),
(192, 113, '_steal_title', 'field_60794c32162fe'),
(193, 113, 'steal_desc', 'New That we can tuck in our children at night and know that they are fed and clothed and safe from harm. Our trials and triumphs became at once unique and universal. Black and more than black.'),
(194, 113, '_steal_desc', 'field_60794d2ba1b0f'),
(195, 113, 'steal_btn_text', 'purchase now New'),
(196, 113, '_steal_btn_text', 'field_60794d4fa1b10'),
(197, 113, 'steal_btn_url', '#'),
(198, 113, '_steal_btn_url', 'field_60794d76a1b11'),
(199, 113, 'letest_work_title', 'Letest Works'),
(200, 113, '_letest_work_title', 'field_60794cd616300'),
(201, 72, 'work_title', 'Letest Works New title'),
(202, 72, '_work_title', 'field_60794cd616300'),
(203, 72, 'work_desc', 'New That we can tuck in our children at night and know that they are fed and clothed and safe from harm. Our trials and triumphs became at once unique and universal. Black and more than black.'),
(204, 72, '_work_desc', 'field_6079f555511b8'),
(205, 115, 'steal_title', 'New Steal of the month'),
(206, 115, '_steal_title', 'field_60794c32162fe'),
(207, 115, 'steal_desc', 'New That we can tuck in our children at night and know that they are fed and clothed and safe from harm. Our trials and triumphs became at once unique and universal. Black and more than black.'),
(208, 115, '_steal_desc', 'field_60794d2ba1b0f'),
(209, 115, 'steal_btn_text', 'purchase now New'),
(210, 115, '_steal_btn_text', 'field_60794d4fa1b10'),
(211, 115, 'steal_btn_url', '#'),
(212, 115, '_steal_btn_url', 'field_60794d76a1b11'),
(213, 115, 'letest_work_title', 'Letest Works'),
(214, 115, '_letest_work_title', 'field_60794cd616300'),
(215, 115, 'work_title', 'Letest Works New'),
(216, 115, '_work_title', 'field_60794cd616300'),
(217, 115, 'work_desc', 'New That we can tuck in our children at night and know that they are fed and clothed and safe from harm. Our trials and triumphs became at once unique and universal. Black and more than black.'),
(218, 115, '_work_desc', 'field_6079f555511b8'),
(219, 120, '_edit_last', '1'),
(220, 120, '_edit_lock', '1625219493:1'),
(221, 120, '_thumbnail_id', '100'),
(222, 121, '_edit_last', '1'),
(223, 121, '_edit_lock', '1619986432:1'),
(224, 121, '_thumbnail_id', '98'),
(225, 122, '_edit_last', '1'),
(226, 122, '_edit_lock', '1619379470:1'),
(227, 121, 'slider_single_img', ''),
(228, 121, '_slider_single_img', 'field_607ae67e12898'),
(229, 121, 'work_feature_0_work_feature', '<input type=\"checkbox\" id=\"Brownie\" name=\"Brownie\">\r\n<label for=\"Brownie\">Brownie ice cream carrot </label><br>'),
(230, 121, '_work_feature_0_work_feature', 'field_607aeaf7f52df'),
(231, 121, 'work_feature', '2'),
(232, 121, '_work_feature', 'field_607ae7a61289a'),
(233, 121, 'popup_image', '36'),
(234, 121, '_popup_image', 'field_607ae9dcbe840'),
(235, 72, 'amber_is_the_most', 'New Text Amber is the most mentally WordPress theme ever created. new text'),
(236, 72, '_amber_is_the_most', 'field_607b2100f5017'),
(237, 72, 'amber_is_the_most_btn_text', 'New purchase now'),
(238, 72, '_amber_is_the_most_btn_text', 'field_607b2129f5018'),
(239, 72, 'amber_is_the_most_btn_url', '#'),
(240, 72, '_amber_is_the_most_btn_url', 'field_607b2159f5019'),
(241, 135, 'steal_title', 'New Steal of the month'),
(242, 135, '_steal_title', 'field_60794c32162fe'),
(243, 135, 'steal_desc', 'New That we can tuck in our children at night and know that they are fed and clothed and safe from harm. Our trials and triumphs became at once unique and universal. Black and more than black.'),
(244, 135, '_steal_desc', 'field_60794d2ba1b0f'),
(245, 135, 'steal_btn_text', 'purchase now New'),
(246, 135, '_steal_btn_text', 'field_60794d4fa1b10'),
(247, 135, 'steal_btn_url', '#'),
(248, 135, '_steal_btn_url', 'field_60794d76a1b11'),
(249, 135, 'letest_work_title', 'Letest Works'),
(250, 135, '_letest_work_title', 'field_60794cd616300'),
(251, 135, 'work_title', 'Letest Works New'),
(252, 135, '_work_title', 'field_60794cd616300'),
(253, 135, 'work_desc', 'New That we can tuck in our children at night and know that they are fed and clothed and safe from harm. Our trials and triumphs became at once unique and universal. Black and more than black.'),
(254, 135, '_work_desc', 'field_6079f555511b8'),
(255, 135, 'amber_is_the_most', 'New Amber is the most metrolly WordPress theme ever created.'),
(256, 135, '_amber_is_the_most', 'field_607b2100f5017'),
(257, 135, 'amber_is_the_most_btn_text', 'purchase now New'),
(258, 135, '_amber_is_the_most_btn_text', 'field_607b2129f5018'),
(259, 135, 'amber_is_the_most_btn_url', '#'),
(260, 135, '_amber_is_the_most_btn_url', 'field_607b2159f5019'),
(261, 136, 'steal_title', 'New Steal of the month'),
(262, 136, '_steal_title', 'field_60794c32162fe'),
(263, 136, 'steal_desc', 'New That we can tuck in our children at night and know that they are fed and clothed and safe from harm. Our trials and triumphs became at once unique and universal. Black and more than black.'),
(264, 136, '_steal_desc', 'field_60794d2ba1b0f'),
(265, 136, 'steal_btn_text', 'purchase now New'),
(266, 136, '_steal_btn_text', 'field_60794d4fa1b10'),
(267, 136, 'steal_btn_url', '#'),
(268, 136, '_steal_btn_url', 'field_60794d76a1b11'),
(269, 136, 'letest_work_title', 'Letest Works'),
(270, 136, '_letest_work_title', 'field_60794cd616300'),
(271, 136, 'work_title', 'Letest Works New'),
(272, 136, '_work_title', 'field_60794cd616300'),
(273, 136, 'work_desc', 'New That we can tuck in our children at night and know that they are fed and clothed and safe from harm. Our trials and triumphs became at once unique and universal. Black and more than black.'),
(274, 136, '_work_desc', 'field_6079f555511b8'),
(275, 136, 'amber_is_the_most', 'New Text Amber is the most metrolly WordPress theme ever created.'),
(276, 136, '_amber_is_the_most', 'field_607b2100f5017'),
(277, 136, 'amber_is_the_most_btn_text', 'New purchase now'),
(278, 136, '_amber_is_the_most_btn_text', 'field_607b2129f5018'),
(279, 136, 'amber_is_the_most_btn_url', '#'),
(280, 136, '_amber_is_the_most_btn_url', 'field_607b2159f5019'),
(281, 137, 'steal_title', 'New Steal of the month'),
(282, 137, '_steal_title', 'field_60794c32162fe'),
(283, 137, 'steal_desc', 'New That we can tuck in our children at night and know that they are fed and clothed and safe from harm. Our trials and triumphs became at once unique and universal. Black and more than black.'),
(284, 137, '_steal_desc', 'field_60794d2ba1b0f'),
(285, 137, 'steal_btn_text', 'purchase now New'),
(286, 137, '_steal_btn_text', 'field_60794d4fa1b10'),
(287, 137, 'steal_btn_url', '#'),
(288, 137, '_steal_btn_url', 'field_60794d76a1b11'),
(289, 137, 'letest_work_title', 'Letest Works'),
(290, 137, '_letest_work_title', 'field_60794cd616300'),
(291, 137, 'work_title', 'Letest Works New title'),
(292, 137, '_work_title', 'field_60794cd616300'),
(293, 137, 'work_desc', 'New That we can tuck in our children at night and know that they are fed and clothed and safe from harm. Our trials and triumphs became at once unique and universal. Black and more than black.'),
(294, 137, '_work_desc', 'field_6079f555511b8'),
(295, 137, 'amber_is_the_most', 'New Text Amber is the most metrolly WordPress theme ever created.'),
(296, 137, '_amber_is_the_most', 'field_607b2100f5017'),
(297, 137, 'amber_is_the_most_btn_text', 'New purchase now'),
(298, 137, '_amber_is_the_most_btn_text', 'field_607b2129f5018'),
(299, 137, 'amber_is_the_most_btn_url', '#'),
(300, 137, '_amber_is_the_most_btn_url', 'field_607b2159f5019'),
(301, 138, 'steal_title', 'New Steal of the month'),
(302, 138, '_steal_title', 'field_60794c32162fe'),
(303, 138, 'steal_desc', 'New That we can tuck in our children at night and know that they are fed and clothed and safe from harm. Our trials and triumphs became at once unique and universal. Black and more than black.'),
(304, 138, '_steal_desc', 'field_60794d2ba1b0f'),
(305, 138, 'steal_btn_text', 'purchase now New'),
(306, 138, '_steal_btn_text', 'field_60794d4fa1b10'),
(307, 138, 'steal_btn_url', '#'),
(308, 138, '_steal_btn_url', 'field_60794d76a1b11'),
(309, 138, 'letest_work_title', 'Letest Works'),
(310, 138, '_letest_work_title', 'field_60794cd616300'),
(311, 138, 'work_title', 'Letest Works New title'),
(312, 138, '_work_title', 'field_60794cd616300'),
(313, 138, 'work_desc', 'New That we can tuck in our children at night and know that they are fed and clothed and safe from harm. Our trials and triumphs became at once unique and universal. Black and more than black.'),
(314, 138, '_work_desc', 'field_6079f555511b8'),
(315, 138, 'amber_is_the_most', 'New Text Amber is the most mentally WordPress theme ever created. new text'),
(316, 138, '_amber_is_the_most', 'field_607b2100f5017'),
(317, 138, 'amber_is_the_most_btn_text', 'New purchase now new '),
(318, 138, '_amber_is_the_most_btn_text', 'field_607b2129f5018'),
(319, 138, 'amber_is_the_most_btn_url', '#'),
(320, 138, '_amber_is_the_most_btn_url', 'field_607b2159f5019'),
(321, 72, 'amber_title_hero', 'New Text Amber is the most mentally WordPress theme ever created.'),
(322, 72, '_amber_title_hero', 'field_607b2100f5017'),
(323, 138, 'amber_title_hero', 'New Text Amber is the most mentally WordPress theme ever created. new text'),
(324, 138, '_amber_title_hero', 'field_607b2100f5017'),
(325, 139, 'steal_title', 'New Steal of the month'),
(326, 139, '_steal_title', 'field_60794c32162fe'),
(327, 139, 'steal_desc', 'New That we can tuck in our children at night and know that they are fed and clothed and safe from harm. Our trials and triumphs became at once unique and universal. Black and more than black.'),
(328, 139, '_steal_desc', 'field_60794d2ba1b0f'),
(329, 139, 'steal_btn_text', 'purchase now New'),
(330, 139, '_steal_btn_text', 'field_60794d4fa1b10'),
(331, 139, 'steal_btn_url', '#'),
(332, 139, '_steal_btn_url', 'field_60794d76a1b11'),
(333, 139, 'letest_work_title', 'Letest Works'),
(334, 139, '_letest_work_title', 'field_60794cd616300'),
(335, 139, 'work_title', 'Letest Works New title'),
(336, 139, '_work_title', 'field_60794cd616300'),
(337, 139, 'work_desc', 'New That we can tuck in our children at night and know that they are fed and clothed and safe from harm. Our trials and triumphs became at once unique and universal. Black and more than black.'),
(338, 139, '_work_desc', 'field_6079f555511b8'),
(339, 139, 'amber_is_the_most', 'New Text Amber is the most mentally WordPress theme ever created. new text'),
(340, 139, '_amber_is_the_most', 'field_607b2100f5017'),
(341, 139, 'amber_is_the_most_btn_text', 'New purchase now'),
(342, 139, '_amber_is_the_most_btn_text', 'field_607b2129f5018'),
(343, 139, 'amber_is_the_most_btn_url', '#'),
(344, 139, '_amber_is_the_most_btn_url', 'field_607b2159f5019'),
(345, 139, 'amber_title_hero', 'New Text Amber is the most mentally WordPress theme ever created.'),
(346, 139, '_amber_title_hero', 'field_607b2100f5017'),
(347, 72, 'superb_features', 'Superb Features New'),
(348, 72, '_superb_features', 'field_607b25c89e110'),
(349, 142, 'steal_title', 'New Steal of the month'),
(350, 142, '_steal_title', 'field_60794c32162fe'),
(351, 142, 'steal_desc', 'New That we can tuck in our children at night and know that they are fed and clothed and safe from harm. Our trials and triumphs became at once unique and universal. Black and more than black.'),
(352, 142, '_steal_desc', 'field_60794d2ba1b0f'),
(353, 142, 'steal_btn_text', 'purchase now New'),
(354, 142, '_steal_btn_text', 'field_60794d4fa1b10'),
(355, 142, 'steal_btn_url', '#'),
(356, 142, '_steal_btn_url', 'field_60794d76a1b11'),
(357, 142, 'letest_work_title', 'Letest Works'),
(358, 142, '_letest_work_title', 'field_60794cd616300'),
(359, 142, 'work_title', 'Letest Works New title'),
(360, 142, '_work_title', 'field_60794cd616300'),
(361, 142, 'work_desc', 'New That we can tuck in our children at night and know that they are fed and clothed and safe from harm. Our trials and triumphs became at once unique and universal. Black and more than black.'),
(362, 142, '_work_desc', 'field_6079f555511b8'),
(363, 142, 'amber_is_the_most', 'New Text Amber is the most mentally WordPress theme ever created. new text'),
(364, 142, '_amber_is_the_most', 'field_607b2100f5017'),
(365, 142, 'amber_is_the_most_btn_text', 'New purchase now'),
(366, 142, '_amber_is_the_most_btn_text', 'field_607b2129f5018'),
(367, 142, 'amber_is_the_most_btn_url', '#'),
(368, 142, '_amber_is_the_most_btn_url', 'field_607b2159f5019'),
(369, 142, 'amber_title_hero', 'New Text Amber is the most mentally WordPress theme ever created.'),
(370, 142, '_amber_title_hero', 'field_607b2100f5017'),
(371, 142, 'superb_features', 'Superb Features New'),
(372, 142, '_superb_features', 'field_607b25c89e110'),
(373, 145, '_edit_last', '1'),
(374, 145, '_edit_lock', '1618685398:1'),
(375, 149, '_edit_last', '1'),
(376, 149, '_edit_lock', '1618684151:1'),
(377, 149, 'superb_features_title', 'Brilliant creative design new '),
(378, 149, '_superb_features_title', 'field_607b27d639a77'),
(379, 149, 'superb_features_title_desc', ' New Ah, well! It means much the same thing, said the Duchess, digging her sharp little chin into Alice\'s shoulder as she added, and the moral of that is m-dash. Take care of the sense and the sounds.'),
(380, 149, '_superb_features_title_desc', 'field_607b281a39a78'),
(381, 150, '_edit_last', '1'),
(382, 150, '_edit_lock', '1618684209:1'),
(383, 150, 'superb_features_title', 'Web Design '),
(384, 150, '_superb_features_title', 'field_607b27d639a77'),
(385, 150, 'superb_features_title_desc', 'A quick brown fox jumps over the lazy dog sharp little chin into Alice\'s shoulder as she added, and the moral of that is m-dash. Take care of the sense and the sounds.'),
(386, 150, '_superb_features_title_desc', 'field_607b281a39a78'),
(387, 151, '_edit_last', '1'),
(388, 151, '_edit_lock', '1618684228:1'),
(389, 151, 'superb_features_title', 'Brilliant creative design'),
(390, 151, '_superb_features_title', 'field_607b27d639a77'),
(391, 151, 'superb_features_title_desc', 'Ah, well! It means much the same thing, said the Duchess, digging her sharp little chin into Alice\'s shoulder as she added, and the moral of that is m-dash. Take care of the sense and the sounds.'),
(392, 151, '_superb_features_title_desc', 'field_607b281a39a78'),
(393, 152, '_edit_last', '1'),
(394, 152, '_edit_lock', '1618685383:1'),
(395, 152, 'superb_features_title', 'Brilliant creative design four'),
(396, 152, '_superb_features_title', 'field_607b27d639a77'),
(397, 152, 'superb_features_title_desc', 'four Ah, well! It means much the same thing, said the Duchess, digging her sharp little chin into Alice\'s shoulder as she added, and the moral of that is m-dash. Take care of the sense and the sounds.'),
(398, 152, '_superb_features_title_desc', 'field_607b281a39a78'),
(399, 153, '_edit_last', '1'),
(400, 153, '_edit_lock', '1618839174:1'),
(401, 157, '_edit_last', '1'),
(402, 157, '_edit_lock', '1619983148:1'),
(403, 158, '_edit_last', '1'),
(404, 158, 'testimonials_desc', 'New Thereby, the whale commanders are enabled to recognize each other upon the ocean, even at considerable distances and with no small facility.'),
(405, 158, '_testimonials_desc', 'field_607b2ea63ddfc'),
(406, 158, 'testimonials_name', '— Moby-Dick, Herman Melville New'),
(407, 158, '_testimonials_name', 'field_607b2ed13ddfd'),
(408, 158, '_edit_lock', '1618833529:1'),
(409, 159, '_edit_last', '1'),
(410, 159, '_edit_lock', '1619989480:1'),
(411, 159, 'superb_features_title', 'Brilliant creative design five'),
(412, 159, '_superb_features_title', 'field_607b27d639a77'),
(413, 159, 'superb_features_title_desc', 'Ah, well! It means much the same thing, said the Duchess, digging her sharp little chin into Alice\'s shoulder as she added, and the moral of that is m-dash. Take care of the sense and the sounds. five'),
(414, 159, '_superb_features_title_desc', 'field_607b281a39a78'),
(415, 160, '_edit_last', '1'),
(416, 160, '_edit_lock', '1618688343:1'),
(417, 72, 'latest_blog_posts', 'Latest blog posts New'),
(418, 72, '_latest_blog_posts', 'field_607b354f88236'),
(419, 163, 'steal_title', 'New Steal of the month'),
(420, 163, '_steal_title', 'field_60794c32162fe'),
(421, 163, 'steal_desc', 'New That we can tuck in our children at night and know that they are fed and clothed and safe from harm. Our trials and triumphs became at once unique and universal. Black and more than black.'),
(422, 163, '_steal_desc', 'field_60794d2ba1b0f'),
(423, 163, 'steal_btn_text', 'purchase now New'),
(424, 163, '_steal_btn_text', 'field_60794d4fa1b10'),
(425, 163, 'steal_btn_url', '#'),
(426, 163, '_steal_btn_url', 'field_60794d76a1b11'),
(427, 163, 'letest_work_title', 'Letest Works'),
(428, 163, '_letest_work_title', 'field_60794cd616300'),
(429, 163, 'work_title', 'Letest Works New title'),
(430, 163, '_work_title', 'field_60794cd616300'),
(431, 163, 'work_desc', 'New That we can tuck in our children at night and know that they are fed and clothed and safe from harm. Our trials and triumphs became at once unique and universal. Black and more than black.'),
(432, 163, '_work_desc', 'field_6079f555511b8'),
(433, 163, 'amber_is_the_most', 'New Text Amber is the most mentally WordPress theme ever created. new text'),
(434, 163, '_amber_is_the_most', 'field_607b2100f5017'),
(435, 163, 'amber_is_the_most_btn_text', 'New purchase now'),
(436, 163, '_amber_is_the_most_btn_text', 'field_607b2129f5018'),
(437, 163, 'amber_is_the_most_btn_url', '#'),
(438, 163, '_amber_is_the_most_btn_url', 'field_607b2159f5019'),
(439, 163, 'amber_title_hero', 'New Text Amber is the most mentally WordPress theme ever created.'),
(440, 163, '_amber_title_hero', 'field_607b2100f5017'),
(441, 163, 'superb_features', 'Superb Features New'),
(442, 163, '_superb_features', 'field_607b25c89e110'),
(443, 163, 'latest_blog_posts', 'Latest blog posts New'),
(444, 163, '_latest_blog_posts', 'field_607b354f88236'),
(445, 169, '_edit_last', '1'),
(446, 169, 'letest_blog_image', '99'),
(447, 169, '_letest_blog_image', 'field_607b36452532d'),
(448, 169, 'letest_blog_title', 'Runway to Red Carpet: Awards Season New '),
(449, 169, '_letest_blog_title', 'field_607b36612532e'),
(450, 169, 'letest_blog_desc', ' New Her father worked on oil rigs and farms through most of the Depression. But it is a new story that has seared into my genetic.'),
(451, 169, '_letest_blog_desc', 'field_607b367b2532f'),
(452, 169, '_edit_lock', '1618687867:1'),
(453, 170, '_edit_last', '1'),
(454, 170, '_edit_lock', '1618687909:1'),
(455, 170, 'letest_blog_image', '98'),
(456, 170, '_letest_blog_image', 'field_607b36452532d'),
(457, 170, 'letest_blog_title', 'Sadbin Post Two '),
(458, 170, '_letest_blog_title', 'field_607b36612532e'),
(459, 170, 'letest_blog_desc', 'The quick brown fox jumps over the lazy dog '),
(460, 170, '_letest_blog_desc', 'field_607b367b2532f'),
(461, 171, '_edit_last', '1'),
(462, 171, '_edit_lock', '1618689962:1'),
(463, 171, 'letest_blog_image', '100'),
(464, 171, '_letest_blog_image', 'field_607b36452532d'),
(465, 171, 'letest_blog_title', 'The Confarence post'),
(466, 171, '_letest_blog_title', 'field_607b36612532e'),
(467, 171, 'letest_blog_desc', 'this is confarance on oil rigs and farms that through most of the Depression. But it is a new story that has seared into my genetic.'),
(468, 171, '_letest_blog_desc', 'field_607b367b2532f'),
(469, 72, 'company_expirience', 'Company Expirience New'),
(470, 72, '_company_expirience', 'field_607b39fd174c6'),
(471, 174, 'steal_title', 'New Steal of the month'),
(472, 174, '_steal_title', 'field_60794c32162fe'),
(473, 174, 'steal_desc', 'New That we can tuck in our children at night and know that they are fed and clothed and safe from harm. Our trials and triumphs became at once unique and universal. Black and more than black.'),
(474, 174, '_steal_desc', 'field_60794d2ba1b0f'),
(475, 174, 'steal_btn_text', 'purchase now New'),
(476, 174, '_steal_btn_text', 'field_60794d4fa1b10'),
(477, 174, 'steal_btn_url', '#'),
(478, 174, '_steal_btn_url', 'field_60794d76a1b11'),
(479, 174, 'letest_work_title', 'Letest Works'),
(480, 174, '_letest_work_title', 'field_60794cd616300'),
(481, 174, 'work_title', 'Letest Works New title'),
(482, 174, '_work_title', 'field_60794cd616300'),
(483, 174, 'work_desc', 'New That we can tuck in our children at night and know that they are fed and clothed and safe from harm. Our trials and triumphs became at once unique and universal. Black and more than black.'),
(484, 174, '_work_desc', 'field_6079f555511b8'),
(485, 174, 'amber_is_the_most', 'New Text Amber is the most mentally WordPress theme ever created. new text'),
(486, 174, '_amber_is_the_most', 'field_607b2100f5017'),
(487, 174, 'amber_is_the_most_btn_text', 'New purchase now'),
(488, 174, '_amber_is_the_most_btn_text', 'field_607b2129f5018'),
(489, 174, 'amber_is_the_most_btn_url', '#'),
(490, 174, '_amber_is_the_most_btn_url', 'field_607b2159f5019'),
(491, 174, 'amber_title_hero', 'New Text Amber is the most mentally WordPress theme ever created.'),
(492, 174, '_amber_title_hero', 'field_607b2100f5017'),
(493, 174, 'superb_features', 'Superb Features New'),
(494, 174, '_superb_features', 'field_607b25c89e110'),
(495, 174, 'latest_blog_posts', 'Latest blog posts New'),
(496, 174, '_latest_blog_posts', 'field_607b354f88236'),
(497, 174, 'company_expirience', 'Company Expirience New'),
(498, 174, '_company_expirience', 'field_607b39fd174c6'),
(499, 72, 'first_expraiance_text', 'years of web development new'),
(500, 72, '_first_expraiance_text', 'field_607b3b55f4e6b'),
(501, 72, 'first_expraiance_value', '10'),
(502, 72, '_first_expraiance_value', 'field_607b3c48ab5e0'),
(503, 72, 'second_expraiance_text', 'results of the last winter year new'),
(504, 72, '_second_expraiance_text', 'field_607b3bd2f4e6c'),
(505, 72, 'secod_expraiance_value_copy', '90'),
(506, 72, '_secod_expraiance_value_copy', 'field_607b3c5fab5e1'),
(507, 72, 'third_expraiance_text', 'euros of the military budget new'),
(508, 72, '_third_expraiance_text', 'field_607b3c01f4e6d'),
(509, 72, 'third_expraiance_value_copy2', '30'),
(510, 72, '_third_expraiance_value_copy2', 'field_607b3c76ab5e2'),
(511, 181, 'steal_title', 'New Steal of the month'),
(512, 181, '_steal_title', 'field_60794c32162fe'),
(513, 181, 'steal_desc', 'New That we can tuck in our children at night and know that they are fed and clothed and safe from harm. Our trials and triumphs became at once unique and universal. Black and more than black.'),
(514, 181, '_steal_desc', 'field_60794d2ba1b0f'),
(515, 181, 'steal_btn_text', 'purchase now New'),
(516, 181, '_steal_btn_text', 'field_60794d4fa1b10'),
(517, 181, 'steal_btn_url', '#'),
(518, 181, '_steal_btn_url', 'field_60794d76a1b11'),
(519, 181, 'letest_work_title', 'Letest Works'),
(520, 181, '_letest_work_title', 'field_60794cd616300'),
(521, 181, 'work_title', 'Letest Works New title'),
(522, 181, '_work_title', 'field_60794cd616300'),
(523, 181, 'work_desc', 'New That we can tuck in our children at night and know that they are fed and clothed and safe from harm. Our trials and triumphs became at once unique and universal. Black and more than black.'),
(524, 181, '_work_desc', 'field_6079f555511b8'),
(525, 181, 'amber_is_the_most', 'New Text Amber is the most mentally WordPress theme ever created. new text'),
(526, 181, '_amber_is_the_most', 'field_607b2100f5017'),
(527, 181, 'amber_is_the_most_btn_text', 'New purchase now'),
(528, 181, '_amber_is_the_most_btn_text', 'field_607b2129f5018'),
(529, 181, 'amber_is_the_most_btn_url', '#'),
(530, 181, '_amber_is_the_most_btn_url', 'field_607b2159f5019'),
(531, 181, 'amber_title_hero', 'New Text Amber is the most mentally WordPress theme ever created.'),
(532, 181, '_amber_title_hero', 'field_607b2100f5017'),
(533, 181, 'superb_features', 'Superb Features New'),
(534, 181, '_superb_features', 'field_607b25c89e110'),
(535, 181, 'latest_blog_posts', 'Latest blog posts New'),
(536, 181, '_latest_blog_posts', 'field_607b354f88236'),
(537, 181, 'company_expirience', 'Company Expirience New'),
(538, 181, '_company_expirience', 'field_607b39fd174c6'),
(539, 181, 'first_expraiance_text', 'years of web development new'),
(540, 181, '_first_expraiance_text', 'field_607b3b55f4e6b'),
(541, 181, 'first_expraiance_value', '55'),
(542, 181, '_first_expraiance_value', 'field_607b3c48ab5e0'),
(543, 181, 'second_expraiance_text', 'results of the last winter year new'),
(544, 181, '_second_expraiance_text', 'field_607b3bd2f4e6c'),
(545, 181, 'secod_expraiance_value_copy', '30'),
(546, 181, '_secod_expraiance_value_copy', 'field_607b3c5fab5e1'),
(547, 181, 'third_expraiance_text', 'euros of the military budget new'),
(548, 181, '_third_expraiance_text', 'field_607b3c01f4e6d'),
(549, 181, 'third_expraiance_value_copy2', '70'),
(550, 181, '_third_expraiance_value_copy2', 'field_607b3c76ab5e2'),
(551, 182, 'steal_title', 'New Steal of the month'),
(552, 182, '_steal_title', 'field_60794c32162fe'),
(553, 182, 'steal_desc', 'New That we can tuck in our children at night and know that they are fed and clothed and safe from harm. Our trials and triumphs became at once unique and universal. Black and more than black.'),
(554, 182, '_steal_desc', 'field_60794d2ba1b0f'),
(555, 182, 'steal_btn_text', 'purchase now New'),
(556, 182, '_steal_btn_text', 'field_60794d4fa1b10'),
(557, 182, 'steal_btn_url', '#'),
(558, 182, '_steal_btn_url', 'field_60794d76a1b11'),
(559, 182, 'letest_work_title', 'Letest Works'),
(560, 182, '_letest_work_title', 'field_60794cd616300'),
(561, 182, 'work_title', 'Letest Works New title'),
(562, 182, '_work_title', 'field_60794cd616300'),
(563, 182, 'work_desc', 'New That we can tuck in our children at night and know that they are fed and clothed and safe from harm. Our trials and triumphs became at once unique and universal. Black and more than black.'),
(564, 182, '_work_desc', 'field_6079f555511b8'),
(565, 182, 'amber_is_the_most', 'New Text Amber is the most mentally WordPress theme ever created. new text'),
(566, 182, '_amber_is_the_most', 'field_607b2100f5017'),
(567, 182, 'amber_is_the_most_btn_text', 'New purchase now'),
(568, 182, '_amber_is_the_most_btn_text', 'field_607b2129f5018'),
(569, 182, 'amber_is_the_most_btn_url', '#'),
(570, 182, '_amber_is_the_most_btn_url', 'field_607b2159f5019'),
(571, 182, 'amber_title_hero', 'New Text Amber is the most mentally WordPress theme ever created.'),
(572, 182, '_amber_title_hero', 'field_607b2100f5017'),
(573, 182, 'superb_features', 'Superb Features New'),
(574, 182, '_superb_features', 'field_607b25c89e110'),
(575, 182, 'latest_blog_posts', 'Latest blog posts New'),
(576, 182, '_latest_blog_posts', 'field_607b354f88236'),
(577, 182, 'company_expirience', 'Company Expirience New'),
(578, 182, '_company_expirience', 'field_607b39fd174c6'),
(579, 182, 'first_expraiance_text', 'years of web development new'),
(580, 182, '_first_expraiance_text', 'field_607b3b55f4e6b'),
(581, 182, 'first_expraiance_value', '10'),
(582, 182, '_first_expraiance_value', 'field_607b3c48ab5e0'),
(583, 182, 'second_expraiance_text', 'results of the last winter year new'),
(584, 182, '_second_expraiance_text', 'field_607b3bd2f4e6c'),
(585, 182, 'secod_expraiance_value_copy', '90'),
(586, 182, '_secod_expraiance_value_copy', 'field_607b3c5fab5e1'),
(587, 182, 'third_expraiance_text', 'euros of the military budget new'),
(588, 182, '_third_expraiance_text', 'field_607b3c01f4e6d'),
(589, 182, 'third_expraiance_value_copy2', '30'),
(590, 182, '_third_expraiance_value_copy2', 'field_607b3c76ab5e2'),
(591, 183, '_edit_last', '1'),
(592, 183, '_edit_lock', '1618690901:1'),
(593, 72, 'our_team', 'Our New Team'),
(594, 72, '_our_team', 'field_607b401597acf'),
(595, 194, 'steal_title', 'New Steal of the month'),
(596, 194, '_steal_title', 'field_60794c32162fe'),
(597, 194, 'steal_desc', 'New That we can tuck in our children at night and know that they are fed and clothed and safe from harm. Our trials and triumphs became at once unique and universal. Black and more than black.'),
(598, 194, '_steal_desc', 'field_60794d2ba1b0f'),
(599, 194, 'steal_btn_text', 'purchase now New'),
(600, 194, '_steal_btn_text', 'field_60794d4fa1b10'),
(601, 194, 'steal_btn_url', '#'),
(602, 194, '_steal_btn_url', 'field_60794d76a1b11'),
(603, 194, 'letest_work_title', 'Letest Works'),
(604, 194, '_letest_work_title', 'field_60794cd616300'),
(605, 194, 'work_title', 'Letest Works New title'),
(606, 194, '_work_title', 'field_60794cd616300'),
(607, 194, 'work_desc', 'New That we can tuck in our children at night and know that they are fed and clothed and safe from harm. Our trials and triumphs became at once unique and universal. Black and more than black.'),
(608, 194, '_work_desc', 'field_6079f555511b8'),
(609, 194, 'amber_is_the_most', 'New Text Amber is the most mentally WordPress theme ever created. new text'),
(610, 194, '_amber_is_the_most', 'field_607b2100f5017'),
(611, 194, 'amber_is_the_most_btn_text', 'New purchase now'),
(612, 194, '_amber_is_the_most_btn_text', 'field_607b2129f5018'),
(613, 194, 'amber_is_the_most_btn_url', '#'),
(614, 194, '_amber_is_the_most_btn_url', 'field_607b2159f5019'),
(615, 194, 'amber_title_hero', 'New Text Amber is the most mentally WordPress theme ever created.'),
(616, 194, '_amber_title_hero', 'field_607b2100f5017'),
(617, 194, 'superb_features', 'Superb Features New'),
(618, 194, '_superb_features', 'field_607b25c89e110'),
(619, 194, 'latest_blog_posts', 'Latest blog posts New'),
(620, 194, '_latest_blog_posts', 'field_607b354f88236'),
(621, 194, 'company_expirience', 'Company Expirience New'),
(622, 194, '_company_expirience', 'field_607b39fd174c6'),
(623, 194, 'first_expraiance_text', 'years of web development new'),
(624, 194, '_first_expraiance_text', 'field_607b3b55f4e6b'),
(625, 194, 'first_expraiance_value', '10'),
(626, 194, '_first_expraiance_value', 'field_607b3c48ab5e0'),
(627, 194, 'second_expraiance_text', 'results of the last winter year new'),
(628, 194, '_second_expraiance_text', 'field_607b3bd2f4e6c'),
(629, 194, 'secod_expraiance_value_copy', '90'),
(630, 194, '_secod_expraiance_value_copy', 'field_607b3c5fab5e1'),
(631, 194, 'third_expraiance_text', 'euros of the military budget new'),
(632, 194, '_third_expraiance_text', 'field_607b3c01f4e6d'),
(633, 194, 'third_expraiance_value_copy2', '30'),
(634, 194, '_third_expraiance_value_copy2', 'field_607b3c76ab5e2'),
(635, 194, 'our_team', 'Our New Team'),
(636, 194, '_our_team', 'field_607b401597acf'),
(637, 191, '_edit_last', '1'),
(638, 191, 'our_team_image', '100'),
(639, 191, '_our_team_image', 'field_607b3f06fe412'),
(640, 191, 'our_team_name', 'Manny Delgado'),
(641, 191, '_our_team_name', 'field_607b3f32fe413'),
(642, 191, 'our_team_desig', 'ecology lawer'),
(643, 191, '_our_team_desig', 'field_607b3f52fe414'),
(644, 191, 'our_team_desc', 'New Be who you are and say what you feel, because those who mind don\'t matter.'),
(645, 191, '_our_team_desc', 'field_607b3f72fe415'),
(646, 191, 'our_team_btn_text', 'New Profile'),
(647, 191, '_our_team_btn_text', 'field_607b3f99fe416'),
(648, 191, 'our_team_btn_url', '#'),
(649, 191, '_our_team_btn_url', 'field_607b3fb5fe417'),
(650, 191, '_edit_lock', '1618692648:1'),
(651, 195, '_edit_last', '1'),
(652, 195, '_edit_lock', '1618690535:1'),
(653, 195, 'our_team_image', '197'),
(654, 195, '_our_team_image', 'field_607b3f06fe412'),
(655, 195, 'our_team_name', 'Sadbin Shakil '),
(656, 195, '_our_team_name', 'field_607b3f32fe413'),
(657, 195, 'our_team_desig', 'Wordpress Developer '),
(658, 195, '_our_team_desig', 'field_607b3f52fe414'),
(659, 195, 'our_team_desc', 'I am a professional web designer and wordpress developer.'),
(660, 195, '_our_team_desc', 'field_607b3f72fe415'),
(661, 195, 'our_team_btn_text', 'Profile'),
(662, 195, '_our_team_btn_text', 'field_607b3f99fe416'),
(663, 195, 'our_team_btn_url', '#'),
(664, 195, '_our_team_btn_url', 'field_607b3fb5fe417'),
(665, 196, '_edit_last', '1'),
(666, 196, '_edit_lock', '1618690455:1'),
(667, 197, '_wp_attached_file', '2021/04/IMG202103111816371.jpg'),
(668, 197, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1784;s:6:\"height\";i:2288;s:4:\"file\";s:30:\"2021/04/IMG202103111816371.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"IMG202103111816371-234x300.jpg\";s:5:\"width\";i:234;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"IMG202103111816371-798x1024.jpg\";s:5:\"width\";i:798;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"IMG202103111816371-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"IMG202103111816371-768x985.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:985;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:32:\"IMG202103111816371-1198x1536.jpg\";s:5:\"width\";i:1198;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:32:\"IMG202103111816371-1597x2048.jpg\";s:5:\"width\";i:1597;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(669, 198, '_wp_attached_file', '2021/04/womenspeaker-1200x604-1.jpg'),
(670, 198, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:604;s:4:\"file\";s:35:\"2021/04/womenspeaker-1200x604-1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"womenspeaker-1200x604-1-300x151.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:151;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"womenspeaker-1200x604-1-1024x515.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"womenspeaker-1200x604-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"womenspeaker-1200x604-1-768x387.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:387;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(671, 199, '_wp_attached_file', '2021/04/9-Expert-Tips-on-How-to-Become-an-Effective-Conference-Speaker-760x400-1.png'),
(672, 199, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:760;s:6:\"height\";i:400;s:4:\"file\";s:84:\"2021/04/9-Expert-Tips-on-How-to-Become-an-Effective-Conference-Speaker-760x400-1.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:84:\"9-Expert-Tips-on-How-to-Become-an-Effective-Conference-Speaker-760x400-1-300x158.png\";s:5:\"width\";i:300;s:6:\"height\";i:158;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:84:\"9-Expert-Tips-on-How-to-Become-an-Effective-Conference-Speaker-760x400-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(673, 196, 'our_team_image', '198'),
(674, 196, '_our_team_image', 'field_607b3f06fe412'),
(675, 196, 'our_team_name', 'Maria mari '),
(676, 196, '_our_team_name', 'field_607b3f32fe413'),
(677, 196, 'our_team_desig', 'Apps development '),
(678, 196, '_our_team_desig', 'field_607b3f52fe414'),
(679, 196, 'our_team_desc', 'Be who you are and say what you feel, because those who mind don\'t matter.'),
(680, 196, '_our_team_desc', 'field_607b3f72fe415'),
(681, 196, 'our_team_btn_text', 'Profile'),
(682, 196, '_our_team_btn_text', 'field_607b3f99fe416'),
(683, 196, 'our_team_btn_url', '#'),
(684, 196, '_our_team_btn_url', 'field_607b3fb5fe417'),
(685, 200, '_edit_last', '1'),
(686, 200, '_edit_lock', '1618690487:1'),
(687, 200, 'our_team_image', '199'),
(688, 200, '_our_team_image', 'field_607b3f06fe412'),
(689, 200, 'our_team_name', 'Mandeep Sing '),
(690, 200, '_our_team_name', 'field_607b3f32fe413'),
(691, 200, 'our_team_desig', 'Web developer '),
(692, 200, '_our_team_desig', 'field_607b3f52fe414'),
(693, 200, 'our_team_desc', 'Be who you are and say what you feel, because those who mind don\'t matter.'),
(694, 200, '_our_team_desc', 'field_607b3f72fe415'),
(695, 200, 'our_team_btn_text', 'Profile'),
(696, 200, '_our_team_btn_text', 'field_607b3f99fe416'),
(697, 200, 'our_team_btn_url', '#'),
(698, 200, '_our_team_btn_url', 'field_607b3fb5fe417'),
(699, 158, 'test_bg', '198'),
(700, 158, '_test_bg', 'field_607d70a8c71f9'),
(701, 157, '_wp_old_date', '2021-04-17'),
(702, 157, 'test_bg', '199'),
(703, 157, '_test_bg', 'field_607d70a8c71f9'),
(704, 157, 'testimonials_desc', 'Thereby, the whale commanders are enabled to recognize each other upon the ocean, even at considerable distances and with no small facility.'),
(705, 157, '_testimonials_desc', 'field_607b2ea63ddfc'),
(706, 157, 'testimonials_name', '— Moby-Dick, Herman Melville'),
(707, 157, '_testimonials_name', 'field_607b2ed13ddfd'),
(716, 206, '_wp_attached_file', '2021/04/Microsoft-365-Business-voice-VoipZion-slide-1-1.png'),
(717, 206, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1439;s:6:\"height\";i:754;s:4:\"file\";s:59:\"2021/04/Microsoft-365-Business-voice-VoipZion-slide-1-1.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:59:\"Microsoft-365-Business-voice-VoipZion-slide-1-1-300x157.png\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:60:\"Microsoft-365-Business-voice-VoipZion-slide-1-1-1024x537.png\";s:5:\"width\";i:1024;s:6:\"height\";i:537;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:59:\"Microsoft-365-Business-voice-VoipZion-slide-1-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:59:\"Microsoft-365-Business-voice-VoipZion-slide-1-1-768x402.png\";s:5:\"width\";i:768;s:6:\"height\";i:402;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(718, 72, 'testimonials_background', '206'),
(719, 72, '_testimonials_background', 'field_608000eab9d46'),
(720, 207, 'steal_title', 'New Steal of the month'),
(721, 207, '_steal_title', 'field_60794c32162fe'),
(722, 207, 'steal_desc', 'New That we can tuck in our children at night and know that they are fed and clothed and safe from harm. Our trials and triumphs became at once unique and universal. Black and more than black.'),
(723, 207, '_steal_desc', 'field_60794d2ba1b0f'),
(724, 207, 'steal_btn_text', 'purchase now New'),
(725, 207, '_steal_btn_text', 'field_60794d4fa1b10'),
(726, 207, 'steal_btn_url', '#'),
(727, 207, '_steal_btn_url', 'field_60794d76a1b11'),
(728, 207, 'letest_work_title', 'Letest Works'),
(729, 207, '_letest_work_title', 'field_60794cd616300'),
(730, 207, 'work_title', 'Letest Works New title'),
(731, 207, '_work_title', 'field_60794cd616300'),
(732, 207, 'work_desc', 'New That we can tuck in our children at night and know that they are fed and clothed and safe from harm. Our trials and triumphs became at once unique and universal. Black and more than black.'),
(733, 207, '_work_desc', 'field_6079f555511b8'),
(734, 207, 'amber_is_the_most', 'New Text Amber is the most mentally WordPress theme ever created. new text'),
(735, 207, '_amber_is_the_most', 'field_607b2100f5017'),
(736, 207, 'amber_is_the_most_btn_text', 'New purchase now'),
(737, 207, '_amber_is_the_most_btn_text', 'field_607b2129f5018'),
(738, 207, 'amber_is_the_most_btn_url', '#'),
(739, 207, '_amber_is_the_most_btn_url', 'field_607b2159f5019');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(740, 207, 'amber_title_hero', 'New Text Amber is the most mentally WordPress theme ever created.'),
(741, 207, '_amber_title_hero', 'field_607b2100f5017'),
(742, 207, 'superb_features', 'Superb Features New'),
(743, 207, '_superb_features', 'field_607b25c89e110'),
(744, 207, 'latest_blog_posts', 'Latest blog posts New'),
(745, 207, '_latest_blog_posts', 'field_607b354f88236'),
(746, 207, 'company_expirience', 'Company Expirience New'),
(747, 207, '_company_expirience', 'field_607b39fd174c6'),
(748, 207, 'first_expraiance_text', 'years of web development new'),
(749, 207, '_first_expraiance_text', 'field_607b3b55f4e6b'),
(750, 207, 'first_expraiance_value', '10'),
(751, 207, '_first_expraiance_value', 'field_607b3c48ab5e0'),
(752, 207, 'second_expraiance_text', 'results of the last winter year new'),
(753, 207, '_second_expraiance_text', 'field_607b3bd2f4e6c'),
(754, 207, 'secod_expraiance_value_copy', '90'),
(755, 207, '_secod_expraiance_value_copy', 'field_607b3c5fab5e1'),
(756, 207, 'third_expraiance_text', 'euros of the military budget new'),
(757, 207, '_third_expraiance_text', 'field_607b3c01f4e6d'),
(758, 207, 'third_expraiance_value_copy2', '30'),
(759, 207, '_third_expraiance_value_copy2', 'field_607b3c76ab5e2'),
(760, 207, 'our_team', 'Our New Team'),
(761, 207, '_our_team', 'field_607b401597acf'),
(762, 207, 'testimonials_background', '206'),
(763, 207, '_testimonials_background', 'field_608000eab9d46'),
(764, 157, '_thumbnail_id', '206'),
(765, 121, 'single_images_0_slider_single_images', '197'),
(766, 121, '_single_images_0_slider_single_images', 'field_6085a9962a689'),
(767, 121, 'single_images', '1'),
(768, 121, '_single_images', 'field_6085a97c2a688'),
(769, 121, 'single_sliders_0_slider_single_images', '199'),
(770, 121, '_single_sliders_0_slider_single_images', 'field_6085a9962a689'),
(771, 121, 'single_sliders', '2'),
(772, 121, '_single_sliders', 'field_6085a97c2a688'),
(773, 121, 'single_sliders_1_slider_single_images', '198'),
(774, 121, '_single_sliders_1_slider_single_images', 'field_6085a9962a689'),
(775, 121, 'work_feature_1_work_feature', '<input type=\"checkbox\" id=\"Brownie\" name=\"Brownie\">\r\n<label for=\"Brownie\">Feature</label><br>'),
(776, 121, '_work_feature_1_work_feature', 'field_607aeaf7f52df'),
(777, 121, 'work_feature_0_work_feature_item', 'shakil '),
(778, 121, '_work_feature_0_work_feature_item', 'field_607aeaf7f52df'),
(779, 121, 'work_feature_1_work_feature_item', ' sadbin'),
(780, 121, '_work_feature_1_work_feature_item', 'field_607aeaf7f52df'),
(781, 120, 'slider_single_img', ''),
(782, 120, '_slider_single_img', 'field_607ae67e12898'),
(783, 120, 'work_feature', '3'),
(784, 120, '_work_feature', 'field_607ae7a61289a'),
(785, 120, 'popup_image', ''),
(786, 120, '_popup_image', 'field_607ae9dcbe840'),
(787, 120, 'single_sliders_0_slider_single_images', '100'),
(788, 120, '_single_sliders_0_slider_single_images', 'field_6085a9962a689'),
(789, 120, 'single_sliders_1_slider_single_images', '99'),
(790, 120, '_single_sliders_1_slider_single_images', 'field_6085a9962a689'),
(791, 120, 'single_sliders', '2'),
(792, 120, '_single_sliders', 'field_6085a97c2a688'),
(793, 120, 'work_feature_0_work_feature_item', ' Brownie ice cream carrot '),
(794, 120, '_work_feature_0_work_feature_item', 'field_607aeaf7f52df'),
(795, 120, 'work_feature_1_work_feature_item', ' shakil'),
(796, 120, '_work_feature_1_work_feature_item', 'field_607aeaf7f52df'),
(797, 120, 'work_feature_2_work_feature_item', 'Sadbin'),
(798, 120, '_work_feature_2_work_feature_item', 'field_607aeaf7f52df'),
(799, 211, '_edit_last', '1'),
(800, 211, '_edit_lock', '1619381292:1'),
(801, 211, '_wp_page_template', 'template-works.php'),
(802, 213, '_edit_last', '1'),
(803, 213, '_edit_lock', '1619464739:1'),
(804, 211, 'works_banner_images', '206'),
(805, 211, '_works_banner_images', 'field_6085c5b4faa0a'),
(806, 211, 'works_description', 'New'),
(807, 211, '_works_description', 'field_6085c5d460c6a'),
(808, 216, 'works_banner_images', '206'),
(809, 216, '_works_banner_images', 'field_6085c5b4faa0a'),
(810, 216, 'works_description', ''),
(811, 216, '_works_description', 'field_6085c5d460c6a'),
(812, 218, 'works_banner_images', '206'),
(813, 218, '_works_banner_images', 'field_6085c5b4faa0a'),
(814, 218, 'works_description', 'New'),
(815, 218, '_works_description', 'field_6085c5d460c6a'),
(816, 211, 'works_desc', 'New Gingerbread candy chupa chups topping. Halvah cake croissant jelly beans. Unerdwear.com brownie lollipop sesame snaps bear claw sweet roll sweet I love soufflé. Caramels powder gummies pudding danish sesame snaps. Sweet roll caramels fruitcake bonbon unerdwear.com brownie ice cream carrot cake. Carrot cake apple pie gummies I love applicake I love I love chocolate bar pudding.'),
(817, 211, '_works_desc', 'field_6085c7596d4fb'),
(818, 220, 'works_banner_images', '206'),
(819, 220, '_works_banner_images', 'field_6085c5b4faa0a'),
(820, 220, 'works_description', 'New'),
(821, 220, '_works_description', 'field_6085c5d460c6a'),
(822, 220, 'works_desc', 'New Gingerbread candy chupa chups topping. Halvah cake croissant jelly beans. Unerdwear.com brownie lollipop sesame snaps bear claw sweet roll sweet I love soufflé. Caramels powder gummies pudding danish sesame snaps. Sweet roll caramels fruitcake bonbon unerdwear.com brownie ice cream carrot cake. Carrot cake apple pie gummies I love applicake I love I love chocolate bar pudding.'),
(823, 220, '_works_desc', 'field_6085c7596d4fb'),
(824, 1, '_edit_last', '1'),
(825, 1, '_thumbnail_id', '198'),
(830, 223, '_edit_last', '1'),
(831, 223, '_edit_lock', '1619602262:1'),
(832, 223, '_thumbnail_id', '199'),
(835, 225, '_edit_last', '1'),
(836, 225, '_edit_lock', '1619729412:1'),
(839, 225, '_thumbnail_id', '197'),
(860, 231, '_wp_attached_file', '2021/04/logo.png'),
(861, 231, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:130;s:6:\"height\";i:48;s:4:\"file\";s:16:\"2021/04/logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(862, 232, '_menu_item_type', 'post_type'),
(863, 232, '_menu_item_menu_item_parent', '0'),
(864, 232, '_menu_item_object_id', '211'),
(865, 232, '_menu_item_object', 'page'),
(866, 232, '_menu_item_target', ''),
(867, 232, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(868, 232, '_menu_item_xfn', ''),
(869, 232, '_menu_item_url', ''),
(871, 76, '_wp_old_date', '2021-04-13'),
(872, 77, '_wp_old_date', '2021-04-13'),
(873, 80, '_wp_old_date', '2021-04-13'),
(874, 2, '_edit_lock', '1619974440:1'),
(875, 2, '_edit_last', '1'),
(876, 64, '_wp_page_template', 'contact.php'),
(877, 243, '_form', '<div class=\"form-area\">\n<div class=\"form-group\"> \n[text* name2 id:name class:form-control placeholder \"Name\"]\n</div>\n\n<div class=\"form-group\"> \n[email* email id:email class:form-control placeholder \"Email\"]\n</div>\n\n<div class=\"form-group\"> \n[text* phone id:phone class:form-control placeholder \"Phone\"]\n</div>\n\n<div class=\"form-group\"> \n[text* subject id:subject class:form-control placeholder \"Subject\"]\n</div>\n\n<div class=\"form-group\">  \n[textarea* textarea-366 id:message class:form-control placeholder \"Message\"]\n</div>\n\n<div class=\"form-group\"> \n[submit id:submit class:btn class:btn-success \"Submit\"]\n</div>\n\n</div>'),
(878, 243, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:25:\"[_site_title] \"[subject]\"\";s:6:\"sender\";s:41:\"[_site_title] <skakil@shakil.coderit.fun>\";s:9:\"recipient\";s:22:\"shakilcoding@yahoo.com\";s:4:\"body\";s:94:\"Name: [name2] \nEmail:  [email]\nPhone: [phone]\nSubject: [subject]\n\nMessage Body:\n[textarea-366]\";s:18:\"additional_headers\";s:17:\"Reply-To: [email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(879, 243, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:44:\"[_site_title] <wordpress@shakil.coderit.fun>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(880, 243, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(881, 243, '_additional_settings', ''),
(882, 243, '_locale', 'en_US'),
(886, 244, '_edit_last', '1'),
(887, 244, '_edit_lock', '1622299854:1'),
(888, 64, 'contact_us_shortcode', '[contact-form-7 id=\"243\" title=\"Contact\"]'),
(889, 64, '_contact_us_shortcode', 'field_608ef2f056312'),
(890, 246, 'contact_us_shortcode', '[contact-form-7 id=\"243\" title=\"Contact\"]'),
(891, 246, '_contact_us_shortcode', 'field_608ef2f056312'),
(892, 247, 'contact_us_shortcode', ''),
(893, 247, '_contact_us_shortcode', 'field_608ef2f056312'),
(894, 248, 'contact_us_shortcode', '[contact-form-7 id=\"243\" title=\"Contact'),
(895, 248, '_contact_us_shortcode', 'field_608ef2f056312'),
(896, 249, 'contact_us_shortcode', '[contact-form-7 id=\"243\" title=\"Contact\"]'),
(897, 249, '_contact_us_shortcode', 'field_608ef2f056312'),
(898, 250, '_menu_item_type', 'post_type'),
(899, 250, '_menu_item_menu_item_parent', '0'),
(900, 250, '_menu_item_object_id', '64'),
(901, 250, '_menu_item_object', 'page'),
(902, 250, '_menu_item_target', ''),
(903, 250, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(904, 250, '_menu_item_xfn', ''),
(905, 250, '_menu_item_url', ''),
(907, 76, '_wp_old_date', '2021-05-01'),
(908, 77, '_wp_old_date', '2021-05-01'),
(909, 80, '_wp_old_date', '2021-05-01'),
(910, 232, '_wp_old_date', '2021-05-01'),
(911, 76, '_wp_old_date', '2021-05-02'),
(912, 77, '_wp_old_date', '2021-05-02'),
(913, 80, '_wp_old_date', '2021-05-02'),
(914, 232, '_wp_old_date', '2021-05-02'),
(915, 250, '_wp_old_date', '2021-05-02'),
(916, 76, '_wp_old_date', '2021-06-03'),
(917, 77, '_wp_old_date', '2021-06-03'),
(918, 80, '_wp_old_date', '2021-06-03'),
(919, 232, '_wp_old_date', '2021-06-03'),
(920, 250, '_wp_old_date', '2021-06-03');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
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
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-03-25 06:18:08', '2021-03-25 06:18:08', '<!-- wp:paragraph -->\r\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\r\n<!-- /wp:paragraph -->', 'Hello Bangladesh', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-04-28 09:46:19', '2021-04-28 09:46:19', '', 0, 'http://localhost/dev/?p=1', 0, 'post', '', 1),
(2, 1, '2021-03-25 06:18:08', '2021-03-25 06:18:08', '[testcode Title=\"hope\" ][/testcode]', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-05-02 11:00:02', '2021-05-02 11:00:02', '', 0, 'http://localhost/dev/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-03-25 06:18:08', '2021-03-25 06:18:08', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/dev.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-03-25 06:18:08', '2021-03-25 06:18:08', '', 0, 'http://localhost/dev/?page_id=3', 0, 'page', '', 0),
(36, 1, '2021-04-05 11:57:53', '2021-04-05 11:57:53', '', 'elementor-removebg-preview', '', 'inherit', 'open', 'closed', '', 'elementor-removebg-preview', '', '', '2021-04-17 14:15:41', '2021-04-17 14:15:41', '', 121, 'http://localhost/dev/wp-content/uploads/2021/04/elementor-removebg-preview.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2021-04-05 13:06:22', '2021-04-05 13:06:22', 'The auto design', 'Web Design', '', 'publish', 'closed', 'closed', '', 'web-design', '', '', '2021-04-05 14:13:25', '2021-04-05 14:13:25', '', 0, 'http://localhost/dev/?post_type=services&#038;p=53', 0, 'services', '', 0),
(54, 1, '2021-04-05 13:06:55', '2021-04-05 13:06:55', 'Developer in wordpress', 'Wordpress developer', '', 'publish', 'closed', 'closed', '', 'wordpress-developer', '', '', '2021-04-05 14:13:05', '2021-04-05 14:13:05', '', 0, 'http://localhost/dev/?post_type=services&#038;p=54', 0, 'services', '', 0),
(55, 1, '2021-04-05 13:10:42', '2021-04-05 13:10:42', '<!-- wp:paragraph -->\n<p>This is services content</p>\n<!-- /wp:paragraph -->', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2021-04-05 13:32:00', '2021-04-05 13:32:00', '', 0, 'http://localhost/dev/?page_id=55', 0, 'page', '', 0),
(56, 1, '2021-04-05 13:10:42', '2021-04-05 13:10:42', '', 'Services', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2021-04-05 13:10:42', '2021-04-05 13:10:42', '', 55, 'http://localhost/dev/?p=56', 0, 'revision', '', 0),
(57, 1, '2021-04-05 13:12:46', '2021-04-05 13:12:46', '<!-- wp:paragraph -->\n<p>This is services content</p>\n<!-- /wp:paragraph -->', 'Services', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2021-04-05 13:12:46', '2021-04-05 13:12:46', '', 55, 'http://localhost/dev/?p=57', 0, 'revision', '', 0),
(64, 1, '2021-04-05 13:33:37', '2021-04-05 13:33:37', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2021-05-02 18:58:36', '2021-05-02 18:58:36', '', 0, 'http://localhost/dev/?page_id=64', 0, 'page', '', 0),
(65, 1, '2021-04-05 13:33:37', '2021-04-05 13:33:37', '<!-- wp:paragraph -->\n<p>This is contact page.</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2021-04-05 13:33:37', '2021-04-05 13:33:37', '', 64, 'http://localhost/dev/?p=65', 0, 'revision', '', 0),
(67, 1, '2021-04-08 14:46:28', '2021-04-08 14:46:28', '<label> Your name\r\n    [text* your-name] </label>\r\n\r\n<label> Your email\r\n    [email* your-email] </label>\r\n\r\n<label> Subject\r\n    [text* your-subject] </label>\r\n\r\n<label> Your message (optional)\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Submit\"]\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <shakilsb4646@gmail.com>\nshakilcoding@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <shakilsb4646@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2021-04-08 14:55:20', '2021-04-08 14:55:20', '', 0, 'http://localhost/dev/?post_type=wpcf7_contact_form&#038;p=67', 0, 'wpcf7_contact_form', '', 0),
(68, 1, '2021-04-08 14:55:50', '2021-04-08 14:55:50', '<!-- wp:paragraph -->\r\n<p>[contact-form-7 id=\"67\" title=\"Contact form 1\"]</p>\r\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2021-04-08 14:55:50', '2021-04-08 14:55:50', '', 64, 'http://localhost/dev/?p=68', 0, 'revision', '', 0),
(70, 1, '2021-04-08 14:57:11', '2021-04-08 14:57:11', '<p>&lt;label&gt; Your name<br />[text* your-name] &lt;/label&gt;</p>\r\n<p>&lt;label&gt; Your email<br />[email* your-email] &lt;/label&gt;</p>\r\n<p>&lt;label&gt; Subject<br />[text* your-subject] &lt;/label&gt;</p>\r\n<p>&lt;label&gt; Your message (optional)<br />[textarea your-message] &lt;/label&gt;</p>\r\n<p>[submit \"Submit\"]</p>', 'Contact', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2021-04-08 14:57:11', '2021-04-08 14:57:11', '', 64, 'http://localhost/dev/?p=70', 0, 'revision', '', 0),
(71, 1, '2021-04-12 12:28:37', '2021-04-12 12:28:37', '', '197648', '', 'inherit', 'open', 'closed', '', '197648', '', '', '2021-04-15 19:05:49', '2021-04-15 19:05:49', '', 0, 'http://localhost/dev/wp-content/uploads/2021/04/197648.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2021-04-13 11:15:55', '2021-04-13 11:15:55', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-04-21 10:41:22', '2021-04-21 10:41:22', '', 0, 'http://localhost/dev/?page_id=72', 0, 'page', '', 0),
(73, 1, '2021-04-13 11:15:55', '2021-04-13 11:15:55', '', 'Home', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2021-04-13 11:15:55', '2021-04-13 11:15:55', '', 72, 'http://localhost/dev/?p=73', 0, 'revision', '', 0),
(74, 1, '2021-04-13 11:16:43', '2021-04-13 11:16:43', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2021-04-13 11:16:43', '2021-04-13 11:16:43', '', 0, 'http://localhost/dev/?page_id=74', 0, 'page', '', 0),
(75, 1, '2021-04-13 11:16:43', '2021-04-13 11:16:43', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2021-04-13 11:16:43', '2021-04-13 11:16:43', '', 74, 'http://localhost/dev/?p=75', 0, 'revision', '', 0),
(76, 1, '2021-06-04 16:48:37', '2021-04-13 11:42:09', ' ', '', '', 'publish', 'closed', 'closed', '', '76', '', '', '2021-06-04 16:48:37', '2021-06-04 16:48:37', '', 0, 'http://localhost/dev/?p=76', 1, 'nav_menu_item', '', 0),
(77, 1, '2021-06-04 16:48:37', '2021-04-13 11:42:09', ' ', '', '', 'publish', 'closed', 'closed', '', '77', '', '', '2021-06-04 16:48:37', '2021-06-04 16:48:37', '', 0, 'http://localhost/dev/?p=77', 2, 'nav_menu_item', '', 0),
(80, 1, '2021-06-04 16:48:37', '2021-04-13 11:42:09', ' ', '', '', 'publish', 'closed', 'closed', '', '80', '', '', '2021-06-04 16:48:37', '2021-06-04 16:48:37', '', 0, 'http://localhost/dev/?p=80', 3, 'nav_menu_item', '', 0),
(83, 1, '2021-04-15 09:28:06', '2021-04-15 09:28:06', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"slider\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Sliders Option', 'sliders-option', 'publish', 'closed', 'closed', '', 'group_607806d840bda', '', '', '2021-04-15 19:56:03', '2021-04-15 19:56:03', '', 0, 'http://localhost/dev/?post_type=acf-field-group&#038;p=83', 0, 'acf-field-group', '', 0),
(87, 1, '2021-04-15 18:59:27', '2021-04-15 18:59:27', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:35:\"you can change the background image\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Banner Background Image', 'banner_background_img', 'publish', 'closed', 'closed', '', 'field_60788ca14747a', '', '', '2021-04-15 18:59:27', '2021-04-15 18:59:27', '', 83, 'http://localhost/dev/?post_type=acf-field&p=87', 0, 'acf-field', '', 0),
(91, 1, '2021-04-15 19:04:26', '2021-04-15 19:04:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:23:\"Creating a unique look.\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Banner Heading 1', 'banner_heading_1', 'publish', 'closed', 'closed', '', 'field_60788d6493aa8', '', '', '2021-04-15 19:04:26', '2021-04-15 19:04:26', '', 83, 'http://localhost/dev/?post_type=acf-field&p=91', 1, 'acf-field', '', 0),
(92, 1, '2021-04-15 19:04:26', '2021-04-15 19:04:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:18:\"Never been easier.\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Banner Heading 2', 'banner_heading_2', 'publish', 'closed', 'closed', '', 'field_60788d9d93aa9', '', '', '2021-04-15 19:04:26', '2021-04-15 19:04:26', '', 83, 'http://localhost/dev/?post_type=acf-field&p=92', 2, 'acf-field', '', 0),
(93, 1, '2021-04-15 19:04:26', '2021-04-15 19:04:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:12:\"see features\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Banner Button text 1', 'banner_button_text_1', 'publish', 'closed', 'closed', '', 'field_60788db893aaa', '', '', '2021-04-15 19:04:26', '2021-04-15 19:04:26', '', 83, 'http://localhost/dev/?post_type=acf-field&p=93', 3, 'acf-field', '', 0),
(94, 1, '2021-04-15 19:04:27', '2021-04-15 19:04:27', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:1:\"#\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Banner Button URL 1', 'banner_button_url_1', 'publish', 'closed', 'closed', '', 'field_60788e0493aac', '', '', '2021-04-15 19:04:27', '2021-04-15 19:04:27', '', 83, 'http://localhost/dev/?post_type=acf-field&p=94', 4, 'acf-field', '', 0),
(95, 1, '2021-04-15 19:04:27', '2021-04-15 19:04:27', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:12:\"purchase now\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Banner Button text 2', 'banner_button_text_2', 'publish', 'closed', 'closed', '', 'field_60788ded93aab', '', '', '2021-04-15 19:04:27', '2021-04-15 19:04:27', '', 83, 'http://localhost/dev/?post_type=acf-field&p=95', 5, 'acf-field', '', 0),
(96, 1, '2021-04-15 19:04:27', '2021-04-15 19:04:27', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:1:\"#\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Banner Button URL 2', 'banner_button_url_2', 'publish', 'closed', 'closed', '', 'field_60788e2693aad', '', '', '2021-04-15 19:04:27', '2021-04-15 19:04:27', '', 83, 'http://localhost/dev/?post_type=acf-field&p=96', 6, 'acf-field', '', 0),
(98, 1, '2021-04-15 19:49:37', '2021-04-15 19:49:37', '', 'speaker-stage-conference-room_38810-2884', '', 'inherit', 'open', 'closed', '', 'speaker-stage-conference-room_38810-2884', '', '', '2021-04-17 19:34:11', '2021-04-17 19:34:11', '', 170, 'http://localhost/dev/wp-content/uploads/2021/04/speaker-stage-conference-room_38810-2884.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2021-04-15 19:49:39', '2021-04-15 19:49:39', '', 'istockphoto-1049658692-612x612', 'CONTACT US, businessman using mobile smartphone with the icon. Contact us connection concept with copy space.', 'inherit', 'open', 'closed', '', 'istockphoto-1049658692-612x612', '', '', '2021-04-15 21:00:15', '2021-04-15 21:00:15', '', 103, 'http://localhost/dev/wp-content/uploads/2021/04/istockphoto-1049658692-612x612-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2021-04-15 19:49:40', '2021-04-15 19:49:40', '', 'speaker-stage-giving-talk-business-meeting_38810-6305', '', 'inherit', 'open', 'closed', '', 'speaker-stage-giving-talk-business-meeting_38810-6305', '', '', '2021-04-15 20:00:13', '2021-04-15 20:00:13', '', 101, 'http://localhost/dev/wp-content/uploads/2021/04/speaker-stage-giving-talk-business-meeting_38810-6305.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2021-04-15 20:00:12', '2021-04-15 20:00:12', '', 'slide 1', '', 'publish', 'closed', 'closed', '', 'slide-1', '', '', '2021-07-02 09:48:40', '2021-07-02 09:48:40', '', 0, 'http://localhost/dev/?post_type=slider&#038;p=101', 0, 'slider', '', 0),
(103, 1, '2021-04-15 21:00:15', '2021-04-15 21:00:15', '', 'slider 2', '', 'publish', 'closed', 'closed', '', 'slider-2', '', '', '2021-04-17 20:22:30', '2021-04-17 20:22:30', '', 0, 'http://localhost/dev/?post_type=slider&#038;p=103', 0, 'slider', '', 0),
(105, 1, '2021-04-16 08:32:09', '2021-04-16 08:32:09', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"template-home.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";}', 'Home option', 'home-option', 'publish', 'closed', 'closed', '', 'group_60794b7e29a54', '', '', '2021-04-21 10:39:59', '2021-04-21 10:39:59', '', 0, 'http://localhost/dev/?post_type=acf-field-group&#038;p=105', 0, 'acf-field-group', '', 0),
(106, 1, '2021-04-16 08:33:30', '2021-04-16 08:33:30', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Steal of the month', '', 'publish', 'closed', 'closed', '', 'field_60794bb6929a7', '', '', '2021-04-17 18:14:22', '2021-04-17 18:14:22', '', 105, 'http://localhost/dev/?post_type=acf-field&#038;p=106', 0, 'acf-field', '', 0),
(107, 1, '2021-04-16 08:38:26', '2021-04-16 08:38:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:18:\"Steal of the month\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Steal Title', 'steal_title', 'publish', 'closed', 'closed', '', 'field_60794c32162fe', '', '', '2021-04-16 08:38:26', '2021-04-16 08:38:26', '', 105, 'http://localhost/dev/?post_type=acf-field&p=107', 1, 'acf-field', '', 0),
(108, 1, '2021-04-16 08:38:26', '2021-04-16 08:38:26', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Letest Works', '', 'publish', 'closed', 'closed', '', 'field_60794cc4162ff', '', '', '2021-04-17 18:14:37', '2021-04-17 18:14:37', '', 105, 'http://localhost/dev/?post_type=acf-field&#038;p=108', 5, 'acf-field', '', 0),
(109, 1, '2021-04-16 08:38:26', '2021-04-16 08:38:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:12:\"Letest Works\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Letest Works Title', 'work_title', 'publish', 'closed', 'closed', '', 'field_60794cd616300', '', '', '2021-04-16 20:37:37', '2021-04-16 20:37:37', '', 105, 'http://localhost/dev/?post_type=acf-field&#038;p=109', 6, 'acf-field', '', 0),
(110, 1, '2021-04-16 08:40:49', '2021-04-16 08:40:49', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:188:\"That we can tuck in our children at night and know that they are fed and clothed and safe from harm. Our trials and triumphs became at once unique and universal. Black and more than black.\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Steal Description', 'steal_desc', 'publish', 'closed', 'closed', '', 'field_60794d2ba1b0f', '', '', '2021-04-16 08:41:43', '2021-04-16 08:41:43', '', 105, 'http://localhost/dev/?post_type=acf-field&#038;p=110', 2, 'acf-field', '', 0),
(111, 1, '2021-04-16 08:40:50', '2021-04-16 08:40:50', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:12:\"purchase now\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Steal Button Text', 'steal_btn_text', 'publish', 'closed', 'closed', '', 'field_60794d4fa1b10', '', '', '2021-04-16 08:40:50', '2021-04-16 08:40:50', '', 105, 'http://localhost/dev/?post_type=acf-field&p=111', 3, 'acf-field', '', 0),
(112, 1, '2021-04-16 08:40:50', '2021-04-16 08:40:50', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:1:\"#\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Steal Button URL', 'steal_btn_url', 'publish', 'closed', 'closed', '', 'field_60794d76a1b11', '', '', '2021-04-16 08:40:50', '2021-04-16 08:40:50', '', 105, 'http://localhost/dev/?post_type=acf-field&p=112', 4, 'acf-field', '', 0),
(113, 1, '2021-04-16 08:48:34', '2021-04-16 08:48:34', '', 'Home', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2021-04-16 08:48:34', '2021-04-16 08:48:34', '', 72, 'http://localhost/dev/?p=113', 0, 'revision', '', 0),
(114, 1, '2021-04-16 20:37:37', '2021-04-16 20:37:37', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:188:\"That we can tuck in our children at night and know that they are fed and clothed and safe from harm. Our trials and triumphs became at once unique and universal. Black and more than black.\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Letest Work Description', 'work_desc', 'publish', 'closed', 'closed', '', 'field_6079f555511b8', '', '', '2021-04-16 20:37:37', '2021-04-16 20:37:37', '', 105, 'http://localhost/dev/?post_type=acf-field&p=114', 7, 'acf-field', '', 0),
(115, 1, '2021-04-16 20:39:00', '2021-04-16 20:39:00', '', 'Home', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2021-04-16 20:39:00', '2021-04-16 20:39:00', '', 72, 'http://localhost/dev/?p=115', 0, 'revision', '', 0),
(120, 1, '2021-04-17 13:28:01', '2021-04-17 13:28:01', 'This is the work description', 'work 1', '', 'publish', 'closed', 'closed', '', 'work-1', '', '', '2021-04-25 19:14:03', '2021-04-25 19:14:03', '', 0, 'http://localhost/dev/?post_type=works&#038;p=120', 0, 'works', '', 0),
(121, 1, '2021-04-17 13:33:48', '2021-04-17 13:33:48', 'This is the work 2 title', 'Work 2', '', 'publish', 'closed', 'closed', '', 'work-2', '', '', '2021-04-25 19:10:42', '2021-04-25 19:10:42', '', 0, 'http://localhost/dev/?post_type=works&#038;p=121', 0, 'works', '', 0),
(122, 1, '2021-04-17 13:45:00', '2021-04-17 13:45:00', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"works\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Works Option', 'works-option', 'publish', 'closed', 'closed', '', 'group_607ae64c63195', '', '', '2021-04-25 19:13:53', '2021-04-25 19:13:53', '', 0, 'http://localhost/dev/?post_type=acf-field-group&#038;p=122', 0, 'acf-field-group', '', 0),
(123, 1, '2021-04-17 13:45:31', '2021-04-17 13:45:31', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Single page slider images', 'single_page_slider_images', 'publish', 'closed', 'closed', '', 'field_607ae65f72e12', '', '', '2021-04-17 13:45:31', '2021-04-17 13:45:31', '', 122, 'http://localhost/dev/?post_type=acf-field&p=123', 0, 'acf-field', '', 0),
(124, 1, '2021-04-17 13:59:28', '2021-04-17 13:59:28', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'slider images', 'slider_single_img', 'publish', 'closed', 'closed', '', 'field_607ae67e12898', '', '', '2021-04-17 14:03:54', '2021-04-17 14:03:54', '', 122, 'http://localhost/dev/?post_type=acf-field&#038;p=124', 1, 'acf-field', '', 0),
(125, 1, '2021-04-17 13:59:29', '2021-04-17 13:59:29', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Work Feature', 'work_feature', 'publish', 'closed', 'closed', '', 'field_607ae6a512899', '', '', '2021-04-17 13:59:29', '2021-04-17 13:59:29', '', 122, 'http://localhost/dev/?post_type=acf-field&p=125', 2, 'acf-field', '', 0),
(126, 1, '2021-04-17 13:59:29', '2021-04-17 13:59:29', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Work Feature', 'work_feature', 'publish', 'closed', 'closed', '', 'field_607ae7a61289a', '', '', '2021-04-17 14:05:05', '2021-04-17 14:05:05', '', 122, 'http://localhost/dev/?post_type=acf-field&#038;p=126', 3, 'acf-field', '', 0),
(127, 1, '2021-04-17 14:00:28', '2021-04-17 14:00:28', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'PopUp Image', 'popup_image', 'publish', 'closed', 'closed', '', 'field_607ae9cabe83f', '', '', '2021-04-17 14:00:28', '2021-04-17 14:00:28', '', 122, 'http://localhost/dev/?post_type=acf-field&p=127', 4, 'acf-field', '', 0),
(128, 1, '2021-04-17 14:00:29', '2021-04-17 14:00:29', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'PopUp Image', 'popup_image', 'publish', 'closed', 'closed', '', 'field_607ae9dcbe840', '', '', '2021-04-17 14:00:29', '2021-04-17 14:00:29', '', 122, 'http://localhost/dev/?post_type=acf-field&p=128', 5, 'acf-field', '', 0),
(129, 1, '2021-04-17 14:03:54', '2021-04-17 14:03:54', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Sinlgle slider image', 'sinlgle_slider_image', 'publish', 'closed', 'closed', '', 'field_607aeaa1170a4', '', '', '2021-04-17 14:03:54', '2021-04-17 14:03:54', '', 124, 'http://localhost/dev/?post_type=acf-field&p=129', 0, 'acf-field', '', 0),
(130, 1, '2021-04-17 14:05:05', '2021-04-17 14:05:05', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:24:\"Brownie ice cream carrot\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Work Feature Item', 'work_feature_item', 'publish', 'closed', 'closed', '', 'field_607aeaf7f52df', '', '', '2021-04-25 19:13:53', '2021-04-25 19:13:53', '', 126, 'http://localhost/dev/?post_type=acf-field&#038;p=130', 0, 'acf-field', '', 0),
(131, 1, '2021-04-17 17:57:20', '2021-04-17 17:57:20', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Amber is the most metrolly', '', 'publish', 'closed', 'closed', '', 'field_607b20e2f5016', '', '', '2021-04-17 18:14:37', '2021-04-17 18:14:37', '', 105, 'http://shakil.coderit.fun/dev/?post_type=acf-field&#038;p=131', 8, 'acf-field', '', 0),
(132, 1, '2021-04-17 17:57:20', '2021-04-17 17:57:20', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:56:\"Amber is the most metrolly WordPress theme ever created.\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Amber is the most title', 'amber_title_hero', 'publish', 'closed', 'closed', '', 'field_607b2100f5017', '', '', '2021-04-17 18:09:51', '2021-04-17 18:09:51', '', 105, 'http://shakil.coderit.fun/dev/?post_type=acf-field&#038;p=132', 9, 'acf-field', '', 0),
(133, 1, '2021-04-17 17:57:20', '2021-04-17 17:57:20', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:12:\"purchase now\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Amber is the most button text', 'amber_is_the_most_btn_text', 'publish', 'closed', 'closed', '', 'field_607b2129f5018', '', '', '2021-04-17 17:57:20', '2021-04-17 17:57:20', '', 105, 'http://shakil.coderit.fun/dev/?post_type=acf-field&p=133', 10, 'acf-field', '', 0),
(134, 1, '2021-04-17 17:57:20', '2021-04-17 17:57:20', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:1:\"#\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Amber is the most button URL', 'amber_is_the_most_btn_url', 'publish', 'closed', 'closed', '', 'field_607b2159f5019', '', '', '2021-04-17 17:57:20', '2021-04-17 17:57:20', '', 105, 'http://shakil.coderit.fun/dev/?post_type=acf-field&p=134', 11, 'acf-field', '', 0),
(135, 1, '2021-04-17 17:57:49', '2021-04-17 17:57:49', '', 'Home', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2021-04-17 17:57:49', '2021-04-17 17:57:49', '', 72, 'http://shakil.coderit.fun/dev/?p=135', 0, 'revision', '', 0),
(136, 1, '2021-04-17 18:00:46', '2021-04-17 18:00:46', '', 'Home', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2021-04-17 18:00:46', '2021-04-17 18:00:46', '', 72, 'http://shakil.coderit.fun/dev/?p=136', 0, 'revision', '', 0),
(137, 1, '2021-04-17 18:03:27', '2021-04-17 18:03:27', '', 'Home', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2021-04-17 18:03:27', '2021-04-17 18:03:27', '', 72, 'http://shakil.coderit.fun/dev/?p=137', 0, 'revision', '', 0),
(138, 1, '2021-04-17 18:08:14', '2021-04-17 18:08:14', '', 'Home', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2021-04-17 18:08:14', '2021-04-17 18:08:14', '', 72, 'http://shakil.coderit.fun/dev/?p=138', 0, 'revision', '', 0),
(139, 1, '2021-04-17 18:13:42', '2021-04-17 18:13:42', '', 'Home', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2021-04-17 18:13:42', '2021-04-17 18:13:42', '', 72, 'http://shakil.coderit.fun/dev/?p=139', 0, 'revision', '', 0),
(140, 1, '2021-04-17 18:15:56', '2021-04-17 18:15:56', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Superb Features', 'superb_features', 'publish', 'closed', 'closed', '', 'field_607b25ad9e10f', '', '', '2021-04-17 18:15:56', '2021-04-17 18:15:56', '', 105, 'http://shakil.coderit.fun/dev/?post_type=acf-field&p=140', 12, 'acf-field', '', 0),
(141, 1, '2021-04-17 18:15:56', '2021-04-17 18:15:56', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:15:\"Superb Features\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Superb Features Title', 'superb_features', 'publish', 'closed', 'closed', '', 'field_607b25c89e110', '', '', '2021-04-17 18:16:20', '2021-04-17 18:16:20', '', 105, 'http://shakil.coderit.fun/dev/?post_type=acf-field&#038;p=141', 13, 'acf-field', '', 0),
(142, 1, '2021-04-17 18:17:00', '2021-04-17 18:17:00', '', 'Home', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2021-04-17 18:17:00', '2021-04-17 18:17:00', '', 72, 'http://shakil.coderit.fun/dev/?p=142', 0, 'revision', '', 0),
(145, 1, '2021-04-17 18:23:28', '2021-04-17 18:23:28', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:15:\"superb_features\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Superb Features', 'superb-features', 'publish', 'closed', 'closed', '', 'group_607b2781451a0', '', '', '2021-04-17 18:26:12', '2021-04-17 18:26:12', '', 0, 'http://shakil.coderit.fun/dev/?post_type=acf-field-group&#038;p=145', 0, 'acf-field-group', '', 0),
(146, 1, '2021-04-17 18:24:21', '2021-04-17 18:24:21', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Superb Features', 'superb_features', 'publish', 'closed', 'closed', '', 'field_607b27a3245a1', '', '', '2021-04-17 18:24:21', '2021-04-17 18:24:21', '', 145, 'http://shakil.coderit.fun/dev/?post_type=acf-field&p=146', 0, 'acf-field', '', 0),
(147, 1, '2021-04-17 18:26:12', '2021-04-17 18:26:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:25:\"Brilliant creative design\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Superb Features Title', 'superb_features_title', 'publish', 'closed', 'closed', '', 'field_607b27d639a77', '', '', '2021-04-17 18:26:12', '2021-04-17 18:26:12', '', 145, 'http://shakil.coderit.fun/dev/?post_type=acf-field&p=147', 1, 'acf-field', '', 0),
(148, 1, '2021-04-17 18:26:12', '2021-04-17 18:26:12', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:195:\"Ah, well! It means much the same thing, said the Duchess, digging her sharp little chin into Alice\'s shoulder as she added, and the moral of that is m-dash. Take care of the sense and the sounds.\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Superb Features Descriptions', 'superb_features_title_desc', 'publish', 'closed', 'closed', '', 'field_607b281a39a78', '', '', '2021-04-17 18:26:12', '2021-04-17 18:26:12', '', 145, 'http://shakil.coderit.fun/dev/?post_type=acf-field&p=148', 2, 'acf-field', '', 0),
(149, 1, '2021-04-17 18:26:39', '2021-04-17 18:26:39', '', 'Feature 1', '', 'publish', 'closed', 'closed', '', 'feature-1', '', '', '2021-04-17 18:26:39', '2021-04-17 18:26:39', '', 0, 'http://shakil.coderit.fun/dev/?post_type=superb_features&#038;p=149', 0, 'superb_features', '', 0),
(150, 1, '2021-04-17 18:32:18', '2021-04-17 18:32:18', '', 'Feature 2', '', 'publish', 'closed', 'closed', '', 'feature-2', '', '', '2021-04-17 18:32:18', '2021-04-17 18:32:18', '', 0, 'http://shakil.coderit.fun/dev/?post_type=superb_features&#038;p=150', 0, 'superb_features', '', 0),
(151, 1, '2021-04-17 18:32:49', '2021-04-17 18:32:49', '', 'feature 3', '', 'publish', 'closed', 'closed', '', 'feature-3', '', '', '2021-04-17 18:32:49', '2021-04-17 18:32:49', '', 0, 'http://shakil.coderit.fun/dev/?post_type=superb_features&#038;p=151', 0, 'superb_features', '', 0),
(152, 1, '2021-04-17 18:33:10', '2021-04-17 18:33:10', '', 'feature 4', '', 'publish', 'closed', 'closed', '', 'feature-4', '', '', '2021-04-17 18:33:10', '2021-04-17 18:33:10', '', 0, 'http://shakil.coderit.fun/dev/?post_type=superb_features&#038;p=152', 0, 'superb_features', '', 0),
(153, 1, '2021-04-17 18:52:47', '2021-04-17 18:52:47', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"testimonials\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";}', 'Testimonials', 'testimonials', 'publish', 'closed', 'closed', '', 'group_607b2e69a2cc9', '', '', '2021-04-19 12:00:42', '2021-04-19 12:00:42', '', 0, 'http://shakil.coderit.fun/dev/?post_type=acf-field-group&#038;p=153', 0, 'acf-field-group', '', 0),
(154, 1, '2021-04-17 18:53:23', '2021-04-17 18:53:23', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Testimonials', 'testimonials_', 'publish', 'closed', 'closed', '', 'field_607b2e824fb7b', '', '', '2021-04-17 18:53:23', '2021-04-17 18:53:23', '', 153, 'http://shakil.coderit.fun/dev/?post_type=acf-field&p=154', 0, 'acf-field', '', 0),
(155, 1, '2021-04-17 18:54:36', '2021-04-17 18:54:36', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:140:\"Thereby, the whale commanders are enabled to recognize each other upon the ocean, even at considerable distances and with no small facility.\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Testimonials Description', 'testimonials_desc', 'publish', 'closed', 'closed', '', 'field_607b2ea63ddfc', '', '', '2021-04-17 18:54:36', '2021-04-17 18:54:36', '', 153, 'http://shakil.coderit.fun/dev/?post_type=acf-field&p=155', 1, 'acf-field', '', 0),
(156, 1, '2021-04-17 18:54:36', '2021-04-17 18:54:36', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:30:\"— Moby-Dick, Herman Melville\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Testimonials name', 'testimonials_name', 'publish', 'closed', 'closed', '', 'field_607b2ed13ddfd', '', '', '2021-04-17 18:55:15', '2021-04-17 18:55:15', '', 153, 'http://shakil.coderit.fun/dev/?post_type=acf-field&#038;p=156', 2, 'acf-field', '', 0),
(157, 1, '2021-04-19 12:01:29', '2021-04-19 12:01:29', '', 'test 1', '', 'publish', 'closed', 'closed', '', 'test-1-2', '', '', '2021-04-21 10:55:03', '2021-04-21 10:55:03', '', 0, 'http://shakil.coderit.fun/dev/?post_type=testimonials&#038;p=157', 0, 'testimonials', '', 0),
(158, 1, '2021-04-17 18:55:41', '2021-04-17 18:55:41', '', 'Test 1', '', 'publish', 'closed', 'closed', '', 'test-1', '', '', '2021-04-19 12:01:11', '2021-04-19 12:01:11', '', 0, 'http://shakil.coderit.fun/dev/?post_type=testimonials&#038;p=158', 0, 'testimonials', '', 0),
(159, 1, '2021-04-17 19:06:01', '2021-04-17 19:06:01', '', 'Feature 5', '', 'publish', 'closed', 'closed', '', 'feature-5', '', '', '2021-04-17 19:06:01', '2021-04-17 19:06:01', '', 0, 'http://shakil.coderit.fun/dev/?post_type=superb_features&#038;p=159', 0, 'superb_features', '', 0),
(160, 1, '2021-04-17 19:20:59', '2021-04-17 19:20:59', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"latest_blog_posts\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";}', 'Latest Blog', 'latest-blog', 'publish', 'closed', 'closed', '', 'group_607b35049c7bd', '', '', '2021-04-17 19:27:40', '2021-04-17 19:27:40', '', 0, 'http://shakil.coderit.fun/dev/?post_type=acf-field-group&#038;p=160', 0, 'acf-field-group', '', 0),
(161, 1, '2021-04-17 19:22:16', '2021-04-17 19:22:16', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Latest blog posts', '_latest_blog_posts', 'publish', 'closed', 'closed', '', 'field_607b353f88235', '', '', '2021-04-17 19:22:16', '2021-04-17 19:22:16', '', 105, 'http://shakil.coderit.fun/dev/?post_type=acf-field&p=161', 14, 'acf-field', '', 0),
(162, 1, '2021-04-17 19:22:16', '2021-04-17 19:22:16', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:17:\"Latest blog posts\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Latest blog posts', 'latest_blog_posts', 'publish', 'closed', 'closed', '', 'field_607b354f88236', '', '', '2021-04-17 19:22:16', '2021-04-17 19:22:16', '', 105, 'http://shakil.coderit.fun/dev/?post_type=acf-field&p=162', 15, 'acf-field', '', 0),
(163, 1, '2021-04-17 19:23:18', '2021-04-17 19:23:18', '', 'Home', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2021-04-17 19:23:18', '2021-04-17 19:23:18', '', 72, 'http://shakil.coderit.fun/dev/?p=163', 0, 'revision', '', 0),
(164, 1, '2021-04-17 19:27:20', '2021-04-17 19:27:20', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Letest Blog', '', 'publish', 'closed', 'closed', '', 'field_607b36332532c', '', '', '2021-04-17 19:27:40', '2021-04-17 19:27:40', '', 160, 'http://shakil.coderit.fun/dev/?post_type=acf-field&#038;p=164', 0, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(165, 1, '2021-04-17 19:27:20', '2021-04-17 19:27:20', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Letest Blog image', 'letest_blog_image', 'publish', 'closed', 'closed', '', 'field_607b36452532d', '', '', '2021-04-17 19:27:20', '2021-04-17 19:27:20', '', 160, 'http://shakil.coderit.fun/dev/?post_type=acf-field&p=165', 1, 'acf-field', '', 0),
(166, 1, '2021-04-17 19:27:20', '2021-04-17 19:27:20', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:35:\"Runway to Red Carpet: Awards Season\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Letest Blog Title', 'letest_blog_title', 'publish', 'closed', 'closed', '', 'field_607b36612532e', '', '', '2021-04-17 19:27:20', '2021-04-17 19:27:20', '', 160, 'http://shakil.coderit.fun/dev/?post_type=acf-field&p=166', 2, 'acf-field', '', 0),
(167, 1, '2021-04-17 19:27:20', '2021-04-17 19:27:20', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:131:\"Her father worked on oil rigs and farms that through most of the Depression. But it is a new story that has seared into my genetic.\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Letest Blog Description', 'letest_blog_desc', 'publish', 'closed', 'closed', '', 'field_607b367b2532f', '', '', '2021-04-17 19:27:20', '2021-04-17 19:27:20', '', 160, 'http://shakil.coderit.fun/dev/?post_type=acf-field&p=167', 3, 'acf-field', '', 0),
(169, 1, '2021-04-17 19:28:02', '2021-04-17 19:28:02', '', '', '', 'publish', 'closed', 'closed', '', '169', '', '', '2021-04-17 19:31:55', '2021-04-17 19:31:55', '', 0, 'http://shakil.coderit.fun/dev/?post_type=latest_blog_posts&#038;p=169', 0, 'latest_blog_posts', '', 0),
(170, 1, '2021-04-17 19:34:11', '2021-04-17 19:34:11', '', 'post 2', '', 'publish', 'closed', 'closed', '', 'post-2', '', '', '2021-04-17 19:34:11', '2021-04-17 19:34:11', '', 0, 'http://shakil.coderit.fun/dev/?post_type=latest_blog_posts&#038;p=170', 0, 'latest_blog_posts', '', 0),
(171, 1, '2021-04-17 19:34:53', '2021-04-17 19:34:53', '', 'Post 3', '', 'publish', 'closed', 'closed', '', 'post-3', '', '', '2021-04-17 19:34:53', '2021-04-17 19:34:53', '', 0, 'http://shakil.coderit.fun/dev/?post_type=latest_blog_posts&#038;p=171', 0, 'latest_blog_posts', '', 0),
(172, 1, '2021-04-17 19:42:05', '2021-04-17 19:42:05', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Company Expirience', 'company_expirience', 'publish', 'closed', 'closed', '', 'field_607b39ed174c5', '', '', '2021-04-17 19:42:05', '2021-04-17 19:42:05', '', 105, 'http://shakil.coderit.fun/dev/?post_type=acf-field&p=172', 16, 'acf-field', '', 0),
(173, 1, '2021-04-17 19:42:05', '2021-04-17 19:42:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:18:\"Company Expirience\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Company Expirience', 'company_expirience', 'publish', 'closed', 'closed', '', 'field_607b39fd174c6', '', '', '2021-04-17 19:42:05', '2021-04-17 19:42:05', '', 105, 'http://shakil.coderit.fun/dev/?post_type=acf-field&p=173', 17, 'acf-field', '', 0),
(174, 1, '2021-04-17 19:42:27', '2021-04-17 19:42:27', '', 'Home', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2021-04-17 19:42:27', '2021-04-17 19:42:27', '', 72, 'http://shakil.coderit.fun/dev/?p=174', 0, 'revision', '', 0),
(175, 1, '2021-04-17 19:51:25', '2021-04-17 19:51:25', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:24:\"years of web development\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'First Expraiance Text', 'first_expraiance_text', 'publish', 'closed', 'closed', '', 'field_607b3b55f4e6b', '', '', '2021-04-17 19:51:25', '2021-04-17 19:51:25', '', 105, 'http://shakil.coderit.fun/dev/?post_type=acf-field&p=175', 18, 'acf-field', '', 0),
(176, 1, '2021-04-17 19:51:25', '2021-04-17 19:51:25', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:31:\"results of the last winter year\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Second Expraiance Text', 'second_expraiance_text', 'publish', 'closed', 'closed', '', 'field_607b3bd2f4e6c', '', '', '2021-04-17 19:53:57', '2021-04-17 19:53:57', '', 105, 'http://shakil.coderit.fun/dev/?post_type=acf-field&#038;p=176', 20, 'acf-field', '', 0),
(177, 1, '2021-04-17 19:51:25', '2021-04-17 19:51:25', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:28:\"euros of the military budget\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Third Expraiance Text', 'third_expraiance_text', 'publish', 'closed', 'closed', '', 'field_607b3c01f4e6d', '', '', '2021-04-17 19:53:57', '2021-04-17 19:53:57', '', 105, 'http://shakil.coderit.fun/dev/?post_type=acf-field&#038;p=177', 22, 'acf-field', '', 0),
(178, 1, '2021-04-17 19:53:25', '2021-04-17 19:53:25', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:55;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'First Expraiance Value', 'first_expraiance_value', 'publish', 'closed', 'closed', '', 'field_607b3c48ab5e0', '', '', '2021-04-17 19:53:57', '2021-04-17 19:53:57', '', 105, 'http://shakil.coderit.fun/dev/?post_type=acf-field&#038;p=178', 19, 'acf-field', '', 0),
(179, 1, '2021-04-17 19:53:25', '2021-04-17 19:53:25', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:30;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Second Expraiance Value', 'secod_expraiance_value_copy', 'publish', 'closed', 'closed', '', 'field_607b3c5fab5e1', '', '', '2021-04-17 19:53:57', '2021-04-17 19:53:57', '', 105, 'http://shakil.coderit.fun/dev/?post_type=acf-field&#038;p=179', 21, 'acf-field', '', 0),
(180, 1, '2021-04-17 19:53:25', '2021-04-17 19:53:25', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:70;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Third Expraiance Value', 'third_expraiance_value_copy2', 'publish', 'closed', 'closed', '', 'field_607b3c76ab5e2', '', '', '2021-04-17 19:53:25', '2021-04-17 19:53:25', '', 105, 'http://shakil.coderit.fun/dev/?post_type=acf-field&p=180', 23, 'acf-field', '', 0),
(181, 1, '2021-04-17 19:54:26', '2021-04-17 19:54:26', '', 'Home', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2021-04-17 19:54:26', '2021-04-17 19:54:26', '', 72, 'http://shakil.coderit.fun/dev/?p=181', 0, 'revision', '', 0),
(182, 1, '2021-04-17 19:56:40', '2021-04-17 19:56:40', '', 'Home', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2021-04-17 19:56:40', '2021-04-17 19:56:40', '', 72, 'http://shakil.coderit.fun/dev/?p=182', 0, 'revision', '', 0),
(183, 1, '2021-04-17 20:02:03', '2021-04-17 20:02:03', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"our_team\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";}', 'Our Team', 'our-team', 'publish', 'closed', 'closed', '', 'group_607b3eb100f46', '', '', '2021-04-17 20:06:32', '2021-04-17 20:06:32', '', 0, 'http://shakil.coderit.fun/dev/?post_type=acf-field-group&#038;p=183', 0, 'acf-field-group', '', 0),
(184, 1, '2021-04-17 20:02:27', '2021-04-17 20:02:27', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Our Team', 'our_team', 'publish', 'closed', 'closed', '', 'field_607b3ec860505', '', '', '2021-04-17 20:02:27', '2021-04-17 20:02:27', '', 183, 'http://shakil.coderit.fun/dev/?post_type=acf-field&p=184', 0, 'acf-field', '', 0),
(185, 1, '2021-04-17 20:06:32', '2021-04-17 20:06:32', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Our Team Image', 'our_team_image', 'publish', 'closed', 'closed', '', 'field_607b3f06fe412', '', '', '2021-04-17 20:06:32', '2021-04-17 20:06:32', '', 183, 'http://shakil.coderit.fun/dev/?post_type=acf-field&p=185', 1, 'acf-field', '', 0),
(186, 1, '2021-04-17 20:06:32', '2021-04-17 20:06:32', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:13:\"Manny Delgado\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Our Team Name', 'our_team_name', 'publish', 'closed', 'closed', '', 'field_607b3f32fe413', '', '', '2021-04-17 20:06:32', '2021-04-17 20:06:32', '', 183, 'http://shakil.coderit.fun/dev/?post_type=acf-field&p=186', 2, 'acf-field', '', 0),
(187, 1, '2021-04-17 20:06:32', '2021-04-17 20:06:32', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:13:\"ecology lawer\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Our Team Designation', 'our_team_desig', 'publish', 'closed', 'closed', '', 'field_607b3f52fe414', '', '', '2021-04-17 20:06:32', '2021-04-17 20:06:32', '', 183, 'http://shakil.coderit.fun/dev/?post_type=acf-field&p=187', 3, 'acf-field', '', 0),
(188, 1, '2021-04-17 20:06:32', '2021-04-17 20:06:32', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:74:\"Be who you are and say what you feel, because those who mind don\'t matter.\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Our Team Description', 'our_team_desc', 'publish', 'closed', 'closed', '', 'field_607b3f72fe415', '', '', '2021-04-17 20:06:32', '2021-04-17 20:06:32', '', 183, 'http://shakil.coderit.fun/dev/?post_type=acf-field&p=188', 4, 'acf-field', '', 0),
(189, 1, '2021-04-17 20:06:32', '2021-04-17 20:06:32', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:7:\"Profile\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Our Team Button text', 'our_team_btn_text', 'publish', 'closed', 'closed', '', 'field_607b3f99fe416', '', '', '2021-04-17 20:06:32', '2021-04-17 20:06:32', '', 183, 'http://shakil.coderit.fun/dev/?post_type=acf-field&p=189', 5, 'acf-field', '', 0),
(190, 1, '2021-04-17 20:06:32', '2021-04-17 20:06:32', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:1:\"#\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Our Team Button URL', 'our_team_btn_url', 'publish', 'closed', 'closed', '', 'field_607b3fb5fe417', '', '', '2021-04-17 20:06:32', '2021-04-17 20:06:32', '', 183, 'http://shakil.coderit.fun/dev/?post_type=acf-field&p=190', 6, 'acf-field', '', 0),
(191, 1, '2021-04-17 20:13:41', '2021-04-17 20:13:41', '', 'team 1', '', 'publish', 'closed', 'closed', '', '191', '', '', '2021-04-17 20:18:19', '2021-04-17 20:18:19', '', 0, 'http://shakil.coderit.fun/dev/?post_type=our_team&#038;p=191', 0, 'our_team', '', 0),
(192, 1, '2021-04-17 20:08:15', '2021-04-17 20:08:15', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Our Team', 'our_team_', 'publish', 'closed', 'closed', '', 'field_607b400397ace', '', '', '2021-04-17 20:08:15', '2021-04-17 20:08:15', '', 105, 'http://shakil.coderit.fun/dev/?post_type=acf-field&p=192', 24, 'acf-field', '', 0),
(193, 1, '2021-04-17 20:08:15', '2021-04-17 20:08:15', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:8:\"Our Team\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Our Team', 'our_team', 'publish', 'closed', 'closed', '', 'field_607b401597acf', '', '', '2021-04-17 20:08:15', '2021-04-17 20:08:15', '', 105, 'http://shakil.coderit.fun/dev/?post_type=acf-field&p=193', 25, 'acf-field', '', 0),
(194, 1, '2021-04-17 20:08:37', '2021-04-17 20:08:37', '', 'Home', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2021-04-17 20:08:37', '2021-04-17 20:08:37', '', 72, 'http://shakil.coderit.fun/dev/?p=194', 0, 'revision', '', 0),
(195, 1, '2021-04-17 20:15:08', '2021-04-17 20:15:08', '', 'Team 2', '', 'publish', 'closed', 'closed', '', 'team-2', '', '', '2021-04-17 20:17:34', '2021-04-17 20:17:34', '', 0, 'http://shakil.coderit.fun/dev/?post_type=our_team&#038;p=195', 0, 'our_team', '', 0),
(196, 1, '2021-04-17 20:16:37', '2021-04-17 20:16:37', '', 'Team 3', '', 'publish', 'closed', 'closed', '', 'team-3', '', '', '2021-04-17 20:16:37', '2021-04-17 20:16:37', '', 0, 'http://shakil.coderit.fun/dev/?post_type=our_team&#038;p=196', 0, 'our_team', '', 0),
(197, 1, '2021-04-17 20:15:55', '2021-04-17 20:15:55', '', 'IMG20210311181637(1)', '', 'inherit', 'open', 'closed', '', 'img202103111816371', '', '', '2021-04-17 20:15:55', '2021-04-17 20:15:55', '', 196, 'http://shakil.coderit.fun/dev/wp-content/uploads/2021/04/IMG202103111816371.jpg', 0, 'attachment', 'image/jpeg', 0),
(198, 1, '2021-04-17 20:16:01', '2021-04-17 20:16:01', '', 'womenspeaker-1200x604', '', 'inherit', 'open', 'closed', '', 'womenspeaker-1200x604', '', '', '2021-04-17 20:16:01', '2021-04-17 20:16:01', '', 196, 'http://shakil.coderit.fun/dev/wp-content/uploads/2021/04/womenspeaker-1200x604-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(199, 1, '2021-04-17 20:16:04', '2021-04-17 20:16:04', '', '9-Expert-Tips-on-How-to-Become-an-Effective-Conference-Speaker-760x400', '', 'inherit', 'open', 'closed', '', '9-expert-tips-on-how-to-become-an-effective-conference-speaker-760x400', '', '', '2021-04-17 20:16:04', '2021-04-17 20:16:04', '', 196, 'http://shakil.coderit.fun/dev/wp-content/uploads/2021/04/9-Expert-Tips-on-How-to-Become-an-Effective-Conference-Speaker-760x400-1.png', 0, 'attachment', 'image/png', 0),
(200, 1, '2021-04-17 20:17:08', '2021-04-17 20:17:08', '', 'team 4', '', 'publish', 'closed', 'closed', '', 'team-4', '', '', '2021-04-17 20:17:08', '2021-04-17 20:17:08', '', 0, 'http://shakil.coderit.fun/dev/?post_type=our_team&#038;p=200', 0, 'our_team', '', 0),
(201, 1, '2021-04-19 12:00:42', '2021-04-19 12:00:42', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Testimonial Background Image', 'test_bg', 'publish', 'closed', 'closed', '', 'field_607d70a8c71f9', '', '', '2021-04-19 12:00:42', '2021-04-19 12:00:42', '', 153, 'http://shakil.coderit.fun/dev/?post_type=acf-field&p=201', 0, 'acf-field', '', 0),
(204, 1, '2021-04-21 10:37:54', '2021-04-21 10:37:54', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Testimonials Background', 'testimonials_background', 'publish', 'closed', 'closed', '', 'field_6080006bf52e1', '', '', '2021-04-21 10:39:59', '2021-04-21 10:39:59', '', 105, 'http://shakil.coderit.fun/dev/?post_type=acf-field&#038;p=204', 26, 'acf-field', '', 0),
(205, 1, '2021-04-21 10:39:59', '2021-04-21 10:39:59', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Testimonials Background', 'testimonials_background', 'publish', 'closed', 'closed', '', 'field_608000eab9d46', '', '', '2021-04-21 10:39:59', '2021-04-21 10:39:59', '', 105, 'http://shakil.coderit.fun/dev/?post_type=acf-field&p=205', 27, 'acf-field', '', 0),
(206, 1, '2021-04-21 10:41:09', '2021-04-21 10:41:09', '', 'Microsoft-365-Business-voice-VoipZion-slide-1 1', '', 'inherit', 'open', 'closed', '', 'microsoft-365-business-voice-voipzion-slide-1-1', '', '', '2021-04-21 10:41:09', '2021-04-21 10:41:09', '', 72, 'http://shakil.coderit.fun/dev/wp-content/uploads/2021/04/Microsoft-365-Business-voice-VoipZion-slide-1-1.png', 0, 'attachment', 'image/png', 0),
(207, 1, '2021-04-21 10:41:22', '2021-04-21 10:41:22', '', 'Home', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2021-04-21 10:41:22', '2021-04-21 10:41:22', '', 72, 'http://shakil.coderit.fun/dev/?p=207', 0, 'revision', '', 0),
(208, 1, '2021-04-25 17:41:19', '2021-04-25 17:41:19', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Single Imges', 'single_imges', 'publish', 'closed', 'closed', '', 'field_6085a9652a687', '', '', '2021-04-25 17:41:19', '2021-04-25 17:41:19', '', 122, 'http://shakil.coderit.fun/dev/?post_type=acf-field&p=208', 6, 'acf-field', '', 0),
(209, 1, '2021-04-25 17:41:19', '2021-04-25 17:41:19', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Single Sliders', 'single_sliders', 'publish', 'closed', 'closed', '', 'field_6085a97c2a688', '', '', '2021-04-25 17:43:32', '2021-04-25 17:43:32', '', 122, 'http://shakil.coderit.fun/dev/?post_type=acf-field&#038;p=209', 7, 'acf-field', '', 0),
(210, 1, '2021-04-25 17:41:19', '2021-04-25 17:41:19', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Slider Single Images', 'slider_single_images', 'publish', 'closed', 'closed', '', 'field_6085a9962a689', '', '', '2021-04-25 17:41:19', '2021-04-25 17:41:19', '', 209, 'http://shakil.coderit.fun/dev/?post_type=acf-field&p=210', 0, 'acf-field', '', 0),
(211, 1, '2021-04-25 19:22:40', '2021-04-25 19:22:40', '', 'Works', '', 'publish', 'closed', 'closed', '', 'works', '', '', '2021-04-25 19:48:14', '2021-04-25 19:48:14', '', 0, 'http://shakil.coderit.fun/dev/?page_id=211', 0, 'page', '', 0),
(212, 1, '2021-04-25 19:22:40', '2021-04-25 19:22:40', '', 'Works', '', 'inherit', 'closed', 'closed', '', '211-revision-v1', '', '', '2021-04-25 19:22:40', '2021-04-25 19:22:40', '', 211, 'http://shakil.coderit.fun/dev/?p=212', 0, 'revision', '', 0),
(213, 1, '2021-04-25 19:40:29', '2021-04-25 19:40:29', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"template-works.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";}', 'Works Page', 'works-page', 'publish', 'closed', 'closed', '', 'group_6085c59d52997', '', '', '2021-04-25 19:48:04', '2021-04-25 19:48:04', '', 0, 'http://shakil.coderit.fun/dev/?post_type=acf-field-group&#038;p=213', 0, 'acf-field-group', '', 0),
(214, 1, '2021-04-25 19:41:03', '2021-04-25 19:41:03', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Works Banner Images', 'works_banner_images', 'publish', 'closed', 'closed', '', 'field_6085c5b4faa0a', '', '', '2021-04-25 19:41:03', '2021-04-25 19:41:03', '', 213, 'http://shakil.coderit.fun/dev/?post_type=acf-field&p=214', 0, 'acf-field', '', 0),
(216, 1, '2021-04-25 19:42:26', '2021-04-25 19:42:26', '', 'Works', '', 'inherit', 'closed', 'closed', '', '211-revision-v1', '', '', '2021-04-25 19:42:26', '2021-04-25 19:42:26', '', 211, 'http://shakil.coderit.fun/dev/?p=216', 0, 'revision', '', 0),
(218, 1, '2021-04-25 19:43:17', '2021-04-25 19:43:17', '', 'Works', '', 'inherit', 'closed', 'closed', '', '211-revision-v1', '', '', '2021-04-25 19:43:17', '2021-04-25 19:43:17', '', 211, 'http://shakil.coderit.fun/dev/?p=218', 0, 'revision', '', 0),
(219, 1, '2021-04-25 19:48:04', '2021-04-25 19:48:04', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:380:\"Gingerbread candy chupa chups topping. Halvah cake croissant jelly beans. Unerdwear.com brownie lollipop sesame snaps bear claw sweet roll sweet I love soufflé. Caramels powder gummies pudding danish sesame snaps. Sweet roll caramels fruitcake bonbon unerdwear.com brownie ice cream carrot cake. Carrot cake apple pie gummies I love applicake I love I love chocolate bar pudding.\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Works Description', 'works_desc', 'publish', 'closed', 'closed', '', 'field_6085c7596d4fb', '', '', '2021-04-25 19:48:04', '2021-04-25 19:48:04', '', 213, 'http://shakil.coderit.fun/dev/?post_type=acf-field&p=219', 1, 'acf-field', '', 0),
(220, 1, '2021-04-25 19:48:14', '2021-04-25 19:48:14', '', 'Works', '', 'inherit', 'closed', 'closed', '', '211-revision-v1', '', '', '2021-04-25 19:48:14', '2021-04-25 19:48:14', '', 211, 'http://shakil.coderit.fun/dev/?p=220', 0, 'revision', '', 0),
(221, 1, '2021-04-26 09:14:36', '2021-04-26 09:14:36', '<!-- wp:paragraph -->\r\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\r\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-04-26 09:14:36', '2021-04-26 09:14:36', '', 1, 'http://shakil.coderit.fun/dev/?p=221', 0, 'revision', '', 0),
(222, 1, '2021-04-26 09:42:54', '2021-04-26 09:42:54', '<!-- wp:paragraph -->\r\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\r\n<!-- /wp:paragraph -->', 'Hello Bangladesh', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-04-26 09:42:54', '2021-04-26 09:42:54', '', 1, 'http://shakil.coderit.fun/dev/?p=222', 0, 'revision', '', 0),
(223, 1, '2021-04-26 09:43:59', '2021-04-26 09:43:59', 'this the new post. a quick brown fox jumps over the lazy dog \r\na quicl browm fox jumps over the lazy dog ', 'New Post', '', 'publish', 'open', 'open', '', 'new-post', '', '', '2021-04-28 09:31:02', '2021-04-28 09:31:02', '', 0, 'http://shakil.coderit.fun/dev/?p=223', 0, 'post', '', 0),
(224, 1, '2021-04-26 09:43:59', '2021-04-26 09:43:59', 'this the new post. a quick brown fox jumps over the lazy dog \r\na quicl browm fox jumps over the lazy dog ', 'New Post', '', 'inherit', 'closed', 'closed', '', '223-revision-v1', '', '', '2021-04-26 09:43:59', '2021-04-26 09:43:59', '', 223, 'http://shakil.coderit.fun/dev/?p=224', 0, 'revision', '', 0),
(225, 1, '2021-04-26 09:45:42', '2021-04-26 09:45:42', 'This is Sadbin Shakil. I am a professional web designer and WordPress developer. and also I am a Computer in Diploma Engineer.', 'Sadbin Shakil', '', 'publish', 'open', 'open', '', 'shakil', '', '', '2021-04-29 10:23:27', '2021-04-29 10:23:27', '', 0, 'http://shakil.coderit.fun/dev/?p=225', 0, 'post', '', 0),
(226, 1, '2021-04-26 09:45:42', '2021-04-26 09:45:42', 'This is Sadbin Shakil. I am a professional web designer and WordPress developer. and also I am a Computer in Diploma Engineer.', 'Shakil', '', 'inherit', 'closed', 'closed', '', '225-revision-v1', '', '', '2021-04-26 09:45:42', '2021-04-26 09:45:42', '', 225, 'http://shakil.coderit.fun/dev/?p=226', 0, 'revision', '', 0),
(227, 1, '2021-04-26 09:46:18', '2021-04-26 09:46:18', 'This is Sadbin Shakil. I am a professional web designer and WordPress developer. and also I am a Computer in Diploma Engineer.', 'Sadbin Shakil', '', 'inherit', 'closed', 'closed', '', '225-revision-v1', '', '', '2021-04-26 09:46:18', '2021-04-26 09:46:18', '', 225, 'http://shakil.coderit.fun/dev/?p=227', 0, 'revision', '', 0),
(228, 1, '2021-04-26 19:37:34', '2021-04-26 19:37:34', 'This is Sadbin Shakil. I am a professional web designer and WordPress developer. and also I am a Computer in Diploma Engineer.', 'Sadbin Shakil', '', 'inherit', 'closed', 'closed', '', '225-autosave-v1', '', '', '2021-04-26 19:37:34', '2021-04-26 19:37:34', '', 225, 'http://shakil.coderit.fun/dev/?p=228', 0, 'revision', '', 0),
(231, 1, '2021-04-30 14:49:05', '2021-04-30 14:49:05', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2021-04-30 14:49:05', '2021-04-30 14:49:05', '', 0, 'http://shakil.coderit.fun/dev/wp-content/uploads/2021/04/logo.png', 0, 'attachment', 'image/png', 0),
(232, 1, '2021-06-04 16:48:37', '2021-05-01 14:59:20', ' ', '', '', 'publish', 'closed', 'closed', '', '232', '', '', '2021-06-04 16:48:37', '2021-06-04 16:48:37', '', 0, 'http://shakil.coderit.fun/dev/?p=232', 4, 'nav_menu_item', '', 0),
(233, 1, '2021-05-02 10:32:47', '2021-05-02 10:32:47', ' [testcode title=\"shakil\"][/testcode]', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-02 10:32:47', '2021-05-02 10:32:47', '', 2, 'http://shakil.coderit.fun/dev/?p=233', 0, 'revision', '', 0),
(234, 1, '2021-05-02 10:37:32', '2021-05-02 10:37:32', ' [testcode title=\"Another New Title\"][/testcode]', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-02 10:37:32', '2021-05-02 10:37:32', '', 2, 'http://shakil.coderit.fun/dev/?p=234', 0, 'revision', '', 0),
(235, 1, '2021-05-02 10:41:18', '2021-05-02 10:41:18', '[testcode]Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sequi ullam itaque minus qui corrupti magni, modi esse cupiditate ipsa! Consectetur.[/testcode]', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-02 10:41:18', '2021-05-02 10:41:18', '', 2, 'http://shakil.coderit.fun/dev/?p=235', 0, 'revision', '', 0),
(236, 1, '2021-05-02 10:48:27', '2021-05-02 10:48:27', '[testcode title=\"shakil\"][/testcode]', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-02 10:48:27', '2021-05-02 10:48:27', '', 2, 'http://shakil.coderit.fun/dev/?p=236', 0, 'revision', '', 0),
(237, 1, '2021-05-02 10:54:57', '2021-05-02 10:54:57', '[testcode title=\'shakil\'][/testcode]', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-02 10:54:57', '2021-05-02 10:54:57', '', 2, 'http://shakil.coderit.fun/dev/?p=237', 0, 'revision', '', 0),
(238, 1, '2021-05-02 10:55:45', '2021-05-02 10:55:45', '[testcode title=\"hope\"][/testcode]', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-02 10:55:45', '2021-05-02 10:55:45', '', 2, 'http://shakil.coderit.fun/dev/?p=238', 0, 'revision', '', 0),
(239, 1, '2021-05-02 10:59:33', '2021-05-02 10:59:33', '[testcode title=\"hope\" ][/testcode]', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-02 10:59:33', '2021-05-02 10:59:33', '', 2, 'http://shakil.coderit.fun/dev/?p=239', 0, 'revision', '', 0),
(240, 1, '2021-05-02 11:00:02', '2021-05-02 11:00:02', '[testcode Title=\"hope\" ][/testcode]', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-02 11:00:02', '2021-05-02 11:00:02', '', 2, 'http://shakil.coderit.fun/dev/?p=240', 0, 'revision', '', 0),
(242, 1, '2021-05-02 16:56:15', '2021-05-02 16:56:15', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2021-05-02 16:56:15', '2021-05-02 16:56:15', '', 64, 'http://shakil.coderit.fun/dev/?p=242', 0, 'revision', '', 0),
(243, 1, '2021-05-02 17:23:37', '2021-05-02 17:23:37', '<div class=\"form-area\">\r\n<div class=\"form-group\"> \r\n[text* name2 id:name class:form-control placeholder \"Name\"]\r\n</div>\r\n\r\n<div class=\"form-group\"> \r\n[email* email id:email class:form-control placeholder \"Email\"]\r\n</div>\r\n\r\n<div class=\"form-group\"> \r\n[text* phone id:phone class:form-control placeholder \"Phone\"]\r\n</div>\r\n\r\n<div class=\"form-group\"> \r\n[text* subject id:subject class:form-control placeholder \"Subject\"]\r\n</div>\r\n\r\n<div class=\"form-group\">  \r\n[textarea* textarea-366 id:message class:form-control placeholder \"Message\"]\r\n</div>\r\n\r\n<div class=\"form-group\"> \r\n[submit id:submit class:btn class:btn-success \"Submit\"]\r\n</div>\r\n\r\n</div>\n1\n[_site_title] \"[subject]\"\n[_site_title] <skakil@shakil.coderit.fun>\nshakilcoding@yahoo.com\nName: [name2] \r\nEmail:  [email]\r\nPhone: [phone]\r\nSubject: [subject]\r\n\r\nMessage Body:\r\n[textarea-366]\nReply-To: [email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@shakil.coderit.fun>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2021-05-02 18:20:51', '2021-05-02 18:20:51', '', 0, 'http://shakil.coderit.fun/dev/?post_type=wpcf7_contact_form&#038;p=243', 0, 'wpcf7_contact_form', '', 0),
(244, 1, '2021-05-02 18:43:58', '2021-05-02 18:43:58', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"contact.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";}', 'Contact', 'contact', 'publish', 'closed', 'closed', '', 'group_608ef2dd998e5', '', '', '2021-05-02 18:44:26', '2021-05-02 18:44:26', '', 0, 'http://shakil.coderit.fun/dev/?post_type=acf-field-group&#038;p=244', 0, 'acf-field-group', '', 0),
(245, 1, '2021-05-02 18:44:19', '2021-05-02 18:44:19', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Contact Us Shortcode', 'contact_us_shortcode', 'publish', 'closed', 'closed', '', 'field_608ef2f056312', '', '', '2021-05-02 18:44:19', '2021-05-02 18:44:19', '', 244, 'http://shakil.coderit.fun/dev/?post_type=acf-field&p=245', 0, 'acf-field', '', 0),
(246, 1, '2021-05-02 18:48:08', '2021-05-02 18:48:08', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2021-05-02 18:48:08', '2021-05-02 18:48:08', '', 64, 'http://shakil.coderit.fun/dev/?p=246', 0, 'revision', '', 0),
(247, 1, '2021-05-02 18:48:39', '2021-05-02 18:48:39', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2021-05-02 18:48:39', '2021-05-02 18:48:39', '', 64, 'http://shakil.coderit.fun/dev/?p=247', 0, 'revision', '', 0),
(248, 1, '2021-05-02 18:58:03', '2021-05-02 18:58:03', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2021-05-02 18:58:03', '2021-05-02 18:58:03', '', 64, 'http://shakil.coderit.fun/dev/?p=248', 0, 'revision', '', 0),
(249, 1, '2021-05-02 18:58:36', '2021-05-02 18:58:36', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2021-05-02 18:58:36', '2021-05-02 18:58:36', '', 64, 'http://shakil.coderit.fun/dev/?p=249', 0, 'revision', '', 0),
(250, 1, '2021-06-04 16:48:37', '2021-05-02 19:04:53', ' ', '', '', 'publish', 'closed', 'closed', '', '250', '', '', '2021-06-04 16:48:37', '2021-06-04 16:48:37', '', 0, 'http://shakil.coderit.fun/dev/?p=250', 5, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Menu 1', 'menu-1', 0),
(3, 'Web Design', 'web-design', 0),
(4, 'web development', 'web-development', 0),
(5, 'wordpress', 'wordpress', 0),
(6, 'wp dev', 'wp-dev', 0),
(7, 'web design', 'web-design', 0),
(8, 'Apps development', 'apps-development', 0),
(9, 'Locdown', 'locdown', 0),
(10, 'Bangladesh', 'bangladesh', 0),
(11, 'shakil', 'shakil', 0),
(12, 'Hoice na', 'hoice-na', 0),
(13, 'Shakil', 'shakil', 0),
(14, 'engr', 'engr', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 14, 0),
(53, 3, 0),
(53, 4, 0),
(54, 5, 0),
(54, 6, 0),
(76, 2, 0),
(77, 2, 0),
(80, 2, 0),
(120, 7, 0),
(121, 8, 0),
(223, 13, 0),
(225, 9, 0),
(225, 10, 0),
(225, 11, 0),
(225, 12, 0),
(225, 13, 0),
(225, 14, 0),
(232, 2, 0),
(250, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'services-type', '', 0, 1),
(4, 4, 'services-type', '', 0, 1),
(5, 5, 'services-type', '', 0, 1),
(6, 6, 'services-type', '', 0, 1),
(7, 7, 'works_category', '', 0, 1),
(8, 8, 'works_category', '', 0, 1),
(9, 9, 'post_tag', '', 0, 1),
(10, 10, 'post_tag', '', 0, 1),
(11, 11, 'post_tag', '', 0, 1),
(12, 12, 'post_tag', '', 0, 1),
(13, 13, 'category', '', 0, 2),
(14, 14, 'category', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'shakil'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'text_widget_custom_html,addtoany_settings_pointer'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"e6cf3f74d87606cf3eb41e123e2442a3a841ff472ac3b0c5b45858cff9cfa250\";a:4:{s:10:\"expiration\";i:1629048227;s:2:\"ip\";s:14:\"103.135.232.19\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36\";s:5:\"login\";i:1628875427;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '254'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:13:\"103.135.232.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(23, 1, 'wp_user-settings-time', '1619953169'),
(24, 1, 'wp_r_tru_u_x', 'a:2:{s:2:\"id\";s:0:\"\";s:7:\"expires\";i:86400;}'),
(25, 1, 'ignore_admin_config_redux_demo', '1'),
(26, 1, 'ignore_share_config_redux_demo', '1'),
(27, 1, 'ignore_admin_config_amber', '1'),
(28, 1, 'meta-box-order_slider', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:31:\"slugdiv,acf-group_607806d840bda\";s:8:\"advanced\";s:0:\"\";}'),
(29, 1, 'screen_layout_slider', '2'),
(30, 1, 'closedpostboxes_slider', 'a:0:{}'),
(31, 1, 'metaboxhidden_slider', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(32, 1, 'closedpostboxes_page', 'a:0:{}'),
(33, 1, 'metaboxhidden_page', 'a:5:{i:0;s:12:\"revisionsdiv\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),
(34, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(35, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(36, 1, 'closedpostboxes_post', 'a:0:{}'),
(37, 1, 'metaboxhidden_post', 'a:5:{i:0;s:12:\"revisionsdiv\";i:1;s:11:\"postexcerpt\";i:2;s:13:\"trackbacksdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),
(38, 1, 'closedpostboxes_works', 'a:0:{}'),
(39, 1, 'metaboxhidden_works', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(40, 1, 'ctf_ignore_new_user_sale_notice', 'always');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
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
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'shakil', '$P$BxxJhLT445HD6JXlD4I9i2QJjjuzCs.', 'shakil', 'shakilsb4646@gmail.com', 'http://localhost/dev', '2021-03-25 06:18:07', '', 0, 'shakil');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `wp_ctf_feed_locator`
--
ALTER TABLE `wp_ctf_feed_locator`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feed_id` (`feed_id`),
  ADD KEY `post_id` (`post_id`);

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
-- AUTO_INCREMENT for dumped tables
--

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
-- AUTO_INCREMENT for table `wp_ctf_feed_locator`
--
ALTER TABLE `wp_ctf_feed_locator`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1920;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=921;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
