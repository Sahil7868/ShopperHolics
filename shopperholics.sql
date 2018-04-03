-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2018 at 02:09 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopperholics`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-12-22 14:29:49', '2017-12-22 14:29:49', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0),
(2, 126, 'WooCommerce', '', '', '', '2018-01-04 09:55:22', '2018-01-04 09:55:22', 'Awaiting check payment Order status changed from Pending payment to On hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(3, 126, 'WooCommerce', '', '', '', '2018-01-04 09:55:22', '2018-01-04 09:55:22', 'J&G Winter Jacket Collection(Men) (#93) stock reduced from 1 to 0.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(4, 127, 'WooCommerce', '', '', '', '2018-01-04 10:03:15', '2018-01-04 10:03:15', 'Awaiting check payment Order status changed from Pending payment to On hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(5, 127, 'WooCommerce', '', '', '', '2018-01-04 10:03:15', '2018-01-04 10:03:15', 'J&G Winter Jacket Collection(Men) (#93) stock reduced from 2 to -1.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

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
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
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
(1, 'siteurl', 'http://localhost/ShopperHolics/wordpress', 'yes'),
(2, 'home', 'http://localhost/ShopperHolics/wordpress', 'yes'),
(3, 'blogname', 'ShopperHolics', 'yes'),
(4, 'blogdescription', 'Addiction For Shopping', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'sahilsurani7868@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:159:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:47:\"(([^/]+/)*wishlist)(/(.*))?/page/([0-9]{1,})/?$\";s:76:\"index.php?pagename=$matches[1]&wishlist-action=$matches[4]&paged=$matches[5]\";s:30:\"(([^/]+/)*wishlist)(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&wishlist-action=$matches[4]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=51&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:53:\"accesspress-social-share/accesspress-social-share.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:70:\"woocommerce-login-and-registration/woocommerce_login_signup_plugin.php\";i:3;s:27:\"woocommerce/woocommerce.php\";i:4;s:33:\"yith-woocommerce-compare/init.php\";i:5;s:36:\"yith-woocommerce-quick-view/init.php\";i:6;s:34:\"yith-woocommerce-wishlist/init.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:4:{i:0;s:82:\"C:\\xampp\\htdocs\\ShopperHolics\\wordpress/wp-content/themes/storevilla/functions.php\";i:1;s:78:\"C:\\xampp\\htdocs\\ShopperHolics\\wordpress/wp-content/themes/storevilla/style.css\";i:2;s:78:\"C:\\xampp\\htdocs\\ShopperHolics\\wordpress/wp-content/themes/storefront/style.css\";i:3;s:0:\"\";}', 'no'),
(40, 'template', 'storevilla', 'yes'),
(41, 'stylesheet', 'storevilla', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'customer', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
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
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '51', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:131:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:17:\"edit_shop_webhook\";b:1;s:17:\"read_shop_webhook\";b:1;s:19:\"delete_shop_webhook\";b:1;s:18:\"edit_shop_webhooks\";b:1;s:25:\"edit_others_shop_webhooks\";b:1;s:21:\"publish_shop_webhooks\";b:1;s:26:\"read_private_shop_webhooks\";b:1;s:20:\"delete_shop_webhooks\";b:1;s:28:\"delete_private_shop_webhooks\";b:1;s:30:\"delete_published_shop_webhooks\";b:1;s:27:\"delete_others_shop_webhooks\";b:1;s:26:\"edit_private_shop_webhooks\";b:1;s:28:\"edit_published_shop_webhooks\";b:1;s:25:\"manage_shop_webhook_terms\";b:1;s:23:\"edit_shop_webhook_terms\";b:1;s:25:\"delete_shop_webhook_terms\";b:1;s:25:\"assign_shop_webhook_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:109:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:17:\"edit_shop_webhook\";b:1;s:17:\"read_shop_webhook\";b:1;s:19:\"delete_shop_webhook\";b:1;s:18:\"edit_shop_webhooks\";b:1;s:25:\"edit_others_shop_webhooks\";b:1;s:21:\"publish_shop_webhooks\";b:1;s:26:\"read_private_shop_webhooks\";b:1;s:20:\"delete_shop_webhooks\";b:1;s:28:\"delete_private_shop_webhooks\";b:1;s:30:\"delete_published_shop_webhooks\";b:1;s:27:\"delete_others_shop_webhooks\";b:1;s:26:\"edit_private_shop_webhooks\";b:1;s:28:\"edit_published_shop_webhooks\";b:1;s:25:\"manage_shop_webhook_terms\";b:1;s:23:\"edit_shop_webhook_terms\";b:1;s:25:\"delete_shop_webhook_terms\";b:1;s:25:\"assign_shop_webhook_terms\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;s:9:\"show_date\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:4;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:1;s:8:\"dropdown\";i:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:12:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:10:\"archives-4\";i:1;s:14:\"recent-posts-2\";i:2;s:13:\"custom_html-3\";i:3;s:25:\"woocommerce_widget_cart-3\";i:4;s:28:\"woocommerce_product_search-3\";}s:20:\"storevillasidebarone\";a:6:{i:0;s:28:\"woocommerce_product_search-4\";i:1;s:13:\"media_image-2\";i:2;s:32:\"woocommerce_product_categories-2\";i:3;s:25:\"woocommerce_widget_cart-4\";i:4;s:25:\"woocommerce_layered_nav-2\";i:5;s:27:\"woocommerce_rating_filter-2\";}s:20:\"storevillasidebartwo\";a:0:{}s:19:\"storevillaheaderone\";a:0:{}s:20:\"storevillamainwidget\";a:3:{i:0;s:32:\"storevilla_product_widget_area-5\";i:1;s:43:\"storevilla_latest_product_cat_widget_area-5\";i:2;s:43:\"storevilla_latest_product_cat_widget_area-3\";}s:18:\"storevillafooter-1\";a:0:{}s:18:\"storevillafooter-2\";a:0:{}s:18:\"storevillafooter-3\";a:0:{}s:18:\"storevillafooter-4\";a:0:{}s:18:\"storevillafooter-5\";a:0:{}s:19:\"storevillaquickinfo\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:2:{i:2;a:15:{s:13:\"attachment_id\";i:94;s:3:\"url\";s:80:\"http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/images-6.jpg\";s:5:\"title\";s:21:\"New Winter Collection\";s:4:\"size\";s:4:\"full\";s:5:\"width\";i:225;s:6:\"height\";i:225;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:85:\"http://localhost/ShopperHolics/wordpress/product-category/garments/winter-collection/\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:0:\"\";}}', 'yes'),
(109, 'cron', 'a:8:{i:1515128726;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1515144656;a:2:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1515146301;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1515162592;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1515162671;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1515196800;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1517486400;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1514022917;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.1\";s:7:\"version\";s:5:\"4.9.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1515125129;s:15:\"version_checked\";s:5:\"4.9.1\";s:12:\"translations\";a:0:{}}', 'no'),
(123, 'can_compress_scripts', '1', 'no'),
(141, 'recently_activated', 'a:0:{}', 'yes'),
(166, 'woocommerce_store_address', 'New purvi society Maninagar', 'yes'),
(167, 'woocommerce_store_address_2', '', 'yes'),
(168, 'woocommerce_store_city', 'Ahmedabad', 'yes'),
(169, 'woocommerce_default_country', 'IN:GJ', 'yes'),
(170, 'woocommerce_store_postcode', '380028', 'yes'),
(171, 'woocommerce_allowed_countries', 'all', 'yes'),
(172, 'woocommerce_all_except_countries', '', 'yes'),
(173, 'woocommerce_specific_allowed_countries', '', 'yes'),
(174, 'woocommerce_ship_to_countries', '', 'yes'),
(175, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(176, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(177, 'woocommerce_calc_taxes', 'no', 'yes'),
(178, 'woocommerce_demo_store', 'no', 'yes'),
(179, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(180, 'woocommerce_currency', 'INR', 'yes'),
(181, 'woocommerce_currency_pos', 'left', 'yes'),
(182, 'woocommerce_price_thousand_sep', ',', 'yes'),
(183, 'woocommerce_price_decimal_sep', '.', 'yes'),
(184, 'woocommerce_price_num_decimals', '2', 'yes'),
(185, 'woocommerce_weight_unit', 'kg', 'yes'),
(186, 'woocommerce_dimension_unit', 'cm', 'yes'),
(187, 'woocommerce_enable_reviews', 'yes', 'yes'),
(188, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(189, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(190, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(191, 'woocommerce_review_rating_required', 'yes', 'no'),
(192, 'woocommerce_shop_page_id', '4', 'yes'),
(193, 'woocommerce_shop_page_display', '', 'yes'),
(194, 'woocommerce_category_archive_display', '', 'yes'),
(195, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(196, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(197, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(198, 'shop_catalog_image_size', 'a:3:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";i:1;}', 'yes'),
(199, 'shop_single_image_size', 'a:3:{s:5:\"width\";s:3:\"600\";s:6:\"height\";s:3:\"600\";s:4:\"crop\";i:1;}', 'yes'),
(200, 'shop_thumbnail_image_size', 'a:3:{s:5:\"width\";s:3:\"180\";s:6:\"height\";s:3:\"180\";s:4:\"crop\";i:1;}', 'yes'),
(201, 'woocommerce_manage_stock', 'yes', 'yes'),
(202, 'woocommerce_hold_stock_minutes', '60', 'no'),
(203, 'woocommerce_notify_low_stock', 'yes', 'no'),
(204, 'woocommerce_notify_no_stock', 'yes', 'no'),
(205, 'woocommerce_stock_email_recipient', 'sahilsurani7868@gmail.com', 'no'),
(206, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(207, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(208, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(209, 'woocommerce_stock_format', '', 'yes'),
(210, 'woocommerce_file_download_method', 'force', 'no'),
(211, 'woocommerce_downloads_require_login', 'no', 'no'),
(212, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(213, 'woocommerce_prices_include_tax', 'no', 'yes'),
(214, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(215, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(216, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(217, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(218, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(219, 'woocommerce_tax_display_cart', 'excl', 'no'),
(220, 'woocommerce_price_display_suffix', '', 'yes'),
(221, 'woocommerce_tax_total_display', 'itemized', 'no'),
(222, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(223, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(224, 'woocommerce_ship_to_destination', 'billing', 'no'),
(225, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(226, 'woocommerce_enable_coupons', 'yes', 'yes'),
(227, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(228, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(229, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(230, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(231, 'woocommerce_cart_page_id', '5', 'yes'),
(232, 'woocommerce_checkout_page_id', '6', 'yes'),
(233, 'woocommerce_terms_page_id', '', 'no'),
(234, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(235, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(236, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(237, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(238, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(239, 'woocommerce_myaccount_page_id', '7', 'yes'),
(240, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(241, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(242, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(243, 'woocommerce_registration_generate_username', 'yes', 'no'),
(244, 'woocommerce_registration_generate_password', 'no', 'no'),
(245, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(246, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(247, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(248, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(249, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(250, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(251, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(252, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(253, 'woocommerce_email_from_name', 'ShopperHolics', 'no'),
(254, 'woocommerce_email_from_address', 'sahilsurani7868@gmail.com', 'no'),
(255, 'woocommerce_email_header_image', '', 'no'),
(256, 'woocommerce_email_footer_text', 'ShopperHolics', 'no'),
(257, 'woocommerce_email_base_color', '#96588a', 'no'),
(258, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(259, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(260, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(261, 'woocommerce_api_enabled', 'yes', 'yes'),
(262, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(265, 'woocommerce_version', '3.2.6', 'yes'),
(266, 'woocommerce_db_version', '3.2.6', 'yes'),
(267, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(268, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(269, 'widget_woocommerce_widget_cart', 'a:3:{i:3;a:0:{}i:4;a:2:{s:5:\"title\";s:4:\"Cart\";s:13:\"hide_if_empty\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(270, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(271, 'widget_woocommerce_layered_nav', 'a:2:{i:2;a:4:{s:5:\"title\";s:9:\"Filter by\";s:9:\"attribute\";s:0:\"\";s:12:\"display_type\";s:4:\"list\";s:10:\"query_type\";s:3:\"and\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(272, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(273, 'widget_woocommerce_product_categories', 'a:2:{i:2;a:8:{s:5:\"title\";s:18:\"Product categories\";s:7:\"orderby\";s:4:\"name\";s:8:\"dropdown\";i:0;s:5:\"count\";i:0;s:12:\"hierarchical\";i:1;s:18:\"show_children_only\";i:0;s:10:\"hide_empty\";i:0;s:9:\"max_depth\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(274, 'widget_woocommerce_product_search', 'a:3:{i:3;a:0:{}i:4;a:1:{s:5:\"title\";s:19:\"Search Your Product\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(275, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(276, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(277, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(278, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(279, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(280, 'widget_woocommerce_rating_filter', 'a:2:{i:2;a:1:{s:5:\"title\";s:14:\"Average rating\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(283, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(284, 'woocommerce_product_type', 'both', 'yes'),
(285, 'woocommerce_allow_tracking', 'yes', 'yes'),
(286, 'woocommerce_tracker_last_send', '1514753901', 'yes'),
(287, 'woocommerce_ppec_paypal_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(288, 'woocommerce_paypal_settings', 'a:2:{s:7:\"enabled\";s:2:\"no\";s:5:\"email\";b:0;}', 'yes'),
(289, '_transient_shipping-transient-version', '1514022859', 'yes'),
(290, 'woocommerce_flat_rate_1_settings', 'a:3:{s:5:\"title\";s:9:\"Flat rate\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:2:\"50\";}', 'yes'),
(291, 'woocommerce_flat_rate_2_settings', 'a:3:{s:5:\"title\";s:9:\"Flat rate\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:2:\"50\";}', 'yes'),
(299, 'current_theme', 'StoreVilla', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(300, 'theme_mods_storefront', 'a:10:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:17:\"storefront_styles\";s:5060:\"\n			.main-navigation ul li a,\n			.site-title a,\n			ul.menu li a,\n			.site-branding h1 a,\n			.site-footer .storefront-handheld-footer-bar a:not(.button),\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				color: #333333;\n			}\n\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				border-color: #333333;\n			}\n\n			.main-navigation ul li a:hover,\n			.main-navigation ul li:hover > a,\n			.site-title a:hover,\n			a.cart-contents:hover,\n			.site-header-cart .widget_shopping_cart a:hover,\n			.site-header-cart:hover > li > a,\n			.site-header ul.menu li.current-menu-item > a {\n				color: #838383;\n			}\n\n			table th {\n				background-color: #f2f2f2;\n			}\n\n			table tbody td {\n				background-color: #f7f7f7;\n			}\n\n			table tbody tr:nth-child(2n) td,\n			fieldset,\n			fieldset legend {\n				background-color: #f5f5f5;\n			}\n\n			.site-header,\n			.secondary-navigation ul ul,\n			.main-navigation ul.menu > li.menu-item-has-children:after,\n			.secondary-navigation ul.menu ul,\n			.storefront-handheld-footer-bar,\n			.storefront-handheld-footer-bar ul li > a,\n			.storefront-handheld-footer-bar ul li.search .site-search,\n			button.menu-toggle,\n			button.menu-toggle:hover {\n				background-color: #ffffff;\n			}\n\n			p.site-description,\n			.site-header,\n			.storefront-handheld-footer-bar {\n				color: #6d6d6d;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count,\n			button.menu-toggle:after,\n			button.menu-toggle:before,\n			button.menu-toggle span:before {\n				background-color: #333333;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				color: #ffffff;\n			}\n\n			.storefront-handheld-footer-bar ul li.cart .count {\n				border-color: #ffffff;\n			}\n\n			h1, h2, h3, h4, h5, h6 {\n				color: #333333;\n			}\n\n			.widget h1 {\n				border-bottom-color: #333333;\n			}\n\n			body,\n			.secondary-navigation a,\n			.onsale,\n			.pagination .page-numbers li .page-numbers:not(.current), .woocommerce-pagination .page-numbers li .page-numbers:not(.current) {\n				color: #6d6d6d;\n			}\n\n			.widget-area .widget a,\n			.hentry .entry-header .posted-on a,\n			.hentry .entry-header .byline a {\n				color: #9f9f9f;\n			}\n\n			a  {\n				color: #96588a;\n			}\n\n			a:focus,\n			.button:focus,\n			.button.alt:focus,\n			.button.added_to_cart:focus,\n			.button.wc-forward:focus,\n			button:focus,\n			input[type=\"button\"]:focus,\n			input[type=\"reset\"]:focus,\n			input[type=\"submit\"]:focus {\n				outline-color: #96588a;\n			}\n\n			button, input[type=\"button\"], input[type=\"reset\"], input[type=\"submit\"], .button, .added_to_cart, .widget a.button, .site-header-cart .widget_shopping_cart a.button {\n				background-color: #eeeeee;\n				border-color: #eeeeee;\n				color: #333333;\n			}\n\n			button:hover, input[type=\"button\"]:hover, input[type=\"reset\"]:hover, input[type=\"submit\"]:hover, .button:hover, .added_to_cart:hover, .widget a.button:hover, .site-header-cart .widget_shopping_cart a.button:hover {\n				background-color: #d5d5d5;\n				border-color: #d5d5d5;\n				color: #333333;\n			}\n\n			button.alt, input[type=\"button\"].alt, input[type=\"reset\"].alt, input[type=\"submit\"].alt, .button.alt, .added_to_cart.alt, .widget-area .widget a.button.alt, .added_to_cart, .widget a.button.checkout {\n				background-color: #333333;\n				border-color: #333333;\n				color: #ffffff;\n			}\n\n			button.alt:hover, input[type=\"button\"].alt:hover, input[type=\"reset\"].alt:hover, input[type=\"submit\"].alt:hover, .button.alt:hover, .added_to_cart.alt:hover, .widget-area .widget a.button.alt:hover, .added_to_cart:hover, .widget a.button.checkout:hover {\n				background-color: #1a1a1a;\n				border-color: #1a1a1a;\n				color: #ffffff;\n			}\n\n			.pagination .page-numbers li .page-numbers.current, .woocommerce-pagination .page-numbers li .page-numbers.current {\n				background-color: #e0e0e0;\n				color: #6d6d6d;\n			}\n\n			#comments .comment-list .comment-content .comment-text {\n				background-color: #f2f2f2;\n			}\n\n			.site-footer {\n				background-color: #f0f0f0;\n				color: #6d6d6d;\n			}\n\n			.site-footer a:not(.button) {\n				color: #333333;\n			}\n\n			.site-footer h1, .site-footer h2, .site-footer h3, .site-footer h4, .site-footer h5, .site-footer h6 {\n				color: #333333;\n			}\n\n			#order_review {\n				background-color: #f9f9f9;\n			}\n\n			#payment .payment_methods > li .payment_box,\n			#payment .place-order {\n				background-color: #f4f4f4;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice) {\n				background-color: #efefef;\n			}\n\n			#payment .payment_methods > li:not(.woocommerce-notice):hover {\n				background-color: #eaeaea;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.secondary-navigation ul.menu a:hover {\n					color: #868686;\n				}\n\n				.secondary-navigation ul.menu a {\n					color: #6d6d6d;\n				}\n\n				.site-header-cart .widget_shopping_cart,\n				.main-navigation ul.menu ul.sub-menu,\n				.main-navigation ul.nav-menu ul.children {\n					background-color: #f0f0f0;\n				}\n\n				.site-header-cart .widget_shopping_cart .buttons,\n				.site-header-cart .widget_shopping_cart .total {\n					background-color: #f5f5f5;\n				}\n\n				.site-header {\n					border-bottom-color: #f0f0f0;\n				}\n			}\";s:29:\"storefront_woocommerce_styles\";s:2283:\"\n			a.cart-contents,\n			.site-header-cart .widget_shopping_cart a {\n				color: #333333;\n			}\n\n			table.cart td.product-remove,\n			table.cart td.actions {\n				border-top-color: #f9f9f9;\n			}\n\n			.woocommerce-tabs ul.tabs li.active a,\n			ul.products li.product .price,\n			.onsale,\n			.widget_search form:before,\n			.widget_product_search form:before {\n				color: #6d6d6d;\n			}\n\n			.woocommerce-breadcrumb a,\n			a.woocommerce-review-link,\n			.product_meta a {\n				color: #9f9f9f;\n			}\n\n			.onsale {\n				border-color: #6d6d6d;\n			}\n\n			.star-rating span:before,\n			.quantity .plus, .quantity .minus,\n			p.stars a:hover:after,\n			p.stars a:after,\n			.star-rating span:before,\n			#payment .payment_methods li input[type=radio]:first-child:checked+label:before {\n				color: #96588a;\n			}\n\n			.widget_price_filter .ui-slider .ui-slider-range,\n			.widget_price_filter .ui-slider .ui-slider-handle {\n				background-color: #96588a;\n			}\n\n			.order_details {\n				background-color: #f2f2f2;\n			}\n\n			.order_details > li {\n				border-bottom: 1px dotted #dddddd;\n			}\n\n			.order_details:before,\n			.order_details:after {\n				background: -webkit-linear-gradient(transparent 0,transparent 0),-webkit-linear-gradient(135deg,#f2f2f2 33.33%,transparent 33.33%),-webkit-linear-gradient(45deg,#f2f2f2 33.33%,transparent 33.33%)\n			}\n\n			p.stars a:before,\n			p.stars a:hover~a:before,\n			p.stars.selected a.active~a:before {\n				color: #6d6d6d;\n			}\n\n			p.stars.selected a.active:before,\n			p.stars:hover a:before,\n			p.stars.selected a:not(.active):before,\n			p.stars.selected a.active:before {\n				color: #96588a;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger {\n				background-color: #eeeeee;\n				color: #333333;\n			}\n\n			.single-product div.product .woocommerce-product-gallery .woocommerce-product-gallery__trigger:hover {\n				background-color: #d5d5d5;\n				border-color: #d5d5d5;\n				color: #333333;\n			}\n\n			.button.loading {\n				color: #eeeeee;\n			}\n\n			.button.loading:hover {\n				background-color: #eeeeee;\n			}\n\n			.button.loading:after {\n				color: #333333;\n			}\n\n			@media screen and ( min-width: 768px ) {\n				.site-header-cart .widget_shopping_cart,\n				.site-header .product_list_widget li .quantity {\n					color: #6d6d6d;\n				}\n			}\";s:39:\"storefront_woocommerce_extension_styles\";s:0:\"\";s:18:\"custom_css_post_id\";i:-1;s:17:\"storefront_layout\";s:4:\"left\";s:16:\"background_color\";s:6:\"f9f9f9\";s:16:\"background_image\";s:0:\"\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1514033386;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(301, 'theme_switched', '', 'yes'),
(302, 'storefront_nux_fresh_site', '0', 'yes'),
(304, 'woocommerce_setup_jetpack_opted_in', '1', 'yes'),
(305, '_transient_product_query-transient-version', '1515059962', 'yes'),
(309, 'storefront_nux_dismissed', '1', 'yes'),
(318, 'woocommerce_tracker_ua', 'a:1:{i:0;s:114:\"mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/63.0.3239.84 safari/537.36\";}', 'yes'),
(327, '_transient_product-transient-version', '1515060195', 'yes'),
(344, '_transient_timeout_wc_shipping_method_count_1_1514022859', '1516620879', 'no'),
(345, '_transient_wc_shipping_method_count_1_1514022859', '2', 'no'),
(370, 'theme_mods_bb-ecommerce-store', 'a:9:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:32:\"bb_ecommerce_store_theme_options\";s:11:\"Grid Layout\";s:40:\"bb_ecommerce_store_slidersettings-page-1\";i:0;s:40:\"bb_ecommerce_store_slidersettings-page-2\";i:0;s:41:\"bb_ecommerce_store_servicesettings-page-0\";i:4;s:16:\"background_color\";s:6:\"f7f7f7\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1514036041;s:4:\"data\";a:9:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:10:\"archives-4\";i:1;s:14:\"recent-posts-2\";i:2;s:13:\"custom_html-3\";i:3;s:25:\"woocommerce_widget_cart-3\";i:4;s:28:\"woocommerce_product_search-3\";}s:9:\"sidebar-1\";a:5:{i:0;s:8:\"search-2\";i:1;s:17:\"recent-comments-2\";i:2;s:10:\"archives-2\";i:3;s:12:\"categories-2\";i:4;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:14:\"static-sidebar\";a:0:{}}}}', 'yes'),
(382, 'theme_mods_algibro-shop', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1514035272;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:10:\"archives-4\";i:1;s:14:\"recent-posts-2\";i:2;s:13:\"custom_html-3\";i:3;s:25:\"woocommerce_widget_cart-3\";i:4;s:28:\"woocommerce_product_search-3\";}s:9:\"sidebar-1\";a:5:{i:0;s:8:\"search-2\";i:1;s:17:\"recent-comments-2\";i:2;s:10:\"archives-2\";i:3;s:12:\"categories-2\";i:4;s:6:\"meta-2\";}s:19:\"sidebar-woocommerce\";a:0:{}s:11:\"footer-area\";a:0:{}s:13:\"footer-area-2\";a:0:{}s:13:\"footer-area-3\";a:0:{}s:13:\"footer-area-4\";a:0:{}}}}', 'yes'),
(386, 'ti_customizer_notify_show_recommended_plugins', 'a:1:{s:20:\"azera-shop-companion\";b:1;}', 'yes'),
(388, 'theme_mods_azera-shop', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:22:\"azera_shop_title_color\";s:7:\"#dd3333\";s:28:\"azera_shop_blog_header_image\";s:82:\"http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/background.jpg\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1514035561;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:10:\"archives-4\";i:1;s:14:\"recent-posts-2\";i:2;s:13:\"custom_html-3\";i:3;s:25:\"woocommerce_widget_cart-3\";i:4;s:28:\"woocommerce_product_search-3\";}s:9:\"sidebar-1\";a:5:{i:0;s:8:\"search-2\";i:1;s:17:\"recent-comments-2\";i:2;s:10:\"archives-2\";i:3;s:12:\"categories-2\";i:4;s:6:\"meta-2\";}s:19:\"sidebar-woocommerce\";a:0:{}s:11:\"footer-area\";a:0:{}s:13:\"footer-area-2\";a:0:{}s:13:\"footer-area-3\";a:0:{}s:13:\"footer-area-4\";a:0:{}}}}', 'yes'),
(399, 'theme_mods_ecommerce-market', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:12:\"header_image\";s:92:\"http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/cropped-background-1.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:34;s:3:\"url\";s:92:\"http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/cropped-background-1.jpg\";s:13:\"thumbnail_url\";s:92:\"http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/cropped-background-1.jpg\";s:6:\"height\";i:518;s:5:\"width\";i:1000;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1514037465;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:10:\"archives-4\";i:1;s:14:\"recent-posts-2\";i:2;s:13:\"custom_html-3\";i:3;s:25:\"woocommerce_widget_cart-3\";i:4;s:28:\"woocommerce_product_search-3\";}s:9:\"sidebar-1\";a:5:{i:0;s:8:\"search-2\";i:1;s:17:\"recent-comments-2\";i:2;s:10:\"archives-2\";i:3;s:12:\"categories-2\";i:4;s:6:\"meta-2\";}s:25:\"home-page-section-sidebar\";a:0:{}s:12:\"sidebar-shop\";a:0:{}}}}', 'yes'),
(400, 'widget_ecommerce_market_categories_collection', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(401, 'widget_ecommerce_marke_product_carousel', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(402, 'widget_ecommerce_market_featured_product', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(403, 'widget_ecommerce_market_latest_blog', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(404, 'widget_ecommerce_market_testimonial', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(405, 'widget_ecommerce-market', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(406, 'widget_ecommerce_market_recent_posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(409, 'yit_recently_activated', 'a:0:{}', 'yes'),
(414, 'yith_wcwl_frontend_css_colors', 's:1159:\"a:10:{s:15:\"add_to_wishlist\";a:3:{s:10:\"background\";s:7:\"#333333\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#333333\";}s:21:\"add_to_wishlist_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:11:\"add_to_cart\";a:3:{s:10:\"background\";s:7:\"#333333\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#333333\";}s:17:\"add_to_cart_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:14:\"button_style_1\";a:3:{s:10:\"background\";s:7:\"#333333\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#333333\";}s:20:\"button_style_1_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:14:\"button_style_2\";a:3:{s:10:\"background\";s:7:\"#FFFFFF\";s:5:\"color\";s:7:\"#858484\";s:12:\"border_color\";s:7:\"#c6c6c6\";}s:20:\"button_style_2_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:14:\"wishlist_table\";a:3:{s:10:\"background\";s:7:\"#FFFFFF\";s:5:\"color\";s:7:\"#6d6c6c\";s:12:\"border_color\";s:7:\"#FFFFFF\";}s:7:\"headers\";a:1:{s:10:\"background\";s:7:\"#F4F4F4\";}}\";', 'yes'),
(415, 'yith_wcwl_wishlist_title', 'My wishlist on ShopperHolics', 'yes'),
(416, 'yith-wcwl-page-id', '40', 'yes'),
(417, 'yith_wcwl_wishlist_page_id', '40', 'yes'),
(418, 'yith_wcwl_version', '2.1.2', 'yes'),
(419, 'yith_wcwl_db_version', '2.0.0', 'yes'),
(420, 'yith_wcwl_general_videobox', 'a:7:{s:11:\"plugin_name\";s:25:\"YITH WooCommerce Wishlist\";s:18:\"title_first_column\";s:30:\"Discover the Advanced Features\";s:24:\"description_first_column\";s:89:\"Upgrade to the PREMIUM VERSION of YITH WOOCOMMERCE WISHLIST to benefit from all features!\";s:5:\"video\";a:3:{s:8:\"video_id\";s:9:\"118797844\";s:15:\"video_image_url\";s:116:\"http://localhost/ShopperHolics/wordpress/wp-content/plugins/yith-woocommerce-wishlist//assets/images/video-thumb.jpg\";s:17:\"video_description\";s:0:\"\";}s:19:\"title_second_column\";s:28:\"Get Support and Pro Features\";s:25:\"description_second_column\";s:205:\"By purchasing the premium version of the plugin, you will take advantage of the advanced features of the product and you will get one year of free updates and support through our platform available 24h/24.\";s:6:\"button\";a:2:{s:4:\"href\";s:78:\"http://yithemes.com/themes/plugins/yith-woocommerce-wishlist/?refer_id=1030585\";s:5:\"title\";s:28:\"Get Support and Pro Features\";}}', 'yes'),
(421, 'yith_wcwl_enabled', 'yes', 'yes'),
(422, 'yith_wcwl_redirect_cart', 'no', 'yes'),
(423, 'yith_wcwl_remove_after_add_to_cart', 'yes', 'yes'),
(424, 'yith_wcwl_add_to_wishlist_text', 'Add to Wishlist', 'yes'),
(425, 'yith_wcwl_browse_wishlist_text', 'Browse Wishlist', 'yes'),
(426, 'yith_wcwl_already_in_wishlist_text', 'The product is already in the wishlist!', 'yes'),
(427, 'yith_wcwl_product_added_text', 'Product added!', 'yes'),
(428, 'yith_wcwl_add_to_cart_text', 'Add to Cart', 'yes'),
(429, 'yith_wcwl_price_show', 'yes', 'yes'),
(430, 'yith_wcwl_add_to_cart_show', 'yes', 'yes'),
(431, 'yith_wcwl_stock_show', 'yes', 'yes'),
(432, 'yith_wcwl_show_dateadded', 'no', 'yes'),
(433, 'yith_wcwl_repeat_remove_button', 'no', 'yes'),
(434, 'yith_wcwl_share_fb', 'yes', 'yes'),
(435, 'yith_wcwl_share_twitter', 'yes', 'yes'),
(436, 'yith_wcwl_share_pinterest', 'yes', 'yes'),
(437, 'yith_wcwl_share_googleplus', 'yes', 'yes'),
(438, 'yith_wcwl_share_email', 'yes', 'yes'),
(439, 'yith_wcwl_socials_title', 'My wishlist on ShopperHolics', 'yes'),
(440, 'yith_wcwl_socials_text', '', 'yes'),
(441, 'yith_wcwl_socials_image_url', '', 'yes'),
(442, 'yith_wfbt_enable_integration', 'yes', 'yes'),
(443, 'yith_wcwl_use_button', 'no', 'yes'),
(444, 'yith_wcwl_custom_css', '', 'yes'),
(445, 'yith_wcwl_frontend_css', 'yes', 'yes'),
(446, 'yith_wcwl_rounded_corners', 'yes', 'yes'),
(447, 'yith_wcwl_add_to_wishlist_icon', 'none', 'yes'),
(448, 'yith_wcwl_add_to_cart_icon', 'fa-shopping-cart', 'yes'),
(450, 'theme_mods_tc-e-commerce-shop', 'a:15:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:12:\"header_image\";s:92:\"http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/cropped-background-2.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:41;s:3:\"url\";s:92:\"http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/cropped-background-2.jpg\";s:13:\"thumbnail_url\";s:92:\"http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/cropped-background-2.jpg\";s:6:\"height\";i:400;s:5:\"width\";i:1600;}s:23:\"tc_e_commerce_shop_mail\";s:25:\"sahilsurani7868@gmail.com\";s:23:\"tc_e_commerce_shop_call\";s:13:\"+918401394432\";s:40:\"tc_e_commerce_shop_slidersettings-page-1\";i:4;s:40:\"tc_e_commerce_shop_slidersettings-page-2\";i:40;s:40:\"tc_e_commerce_shop_slidersettings-page-3\";i:5;s:40:\"tc_e_commerce_shop_slidersettings-page-4\";i:7;s:32:\"tc_e_commerce_shop_theme_options\";s:11:\"Grid Layout\";s:29:\"tc_e_commerce_shop_sec1_title\";s:0:\"\";s:41:\"tc_e_commerce_shop_servicesettings-page-0\";i:4;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1514114743;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:10:\"archives-4\";i:1;s:14:\"recent-posts-2\";i:2;s:13:\"custom_html-3\";i:3;s:25:\"woocommerce_widget_cart-3\";i:4;s:28:\"woocommerce_product_search-3\";}s:9:\"sidebar-1\";a:5:{i:0;s:8:\"search-2\";i:1;s:17:\"recent-comments-2\";i:2;s:10:\"archives-2\";i:3;s:12:\"categories-2\";i:4;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(478, 'theme_mods_storevilla', 'a:8:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:17:\"storevillaprimary\";i:30;s:17:\"storevillatopmenu\";i:31;}s:18:\"custom_css_post_id\";i:-1;s:25:\"storevilla_slider_team_id\";i:28;s:31:\"storevilla_promo_area_one_image\";s:156:\"http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/ChenOne-Winter-Dresses-2014-15-for-Ladies-and-Gents-001-www.she-styles.blogspot.com_.jpg\";s:31:\"storevilla_promo_area_two_image\";s:112:\"http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/Amazon-1340-X777-MENS-SHOES._V298501455_.jpg\";s:34:\"storevilla_web_page_layout_options\";s:7:\"disable\";s:30:\"storevilla_promo_area_one_link\";s:46:\"http://localhost/ShopperHolics/wordpress/shop/\";}', 'yes'),
(479, 'widget_storevilla_latest_product_cat_widget_area', 'a:3:{s:12:\"_multiwidget\";i:1;i:3;a:5:{s:28:\"storevilla_top_product_title\";s:11:\"WOMEN STYLE\";s:29:\"storevilla_main_product_title\";s:5:\"Women\";s:23:\"storevilla_product_type\";s:8:\"category\";s:23:\"storevilla_woo_category\";s:2:\"26\";s:25:\"storevilla_product_number\";i:4;}i:5;a:5:{s:28:\"storevilla_top_product_title\";s:6:\"Latest\";s:29:\"storevilla_main_product_title\";s:11:\"Electronics\";s:23:\"storevilla_product_type\";s:8:\"category\";s:23:\"storevilla_woo_category\";s:2:\"15\";s:25:\"storevilla_product_number\";i:4;}}', 'yes'),
(480, 'widget_storevilla_cat_with_product_widget_area', 'a:3:{s:12:\"_multiwidget\";i:1;i:3;a:4:{s:33:\"storevilla_cat_main_product_title\";s:17:\"Winter Collection\";s:29:\"storevilla_cat_image_aligment\";s:10:\"left_align\";s:23:\"storevilla_woo_category\";s:2:\"27\";s:29:\"storevilla_cat_product_number\";i:4;}i:5;a:4:{s:33:\"storevilla_cat_main_product_title\";s:11:\"Electronics\";s:29:\"storevilla_cat_image_aligment\";s:10:\"left_align\";s:23:\"storevilla_woo_category\";s:2:\"15\";s:29:\"storevilla_cat_product_number\";i:4;}}', 'yes'),
(481, 'widget_storevilla_cat_widget_area', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:4:{s:27:\"storevilla_top_cat_bg_image\";s:0:\"\";s:24:\"storevilla_top_cat_title\";s:8:\"TRENDING\";s:25:\"storevilla_main_cat_title\";s:17:\"Winter Collection\";s:26:\"storevilla_select_category\";a:1:{i:27;s:1:\"1\";}}}', 'yes'),
(482, 'widget_storevilla_product_widget_area', 'a:3:{s:12:\"_multiwidget\";i:1;i:3;a:4:{s:28:\"storevilla_top_product_title\";s:8:\"Trending\";s:29:\"storevilla_main_product_title\";s:17:\"Winter Collection\";s:23:\"storevilla_product_type\";s:14:\"latest_product\";s:25:\"storevilla_product_number\";i:5;}i:5;a:4:{s:28:\"storevilla_top_product_title\";s:8:\"TRENDING\";s:29:\"storevilla_main_product_title\";s:17:\"Winter Collection\";s:23:\"storevilla_product_type\";s:14:\"latest_product\";s:25:\"storevilla_product_number\";i:4;}}', 'yes'),
(483, 'widget_storevilla_column_product_widget_area', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:21:{s:27:\"banner_start_group_left_one\";s:0:\"\";s:29:\"storevilla_column_one_display\";s:1:\"1\";s:35:\"storevilla_column_one_product_title\";s:17:\"Winter Collection\";s:34:\"storevilla_column_one_product_type\";s:7:\"on_sale\";s:30:\"storevilla_column_one_category\";s:2:\"27\";s:36:\"storevilla_column_one_product_number\";i:4;s:25:\"banner_end_group_left_one\";s:0:\"\";s:27:\"banner_start_group_left_two\";s:0:\"\";s:29:\"storevilla_column_two_display\";s:0:\"\";s:35:\"storevilla_column_two_product_title\";s:0:\"\";s:34:\"storevilla_column_two_product_type\";s:14:\"latest_product\";s:30:\"storevilla_column_two_category\";s:0:\"\";s:36:\"storevilla_column_two_product_number\";i:0;s:25:\"banner_end_group_left_two\";s:0:\"\";s:29:\"banner_start_group_left_three\";s:0:\"\";s:31:\"storevilla_column_three_display\";s:0:\"\";s:37:\"storevilla_column_three_product_title\";s:0:\"\";s:36:\"storevilla_column_three_product_type\";s:14:\"latest_product\";s:32:\"storevilla_column_three_category\";s:0:\"\";s:38:\"storevilla_column_three_product_number\";i:0;s:27:\"banner_end_group_left_three\";s:0:\"\";}}', 'yes'),
(484, 'widget_storevilla_contact_info_area', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(485, 'widget_storevilla_aboutus_info_area', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(486, 'widget_storevilla_blog_widget_area', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(487, 'widget_storevilla_testimonial_widget_area', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(488, 'storevilla_plugin_installed_notif', '0', 'yes'),
(490, '_transient_timeout_yith_wcwl_user_default_count_1', '1515664526', 'no'),
(491, '_transient_yith_wcwl_user_default_count_1', '0', 'no'),
(494, 'WPLANG', '', 'yes'),
(495, 'new_admin_email', 'sahilsurani7868@gmail.com', 'yes'),
(523, 'product_cat_children', 'a:2:{i:15;a:6:{i:0;i:16;i:1;i:17;i:2;i:18;i:3;i:19;i:4;i:20;i:5;i:21;}i:22;a:3:{i:0;i:24;i:1;i:26;i:2;i:27;}}', 'yes'),
(525, 'category_children', 'a:0:{}', 'yes'),
(564, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(604, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(605, 'apss_share_settings', 'a:18:{s:13:\"share_options\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:15:\"social_icon_set\";s:1:\"1\";s:15:\"share_positions\";s:13:\"below_content\";s:15:\"social_networks\";a:8:{s:8:\"facebook\";s:1:\"1\";s:7:\"twitter\";s:1:\"1\";s:11:\"google-plus\";s:1:\"1\";s:9:\"pinterest\";s:1:\"1\";s:8:\"linkedin\";s:1:\"1\";s:4:\"digg\";s:1:\"1\";s:5:\"email\";s:1:\"0\";s:5:\"print\";s:1:\"0\";}s:23:\"disable_frontend_assets\";s:1:\"0\";s:10:\"share_text\";s:0:\"\";s:16:\"twitter_username\";s:0:\"\";s:22:\"counter_enable_options\";s:1:\"0\";s:19:\"twitter_counter_api\";s:1:\"1\";s:17:\"api_configuration\";a:1:{s:8:\"facebook\";a:2:{s:6:\"app_id\";s:0:\"\";s:10:\"app_secret\";s:0:\"\";}}s:28:\"total_counter_enable_options\";s:1:\"0\";s:17:\"enable_http_count\";s:1:\"0\";s:12:\"enable_cache\";s:1:\"1\";s:12:\"cache_period\";s:2:\"24\";s:29:\"apss_social_counts_transients\";a:0:{}s:18:\"dialog_box_options\";s:1:\"1\";s:18:\"apss_email_subject\";s:30:\"Please visit this link %%url%%\";s:15:\"apss_email_body\";s:110:\"Hey Buddy!, I found this information for you: \"%%title%%\". Here is the website link: %%permalink%%. Thank you.\";}', 'yes'),
(606, 'apss_social_counts_transients', 'a:65:{i:0;s:35:\"fb_9a35180d8109f6c9311a88bb5d44825a\";i:1;s:40:\"twitter_9a35180d8109f6c9311a88bb5d44825a\";i:2;s:35:\"gp_9a35180d8109f6c9311a88bb5d44825a\";i:3;s:42:\"pinterest_9a35180d8109f6c9311a88bb5d44825a\";i:4;s:41:\"linkedin_9a35180d8109f6c9311a88bb5d44825a\";i:5;s:35:\"fb_34f34a3d0b52ea6da740b118a08816e1\";i:6;s:40:\"twitter_34f34a3d0b52ea6da740b118a08816e1\";i:7;s:35:\"gp_34f34a3d0b52ea6da740b118a08816e1\";i:8;s:42:\"pinterest_34f34a3d0b52ea6da740b118a08816e1\";i:9;s:41:\"linkedin_34f34a3d0b52ea6da740b118a08816e1\";i:10;s:35:\"fb_a0d0095a6145603b9ae1476bccccce8a\";i:11;s:40:\"twitter_a0d0095a6145603b9ae1476bccccce8a\";i:12;s:35:\"gp_a0d0095a6145603b9ae1476bccccce8a\";i:13;s:42:\"pinterest_a0d0095a6145603b9ae1476bccccce8a\";i:14;s:41:\"linkedin_a0d0095a6145603b9ae1476bccccce8a\";i:15;s:35:\"fb_4ce9a7487fd920dab8599b25bb9e92c8\";i:16;s:40:\"twitter_4ce9a7487fd920dab8599b25bb9e92c8\";i:17;s:35:\"gp_4ce9a7487fd920dab8599b25bb9e92c8\";i:18;s:42:\"pinterest_4ce9a7487fd920dab8599b25bb9e92c8\";i:19;s:41:\"linkedin_4ce9a7487fd920dab8599b25bb9e92c8\";i:20;s:35:\"fb_df7ec2e37095cc9cef8ad48294384a71\";i:21;s:40:\"twitter_df7ec2e37095cc9cef8ad48294384a71\";i:22;s:35:\"gp_df7ec2e37095cc9cef8ad48294384a71\";i:23;s:42:\"pinterest_df7ec2e37095cc9cef8ad48294384a71\";i:24;s:41:\"linkedin_df7ec2e37095cc9cef8ad48294384a71\";i:25;s:35:\"fb_a4553984bf40f426ae5fb297a3a92fa5\";i:26;s:40:\"twitter_a4553984bf40f426ae5fb297a3a92fa5\";i:27;s:35:\"gp_a4553984bf40f426ae5fb297a3a92fa5\";i:28;s:42:\"pinterest_a4553984bf40f426ae5fb297a3a92fa5\";i:29;s:41:\"linkedin_a4553984bf40f426ae5fb297a3a92fa5\";i:30;s:35:\"fb_671cdf7bed62d240830d006349ecedf4\";i:31;s:40:\"twitter_671cdf7bed62d240830d006349ecedf4\";i:32;s:35:\"gp_671cdf7bed62d240830d006349ecedf4\";i:33;s:42:\"pinterest_671cdf7bed62d240830d006349ecedf4\";i:34;s:41:\"linkedin_671cdf7bed62d240830d006349ecedf4\";i:35;s:35:\"fb_40277f2529f3863d5f7c71ecb356b671\";i:36;s:40:\"twitter_40277f2529f3863d5f7c71ecb356b671\";i:37;s:35:\"gp_40277f2529f3863d5f7c71ecb356b671\";i:38;s:42:\"pinterest_40277f2529f3863d5f7c71ecb356b671\";i:39;s:41:\"linkedin_40277f2529f3863d5f7c71ecb356b671\";i:40;s:35:\"fb_2e68f13ee1e113316ef21915f195d5b2\";i:41;s:40:\"twitter_2e68f13ee1e113316ef21915f195d5b2\";i:42;s:35:\"gp_2e68f13ee1e113316ef21915f195d5b2\";i:43;s:42:\"pinterest_2e68f13ee1e113316ef21915f195d5b2\";i:44;s:41:\"linkedin_2e68f13ee1e113316ef21915f195d5b2\";i:45;s:35:\"fb_43fede8d153977ed9b27a8e397b4c41c\";i:46;s:40:\"twitter_43fede8d153977ed9b27a8e397b4c41c\";i:47;s:35:\"gp_43fede8d153977ed9b27a8e397b4c41c\";i:48;s:42:\"pinterest_43fede8d153977ed9b27a8e397b4c41c\";i:49;s:41:\"linkedin_43fede8d153977ed9b27a8e397b4c41c\";i:50;s:35:\"fb_50c4e734b79f8d01c783b6c043f38893\";i:51;s:40:\"twitter_50c4e734b79f8d01c783b6c043f38893\";i:52;s:35:\"gp_50c4e734b79f8d01c783b6c043f38893\";i:53;s:42:\"pinterest_50c4e734b79f8d01c783b6c043f38893\";i:54;s:41:\"linkedin_50c4e734b79f8d01c783b6c043f38893\";i:55;s:35:\"fb_d153b76e8652f3c530bb846f0c95553a\";i:56;s:40:\"twitter_d153b76e8652f3c530bb846f0c95553a\";i:57;s:35:\"gp_d153b76e8652f3c530bb846f0c95553a\";i:58;s:42:\"pinterest_d153b76e8652f3c530bb846f0c95553a\";i:59;s:41:\"linkedin_d153b76e8652f3c530bb846f0c95553a\";i:60;s:35:\"fb_7f1c97bfba289b5e9ff7b64775ebefbe\";i:61;s:40:\"twitter_7f1c97bfba289b5e9ff7b64775ebefbe\";i:62;s:35:\"gp_7f1c97bfba289b5e9ff7b64775ebefbe\";i:63;s:42:\"pinterest_7f1c97bfba289b5e9ff7b64775ebefbe\";i:64;s:41:\"linkedin_7f1c97bfba289b5e9ff7b64775ebefbe\";}', 'yes'),
(607, 'widget_yith-woocompare-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(608, 'yith_woocompare_is_button', 'button', 'yes'),
(609, 'yith_woocompare_button_text', 'Compare', 'yes'),
(610, 'yith_woocompare_compare_button_in_product_page', 'yes', 'yes'),
(611, 'yith_woocompare_compare_button_in_products_list', 'no', 'yes'),
(612, 'yith_woocompare_auto_open', 'yes', 'yes'),
(613, 'yith_woocompare_table_text', 'Compare products', 'yes'),
(614, 'yith_woocompare_fields_attrs', 'all', 'yes'),
(615, 'yith_woocompare_price_end', 'yes', 'yes'),
(616, 'yith_woocompare_add_to_cart_end', 'no', 'yes'),
(617, 'yith_woocompare_image_size', 'a:3:{s:5:\"width\";i:220;s:6:\"height\";i:154;s:4:\"crop\";i:1;}', 'yes'),
(618, 'yit_plugin_fw_panel_wc_default_options_set', 'a:3:{s:21:\"yith_woocompare_panel\";b:1;s:15:\"yith_wcwl_panel\";b:1;s:15:\"yith_wcqv_panel\";b:1;}', 'yes'),
(619, 'yith_woocompare_fields', 'a:9:{s:5:\"image\";b:1;s:5:\"title\";b:1;s:5:\"price\";b:1;s:11:\"add-to-cart\";b:1;s:11:\"description\";b:1;s:3:\"sku\";b:1;s:5:\"stock\";b:1;s:6:\"weight\";b:1;s:10:\"dimensions\";b:1;}', 'yes'),
(620, 'yith_wcqv_general_videobox', 'a:7:{s:11:\"plugin_name\";s:27:\"YITH WooCommerce Quick View\";s:18:\"title_first_column\";s:30:\"Discover the Advanced Features\";s:24:\"description_first_column\";s:91:\"Upgrade to the PREMIUM VERSION of YITH WooCommerce Quick View to benefit from all features!\";s:5:\"video\";a:3:{s:8:\"video_id\";s:9:\"120573971\";s:15:\"video_image_url\";s:138:\"http://localhost/ShopperHolics/wordpress/wp-content/plugins/yith-woocommerce-quick-view/assets/image/video-yith-woocommerce-quick-view.jpg\";s:17:\"video_description\";s:27:\"YITH WooCommerce Quick View\";}s:19:\"title_second_column\";s:28:\"Get Support and Pro Features\";s:25:\"description_second_column\";s:205:\"By purchasing the premium version of the plugin, you will take advantage of the advanced features of the product and you will get one year of free updates and support through our platform available 24h/24.\";s:6:\"button\";a:2:{s:4:\"href\";s:81:\"https://yithemes.com/themes/plugins/yith-woocommerce-quick-view/?refer_id=1030585\";s:5:\"title\";s:28:\"Get Support and Pro Features\";}}', 'yes'),
(621, 'yith-wcqv-enable', 'yes', 'yes'),
(622, 'yith-wcqv-enable-mobile', 'yes', 'yes'),
(623, 'yith-wcqv-button-label', 'Quick View', 'yes'),
(624, 'yith-wcqv-enable-lightbox', 'yes', 'yes'),
(625, 'yith-wcqv-background-modal', '#ffffff', 'yes'),
(626, 'yith-wcqv-close-color', '#cdcdcd', 'yes'),
(627, 'yith-wcqv-close-color-hover', '#ff0000', 'yes'),
(754, '_transient_timeout_external_ip_address_::1', '1515358678', 'no'),
(755, '_transient_external_ip_address_::1', '49.34.122.69', 'no'),
(776, '_site_transient_timeout_browser_da4804949398f905dcef757ac82cf2c1', '1515441742', 'no'),
(777, '_site_transient_browser_da4804949398f905dcef757ac82cf2c1', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"63.0.3239.84\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(804, 'popup_status', 'on', 'yes'),
(808, '_transient_timeout_yith_wcwl_user_default_count_2', '1515665063', 'no'),
(809, '_transient_yith_wcwl_user_default_count_2', '0', 'no'),
(835, '_transient_timeout_fb_2e68f13ee1e113316ef21915f195d5b2', '1515145742', 'no'),
(836, '_transient_fb_2e68f13ee1e113316ef21915f195d5b2', '0', 'no'),
(837, '_transient_timeout_twitter_2e68f13ee1e113316ef21915f195d5b2', '1515145742', 'no'),
(838, '_transient_twitter_2e68f13ee1e113316ef21915f195d5b2', '0', 'no'),
(839, '_transient_timeout_gp_2e68f13ee1e113316ef21915f195d5b2', '1515145743', 'no'),
(840, '_transient_gp_2e68f13ee1e113316ef21915f195d5b2', '0', 'no'),
(841, '_transient_timeout_pinterest_2e68f13ee1e113316ef21915f195d5b2', '1515145744', 'no'),
(842, '_transient_pinterest_2e68f13ee1e113316ef21915f195d5b2', '0', 'no'),
(843, '_transient_timeout_linkedin_2e68f13ee1e113316ef21915f195d5b2', '1515145745', 'no'),
(844, '_transient_linkedin_2e68f13ee1e113316ef21915f195d5b2', '0', 'no'),
(845, '_transient_timeout_fb_671cdf7bed62d240830d006349ecedf4', '1515145781', 'no'),
(846, '_transient_fb_671cdf7bed62d240830d006349ecedf4', '0', 'no'),
(847, '_transient_timeout_twitter_671cdf7bed62d240830d006349ecedf4', '1515145782', 'no'),
(848, '_transient_twitter_671cdf7bed62d240830d006349ecedf4', '0', 'no'),
(849, '_transient_timeout_gp_671cdf7bed62d240830d006349ecedf4', '1515145783', 'no'),
(850, '_transient_gp_671cdf7bed62d240830d006349ecedf4', '0', 'no'),
(851, '_transient_timeout_pinterest_671cdf7bed62d240830d006349ecedf4', '1515145783', 'no'),
(852, '_transient_pinterest_671cdf7bed62d240830d006349ecedf4', '0', 'no'),
(853, '_transient_timeout_linkedin_671cdf7bed62d240830d006349ecedf4', '1515145784', 'no'),
(854, '_transient_linkedin_671cdf7bed62d240830d006349ecedf4', '0', 'no'),
(876, '_transient_timeout_fb_43fede8d153977ed9b27a8e397b4c41c', '1515146012', 'no'),
(877, '_transient_fb_43fede8d153977ed9b27a8e397b4c41c', '0', 'no'),
(878, '_transient_timeout_twitter_43fede8d153977ed9b27a8e397b4c41c', '1515146012', 'no'),
(879, '_transient_twitter_43fede8d153977ed9b27a8e397b4c41c', '0', 'no'),
(880, '_transient_timeout_gp_43fede8d153977ed9b27a8e397b4c41c', '1515146013', 'no'),
(881, '_transient_gp_43fede8d153977ed9b27a8e397b4c41c', '0', 'no'),
(882, '_transient_timeout_pinterest_43fede8d153977ed9b27a8e397b4c41c', '1515146014', 'no'),
(883, '_transient_pinterest_43fede8d153977ed9b27a8e397b4c41c', '0', 'no'),
(884, '_transient_timeout_linkedin_43fede8d153977ed9b27a8e397b4c41c', '1515146014', 'no'),
(885, '_transient_linkedin_43fede8d153977ed9b27a8e397b4c41c', '0', 'no'),
(886, '_transient_orders-transient-version', '1515060192', 'yes'),
(903, '_transient_timeout_wc_term_counts', '1517651979', 'no'),
(904, '_transient_wc_term_counts', 'a:11:{i:15;s:1:\"4\";i:22;s:1:\"8\";i:16;s:1:\"2\";i:20;s:1:\"1\";i:24;s:1:\"4\";i:17;s:1:\"1\";i:27;s:1:\"4\";i:26;s:1:\"4\";i:18;s:0:\"\";i:19;s:0:\"\";i:21;s:0:\"\";}', 'no'),
(905, '_transient_is_multi_author', '0', 'yes'),
(906, '_transient_timeout_fb_40277f2529f3863d5f7c71ecb356b671', '1515146648', 'no'),
(907, '_transient_fb_40277f2529f3863d5f7c71ecb356b671', '0', 'no'),
(908, '_transient_timeout_twitter_40277f2529f3863d5f7c71ecb356b671', '1515146648', 'no'),
(909, '_transient_twitter_40277f2529f3863d5f7c71ecb356b671', '0', 'no'),
(910, '_transient_timeout_gp_40277f2529f3863d5f7c71ecb356b671', '1515146649', 'no'),
(911, '_transient_gp_40277f2529f3863d5f7c71ecb356b671', '0', 'no'),
(912, '_transient_timeout_pinterest_40277f2529f3863d5f7c71ecb356b671', '1515146650', 'no'),
(913, '_transient_pinterest_40277f2529f3863d5f7c71ecb356b671', '0', 'no'),
(914, '_transient_timeout_linkedin_40277f2529f3863d5f7c71ecb356b671', '1515146650', 'no'),
(915, '_transient_linkedin_40277f2529f3863d5f7c71ecb356b671', '0', 'no'),
(916, '_transient_timeout_wc_related_93', '1515146650', 'no'),
(917, '_transient_wc_related_93', 'a:7:{i:0;s:2:\"80\";i:1;s:2:\"83\";i:2;s:2:\"85\";i:3;s:2:\"87\";i:4;s:2:\"89\";i:5;s:2:\"91\";i:6;s:2:\"95\";}', 'no'),
(918, '_transient_timeout_fb_d153b76e8652f3c530bb846f0c95553a', '1515146663', 'no'),
(919, '_transient_fb_d153b76e8652f3c530bb846f0c95553a', '0', 'no'),
(920, '_transient_timeout_twitter_d153b76e8652f3c530bb846f0c95553a', '1515146663', 'no'),
(921, '_transient_twitter_d153b76e8652f3c530bb846f0c95553a', '0', 'no'),
(922, '_transient_timeout_gp_d153b76e8652f3c530bb846f0c95553a', '1515146664', 'no'),
(923, '_transient_gp_d153b76e8652f3c530bb846f0c95553a', '0', 'no'),
(924, '_transient_timeout_pinterest_d153b76e8652f3c530bb846f0c95553a', '1515146665', 'no'),
(925, '_transient_pinterest_d153b76e8652f3c530bb846f0c95553a', '0', 'no'),
(926, '_transient_timeout_linkedin_d153b76e8652f3c530bb846f0c95553a', '1515146665', 'no'),
(927, '_transient_linkedin_d153b76e8652f3c530bb846f0c95553a', '0', 'no'),
(928, '_transient_timeout_wc_related_85', '1515146666', 'no'),
(929, '_transient_wc_related_85', 'a:7:{i:0;s:2:\"80\";i:1;s:2:\"83\";i:2;s:2:\"87\";i:3;s:2:\"89\";i:4;s:2:\"91\";i:5;s:2:\"93\";i:6;s:2:\"95\";}', 'no'),
(932, '_site_transient_timeout_theme_roots', '1515126939', 'no'),
(933, '_site_transient_theme_roots', 'a:11:{s:12:\"algibro-shop\";s:7:\"/themes\";s:10:\"azera-shop\";s:7:\"/themes\";s:18:\"bb-ecommerce-store\";s:7:\"/themes\";s:16:\"ecommerce-market\";s:7:\"/themes\";s:7:\"mystyle\";s:7:\"/themes\";s:10:\"storefront\";s:7:\"/themes\";s:10:\"storevilla\";s:7:\"/themes\";s:18:\"tc-e-commerce-shop\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(934, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1515125152;s:7:\"checked\";a:11:{s:12:\"algibro-shop\";s:5:\"1.0.2\";s:10:\"azera-shop\";s:6:\"1.1.13\";s:18:\"bb-ecommerce-store\";s:7:\"1.2.4.4\";s:16:\"ecommerce-market\";s:5:\"1.0.5\";s:7:\"mystyle\";s:6:\"1.2.12\";s:10:\"storefront\";s:5:\"2.2.5\";s:10:\"storevilla\";s:5:\"1.2.2\";s:18:\"tc-e-commerce-shop\";s:5:\"0.3.3\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:1:{s:16:\"ecommerce-market\";a:4:{s:5:\"theme\";s:16:\"ecommerce-market\";s:11:\"new_version\";s:5:\"1.0.6\";s:3:\"url\";s:46:\"https://wordpress.org/themes/ecommerce-market/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/theme/ecommerce-market.1.0.6.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(935, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1515125147;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.2.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.1\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:8:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:7:\"default\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";s:7:\"default\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"accesspress-social-share/accesspress-social-share.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/accesspress-social-share\";s:4:\"slug\";s:24:\"accesspress-social-share\";s:6:\"plugin\";s:53:\"accesspress-social-share/accesspress-social-share.php\";s:11:\"new_version\";s:5:\"4.3.5\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/accesspress-social-share/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/accesspress-social-share.4.3.5.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:77:\"https://ps.w.org/accesspress-social-share/assets/icon-128x128.jpg?rev=1338635\";s:2:\"2x\";s:77:\"https://ps.w.org/accesspress-social-share/assets/icon-256x256.jpg?rev=1338635\";s:7:\"default\";s:77:\"https://ps.w.org/accesspress-social-share/assets/icon-256x256.jpg?rev=1338635\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:80:\"https://ps.w.org/accesspress-social-share/assets/banner-1544x500.jpg?rev=1338635\";s:2:\"1x\";s:79:\"https://ps.w.org/accesspress-social-share/assets/banner-772x250.jpg?rev=1338635\";s:7:\"default\";s:80:\"https://ps.w.org/accesspress-social-share/assets/banner-1544x500.jpg?rev=1338635\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.2.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.2.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:7:\"default\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";s:7:\"default\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}}s:70:\"woocommerce-login-and-registration/woocommerce_login_signup_plugin.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:48:\"w.org/plugins/woocommerce-login-and-registration\";s:4:\"slug\";s:34:\"woocommerce-login-and-registration\";s:6:\"plugin\";s:70:\"woocommerce-login-and-registration/woocommerce_login_signup_plugin.php\";s:11:\"new_version\";s:5:\"1.6.1\";s:3:\"url\";s:65:\"https://wordpress.org/plugins/woocommerce-login-and-registration/\";s:7:\"package\";s:83:\"https://downloads.wordpress.org/plugin/woocommerce-login-and-registration.1.6.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:87:\"https://ps.w.org/woocommerce-login-and-registration/assets/icon-128x128.jpg?rev=1298125\";s:2:\"2x\";s:87:\"https://ps.w.org/woocommerce-login-and-registration/assets/icon-256x256.jpg?rev=1298125\";s:7:\"default\";s:87:\"https://ps.w.org/woocommerce-login-and-registration/assets/icon-256x256.jpg?rev=1298125\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:89:\"https://ps.w.org/woocommerce-login-and-registration/assets/banner-772x250.jpg?rev=1297957\";s:7:\"default\";s:89:\"https://ps.w.org/woocommerce-login-and-registration/assets/banner-772x250.jpg?rev=1297957\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"wow-facebook-login/wow-facebook-login.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/wow-facebook-login\";s:4:\"slug\";s:18:\"wow-facebook-login\";s:6:\"plugin\";s:41:\"wow-facebook-login/wow-facebook-login.php\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wow-facebook-login/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wow-facebook-login.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:71:\"https://ps.w.org/wow-facebook-login/assets/icon-128x128.png?rev=1558059\";s:2:\"2x\";s:71:\"https://ps.w.org/wow-facebook-login/assets/icon-256x256.png?rev=1558059\";s:7:\"default\";s:71:\"https://ps.w.org/wow-facebook-login/assets/icon-256x256.png?rev=1558059\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:73:\"https://ps.w.org/wow-facebook-login/assets/banner-772x250.png?rev=1558059\";s:7:\"default\";s:73:\"https://ps.w.org/wow-facebook-login/assets/banner-772x250.png?rev=1558059\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"yith-woocommerce-compare/init.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/yith-woocommerce-compare\";s:4:\"slug\";s:24:\"yith-woocommerce-compare\";s:6:\"plugin\";s:33:\"yith-woocommerce-compare/init.php\";s:11:\"new_version\";s:5:\"2.2.3\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/yith-woocommerce-compare/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/yith-woocommerce-compare.2.2.3.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:77:\"https://ps.w.org/yith-woocommerce-compare/assets/icon-128x128.jpg?rev=1460909\";s:0:\"\";s:75:\"https://ps.w.org/yith-woocommerce-compare/assets/icon-64x64.jpg?rev=1460909\";s:7:\"default\";s:77:\"https://ps.w.org/yith-woocommerce-compare/assets/icon-128x128.jpg?rev=1460909\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:80:\"https://ps.w.org/yith-woocommerce-compare/assets/banner-1544x500.jpg?rev=1460909\";s:2:\"1x\";s:79:\"https://ps.w.org/yith-woocommerce-compare/assets/banner-772x250.jpg?rev=1460909\";s:7:\"default\";s:80:\"https://ps.w.org/yith-woocommerce-compare/assets/banner-1544x500.jpg?rev=1460909\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"yith-woocommerce-quick-view/init.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:41:\"w.org/plugins/yith-woocommerce-quick-view\";s:4:\"slug\";s:27:\"yith-woocommerce-quick-view\";s:6:\"plugin\";s:36:\"yith-woocommerce-quick-view/init.php\";s:11:\"new_version\";s:5:\"1.2.2\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/yith-woocommerce-quick-view/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/yith-woocommerce-quick-view.1.2.2.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:80:\"https://ps.w.org/yith-woocommerce-quick-view/assets/icon-128x128.jpg?rev=1460911\";s:0:\"\";s:78:\"https://ps.w.org/yith-woocommerce-quick-view/assets/icon-64x64.jpg?rev=1460911\";s:7:\"default\";s:80:\"https://ps.w.org/yith-woocommerce-quick-view/assets/icon-128x128.jpg?rev=1460911\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:83:\"https://ps.w.org/yith-woocommerce-quick-view/assets/banner-1544x500.jpg?rev=1460911\";s:2:\"1x\";s:82:\"https://ps.w.org/yith-woocommerce-quick-view/assets/banner-772x250.jpg?rev=1460911\";s:7:\"default\";s:83:\"https://ps.w.org/yith-woocommerce-quick-view/assets/banner-1544x500.jpg?rev=1460911\";}s:11:\"banners_rtl\";a:0:{}}s:34:\"yith-woocommerce-wishlist/init.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:39:\"w.org/plugins/yith-woocommerce-wishlist\";s:4:\"slug\";s:25:\"yith-woocommerce-wishlist\";s:6:\"plugin\";s:34:\"yith-woocommerce-wishlist/init.php\";s:11:\"new_version\";s:5:\"2.1.2\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/yith-woocommerce-wishlist/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/yith-woocommerce-wishlist.2.1.2.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:78:\"https://ps.w.org/yith-woocommerce-wishlist/assets/icon-128x128.jpg?rev=1461336\";s:0:\"\";s:76:\"https://ps.w.org/yith-woocommerce-wishlist/assets/icon-64x64.jpg?rev=1461336\";s:7:\"default\";s:78:\"https://ps.w.org/yith-woocommerce-wishlist/assets/icon-128x128.jpg?rev=1461336\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:81:\"https://ps.w.org/yith-woocommerce-wishlist/assets/banner-1544x500.jpg?rev=1461336\";s:2:\"1x\";s:80:\"https://ps.w.org/yith-woocommerce-wishlist/assets/banner-772x250.jpg?rev=1461336\";s:7:\"default\";s:81:\"https://ps.w.org/yith-woocommerce-wishlist/assets/banner-1544x500.jpg?rev=1461336\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(936, '_transient_timeout_fb_7f1c97bfba289b5e9ff7b64775ebefbe', '1515211676', 'no'),
(937, '_transient_fb_7f1c97bfba289b5e9ff7b64775ebefbe', '0', 'no'),
(938, '_transient_timeout_twitter_7f1c97bfba289b5e9ff7b64775ebefbe', '1515211677', 'no'),
(939, '_transient_twitter_7f1c97bfba289b5e9ff7b64775ebefbe', '0', 'no'),
(940, '_transient_timeout_gp_7f1c97bfba289b5e9ff7b64775ebefbe', '1515211679', 'no'),
(941, '_transient_gp_7f1c97bfba289b5e9ff7b64775ebefbe', '0', 'no'),
(942, '_transient_timeout_pinterest_7f1c97bfba289b5e9ff7b64775ebefbe', '1515211681', 'no'),
(943, '_transient_pinterest_7f1c97bfba289b5e9ff7b64775ebefbe', '0', 'no'),
(944, '_transient_timeout_linkedin_7f1c97bfba289b5e9ff7b64775ebefbe', '1515211685', 'no'),
(945, '_transient_linkedin_7f1c97bfba289b5e9ff7b64775ebefbe', '0', 'no'),
(946, '_transient_timeout_wc_related_95', '1515211686', 'no'),
(947, '_transient_wc_related_95', 'a:7:{i:0;s:2:\"80\";i:1;s:2:\"83\";i:2;s:2:\"85\";i:3;s:2:\"87\";i:4;s:2:\"89\";i:5;s:2:\"91\";i:6;s:2:\"93\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(5, 9, '_wc_review_count', '0'),
(6, 9, '_wc_rating_count', 'a:0:{}'),
(7, 9, '_wc_average_rating', '0'),
(8, 9, '_edit_last', '1'),
(9, 9, '_edit_lock', '1514118403:1'),
(10, 10, '_wp_attached_file', '2017/12/Sony-XB950B1-Extra-Bass-Wireless-Headphones-with-App-Control-Black-2017-model.jpg'),
(11, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:218;s:6:\"height\";i:218;s:4:\"file\";s:89:\"2017/12/Sony-XB950B1-Extra-Bass-Wireless-Headphones-with-App-Control-Black-2017-model.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:89:\"Sony-XB950B1-Extra-Bass-Wireless-Headphones-with-App-Control-Black-2017-model-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:89:\"Sony-XB950B1-Extra-Bass-Wireless-Headphones-with-App-Control-Black-2017-model-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12, 9, '_thumbnail_id', '10'),
(13, 9, '_sku', ''),
(14, 9, '_regular_price', '500'),
(15, 9, '_sale_price', '339'),
(16, 9, '_sale_price_dates_from', ''),
(17, 9, '_sale_price_dates_to', ''),
(18, 9, 'total_sales', '0'),
(19, 9, '_tax_status', 'taxable'),
(20, 9, '_tax_class', ''),
(21, 9, '_manage_stock', 'no'),
(22, 9, '_backorders', 'no'),
(23, 9, '_sold_individually', 'no'),
(24, 9, '_weight', '1'),
(25, 9, '_length', '10'),
(26, 9, '_width', '5'),
(27, 9, '_height', '7'),
(28, 9, '_upsell_ids', 'a:0:{}'),
(29, 9, '_crosssell_ids', 'a:0:{}'),
(30, 9, '_purchase_note', ''),
(31, 9, '_default_attributes', 'a:0:{}'),
(32, 9, '_virtual', 'no'),
(33, 9, '_downloadable', 'no'),
(34, 9, '_product_image_gallery', ''),
(35, 9, '_download_limit', '-1'),
(36, 9, '_download_expiry', '-1'),
(37, 9, '_stock', NULL),
(38, 9, '_stock_status', 'instock'),
(39, 9, '_product_version', '3.2.6'),
(40, 9, '_price', '339'),
(41, 12, '_wc_review_count', '0'),
(42, 12, '_wc_rating_count', 'a:0:{}'),
(43, 12, '_wc_average_rating', '0'),
(44, 13, '_wp_attached_file', '2017/12/Mpow-059-Bluetooth-Headphones-Over-Ear-Hi-Fi-Stereo-Wireless-Headset.jpg'),
(45, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:218;s:6:\"height\";i:218;s:4:\"file\";s:80:\"2017/12/Mpow-059-Bluetooth-Headphones-Over-Ear-Hi-Fi-Stereo-Wireless-Headset.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:80:\"Mpow-059-Bluetooth-Headphones-Over-Ear-Hi-Fi-Stereo-Wireless-Headset-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:80:\"Mpow-059-Bluetooth-Headphones-Over-Ear-Hi-Fi-Stereo-Wireless-Headset-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(46, 12, '_edit_last', '1'),
(47, 12, '_thumbnail_id', '13'),
(48, 12, '_sku', ''),
(49, 12, '_regular_price', '700'),
(50, 12, '_sale_price', '549'),
(51, 12, '_sale_price_dates_from', ''),
(52, 12, '_sale_price_dates_to', ''),
(53, 12, 'total_sales', '0'),
(54, 12, '_tax_status', 'taxable'),
(55, 12, '_tax_class', ''),
(56, 12, '_manage_stock', 'no'),
(57, 12, '_backorders', 'no'),
(58, 12, '_sold_individually', 'no'),
(59, 12, '_weight', '1'),
(60, 12, '_length', '10'),
(61, 12, '_width', '5'),
(62, 12, '_height', '7'),
(63, 12, '_upsell_ids', 'a:0:{}'),
(64, 12, '_crosssell_ids', 'a:0:{}'),
(65, 12, '_purchase_note', ''),
(66, 12, '_default_attributes', 'a:0:{}'),
(67, 12, '_virtual', 'no'),
(68, 12, '_downloadable', 'no'),
(69, 12, '_product_image_gallery', ''),
(70, 12, '_download_limit', '-1'),
(71, 12, '_download_expiry', '-1'),
(72, 12, '_stock', NULL),
(73, 12, '_stock_status', 'instock'),
(74, 12, '_product_version', '3.2.6'),
(75, 12, '_price', '549'),
(76, 12, '_edit_lock', '1514027775:1'),
(77, 14, '_wc_review_count', '0'),
(78, 14, '_wc_rating_count', 'a:0:{}'),
(79, 14, '_wc_average_rating', '0'),
(80, 14, '_edit_last', '1'),
(81, 14, '_edit_lock', '1514032442:1'),
(82, 15, '_wp_attached_file', '2017/12/51XaAdw5gzL._AC_US160_.jpg'),
(83, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:160;s:6:\"height\";i:160;s:4:\"file\";s:34:\"2017/12/51XaAdw5gzL._AC_US160_.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"51XaAdw5gzL._AC_US160_-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(84, 14, '_thumbnail_id', '15'),
(85, 14, '_sku', ''),
(86, 14, '_regular_price', '19900'),
(87, 14, '_sale_price', '13500'),
(88, 14, '_sale_price_dates_from', ''),
(89, 14, '_sale_price_dates_to', ''),
(90, 14, 'total_sales', '0'),
(91, 14, '_tax_status', 'taxable'),
(92, 14, '_tax_class', ''),
(93, 14, '_manage_stock', 'no'),
(94, 14, '_backorders', 'no'),
(95, 14, '_sold_individually', 'no'),
(96, 14, '_weight', '2'),
(97, 14, '_length', '42'),
(98, 14, '_width', '42'),
(99, 14, '_height', '20'),
(100, 14, '_upsell_ids', 'a:0:{}'),
(101, 14, '_crosssell_ids', 'a:0:{}'),
(102, 14, '_purchase_note', ''),
(103, 14, '_default_attributes', 'a:0:{}'),
(104, 14, '_virtual', 'no'),
(105, 14, '_downloadable', 'no'),
(106, 14, '_product_image_gallery', ''),
(107, 14, '_download_limit', '-1'),
(108, 14, '_download_expiry', '-1'),
(109, 14, '_stock', NULL),
(110, 14, '_stock_status', 'instock'),
(111, 14, '_product_version', '3.2.6'),
(112, 14, '_price', '13500'),
(113, 16, '_wc_review_count', '0'),
(114, 16, '_wc_rating_count', 'a:0:{}'),
(115, 16, '_wc_average_rating', '0'),
(116, 16, '_edit_last', '1'),
(117, 16, '_edit_lock', '1514113997:1'),
(118, 17, '_wp_attached_file', '2017/12/lp.jpg'),
(119, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:196;s:4:\"file\";s:14:\"2017/12/lp.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"lp-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"lp-300x196.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:196;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"lp-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:14:\"lp-300x196.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:196;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(120, 16, '_thumbnail_id', '50'),
(121, 16, '_sku', ''),
(122, 16, '_regular_price', '33490'),
(123, 16, '_sale_price', '27499'),
(124, 16, '_sale_price_dates_from', ''),
(125, 16, '_sale_price_dates_to', ''),
(126, 16, 'total_sales', '0'),
(127, 16, '_tax_status', 'taxable'),
(128, 16, '_tax_class', ''),
(129, 16, '_manage_stock', 'no'),
(130, 16, '_backorders', 'no'),
(131, 16, '_sold_individually', 'no'),
(132, 16, '_weight', '1'),
(133, 16, '_length', '20'),
(134, 16, '_width', '20'),
(135, 16, '_height', '10'),
(136, 16, '_upsell_ids', 'a:0:{}'),
(137, 16, '_crosssell_ids', 'a:0:{}'),
(138, 16, '_purchase_note', ''),
(139, 16, '_default_attributes', 'a:0:{}'),
(140, 16, '_virtual', 'no'),
(141, 16, '_downloadable', 'no'),
(142, 16, '_product_image_gallery', ''),
(143, 16, '_download_limit', '-1'),
(144, 16, '_download_expiry', '-1'),
(145, 16, '_stock', NULL),
(146, 16, '_stock_status', 'instock'),
(147, 16, '_product_version', '3.2.6'),
(148, 16, '_price', '27499'),
(149, 18, '_edit_lock', '1514028538:1'),
(150, 18, '_wp_trash_meta_status', 'publish'),
(151, 18, '_wp_trash_meta_time', '1514028538'),
(152, 17, '_wp_attachment_is_custom_background', 'storefront'),
(153, 19, '_wp_trash_meta_status', 'publish'),
(154, 19, '_wp_trash_meta_time', '1514028627'),
(155, 20, '_wp_attached_file', '2017/12/cropped-51XaAdw5gzL._AC_US160_-1.jpg'),
(156, 20, '_wp_attachment_context', 'custom-header'),
(157, 20, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:92;s:6:\"height\";i:54;s:4:\"file\";s:44:\"2017/12/cropped-51XaAdw5gzL._AC_US160_-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:15;}'),
(158, 20, '_wp_attachment_custom_header_last_used_storefront', '1514028781'),
(159, 20, '_wp_attachment_is_custom_header', 'storefront'),
(161, 22, '_wp_attached_file', '2017/12/cropped-Mpow-059-Bluetooth-Headphones-Over-Ear-Hi-Fi-Stereo-Wireless-Headset.jpg'),
(162, 22, '_wp_attachment_context', 'custom-header'),
(163, 22, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:218;s:6:\"height\";i:56;s:4:\"file\";s:88:\"2017/12/cropped-Mpow-059-Bluetooth-Headphones-Over-Ear-Hi-Fi-Stereo-Wireless-Headset.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:87:\"cropped-Mpow-059-Bluetooth-Headphones-Over-Ear-Hi-Fi-Stereo-Wireless-Headset-150x56.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:56;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:87:\"cropped-Mpow-059-Bluetooth-Headphones-Over-Ear-Hi-Fi-Stereo-Wireless-Headset-180x56.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:56;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:13;}'),
(164, 22, '_wp_attachment_custom_header_last_used_storefront', '1514028808'),
(165, 22, '_wp_attachment_is_custom_header', 'storefront'),
(167, 23, '_edit_lock', '1514033614:1'),
(168, 23, '_wp_trash_meta_status', 'publish'),
(169, 23, '_wp_trash_meta_time', '1514033615'),
(170, 24, '_menu_item_type', 'custom'),
(171, 24, '_menu_item_menu_item_parent', '0'),
(172, 24, '_menu_item_object_id', '24'),
(173, 24, '_menu_item_object', 'custom'),
(174, 24, '_menu_item_target', ''),
(175, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(176, 24, '_menu_item_xfn', ''),
(177, 24, '_menu_item_url', 'http://localhost/ShopperHolics/wordpress/'),
(178, 24, '_menu_item_orphaned', '1514033785'),
(179, 25, '_menu_item_type', 'post_type'),
(180, 25, '_menu_item_menu_item_parent', '0'),
(181, 25, '_menu_item_object_id', '5'),
(182, 25, '_menu_item_object', 'page'),
(183, 25, '_menu_item_target', ''),
(184, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(185, 25, '_menu_item_xfn', ''),
(186, 25, '_menu_item_url', ''),
(187, 25, '_menu_item_orphaned', '1514033786'),
(188, 26, '_menu_item_type', 'post_type'),
(189, 26, '_menu_item_menu_item_parent', '0'),
(190, 26, '_menu_item_object_id', '6'),
(191, 26, '_menu_item_object', 'page'),
(192, 26, '_menu_item_target', ''),
(193, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(194, 26, '_menu_item_xfn', ''),
(195, 26, '_menu_item_url', ''),
(196, 26, '_menu_item_orphaned', '1514033787'),
(197, 27, '_menu_item_type', 'post_type'),
(198, 27, '_menu_item_menu_item_parent', '0'),
(199, 27, '_menu_item_object_id', '7'),
(200, 27, '_menu_item_object', 'page'),
(201, 27, '_menu_item_target', ''),
(202, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(203, 27, '_menu_item_xfn', ''),
(204, 27, '_menu_item_url', ''),
(205, 27, '_menu_item_orphaned', '1514033787'),
(206, 28, '_menu_item_type', 'post_type'),
(207, 28, '_menu_item_menu_item_parent', '0'),
(208, 28, '_menu_item_object_id', '2'),
(209, 28, '_menu_item_object', 'page'),
(210, 28, '_menu_item_target', ''),
(211, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(212, 28, '_menu_item_xfn', ''),
(213, 28, '_menu_item_url', ''),
(214, 28, '_menu_item_orphaned', '1514033788'),
(215, 29, '_menu_item_type', 'post_type'),
(216, 29, '_menu_item_menu_item_parent', '0'),
(217, 29, '_menu_item_object_id', '4'),
(218, 29, '_menu_item_object', 'page'),
(219, 29, '_menu_item_target', ''),
(220, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(221, 29, '_menu_item_xfn', ''),
(222, 29, '_menu_item_url', ''),
(223, 29, '_menu_item_orphaned', '1514033788'),
(224, 30, '_wp_trash_meta_status', 'publish'),
(225, 30, '_wp_trash_meta_time', '1514033914'),
(226, 31, '_edit_lock', '1514034304:1'),
(227, 31, '_wp_trash_meta_status', 'publish'),
(228, 31, '_wp_trash_meta_time', '1514034305'),
(229, 32, '_wp_attached_file', '2017/12/background.jpg'),
(230, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1925;s:6:\"height\";i:1287;s:4:\"file\";s:22:\"2017/12/background.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"background-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"background-300x201.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"background-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"background-1024x685.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:685;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"background-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"background-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"background-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"azera-shop-post-thumbnail-big\";a:4:{s:4:\"file\";s:22:\"background-730x340.jpg\";s:5:\"width\";i:730;s:6:\"height\";i:340;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"azera-shop-post-thumbnail-mobile\";a:4:{s:4:\"file\";s:22:\"background-500x233.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:233;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"azera_shop_home_prod\";a:4:{s:4:\"file\";s:22:\"background-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(231, 33, '_edit_lock', '1514035542:1'),
(232, 33, '_wp_trash_meta_status', 'publish'),
(233, 33, '_wp_trash_meta_time', '1514035542'),
(234, 34, '_wp_attached_file', '2017/12/cropped-background-1.jpg'),
(235, 34, '_wp_attachment_context', 'custom-header'),
(236, 34, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:518;s:4:\"file\";s:32:\"2017/12/cropped-background-1.jpg\";s:5:\"sizes\";a:18:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"cropped-background-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"cropped-background-1-300x155.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:155;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"cropped-background-1-768x398.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:398;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"cropped-background-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"cropped-background-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"cropped-background-1-600x518.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:518;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:33:\"ecommerce-market-product-carousel\";a:4:{s:4:\"file\";s:32:\"cropped-background-1-265x230.jpg\";s:5:\"width\";i:265;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"ecommerce-market-product-tab\";a:4:{s:4:\"file\";s:30:\"cropped-background-1-50x50.jpg\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:42:\"ecommerce-market-product-collection-medium\";a:4:{s:4:\"file\";s:32:\"cropped-background-1-347x246.jpg\";s:5:\"width\";i:347;s:6:\"height\";i:246;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:41:\"ecommerce-market-product-collection-large\";a:4:{s:4:\"file\";s:32:\"cropped-background-1-376x518.jpg\";s:5:\"width\";i:376;s:6:\"height\";i:518;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:42:\"ecommerce-market-product-new-arrival-large\";a:4:{s:4:\"file\";s:32:\"cropped-background-1-305x518.jpg\";s:5:\"width\";i:305;s:6:\"height\";i:518;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:42:\"ecommerce-market-product-new-arrival-small\";a:4:{s:4:\"file\";s:32:\"cropped-background-1-288x288.jpg\";s:5:\"width\";i:288;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:43:\"ecommerce-market-product-new-arrival-medium\";a:4:{s:4:\"file\";s:32:\"cropped-background-1-488x288.jpg\";s:5:\"width\";i:488;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"ecommerce-market-subscription\";a:4:{s:4:\"file\";s:32:\"cropped-background-1-676x486.jpg\";s:5:\"width\";i:676;s:6:\"height\";i:486;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"ecommerce-market-latest-blog\";a:4:{s:4:\"file\";s:32:\"cropped-background-1-264x163.jpg\";s:5:\"width\";i:264;s:6:\"height\";i:163;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"ecommerce-market-recent-posts\";a:4:{s:4:\"file\";s:31:\"cropped-background-1-98x102.jpg\";s:5:\"width\";i:98;s:6:\"height\";i:102;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"ecommerce-market-testimonial\";a:4:{s:4:\"file\";s:32:\"cropped-background-1-676x511.jpg\";s:5:\"width\";i:676;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"ecommerce-market-archive\";a:4:{s:4:\"file\";s:32:\"cropped-background-1-362x269.jpg\";s:5:\"width\";i:362;s:6:\"height\";i:269;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:32;}'),
(237, 34, '_wp_attachment_custom_header_last_used_ecommerce-market', '1514037292'),
(238, 34, '_wp_attachment_is_custom_header', 'ecommerce-market'),
(239, 35, '_wp_trash_meta_status', 'publish'),
(240, 35, '_wp_trash_meta_time', '1514037063'),
(241, 36, '_wp_attached_file', '2017/12/cropped-lp.jpg'),
(242, 36, '_wp_attachment_context', 'custom-header'),
(243, 36, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:283;s:4:\"file\";s:22:\"2017/12/cropped-lp.jpg\";s:5:\"sizes\";a:18:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"cropped-lp-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"cropped-lp-300x85.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:85;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"cropped-lp-768x217.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:217;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"cropped-lp-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"cropped-lp-300x283.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:283;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"cropped-lp-600x283.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:283;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:33:\"ecommerce-market-product-carousel\";a:4:{s:4:\"file\";s:22:\"cropped-lp-265x230.jpg\";s:5:\"width\";i:265;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"ecommerce-market-product-tab\";a:4:{s:4:\"file\";s:20:\"cropped-lp-50x50.jpg\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:42:\"ecommerce-market-product-collection-medium\";a:4:{s:4:\"file\";s:22:\"cropped-lp-347x246.jpg\";s:5:\"width\";i:347;s:6:\"height\";i:246;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:41:\"ecommerce-market-product-collection-large\";a:4:{s:4:\"file\";s:22:\"cropped-lp-376x283.jpg\";s:5:\"width\";i:376;s:6:\"height\";i:283;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:42:\"ecommerce-market-product-new-arrival-large\";a:4:{s:4:\"file\";s:22:\"cropped-lp-305x283.jpg\";s:5:\"width\";i:305;s:6:\"height\";i:283;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:42:\"ecommerce-market-product-new-arrival-small\";a:4:{s:4:\"file\";s:22:\"cropped-lp-288x283.jpg\";s:5:\"width\";i:288;s:6:\"height\";i:283;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:43:\"ecommerce-market-product-new-arrival-medium\";a:4:{s:4:\"file\";s:22:\"cropped-lp-488x283.jpg\";s:5:\"width\";i:488;s:6:\"height\";i:283;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"ecommerce-market-subscription\";a:4:{s:4:\"file\";s:22:\"cropped-lp-676x283.jpg\";s:5:\"width\";i:676;s:6:\"height\";i:283;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"ecommerce-market-latest-blog\";a:4:{s:4:\"file\";s:22:\"cropped-lp-264x163.jpg\";s:5:\"width\";i:264;s:6:\"height\";i:163;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"ecommerce-market-recent-posts\";a:4:{s:4:\"file\";s:21:\"cropped-lp-98x102.jpg\";s:5:\"width\";i:98;s:6:\"height\";i:102;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"ecommerce-market-testimonial\";a:4:{s:4:\"file\";s:22:\"cropped-lp-676x283.jpg\";s:5:\"width\";i:676;s:6:\"height\";i:283;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"ecommerce-market-archive\";a:4:{s:4:\"file\";s:22:\"cropped-lp-362x269.jpg\";s:5:\"width\";i:362;s:6:\"height\";i:269;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:17;}'),
(244, 36, '_wp_attachment_custom_header_last_used_ecommerce-market', '1514037076'),
(245, 36, '_wp_attachment_is_custom_header', 'ecommerce-market'),
(246, 37, '_edit_lock', '1514037088:1'),
(247, 37, '_wp_trash_meta_status', 'publish'),
(248, 37, '_wp_trash_meta_time', '1514037088'),
(249, 38, '_wp_attached_file', '2017/12/cropped-cropped-51XaAdw5gzL._AC_US160_-1.jpg'),
(250, 38, '_wp_attachment_context', 'custom-header'),
(251, 38, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:554;s:4:\"file\";s:52:\"2017/12/cropped-cropped-51XaAdw5gzL._AC_US160_-1.jpg\";s:5:\"sizes\";a:18:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"cropped-cropped-51XaAdw5gzL._AC_US160_-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"cropped-cropped-51XaAdw5gzL._AC_US160_-1-300x166.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:166;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:52:\"cropped-cropped-51XaAdw5gzL._AC_US160_-1-768x425.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:425;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:52:\"cropped-cropped-51XaAdw5gzL._AC_US160_-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:52:\"cropped-cropped-51XaAdw5gzL._AC_US160_-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:52:\"cropped-cropped-51XaAdw5gzL._AC_US160_-1-600x554.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:554;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:33:\"ecommerce-market-product-carousel\";a:4:{s:4:\"file\";s:52:\"cropped-cropped-51XaAdw5gzL._AC_US160_-1-265x230.jpg\";s:5:\"width\";i:265;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"ecommerce-market-product-tab\";a:4:{s:4:\"file\";s:50:\"cropped-cropped-51XaAdw5gzL._AC_US160_-1-50x50.jpg\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:42:\"ecommerce-market-product-collection-medium\";a:4:{s:4:\"file\";s:52:\"cropped-cropped-51XaAdw5gzL._AC_US160_-1-347x246.jpg\";s:5:\"width\";i:347;s:6:\"height\";i:246;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:41:\"ecommerce-market-product-collection-large\";a:4:{s:4:\"file\";s:52:\"cropped-cropped-51XaAdw5gzL._AC_US160_-1-376x554.jpg\";s:5:\"width\";i:376;s:6:\"height\";i:554;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:42:\"ecommerce-market-product-new-arrival-large\";a:4:{s:4:\"file\";s:52:\"cropped-cropped-51XaAdw5gzL._AC_US160_-1-305x554.jpg\";s:5:\"width\";i:305;s:6:\"height\";i:554;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:42:\"ecommerce-market-product-new-arrival-small\";a:4:{s:4:\"file\";s:52:\"cropped-cropped-51XaAdw5gzL._AC_US160_-1-288x288.jpg\";s:5:\"width\";i:288;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:43:\"ecommerce-market-product-new-arrival-medium\";a:4:{s:4:\"file\";s:52:\"cropped-cropped-51XaAdw5gzL._AC_US160_-1-488x288.jpg\";s:5:\"width\";i:488;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"ecommerce-market-subscription\";a:4:{s:4:\"file\";s:52:\"cropped-cropped-51XaAdw5gzL._AC_US160_-1-676x486.jpg\";s:5:\"width\";i:676;s:6:\"height\";i:486;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"ecommerce-market-latest-blog\";a:4:{s:4:\"file\";s:52:\"cropped-cropped-51XaAdw5gzL._AC_US160_-1-264x163.jpg\";s:5:\"width\";i:264;s:6:\"height\";i:163;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"ecommerce-market-recent-posts\";a:4:{s:4:\"file\";s:51:\"cropped-cropped-51XaAdw5gzL._AC_US160_-1-98x102.jpg\";s:5:\"width\";i:98;s:6:\"height\";i:102;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"ecommerce-market-testimonial\";a:4:{s:4:\"file\";s:52:\"cropped-cropped-51XaAdw5gzL._AC_US160_-1-676x511.jpg\";s:5:\"width\";i:676;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"ecommerce-market-archive\";a:4:{s:4:\"file\";s:52:\"cropped-cropped-51XaAdw5gzL._AC_US160_-1-362x269.jpg\";s:5:\"width\";i:362;s:6:\"height\";i:269;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:20;}'),
(252, 38, '_wp_attachment_custom_header_last_used_ecommerce-market', '1514037254'),
(253, 38, '_wp_attachment_is_custom_header', 'ecommerce-market'),
(254, 39, '_edit_lock', '1514037292:1'),
(255, 39, '_wp_trash_meta_status', 'publish'),
(256, 39, '_wp_trash_meta_time', '1514037292'),
(257, 41, '_wp_attached_file', '2017/12/cropped-background-2.jpg'),
(258, 41, '_wp_attachment_context', 'custom-header'),
(259, 41, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1600;s:6:\"height\";i:400;s:4:\"file\";s:32:\"2017/12/cropped-background-2.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"cropped-background-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"cropped-background-2-300x75.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:75;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"cropped-background-2-768x192.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"cropped-background-2-1024x256.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:256;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"cropped-background-2-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"cropped-background-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"cropped-background-2-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:33:\"tc-e-commerce-shop-homepage-thumb\";a:4:{s:4:\"file\";s:32:\"cropped-background-2-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:32;}'),
(260, 41, '_wp_attachment_custom_header_last_used_tc-e-commerce-shop', '1514037855'),
(261, 41, '_wp_attachment_is_custom_header', 'tc-e-commerce-shop'),
(262, 42, '_wp_trash_meta_status', 'publish'),
(263, 42, '_wp_trash_meta_time', '1514037624'),
(264, 43, '_edit_lock', '1514037695:1'),
(265, 43, '_wp_trash_meta_status', 'publish'),
(266, 43, '_wp_trash_meta_time', '1514037696'),
(267, 44, '_edit_lock', '1514037742:1'),
(268, 44, '_wp_trash_meta_status', 'publish'),
(269, 44, '_wp_trash_meta_time', '1514037743'),
(270, 45, '_edit_lock', '1514037855:1'),
(271, 45, '_wp_trash_meta_status', 'publish'),
(272, 45, '_wp_trash_meta_time', '1514037855'),
(273, 46, '_wp_attached_file', '2017/12/lenovo-notebook-original-imaery672hsumujs-e1514112863843.jpeg'),
(274, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:273;s:6:\"height\";i:160;s:4:\"file\";s:69:\"2017/12/lenovo-notebook-original-imaery672hsumujs-e1514112863843.jpeg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:54:\"lenovo-notebook-original-imaery672hsumujs-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:54:\"lenovo-notebook-original-imaery672hsumujs-300x176.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:176;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:54:\"lenovo-notebook-original-imaery672hsumujs-768x450.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:54:\"lenovo-notebook-original-imaery672hsumujs-180x180.jpeg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:54:\"lenovo-notebook-original-imaery672hsumujs-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:54:\"lenovo-notebook-original-imaery672hsumujs-600x487.jpeg\";s:5:\"width\";i:600;s:6:\"height\";i:487;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:33:\"tc-e-commerce-shop-homepage-thumb\";a:4:{s:4:\"file\";s:54:\"lenovo-notebook-original-imaery672hsumujs-240x145.jpeg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(275, 46, '_wp_attachment_backup_sizes', 'a:1:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:832;s:6:\"height\";i:487;s:4:\"file\";s:46:\"lenovo-notebook-original-imaery672hsumujs.jpeg\";}}'),
(276, 47, '_wp_attached_file', '2017/12/lenovo-notebook-original-imaery672hsumujs-1.jpeg'),
(277, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:832;s:6:\"height\";i:487;s:4:\"file\";s:56:\"2017/12/lenovo-notebook-original-imaery672hsumujs-1.jpeg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:56:\"lenovo-notebook-original-imaery672hsumujs-1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:56:\"lenovo-notebook-original-imaery672hsumujs-1-300x176.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:176;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:56:\"lenovo-notebook-original-imaery672hsumujs-1-768x450.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:56:\"lenovo-notebook-original-imaery672hsumujs-1-180x180.jpeg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:56:\"lenovo-notebook-original-imaery672hsumujs-1-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:56:\"lenovo-notebook-original-imaery672hsumujs-1-600x487.jpeg\";s:5:\"width\";i:600;s:6:\"height\";i:487;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:33:\"tc-e-commerce-shop-homepage-thumb\";a:4:{s:4:\"file\";s:56:\"lenovo-notebook-original-imaery672hsumujs-1-240x145.jpeg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(278, 49, '_wp_attached_file', '2017/12/images-e1514113253867.jpg'),
(279, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:259;s:6:\"height\";i:195;s:4:\"file\";s:33:\"2017/12/images-e1514113253867.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"images-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"images-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:33:\"tc-e-commerce-shop-homepage-thumb\";a:4:{s:4:\"file\";s:18:\"images-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(280, 49, '_wp_attachment_backup_sizes', 'a:1:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:259;s:6:\"height\";i:195;s:4:\"file\";s:10:\"images.jpg\";}}'),
(281, 50, '_wp_attached_file', '2017/12/images-1.jpg'),
(282, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:336;s:6:\"height\";i:253;s:4:\"file\";s:20:\"2017/12/images-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"images-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"images-1-300x226.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:226;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"images-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"images-1-300x253.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:253;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:33:\"tc-e-commerce-shop-homepage-thumb\";a:4:{s:4:\"file\";s:20:\"images-1-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(283, 51, '_edit_last', '1'),
(284, 51, '_edit_lock', '1514117085:1'),
(285, 51, '_wp_page_template', 'template-home.php'),
(286, 51, 'storevilla_page_layouts', 'rightsidebar'),
(296, 1, '_edit_lock', '1514118566:1'),
(297, 61, '_wp_attached_file', '2017/12/background-1.jpg'),
(298, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1925;s:6:\"height\";i:1287;s:4:\"file\";s:24:\"2017/12/background-1.jpg\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"background-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"background-1-300x201.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"background-1-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"background-1-1024x685.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:685;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"background-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"background-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"background-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:24:\"background-1-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:24:\"background-1-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"storevilla-blog-image\";a:4:{s:4:\"file\";s:25:\"background-1-1170x470.jpg\";s:5:\"width\";i:1170;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"storevilla-slider-image\";a:4:{s:4:\"file\";s:24:\"background-1-760x510.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:24:\"background-1-262x175.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(299, 1, '_edit_last', '1'),
(300, 1, '_thumbnail_id', '61'),
(302, 1, 'storevilla_page_layouts', 'rightsidebar'),
(304, 64, '_wp_trash_meta_status', 'publish'),
(305, 64, '_wp_trash_meta_time', '1514118598'),
(307, 65, '_edit_last', '1'),
(308, 65, '_edit_lock', '1514121056:1'),
(309, 66, '_wp_attached_file', '2017/12/th-1.jpg'),
(310, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:386;s:6:\"height\";i:185;s:4:\"file\";s:16:\"2017/12/th-1.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"th-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"th-1-300x144.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"th-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:16:\"th-1-300x185.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:185;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:16:\"th-1-275x185.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:185;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:16:\"th-1-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:16:\"th-1-350x168.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(311, 65, '_thumbnail_id', '79'),
(313, 65, 'storevilla_page_layouts', 'rightsidebar'),
(314, 1, '_wp_trash_meta_status', 'publish'),
(315, 1, '_wp_trash_meta_time', '1514119249'),
(316, 1, '_wp_desired_post_slug', 'hello-world'),
(317, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(318, 69, '_wp_attached_file', '2017/12/th-1-1.jpg'),
(319, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:694;s:6:\"height\";i:333;s:4:\"file\";s:18:\"2017/12/th-1-1.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"th-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"th-1-1-300x144.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"th-1-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"th-1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"th-1-1-600x333.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:333;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:18:\"th-1-1-275x333.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:333;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:18:\"th-1-1-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:18:\"th-1-1-350x168.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(321, 70, '_wp_attached_file', '2017/12/th-2.jpg'),
(322, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:364;s:6:\"height\";i:171;s:4:\"file\";s:16:\"2017/12/th-2.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"th-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"th-2-300x141.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:141;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"th-2-180x171.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:16:\"th-2-300x171.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:16:\"th-2-275x171.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:16:\"th-2-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:16:\"th-2-350x164.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(323, 71, '_edit_lock', '1514119669:1'),
(324, 72, '_wp_attached_file', '2017/12/th.jpg'),
(325, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:474;s:6:\"height\";i:172;s:4:\"file\";s:14:\"2017/12/th.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"th-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"th-300x109.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:109;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"th-180x172.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:14:\"th-300x172.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:14:\"th-275x172.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:14:\"th-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:14:\"th-350x127.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:127;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(326, 71, '_wp_trash_meta_status', 'publish'),
(327, 71, '_wp_trash_meta_time', '1514119670'),
(328, 73, '_wp_attached_file', '2017/12/ChenOne-Winter-Dresses-2014-15-for-Ladies-and-Gents-001-www.she-styles.blogspot.com_.jpg'),
(329, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:333;s:4:\"file\";s:96:\"2017/12/ChenOne-Winter-Dresses-2014-15-for-Ladies-and-Gents-001-www.she-styles.blogspot.com_.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:96:\"ChenOne-Winter-Dresses-2014-15-for-Ladies-and-Gents-001-www.she-styles.blogspot.com_-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:96:\"ChenOne-Winter-Dresses-2014-15-for-Ladies-and-Gents-001-www.she-styles.blogspot.com_-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:96:\"ChenOne-Winter-Dresses-2014-15-for-Ladies-and-Gents-001-www.she-styles.blogspot.com_-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:96:\"ChenOne-Winter-Dresses-2014-15-for-Ladies-and-Gents-001-www.she-styles.blogspot.com_-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:96:\"ChenOne-Winter-Dresses-2014-15-for-Ladies-and-Gents-001-www.she-styles.blogspot.com_-275x333.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:333;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:96:\"ChenOne-Winter-Dresses-2014-15-for-Ladies-and-Gents-001-www.she-styles.blogspot.com_-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:96:\"ChenOne-Winter-Dresses-2014-15-for-Ladies-and-Gents-001-www.she-styles.blogspot.com_-263x175.jpg\";s:5:\"width\";i:263;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(330, 74, '_edit_lock', '1514120481:1'),
(331, 75, '_wp_attached_file', '2017/12/Amazon-1340-X777-MENS-SHOES._V298501455_.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(332, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1340;s:6:\"height\";i:777;s:4:\"file\";s:52:\"2017/12/Amazon-1340-X777-MENS-SHOES._V298501455_.jpg\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"Amazon-1340-X777-MENS-SHOES._V298501455_-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"Amazon-1340-X777-MENS-SHOES._V298501455_-300x174.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:174;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:52:\"Amazon-1340-X777-MENS-SHOES._V298501455_-768x445.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:445;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:53:\"Amazon-1340-X777-MENS-SHOES._V298501455_-1024x594.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:594;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:52:\"Amazon-1340-X777-MENS-SHOES._V298501455_-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:52:\"Amazon-1340-X777-MENS-SHOES._V298501455_-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:52:\"Amazon-1340-X777-MENS-SHOES._V298501455_-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:52:\"Amazon-1340-X777-MENS-SHOES._V298501455_-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:52:\"Amazon-1340-X777-MENS-SHOES._V298501455_-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"storevilla-blog-image\";a:4:{s:4:\"file\";s:53:\"Amazon-1340-X777-MENS-SHOES._V298501455_-1170x470.jpg\";s:5:\"width\";i:1170;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"storevilla-slider-image\";a:4:{s:4:\"file\";s:52:\"Amazon-1340-X777-MENS-SHOES._V298501455_-760x510.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:52:\"Amazon-1340-X777-MENS-SHOES._V298501455_-302x175.jpg\";s:5:\"width\";i:302;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(333, 74, '_wp_trash_meta_status', 'publish'),
(334, 74, '_wp_trash_meta_time', '1514120482'),
(335, 76, '_wp_attached_file', '2017/12/cf34817ddc300c09fcf1de4803c34833.jpg'),
(336, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:736;s:6:\"height\";i:381;s:4:\"file\";s:44:\"2017/12/cf34817ddc300c09fcf1de4803c34833.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"cf34817ddc300c09fcf1de4803c34833-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"cf34817ddc300c09fcf1de4803c34833-300x155.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:155;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:44:\"cf34817ddc300c09fcf1de4803c34833-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:44:\"cf34817ddc300c09fcf1de4803c34833-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:44:\"cf34817ddc300c09fcf1de4803c34833-600x381.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:381;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:44:\"cf34817ddc300c09fcf1de4803c34833-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:44:\"cf34817ddc300c09fcf1de4803c34833-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:44:\"cf34817ddc300c09fcf1de4803c34833-338x175.jpg\";s:5:\"width\";i:338;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(338, 78, '_wp_attached_file', '2017/12/cf34817ddc300c09fcf1de4803c34833-1.jpg'),
(339, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:883;s:6:\"height\";i:457;s:4:\"file\";s:46:\"2017/12/cf34817ddc300c09fcf1de4803c34833-1.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"cf34817ddc300c09fcf1de4803c34833-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"cf34817ddc300c09fcf1de4803c34833-1-300x155.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:155;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"cf34817ddc300c09fcf1de4803c34833-1-768x397.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:397;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:46:\"cf34817ddc300c09fcf1de4803c34833-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:46:\"cf34817ddc300c09fcf1de4803c34833-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:46:\"cf34817ddc300c09fcf1de4803c34833-1-600x457.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:46:\"cf34817ddc300c09fcf1de4803c34833-1-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:46:\"cf34817ddc300c09fcf1de4803c34833-1-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"storevilla-slider-image\";a:4:{s:4:\"file\";s:46:\"cf34817ddc300c09fcf1de4803c34833-1-760x457.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:46:\"cf34817ddc300c09fcf1de4803c34833-1-338x175.jpg\";s:5:\"width\";i:338;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(341, 79, '_wp_attached_file', '2017/12/cf34817ddc300c09fcf1de4803c34833-2.jpg'),
(342, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1015;s:6:\"height\";i:525;s:4:\"file\";s:46:\"2017/12/cf34817ddc300c09fcf1de4803c34833-2.jpg\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"cf34817ddc300c09fcf1de4803c34833-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"cf34817ddc300c09fcf1de4803c34833-2-300x155.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:155;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"cf34817ddc300c09fcf1de4803c34833-2-768x397.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:397;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:46:\"cf34817ddc300c09fcf1de4803c34833-2-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:46:\"cf34817ddc300c09fcf1de4803c34833-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:46:\"cf34817ddc300c09fcf1de4803c34833-2-600x525.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:525;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-cat-image\";a:4:{s:4:\"file\";s:46:\"cf34817ddc300c09fcf1de4803c34833-2-275x370.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:46:\"cf34817ddc300c09fcf1de4803c34833-2-255x160.jpg\";s:5:\"width\";i:255;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"storevilla-blog-image\";a:4:{s:4:\"file\";s:47:\"cf34817ddc300c09fcf1de4803c34833-2-1015x470.jpg\";s:5:\"width\";i:1015;s:6:\"height\";i:470;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"storevilla-slider-image\";a:4:{s:4:\"file\";s:46:\"cf34817ddc300c09fcf1de4803c34833-2-760x510.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:46:\"cf34817ddc300c09fcf1de4803c34833-2-338x175.jpg\";s:5:\"width\";i:338;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(344, 80, '_wc_review_count', '0'),
(345, 80, '_wc_rating_count', 'a:0:{}'),
(346, 80, '_wc_average_rating', '0'),
(347, 80, '_edit_last', '1'),
(348, 80, '_edit_lock', '1514152577:1'),
(349, 81, '_wp_attached_file', '2017/12/images-4.jpg'),
(350, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:188;s:6:\"height\";i:268;s:4:\"file\";s:20:\"2017/12/images-4.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"images-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"images-4-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:20:\"images-4-188x160.jpg\";s:5:\"width\";i:188;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:20:\"images-4-123x175.jpg\";s:5:\"width\";i:123;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(351, 80, '_thumbnail_id', '114'),
(352, 80, '_sku', ''),
(353, 80, '_regular_price', '900'),
(354, 80, '_sale_price', '699'),
(355, 80, '_sale_price_dates_from', ''),
(356, 80, '_sale_price_dates_to', ''),
(357, 80, 'total_sales', '0'),
(358, 80, '_tax_status', 'taxable'),
(359, 80, '_tax_class', ''),
(360, 80, '_manage_stock', 'no'),
(361, 80, '_backorders', 'no'),
(362, 80, '_sold_individually', 'no'),
(363, 80, '_weight', ''),
(364, 80, '_length', ''),
(365, 80, '_width', ''),
(366, 80, '_height', ''),
(367, 80, '_upsell_ids', 'a:0:{}'),
(368, 80, '_crosssell_ids', 'a:0:{}'),
(369, 80, '_purchase_note', ''),
(370, 80, '_default_attributes', 'a:0:{}'),
(371, 80, '_virtual', 'no'),
(372, 80, '_downloadable', 'no'),
(373, 80, '_product_image_gallery', ''),
(374, 80, '_download_limit', '-1'),
(375, 80, '_download_expiry', '-1'),
(376, 80, '_stock', NULL),
(377, 80, '_stock_status', 'instock'),
(378, 80, '_product_version', '3.2.6'),
(379, 80, '_price', '699'),
(383, 83, '_wc_review_count', '0'),
(384, 83, '_wc_rating_count', 'a:0:{}'),
(385, 83, '_wc_average_rating', '0'),
(386, 83, '_edit_last', '1'),
(387, 83, '_edit_lock', '1514122469:1'),
(388, 84, '_wp_attached_file', '2017/12/images-3.jpg'),
(389, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:194;s:6:\"height\";i:259;s:4:\"file\";s:20:\"2017/12/images-3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"images-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"images-3-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:20:\"images-3-194x160.jpg\";s:5:\"width\";i:194;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:20:\"images-3-131x175.jpg\";s:5:\"width\";i:131;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(390, 83, '_thumbnail_id', '84'),
(391, 83, '_sku', ''),
(392, 83, '_regular_price', '1000'),
(393, 83, '_sale_price', '799'),
(394, 83, '_sale_price_dates_from', ''),
(395, 83, '_sale_price_dates_to', ''),
(396, 83, 'total_sales', '0'),
(397, 83, '_tax_status', 'taxable'),
(398, 83, '_tax_class', ''),
(399, 83, '_manage_stock', 'no'),
(400, 83, '_backorders', 'no'),
(401, 83, '_sold_individually', 'no'),
(402, 83, '_weight', ''),
(403, 83, '_length', ''),
(404, 83, '_width', ''),
(405, 83, '_height', ''),
(406, 83, '_upsell_ids', 'a:0:{}'),
(407, 83, '_crosssell_ids', 'a:0:{}'),
(408, 83, '_purchase_note', ''),
(409, 83, '_default_attributes', 'a:0:{}'),
(410, 83, '_virtual', 'no'),
(411, 83, '_downloadable', 'no'),
(412, 83, '_product_image_gallery', ''),
(413, 83, '_download_limit', '-1'),
(414, 83, '_download_expiry', '-1'),
(415, 83, '_stock', NULL),
(416, 83, '_stock_status', 'instock'),
(417, 83, '_product_version', '3.2.6'),
(418, 83, '_price', '799'),
(419, 85, '_wc_review_count', '0'),
(420, 85, '_wc_rating_count', 'a:0:{}'),
(421, 85, '_wc_average_rating', '0'),
(422, 85, '_edit_last', '1'),
(423, 85, '_edit_lock', '1514146938:1'),
(424, 86, '_wp_attached_file', '2017/12/images-2.jpg'),
(425, 86, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:20:\"2017/12/images-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"images-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"images-2-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:20:\"images-2-225x160.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:20:\"images-2-175x175.jpg\";s:5:\"width\";i:175;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(426, 85, '_thumbnail_id', '112'),
(427, 85, '_sku', ''),
(428, 85, '_regular_price', '1300'),
(429, 85, '_sale_price', '999'),
(430, 85, '_sale_price_dates_from', ''),
(431, 85, '_sale_price_dates_to', ''),
(432, 85, 'total_sales', '0'),
(433, 85, '_tax_status', 'taxable'),
(434, 85, '_tax_class', ''),
(435, 85, '_manage_stock', 'no'),
(436, 85, '_backorders', 'no'),
(437, 85, '_sold_individually', 'no'),
(438, 85, '_weight', ''),
(439, 85, '_length', ''),
(440, 85, '_width', ''),
(441, 85, '_height', ''),
(442, 85, '_upsell_ids', 'a:0:{}'),
(443, 85, '_crosssell_ids', 'a:0:{}'),
(444, 85, '_purchase_note', ''),
(445, 85, '_default_attributes', 'a:0:{}'),
(446, 85, '_virtual', 'no'),
(447, 85, '_downloadable', 'no'),
(448, 85, '_product_image_gallery', ''),
(449, 85, '_download_limit', '-1'),
(450, 85, '_download_expiry', '-1'),
(451, 85, '_stock', NULL),
(452, 85, '_stock_status', 'instock'),
(453, 85, '_product_version', '3.2.6'),
(454, 85, '_price', '999'),
(455, 87, '_wc_review_count', '0'),
(456, 87, '_wc_rating_count', 'a:0:{}'),
(457, 87, '_wc_average_rating', '0'),
(458, 87, '_edit_last', '1'),
(459, 87, '_edit_lock', '1514122376:1'),
(460, 88, '_wp_attached_file', '2017/12/images-5.jpg'),
(461, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:197;s:6:\"height\";i:256;s:4:\"file\";s:20:\"2017/12/images-5.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"images-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"images-5-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:20:\"images-5-197x160.jpg\";s:5:\"width\";i:197;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:20:\"images-5-135x175.jpg\";s:5:\"width\";i:135;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(462, 87, '_thumbnail_id', '88'),
(463, 87, '_sku', ''),
(464, 87, '_regular_price', '800'),
(465, 87, '_sale_price', '599'),
(466, 87, '_sale_price_dates_from', ''),
(467, 87, '_sale_price_dates_to', ''),
(468, 87, 'total_sales', '0'),
(469, 87, '_tax_status', 'taxable'),
(470, 87, '_tax_class', ''),
(471, 87, '_manage_stock', 'no'),
(472, 87, '_backorders', 'no'),
(473, 87, '_sold_individually', 'no'),
(474, 87, '_weight', ''),
(475, 87, '_length', ''),
(476, 87, '_width', ''),
(477, 87, '_height', ''),
(478, 87, '_upsell_ids', 'a:0:{}'),
(479, 87, '_crosssell_ids', 'a:0:{}'),
(480, 87, '_purchase_note', ''),
(481, 87, '_default_attributes', 'a:0:{}'),
(482, 87, '_virtual', 'no'),
(483, 87, '_downloadable', 'no'),
(484, 87, '_product_image_gallery', ''),
(485, 87, '_download_limit', '-1'),
(486, 87, '_download_expiry', '-1'),
(487, 87, '_stock', NULL),
(488, 87, '_stock_status', 'instock'),
(489, 87, '_product_version', '3.2.6'),
(490, 87, '_price', '599'),
(491, 89, '_wc_review_count', '0'),
(492, 89, '_wc_rating_count', 'a:0:{}'),
(493, 89, '_wc_average_rating', '0'),
(494, 89, '_edit_last', '1'),
(495, 89, '_edit_lock', '1514122565:1'),
(496, 90, '_wp_attached_file', '2017/12/images-1-1.jpg'),
(497, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:22:\"2017/12/images-1-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"images-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"images-1-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:22:\"images-1-1-225x160.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:22:\"images-1-1-175x175.jpg\";s:5:\"width\";i:175;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(498, 89, '_thumbnail_id', '90'),
(499, 89, '_sku', ''),
(500, 89, '_regular_price', '4000'),
(501, 89, '_sale_price', '2799'),
(502, 89, '_sale_price_dates_from', ''),
(503, 89, '_sale_price_dates_to', ''),
(504, 89, 'total_sales', '0'),
(505, 89, '_tax_status', 'taxable'),
(506, 89, '_tax_class', ''),
(507, 89, '_manage_stock', 'no'),
(508, 89, '_backorders', 'no'),
(509, 89, '_sold_individually', 'no'),
(510, 89, '_weight', ''),
(511, 89, '_length', ''),
(512, 89, '_width', ''),
(513, 89, '_height', ''),
(514, 89, '_upsell_ids', 'a:0:{}'),
(515, 89, '_crosssell_ids', 'a:0:{}'),
(516, 89, '_purchase_note', ''),
(517, 89, '_default_attributes', 'a:0:{}'),
(518, 89, '_virtual', 'no'),
(519, 89, '_downloadable', 'no'),
(520, 89, '_product_image_gallery', ''),
(521, 89, '_download_limit', '-1'),
(522, 89, '_download_expiry', '-1'),
(523, 89, '_stock', NULL),
(524, 89, '_stock_status', 'instock'),
(525, 89, '_product_version', '3.2.6'),
(526, 89, '_price', '2799'),
(527, 91, '_wc_review_count', '0'),
(528, 91, '_wc_rating_count', 'a:0:{}'),
(529, 91, '_wc_average_rating', '0'),
(530, 91, '_edit_last', '1'),
(531, 91, '_edit_lock', '1514122633:1'),
(532, 92, '_wp_attached_file', '2017/12/download.jpg'),
(533, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:20:\"2017/12/download.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"download-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"download-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:20:\"download-225x160.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:20:\"download-175x175.jpg\";s:5:\"width\";i:175;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(534, 91, '_thumbnail_id', '92'),
(535, 91, '_sku', ''),
(536, 91, '_regular_price', '3500'),
(537, 91, '_sale_price', '2650'),
(538, 91, '_sale_price_dates_from', ''),
(539, 91, '_sale_price_dates_to', ''),
(540, 91, 'total_sales', '0'),
(541, 91, '_tax_status', 'taxable'),
(542, 91, '_tax_class', ''),
(543, 91, '_manage_stock', 'no'),
(544, 91, '_backorders', 'no'),
(545, 91, '_sold_individually', 'no'),
(546, 91, '_weight', ''),
(547, 91, '_length', ''),
(548, 91, '_width', ''),
(549, 91, '_height', ''),
(550, 91, '_upsell_ids', 'a:0:{}'),
(551, 91, '_crosssell_ids', 'a:0:{}'),
(552, 91, '_purchase_note', ''),
(553, 91, '_default_attributes', 'a:0:{}'),
(554, 91, '_virtual', 'no'),
(555, 91, '_downloadable', 'no'),
(556, 91, '_product_image_gallery', ''),
(557, 91, '_download_limit', '-1'),
(558, 91, '_download_expiry', '-1'),
(559, 91, '_stock', NULL),
(560, 91, '_stock_status', 'instock'),
(561, 91, '_product_version', '3.2.6'),
(562, 91, '_price', '2650'),
(563, 93, '_wc_review_count', '0'),
(564, 93, '_wc_rating_count', 'a:0:{}'),
(565, 93, '_wc_average_rating', '0'),
(566, 93, '_edit_last', '1'),
(567, 93, '_edit_lock', '1515059963:1'),
(568, 94, '_wp_attached_file', '2017/12/images-6.jpg'),
(569, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:20:\"2017/12/images-6.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"images-6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"images-6-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:20:\"images-6-225x160.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:20:\"images-6-175x175.jpg\";s:5:\"width\";i:175;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(570, 93, '_thumbnail_id', '94'),
(571, 93, '_sku', ''),
(572, 93, '_regular_price', '5000'),
(573, 93, '_sale_price', '4300'),
(574, 93, '_sale_price_dates_from', ''),
(575, 93, '_sale_price_dates_to', ''),
(576, 93, 'total_sales', '4'),
(577, 93, '_tax_status', 'taxable'),
(578, 93, '_tax_class', ''),
(579, 93, '_manage_stock', 'yes'),
(580, 93, '_backorders', 'notify'),
(581, 93, '_sold_individually', 'no'),
(582, 93, '_weight', ''),
(583, 93, '_length', ''),
(584, 93, '_width', ''),
(585, 93, '_height', ''),
(586, 93, '_upsell_ids', 'a:0:{}'),
(587, 93, '_crosssell_ids', 'a:0:{}'),
(588, 93, '_purchase_note', ''),
(589, 93, '_default_attributes', 'a:0:{}'),
(590, 93, '_virtual', 'no'),
(591, 93, '_downloadable', 'no'),
(592, 93, '_product_image_gallery', ''),
(593, 93, '_download_limit', '-1'),
(594, 93, '_download_expiry', '-1'),
(595, 93, '_stock', '-1'),
(596, 93, '_stock_status', 'instock'),
(597, 93, '_product_version', '3.2.6'),
(598, 93, '_price', '4300'),
(599, 95, '_wc_review_count', '0'),
(600, 95, '_wc_rating_count', 'a:0:{}'),
(601, 95, '_wc_average_rating', '0'),
(602, 95, '_edit_last', '1'),
(603, 95, '_edit_lock', '1514125187:1'),
(604, 96, '_wp_attached_file', '2017/12/download-1.jpg'),
(605, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:22:\"2017/12/download-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"download-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"download-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:22:\"download-1-225x160.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:22:\"download-1-175x175.jpg\";s:5:\"width\";i:175;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(606, 95, '_thumbnail_id', '96'),
(607, 95, '_sku', ''),
(608, 95, '_regular_price', '3000'),
(609, 95, '_sale_price', '1700'),
(610, 95, '_sale_price_dates_from', ''),
(611, 95, '_sale_price_dates_to', ''),
(612, 95, 'total_sales', '0'),
(613, 95, '_tax_status', 'taxable'),
(614, 95, '_tax_class', ''),
(615, 95, '_manage_stock', 'yes'),
(616, 95, '_backorders', 'no'),
(617, 95, '_sold_individually', 'yes'),
(618, 95, '_weight', ''),
(619, 95, '_length', ''),
(620, 95, '_width', ''),
(621, 95, '_height', ''),
(622, 95, '_upsell_ids', 'a:0:{}'),
(623, 95, '_crosssell_ids', 'a:0:{}'),
(624, 95, '_purchase_note', ''),
(625, 95, '_default_attributes', 'a:0:{}'),
(626, 95, '_virtual', 'no'),
(627, 95, '_downloadable', 'no'),
(628, 95, '_product_image_gallery', ''),
(629, 95, '_download_limit', '-1'),
(630, 95, '_download_expiry', '-1'),
(631, 95, '_stock', '8'),
(632, 95, '_stock_status', 'instock'),
(633, 95, '_product_version', '3.2.6'),
(634, 95, '_price', '1700'),
(635, 97, '_edit_lock', '1514123997:1'),
(636, 97, '_wp_trash_meta_status', 'publish'),
(637, 97, '_wp_trash_meta_time', '1514123998'),
(638, 98, '_menu_item_type', 'post_type'),
(639, 98, '_menu_item_menu_item_parent', '0'),
(640, 98, '_menu_item_object_id', '51'),
(641, 98, '_menu_item_object', 'page'),
(642, 98, '_menu_item_target', ''),
(643, 98, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(644, 98, '_menu_item_xfn', ''),
(645, 98, '_menu_item_url', ''),
(647, 99, '_menu_item_type', 'taxonomy'),
(648, 99, '_menu_item_menu_item_parent', '0'),
(649, 99, '_menu_item_object_id', '22'),
(650, 99, '_menu_item_object', 'product_cat'),
(651, 99, '_menu_item_target', ''),
(652, 99, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(653, 99, '_menu_item_xfn', ''),
(654, 99, '_menu_item_url', ''),
(656, 100, '_menu_item_type', 'taxonomy'),
(657, 100, '_menu_item_menu_item_parent', '99'),
(658, 100, '_menu_item_object_id', '24'),
(659, 100, '_menu_item_object', 'product_cat'),
(660, 100, '_menu_item_target', ''),
(661, 100, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(662, 100, '_menu_item_xfn', ''),
(663, 100, '_menu_item_url', ''),
(665, 101, '_menu_item_type', 'taxonomy'),
(666, 101, '_menu_item_menu_item_parent', '99'),
(667, 101, '_menu_item_object_id', '26'),
(668, 101, '_menu_item_object', 'product_cat'),
(669, 101, '_menu_item_target', ''),
(670, 101, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(671, 101, '_menu_item_xfn', ''),
(672, 101, '_menu_item_url', ''),
(674, 102, '_menu_item_type', 'taxonomy'),
(675, 102, '_menu_item_menu_item_parent', '0'),
(676, 102, '_menu_item_object_id', '27'),
(677, 102, '_menu_item_object', 'product_cat'),
(678, 102, '_menu_item_target', ''),
(679, 102, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(680, 102, '_menu_item_xfn', ''),
(681, 102, '_menu_item_url', ''),
(683, 103, '_menu_item_type', 'taxonomy'),
(684, 103, '_menu_item_menu_item_parent', '0'),
(685, 103, '_menu_item_object_id', '15'),
(686, 103, '_menu_item_object', 'product_cat'),
(687, 103, '_menu_item_target', ''),
(688, 103, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(689, 103, '_menu_item_xfn', ''),
(690, 103, '_menu_item_url', ''),
(692, 104, '_menu_item_type', 'taxonomy'),
(693, 104, '_menu_item_menu_item_parent', '103'),
(694, 104, '_menu_item_object_id', '16'),
(695, 104, '_menu_item_object', 'product_cat'),
(696, 104, '_menu_item_target', ''),
(697, 104, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(698, 104, '_menu_item_xfn', ''),
(699, 104, '_menu_item_url', ''),
(701, 105, '_menu_item_type', 'taxonomy'),
(702, 105, '_menu_item_menu_item_parent', '103'),
(703, 105, '_menu_item_object_id', '17'),
(704, 105, '_menu_item_object', 'product_cat'),
(705, 105, '_menu_item_target', ''),
(706, 105, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(707, 105, '_menu_item_xfn', ''),
(708, 105, '_menu_item_url', ''),
(710, 106, '_menu_item_type', 'taxonomy'),
(711, 106, '_menu_item_menu_item_parent', '103'),
(712, 106, '_menu_item_object_id', '20'),
(713, 106, '_menu_item_object', 'product_cat'),
(714, 106, '_menu_item_target', ''),
(715, 106, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(716, 106, '_menu_item_xfn', ''),
(717, 106, '_menu_item_url', ''),
(719, 107, '_menu_item_type', 'custom'),
(720, 107, '_menu_item_menu_item_parent', '0'),
(721, 107, '_menu_item_object_id', '107'),
(722, 107, '_menu_item_object', 'custom'),
(723, 107, '_menu_item_target', ''),
(724, 107, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(725, 107, '_menu_item_xfn', ''),
(726, 107, '_menu_item_url', '#'),
(728, 108, '_menu_item_type', 'post_type'),
(729, 108, '_menu_item_menu_item_parent', '0'),
(730, 108, '_menu_item_object_id', '4'),
(731, 108, '_menu_item_object', 'page'),
(732, 108, '_menu_item_target', ''),
(733, 108, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(734, 108, '_menu_item_xfn', ''),
(735, 108, '_menu_item_url', ''),
(737, 109, '_edit_lock', '1514145658:1'),
(738, 109, '_wp_trash_meta_status', 'publish'),
(739, 109, '_wp_trash_meta_time', '1514145658'),
(740, 110, '_edit_lock', '1514146308:1'),
(741, 110, '_wp_trash_meta_status', 'publish'),
(742, 110, '_wp_trash_meta_time', '1514146308'),
(743, 111, '_wp_attached_file', '2017/12/images-2-1.jpg'),
(744, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:231;s:4:\"file\";s:22:\"2017/12/images-2-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"images-2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"images-2-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:22:\"images-2-1-225x160.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:22:\"images-2-1-170x175.jpg\";s:5:\"width\";i:170;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(745, 112, '_wp_attached_file', '2017/12/images-2-2.jpg'),
(746, 112, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:254;s:4:\"file\";s:22:\"2017/12/images-2-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"images-2-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"images-2-2-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:22:\"images-2-2-225x160.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:22:\"images-2-2-155x175.jpg\";s:5:\"width\";i:155;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(747, 113, '_wp_attached_file', '2017/12/images-4-1.jpg'),
(748, 113, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:188;s:6:\"height\";i:263;s:4:\"file\";s:22:\"2017/12/images-4-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"images-4-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"images-4-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:22:\"images-4-1-188x160.jpg\";s:5:\"width\";i:188;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:22:\"images-4-1-125x175.jpg\";s:5:\"width\";i:125;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(749, 114, '_wp_attached_file', '2017/12/images-4-2.jpg'),
(750, 114, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:188;s:6:\"height\";i:258;s:4:\"file\";s:22:\"2017/12/images-4-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"images-4-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"images-4-2-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"storevilla-blog-grid\";a:4:{s:4:\"file\";s:22:\"images-4-2-188x160.jpg\";s:5:\"width\";i:188;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"storevilla-logo\";a:4:{s:4:\"file\";s:22:\"images-4-2-128x175.jpg\";s:5:\"width\";i:128;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(751, 115, '_edit_lock', '1514149164:1'),
(752, 115, '_wp_trash_meta_status', 'publish'),
(753, 115, '_wp_trash_meta_time', '1514149165'),
(754, 114, '_edit_lock', '1514154674:1'),
(755, 116, '_wp_trash_meta_status', 'publish'),
(756, 116, '_wp_trash_meta_time', '1514154929'),
(759, 118, '_menu_item_type', 'post_type'),
(760, 118, '_menu_item_menu_item_parent', '0'),
(761, 118, '_menu_item_object_id', '51'),
(762, 118, '_menu_item_object', 'page'),
(763, 118, '_menu_item_target', ''),
(764, 118, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(765, 118, '_menu_item_xfn', ''),
(766, 118, '_menu_item_url', ''),
(768, 119, '_menu_item_type', 'post_type'),
(769, 119, '_menu_item_menu_item_parent', '0'),
(770, 119, '_menu_item_object_id', '7'),
(771, 119, '_menu_item_object', 'page'),
(772, 119, '_menu_item_target', ''),
(773, 119, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(774, 119, '_menu_item_xfn', ''),
(775, 119, '_menu_item_url', ''),
(777, 120, '_menu_item_type', 'post_type'),
(778, 120, '_menu_item_menu_item_parent', '0'),
(779, 120, '_menu_item_object_id', '6'),
(780, 120, '_menu_item_object', 'page'),
(781, 120, '_menu_item_target', ''),
(782, 120, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(783, 120, '_menu_item_xfn', ''),
(784, 120, '_menu_item_url', ''),
(786, 121, '_menu_item_type', 'post_type'),
(787, 121, '_menu_item_menu_item_parent', '0'),
(788, 121, '_menu_item_object_id', '5'),
(789, 121, '_menu_item_object', 'page'),
(790, 121, '_menu_item_target', ''),
(791, 121, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(792, 121, '_menu_item_xfn', ''),
(793, 121, '_menu_item_url', ''),
(795, 122, '_menu_item_type', 'post_type'),
(796, 122, '_menu_item_menu_item_parent', '0'),
(797, 122, '_menu_item_object_id', '4'),
(798, 122, '_menu_item_object', 'page'),
(799, 122, '_menu_item_target', ''),
(800, 122, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(801, 122, '_menu_item_xfn', ''),
(802, 122, '_menu_item_url', ''),
(804, 125, '_menu_item_type', 'custom'),
(805, 125, '_menu_item_menu_item_parent', '0'),
(806, 125, '_menu_item_object_id', '125'),
(807, 125, '_menu_item_object', 'custom'),
(808, 125, '_menu_item_target', ''),
(809, 125, '_menu_item_classes', 'a:1:{i:0;s:23:\"phoen-signup-popup-open\";}'),
(810, 125, '_menu_item_xfn', ''),
(811, 125, '_menu_item_url', '#'),
(812, 93, 'apss_content_flag', '0'),
(813, 126, '_order_key', 'wc_order_5a4dfa0069371'),
(814, 126, '_customer_user', '1'),
(815, 126, '_payment_method', 'cheque'),
(816, 126, '_payment_method_title', 'Check payments'),
(817, 126, '_transaction_id', ''),
(818, 126, '_customer_ip_address', '::1'),
(819, 126, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/63.0.3239.84 safari/537.36'),
(820, 126, '_created_via', 'checkout'),
(821, 126, '_date_completed', ''),
(822, 126, '_completed_date', ''),
(823, 126, '_date_paid', ''),
(824, 126, '_paid_date', ''),
(825, 126, '_cart_hash', '2e9eebca3a5e3dffee931c00eaff5854'),
(826, 126, '_billing_first_name', 'sahil'),
(827, 126, '_billing_last_name', 'surani'),
(828, 126, '_billing_company', ''),
(829, 126, '_billing_address_1', 'A-11 Bagenawab Fltat ,'),
(830, 126, '_billing_address_2', 'near shahalimar cinema,'),
(831, 126, '_billing_city', 'Ahmedabad'),
(832, 126, '_billing_state', 'GJ'),
(833, 126, '_billing_postcode', '380028'),
(834, 126, '_billing_country', 'IN'),
(835, 126, '_billing_email', 'sahilsurani7868@gmail.com'),
(836, 126, '_billing_phone', '8401394432'),
(837, 126, '_shipping_first_name', 'sahil'),
(838, 126, '_shipping_last_name', 'surani'),
(839, 126, '_shipping_company', ''),
(840, 126, '_shipping_address_1', 'A-11 Bagenawab Fltat ,'),
(841, 126, '_shipping_address_2', 'near shahalimar cinema,'),
(842, 126, '_shipping_city', 'Ahmedabad'),
(843, 126, '_shipping_state', 'GJ'),
(844, 126, '_shipping_postcode', '380028'),
(845, 126, '_shipping_country', 'IN'),
(846, 126, '_order_currency', 'INR'),
(847, 126, '_cart_discount', '0'),
(848, 126, '_cart_discount_tax', '0'),
(849, 126, '_order_shipping', '50.00'),
(850, 126, '_order_shipping_tax', '0'),
(851, 126, '_order_tax', '0'),
(852, 126, '_order_total', '4350.00'),
(853, 126, '_order_version', '3.2.6'),
(854, 126, '_prices_include_tax', 'no'),
(855, 126, '_billing_address_index', 'sahil surani  A-11 Bagenawab Fltat , near shahalimar cinema, Ahmedabad GJ 380028 IN sahilsurani7868@gmail.com 8401394432'),
(856, 126, '_shipping_address_index', 'sahil surani  A-11 Bagenawab Fltat , near shahalimar cinema, Ahmedabad GJ 380028 IN'),
(857, 126, '_recorded_sales', 'yes'),
(858, 126, '_recorded_coupon_usage_counts', 'yes'),
(859, 126, '_order_stock_reduced', 'yes'),
(860, 127, '_order_key', 'wc_order_5a4dfbdb5e5cf'),
(861, 127, '_customer_user', '2'),
(862, 127, '_payment_method', 'cheque'),
(863, 127, '_payment_method_title', 'Check payments'),
(864, 127, '_transaction_id', ''),
(865, 127, '_customer_ip_address', '::1'),
(866, 127, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/63.0.3239.84 safari/537.36'),
(867, 127, '_created_via', 'checkout'),
(868, 127, '_date_completed', ''),
(869, 127, '_completed_date', ''),
(870, 127, '_date_paid', ''),
(871, 127, '_paid_date', ''),
(872, 127, '_cart_hash', 'd4c8e07074d48de7903218bb01f50dfe'),
(873, 127, '_billing_first_name', 'h'),
(874, 127, '_billing_last_name', 's'),
(875, 127, '_billing_company', ''),
(876, 127, '_billing_address_1', 'A-11 Bagenawab Fltat ,'),
(877, 127, '_billing_address_2', 'near shahalimar cinema,'),
(878, 127, '_billing_city', 'Ahmedabad'),
(879, 127, '_billing_state', 'GJ'),
(880, 127, '_billing_postcode', '380028'),
(881, 127, '_billing_country', 'IN'),
(882, 127, '_billing_email', 'hiteshparmar66@gmail.com'),
(883, 127, '_billing_phone', '8'),
(884, 127, '_shipping_first_name', 'h'),
(885, 127, '_shipping_last_name', 's'),
(886, 127, '_shipping_company', ''),
(887, 127, '_shipping_address_1', 'A-11 Bagenawab Fltat ,'),
(888, 127, '_shipping_address_2', 'near shahalimar cinema,'),
(889, 127, '_shipping_city', 'Ahmedabad'),
(890, 127, '_shipping_state', 'GJ'),
(891, 127, '_shipping_postcode', '380028'),
(892, 127, '_shipping_country', 'IN'),
(893, 127, '_order_currency', 'INR'),
(894, 127, '_cart_discount', '0'),
(895, 127, '_cart_discount_tax', '0'),
(896, 127, '_order_shipping', '50.00'),
(897, 127, '_order_shipping_tax', '0'),
(898, 127, '_order_tax', '0'),
(899, 127, '_order_total', '12950.00'),
(900, 127, '_order_version', '3.2.6'),
(901, 127, '_prices_include_tax', 'no'),
(902, 127, '_billing_address_index', 'h s  A-11 Bagenawab Fltat , near shahalimar cinema, Ahmedabad GJ 380028 IN hiteshparmar66@gmail.com 8'),
(903, 127, '_shipping_address_index', 'h s  A-11 Bagenawab Fltat , near shahalimar cinema, Ahmedabad GJ 380028 IN'),
(904, 127, '_recorded_sales', 'yes'),
(905, 127, '_recorded_coupon_usage_counts', 'yes'),
(906, 127, '_order_stock_reduced', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-12-22 14:29:49', '2017-12-22 14:29:49', '<ul class=\"a-unordered-list a-vertical a-spacing-none\">\r\n 	<li><span class=\"a-list-item\">Headphones made for Electronic Dance Music(EDM) </span></li>\r\n 	<li><span class=\"a-list-item\"> 30 mm closed, dynamic driver unit for powerful EXTRA BASS sound</span></li>\r\n</ul>', 'Sony HeadPhones', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2017-12-24 12:40:49', '2017-12-24 12:40:49', '', 0, 'http://localhost/ShopperHolics/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2017-12-22 14:29:49', '2017-12-22 14:29:49', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/ShopperHolics/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-12-22 14:29:49', '2017-12-22 14:29:49', '', 0, 'http://localhost/ShopperHolics/wordpress/?page_id=2', 0, 'page', '', 0),
(4, 1, '2017-12-23 09:51:32', '2017-12-23 09:51:32', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2017-12-23 09:51:32', '2017-12-23 09:51:32', '', 0, 'http://localhost/ShopperHolics/wordpress/shop/', 0, 'page', '', 0),
(5, 1, '2017-12-23 09:51:32', '2017-12-23 09:51:32', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2017-12-23 09:51:32', '2017-12-23 09:51:32', '', 0, 'http://localhost/ShopperHolics/wordpress/cart/', 0, 'page', '', 0),
(6, 1, '2017-12-23 09:51:33', '2017-12-23 09:51:33', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2017-12-23 09:51:33', '2017-12-23 09:51:33', '', 0, 'http://localhost/ShopperHolics/wordpress/checkout/', 0, 'page', '', 0),
(7, 1, '2017-12-23 09:51:33', '2017-12-23 09:51:33', '[woocommerce_my_account]', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2017-12-23 09:51:33', '2017-12-23 09:51:33', '', 0, 'http://localhost/ShopperHolics/wordpress/my-account/', 0, 'page', '', 0),
(9, 1, '2017-12-23 11:13:15', '2017-12-23 11:13:15', '<ul class=\"a-unordered-list a-vertical a-spacing-none\">\r\n 	<li><span class=\"a-list-item\"> Headphones made for Electronic Dance Music(EDM) </span></li>\r\n 	<li><span class=\"a-list-item\"> 30 mm closed, dynamic driver unit for powerful EXTRA BASS sound </span></li>\r\n 	<li><span class=\"a-list-item\"> Portable, swivel folding design for listening on the go </span></li>\r\n 	<li><span class=\"a-list-item\"> Cushioned ear pads for long-wearing comfort </span></li>\r\n 	<li><span class=\"a-list-item\"> Tangle free flat serration cord for reducing tangling </span></li>\r\n 	<li><span class=\"a-list-item\"> Match your style with Vivid colours </span></li>\r\n 	<li><span class=\"a-list-item\"> Flashy metallic finish housing </span></li>\r\n</ul>', 'Sony XB950B1 Extra Bass Wireless Headphones with App Control', '<ul class=\"a-unordered-list a-vertical a-spacing-none\">\r\n 	<li><span class=\"a-list-item\">Headphones made for Electronic Dance Music(EDM) </span></li>\r\n 	<li><span class=\"a-list-item\"> 30 mm closed, dynamic driver unit for powerful EXTRA BASS sound </span></li>\r\n 	<li><span class=\"a-list-item\"> Portable, swivel folding design for listening on the go</span></li>\r\n</ul>', 'publish', 'open', 'closed', '', 'sony-xb950b1-extra-bass-wireless-headphones-with-app-control-black-2017-model', '', '', '2017-12-24 10:50:35', '2017-12-24 10:50:35', '', 0, 'http://localhost/ShopperHolics/wordpress/?post_type=product&#038;p=9', 0, 'product', '', 0),
(10, 1, '2017-12-23 11:12:54', '2017-12-23 11:12:54', '', 'Sony XB950B1 Extra Bass Wireless Headphones with App Control, Black (2017 model)', '', 'inherit', 'open', 'closed', '', 'sony-xb950b1-extra-bass-wireless-headphones-with-app-control-black-2017-model', '', '', '2017-12-23 11:12:54', '2017-12-23 11:12:54', '', 9, 'http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/Sony-XB950B1-Extra-Bass-Wireless-Headphones-with-App-Control-Black-2017-model.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2017-12-23 11:14:39', '2017-12-23 11:14:39', '<ul class=\"a-unordered-list a-vertical a-spacing-none\">\n 	<li><span class=\"a-list-item\"> Thumping Bass: boAt signature sonic high definition sound with super extra bass and balanced treble performance to make your listening experience a thumping one </span></li>\n 	<li><span class=\"a-list-item\"> BoAt custom-designed 50mm driver, giving you the performance you could never have imagined </span></li>\n 	<li><span class=\"a-list-item\"> The softness of the faux leather on the ear pads makes boAt Rockerz 510 pleasurable to wear </span></li>\n 	<li><span class=\"a-list-item\"> Carefully and precisely designed makes the boAt Rockerz 510 appear to be stylish and sturdy </span></li>\n 	<li><span class=\"a-list-item\"> Put it on at just 230 grams, boAt Rockerz 510 is one of the lightest in its class, giving you optimal comfort and master control board to play/pause, change tracks, answer/reject calls, control volumes - everything in one place; You simply don\'t want to take it off </span></li>\n 	<li><span class=\"a-list-item\"> The foam inside the ear pads adapts to your ears with just the right pressure ensuring great comfort and also delivering authentic sound </span></li>\n 	<li><span class=\"a-list-item\"> Perfectly processed aluminum plats perfects the look of a premium headphone hence delivering unimaginable sound </span></li>\n</ul>', 'Sony XB950B1 Extra Bass Wireless Headphones with App Control, Black (2017 model)', '<ul class=\"a-unordered-list a-vertical a-spacing-none\">\n 	<li><span class=\"a-list-item\">Headphones made for Electronic Dance Music(EDM) </span></li>\n 	<li><span class=\"a-list-item\"> 30 mm closed, dynamic driver unit for powerful EXTRA BASS sound </span></li>\n 	<li><span class=\"a-list-item\"> Portable, swivel folding design for listening on the go</span></li>\n</ul>', 'inherit', 'closed', 'closed', '', '9-autosave-v1', '', '', '2017-12-23 11:14:39', '2017-12-23 11:14:39', '', 9, 'http://localhost/ShopperHolics/wordpress/2017/12/23/9-autosave-v1/', 0, 'revision', '', 0),
(12, 1, '2017-12-23 11:16:24', '2017-12-23 11:16:24', '<ul class=\"a-unordered-list a-vertical a-spacing-none\">\r\n 	<li><span class=\"a-list-item\"> Thumping Bass: boAt signature sonic high definition sound with super extra bass and balanced treble performance to make your listening experience a thumping one </span></li>\r\n 	<li><span class=\"a-list-item\"> BoAt custom-designed 50mm driver, giving you the performance you could never have imagined </span></li>\r\n 	<li><span class=\"a-list-item\"> The softness of the faux leather on the ear pads makes boAt Rockerz 510 pleasurable to wear </span></li>\r\n 	<li><span class=\"a-list-item\"> Carefully and precisely designed makes the boAt Rockerz 510 appear to be stylish and sturdy </span></li>\r\n 	<li><span class=\"a-list-item\"> Put it on at just 230 grams, boAt Rockerz 510 is one of the lightest in its class, giving you optimal comfort and master control board to play/pause, change tracks, answer/reject calls, control volumes - everything in one place; You simply don\'t want to take it off </span></li>\r\n 	<li><span class=\"a-list-item\"> The foam inside the ear pads adapts to your ears with just the right pressure ensuring great comfort and also delivering authentic sound </span></li>\r\n 	<li><span class=\"a-list-item\"> Perfectly processed aluminum plats perfects the look of a premium headphone hence delivering unimaginable sound </span></li>\r\n</ul>', 'Mpow 059 Bluetooth Headphones Over Ear, Hi-Fi Stereo Wireless Headset', '<ul class=\"a-unordered-list a-vertical a-spacing-none\">\r\n 	<li><span class=\"a-list-item\">Thumping Bass: boAt signature sonic high definition sound with super extra bass and balanced treble performance to make your listening experience a thumping one </span></li>\r\n 	<li><span class=\"a-list-item\"> BoAt custom-designed 50mm driver, giving you the performance you could never have imagined </span></li>\r\n 	<li><span class=\"a-list-item\"> The softness of the faux leather on the ear pads makes boAt Rockerz 510 pleasurable to wear</span></li>\r\n</ul>', 'publish', 'open', 'closed', '', 'mpow-059-bluetooth-headphones-over-ear-hi-fi-stereo-wireless-headset', '', '', '2017-12-23 11:16:38', '2017-12-23 11:16:38', '', 0, 'http://localhost/ShopperHolics/wordpress/?post_type=product&#038;p=12', 0, 'product', '', 0),
(13, 1, '2017-12-23 11:16:14', '2017-12-23 11:16:14', '', 'Mpow 059 Bluetooth Headphones Over Ear, Hi-Fi Stereo Wireless Headset', '', 'inherit', 'open', 'closed', '', 'mpow-059-bluetooth-headphones-over-ear-hi-fi-stereo-wireless-headset', '', '', '2017-12-23 11:16:14', '2017-12-23 11:16:14', '', 12, 'http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/Mpow-059-Bluetooth-Headphones-Over-Ear-Hi-Fi-Stereo-Wireless-Headset.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2017-12-23 11:20:49', '2017-12-23 11:20:49', '<ul class=\"a-unordered-list a-vertical a-spacing-none\">\r\n 	<li><span class=\"a-list-item\"> HD Ready (Resolution: 1366 x 788), Refresh Rate: 60 hertz </span></li>\r\n 	<li><span class=\"a-list-item\"> Connectivity - Input: 2*HDMI, 2*USB, 1*VGA </span></li>\r\n 	<li><span class=\"a-list-item\"> Audio: 24 W output </span></li>\r\n 	<li><span class=\"a-list-item\"> Warranty Information: 3 Years </span></li>\r\n 	<li><span class=\"a-list-item\"> Installation: For requesting installation/wall mounting/demo of this product once delivered, please directly call Micromax support on 1800-102-3999 and provide product\'s model name as well as seller\'s details mentioned on the invoice </span></li>\r\n</ul>', 'Micromax 81.3cm (32 inches) 32T8361HD/32T8352D HD Ready LED TV', '<ul class=\"a-unordered-list a-vertical a-spacing-none\">\r\n 	<li><span class=\"a-list-item\">HD Ready (Resolution: 1366 x 788), Refresh Rate: 60 hertz </span></li>\r\n 	<li><span class=\"a-list-item\"> Connectivity - Input: 2*HDMI, 2*USB, 1*VGA</span></li>\r\n</ul>', 'publish', 'open', 'closed', '', 'micromax-81-3cm-32-inches-32t8361hd-32t8352d-hd-ready-led-tv', '', '', '2017-12-23 11:39:01', '2017-12-23 11:39:01', '', 0, 'http://localhost/ShopperHolics/wordpress/?post_type=product&#038;p=14', 0, 'product', '', 0),
(15, 1, '2017-12-23 11:20:38', '2017-12-23 11:20:38', '', '51XaAdw5gzL._AC_US160_', '', 'inherit', 'open', 'closed', '', '51xaadw5gzl-_ac_us160_', '', '', '2017-12-23 11:20:38', '2017-12-23 11:20:38', '', 14, 'http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/51XaAdw5gzL._AC_US160_.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2017-12-23 11:23:17', '2017-12-23 11:23:17', '<ul class=\"a-unordered-list a-vertical a-spacing-none\">\r\n 	<li><span class=\"a-list-item\"> 2.00GHz Intel Core i3-6006U processor </span></li>\r\n 	<li><span class=\"a-list-item\"> Slim laptop with No DVD </span></li>\r\n 	<li><span class=\"a-list-item\"> 4GB DDR4 RAM </span></li>\r\n 	<li><span class=\"a-list-item\"> 1TB hard drive </span></li>\r\n 	<li><span class=\"a-list-item\"> 15.6-inch screen, Intel HD 520 Graphics </span></li>\r\n 	<li><span class=\"a-list-item\"> Windows 10 operating system </span></li>\r\n 	<li><span class=\"a-list-item\"> 2.2kg laptop </span></li>\r\n 	<li><span class=\"a-list-item\"> 1 year warranty from manufacturer from date of purchase </span></li>\r\n</ul>', 'Acer Aspire 3 A315-51-356P UN.GNPSI.001 15.6-inch Laptop(2.00GHz Intel Core i3-6006U process)Obsidian Black', '<ul class=\"a-unordered-list a-vertical a-spacing-none\">\r\n 	<li><span class=\"a-list-item\">2.00GHz Intel Core i3-6006U processor </span></li>\r\n 	<li><span class=\"a-list-item\"> Slim laptop with No DVD </span></li>\r\n 	<li><span class=\"a-list-item\"> 4GB DDR4 RAM </span></li>\r\n 	<li><span class=\"a-list-item\"> 1TB hard drive</span></li>\r\n</ul>', 'publish', 'open', 'closed', '', 'acer-aspire-3-a315-51-356p-un-gnpsi-001-15-6-inch-laptop-core-i3-6006u-4gb-1tb-windows-10-integrated-graphics-obsidian-black', '', '', '2017-12-24 11:02:27', '2017-12-24 11:02:27', '', 0, 'http://localhost/ShopperHolics/wordpress/?post_type=product&#038;p=16', 0, 'product', '', 0),
(17, 1, '2017-12-23 11:23:11', '2017-12-23 11:23:11', '', 'lp', '', 'inherit', 'open', 'closed', '', 'lp', '', '', '2017-12-23 11:23:11', '2017-12-23 11:23:11', '', 16, 'http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/lp.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2017-12-23 11:28:58', '2017-12-23 11:28:58', '{\n    \"storefront::storefront_layout\": {\n        \"value\": \"left\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 11:27:31\"\n    },\n    \"blogdescription\": {\n        \"value\": \"Addiction For Shopping\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 11:28:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd6bdc449-e0b7-44cc-ade0-5a9ea448f676', '', '', '2017-12-23 11:28:58', '2017-12-23 11:28:58', '', 0, 'http://localhost/ShopperHolics/wordpress/?p=18', 0, 'customize_changeset', '', 0),
(19, 1, '2017-12-23 11:30:27', '2017-12-23 11:30:27', '{\n    \"storefront::background_color\": {\n        \"value\": \"#f9f9f9\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 11:30:27\"\n    },\n    \"storefront::background_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 11:30:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ec70d067-4b3b-4c56-89f5-196a18e3b093', '', '', '2017-12-23 11:30:27', '2017-12-23 11:30:27', '', 0, 'http://localhost/ShopperHolics/wordpress/2017/12/23/ec70d067-4b3b-4c56-89f5-196a18e3b093/', 0, 'customize_changeset', '', 0),
(20, 1, '2017-12-23 11:33:00', '2017-12-23 11:33:00', '', 'cropped-51XaAdw5gzL._AC_US160_-1.jpg', '', 'inherit', 'closed', 'closed', '', 'cropped-51xaadw5gzl-_ac_us160_-jpg', '', '', '2017-12-23 11:33:00', '2017-12-23 11:33:00', '', 0, 'http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/cropped-51XaAdw5gzL._AC_US160_.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2017-12-23 11:33:27', '2017-12-23 11:33:27', '', 'cropped-Mpow-059-Bluetooth-Headphones-Over-Ear-Hi-Fi-Stereo-Wireless-Headset.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-mpow-059-bluetooth-headphones-over-ear-hi-fi-stereo-wireless-headset-jpg', '', '', '2017-12-23 11:33:27', '2017-12-23 11:33:27', '', 0, 'http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/cropped-Mpow-059-Bluetooth-Headphones-Over-Ear-Hi-Fi-Stereo-Wireless-Headset.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2017-12-23 12:53:34', '2017-12-23 12:53:34', '{\n    \"bb-ecommerce-store::bb_ecommerce_store_theme_options\": {\n        \"value\": \"Right Sidebar\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 12:51:42\"\n    },\n    \"bb-ecommerce-store::bb_ecommerce_store_slidersettings-page-1\": {\n        \"value\": \"0\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 12:53:34\"\n    },\n    \"bb-ecommerce-store::bb_ecommerce_store_slidersettings-page-2\": {\n        \"value\": \"0\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 12:52:42\"\n    },\n    \"bb-ecommerce-store::bb_ecommerce_store_servicesettings-page-0\": {\n        \"value\": \"4\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 12:53:34\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bf1f9951-7744-446a-a5bc-82cb8d6a7fc5', '', '', '2017-12-23 12:53:34', '2017-12-23 12:53:34', '', 0, 'http://localhost/ShopperHolics/wordpress/?p=23', 0, 'customize_changeset', '', 0),
(24, 1, '2017-12-23 12:56:25', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-12-23 12:56:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/ShopperHolics/wordpress/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2017-12-23 12:56:25', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-12-23 12:56:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/ShopperHolics/wordpress/?p=25', 1, 'nav_menu_item', '', 0),
(26, 1, '2017-12-23 12:56:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-12-23 12:56:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/ShopperHolics/wordpress/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2017-12-23 12:56:27', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-12-23 12:56:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/ShopperHolics/wordpress/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2017-12-23 12:56:27', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-12-23 12:56:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/ShopperHolics/wordpress/?p=28', 1, 'nav_menu_item', '', 0),
(29, 1, '2017-12-23 12:56:28', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-12-23 12:56:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/ShopperHolics/wordpress/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2017-12-23 12:58:34', '2017-12-23 12:58:34', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 12:58:34\"\n    },\n    \"page_on_front\": {\n        \"value\": \"4\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 12:58:34\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8e817411-da71-4b13-b200-5abb3e3d975f', '', '', '2017-12-23 12:58:34', '2017-12-23 12:58:34', '', 0, 'http://localhost/ShopperHolics/wordpress/2017/12/23/8e817411-da71-4b13-b200-5abb3e3d975f/', 0, 'customize_changeset', '', 0),
(31, 1, '2017-12-23 13:05:04', '2017-12-23 13:05:04', '{\n    \"bb-ecommerce-store::bb_ecommerce_store_theme_options\": {\n        \"value\": \"Grid Layout\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 12:59:21\"\n    },\n    \"blogname\": {\n        \"value\": \"ShopperHolics\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 13:00:23\"\n    },\n    \"sidebars_widgets[footer-1]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 13:03:24\"\n    },\n    \"bb-ecommerce-store::background_color\": {\n        \"value\": \"#f7f7f7\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 13:01:23\"\n    },\n    \"widget_woocommerce_widget_cart[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 13:01:23\"\n    },\n    \"widget_woocommerce_product_search[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 13:02:24\"\n    },\n    \"widget_custom_html[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjA6IiI7czo3OiJjb250ZW50IjtzOjA6IiI7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"0cdb028bb09c0ec94471f73832814fd1\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 13:03:24\"\n    },\n    \"widget_archives[4]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTozOntzOjU6InRpdGxlIjtzOjA6IiI7czo1OiJjb3VudCI7aToxO3M6ODoiZHJvcGRvd24iO2k6MTt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"074b82f2e07a06b91f6a899a62c3572a\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 13:03:24\"\n    },\n    \"widget_recent-posts[2]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTozOntzOjU6InRpdGxlIjtzOjA6IiI7czo2OiJudW1iZXIiO2k6NTtzOjk6InNob3dfZGF0ZSI7YjowO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"5c71c2ddce5c20464c6b7a13f85ecdca\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 13:04:23\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"search-2\",\n            \"recent-comments-2\",\n            \"archives-2\",\n            \"categories-2\",\n            \"meta-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 13:04:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9785b933-6c5b-48f0-874e-4239f05ccc24', '', '', '2017-12-23 13:05:04', '2017-12-23 13:05:04', '', 0, 'http://localhost/ShopperHolics/wordpress/?p=31', 0, 'customize_changeset', '', 0),
(32, 1, '2017-12-23 13:22:18', '2017-12-23 13:22:18', '', 'background', '', 'inherit', 'open', 'closed', '', 'background', '', '', '2017-12-23 13:22:18', '2017-12-23 13:22:18', '', 0, 'http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/background.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2017-12-23 13:25:42', '2017-12-23 13:25:42', '{\n    \"azera-shop::azera_shop_title_color\": {\n        \"value\": \"#dd3333\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 13:23:23\"\n    },\n    \"azera-shop::azera_shop_blog_header_image\": {\n        \"value\": \"http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/background.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 13:25:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4a67478a-e8ee-4c32-831b-914e9804316d', '', '', '2017-12-23 13:25:42', '2017-12-23 13:25:42', '', 0, 'http://localhost/ShopperHolics/wordpress/?p=33', 0, 'customize_changeset', '', 0),
(34, 1, '2017-12-23 13:54:42', '2017-12-23 13:54:42', '', 'cropped-background-1.jpg', '', 'inherit', 'closed', 'closed', '', 'cropped-background-jpg', '', '', '2017-12-23 13:54:42', '2017-12-23 13:54:42', '', 0, 'http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/cropped-background.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2017-12-23 13:51:02', '2017-12-23 13:51:02', '{\n    \"ecommerce-market::header_image\": {\n        \"value\": \"http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/cropped-background.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 13:51:02\"\n    },\n    \"ecommerce-market::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/cropped-background.jpg\",\n            \"thumbnail_url\": \"http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/cropped-background.jpg\",\n            \"timestamp\": 1514037024284,\n            \"attachment_id\": 34,\n            \"width\": 1000,\n            \"height\": 668\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 13:51:02\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9096591e-28b7-4d38-8e6b-02c32dce6915', '', '', '2017-12-23 13:51:02', '2017-12-23 13:51:02', '', 0, 'http://localhost/ShopperHolics/wordpress/2017/12/23/9096591e-28b7-4d38-8e6b-02c32dce6915/', 0, 'customize_changeset', '', 0),
(36, 1, '2017-12-23 13:51:15', '2017-12-23 13:51:15', '', 'cropped-lp.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-lp-jpg', '', '', '2017-12-23 13:51:15', '2017-12-23 13:51:15', '', 0, 'http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/cropped-lp.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2017-12-23 13:51:28', '2017-12-23 13:51:28', '{\n    \"ecommerce-market::header_image\": {\n        \"value\": \"http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/cropped-background.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 13:51:25\"\n    },\n    \"ecommerce-market::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/cropped-background.jpg\",\n            \"thumbnail_url\": \"http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/cropped-background.jpg\",\n            \"timestamp\": 1514037024284,\n            \"attachment_id\": 34,\n            \"width\": 1000,\n            \"height\": 668\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 13:51:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '47a79e50-9ef0-42c4-8411-74c108ba70c3', '', '', '2017-12-23 13:51:28', '2017-12-23 13:51:28', '', 0, 'http://localhost/ShopperHolics/wordpress/?p=37', 0, 'customize_changeset', '', 0),
(38, 1, '2017-12-23 13:54:13', '2017-12-23 13:54:13', '', 'cropped-cropped-51XaAdw5gzL._AC_US160_-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-cropped-51xaadw5gzl-_ac_us160_-1-jpg', '', '', '2017-12-23 13:54:13', '2017-12-23 13:54:13', '', 0, 'http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/cropped-cropped-51XaAdw5gzL._AC_US160_-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2017-12-23 13:54:52', '2017-12-23 13:54:52', '{\n    \"ecommerce-market::header_image\": {\n        \"value\": \"http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/cropped-background-1.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 13:54:50\"\n    },\n    \"ecommerce-market::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/cropped-background-1.jpg\",\n            \"thumbnail_url\": \"http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/cropped-background-1.jpg\",\n            \"timestamp\": 1514037283105,\n            \"attachment_id\": 34,\n            \"width\": 1000,\n            \"height\": 518\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 13:54:50\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd9eac4ed-40d7-4642-860b-6d908143191a', '', '', '2017-12-23 13:54:52', '2017-12-23 13:54:52', '', 0, 'http://localhost/ShopperHolics/wordpress/?p=39', 0, 'customize_changeset', '', 0),
(40, 1, '2017-12-23 13:57:22', '2017-12-23 13:57:22', '[yith_wcwl_wishlist]', 'Wishlist', '', 'publish', 'closed', 'closed', '', 'wishlist', '', '', '2017-12-23 13:57:22', '2017-12-23 13:57:22', '', 0, 'http://localhost/ShopperHolics/wordpress/wishlist/', 0, 'page', '', 0),
(41, 1, '2017-12-23 14:00:07', '2017-12-23 14:00:07', '', 'cropped-background-2.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-background-2-jpg', '', '', '2017-12-23 14:00:07', '2017-12-23 14:00:07', '', 0, 'http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/cropped-background-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2017-12-23 14:00:24', '2017-12-23 14:00:24', '{\n    \"tc-e-commerce-shop::header_image\": {\n        \"value\": \"http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/cropped-background-2.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 14:00:24\"\n    },\n    \"tc-e-commerce-shop::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/cropped-background-2.jpg\",\n            \"thumbnail_url\": \"http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/cropped-background-2.jpg\",\n            \"timestamp\": 1514037608195,\n            \"attachment_id\": 41,\n            \"width\": 1600,\n            \"height\": 400\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 14:00:24\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '16ea64cb-a625-40ef-822e-8b1767873139', '', '', '2017-12-23 14:00:24', '2017-12-23 14:00:24', '', 0, 'http://localhost/ShopperHolics/wordpress/2017/12/23/16ea64cb-a625-40ef-822e-8b1767873139/', 0, 'customize_changeset', '', 0),
(43, 1, '2017-12-23 14:01:35', '2017-12-23 14:01:35', '{\n    \"tc-e-commerce-shop::tc_e_commerce_shop_mail\": {\n        \"value\": \"sahilsurani7868@gmail.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 14:01:35\"\n    },\n    \"tc-e-commerce-shop::tc_e_commerce_shop_call\": {\n        \"value\": \"+918401394432\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 14:01:35\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '306fff2d-02fb-4410-92b5-54da4e8a07a6', '', '', '2017-12-23 14:01:35', '2017-12-23 14:01:35', '', 0, 'http://localhost/ShopperHolics/wordpress/?p=43', 0, 'customize_changeset', '', 0),
(44, 1, '2017-12-23 14:02:22', '2017-12-23 14:02:22', '{\n    \"tc-e-commerce-shop::tc_e_commerce_shop_slidersettings-page-1\": {\n        \"value\": \"4\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 14:02:08\"\n    },\n    \"tc-e-commerce-shop::tc_e_commerce_shop_slidersettings-page-2\": {\n        \"value\": \"40\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 14:02:08\"\n    },\n    \"tc-e-commerce-shop::tc_e_commerce_shop_slidersettings-page-3\": {\n        \"value\": \"5\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 14:02:22\"\n    },\n    \"tc-e-commerce-shop::tc_e_commerce_shop_slidersettings-page-4\": {\n        \"value\": \"7\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 14:02:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2b556404-9395-489d-a4cf-2ab416e3cf61', '', '', '2017-12-23 14:02:22', '2017-12-23 14:02:22', '', 0, 'http://localhost/ShopperHolics/wordpress/?p=44', 0, 'customize_changeset', '', 0),
(45, 1, '2017-12-23 14:04:15', '2017-12-23 14:04:15', '{\n    \"tc-e-commerce-shop::tc_e_commerce_shop_theme_options\": {\n        \"value\": \"Grid Layout\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 14:03:08\"\n    },\n    \"tc-e-commerce-shop::tc_e_commerce_shop_sec1_title\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 14:04:08\"\n    },\n    \"tc-e-commerce-shop::header_image\": {\n        \"value\": \"http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/cropped-background-2.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 14:04:08\"\n    },\n    \"tc-e-commerce-shop::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/cropped-background-2.jpg\",\n            \"thumbnail_url\": \"http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/cropped-background-2.jpg\",\n            \"timestamp\": 1514037608195,\n            \"attachment_id\": 41,\n            \"width\": 1600,\n            \"height\": 400\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 14:04:08\"\n    },\n    \"tc-e-commerce-shop::tc_e_commerce_shop_servicesettings-page-0\": {\n        \"value\": \"4\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-23 14:04:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0e306118-312a-46ef-b58f-dcc459a06d23', '', '', '2017-12-23 14:04:15', '2017-12-23 14:04:15', '', 0, 'http://localhost/ShopperHolics/wordpress/?p=45', 0, 'customize_changeset', '', 0),
(46, 1, '2017-12-24 10:53:48', '2017-12-24 10:53:48', '', 'lenovo-notebook-original-imaery672hsumujs', '', 'inherit', 'open', 'closed', '', 'lenovo-notebook-original-imaery672hsumujs', '', '', '2017-12-24 10:53:48', '2017-12-24 10:53:48', '', 16, 'http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/lenovo-notebook-original-imaery672hsumujs.jpeg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2017-12-24 10:56:40', '2017-12-24 10:56:40', '', 'lenovo-notebook-original-imaery672hsumujs', '', 'inherit', 'open', 'closed', '', 'lenovo-notebook-original-imaery672hsumujs-2', '', '', '2017-12-24 10:56:40', '2017-12-24 10:56:40', '', 16, 'http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/lenovo-notebook-original-imaery672hsumujs-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2017-12-24 10:56:46', '2017-12-24 10:56:46', '<ul class=\"a-unordered-list a-vertical a-spacing-none\">\n 	<li><span class=\"a-list-item\"> 2.00GHz Intel Core i3-6006U processor </span></li>\n 	<li><span class=\"a-list-item\"> Slim laptop with No DVD </span></li>\n 	<li><span class=\"a-list-item\"> 4GB DDR4 RAM </span></li>\n 	<li><span class=\"a-list-item\"> 1TB hard drive </span></li>\n 	<li><span class=\"a-list-item\"> 15.6-inch screen, Intel HD 520 Graphics </span></li>\n 	<li><span class=\"a-list-item\"> Windows 10 operating system </span></li>\n 	<li><span class=\"a-list-item\"> 2.2kg laptop </span></li>\n 	<li><span class=\"a-list-item\"> 1 year warranty from manufacturer from date of purchase </span></li>\n</ul>', 'Acer Aspire 3 A315-51-356P UN.GNPSI.001 15.6-inch Laptop, Obsidian Black', '<ul class=\"a-unordered-list a-vertical a-spacing-none\">\n 	<li><span class=\"a-list-item\">2.00GHz Intel Core i3-6006U processor </span></li>\n 	<li><span class=\"a-list-item\"> Slim laptop with No DVD </span></li>\n 	<li><span class=\"a-list-item\"> 4GB DDR4 RAM </span></li>\n 	<li><span class=\"a-list-item\"> 1TB hard drive</span></li>\n</ul>', 'inherit', 'closed', 'closed', '', '16-autosave-v1', '', '', '2017-12-24 10:56:46', '2017-12-24 10:56:46', '', 16, 'http://localhost/ShopperHolics/wordpress/2017/12/24/16-autosave-v1/', 0, 'revision', '', 0),
(49, 1, '2017-12-24 10:58:24', '2017-12-24 10:58:24', '', 'images', '', 'inherit', 'open', 'closed', '', 'images', '', '', '2017-12-24 10:58:24', '2017-12-24 10:58:24', '', 16, 'http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/images.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2017-12-24 11:02:14', '2017-12-24 11:02:14', '', 'images', '', 'inherit', 'open', 'closed', '', 'images-2', '', '', '2017-12-24 11:02:14', '2017-12-24 11:02:14', '', 16, 'http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/images-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2017-12-24 11:32:08', '2017-12-24 11:32:08', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-12-24 12:06:32', '2017-12-24 12:06:32', '', 0, 'http://localhost/ShopperHolics/wordpress/?page_id=51', 0, 'page', '', 0),
(52, 1, '2017-12-24 11:32:08', '2017-12-24 11:32:08', '', 'Home', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2017-12-24 11:32:08', '2017-12-24 11:32:08', '', 51, 'http://localhost/ShopperHolics/wordpress/2017/12/24/51-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2017-12-24 11:37:01', '2017-12-24 11:37:01', '', 'Home', '', 'inherit', 'closed', 'closed', '', '51-autosave-v1', '', '', '2017-12-24 11:37:01', '2017-12-24 11:37:01', '', 51, 'http://localhost/ShopperHolics/wordpress/2017/12/24/51-autosave-v1/', 0, 'revision', '', 0),
(60, 1, '2017-12-24 12:26:44', '2017-12-24 12:26:44', '', 'Sony HeadPhones', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2017-12-24 12:26:44', '2017-12-24 12:26:44', '', 1, 'http://localhost/ShopperHolics/wordpress/2017/12/24/1-autosave-v1/', 0, 'revision', '', 0),
(61, 1, '2017-12-24 12:28:26', '2017-12-24 12:28:26', '', 'background', '', 'inherit', 'open', 'closed', '', 'background-2', '', '', '2017-12-24 12:28:26', '2017-12-24 12:28:26', '', 1, 'http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/background-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2017-12-24 12:28:38', '2017-12-24 12:28:38', '', 'Sony HeadPhones', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-12-24 12:28:38', '2017-12-24 12:28:38', '', 1, 'http://localhost/ShopperHolics/wordpress/2017/12/24/1-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2017-12-24 12:29:17', '2017-12-24 12:29:17', '<ul class=\"a-unordered-list a-vertical a-spacing-none\">\r\n 	<li><span class=\"a-list-item\">Headphones made for Electronic Dance Music(EDM) </span></li>\r\n 	<li><span class=\"a-list-item\"> 30 mm closed, dynamic driver unit for powerful EXTRA BASS sound</span></li>\r\n</ul>', 'Sony HeadPhones', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-12-24 12:29:17', '2017-12-24 12:29:17', '', 1, 'http://localhost/ShopperHolics/wordpress/2017/12/24/1-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2017-12-24 12:29:58', '2017-12-24 12:29:58', '{\n    \"storevilla::storevilla_slider_team_id\": {\n        \"value\": \"28\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-24 12:29:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ff8b9758-ec82-4d33-97df-d9ec60b6b6e6', '', '', '2017-12-24 12:29:58', '2017-12-24 12:29:58', '', 0, 'http://localhost/ShopperHolics/wordpress/2017/12/24/ff8b9758-ec82-4d33-97df-d9ec60b6b6e6/', 0, 'customize_changeset', '', 0),
(65, 1, '2017-12-24 12:40:34', '2017-12-24 12:40:34', '', 'Women\'s Winter Collection', '', 'publish', 'open', 'open', '', 'mens-winter-collection', '', '', '2017-12-24 13:08:10', '2017-12-24 13:08:10', '', 0, 'http://localhost/ShopperHolics/wordpress/?p=65', 0, 'post', '', 0),
(66, 1, '2017-12-24 12:40:26', '2017-12-24 12:40:26', '', 'th (1)', '', 'inherit', 'open', 'closed', '', 'th-1', '', '', '2017-12-24 12:40:26', '2017-12-24 12:40:26', '', 65, 'http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/th-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2017-12-24 12:40:34', '2017-12-24 12:40:34', '', 'Men\'s Winter Collection', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2017-12-24 12:40:34', '2017-12-24 12:40:34', '', 65, 'http://localhost/ShopperHolics/wordpress/2017/12/24/65-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2017-12-24 12:42:48', '2017-12-24 12:42:48', '', 'th (1)', '', 'inherit', 'open', 'closed', '', 'th-1-2', '', '', '2017-12-24 12:42:48', '2017-12-24 12:42:48', '', 65, 'http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/th-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2017-12-24 12:47:11', '2017-12-24 12:47:11', '', 'th (2)', '', 'inherit', 'open', 'closed', '', 'th-2', '', '', '2017-12-24 12:47:11', '2017-12-24 12:47:11', '', 0, 'http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/th-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2017-12-24 12:47:49', '2017-12-24 12:47:49', '{\n    \"storevilla::storevilla_promo_area_one_image\": {\n        \"value\": \"http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/th-2.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-24 12:47:26\"\n    },\n    \"storevilla::storevilla_promo_area_two_image\": {\n        \"value\": \"http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/th.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-24 12:47:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '237ff38c-f9d2-46fc-b14e-72e1cefce00b', '', '', '2017-12-24 12:47:49', '2017-12-24 12:47:49', '', 0, 'http://localhost/ShopperHolics/wordpress/?p=71', 0, 'customize_changeset', '', 0),
(72, 1, '2017-12-24 12:47:31', '2017-12-24 12:47:31', '', 'th', '', 'inherit', 'open', 'closed', '', 'th', '', '', '2017-12-24 12:47:31', '2017-12-24 12:47:31', '', 0, 'http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/th.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2017-12-24 13:00:53', '2017-12-24 13:00:53', '', 'ChenOne Winter Dresses 2014-15 for Ladies and Gents-001-www.she-styles.blogspot.com', '', 'inherit', 'open', 'closed', '', 'chenone-winter-dresses-2014-15-for-ladies-and-gents-001-www-she-styles-blogspot-com', '', '', '2017-12-24 13:00:53', '2017-12-24 13:00:53', '', 0, 'http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/ChenOne-Winter-Dresses-2014-15-for-Ladies-and-Gents-001-www.she-styles.blogspot.com_.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2017-12-24 13:01:21', '2017-12-24 13:01:21', '{\n    \"storevilla::storevilla_promo_area_one_image\": {\n        \"value\": \"http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/ChenOne-Winter-Dresses-2014-15-for-Ladies-and-Gents-001-www.she-styles.blogspot.com_.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-24 13:01:00\"\n    },\n    \"storevilla::storevilla_promo_area_two_image\": {\n        \"value\": \"http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/Amazon-1340-X777-MENS-SHOES._V298501455_.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-24 13:01:21\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd1a6169c-7ddb-4210-b307-fc9a61b77c47', '', '', '2017-12-24 13:01:21', '2017-12-24 13:01:21', '', 0, 'http://localhost/ShopperHolics/wordpress/?p=74', 0, 'customize_changeset', '', 0),
(75, 1, '2017-12-24 13:01:11', '2017-12-24 13:01:11', '', 'Amazon-1340-X777-MENS-SHOES._V298501455_', '', 'inherit', 'open', 'closed', '', 'amazon-1340-x777-mens-shoes-_v298501455_', '', '', '2017-12-24 13:01:11', '2017-12-24 13:01:11', '', 0, 'http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/Amazon-1340-X777-MENS-SHOES._V298501455_.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2017-12-24 13:02:04', '2017-12-24 13:02:04', '', 'cf34817ddc300c09fcf1de4803c34833', '', 'inherit', 'open', 'closed', '', 'cf34817ddc300c09fcf1de4803c34833', '', '', '2017-12-24 13:02:04', '2017-12-24 13:02:04', '', 65, 'http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/cf34817ddc300c09fcf1de4803c34833.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2017-12-24 13:02:14', '2017-12-24 13:02:14', '', 'Women\'s Winter Collection', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2017-12-24 13:02:14', '2017-12-24 13:02:14', '', 65, 'http://localhost/ShopperHolics/wordpress/2017/12/24/65-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2017-12-24 13:07:06', '2017-12-24 13:07:06', '', 'cf34817ddc300c09fcf1de4803c34833', '', 'inherit', 'open', 'closed', '', 'cf34817ddc300c09fcf1de4803c34833-2', '', '', '2017-12-24 13:07:06', '2017-12-24 13:07:06', '', 65, 'http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/cf34817ddc300c09fcf1de4803c34833-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2017-12-24 13:08:03', '2017-12-24 13:08:03', '', 'cf34817ddc300c09fcf1de4803c34833', '', 'inherit', 'open', 'closed', '', 'cf34817ddc300c09fcf1de4803c34833-3', '', '', '2017-12-24 13:08:03', '2017-12-24 13:08:03', '', 65, 'http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/cf34817ddc300c09fcf1de4803c34833-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2017-12-24 13:30:53', '2017-12-24 13:30:53', '', 'M&S Collection Womens Clothing', '', 'publish', 'open', 'closed', '', 'ms-collection-womens-clothing', '', '', '2017-12-24 20:27:07', '2017-12-24 20:27:07', '', 0, 'http://localhost/ShopperHolics/wordpress/?post_type=product&#038;p=80', 0, 'product', '', 0),
(81, 1, '2017-12-24 13:30:31', '2017-12-24 13:30:31', '', 'images (4)', '', 'inherit', 'open', 'closed', '', 'images-4', '', '', '2017-12-24 13:30:31', '2017-12-24 13:30:31', '', 80, 'http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/images-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2017-12-24 13:32:10', '2017-12-24 13:32:10', '', 'M&S Collection Womens Clothing', '', 'publish', 'open', 'closed', '', 'ms-collection-womens-clothing-2', '', '', '2017-12-24 13:36:33', '2017-12-24 13:36:33', '', 0, 'http://localhost/ShopperHolics/wordpress/?post_type=product&#038;p=83', 0, 'product', '', 0),
(84, 1, '2017-12-24 13:32:03', '2017-12-24 13:32:03', '', 'images (3)', '', 'inherit', 'open', 'closed', '', 'images-3', '', '', '2017-12-24 13:32:03', '2017-12-24 13:32:03', '', 83, 'http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/images-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2017-12-24 13:33:33', '2017-12-24 13:33:33', '', 'J&G Collection Womens Clothing', '', 'publish', 'open', 'closed', '', 'ms-collection-womens-clothing-3', '', '', '2017-12-24 20:24:05', '2017-12-24 20:24:05', '', 0, 'http://localhost/ShopperHolics/wordpress/?post_type=product&#038;p=85', 0, 'product', '', 0),
(86, 1, '2017-12-24 13:33:24', '2017-12-24 13:33:24', '', 'images (2)', '', 'inherit', 'open', 'closed', '', 'images-2-2', '', '', '2017-12-24 13:33:24', '2017-12-24 13:33:24', '', 85, 'http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/images-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2017-12-24 13:34:31', '2017-12-24 13:34:31', '', 'G&G Collection Womens Clothing', '', 'publish', 'open', 'closed', '', 'gg-collection-womens-clothing', '', '', '2017-12-24 13:35:11', '2017-12-24 13:35:11', '', 0, 'http://localhost/ShopperHolics/wordpress/?post_type=product&#038;p=87', 0, 'product', '', 0),
(88, 1, '2017-12-24 13:34:19', '2017-12-24 13:34:19', '', 'images (5)', '', 'inherit', 'open', 'closed', '', 'images-5', '', '', '2017-12-24 13:34:19', '2017-12-24 13:34:19', '', 87, 'http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/images-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2017-12-24 13:38:18', '2017-12-24 13:38:18', '', 'M&S Winter Jacket Collection(Men)', '', 'publish', 'open', 'closed', '', 'ms-winter-jacket-collectionmen', '', '', '2017-12-24 13:38:18', '2017-12-24 13:38:18', '', 0, 'http://localhost/ShopperHolics/wordpress/?post_type=product&#038;p=89', 0, 'product', '', 0),
(90, 1, '2017-12-24 13:38:00', '2017-12-24 13:38:00', '', 'images (1)', '', 'inherit', 'open', 'closed', '', 'images-1', '', '', '2017-12-24 13:38:00', '2017-12-24 13:38:00', '', 89, 'http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/images-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2017-12-24 13:39:27', '2017-12-24 13:39:27', '', 'G&G Winter Jacket Collection(Men)', '', 'publish', 'open', 'closed', '', 'gg-winter-jacket-collectionmen', '', '', '2017-12-24 13:39:27', '2017-12-24 13:39:27', '', 0, 'http://localhost/ShopperHolics/wordpress/?post_type=product&#038;p=91', 0, 'product', '', 0),
(92, 1, '2017-12-24 13:39:18', '2017-12-24 13:39:18', '', 'download', '', 'inherit', 'open', 'closed', '', 'download', '', '', '2017-12-24 13:39:18', '2017-12-24 13:39:18', '', 91, 'http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/download.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2017-12-24 13:40:32', '2017-12-24 13:40:32', '', 'J&G Winter Jacket Collection(Men)', '', 'publish', 'open', 'closed', '', 'jg-winter-jacket-collectionmen', '', '', '2018-01-04 09:59:21', '2018-01-04 09:59:21', '', 0, 'http://localhost/ShopperHolics/wordpress/?post_type=product&#038;p=93', 0, 'product', '', 0),
(94, 1, '2017-12-24 13:40:22', '2017-12-24 13:40:22', '', 'images', '', 'inherit', 'open', 'closed', '', 'images-6', '', '', '2017-12-24 13:40:22', '2017-12-24 13:40:22', '', 93, 'http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/images-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2017-12-24 13:41:25', '2017-12-24 13:41:25', '', 'M&S Winter Jacket Collection(Men)', '', 'publish', 'open', 'closed', '', 'ms-winter-jacket-collectionmen-2', '', '', '2017-12-24 13:54:52', '2017-12-24 13:54:52', '', 0, 'http://localhost/ShopperHolics/wordpress/?post_type=product&#038;p=95', 0, 'product', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(96, 1, '2017-12-24 13:41:19', '2017-12-24 13:41:19', '', 'download (1)', '', 'inherit', 'open', 'closed', '', 'download-1', '', '', '2017-12-24 13:41:19', '2017-12-24 13:41:19', '', 95, 'http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/download-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2017-12-24 13:59:58', '2017-12-24 13:59:58', '{\n    \"sidebars_widgets[storevillamainwidget]\": {\n        \"value\": [\n            \"storevilla_product_widget_area-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-24 13:59:01\"\n    },\n    \"widget_storevilla_product_widget_area[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjI4OiJzdG9yZXZpbGxhX3RvcF9wcm9kdWN0X3RpdGxlIjtzOjg6IlRyZW5kaW5nIjtzOjI5OiJzdG9yZXZpbGxhX21haW5fcHJvZHVjdF90aXRsZSI7czoxNzoiV2ludGVyIENvbGxlY3Rpb24iO3M6MjM6InN0b3JldmlsbGFfcHJvZHVjdF90eXBlIjtzOjE0OiJsYXRlc3RfcHJvZHVjdCI7czoyNToic3RvcmV2aWxsYV9wcm9kdWN0X251bWJlciI7aTo1O30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"32c78ef75bdfe5090a0337764b9a4597\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-24 13:59:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '990c6535-2458-4d63-95c1-ab7d76c3bd6f', '', '', '2017-12-24 13:59:58', '2017-12-24 13:59:58', '', 0, 'http://localhost/ShopperHolics/wordpress/?p=97', 0, 'customize_changeset', '', 0),
(98, 1, '2017-12-24 19:28:04', '2017-12-24 19:28:04', ' ', '', '', 'publish', 'closed', 'closed', '', '98', '', '', '2017-12-24 19:32:23', '2017-12-24 19:32:23', '', 0, 'http://localhost/ShopperHolics/wordpress/?p=98', 1, 'nav_menu_item', '', 0),
(99, 1, '2017-12-24 19:30:08', '2017-12-24 19:30:08', ' ', '', '', 'publish', 'closed', 'closed', '', '99', '', '', '2017-12-24 19:32:23', '2017-12-24 19:32:23', '', 0, 'http://localhost/ShopperHolics/wordpress/?p=99', 2, 'nav_menu_item', '', 0),
(100, 1, '2017-12-24 19:30:08', '2017-12-24 19:30:08', ' ', '', '', 'publish', 'closed', 'closed', '', '100', '', '', '2017-12-24 19:32:24', '2017-12-24 19:32:24', '', 22, 'http://localhost/ShopperHolics/wordpress/?p=100', 4, 'nav_menu_item', '', 0),
(101, 1, '2017-12-24 19:30:08', '2017-12-24 19:30:08', '', 'Women\'s Collection', '', 'publish', 'closed', 'closed', '', 'womens-collection', '', '', '2017-12-24 19:32:23', '2017-12-24 19:32:23', '', 22, 'http://localhost/ShopperHolics/wordpress/?p=101', 3, 'nav_menu_item', '', 0),
(102, 1, '2017-12-24 19:30:08', '2017-12-24 19:30:08', ' ', '', '', 'publish', 'closed', 'closed', '', '102', '', '', '2017-12-24 19:32:24', '2017-12-24 19:32:24', '', 22, 'http://localhost/ShopperHolics/wordpress/?p=102', 5, 'nav_menu_item', '', 0),
(103, 1, '2017-12-24 19:30:08', '2017-12-24 19:30:08', ' ', '', '', 'publish', 'closed', 'closed', '', '103', '', '', '2017-12-24 19:32:24', '2017-12-24 19:32:24', '', 0, 'http://localhost/ShopperHolics/wordpress/?p=103', 6, 'nav_menu_item', '', 0),
(104, 1, '2017-12-24 19:30:09', '2017-12-24 19:30:09', ' ', '', '', 'publish', 'closed', 'closed', '', '104', '', '', '2017-12-24 19:32:24', '2017-12-24 19:32:24', '', 15, 'http://localhost/ShopperHolics/wordpress/?p=104', 9, 'nav_menu_item', '', 0),
(105, 1, '2017-12-24 19:30:09', '2017-12-24 19:30:09', ' ', '', '', 'publish', 'closed', 'closed', '', '105', '', '', '2017-12-24 19:32:24', '2017-12-24 19:32:24', '', 15, 'http://localhost/ShopperHolics/wordpress/?p=105', 8, 'nav_menu_item', '', 0),
(106, 1, '2017-12-24 19:30:09', '2017-12-24 19:30:09', ' ', '', '', 'publish', 'closed', 'closed', '', '106', '', '', '2017-12-24 19:32:24', '2017-12-24 19:32:24', '', 15, 'http://localhost/ShopperHolics/wordpress/?p=106', 7, 'nav_menu_item', '', 0),
(107, 1, '2017-12-24 19:30:09', '2017-12-24 19:30:09', '', 'Baby&Kids', '', 'publish', 'closed', 'closed', '', 'babykids', '', '', '2017-12-24 19:32:24', '2017-12-24 19:32:24', '', 0, 'http://localhost/ShopperHolics/wordpress/?p=107', 10, 'nav_menu_item', '', 0),
(108, 1, '2017-12-24 19:30:10', '2017-12-24 19:30:10', ' ', '', '', 'publish', 'closed', 'closed', '', '108', '', '', '2017-12-24 19:32:24', '2017-12-24 19:32:24', '', 0, 'http://localhost/ShopperHolics/wordpress/?p=108', 11, 'nav_menu_item', '', 0),
(109, 1, '2017-12-24 20:00:58', '2017-12-24 20:00:58', '{\n    \"sidebars_widgets[storevillamainwidget]\": {\n        \"value\": [\n            \"storevilla_cat_widget_area-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-24 20:00:38\"\n    },\n    \"widget_storevilla_cat_with_product_widget_area[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjMzOiJzdG9yZXZpbGxhX2NhdF9tYWluX3Byb2R1Y3RfdGl0bGUiO3M6MTc6IldpbnRlciBDb2xsZWN0aW9uIjtzOjI5OiJzdG9yZXZpbGxhX2NhdF9pbWFnZV9hbGlnbWVudCI7czoxMDoibGVmdF9hbGlnbiI7czoyMzoic3RvcmV2aWxsYV93b29fY2F0ZWdvcnkiO3M6MjoiMjciO3M6Mjk6InN0b3JldmlsbGFfY2F0X3Byb2R1Y3RfbnVtYmVyIjtpOjQ7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"3c57f67f113667fa6acc923a0a142683\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-24 19:58:39\"\n    },\n    \"widget_storevilla_cat_widget_area[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjI3OiJzdG9yZXZpbGxhX3RvcF9jYXRfYmdfaW1hZ2UiO3M6MDoiIjtzOjI0OiJzdG9yZXZpbGxhX3RvcF9jYXRfdGl0bGUiO3M6ODoiVFJFTkRJTkciO3M6MjU6InN0b3JldmlsbGFfbWFpbl9jYXRfdGl0bGUiO3M6MTc6IldpbnRlciBDb2xsZWN0aW9uIjtzOjI2OiJzdG9yZXZpbGxhX3NlbGVjdF9jYXRlZ29yeSI7YToxOntpOjI3O3M6MToiMSI7fX0=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"7199dae187c7fe1c2d460d2f295abcf2\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-24 20:00:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5c996221-d9b8-49bd-a260-9c71eb714403', '', '', '2017-12-24 20:00:58', '2017-12-24 20:00:58', '', 0, 'http://localhost/ShopperHolics/wordpress/?p=109', 0, 'customize_changeset', '', 0),
(110, 1, '2017-12-24 20:11:48', '2017-12-24 20:11:48', '{\n    \"sidebars_widgets[storevillamainwidget]\": {\n        \"value\": [\n            \"storevilla_product_widget_area-5\",\n            \"storevilla_cat_with_product_widget_area-5\",\n            \"storevilla_latest_product_cat_widget_area-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-24 20:10:02\"\n    },\n    \"widget_storevilla_column_product_widget_area[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyMTp7czoyNzoiYmFubmVyX3N0YXJ0X2dyb3VwX2xlZnRfb25lIjtzOjA6IiI7czoyOToic3RvcmV2aWxsYV9jb2x1bW5fb25lX2Rpc3BsYXkiO3M6MToiMSI7czozNToic3RvcmV2aWxsYV9jb2x1bW5fb25lX3Byb2R1Y3RfdGl0bGUiO3M6MTc6IldpbnRlciBDb2xsZWN0aW9uIjtzOjM0OiJzdG9yZXZpbGxhX2NvbHVtbl9vbmVfcHJvZHVjdF90eXBlIjtzOjc6Im9uX3NhbGUiO3M6MzA6InN0b3JldmlsbGFfY29sdW1uX29uZV9jYXRlZ29yeSI7czoyOiIyNyI7czozNjoic3RvcmV2aWxsYV9jb2x1bW5fb25lX3Byb2R1Y3RfbnVtYmVyIjtpOjQ7czoyNToiYmFubmVyX2VuZF9ncm91cF9sZWZ0X29uZSI7czowOiIiO3M6Mjc6ImJhbm5lcl9zdGFydF9ncm91cF9sZWZ0X3R3byI7czowOiIiO3M6Mjk6InN0b3JldmlsbGFfY29sdW1uX3R3b19kaXNwbGF5IjtzOjA6IiI7czozNToic3RvcmV2aWxsYV9jb2x1bW5fdHdvX3Byb2R1Y3RfdGl0bGUiO3M6MDoiIjtzOjM0OiJzdG9yZXZpbGxhX2NvbHVtbl90d29fcHJvZHVjdF90eXBlIjtzOjE0OiJsYXRlc3RfcHJvZHVjdCI7czozMDoic3RvcmV2aWxsYV9jb2x1bW5fdHdvX2NhdGVnb3J5IjtzOjA6IiI7czozNjoic3RvcmV2aWxsYV9jb2x1bW5fdHdvX3Byb2R1Y3RfbnVtYmVyIjtpOjA7czoyNToiYmFubmVyX2VuZF9ncm91cF9sZWZ0X3R3byI7czowOiIiO3M6Mjk6ImJhbm5lcl9zdGFydF9ncm91cF9sZWZ0X3RocmVlIjtzOjA6IiI7czozMToic3RvcmV2aWxsYV9jb2x1bW5fdGhyZWVfZGlzcGxheSI7czowOiIiO3M6Mzc6InN0b3JldmlsbGFfY29sdW1uX3RocmVlX3Byb2R1Y3RfdGl0bGUiO3M6MDoiIjtzOjM2OiJzdG9yZXZpbGxhX2NvbHVtbl90aHJlZV9wcm9kdWN0X3R5cGUiO3M6MTQ6ImxhdGVzdF9wcm9kdWN0IjtzOjMyOiJzdG9yZXZpbGxhX2NvbHVtbl90aHJlZV9jYXRlZ29yeSI7czowOiIiO3M6Mzg6InN0b3JldmlsbGFfY29sdW1uX3RocmVlX3Byb2R1Y3RfbnVtYmVyIjtpOjA7czoyNzoiYmFubmVyX2VuZF9ncm91cF9sZWZ0X3RocmVlIjtzOjA6IiI7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"77e2eb2dec3ed9df7a831a374433d1ff\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-24 20:04:01\"\n    },\n    \"widget_storevilla_product_widget_area[5]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjI4OiJzdG9yZXZpbGxhX3RvcF9wcm9kdWN0X3RpdGxlIjtzOjg6IlRSRU5ESU5HIjtzOjI5OiJzdG9yZXZpbGxhX21haW5fcHJvZHVjdF90aXRsZSI7czoxNzoiV2ludGVyIENvbGxlY3Rpb24iO3M6MjM6InN0b3JldmlsbGFfcHJvZHVjdF90eXBlIjtzOjE0OiJsYXRlc3RfcHJvZHVjdCI7czoyNToic3RvcmV2aWxsYV9wcm9kdWN0X251bWJlciI7aTo0O30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"129ddc8e65c5890bb5bdedf64306dfee\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-24 20:07:02\"\n    },\n    \"widget_storevilla_cat_with_product_widget_area[5]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjMzOiJzdG9yZXZpbGxhX2NhdF9tYWluX3Byb2R1Y3RfdGl0bGUiO3M6MTE6IkVsZWN0cm9uaWNzIjtzOjI5OiJzdG9yZXZpbGxhX2NhdF9pbWFnZV9hbGlnbWVudCI7czoxMDoibGVmdF9hbGlnbiI7czoyMzoic3RvcmV2aWxsYV93b29fY2F0ZWdvcnkiO3M6MjoiMTUiO3M6Mjk6InN0b3JldmlsbGFfY2F0X3Byb2R1Y3RfbnVtYmVyIjtpOjQ7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"50d6d5c4b838af250c528b2ffeed8201\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-24 20:10:02\"\n    },\n    \"widget_storevilla_latest_product_cat_widget_area[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo1OntzOjI4OiJzdG9yZXZpbGxhX3RvcF9wcm9kdWN0X3RpdGxlIjtzOjExOiJXT01FTiBTVFlMRSI7czoyOToic3RvcmV2aWxsYV9tYWluX3Byb2R1Y3RfdGl0bGUiO3M6NToiV29tZW4iO3M6MjM6InN0b3JldmlsbGFfcHJvZHVjdF90eXBlIjtzOjg6ImNhdGVnb3J5IjtzOjIzOiJzdG9yZXZpbGxhX3dvb19jYXRlZ29yeSI7czoyOiIyNiI7czoyNToic3RvcmV2aWxsYV9wcm9kdWN0X251bWJlciI7aTo0O30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"2a6e9b3e945b68c50dea584180bed72b\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-24 20:11:48\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3229212b-512d-4277-b714-516d1a30071a', '', '', '2017-12-24 20:11:48', '2017-12-24 20:11:48', '', 0, 'http://localhost/ShopperHolics/wordpress/?p=110', 0, 'customize_changeset', '', 0),
(111, 1, '2017-12-24 20:21:19', '2017-12-24 20:21:19', '', 'images (2)', '', 'inherit', 'open', 'closed', '', 'images-2-3', '', '', '2017-12-24 20:21:19', '2017-12-24 20:21:19', '', 85, 'http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/images-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2017-12-24 20:23:57', '2017-12-24 20:23:57', '', 'images (2)', '', 'inherit', 'open', 'closed', '', 'images-2-4', '', '', '2017-12-24 20:23:57', '2017-12-24 20:23:57', '', 85, 'http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/images-2-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(113, 1, '2017-12-24 20:25:14', '2017-12-24 20:25:14', '', 'images (4)', '', 'inherit', 'open', 'closed', '', 'images-4-2', '', '', '2017-12-24 20:25:14', '2017-12-24 20:25:14', '', 80, 'http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/images-4-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(114, 1, '2017-12-24 20:26:59', '2017-12-24 20:26:59', '', 'images (4)', '', 'inherit', 'open', 'closed', '', 'images-4-3', '', '', '2017-12-24 20:26:59', '2017-12-24 20:26:59', '', 80, 'http://localhost/ShopperHolics/wordpress/wp-content/uploads/2017/12/images-4-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2017-12-24 20:59:25', '2017-12-24 20:59:25', '{\n    \"storevilla::storevilla_web_page_layout_options\": {\n        \"value\": \"disable\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-24 20:57:26\"\n    },\n    \"sidebars_widgets[storevillamainwidget]\": {\n        \"value\": [\n            \"storevilla_product_widget_area-5\",\n            \"storevilla_latest_product_cat_widget_area-5\",\n            \"storevilla_latest_product_cat_widget_area-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-24 20:59:25\"\n    },\n    \"widget_storevilla_latest_product_cat_widget_area[5]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo1OntzOjI4OiJzdG9yZXZpbGxhX3RvcF9wcm9kdWN0X3RpdGxlIjtzOjY6IkxhdGVzdCI7czoyOToic3RvcmV2aWxsYV9tYWluX3Byb2R1Y3RfdGl0bGUiO3M6MTE6IkVsZWN0cm9uaWNzIjtzOjIzOiJzdG9yZXZpbGxhX3Byb2R1Y3RfdHlwZSI7czo4OiJjYXRlZ29yeSI7czoyMzoic3RvcmV2aWxsYV93b29fY2F0ZWdvcnkiO3M6MjoiMTUiO3M6MjU6InN0b3JldmlsbGFfcHJvZHVjdF9udW1iZXIiO2k6NDt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"74378dfc574f295882862f38828cab7f\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-24 20:59:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '25327ac7-c725-41d5-99d6-733857b5e06e', '', '', '2017-12-24 20:59:25', '2017-12-24 20:59:25', '', 0, 'http://localhost/ShopperHolics/wordpress/?p=115', 0, 'customize_changeset', '', 0),
(116, 1, '2017-12-24 22:35:29', '2017-12-24 22:35:29', '{\n    \"storevilla::storevilla_promo_area_one_link\": {\n        \"value\": \"http://localhost/ShopperHolics/wordpress/shop/\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2017-12-24 22:35:29\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8bae3d16-ba16-48ad-8e22-79e8d0e2a7fe', '', '', '2017-12-24 22:35:29', '2017-12-24 22:35:29', '', 0, 'http://localhost/ShopperHolics/wordpress/2017/12/24/8bae3d16-ba16-48ad-8e22-79e8d0e2a7fe/', 0, 'customize_changeset', '', 0),
(118, 1, '2017-12-24 22:42:55', '2017-12-24 22:42:55', ' ', '', '', 'publish', 'closed', 'closed', '', '118', '', '', '2018-01-01 20:27:40', '2018-01-01 20:27:40', '', 0, 'http://localhost/ShopperHolics/wordpress/?p=118', 1, 'nav_menu_item', '', 0),
(119, 1, '2017-12-24 22:42:56', '2017-12-24 22:42:56', ' ', '', '', 'publish', 'closed', 'closed', '', '119', '', '', '2018-01-01 20:27:40', '2018-01-01 20:27:40', '', 0, 'http://localhost/ShopperHolics/wordpress/?p=119', 2, 'nav_menu_item', '', 0),
(120, 1, '2017-12-24 22:42:56', '2017-12-24 22:42:56', ' ', '', '', 'publish', 'closed', 'closed', '', '120', '', '', '2018-01-01 20:27:41', '2018-01-01 20:27:41', '', 0, 'http://localhost/ShopperHolics/wordpress/?p=120', 5, 'nav_menu_item', '', 0),
(121, 1, '2017-12-24 22:42:57', '2017-12-24 22:42:57', ' ', '', '', 'publish', 'closed', 'closed', '', '121', '', '', '2018-01-01 20:27:40', '2018-01-01 20:27:40', '', 0, 'http://localhost/ShopperHolics/wordpress/?p=121', 3, 'nav_menu_item', '', 0),
(122, 1, '2017-12-24 22:42:57', '2017-12-24 22:42:57', ' ', '', '', 'publish', 'closed', 'closed', '', '122', '', '', '2018-01-01 20:27:40', '2018-01-01 20:27:40', '', 0, 'http://localhost/ShopperHolics/wordpress/?p=122', 4, 'nav_menu_item', '', 0),
(123, 1, '2018-01-01 20:02:23', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-01-01 20:02:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/ShopperHolics/wordpress/?p=123', 0, 'post', '', 0),
(124, 1, '2018-01-01 20:07:11', '0000-00-00 00:00:00', '{\n    \"storevilla::storevilla_top_header\": {\n        \"value\": \"enable\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-01 20:06:11\"\n    },\n    \"nav_menu_item[-702391075]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 6,\n            \"type\": \"custom\",\n            \"title\": \"Sign up\",\n            \"url\": \"#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Sign up\",\n            \"nav_menu_term_id\": 31,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-01 20:07:11\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '6188840b-35dc-4701-8e43-c4323a422870', '', '', '2018-01-01 20:07:11', '2018-01-01 20:07:11', '', 0, 'http://localhost/ShopperHolics/wordpress/?p=124', 0, 'customize_changeset', '', 0),
(125, 1, '2018-01-01 20:10:16', '2018-01-01 20:10:16', '', 'Sign up', '', 'publish', 'closed', 'closed', '', 'sign-up', '', '', '2018-01-01 20:27:41', '2018-01-01 20:27:41', '', 0, 'http://localhost/ShopperHolics/wordpress/?p=125', 6, 'nav_menu_item', '', 0),
(126, 1, '2018-01-04 09:55:12', '2018-01-04 09:55:12', '', 'Order &ndash; January 4, 2018 @ 09:55 AM', '', 'wc-on-hold', 'open', 'closed', 'order_5a4dfa006b33a', 'order-jan-04-2018-0955-am', '', '', '2018-01-04 09:55:17', '2018-01-04 09:55:17', '', 0, 'http://localhost/ShopperHolics/wordpress/?post_type=shop_order&#038;p=126', 0, 'shop_order', '', 2),
(127, 1, '2018-01-04 10:03:07', '2018-01-04 10:03:07', '', 'Order &ndash; January 4, 2018 @ 10:03 AM', '', 'wc-on-hold', 'open', 'closed', 'order_5a4dfbdb5e6ad', 'order-jan-04-2018-1003-am', '', '', '2018-01-04 10:03:12', '2018-01-04 10:03:12', '', 0, 'http://localhost/ShopperHolics/wordpress/?post_type=shop_order&#038;p=127', 0, 'shop_order', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'order', '0'),
(2, 16, 'order', '0'),
(3, 17, 'order', '0'),
(4, 18, 'order', '0'),
(5, 19, 'order', '0'),
(6, 20, 'order', '0'),
(7, 21, 'order', '0'),
(8, 15, 'product_count_product_cat', '4'),
(9, 16, 'product_count_product_cat', '2'),
(10, 17, 'product_count_product_cat', '1'),
(11, 20, 'product_count_product_cat', '1'),
(12, 22, 'order', '0'),
(14, 24, 'order', '0'),
(16, 26, 'order', '0'),
(17, 27, 'order', '0'),
(18, 22, 'product_count_product_cat', '8'),
(19, 24, 'product_count_product_cat', '4'),
(20, 27, 'product_count_product_cat', '4'),
(21, 26, 'product_count_product_cat', '4');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Electronics', 'electronics', 0),
(16, 'HeadPhones', 'headphones', 0),
(17, 'Television', 'television', 0),
(18, 'Mobile', 'mobile', 0),
(19, 'Oven', 'oven', 0),
(20, 'Laptop', 'laptop', 0),
(21, 'Tablet', 'tablet', 0),
(22, 'Garments', 'garments', 0),
(24, 'Mens Collection', 'mens-collection-garments', 0),
(26, 'Women\'s Collection', 'womens-collection', 0),
(27, 'Winter Collection', 'winter-collection', 0),
(28, 'offer', 'offer', 0),
(29, 'post-format-image', 'post-format-image', 0),
(30, 'Main Menu', 'main-menu', 0),
(31, 'Top menu', 'top-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 28, 0),
(1, 29, 0),
(9, 2, 0),
(9, 15, 0),
(9, 16, 0),
(12, 2, 0),
(12, 15, 0),
(12, 16, 0),
(14, 2, 0),
(14, 15, 0),
(14, 17, 0),
(16, 2, 0),
(16, 8, 0),
(16, 15, 0),
(16, 20, 0),
(65, 28, 0),
(80, 2, 0),
(80, 22, 0),
(80, 26, 0),
(83, 2, 0),
(83, 22, 0),
(83, 26, 0),
(85, 2, 0),
(85, 22, 0),
(85, 26, 0),
(87, 2, 0),
(87, 22, 0),
(87, 26, 0),
(89, 2, 0),
(89, 22, 0),
(89, 24, 0),
(89, 27, 0),
(91, 2, 0),
(91, 22, 0),
(91, 24, 0),
(91, 27, 0),
(93, 2, 0),
(93, 22, 0),
(93, 24, 0),
(93, 27, 0),
(95, 2, 0),
(95, 22, 0),
(95, 24, 0),
(95, 27, 0),
(98, 30, 0),
(99, 30, 0),
(100, 30, 0),
(101, 30, 0),
(102, 30, 0),
(103, 30, 0),
(104, 30, 0),
(105, 30, 0),
(106, 30, 0),
(107, 30, 0),
(108, 30, 0),
(118, 31, 0),
(119, 31, 0),
(120, 31, 0),
(121, 31, 0),
(122, 31, 0),
(125, 31, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'product_type', '', 0, 12),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 1),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 4),
(16, 16, 'product_cat', '', 15, 2),
(17, 17, 'product_cat', '', 15, 1),
(18, 18, 'product_cat', '', 15, 0),
(19, 19, 'product_cat', '', 15, 0),
(20, 20, 'product_cat', '', 15, 1),
(21, 21, 'product_cat', '', 15, 0),
(22, 22, 'product_cat', '', 0, 8),
(24, 24, 'product_cat', '', 22, 4),
(26, 26, 'product_cat', '', 22, 4),
(27, 27, 'product_cat', '', 22, 4),
(28, 28, 'category', '', 0, 1),
(29, 29, 'post_format', '', 0, 0),
(30, 30, 'nav_menu', '', 0, 11),
(31, 31, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'sahil'),
(2, 1, 'first_name', 'sahil'),
(3, 1, 'last_name', 'surani'),
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
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice,yith_wcwl_panel'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '123'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(20, 1, 'closedpostboxes_product', 'a:1:{i:0;s:14:\"product_catdiv\";}'),
(21, 1, 'metaboxhidden_product', 'a:2:{i:0;s:10:\"postcustom\";i:1;s:7:\"slugdiv\";}'),
(22, 1, 'wp_user-settings', 'libraryContent=browse&widgets_access=off'),
(23, 1, 'wp_user-settings-time', '1514155261'),
(24, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(25, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(26, 1, 'closedpostboxes_page', 'a:1:{i:0;s:12:\"postimagediv\";}'),
(27, 1, 'metaboxhidden_page', 'a:5:{i:0;s:10:\"postcustom\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),
(28, 1, 'meta-box-order_product', 'a:3:{s:4:\"side\";s:84:\"submitdiv,product_catdiv,tagsdiv-product_tag,postimagediv,woocommerce-product-images\";s:6:\"normal\";s:55:\"woocommerce-product-data,postcustom,slugdiv,postexcerpt\";s:8:\"advanced\";s:0:\"\";}'),
(29, 1, 'screen_layout_product', '2'),
(30, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(31, 1, 'nav_menu_recently_edited', '31'),
(33, 2, 'nickname', 'hiteshparmar66'),
(34, 2, 'first_name', 'h'),
(35, 2, 'last_name', 's'),
(36, 2, 'description', ''),
(37, 2, 'rich_editing', 'true'),
(38, 2, 'syntax_highlighting', 'true'),
(39, 2, 'comment_shortcuts', 'false'),
(40, 2, 'admin_color', 'fresh'),
(41, 2, 'use_ssl', '0'),
(42, 2, 'show_admin_bar_front', 'true'),
(43, 2, 'locale', ''),
(44, 2, 'wp_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(45, 2, 'wp_user_level', '0'),
(46, 2, 'dismissed_wp_pointers', ''),
(52, 1, 'last_update', '1515059710'),
(53, 1, 'billing_first_name', 'sahil'),
(54, 1, 'billing_last_name', 'surani'),
(55, 1, 'billing_address_1', 'A-11 Bagenawab Fltat ,'),
(56, 1, 'billing_address_2', 'near shahalimar cinema,'),
(57, 1, 'billing_city', 'Ahmedabad'),
(58, 1, 'billing_state', 'GJ'),
(59, 1, 'billing_postcode', '380028'),
(60, 1, 'billing_country', 'IN'),
(61, 1, 'billing_email', 'sahilsurani7868@gmail.com'),
(62, 1, 'billing_phone', '8401394432'),
(63, 1, 'shipping_first_name', 'sahil'),
(64, 1, 'shipping_last_name', 'surani'),
(65, 1, 'shipping_address_1', 'A-11 Bagenawab Fltat ,'),
(66, 1, 'shipping_address_2', 'near shahalimar cinema,'),
(67, 1, 'shipping_city', 'Ahmedabad'),
(68, 1, 'shipping_state', 'GJ'),
(69, 1, 'shipping_postcode', '380028'),
(70, 1, 'shipping_country', 'IN'),
(71, 1, 'shipping_method', 'a:1:{i:0;s:11:\"flat_rate:1\";}'),
(73, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(74, 2, 'last_update', '1515060186'),
(75, 2, 'billing_first_name', 'h'),
(76, 2, 'billing_last_name', 's'),
(77, 2, 'billing_address_1', 'A-11 Bagenawab Fltat ,'),
(78, 2, 'billing_address_2', 'near shahalimar cinema,'),
(79, 2, 'billing_city', 'Ahmedabad'),
(80, 2, 'billing_state', 'GJ'),
(81, 2, 'billing_postcode', '380028'),
(82, 2, 'billing_country', 'IN'),
(83, 2, 'billing_email', 'hiteshparmar66@gmail.com'),
(84, 2, 'billing_phone', '8'),
(85, 2, 'shipping_first_name', 'h'),
(86, 2, 'shipping_last_name', 's'),
(87, 2, 'shipping_address_1', 'A-11 Bagenawab Fltat ,'),
(88, 2, 'shipping_address_2', 'near shahalimar cinema,'),
(89, 2, 'shipping_city', 'Ahmedabad'),
(90, 2, 'shipping_state', 'GJ'),
(91, 2, 'shipping_postcode', '380028'),
(92, 2, 'shipping_country', 'IN'),
(93, 2, 'shipping_method', 'a:1:{i:0;s:11:\"flat_rate:1\";}'),
(95, 2, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}');

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
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'sahil', '$P$BYfhb0xnSgYwXniRCns3et7svbyAle1', 'sahil', 'sahilsurani7868@gmail.com', '', '2017-12-22 14:29:48', '', 0, 'sahil'),
(2, 'hiteshparmar66', '$P$BO1SnChhYFrXJikrZqaV6XmSwxUk/31', 'hiteshparmar66', 'hiteshparmar66@gmail.com', '', '2018-01-01 20:11:42', '', 0, 'hiteshparmar66');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '93'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '1'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '4300'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '4300'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(10, 2, 'method_id', 'flat_rate:1'),
(11, 2, 'cost', '50.00'),
(12, 2, 'total_tax', '0'),
(13, 2, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(14, 2, 'Items', 'J&G Winter Jacket Collection(Men) &times; 1'),
(15, 3, '_product_id', '93'),
(16, 3, '_variation_id', '0'),
(17, 3, '_qty', '3'),
(18, 3, '_tax_class', ''),
(19, 3, '_line_subtotal', '12900'),
(20, 3, '_line_subtotal_tax', '0'),
(21, 3, '_line_total', '12900'),
(22, 3, '_line_tax', '0'),
(23, 3, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(24, 3, 'Backordered', '1'),
(25, 4, 'method_id', 'flat_rate:1'),
(26, 4, 'cost', '50.00'),
(27, 4, 'total_tax', '0'),
(28, 4, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(29, 4, 'Items', 'J&G Winter Jacket Collection(Men) &times; 3');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'J&G Winter Jacket Collection(Men)', 'line_item', 126),
(2, 'Flat rate', 'shipping', 126),
(3, 'J&G Winter Jacket Collection(Men)', 'line_item', 127),
(4, 'Flat rate', 'shipping', 127);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(54, '1', 'a:1:{s:8:\"customer\";s:882:\"a:25:{s:2:\"id\";i:1;s:8:\"postcode\";s:6:\"380028\";s:4:\"city\";s:9:\"Ahmedabad\";s:9:\"address_1\";s:22:\"A-11 Bagenawab Fltat ,\";s:7:\"address\";s:22:\"A-11 Bagenawab Fltat ,\";s:9:\"address_2\";s:23:\"near shahalimar cinema,\";s:5:\"state\";s:2:\"GJ\";s:7:\"country\";s:2:\"IN\";s:17:\"shipping_postcode\";s:6:\"380028\";s:13:\"shipping_city\";s:9:\"Ahmedabad\";s:18:\"shipping_address_1\";s:22:\"A-11 Bagenawab Fltat ,\";s:16:\"shipping_address\";s:22:\"A-11 Bagenawab Fltat ,\";s:18:\"shipping_address_2\";s:23:\"near shahalimar cinema,\";s:14:\"shipping_state\";s:2:\"GJ\";s:16:\"shipping_country\";s:2:\"IN\";s:13:\"is_vat_exempt\";b:0;s:19:\"calculated_shipping\";b:1;s:10:\"first_name\";s:5:\"sahil\";s:9:\"last_name\";s:6:\"surani\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:10:\"8401394432\";s:5:\"email\";s:25:\"sahilsurani7868@gmail.com\";s:19:\"shipping_first_name\";s:5:\"sahil\";s:18:\"shipping_last_name\";s:6:\"surani\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1515232136),
(68, '198987ab6525ccd5bba9ad92d697edc3', 'a:11:{s:4:\"cart\";s:358:\"a:1:{s:32:\"812b4ba287f5ee0bc9d43bbf5bbe87fb\";a:10:{s:3:\"key\";s:32:\"812b4ba287f5ee0bc9d43bbf5bbe87fb\";s:10:\"product_id\";i:95;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:1700;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:1700;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:412:\"a:15:{s:8:\"subtotal\";s:7:\"1700.00\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:5:\"50.00\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:7:\"1700.00\";s:17:\"cart_contents_tax\";d:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:4:\"0.00\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:7:\"1750.00\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:22:\"shipping_for_package_0\";s:400:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_163f46e7625311f6794c6e009e1d90ec\";s:5:\"rates\";a:1:{s:11:\"flat_rate:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:11:\"flat_rate:1\";s:9:\"method_id\";s:9:\"flat_rate\";s:11:\"instance_id\";i:1;s:5:\"label\";s:9:\"Flat rate\";s:4:\"cost\";s:5:\"50.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:5:\"Items\";s:43:\"M&S Winter Jacket Collection(Men) &times; 1\";}}}}\";s:25:\"previous_shipping_methods\";s:39:\"a:1:{i:0;a:1:{i:0;s:11:\"flat_rate:1\";}}\";s:23:\"chosen_shipping_methods\";s:29:\"a:1:{i:0;s:11:\"flat_rate:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:8:\"customer\";s:653:\"a:25:{s:2:\"id\";i:0;s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"GJ\";s:7:\"country\";s:2:\"IN\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"GJ\";s:16:\"shipping_country\";s:2:\"IN\";s:13:\"is_vat_exempt\";b:0;s:19:\"calculated_shipping\";b:0;s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1515298054),
(67, '2', 'a:1:{s:8:\"customer\";s:853:\"a:25:{s:2:\"id\";i:2;s:8:\"postcode\";s:6:\"380028\";s:4:\"city\";s:9:\"Ahmedabad\";s:9:\"address_1\";s:22:\"A-11 Bagenawab Fltat ,\";s:7:\"address\";s:22:\"A-11 Bagenawab Fltat ,\";s:9:\"address_2\";s:23:\"near shahalimar cinema,\";s:5:\"state\";s:2:\"GJ\";s:7:\"country\";s:2:\"IN\";s:17:\"shipping_postcode\";s:6:\"380028\";s:13:\"shipping_city\";s:9:\"Ahmedabad\";s:18:\"shipping_address_1\";s:22:\"A-11 Bagenawab Fltat ,\";s:16:\"shipping_address\";s:22:\"A-11 Bagenawab Fltat ,\";s:18:\"shipping_address_2\";s:23:\"near shahalimar cinema,\";s:14:\"shipping_state\";s:2:\"GJ\";s:16:\"shipping_country\";s:2:\"IN\";s:13:\"is_vat_exempt\";b:0;s:19:\"calculated_shipping\";b:1;s:10:\"first_name\";s:1:\"h\";s:9:\"last_name\";s:1:\"s\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:1:\"8\";s:5:\"email\";s:24:\"hiteshparmar66@gmail.com\";s:19:\"shipping_first_name\";s:1:\"h\";s:18:\"shipping_last_name\";s:1:\"s\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1515232801);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'India', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'IN', 'country');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'flat_rate', 1, 1),
(0, 2, 'flat_rate', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yith_wcwl`
--

CREATE TABLE `wp_yith_wcwl` (
  `ID` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `wishlist_id` int(11) DEFAULT NULL,
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yith_wcwl_lists`
--

CREATE TABLE `wp_yith_wcwl_lists` (
  `ID` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `wishlist_slug` varchar(200) NOT NULL,
  `wishlist_name` text,
  `wishlist_token` varchar(64) NOT NULL,
  `wishlist_privacy` tinyint(1) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_yith_wcwl_lists`
--

INSERT INTO `wp_yith_wcwl_lists` (`ID`, `user_id`, `wishlist_slug`, `wishlist_name`, `wishlist_token`, `wishlist_privacy`, `is_default`) VALUES
(1, 1, '', '', 'XDFXR00ERXT2', 0, 1),
(2, 2, '', '', '3ZMWHMVK3UQB', 0, 1);

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
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

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
  ADD UNIQUE KEY `option_name` (`option_name`);

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
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_yith_wcwl`
--
ALTER TABLE `wp_yith_wcwl`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `prod_id` (`prod_id`);

--
-- Indexes for table `wp_yith_wcwl_lists`
--
ALTER TABLE `wp_yith_wcwl_lists`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `wishlist_token` (`wishlist_token`),
  ADD KEY `wishlist_slug` (`wishlist_slug`);

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
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=948;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=907;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_yith_wcwl`
--
ALTER TABLE `wp_yith_wcwl`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_yith_wcwl_lists`
--
ALTER TABLE `wp_yith_wcwl_lists`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
