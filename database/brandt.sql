-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.5.34 - MySQL Community Server (GPL)
-- SO del servidor:              Win32
-- HeidiSQL Versión:             8.1.0.4545
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura de base de datos para brandt
DROP DATABASE IF EXISTS `brandt`;
CREATE DATABASE IF NOT EXISTS `brandt` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `brandt`;


-- Volcando estructura para tabla brandt.wp_commentmeta
DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla brandt.wp_commentmeta: ~0 rows (aproximadamente)
DELETE FROM `wp_commentmeta`;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;


-- Volcando estructura para tabla brandt.wp_comments
DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla brandt.wp_comments: ~1 rows (aproximadamente)
DELETE FROM `wp_comments`;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
	(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2014-05-06 14:55:32', '2014-05-06 14:55:32', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;


-- Volcando estructura para tabla brandt.wp_links
DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla brandt.wp_links: ~0 rows (aproximadamente)
DELETE FROM `wp_links`;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;


-- Volcando estructura para tabla brandt.wp_options
DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla brandt.wp_options: ~94 rows (aproximadamente)
DELETE FROM `wp_options`;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
	(1, 'siteurl', 'http://localhost:8080/brandt', 'yes'),
	(2, 'blogname', 'Brandt', 'yes'),
	(3, 'blogdescription', 'Servicios de Maquinaria Pesada', 'yes'),
	(4, 'users_can_register', '0', 'yes'),
	(5, 'admin_email', 'pmprete@gmail.com', 'yes'),
	(6, 'start_of_week', '1', 'yes'),
	(7, 'use_balanceTags', '0', 'yes'),
	(8, 'use_smilies', '1', 'yes'),
	(9, 'require_name_email', '1', 'yes'),
	(10, 'comments_notify', '', 'yes'),
	(11, 'posts_per_rss', '10', 'yes'),
	(12, 'rss_use_excerpt', '0', 'yes'),
	(13, 'mailserver_url', 'mail.example.com', 'yes'),
	(14, 'mailserver_login', 'login@example.com', 'yes'),
	(15, 'mailserver_pass', 'password', 'yes'),
	(16, 'mailserver_port', '110', 'yes'),
	(17, 'default_category', '1', 'yes'),
	(18, 'default_comment_status', 'closed', 'yes'),
	(19, 'default_ping_status', 'closed', 'yes'),
	(20, 'default_pingback_flag', '1', 'yes'),
	(21, 'posts_per_page', '10', 'yes'),
	(22, 'date_format', 'F j, Y', 'yes'),
	(23, 'time_format', 'H:i', 'yes'),
	(24, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
	(25, 'comment_moderation', '1', 'yes'),
	(26, 'moderation_notify', '', 'yes'),
	(27, 'permalink_structure', '/%postname%/', 'yes'),
	(28, 'gzipcompression', '0', 'yes'),
	(29, 'hack_file', '0', 'yes'),
	(30, 'blog_charset', 'UTF-8', 'yes'),
	(31, 'moderation_keys', '', 'no'),
	(32, 'active_plugins', 'a:0:{}', 'yes'),
	(33, 'home', 'http://localhost:8080/brandt', 'yes'),
	(34, 'category_base', '', 'yes'),
	(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
	(36, 'advanced_edit', '0', 'yes'),
	(37, 'comment_max_links', '2', 'yes'),
	(38, 'gmt_offset', '', 'yes'),
	(39, 'default_email_category', '1', 'yes'),
	(40, 'recently_edited', '', 'no'),
	(41, 'template', 'twentyfourteen', 'yes'),
	(42, 'stylesheet', 'twentyfourteen', 'yes'),
	(43, 'comment_whitelist', '', 'yes'),
	(44, 'blacklist_keys', '', 'no'),
	(45, 'comment_registration', '', 'yes'),
	(46, 'html_type', 'text/html', 'yes'),
	(47, 'use_trackback', '0', 'yes'),
	(48, 'default_role', 'subscriber', 'yes'),
	(49, 'db_version', '27916', 'yes'),
	(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
	(51, 'upload_path', '', 'yes'),
	(52, 'blog_public', '1', 'yes'),
	(53, 'default_link_category', '2', 'yes'),
	(54, 'show_on_front', 'posts', 'yes'),
	(55, 'tag_base', '', 'yes'),
	(56, 'show_avatars', '1', 'yes'),
	(57, 'avatar_rating', 'G', 'yes'),
	(58, 'upload_url_path', '', 'yes'),
	(59, 'thumbnail_size_w', '150', 'yes'),
	(60, 'thumbnail_size_h', '150', 'yes'),
	(61, 'thumbnail_crop', '1', 'yes'),
	(62, 'medium_size_w', '300', 'yes'),
	(63, 'medium_size_h', '300', 'yes'),
	(64, 'avatar_default', 'wavatar', 'yes'),
	(65, 'large_size_w', '1024', 'yes'),
	(66, 'large_size_h', '1024', 'yes'),
	(67, 'image_default_link_type', 'file', 'yes'),
	(68, 'image_default_size', '', 'yes'),
	(69, 'image_default_align', '', 'yes'),
	(70, 'close_comments_for_old_posts', '', 'yes'),
	(71, 'close_comments_days_old', '14', 'yes'),
	(72, 'thread_comments', '', 'yes'),
	(73, 'thread_comments_depth', '5', 'yes'),
	(74, 'page_comments', '', 'yes'),
	(75, 'comments_per_page', '50', 'yes'),
	(76, 'default_comments_page', 'newest', 'yes'),
	(77, 'comment_order', 'asc', 'yes'),
	(78, 'sticky_posts', 'a:0:{}', 'yes'),
	(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
	(80, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
	(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
	(82, 'uninstall_plugins', 'a:0:{}', 'no'),
	(83, 'timezone_string', 'America/Argentina/Buenos_Aires', 'yes'),
	(84, 'page_for_posts', '0', 'yes'),
	(85, 'page_on_front', '0', 'yes'),
	(86, 'default_post_format', '0', 'yes'),
	(87, 'link_manager_enabled', '0', 'yes'),
	(88, 'initial_db_version', '27916', 'yes'),
	(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
	(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
	(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
	(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
	(93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
	(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
	(95, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:6:"meta-2";i:2;s:10:"archives-2";i:3;s:12:"categories-2";i:4;s:14:"recent-posts-2";i:5;s:17:"recent-comments-2";}s:9:"sidebar-1";a:1:{i:0;s:7:"pages-3";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
	(96, 'cron', 'a:4:{i:1399431340;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1399449060;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1399474552;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
	(98, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:3:"3.9";s:12:"last_checked";i:1399388151;}', 'yes'),
	(99, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1399405957;}', 'yes'),
	(102, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1399408597;}', 'yes'),
	(103, 'can_compress_scripts', '1', 'yes'),
	(104, '_transient_timeout_plugin_slugs', '1399474598', 'no'),
	(105, '_transient_plugin_slugs', 'a:2:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";}', 'no'),
	(106, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1399431398', 'no'),
	(107, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Failed connect to wordpress.org:80; No error</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Failed connect to planet.wordpress.org:80; No error</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
	(108, '_transient_is_multi_author', '0', 'yes'),
	(109, '_transient_twentyfourteen_category_count', '1', 'yes'),
	(112, 'widget_pages', 'a:3:{i:1;a:0:{}i:3;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
	(113, 'widget_nav_menu', 'a:3:{i:1;a:0:{}i:3;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
	(114, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
	(115, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
	(116, 'widget_widget_twentyfourteen_ephemera', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
	(117, 'theme_mods_twentyfourteen', 'a:8:{s:16:"header_textcolor";s:6:"ffffff";s:16:"background_color";s:6:"f5f5f5";s:12:"header_image";s:21:"random-uploaded-image";s:16:"background_image";s:0:"";s:17:"background_repeat";s:6:"repeat";s:21:"background_position_x";s:4:"left";s:21:"background_attachment";s:5:"fixed";s:23:"featured_content_layout";s:4:"grid";}', 'yes'),
	(120, '_transient_random_seed', 'e7bea525a7699d07e3b7432d4a7b51f3', 'yes'),
	(129, '_site_transient_timeout_wporg_theme_feature_list', '1399415753', 'yes'),
	(130, '_site_transient_wporg_theme_feature_list', 'a:0:{}', 'yes'),
	(131, 'rewrite_rules', 'a:67:{s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes'),
	(132, '_transient_doing_cron', '1399405955.5685141086578369140625', 'yes'),
	(133, 'auto_updater.lock', '1399405957', 'no'),
	(134, '_site_transient_timeout_theme_roots', '1399410396', 'yes'),
	(135, '_site_transient_theme_roots', 'a:3:{s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;


-- Volcando estructura para tabla brandt.wp_postmeta
DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla brandt.wp_postmeta: ~16 rows (aproximadamente)
DELETE FROM `wp_postmeta`;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
	(1, 2, '_wp_page_template', 'default'),
	(2, 2, '_edit_lock', '1399390483:1'),
	(5, 5, '_wp_attached_file', '2014/05/wheel.jpg'),
	(6, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:288;s:4:"file";s:17:"2014/05/wheel.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"wheel-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"wheel-300x86.jpg";s:5:"width";i:300;s:6:"height";i:86;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:17:"wheel-672x288.jpg";s:5:"width";i:672;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
	(13, 7, '_wp_attached_file', '2014/05/brandt-hero.png'),
	(14, 7, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:970;s:6:"height";i:355;s:4:"file";s:23:"2014/05/brandt-hero.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"brandt-hero-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:23:"brandt-hero-300x109.png";s:5:"width";i:300;s:6:"height";i:109;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:23:"brandt-hero-672x355.png";s:5:"width";i:672;s:6:"height";i:355;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
	(15, 8, '_wp_attached_file', '2014/05/cropped-brandt-hero.png'),
	(16, 8, '_wp_attachment_context', 'custom-header'),
	(17, 8, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1260;s:6:"height";i:243;s:4:"file";s:31:"2014/05/cropped-brandt-hero.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"cropped-brandt-hero-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:30:"cropped-brandt-hero-300x57.png";s:5:"width";i:300;s:6:"height";i:57;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:32:"cropped-brandt-hero-1024x197.png";s:5:"width";i:1024;s:6:"height";i:197;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:31:"cropped-brandt-hero-672x243.png";s:5:"width";i:672;s:6:"height";i:243;s:9:"mime-type";s:9:"image/png";}s:25:"twentyfourteen-full-width";a:4:{s:4:"file";s:32:"cropped-brandt-hero-1038x243.png";s:5:"width";i:1038;s:6:"height";i:243;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
	(18, 8, '_wp_attachment_custom_header_last_used_twentyfourteen', '1399388926'),
	(19, 8, '_wp_attachment_is_custom_header', 'twentyfourteen'),
	(20, 9, '_wp_attached_file', '2014/05/cropped-wheel.jpg'),
	(21, 9, '_wp_attachment_context', 'custom-header'),
	(22, 9, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1260;s:6:"height";i:239;s:4:"file";s:25:"2014/05/cropped-wheel.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"cropped-wheel-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"cropped-wheel-300x56.jpg";s:5:"width";i:300;s:6:"height";i:56;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"cropped-wheel-1024x194.jpg";s:5:"width";i:1024;s:6:"height";i:194;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"cropped-wheel-672x239.jpg";s:5:"width";i:672;s:6:"height";i:239;s:9:"mime-type";s:10:"image/jpeg";}s:25:"twentyfourteen-full-width";a:4:{s:4:"file";s:26:"cropped-wheel-1038x239.jpg";s:5:"width";i:1038;s:6:"height";i:239;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
	(23, 9, '_wp_attachment_custom_header_last_used_twentyfourteen', '1399388952'),
	(24, 9, '_wp_attachment_is_custom_header', 'twentyfourteen');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;


-- Volcando estructura para tabla brandt.wp_posts
DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla brandt.wp_posts: ~7 rows (aproximadamente)
DELETE FROM `wp_posts`;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
	(1, 1, '2014-05-06 14:55:32', '2014-05-06 14:55:32', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2014-05-06 14:55:32', '2014-05-06 14:55:32', '', 0, 'http://localhost:8080/brandt/?p=1', 0, 'post', '', 1),
	(2, 1, '2014-05-06 14:55:32', '2014-05-06 14:55:32', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost:8080/brandt/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2014-05-06 14:55:32', '2014-05-06 14:55:32', '', 0, 'http://localhost:8080/brandt/?page_id=2', 0, 'page', '', 0),
	(3, 1, '2014-05-06 14:56:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-05-06 14:56:12', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/brandt/?p=3', 0, 'post', '', 0),
	(5, 1, '2014-05-06 15:05:16', '2014-05-06 15:05:16', '', 'wheel', '', 'inherit', 'open', 'open', '', 'wheel', '', '', '2014-05-06 15:05:16', '2014-05-06 15:05:16', '', 0, 'http://localhost:8080/brandt/wp-content/uploads/2014/05/wheel.jpg', 0, 'attachment', 'image/jpeg', 0),
	(7, 1, '2014-05-06 15:07:39', '2014-05-06 15:07:39', '', 'brandt-hero', '', 'inherit', 'open', 'open', '', 'brandt-hero', '', '', '2014-05-06 15:07:39', '2014-05-06 15:07:39', '', 0, 'http://localhost:8080/brandt/wp-content/uploads/2014/05/brandt-hero.png', 0, 'attachment', 'image/png', 0),
	(8, 1, '2014-05-06 15:08:42', '2014-05-06 15:08:42', 'http://localhost:8080/brandt/wp-content/uploads/2014/05/cropped-brandt-hero.png', 'cropped-brandt-hero.png', '', 'inherit', 'open', 'open', '', 'cropped-brandt-hero-png', '', '', '2014-05-06 15:08:42', '2014-05-06 15:08:42', '', 0, 'http://localhost:8080/brandt/wp-content/uploads/2014/05/cropped-brandt-hero.png', 0, 'attachment', 'image/png', 0),
	(9, 1, '2014-05-06 15:09:09', '2014-05-06 15:09:09', 'http://localhost:8080/brandt/wp-content/uploads/2014/05/cropped-wheel.jpg', 'cropped-wheel.jpg', '', 'inherit', 'open', 'open', '', 'cropped-wheel-jpg', '', '', '2014-05-06 15:09:09', '2014-05-06 15:09:09', '', 0, 'http://localhost:8080/brandt/wp-content/uploads/2014/05/cropped-wheel.jpg', 0, 'attachment', 'image/jpeg', 0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;


-- Volcando estructura para tabla brandt.wp_terms
DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla brandt.wp_terms: ~1 rows (aproximadamente)
DELETE FROM `wp_terms`;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
	(1, 'Uncategorized', 'uncategorized', 0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;


-- Volcando estructura para tabla brandt.wp_term_relationships
DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla brandt.wp_term_relationships: ~1 rows (aproximadamente)
DELETE FROM `wp_term_relationships`;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
	(1, 1, 0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;


-- Volcando estructura para tabla brandt.wp_term_taxonomy
DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla brandt.wp_term_taxonomy: ~1 rows (aproximadamente)
DELETE FROM `wp_term_taxonomy`;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
	(1, 1, 'category', '', 0, 1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;


-- Volcando estructura para tabla brandt.wp_usermeta
DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla brandt.wp_usermeta: ~16 rows (aproximadamente)
DELETE FROM `wp_usermeta`;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
	(1, 1, 'first_name', ''),
	(2, 1, 'last_name', ''),
	(3, 1, 'nickname', 'brandt'),
	(4, 1, 'description', ''),
	(5, 1, 'rich_editing', 'true'),
	(6, 1, 'comment_shortcuts', 'false'),
	(7, 1, 'admin_color', 'fresh'),
	(8, 1, 'use_ssl', '0'),
	(9, 1, 'show_admin_bar_front', 'true'),
	(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
	(11, 1, 'wp_user_level', '10'),
	(12, 1, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets'),
	(13, 1, 'show_welcome_panel', '1'),
	(14, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
	(15, 1, 'wp_user-settings', 'libraryContent=browse'),
	(16, 1, 'wp_user-settings-time', '1399388802');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;


-- Volcando estructura para tabla brandt.wp_users
DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla brandt.wp_users: ~1 rows (aproximadamente)
DELETE FROM `wp_users`;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
	(1, 'brandt', '$P$BhHG7rdIp53Ryfk73.n9aW7rj5/qW0.', 'brandt', 'pmprete@gmail.com', '', '2014-05-06 14:55:31', '', 0, 'brandt');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
