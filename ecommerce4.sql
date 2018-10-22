-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 24-06-2018 a las 02:45:06
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecommerce4`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_crm_log`
--

CREATE TABLE `wp_crm_log` (
  `id` mediumint(9) NOT NULL,
  `object_id` mediumint(9) NOT NULL,
  `object_type` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` mediumint(9) NOT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msgno` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_from` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `email_references` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `other` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_crm_log_meta`
--

CREATE TABLE `wp_crm_log_meta` (
  `meta_id` mediumint(9) NOT NULL,
  `message_id` mediumint(9) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
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
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime', 'yes'),
(2, 'home', 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime', 'yes'),
(3, 'blogname', 'Endulzame la Vida!', 'yes'),
(4, 'blogdescription', 'Lo mejor para ese momento', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'tifiana_1991@hotmail.com', 'yes'),
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
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:43:\"google-analytics-dashboard-for-wp/gadwp.php\";i:1;s:19:\"jetpack/jetpack.php\";i:2;s:41:\"woo-paypalplus/paypalplus-woocommerce.php\";i:3;s:45:\"woocommerce-services/woocommerce-services.php\";i:4;s:27:\"woocommerce/woocommerce.php\";i:5;s:17:\"wp-crm/wp-crm.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'seos-restaurant', 'yes'),
(41, 'stylesheet', 'seos-restaurant', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
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
(81, 'uninstall_plugins', 'a:2:{s:45:\"woocommerce-services/woocommerce-services.php\";a:2:{i:0;s:17:\"WC_Connect_Loader\";i:1;s:16:\"plugin_uninstall\";}s:43:\"google-analytics-dashboard-for-wp/gadwp.php\";a:2:{i:0;s:15:\"GADWP_Uninstall\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:125:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:23:\"WP-CRM: Manage Settings\";b:1;s:21:\"WP-CRM: View Overview\";b:1;s:26:\"WP-CRM: View Detailed Logs\";b:1;s:21:\"WP-CRM: View Profiles\";b:1;s:25:\"WP-CRM: Add User Messages\";b:1;s:26:\"WP-CRM: Send Group Message\";b:1;s:34:\"WP-CRM: Perform Advanced Functions\";b:1;s:24:\"WP-CRM: Change Passwords\";b:1;s:19:\"WP-CRM: Change Role\";b:1;s:27:\"WP-CRM: Change Color Scheme\";b:1;s:21:\"WP-CRM: View Messages\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'es_CO', 'yes'),
(95, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:2:{i:0;s:28:\"woocommerce_product_search-2\";i:1;s:32:\"woocommerce_product_categories-2\";}s:13:\"id-del-widget\";a:1:{i:0;s:22:\"woocommerce_products-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'nonce_key', 'bS,|1Y[`v-F?`Azzyb6gGd5,=,Vd-Ro)L~p7yNN~iA#|9ue3,/26#pp!{skl6|%(', 'no'),
(111, 'nonce_salt', 'uoF7zGlV GY=8cPe6Kw.6@RK?KQ09_g6R9:T Y9K<] xQlc J.WKmY161+9c{og^', 'no'),
(112, 'cron', 'a:11:{i:1529801171;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1529801430;a:1:{s:20:\"jetpack_clean_nonces\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1529804227;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1529817910;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1529844371;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1529844790;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1529861143;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1529861144;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1529884800;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1530835200;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(115, 'auth_key', 'id:cH+D/boB6H?RRNTa`t,?hw}q(-pUFw|KR|#|+J``k_9K/e3Q^3,i%YH!@F&(Q', 'no'),
(116, 'auth_salt', ':U-HG7W}fQ;d>oIL8` G-KqV82_IFltptPD;FX+G{- @m^-qA^APFUD!_M.cgrQY', 'no'),
(117, 'logged_in_key', '6A2vS i,&VgE_IJcdQ@m@By4Wr_)3+h ~AYs1R~?a}8*|-O7Q5zXqM`_v0(N}qHI', 'no'),
(118, 'logged_in_salt', 'E^,8VK1TBddIxG&M[*sf}wp6ilUD|1xSP8~2ZGN@hT5SrS/@!9`p,T?lO^o:4&l}', 'no'),
(127, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.6-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.6-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.9.6-partial-4.zip\";s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.6\";s:7:\"version\";s:5:\"4.9.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:5:\"4.9.4\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.6-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.6-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.9.6-partial-4.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.6-rollback-4.zip\";}s:7:\"current\";s:5:\"4.9.6\";s:7:\"version\";s:5:\"4.9.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:5:\"4.9.4\";s:9:\"new_files\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.5.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.5-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.5-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.9.5-partial-4.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.5-rollback-4.zip\";}s:7:\"current\";s:5:\"4.9.5\";s:7:\"version\";s:5:\"4.9.5\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:5:\"4.9.4\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1529800627;s:15:\"version_checked\";s:5:\"4.9.4\";s:12:\"translations\";a:0:{}}', 'no'),
(136, 'can_compress_scripts', '1', 'no'),
(151, 'theme_mods_twentyseventeen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1519754207;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(152, 'current_theme', 'SEOS Restaurant', 'yes'),
(153, 'theme_mods_seos-restaurant', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(154, 'theme_switched', '', 'yes'),
(159, 'recently_activated', 'a:2:{s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";i:1519842506;s:49:\"paypal-for-woocommerce/paypal-for-woocommerce.php\";i:1519842430;}', 'yes'),
(166, 'woocommerce_store_address', 'calle 22 B # 12-59', 'yes'),
(167, 'woocommerce_store_address_2', '', 'yes'),
(168, 'woocommerce_store_city', 'Sincelejo', 'yes'),
(169, 'woocommerce_default_country', 'CO', 'yes'),
(170, 'woocommerce_store_postcode', '057', 'yes'),
(171, 'woocommerce_allowed_countries', 'all', 'yes'),
(172, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(173, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(174, 'woocommerce_ship_to_countries', '', 'yes'),
(175, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(176, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(177, 'woocommerce_calc_taxes', 'no', 'yes'),
(178, 'woocommerce_currency', 'COP', 'yes'),
(179, 'woocommerce_currency_pos', 'left_space', 'yes'),
(180, 'woocommerce_price_thousand_sep', ',', 'yes'),
(181, 'woocommerce_price_decimal_sep', '.', 'yes'),
(182, 'woocommerce_price_num_decimals', '2', 'yes'),
(183, 'woocommerce_shop_page_id', '7', 'yes'),
(184, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(185, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(186, 'woocommerce_weight_unit', 'kg', 'yes'),
(187, 'woocommerce_dimension_unit', 'cm', 'yes'),
(188, 'woocommerce_enable_reviews', 'yes', 'yes'),
(189, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(190, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(191, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(192, 'woocommerce_review_rating_required', 'yes', 'no'),
(193, 'woocommerce_manage_stock', 'yes', 'yes'),
(194, 'woocommerce_hold_stock_minutes', '60', 'no'),
(195, 'woocommerce_notify_low_stock', 'yes', 'no'),
(196, 'woocommerce_notify_no_stock', 'yes', 'no'),
(197, 'woocommerce_stock_email_recipient', 'tifiana_1991@hotmail.com', 'no'),
(198, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(199, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(200, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(201, 'woocommerce_stock_format', '', 'yes'),
(202, 'woocommerce_file_download_method', 'force', 'no'),
(203, 'woocommerce_downloads_require_login', 'no', 'no'),
(204, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(205, 'woocommerce_prices_include_tax', 'no', 'yes'),
(206, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(207, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(208, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(209, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(210, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(211, 'woocommerce_tax_display_cart', 'excl', 'no'),
(212, 'woocommerce_price_display_suffix', '', 'yes'),
(213, 'woocommerce_tax_total_display', 'itemized', 'no'),
(214, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(215, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(216, 'woocommerce_ship_to_destination', 'billing', 'no'),
(217, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(218, 'woocommerce_enable_coupons', 'yes', 'yes'),
(219, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(220, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(221, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(222, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(223, 'woocommerce_cart_page_id', '8', 'yes'),
(224, 'woocommerce_checkout_page_id', '9', 'yes'),
(225, 'woocommerce_terms_page_id', '', 'no'),
(226, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(227, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(228, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(229, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(230, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(231, 'woocommerce_myaccount_page_id', '10', 'yes'),
(232, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(233, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(234, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(235, 'woocommerce_registration_generate_username', 'yes', 'no'),
(236, 'woocommerce_registration_generate_password', 'no', 'no'),
(237, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(238, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(239, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(240, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(241, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(242, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(243, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(244, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(245, 'woocommerce_email_from_name', 'SWEET WORLD', 'no'),
(246, 'woocommerce_email_from_address', 'tifiana_1991@hotmail.com', 'no'),
(247, 'woocommerce_email_header_image', '', 'no'),
(248, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(249, 'woocommerce_email_base_color', '#96588a', 'no'),
(250, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(251, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(252, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(253, 'woocommerce_api_enabled', 'yes', 'yes'),
(254, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(255, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(256, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(257, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(258, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(259, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(260, 'widget_woocommerce_product_categories', 'a:2:{i:2;a:8:{s:5:\"title\";s:18:\"Product categories\";s:7:\"orderby\";s:4:\"name\";s:8:\"dropdown\";i:0;s:5:\"count\";i:0;s:12:\"hierarchical\";i:1;s:18:\"show_children_only\";i:0;s:10:\"hide_empty\";i:1;s:9:\"max_depth\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(261, 'widget_woocommerce_product_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(262, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(263, 'widget_woocommerce_products', 'a:2:{i:2;a:7:{s:5:\"title\";s:19:\"Grandes Promociones\";s:6:\"number\";i:2;s:4:\"show\";s:6:\"onsale\";s:7:\"orderby\";s:5:\"sales\";s:5:\"order\";s:3:\"asc\";s:9:\"hide_free\";i:0;s:11:\"show_hidden\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(264, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(265, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(266, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(267, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(268, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(269, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(270, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(271, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(273, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(274, '_transient_shipping-transient-version', '1519822241', 'yes'),
(315, 'woocommerce_bacs_settings', 'a:5:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:21:\"Tranferencia Bancaria\";s:11:\"description\";s:188:\"Haga su pago directamente en nuestra cuenta bancaria. Utilice su ID de pedido como referencia de pago. Su pedido no será enviado hasta que los fondos se hayan liquidado en nuestra cuenta.\";s:12:\"instructions\";s:188:\"Haga su pago directamente en nuestra cuenta bancaria. Utilice su ID de pedido como referencia de pago. Su pedido no será enviado hasta que los fondos se hayan liquidado en nuestra cuenta.\";s:15:\"account_details\";s:0:\"\";}', 'yes'),
(316, 'woocommerce_bacs_accounts', 'a:2:{i:0;a:6:{s:12:\"account_name\";s:11:\"SWEET WORLD\";s:14:\"account_number\";s:18:\"02 0989 23456 7865\";s:9:\"bank_name\";s:11:\"Bancolombia\";s:9:\"sort_code\";s:0:\"\";s:4:\"iban\";s:0:\"\";s:3:\"bic\";s:0:\"\";}i:1;a:6:{s:12:\"account_name\";s:0:\"\";s:14:\"account_number\";s:0:\"\";s:9:\"bank_name\";s:0:\"\";s:9:\"sort_code\";s:0:\"\";s:4:\"iban\";s:0:\"\";s:3:\"bic\";s:0:\"\";}}', 'yes'),
(317, 'woocommerce_paypal_settings', 'a:23:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"advanced\";s:0:\"\";s:8:\"testmode\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:16:\"ipn_notification\";s:2:\"no\";s:14:\"receiver_email\";s:0:\"\";s:14:\"identity_token\";s:0:\"\";s:14:\"invoice_prefix\";s:0:\"\";s:13:\"send_shipping\";s:2:\"no\";s:16:\"address_override\";s:2:\"no\";s:13:\"paymentaction\";s:0:\"\";s:10:\"page_style\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:11:\"api_details\";s:0:\"\";s:12:\"api_username\";s:0:\"\";s:12:\"api_password\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";}', 'yes'),
(321, 'default_product_cat', '15', 'yes'),
(324, 'woocommerce_version', '3.3.3', 'yes'),
(325, 'woocommerce_db_version', '3.3.3', 'yes'),
(327, 'woocommerce_product_type', 'both', 'yes'),
(328, 'woocommerce_allow_tracking', 'yes', 'yes'),
(329, 'woocommerce_tracker_last_send', '1529800636', 'yes'),
(333, 'woocommerce_ppec_paypal_settings', 'a:3:{s:7:\"enabled\";s:3:\"yes\";s:16:\"reroute_requests\";s:3:\"yes\";s:5:\"email\";s:24:\"tifiana_1991@hotmail.com\";}', 'yes'),
(334, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(335, 'woocommerce_cod_settings', 'a:6:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:16:\"Contra Reembolso\";s:11:\"description\";s:31:\"Pague en efectivo a la entrega.\";s:12:\"instructions\";s:31:\"Pague en efectivo a la entrega.\";s:18:\"enable_for_methods\";s:0:\"\";s:18:\"enable_for_virtual\";s:3:\"yes\";}', 'yes'),
(338, 'jetpack_activated', '1', 'yes'),
(341, 'jetpack_activation_source', 'a:2:{i:0;s:7:\"unknown\";i:1;N;}', 'yes'),
(342, 'jetpack_sync_settings_disable', '0', 'yes'),
(347, 'woocommerce_flat_rate_1_settings', 'a:3:{s:5:\"title\";s:9:\"Flat rate\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:5:\"10000\";}', 'yes'),
(348, 'woocommerce_flat_rate_2_settings', 'a:3:{s:5:\"title\";s:9:\"Flat rate\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:5:\"50000\";}', 'yes'),
(349, 'jetpack_available_modules', 'a:1:{s:3:\"5.8\";a:43:{s:18:\"after-the-deadline\";s:3:\"1.1\";s:8:\"carousel\";s:3:\"1.5\";s:13:\"comment-likes\";s:3:\"5.1\";s:8:\"comments\";s:3:\"1.4\";s:12:\"contact-form\";s:3:\"1.3\";s:20:\"custom-content-types\";s:3:\"3.1\";s:10:\"custom-css\";s:3:\"1.7\";s:21:\"enhanced-distribution\";s:3:\"1.2\";s:16:\"google-analytics\";s:3:\"4.5\";s:19:\"gravatar-hovercards\";s:3:\"1.1\";s:15:\"infinite-scroll\";s:3:\"2.0\";s:8:\"json-api\";s:3:\"1.9\";s:5:\"latex\";s:3:\"1.1\";s:11:\"lazy-images\";s:5:\"5.6.0\";s:5:\"likes\";s:3:\"2.2\";s:6:\"manage\";s:3:\"3.4\";s:8:\"markdown\";s:3:\"2.8\";s:9:\"masterbar\";s:3:\"4.8\";s:9:\"minileven\";s:3:\"1.8\";s:7:\"monitor\";s:3:\"2.6\";s:5:\"notes\";s:3:\"1.9\";s:6:\"photon\";s:3:\"2.0\";s:13:\"post-by-email\";s:3:\"2.0\";s:7:\"protect\";s:3:\"3.4\";s:9:\"publicize\";s:3:\"2.0\";s:3:\"pwa\";s:5:\"5.6.0\";s:13:\"related-posts\";s:3:\"2.9\";s:6:\"search\";s:3:\"5.0\";s:9:\"seo-tools\";s:3:\"4.4\";s:10:\"sharedaddy\";s:3:\"1.1\";s:10:\"shortcodes\";s:3:\"1.1\";s:10:\"shortlinks\";s:3:\"1.1\";s:8:\"sitemaps\";s:3:\"3.9\";s:3:\"sso\";s:3:\"2.6\";s:5:\"stats\";s:3:\"1.1\";s:13:\"subscriptions\";s:3:\"1.2\";s:13:\"tiled-gallery\";s:3:\"2.1\";s:10:\"vaultpress\";s:5:\"0:1.2\";s:18:\"verification-tools\";s:3:\"3.0\";s:10:\"videopress\";s:3:\"2.5\";s:17:\"widget-visibility\";s:3:\"2.4\";s:7:\"widgets\";s:3:\"1.2\";s:7:\"wordads\";s:5:\"4.5.0\";}}', 'yes'),
(350, 'jetpack_options', 'a:4:{s:7:\"version\";s:14:\"5.8:1519822233\";s:11:\"old_version\";s:14:\"5.8:1519822233\";s:28:\"fallback_no_verify_ssl_certs\";i:0;s:9:\"time_diff\";i:5;}', 'yes'),
(351, 'wc_ppec_version', '1.5.2', 'yes'),
(352, 'jetpack_testimonial', '0', 'yes'),
(354, 'do_activate', '0', 'yes'),
(363, '_transient_product_query-transient-version', '1519826851', 'yes'),
(373, 'product_cat_children', 'a:0:{}', 'yes'),
(374, 'woocommerce_maybe_regenerate_images_hash', '0354fa9fd89ed0769e68ad19ec0251fa', 'yes'),
(399, '_transient_product-transient-version', '1519826851', 'yes'),
(419, 'category_children', 'a:0:{}', 'yes'),
(469, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(519, 'woocommerce_paypal_plus_settings', 'a:22:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:11:\"PayPal Plus\";s:11:\"description\";s:11:\"PayPal Plus\";s:19:\"credentials_section\";s:0:\"\";s:8:\"testmode\";s:3:\"yes\";s:22:\"rest_client_id_sandbox\";s:0:\"\";s:22:\"rest_secret_id_sandbox\";s:0:\"\";s:29:\"sandbox_experience_profile_id\";s:0:\"\";s:14:\"rest_client_id\";s:0:\"\";s:14:\"rest_secret_id\";s:0:\"\";s:26:\"live_experience_profile_id\";s:0:\"\";s:19:\"web_profile_section\";s:0:\"\";s:10:\"brand_name\";s:11:\"SWEET WORLD\";s:13:\"checkout_logo\";s:0:\"\";s:16:\"settings_section\";s:0:\"\";s:14:\"invoice_prefix\";s:19:\"WC-PPP-SWEET-WORLD-\";s:10:\"cancel_url\";s:4:\"cart\";s:17:\"cancel_custom_url\";s:0:\"\";s:10:\"legal_note\";s:238:\"Dealer has ceeded the claim against you within the framework of an ongoing factoring contract to the PayPal (Europe) S.àr.l. et Cie, S.C.A.. Payments with a debt-free effect can only be paid to the PayPal (Europe) S.àr.l. et Cie, S.C.A.\";s:29:\"pay_upon_invoice_instructions\";s:71:\"Please transfer the complete amount to the bank account provided below.\";s:12:\"download_log\";s:0:\"\";s:24:\"disable_gateway_override\";s:2:\"no\";}', 'yes'),
(524, 'woocommerce_paypal_pro_payflow_settings', 'a:29:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:11:\"Credit card\";s:11:\"description\";s:26:\"Pay with your credit card.\";s:17:\"invoice_id_prefix\";s:0:\"\";s:9:\"card_icon\";s:136:\"http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/wp-content/plugins/paypal-for-woocommerce/assets/images/payflow-cards.png\";s:18:\"error_email_notify\";s:3:\"yes\";s:18:\"error_display_type\";s:8:\"detailed\";s:8:\"testmode\";s:2:\"no\";s:22:\"sandbox_paypal_partner\";s:32:\"a1Y2SEJ0L3RjeWlSSEduQVRhTDYrdz09\";s:21:\"sandbox_paypal_vendor\";s:0:\"\";s:19:\"sandbox_paypal_user\";s:0:\"\";s:23:\"sandbox_paypal_password\";s:0:\"\";s:14:\"paypal_partner\";s:32:\"a1Y2SEJ0L3RjeWlSSEduQVRhTDYrdz09\";s:13:\"paypal_vendor\";s:0:\"\";s:11:\"paypal_user\";s:0:\"\";s:15:\"paypal_password\";s:0:\"\";s:10:\"send_items\";s:3:\"yes\";s:14:\"payment_action\";s:4:\"Sale\";s:34:\"pending_authorization_order_status\";s:7:\"On Hold\";s:20:\"default_order_status\";s:10:\"Processing\";s:14:\"softdescriptor\";s:0:\"\";s:24:\"fraud_management_filters\";s:38:\"place_order_on_hold_for_further_review\";s:27:\"avs_cvv2_result_admin_email\";s:2:\"no\";s:23:\"credit_card_month_field\";s:5:\"names\";s:22:\"credit_card_year_field\";s:10:\"four_digit\";s:25:\"enable_tokenized_payments\";s:2:\"no\";s:33:\"enable_cardholder_first_last_name\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:10:\"is_encrypt\";s:3:\"yes\";}', 'yes'),
(549, 'gadwp_options', '{\"client_id\":\"\",\"client_secret\":\"\",\"access_front\":[\"administrator\"],\"access_back\":[\"administrator\"],\"tableid_jail\":\"170694479\",\"theme_color\":\"#1e73be\",\"switch_profile\":0,\"tracking_type\":\"universal\",\"ga_anonymize_ip\":0,\"user_api\":0,\"ga_event_tracking\":0,\"ga_event_downloads\":\"zip|mp3*|mpe*g|pdf|docx*|pptx*|xlsx*|rar*\",\"track_exclude\":[],\"ga_target_geomap\":\"\",\"ga_realtime_pages\":10,\"token\":\"{\\\"access_token\\\":\\\"ya29.Gl3kBaggimGQONK6YI_i5KIyD8f51P6hkrzn2zPNUVu5mnfo0sQ5TYjBWALzNE1HijZUceW3vbbZHSDACDH5_Ku4JEDujYQlQlTuXfx_8hwlS6yV1AQtpvwgFtkJwlM\\\",\\\"expires_in\\\":3600,\\\"refresh_token\\\":\\\"1\\\\\\/JCatC9MrSSR4Uy8kYU_vX4MYmwu7eU1-0-VDXVaPlrU\\\",\\\"token_type\\\":\\\"Bearer\\\",\\\"created\\\":1529800747}\",\"ga_profiles_list\":[[\"Todos los datos de sitios web\",\"170694479\",\"UA-114941627-1\",\"http:\\/\\/127.0.0.1\",-18000,\"America\\/Bogota\",null]],\"ga_enhanced_links\":0,\"ga_remarketing\":0,\"network_mode\":0,\"ga_speed_samplerate\":1,\"ga_user_samplerate\":100,\"ga_event_bouncerate\":0,\"ga_crossdomain_tracking\":0,\"ga_crossdomain_list\":\"\",\"ga_author_dimindex\":0,\"ga_category_dimindex\":0,\"ga_tag_dimindex\":0,\"ga_user_dimindex\":0,\"ga_pubyear_dimindex\":0,\"ga_pubyearmonth_dimindex\":0,\"ga_aff_tracking\":0,\"ga_event_affiliates\":\"\\/out\\/\",\"automatic_updates_minorversion\":\"1\",\"backend_item_reports\":\"1\",\"backend_realtime_report\":0,\"frontend_item_reports\":0,\"dashboard_widget\":\"1\",\"api_backoff\":0,\"ga_cookiedomain\":\"\",\"ga_cookiename\":\"\",\"ga_cookieexpires\":\"\",\"pagetitle_404\":\"Page Not Found\",\"maps_api_key\":\"\",\"tm_author_var\":0,\"tm_category_var\":0,\"tm_tag_var\":0,\"tm_user_var\":0,\"tm_pubyear_var\":0,\"tm_pubyearmonth_var\":0,\"web_containerid\":\"\",\"amp_containerid\":\"\",\"amp_tracking_tagmanager\":0,\"amp_tracking_analytics\":0,\"amp_tracking_clientidapi\":0,\"trackingcode_infooter\":0,\"trackingevents_infooter\":0,\"ecommerce_mode\":\"disabled\",\"ga_formsubmit_tracking\":0,\"optimize_tracking\":0,\"optimize_containerid\":\"\",\"optimize_pagehiding\":0,\"superadmin_tracking\":0,\"ga_pagescrolldepth_tracking\":0,\"tm_pagescrolldepth_tracking\":0,\"ga_event_precision\":0,\"ga_force_ssl\":0,\"with_endpoint\":1,\"ga_optout\":0,\"ga_dnt_optout\":0,\"ga_enhanced_excludesa\":0,\"ga_hash_tracking\":0,\"gadwp_hidden\":\"Y\"}', 'yes'),
(550, 'widget_gadwp-frontwidget-report', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(558, 'woocommerce_tracker_ua', 'a:2:{i:0;s:114:\"mozilla/5.0 (windows nt 6.3; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/64.0.3282.167 safari/537.36\";i:1;s:120:\"mozilla/5.0 (macintosh; intel mac os x 10_13_2) applewebkit/537.36 (khtml, like gecko) chrome/67.0.3396.87 safari/537.36\";}', 'yes'),
(573, 'sharing-options', 'a:1:{s:6:\"global\";a:5:{s:12:\"button_style\";s:9:\"icon-text\";s:13:\"sharing_label\";s:11:\"Share this:\";s:10:\"open_links\";s:4:\"same\";s:4:\"show\";a:0:{}s:6:\"custom\";a:0:{}}}', 'yes'),
(574, 'stats_options', 'a:7:{s:9:\"admin_bar\";b:1;s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:11:\"count_roles\";a:0:{}s:7:\"blog_id\";b:0;s:12:\"do_not_track\";b:1;s:10:\"hide_smile\";b:1;s:7:\"version\";s:1:\"9\";}', 'yes'),
(575, 'gadwp_redeemed_code', '4/AAB2A2aWuWUyU2Fhi40Zb5tncCXsp85auHibn4QSLBWvbNEiHfcrr6w', 'yes'),
(577, 'gadwp_cache_errors_count', 'a:2:{s:5:\"value\";i:2;s:7:\"expires\";i:1519977600;}', 'no'),
(589, 'gadwp_cache_qr2_775769469', 'a:2:{s:5:\"value\";O:31:\"Deconf_Service_Analytics_GaData\":24:{s:17:\"\0*\0collection_key\";s:4:\"rows\";s:25:\"\0*\0internal_gapi_mappings\";a:0:{}s:20:\"\0*\0columnHeadersType\";s:44:\"Deconf_Service_Analytics_GaDataColumnHeaders\";s:24:\"\0*\0columnHeadersDataType\";s:5:\"array\";s:19:\"containsSampledData\";b:0;s:16:\"\0*\0dataTableType\";s:40:\"Deconf_Service_Analytics_GaDataDataTable\";s:20:\"\0*\0dataTableDataType\";s:0:\"\";s:2:\"id\";s:157:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:170694479&dimensions=ga:date,ga:dayOfWeekName&metrics=ga:users&start-date=30daysAgo&end-date=yesterday\";s:12:\"itemsPerPage\";i:1000;s:4:\"kind\";s:16:\"analytics#gaData\";s:8:\"nextLink\";N;s:12:\"previousLink\";N;s:18:\"\0*\0profileInfoType\";s:42:\"Deconf_Service_Analytics_GaDataProfileInfo\";s:22:\"\0*\0profileInfoDataType\";s:0:\"\";s:12:\"\0*\0queryType\";s:36:\"Deconf_Service_Analytics_GaDataQuery\";s:16:\"\0*\0queryDataType\";s:0:\"\";s:4:\"rows\";N;s:10:\"sampleSize\";N;s:11:\"sampleSpace\";N;s:8:\"selfLink\";s:157:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:170694479&dimensions=ga:date,ga:dayOfWeekName&metrics=ga:users&start-date=30daysAgo&end-date=yesterday\";s:12:\"totalResults\";i:0;s:19:\"totalsForAllResults\";a:1:{s:8:\"ga:users\";s:1:\"0\";}s:12:\"\0*\0modelData\";a:3:{s:5:\"query\";a:8:{s:10:\"start-date\";s:9:\"30daysAgo\";s:8:\"end-date\";s:9:\"yesterday\";s:3:\"ids\";s:12:\"ga:170694479\";s:10:\"dimensions\";s:24:\"ga:date,ga:dayOfWeekName\";s:7:\"metrics\";a:1:{i:0;s:8:\"ga:users\";}s:11:\"start-index\";i:1;s:11:\"max-results\";i:1000;s:13:\"samplingLevel\";s:16:\"HIGHER_PRECISION\";}s:11:\"profileInfo\";a:6:{s:9:\"profileId\";s:9:\"170694479\";s:9:\"accountId\";s:9:\"114941627\";s:13:\"webPropertyId\";s:14:\"UA-114941627-1\";s:21:\"internalWebPropertyId\";s:9:\"170914535\";s:11:\"profileName\";s:29:\"Todos los datos de sitios web\";s:7:\"tableId\";s:12:\"ga:170694479\";}s:13:\"columnHeaders\";a:3:{i:0;a:3:{s:4:\"name\";s:7:\"ga:date\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:1;a:3:{s:4:\"name\";s:16:\"ga:dayOfWeekName\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:2;a:3:{s:4:\"name\";s:8:\"ga:users\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}}}s:12:\"\0*\0processed\";a:0:{}}s:7:\"expires\";i:1519966800;}', 'no'),
(590, 'gadwp_cache_qr2_476625962', 'a:2:{s:5:\"value\";O:31:\"Deconf_Service_Analytics_GaData\":24:{s:17:\"\0*\0collection_key\";s:4:\"rows\";s:25:\"\0*\0internal_gapi_mappings\";a:0:{}s:20:\"\0*\0columnHeadersType\";s:44:\"Deconf_Service_Analytics_GaDataColumnHeaders\";s:24:\"\0*\0columnHeadersDataType\";s:5:\"array\";s:19:\"containsSampledData\";b:0;s:16:\"\0*\0dataTableType\";s:40:\"Deconf_Service_Analytics_GaDataDataTable\";s:20:\"\0*\0dataTableDataType\";s:0:\"\";s:2:\"id\";s:156:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:170694479&dimensions=ga:date,ga:dayOfWeekName&metrics=ga:users&start-date=7daysAgo&end-date=yesterday\";s:12:\"itemsPerPage\";i:1000;s:4:\"kind\";s:16:\"analytics#gaData\";s:8:\"nextLink\";N;s:12:\"previousLink\";N;s:18:\"\0*\0profileInfoType\";s:42:\"Deconf_Service_Analytics_GaDataProfileInfo\";s:22:\"\0*\0profileInfoDataType\";s:0:\"\";s:12:\"\0*\0queryType\";s:36:\"Deconf_Service_Analytics_GaDataQuery\";s:16:\"\0*\0queryDataType\";s:0:\"\";s:4:\"rows\";N;s:10:\"sampleSize\";N;s:11:\"sampleSpace\";N;s:8:\"selfLink\";s:156:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:170694479&dimensions=ga:date,ga:dayOfWeekName&metrics=ga:users&start-date=7daysAgo&end-date=yesterday\";s:12:\"totalResults\";i:0;s:19:\"totalsForAllResults\";a:1:{s:8:\"ga:users\";s:1:\"0\";}s:12:\"\0*\0modelData\";a:3:{s:5:\"query\";a:8:{s:10:\"start-date\";s:8:\"7daysAgo\";s:8:\"end-date\";s:9:\"yesterday\";s:3:\"ids\";s:12:\"ga:170694479\";s:10:\"dimensions\";s:24:\"ga:date,ga:dayOfWeekName\";s:7:\"metrics\";a:1:{i:0;s:8:\"ga:users\";}s:11:\"start-index\";i:1;s:11:\"max-results\";i:1000;s:13:\"samplingLevel\";s:16:\"HIGHER_PRECISION\";}s:11:\"profileInfo\";a:6:{s:9:\"profileId\";s:9:\"170694479\";s:9:\"accountId\";s:9:\"114941627\";s:13:\"webPropertyId\";s:14:\"UA-114941627-1\";s:21:\"internalWebPropertyId\";s:9:\"170914535\";s:11:\"profileName\";s:29:\"Todos los datos de sitios web\";s:7:\"tableId\";s:12:\"ga:170694479\";}s:13:\"columnHeaders\";a:3:{i:0;a:3:{s:4:\"name\";s:7:\"ga:date\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:1;a:3:{s:4:\"name\";s:16:\"ga:dayOfWeekName\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:2;a:3:{s:4:\"name\";s:8:\"ga:users\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}}}s:12:\"\0*\0processed\";a:0:{}}s:7:\"expires\";i:1519966800;}', 'no'),
(591, 'gadwp_cache_qr3_3688675881', 'a:2:{s:5:\"value\";O:31:\"Deconf_Service_Analytics_GaData\":24:{s:17:\"\0*\0collection_key\";s:4:\"rows\";s:25:\"\0*\0internal_gapi_mappings\";a:0:{}s:20:\"\0*\0columnHeadersType\";s:44:\"Deconf_Service_Analytics_GaDataColumnHeaders\";s:24:\"\0*\0columnHeadersDataType\";s:5:\"array\";s:19:\"containsSampledData\";b:0;s:16:\"\0*\0dataTableType\";s:40:\"Deconf_Service_Analytics_GaDataDataTable\";s:20:\"\0*\0dataTableDataType\";s:0:\"\";s:2:\"id\";s:259:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:170694479&metrics=ga:sessions,ga:users,ga:pageviews,ga:BounceRate,ga:organicSearches,ga:pageviewsPerSession,ga:avgTimeOnPage,ga:avgPageLoadTime,ga:avgSessionDuration&start-date=7daysAgo&end-date=yesterday\";s:12:\"itemsPerPage\";i:1000;s:4:\"kind\";s:16:\"analytics#gaData\";s:8:\"nextLink\";N;s:12:\"previousLink\";N;s:18:\"\0*\0profileInfoType\";s:42:\"Deconf_Service_Analytics_GaDataProfileInfo\";s:22:\"\0*\0profileInfoDataType\";s:0:\"\";s:12:\"\0*\0queryType\";s:36:\"Deconf_Service_Analytics_GaDataQuery\";s:16:\"\0*\0queryDataType\";s:0:\"\";s:4:\"rows\";N;s:10:\"sampleSize\";N;s:11:\"sampleSpace\";N;s:8:\"selfLink\";s:259:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:170694479&metrics=ga:sessions,ga:users,ga:pageviews,ga:BounceRate,ga:organicSearches,ga:pageviewsPerSession,ga:avgTimeOnPage,ga:avgPageLoadTime,ga:avgSessionDuration&start-date=7daysAgo&end-date=yesterday\";s:12:\"totalResults\";i:0;s:19:\"totalsForAllResults\";a:9:{s:11:\"ga:sessions\";s:1:\"0\";s:8:\"ga:users\";s:1:\"0\";s:12:\"ga:pageviews\";s:1:\"0\";s:13:\"ga:BounceRate\";s:3:\"0.0\";s:18:\"ga:organicSearches\";s:1:\"0\";s:22:\"ga:pageviewsPerSession\";s:3:\"0.0\";s:16:\"ga:avgTimeOnPage\";s:3:\"0.0\";s:18:\"ga:avgPageLoadTime\";s:3:\"0.0\";s:21:\"ga:avgSessionDuration\";s:3:\"0.0\";}s:12:\"\0*\0modelData\";a:3:{s:5:\"query\";a:7:{s:10:\"start-date\";s:8:\"7daysAgo\";s:8:\"end-date\";s:9:\"yesterday\";s:3:\"ids\";s:12:\"ga:170694479\";s:7:\"metrics\";a:9:{i:0;s:11:\"ga:sessions\";i:1;s:8:\"ga:users\";i:2;s:12:\"ga:pageviews\";i:3;s:13:\"ga:BounceRate\";i:4;s:18:\"ga:organicSearches\";i:5;s:22:\"ga:pageviewsPerSession\";i:6;s:16:\"ga:avgTimeOnPage\";i:7;s:18:\"ga:avgPageLoadTime\";i:8;s:21:\"ga:avgSessionDuration\";}s:11:\"start-index\";i:1;s:11:\"max-results\";i:1000;s:13:\"samplingLevel\";s:16:\"HIGHER_PRECISION\";}s:11:\"profileInfo\";a:6:{s:9:\"profileId\";s:9:\"170694479\";s:9:\"accountId\";s:9:\"114941627\";s:13:\"webPropertyId\";s:14:\"UA-114941627-1\";s:21:\"internalWebPropertyId\";s:9:\"170914535\";s:11:\"profileName\";s:29:\"Todos los datos de sitios web\";s:7:\"tableId\";s:12:\"ga:170694479\";}s:13:\"columnHeaders\";a:9:{i:0;a:3:{s:4:\"name\";s:11:\"ga:sessions\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}i:1;a:3:{s:4:\"name\";s:8:\"ga:users\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}i:2;a:3:{s:4:\"name\";s:12:\"ga:pageviews\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}i:3;a:3:{s:4:\"name\";s:13:\"ga:BounceRate\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"PERCENT\";}i:4;a:3:{s:4:\"name\";s:18:\"ga:organicSearches\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}i:5;a:3:{s:4:\"name\";s:22:\"ga:pageviewsPerSession\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:5:\"FLOAT\";}i:6;a:3:{s:4:\"name\";s:16:\"ga:avgTimeOnPage\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:4:\"TIME\";}i:7;a:3:{s:4:\"name\";s:18:\"ga:avgPageLoadTime\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:5:\"FLOAT\";}i:8;a:3:{s:4:\"name\";s:21:\"ga:avgSessionDuration\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:4:\"TIME\";}}}s:12:\"\0*\0processed\";a:0:{}}s:7:\"expires\";i:1519966800;}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(592, 'gadwp_cache_qr8_2030123918', 'a:2:{s:5:\"value\";O:31:\"Deconf_Service_Analytics_GaData\":24:{s:17:\"\0*\0collection_key\";s:4:\"rows\";s:25:\"\0*\0internal_gapi_mappings\";a:0:{}s:20:\"\0*\0columnHeadersType\";s:44:\"Deconf_Service_Analytics_GaDataColumnHeaders\";s:24:\"\0*\0columnHeadersDataType\";s:5:\"array\";s:19:\"containsSampledData\";b:0;s:16:\"\0*\0dataTableType\";s:40:\"Deconf_Service_Analytics_GaDataDataTable\";s:20:\"\0*\0dataTableDataType\";s:0:\"\";s:2:\"id\";s:171:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:170694479&dimensions=ga:channelGrouping&metrics=ga:sessions&sort=-ga:sessions&start-date=7daysAgo&end-date=yesterday\";s:12:\"itemsPerPage\";i:1000;s:4:\"kind\";s:16:\"analytics#gaData\";s:8:\"nextLink\";N;s:12:\"previousLink\";N;s:18:\"\0*\0profileInfoType\";s:42:\"Deconf_Service_Analytics_GaDataProfileInfo\";s:22:\"\0*\0profileInfoDataType\";s:0:\"\";s:12:\"\0*\0queryType\";s:36:\"Deconf_Service_Analytics_GaDataQuery\";s:16:\"\0*\0queryDataType\";s:0:\"\";s:4:\"rows\";N;s:10:\"sampleSize\";N;s:11:\"sampleSpace\";N;s:8:\"selfLink\";s:171:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:170694479&dimensions=ga:channelGrouping&metrics=ga:sessions&sort=-ga:sessions&start-date=7daysAgo&end-date=yesterday\";s:12:\"totalResults\";i:0;s:19:\"totalsForAllResults\";a:1:{s:11:\"ga:sessions\";s:1:\"0\";}s:12:\"\0*\0modelData\";a:3:{s:5:\"query\";a:9:{s:10:\"start-date\";s:8:\"7daysAgo\";s:8:\"end-date\";s:9:\"yesterday\";s:3:\"ids\";s:12:\"ga:170694479\";s:10:\"dimensions\";s:18:\"ga:channelGrouping\";s:7:\"metrics\";a:1:{i:0;s:11:\"ga:sessions\";}s:4:\"sort\";a:1:{i:0;s:12:\"-ga:sessions\";}s:11:\"start-index\";i:1;s:11:\"max-results\";i:1000;s:13:\"samplingLevel\";s:16:\"HIGHER_PRECISION\";}s:11:\"profileInfo\";a:6:{s:9:\"profileId\";s:9:\"170694479\";s:9:\"accountId\";s:9:\"114941627\";s:13:\"webPropertyId\";s:14:\"UA-114941627-1\";s:21:\"internalWebPropertyId\";s:9:\"170914535\";s:11:\"profileName\";s:29:\"Todos los datos de sitios web\";s:7:\"tableId\";s:12:\"ga:170694479\";}s:13:\"columnHeaders\";a:2:{i:0;a:3:{s:4:\"name\";s:18:\"ga:channelGrouping\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:1;a:3:{s:4:\"name\";s:11:\"ga:sessions\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}}}s:12:\"\0*\0processed\";a:0:{}}s:7:\"expires\";i:1519966800;}', 'no'),
(593, 'gadwp_cache_qr10_808797299', 'a:2:{s:5:\"value\";O:31:\"Deconf_Service_Analytics_GaData\":24:{s:17:\"\0*\0collection_key\";s:4:\"rows\";s:25:\"\0*\0internal_gapi_mappings\";a:0:{}s:20:\"\0*\0columnHeadersType\";s:44:\"Deconf_Service_Analytics_GaDataColumnHeaders\";s:24:\"\0*\0columnHeadersDataType\";s:5:\"array\";s:19:\"containsSampledData\";b:0;s:16:\"\0*\0dataTableType\";s:40:\"Deconf_Service_Analytics_GaDataDataTable\";s:20:\"\0*\0dataTableDataType\";s:0:\"\";s:2:\"id\";s:193:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:170694479&dimensions=ga:medium&metrics=ga:sessions&sort=-ga:sessions&filters=ga:medium!%3D(not+set)&start-date=7daysAgo&end-date=yesterday\";s:12:\"itemsPerPage\";i:1000;s:4:\"kind\";s:16:\"analytics#gaData\";s:8:\"nextLink\";N;s:12:\"previousLink\";N;s:18:\"\0*\0profileInfoType\";s:42:\"Deconf_Service_Analytics_GaDataProfileInfo\";s:22:\"\0*\0profileInfoDataType\";s:0:\"\";s:12:\"\0*\0queryType\";s:36:\"Deconf_Service_Analytics_GaDataQuery\";s:16:\"\0*\0queryDataType\";s:0:\"\";s:4:\"rows\";N;s:10:\"sampleSize\";N;s:11:\"sampleSpace\";N;s:8:\"selfLink\";s:193:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:170694479&dimensions=ga:medium&metrics=ga:sessions&sort=-ga:sessions&filters=ga:medium!%3D(not+set)&start-date=7daysAgo&end-date=yesterday\";s:12:\"totalResults\";i:0;s:19:\"totalsForAllResults\";a:1:{s:11:\"ga:sessions\";s:1:\"0\";}s:12:\"\0*\0modelData\";a:3:{s:5:\"query\";a:10:{s:10:\"start-date\";s:8:\"7daysAgo\";s:8:\"end-date\";s:9:\"yesterday\";s:3:\"ids\";s:12:\"ga:170694479\";s:10:\"dimensions\";s:9:\"ga:medium\";s:7:\"metrics\";a:1:{i:0;s:11:\"ga:sessions\";}s:4:\"sort\";a:1:{i:0;s:12:\"-ga:sessions\";}s:7:\"filters\";s:20:\"ga:medium!=(not set)\";s:11:\"start-index\";i:1;s:11:\"max-results\";i:1000;s:13:\"samplingLevel\";s:16:\"HIGHER_PRECISION\";}s:11:\"profileInfo\";a:6:{s:9:\"profileId\";s:9:\"170694479\";s:9:\"accountId\";s:9:\"114941627\";s:13:\"webPropertyId\";s:14:\"UA-114941627-1\";s:21:\"internalWebPropertyId\";s:9:\"170914535\";s:11:\"profileName\";s:29:\"Todos los datos de sitios web\";s:7:\"tableId\";s:12:\"ga:170694479\";}s:13:\"columnHeaders\";a:2:{i:0;a:3:{s:4:\"name\";s:9:\"ga:medium\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:1;a:3:{s:4:\"name\";s:11:\"ga:sessions\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}}}s:12:\"\0*\0processed\";a:0:{}}s:7:\"expires\";i:1519966800;}', 'no'),
(594, 'gadwp_cache_qr10_1188731768', 'a:2:{s:5:\"value\";O:31:\"Deconf_Service_Analytics_GaData\":24:{s:17:\"\0*\0collection_key\";s:4:\"rows\";s:25:\"\0*\0internal_gapi_mappings\";a:0:{}s:20:\"\0*\0columnHeadersType\";s:44:\"Deconf_Service_Analytics_GaDataColumnHeaders\";s:24:\"\0*\0columnHeadersDataType\";s:5:\"array\";s:19:\"containsSampledData\";b:0;s:16:\"\0*\0dataTableType\";s:40:\"Deconf_Service_Analytics_GaDataDataTable\";s:20:\"\0*\0dataTableDataType\";s:0:\"\";s:2:\"id\";s:203:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:170694479&dimensions=ga:visitorType&metrics=ga:sessions&sort=-ga:sessions&filters=ga:visitorType!%3D(not+set)&start-date=7daysAgo&end-date=yesterday\";s:12:\"itemsPerPage\";i:1000;s:4:\"kind\";s:16:\"analytics#gaData\";s:8:\"nextLink\";N;s:12:\"previousLink\";N;s:18:\"\0*\0profileInfoType\";s:42:\"Deconf_Service_Analytics_GaDataProfileInfo\";s:22:\"\0*\0profileInfoDataType\";s:0:\"\";s:12:\"\0*\0queryType\";s:36:\"Deconf_Service_Analytics_GaDataQuery\";s:16:\"\0*\0queryDataType\";s:0:\"\";s:4:\"rows\";N;s:10:\"sampleSize\";N;s:11:\"sampleSpace\";N;s:8:\"selfLink\";s:203:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:170694479&dimensions=ga:visitorType&metrics=ga:sessions&sort=-ga:sessions&filters=ga:visitorType!%3D(not+set)&start-date=7daysAgo&end-date=yesterday\";s:12:\"totalResults\";i:0;s:19:\"totalsForAllResults\";a:1:{s:11:\"ga:sessions\";s:1:\"0\";}s:12:\"\0*\0modelData\";a:3:{s:5:\"query\";a:10:{s:10:\"start-date\";s:8:\"7daysAgo\";s:8:\"end-date\";s:9:\"yesterday\";s:3:\"ids\";s:12:\"ga:170694479\";s:10:\"dimensions\";s:14:\"ga:visitorType\";s:7:\"metrics\";a:1:{i:0;s:11:\"ga:sessions\";}s:4:\"sort\";a:1:{i:0;s:12:\"-ga:sessions\";}s:7:\"filters\";s:25:\"ga:visitorType!=(not set)\";s:11:\"start-index\";i:1;s:11:\"max-results\";i:1000;s:13:\"samplingLevel\";s:16:\"HIGHER_PRECISION\";}s:11:\"profileInfo\";a:6:{s:9:\"profileId\";s:9:\"170694479\";s:9:\"accountId\";s:9:\"114941627\";s:13:\"webPropertyId\";s:14:\"UA-114941627-1\";s:21:\"internalWebPropertyId\";s:9:\"170914535\";s:11:\"profileName\";s:29:\"Todos los datos de sitios web\";s:7:\"tableId\";s:12:\"ga:170694479\";}s:13:\"columnHeaders\";a:2:{i:0;a:3:{s:4:\"name\";s:14:\"ga:visitorType\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:1;a:3:{s:4:\"name\";s:11:\"ga:sessions\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}}}s:12:\"\0*\0processed\";a:0:{}}s:7:\"expires\";i:1519966800;}', 'no'),
(595, 'gadwp_cache_qr10_742521362', 'a:2:{s:5:\"value\";O:31:\"Deconf_Service_Analytics_GaData\":24:{s:17:\"\0*\0collection_key\";s:4:\"rows\";s:25:\"\0*\0internal_gapi_mappings\";a:0:{}s:20:\"\0*\0columnHeadersType\";s:44:\"Deconf_Service_Analytics_GaDataColumnHeaders\";s:24:\"\0*\0columnHeadersDataType\";s:5:\"array\";s:19:\"containsSampledData\";b:0;s:16:\"\0*\0dataTableType\";s:40:\"Deconf_Service_Analytics_GaDataDataTable\";s:20:\"\0*\0dataTableDataType\";s:0:\"\";s:2:\"id\";s:217:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:170694479&dimensions=ga:source&metrics=ga:sessions&sort=-ga:sessions&filters=ga:medium%3D%3Dorganic;ga:keyword!%3D(not+set)&start-date=7daysAgo&end-date=yesterday\";s:12:\"itemsPerPage\";i:1000;s:4:\"kind\";s:16:\"analytics#gaData\";s:8:\"nextLink\";N;s:12:\"previousLink\";N;s:18:\"\0*\0profileInfoType\";s:42:\"Deconf_Service_Analytics_GaDataProfileInfo\";s:22:\"\0*\0profileInfoDataType\";s:0:\"\";s:12:\"\0*\0queryType\";s:36:\"Deconf_Service_Analytics_GaDataQuery\";s:16:\"\0*\0queryDataType\";s:0:\"\";s:4:\"rows\";N;s:10:\"sampleSize\";N;s:11:\"sampleSpace\";N;s:8:\"selfLink\";s:217:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:170694479&dimensions=ga:source&metrics=ga:sessions&sort=-ga:sessions&filters=ga:medium%3D%3Dorganic;ga:keyword!%3D(not+set)&start-date=7daysAgo&end-date=yesterday\";s:12:\"totalResults\";i:0;s:19:\"totalsForAllResults\";a:1:{s:11:\"ga:sessions\";s:1:\"0\";}s:12:\"\0*\0modelData\";a:3:{s:5:\"query\";a:10:{s:10:\"start-date\";s:8:\"7daysAgo\";s:8:\"end-date\";s:9:\"yesterday\";s:3:\"ids\";s:12:\"ga:170694479\";s:10:\"dimensions\";s:9:\"ga:source\";s:7:\"metrics\";a:1:{i:0;s:11:\"ga:sessions\";}s:4:\"sort\";a:1:{i:0;s:12:\"-ga:sessions\";}s:7:\"filters\";s:40:\"ga:medium==organic;ga:keyword!=(not set)\";s:11:\"start-index\";i:1;s:11:\"max-results\";i:1000;s:13:\"samplingLevel\";s:16:\"HIGHER_PRECISION\";}s:11:\"profileInfo\";a:6:{s:9:\"profileId\";s:9:\"170694479\";s:9:\"accountId\";s:9:\"114941627\";s:13:\"webPropertyId\";s:14:\"UA-114941627-1\";s:21:\"internalWebPropertyId\";s:9:\"170914535\";s:11:\"profileName\";s:29:\"Todos los datos de sitios web\";s:7:\"tableId\";s:12:\"ga:170694479\";}s:13:\"columnHeaders\";a:2:{i:0;a:3:{s:4:\"name\";s:9:\"ga:source\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:1;a:3:{s:4:\"name\";s:11:\"ga:sessions\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}}}s:12:\"\0*\0processed\";a:0:{}}s:7:\"expires\";i:1519966800;}', 'no'),
(596, 'gadwp_cache_qr10_3788322632', 'a:2:{s:5:\"value\";O:31:\"Deconf_Service_Analytics_GaData\":24:{s:17:\"\0*\0collection_key\";s:4:\"rows\";s:25:\"\0*\0internal_gapi_mappings\";a:0:{}s:20:\"\0*\0columnHeadersType\";s:44:\"Deconf_Service_Analytics_GaDataColumnHeaders\";s:24:\"\0*\0columnHeadersDataType\";s:5:\"array\";s:19:\"containsSampledData\";b:0;s:16:\"\0*\0dataTableType\";s:40:\"Deconf_Service_Analytics_GaDataDataTable\";s:20:\"\0*\0dataTableDataType\";s:0:\"\";s:2:\"id\";s:207:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:170694479&dimensions=ga:socialNetwork&metrics=ga:sessions&sort=-ga:sessions&filters=ga:socialNetwork!%3D(not+set)&start-date=7daysAgo&end-date=yesterday\";s:12:\"itemsPerPage\";i:1000;s:4:\"kind\";s:16:\"analytics#gaData\";s:8:\"nextLink\";N;s:12:\"previousLink\";N;s:18:\"\0*\0profileInfoType\";s:42:\"Deconf_Service_Analytics_GaDataProfileInfo\";s:22:\"\0*\0profileInfoDataType\";s:0:\"\";s:12:\"\0*\0queryType\";s:36:\"Deconf_Service_Analytics_GaDataQuery\";s:16:\"\0*\0queryDataType\";s:0:\"\";s:4:\"rows\";N;s:10:\"sampleSize\";N;s:11:\"sampleSpace\";N;s:8:\"selfLink\";s:207:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:170694479&dimensions=ga:socialNetwork&metrics=ga:sessions&sort=-ga:sessions&filters=ga:socialNetwork!%3D(not+set)&start-date=7daysAgo&end-date=yesterday\";s:12:\"totalResults\";i:0;s:19:\"totalsForAllResults\";a:1:{s:11:\"ga:sessions\";s:1:\"0\";}s:12:\"\0*\0modelData\";a:3:{s:5:\"query\";a:10:{s:10:\"start-date\";s:8:\"7daysAgo\";s:8:\"end-date\";s:9:\"yesterday\";s:3:\"ids\";s:12:\"ga:170694479\";s:10:\"dimensions\";s:16:\"ga:socialNetwork\";s:7:\"metrics\";a:1:{i:0;s:11:\"ga:sessions\";}s:4:\"sort\";a:1:{i:0;s:12:\"-ga:sessions\";}s:7:\"filters\";s:27:\"ga:socialNetwork!=(not set)\";s:11:\"start-index\";i:1;s:11:\"max-results\";i:1000;s:13:\"samplingLevel\";s:16:\"HIGHER_PRECISION\";}s:11:\"profileInfo\";a:6:{s:9:\"profileId\";s:9:\"170694479\";s:9:\"accountId\";s:9:\"114941627\";s:13:\"webPropertyId\";s:14:\"UA-114941627-1\";s:21:\"internalWebPropertyId\";s:9:\"170914535\";s:11:\"profileName\";s:29:\"Todos los datos de sitios web\";s:7:\"tableId\";s:12:\"ga:170694479\";}s:13:\"columnHeaders\";a:2:{i:0;a:3:{s:4:\"name\";s:16:\"ga:socialNetwork\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:1;a:3:{s:4:\"name\";s:11:\"ga:sessions\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}}}s:12:\"\0*\0processed\";a:0:{}}s:7:\"expires\";i:1519966800;}', 'no'),
(597, 'gadwp_cache_qr2_2773559274', 'a:2:{s:5:\"value\";O:31:\"Deconf_Service_Analytics_GaData\":24:{s:17:\"\0*\0collection_key\";s:4:\"rows\";s:25:\"\0*\0internal_gapi_mappings\";a:0:{}s:20:\"\0*\0columnHeadersType\";s:44:\"Deconf_Service_Analytics_GaDataColumnHeaders\";s:24:\"\0*\0columnHeadersDataType\";s:5:\"array\";s:19:\"containsSampledData\";b:0;s:16:\"\0*\0dataTableType\";s:40:\"Deconf_Service_Analytics_GaDataDataTable\";s:20:\"\0*\0dataTableDataType\";s:0:\"\";s:2:\"id\";s:159:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:170694479&dimensions=ga:date,ga:dayOfWeekName&metrics=ga:sessions&start-date=7daysAgo&end-date=yesterday\";s:12:\"itemsPerPage\";i:1000;s:4:\"kind\";s:16:\"analytics#gaData\";s:8:\"nextLink\";N;s:12:\"previousLink\";N;s:18:\"\0*\0profileInfoType\";s:42:\"Deconf_Service_Analytics_GaDataProfileInfo\";s:22:\"\0*\0profileInfoDataType\";s:0:\"\";s:12:\"\0*\0queryType\";s:36:\"Deconf_Service_Analytics_GaDataQuery\";s:16:\"\0*\0queryDataType\";s:0:\"\";s:4:\"rows\";N;s:10:\"sampleSize\";N;s:11:\"sampleSpace\";N;s:8:\"selfLink\";s:159:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:170694479&dimensions=ga:date,ga:dayOfWeekName&metrics=ga:sessions&start-date=7daysAgo&end-date=yesterday\";s:12:\"totalResults\";i:0;s:19:\"totalsForAllResults\";a:1:{s:11:\"ga:sessions\";s:1:\"0\";}s:12:\"\0*\0modelData\";a:3:{s:5:\"query\";a:8:{s:10:\"start-date\";s:8:\"7daysAgo\";s:8:\"end-date\";s:9:\"yesterday\";s:3:\"ids\";s:12:\"ga:170694479\";s:10:\"dimensions\";s:24:\"ga:date,ga:dayOfWeekName\";s:7:\"metrics\";a:1:{i:0;s:11:\"ga:sessions\";}s:11:\"start-index\";i:1;s:11:\"max-results\";i:1000;s:13:\"samplingLevel\";s:16:\"HIGHER_PRECISION\";}s:11:\"profileInfo\";a:6:{s:9:\"profileId\";s:9:\"170694479\";s:9:\"accountId\";s:9:\"114941627\";s:13:\"webPropertyId\";s:14:\"UA-114941627-1\";s:21:\"internalWebPropertyId\";s:9:\"170914535\";s:11:\"profileName\";s:29:\"Todos los datos de sitios web\";s:7:\"tableId\";s:12:\"ga:170694479\";}s:13:\"columnHeaders\";a:3:{i:0;a:3:{s:4:\"name\";s:7:\"ga:date\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:1;a:3:{s:4:\"name\";s:16:\"ga:dayOfWeekName\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:2;a:3:{s:4:\"name\";s:11:\"ga:sessions\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}}}s:12:\"\0*\0processed\";a:0:{}}s:7:\"expires\";i:1519966800;}', 'no'),
(598, 'gadwp_cache_qr2_1339946628', 'a:2:{s:5:\"value\";O:31:\"Deconf_Service_Analytics_GaData\":24:{s:17:\"\0*\0collection_key\";s:4:\"rows\";s:25:\"\0*\0internal_gapi_mappings\";a:0:{}s:20:\"\0*\0columnHeadersType\";s:44:\"Deconf_Service_Analytics_GaDataColumnHeaders\";s:24:\"\0*\0columnHeadersDataType\";s:5:\"array\";s:19:\"containsSampledData\";b:0;s:16:\"\0*\0dataTableType\";s:40:\"Deconf_Service_Analytics_GaDataDataTable\";s:20:\"\0*\0dataTableDataType\";s:0:\"\";s:2:\"id\";s:253:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:170694479&dimensions=ga:date,ga:dayOfWeekName&metrics=ga:uniquePageviews&filters=ga:pagePath%3D%3D/PROYECTOS/ECommerceC4_Nahuel_Grime/?page_id%3D10&start-date=30daysAgo&end-date=yesterday\";s:12:\"itemsPerPage\";i:1000;s:4:\"kind\";s:16:\"analytics#gaData\";s:8:\"nextLink\";N;s:12:\"previousLink\";N;s:18:\"\0*\0profileInfoType\";s:42:\"Deconf_Service_Analytics_GaDataProfileInfo\";s:22:\"\0*\0profileInfoDataType\";s:0:\"\";s:12:\"\0*\0queryType\";s:36:\"Deconf_Service_Analytics_GaDataQuery\";s:16:\"\0*\0queryDataType\";s:0:\"\";s:4:\"rows\";N;s:10:\"sampleSize\";N;s:11:\"sampleSpace\";N;s:8:\"selfLink\";s:253:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:170694479&dimensions=ga:date,ga:dayOfWeekName&metrics=ga:uniquePageviews&filters=ga:pagePath%3D%3D/PROYECTOS/ECommerceC4_Nahuel_Grime/?page_id%3D10&start-date=30daysAgo&end-date=yesterday\";s:12:\"totalResults\";i:0;s:19:\"totalsForAllResults\";a:1:{s:18:\"ga:uniquePageviews\";s:1:\"0\";}s:12:\"\0*\0modelData\";a:3:{s:5:\"query\";a:9:{s:10:\"start-date\";s:9:\"30daysAgo\";s:8:\"end-date\";s:9:\"yesterday\";s:3:\"ids\";s:12:\"ga:170694479\";s:10:\"dimensions\";s:24:\"ga:date,ga:dayOfWeekName\";s:7:\"metrics\";a:1:{i:0;s:18:\"ga:uniquePageviews\";}s:7:\"filters\";s:71:\"ga:pagePath==/PROYECTOS/ECommerceC4_Nahuel_Grime/?page_id=10\";s:11:\"start-index\";i:1;s:11:\"max-results\";i:1000;s:13:\"samplingLevel\";s:16:\"HIGHER_PRECISION\";}s:11:\"profileInfo\";a:6:{s:9:\"profileId\";s:9:\"170694479\";s:9:\"accountId\";s:9:\"114941627\";s:13:\"webPropertyId\";s:14:\"UA-114941627-1\";s:21:\"internalWebPropertyId\";s:9:\"170914535\";s:11:\"profileName\";s:29:\"Todos los datos de sitios web\";s:7:\"tableId\";s:12:\"ga:170694479\";}s:13:\"columnHeaders\";a:3:{i:0;a:3:{s:4:\"name\";s:7:\"ga:date\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:1;a:3:{s:4:\"name\";s:16:\"ga:dayOfWeekName\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:2;a:3:{s:4:\"name\";s:18:\"ga:uniquePageviews\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}}}s:12:\"\0*\0processed\";a:0:{}}s:7:\"expires\";i:1519966800;}', 'no'),
(599, 'gadwp_cache_qr3_2608499897', 'a:2:{s:5:\"value\";O:31:\"Deconf_Service_Analytics_GaData\":24:{s:17:\"\0*\0collection_key\";s:4:\"rows\";s:25:\"\0*\0internal_gapi_mappings\";a:0:{}s:20:\"\0*\0columnHeadersType\";s:44:\"Deconf_Service_Analytics_GaDataColumnHeaders\";s:24:\"\0*\0columnHeadersDataType\";s:5:\"array\";s:19:\"containsSampledData\";b:0;s:16:\"\0*\0dataTableType\";s:40:\"Deconf_Service_Analytics_GaDataDataTable\";s:20:\"\0*\0dataTableDataType\";s:0:\"\";s:2:\"id\";s:343:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:170694479&metrics=ga:uniquePageviews,ga:users,ga:pageviews,ga:BounceRate,ga:organicSearches,ga:pageviewsPerSession,ga:avgTimeOnPage,ga:avgPageLoadTime,ga:exitRate&filters=ga:pagePath%3D%3D/PROYECTOS/ECommerceC4_Nahuel_Grime/?page_id%3D10&start-date=30daysAgo&end-date=yesterday\";s:12:\"itemsPerPage\";i:1000;s:4:\"kind\";s:16:\"analytics#gaData\";s:8:\"nextLink\";N;s:12:\"previousLink\";N;s:18:\"\0*\0profileInfoType\";s:42:\"Deconf_Service_Analytics_GaDataProfileInfo\";s:22:\"\0*\0profileInfoDataType\";s:0:\"\";s:12:\"\0*\0queryType\";s:36:\"Deconf_Service_Analytics_GaDataQuery\";s:16:\"\0*\0queryDataType\";s:0:\"\";s:4:\"rows\";N;s:10:\"sampleSize\";N;s:11:\"sampleSpace\";N;s:8:\"selfLink\";s:343:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:170694479&metrics=ga:uniquePageviews,ga:users,ga:pageviews,ga:BounceRate,ga:organicSearches,ga:pageviewsPerSession,ga:avgTimeOnPage,ga:avgPageLoadTime,ga:exitRate&filters=ga:pagePath%3D%3D/PROYECTOS/ECommerceC4_Nahuel_Grime/?page_id%3D10&start-date=30daysAgo&end-date=yesterday\";s:12:\"totalResults\";i:0;s:19:\"totalsForAllResults\";a:9:{s:18:\"ga:uniquePageviews\";s:1:\"0\";s:8:\"ga:users\";s:1:\"0\";s:12:\"ga:pageviews\";s:1:\"0\";s:13:\"ga:BounceRate\";s:3:\"0.0\";s:18:\"ga:organicSearches\";s:1:\"0\";s:22:\"ga:pageviewsPerSession\";s:3:\"0.0\";s:16:\"ga:avgTimeOnPage\";s:3:\"0.0\";s:18:\"ga:avgPageLoadTime\";s:3:\"0.0\";s:11:\"ga:exitRate\";s:3:\"0.0\";}s:12:\"\0*\0modelData\";a:3:{s:5:\"query\";a:8:{s:10:\"start-date\";s:9:\"30daysAgo\";s:8:\"end-date\";s:9:\"yesterday\";s:3:\"ids\";s:12:\"ga:170694479\";s:7:\"metrics\";a:9:{i:0;s:18:\"ga:uniquePageviews\";i:1;s:8:\"ga:users\";i:2;s:12:\"ga:pageviews\";i:3;s:13:\"ga:BounceRate\";i:4;s:18:\"ga:organicSearches\";i:5;s:22:\"ga:pageviewsPerSession\";i:6;s:16:\"ga:avgTimeOnPage\";i:7;s:18:\"ga:avgPageLoadTime\";i:8;s:11:\"ga:exitRate\";}s:7:\"filters\";s:71:\"ga:pagePath==/PROYECTOS/ECommerceC4_Nahuel_Grime/?page_id=10\";s:11:\"start-index\";i:1;s:11:\"max-results\";i:1000;s:13:\"samplingLevel\";s:16:\"HIGHER_PRECISION\";}s:11:\"profileInfo\";a:6:{s:9:\"profileId\";s:9:\"170694479\";s:9:\"accountId\";s:9:\"114941627\";s:13:\"webPropertyId\";s:14:\"UA-114941627-1\";s:21:\"internalWebPropertyId\";s:9:\"170914535\";s:11:\"profileName\";s:29:\"Todos los datos de sitios web\";s:7:\"tableId\";s:12:\"ga:170694479\";}s:13:\"columnHeaders\";a:9:{i:0;a:3:{s:4:\"name\";s:18:\"ga:uniquePageviews\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}i:1;a:3:{s:4:\"name\";s:8:\"ga:users\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}i:2;a:3:{s:4:\"name\";s:12:\"ga:pageviews\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}i:3;a:3:{s:4:\"name\";s:13:\"ga:BounceRate\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"PERCENT\";}i:4;a:3:{s:4:\"name\";s:18:\"ga:organicSearches\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}i:5;a:3:{s:4:\"name\";s:22:\"ga:pageviewsPerSession\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:5:\"FLOAT\";}i:6;a:3:{s:4:\"name\";s:16:\"ga:avgTimeOnPage\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:4:\"TIME\";}i:7;a:3:{s:4:\"name\";s:18:\"ga:avgPageLoadTime\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:5:\"FLOAT\";}i:8;a:3:{s:4:\"name\";s:11:\"ga:exitRate\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"PERCENT\";}}}s:12:\"\0*\0processed\";a:0:{}}s:7:\"expires\";i:1519966800;}', 'no'),
(600, 'gadwp_cache_qr2_2226370299', 'a:2:{s:5:\"value\";O:31:\"Deconf_Service_Analytics_GaData\":24:{s:17:\"\0*\0collection_key\";s:4:\"rows\";s:25:\"\0*\0internal_gapi_mappings\";a:0:{}s:20:\"\0*\0columnHeadersType\";s:44:\"Deconf_Service_Analytics_GaDataColumnHeaders\";s:24:\"\0*\0columnHeadersDataType\";s:5:\"array\";s:19:\"containsSampledData\";b:0;s:16:\"\0*\0dataTableType\";s:40:\"Deconf_Service_Analytics_GaDataDataTable\";s:20:\"\0*\0dataTableDataType\";s:0:\"\";s:2:\"id\";s:243:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:170694479&dimensions=ga:date,ga:dayOfWeekName&metrics=ga:users&filters=ga:pagePath%3D%3D/PROYECTOS/ECommerceC4_Nahuel_Grime/?page_id%3D10&start-date=30daysAgo&end-date=yesterday\";s:12:\"itemsPerPage\";i:1000;s:4:\"kind\";s:16:\"analytics#gaData\";s:8:\"nextLink\";N;s:12:\"previousLink\";N;s:18:\"\0*\0profileInfoType\";s:42:\"Deconf_Service_Analytics_GaDataProfileInfo\";s:22:\"\0*\0profileInfoDataType\";s:0:\"\";s:12:\"\0*\0queryType\";s:36:\"Deconf_Service_Analytics_GaDataQuery\";s:16:\"\0*\0queryDataType\";s:0:\"\";s:4:\"rows\";N;s:10:\"sampleSize\";N;s:11:\"sampleSpace\";N;s:8:\"selfLink\";s:243:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:170694479&dimensions=ga:date,ga:dayOfWeekName&metrics=ga:users&filters=ga:pagePath%3D%3D/PROYECTOS/ECommerceC4_Nahuel_Grime/?page_id%3D10&start-date=30daysAgo&end-date=yesterday\";s:12:\"totalResults\";i:0;s:19:\"totalsForAllResults\";a:1:{s:8:\"ga:users\";s:1:\"0\";}s:12:\"\0*\0modelData\";a:3:{s:5:\"query\";a:9:{s:10:\"start-date\";s:9:\"30daysAgo\";s:8:\"end-date\";s:9:\"yesterday\";s:3:\"ids\";s:12:\"ga:170694479\";s:10:\"dimensions\";s:24:\"ga:date,ga:dayOfWeekName\";s:7:\"metrics\";a:1:{i:0;s:8:\"ga:users\";}s:7:\"filters\";s:71:\"ga:pagePath==/PROYECTOS/ECommerceC4_Nahuel_Grime/?page_id=10\";s:11:\"start-index\";i:1;s:11:\"max-results\";i:1000;s:13:\"samplingLevel\";s:16:\"HIGHER_PRECISION\";}s:11:\"profileInfo\";a:6:{s:9:\"profileId\";s:9:\"170694479\";s:9:\"accountId\";s:9:\"114941627\";s:13:\"webPropertyId\";s:14:\"UA-114941627-1\";s:21:\"internalWebPropertyId\";s:9:\"170914535\";s:11:\"profileName\";s:29:\"Todos los datos de sitios web\";s:7:\"tableId\";s:12:\"ga:170694479\";}s:13:\"columnHeaders\";a:3:{i:0;a:3:{s:4:\"name\";s:7:\"ga:date\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:1;a:3:{s:4:\"name\";s:16:\"ga:dayOfWeekName\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:2;a:3:{s:4:\"name\";s:8:\"ga:users\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}}}s:12:\"\0*\0processed\";a:0:{}}s:7:\"expires\";i:1519966800;}', 'no'),
(613, '_transient_timeout_ud_need_splash', '1529801041', 'no'),
(614, '_transient_ud_need_splash', 'ud_splash_dashboard', 'no'),
(615, 'wp_crm_version', '1.1.4', 'yes'),
(616, 'wp_crm_caps_set', '1', 'yes'),
(617, 'ud_ping_wp-crmwp-crm', 'a:2:{s:4:\"time\";i:1529800635;s:4:\"data\";a:3:{s:9:\"timestamp\";i:1529800635;s:7:\"message\";s:0:\"\";s:3:\"sig\";s:41:\"secret=null&timestamp=1529800635&message=\";}}', 'yes'),
(618, 'wp-crm-current-version', '1.1.4', 'yes'),
(619, 'wp_crm_settings', 'a:6:{s:7:\"version\";s:3:\"0.1\";s:13:\"configuration\";a:11:{s:10:\"user_level\";s:13:\"administrator\";s:23:\"default_user_capability\";s:8:\"prospect\";s:40:\"default_user_capability_permissions_base\";s:10:\"subscriber\";s:44:\"create_individual_pages_for_crm_capabilities\";s:4:\"true\";s:4:\"mail\";a:2:{s:11:\"sender_name\";s:11:\"SWEET WORLD\";s:10:\"send_email\";s:24:\"tifiana_1991@hotmail.com\";}s:11:\"input_types\";a:9:{s:4:\"text\";s:16:\"Single Line Text\";s:8:\"checkbox\";s:8:\"Checkbox\";s:5:\"radio\";s:5:\"Radio\";s:8:\"textarea\";s:8:\"Textarea\";s:8:\"dropdown\";s:8:\"Dropdown\";s:8:\"password\";s:8:\"Password\";s:4:\"date\";s:11:\"Date Picker\";s:11:\"file_upload\";s:11:\"File Upload\";s:9:\"recaptcha\";s:16:\"Google reCAPTCHA\";}s:22:\"overview_table_options\";a:1:{s:9:\"main_view\";a:2:{i:0;s:12:\"display_name\";i:1;s:10:\"user_email\";}}s:20:\"default_sender_email\";s:19:\"CRM <crm@localhost>\";s:22:\"primary_user_attribute\";s:12:\"display_name\";s:18:\"recaptcha_site_key\";s:0:\"\";s:20:\"recaptcha_secret_key\";s:0:\"\";}s:12:\"capabilities\";a:10:{s:15:\"Manage Settings\";s:30:\"View and edit plugin settings.\";s:13:\"View Overview\";s:48:\"View individual prospects and the overview page.\";s:18:\"View Detailed Logs\";s:33:\"View detailed user activity logs.\";s:13:\"View Profiles\";s:22:\"View a user\'s profile.\";s:17:\"Add User Messages\";s:49:\"Add to correspondence thread on a user\'s profile.\";s:18:\"Send Group Message\";s:30:\"Send a group message to users.\";s:26:\"Perform Advanced Functions\";s:49:\"Perform advanced functions such as merging users.\";s:16:\"Change Passwords\";s:100:\"Change passwords of other users. This is only checked if the user can edit users in the first place.\";s:11:\"Change Role\";s:95:\"Change role of other users. This is only checked if the user can edit users in the first place.\";s:19:\"Change Color Scheme\";s:88:\"Change color scheme. This is only checked if the user can edit users in the first place.\";}s:14:\"data_structure\";a:3:{s:10:\"attributes\";a:8:{s:12:\"display_name\";a:5:{s:5:\"title\";s:12:\"Display Name\";s:7:\"primary\";s:4:\"true\";s:7:\"display\";s:4:\"true\";s:10:\"input_type\";s:4:\"text\";s:8:\"required\";s:4:\"true\";}s:10:\"user_email\";a:6:{s:5:\"title\";s:10:\"User Email\";s:7:\"primary\";s:4:\"true\";s:7:\"display\";s:5:\"false\";s:10:\"input_type\";s:4:\"text\";s:8:\"required\";s:4:\"true\";s:15:\"overview_column\";s:4:\"true\";}s:7:\"company\";a:4:{s:5:\"title\";s:7:\"Company\";s:10:\"input_type\";s:4:\"text\";s:7:\"primary\";s:4:\"true\";s:7:\"display\";s:4:\"true\";}s:12:\"phone_number\";a:3:{s:5:\"title\";s:12:\"Phone Number\";s:10:\"input_type\";s:4:\"text\";s:7:\"display\";s:4:\"true\";}s:9:\"user_type\";a:6:{s:5:\"title\";s:9:\"User Type\";s:7:\"options\";s:24:\"Customer,Vendor,Employee\";s:10:\"input_type\";s:8:\"checkbox\";s:11:\"option_keys\";a:3:{s:8:\"customer\";s:25:\"user_type_option_customer\";s:6:\"vendor\";s:23:\"user_type_option_vendor\";s:8:\"employee\";s:25:\"user_type_option_employee\";}s:13:\"option_labels\";a:3:{s:8:\"customer\";s:8:\"Customer\";s:6:\"vendor\";s:6:\"Vendor\";s:8:\"employee\";s:8:\"Employee\";}s:11:\"has_options\";b:1;}s:17:\"instant_messenger\";a:7:{s:5:\"title\";s:2:\"IM\";s:7:\"options\";s:21:\"Skype,Google Talk,AIM\";s:10:\"input_type\";s:4:\"text\";s:14:\"allow_multiple\";s:4:\"true\";s:11:\"option_keys\";a:3:{s:5:\"skype\";s:30:\"instant_messenger_option_skype\";s:11:\"google-talk\";s:36:\"instant_messenger_option_google-talk\";s:3:\"aim\";s:28:\"instant_messenger_option_aim\";}s:13:\"option_labels\";a:3:{s:5:\"skype\";s:5:\"Skype\";s:11:\"google-talk\";s:11:\"Google Talk\";s:3:\"aim\";s:3:\"AIM\";}s:11:\"has_options\";b:1;}s:11:\"description\";a:2:{s:5:\"title\";s:11:\"Description\";s:10:\"input_type\";s:8:\"textarea\";}s:9:\"recaptcha\";a:3:{s:5:\"title\";s:16:\"Google reCAPTCHA\";s:10:\"input_type\";s:9:\"recaptcha\";s:8:\"required\";s:4:\"true\";}}s:9:\"meta_keys\";a:14:{s:12:\"display_name\";s:12:\"Display Name\";s:10:\"user_email\";s:10:\"User Email\";s:7:\"company\";s:7:\"Company\";s:12:\"phone_number\";s:12:\"Phone Number\";s:9:\"user_type\";s:9:\"User Type\";s:25:\"user_type_option_customer\";s:8:\"Customer\";s:23:\"user_type_option_vendor\";s:6:\"Vendor\";s:25:\"user_type_option_employee\";s:8:\"Employee\";s:17:\"instant_messenger\";s:2:\"IM\";s:30:\"instant_messenger_option_skype\";s:5:\"Skype\";s:36:\"instant_messenger_option_google-talk\";s:11:\"Google Talk\";s:28:\"instant_messenger_option_aim\";s:3:\"AIM\";s:11:\"description\";s:11:\"Description\";s:9:\"recaptcha\";s:16:\"Google reCAPTCHA\";}s:14:\"full_meta_keys\";a:14:{s:12:\"display_name\";s:12:\"display_name\";s:10:\"user_email\";s:10:\"user_email\";s:7:\"company\";s:7:\"company\";s:12:\"phone_number\";s:12:\"phone_number\";s:9:\"user_type\";s:9:\"user_type\";s:25:\"user_type_option_customer\";s:9:\"user_type\";s:23:\"user_type_option_vendor\";s:9:\"user_type\";s:25:\"user_type_option_employee\";s:9:\"user_type\";s:17:\"instant_messenger\";s:17:\"instant_messenger\";s:30:\"instant_messenger_option_skype\";s:17:\"instant_messenger\";s:36:\"instant_messenger_option_google-talk\";s:17:\"instant_messenger\";s:28:\"instant_messenger_option_aim\";s:17:\"instant_messenger\";s:11:\"description\";s:11:\"description\";s:9:\"recaptcha\";s:9:\"recaptcha\";}}s:26:\"wp_crm_contact_system_data\";a:1:{s:12:\"example_form\";a:5:{s:5:\"title\";s:22:\"Example Shortcode Form\";s:14:\"full_shortcode\";s:39:\"[wp_crm_form form=example_contact_form]\";s:17:\"current_form_slug\";s:20:\"example_contact_form\";s:13:\"message_field\";s:2:\"on\";s:6:\"fields\";a:4:{i:0;s:12:\"display_name\";i:1;s:10:\"user_email\";i:2;s:7:\"company\";i:3;s:12:\"phone_number\";}}}s:13:\"notifications\";a:2:{s:7:\"example\";a:5:{s:7:\"subject\";s:28:\"Thank your for your message!\";s:2:\"to\";s:12:\"[user_email]\";s:9:\"send_from\";s:13:\"crm@localhost\";s:7:\"message\";s:64:\"Hello [display_name],\nThank you, your message has been received.\";s:14:\"fire_on_action\";a:1:{i:0;s:12:\"example_form\";}}s:20:\"message_notification\";a:5:{s:7:\"subject\";s:20:\"Message from Website\";s:2:\"to\";s:24:\"tifiana_1991@hotmail.com\";s:9:\"send_from\";s:13:\"crm@localhost\";s:7:\"message\";s:114:\"Shortcode Form: [trigger_action]\nSender Name: [display_name]\nSender Email: [user_email]\nMessage: [message_content]\";s:14:\"fire_on_action\";a:1:{i:0;s:12:\"example_form\";}}}}', 'yes'),
(620, 'udl_wp-crm/wp-crm-url', 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/wp-admin/admin.php?page=wp-crm/wp-crm_wp-crmadd-onsmanager', 'yes'),
(631, '_transient_timeout_external_ip_address_::1', '1530405426', 'no'),
(632, '_transient_external_ip_address_::1', '187.169.49.22', 'no'),
(636, '_site_transient_timeout_theme_roots', '1529802429', 'no'),
(637, '_site_transient_theme_roots', 'a:4:{s:15:\"seos-restaurant\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(638, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1529800632;s:7:\"checked\";a:4:{s:15:\"seos-restaurant\";s:5:\"1.1.8\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:4:{s:15:\"seos-restaurant\";a:4:{s:5:\"theme\";s:15:\"seos-restaurant\";s:11:\"new_version\";s:5:\"2.1.1\";s:3:\"url\";s:45:\"https://wordpress.org/themes/seos-restaurant/\";s:7:\"package\";s:62:\"http://downloads.wordpress.org/theme/seos-restaurant.2.1.1.zip\";}s:13:\"twentyfifteen\";a:4:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:58:\"http://downloads.wordpress.org/theme/twentyfifteen.2.0.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/theme/twentyseventeen.1.6.zip\";}s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:58:\"http://downloads.wordpress.org/theme/twentysixteen.1.5.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(639, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1529800634;s:7:\"checked\";a:6:{s:43:\"google-analytics-dashboard-for-wp/gadwp.php\";s:7:\"5.2.3.1\";s:19:\"jetpack/jetpack.php\";s:3:\"5.8\";s:41:\"woo-paypalplus/paypalplus-woocommerce.php\";s:5:\"1.0.6\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.3.3\";s:45:\"woocommerce-services/woocommerce-services.php\";s:6:\"1.11.0\";s:17:\"wp-crm/wp-crm.php\";s:5:\"1.1.4\";}s:8:\"response\";a:6:{s:43:\"google-analytics-dashboard-for-wp/gadwp.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:47:\"w.org/plugins/google-analytics-dashboard-for-wp\";s:4:\"slug\";s:33:\"google-analytics-dashboard-for-wp\";s:6:\"plugin\";s:43:\"google-analytics-dashboard-for-wp/gadwp.php\";s:11:\"new_version\";s:5:\"5.3.5\";s:3:\"url\";s:64:\"https://wordpress.org/plugins/google-analytics-dashboard-for-wp/\";s:7:\"package\";s:82:\"https://downloads.wordpress.org/plugin/google-analytics-dashboard-for-wp.5.3.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:85:\"https://ps.w.org/google-analytics-dashboard-for-wp/assets/icon-256x256.png?rev=970326\";s:2:\"1x\";s:85:\"https://ps.w.org/google-analytics-dashboard-for-wp/assets/icon-128x128.png?rev=970326\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:88:\"https://ps.w.org/google-analytics-dashboard-for-wp/assets/banner-772x250.png?rev=1064664\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:19:\"jetpack/jetpack.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/jetpack\";s:4:\"slug\";s:7:\"jetpack\";s:6:\"plugin\";s:19:\"jetpack/jetpack.php\";s:11:\"new_version\";s:5:\"6.2.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/jetpack/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/jetpack.6.2.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/jetpack/assets/icon-256x256.png?rev=1791404\";s:2:\"1x\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";s:3:\"svg\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=1791404\";s:2:\"1x\";s:62:\"https://ps.w.org/jetpack/assets/banner-772x250.png?rev=1791404\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:41:\"woo-paypalplus/paypalplus-woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/woo-paypalplus\";s:4:\"slug\";s:14:\"woo-paypalplus\";s:6:\"plugin\";s:41:\"woo-paypalplus/paypalplus-woocommerce.php\";s:11:\"new_version\";s:5:\"1.0.8\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/woo-paypalplus/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/woo-paypalplus.1.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woo-paypalplus/assets/icon-256x256.png?rev=1839228\";s:2:\"1x\";s:67:\"https://ps.w.org/woo-paypalplus/assets/icon-128x128.png?rev=1839228\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/woo-paypalplus/assets/banner-1544x500.png?rev=1654845\";s:2:\"1x\";s:69:\"https://ps.w.org/woo-paypalplus/assets/banner-772x250.png?rev=1654846\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.4.3\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.4.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:45:\"woocommerce-services/woocommerce-services.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:34:\"w.org/plugins/woocommerce-services\";s:4:\"slug\";s:20:\"woocommerce-services\";s:6:\"plugin\";s:45:\"woocommerce-services/woocommerce-services.php\";s:11:\"new_version\";s:6:\"1.14.1\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/woocommerce-services/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/woocommerce-services.1.14.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/woocommerce-services/assets/icon-256x256.png?rev=1586175\";s:2:\"1x\";s:73:\"https://ps.w.org/woocommerce-services/assets/icon-128x128.png?rev=1586175\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/woocommerce-services/assets/banner-1544x500.png?rev=1598183\";s:2:\"1x\";s:75:\"https://ps.w.org/woocommerce-services/assets/banner-772x250.png?rev=1598183\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:17:\"wp-crm/wp-crm.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:20:\"w.org/plugins/wp-crm\";s:4:\"slug\";s:6:\"wp-crm\";s:6:\"plugin\";s:17:\"wp-crm/wp-crm.php\";s:11:\"new_version\";s:5:\"1.1.6\";s:3:\"url\";s:37:\"https://wordpress.org/plugins/wp-crm/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/wp-crm.1.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/wp-crm/assets/icon-256x256.png?rev=1207358\";s:2:\"1x\";s:59:\"https://ps.w.org/wp-crm/assets/icon-128x128.png?rev=1207358\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:61:\"https://ps.w.org/wp-crm/assets/banner-1544x500.jpg?rev=867036\";s:2:\"1x\";s:60:\"https://ps.w.org/wp-crm/assets/banner-772x250.jpg?rev=867036\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.5\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}', 'no'),
(640, '_transient_timeout_jetpack_idc_allowed', '1529804234', 'no'),
(641, '_transient_jetpack_idc_allowed', '1', 'no'),
(644, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:0;s:3:\"all\";i:0;s:9:\"moderated\";i:0;s:8:\"approved\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(645, '_transient_timeout_jetpack_https_test', '1529887140', 'no'),
(646, '_transient_jetpack_https_test', '1', 'no'),
(647, '_transient_timeout_jetpack_https_test_message', '1529887140', 'no'),
(648, '_transient_jetpack_https_test_message', '', 'no'),
(649, '_site_transient_timeout_browser_a086906eaf9cc3bbb07392145764ac01', '1530405540', 'no'),
(650, '_site_transient_browser_a086906eaf9cc3bbb07392145764ac01', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"67.0.3396.87\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(651, '_transient_timeout_wc_report_sales_by_date', '1529887141', 'no'),
(652, '_transient_wc_report_sales_by_date', 'a:8:{s:32:\"1c846b591edfa8e241304b4515868edf\";a:0:{}s:32:\"7341c548cdea21d4c88fe73df692da08\";a:0:{}s:32:\"ed5c055c5bcd11f1175b2d607a61a326\";a:0:{}s:32:\"0e0ec546649d95f0cf2dc35a51a4de51\";N;s:32:\"716e7d6d37610bd8844fc4f1abaf27a9\";a:0:{}s:32:\"c86c82bc21d3613cbd46fb1e4d6cce37\";a:0:{}s:32:\"84e62fddf6f7c5a4ede9ca9dc1bcd085\";a:0:{}s:32:\"36ec09c166478077c5e88de56720882e\";a:0:{}}', 'no'),
(653, '_transient_timeout_wc_admin_report', '1529887141', 'no'),
(654, '_transient_wc_admin_report', 'a:1:{s:32:\"67f7a455e36bca8e4d11544dd808ea35\";a:0:{}}', 'no'),
(655, '_transient_timeout_wc_low_stock_count', '1532392741', 'no'),
(656, '_transient_wc_low_stock_count', '0', 'no'),
(657, '_transient_timeout_wc_outofstock_count', '1532392741', 'no'),
(658, '_transient_wc_outofstock_count', '0', 'no'),
(659, '_transient_timeout_wc_shipping_method_count_1_1519822241', '1532392745', 'no'),
(660, '_transient_wc_shipping_method_count_1_1519822241', '2', 'no'),
(661, '_site_transient_timeout_community-events-4501c091b0366d76ea3218b6cfdd8097', '1529843945', 'no'),
(662, '_site_transient_community-events-4501c091b0366d76ea3218b6cfdd8097', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:2:\"::\";}s:6:\"events\";a:2:{i:0;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:31:\"Soluciones de cobro con Openpay\";s:3:\"url\";s:57:\"https://www.meetup.com/WordPress-Mexico/events/251773799/\";s:6:\"meetup\";s:16:\"WordPress Mexico\";s:10:\"meetup_url\";s:40:\"https://www.meetup.com/WordPress-Mexico/\";s:4:\"date\";s:19:\"2018-07-14 10:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:17:\"Mexico DF, Mexico\";s:7:\"country\";s:2:\"mx\";s:8:\"latitude\";d:19.41214000000000083900886238552629947662353515625;s:9:\"longitude\";d:-99.18051900000000387080945074558258056640625;}}i:1;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:23:\"WordCamp Puebla/México\";s:3:\"url\";s:32:\"https://2018.puebla.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2018-11-10 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:15:\"Puebla, México\";s:7:\"country\";s:2:\"MX\";s:8:\"latitude\";d:19.040474599999999583133103442378342151641845703125;s:9:\"longitude\";d:-98.195040500000004612957127392292022705078125;}}}}', 'no'),
(663, 'gadwp_cache_qr2_3657722474', 'a:2:{s:5:\"value\";O:31:\"Deconf_Service_Analytics_GaData\":24:{s:17:\"\0*\0collection_key\";s:4:\"rows\";s:25:\"\0*\0internal_gapi_mappings\";a:0:{}s:20:\"\0*\0columnHeadersType\";s:44:\"Deconf_Service_Analytics_GaDataColumnHeaders\";s:24:\"\0*\0columnHeadersDataType\";s:5:\"array\";s:19:\"containsSampledData\";b:0;s:16:\"\0*\0dataTableType\";s:40:\"Deconf_Service_Analytics_GaDataDataTable\";s:20:\"\0*\0dataTableDataType\";s:0:\"\";s:2:\"id\";s:160:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:170694479&dimensions=ga:date,ga:dayOfWeekName&metrics=ga:sessions&start-date=30daysAgo&end-date=yesterday\";s:12:\"itemsPerPage\";i:1000;s:4:\"kind\";s:16:\"analytics#gaData\";s:8:\"nextLink\";N;s:12:\"previousLink\";N;s:18:\"\0*\0profileInfoType\";s:42:\"Deconf_Service_Analytics_GaDataProfileInfo\";s:22:\"\0*\0profileInfoDataType\";s:0:\"\";s:12:\"\0*\0queryType\";s:36:\"Deconf_Service_Analytics_GaDataQuery\";s:16:\"\0*\0queryDataType\";s:0:\"\";s:4:\"rows\";a:30:{i:0;a:3:{i:0;s:8:\"20180524\";i:1;s:8:\"Thursday\";i:2;s:1:\"0\";}i:1;a:3:{i:0;s:8:\"20180525\";i:1;s:6:\"Friday\";i:2;s:1:\"0\";}i:2;a:3:{i:0;s:8:\"20180526\";i:1;s:8:\"Saturday\";i:2;s:1:\"0\";}i:3;a:3:{i:0;s:8:\"20180527\";i:1;s:6:\"Sunday\";i:2;s:1:\"0\";}i:4;a:3:{i:0;s:8:\"20180528\";i:1;s:6:\"Monday\";i:2;s:1:\"0\";}i:5;a:3:{i:0;s:8:\"20180529\";i:1;s:7:\"Tuesday\";i:2;s:1:\"0\";}i:6;a:3:{i:0;s:8:\"20180530\";i:1;s:9:\"Wednesday\";i:2;s:1:\"0\";}i:7;a:3:{i:0;s:8:\"20180531\";i:1;s:8:\"Thursday\";i:2;s:1:\"0\";}i:8;a:3:{i:0;s:8:\"20180601\";i:1;s:6:\"Friday\";i:2;s:1:\"0\";}i:9;a:3:{i:0;s:8:\"20180602\";i:1;s:8:\"Saturday\";i:2;s:1:\"0\";}i:10;a:3:{i:0;s:8:\"20180603\";i:1;s:6:\"Sunday\";i:2;s:1:\"0\";}i:11;a:3:{i:0;s:8:\"20180604\";i:1;s:6:\"Monday\";i:2;s:1:\"0\";}i:12;a:3:{i:0;s:8:\"20180605\";i:1;s:7:\"Tuesday\";i:2;s:1:\"0\";}i:13;a:3:{i:0;s:8:\"20180606\";i:1;s:9:\"Wednesday\";i:2;s:1:\"1\";}i:14;a:3:{i:0;s:8:\"20180607\";i:1;s:8:\"Thursday\";i:2;s:1:\"0\";}i:15;a:3:{i:0;s:8:\"20180608\";i:1;s:6:\"Friday\";i:2;s:1:\"0\";}i:16;a:3:{i:0;s:8:\"20180609\";i:1;s:8:\"Saturday\";i:2;s:1:\"0\";}i:17;a:3:{i:0;s:8:\"20180610\";i:1;s:6:\"Sunday\";i:2;s:1:\"0\";}i:18;a:3:{i:0;s:8:\"20180611\";i:1;s:6:\"Monday\";i:2;s:1:\"0\";}i:19;a:3:{i:0;s:8:\"20180612\";i:1;s:7:\"Tuesday\";i:2;s:1:\"0\";}i:20;a:3:{i:0;s:8:\"20180613\";i:1;s:9:\"Wednesday\";i:2;s:1:\"0\";}i:21;a:3:{i:0;s:8:\"20180614\";i:1;s:8:\"Thursday\";i:2;s:1:\"0\";}i:22;a:3:{i:0;s:8:\"20180615\";i:1;s:6:\"Friday\";i:2;s:1:\"0\";}i:23;a:3:{i:0;s:8:\"20180616\";i:1;s:8:\"Saturday\";i:2;s:1:\"0\";}i:24;a:3:{i:0;s:8:\"20180617\";i:1;s:6:\"Sunday\";i:2;s:1:\"0\";}i:25;a:3:{i:0;s:8:\"20180618\";i:1;s:6:\"Monday\";i:2;s:1:\"0\";}i:26;a:3:{i:0;s:8:\"20180619\";i:1;s:7:\"Tuesday\";i:2;s:1:\"0\";}i:27;a:3:{i:0;s:8:\"20180620\";i:1;s:9:\"Wednesday\";i:2;s:1:\"0\";}i:28;a:3:{i:0;s:8:\"20180621\";i:1;s:8:\"Thursday\";i:2;s:1:\"0\";}i:29;a:3:{i:0;s:8:\"20180622\";i:1;s:6:\"Friday\";i:2;s:1:\"0\";}}s:10:\"sampleSize\";N;s:11:\"sampleSpace\";N;s:8:\"selfLink\";s:160:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:170694479&dimensions=ga:date,ga:dayOfWeekName&metrics=ga:sessions&start-date=30daysAgo&end-date=yesterday\";s:12:\"totalResults\";i:30;s:19:\"totalsForAllResults\";a:1:{s:11:\"ga:sessions\";s:1:\"1\";}s:12:\"\0*\0modelData\";a:3:{s:5:\"query\";a:8:{s:10:\"start-date\";s:9:\"30daysAgo\";s:8:\"end-date\";s:9:\"yesterday\";s:3:\"ids\";s:12:\"ga:170694479\";s:10:\"dimensions\";s:24:\"ga:date,ga:dayOfWeekName\";s:7:\"metrics\";a:1:{i:0;s:11:\"ga:sessions\";}s:11:\"start-index\";i:1;s:11:\"max-results\";i:1000;s:13:\"samplingLevel\";s:16:\"HIGHER_PRECISION\";}s:11:\"profileInfo\";a:6:{s:9:\"profileId\";s:9:\"170694479\";s:9:\"accountId\";s:9:\"114941627\";s:13:\"webPropertyId\";s:14:\"UA-114941627-1\";s:21:\"internalWebPropertyId\";s:9:\"170914535\";s:11:\"profileName\";s:29:\"Todos los datos de sitios web\";s:7:\"tableId\";s:12:\"ga:170694479\";}s:13:\"columnHeaders\";a:3:{i:0;a:3:{s:4:\"name\";s:7:\"ga:date\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:1;a:3:{s:4:\"name\";s:16:\"ga:dayOfWeekName\";s:10:\"columnType\";s:9:\"DIMENSION\";s:8:\"dataType\";s:6:\"STRING\";}i:2;a:3:{s:4:\"name\";s:11:\"ga:sessions\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}}}s:12:\"\0*\0processed\";a:0:{}}s:7:\"expires\";i:1529816400;}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(664, 'gadwp_cache_qr3_2563787810', 'a:2:{s:5:\"value\";O:31:\"Deconf_Service_Analytics_GaData\":24:{s:17:\"\0*\0collection_key\";s:4:\"rows\";s:25:\"\0*\0internal_gapi_mappings\";a:0:{}s:20:\"\0*\0columnHeadersType\";s:44:\"Deconf_Service_Analytics_GaDataColumnHeaders\";s:24:\"\0*\0columnHeadersDataType\";s:5:\"array\";s:19:\"containsSampledData\";b:0;s:16:\"\0*\0dataTableType\";s:40:\"Deconf_Service_Analytics_GaDataDataTable\";s:20:\"\0*\0dataTableDataType\";s:0:\"\";s:2:\"id\";s:260:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:170694479&metrics=ga:sessions,ga:users,ga:pageviews,ga:BounceRate,ga:organicSearches,ga:pageviewsPerSession,ga:avgTimeOnPage,ga:avgPageLoadTime,ga:avgSessionDuration&start-date=30daysAgo&end-date=yesterday\";s:12:\"itemsPerPage\";i:1000;s:4:\"kind\";s:16:\"analytics#gaData\";s:8:\"nextLink\";N;s:12:\"previousLink\";N;s:18:\"\0*\0profileInfoType\";s:42:\"Deconf_Service_Analytics_GaDataProfileInfo\";s:22:\"\0*\0profileInfoDataType\";s:0:\"\";s:12:\"\0*\0queryType\";s:36:\"Deconf_Service_Analytics_GaDataQuery\";s:16:\"\0*\0queryDataType\";s:0:\"\";s:4:\"rows\";a:1:{i:0;a:9:{i:0;s:1:\"1\";i:1;s:1:\"1\";i:2;s:1:\"5\";i:3;s:3:\"0.0\";i:4;s:1:\"0\";i:5;s:3:\"5.0\";i:6;s:5:\"510.0\";i:7;s:3:\"0.0\";i:8;s:6:\"2039.0\";}}s:10:\"sampleSize\";N;s:11:\"sampleSpace\";N;s:8:\"selfLink\";s:260:\"https://www.googleapis.com/analytics/v3/data/ga?ids=ga:170694479&metrics=ga:sessions,ga:users,ga:pageviews,ga:BounceRate,ga:organicSearches,ga:pageviewsPerSession,ga:avgTimeOnPage,ga:avgPageLoadTime,ga:avgSessionDuration&start-date=30daysAgo&end-date=yesterday\";s:12:\"totalResults\";i:1;s:19:\"totalsForAllResults\";a:9:{s:11:\"ga:sessions\";s:1:\"1\";s:8:\"ga:users\";s:1:\"1\";s:12:\"ga:pageviews\";s:1:\"5\";s:13:\"ga:BounceRate\";s:3:\"0.0\";s:18:\"ga:organicSearches\";s:1:\"0\";s:22:\"ga:pageviewsPerSession\";s:3:\"5.0\";s:16:\"ga:avgTimeOnPage\";s:5:\"510.0\";s:18:\"ga:avgPageLoadTime\";s:3:\"0.0\";s:21:\"ga:avgSessionDuration\";s:6:\"2039.0\";}s:12:\"\0*\0modelData\";a:3:{s:5:\"query\";a:7:{s:10:\"start-date\";s:9:\"30daysAgo\";s:8:\"end-date\";s:9:\"yesterday\";s:3:\"ids\";s:12:\"ga:170694479\";s:7:\"metrics\";a:9:{i:0;s:11:\"ga:sessions\";i:1;s:8:\"ga:users\";i:2;s:12:\"ga:pageviews\";i:3;s:13:\"ga:BounceRate\";i:4;s:18:\"ga:organicSearches\";i:5;s:22:\"ga:pageviewsPerSession\";i:6;s:16:\"ga:avgTimeOnPage\";i:7;s:18:\"ga:avgPageLoadTime\";i:8;s:21:\"ga:avgSessionDuration\";}s:11:\"start-index\";i:1;s:11:\"max-results\";i:1000;s:13:\"samplingLevel\";s:16:\"HIGHER_PRECISION\";}s:11:\"profileInfo\";a:6:{s:9:\"profileId\";s:9:\"170694479\";s:9:\"accountId\";s:9:\"114941627\";s:13:\"webPropertyId\";s:14:\"UA-114941627-1\";s:21:\"internalWebPropertyId\";s:9:\"170914535\";s:11:\"profileName\";s:29:\"Todos los datos de sitios web\";s:7:\"tableId\";s:12:\"ga:170694479\";}s:13:\"columnHeaders\";a:9:{i:0;a:3:{s:4:\"name\";s:11:\"ga:sessions\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}i:1;a:3:{s:4:\"name\";s:8:\"ga:users\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}i:2;a:3:{s:4:\"name\";s:12:\"ga:pageviews\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}i:3;a:3:{s:4:\"name\";s:13:\"ga:BounceRate\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"PERCENT\";}i:4;a:3:{s:4:\"name\";s:18:\"ga:organicSearches\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:7:\"INTEGER\";}i:5;a:3:{s:4:\"name\";s:22:\"ga:pageviewsPerSession\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:5:\"FLOAT\";}i:6;a:3:{s:4:\"name\";s:16:\"ga:avgTimeOnPage\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:4:\"TIME\";}i:7;a:3:{s:4:\"name\";s:18:\"ga:avgPageLoadTime\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:5:\"FLOAT\";}i:8;a:3:{s:4:\"name\";s:21:\"ga:avgSessionDuration\";s:10:\"columnType\";s:6:\"METRIC\";s:8:\"dataType\";s:4:\"TIME\";}}}s:12:\"\0*\0processed\";a:0:{}}s:7:\"expires\";i:1529816400;}', 'no'),
(665, '_site_transient_timeout_available_translations', '1529811551', 'no'),
(666, '_site_transient_available_translations', 'a:113:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-06 13:56:09\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-24 19:38:49\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-04-04 08:43:29\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.4/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-22 13:41:14\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:7:\"Bengali\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.6/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-22 03:44:52\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-04 20:20:28\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 20:33:12\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-04-04 05:10:07\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-11 09:40:36\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-19 17:34:31\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-04-02 14:47:26\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-12 10:10:36\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-22 15:43:53\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/4.9.2/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-30 10:09:04\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.9.4/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-04-04 10:45:12\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-29 16:28:34\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-15 20:17:27\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-17 05:20:05\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 09:54:30\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 08:59:25\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-18 17:06:15\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-26 19:32:51\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-23 18:34:33\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 15:03:42\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 23:17:08\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-27 05:22:44\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2017-07-31 15:12:02\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.6/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-01 17:54:52\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-28 20:09:49\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-19 14:11:29\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-12-09 21:12:23\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-30 07:44:25\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-12 17:00:17\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-26 14:06:52\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-01-31 11:16:06\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-21 22:04:16\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-10 18:19:59\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-14 06:16:04\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-04-01 05:40:49\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-31 18:09:34\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-26 21:01:10\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-04-02 12:51:15\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-28 10:17:26\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-04-13 13:55:54\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-29 06:31:41\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-16 18:46:39\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-08 06:01:48\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-22 22:24:38\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.4/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-07 02:07:59\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-15 02:27:09\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:48:25\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 19:40:23\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-03-17 20:40:40\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.7/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:54:41\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.6/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-28 10:55:13\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-02 11:50:29\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-26 08:04:00\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.9.4/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-23 12:42:00\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-04-04 14:27:57\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-22 09:27:50\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-30 07:37:06\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-22 18:30:41\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 09:30:48\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/4.9.4/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 09:37:35\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-04-02 11:15:15\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-22 15:56:45\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-22 08:50:10\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-25 10:30:04\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-25 20:12:50\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 12:42:33\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-02 17:08:41\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-14 15:26:30\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-05 09:23:39\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-01-28 22:32:11\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-13 08:24:25\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-09 10:37:43\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-26 04:16:06\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-04-03 16:24:16\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-17 22:20:52\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-13 02:41:15\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no'),
(667, '_transient_is_multi_author', '0', 'yes'),
(668, '_transient_timeout_wc_term_counts', '1532392827', 'no'),
(669, '_transient_wc_term_counts', 'a:3:{i:17;s:1:\"3\";i:18;s:1:\"5\";i:16;s:1:\"5\";}', 'no'),
(670, 'new_admin_email', 'luisgmoralesraya@gmail.com', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(671, 'adminhash', 'a:2:{s:4:\"hash\";s:32:\"82f7716ae2071949d14c7b9fb5070fd6\";s:8:\"newemail\";s:26:\"luisgmoralesraya@gmail.com\";}', 'yes'),
(676, '_transient_timeout_ud_splash_dashboard', '1529801041', 'no'),
(677, '_transient_ud_splash_dashboard', 'a:1:{s:6:\"wp-crm\";a:3:{s:4:\"name\";s:6:\"WP-CRM\";s:7:\"content\";s:126:\"/Applications/XAMPP/xamppfiles/htdocs/PROYECTOS/ECommerceC4_Nahuel_Grime/wp-content/plugins/wp-crm/static/splashes/install.php\";s:7:\"version\";s:5:\"1.1.4\";}}', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(11, 8, '_edit_lock', '1519822384:1'),
(12, 8, '_edit_last', '1'),
(13, 8, '_wp_page_template', 'default'),
(14, 10, '_edit_lock', '1519822416:1'),
(15, 10, '_edit_last', '1'),
(16, 10, '_wp_page_template', 'default'),
(17, 7, '_edit_lock', '1519822473:1'),
(18, 7, '_edit_last', '1'),
(19, 16, '_wp_attached_file', '2018/02/descarga.jpg'),
(20, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:205;s:6:\"height\";i:246;s:4:\"file\";s:20:\"2018/02/descarga.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"descarga-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"descarga-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"descarga-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"descarga-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"descarga-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(21, 17, '_wp_attached_file', '2018/02/images.jpg'),
(22, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:18:\"2018/02/images.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"images-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"images-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"images-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:18:\"images-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"images-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(23, 18, '_wp_attached_file', '2018/02/descarga-1.jpg'),
(24, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:214;s:6:\"height\";i:236;s:4:\"file\";s:22:\"2018/02/descarga-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"descarga-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"descarga-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"descarga-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:22:\"descarga-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"descarga-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 19, '_wp_attached_file', '2018/02/alex-loup-397220-unsplash.jpg'),
(26, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2362;s:6:\"height\";i:3543;s:4:\"file\";s:37:\"2018/02/alex-loup-397220-unsplash.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"alex-loup-397220-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"alex-loup-397220-unsplash-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:38:\"alex-loup-397220-unsplash-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:38:\"alex-loup-397220-unsplash-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:37:\"alex-loup-397220-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:37:\"alex-loup-397220-unsplash-300x450.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:37:\"alex-loup-397220-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:37:\"alex-loup-397220-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:37:\"alex-loup-397220-unsplash-300x450.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:37:\"alex-loup-397220-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(27, 20, '_wp_attached_file', '2018/02/cropped-alex-loup-397220-unsplash.jpg'),
(28, 20, '_wp_attachment_context', 'custom-header'),
(29, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1136;s:4:\"file\";s:45:\"2018/02/cropped-alex-loup-397220-unsplash.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"cropped-alex-loup-397220-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"cropped-alex-loup-397220-unsplash-300x227.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:227;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:45:\"cropped-alex-loup-397220-unsplash-768x582.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:582;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:46:\"cropped-alex-loup-397220-unsplash-1024x776.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:776;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:45:\"cropped-alex-loup-397220-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:45:\"cropped-alex-loup-397220-unsplash-300x227.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:227;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:45:\"cropped-alex-loup-397220-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:45:\"cropped-alex-loup-397220-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:45:\"cropped-alex-loup-397220-unsplash-300x227.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:227;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:45:\"cropped-alex-loup-397220-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(30, 20, '_wp_attachment_custom_header_last_used_seos-restaurant', '1519823282'),
(31, 20, '_wp_attachment_is_custom_header', 'seos-restaurant'),
(42, 25, '_wc_review_count', '0'),
(43, 25, '_wc_rating_count', 'a:0:{}'),
(44, 25, '_wc_average_rating', '0'),
(45, 25, '_edit_last', '1'),
(46, 25, '_edit_lock', '1519824383:1'),
(47, 26, '_wp_attached_file', '2018/02/121609lrg.jpg'),
(48, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:21:\"2018/02/121609lrg.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"121609lrg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"121609lrg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"121609lrg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"121609lrg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"121609lrg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"121609lrg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"121609lrg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"121609lrg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(49, 25, '_thumbnail_id', '26'),
(50, 25, '_sku', ''),
(51, 25, '_regular_price', '10000'),
(52, 25, '_sale_price', '6000'),
(53, 25, '_sale_price_dates_from', ''),
(54, 25, '_sale_price_dates_to', ''),
(55, 25, 'total_sales', '0'),
(56, 25, '_tax_status', 'taxable'),
(57, 25, '_tax_class', ''),
(58, 25, '_manage_stock', 'yes'),
(59, 25, '_backorders', 'no'),
(60, 25, '_sold_individually', 'no'),
(61, 25, '_weight', ''),
(62, 25, '_length', ''),
(63, 25, '_width', ''),
(64, 25, '_height', ''),
(65, 25, '_upsell_ids', 'a:0:{}'),
(66, 25, '_crosssell_ids', 'a:0:{}'),
(67, 25, '_purchase_note', ''),
(68, 25, '_default_attributes', 'a:0:{}'),
(69, 25, '_virtual', 'no'),
(70, 25, '_downloadable', 'no'),
(71, 25, '_product_image_gallery', ''),
(72, 25, '_download_limit', '-1'),
(73, 25, '_download_expiry', '-1'),
(74, 25, '_stock', '100'),
(75, 25, '_stock_status', 'instock'),
(76, 25, '_product_version', '3.3.3'),
(77, 25, '_price', '6000'),
(78, 27, '_wc_review_count', '0'),
(79, 27, '_wc_rating_count', 'a:0:{}'),
(80, 27, '_wc_average_rating', '0'),
(81, 27, '_edit_last', '1'),
(82, 27, '_edit_lock', '1519824615:1'),
(83, 28, '_wp_attached_file', '2018/02/124048lrg.jpg'),
(84, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:21:\"2018/02/124048lrg.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"124048lrg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"124048lrg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"124048lrg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"124048lrg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"124048lrg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"124048lrg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"124048lrg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"124048lrg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(85, 27, '_thumbnail_id', '28'),
(86, 27, '_sku', ''),
(87, 27, '_regular_price', '7000'),
(88, 27, '_sale_price', ''),
(89, 27, '_sale_price_dates_from', ''),
(90, 27, '_sale_price_dates_to', ''),
(91, 27, 'total_sales', '0'),
(92, 27, '_tax_status', 'taxable'),
(93, 27, '_tax_class', ''),
(94, 27, '_manage_stock', 'yes'),
(95, 27, '_backorders', 'no'),
(96, 27, '_sold_individually', 'no'),
(97, 27, '_weight', ''),
(98, 27, '_length', ''),
(99, 27, '_width', ''),
(100, 27, '_height', ''),
(101, 27, '_upsell_ids', 'a:0:{}'),
(102, 27, '_crosssell_ids', 'a:0:{}'),
(103, 27, '_purchase_note', ''),
(104, 27, '_default_attributes', 'a:0:{}'),
(105, 27, '_virtual', 'no'),
(106, 27, '_downloadable', 'no'),
(107, 27, '_product_image_gallery', ''),
(108, 27, '_download_limit', '-1'),
(109, 27, '_download_expiry', '-1'),
(110, 27, '_stock', '100'),
(111, 27, '_stock_status', 'instock'),
(112, 27, '_product_version', '3.3.3'),
(113, 27, '_price', '7000'),
(114, 29, '_wc_review_count', '0'),
(115, 29, '_wc_rating_count', 'a:0:{}'),
(116, 29, '_wc_average_rating', '0'),
(117, 29, '_edit_last', '1'),
(118, 29, '_edit_lock', '1519824809:1'),
(119, 30, '_wp_attached_file', '2018/02/momma-helados-cafe.jpg'),
(120, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:550;s:6:\"height\";i:366;s:4:\"file\";s:30:\"2018/02/momma-helados-cafe.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"momma-helados-cafe-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"momma-helados-cafe-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"momma-helados-cafe-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"momma-helados-cafe-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"momma-helados-cafe-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"momma-helados-cafe-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"momma-helados-cafe-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"momma-helados-cafe-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(121, 29, '_thumbnail_id', '30'),
(122, 29, '_sku', ''),
(123, 29, '_regular_price', '6000'),
(124, 29, '_sale_price', ''),
(125, 29, '_sale_price_dates_from', ''),
(126, 29, '_sale_price_dates_to', ''),
(127, 29, 'total_sales', '0'),
(128, 29, '_tax_status', 'taxable'),
(129, 29, '_tax_class', ''),
(130, 29, '_manage_stock', 'no'),
(131, 29, '_backorders', 'no'),
(132, 29, '_sold_individually', 'no'),
(133, 29, '_weight', ''),
(134, 29, '_length', ''),
(135, 29, '_width', ''),
(136, 29, '_height', ''),
(137, 29, '_upsell_ids', 'a:0:{}'),
(138, 29, '_crosssell_ids', 'a:0:{}'),
(139, 29, '_purchase_note', ''),
(140, 29, '_default_attributes', 'a:0:{}'),
(141, 29, '_virtual', 'no'),
(142, 29, '_downloadable', 'no'),
(143, 29, '_product_image_gallery', ''),
(144, 29, '_download_limit', '-1'),
(145, 29, '_download_expiry', '-1'),
(146, 29, '_stock', NULL),
(147, 29, '_stock_status', 'instock'),
(148, 29, '_product_version', '3.3.3'),
(149, 29, '_price', '6000'),
(150, 31, '_wc_review_count', '0'),
(151, 31, '_wc_rating_count', 'a:0:{}'),
(152, 31, '_wc_average_rating', '0'),
(153, 31, '_edit_last', '1'),
(154, 31, '_edit_lock', '1519824977:1'),
(155, 32, '_wp_attached_file', '2018/02/descarga-2.jpg'),
(156, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:22:\"2018/02/descarga-2.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"descarga-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"descarga-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"descarga-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"descarga-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"descarga-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(157, 31, '_thumbnail_id', '32'),
(158, 31, '_sku', ''),
(159, 31, '_regular_price', '4000'),
(160, 31, '_sale_price', ''),
(161, 31, '_sale_price_dates_from', ''),
(162, 31, '_sale_price_dates_to', ''),
(163, 31, 'total_sales', '0'),
(164, 31, '_tax_status', 'taxable'),
(165, 31, '_tax_class', ''),
(166, 31, '_manage_stock', 'no'),
(167, 31, '_backorders', 'no'),
(168, 31, '_sold_individually', 'no'),
(169, 31, '_weight', ''),
(170, 31, '_length', ''),
(171, 31, '_width', ''),
(172, 31, '_height', ''),
(173, 31, '_upsell_ids', 'a:0:{}'),
(174, 31, '_crosssell_ids', 'a:0:{}'),
(175, 31, '_purchase_note', ''),
(176, 31, '_default_attributes', 'a:0:{}'),
(177, 31, '_virtual', 'no'),
(178, 31, '_downloadable', 'no'),
(179, 31, '_product_image_gallery', ''),
(180, 31, '_download_limit', '-1'),
(181, 31, '_download_expiry', '-1'),
(182, 31, '_stock', NULL),
(183, 31, '_stock_status', 'instock'),
(184, 31, '_product_version', '3.3.3'),
(185, 31, '_price', '4000'),
(186, 33, '_wc_review_count', '0'),
(187, 33, '_wc_rating_count', 'a:0:{}'),
(188, 33, '_wc_average_rating', '0'),
(189, 33, '_edit_last', '1'),
(190, 33, '_edit_lock', '1519825110:1'),
(191, 34, '_wp_attached_file', '2018/02/descarga-1-1.jpg'),
(192, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:214;s:6:\"height\";i:236;s:4:\"file\";s:24:\"2018/02/descarga-1-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"descarga-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"descarga-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"descarga-1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"descarga-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"descarga-1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(193, 33, '_thumbnail_id', '34'),
(194, 33, '_sku', ''),
(195, 33, '_regular_price', '15900'),
(196, 33, '_sale_price', ''),
(197, 33, '_sale_price_dates_from', ''),
(198, 33, '_sale_price_dates_to', ''),
(199, 33, 'total_sales', '0'),
(200, 33, '_tax_status', 'taxable'),
(201, 33, '_tax_class', ''),
(202, 33, '_manage_stock', 'no'),
(203, 33, '_backorders', 'no'),
(204, 33, '_sold_individually', 'no'),
(205, 33, '_weight', ''),
(206, 33, '_length', ''),
(207, 33, '_width', ''),
(208, 33, '_height', ''),
(209, 33, '_upsell_ids', 'a:0:{}'),
(210, 33, '_crosssell_ids', 'a:0:{}'),
(211, 33, '_purchase_note', ''),
(212, 33, '_default_attributes', 'a:0:{}'),
(213, 33, '_virtual', 'no'),
(214, 33, '_downloadable', 'no'),
(215, 33, '_product_image_gallery', ''),
(216, 33, '_download_limit', '-1'),
(217, 33, '_download_expiry', '-1'),
(218, 33, '_stock', NULL),
(219, 33, '_stock_status', 'instock'),
(220, 33, '_product_version', '3.3.3'),
(221, 33, '_price', '15900'),
(222, 35, '_wc_review_count', '0'),
(223, 35, '_wc_rating_count', 'a:0:{}'),
(224, 35, '_wc_average_rating', '0'),
(225, 35, '_edit_last', '1'),
(226, 35, '_edit_lock', '1519825222:1'),
(227, 36, '_wp_attached_file', '2018/02/descarga-3.jpg'),
(228, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:260;s:6:\"height\";i:194;s:4:\"file\";s:22:\"2018/02/descarga-3.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"descarga-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"descarga-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"descarga-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"descarga-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"descarga-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(229, 35, '_thumbnail_id', '36'),
(230, 35, '_sku', ''),
(231, 35, '_regular_price', '20000'),
(232, 35, '_sale_price', '14900'),
(233, 35, '_sale_price_dates_from', ''),
(234, 35, '_sale_price_dates_to', ''),
(235, 35, 'total_sales', '0'),
(236, 35, '_tax_status', 'taxable'),
(237, 35, '_tax_class', ''),
(238, 35, '_manage_stock', 'no'),
(239, 35, '_backorders', 'no'),
(240, 35, '_sold_individually', 'no'),
(241, 35, '_weight', ''),
(242, 35, '_length', ''),
(243, 35, '_width', ''),
(244, 35, '_height', ''),
(245, 35, '_upsell_ids', 'a:0:{}'),
(246, 35, '_crosssell_ids', 'a:0:{}'),
(247, 35, '_purchase_note', ''),
(248, 35, '_default_attributes', 'a:0:{}'),
(249, 35, '_virtual', 'no'),
(250, 35, '_downloadable', 'no'),
(251, 35, '_product_image_gallery', ''),
(252, 35, '_download_limit', '-1'),
(253, 35, '_download_expiry', '-1'),
(254, 35, '_stock', NULL),
(255, 35, '_stock_status', 'instock'),
(256, 35, '_product_version', '3.3.3'),
(257, 35, '_price', '14900'),
(258, 37, '_wc_review_count', '0'),
(259, 37, '_wc_rating_count', 'a:0:{}'),
(260, 37, '_wc_average_rating', '0'),
(261, 38, '_wp_attached_file', '2018/02/134640lrg.jpg'),
(262, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:21:\"2018/02/134640lrg.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"134640lrg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"134640lrg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"134640lrg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"134640lrg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"134640lrg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"134640lrg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"134640lrg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"134640lrg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"9.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D800\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1415121477\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"85\";s:3:\"iso\";s:3:\"320\";s:13:\"shutter_speed\";s:6:\"0.0125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(263, 37, '_edit_last', '1'),
(264, 37, '_thumbnail_id', '38'),
(265, 37, '_sku', ''),
(266, 37, '_regular_price', '12900'),
(267, 37, '_sale_price', ''),
(268, 37, '_sale_price_dates_from', ''),
(269, 37, '_sale_price_dates_to', ''),
(270, 37, 'total_sales', '0'),
(271, 37, '_tax_status', 'taxable'),
(272, 37, '_tax_class', ''),
(273, 37, '_manage_stock', 'no'),
(274, 37, '_backorders', 'no'),
(275, 37, '_sold_individually', 'no'),
(276, 37, '_weight', ''),
(277, 37, '_length', ''),
(278, 37, '_width', ''),
(279, 37, '_height', ''),
(280, 37, '_upsell_ids', 'a:0:{}'),
(281, 37, '_crosssell_ids', 'a:0:{}'),
(282, 37, '_purchase_note', ''),
(283, 37, '_default_attributes', 'a:0:{}'),
(284, 37, '_virtual', 'no'),
(285, 37, '_downloadable', 'no'),
(286, 37, '_product_image_gallery', ''),
(287, 37, '_download_limit', '-1'),
(288, 37, '_download_expiry', '-1'),
(289, 37, '_stock', NULL),
(290, 37, '_stock_status', 'instock'),
(291, 37, '_product_version', '3.3.3'),
(292, 37, '_price', '12900'),
(293, 37, '_edit_lock', '1519825334:1'),
(294, 39, '_wc_review_count', '0'),
(295, 39, '_wc_rating_count', 'a:0:{}'),
(296, 39, '_wc_average_rating', '0'),
(297, 39, '_edit_last', '1'),
(298, 39, '_edit_lock', '1519825858:1'),
(299, 40, '_wp_attached_file', '2018/02/136318lrg.jpg'),
(300, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:21:\"2018/02/136318lrg.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"136318lrg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"136318lrg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"136318lrg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"136318lrg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"136318lrg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"136318lrg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"136318lrg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"136318lrg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"13\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:12:\"Canon EOS 5D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1138293210\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"63\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:3:\"0.3\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(301, 39, '_thumbnail_id', '40'),
(302, 39, '_sku', ''),
(303, 39, '_regular_price', '9900'),
(304, 39, '_sale_price', ''),
(305, 39, '_sale_price_dates_from', ''),
(306, 39, '_sale_price_dates_to', ''),
(307, 39, 'total_sales', '0'),
(308, 39, '_tax_status', 'taxable'),
(309, 39, '_tax_class', ''),
(310, 39, '_manage_stock', 'no'),
(311, 39, '_backorders', 'no'),
(312, 39, '_sold_individually', 'no'),
(313, 39, '_weight', ''),
(314, 39, '_length', ''),
(315, 39, '_width', ''),
(316, 39, '_height', ''),
(317, 39, '_upsell_ids', 'a:0:{}'),
(318, 39, '_crosssell_ids', 'a:0:{}'),
(319, 39, '_purchase_note', ''),
(320, 39, '_default_attributes', 'a:0:{}'),
(321, 39, '_virtual', 'no'),
(322, 39, '_downloadable', 'no'),
(323, 39, '_product_image_gallery', ''),
(324, 39, '_download_limit', '-1'),
(325, 39, '_download_expiry', '-1'),
(326, 39, '_stock', NULL),
(327, 39, '_stock_status', 'instock'),
(328, 39, '_product_version', '3.3.3'),
(329, 39, '_price', '9900'),
(330, 41, '_wc_review_count', '0'),
(331, 41, '_wc_rating_count', 'a:0:{}'),
(332, 41, '_wc_average_rating', '0'),
(333, 42, '_wp_attached_file', '2018/02/134097lrg.jpg'),
(334, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:21:\"2018/02/134097lrg.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"134097lrg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"134097lrg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"134097lrg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"134097lrg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"134097lrg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"134097lrg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"134097lrg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"134097lrg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(335, 41, '_edit_last', '1'),
(336, 41, '_thumbnail_id', '42'),
(337, 41, '_sku', ''),
(338, 41, '_regular_price', '19900'),
(339, 41, '_sale_price', '15900'),
(340, 41, '_sale_price_dates_from', ''),
(341, 41, '_sale_price_dates_to', ''),
(342, 41, 'total_sales', '0'),
(343, 41, '_tax_status', 'taxable'),
(344, 41, '_tax_class', ''),
(345, 41, '_manage_stock', 'no'),
(346, 41, '_backorders', 'no'),
(347, 41, '_sold_individually', 'no'),
(348, 41, '_weight', ''),
(349, 41, '_length', ''),
(350, 41, '_width', ''),
(351, 41, '_height', ''),
(352, 41, '_upsell_ids', 'a:0:{}'),
(353, 41, '_crosssell_ids', 'a:0:{}'),
(354, 41, '_purchase_note', ''),
(355, 41, '_default_attributes', 'a:0:{}'),
(356, 41, '_virtual', 'no'),
(357, 41, '_downloadable', 'no'),
(358, 41, '_product_image_gallery', ''),
(359, 41, '_download_limit', '-1'),
(360, 41, '_download_expiry', '-1'),
(361, 41, '_stock', NULL),
(362, 41, '_stock_status', 'instock'),
(363, 41, '_product_version', '3.3.3'),
(364, 41, '_price', '15900'),
(365, 41, '_edit_lock', '1519826014:1'),
(366, 43, '_wc_review_count', '0'),
(367, 43, '_wc_rating_count', 'a:0:{}'),
(368, 43, '_wc_average_rating', '0'),
(369, 43, '_edit_last', '1'),
(370, 43, '_edit_lock', '1519826251:1'),
(371, 44, '_wp_attached_file', '2018/02/136400lrg.jpg'),
(372, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:21:\"2018/02/136400lrg.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"136400lrg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"136400lrg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"136400lrg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"136400lrg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"136400lrg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"136400lrg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"136400lrg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"136400lrg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"16\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:12:\"Canon EOS 5D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1138288888\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"70\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:17:\"0.066666666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(373, 45, '_wp_attached_file', '2018/02/descarga-4.jpg'),
(374, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:22:\"2018/02/descarga-4.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"descarga-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"descarga-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"descarga-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"descarga-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"descarga-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(375, 46, '_wp_attached_file', '2018/02/descarga-5.jpg'),
(376, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:168;s:4:\"file\";s:22:\"2018/02/descarga-5.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"descarga-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"descarga-5-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"descarga-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"descarga-5-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"descarga-5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"descarga-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"descarga-5-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"descarga-5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(377, 47, '_wp_attached_file', '2018/02/images-1.jpg'),
(378, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:318;s:6:\"height\";i:159;s:4:\"file\";s:20:\"2018/02/images-1.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"images-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"images-1-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"images-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"images-1-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"images-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"images-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"images-1-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"images-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(379, 48, '_wp_attached_file', '2018/02/images-2.jpg'),
(380, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:260;s:6:\"height\";i:194;s:4:\"file\";s:20:\"2018/02/images-2.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"images-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"images-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"images-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"images-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"images-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(381, 49, '_wp_attached_file', '2018/02/images-3.jpg'),
(382, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:287;s:6:\"height\";i:175;s:4:\"file\";s:20:\"2018/02/images-3.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"images-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"images-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"images-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"images-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"images-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(383, 43, '_thumbnail_id', '44'),
(384, 43, '_sku', ''),
(385, 43, '_regular_price', '18900'),
(386, 43, '_sale_price', ''),
(387, 43, '_sale_price_dates_from', ''),
(388, 43, '_sale_price_dates_to', ''),
(389, 43, 'total_sales', '0'),
(390, 43, '_tax_status', 'taxable'),
(391, 43, '_tax_class', ''),
(392, 43, '_manage_stock', 'no'),
(393, 43, '_backorders', 'no'),
(394, 43, '_sold_individually', 'no'),
(395, 43, '_weight', ''),
(396, 43, '_length', ''),
(397, 43, '_width', ''),
(398, 43, '_height', ''),
(399, 43, '_upsell_ids', 'a:0:{}'),
(400, 43, '_crosssell_ids', 'a:0:{}'),
(401, 43, '_purchase_note', ''),
(402, 43, '_default_attributes', 'a:0:{}'),
(403, 43, '_virtual', 'no'),
(404, 43, '_downloadable', 'no'),
(405, 43, '_product_image_gallery', ''),
(406, 43, '_download_limit', '-1'),
(407, 43, '_download_expiry', '-1'),
(408, 43, '_stock', NULL),
(409, 43, '_stock_status', 'instock'),
(410, 43, '_product_version', '3.3.3'),
(411, 43, '_price', '18900'),
(412, 50, '_wc_review_count', '0'),
(413, 50, '_wc_rating_count', 'a:0:{}'),
(414, 50, '_wc_average_rating', '0'),
(415, 50, '_edit_last', '1'),
(416, 50, '_edit_lock', '1519826501:1'),
(417, 50, '_thumbnail_id', '46'),
(418, 50, '_sku', ''),
(419, 50, '_regular_price', '30000'),
(420, 50, '_sale_price', '25000'),
(421, 50, '_sale_price_dates_from', ''),
(422, 50, '_sale_price_dates_to', ''),
(423, 50, 'total_sales', '0'),
(424, 50, '_tax_status', 'taxable'),
(425, 50, '_tax_class', ''),
(426, 50, '_manage_stock', 'no'),
(427, 50, '_backorders', 'no'),
(428, 50, '_sold_individually', 'no'),
(429, 50, '_weight', ''),
(430, 50, '_length', ''),
(431, 50, '_width', ''),
(432, 50, '_height', ''),
(433, 50, '_upsell_ids', 'a:0:{}'),
(434, 50, '_crosssell_ids', 'a:0:{}'),
(435, 50, '_purchase_note', ''),
(436, 50, '_default_attributes', 'a:0:{}'),
(437, 50, '_virtual', 'no'),
(438, 50, '_downloadable', 'no'),
(439, 50, '_product_image_gallery', ''),
(440, 50, '_download_limit', '-1'),
(441, 50, '_download_expiry', '-1'),
(442, 50, '_stock', NULL),
(443, 50, '_stock_status', 'instock'),
(444, 50, '_product_version', '3.3.3'),
(445, 50, '_price', '25000'),
(446, 51, '_wc_review_count', '0'),
(447, 51, '_wc_rating_count', 'a:0:{}'),
(448, 51, '_wc_average_rating', '0'),
(449, 51, '_edit_last', '1'),
(450, 51, '_edit_lock', '1519826649:1'),
(451, 51, '_thumbnail_id', '47'),
(452, 51, '_sku', ''),
(453, 51, '_regular_price', '25000'),
(454, 51, '_sale_price', '20000'),
(455, 51, '_sale_price_dates_from', ''),
(456, 51, '_sale_price_dates_to', ''),
(457, 51, 'total_sales', '0'),
(458, 51, '_tax_status', 'taxable'),
(459, 51, '_tax_class', ''),
(460, 51, '_manage_stock', 'no'),
(461, 51, '_backorders', 'no'),
(462, 51, '_sold_individually', 'no'),
(463, 51, '_weight', ''),
(464, 51, '_length', ''),
(465, 51, '_width', ''),
(466, 51, '_height', ''),
(467, 51, '_upsell_ids', 'a:0:{}'),
(468, 51, '_crosssell_ids', 'a:0:{}'),
(469, 51, '_purchase_note', ''),
(470, 51, '_default_attributes', 'a:0:{}'),
(471, 51, '_virtual', 'no'),
(472, 51, '_downloadable', 'no'),
(473, 51, '_product_image_gallery', ''),
(474, 51, '_download_limit', '-1'),
(475, 51, '_download_expiry', '-1'),
(476, 51, '_stock', NULL),
(477, 51, '_stock_status', 'instock'),
(478, 51, '_product_version', '3.3.3'),
(479, 51, '_price', '20000'),
(480, 52, '_wc_review_count', '0'),
(481, 52, '_wc_rating_count', 'a:0:{}'),
(482, 52, '_wc_average_rating', '0'),
(483, 52, '_edit_last', '1'),
(484, 52, '_edit_lock', '1519827980:1'),
(485, 52, '_thumbnail_id', '48'),
(486, 52, '_sku', ''),
(487, 52, '_regular_price', '10000'),
(488, 52, '_sale_price', ''),
(489, 52, '_sale_price_dates_from', ''),
(490, 52, '_sale_price_dates_to', ''),
(491, 52, 'total_sales', '0'),
(492, 52, '_tax_status', 'taxable'),
(493, 52, '_tax_class', ''),
(494, 52, '_manage_stock', 'no'),
(495, 52, '_backorders', 'no'),
(496, 52, '_sold_individually', 'no'),
(497, 52, '_weight', ''),
(498, 52, '_length', ''),
(499, 52, '_width', ''),
(500, 52, '_height', ''),
(501, 52, '_upsell_ids', 'a:0:{}'),
(502, 52, '_crosssell_ids', 'a:0:{}'),
(503, 52, '_purchase_note', ''),
(504, 52, '_default_attributes', 'a:0:{}'),
(505, 52, '_virtual', 'no'),
(506, 52, '_downloadable', 'no'),
(507, 52, '_product_image_gallery', ''),
(508, 52, '_download_limit', '-1'),
(509, 52, '_download_expiry', '-1'),
(510, 52, '_stock', NULL),
(511, 52, '_stock_status', 'instock'),
(512, 52, '_product_version', '3.3.3'),
(513, 52, '_price', '10000'),
(514, 53, '_menu_item_type', 'custom'),
(515, 53, '_menu_item_menu_item_parent', '0'),
(516, 53, '_menu_item_object_id', '53'),
(517, 53, '_menu_item_object', 'custom'),
(518, 53, '_menu_item_target', ''),
(519, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(520, 53, '_menu_item_xfn', ''),
(521, 53, '_menu_item_url', 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/'),
(523, 54, '_menu_item_type', 'post_type'),
(524, 54, '_menu_item_menu_item_parent', '0'),
(525, 54, '_menu_item_object_id', '8'),
(526, 54, '_menu_item_object', 'page'),
(527, 54, '_menu_item_target', ''),
(528, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(529, 54, '_menu_item_xfn', ''),
(530, 54, '_menu_item_url', ''),
(532, 55, '_menu_item_type', 'post_type'),
(533, 55, '_menu_item_menu_item_parent', '0'),
(534, 55, '_menu_item_object_id', '9'),
(535, 55, '_menu_item_object', 'page'),
(536, 55, '_menu_item_target', ''),
(537, 55, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(538, 55, '_menu_item_xfn', ''),
(539, 55, '_menu_item_url', ''),
(541, 56, '_menu_item_type', 'post_type'),
(542, 56, '_menu_item_menu_item_parent', '0'),
(543, 56, '_menu_item_object_id', '10'),
(544, 56, '_menu_item_object', 'page'),
(545, 56, '_menu_item_target', ''),
(546, 56, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(547, 56, '_menu_item_xfn', ''),
(548, 56, '_menu_item_url', ''),
(559, 58, '_menu_item_type', 'post_type'),
(560, 58, '_menu_item_menu_item_parent', '0'),
(561, 58, '_menu_item_object_id', '7'),
(562, 58, '_menu_item_object', 'page'),
(563, 58, '_menu_item_target', ''),
(564, 58, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(565, 58, '_menu_item_xfn', ''),
(566, 58, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
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
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(7, 1, '2018-02-28 12:49:07', '2018-02-28 12:49:07', '', 'Productos', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2018-02-28 12:56:15', '2018-02-28 12:56:15', '', 0, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/?page_id=7', 0, 'page', '', 0),
(8, 1, '2018-02-28 12:49:09', '2018-02-28 12:49:09', '[woocommerce_cart]', 'Carrito', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2018-02-28 12:55:03', '2018-02-28 12:55:03', '', 0, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/?page_id=8', 0, 'page', '', 0),
(9, 1, '2018-02-28 12:49:09', '2018-02-28 12:49:09', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2018-02-28 12:49:09', '2018-02-28 12:49:09', '', 0, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/?page_id=9', 0, 'page', '', 0),
(10, 1, '2018-02-28 12:49:10', '2018-02-28 12:49:10', '[woocommerce_my_account]', 'Mi Cuenta', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2018-02-28 12:55:48', '2018-02-28 12:55:48', '', 0, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/?page_id=10', 0, 'page', '', 0),
(12, 1, '2018-02-28 12:54:44', '2018-02-28 12:54:44', '[woocommerce_cart]', 'Carrito', '', 'inherit', 'closed', 'closed', '', '8-autosave-v1', '', '', '2018-02-28 12:54:44', '2018-02-28 12:54:44', '', 8, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/?p=12', 0, 'revision', '', 0),
(13, 1, '2018-02-28 12:55:03', '2018-02-28 12:55:03', '[woocommerce_cart]', 'Carrito', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-02-28 12:55:03', '2018-02-28 12:55:03', '', 8, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/?p=13', 0, 'revision', '', 0),
(14, 1, '2018-02-28 12:55:48', '2018-02-28 12:55:48', '[woocommerce_my_account]', 'Mi Cuenta', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-02-28 12:55:48', '2018-02-28 12:55:48', '', 10, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/?p=14', 0, 'revision', '', 0),
(15, 1, '2018-02-28 12:56:15', '2018-02-28 12:56:15', '', 'Productos', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-02-28 12:56:15', '2018-02-28 12:56:15', '', 7, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/?p=15', 0, 'revision', '', 0),
(16, 1, '2018-02-28 12:58:51', '2018-02-28 12:58:51', '', 'descarga', '', 'inherit', 'open', 'closed', '', 'descarga', '', '', '2018-02-28 12:58:51', '2018-02-28 12:58:51', '', 0, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/wp-content/uploads/2018/02/descarga.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2018-02-28 12:59:54', '2018-02-28 12:59:54', '', 'images', '', 'inherit', 'open', 'closed', '', 'images', '', '', '2018-02-28 12:59:54', '2018-02-28 12:59:54', '', 0, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/wp-content/uploads/2018/02/images.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2018-02-28 13:00:39', '2018-02-28 13:00:39', '', 'descarga (1)', '', 'inherit', 'open', 'closed', '', 'descarga-1', '', '', '2018-02-28 13:00:39', '2018-02-28 13:00:39', '', 0, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/wp-content/uploads/2018/02/descarga-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2018-02-28 13:02:59', '2018-02-28 13:02:59', '', 'alex-loup-397220-unsplash', '', 'inherit', 'open', 'closed', '', 'alex-loup-397220-unsplash', '', '', '2018-02-28 13:02:59', '2018-02-28 13:02:59', '', 0, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/wp-content/uploads/2018/02/alex-loup-397220-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2018-02-28 13:04:06', '2018-02-28 13:04:06', '', 'cropped-alex-loup-397220-unsplash.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-alex-loup-397220-unsplash-jpg', '', '', '2018-02-28 13:04:06', '2018-02-28 13:04:06', '', 0, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/wp-content/uploads/2018/02/cropped-alex-loup-397220-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2018-02-28 13:22:43', '2018-02-28 13:22:43', 'Sorprende tu paladar, disfrutando de esta combinación de frutas con ese toque único que le dan la vainilla y la canela. Sírvelo en cualquier momento del día o de la noche. ¡Saboréalo!', 'Salsa de Canela y Vainilla Para Frutas Frescas', 'Sorprende tu paladar, disfrutando de esta combinación de frutas con ese toque único que le dan la vainilla y la canela. Sírvelo en cualquier momento del día o de la noche. ¡Saboréalo!\r\n\r\nGran promoción paga 1 y lleva 2! Que esperas!!', 'publish', 'open', 'closed', '', 'salsa-de-canela-y-vainilla-para-frutas-frescas', '', '', '2018-02-28 13:26:14', '2018-02-28 13:26:14', '', 0, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/?post_type=product&#038;p=25', 0, 'product', '', 0),
(26, 1, '2018-02-28 13:17:53', '2018-02-28 13:17:53', '', '121609lrg', '', 'inherit', 'open', 'closed', '', '121609lrg', '', '', '2018-02-28 13:17:53', '2018-02-28 13:17:53', '', 25, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/wp-content/uploads/2018/02/121609lrg.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2018-02-28 13:31:10', '2018-02-28 13:31:10', 'Mmmm, refrescante y delicioso, así es este cremoso helado de fresa. Un postre que va muy bien para cualquier ocasión todos los días del año. ¡Pruébalo!', 'Helado de Fresa', 'Mmmm, refrescante y delicioso, así es este cremoso helado de fresa. Un postre que va muy bien para cualquier ocasión todos los días del año. ¡Pruébalo!', 'publish', 'open', 'closed', '', 'helado-de-fresa', '', '', '2018-02-28 13:31:10', '2018-02-28 13:31:10', '', 0, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/?post_type=product&#038;p=27', 0, 'product', '', 0),
(28, 1, '2018-02-28 13:30:09', '2018-02-28 13:30:09', '', '124048lrg', '', 'inherit', 'open', 'closed', '', '124048lrg', '', '', '2018-02-28 13:30:09', '2018-02-28 13:30:09', '', 27, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/wp-content/uploads/2018/02/124048lrg.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2018-02-28 13:34:28', '2018-02-28 13:34:28', '', 'Muffin de Vainilla relleno con dulce de leche', 'Deleita tu paladar con este fabuloso helado de vainilla relleno con dulce de leche', 'publish', 'open', 'closed', '', 'muffin-de-vainilla-relleno-con-dulce-de-leche', '', '', '2018-02-28 13:34:28', '2018-02-28 13:34:28', '', 0, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/?post_type=product&#038;p=29', 0, 'product', '', 0),
(30, 1, '2018-02-28 13:34:04', '2018-02-28 13:34:04', '', 'momma-helados-cafe', '', 'inherit', 'open', 'closed', '', 'momma-helados-cafe', '', '', '2018-02-28 13:34:04', '2018-02-28 13:34:04', '', 29, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/wp-content/uploads/2018/02/momma-helados-cafe.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2018-02-28 13:37:41', '2018-02-28 13:37:41', '', 'Helado casero de todos los sabores', 'Deleita tu paladar con este fabuloso helado casero de todos los sabores', 'publish', 'open', 'closed', '', 'helado-casero-de-todos-los-sabores', '', '', '2018-02-28 13:37:41', '2018-02-28 13:37:41', '', 0, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/?post_type=product&#038;p=31', 0, 'product', '', 0),
(32, 1, '2018-02-28 13:37:15', '2018-02-28 13:37:15', '', 'descarga (2)', '', 'inherit', 'open', 'closed', '', 'descarga-2', '', '', '2018-02-28 13:37:15', '2018-02-28 13:37:15', '', 31, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/wp-content/uploads/2018/02/descarga-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2018-02-28 13:39:49', '2018-02-28 13:39:49', '', 'Sundae de carita', 'Deleita tu paladar con este fabuloso helado de vainilla relleno con dulce de leche', 'publish', 'open', 'closed', '', 'sundae-de-carita', '', '', '2018-02-28 13:40:33', '2018-02-28 13:40:33', '', 0, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/?post_type=product&#038;p=33', 0, 'product', '', 0),
(34, 1, '2018-02-28 13:39:32', '2018-02-28 13:39:32', '', 'descarga (1)', '', 'inherit', 'open', 'closed', '', 'descarga-1-2', '', '', '2018-02-28 13:39:32', '2018-02-28 13:39:32', '', 33, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/wp-content/uploads/2018/02/descarga-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2018-02-28 13:41:53', '2018-02-28 13:41:53', '', 'Helados Oreo', 'Deleita tu paladar con este fabuloso helado de oreo', 'publish', 'open', 'closed', '', 'helados-oreo', '', '', '2018-02-28 13:41:53', '2018-02-28 13:41:53', '', 0, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/?post_type=product&#038;p=35', 0, 'product', '', 0),
(36, 1, '2018-02-28 13:41:42', '2018-02-28 13:41:42', '', 'descarga (3)', '', 'inherit', 'open', 'closed', '', 'descarga-3', '', '', '2018-02-28 13:41:42', '2018-02-28 13:41:42', '', 35, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/wp-content/uploads/2018/02/descarga-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2018-02-28 13:44:03', '2018-02-28 13:44:03', '', 'Tarta de Queso con Fresas', 'Es la tarta perfecta para esos días soleados. Las fresas frescas no pierden su brillantez gracias al glaseado endulzado con frutas.', 'publish', 'open', 'closed', '', 'tarta-de-queso-con-fresas', '', '', '2018-02-28 13:44:03', '2018-02-28 13:44:03', '', 0, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/?post_type=product&#038;p=37', 0, 'product', '', 0),
(38, 1, '2018-02-28 13:43:50', '2018-02-28 13:43:50', '', '134640lrg', '', 'inherit', 'open', 'closed', '', '134640lrg', '', '', '2018-02-28 13:43:50', '2018-02-28 13:43:50', '', 37, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/wp-content/uploads/2018/02/134640lrg.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2018-02-28 13:52:27', '2018-02-28 13:52:27', '', 'Mousse de Nescafé', 'Postre ideal para tus antojos!', 'publish', 'open', 'closed', '', 'mousse-de-nescafe', '', '', '2018-02-28 13:52:27', '2018-02-28 13:52:27', '', 0, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/?post_type=product&#038;p=39', 0, 'product', '', 0),
(40, 1, '2018-02-28 13:50:56', '2018-02-28 13:50:56', '', '136318lrg', '', 'inherit', 'open', 'closed', '', '136318lrg', '', '', '2018-02-28 13:50:56', '2018-02-28 13:50:56', '', 39, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/wp-content/uploads/2018/02/136318lrg.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2018-02-28 13:54:48', '2018-02-28 13:54:48', '', 'Flan Abuelita', 'Este flan de chocolate es un postre perfecto que se puede preparar el día antes de servirlo.', 'publish', 'open', 'closed', '', 'flan-abuelita', '', '', '2018-02-28 13:54:48', '2018-02-28 13:54:48', '', 0, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/?post_type=product&#038;p=41', 0, 'product', '', 0),
(42, 1, '2018-02-28 13:54:29', '2018-02-28 13:54:29', '', '134097lrg', '', 'inherit', 'open', 'closed', '', '134097lrg', '', '', '2018-02-28 13:54:29', '2018-02-28 13:54:29', '', 41, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/wp-content/uploads/2018/02/134097lrg.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2018-02-28 13:59:20', '2018-02-28 13:59:20', '', 'Tiramisú', 'Ideal para toda ocacion', 'publish', 'open', 'closed', '', 'tiramisu', '', '', '2018-02-28 13:59:20', '2018-02-28 13:59:20', '', 0, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/?post_type=product&#038;p=43', 0, 'product', '', 0),
(44, 1, '2018-02-28 13:58:38', '2018-02-28 13:58:38', '', '136400lrg', '', 'inherit', 'open', 'closed', '', '136400lrg', '', '', '2018-02-28 13:58:38', '2018-02-28 13:58:38', '', 43, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/wp-content/uploads/2018/02/136400lrg.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2018-02-28 13:58:41', '2018-02-28 13:58:41', '', 'descarga (4)', '', 'inherit', 'open', 'closed', '', 'descarga-4', '', '', '2018-02-28 13:58:41', '2018-02-28 13:58:41', '', 43, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/wp-content/uploads/2018/02/descarga-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2018-02-28 13:58:44', '2018-02-28 13:58:44', '', 'descarga (5)', '', 'inherit', 'open', 'closed', '', 'descarga-5', '', '', '2018-02-28 13:58:44', '2018-02-28 13:58:44', '', 43, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/wp-content/uploads/2018/02/descarga-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2018-02-28 13:58:47', '2018-02-28 13:58:47', '', 'images (1)', '', 'inherit', 'open', 'closed', '', 'images-1', '', '', '2018-02-28 13:58:47', '2018-02-28 13:58:47', '', 43, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/wp-content/uploads/2018/02/images-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2018-02-28 13:58:50', '2018-02-28 13:58:50', '', 'images (2)', '', 'inherit', 'open', 'closed', '', 'images-2', '', '', '2018-02-28 13:58:50', '2018-02-28 13:58:50', '', 43, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/wp-content/uploads/2018/02/images-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2018-02-28 13:58:53', '2018-02-28 13:58:53', '', 'images (3)', '', 'inherit', 'open', 'closed', '', 'images-3', '', '', '2018-02-28 13:58:53', '2018-02-28 13:58:53', '', 43, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/wp-content/uploads/2018/02/images-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2018-02-28 14:03:17', '2018-02-28 14:03:17', '', 'Pizza de Dulces', 'Que los cumpleaños de tus hijos sean originales! diviértete con estas fabulosas pizzas 6 por el precio de 4', 'publish', 'open', 'closed', '', 'pizza-de-dulces', '', '', '2018-02-28 14:03:17', '2018-02-28 14:03:17', '', 0, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/?post_type=product&#038;p=50', 0, 'product', '', 0),
(51, 1, '2018-02-28 14:06:07', '2018-02-28 14:06:07', '', 'CakePops', 'Ideal para los cumpleaños de tus hijos, 5 por el precio de 3', 'publish', 'open', 'closed', '', 'cakepops', '', '', '2018-02-28 14:06:07', '2018-02-28 14:06:07', '', 0, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/?post_type=product&#038;p=51', 0, 'product', '', 0),
(52, 1, '2018-02-28 14:07:25', '2018-02-28 14:07:25', '', 'Frutas cubiertas de dulces', 'Ideal para los cumpleaños de tus hijos', 'publish', 'open', 'closed', '', 'frutas-cubiertas-de-dulces', '', '', '2018-02-28 14:07:25', '2018-02-28 14:07:25', '', 0, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/?post_type=product&#038;p=52', 0, 'product', '', 0),
(53, 1, '2018-02-28 15:02:14', '2018-02-28 15:02:14', '', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2018-02-28 15:03:12', '2018-02-28 15:03:12', '', 0, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/?p=53', 1, 'nav_menu_item', '', 0),
(54, 1, '2018-02-28 15:02:16', '2018-02-28 15:02:16', ' ', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2018-02-28 15:03:12', '2018-02-28 15:03:12', '', 0, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/?p=54', 4, 'nav_menu_item', '', 0),
(55, 1, '2018-02-28 15:02:17', '2018-02-28 15:02:17', ' ', '', '', 'publish', 'closed', 'closed', '', '55', '', '', '2018-02-28 15:03:12', '2018-02-28 15:03:12', '', 0, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/?p=55', 5, 'nav_menu_item', '', 0),
(56, 1, '2018-02-28 15:02:15', '2018-02-28 15:02:15', ' ', '', '', 'publish', 'closed', 'closed', '', '56', '', '', '2018-02-28 15:03:12', '2018-02-28 15:03:12', '', 0, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/?p=56', 2, 'nav_menu_item', '', 0),
(58, 1, '2018-02-28 15:02:16', '2018-02-28 15:02:16', ' ', '', '', 'publish', 'closed', 'closed', '', '58', '', '', '2018-02-28 15:03:12', '2018-02-28 15:03:12', '', 0, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/?p=58', 3, 'nav_menu_item', '', 0),
(75, 1, '2018-06-24 00:39:01', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-06-24 00:39:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/PROYECTOS/ECommerceC4_Nahuel_Grime/?p=75', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 16, 'order', '0'),
(2, 16, 'display_type', ''),
(3, 16, 'thumbnail_id', '16'),
(4, 17, 'order', '0'),
(5, 17, 'display_type', ''),
(6, 17, 'thumbnail_id', '17'),
(7, 18, 'order', '0'),
(8, 18, 'display_type', ''),
(9, 18, 'thumbnail_id', '18'),
(10, 16, 'product_count_product_cat', '5'),
(11, 19, 'product_count_product_tag', '1'),
(12, 20, 'product_count_product_tag', '1'),
(13, 18, 'product_count_product_cat', '5'),
(14, 21, 'product_count_product_tag', '1'),
(15, 22, 'product_count_product_tag', '1'),
(16, 23, 'product_count_product_tag', '1'),
(17, 24, 'product_count_product_tag', '1'),
(18, 25, 'product_count_product_tag', '1'),
(19, 26, 'product_count_product_tag', '1'),
(20, 27, 'product_count_product_tag', '1'),
(21, 28, 'product_count_product_tag', '1'),
(22, 29, 'product_count_product_tag', '1'),
(23, 30, 'product_count_product_tag', '1'),
(24, 31, 'product_count_product_tag', '1'),
(25, 17, 'product_count_product_cat', '3'),
(26, 32, 'product_count_product_tag', '1'),
(27, 33, 'product_count_product_tag', '1'),
(28, 34, 'product_count_product_tag', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
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
(15, 'Uncategorized', 'uncategorized', 0),
(16, 'Postres', 'postres', 0),
(17, 'Dulces', 'dulces', 0),
(18, 'Helados', 'helados', 0),
(19, 'frutas', 'frutas', 0),
(20, 'postre', 'postre', 0),
(21, 'Fresa', 'fresa', 0),
(22, 'Vainilla', 'vainilla', 0),
(23, 'helados caseros', 'helados-caseros', 0),
(24, 'todos los sabores', 'todos-los-sabores', 0),
(25, 'helados de carita', 'helados-de-carita', 0),
(26, 'helados oreo', 'helados-oreo', 0),
(27, 'tarta de fresa', 'tarta-de-fresa', 0),
(28, 'Mousse', 'mousse', 0),
(29, 'Nescafe', 'nescafe', 0),
(30, 'flanes', 'flanes', 0),
(31, 'mora', 'mora', 0),
(32, 'pizzas', 'pizzas', 0),
(33, 'bombom de chocolate', 'bombom-de-chocolate', 0),
(34, 'frutas de dulce', 'frutas-de-dulce', 0),
(35, 'Menu Principal', 'menu-principal', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(25, 2, 0),
(25, 16, 0),
(25, 19, 0),
(25, 20, 0),
(27, 2, 0),
(27, 18, 0),
(27, 21, 0),
(29, 2, 0),
(29, 18, 0),
(29, 22, 0),
(31, 2, 0),
(31, 18, 0),
(31, 23, 0),
(31, 24, 0),
(33, 2, 0),
(33, 18, 0),
(33, 25, 0),
(35, 2, 0),
(35, 18, 0),
(35, 26, 0),
(37, 2, 0),
(37, 16, 0),
(37, 27, 0),
(39, 2, 0),
(39, 16, 0),
(39, 28, 0),
(39, 29, 0),
(41, 2, 0),
(41, 16, 0),
(41, 30, 0),
(43, 2, 0),
(43, 16, 0),
(43, 31, 0),
(50, 2, 0),
(50, 17, 0),
(50, 32, 0),
(51, 2, 0),
(51, 17, 0),
(51, 33, 0),
(52, 2, 0),
(52, 17, 0),
(52, 34, 0),
(53, 35, 0),
(54, 35, 0),
(55, 35, 0),
(56, 35, 0),
(58, 35, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
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
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'product_type', '', 0, 13),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'product_cat', '', 0, 5),
(17, 17, 'product_cat', '', 0, 3),
(18, 18, 'product_cat', '', 0, 5),
(19, 19, 'product_tag', '', 0, 1),
(20, 20, 'product_tag', '', 0, 1),
(21, 21, 'product_tag', '', 0, 1),
(22, 22, 'product_tag', '', 0, 1),
(23, 23, 'product_tag', '', 0, 1),
(24, 24, 'product_tag', '', 0, 1),
(25, 25, 'product_tag', '', 0, 1),
(26, 26, 'product_tag', '', 0, 1),
(27, 27, 'product_tag', '', 0, 1),
(28, 28, 'product_tag', '', 0, 1),
(29, 29, 'product_tag', '', 0, 1),
(30, 30, 'product_tag', '', 0, 1),
(31, 31, 'product_tag', '', 0, 1),
(32, 32, 'product_tag', '', 0, 1),
(33, 33, 'product_tag', '', 0, 1),
(34, 34, 'product_tag', '', 0, 1),
(35, 35, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Luis Morales'),
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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'session_tokens', 'a:1:{s:64:\"cf3d46f09e454fc1d620eb156d08532fbed15448d36f0be402473cacf4419c7a\";a:4:{s:10:\"expiration\";i:1529973539;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36\";s:5:\"login\";i:1529800739;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '75'),
(17, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(18, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"8e296a067a37563370ded05f5a3bf3ec\";a:10:{s:3:\"key\";s:32:\"8e296a067a37563370ded05f5a3bf3ec\";s:10:\"product_id\";i:25;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:2;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:12000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:12000;s:8:\"line_tax\";i:0;}}}'),
(19, 1, 'wp_user-settings', 'editor=html&libraryContent=browse&hidetb=1'),
(20, 1, 'wp_user-settings-time', '1529800735'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:15:\"add-product_cat\";i:4;s:15:\"add-product_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '35'),
(24, 1, 'closedpostboxes_dashboard', 'a:4:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";i:2;s:21:\"dashboard_quick_press\";i:3;s:17:\"dashboard_primary\";}'),
(25, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(26, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:104:\"dashboard_right_now,dashboard_activity,woocommerce_dashboard_recent_reviews,woocommerce_dashboard_status\";s:4:\"side\";s:39:\"dashboard_quick_press,dashboard_primary\";s:7:\"column3\";s:12:\"gadwp-widget\";s:7:\"column4\";s:0:\"\";}'),
(27, 1, 'billing_first_name', ''),
(28, 1, 'billing_last_name', ''),
(29, 1, 'billing_company', ''),
(30, 1, 'billing_address_1', ''),
(31, 1, 'billing_address_2', ''),
(32, 1, 'billing_city', ''),
(33, 1, 'billing_postcode', ''),
(34, 1, 'billing_country', ''),
(35, 1, 'billing_state', ''),
(36, 1, 'billing_phone', ''),
(37, 1, 'billing_email', 'luisgmoralesraya@gmail.com'),
(38, 1, 'shipping_first_name', ''),
(39, 1, 'shipping_last_name', ''),
(40, 1, 'shipping_company', ''),
(41, 1, 'shipping_address_1', ''),
(42, 1, 'shipping_address_2', ''),
(43, 1, 'shipping_city', ''),
(44, 1, 'shipping_postcode', ''),
(45, 1, 'shipping_country', ''),
(46, 1, 'shipping_state', ''),
(47, 1, 'last_update', '1529800765');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
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
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'kickroot', '$P$B3up04giEScccHGqn2OJKZfY0w3by30', 'luis-guillermo-morales-raya', 'luisgmoralesraya@gmail.com', '', '2018-02-27 17:24:24', '', 0, 'Luis Morales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_api_keys`
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
-- Estructura de tabla para la tabla `wp_woocommerce_attribute_taxonomies`
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
-- Estructura de tabla para la tabla `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Estructura de tabla para la tabla `wp_woocommerce_log`
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
-- Estructura de tabla para la tabla `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_payment_tokens`
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
-- Estructura de tabla para la tabla `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(28, '1', 'a:11:{s:4:\"cart\";s:360:\"a:1:{s:32:\"8e296a067a37563370ded05f5a3bf3ec\";a:10:{s:3:\"key\";s:32:\"8e296a067a37563370ded05f5a3bf3ec\";s:10:\"product_id\";i:25;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:2;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:12000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:12000;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:418:\"a:15:{s:8:\"subtotal\";s:8:\"12000.00\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:8:\"10000.00\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:8:\"12000.00\";s:17:\"cart_contents_tax\";d:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:4:\"0.00\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:8:\"22000.00\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:22:\"shipping_for_package_0\";s:416:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_4a32c11171044f9defae95bd4d738ade\";s:5:\"rates\";a:1:{s:11:\"flat_rate:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:11:\"flat_rate:1\";s:9:\"method_id\";s:9:\"flat_rate\";s:11:\"instance_id\";i:1;s:5:\"label\";s:9:\"Flat rate\";s:4:\"cost\";s:8:\"10000.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:5:\"Items\";s:56:\"Salsa de Canela y Vainilla Para Frutas Frescas &times; 2\";}}}}\";s:25:\"previous_shipping_methods\";s:39:\"a:1:{i:0;a:1:{i:0;s:11:\"flat_rate:1\";}}\";s:23:\"chosen_shipping_methods\";s:29:\"a:1:{i:0;s:11:\"flat_rate:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:8:\"customer\";s:740:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2018-06-24T00:39:25+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"CO\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"CO\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:26:\"luisgmoralesraya@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1529973545);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Colombia', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'CO', 'country');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'flat_rate', 1, 1),
(0, 2, 'flat_rate', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_tax_rates`
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
-- Estructura de tabla para la tabla `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_comments`
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
-- Indices de la tabla `wp_crm_log`
--
ALTER TABLE `wp_crm_log`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `wp_crm_log_meta`
--
ALTER TABLE `wp_crm_log_meta`
  ADD UNIQUE KEY `id` (`meta_id`);

--
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indices de la tabla `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indices de la tabla `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indices de la tabla `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indices de la tabla `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indices de la tabla `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indices de la tabla `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indices de la tabla `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indices de la tabla `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indices de la tabla `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indices de la tabla `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indices de la tabla `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indices de la tabla `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indices de la tabla `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indices de la tabla `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_crm_log`
--
ALTER TABLE `wp_crm_log`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_crm_log_meta`
--
ALTER TABLE `wp_crm_log_meta`
  MODIFY `meta_id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=678;

--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=606;

--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
