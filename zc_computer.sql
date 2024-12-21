-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2024 at 12:53 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zc_computer`
--

-- --------------------------------------------------------

--
-- Table structure for table `address_book`
--

CREATE TABLE `address_book` (
  `address_book_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL DEFAULT 0,
  `entry_gender` char(1) NOT NULL DEFAULT '',
  `entry_company` varchar(64) DEFAULT NULL,
  `entry_firstname` varchar(32) NOT NULL DEFAULT '',
  `entry_lastname` varchar(32) NOT NULL DEFAULT '',
  `entry_street_address` varchar(128) NOT NULL DEFAULT '',
  `entry_suburb` varchar(128) DEFAULT NULL,
  `entry_postcode` varchar(64) NOT NULL DEFAULT '',
  `entry_city` varchar(128) NOT NULL DEFAULT '',
  `entry_state` varchar(128) DEFAULT NULL,
  `entry_country_id` int(11) NOT NULL DEFAULT 0,
  `entry_zone_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address_book`
--

INSERT INTO `address_book` (`address_book_id`, `customers_id`, `entry_gender`, `entry_company`, `entry_firstname`, `entry_lastname`, `entry_street_address`, `entry_suburb`, `entry_postcode`, `entry_city`, `entry_state`, `entry_country_id`, `entry_zone_id`) VALUES
(1, 1, '', 'ABC', 'Anugrah', 'Panji', 'Jl. Kampung Durian, Tangerang, Banten', 'Indonesia', '42191', 'Tangerang', '', 100, 286);

-- --------------------------------------------------------

--
-- Table structure for table `address_format`
--

CREATE TABLE `address_format` (
  `address_format_id` int(11) NOT NULL,
  `address_format` varchar(128) NOT NULL DEFAULT '',
  `address_summary` varchar(48) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address_format`
--

INSERT INTO `address_format` (`address_format_id`, `address_format`, `address_summary`) VALUES
(1, '$firstname $lastname$cr$streets$cr$city, $postcode$cr$statecomma$country', 'Default $city, $postcode / $state, $country'),
(2, '$firstname $lastname$cr$streets$cr$city, $state    $postcode$cr$country', 'city, $state $postcode'),
(3, '$firstname $lastname$cr$streets$cr$city$cr$postcode - $statecomma$country', 'Historic $city / $postcode - $statecomma$country'),
(4, '$firstname $lastname$cr$streets$cr$city ($postcode)$cr$country', 'Historic $city ($postcode)'),
(5, '$firstname $lastname$cr$streets$cr$postcode $city$cr$country', 'postcode $city'),
(6, '$firstname $lastname$cr$streets$cr$city$cr$state$cr$postcode$cr$country', '$city / $state / $postcode'),
(7, '$firstname $lastname$cr$streets$cr$city $state $postcode$cr$country', '$city $state $postcode'),
(8, '$firstname $lastname$cr$streets$cr$city$cr$country', '$city'),
(9, '$firstname $lastname$cr$streets$cr$postcode $city $state$cr$country', '$postcode $city $state'),
(10, '$firstname $lastname$cr$streets$cr$city $postcode$cr$country', '$city $postcode'),
(11, '$firstname $lastname$cr$streets$cr$city $state$cr$postcode$cr$country', '$city $state / $postcode'),
(12, '$firstname $lastname$cr$streets$cr$postcode$cr$city $state$cr$country', '$postcode / $city / $state'),
(13, '$firstname $lastname$cr$streets$cr$city $postcode$cr$state$cr$country', '$city $postcode / $state'),
(14, '$firstname $lastname$cr$streets$cr$postcode $city$cr$state$cr$country', '$postcode $city / $state'),
(15, '$firstname $lastname$cr$streets$cr$postcode$cr$city$cr$state$cr$country', '$postcode / $city / $state'),
(16, '$firstname $lastname$cr$streets$cr$city $postcode $state$cr$country', ' $city $postcode $state'),
(17, '$firstname $lastname$cr$streets$cr$city$cr$postcode $state$cr$country', ' $city / $postcode $state'),
(18, '$firstname $lastname$cr$streets$cr$city$cr$state $postcode$cr$country', '$city / $state $postcode'),
(19, '$firstname $lastname$cr$city$cr$streets$cr$postcode$cr$country', '$city $street / $postcode'),
(20, '$firstname $lastname$cr$streets$cr$postcode $city ($state)$cr$country', '$postcode $city ($state)');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(32) NOT NULL DEFAULT '',
  `admin_email` varchar(96) NOT NULL DEFAULT '',
  `admin_profile` int(11) NOT NULL DEFAULT 0,
  `admin_pass` varchar(255) NOT NULL DEFAULT '',
  `prev_pass1` varchar(255) NOT NULL DEFAULT '',
  `prev_pass2` varchar(255) NOT NULL DEFAULT '',
  `prev_pass3` varchar(255) NOT NULL DEFAULT '',
  `pwd_last_change_date` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `reset_token` varchar(255) NOT NULL DEFAULT '',
  `last_modified` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `last_login_date` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `last_login_ip` varchar(45) NOT NULL DEFAULT '',
  `failed_logins` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `lockout_expires` int(11) NOT NULL DEFAULT 0,
  `last_failed_attempt` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `last_failed_ip` varchar(45) NOT NULL DEFAULT '',
  `mfa` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_profile`, `admin_pass`, `prev_pass1`, `prev_pass2`, `prev_pass3`, `pwd_last_change_date`, `reset_token`, `last_modified`, `last_login_date`, `last_login_ip`, `failed_logins`, `lockout_expires`, `last_failed_attempt`, `last_failed_ip`, `mfa`) VALUES
(1, 'admin', 'admin@zccomputer.com', 1, '$2y$10$cSlciMSyqGZzN3E.mNJrJ.y7Z5xBvuHLO0dCseMoahvEJlOxtPaTy', '$2y$10$GdJ/hN5mQUF8IFhyKy/jv.sT7hsAgRITQivzdDctjfbngFVmWwJKO', '', '', '2024-12-18 10:02:45', '', '2024-12-18 09:58:59', '2024-12-20 08:47:26', '::1', 0, 0, '2024-12-20 08:29:59', '::1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_activity_log`
--

CREATE TABLE `admin_activity_log` (
  `log_id` bigint(15) NOT NULL,
  `access_date` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `admin_id` int(11) NOT NULL DEFAULT 0,
  `page_accessed` varchar(80) NOT NULL DEFAULT '',
  `page_parameters` text DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '',
  `flagged` tinyint(4) NOT NULL DEFAULT 0,
  `attention` mediumtext DEFAULT NULL,
  `gzpost` mediumblob DEFAULT NULL,
  `logmessage` mediumtext NOT NULL,
  `severity` varchar(9) NOT NULL DEFAULT 'info'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_activity_log`
--

INSERT INTO `admin_activity_log` (`log_id`, `access_date`, `admin_id`, `page_accessed`, `page_parameters`, `ip_address`, `flagged`, `attention`, `gzpost`, `logmessage`, `severity`) VALUES
(1, '2024-12-18 10:02:08', 0, 'Log found to be empty. Logging started.', '', '::1', 0, '', '', 'Log found to be empty. Logging started.', 'notice'),
(2, '2024-12-18 10:02:08', 0, 'alert_page.php ', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [alert_page.php]', 'info'),
(3, '2024-12-18 10:02:25', 0, 'alert_page.php ', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [alert_page.php]', 'info'),
(4, '2024-12-18 10:02:25', 0, 'login.php ', 'camefrom=index.php', '::1', 0, '', 0x8b8e0500, 'Accessed page [login.php]', 'info'),
(5, '2024-12-18 10:02:37', 0, 'login.php admin', 'camefrom=index.php', '::1', 0, '', 0xab564a4c2ec9cccf53b2524ac93736b0304ab1343448324f3531373233b34c344cb1344b4b494c4a4bb548334d52d2514a4cc9cdcc8bcf4bcc4d05ea0073946a01, 'Accessed page [login.php] with action=do3082d910b7e472669a1d96fdabfe8f5b. Review page_parameters and postdata for details.', 'info'),
(6, '2024-12-18 10:02:38', 0, 'login.php admin', 'camefrom=index.php', '::1', 1, '', 0xab564a4c2ec9cccf53b2524ac93736b0304ab1343448324f3531373233b34c344cb1344b4b494c4a4bb548334d52d2514a4cc9cdcc8bcf4bcc4d05ea0073946a01, 'TFA Passed - Two-factor authentication passed', 'warning'),
(7, '2024-12-18 10:02:45', 0, 'login.php ', '', '::1', 0, '', 0xab564a4c2ec9cccf53b2522a2a3636b0304ab1343448324f3531373233b34c344cb1344b4b494c4a4bb548334d52d2514a4cc9cdcc8bcf4bcc4dd525a8da0aa25aa91600, 'Accessed page [login.php] with action=rs3082d910b7e472669a1d96fdabfe8f5b. Review page_parameters and postdata for details.', 'info'),
(8, '2024-12-18 10:02:45', 0, 'login.php ', '', '::1', 1, '', 0xab564a4c2ec9cccf53b2522a2a3636b0304ab1343448324f3531373233b34c344cb1344b4b494c4a4bb548334d52d2514a4cc9cdcc8bcf4bcc4dd525a8da0aa25aa91600, 'Account password change saved.', 'warning'),
(9, '2024-12-18 10:02:45', 0, 'login.php ', '', '::1', 1, '', 0xab564a4c2ec9cccf53b2522a2a3636b0304ab1343448324f3531373233b34c344cb1344b4b494c4a4bb548334d52d2514a4cc9cdcc8bcf4bcc4dd525a8da0aa25aa91600, 'TFA Passed - Two-factor authentication passed', 'warning'),
(10, '2024-12-18 10:02:45', 1, 'index.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [index.php]', 'info'),
(11, '2024-12-18 10:03:30', 1, 'index.php', 'action=update', '::1', 0, '', 0x558ec10e82300c865f65d955623682089c544ec68b074f8664a9b0e0543a32468c18dfdd12890997b67ffbf56fdfbcf3d66985d0689ef173ce72dbb4bdd78e07d3c83e9154c6b7d8d70eaeec087833f3a9d20d980731f063da11d90c6539792da9a08dc1a256a5edd1bb973215f15288bf135495d35d37ffa27005e6e6deb710b0035c287b8dec04586b4721603b40ea044caed6528cf41e2b3ad31918c5220e1319ca34127194a4fcf305, 'Accessed page [index.php] with action=update. Review page_parameters and postdata for details.', 'info'),
(12, '2024-12-18 10:03:30', 1, 'index.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [index.php]', 'info'),
(13, '2024-12-18 10:03:45', 1, 'languages.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [languages.php]', 'info'),
(14, '2024-12-18 10:03:47', 1, 'languages.php', 'page=1&lID=1&action=new', '::1', 0, '', 0x8b8e0500, 'Accessed page [languages.php] with action=new. Review page_parameters and postdata for details.', 'info'),
(15, '2024-12-18 10:04:24', 1, 'languages.php', 'action=insert', '::1', 0, '', 0x4d8b410a80300c04ff92b3085efd81af90d0a425601348eb41c4bf9b7af2b633bb7b83626558615332e526081324a3a184224bc5f241329d8be45024cea99b5f43ff6ecdbcefe6c41ec532869cf13c7a90293c2f, 'Accessed page [languages.php] with action=insert. Review page_parameters and postdata for details.', 'info'),
(16, '2024-12-18 10:04:24', 1, 'languages.php', 'action=insert', '::1', 0, '', 0x4d8b410a80300c04ff92b3085efd81af90d0a425601348eb41c4bf9b7af2b633bb7b83626558615332e526081324a3a184224bc5f241329d8be45024cea99b5f43ff6ecdbcefe6c41ec532869cf13c7a90293c2f, 'Language [id] added', 'info'),
(17, '2024-12-18 10:04:25', 1, 'languages.php', 'lID=2', '::1', 0, '', 0x8b8e0500, 'Accessed page [languages.php]', 'info'),
(18, '2024-12-18 10:04:31', 1, 'index.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [index.php]', 'info'),
(19, '2024-12-18 10:05:29', 1, 'define_pages_editor.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php]', 'info'),
(20, '2024-12-18 10:06:20', 1, 'define_pages_editor.php', 'define_it=7&action=new_page', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php] with action=new_page. Review page_parameters and postdata for details.', 'info'),
(21, '2024-12-18 10:06:36', 1, 'define_pages_editor.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php]', 'info'),
(22, '2024-12-18 10:07:00', 1, 'define_pages_editor.php', 'define_it=7&action=new_page', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php] with action=new_page. Review page_parameters and postdata for details.', 'info'),
(23, '2024-12-18 10:07:34', 1, 'define_pages_editor.php', 'reset_editor=2&action=set_editor', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php] with action=set_editor. Review page_parameters and postdata for details.', 'info'),
(24, '2024-12-18 10:07:35', 1, 'define_pages_editor.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php]', 'info'),
(25, '2024-12-18 10:07:39', 1, 'define_pages_editor.php', 'define_it=7&action=new_page', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php] with action=new_page. Review page_parameters and postdata for details.', 'info'),
(26, '2024-12-18 10:07:57', 1, 'define_pages_editor.php', 'lngdir=english&filename=define_main_page.php&action=save', '::1', 0, '', 0x9d534d6fdb300cfd2b840fc506b4f63d4d32044d800d68d760f00e1d0c188a4cdb5af4354b8e9b0efbefa364e7033b0dbdd832293e3e3e3eff4e6a21b1e4467bd4de25b3646e9773066d87f5a2485aefad9b1559915586bbf40df51d679d4fb95145d63bec28952ce74235e03a4e0542b1065d9149d63558645410eedfc5ea9fb6291260d2d3bd1fa8e18132b036bc57d49a796174c02a32161ec4c22ef316c1a3b2927904cbf89ec081da3ad87edec293d9117758a347eec11b203e07ca5bf05467ac174abc6105921d4def61c71c7d180d151e04c714bed44009601d86282320b7f7c6dec628671492cec041e010019d201242c7f34521a12b7c4d6d6b3f2926746989e122c66e98b2f763ebfc6871e1d94ea2a709f37880c7988ae3a6f02005df0bdd0422efc0565109c29e2491176c70ad191cd0e332c420a40469cc7e9c7bac3ecb12b9bc93488535eb6598721233ca3712090b1a84e72d6d821ad06720747d2fbdec5d385afcab077a4bc369fdd549fae057607e06736e2a5c06abe9a61f5d87ba91c2b545d67a254ba1b9ecab107f79fefeadcc374fdbc755be212f632d3496e759c264d43ae29d28bc4c1ef8d5931af2085809f258e035fd2bf081e90a3a54863c1713d1fb1f691206ab4a097d77d3f8fbdc18e9e2691dbbc23650850dc199ee16028643190cfc2f2ba83ba3e2c8b697b232833eeb3377be33ba597e7dce373358c9811d5d5475f27ed088f868ba3fdd1cc53ad5c17fa9465bedcad3ef770575ad54f2e72f, 'Accessed page [define_pages_editor.php] with action=save. Review page_parameters and postdata for details.', 'info'),
(27, '2024-12-18 10:07:57', 1, 'define_pages_editor.php', 'lngdir=english&filename=define_main_page.php&action=save', '::1', 0, '', 0x9d534d6fdb300cfd2b840fc506b4f63d4d32044d800d68d760f00e1d0c188a4cdb5af4354b8e9b0efbefa364e7033b0dbdd832293e3e3e3eff4e6a21b1e4467bd4de25b3646e9773066d87f5a2485aefad9b1559915586bbf40df51d679d4fb95145d63bec28952ce74235e03a4e0542b1065d9149d63558645410eedfc5ea9fb6291260d2d3bd1fa8e18132b036bc57d49a796174c02a32161ec4c22ef316c1a3b2927904cbf89ec081da3ad87edec293d9117758a347eec11b203e07ca5bf05467ac174abc6105921d4def61c71c7d180d151e04c714bed44009601d86282320b7f7c6dec628671492cec041e010019d201242c7f34521a12b7c4d6d6b3f2926746989e122c66e98b2f763ebfc6871e1d94ea2a709f37880c7988ae3a6f02005df0bdd0422efc0565109c29e2491176c70ad191cd0e332c420a40469cc7e9c7bac3ecb12b9bc93488535eb6598721233ca3712090b1a84e72d6d821ad06720747d2fbdec5d385afcab077a4bc369fdd549fae057607e06736e2a5c06abe9a61f5d87ba91c2b545d67a254ba1b9ecab107f79fefeadcc374fdbc755be212f632d3496e759c264d43ae29d28bc4c1ef8d5931af2085809f258e035fd2bf081e90a3a54863c1713d1fb1f691206ab4a097d77d3f8fbdc18e9e2691dbbc23650850dc199ee16028643190cfc2f2ba83ba3e2c8b697b232833eeb3377be33ba597e7dce373358c9811d5d5475f27ed088f868ba3fdd1cc53ad5c17fa9465bedcad3ef770575ad54f2e72f, 'Define-Page-Editor was used to save changes to file C:/xampp/htdocs/zc_computer/includes/languages/english/html_includes/responsive_classic/define_main_page.php', 'info'),
(28, '2024-12-18 10:07:57', 1, 'define_pages_editor.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php]', 'info'),
(29, '2024-12-18 10:08:00', 1, 'define_pages_editor.php', 'action=new_page', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php] with action=new_page. Review page_parameters and postdata for details.', 'info'),
(30, '2024-12-18 10:08:08', 1, 'define_pages_editor.php', 'action=new_page', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php] with action=new_page. Review page_parameters and postdata for details.', 'info'),
(31, '2024-12-18 10:08:10', 1, 'define_pages_editor.php', 'define_it=2&action=new_page', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php] with action=new_page. Review page_parameters and postdata for details.', 'info'),
(32, '2024-12-18 10:08:19', 1, 'define_pages_editor.php', 'define_it=15&action=new_page', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php] with action=new_page. Review page_parameters and postdata for details.', 'info'),
(33, '2024-12-18 10:08:35', 1, 'banner_manager.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [banner_manager.php]', 'info'),
(34, '2024-12-18 10:08:41', 1, 'banner_manager.php', 'page=1&bID=5&action=new', '::1', 0, '', 0x8b8e0500, 'Accessed page [banner_manager.php] with action=new. Review page_parameters and postdata for details.', 'info'),
(35, '2024-12-18 10:08:46', 1, 'banner_manager.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [banner_manager.php]', 'info'),
(36, '2024-12-18 10:09:09', 1, 'banner_manager.php', 'page=1&bID=4', '::1', 0, '', 0x8b8e0500, 'Accessed page [banner_manager.php]', 'info'),
(37, '2024-12-18 10:09:12', 1, 'banner_manager.php', 'page=1&bID=4&action=new', '::1', 0, '', 0x8b8e0500, 'Accessed page [banner_manager.php] with action=new. Review page_parameters and postdata for details.', 'info'),
(38, '2024-12-18 10:09:18', 1, 'banner_manager.php', 'page=1&bID=4', '::1', 0, '', 0x8b8e0500, 'Accessed page [banner_manager.php]', 'info'),
(39, '2024-12-18 10:09:19', 1, 'banner_manager.php', 'page=1&bID=1', '::1', 0, '', 0x8b8e0500, 'Accessed page [banner_manager.php]', 'info'),
(40, '2024-12-18 10:09:21', 1, 'banner_manager.php', 'page=1&bID=1&action=new', '::1', 0, '', 0x8b8e0500, 'Accessed page [banner_manager.php] with action=new. Review page_parameters and postdata for details.', 'info'),
(41, '2024-12-18 10:09:21', 1, 'banner_manager.php', 'page=1&bID=1&action=new', '::1', 0, '', 0x8b8e0500, 'Accessed page [banner_manager.php] with action=new. Review page_parameters and postdata for details.', 'info'),
(42, '2024-12-18 10:09:26', 1, 'banner_manager.php', 'page=1&bID=1', '::1', 0, '', 0x8b8e0500, 'Accessed page [banner_manager.php]', 'info'),
(43, '2024-12-18 10:09:27', 1, 'banner_manager.php', 'page=1&bID=6', '::1', 0, '', 0x8b8e0500, 'Accessed page [banner_manager.php]', 'info'),
(44, '2024-12-18 10:09:28', 1, 'banner_manager.php', 'page=1&bID=6', '::1', 0, '', 0x8b8e0500, 'Accessed page [banner_manager.php]', 'info'),
(45, '2024-12-18 10:09:46', 1, 'ezpages.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [ezpages.php]', 'info'),
(46, '2024-12-18 10:09:55', 1, 'layout_controller.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [layout_controller.php]', 'info'),
(47, '2024-12-18 10:10:19', 1, 'layout_controller.php', '', '::1', 0, '', 0xab562a51b2522a4a2d2ec8cf2bce2c4b8d4fce492c2ece4c56aa0500, 'Accessed page [layout_controller.php]', 'info'),
(48, '2024-12-18 10:10:28', 1, 'languages.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [languages.php]', 'info'),
(49, '2024-12-18 10:10:34', 1, 'currencies.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [currencies.php]', 'info'),
(50, '2024-12-18 10:11:30', 1, 'currencies.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [currencies.php]', 'info'),
(51, '2024-12-18 10:12:24', 1, 'modules.php', 'set=payment', '::1', 0, '', 0x8b8e0500, 'Accessed page [modules.php]', 'info'),
(52, '2024-12-18 10:12:31', 1, 'modules.php', 'set=payment&module=bank_bca', '::1', 0, '', 0x8b8e0500, 'Accessed page [modules.php]', 'info'),
(53, '2024-12-18 10:12:37', 1, 'modules.php', 'set=payment&action=install', '::1', 0, '', 0xab56cacd4f29cd4955b2524a4acccb8e4f4a4e54aa0500, 'Accessed page [modules.php] with action=install. Review page_parameters and postdata for details.', 'info'),
(54, '2024-12-18 10:12:38', 1, 'modules.php', 'set=payment&action=install', '::1', 1, '', 0xab56cacd4f29cd4955b2524a4acccb8e4f4a4e54aa0500, 'This is an automated email from \\\"ZC Computer\\\" to alert you of a change that was just made to your administrative settings: \n\nNOTE: Admin settings have been changed. The [bank_bca] module has been INSTALLED by Zen Cart admin user {admin[1]}.\n\nIf you did not initiate these changes, it is advisable that you verify the settings immediately.\n\nIf you are already aware of these changes, you can ignore this automated email.', 'warning'),
(55, '2024-12-18 10:12:40', 1, 'modules.php', 'set=payment&module=bank_bca&action=edit', '::1', 0, '', 0x8b8e0500, 'Accessed page [modules.php] with action=edit. Review page_parameters and postdata for details.', 'info'),
(56, '2024-12-18 10:14:28', 1, 'modules.php', 'set=payment&module=bank_bca&action=save', '::1', 0, '', 0x8d914f8b833010c5bf4ac8d9826ed7b6f4967f0bd2aa8b8994f612b26245646311bdb4f4bbefa4ed1e37ee6132e1f1e3cde4e586abde9edb661accd8f6166f6f38cd79b917fa931c5391294d49b6d394112d1551a5c45bac86a9c6c19fdc29cf0450a1079179a1745e7051cc8054524784e102cac311c6b23205347a5bbec7abf56686258ebd5655ff7d99c67af0ad7a483ed4ff8cdde5e94c8ded10481ef8f1fa57a63ae1333910ce0b215df8aceda68b09d0ce7c411f6b8b94b14d3dc01120980b4a80a2781df9ec402074ef7ee9c410fb0de17eff01, 'Accessed page [modules.php] with action=save. Review page_parameters and postdata for details.', 'info'),
(57, '2024-12-18 10:14:29', 1, 'modules.php', 'set=payment&module=bank_bca&action=save', '::1', 1, '', 0x8d914f8b833010c5bf4ac8d9826ed7b6f4967f0bd2aa8b8994f612b26245646311bdb4f4bbefa4ed1e37ee6132e1f1e3cde4e586abde9edb661accd8f6166f6f38cd79b917fa931c5391294d49b6d394112d1551a5c45bac86a9c6c19fdc29cf0450a1079179a1745e7051cc8054524784e102cac311c6b23205347a5bbec7abf56686258ebd5655ff7d99c67af0ad7a483ed4ff8cdde5e94c8ded10481ef8f1fa57a63ae1333910ce0b215df8aceda68b09d0ce7c411f6b8b94b14d3dc01120980b4a80a2781df9ec402074ef7ee9c410fb0de17eff01, 'This is an automated email from \\\"ZC Computer\\\" to alert you of a change that was just made to your administrative settings: \n\nNOTE: Admin settings have been CHANGED for the [bank_bca] module, by Zen Cart admin user {admin[1]}.\n\nIf you did not initiate these changes, it is advisable that you verify the settings immediately.\n\nIf you are already aware of these changes, you can ignore this automated email.', 'warning'),
(58, '2024-12-18 10:14:31', 1, 'modules.php', 'set=payment&module=bank_bca', '::1', 0, '', 0x8b8e0500, 'Accessed page [modules.php]', 'info'),
(59, '2024-12-18 10:14:38', 1, 'modules.php', 'set=payment&module=bank_bni', '::1', 0, '', 0x8b8e0500, 'Accessed page [modules.php]', 'info'),
(60, '2024-12-18 10:14:38', 1, 'modules.php', 'set=payment&module=bank_bni', '::1', 0, '', 0x8b8e0500, 'Accessed page [modules.php]', 'info'),
(61, '2024-12-18 10:14:41', 1, 'modules.php', 'set=payment&action=install', '::1', 0, '', 0xab56cacd4f29cd4955b2524a4acccb8e4fcacb54aa0500, 'Accessed page [modules.php] with action=install. Review page_parameters and postdata for details.', 'info'),
(62, '2024-12-18 10:14:42', 1, 'modules.php', 'set=payment&action=install', '::1', 1, '', 0xab56cacd4f29cd4955b2524a4acccb8e4fcacb54aa0500, 'This is an automated email from \\\"ZC Computer\\\" to alert you of a change that was just made to your administrative settings: \n\nNOTE: Admin settings have been changed. The [bank_bni] module has been INSTALLED by Zen Cart admin user {admin[1]}.\n\nIf you did not initiate these changes, it is advisable that you verify the settings immediately.\n\nIf you are already aware of these changes, you can ignore this automated email.', 'warning'),
(63, '2024-12-18 10:14:44', 1, 'modules.php', 'set=payment&module=bank_bni&action=edit', '::1', 0, '', 0x8b8e0500, 'Accessed page [modules.php] with action=edit. Review page_parameters and postdata for details.', 'info'),
(64, '2024-12-18 10:15:18', 1, 'modules.php', 'set=payment&module=bank_bni&action=save', '::1', 0, '', 0x8d914b8bc2301485ff4ac8ba42eb631477790d146d3a3429a29b104b9522934a693723fef7b9516739a98b9b1b0e1fe7de9cdc70d5ba53731e3adb37adc3eb1bce725e6e85f922fb4c486d28911b43656a9426ba54788d7537d438fa973be452001507109517dae40517c5084815f5441c4fa0021c614c9619a0abe5c7623e9b26232cf1ec4f55b5dfd7a1afbbd0aabbf453bf67ec2f4f676add058114801faf7f656a523e9203e1bc10ca87cf9acb70b511dad823f4be76485b77ae3b38220473418950b25826213b1008ddfa5f3a30c4fe42b8df7f01, 'Accessed page [modules.php] with action=save. Review page_parameters and postdata for details.', 'info'),
(65, '2024-12-18 10:15:19', 1, 'modules.php', 'set=payment&module=bank_bni&action=save', '::1', 1, '', 0x8d914b8bc2301485ff4ac8ba42eb631477790d146d3a3429a29b104b9522934a693723fef7b9516739a98b9b1b0e1fe7de9cdc70d5ba53731e3adb37adc3eb1bce725e6e85f922fb4c486d28911b43656a9426ba54788d7537d438fa973be452001507109517dae40517c5084815f5441c4fa0021c614c9619a0abe5c7623e9b26232cf1ec4f55b5dfd7a1afbbd0aabbf453bf67ec2f4f676add058114801faf7f656a523e9203e1bc10ca87cf9acb70b511dad823f4be76485b77ae3b38220473418950b25826213b1008ddfa5f3a30c4fe42b8df7f01, 'This is an automated email from \\\"ZC Computer\\\" to alert you of a change that was just made to your administrative settings: \n\nNOTE: Admin settings have been CHANGED for the [bank_bni] module, by Zen Cart admin user {admin[1]}.\n\nIf you did not initiate these changes, it is advisable that you verify the settings immediately.\n\nIf you are already aware of these changes, you can ignore this automated email.', 'warning'),
(66, '2024-12-18 10:15:21', 1, 'modules.php', 'set=payment&module=bank_bni', '::1', 0, '', 0x8b8e0500, 'Accessed page [modules.php]', 'info'),
(67, '2024-12-18 10:15:26', 1, 'modules.php', 'set=payment&module=cod', '::1', 0, '', 0x8b8e0500, 'Accessed page [modules.php]', 'info'),
(68, '2024-12-18 10:15:29', 1, 'modules.php', 'set=payment&action=install', '::1', 0, '', 0xab56cacd4f29cd4955b2524ace4f51aa0500, 'Accessed page [modules.php] with action=install. Review page_parameters and postdata for details.', 'info'),
(69, '2024-12-18 10:15:30', 1, 'modules.php', 'set=payment&action=install', '::1', 1, '', 0xab56cacd4f29cd4955b2524ace4f51aa0500, 'This is an automated email from \\\"ZC Computer\\\" to alert you of a change that was just made to your administrative settings: \n\nNOTE: Admin settings have been changed. The [cod] module has been INSTALLED by Zen Cart admin user {admin[1]}.\n\nIf you did not initiate these changes, it is advisable that you verify the settings immediately.\n\nIf you are already aware of these changes, you can ignore this automated email.', 'warning'),
(70, '2024-12-18 10:15:32', 1, 'modules.php', 'set=payment&module=cod&action=edit', '::1', 0, '', 0x8b8e0500, 'Accessed page [modules.php] with action=edit. Review page_parameters and postdata for details.', 'info'),
(71, '2024-12-18 10:15:55', 1, 'modules.php', 'set=payment&module=cod&action=save', '::1', 0, '', 0xab564acecf4bcb4c2f2d4a2cc9cccf53b2aa56f2f57709f5718d0f708cf475f50b8977f677890f0e710c090d56b2520a292a4d55d2c1a624cadfcf15a8c000bbac7f908b6b10d498784f17dc0a83fd834220aac16a6a6b01, 'Accessed page [modules.php] with action=save. Review page_parameters and postdata for details.', 'info'),
(72, '2024-12-18 10:15:55', 1, 'modules.php', 'set=payment&module=cod&action=save', '::1', 1, '', 0xab564acecf4bcb4c2f2d4a2cc9cccf53b2aa56f2f57709f5718d0f708cf475f50b8977f677890f0e710c090d56b2520a292a4d55d2c1a624cadfcf15a8c000bbac7f908b6b10d498784f17dc0a83fd834220aac16a6a6b01, 'This is an automated email from \\\"ZC Computer\\\" to alert you of a change that was just made to your administrative settings: \n\nNOTE: Admin settings have been CHANGED for the [cod] module, by Zen Cart admin user {admin[1]}.\n\nIf you did not initiate these changes, it is advisable that you verify the settings immediately.\n\nIf you are already aware of these changes, you can ignore this automated email.', 'warning'),
(73, '2024-12-18 10:15:58', 1, 'modules.php', 'set=payment&module=cod', '::1', 0, '', 0x8b8e0500, 'Accessed page [modules.php]', 'info'),
(74, '2024-12-18 10:16:11', 1, 'category_product_listing.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(75, '2024-12-18 10:18:43', 1, 'categories.php', 'action=new_category', '::1', 0, '', 0x8b8e0500, 'Accessed page [categories.php] with action=new_category. Review page_parameters and postdata for details.', 'info'),
(76, '2024-12-18 10:19:42', 1, 'category_product_listing.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(77, '2024-12-18 10:19:44', 1, 'zones.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [zones.php]', 'info'),
(78, '2024-12-18 10:19:51', 1, 'zones.php', 'zone_page=AUSTRIA', '::1', 0, '', 0x8b8e0500, 'Accessed page [zones.php]', 'info'),
(79, '2024-12-18 10:20:02', 1, 'zones.php', 'zone_page=CANADA', '::1', 0, '', 0x8b8e0500, 'Accessed page [zones.php]', 'info'),
(80, '2024-12-18 10:20:04', 1, 'zones.php', 'zone_page=GERMANY', '::1', 0, '', 0x8b8e0500, 'Accessed page [zones.php]', 'info'),
(81, '2024-12-18 10:20:09', 1, 'zones.php', 'zone_page=PALAU', '::1', 0, '', 0x8b8e0500, 'Accessed page [zones.php]', 'info'),
(82, '2024-12-18 10:20:14', 1, 'zones.php', 'zone_page=UNITED%20STATES', '::1', 0, '', 0x8b8e0500, 'Accessed page [zones.php]', 'info'),
(83, '2024-12-18 10:21:01', 1, 'index.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [index.php]', 'info'),
(84, '2024-12-18 10:21:05', 1, 'zones.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [zones.php]', 'info'),
(85, '2024-12-18 10:21:08', 1, 'zones.php', 'zone_page=INDONESIA', '::1', 0, '', 0x8b8e0500, 'Accessed page [zones.php]', 'info'),
(86, '2024-12-18 10:21:10', 1, 'zones.php', 'zone_page=INDONESIA&cID=286', '::1', 0, '', 0x8b8e0500, 'Accessed page [zones.php]', 'info'),
(87, '2024-12-18 10:21:11', 1, 'zones.php', 'zone_page=INDONESIA&cID=286', '::1', 0, '', 0x8b8e0500, 'Accessed page [zones.php]', 'info'),
(88, '2024-12-18 10:22:57', 1, 'category_product_listing.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(89, '2024-12-18 10:22:58', 1, 'categories.php', 'action=new_category', '::1', 0, '', 0x8b8e0500, 'Accessed page [categories.php] with action=new_category. Review page_parameters and postdata for details.', 'info'),
(90, '2024-12-18 10:27:12', 1, 'categories.php', 'action=insert_category', '::1', 0, '', 0x558c4b0ac3300c44ef32eb403f4bef7a8f8211913082d80a92bd0abd7bbf81663733bc371b66ea52cc55222b239da7ffa55115a40d1724dc6204265cf7f838902c31bbae5dadedc20f7e835a4b66f5571beb62c4713fe1a06ba522b9521bb47cd530efd99cc53f1f4f, 'Accessed page [categories.php] with action=insert_category. Review page_parameters and postdata for details.', 'info'),
(91, '2024-12-18 10:27:12', 1, 'categories.php', 'action=insert_category', '::1', 1, '', 0x558c4b0ac3300c44ef32eb403f4bef7a8f8211913082d80a92bd0abd7bbf81663733bc371b66ea52cc55222b239da7ffa55115a40d1724dc6204265cf7f838902c31bbae5dadedc20f7e835a4b66f5571beb62c4713fe1a06ba522b9521bb47cd530efd99cc53f1f4f, 'Success: File upload saved successfully asus.jpg', 'notice'),
(92, '2024-12-18 10:27:12', 1, 'category_product_listing.php', 'cID=1', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(93, '2024-12-18 10:27:22', 1, 'categories.php', 'cID=1&action=edit_category', '::1', 0, '', 0x8b8e0500, 'Accessed page [categories.php] with action=edit_category. Review page_parameters and postdata for details.', 'info'),
(94, '2024-12-18 10:27:52', 1, 'categories.php', 'action=update_category', '::1', 0, '', 0x558ec10a83400c44ff2567696b8fdefa1f8525b86149517749e2a188ffdeacd5526f99e1cd6416e8d1286561d2c011bab6f977261c09ba055ae8e0a1b34203f7e35c4f6424ed858b719e8ec00e5790474ce4cc40e67d70836aa510595ccd65c818f5798553e33733e234e3e0d4261dfad1e8232eaf923ca5592c6489247bb9909a706fc1dea53e6c61fd00, 'Accessed page [categories.php] with action=update_category. Review page_parameters and postdata for details.', 'info'),
(95, '2024-12-18 10:27:53', 1, 'categories.php', 'action=edit_category&cID=1', '::1', 0, '', 0x8b8e0500, 'Accessed page [categories.php] with action=edit_category. Review page_parameters and postdata for details.', 'info'),
(96, '2024-12-18 10:27:58', 1, 'categories.php', 'action=update_category', '::1', 0, '', 0x558c4b0ac3300c44efa275a07597def51e05636c6104f107495e9490bbd7260934bb99e1cddb2078c55499501c45b066f95f8acf0876030316ded20516785d71bf9111253035a55aaec3094f90b24f38981575f8e009734a2e128fd6db5a7d94cf036ec6e3937de97e3d6c52595de5887c3a184599823afdb6e935b0ff00, 'Accessed page [categories.php] with action=update_category. Review page_parameters and postdata for details.', 'info'),
(97, '2024-12-18 10:27:58', 1, 'category_product_listing.php', 'cID=1', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(98, '2024-12-18 10:28:01', 1, 'categories.php', 'cID=1&action=edit_category', '::1', 0, '', 0x8b8e0500, 'Accessed page [categories.php] with action=edit_category. Review page_parameters and postdata for details.', 'info'),
(99, '2024-12-18 10:28:11', 1, 'categories.php', 'action=update_category', '::1', 0, '', 0x55ce410a84300c05d0bbfcb58be92cbb9b9394d28612b05692b818c4bb8f1d1574177ede0f5991a25169c2a48133bc1beec9142bc1af70f0f8e8a218f0bec6ed213369129e8ddb74154edc21d758683723d97e0f2ff4a884cc72b8fb137f5ae3b4c4f1586a130b4d32c9591552134e16ec3bf7730edb0f, 'Accessed page [categories.php] with action=update_category. Review page_parameters and postdata for details.', 'info'),
(100, '2024-12-18 10:28:11', 1, 'category_product_listing.php', 'cID=1', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(101, '2024-12-18 10:28:41', 1, 'category_product_listing.php', 'cID=1', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(102, '2024-12-18 10:28:42', 1, 'categories.php', 'cID=1&action=edit_category', '::1', 0, '', 0x8b8e0500, 'Accessed page [categories.php] with action=edit_category. Review page_parameters and postdata for details.', 'info'),
(103, '2024-12-18 10:28:57', 1, 'categories.php', 'action=update_category', '::1', 0, '', 0x55ce410a84300c05d0bbfcb58be92cbb9b9394d28612b05692b818c4bb8f1d1574177ede0f5991a25169c2a48133bc1beec9142bc1af70f0f8e8a218f0bec6ed213369129e8ddb74154edc21d758683723d97e0f2ff4a884cc72b8fb137f5ae3b4c4f1586a130b4d32c9591552134e16ec3bf7730edb0f, 'Accessed page [categories.php] with action=update_category. Review page_parameters and postdata for details.', 'info'),
(104, '2024-12-18 10:28:57', 1, 'categories.php', 'action=update_category', '::1', 1, '', 0x55ce410a84300c05d0bbfcb58be92cbb9b9394d28612b05692b818c4bb8f1d1574177ede0f5991a25169c2a48133bc1beec9142bc1af70f0f8e8a218f0bec6ed213369129e8ddb74154edc21d758683723d97e0f2ff4a884cc72b8fb137f5ae3b4c4f1586a130b4d32c9591552134e16ec3bf7730edb0f, 'Success: File upload saved successfully asus.jpg', 'notice'),
(105, '2024-12-18 10:28:58', 1, 'category_product_listing.php', 'cID=1', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(106, '2024-12-18 10:29:00', 1, 'categories.php', 'action=new_category', '::1', 0, '', 0x8b8e0500, 'Accessed page [categories.php] with action=new_category. Review page_parameters and postdata for details.', 'info'),
(107, '2024-12-18 10:29:26', 1, 'categories.php', 'action=insert_category', '::1', 0, '', 0x5d8c4b0ac3300c44efa275a04d972604baef110246d8c2086a4bc8ee2ae4ee0df940d3dd306fdecc10b0511263aa9e23b87bf7db14cc046e861e1c3c031974f038e3725946aac1581b4b398541c7176a131da69b8e87fa57ae279c938f6c2b83cb23674ce433960fbe7758c59a178bb48d972f, 'Accessed page [categories.php] with action=insert_category. Review page_parameters and postdata for details.', 'info'),
(108, '2024-12-18 10:29:26', 1, 'categories.php', 'action=insert_category', '::1', 1, '', 0x5d8c4b0ac3300c44efa275a04d972604baef110246d8c2086a4bc8ee2ae4ee0df940d3dd306fdecc10b0511263aa9e23b87bf7db14cc046e861e1c3c031974f038e3725946aac1581b4b398541c7176a131da69b8e87fa57ae279c938f6c2b83cb23674ce433960fbe7758c59a178bb48d972f, 'Success: File upload saved successfully acer.jpg', 'notice'),
(109, '2024-12-18 10:29:26', 1, 'category_product_listing.php', 'cID=2', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(110, '2024-12-18 10:29:29', 1, 'categories.php', 'cID=1&action=edit_category', '::1', 0, '', 0x8b8e0500, 'Accessed page [categories.php] with action=edit_category. Review page_parameters and postdata for details.', 'info'),
(111, '2024-12-18 10:29:41', 1, 'categories.php', 'action=update_category', '::1', 0, '', 0x5d8d4b0ac3300c44efa275a075972604baef110ac6c4c208e20f92b2282177af431268ba9366e6cd2c307ac55898501c05b0a6fb55b24f08760103169e320b74f038cff5920c282353552af904fa3abc7cd552fbf7ad0e07fa27b6124a3e62e327d4b60577d8a4e80271fbe032b24793cfb39f76530aab2b1c900f9451946954a79fbad51958bf, 'Accessed page [categories.php] with action=update_category. Review page_parameters and postdata for details.', 'info'),
(112, '2024-12-18 10:29:41', 1, 'category_product_listing.php', 'cID=1', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(113, '2024-12-18 10:29:43', 1, 'categories.php', 'action=new_category', '::1', 0, '', 0x8b8e0500, 'Accessed page [categories.php] with action=new_category. Review page_parameters and postdata for details.', 'info'),
(114, '2024-12-18 10:30:03', 1, 'categories.php', 'action=insert_category', '::1', 0, '', 0x5d8c410a83301045ef326bc1da65104fe0110a613043186832c3247623de5d6995d62eff7ffffd0526ac14c5988ae700eed6fc361913815ba00307236579093470ff86f5b20e542663ad2cf9947a1d46d42ada3f5a1d0ef9afdc4f38451fd8760697474e18c927cc333e3fb088552f16e83d5e37, 'Accessed page [categories.php] with action=insert_category. Review page_parameters and postdata for details.', 'info'),
(115, '2024-12-18 10:30:03', 1, 'categories.php', 'action=insert_category', '::1', 1, '', 0x5d8c410a83301045ef326bc1da65104fe0110a613043186832c3247623de5d6995d62eff7ffffd0526ac14c5988ae700eed6fc361913815ba00307236579093470ff86f5b20e542663ad2cf9947a1d46d42ada3f5a1d0ef9afdc4f38451fd8760697474e18c927cc333e3fb088552f16e83d5e37, 'Success: File upload saved successfully lenovo.png', 'notice'),
(116, '2024-12-18 10:30:03', 1, 'category_product_listing.php', 'cID=3', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(117, '2024-12-18 10:30:05', 1, 'categories.php', 'action=new_category', '::1', 0, '', 0x8b8e0500, 'Accessed page [categories.php] with action=new_category. Review page_parameters and postdata for details.', 'info'),
(118, '2024-12-18 10:30:22', 1, 'categories.php', 'action=insert_category', '::1', 0, '', 0x5d8cc10a83301044ff65cf426d8f413c7bf0d00f2884c52c61c164974d7a12ffbd522d546fc3cc9bb7c08495a21853f11cc0b5cd7f933111b805eee0607842038f3dac272a50998cb5b2e41fdc693fa256d1ee75d3fe385eca4dc229fac0b66d703272c2483e617ee3bc8f45ac7ab1405f78fd00, 'Accessed page [categories.php] with action=insert_category. Review page_parameters and postdata for details.', 'info'),
(119, '2024-12-18 10:30:22', 1, 'categories.php', 'action=insert_category', '::1', 1, '', 0x5d8cc10a83301044ff65cf426d8f413c7bf0d00f2884c52c61c164974d7a12ffbd522d546fc3cc9bb7c08495a21853f11cc0b5cd7f933111b805eee0607842038f3dac272a50998cb5b2e41fdc693fa256d1ee75d3fe385eca4dc229fac0b66d703272c2483e617ee3bc8f45ac7ab1405f78fd00, 'Success: File upload saved successfully hp.png', 'notice'),
(120, '2024-12-18 10:30:22', 1, 'category_product_listing.php', 'cID=4', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(121, '2024-12-18 10:32:13', 1, 'currencies.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [currencies.php]', 'info'),
(122, '2024-12-18 10:40:19', 1, 'currencies.php', 'page=1&cID=1', '::1', 0, '', 0x8b8e0500, 'Accessed page [currencies.php]', 'info'),
(123, '2024-12-18 10:40:21', 1, 'currencies.php', 'page=1&cID=1&action=new', '::1', 0, '', 0x8b8e0500, 'Accessed page [currencies.php] with action=new. Review page_parameters and postdata for details.', 'info'),
(124, '2024-12-18 10:42:08', 1, 'currencies.php', 'page=1&action=insert', '::1', 0, '', 0x4dcdc10ac2300c06e057919cc79820033d7bf1da1718b1ed6c206b8a6d0511dfddb40735b77cff1ff28242853d9ce0129d449f0977a626c2000358713d391b5df273bb0a2fecd7a266d2f8b33bdd424315e72d6dc84b128a8d5aab04a919a3cb5f1dfe9b8cd667c549f1815cdbcbfd7c988fe3d4a77757acdc2e25c2fb03, 'Accessed page [currencies.php] with action=insert. Review page_parameters and postdata for details.', 'info'),
(125, '2024-12-18 10:42:08', 1, 'currencies.php', 'page=1&action=insert', '::1', 0, '', 0x4dcdc10ac2300c06e057919cc79820033d7bf1da1718b1ed6c206b8a6d0511dfddb40735b77cff1ff28242853d9ce0129d449f0977a626c2000358713d391b5df273bb0a2fecd7a266d2f8b33bdd424315e72d6dc84b128a8d5aab04a919a3cb5f1dfe9b8cd667c549f1815cdbcbfd7c988fe3d4a77757acdc2e25c2fb03, 'Currency code IDR added/updated.', 'info'),
(126, '2024-12-18 10:42:08', 1, 'currencies.php', 'page=1&action=insert', '::1', 0, '', 0x4dcdc10ac2300c06e057919cc79820033d7bf1da1718b1ed6c206b8a6d0511dfddb40735b77cff1ff28242853d9ce0129d449f0977a626c2000358713d391b5df273bb0a2fecd7a266d2f8b33bdd424315e72d6dc84b128a8d5aab04a919a3cb5f1dfe9b8cd667c549f1815cdbcbfd7c988fe3d4a77757acdc2e25c2fb03, 'Default currency code changed to IDR', 'info'),
(127, '2024-12-18 10:42:09', 1, 'currencies.php', 'page=1&cID=6', '::1', 0, '', 0x8b8e0500, 'Accessed page [currencies.php]', 'info'),
(128, '2024-12-18 10:42:13', 1, 'currencies.php', 'page=1&cID=6&action=edit', '::1', 0, '', 0x8b8e0500, 'Accessed page [currencies.php] with action=edit. Review page_parameters and postdata for details.', 'info'),
(129, '2024-12-18 10:57:13', 0, 'login.php ', 'camefrom=logoff.php', '::1', 0, '', 0x8b8e0500, 'Accessed page [login.php]', 'info'),
(130, '2024-12-18 11:03:37', 0, 'login.php ', 'camefrom=currencies.php&page=1&cID=6&action=edit', '::1', 0, '', 0x8b8e0500, 'Accessed page [login.php] with action=edit. Review page_parameters and postdata for details.', 'info'),
(131, '2024-12-18 11:03:45', 0, 'login.php admin', 'camefrom=currencies.php&page=1&cID=6&action=edit', '::1', 0, '', 0xab564a4c2ec9cccf53b2524ac9b730363132364c49313630344b314f3532373748344d4e4e4e344bb14cb44c3152d2514a4cc9cdcc8bcf4bcc4d05ea0073946a01, 'Accessed page [login.php] with action=do834231dd3016d7e2770a5ccca6d9a9d2. Review page_parameters and postdata for details.', 'info'),
(132, '2024-12-18 11:03:45', 0, 'login.php admin', 'camefrom=currencies.php&page=1&cID=6&action=edit', '::1', 1, '', 0xab564a4c2ec9cccf53b2524ac9b730363132364c49313630344b314f3532373748344d4e4e4e344bb14cb44c3152d2514a4cc9cdcc8bcf4bcc4d05ea0073946a01, 'TFA Passed - Two-factor authentication passed', 'warning'),
(133, '2024-12-18 11:03:45', 1, 'currencies.php', 'page=1&cID=6&action=edit', '::1', 0, '', 0x8b8e0500, 'Accessed page [currencies.php] with action=edit. Review page_parameters and postdata for details.', 'info'),
(134, '2024-12-18 11:18:45', 0, 'login.php ', 'camefrom=logoff.php', '::1', 0, '', 0x8b8e0500, 'Accessed page [login.php]', 'info'),
(135, '2024-12-18 12:00:19', 0, 'login.php ', 'camefrom=currencies.php&page=1&cID=6&action=edit', '::1', 0, '', 0x8b8e0500, 'Accessed page [login.php] with action=edit. Review page_parameters and postdata for details.', 'info'),
(136, '2024-12-18 12:00:24', 0, 'login.php admin', 'camefrom=currencies.php&page=1&cID=6&action=edit', '::1', 0, '', 0xab564a4c2ec9cccf53b2524ac94f314c3132334a364e333637364c4a493233b64c4d354e4bb54c3232b448354856d2514a4cc9cdcc8bcf4bcc4d05ea0073946a01, 'Accessed page [login.php] with action=dod1d262c3f3731bdb639ee3fe9b218e0c. Review page_parameters and postdata for details.', 'info'),
(137, '2024-12-18 12:00:24', 0, 'login.php admin', 'camefrom=currencies.php&page=1&cID=6&action=edit', '::1', 1, '', 0xab564a4c2ec9cccf53b2524ac94f314c3132334a364e333637364c4a493233b64c4d354e4bb54c3232b448354856d2514a4cc9cdcc8bcf4bcc4d05ea0073946a01, 'TFA Passed - Two-factor authentication passed', 'warning'),
(138, '2024-12-18 12:00:24', 1, 'currencies.php', 'page=1&cID=6&action=edit', '::1', 0, '', 0x8b8e0500, 'Accessed page [currencies.php] with action=edit. Review page_parameters and postdata for details.', 'info'),
(139, '2024-12-18 12:00:29', 1, 'banner_manager.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [banner_manager.php]', 'info'),
(140, '2024-12-18 12:00:31', 1, 'banner_manager.php', 'page=1&bID=5&action=setflag', '::1', 0, '', 0x8b8e0500, 'Accessed page [banner_manager.php] with action=setflag. Review page_parameters and postdata for details.', 'info'),
(141, '2024-12-18 12:00:31', 1, 'banner_manager.php', 'page=1&bID=5', '::1', 0, '', 0x8b8e0500, 'Accessed page [banner_manager.php]', 'info'),
(142, '2024-12-18 12:00:31', 1, 'banner_manager.php', 'page=1&bID=5&action=new', '::1', 0, '', 0x8b8e0500, 'Accessed page [banner_manager.php] with action=new. Review page_parameters and postdata for details.', 'info'),
(143, '2024-12-18 12:00:34', 1, 'banner_manager.php', 'page=1&bID=5', '::1', 0, '', 0x8b8e0500, 'Accessed page [banner_manager.php]', 'info'),
(144, '2024-12-18 12:00:35', 1, 'banner_manager.php', 'page=1&bID=2&action=setflag', '::1', 0, '', 0x8b8e0500, 'Accessed page [banner_manager.php] with action=setflag. Review page_parameters and postdata for details.', 'info'),
(145, '2024-12-18 12:00:36', 1, 'banner_manager.php', 'page=1&bID=2', '::1', 0, '', 0x8b8e0500, 'Accessed page [banner_manager.php]', 'info'),
(146, '2024-12-18 12:00:37', 1, 'banner_manager.php', 'page=1&bID=3&action=setflag', '::1', 0, '', 0x8b8e0500, 'Accessed page [banner_manager.php] with action=setflag. Review page_parameters and postdata for details.', 'info'),
(147, '2024-12-18 12:00:37', 1, 'banner_manager.php', 'page=1&bID=3', '::1', 0, '', 0x8b8e0500, 'Accessed page [banner_manager.php]', 'info'),
(148, '2024-12-18 12:00:38', 1, 'banner_manager.php', 'page=1&bID=7&action=setflag', '::1', 0, '', 0x8b8e0500, 'Accessed page [banner_manager.php] with action=setflag. Review page_parameters and postdata for details.', 'info'),
(149, '2024-12-18 12:00:39', 1, 'banner_manager.php', 'page=1&bID=7', '::1', 0, '', 0x8b8e0500, 'Accessed page [banner_manager.php]', 'info'),
(150, '2024-12-18 12:00:40', 1, 'banner_manager.php', 'page=1&bID=4&action=setflag', '::1', 0, '', 0x8b8e0500, 'Accessed page [banner_manager.php] with action=setflag. Review page_parameters and postdata for details.', 'info'),
(151, '2024-12-18 12:00:40', 1, 'banner_manager.php', 'page=1&bID=4', '::1', 0, '', 0x8b8e0500, 'Accessed page [banner_manager.php]', 'info'),
(152, '2024-12-18 12:00:42', 1, 'banner_manager.php', 'page=1&bID=1&action=setflag', '::1', 0, '', 0x8b8e0500, 'Accessed page [banner_manager.php] with action=setflag. Review page_parameters and postdata for details.', 'info'),
(153, '2024-12-18 12:00:42', 1, 'banner_manager.php', 'page=1&bID=1', '::1', 0, '', 0x8b8e0500, 'Accessed page [banner_manager.php]', 'info'),
(154, '2024-12-18 12:00:44', 1, 'banner_manager.php', 'page=1&bID=6&action=setflag', '::1', 0, '', 0x8b8e0500, 'Accessed page [banner_manager.php] with action=setflag. Review page_parameters and postdata for details.', 'info'),
(155, '2024-12-18 12:00:44', 1, 'banner_manager.php', 'page=1&bID=6', '::1', 0, '', 0x8b8e0500, 'Accessed page [banner_manager.php]', 'info'),
(156, '2024-12-18 12:02:51', 1, 'category_product_listing.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(157, '2024-12-18 12:03:08', 1, 'categories.php', 'action=new_category', '::1', 0, '', 0x8b8e0500, 'Accessed page [categories.php] with action=new_category. Review page_parameters and postdata for details.', 'info'),
(158, '2024-12-18 12:03:22', 1, 'categories.php', 'action=insert_category', '::1', 0, '', 0x558d4b0e80200c44efd2350b75c919bc0369a0214d8492822be2dd8dbfa8cb79f326d3c163a328ca541d07b083f9928c89c07618c1c28ca5490103d31bb69f1da87ae5d258f233baf543e4145d60bde0f73561249730afb85c65156d4e34d0296f3b, 'Accessed page [categories.php] with action=insert_category. Review page_parameters and postdata for details.', 'info'),
(159, '2024-12-18 12:03:22', 1, 'category_product_listing.php', 'cID=5', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(160, '2024-12-18 12:03:42', 1, 'category_product_listing.php', 'action=setflag_categories&cID=2', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php] with action=setflag_categories. Review page_parameters and postdata for details.', 'info'),
(161, '2024-12-18 12:03:46', 1, 'category_product_listing.php', 'action=setflag_categories&cID=2', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php] with action=setflag_categories. Review page_parameters and postdata for details.', 'info'),
(162, '2024-12-18 12:03:51', 1, 'category_product_listing.php', 'cID=2', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(163, '2024-12-18 12:03:56', 1, 'category_product_listing.php', 'cID=2&cPath=5', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(164, '2024-12-18 12:04:02', 1, 'categories.php', 'cPath=5&action=new_category', '::1', 0, '', 0x8b8e0500, 'Accessed page [categories.php] with action=new_category. Review page_parameters and postdata for details.', 'info'),
(165, '2024-12-18 12:04:08', 1, 'category_product_listing.php', 'cPath=5', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(166, '2024-12-18 12:05:34', 1, 'category_product_listing.php', 'cID=5', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(167, '2024-12-18 12:05:41', 1, 'categories.php', 'cID=2&action=edit_category', '::1', 0, '', 0x8b8e0500, 'Accessed page [categories.php] with action=edit_category. Review page_parameters and postdata for details.', 'info'),
(168, '2024-12-18 12:05:52', 1, 'category_product_listing.php', 'cID=2', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(169, '2024-12-18 12:05:57', 1, 'category_product_listing.php', 'cID=2&action=delete_category', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php] with action=delete_category. Review page_parameters and postdata for details.', 'info'),
(170, '2024-12-18 12:05:59', 1, 'category_product_listing.php', 'cID=2', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(171, '2024-12-18 12:06:02', 1, 'category_product_listing.php', 'cID=2&action=move_category', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php] with action=move_category. Review page_parameters and postdata for details.', 'info'),
(172, '2024-12-18 12:06:09', 1, 'category_product_listing.php', 'action=move_category_confirm', '::1', 0, '', 0xab564a4e2c494dcf2fca4c2d8ecf4c51b232d251cacd2f4b8d2fc98f87ca5482c5954c956a01, 'Accessed page [category_product_listing.php] with action=move_category_confirm. Review page_parameters and postdata for details.', 'info'),
(173, '2024-12-18 12:06:09', 1, 'category_product_listing.php', 'cPath=5', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(174, '2024-12-18 12:06:12', 1, 'category_product_listing.php', 'cID=5', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(175, '2024-12-18 12:06:15', 1, 'category_product_listing.php', 'cID=1&action=move_category', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php] with action=move_category. Review page_parameters and postdata for details.', 'info'),
(176, '2024-12-18 12:06:22', 1, 'category_product_listing.php', 'action=move_category_confirm', '::1', 0, '', 0xab564a4e2c494dcf2fca4c2d8ecf4c51b232d451cacd2f4b8d2fc98f87ca5482c5954c956a01, 'Accessed page [category_product_listing.php] with action=move_category_confirm. Review page_parameters and postdata for details.', 'info'),
(177, '2024-12-18 12:06:22', 1, 'category_product_listing.php', 'cPath=5', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(178, '2024-12-18 12:06:27', 1, 'category_product_listing.php', 'cID=5', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(179, '2024-12-18 12:06:30', 1, 'category_product_listing.php', 'cID=4&action=move_category', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php] with action=move_category. Review page_parameters and postdata for details.', 'info'),
(180, '2024-12-18 12:06:35', 1, 'category_product_listing.php', 'action=move_category_confirm', '::1', 0, '', 0xab564a4e2c494dcf2fca4c2d8ecf4c51b232d151cacd2f4b8d2fc98f87ca5482c5954c956a01, 'Accessed page [category_product_listing.php] with action=move_category_confirm. Review page_parameters and postdata for details.', 'info'),
(181, '2024-12-18 12:06:35', 1, 'category_product_listing.php', 'cPath=5', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(182, '2024-12-18 12:06:38', 1, 'categories.php', 'cPath=5&cID=2&action=edit_category_meta_tags', '::1', 0, '', 0x8b8e0500, 'Accessed page [categories.php] with action=edit_category_meta_tags. Review page_parameters and postdata for details.', 'info'),
(183, '2024-12-18 12:06:40', 1, 'category_product_listing.php', 'cPath=5&cID=2', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(184, '2024-12-18 12:06:43', 1, 'category_product_listing.php', 'cID=5', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(185, '2024-12-18 12:06:47', 1, 'category_product_listing.php', 'cID=3&action=move_category', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php] with action=move_category. Review page_parameters and postdata for details.', 'info'),
(186, '2024-12-18 12:06:51', 1, 'category_product_listing.php', 'action=move_category_confirm', '::1', 0, '', 0xab564a4e2c494dcf2fca4c2d8ecf4c51b232d651cacd2f4b8d2fc98f87ca5482c5954c956a01, 'Accessed page [category_product_listing.php] with action=move_category_confirm. Review page_parameters and postdata for details.', 'info'),
(187, '2024-12-18 12:06:52', 1, 'category_product_listing.php', 'cPath=5', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(188, '2024-12-18 12:15:21', 1, 'category_product_listing.php', 'cPath=5_2', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(189, '2024-12-18 12:15:23', 1, 'product.php', 'action=new_product', '::1', 0, '', 0xab562a28ca4f294d2e892fa92c4855b2523254d2514a0e482cc900b24de38d80bcc4e492ccfc3c20372fb53c1eaa5aa91600, 'Accessed page [product.php] with action=new_product. Review page_parameters and postdata for details.', 'info'),
(190, '2024-12-18 12:16:51', 1, 'product.php', 'cPath=2&action=new_product_preview', '::1', 0, '', 0x8553db6e83300cfd179ed7a9459b34f56d5f129924054bb950c7694155ff7d81d25bb26ebc44d8e7d8273ef1a9eac9ab2859f0d8eb6a5b6daab7ca42604d4202ebd613ea2050a5d4a7a85372c107a130481fdd8db97e99143bf23647f484528be029b5ca7381816358d4dc6b263d020e80061a33759ca5bab803c991342d321f290e6c029e529d6df59d12f57c9e6f08812189d399fc292ac1985f252bd18c0298099bc8c5bd1906210d84454b499f82efebf495b398b8e864d1f680c4114ca911cc11c6cb0544e8b0efd1b53979cfa368fcf062a4fb088e31413ca9e4b845f71f0286a2c333223ae4d77d2c0e5a15c6ea20097b46efae662d5e3d58752f32d19fe767bdd226b3def62e8bf4a40fe863b2c642bbbc1fb46d7aab74f9f1074d4742d6b9c09920a6b706799b48e62fcd478d6dc7f9c88c762d7759a523aa22d65de94fdb9176e632ec62ebe60d516a1e71bdae3f569b7ab5f9aace3f, 'Accessed page [product.php] with action=new_product_preview. Review page_parameters and postdata for details.', 'info'),
(191, '2024-12-18 12:17:02', 1, 'product.php', 'cPath=2&action=insert_product', '::1', 0, '', 0x85535d6f83300cfc2f3caf538b3669eadb7e49e42629580a49ea381454f5bf2f50fa41181b2f08df5deeec984be1c9a9285970ef75b12f76c55bd140604d4202ebca11ea205025e85394099cf841280cd245fb506e57417124d7e40c4f28b5088e92558e05068e614af33c33e511d0021a3898c1718c6ae3112447d234c57c4a048664adb37043558231bf0652e2d00b60263c445e74c5d00969204c4e4bf9507cdfa667d9e9a0452b17b62d124730cb8c60ced0df1a10a146efd156b9f8c4bd38b86e6560a7089631511ca9749f0ddaff18d02d1ce68c6891d77d1aecb45a4387fa7c308d53dacc6e2cd5bccd2a9e748b2ea69937504dd78e4d95568c6e1faed57426649d3b8f0231ac08e436678d55cd79b346db8aeb9c8a6a51abeff2d9d6a65dbe8d69f1378c9babd4389c725b7e6c76e566f7f54ab1d0a4fc97d4c0bef84e4039beafaf87e820093da3b377e2c49bd12299bfe0c710af3f, 'Accessed page [product.php] with action=insert_product. Review page_parameters and postdata for details.', 'info'),
(192, '2024-12-18 12:17:02', 1, 'product.php', 'cPath=2&action=insert_product', '::1', 0, '', 0x85535d6f83300cfc2f3caf538b3669eadb7e49e42629580a49ea381454f5bf2f50fa41181b2f08df5deeec984be1c9a9285970ef75b12f76c55bd140604d4202ebca11ea205025e85394099cf841280cd245fb506e57417124d7e40c4f28b5088e92558e05068e614af33c33e511d0021a3898c1718c6ae3112447d234c57c4a048664adb37043558231bf0652e2d00b60263c445e74c5d00969204c4e4bf9507cdfa667d9e9a0452b17b62d124730cb8c60ced0df1a10a146efd156b9f8c4bd38b86e6560a7089631511ca9749f0ddaff18d02d1ce68c6891d77d1aecb45a4387fa7c308d53dacc6e2cd5bccd2a9e748b2ea69937504dd78e4d95568c6e1faed57426649d3b8f0231ac08e436678d55cd79b346db8aeb9c8a6a51abeff2d9d6a65dbe8d69f1378c9babd4389c725b7e6c76e566f7f54ab1d0a4fc97d4c0bef84e4039beafaf87e820093da3b377e2c49bd12299bfe0c710af3f, 'New product 1 added via admin console.', 'info'),
(193, '2024-12-18 12:17:03', 1, 'category_product_listing.php', 'cPath=2&pID=1', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info');
INSERT INTO `admin_activity_log` (`log_id`, `access_date`, `admin_id`, `page_accessed`, `page_parameters`, `ip_address`, `flagged`, `attention`, `gzpost`, `logmessage`, `severity`) VALUES
(194, '2024-12-18 12:18:05', 1, 'product.php', 'page=1&product_type=1&cPath=2&pID=1&action=new_product_meta_tags', '::1', 0, '', 0x8b8e0500, 'Accessed page [product.php] with action=new_product_meta_tags. Review page_parameters and postdata for details.', 'info'),
(195, '2024-12-18 12:18:08', 1, 'category_product_listing.php', 'cPath=2&pID=1', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(196, '2024-12-18 12:18:11', 1, 'products_price_manager.php', 'products_filter=1&current_category_id=2', '::1', 0, '', 0x8b8e0500, 'Accessed page [products_price_manager.php]', 'info'),
(197, '2024-12-18 12:18:18', 1, 'category_product_listing.php', 'cPath=2&pID=1', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(198, '2024-12-18 12:18:28', 1, 'attributes_controller.php', 'products_filter=1&current_category_id=2', '::1', 0, '', 0x8b8e0500, 'Accessed page [attributes_controller.php]', 'info'),
(199, '2024-12-18 12:18:28', 1, 'options_name_manager.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [options_name_manager.php]', 'info'),
(200, '2024-12-18 12:18:32', 1, 'category_product_listing.php', 'cPath=2&pID=1', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(201, '2024-12-18 12:18:34', 1, 'category_product_listing.php', 'page=1&cPath=2&product_type=1&pID=1&action=delete_product', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php] with action=delete_product. Review page_parameters and postdata for details.', 'info'),
(202, '2024-12-18 12:18:35', 1, 'category_product_listing.php', 'action=delete_product_confirm&product_type=1&cPath=2&page=1', '::1', 0, '', 0xab562a28ca4f294d2e298ecf4c51b2523254aa0500, 'Accessed page [category_product_listing.php] with action=delete_product_confirm. Review page_parameters and postdata for details.', 'info'),
(203, '2024-12-18 12:18:35', 1, 'category_product_listing.php', 'cPath=2', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(204, '2024-12-18 12:18:37', 1, 'product.php', 'action=new_product', '::1', 0, '', 0xab562a28ca4f294d2e892fa92c4855b2523254d2514a0e482cc900b28d80ecc4e492ccfc3c20272fb53c1eaa56a91600, 'Accessed page [product.php] with action=new_product. Review page_parameters and postdata for details.', 'info'),
(205, '2024-12-18 12:18:45', 1, 'category_product_listing.php', 'cPath=2', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(206, '2024-12-18 12:18:49', 1, 'category_product_listing.php', 'page=1&cPath=2&product_type=1&pID=1&action=delete_product', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php] with action=delete_product. Review page_parameters and postdata for details.', 'info'),
(207, '2024-12-18 12:18:52', 1, 'category_product_listing.php', 'cPath=2&pID=1&page=1', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(208, '2024-12-18 12:18:57', 1, 'category_product_listing.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(209, '2024-12-18 12:18:58', 1, 'category_product_listing.php', 'cPath=5', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(210, '2024-12-18 12:18:59', 1, 'category_product_listing.php', 'cPath=5_2', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(211, '2024-12-18 12:19:02', 1, 'category_product_listing.php', 'page=1&cPath=5_2&product_type=1&pID=1&action=delete_product', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php] with action=delete_product. Review page_parameters and postdata for details.', 'info'),
(212, '2024-12-18 12:19:06', 1, 'category_product_listing.php', 'action=delete_product_confirm&product_type=1&cPath=5_2&page=1', '::1', 0, '', 0xab562a28ca4f294d2e298ecf4c51b2523254aa0500, 'Accessed page [category_product_listing.php] with action=delete_product_confirm. Review page_parameters and postdata for details.', 'info'),
(213, '2024-12-18 12:19:06', 1, 'category_product_listing.php', 'cPath=5_2', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(214, '2024-12-18 12:19:11', 1, 'category_product_listing.php', 'page=1&cPath=5_2&product_type=1&pID=1&action=delete_product', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php] with action=delete_product. Review page_parameters and postdata for details.', 'info'),
(215, '2024-12-18 12:19:13', 1, 'category_product_listing.php', 'action=delete_product_confirm&product_type=1&cPath=5_2&page=1', '::1', 0, '', 0xab562a28ca4f294d2e298ecf4c51b2523254d28189c4272796a4a6e71765a6162b59452b1929c5d60200, 'Accessed page [category_product_listing.php] with action=delete_product_confirm. Review page_parameters and postdata for details.', 'info'),
(216, '2024-12-18 12:19:13', 1, 'category_product_listing.php', 'action=delete_product_confirm&product_type=1&cPath=5_2&page=1', '::1', 1, '', 0xab562a28ca4f294d2e298ecf4c51b2523254d28189c4272796a4a6e71765a6162b59452b1929c5d60200, 'Deleted product 1 from database via admin console.', 'warning'),
(217, '2024-12-18 12:19:13', 1, 'category_product_listing.php', 'cPath=5_2', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(218, '2024-12-18 12:19:16', 1, 'category_product_listing.php', 'cPath=5&cID=2', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(219, '2024-12-19 09:08:30', 0, 'login.php ', 'camefrom=category_product_listing.php&cPath=5&cID=2', '::1', 0, '', 0x8b8e0500, 'Accessed page [login.php]', 'info'),
(220, '2024-12-19 09:08:44', 0, 'login.php admin', 'camefrom=category_product_listing.php&cPath=5&cID=2', '::1', 0, '', 0xab564a4c2ec9cccf53b2524ac94f4a324f4b32314d36304c33304831323531b030b24c3248364832334834363153d2514a4cc9cdcc8bcf4bcc4d05ea0073946a01, 'Accessed page [login.php] with action=dobb7fb45c01f00d2540829b0c0b60a346. Review page_parameters and postdata for details.', 'info'),
(221, '2024-12-19 09:08:44', 0, 'login.php admin', 'camefrom=category_product_listing.php&cPath=5&cID=2', '::1', 1, '', 0xab564a4c2ec9cccf53b2524ac94f4a324f4b32314d36304c33304831323531b030b24c3248364832334834363153d2514a4cc9cdcc8bcf4bcc4d05ea0073946a01, 'TFA Passed - Two-factor authentication passed', 'warning'),
(222, '2024-12-19 09:08:45', 1, 'category_product_listing.php', 'cPath=5&cID=2', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(223, '2024-12-19 09:18:53', 1, 'category_product_listing.php', 'cPath=5_1', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(224, '2024-12-19 09:19:57', 1, 'product.php', 'action=new_product', '::1', 0, '', 0xab562a28ca4f294d2e892fa92c4855b2523254d2514a0e482cc900b24de341bcc4e492ccfc3c20372fb53c1eaa5aa91600, 'Accessed page [product.php] with action=new_product. Review page_parameters and postdata for details.', 'info'),
(225, '2024-12-19 09:24:40', 1, 'product.php', 'cPath=1&action=new_product_preview', '::1', 0, '', 0xdd54df6fd33010fe57acbcc250d23593bab76d8581c428acc0409a645d6db73de1d8d9d9699b4dfbdfb1d36cb4c92a78262fce7d779fef87efee2129c9ca4a78eeeb5225a74996bc4e0a705e1117e0d5c2122ac7510655cea3b2b5775ca213b632cfccf4a092cfc9165d8b925028ee2c05575d9df3e02bd746f3e7ce100f8715a086998e1e9b504d3507e12b52d486b94b315004c38770cf6972e62ac7bee3caceacfdc53e936559ceae8ef334fd72c1261fdf8e47791eb8837f357d7cf6c3d1851455a7081115a0f58b894b3eab39784f38ab7caf7a1e365c68706d46598f1ec1e1308d5fbfa6918d46e803462b245f81ee070b7a0df53613ee9658966816ddc8ee7ccd677673e085ee2a301e838925191aa840f3370bd8f43cec5b5406fd613f056e54af42523941587ab4e6e9edcf098cbca55b7336fd368d677853a15ce8be06bc1ab3ebfa5e19368ae22541b944c12e801acea7154a0476a9de59128a5d7ffd719ce6291bb2cbf3a8be3ebb8a4776d2ca536f09162afee6d920806c3a1d47698caed45037c6f99b13f6c188f83f2915810fb566d33acc5d11b11b34d2ae1dcb32f68a4dde3721df00852c7cc39fcce72810341bb09f0aa86ddbff3dcbc7175a20eea5bdfe29ac54bab3068ad2749092d40a6d1506ac08596c95582cc2dea2ad60578ad6845e75bbab21f0b877a0eba622fdd470ed8bec85bc56b858fa801eef92b4320bbf6c6675175ea36cd0d12eb87cba612fa2b843b7d3d2dbc2cdc694b29991413a181e6583a36c943cfe06, 'Accessed page [product.php] with action=new_product_preview. Review page_parameters and postdata for details.', 'info'),
(226, '2024-12-19 09:24:40', 1, 'product.php', 'cPath=1&action=new_product_preview', '::1', 1, '', 0xdd54df6fd33010fe57acbcc250d23593bab76d8581c428acc0409a645d6db73de1d8d9d9699b4dfbdfb1d36cb4c92a78262fce7d779fef87efee2129c9ca4a78eeeb5225a74996bc4e0a705e1117e0d5c2122ac7510655cea3b2b5775ca213b632cfccf4a092cfc9165d8b925028ee2c05575d9df3e02bd746f3e7ce100f8715a086998e1e9b504d3507e12b52d486b94b315004c38770cf6972e62ac7bee3caceacfdc53e936559ceae8ef334fd72c1261fdf8e47791eb8837f357d7cf6c3d1851455a7081115a0f58b894b3eab39784f38ab7caf7a1e365c68706d46598f1ec1e1308d5fbfa6918d46e803462b245f81ee070b7a0df53613ee9658966816ddc8ee7ccd677673e085ee2a301e838925191aa840f3370bd8f43cec5b5406fd613f056e54af42523941587ab4e6e9edcf098cbca55b7336fd368d677853a15ce8be06bc1ab3ebfa5e19368ae22541b944c12e801acea7154a0476a9de59128a5d7ffd719ce6291bb2cbf3a8be3ebb8a4776d2ca536f09162afee6d920806c3a1d47698caed45037c6f99b13f6c188f83f2915810fb566d33acc5d11b11b34d2ae1dcb32f68a4dde3721df00852c7cc39fcce72810341bb09f0aa86ddbff3dcbc7175a20eea5bdfe29ac54bab3068ad2749092d40a6d1506ac08596c95582cc2dea2ad60578ad6845e75bbab21f0b877a0eba622fdd470ed8bec85bc56b858fa801eef92b4320bbf6c6675175ea36cd0d12eb87cba612fa2b843b7d3d2dbc2cdc694b29991413a181e6583a36c943cfe06, 'Success: File upload saved successfully Asus Vivobook Pro 15 M3500QC OLED955.jpg', 'notice'),
(227, '2024-12-19 09:24:52', 1, 'product.php', 'cPath=1&action=insert_product', '::1', 0, '', 0xdd545d6fd33014fd2b565f6153d23593b6b76d8581c428acc0409a64ddda6e7ac1b1b36ba76d36edbf6367296b522af64c5e1c9ffb71cefd481e0625595909cf7d5daac1e9201dbc1e14e0bc222ec0abdc122ac7510653c6a3b1f5775ca213b6327f2293bd463e275bf43d4a42a1b8b314a8fa36e7c157ae55f39c33e8e1b004d430d391b1916aaa39085f91a256e673084717a8554f5c440568fd574192cf6a0ede13ce2abf53958735171a5ccb94ee844770344ae2b35b6b8c4623f41ea72592af40ef8a05bd82faa912ee16589668f2beb23b5ff3995defe9dc5d05c66370b124c3600b34fff280f50e43d7a332e8f7f314b856729f35ae52277561a5d29dc905ac343da424b5445b85de1790b7e3c7220fab464f17bb54b422f4aa4fdc04f0b82ad0a75929cc173e8047dba85626f78b664e1d67940d7ab20d2e36193a9471af9f3ab5f365345b2c65d39f61321c1da4c383b493d240116a7808194f0767ae72ec1b2eedccda5fec13599666ecea284b92cf176cf2e1cdf824cb42ecf0a5ae8fdb52941384a5476b3674e70446ded2ad399b7e9dc633a411ca85721af06accaeeb7b65d849bc5e12940b14ec02a889f9b84489c02ed55b4b42b1eb2fdf8f922c612376791ecdd76757f1488fdbfbd45b0a8389af593a0c209b4ec7f13646576aa81be7ecf098bd3722be4f4a45e0c3f2b3691d7e5045c46ed048bb722c4dd92b3679d748be010a55f8267e329fa340d06cc87e28a0b653ff7b95db43ae486f86db56df316f3ea6972ccfe1cf320f3994c4b8efcdf1f81b, 'Accessed page [product.php] with action=insert_product. Review page_parameters and postdata for details.', 'info'),
(228, '2024-12-19 09:25:28', 1, 'product.php', 'cPath=1&action=new_product_preview', '::1', 0, '', 0xdd54516fd33010fe2b565e6153932e83ee6d5b6120310a2b3090265957c74d0f1c3b3b3b6dc3b4ff8e9d66a34d56b1679e127ff79defbbf3dddd452599ac128ebbba94d14914472fa302ac93c40538991b42693966de94f2606cf996676885a9f4a3e760af91cfc9145d46492824b7867ca8aecd3a70956dd5fcbdd3ebe1b00454305321622355577310ae2249adcc6d170d8527def97b4ea2535b59f60d976666cc2ff6890c8b5376394c0783cfe76cf2e1cd7894a6de37792ef5fe310e47eb53949d22045480524f269ef159cdc139c259e57ad573b0e642816d338a7bee1e7cfdeaf83049fa150dbea8857a92b2447215a8be50502ba8375970bbc0b2449d7755ddba9acfcc7acfebdc56a01d7a8aa1cc374f81fa5f0c58f722ec322a8d6e7f9c02d7b2579d4c5a41583a34fae1ddcf0874764337fa74fa751abefe3d85b4bef31af072ccaeeadf52b351385e10940b14ec1ca8f1f9b8c40c815dc8b7868464575fbe0f07e9801db18bb360be3abd0c9ff8b83d4f9d21c865f84de3c4836c3a1d87d3186da9a06ec8e9e1317baf45f89f9492c0f95ab369ed67ae08d835eaccac2c8b63f6824dde3592af817c16aef19fcce72810144bd80f09d4b6ecff9ee5fd132d1076d24eff142693aab3028a526f102cbc66df204af607ae24b94453f9790ba4676e80c39f65dedc9bfb75479b2066296945e864b73137d1c3ba82aec28ad443afb68fb993ed4a62be701e1d6e3b29a973b708518eb6e115660d3ada06170f37ec280aab773368bde5dd2cda2c6bc62b192447077172108fa2fb3f, 'Accessed page [product.php] with action=new_product_preview. Review page_parameters and postdata for details.', 'info'),
(229, '2024-12-19 09:25:41', 1, 'product.php', 'cPath=1&action=insert_product', '::1', 0, '', 0xdd54516fd33010fe2b565f6153932d83f1b6ad3090188515184893acabeda6078e9d9d9db661da7fc74e33d634ab18af3cc5feeebbfbbef3d9b91d946465253cf775a906af06c9e0f9a000e71571015ee59650398e3284321e832ddf71894ed8cafcc91cee0cf219d9629b51120ac59da520b51d731e7ce55a370f35831f0e0b400d531d151baba69a81f015296a6d3ea47074415a6d998ba800ad1f3524f9b4e6e03de1b4f2bdae3cacb8d0e05aa5a4971ec0972f8ef6d3b4df69cc4523f4a3940592af40f78d825e42bdee82bb3996259a7cdbd58daff9d4ae769cda4d05c663a0589261a8059abf3160d553e8322a837eb74e812b257745e335ea942eac54ba33b58095668d6001b9e281a0fab328492dd05661149114a227ae72ec2b2eecd4da9fec23599664ece2201b0e3f9db1f1fbd7a3e32cdbff51e64ddd3cdc505a8bd885a225a157db9ed7eaf186c1b6c3a5c27cee0378b0896a65723f8f650e3b64940d7abc09ceef2b7424e373581f72ef4135975fcae668d3617ab897a47b49a7a48122f4701b2a3eed30426efa54eadda615e50461e9d19a7bb9530223afe9da9c4cbe4ce2379411ca85761af062c42eeb5fcab0e3b83d2728e728d8195093f3618112819dab37968462979fbf1d0cb3213b64e7a7317c7972113fc951bb9f784b61307199256900d964328abb11ba5243dd90b3fd23f6ce88b81e978ac08777c32675f8af1511bb4223edd2b12461cfd8f86d63f90a2874e19bfcf16c860241b3947d5740ed49fdef5d6e0eb9227d3fdcb6fb4ef89f1fdddd6f, 'Accessed page [product.php] with action=insert_product. Review page_parameters and postdata for details.', 'info'),
(230, '2024-12-19 09:25:41', 1, 'product.php', 'cPath=1&action=insert_product', '::1', 0, '', 0xdd54516fd33010fe2b565f6153932d83f1b6ad3090188515184893acabeda6078e9d9d9db661da7fc74e33d634ab18af3cc5feeebbfbbef3d9b91d946465253cf775a906af06c9e0f9a000e71571015ee59650398e3284321e832ddf71894ed8cafcc91cee0cf219d9629b51120ac59da520b51d731e7ce55a370f35831f0e0b400d531d151baba69a81f015296a6d3ea47074415a6d998ba800ad1f3524f9b4e6e03de1b4f2bdae3cacb8d0e05aa5a4971ec0972f8ef6d3b4df69cc4523f4a3940592af40f78d825e42bdee82bb3996259a7cdbd58daff9d4ae769cda4d05c663a0589261a8059abf3160d553e8322a837eb74e812b257745e335ea942eac54ba33b58095668d6001b9e281a0fab328492dd05661149114a227ae72ec2b2eecd4da9fec23599664ece2201b0e3f9db1f1fbd7a3e32cdbff51e64ddd3cdc505a8bd885a225a157db9ed7eaf186c1b6c3a5c27cee0378b0896a65723f8f650e3b64940d7abc09ceef2b7424e373581f72ef4135975fcae668d3617ab897a47b49a7a48122f4701b2a3eed30426efa54eadda615e50461e9d19a7bb9530223afe9da9c4cbe4ce2379411ca85761af062c42eeb5fcab0e3b83d2728e728d8195093f3618112819dab37968462979fbf1d0cb3213b64e7a7317c7972113fc951bb9f784b61307199256900d964328abb11ba5243dd90b3fd23f6ce88b81e978ac08777c32675f8af1511bb4223edd2b12461cfd8f86d63f90a2874e19bfcf16c860241b3947d5740ed49fdef5d6e0eb9227d3fdcb6fb4ef89f1fdddd6f, 'New product 2 added via admin console.', 'info'),
(231, '2024-12-19 09:25:42', 1, 'category_product_listing.php', 'cPath=1&pID=2', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(232, '2024-12-19 09:26:24', 1, 'product.php', 'action=new_product', '::1', 0, '', 0xab562a28ca4f294d2e892fa92c4855b2523254d2514a0e482cc980b213934b32f3f3809cbcd4f278a85aa55a00, 'Accessed page [product.php] with action=new_product. Review page_parameters and postdata for details.', 'info'),
(233, '2024-12-19 09:27:40', 1, 'product.php', 'cPath=1&action=new_product_preview', '::1', 0, '', 0xdd54df6fda3010fe57acbc6ead0810a6f68d968d4d1a63239bba874ad6e198705262a76707c82afef7d921549080f6be27fbbebbf37de7fbf11a14a49352586eab4206f74118bc0f72305612176065aa09a5e19834aac6daf0048dd0a57af3eb5d55f215e9bc6d51100ac98d2617a8ad33166c693a011d1b0e1bc00c96998f581355e50a842d495243f2d44541ee0c5fdd3bf7c1d89486cd4651aff7e391cdbf7e9cc451e4dfef5fd5eddf5ee2685c12b295a6470564d9c5d412beac38584bb82c6de77f2cecb8c8c0349cbbee0efc30bc1d44dd2ff3aea84476c96283644bc8ba3421db4275c8819b351605aab41df7c5567ca977577effa50465d199684a5c6be4a8fe6501bb4e84738b52a1bd1e27c79dec369d3482b0b0a8d5b1ae0f042a79a667358e7fc5fefc4e5a48e33aab066713b6a8fe48c5222f4e098a350af60854fb7cdb6082c0a6f2932621d9e2e7ef412feab1219b3e78f5623cf347386ae4d86a8254fa6b14f61dc8e278e2a5099a2283aa368e6e47ec8b12fe3e2f2481757fcde2ca4d54eeb1275489de1a1686ec1d9b7fae293f01b92c6ced3f5fad50a02be2a135ffdbf4f6178aeef28dce3a26d789cc5a439d17aa85142437a84b374cb9a37f50629eba2d4407416f246d09ad6cf753edc0fd1681769892b2638b35a538a3bc9598aead4307a74e9954a95dfb28c353788b498dde9d82ebe30b678cfc463ccc4767a7d6fb2f49eaa9e8f7fac39bb07f13de05fbbf, 'Accessed page [product.php] with action=new_product_preview. Review page_parameters and postdata for details.', 'info'),
(234, '2024-12-19 09:27:40', 1, 'product.php', 'cPath=1&action=new_product_preview', '::1', 1, '', 0xdd54df6fda3010fe57acbc6ead0810a6f68d968d4d1a63239bba874ad6e198705262a76707c82afef7d921549080f6be27fbbebbf37de7fbf11a14a49352586eab4206f74118bc0f72305612176065aa09a5e19834aac6daf0048dd0a57af3eb5d55f215e9bc6d51100ac98d2617a8ad33166c693a011d1b0e1bc00c96998f581355e50a842d495243f2d44541ee0c5fdd3bf7c1d89486cd4651aff7e391cdbf7e9cc451e4dfef5fd5eddf5ee2685c12b295a6470564d9c5d412beac38584bb82c6de77f2cecb8c8c0349cbbee0efc30bc1d44dd2ff3aea84476c96283644bc8ba3421db4275c8819b351605aab41df7c5567ca977577effa50465d199684a5c6be4a8fe6501bb4e84738b52a1bd1e27c79dec369d3482b0b0a8d5b1ae0f042a79a667358e7fc5fefc4e5a48e33aab066713b6a8fe48c5222f4e098a350af60854fb7cdb6082c0a6f2932621d9e2e7ef412feab1219b3e78f5623cf347386ae4d86a8254fa6b14f61dc8e278e2a5099a2283aa368e6e47ec8b12fe3e2f2481757fcde2ca4d54eeb1275489de1a1686ec1d9b7fae293f01b92c6ced3f5fad50a02be2a135ffdbf4f6178aeef28dce3a26d789cc5a439d17aa85142437a84b374cb9a37f50629eba2d4407416f246d09ad6cf753edc0fd1681769892b2638b35a538a3bc9598aead4307a74e9954a95dfb28c353788b498dde9d82ebe30b678cfc463ccc4767a7d6fb2f49eaa9e8f7fac39bb07f13de05fbbf, 'Success: File upload saved successfully Asus M6500QC OLEDS551.png', 'notice'),
(235, '2024-12-19 09:27:54', 1, 'product.php', 'cPath=1&action=insert_product', '::1', 0, '', 0xdd545b6fd33014fe2b565ed9aaa66b86d85bb7c240a2141ad07898649dda6e7ba4c4ce8e9db661da7fc74e53689255bcf3649fef5cbe73b39fa3828c2c85e3ae2a547413c5d1459483758ab800a7d68650598eb25135d6964bb4c294fa8fdff0ac92afc8e45d8b8250286e0d79a2aece3a70a5ed11fa6c386c0133586681b14e54972b10ae24454d927f5d385a4fad3ac905544096bd9a90e4cb8a837384cbd2f5aa72b0e72203db30f5dd3df8763cb84afa850657d4227bcd628be44ac8fa6942b683ea5003b71b2c0ad4eb2eef93abf8d2eccff4eca904edd09b18927ea039ea7f59c0bec7d0b62835baf33c39ee953ca7f578d20a9d1ba9b2d6cc3c56e80e5290daa2297dd773583783c77ced978c0e82d92ada113ad525ae1d785812e8d2ec14ae37ce8357a768a6f4da6d429871cb18658dbe3b0537c7082dcab0d1874ef5de44bdbf52d6fd190d47e3cb787419b7426ac87d0dcf3ee24d34b1a565b3eb6438fc76c7e69fdf4fd324094ca3b3ba975332650561e1d0e863c05b022d1fe9514fd21f6938bf9211cafa846b7036658bea97d22c09e23d41b141c1ee806a9f2f5b9408ec5e7d3024145b7cff79354c866cccee6f837a31998523be6ee4d419f2ad0fd7241e7990a5e9344853b44506556d9c0caed9272dc27d5e2802e7d79ba595ff7af2803da0966667591cb3376cfeb14ef901c857e16afff96a8502fd600f3df96fcb3b1d6b49d9719c4dd92df5f181bcba1f83c2ff1e1791921896b63e5e7e03, 'Accessed page [product.php] with action=insert_product. Review page_parameters and postdata for details.', 'info'),
(236, '2024-12-19 09:28:00', 1, 'product.php', 'cPath=1&action=new_product_preview', '::1', 0, '', 0xdd54516fda3010fe2b565eb7220284a97da3656393c6d8c8a6eea1927538064e72ecf4ec0059c57f9f1d68050968ef7b4afcdd7777dfd977f7121564b25238eeaa424677511cbd8f72b04e1217e0e4ca104acb313b9a8e6ccb33b4c294facdaf7bd5c89764f226a32014925b433e51d3661db8d2b6127a351c36800a162a64ac85ea7209c29524e928f2d44543ee892f3ece5d34b2a565d361d2edfe7860b3af1fc7699284f8bdabb6fd5b248ed617211b6506548052174bcbf8a2e2e01ce1a274adfb71b0e342813d6a6ebb7bf0c3a0d7e927ed3b0bbea885ba48d920b912545b28a82d54872ab85d6351a05e35333fbb8a2fcceecafd3f97a01d7a8aa1cc37478efa5f0cd8b5329c334a8dee7a9e1c77b2dd76d20ac2c2a1d1af2f7b4fa0b3277ad2a3f4571abedfc908697d6fd5e074cce6d51fa959128e1382628d823d00d53edf369821b089fc64484836fff9bbdf4dba6cc026f7c13c1f4dc3271e1ecfa933042b197e93b8e74196a6e3701aa32d14543539e90cd9172dc2ffac9004cedf354b2b3f5379c01e5167666b591cb3776cf6b996fc08e4ab70b5ff6cb94481fe110fcdf9df96b7bff0e8bedee4ac63729349d518ebbcd00704732fd6b78492ed112b486ed0947ec202e9da90770a3f0621d0caef2c3a44351b495b42279bbd774817760e342595a45edbf1f86c67e56d25aed6cea3fd532725f5caad4396c129bcc5ac466f4fc1f56b843345617f1e66a9b581eb6d9965f504f5babdc14ddcbb896fa3fd5f, 'Accessed page [product.php] with action=new_product_preview. Review page_parameters and postdata for details.', 'info'),
(237, '2024-12-19 09:28:08', 1, 'product.php', 'cPath=1&action=insert_product', '::1', 0, '', 0xdd54516fda3010fe2b16af5b1101c2b4bdd1b2b149636c6453f750c93a6c134e4aecf4ec0059d5ff5e3ba11b21457ddf5392efbebbefbb3b3b0fbd828c2c85e3ae2a54ef432feabdede5609d222ec0a9d4102acb511e4347b6e512ad30a5fe9b37b818e41b32f939a320148a5b435ee83c661db8d27604bd1b0e3bc00cd65950ac8dea7203c295a4e868f25f0a47eba5d599b9800ac8b2170d49beae383847b82e5da72b07072e32b047a56eba07df8d87fd51dced34e4a216d98b941d922b21eb1a856c0f55d305b75b2c0ad4e9b9f2bdabf8da1c2e4cedbe04edd0530c49bfd21cf56b0c387414da8c52a3bbac93e341c94b518fc7add2b9912a6b6dcd63856e10cc2155dc1354771705a91d9ad2af22907c746a4bcb16937830f871c3965f3fce92388efa859f572894fa23494d55b353b42774eadc6423178e149c5bda2b4cb7ce83a35334533a75db5066dc22a3acd1f7a7e0f6b9424b329cff66aa9d1b549f7629eb590e07c3f15534bc8a5a2535e4be87075ff142f79e3cbc187b3c15535610160e8d7e2e784da0e51ddde969f22b09cfef6484b2de700d2e666c55fd519ac5e1734e506c51b01ba03ae7db0e25029bab4f868462ab9fbf478378c0c66c7e1dc2abe9223ca2c9f13b7186fce8c36b1c0d3dc8926416be66688b0caa9a1cf727ec8b16e17d592802e7af024b2affa3ca03768b5a9abd6551c4deb0e5e7daf22d90efc2d5f9cbcd0605fac53633f96fdb3b5d6b49d9f33a8f6db7c2afdf9cc727, 'Accessed page [product.php] with action=insert_product. Review page_parameters and postdata for details.', 'info'),
(238, '2024-12-19 09:28:08', 1, 'product.php', 'cPath=1&action=insert_product', '::1', 0, '', 0xdd54516fda3010fe2b16af5b1101c2b4bdd1b2b149636c6453f750c93a6c134e4aecf4ec0059d5ff5e3ba11b21457ddf5392efbebbefbb3b3b0fbd828c2c85e3ae2a54ef432feabdede5609d222ec0a9d4102acb511e4347b6e512ad30a5fe9b37b818e41b32f939a320148a5b435ee83c661db8d27604bd1b0e3bc00cd65950ac8dea7203c295a4e868f25f0a47eba5d599b9800ac8b2170d49beae383847b82e5da72b07072e32b047a56eba07df8d87fd51dced34e4a216d98b941d922b21eb1a856c0f55d305b75b2c0ad4e9b9f2bdabf8da1c2e4cedbe04edd0530c49bfd21cf56b0c387414da8c52a3bbac93e341c94b518fc7add2b9912a6b6dcd63856e10cc2155dc1354771705a91d9ad2af22907c746a4bcb16937830f871c3965f3fce92388efa859f572894fa23494d55b353b42774eadc6423178e149c5bda2b4cb7ce83a35334533a75db5066dc22a3acd1f7a7e0f6b9424b329cff66aa9d1b549f7629eb590e07c3f15534bc8a5a2535e4be87075ff142f79e3cbc187b3c15535610160e8d7e2e784da0e51ddde969f22b09cfef6484b2de700d2e666c55fd519ac5e1734e506c51b01ba03ae7db0e25029bab4f868462ab9fbf478378c0c66c7e1dc2abe9223ca2c9f13b7186fce8c36b1c0d3dc8926416be66688b0caa9a1cf727ec8b16e17d592802e7af024b2affa3ca03768b5a9abd6551c4deb0e5e7daf22d90efc2d5f9cbcd0605fac53633f96fdb3b5d6b49d9f33a8f6db7c2afdf9cc727, 'New product 3 added via admin console.', 'info'),
(239, '2024-12-19 09:28:08', 1, 'category_product_listing.php', 'cPath=1&pID=3', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(240, '2024-12-19 09:29:16', 1, 'product.php', 'action=new_product', '::1', 0, '', 0xab562a28ca4f294d2e892fa92c4855b2523254d2514a0e482cc980b213934b32f3f3809cbcd4f278a85aa55a00, 'Accessed page [product.php] with action=new_product. Review page_parameters and postdata for details.', 'info'),
(241, '2024-12-19 09:30:17', 1, 'product.php', 'cPath=1&action=new_product_preview', '::1', 0, '', 0xdd54c16edb300cfd15c1d7ad459cd643db5bda146db10d19666cbd141018497188c9924bc9498c22ff3ec949bac44eb09d7712453dea91e213df928aacac85e7bea9547293a4c9c7a404e71571015e159650398e727bb4453b2ed1095b9bf7b8c1c9433e235b761115a150dc590a44dd33e7c1d7ae4718b2e1b000d430d591b14dd4d43310be2645db24f7430c9401f816eeb94946ae76ec272eecd4da5f2ccdd8e72cbdb81fb1c997fb719645a6e13fa0d6efb77374a130d5293d7a05687db45cc9a70d07ef09a7b5efbd998715171adcb68e7e78706683abf3c175ff1d632c1aa18f421648be06dd4f14f4129a4d15dccdb1aad0145de657dff0a95d9de8c96b0dc6638058924130259abf2160d5633844d406fd699e1257aa2f45e50461e5d19a5db76f098c7ca11733ca7fe471fd46562817f416374fc62bcdee2c298659743c10547314ec0e48fe013c8ea3fd7df4352e57ece136aeb9b704858a66960e8393e5798b1ba3ab3434d14cb3f34fecc988684f2a45e0c3cbb2bc09bfaa8cbe6734d22e1d4b53f6814d1edb049f8142cebe8d9fcc662830b46c23caffa498f59186b682ddef6569a5d29d6f5c56a6e3a9482dd0d6e1ab9421fdcd219645983bb4d9d885a225a1575dadb4013cce0de8d2d4a477f2d93efc41ca4b85c5dc07efc57e9056a6f0f3c872b9ef5ea26cbd071f71bebbe120a3380337daef4dd176e249d92a7e38185e9ea5c3b3f43a59ff06, 'Accessed page [product.php] with action=new_product_preview. Review page_parameters and postdata for details.', 'info'),
(242, '2024-12-19 09:30:17', 1, 'product.php', 'cPath=1&action=new_product_preview', '::1', 1, '', 0xdd54c16edb300cfd15c1d7ad459cd643db5bda146db10d19666cbd141018497188c9924bc9498c22ff3ec949bac44eb09d7712453dea91e213df928aacac85e7bea9547293a4c9c7a404e71571015e159650398e727bb4453b2ed1095b9bf7b8c1c9433e235b761115a150dc590a44dd33e7c1d7ae4718b2e1b000d430d591b14dd4d43310be2645db24f7430c9401f816eeb94946ae76ec272eecd4da5f2ccdd8e72cbdb81fb1c997fb719645a6e13fa0d6efb77374a130d5293d7a05687db45cc9a70d07ef09a7b5efbd998715171adcb68e7e78706683abf3c175ff1d632c1aa18f421648be06dd4f14f4129a4d15dccdb1aad0145de657dff0a95d9de8c96b0dc6638058924130259abf2160d5633844d406fd699e1257aa2f45e50461e5d19a5db76f098c7ca11733ca7fe471fd46562817f416374fc62bcdee2c298659743c10547314ec0e48fe013c8ea3fd7df4352e57ece136aeb9b704858a66960e8393e5798b1ba3ab3434d14cb3f34fecc988684f2a45e0c3cbb2bc09bfaa8cbe6734d22e1d4b53f6814d1edb049f8142cebe8d9fcc662830b46c23caffa498f59186b682ddef6569a5d29d6f5c56a6e3a9482dd0d6e1ab9421fdcd219645983bb4d9d885a225a1575dadb4013cce0de8d2d4a477f2d93efc41ca4b85c5dc07efc57e9056a6f0f3c872b9ef5ea26cbd071f71bebbe120a3380337daef4dd176e249d92a7e38185e9ea5c3b3f43a59ff06, 'Success: File upload saved successfully Asus Vivobook 15 K513EA OLED551.jpg', 'notice'),
(243, '2024-12-19 09:30:24', 1, 'product.php', 'cPath=1&action=insert_product', '::1', 0, '', 0xdd54df4fdb3010fe57acbc6e544d2113e3ad5004689b3aadda7841b2aeb69bdee6d8e1ecb48d10ff3b76da8e26a162cf7bb2f3dd77f7dd2fe72929c9ca4a78eeeb522517499a7c4c0a705e1117e0556e0995e32877a61ddb71894ed8cafcf51b1e35f205d9a2cb280985e2ce5210eada9c075fb99e60c886c30a50c35c47c52651532d40f88a14ed927c75e1e882b4ea241751015abf9990e4f39a83f784f3caf7aaf2b0e14283db29f5dd03980dcf07c3cffd4aa32f1aa1dfa4ac907c05ba9f28e835d4db2ab85b6259a2c9bbca8fbee673bb39d2b5c70a8cc740b124c3480b34ef3160d35368332a83feb84e811b258f599bea0f0d85954ab7a616b0d2749092d40a6d15fa5e40be1b3d16795833da7ed895a235a1575de1c681c73581aecc5a61bef4013c3d44b532b95fc630672d32ca066d8d6db98fd0928c3bbded54ef55341b2c65d39fd1707476928e4ed256480345a8e12944bc48c6ae72ec17aeecdcda3f2ccdd8972c3dbd1eb3e9d7eb499645cdd13fb09e0f13504e10961eadd98b5c1218f9400f663cfb398be777b242b95044fcb8335e6976654931cc227043502e51b02b20f94ab89dc4fb8ff1b7789cb39bcb78cebca5d0fc78cdd25100d96cd6f026e84a0d75bca6d9e013bb3322dea7a522f061c1d9ac0ebf9f2262f768a45d3b96a6ec039bde3609de03859c7de33f5d2c506018edb617ff49318723ab48ef47b52bb265de3f8877b660f0bbcc93e717, 'Accessed page [product.php] with action=insert_product. Review page_parameters and postdata for details.', 'info'),
(244, '2024-12-19 09:30:24', 1, 'product.php', 'cPath=1&action=insert_product', '::1', 0, '', 0xdd54df4fdb3010fe57acbc6e544d2113e3ad5004689b3aadda7841b2aeb69bdee6d8e1ecb48d10ff3b76da8e26a162cf7bb2f3dd77f7dd2fe72929c9ca4a78eeeb522517499a7c4c0a705e1117e0556e0995e32877a61ddb71894ed8cafcf51b1e35f205d9a2cb280985e2ce5210eada9c075fb99e60c886c30a50c35c47c52651532d40f88a14ed927c75e1e882b4ea241751015abf9990e4f39a83f784f3caf7aaf2b0e14283db29f5dd03980dcf07c3cffd4aa32f1aa1dfa4ac907c05ba9f28e835d4db2ab85b6259a2c9bbca8fbee673bb39d2b5c70a8cc740b124c3480b34ef3160d35368332a83feb84e811b258f599bea0f0d85954ab7a616b0d2749092d40a6d15fa5e40be1b3d16795833da7ed895a235a1575de1c681c73581aecc5a61bef4013c3d44b532b95fc630672d32ca066d8d6db98fd0928c3bbded54ef55341b2c65d39fd1707476928e4ed256480345a8e12944bc48c6ae72ec17aeecdcda3f2ccdd8972c3dbd1eb3e9d7eb499645cdd13fb09e0f13504e10961eadd98b5c1218f9400f663cfb398be777b242b95044fcb8335e6976654931cc227043502e51b02b20f94ab89dc4fb8ff1b7789cb39bcb78cebca5d0fc78cdd25100d96cd6f026e84a0d75bca6d9e013bb3322dea7a522f061c1d9ac0ebf9f2262f768a45d3b96a6ec039bde3609de03859c7de33f5d2c506018edb617ff49318723ab48ef47b52bb265de3f8877b660f0bbcc93e717, 'New product 4 added via admin console.', 'info'),
(245, '2024-12-19 09:30:24', 1, 'category_product_listing.php', 'cPath=1&pID=4', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(246, '2024-12-19 09:30:50', 1, 'product.php', 'action=new_product', '::1', 0, '', 0xab562a28ca4f294d2e892fa92c4855b2523254d2514a0e482cc980b213934b32f3f3809cbcd4f278a85aa55a00, 'Accessed page [product.php] with action=new_product. Review page_parameters and postdata for details.', 'info'),
(247, '2024-12-19 09:32:46', 1, 'product.php', 'cPath=1&action=new_product_preview', '::1', 0, '', 0xdd54514fdb3010fe2b565e371009b40cde0a4580b6a9d3a28d1724eb6abbe9698e1dce4edb08f1df67a72d6b9356dbf39e6c7ffecef79dfdf95e938aacac85e7bea954729da4c9c7a404e71571015e159650398e72b3b5613b2ed1095b9bf7b8b3a39b7c46b6ec322a42a1b8b3141275f79c075fbb5ec2a086c30250c354c78cad5053cf40f89a146d44ee86182803f1359c739d8c5cedd84f5cd8a9b5bf583a609f07e9f9dd884dbedc8d2f073153f60facb7f7d339ba5098ea941e51015a1f2c57f269c3c17bc269ed7b77e661c58506b7a9a31f1ec0e170789a5df5ef31c6a211fa206581e46bd07da1a097d0acabe06e8e5585a6e8667ef10d9fdad5913779a9c1780c144b3218a644f33706ac7a19f619b5417f3c4f892bd5b7a27282b0f268cdf6b56f088c7ca66733ca7fe471fc46562817fc16178fc62bcd6e2d29869711b827a8e628d82d90fc437818c7f9f7d1d7387c62f73771ccbd2528549c0ed22c802ccf5bde185da5a189d374703a648f46c4f9a452043edc2ccb9bf0abca883da19176e9589ab20f6cf2d00a7c020a9a7d1b3f99cd506078b2b529ff9362de0e3c68a86eb0e786d24aa53bdfb8ac4c07a9482dd0d6e1ab9441fe7a13cb22f41d5a2fec42d192d0abae57da001efb0674d3d4a4b7f6d95cfc9ee4a5c262ee037abe1ba49529fc3c66b9d88597285b74ef23ceb727ec298a3d70edfd5e176d3b9e94ade3b3b3ece224cd4ed2abe4ed37, 'Accessed page [product.php] with action=new_product_preview. Review page_parameters and postdata for details.', 'info'),
(248, '2024-12-19 09:32:46', 1, 'product.php', 'cPath=1&action=new_product_preview', '::1', 1, '', 0xdd54514fdb3010fe2b565e371009b40cde0a4580b6a9d3a28d1724eb6abbe9698e1dce4edb08f1df67a72d6b9356dbf39e6c7ffecef79dfdf95e938aacac85e7bea954729da4c9c7a404e71571015e159650398e72b3b5613b2ed1095b9bf7b8b3a39b7c46b6ec322a42a1b8b3141275f79c075fbb5ec2a086c30250c354c78cad5053cf40f89a146d44ee86182803f1359c739d8c5cedd84f5cd8a9b5bf583a609f07e9f9dd884dbedc8d2f073153f60facb7f7d339ba5098ea941e51015a1f2c57f269c3c17bc269ed7b77e661c58506b7a9a31f1ec0e170789a5df5ef31c6a211fa206581e46bd07da1a097d0acabe06e8e5585a6e8667ef10d9fdad5913779a9c1780c144b3218a644f33706ac7a19f619b5417f3c4f892bd5b7a27282b0f268cdf6b56f088c7ca66733ca7fe471fc46562817fc16178fc62bcd6e2d29869711b827a8e628d82d90fc437818c7f9f7d1d7387c62f73771ccbd2528549c0ed22c802ccf5bde185da5a189d374703a648f46c4f9a452043edc2ccb9bf0abca883da19176e9589ab20f6cf2d00a7c020a9a7d1b3f99cd506078b2b529ff9362de0e3c68a86eb0e786d24aa53bdfb8ac4c07a9482dd0d6e1ab9441fe7a13cb22f41d5a2fec42d192d0abae57da001efb0674d3d4a4b7f6d95cfc9ee4a5c262ee037abe1ba49529fc3c66b9d88597285b74ef23ceb727ec298a3d70edfd5e176d3b9e94ade3b3b3ece224cd4ed2abe4ed37, 'Success: File upload saved successfully Asus Vivobook 15 K513EA OLED751.jpg', 'notice'),
(249, '2024-12-19 09:32:50', 1, 'product.php', 'cPath=1&action=insert_product', '::1', 0, '', 0xdd545d4fdb3014fd2b565e371009a46cbc158a006d53a7551b2f48d6adeda67773ec70edf44388ff8e9db6a349a8d8f39eec9c7bee3df7cb794a2ab2b2169efb75a5928b244d3e262538af880bf0aab084ca71945bd396edb844276c6dfefa9d1c34f219d9b2cba80885e2ce5210eada9c075fbb9e60c886c30250c35447c5265153cf40f89a146d937c75e1e882b4ea241751015abf9990e4d33507ef09a7b5ef55e561c58506b755eabb077030181c679ffb95465f3442bf495920f91a743f51d04b586faae06e8e5585a6e82a3ffa359fdad581ae3dd6603c068a2519465aa2798f01ab9e429b511bf487754a5c2979c81af0bc15bab452e9d6d40256990e52915aa0ad43df4b28b6a3c7b2086b469b0fbb50b424f4aa2bdc38f0b826d095592a2ce63e80a7fba856a6f0f318e6ac4546d9a0adb1cd77115a9271a7379deabd8a6683a56cfa939d646747697694b6421a28430d4f21e2453274b563bf7061a7d6fe6169cebee4e9e9f5908dbf5e8fcef3a899fd03eb793f01e50461e5d19a9dc82581910ff46086939f93787e272b940b45c48f3be39566579614c3f308dc10547314ec0a48be126e47f1fe63f82d1e9fd8cd653c27de52687ebce6691640369934bc11ba4ac33a5ed3fc78c0ee8c88f771a5087c5870365987df4f19b17b34d22e1d4b53f6818d6f9b04ef8142cebef11fcf6628308c76d38bffa498fd91d5a477a3da16d932ef1ec43b5b70fcbb2a92e717, 'Accessed page [product.php] with action=insert_product. Review page_parameters and postdata for details.', 'info'),
(250, '2024-12-19 09:32:50', 1, 'product.php', 'cPath=1&action=insert_product', '::1', 0, '', 0xdd545d4fdb3014fd2b565e371009a46cbc158a006d53a7551b2f48d6adeda67773ec70edf44388ff8e9db6a349a8d8f39eec9c7bee3df7cb794a2ab2b2169efb75a5928b244d3e262538af880bf0aab084ca71945bd396edb844276c6dfefa9d1c34f219d9b2cba80885e2ce5210eada9c075fbb9e60c886c30250c35447c5265153cf40f89a146d937c75e1e882b4ea241751015abf9990e4d33507ef09a7b5ef55e561c58506b755eabb077030181c679ffb95465f3442bf495920f91a743f51d04b586faae06e8e5585a6e82a3ffa359fdad581ae3dd6603c068a2519465aa2798f01ab9e429b511bf487754a5c2979c81af0bc15bab452e9d6d40256990e52915aa0ad43df4b28b6a3c7b2086b469b0fbb50b424f4aa2bdc38f0b826d095592a2ce63e80a7fba856a6f0f318e6ac4546d9a0adb1cd77115a9271a7379deabd8a6683a56cfa939d646747697694b6421a28430d4f21e2453274b563bf7061a7d6fe6169cebee4e9e9f5908dbf5e8fcef3a899fd03eb793f01e50461e5d19a9dc82581910ff46086939f93787e272b940b45c48f3be39566579614c3f308dc10547314ec0a48be126e47f1fe63f82d1e9fd8cd653c27de52687ebce6691640369934bc11ba4ac33a5ed3fc78c0ee8c88f771a5087c5870365987df4f19b17b34d22e1d4b53f6818d6f9b04ef8142cebef11fcf6628308c76d38bffa498fd91d5a477a3da16d932ef1ec43b5b70fcbb2a92e717, 'New product 5 added via admin console.', 'info'),
(251, '2024-12-19 09:32:50', 1, 'category_product_listing.php', 'cPath=1&pID=5', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(252, '2024-12-19 09:33:40', 1, 'product.php', 'action=new_product', '::1', 0, '', 0xab562a28ca4f294d2e892fa92c4855b2523254d2514a0e482cc980b213934b32f3f3809cbcd4f278a85aa55a00, 'Accessed page [product.php] with action=new_product. Review page_parameters and postdata for details.', 'info'),
(253, '2024-12-19 09:34:29', 1, 'product.php', 'cPath=1&action=new_product_preview', '::1', 0, '', 0xdd546d6fda3010fe2b56be6ead08a3ade83728a8437bc9b4ac6a3555b20ec7c0498e9d9e1d20aaf8efb503749080b6cffb64fbb93b3ff7fe1a1564b25238eeaa4246b7511c7d8c72b04e1217e0e4dc104acb31db8976da9667688529f5bb5de7ac90cfc8e44d8d8250486e0d79a2a6cc3a70a56d117a6f382c01154c5560ac1dd5e50c842b49d2cec943130db9577cf5ffdc4683f42165bfc7df8749f285c53d967c1d8fd8c3d355af138f07f5eb26ee79e3ee3feb6ede99385a1fa46ca421a002943a197ac6a71507e708a7a56be5cfc19a0b05761753dbdc83fd4efff2badfce69b0452dd4499525922b41b51d05b5826a1b05b70b2c0ad4f326f38babf8d4accfd4e7a504edd0ab18ca7cf3e4a8ffa601eb16c3b146a9d19de7c9712ddb6d29ad202c1c1abdaffc904067cff4ac4359c3f9838c90d6f75e784cb4938add19920c6f02704f502c50b03ba0ec8fc284d03ec9f0fe39f8168ef89add0fc3257586605e8b62f66bc8d27414ee23b48582aa867b971d36d122dc934212389f5c96567ec8f2803da2cecccab238661f58f2b9f6f111c8bbed6afb64364381be6adbeefc7fe2d99c28ab0ff0eaa827729349d518ecbcd00da420b94453fa81c9bdf35b21e673bf8968fb304b492b42279b1d531bf0b049a0495392da37d12ef7472eaf24ce17cea39f0e8d94d473b7082cbd437885598d1e8de362ffc39147612b6e27a0b557eb1d986575df773bddde45dcbd88fbd1e60d, 'Accessed page [product.php] with action=new_product_preview. Review page_parameters and postdata for details.', 'info'),
(254, '2024-12-19 09:34:29', 1, 'product.php', 'cPath=1&action=new_product_preview', '::1', 1, '', 0xdd546d6fda3010fe2b56be6ead08a3ade83728a8437bc9b4ac6a3555b20ec7c0498e9d9e1d20aaf8efb503749080b6cffb64fbb93b3ff7fe1a1564b25238eeaa4246b7511c7d8c72b04e1217e0e4dc104acb31db8976da9667688529f5bb5de7ac90cfc8e44d8d8250486e0d79a2a6cc3a70a56d117a6f382c01154c5560ac1dd5e50c842b49d2cec943130db9577cf5ffdc4683f42165bfc7df8749f285c53d967c1d8fd8c3d355af138f07f5eb26ee79e3ee3feb6ede99385a1fa46ca421a002943a197ac6a71507e708a7a56be5cfc19a0b05761753dbdc83fd4efff2badfce69b0452dd4499525922b41b51d05b5826a1b05b70b2c0ad4f326f38babf8d4accfd4e7a504edd0ab18ca7cf3e4a8ffa601eb16c3b146a9d19de7c9712ddb6d29ad202c1c1abdaffc904067cff4ac4359c3f9838c90d6f75e784cb4938add19920c6f02704f502c50b03ba0ec8fc284d03ec9f0fe39f8168ef89add0fc3257586605e8b62f66bc8d27414ee23b48582aa867b971d36d122dc934212389f5c96567ec8f2803da2cecccab238661f58f2b9f6f111c8bbed6afb64364381be6adbeefc7fe2d99c28ab0ff0eaa827729349d518ecbcd00da420b94453fa81c9bdf35b21e673bf8968fb304b492b42279b1d531bf0b049a0495392da37d12ef7472eaf24ce17cea39f0e8d94d473b7082cbd437885598d1e8de362ffc39147612b6e27a0b557eb1d986575df773bddde45dcbd88fbd1e60d, 'Success: File upload saved successfully ASUS ZENBOOK 14 OLED UX5401EA OLED714.jpg', 'notice'),
(255, '2024-12-19 09:34:31', 1, 'product.php', 'cPath=1&action=insert_product', '::1', 0, '', 0xdd545b4fdb3014fe2b565e3750d31550796b296268974eeb106842b24e6d373d93638763a71721fe3b769a0e92508de73dd9fecee5fbce25794c0ab2b2149efb6da192f3244d3e263938af880bf02ab384ca7194b5a9f6765ca213b6347fe37a078d7c41366f7b14844271672910b56dce832f5d8730a8e1b002d430d791b1126aca05085f92a25ae44b084717a8554b5c440568fda620c9e75b0ede13ce4bdfa9cac3860b0dae66ea860770d81b1e9f0ebb95c6583442bfe9b242f225e8ae50d06bd8eeaae06e894581266b333ff82d9fdbcd81ae3d94603c06174b328c3447f32f0fd874189a1ea5417f9827c78d9287ac013f69a4cead54ba31b58015a68514a45668cbd0f71cb27af4986761cd68f7b02b456b42afdac455008f6b026d9ab5c26ce903f8e935aa95c9fc32a619349c515668636ccb7d860665dce95da73a5f45b5c15256fde9f7fa83a3b47f9436521ac8430d8f21e379329addccd8efcbefe3e9f40b4b076cfaf572c26eee4e06bdf47254bdce2a91fd77fb3ebd16a39c202c3c5ab3271c1318794ff726668be70fb242b950507c5c1baf34bbb0a4189e45e08aa058a2601740f2c5e19ad0dda9f8fe39fa168ff4945d8de365e62d85695418fb3566b3d924de27e80a0ddb0a1e1cf7d8b511f13e2d14810ffbce66dbf037ca23768b46dab56369ca3eb0e9e74ae32d5090edabf8e9628102c3a4774df97fea793db892f47e60759d0df3fe1379d7461cff29b2e4e919, 'Accessed page [product.php] with action=insert_product. Review page_parameters and postdata for details.', 'info'),
(256, '2024-12-19 09:34:31', 1, 'product.php', 'cPath=1&action=insert_product', '::1', 0, '', 0xdd545b4fdb3014fe2b565e3750d31550796b296268974eeb106842b24e6d373d93638763a71721fe3b769a0e92508de73dd9fecee5fbce25794c0ab2b2149efb6da192f3244d3e263938af880bf02ab384ca7194b5a9f6765ca213b6347fe37a078d7c41366f7b14844271672910b56dce832f5d8730a8e1b002d430d791b1126aca05085f92a25ae44b084717a8554b5c440568fda620c9e75b0ede13ce4bdfa9cac3860b0dae66ea860770d81b1e9f0ebb95c6583442bfe9b242f225e8ae50d06bd8eeaae06e894581266b333ff82d9fdbcd81ae3d94603c06174b328c3447f32f0fd874189a1ea5417f9827c78d9287ac013f69a4cead54ba31b58015a68514a45668cbd0f71cb27af4986761cd68f7b02b456b42afdac455008f6b026d9ab5c26ce903f8e935aa95c9fc32a619349c515668636ccb7d860665dce95da73a5f45b5c15256fde9f7fa83a3b47f9436521ac8430d8f21e379329addccd8efcbefe3e9f40b4b076cfaf572c26eee4e06bdf47254bdce2a91fd77fb3ebd16a39c202c3c5ab3271c1318794ff726668be70fb242b950507c5c1baf34bbb0a4189e45e08aa058a2601740f2c5e19ad0dda9f8fe39fa168ff4945d8de365e62d85695418fb3566b3d924de27e80a0ddb0a1e1cf7d8b511f13e2d14810ffbce66dbf037ca23768b46dab56369ca3eb0e9e74ae32d5090edabf8e9628102c3a4774df97fea793db892f47e60759d0df3fe1379d7461cff29b2e4e919, 'New product 6 added via admin console.', 'info'),
(257, '2024-12-19 09:34:32', 1, 'category_product_listing.php', 'cPath=1&pID=6', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(258, '2024-12-19 09:36:08', 1, 'product.php', 'action=new_product', '::1', 0, '', 0xab562a28ca4f294d2e892fa92c4855b2523254d2514a0e482cc980b213934b32f3f3809cbcd4f278a85aa55a00, 'Accessed page [product.php] with action=new_product. Review page_parameters and postdata for details.', 'info'),
(259, '2024-12-19 09:36:58', 1, 'product.php', 'cPath=1&action=new_product_preview', '::1', 0, '', 0xe554514fdb3010fe2b565e3750931218bc51aa653cb0a2840926215957c76d4f4aec7076da6688ff8e9d06d426a0ed7d4fb6bffbcedfddf97ccf41453aaf85e5b6a964701184c1d7a00463257101562e35a1341cf3ced4b10dcfd1085dab77bfd1a746be205df61915a190dc6872427d9bb1606b331074d170580316302fbc621ba8aa17206c4d92ba20f75d14948ef8eceeb9082eb35f194b6709cbeed2eb079684314be2709c5eb1f46c1c4fce9299f38cfe8df8f2aec1d1b8f464af001e1550141f269df379c3c15ac2796d0795b3b0e5a200d3653374f76519c5d1f1e9b76139bd332a517ccc5923d91a8a61a8506ca0d9e5c1cd0aab0ad5b2affd641b3ed7db4fdee6a90665d15134e5ae714a547f63c076a070c8a815dacf754adcca614b4a23082b8b5abdbdfa8440e58ff4a8fcabfaf596b490c6f55d0bde4c59dafc918a9df9634250ad50b02ba0d6e7e71a730496c8ef9a8464e9ddc378148fd8094b26de9c5edef8253cedce99d5044be9b77118399065d9d49fa668aa029a961c1f9fb26b25fc7e564902eb6acdb2c6fdb7d263f7a872bd312c0cd91736fbd1867c0fe4b2b0adff6cb1408150b088fd96408e14ee36b7921652d8ae87ffbbb45f3e68125787f8a0c34a9dcba23722ca4af5908ae41a75ed3e60e9d2da19b15cba9946bb835e4bda105ad9efbfd681fb99047d999a8ab796ec9ee820e48dc4e5ca3a74bcef5448b5b42baf72b20f6f306fd1f37d70f576c341447ebeeefed36042b7d334cfdb5f148da293a3303a0acf839757, 'Accessed page [product.php] with action=new_product_preview. Review page_parameters and postdata for details.', 'info'),
(260, '2024-12-19 09:36:58', 1, 'product.php', 'cPath=1&action=new_product_preview', '::1', 1, '', 0xe554514fdb3010fe2b565e3750931218bc51aa653cb0a2840926215957c76d4f4aec7076da6688ff8e9d06d426a0ed7d4fb6bffbcedfddf97ccf41453aaf85e5b6a964701184c1d7a00463257101562e35a1341cf3ced4b10dcfd1085dab77bfd1a746be205df61915a190dc6872427d9bb1606b331074d170580316302fbc621ba8aa17206c4d92ba20f75d14948ef8eceeb9082eb35f194b6709cbeed2eb079684314be2709c5eb1f46c1c4fce9299f38cfe8df8f2aec1d1b8f464af001e1550141f269df379c3c15ac2796d0795b3b0e5a200d3653374f76519c5d1f1e9b76139bd332a517ccc5923d91a8a61a8506ca0d9e5c1cd0aab0ad5b2affd641b3ed7db4fdee6a90665d15134e5ae714a547f63c076a070c8a815dacf754adcca614b4a23082b8b5abdbdfa8440e58ff4a8fcabfaf596b490c6f55d0bde4c59dafc918a9df9634250ad50b02ba0d6e7e71a730496c8ef9a8464e9ddc378148fd8094b26de9c5edef8253cedce99d5044be9b77118399065d9d49fa668aa029a961c1f9fb26b25fc7e564902eb6acdb2c6fdb7d263f7a872bd312c0cd91736fbd1867c0fe4b2b0adff6cb1408150b088fd96408e14ee36b7921652d8ae87ffbbb45f3e68125787f8a0c34a9dcba23722ca4af5908ae41a75ed3e60e9d2da19b15cba9946bb835e4bda105ad9efbfd681fb99047d999a8ab796ec9ee820e48dc4e5ca3a74bcef5448b5b42baf72b20f6f306fd1f37d70f576c341447ebeeefed36042b7d334cfdb5f148da293a3303a0acf839757, 'Success: File upload saved successfully ASUS ROG STRIX G15 G513RC R735B7GO.jpg', 'notice'),
(261, '2024-12-19 09:37:01', 1, 'product.php', 'cPath=1&action=insert_product', '::1', 0, '', 0xe5544d6f9b4010fd2b2bae6d228343d2e6960f95e6903a825449a548abf1b2c653c12e1916db34ca7fef2ec6ad8158e9bda7dd7df366de7cc18b57924e6b61b8694ae99d7bbef7d12ba03292b80023334d282b8e6967ead8154fb112ba567ffc26078d7c41ba18324a422179a5c90a0d6d9501535723419b0d8715600ef3dc29b689aa7a01c2d424a94bf2af0bc7ca4acb41720e1590e76f2694f279c3c118c2796d465519d8709143d5298ddd5dca9330383efd342ed539a312f9db9c1592a9211fa70af91a9a6d1dbc5a6259a2ca86dacfa6e173bd39d0b7e71a94414bd194daa116a8de63c066a4d067d40acd619d0237323d64b578d80b5de854e6bdb959ac5403a424b9425ddbce179075c3c722b38b46db875e495a131a39146e1db85b1418caac25664b63c1e93e9a4b9599a50b73d22363daa29ff7c1e52e424fd26df5b653a3efa2dde1346dfb134c8293233f38f27b211514b686171bf1dcbb48be272c9e452cb98f6f1e59e4872c0afd697cc5e2b369787916cdac67f06fc4d7fd346425084b835aeda42e0954fa444fca8572e71d69212b5b4a0bde5eb3b8f925153b73cf88a05ca2605740adcfb715a6082c925f3409c9e2fbc7e9249cb013165d3a737c71eb0effb47b2746931d8abb867e60419624d7ee758d559943d392c3e35376a384bbcf4a4960ece2b3a4b13fa6c2610fa852bdae98efb30f6cf6b54df901c856615affd9628102216701fb21812cc9df5eee242da4305de3febbb2f7d7a0a67c37feae1d3df3ee537b7fb98e7f9699f7fa1b, 'Accessed page [product.php] with action=insert_product. Review page_parameters and postdata for details.', 'info'),
(262, '2024-12-19 09:37:01', 1, 'product.php', 'cPath=1&action=insert_product', '::1', 0, '', 0xe5544d6f9b4010fd2b2bae6d228343d2e6960f95e6903a825449a548abf1b2c653c12e1916db34ca7fef2ec6ad8158e9bda7dd7df366de7cc18b57924e6b61b8694ae99d7bbef7d12ba03292b80023334d282b8e6967ead8154fb112ba567ffc26078d7c41ba18324a422179a5c90a0d6d9501535723419b0d8715600ef3dc29b689aa7a01c2d424a94bf2af0bc7ca4acb41720e1590e76f2694f279c3c118c2796d465519d8709143d5298ddd5dca9330383efd342ed539a312f9db9c1592a9211fa70af91a9a6d1dbc5a6259a2ca86dacfa6e173bd39d0b7e71a94414bd194daa116a8de63c066a4d067d40acd619d0237323d64b578d80b5de854e6bdb959ac5403a424b9425ddbce179075c3c722b38b46db875e495a131a39146e1db85b1418caac25664b63c1e93e9a4b9599a50b73d22363daa29ff7c1e52e424fd26df5b653a3efa2dde1346dfb134c8293233f38f27b211514b686171bf1dcbb48be272c9e452cb98f6f1e59e4872c0afd697cc5e2b369787916cdac67f06fc4d7fd346425084b835aeda42e0954fa444fca8572e71d69212b5b4a0bde5eb3b8f925153b73cf88a05ca2605740adcfb715a6082c925f3409c9e2fbc7e9249cb013165d3a737c71eb0effb47b2746931d8abb867e60419624d7ee758d559943d392c3e35376a384bbcf4a4960ece2b3a4b13fa6c2610fa852bdae98efb30f6cf6b54df901c856615affd9628102216701fb21812cc9df5eee242da4305de3febbb2f7d7a0a67c37feae1d3df3ee537b7fb98e7f9699f7fa1b, 'New product 7 added via admin console.', 'info'),
(263, '2024-12-19 09:37:01', 1, 'category_product_listing.php', 'cPath=1&pID=7', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(264, '2024-12-19 09:37:20', 1, 'category_product_listing.php', 'cPath=2', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(265, '2024-12-19 09:38:50', 1, 'product.php', 'action=new_product', '::1', 0, '', 0xab562a28ca4f294d2e892fa92c4855b2523254d2514a0e482cc900b28d80ecc4e492ccfc3c20272fb53c1eaa56a91600, 'Accessed page [product.php] with action=new_product. Review page_parameters and postdata for details.', 'info'),
(266, '2024-12-19 09:40:20', 1, 'product.php', 'cPath=2&action=new_product_preview', '::1', 0, '', 0xdd546d6fda3010fe2b56be6ead484a99da6f14ba0e691355a9d44daa641db681931c3b3d3bbca8e2bfcf0ea18504b4effb94f8b9e77ccff95ede9382ac2c85e77e53a8e4364993af490ece2be202bc9a5b42e538ca60ca82a9663b2ed1095b9a0fbfce59239f91cd9b8c825028ee2c85404d9bf3e04b576bf9bc33a8e1b004d430d5316225d4943310be2445b5c84317037920be877b6e93fee0fe894d5e46df9fd9151bffbc1f06627612df7edcc0d105f1aa915e4405687d3225c9a71b0ede134e4bdf7a170f6b2e34b85a6bdb3d80bd6fbdcb9b6efbada22f1aa14f529648be04dd160a7a059b5d16dc2db028d0cc9b91dffc864fedfaccbbbf95603c068a25199a2247f32f06ac5b118e19a5417f3e4e8e6b255bd5574e10161eadd957f48ec0c8577a35b184f1fb485628177a2a1e46c62bcd069614c3eb083c10140b146c00243f092342f75bc5f353ff57fca43df670177f26de12cc2bd3759ad5e0105da1615311bb971d363222fe8f0b45e0c3d3b2c9268c4e1eb11734d2ae1c4b53f6858d7f4c2a0c2888f695ff78364381a059c6fe28a040ea0f1feba6fc2f53db9e2876b351722b956e4c715e980652905aa22dc314e5218d9d11f379583bb43bd8a5a215a157cd36aa1c785c1bd00c5392de77565d8523c52b85f3850fe8d5a1935666ee1731cad138ae5056e8cd21b8d8df70a428aec0dd58b49668b5f0a4ac8621eb64dd8b34bb486f92ed5f, 'Accessed page [product.php] with action=new_product_preview. Review page_parameters and postdata for details.', 'info'),
(267, '2024-12-19 09:40:20', 1, 'product.php', 'cPath=2&action=new_product_preview', '::1', 1, '', 0xdd546d6fda3010fe2b56be6ead484a99da6f14ba0e691355a9d44daa641db681931c3b3d3bbca8e2bfcf0ea18504b4effb94f8b9e77ccff95ede9382ac2c85e77e53a8e4364993af490ece2be202bc9a5b42e538ca60ca82a9663b2ed1095b9a0fbfce59239f91cd9b8c825028ee2c85404d9bf3e04b576bf9bc33a8e1b004d430d5316225d4943310be2445b5c84317037920be877b6e93fee0fe894d5e46df9fd9151bffbc1f06627612df7edcc0d105f1aa915e4405687d3225c9a71b0ede134e4bdf7a170f6b2e34b85a6bdb3d80bd6fbdcb9b6efbada22f1aa14f529648be04dd160a7a059b5d16dc2db028d0cc9b91dffc864fedfaccbbbf95603c068a25199a2247f32f06ac5b118e19a5417f3e4e8e6b255bd5574e10161eadd957f48ec0c8577a35b184f1fb485628177a2a1e46c62bcd069614c3eb083c10140b146c00243f092342f75bc5f353ff57fca43df670177f26de12cc2bd3759ad5e0105da1615311bb971d363222fe8f0b45e0c3d3b2c9268c4e1eb11734d2ae1c4b53f6858d7f4c2a0c2888f695ff78364381a059c6fe28a040ea0f1feba6fc2f53db9e2876b351722b956e4c715e980652905aa22dc314e5218d9d11f379583bb43bd8a5a215a157cd36aa1c785c1bd00c5392de77565d8523c52b85f3850fe8d5a1935666ee1731cad138ae5056e8cd21b8d8df70a428aec0dd58b49668b5f0a4ac8621eb64dd8b34bb486f92ed5f, 'Success: File upload saved successfully ACER SWIFT 3 OLED.jpg', 'notice'),
(268, '2024-12-19 09:40:23', 1, 'product.php', 'cPath=2&action=insert_product', '::1', 0, '', 0xdd545d4fdb3014fd2b565e372a12a013bc4161acd2a6223a894d42b26e6d37bd9363876ba71f42fc77ec341d4dd26aef7bb27deeb9f7dcafe43529c9ca4a78ee37a54aae9234f99c14e0bc222ec0abdc122ac7510653164c0ddb71894ed8cafcf53b3d6ae473b2459751120ac59da520d4b5390fbe724d2e1f3143361c96801a663a2ad6899a6a0ec257a4a849f2c385a30bd2aa935c4405687d3021c9671b0ede13ce2adfabcac39a0b0dae51eabb0770f86538b83cef571a7dd1087d90b244f215e87ea2a057b0d956c1dd02cb124dde557ef11b3eb3eb235d7ba9c0780c144b328cb440f32f06ac7b0a6d4665d01fd72970ade4316b377261a5d2ada105ac341da424b5445b85b617903793c7220f5b46db875d2a5a117ad5d5ad1d78dc12e8caac14e60b1fc0b37d542b93fb450cd31ad00a658d5eee838b5d8496645ce96da37a1f45bdc052d6edc94eb3f393343b495b210d14a186d710f12ab91edd3db2e9d3f8eb4f76c626dfef6e03313b88bfed8b2827084b8fd6ec02dd1018f94ccf267ac6f381ac502e241a1f63e39566234b8ae14504ee09ca050a3602921f8431a1fba5e2fbf1fa473cd221bbbf8997a9b714ba1caf1769d680b7e84a0d9b9a783e38656323e27d522a021f96984d37e1175344ec098db42bc7d2947d62936fd31a030a49fbda7f329fa340d02c63bf1550205ddf3e34bdf82f4bdb1f67457a37c6a6e49679f741f47662f0a7cc93b777, 'Accessed page [product.php] with action=insert_product. Review page_parameters and postdata for details.', 'info');
INSERT INTO `admin_activity_log` (`log_id`, `access_date`, `admin_id`, `page_accessed`, `page_parameters`, `ip_address`, `flagged`, `attention`, `gzpost`, `logmessage`, `severity`) VALUES
(269, '2024-12-19 09:40:23', 1, 'product.php', 'cPath=2&action=insert_product', '::1', 0, '', 0xdd545d4fdb3014fd2b565e372a12a013bc4161acd2a6223a894d42b26e6d37bd9363876ba71f42fc77ec341d4dd26aef7bb27deeb9f7dcafe43529c9ca4a78ee37a54aae9234f99c14e0bc222ec0abdc122ac7510653164c0ddb71894ed8cafcf53b3d6ae473b2459751120ac59da520d4b5390fbe724d2e1f3143361c96801a663a2ad6899a6a0ec257a4a849f2c385a30bd2aa935c4405687d3021c9671b0ede13ce2adfabcac39a0b0dae51eabb0770f86538b83cef571a7dd1087d90b244f215e87ea2a057b0d956c1dd02cb124dde557ef11b3eb3eb235d7ba9c0780c144b328cb440f32f06ac7b0a6d4665d01fd72970ade4316b377261a5d2ada105ac341da424b5445b85b617903793c7220f5b46db875d2a5a117ad5d5ad1d78dc12e8caac14e60b1fc0b37d542b93fb450cd31ad00a658d5eee838b5d8496645ce96da37a1f45bdc052d6edc94eb3f393343b495b210d14a186d710f12ab91edd3db2e9d3f8eb4f76c626dfef6e03313b88bfed8b2827084b8fd6ec02dd1018f94ccf267ac6f381ac502e241a1f63e39566234b8ae14504ee09ca050a3602921f8431a1fba5e2fbf1fa473cd221bbbf8997a9b714ba1caf1769d680b7e84a0d9b9a783e38656323e27d522a021f96984d37e1175344ec098db42bc7d2947d62936fd31a030a49fbda7f329fa340d02c63bf1550205ddf3e34bdf82f4bdb1f67457a37c6a6e49679f741f47662f0a7cc93b777, 'New product 8 added via admin console.', 'info'),
(270, '2024-12-19 09:40:24', 1, 'category_product_listing.php', 'cPath=2&pID=8', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(271, '2024-12-19 09:40:30', 1, 'product.php', 'action=new_product', '::1', 0, '', 0xab562a28ca4f294d2e892fa92c4855b2523254d2514a0e482cc900b28d80ecc4e492ccfc3c20272fb53c1eaa56a91600, 'Accessed page [product.php] with action=new_product. Review page_parameters and postdata for details.', 'info'),
(272, '2024-12-19 09:41:41', 1, 'product.php', 'cPath=2&action=new_product_preview', '::1', 0, '', 0xdd54c16e1a3110fd156baf6d229642557223344a911a11c1a13d44b206db2c2379edcdd80bac22febdf6b224b00bedbd27db6f663c6f3ccff396146465293cf755a192bb244d3e273938af880bf02ab384ca7194c1d40fa6c6db71894ed8d2bcc7f5ae1af98a6cdef6280885e2ce5248d4b6390fbe740d978f3b031b0e1b400d4b1d33d6444db902e14b52d4903c0d319007c7b770cf5d329e3cccd978f13c9d3fb0215bfc9c3eb1f1301d04f7fe5facfbf7db38ba50886a951a51015a5f2c4ff265c5c17bc265e93b6fe461c78506d7f0ee860770d81bdd7e4dbbef1663d1087dd16583e44bd05da2a0b7501daae06e8d4581266b677ef5155fdadd951ebc96603c06174b32082447f32f0fd875329c7b9406fdf53c39ee94ec284139415878b4e6d8dd7b02235fe8c5c446c6f599ac502ee82b1ea6c62bcd269614c361041e098a350a3601921f0e5342f75bc5f37cfc14976fecf13eae0b6f09b2da324cfb0df81d5da1a18adb7470db635323e27e5628021f5e962daaf08bf288fd4223edd6b134659fd8ecc7a2c68002675fc7cf562b14185a7610e37f52ccfe42436bc19ef632b752e9d6b7cd0bd3420a521bb465f82a79a07e30629e8539438783dd28da127ad5d64a1dc0e39c80769a92f4513ecdc39f51de2accd63ea05f4e83b432995fc72c8353788bb24647a7e0fa78c319a338f30edaef4ccd7ac249592bbedfeb0f6ed2fe4d3a4af67f00, 'Accessed page [product.php] with action=new_product_preview. Review page_parameters and postdata for details.', 'info'),
(273, '2024-12-19 09:41:41', 1, 'product.php', 'cPath=2&action=new_product_preview', '::1', 1, '', 0xdd54c16e1a3110fd156baf6d229642557223344a911a11c1a13d44b206db2c2379edcdd80bac22febdf6b224b00bedbd27db6f663c6f3ccff396146465293cf755a192bb244d3e273938af880bf02ab384ca7194c1d40fa6c6db71894ed8d2bcc7f5ae1af98a6cdef6280885e2ce5248d4b6390fbe740d978f3b031b0e1b400d4b1d33d6444db902e14b52d4903c0d319007c7b770cf5d329e3cccd978f13c9d3fb0215bfc9c3eb1f1301d04f7fe5facfbf7db38ba50886a951a51015a5f2c4ff265c5c17bc265e93b6fe461c78506d7f0ee860770d81bdd7e4dbbef1663d1087dd16583e44bd05da2a0b7501daae06e8d4581266b677ef5155fdadd951ebc96603c06174b32082447f32f0fd875329c7b9406fdf53c39ee94ec284139415878b4e6d8dd7b02235fe8c5c446c6f599ac502ee82b1ea6c62bcd269614c361041e098a350a3601921f0e5342f75bc5f37cfc14976fecf13eae0b6f09b2da324cfb0df81d5da1a18adb7470db635323e27e5628021f5e962daaf08bf288fd4223edd6b134659fd8ecc7a2c68002675fc7cf562b14185a7610e37f52ccfe42436bc19ef632b752e9d6b7cd0bd3420a521bb465f82a79a07e30629e8539438783dd28da127ad5d64a1dc0e39c80769a92f4513ecdc39f51de2accd63ea05f4e83b432995fc72c8353788bb24647a7e0fa78c319a338f30edaef4ccd7ac249592bbedfeb0f6ed2fe4d3a4af67f00, 'Success: File upload saved successfully ACER ASPIRE 5 SLIM A514.png', 'notice'),
(274, '2024-12-19 09:41:44', 1, 'product.php', 'cPath=2&action=insert_product', '::1', 0, '', 0xdd54c96edb3010fd1542d73686a5da45939be306a981060ee2437308408c495a1e80229521e50541febda42cd79614b7f79e48be59de9b457a4b4ab2b2129efb7da9929b244d3e270538af880bf02ab784ca7194c1940553e3edb844276c65fec40d2f1af98a6cd1f5280985e2ce5220eada9c075fb946cb296750c36103a861a923632dd4542b10be22458dc853084717a855475c440568fda120c9977b0ede132e2bdfabcac38e0b0dae61ea8707703cbc1e7c4dfb95c65834427fe8b241f215e8be50d05bd81faae06e8d658926ef32bffa3d5fdadd85aebd56603c06174b328cb440f32f0fd8f518da1e95417f99a7c09d9297ac75f5e786c24aa55b530b58693a48496a83b60a7d2f206f468f451ed68c0e0fbb51b425f4aa4b5c07f0b826d0a5d92accd73e805fce51ad4ceed731cda8e58cb246afcfc1f531438b32eef4a153bdafa2de6029ebfe64c36c74956657692ba58122d4f01632de2493e9dd139b2c1e674f776ccc163f670f6c32ae65657fb1be9f132a27084b8fd61c93de1218f9422f26c6c7f391ac502e888e8f99f14ab3a925c5701c817b82728d824d81e4c96146e89e557c3f4d1ee2f18ddddfc673e12d8586c7eb38cd1af03bba52c33e5ed3d160c86646c4fbbc54043e2c345becc3efa688d82f34d26e1d4b53f689cd7f2c6a0c2868f675fc7cb542816194871efc27c59c8fac227d1c555364cb7cfc002e4c7f5086ffc3fb6f, 'Accessed page [product.php] with action=insert_product. Review page_parameters and postdata for details.', 'info'),
(275, '2024-12-19 09:41:44', 1, 'product.php', 'cPath=2&action=insert_product', '::1', 0, '', 0xdd54c96edb3010fd1542d73686a5da45939be306a981060ee2437308408c495a1e80229521e50541febda42cd79614b7f79e48be59de9b457a4b4ab2b2129efb7da9929b244d3e270538af880bf02ab784ca7194c1940553e3edb844276c65fec40d2f1af98a6cd1f5280985e2ce5220eada9c075fb946cb296750c36103a861a923632dd4542b10be22458dc853084717a855475c440568fda120c9977b0ede132e2bdfabcac38e0b0dae61ea8707703cbc1e7c4dfb95c65834427fe8b241f215e8be50d05bd81faae06e8d658926ef32bffa3d5fdadd85aebd56603c06174b328cb440f32f0fd8f518da1e95417f99a7c09d9297ac75f5e786c24aa55b530b58693a48496a83b60a7d2f206f468f451ed68c0e0fbb51b425f4aa4b5c07f0b826d0a5d92accd73e805fce51ad4ceed731cda8e58cb246afcfc1f531438b32eef4a153bdafa2de6029ebfe64c36c74956657692ba58122d4f01632de2493e9dd139b2c1e674f776ccc163f670f6c32ae65657fb1be9f132a27084b8fd61c93de1218f9422f26c6c7f391ac502e888e8f99f14ab3a925c5701c817b82728d824d81e4c96146e89e557c3f4d1ee2f18ddddfc673e12d8586c7eb38cd1af03bba52c33e5ed3d160c86646c4fbbc54043e2c345becc3efa688d82f34d26e1d4b53f689cd7f2c6a0c2868f675fc7cb542816194871efc27c59c8fac227d1c555364cb7cfc002e4c7f5086ffc3fb6f, 'New product 9 added via admin console.', 'info'),
(276, '2024-12-19 09:41:44', 1, 'category_product_listing.php', 'cPath=2&pID=9', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(277, '2024-12-19 09:41:52', 1, 'product.php', 'page=1&cPath=2&product_type=1&pID=8&action=new_product', '::1', 0, '', 0x8b8e0500, 'Accessed page [product.php] with action=new_product. Review page_parameters and postdata for details.', 'info'),
(278, '2024-12-19 09:41:59', 1, 'product.php', 'cPath=2&pID=8&action=new_product_preview&page=1', '::1', 0, '', 0xdd54db6edb300cfd15c1af5b0bdb493b246f69d3750136a4680674030a088ca4381c64c9a5e45c50f4df2739ee257182bdefc93279481e5e9f938aacac85e77e5ba9649864c9e7a404e71571015e159650398e32a8f2a06ad18e4b74c2d6e6cd2e3da9e40bb2e521a222148a3b4b2150d05d7eb93c1ff4d33d88f3e06bd7527a771d487158016a98eb18b8e16bea05085f93a296eb47130365003e073fc364747d73cf660f93af3f598f4dbfdf8c03303f2a7f79f3c0d1851cd44196512a40eba399493edf72f09e705efb4e793c6cb8d0e05aae5df31315d9152d5aa311fa0df411b242f235e82e55d06bd8eef2e06e895585a6388cfde4b77c6e37272aff5483f118209664988e12cdbf10b0e944d847d406fde938256e94ecf45f39415879b4e6b5a75704463ed2a3894d8cdf3bb242b9305cf16762bcd2ecda9262781105b704d51205bb0692ef8009a1fba5e2fffde847fc6497ecf62a3e66de12148dea22cb5be1185da561db00fbe7299b1811dfd34a11f8505a36db861d2aa3ec018db46bc7b28c7d62d36fb346061448fbc67eba58a040d02c67bf1550008dc677ed58fe97a9bd1c6976c8f5626f524a2b953e58e4b2323b099681751805adbacb55915aa1adc36e45d0b1d53eff53158d93221c2ada79b42b456b42af0ee76d172a5e1838a453937e1dc1b65d7ba9ad15164b1fa4bd8f465a99c22f639450db747fbfd7281bd5a0a359befaca3aaa784377ebd4b9c2cda994b259a23ccdfb67597e960d583a18f6d361de4b5efe02, 'Accessed page [product.php] with action=new_product_preview. Review page_parameters and postdata for details.', 'info'),
(279, '2024-12-19 09:42:00', 1, 'product.php', 'cPath=2&pID=8&action=update_product&page=1', '::1', 0, '', 0xdd54db6edb300cfd1521af5b0bdb4d3b246fbdad0bb0214533a01b50406024c5e1204b2e25e782a2ff5ec971da384eb6f73d593ee7903c242dbff44ab2b2129efb75a97ac35edafbdc2bc079455c8057b925548ea30c5416a846edb844276c65dee392a3249f912df61525a150dc590a850277f1e5e274d04f5a12e7c157aeb1f4913a98e2b000d430d5b170edd7543310be22458dd78f108e2e38507b1e232a40eb83be249fae39784f38ad7ca7390f2b2e34b8a65237fc483f9b9663341aa1df45bb920592af4077ad825ec27ad30777732c4b34f97eed67bfe653bb3a32b7e70a8cc720b124c36e0b34ff52c0aa53a1ada80cfae3750a5c29798c0df8792b7561a5d2adbd05ac341b040bc8150f02d5dd46496a81b60acb88a2c05e5edf3eb0c9e3e8eb4f76c6c6df6f6f4eff94799d240fdf256d32da85a225a157fb0637a5e20705fb76960af3b90fe0d92eaa95c9fd3ca6e99f26497be34b943535e830f36daeb443c53bb11970e756d59fbe94f558b324eb9fa4d9493a60c960d84f8659cb968122f4f6129a3b309120cc0ee2afbbd5941384a5476bb689ae088c7ca2271323e3f39eac502e388e2f23e39566d79614c3f308dc11947314ec1a487e084684ee978aef0f973fe223bd607757f130f196c2f4e3f13ccd1af0065da9615d0bc384d9c888781e978ac0875bc026ebf0b32a22f68846daa56369ca3eb1f1b7498d0105d3be8e1fcf66281034cbd86f0514449737f7cd2cfecbd676d75991deaeb169b945fffdf6bcbe01, 'Accessed page [product.php] with action=update_product. Review page_parameters and postdata for details.', 'info'),
(280, '2024-12-19 09:42:00', 1, 'product.php', 'cPath=2&pID=8&action=update_product&page=1', '::1', 0, '', 0xdd54db6edb300cfd1521af5b0bdb4d3b246fbdad0bb0214533a01b50406024c5e1204b2e25e782a2ff5ec971da384eb6f73d593ee7903c242dbff44ab2b2129efb75a97ac35edafbdc2bc079455c8057b925548ea30c5416a846edb844276c65dee392a3249f912df61525a150dc590a850277f1e5e274d04f5a12e7c157aeb1f4913a98e2b000d430d5b170edd7543310be22458dd78f108e2e38507b1e232a40eb83be249fae39784f38ad7ca7390f2b2e34b8a65237fc483f9b9663341aa1df45bb920592af4077ad825ec27ad30777732c4b34f97eed67bfe653bb3a32b7e70a8cc720b124c36e0b34ff52c0aa53a1ada80cfae3750a5c29798c0df8792b7561a5d2adbd05ac341b040bc8150f02d5dd46496a81b60acb88a2c05e5edf3eb0c9e3e8eb4f76c6c6df6f6f4eff94799d240fdf256d32da85a225a157fb0637a5e20705fb76960af3b90fe0d92eaa95c9fd3ca6e99f26497be34b943535e830f36daeb443c53bb11970e756d59fbe94f558b324eb9fa4d9493a60c960d84f8659cb968122f4f6129a3b309120cc0ee2afbbd5941384a5476bb689ae088c7ca2271323e3f39eac502e388e2f23e39566d79614c3f308dc11947314ec1a487e084684ee978aef0f973fe223bd607757f130f196c2f4e3f13ccd1af0065da9615d0bc384d9c888781e978ac0875bc026ebf0b32a22f68846daa56369ca3eb1f1b7498d0105d3be8e1fcf66281034cbd86f0514449737f7cd2cfecbd676d75991deaeb169b945fffdf6bcbe01, 'Updated product 8 via admin console.', 'info'),
(281, '2024-12-19 09:42:01', 1, 'category_product_listing.php', 'cPath=2&pID=8&page=1', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(282, '2024-12-19 09:44:06', 1, 'product.php', 'action=new_product', '::1', 0, '', 0xab562a28ca4f294d2e892fa92c4855b2523254d2514a0e482cc900b28d80ecc4e492ccfc3c20272fb53c1eaa56a91600, 'Accessed page [product.php] with action=new_product. Review page_parameters and postdata for details.', 'info'),
(283, '2024-12-19 09:45:14', 1, 'product.php', 'cPath=2&action=new_product_preview', '::1', 0, '', 0xdd545b6fda3014fe2b565e372a92c2a4f68d9695216da36a2ab14995ac836de0488e9d1e3b5c54f5bfcf0ed04252b43d2f2f8ebff39d9bcfe52529c9ca4a78eeb7a54aae9334f99c14e0bc222ec0ab8525548ea30ca22c88f66cc7253a612bf3a6d73d2be473b2459351120ac59da5e0a829731e7ce5f6b1bcdb0cd17058016a98e9e8b10ed4547310be2245fb208f550c1481f812ec5c2783dbaf0f2c9f8eef1ed925fb3999b2fcee32ed75fa69c64693efc3a096fd03ebf5cd3a471712538dd4232a40eb0fd3957cb6e5e03de1acf2ad37f3b0e14283dbe7d1568fe045377ced778cba6844cbed0ac957a0db31825ec3769700774b2c4b348ba6f2b3dff299dd9c29c77305c663a05892a1570a347f63c0a6e5e1945119f4e7fd14b851b2d514ca09c2d2a3358742df1018f9444f26d6329ef7648572a1d5e2656cbcd2ecd69262d88fc088a05ca260b740f29d302674bf54bc3f0c7ec423fdc24637f127f79660518beaaeb861793e8cb721ba52c3b626f72eba6c6c44fc9f948ac087e765f9364c5511b1291a69d78ea529fbc426dff21a030a81fb5a7f329fa340d02c63bf1550200d86f7fb0efd6fd37bfda0e821dffe49c714562add98f2a2340da424b5425b85492a422e3b21168bb0966877b12b456b42af9afd542bf0b856a0e9a6227d68b17d294e425e2b5c2c7d402f8f95b4320bbf8c5e7ac7f01a658d5e1d83cb83859388e28adccd476bc9d60b51ca7a2ab26ed6eba45927bd4a5eff00, 'Accessed page [product.php] with action=new_product_preview. Review page_parameters and postdata for details.', 'info'),
(284, '2024-12-19 09:45:14', 1, 'product.php', 'cPath=2&action=new_product_preview', '::1', 1, '', 0xdd545b6fda3014fe2b565e372a92c2a4f68d9695216da36a2ab14995ac836de0488e9d1e3b5c54f5bfcf0ed04252b43d2f2f8ebff39d9bcfe52529c9ca4a78eeb7a54aae9334f99c14e0bc222ec0ab8525548ea30ca22c88f66cc7253a612bf3a6d73d2be473b2459351120ac59da5e0a829731e7ce5f6b1bcdb0cd17058016a98e9e8b10ed4547310be2245fb208f550c1481f812ec5c2783dbaf0f2c9f8eef1ed925fb3999b2fcee32ed75fa69c64693efc3a096fd03ebf5cd3a471712538dd4232a40eb0fd3957cb6e5e03de1acf2ad37f3b0e14283dbe7d1568fe045377ced778cba6844cbed0ac957a0db31825ec3769700774b2c4b348ba6f2b3dff299dd9c29c77305c663a05892a1570a347f63c0a6e5e1945119f4e7fd14b851b2d514ca09c2d2a3358742df1018f9444f26d6329ef7648572a1d5e2656cbcd2ecd69262d88fc088a05ca260b740f29d302674bf54bc3f0c7ec423fdc24637f127f79660518beaaeb861793e8cb721ba52c3b626f72eba6c6c44fc9f948ac087e765f9364c5511b1291a69d78ea529fbc426dff21a030a81fb5a7f329fa340d02c63bf1550200d86f7fb0efd6fd37bfda0e821dffe49c714562add98f2a2340da424b5425b85492a422e3b21168bb0966877b12b456b42af9afd542bf0b856a0e9a6227d68b17d294e425e2b5c2c7d402f8f95b4320bbf8c5e7ac7f01a658d5e1d83cb83859388e28adccd476bc9d60b51ca7a2ab26ed6eba45927bd4a5eff00, 'Success: File upload saved successfully ACER SWIFT 3 NOW SF314-512 GOLD.png', 'notice'),
(285, '2024-12-19 09:45:17', 1, 'product.php', 'cPath=2&action=insert_product', '::1', 0, '', 0xdd545d6bdb3014fd2bc2af6b4beca483f52d6dd62cb02da51e748382b89194e4822cb957723e28fdef935c678ded85ee797e9174eec73957f7cacf49495656c273bf2f557295a4c9595280f38ab800af569650398e3298b2606abc1d97e884adcc9fb8c149235f922dba1e25a150dc590a445d9bf3e02bd76879cb19d470d8006a58e8c8580b35d51284af485123f22d84a30bd4aa232ea202b4feab20c9177b0ede132e2adfabcac38e0b0dae61ea8747f06210be7ea531168de8d16e907c05baaf11f416f6af0570b7c6b244b3ea063ff93d5fd8dd890b7baac0780c2e9664e86681e63d0fd8f518da1e95417f9aa7c09d92a7ac01bf6ca52eac54bad5b08095a68394a43668ab70e505ac9aae63b10a1346af07bb51b425f4aa4b5c07f03821d0a5d92a5cad7d0087c7a85666e5d731cda8e58cb2463f1d83eb438616651ce7d79bea3d887a78a5acef271b64a3f3343b4f5b290d14a186e790f12a19df7cbe67f9c3ecf6071bb2eff30796df0ed3d1f9659ab1e9fceb248465ffe0f5722c403941587ab4e640724d60e4233d9a9827ae77648572a188789819af34bbb1a4185e46604a50ae51b01b20f9e63023743f553cdf8fbfc525fdc8a6d771937b4ba103715b2bba66793e89a709ba52c3be761e5d0cd8cc88b89f978ac0872967f93efc7e8a883da09176eb589ab20f6cfe25af31a020dcd7f1f3e51205826619fba58082d37872d7dcce7f5bde715b2bd287763665b7cc8747f3cea45c94e1df7296288971a4ebe5e537, 'Accessed page [product.php] with action=insert_product. Review page_parameters and postdata for details.', 'info'),
(286, '2024-12-19 09:45:30', 1, 'product.php', 'cPath=2&action=new_product_preview', '::1', 0, '', 0xdd54db6e1a3110fd156b5fdb20768148c91b8126456a4b948d94568a640db68191bcf666ece5a228ff5e7b21177641e9739f6c9f3973f35c9e9392acac84e77e5baae4324993af4901ce2be202bc5a5842e538ca20ca8268cf765ca213b6326f7add93423e275b341925a150dc590a8e9a32e7c1576e1fcbbbcd100d8715a086998e1eeb404d3507e12b52b40ff2a38a8122109f839dcb6438fa76c7f287c9f53debb15fd307965ff7d2fed920cdd8cdf4c738a865ffc07a79b3ced185c45423f5880ad0fa68ba92cfb61cbc279c55bef5671e365c6870fb3cdaea013cbfe876ce7bed7f8cba68843e4a5921f90a743b50d06bd8eeb2e06e89658966d1f4fce4b77c6637276af25481f118289664689802cd670cd8b43c1c322a83feb49f02374ab63a433941587ab4e6b5da5704463ed2a389058de72d59a15ce8b7f89818af341b59520c0711b821289728d80848be132684eeb78aefbbe1cf78a4e7ece62a5e726f0916b5a86e8d2b96e7e3f81aa32b356c6b72bfd3651323e27d5a2a021fbe97e5db305a45c41ed048bb762c4dd91736fd9ed7185008dcd7fad3f91c05826619fba380026938beddb7e97f9bdecb91a2877c07071d5358a97463d48bd2ec102c42e4a125b46a8f58496a85b60a1316499f8f7ba70c03114d2ec246a39d7dbb52b426f4aad9853bc771234133b88af46b63ee0b7890e85ae162e9037a30b65a99855f462ffd8ff01a658d5e7c0497af160e228adb753755adfd5cef5229eb59caba59ff2ccdced28be4e52f, 'Accessed page [product.php] with action=new_product_preview. Review page_parameters and postdata for details.', 'info'),
(287, '2024-12-19 09:45:33', 1, 'product.php', 'cPath=2&action=insert_product', '::1', 0, '', 0xdd54df4f1b310cfe57a2be6ea0de5190d85ba18355da56c44d6293902237495b4bb9e47072fd21c4ff3ee75a06d7a3627bddd3259f3fdb9fedf81e7b15795dab28e3a632bd4fbdacf7b157428886a48268e69ed004899a4d399b76ec203506e56bf7c7af7fd02867e4cb7d4645a88c0c9e38d1be2d448875d8697989c96a242c012d4c6dcad80875f50c54acc9d04ee48b8bc4c0a9cd9eb8842ab0f64d415a4e371262249cd6b1535584b55416c22e53d79dc1b3f3fef1d949b7d2e48b4ed937294ba45883ed0a05bb82cdb60a19165855e8e6fb991fe2464efdfa40d71e6a701199e249f3484b74ef3160ddc9d066d40ee3e13c25ae8d3e6465fcb415baf4dad8d6d418abdc16c112e64632c17467519159a2af791489c4d6e1e5e75b51dc8daf7e8813f17d72278aab936c70749ae5e27af275745c71e752c8393f4edac6f74b432bc268f6e56e13a7c705fbe25606e78bc8606b80d6b8795ca43083161975839ebf0617cf115a29d3266cfbdbd9a5e6dd6bdd7435efe783a32c3fca5a211d945cc323477cb70fec96ff05ebe9b50013146115d1bbe72417044edfd3bd4b71d2f786bc32818b4897b18bc68a4b4f46e06902ae09aa052a7109a45f0863c2f0d3a4fbedf05bfa6467e2fa221d8ae88927908e8da20b5114a3741b61a82c6c1af2e0b82fc64ea5f3a43204917743141bfe739509bb43a7fd2a882c131fc4e44bd160402c3c36fe93d90c158215b9f8658098341cddecbaf3df96f77aac35d9e771eeca6e99ff65af9e7e03, 'Accessed page [product.php] with action=insert_product. Review page_parameters and postdata for details.', 'info'),
(288, '2024-12-19 09:45:33', 1, 'product.php', 'cPath=2&action=insert_product', '::1', 0, '', 0xdd54df4f1b310cfe57a2be6ea0de5190d85ba18355da56c44d6293902237495b4bb9e47072fd21c4ff3ee75a06d7a3627bddd3259f3fdb9fedf81e7b15795dab28e3a632bd4fbdacf7b157428886a48268e69ed004899a4d399b76ec203506e56bf7c7af7fd02867e4cb7d4645a88c0c9e38d1be2d448875d8697989c96a242c012d4c6dcad80875f50c54acc9d04ee48b8bc4c0a9cd9eb8842ab0f64d415a4e371262249cd6b1535584b55416c22e53d79dc1b3f3fef1d949b7d2e48b4ed937294ba45883ed0a05bb82cdb60a19165855e8e6fb991fe2464efdfa40d71e6a701199e249f3484b74ef3160ddc9d066d40ee3e13c25ae8d3e6465fcb415baf4dad8d6d418abdc16c112e64632c17467519159a2af791489c4d6e1e5e75b51dc8daf7e8813f17d72278aab936c70749ae5e27af275745c71e752c8393f4edac6f74b432bc268f6e56e13a7c705fbe25606e78bc8606b80d6b8795ca43083161975839ebf0617cf115a29d3266cfbdbd9a5e6dd6bdd7435efe783a32c3fca5a211d945cc323477cb70fec96ff05ebe9b50013146115d1bbe72417044edfd3bd4b71d2f786bc32818b4897b18bc68a4b4f46e06902ae09aa052a7109a45f0863c2f0d3a4fbedf05bfa6467e2fa221d8ae88927908e8da20b5114a3741b61a82c6c1af2e0b82fc64ea5f3a43204917743141bfe739509bb43a7fd2a882c131fc4e44bd160402c3c36fe93d90c158215b9f8658098341cddecbaf3df96f77aac35d9e771eeca6e99ff65af9e7e03, 'New product 10 added via admin console.', 'info'),
(289, '2024-12-19 09:45:33', 1, 'category_product_listing.php', 'cPath=2&pID=10', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(290, '2024-12-19 09:46:12', 1, 'product.php', 'action=new_product', '::1', 0, '', 0xab562a28ca4f294d2e892fa92c4855b2523254d2514a0e482cc900b28d80ecc4e492ccfc3c20272fb53c1eaa56a91600, 'Accessed page [product.php] with action=new_product. Review page_parameters and postdata for details.', 'info'),
(291, '2024-12-19 09:46:57', 1, 'product.php', 'cPath=2&action=new_product_preview', '::1', 0, '', 0xdd544d6fe23010fd2b56aebbad484abaa2374aab16692b2a72d83d54b206dbc0488e9d8e1d3e54f1dfd70ed04200ed9ef794f8cd1bcf1bcfc747529195b5f0dcaf2b95dc2569f23d29c179455c8057334ba81c47194c5930edd88e4b74c2d6e6d3af73d1c8a764cb36a322148a3b4b2150dbe63cf8daedb47cdd19d47058006a98e818b1116aea29085f93a29dc843170365207e847bee92fee071ccfac5eb70fcc87256fc1cbeb07e9ee66cd863e94dafd3790e8ed93ff1369f1138ba909c6aa51f51015a9f4d59f2c99a83f78493da9fbc9b8715171adc2e9753f700fee8e6d7dd336f197dd108bda71c321648be067daa13f412d6db24b89b6355a199b503bffb359fd8d585b2bcd7603c068a25197aa644f33706ac4e221c336a83fe729c12574a9e34877282b0f268cdbee0f70446bed19b89158ddf57b242b9d072f130345e6936b0a418f622f04450cd51b00190fc220c09dd6f15cfe3fe4bfca4b7ece93efe14de12cc1a539e66016445f1104f0fe82a0deb869c5fdfb2a111f17f5429021f9e9715eb305d65c47ea19176e9589ab26f6cf45c34185010ee1bffd1748a0243ddb6adf93f65b43953da90627ed417a5954ab766baac4c0ba9482dd0d66166ca207f6bc4721696106d0f76a16849e855bb6b1a071e9708b4c3d4a4f78db47bfd23c94b85b3b90fe8cda1935666e6e731cad1f42d513668ef109cef6f38521417e2760a4e566ab3fea46c7a3feb64ddab34bb4a7bc9e60f, 'Accessed page [product.php] with action=new_product_preview. Review page_parameters and postdata for details.', 'info'),
(292, '2024-12-19 09:46:57', 1, 'product.php', 'cPath=2&action=new_product_preview', '::1', 1, '', 0xdd544d6fe23010fd2b56aebbad484abaa2374aab16692b2a72d83d54b206dbc0488e9d8e1d3e54f1dfd70ed04200ed9ef794f8cd1bcf1bcfc747529195b5f0dcaf2b95dc2569f23d29c179455c8057334ba81c47194c5930edd88e4b74c2d6e6d3af73d1c8a764cb36a322148a3b4b2150dbe63cf8daedb47cdd19d47058006a98e818b1116aea29085f93a29dc843170365207e847bee92fee071ccfac5eb70fcc87256fc1cbeb07e9ee66cd863e94dafd3790e8ed93ff1369f1138ba909c6aa51f51015a9f4d59f2c99a83f78493da9fbc9b8715171adc2e9753f700fee8e6d7dd336f197dd108bda71c321648be067daa13f412d6db24b89b6355a199b503bffb359fd8d585b2bcd7603c068a25197aa644f33706ac4e221c336a83fe729c12574a9e34877282b0f268cdbee0f70446bed19b89158ddf57b242b9d072f130345e6936b0a418f622f04450cd51b00190fc220c09dd6f15cfe3fe4bfca4b7ece93efe14de12cc1a539e66016445f1104f0fe82a0deb869c5fdfb2a111f17f5429021f9e9715eb305d65c47ea19176e9589ab26f6cf45c34185010ee1bffd1748a0243ddb6adf93f65b43953da90627ed417a5954ab766baac4c0ba9482dd0d66166ca207f6bc4721696106d0f76a16849e855bb6b1a071e9708b4c3d4a4f78db47bfd23c94b85b3b90fe8cda1935666e6e731cad1f42d513668ef109cef6f38521417e2760a4e566ab3fea46c7a3feb64ddab34bb4a7bc9e60f, 'Success: File upload saved successfully ACER ASPIRE 5 SLIM A515 I9 13900H.png', 'notice'),
(293, '2024-12-19 09:47:01', 1, 'product.php', 'cPath=2&action=insert_product', '::1', 0, '', 0xdd544d6fe23010fd2b56aebb458492aee88dd2aa45da8a8a1c760f95acc136309263a763870f55fdef6b07584828ea9ef714fbcd9b79f315bf2725595909cffdb654c96d9226df93029c57c40578b5b084ca7194c1d40ba63ddb71894ed8cafcf5eb5e34f239d9a2cd280985e2ce52106adb9c075fb97d2ec798211b0e2b400d331d15eb444d3507e12b52b44ff2e8c2d10569d54a2ea202b4fe3421c9675b0ede13ce2a7f5695870d171adc5ee9dc3d803ffa59a7ff49a5d1178dd007ca296385e42bd0e779825ec3765704774b2c4b348bb6f09bdff299dd5c68da5b05c663a0589261a2059aaf18b0395368322a83feb24e811b252f59039e354217562add185ac04ad3424a522bb455687b018bfde4b158842da3ddc5ae14ad09bd6a0bd70e3c6e09b465d60a174b1fc0eb53542bb3f0cb18a631a135ca1a1d9c82cb438486645ce95da7ce7e8a7a81a5acfbd3ebf6fa5769ef2a6d843450841ade43c4db64387a98b261fe329e3eb08ce53fc7cf6c98a5191b0f587a3de8769f8263ef9f781fa7492827084b8fd61c84ee088c7ca5571323c5ef0b59a15c28245ec6c62bcd469614c341041e09ca250a36029247c298d0fd56f13e1d3ec74f7ac31eefe221f796c214e2314b7b0164797e1f6ff7e84a0ddb9a9c756ed8d888789e948ac0874d67f9363c4345c47ea19176ed589ab26f6cf294d7185048dcd7fe93f91c058619ef5af23f55743abc8af46168fb4a1be6c3eff1e54674caf08e7cfc01, 'Accessed page [product.php] with action=insert_product. Review page_parameters and postdata for details.', 'info'),
(294, '2024-12-19 09:47:01', 1, 'product.php', 'cPath=2&action=insert_product', '::1', 0, '', 0xdd544d6fe23010fd2b56aebb458492aee88dd2aa45da8a8a1c760f95acc136309263a763870f55fdef6b07584828ea9ef714fbcd9b79f315bf2725595909cffdb654c96d9226df93029c57c40578b5b084ca7194c1d40ba63ddb71894ed8cafcf5eb5e34f239d9a2cd280985e2ce52106adb9c075fb97d2ec798211b0e2b400d331d15eb444d3507e12b52b44ff2e8c2d10569d54a2ea202b4fe3421c9675b0ede13ce2a7f5695870d171adc5ee9dc3d803ffa59a7ff49a5d1178dd007ca296385e42bd0e779825ec3765704774b2c4b348bb6f09bdff299dd5c68da5b05c663a0589261a2059aaf18b0395368322a83feb24e811b252f59039e354217562add185ac04ad3424a522bb455687b018bfde4b158842da3ddc5ae14ad09bd6a0bd70e3c6e09b465d60a174b1fc0eb53542bb3f0cb18a631a135ca1a1d9c82cb438486645ce95da7ce7e8a7a81a5acfbd3ebf6fa5769ef2a6d843450841ade43c4db64387a98b261fe329e3eb08ce53fc7cf6c98a5191b0f587a3de8769f8263ef9f781fa7492827084b8fd61c84ee088c7ca5571323c5ef0b59a15c28245ec6c62bcd469614c341041e09ca250a36029247c298d0fd56f13e1d3ec74f7ac31eefe221f796c214e2314b7b0164797e1f6ff7e84a0ddb9a9c756ed8d888789e948ac0874d67f9363c4345c47ea19176ed589ab26f6cf294d7185048dcd7fe93f91c058619ef5af23f55743abc8af46168fb4a1be6c3eff1e54674caf08e7cfc01, 'New product 11 added via admin console.', 'info'),
(295, '2024-12-19 09:47:01', 1, 'category_product_listing.php', 'cPath=2&pID=11', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(296, '2024-12-19 09:48:43', 1, 'product.php', 'action=new_product', '::1', 0, '', 0xab562a28ca4f294d2e892fa92c4855b2523254d2514a0e482cc900b28d80ecc4e492ccfc3c20272fb53c1eaa56a91600, 'Accessed page [product.php] with action=new_product. Review page_parameters and postdata for details.', 'info'),
(297, '2024-12-19 09:49:37', 1, 'product.php', 'cPath=2&action=new_product_preview', '::1', 0, '', 0xdd544d6f1a3110fd2bd65edb442c6191c88d9028e1d012b18d7a89640db68191bcf666ece54311ffbdf60209ec1255bdf664fbcd1bcf879fe73d29c9ca4a78eeb7a54a6e9334f99e14e0bc222ec0ab8525548ea30ca66e301dd88e4b74c256e6c3aff3a591cfc9164d46492814779642a0a6cd79f0953be4f27967c886c30a50c34cc78875a2a69a83f015293a2479ea62a008c4f770cf6d321c3d4cd9307f1e4f1f58c6c2fa930db3fc39edb15f9397d1131b672cbdb9c9827bf71fd8bb8f681c5d2854355a1151015a5f2c5ff2d99683f784b3cab77ae861c3850677a8abed1ec0fea07fddefb7fb1a7dd1087d91b242f215e876a2a0d7b0dd57c1dd12cb12cda219f9cd6ff9cc6ebe78a3b70a8cc740b12483800a347f63c0a615e19c5119f45fc72970a3644b29ca09c2d2a335c7d7bf2330f2955e4d7cd8b83e9315ca05fdc5c3d878a5d9c892629845e091a05ca2602320f9497879ba8f87e9f0475cd23e7bbc8b9bdc5b82858adb2ced0690e5794dbc47576ad8d6e4de75878d8d88fb49a9087ce82dcbb7e19f1511fb8d46dab56369cabeb1c9535e6340216b5ffb4fe67314181e6d2fcfffa69cdd85470df565678a28ac54baf1b58bd2349092d40a6d15be4b11d2df1bb158845944fb835d295a137ad5d44bedc0e32c8166988af4514287d69fa5bc56b858fa80de9c3a6965167e19a3f44ee135ca1a1d9c82cbe30d6719c5b9b8d77f6bb2d65350ca5af5dd4eb7779576afd241b2fb03, 'Accessed page [product.php] with action=new_product_preview. Review page_parameters and postdata for details.', 'info'),
(298, '2024-12-19 09:49:37', 1, 'product.php', 'cPath=2&action=new_product_preview', '::1', 1, '', 0xdd544d6f1a3110fd2bd65edb442c6191c88d9028e1d012b18d7a89640db68191bcf666ece54311ffbdf60209ec1255bdf664fbcd1bcf879fe73d29c9ca4a78eeb7a54a6e9334f99e14e0bc222ec0ab8525548ea30ca66e301dd88e4b74c256e6c3aff3a591cfc9164d46492814779642a0a6cd79f0953be4f27967c886c30a50c34cc78875a2a69a83f015293a2479ea62a008c4f770cf6d321c3d4cd9307f1e4f1f58c6c2fa930db3fc39edb15f9397d1131b672cbdb9c9827bf71fd8bb8f681c5d2854355a1151015a5f2c5ff2d99683f784b3cab77ae861c3850677a8abed1ec0fea07fddefb7fb1a7dd1087d91b242f215e876a2a0d7b0dd57c1dd12cb12cda219f9cd6ff9cc6ebe78a3b70a8cc740b12483800a347f63c0a615e19c5119f45fc72970a3644b29ca09c2d2a335c7d7bf2330f2955e4d7cd8b83e9315ca05fdc5c3d878a5d9c892629845e091a05ca2602320f9497879ba8f87e9f0475cd23e7bbc8b9bdc5b82858adb2ced0690e5794dbc47576ad8d6e4de75878d8d88fb49a9087ce82dcbb7e19f1511fb8d46dab56369cabeb1c9535e6340216b5ffb4fe67314181e6d2fcfffa69cdd85470df565678a28ac54baf1b58bd2349092d40a6d15be4b11d2df1bb158845944fb835d295a137ad5d44bedc0e32c8166988af4514287d69fa5bc56b858fa80de9c3a6965167e19a3f44ee135ca1a1d9c82cbe30d6719c5b9b8d77f6bb2d65350ca5af5dd4eb7779576afd241b2fb03, 'Success: File upload saved successfully ACER ASPIRE 5 SPIN A5SP14 TOUCH I5 1335.png', 'notice'),
(299, '2024-12-19 09:49:39', 1, 'product.php', 'cPath=2&action=insert_product', '::1', 0, '', 0xdd544d6f1a3110fd2b16d736280b2c527223240a1c5a10dba8974896b10d8ce4b537632f1f8af2df3b5ea0b04b50db6b4fb6dfbc99375fbbefad029d2a65e06157e8d67d2b697d6de5c2078d5c8aa0970e417b0e8a4c1d321dd89e2bf0d295f6b7dfed55235fa0cb9b8c02416aee1d9250d3e68308a53fe4728a49d970b11660c4dc44c52a515b2e840c256a3c247972e1e0495a37928ba814c67c9a90e2f31d172120cccb705155105b2e8df007a54b7702fb77fd76bf7f5969f4052bcda79435602885b94c54988dd8edabe07e05450176d9547e0b3b3e77db2b5d7b2b850d4014878a469a83fd13436c2f14ea8cd242b8ae93c356ab6b56c2d35ae8dc296d6a5323acb00da440bd065752df73b13c8c1ef225ad19ee1f6ead7183107453b872e0714d445366a361b90a0476cf51a3ed32ac62985e8d0caa42efcec1d531424d32eef4be53175f45b5c14a55fde9dc767a3749e726a985b422a71ade29e27d6b307c9ab141361dcf9e58cae8fcce0669364d7aecc7e4653862e39425dd6e4aee9d7f607f9c27a4bd442802387b147d4061d52bbeda182f9e5374527b2a2a3ec63668c3860e35833402cf288a15483614a84e8497d1637ccc06dfe291f4d9f343bc64c1218d235ed3a44320cbb28af808be306257917bed5b36b632de2785461168e559b6a31f521eb19f6095db789624ec0b9b8cb20a13485987ca7fb25880041af6be2bff4d39e7632bd11cc77528b3663e7e247fb911ed82fe291fbf00, 'Accessed page [product.php] with action=insert_product. Review page_parameters and postdata for details.', 'info'),
(300, '2024-12-19 09:49:39', 1, 'product.php', 'cPath=2&action=insert_product', '::1', 0, '', 0xdd544d6f1a3110fd2b16d736280b2c527223240a1c5a10dba8974896b10d8ce4b537632f1f8af2df3b5ea0b04b50db6b4fb6dfbc99375fbbefad029d2a65e06157e8d67d2b697d6de5c2078d5c8aa0970e417b0e8a4c1d321dd89e2bf0d295f6b7dfed55235fa0cb9b8c02416aee1d9250d3e68308a53fe4728a49d970b11660c4dc44c52a515b2e840c256a3c247972e1e0495a37928ba814c67c9a90e2f31d172120cccb705155105b2e8df007a54b7702fb77fd76bf7f5969f4052bcda79435602885b94c54988dd8edabe07e05450176d9547e0b3b3e77db2b5d7b2b850d4014878a469a83fd13436c2f14ea8cd242b8ae93c356ab6b56c2d35ae8dc296d6a5323acb00da440bd065752df73b13c8c1ef225ad19ee1f6ead7183107453b872e0714d445366a361b90a0476cf51a3ed32ac62985e8d0caa42efcec1d531424d32eef4be53175f45b5c14a55fde9dc767a3749e726a985b422a71ade29e27d6b307c9ab141361dcf9e58cae8fcce0669364d7aecc7e4653862e39425dd6e4aee9d7f607f9c27a4bd442802387b147d4061d52bbeda182f9e5374527b2a2a3ec63668c3860e35833402cf288a15483614a84e8497d1637ccc06dfe291f4d9f343bc64c1218d235ed3a44320cbb28af808be306257917bed5b36b632de2785461168e559b6a31f521eb19f6095db789624ec0b9b8cb20a13485987ca7fb25880041af6be2bff4d39e7632bd11cc77528b3663e7e247fb911ed82fe291fbf00, 'New product 12 added via admin console.', 'info'),
(301, '2024-12-19 09:49:40', 1, 'category_product_listing.php', 'cPath=2&pID=12', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(302, '2024-12-19 09:50:20', 1, 'product.php', 'action=new_product', '::1', 0, '', 0xab562a28ca4f294d2e892fa92c4855b2523254d2514a0e482cc900b28d80ecc4e492ccfc3c20272fb53c1eaa56a91600, 'Accessed page [product.php] with action=new_product. Review page_parameters and postdata for details.', 'info'),
(303, '2024-12-19 09:50:50', 1, 'product.php', 'cPath=2&action=new_product_preview', '::1', 0, '', 0xe5546d4fdb3010fe2b56be6ea026230cf856cac6f8308a5ac43609c9bada6e7a926387b3d317a1fef7d969603429e2074caa1afbb9e7f1ddd977f79c5464652d3cf79b4a2517499a7c4e4a705e1117e055610995e32883290ba696edb844276c6d5e7583778d7c4eb6ec322a42a1b8b3141c756dce83af5d1bcbbf3343341c96801a663a7a6c0235f51c84af49511be45b898132109fc33917c970f46dc26e6fee2763f6c0d29c0d6f1fc27f9e865f9a0751f62167fb7a32471792529db4232a40eb83a94a3edb70f09e7056fbde7d795873a1c1b539f4e5013cfb3a384e4ffa7718b568843e485922f91a743f50d02bd8ecb2e06e815585a6e87a7ef21b3eb3eb77dee3a906e331502cc9502c259a8f18b0ee79d867d406fdfb7e4a5c2bd9ab0ae50461e5d19a9797be2430f2911e4d7ccef8bd232b940bb5163737c62bcd469614c33c02d704d502051b0135aadb254a0476adbe5b128a4dee7f9f0cf2013b65d797d13c19fe8c9fb3763bf596a0507199a75900d9747a157757e82a0d9bb84cf3e3537663445c8f2b45e0c365b3e926345919b15f68a45d3996a6ec131bff9836185048c337faf17c8e0241b38cfd51408134bcba6b4bf63f49767ba02042f6f95e3595562add190165653a48456a89b60ead56865c76462c8b30b368b7b14b452b42afbab5d608789c39d07553937e29bff661f6425e292c163ea05fde8ab432855f442f7b3dbb42d9a0e76fc1c5cb097b11c5f9b9eb9dde046ea6a5944dc76483ece428cd8ed2f364fb17, 'Accessed page [product.php] with action=new_product_preview. Review page_parameters and postdata for details.', 'info'),
(304, '2024-12-19 09:50:50', 1, 'product.php', 'cPath=2&action=new_product_preview', '::1', 1, '', 0xe5546d4fdb3010fe2b56be6ea026230cf856cac6f8308a5ac43609c9bada6e7a926387b3d317a1fef7d969603429e2074caa1afbb9e7f1ddd977f79c5464652d3cf79b4a2517499a7c4e4a705e1117e055610995e32883290ba696edb844276c6d5e7583778d7c4eb6ec322a42a1b8b3141c756dce83af5d1bcbbf3343341c96801a663a7a6c0235f51c84af49511be45b898132109fc33917c970f46dc26e6fee2763f6c0d29c0d6f1fc27f9e865f9a0751f62167fb7a32471792529db4232a40eb83a94a3edb70f09e7056fbde7d795873a1c1b539f4e5013cfb3a384e4ffa7718b568843e485922f91a743f50d02bd8ecb2e06e815585a6e87a7ef21b3eb3eb77dee3a906e331502cc9502c259a8f18b0ee79d867d406fdfb7e4a5c2bd9ab0ae50461e5d19a9797be2430f2911e4d7ccef8bd232b940bb5163737c62bcd469614c33c02d704d502051b0135aadb254a0476adbe5b128a4dee7f9f0cf2013b65d797d13c19fe8c9fb3763bf596a0507199a75900d9747a157757e82a0d9bb84cf3e3537663445c8f2b45e0c365b3e926345919b15f68a45d3996a6ec131bff9836185048c337faf17c8e0241b38cfd51408134bcba6b4bf63f49767ba02042f6f95e3595562add190165653a48456a89b60ead56865c76462c8b30b368b7b14b452b42afbab5d608789c39d07553937e29bff661f6425e292c163ea05fde8ab432855f442f7b3dbb42d9a0e76fc1c5cb097b11c5f9b9eb9dde046ea6a5944dc76483ece428cd8ed2f364fb17, 'Success: File upload saved successfully ACER NITRO V 15 ANV15 51 5115.png', 'notice'),
(305, '2024-12-19 09:50:58', 1, 'product.php', 'cPath=2&action=insert_product', '::1', 0, '', 0xe5545b4fdb3014fe2b565f37509311c6782bb0311e46518bd8262159a78edb1ec9b1c3b1d38b10ff7dc7693a9a948e1f30298aedef5cbe73b39f7b25b9bc52418675a97be7bda4f7b157800f9aa482a0678e507b89398b521635da5ee6e895abec5fbbfe41a19c922bba1a25a1d2d23b62a2aecc0708956f6279f5c9d14858001a9898c858076aab29a85091a626c85713899ea97527b8882a30e6cd807239594b0881705285bdac02aca432e01ba67d7306cf3ef78f9393fd4ca32d5a65de545920850acc7ea06096b0de6421fd1ccb12edaccbfc14d672e25607aaf654810dc82a8e726e6981f63d0d58ed31b4352a8be1304f812b9d1f92329eb55c172ed7a6d535c64adb414ad20b7415d7bd8059d37a2c663c66b439b885a62561d05de2da40c631812ecd52e36c1e18fcb48b1a6d67611eddb43ab4c4bc46bfec82f3ad8716659ce94da5f66e453dc1795ed727eda72747497a94b45c5a28388767f678de1b5c7e1d89db9bfbd1503c88241383db07fe67097f49c646e9bb3a2fbbe4da2bc232a0b35b820b029b3fd2a38d5ee27a474e69cf09c4c38d0dda884b475a6016816b82728e4a5c02d556b70bcc11c4b5fee6486931baff75d2cffae2545c5f44f168f0232e67cd711c1c712fe2364b5206c5787c154f57e84b03ebb84db2e353716355dc0f4b4d1078dec578cdaf5111b19f6873b7f42249c40731fc3eae31204e23d4f6c3e914158211a9f8ad8158697075d754ea3f4976b7e515996dab9b22b4c4dbcbf4cf193a2ef9c579f903, 'Accessed page [product.php] with action=insert_product. Review page_parameters and postdata for details.', 'info'),
(306, '2024-12-19 09:50:58', 1, 'product.php', 'cPath=2&action=insert_product', '::1', 0, '', 0xe5545b4fdb3014fe2b565f37509311c6782bb0311e46518bd8262159a78edb1ec9b1c3b1d38b10ff7dc7693a9a948e1f30298aedef5cbe73b39f7b25b9bc52418675a97be7bda4f7b157800f9aa482a0678e507b89398b521635da5ee6e895abec5fbbfe41a19c922bba1a25a1d2d23b62a2aecc0708956f6279f5c9d14858001a9898c858076aab29a85091a626c85713899ea97527b8882a30e6cd807239594b0881705285bdac02aca432e01ba67d7306cf3ef78f9393fd4ca32d5a65de545920850acc7ea06096b0de6421fd1ccb12edaccbfc14d672e25607aaf654810dc82a8e726e6981f63d0d58ed31b4352a8be1304f812b9d1f92329eb55c172ed7a6d535c64adb414ad20b7415d7bd8059d37a2c663c66b439b885a62561d05de2da40c631812ecd52e36c1e18fcb48b1a6d67611eddb43ab4c4bc46bfec82f3ad8716659ce94da5f66e453dc1795ed727eda72747497a94b45c5a28388767f678de1b5c7e1d89db9bfbd1503c88241383db07fe67097f49c646e9bb3a2fbbe4da2bc232a0b35b820b029b3fd2a38d5ee27a474e69cf09c4c38d0dda884b475a6016816b82728e4a5c02d556b70bcc11c4b5fee6486931baff75d2cffae2545c5f44f168f0232e67cd711c1c712fe2364b5206c5787c154f57e84b03ebb84db2e353716355dc0f4b4d1078dec578cdaf5111b19f6873b7f42249c40731fc3eae31204e23d4f6c3e914158211a9f8ad8158697075d754ea3f4976b7e515996dab9b22b4c4dbcbf4cf193a2ef9c579f903, 'New product 13 added via admin console.', 'info'),
(307, '2024-12-19 09:50:58', 1, 'category_product_listing.php', 'cPath=2&pID=13', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(308, '2024-12-19 09:51:07', 1, 'category_product_listing.php', 'cPath=4', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(309, '2024-12-19 09:52:22', 1, 'categories.php', 'cPath=4&action=new_category', '::1', 0, '', 0x8b8e0500, 'Accessed page [categories.php] with action=new_category. Review page_parameters and postdata for details.', 'info'),
(310, '2024-12-19 09:52:23', 1, 'category_product_listing.php', 'cPath=4', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(311, '2024-12-19 09:52:25', 1, 'product.php', 'action=new_product', '::1', 0, '', 0xab562a28ca4f294d2e892fa92c4855b2523254d2514a0e482cc900b24d80ecc4e492ccfc3c20272fb53c1eaa56a91600, 'Accessed page [product.php] with action=new_product. Review page_parameters and postdata for details.', 'info'),
(312, '2024-12-19 09:53:11', 1, 'product.php', 'cPath=4&action=new_product_preview', '::1', 0, '', 0xd554cd6fda3014ff57a29cd78aa4a0d1dee898e80e55ab226d974ad6c336e1498eed3e3b4056f1bfcf0ea16b12d0cebb247edfbff7f99e5a32a2e29ef9dacaf42ecdd22f6909ce4b621cbc2c0ca1740c45108d83a8d5764ca0e3a6d21f76a38b42b62653f6352c2197cc190a81fa32e7c157aec5f2d76740c3600ba860a562c406a8aed6c07d45925a909f4d349441f13df8b94b1f6c928f27c9629abcd4bfa54e2641313fcb3f7c7860e80278d94b2f723928753625c1563503ef0957951fd4c5c39e7105aec53a340fcc9be9cd757e3bac55b445cdd559952d92af400d8182da417dcc82b90d5a8bbae8477ef3355b99fd85babf55a03d061543220c4589fa5f1ab01f44e86a541afde53825eea518745f3a4e683d1a7deae83d8116aff4aa1f9ee3f7990c972e4c5424668ff3533f23b920b01be4c937a0c6e2e7f7c52cf91a5f2fb3c7f89b268bfbf85f7a4350c8f89c64796026cbe53c52737456411d9fd9f87a94fcd03cbe9fac24f0a1a6c9b20e3b5346de2fd4c2ec5c92650d051470fac6f269bd468ea14dc7d1fb8f13389c695cc868d2e97a698454bd952cadee712cc92d9a2aac4419801f855816e186d091305b493b422ffb33d118b07803a01fa622751a93b6d81dc83b89c5c6c74dfa6ca4a42efc2646e95cba1d8a86db59b8cdc9430751bc67c7191f5cc4e67a09d14c763ecac757597e95dda6873f, 'Accessed page [product.php] with action=new_product_preview. Review page_parameters and postdata for details.', 'info'),
(313, '2024-12-19 09:53:11', 1, 'product.php', 'cPath=4&action=new_product_preview', '::1', 1, '', 0xd554cd6fda3014ff57a29cd78aa4a0d1dee898e80e55ab226d974ad6c336e1498eed3e3b4056f1bfcf0ea16b12d0cebb247edfbff7f99e5a32a2e29ef9dacaf42ecdd22f6909ce4b621cbc2c0ca1740c45108d83a8d5764ca0e3a6d21f76a38b42b62653f6352c2197cc190a81fa32e7c157aec5f2d76740c3600ba860a562c406a8aed6c07d45925a909f4d349441f13df8b94b1f6c928f27c9629abcd4bfa54e2641313fcb3f7c7860e80278d94b2f723928753625c1563503ef0957951fd4c5c39e7105aec53a340fcc9be9cd757e3bac55b445cdd559952d92af400d8182da417dcc82b90d5a8bbae8477ef3355b99fd85babf55a03d061543220c4589fa5f1ab01f44e86a541afde53825eea518745f3a4e683d1a7deae83d8116aff4aa1f9ee3f7990c972e4c5424668ff3533f23b920b01be4c937a0c6e2e7f7c52cf91a5f2fb3c7f89b268bfbf85f7a4350c8f89c64796026cbe53c52737456411d9fd9f87a94fcd03cbe9fac24f0a1a6c9b20e3b5346de2fd4c2ec5c92650d051470fac6f269bd468ea14dc7d1fb8f13389c695cc868d2e97a698454bd952cadee712cc92d9a2aac4419801f855816e186d091305b493b422ffb33d118b07803a01fa622751a93b6d81dc83b89c5c6c74dfa6ca4a42efc2646e95cba1d8a86db59b8cdc9430751bc67c7191f5cc4e67a09d14c763ecac757597e95dda6873f, 'Success: File upload saved successfully Hp 245 G8 Ryzen 5.png', 'notice'),
(314, '2024-12-19 09:53:14', 1, 'product.php', 'cPath=4&action=insert_product', '::1', 0, '', 0xd5544b6fe23010fe2b51ce5b4452d0767ba3cb8aeea16a55a4dd4b256bb04d18c9b1ddb10364abfef7b543684902daf35e62cf378f6f5ece5b6ac9888a7be66b2bd3db344bbfa425382f8971f0b23084d23114413509aad6da31818e9b4a7ff88d2f2ad99a4cd9b7b0845c32672810f575ce83af5c9bcb67cc900d832da082958a8c4da2ba5a03f715496a93fc7461e802b5ec2517510e4a9d4d48b055cdc07bc255e5075579d833aec0b54c43f7005edf5c8ff26fc34aa32f6aaece9a6c917c056a9828a81dd4872a98dba0b5a88b3ef3abafd9caec2f74edb502ed3198181261a425ea7f59c07ec0d0b5a834facb3c25eea5b8a40df8b413ba3442aaced40266750fb124b768aad0f7128a76f4581661cde82098ada41da1977de2c681c535813ecd4e62b1f1711ea7a892baf09b18a6b3ed3b140dda19dbe618a1431977fad0a9c1ab68365888a63ff9389f5c65f955d609a9a10c35bc8588b7e9bd4df2c93459dc24cff51fa9936930cccfe2efa724d27142ebd1e863a03b022d5ee845df3fc5ef13192e5d48330ab387f9314c14170476833cf90ed478fcfab198255fe3ed79f6108f9b647117cfa537145a1bafd32c0f60b25ccea334476715d4f19a4d46e3e4a7e6f1fe6825810feb9b2cebf0732923f61bb5303b9764592301853c7de3f9b85e23c730b243c5ff7101a7a3a9481d47d216d6511f977b30df910daffefd2f, 'Accessed page [product.php] with action=insert_product. Review page_parameters and postdata for details.', 'info'),
(315, '2024-12-19 09:53:14', 1, 'product.php', 'cPath=4&action=insert_product', '::1', 0, '', 0xd5544b6fe23010fe2b51ce5b4452d0767ba3cb8aeea16a55a4dd4b256bb04d18c9b1ddb10364abfef7b543684902daf35e62cf378f6f5ece5b6ac9888a7be66b2bd3db344bbfa425382f8971f0b23084d23114413509aad6da31818e9b4a7ff88d2f2ad99a4cd9b7b0845c32672810f575ce83af5c9bcb67cc900d832da082958a8c4da2ba5a03f715496a93fc7461e802b5ec2517510e4a9d4d48b055cdc07bc255e5075579d833aec0b54c43f7005edf5c8ff26fc34aa32f6aaece9a6c917c056a9828a81dd4872a98dba0b5a88b3ef3abafd9caec2f74edb502ed3198181261a425ea7f59c07ec0d0b5a834facb3c25eea5b8a40df8b413ba3442aaced40266750fb124b768aad0f7128a76f4581661cde82098ada41da1977de2c681c535813ecd4e62b1f1711ea7a892baf09b18a6b3ed3b140dda19dbe618a1431977fad0a9c1ab68365888a63ff9389f5c65f955d609a9a10c35bc8588b7e9bd4df2c93459dc24cff51fa9936930cccfe2efa724d27142ebd1e863a03b022d5ee845df3fc5ef13192e5d48330ab387f9314c14170476833cf90ed478fcfab198255fe3ed79f6108f9b647117cfa537145a1bafd32c0f60b25ccea334476715d4f19a4d46e3e4a7e6f1fe6825810feb9b2cebf0732923f61bb5303b9764592301853c7de3f9b85e23c730b243c5ff7101a7a3a9481d47d216d6511f977b30df910daffefd2f, 'New product 14 added via admin console.', 'info'),
(316, '2024-12-19 09:53:14', 1, 'category_product_listing.php', 'cPath=4&pID=14', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(317, '2024-12-19 09:53:17', 1, 'product.php', 'action=new_product', '::1', 0, '', 0xab562a28ca4f294d2e892fa92c4855b2523254d2514a0e482cc900b24d80ecc4e492ccfc3c20272fb53c1eaa56a91600, 'Accessed page [product.php] with action=new_product. Review page_parameters and postdata for details.', 'info'),
(318, '2024-12-19 09:54:21', 1, 'product.php', 'cPath=4&action=new_product_preview', '::1', 0, '', 0xdd54514fdb3010fe2b565e375093b64cf096ae0890c65a518d6912927575dcf424c70e67a76d86f8efd869ca6802e27d2f89fdddf7f9eeecbb7b8a4a3259251c777529a38b288ebe46055827890b70323784d272ccbc69e44d2ddbf20cad30957ed50d3e34f21599a2cb280985e4d69077d4b55907aeb26d2cffcef4d170d8002a58aae0b10954572b10ae22496d906f251a0a4f7cf2e75c44d773364fef6f7edccc7eb2f4f26ec6e2219b5cc683419cfef29ae433caf3ebb91cad4f4976920ea800a5de4d34e3cb9a837384cbcaf56ecbc18e0b05b6cda02ff7e0d9607c3a1af56f3068510bf52e6583e42a50fd40416da1de67c1ed1acb1275def5fce86abe34bb0f5ee3b102edd0530c65be540ad49f3160d7f370cca834ba8ffd14b89359af26a41584a543a30fef3c21d0d9033de8eb79f8cec908697d9d854d7a3b6577f55fa9d9386caf08ca350af61da851dc5f5ea5ec5b58dda5b7e1179fb1ab49582c9c21c865588ee3c4836cb19886dd146da9a06ec8c3d321bbd122ac67a52470fe52d9a2f6ad5404ec37eacc6c2d8b63f685cdae170d06e4c3758d7eb65aa140502c617f249027a5d3795b99ff5952cfef3cb0cf727c541d85c9a4ea347451ea0e5292dca0a97ceb143e97bd118bdc4f20da6fcc46d296d0c96eed34021e260874dd54a40ee5d43ec051c85b89f9da7974f856a4a4cedd3a7839eac12d660d7afe165c1f4e388a284cc37d2ff4e66933fbb2ace98064908c4ee2e4243e8f9e5f00, 'Accessed page [product.php] with action=new_product_preview. Review page_parameters and postdata for details.', 'info'),
(319, '2024-12-19 09:54:21', 1, 'product.php', 'cPath=4&action=new_product_preview', '::1', 1, '', 0xdd54514fdb3010fe2b565e375093b64cf096ae0890c65a518d6912927575dcf424c70e67a76d86f8efd869ca6802e27d2f89fdddf7f9eeecbb7b8a4a3259251c777529a38b288ebe46055827890b70323784d272ccbc69e44d2ddbf20cad30957ed50d3e34f21599a2cb280985e4d69077d4b55907aeb26d2cffcef4d170d8002a58aae0b10954572b10ae22496d906f251a0a4f7cf2e75c44d773364fef6f7edccc7eb2f4f26ec6e2219b5cc683419cfef29ae433caf3ebb91cad4f4976920ea800a5de4d34e3cb9a837384cbcaf56ecbc18e0b05b6cda02ff7e0d9607c3a1af56f3068510bf52e6583e42a50fd40416da1de67c1ed1acb1275def5fce86abe34bb0f5ee3b102edd0530c65be540ad49f3160d7f370cca834ba8ffd14b89359af26a41584a543a30fef3c21d0d9033de8eb79f8cec908697d9d854d7a3b6577f55fa9d9386caf08ca350af61da851dc5f5ea5ec5b58dda5b7e1179fb1ab49582c9c21c865588ee3c4836cb19886dd146da9a06ec8c3d321bbd122ac67a52470fe52d9a2f6ad5404ec37eacc6c2d8b63f685cdae170d06e4c3758d7eb65aa140502c617f249027a5d3795b99ff5952cfef3cb0cf727c541d85c9a4ea347451ea0e5292dca0a97ceb143e97bd118bdc4f20da6fcc46d296d0c96eed34021e260874dd54a40ee5d43ec051c85b89f9da7974f856a4a4cedd3a7839eac12d660d7afe165c1f4e388a284cc37d2ff4e66933fbb2ace98064908c4ee2e4243e8f9e5f00, 'Success: File upload saved successfully HP PAVILION AERO 13 BE1001AU.jpg', 'notice'),
(320, '2024-12-19 09:54:27', 1, 'product.php', 'cPath=4&action=insert_product', '::1', 0, '', 0xdd54cb6edb3010fc1542d73681e5478ae6a6d4811da0a98d184d512000b1a668790b8a5496946d35c8bf9754e4c692e3e6de8b44ceceeeec4b7a8a0a3269291c775521a3cb288e3e46395827890b70323384d2724cbd69e84d0ddbf214ad30a5feebd73b69e42b32799751100ac9ad212fd4b55907aeb44d2eaf317d361c36800a962a28d689ea7205c29524a949f2d585a3f5d2b2935c400528f56642295f561c9c235c96eea82a073b2e14d846e9d8dd8317bdd1f970785c69f0452dd49b940d922b411d270a6a0bd54b15dcaeb12850675de54757f1a5d99de8da6309daa1a7184afd4873d4ef316077a4d066941add699d1c77323d65f5f8a8153a37a954ada979acd01da420b94153fabee79035a3c73cf36b462f17b391b42574b22b5c3bf0b026d095d94accd6ce83834354499db97508d39ad016d31afd7c08aef7115a9261a75f3a75f455d41b9ca6757ffabdfef02cee9fc5ad901a725fc3938f78194de76c9edcdf7cbd997d63c9f5dd8cc50376751df77a71f2ddfbf4dfa33c1f4a4b2b080b8746efc35f11e8f4811ef4741e9e7332425a9f7cb824b7637657fd969a8dc2754250ac51b02f40b5c7fdf524619fc2e92eb90daff8824daec261e10cf98e87e328ee7b902d16e3701ba32d14543579703e60375a84f3ac9004ce6f355b54fe9f9307ec07ead46c2d8b63f681cda68b1a03f2e9bada7fb65aa14050accf7e4a204f4ac6f3a621ff595187232c49ed47d714db32ef3f8d7fadc4f9af228b9eff00, 'Accessed page [product.php] with action=insert_product. Review page_parameters and postdata for details.', 'info'),
(321, '2024-12-19 09:54:27', 1, 'product.php', 'cPath=4&action=insert_product', '::1', 0, '', 0xdd54cb6edb3010fc1542d73681e5478ae6a6d4811da0a98d184d512000b1a668790b8a5496946d35c8bf9754e4c692e3e6de8b44ceceeeec4b7a8a0a3269291c775521a3cb288e3e46395827890b70323384d2724cbd69e84d0ddbf214ad30a5feebd73b69e42b32799751100ac9ad212fd4b55907aeb44d2eaf317d361c36800a962a28d689ea7205c29524a949f2d585a3f5d2b2935c400528f56642295f561c9c235c96eea82a073b2e14d846e9d8dd8317bdd1f970785c69f0452dd49b940d922b411d270a6a0bd54b15dcaeb12850675de54757f1a5d99de8da6309daa1a7184afd4873d4ef316077a4d066941add699d1c77323d65f5f8a8153a37a954ada979acd01da420b94153fabee79035a3c73cf36b462f17b391b42574b22b5c3bf0b026d095d94accd6ce83834354499db97508d39ad016d31afd7c08aef7115a9261a75f3a75f455d41b9ca6757ffabdfef02cee9fc5ad901a725fc3938f78194de76c9edcdf7cbd997d63c9f5dd8cc50376751df77a71f2ddfbf4dfa33c1f4a4b2b080b8746efc35f11e8f4811ef4741e9e7332425a9f7cb824b7637657fd969a8dc2754250ac51b02f40b5c7fdf524619fc2e92eb90daff8824daec261e10cf98e87e328ee7b902d16e3701ba32d14543579703e60375a84f3ac9004ce6f355b54fe9f9307ec07ead46c2d8b63f681cda68b1a03f2e9bada7fb65aa14050accf7e4a204f4ac6f3a621ff595187232c49ed47d714db32ef3f8d7fadc4f9af228b9eff00, 'New product 15 added via admin console.', 'info'),
(322, '2024-12-19 09:54:27', 1, 'category_product_listing.php', 'cPath=4&pID=15', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(323, '2024-12-19 09:54:29', 1, 'product.php', 'action=new_product', '::1', 0, '', 0xab562a28ca4f294d2e892fa92c4855b2523254d2514a0e482cc900b24d80ecc4e492ccfc3c20272fb53c1eaa56a91600, 'Accessed page [product.php] with action=new_product. Review page_parameters and postdata for details.', 'info'),
(324, '2024-12-19 09:55:49', 1, 'product.php', 'cPath=4&action=new_product_preview', '::1', 0, '', 0xd5544b6f1a3110fe2bab3d3715bb81aac92d2912e9210a0a875e2259836d9691bcb633b6816dc47fafbd10caee827aeec5f6bc3cdf3c3f724b4604ee996faccceff322ff92d7e0bc24c6c1cbca104ac75044d1388a8eda8e0974dc047db21b5d15b21599baaf6109b964ce5074d497390f3eb82396bf7f46340c36800a962a796c81eab002ee03493a823c37d15047c58ff8cf7dfe34cfcaf1249b15c955d965ec4f360c5d842b7b01252e07a52e0621d8b261e03de132f841263cec1857e08ee886e691795b8ebf8eca6176922d6aae2eaa6c907c0035040a6a0bcd210ae6d6682deaaaeff9dd376c69765732fd1e407b8c2a86446c831af5bf346037f0d0d5081afd753f35eea418d45b3a4e683d1afd59c347022ddee84d3fcdd33927c3a58b3d948887e769f6dafc963abb4de48cc0ae91673f80c4490c421a9da8d787e7747dcf668fe95e784350c9f42c27df22335b2ca6899aa2b30a9af42c6201b29f9aa7f78b95043ee6355b347152eac4fb855a98adcb8aa2a5802256df5abeac56c83196ead077ff7910fb0b058c514d3ad5af8d90aa378cb5d53d8e25b94113e268d411f841887515b7071d08b391b425f4b2df1bad014bd30f7d3781d467bb1c13de81bc9558ad7d9aa873232575e5d7c94b67c76d51b4dcbb73e6faf3870ea2b4c90ebd3ed885edde12a2edf072548e6f8af2a6b8cbf77f00, 'Accessed page [product.php] with action=new_product_preview. Review page_parameters and postdata for details.', 'info');
INSERT INTO `admin_activity_log` (`log_id`, `access_date`, `admin_id`, `page_accessed`, `page_parameters`, `ip_address`, `flagged`, `attention`, `gzpost`, `logmessage`, `severity`) VALUES
(325, '2024-12-19 09:55:49', 1, 'product.php', 'cPath=4&action=new_product_preview', '::1', 1, '', 0xd5544b6f1a3110fe2bab3d3715bb81aac92d2912e9210a0a875e2259836d9691bcb633b6816dc47fafbd10caee827aeec5f6bc3cdf3c3f724b4604ee996faccceff322ff92d7e0bc24c6c1cbca104ac75044d1388a8eda8e0974dc047db21b5d15b21599baaf6109b964ce5074d497390f3eb82396bf7f46340c36800a962a796c81eab002ee03493a823c37d15047c58ff8cf7dfe34cfcaf1249b15c955d965ec4f360c5d842b7b01252e07a52e0621d8b261e03de132f841263cec1857e08ee886e691795b8ebf8eca6176922d6aae2eaa6c907c0035040a6a0bcd210ae6d6682deaaaeff9dd376c69765732fd1e407b8c2a86446c831af5bf346037f0d0d5081afd753f35eea418d45b3a4e683d1afd59c347022ddee84d3fcdd33927c3a58b3d948887e769f6dafc963abb4de48cc0ae91673f80c4490c421a9da8d787e7747dcf668fe95e784350c9f42c27df22335b2ca6899aa2b30a9af42c6201b29f9aa7f78b95043ee6355b347152eac4fb855a98adcb8aa2a5802256df5abeac56c83196ead077ff7910fb0b058c514d3ad5af8d90aa378cb5d53d8e25b94113e268d411f841887515b7071d08b391b425f4b2df1bad014bd30f7d3781d467bb1c13de81bc9558ad7d9aa873232575e5d7c94b67c76d51b4dcbb73e6faf3870ea2b4c90ebd3ed885edde12a2edf072548e6f8af2a6b8cbf77f00, 'Success: File upload saved successfully HP 245 G10.png', 'notice'),
(326, '2024-12-19 09:55:52', 1, 'product.php', 'cPath=4&action=insert_product', '::1', 0, '', 0xd5543b6fdb3010fe2b82e626b014bb68b32535e0740862c4439700c499a4a50328923952b6d520ffbda42cc7961423731791f7dde3bb17f5965a32a2e69ef9c6caf436cdd26f6905ce4b621cbc2c0ca1740c45504d83aab3764ca0e3a6d61f7e938b4ab621530d2d2c2197cc190a44439df3e06bd7e5728a19b261b00554b05691b14d54d71be0be26495d922717862e50cb417211e5a0d4a70909b66e18784fb8aefda82a0f7bc615b88e69ec1ec09b7c7a3dc9c795465fd45c7d6ab245f235a871a2a076d01caa60ae446b511743e657dfb0b5d95fe8da6b0dda63303124c2482bd45f59c07ec4d0b7a835facb3c15eea5b8a40df8ac17ba3242aaded40266f500b124b768ead0f70a8a6ef4581561cde82098ada41da19743e2d681c5358121cd4e6251fa388f7354495df83286e96dfb0e458bfe3c07cb63841e65dce943a746afa2dd6021dafee4937c7a95e557592fa4862ad4f01622dea60fcb249fce92451683e47de0fd3cac749cd07a34fae87a4fa0c50bbde88765fc2ec970e9426251b87b9c27cfcd5fa9939b282e086c893cf905243ed420a4d1517abe7b8cc78f64711fcf9537141a1aaff9ec7b0093d56a1ea5393aaba089d72c6c77f25bf3787fb292c087a54d564df8a55411fb835a989d4bb2ac958042aebef57cda6c906318d4a1dcffbc88f311d5a48ea3e98aeba98f6b7d1af0b50d0ffdfd1f, 'Accessed page [product.php] with action=insert_product. Review page_parameters and postdata for details.', 'info'),
(327, '2024-12-19 09:55:52', 1, 'product.php', 'cPath=4&action=insert_product', '::1', 0, '', 0xd5543b6fdb3010fe2b82e626b014bb68b32535e0740862c4439700c499a4a50328923952b6d520ffbda42cc7961423731791f7dde3bb17f5965a32a2e69ef9c6caf436cdd26f6905ce4b621cbc2c0ca1740c45504d83aab3764ca0e3a6d61f7e938b4ab621530d2d2c2197cc190a44439df3e06bd7e5728a19b261b00554b05691b14d54d71be0be26495d922717862e50cb417211e5a0d4a70909b66e18784fb8aefda82a0f7bc615b88e69ec1ec09b7c7a3dc9c795465fd45c7d6ab245f235a871a2a076d01caa60ae446b511743e657dfb0b5d95fe8da6b0dda63303124c2482bd45f59c07ec4d0b7a835facb3c15eea5b8a40df8ac17ba3242aaded40266f500b124b768ead0f70a8a6ef4581561cde82098ada41da19743e2d681c5358121cd4e6251fa388f7354495df83286e96dfb0e458bfe3c07cb63841e65dce943a746afa2dd6021dafee4937c7a95e557592fa4862ad4f01622dea60fcb249fce92451683e47de0fd3cac749cd07a34fae87a4fa0c50bbde88765fc2ec970e9426251b87b9c27cfcd5fa9939b282e086c893cf905243ed420a4d1517abe7b8cc78f64711fcf9537141a1aaff9ec7b0093d56a1ea5393aaba089d72c6c77f25bf3787fb292c087a54d564df8a55411fb835a989d4bb2ac958042aebef57cda6c906318d4a1dcffbc88f311d5a48ea3e98aeba98f6b7d1af0b50d0ffdfd1f, 'New product 16 added via admin console.', 'info'),
(328, '2024-12-19 09:55:53', 1, 'category_product_listing.php', 'cPath=4&pID=16', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(329, '2024-12-19 09:58:36', 1, 'product.php', 'action=new_product', '::1', 0, '', 0xab562a28ca4f294d2e892fa92c4855b2523254d2514a0e482cc900b24d80ecc4e492ccfc3c20272fb53c1eaa56a91600, 'Accessed page [product.php] with action=new_product. Review page_parameters and postdata for details.', 'info'),
(330, '2024-12-19 09:59:18', 1, 'product.php', 'cPath=4&action=new_product_preview', '::1', 0, '', 0xdd54db6e1a3110fd156b5fdb44ec06a892b75caa809416549aa6952259836d6024afbd197bb928e2df632f90c02e28ef7dd9b5cf9cf19cb167e63529c8ca5278ee57854aae9234f99ae4e0bc222ec0aba925548ea30ca676306dd98e4b74c296e6ddaf75d2c82764f33aa320148a3b4b2150dde63cf8d26db57c9c19d47098036a18eb18b1126aca09085f92a2adc87d17037920be8673ae92de900daffff41ffa839f6cf8f03862699b7d7f6ab5b2f4f763f0c93ea3acdfcfe5e8424aaa96744405687d3451c9c72b0ede138e4bdfb82d0f4b2e34b86d064df70076bf75ce2fbacd1b8cbe68843e4a9923f912745328e805ac36597037c3a24033ad477ef12b3eb6cb13aff15282f11828966428951ccd670c5836221c324a83fe749c1c974a366a4239415878b466f7ce3704463ed3b3e90de37748562817ea2c6efac62bcd6e2d29869d08dc13143314ec16487e10fa84eeaf8afb5fd73fe22fedb2fb9bb818794b30ad4c9d340b201b8deee2ee0e5da1615591dbe72dd63722ae078522f0e172d968155a2a8fd8131a69178ea529fbc206bd51850105d9bef21f4c26281034cbd83f0595ee6d7dfe97a9ad8f3c76c8b5735029b9954ad79a3b2f4c0d2948cdd196a18df290c9c688f9344c23da6cec5cd182d0ab7a1d550e3c4e13a8872949ef4a6bfb0c0792170aa7331fd08b7d27adccd4cf62948399b94059a197fbe06c77c281a23819377dd198add51c94b2ea86ac95b5cfd2ec2cbd4cd66f, 'Accessed page [product.php] with action=new_product_preview. Review page_parameters and postdata for details.', 'info'),
(331, '2024-12-19 09:59:18', 1, 'product.php', 'cPath=4&action=new_product_preview', '::1', 1, '', 0xdd54db6e1a3110fd156b5fdb44ec06a892b75caa809416549aa6952259836d6024afbd197bb928e2df632f90c02e28ef7dd9b5cf9cf19cb167e63529c8ca5278ee57854aae9234f99ae4e0bc222ec0aba925548ea30ca676306dd98e4b74c296e6ddaf75d2c82764f33aa320148a3b4b2150dde63cf8d26db57c9c19d47098036a18eb18b1126aca09085f92a2adc87d17037920be8673ae92de900daffff41ffa839f6cf8f03862699b7d7f6ab5b2f4f763f0c93ea3acdfcfe5e8424aaa96744405687d3451c9c72b0ede138e4bdfb82d0f4b2e34b86d064df70076bf75ce2fbacd1b8cbe68843e4a9923f912745328e805ac36597037c3a24033ad477ef12b3eb6cb13aff15282f11828966428951ccd670c5836221c324a83fe749c1c974a366a4239415878b466f7ce3704463ed3b3e90de37748562817ea2c6efac62bcd6e2d29869d08dc13143314ec16487e10fa84eeaf8afb5fd73fe22fedb2fb9bb818794b30ad4c9d340b201b8deee2ee0e5da1615591dbe72dd63722ae078522f0e172d968155a2a8fd8131a69178ea529fbc206bd51850105d9bef21f4c26281034cbd83f0595ee6d7dfe97a9ad8f3c76c8b5735029b9954ad79a3b2f4c0d2948cdd196a18df290c9c688f9344c23da6cec5cd182d0ab7a1d550e3c4e13a8872949ef4a6bfb0c0792170aa7331fd08b7d27adccd4cf62948399b94059a197fbe06c77c281a23819377dd198add51c94b2ea86ac95b5cfd2ec2cbd4cd66f, 'Success: File upload saved successfully HP PAVILION PLUS 14 EW0021TU.png', 'notice'),
(332, '2024-12-19 09:59:20', 1, 'product.php', 'cPath=4&action=insert_product', '::1', 0, '', 0xdd545b6fda3014fe2b16af5b114981697deb652a48dd40635d37a99275b00d1cc9b1d363878baafef7d921ac2429ebfb5e12fb3b97ef3b97e4b993939585f0dcef72d5b9e8249d8f9d0c9c57c40578b5b484ca7194c1d40fa6cadb71894ed8c2fc8deb9d34f205d9ace991130ac59da540d4b4390fbe709596d79c410d8735a086b98e8ca550532c40f8821455225f4338ba40ad1ae2222a40eb3705493edf71f09e705ef856551eb65c687015533b3c80c34f83eef9b05d698c4523f49b2e6b245f806e0b05bd81ddbe0aee5698e768964de627bfe373bb3dd1b5a7028cc7e0624986916668def3806d8ba1ee5118f4a77932dc2a79ca1af0412d7566a5d2b5a9052c370d2427b5465b84be67b0ac468fd932ac19ed2f76ad6843e85593b80ce0714da049b351b85cf9009e1fa35a99a55fc534b56ddfa02cd1cfc7e0ea90a14619777adfa9d657516eb094657fd25eda3f4bd2b3a496d240166a780e192f3aa3299b5efe1cdf8d27dfd8f4ee7ec6923efbf2d0eba5c98ffb1093bee7f2724cad9c20cc3d5a73487f4560e4233d9ad1343ea7648572417cbc8c8d579a5d5b520c0711b825c85728d835907c751813ba5f2adebf5f7e8daf64c86eafe261e62d85cec7e3204903c866b39b78bb41976bd895cefd6e8f8d8d88e749ae087cd86e36db857f4f16b10734d26e1c4b12f6814d46b312030ab27d193f592c50206896b2df0a4add555bfecbd28ec759903e8cb12ab9663e7c26ff5a8f6e1e7e252f7f00, 'Accessed page [product.php] with action=insert_product. Review page_parameters and postdata for details.', 'info'),
(333, '2024-12-19 09:59:20', 1, 'product.php', 'cPath=4&action=insert_product', '::1', 0, '', 0xdd545b6fda3014fe2b16af5b114981697deb652a48dd40635d37a99275b00d1cc9b1d363878baafef7d921ac2429ebfb5e12fb3b97ef3b97e4b993939585f0dcef72d5b9e8249d8f9d0c9c57c40578b5b484ca7194c1d40fa6cadb71894ed8c2fc8deb9d34f205d9ace991130ac59da540d4b4390fbe709596d79c410d8735a086b98e8ca550532c40f8821455225f4338ba40ad1ae2222a40eb3705493edf71f09e705ef856551eb65c687015533b3c80c34f83eef9b05d698c4523f49b2e6b245f806e0b05bd81ddbe0aee5698e768964de627bfe373bb3dd1b5a7028cc7e0624986916668def3806d8ba1ee5118f4a77932dc2a79ca1af0412d7566a5d2b5a9052c370d2427b5465b84be67b0ac468fd932ac19ed2f76ad6843e85593b80ce0714da049b351b85cf9009e1fa35a99a55fc534b56ddfa02cd1cfc7e0ea90a14619777adfa9d657516eb094657fd25eda3f4bd2b3a496d240166a780e192f3aa3299b5efe1cdf8d27dfd8f4ee7ec6923efbf2d0eba5c98ffb1093bee7f2724cad9c20cc3d5a73487f4560e4233d9ad1343ea7648572417cbc8c8d579a5d5b520c0711b825c85728d835907c751813ba5f2adebf5f7e8daf64c86eafe261e62d85cec7e3204903c866b39b78bb41976bd895cefd6e8f8d8d88e749ae087cd86e36db857f4f16b10734d26e1c4b12f6814d46b312030ab27d193f592c50206896b2df0a4add555bfecbd28ec759903e8cb12ab9663e7c26ff5a8f6e1e7e252f7f00, 'New product 17 added via admin console.', 'info'),
(334, '2024-12-19 09:59:20', 1, 'category_product_listing.php', 'cPath=4&pID=17', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(335, '2024-12-19 09:59:23', 1, 'product.php', 'action=new_product', '::1', 0, '', 0xab562a28ca4f294d2e892fa92c4855b2523254d2514a0e482cc900b24d80ecc4e492ccfc3c20272fb53c1eaa56a91600, 'Accessed page [product.php] with action=new_product. Review page_parameters and postdata for details.', 'info'),
(336, '2024-12-19 10:01:00', 1, 'product.php', 'cPath=4&action=new_product_preview', '::1', 0, '', 0xdd54df6fda3010fe57acbc6ead08834ef48dae535ba91da8a89b2a55b20edbc0498e9d9e1d20abf8df6b87c020a1eafb5e12dfddf7dd0ffbeede929cac2c84e7becc557299a4c9d72403e71571015ecd2da1721c6530f582a9463b2ed1095b983daff3a191cfc8664d444e2814779642a0a6cd79f085ab73f9e73364c36109a861aa63c42a5153cc40f88214d5491e520c6401f816fc5c26b763361efebebbbf1bfd62e3fba7094b7bece773a7937e1f3e054ef733c866ef97a30b25a946d1512b40eb93854a3e2d39784f382d7cebb63cacb9d0e0ea0adaf4a0bce80dce07276e3072d108bd831c229648be00ddce13f40aca6d11dc2d30cfd1cc9b815f7dc9a776fdc163bc16603c068825193a2543f31902d6ad08c788c2a0ff384e866b255b2da19c20cc3d5ab37be62b02235fe8c5dc8ee3774c562817da2c0ac3876bf658fe5586f5a37843902f50b01f40726f06a9ac89d2e3f021fed20b7673150f136f09e62a1efb69b7565ea3cb359415b077de617746c4f32857043e5c2a9b946192b2a8fb8346da956369cabeb0d1eda4d20185747dc51fcd66281034ebb267051440c3eb71dd98ff59519b130f1caaec1f754766a5d28d79ce72d3d0e4a496688b303959a8636bc46c1e16106d05bb54b422f4aad93b1581c70502cd3005e95d3bd50f7094f24ae17ce183f6db21492b33f78b18e5684dae5056daa3c15cec3c1c651497e176165aebb45a7d525613d0ed747b6769f72c1d249b77, 'Accessed page [product.php] with action=new_product_preview. Review page_parameters and postdata for details.', 'info'),
(337, '2024-12-19 10:01:00', 1, 'product.php', 'cPath=4&action=new_product_preview', '::1', 1, '', 0xdd54df6fda3010fe57acbc6ead08834ef48dae535ba91da8a89b2a55b20edbc0498e9d9e1d20abf8df6b87c020a1eafb5e12dfddf7dd0ffbeede929cac2c84e7becc557299a4c9d72403e71571015ecd2da1721c6530f582a9463b2ed1095b983daff3a191cfc8664d444e2814779642a0a6cd79f085ab73f9e73364c36109a861aa63c42a5153cc40f88214d5491e520c6401f816fc5c26b763361efebebbbf1bfd62e3fba7094b7bece773a7937e1f3e054ef733c866ef97a30b25a946d1512b40eb93854a3e2d39784f382d7cebb63cacb9d0e0ea0adaf4a0bce80dce07276e3072d108bd831c229648be00ddce13f40aca6d11dc2d30cfd1cc9b815f7dc9a776fdc163bc16603c068825193a2543f31902d6ad08c788c2a0ff384e866b255b2da19c20cc3d5ab37be62b02235fe8c5dc8ee3774c562817da2c0ac3876bf658fe5586f5a37843902f50b01f40726f06a9ac89d2e3f021fed20b7673150f136f09e62a1efb69b7565ea3cb359415b077de617746c4f32857043e5c2a9b946192b2a8fb8346da956369cabeb0d1eda4d20185747dc51fcd66281034ebb267051440c3eb71dd98ff59519b130f1caaec1f754766a5d28d79ce72d3d0e4a496688b303959a8636bc46c1e16106d05bb54b422f4aad93b1581c70502cd3005e95d3bd50f7094f24ae17ce183f6db21492b33f78b18e5684dae5056daa3c15cec3c1c651497e176165aebb45a7d525613d0ed747b6769f72c1d249b77, 'Success: File upload saved successfully HP PAVILION PLUS 14 EY0017AU.jpg', 'notice'),
(338, '2024-12-19 10:01:04', 1, 'product.php', 'cPath=4&action=insert_product', '::1', 0, '', 0xdd54df4fdb3010fe57acbc6ea0a62b4cf056c6442bc15a51b10909c9bada6e7a936387b3d33643fcefb3430a4d4ac7fb5e12fbbbefeebb5fc953529095a5f0dc57854ace9334f99ce4e0bc222ec0abcc122ac75106d320981ab6e3129db0a579f5eb1d34f205d9bccb280885e2ce5210eada9c075fba2697b798211b0e2b400d731d15eb444db900e14b52d424f9e6c2d10569d5492ea202b47e3721c9e71507ef09e7a5dfabcac3860b0dae51da770fe0e9e0ecf8ec9d4aa32f1aa1b7945dc60ac997a0f7f304bd86eaa508ee96581468b2aef0a3aff8dc6e0e34edb104e331502cc930d11ccd470cd8ec29b419a5417f5827c78d9287ac013f6985cead54ba35b48015a68314a45668cbd0f61cb266f2986761cbe8e562578ad6845e75856b071eb704ba326b85d9d207f0cb2eaa95c9fc3286692dfb1a658db6c6b6dc466849c6957ee9d4de47512fb094757ffabdfee028ed1fa5ad9006f250c35388789e8ca66c3afc39be1e4f7eb0e9f5dd8ca503f6fdbed74bbf0eef824fff23caf3aeb47282b0f068cd36fc0581910ff46046d3f89c9215ca85e4e3657873c96eab3fcab09378bd22289628d83720f96a06a9ac89b7dbe14d7ca5a7ecea221e66de52e87a3c9ea4fd06bc445768a86ae2e0b8c7c646c4f3a450043e6c359b55e1979347ec171a69d78ea529fbc426a3598d0185747ded3f592c502068d667f70a28908697d3a621ff5951bb232c496f47d714db326f3f8d7fadc4f1ef224b9eff02, 'Accessed page [product.php] with action=insert_product. Review page_parameters and postdata for details.', 'info'),
(339, '2024-12-19 10:01:04', 1, 'product.php', 'cPath=4&action=insert_product', '::1', 0, '', 0xdd54df4fdb3010fe57acbc6ea0a62b4cf056c6442bc15a51b10909c9bada6e7a936387b3d33643fcefb3430a4d4ac7fb5e12fbbbefeebb5fc953529095a5f0dc57854ace9334f99ce4e0bc222ec0abcc122ac75106d320981ab6e3129db0a579f5eb1d34f205d9bccb280885e2ce5210eada9c075fba2697b798211b0e2b400d731d15eb444db900e14b52d424f9e6c2d10569d5492ea202b47e3721c9e71507ef09e7a5dfabcac3860b0dae51da770fe0e9e0ecf8ec9d4aa32f1aa1b7945dc60ac997a0f7f304bd86eaa508ee96581468b2aef0a3aff8dc6e0e34edb104e331502cc930d11ccd470cd8ec29b419a5417f5827c78d9287ac013f6985cead54ba35b48015a68314a45668cbd0f61cb266f2986761cbe8e562578ad6845e75856b071eb704ba326b85d9d207f0cb2eaa95c9fc3286692dfb1a658db6c6b6dc466849c6957ee9d4de47512fb094757ffabdfee028ed1fa5ad9006f250c35388789e8ca66c3afc39be1e4f7eb0e9f5dd8ca503f6fdbed74bbf0eef824fff23caf3aeb47282b0f068cd36fc0581910ff46046d3f89c9215ca85e4e3657873c96eab3fcab09378bd22289628d83720f96a06a9ac89b7dbe14d7ca5a7ecea221e66de52e87a3c9ea4fd06bc445768a86ae2e0b8c7c646c4f3a450043e6c359b55e1979347ec171a69d78ea529fbc426a3598d0185747ded3f592c502068d667f70a28908697d3a621ff5951bb232c496f47d714db326f3f8d7fadc4f1ef224b9eff02, 'New product 18 added via admin console.', 'info'),
(340, '2024-12-19 10:01:04', 1, 'category_product_listing.php', 'cPath=4&pID=18', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(341, '2024-12-19 10:02:22', 1, 'product.php', 'action=new_product', '::1', 0, '', 0xab562a28ca4f294d2e892fa92c4855b2523254d2514a0e482cc900b24d80ecc4e492ccfc3c20272fb53c1eaa56a91600, 'Accessed page [product.php] with action=new_product. Review page_parameters and postdata for details.', 'info'),
(342, '2024-12-19 10:03:08', 1, 'product.php', 'cPath=4&action=new_product_preview', '::1', 0, '', 0xdd54db6e1a3110fd156b5fdb442ca129c95b026988d4165492b6912259836d6024afbd197bb928e2df6b2f0b810594f7beecda67ce5c3d336f494e5616c273bfcc55729da4c9e72403e71571015e4d2ca1721c6510b582a8623b2ed1095b98ad5ee3a4908fc96675464e2814779682a3bacc79f085ab6279b719a2e13003d430d2d16319a829c6207c418aaa2077550c6481f816ec5c27bd01bbfbf9fb99fdbdb86cb0b4c5fadfefbaec5ba7d16eb71f9f8252f343ce6a6b99a30b49a95ada1115a0f5d154251f2d39784f382afc41bd3c2cb8d0e0aa1c0ed56331d276e3bc75a48851198dd05bce2e6586e40bd08791829ec3729d067753cc733493baeb57bfe423bb38f120af05188f816249866ec9d07cc480c581877d4661d09ff693e142c983b6504e10e61eadd93cf52d81912ff4627a83f81d9015ca85568b9707e395661d4b8a3d694fc0be46f49e209fa2601d20f9ceaa5017915f373fe22fbd64f7b7f130f49660a24a8c3d9650175dae615942adf3067b30229efbb922f0a1ba6cb80c639545ec0f1a69e78ea529fbc4fabd61890185b87da9df1f8f512068d664cf0a28906eba83aa49ffd7ec56479e3ca4fb65af5f322b95ae4d79969b1a92939aa12dc23465218bb510b349584bb4bed899a239a157f56e2a15785c2b50775390de3458f5127b21cf154ea63ea017bb4a5a99899f462f7b53394759a257bbe07463612fa2b822d7d371b064cb8528653913cd46b3759636cfd2ab64f50f, 'Accessed page [product.php] with action=new_product_preview. Review page_parameters and postdata for details.', 'info'),
(343, '2024-12-19 10:03:08', 1, 'product.php', 'cPath=4&action=new_product_preview', '::1', 1, '', 0xdd54db6e1a3110fd156b5fdb442ca129c95b026988d4165492b6912259836d6024afbd197bb928e2df6b2f0b810594f7beecda67ce5c3d336f494e5616c273bfcc55729da4c9e72403e71571015e4d2ca1721c6510b582a8623b2ed1095b98ad5ee3a4908fc96675464e2814779682a3bacc79f085ab6279b719a2e13003d430d2d16319a829c6207c418aaa2077550c6481f816ec5c27bd01bbfbf9fb99fdbdb86cb0b4c5fadfefbaec5ba7d16eb71f9f8252f343ce6a6b99a30b49a95ada1115a0f5d154251f2d39784f382afc41bd3c2cb8d0e0aa1c0ed56331d276e3bc75a48851198dd05bce2e6586e40bd08791829ec3729d067753cc733493baeb57bfe423bb38f120af05188f816249866ec9d07cc480c581877d4661d09ff693e142c983b6504e10e61eadd93cf52d81912ff4627a83f81d9015ca85568b9707e395661d4b8a3d694fc0be46f49e209fa2601d20f9ceaa5017915f373fe22fbd64f7b7f130f49660a24a8c3d9650175dae615942adf3067b30229efbb922f0a1ba6cb80c639545ec0f1a69e78ea529fbc4fabd61890185b87da9df1f8f512068d664cf0a28906eba83aa49ffd7ec56479e3ca4fb65af5f322b95ae4d79969b1a92939aa12dc23465218bb510b349584bb4bed899a239a157f56e2a15785c2b50775390de3458f5127b21cf154ea63ea017bb4a5a99899f462f7b53394759a257bbe07463612fa2b822d7d371b064cb8528653913cd46b3759636cfd2ab64f50f, 'Success: File upload saved successfully HP ENVY X360 14 OLED FC0888TU.png', 'notice'),
(344, '2024-12-19 10:03:10', 1, 'product.php', 'cPath=4&action=insert_product', '::1', 0, '', 0xdd54ef6fda3010fd572cbe6e4584b28ef55b0b5da9b40d34da6d952a59876de024c74ecf0e1055fddf6787d09250d6effb921fefdedd7be7bbe4a9959195b9f0dc17996a9db792d6c7560ace2be202bc5a5842e538ca10ea8550c5765ca21336372f799da3413e279b361919a150dc590a42cd98f3e073577979ad19dc7058016a98e9a8581a35f91c84cf495165f23585a30bd2aa612ea202b47ed390e4b38283f784b3dc1f74e561c3850657291da647cb49bfd3eebdd16a4c4623f40b679fb242f239e843a7a0d7506cdbe06e89598666d1947ef4059fd9cd91637bccc1780c144b32cc3445f31e0336070a75466ed01fd74971a3e4b168c03fd54aa7562a5d1b5bc032d34032522bb47938f81416d5ec315d843da3ed8b5d295a137ad5142e1378dc1368caac152e963e80a7fba85666e197b14c6d426b9425fa651f5cee2ad424e3526f4feae0b3285758caf27cba9d6eef24e99e24b59206d2d0c353a878de1a4dd8d58f5ff7eccfe95987253d36fe7635645f079d7ebf7f7b1792baef729ef7c595138499476b76029704463ed083194de27542562817ecc7971be39566034b8add694fc03e47f49a205ba2600320f9caaa5017919f17dfe32d3963d797f161ea2d85119418bb2da121ba4c435142bd7687dd18119fc79922f061c1d9b408ff9f3462bfd148bb762c49d807361e4d4b0c28f8f665fe783e4781a05997dd2ba040ba184eaaa3f95fbbdb1f6a4e7a37ccaaeb5a78f7b9fc734bda59f8a73cff05, 'Accessed page [product.php] with action=insert_product. Review page_parameters and postdata for details.', 'info'),
(345, '2024-12-19 10:03:10', 1, 'product.php', 'cPath=4&action=insert_product', '::1', 0, '', 0xdd54ef6fda3010fd572cbe6e4584b28ef55b0b5da9b40d34da6d952a59876de024c74ecf0e1055fddf6787d09250d6effb921fefdedd7be7bbe4a9959195b9f0dc17996a9db792d6c7560ace2be202bc5a5842e538ca10ea8550c5765ca21336372f799da3413e279b361919a150dc590a42cd98f3e073577979ad19dc7058016a98e9a8581a35f91c84cf495165f23585a30bd2aa612ea202b47ed390e4b38283f784b3dc1f74e561c3850657291da647cb49bfd3eebdd16a4c4623f40b679fb242f239e843a7a0d7506cdbe06e89598666d1947ef4059fd9cd91637bccc1780c144b32cc3445f31e0336070a75466ed01fd74971a3e4b168c03fd54aa7562a5d1b5bc032d34032522bb47938f81416d5ec315d843da3ed8b5d295a137ad5142e1378dc1368caac152e963e80a7fba85666e197b14c6d426b9425fa651f5cee2ad424e3526f4feae0b3285758caf27cba9d6eef24e99e24b59206d2d0c353a878de1a4dd8d58f5ff7eccfe95987253d36fe7635645f079d7ebf7f7b1792baef729ef7c595138499476b76029704463ed083194de27542562817ecc7971be39566034b8add694fc03e47f49a205ba2600320f9caaa5017919f17dfe32d3963d797f161ea2d85119418bb2da121ba4c435142bd7687dd18119fc79922f061c1d9b408ff9f3462bfd148bb762c49d807361e4d4b0c28f8f665fe783e4781a05997dd2ba040ba184eaaa3f95fbbdb1f6a4e7a37ccaaeb5a78f7b9fc734bda59f8a73cff05, 'New product 19 added via admin console.', 'info'),
(346, '2024-12-19 10:03:11', 1, 'category_product_listing.php', 'cPath=4&pID=19', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(347, '2024-12-19 10:03:17', 1, 'category_product_listing.php', 'cPath=3', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(348, '2024-12-19 10:05:39', 1, 'product.php', 'action=new_product', '::1', 0, '', 0xab562a28ca4f294d2e892fa92c4855b2523254d2514a0e482cc900b28d81ecc4e492ccfc3c20272fb53c1eaa56a91600, 'Accessed page [product.php] with action=new_product. Review page_parameters and postdata for details.', 'info'),
(349, '2024-12-19 10:06:24', 1, 'product.php', 'cPath=3&action=new_product_preview', '::1', 0, '', 0xe554db6edb300cfd15c1af5b8b389716ed5b9b6c6980ad2e9aee12a080c0484a4240965c4ace0545ffbd9293748993607bdf93adc343918722f99a146465293cf7ab4225d7499a7c4e72705e1117e0d5d4122ac75106532b98366cc7253a614bf3e1d73869e413b2799d51100ac59da510a86e731e7ce936b9fcb93364c3610ea861ac63c42a51534e40f892146d92dc75319007e26bb8e73af9f6e53efb99b151d6bf610f8f19bb64699b3d653fba77acd1e88c06bde0d8fc27dedb47048e2e885335f91115a0f551c9928f571cbc271c97fea06e1e965c68701b2d87eeb128ade6c579e74831a3331aa13f38bb9439922f411f660a7a01abb50cee66581468a6f5d02f7ec5c77679e2615e4a301e03c5920c5d93a3f91b03960711f619a5417f3a4e8e4b250fda4339415878b466fbe4b704463ed3b359bf69fc7b202b940b6d170f03e395665d4b8ae16504fa04c50c05eb02557ef7739408acafbe5a128a3d3efd6e373a0d76c1fab7d1fc78f33d7ed2ed79e82dc15455187baaa01eba42c3aa82dae71d363022fe678522f0a1d26cb80aa39647ec171a69178ea529fbc4b2bb618501050dbef2cf261314089ab5d84801055293ddf41e366dfb7f687d3bd20e41fcfe34e4562a5ddb0479616a48416a8eb60c9396071d6b23e6d3b0ba687db073450b42afea9d5639f0b87aa01ea624bd6dbecdbbeca5bc50389df9fa26d5ca4cfd2c4669efc20b94157ab50bceb637ec6514d7e87a720e1671b534a5ace6a5d968b6cfd2e6597a95bcbd03, 'Accessed page [product.php] with action=new_product_preview. Review page_parameters and postdata for details.', 'info'),
(350, '2024-12-19 10:06:24', 1, 'product.php', 'cPath=3&action=new_product_preview', '::1', 1, '', 0xe554db6edb300cfd15c1af5b8b389716ed5b9b6c6980ad2e9aee12a080c0484a4240965c4ace0545ffbd9293748993607bdf93adc343918722f99a146465293cf7ab4225d7499a7c4e72705e1117e0d5d4122ac75106532b98366cc7253a614bf3e1d73869e413b2799d51100ac59da510a86e731e7ce936b9fcb93364c3610ea861ac63c42a51534e40f892146d92dc75319007e26bb8e73af9f6e53efb99b151d6bf610f8f19bb64699b3d653fba77acd1e88c06bde0d8fc27dedb47048e2e885335f91115a0f551c9928f571cbc271c97fea06e1e965c68701b2d87eeb128ade6c579e74831a3331aa13f38bb9439922f411f660a7a01abb50cee66581468a6f5d02f7ec5c77679e2615e4a301e03c5920c5d93a3f91b03960711f619a5417f3a4e8e4b250fda4339415878b466fbe4b704463ed3b359bf69fc7b202b940b6d170f03e395665d4b8ae16504fa04c50c05eb02557ef7739408acafbe5a128a3d3efd6e373a0d76c1fab7d1fc78f33d7ed2ed79e82dc15455187baaa01eba42c3aa82dae71d363022fe678522f0a1d26cb80aa39647ec171a69178ea529fbc4b2bb618501050dbef2cf261314089ab5d84801055293ddf41e366dfb7f687d3bd20e41fcfe34e4562a5ddb0479616a48416a8eb60c9396071d6b23e6d3b0ba687db073450b42afea9d5639f0b87aa01ea624bd6dbecdbbeca5bc50389df9fa26d5ca4cfd2c4669efc20b94157ab50bceb637ec6514d7e87a720e1671b534a5ace6a5d968b6cfd2e6597a95bcbd03, 'Success: File upload saved successfully LENOVO YOGA PRO 7 14 TOUCH 005YID.png', 'notice'),
(351, '2024-12-19 10:06:40', 1, 'product.php', 'cPath=3&action=insert_product', '::1', 0, '', 0xe554db4e1b3110fd152baf2d513624a0f216a00d915a1691f48284644d6c2719c96b2f636f2e42fc7bedcd06b21b22fadea7b5cf9c9933b7f5732b272b0be1b9dfe4aa75d14a5a9f5b1938af880bf06a6e0995e32883e934982ab6e3129db08579f5eb1c35f219d9acc9c80985e2ce52106ada9c075fb82a97b798211b0e4b400d531d15cb444d3103e10b525425f9e6c2d10569d5482ea202b47e3721c9a71b0ede134e0b7f50958735171a5ca574e81e533eed9eb5fbef941a9dd108fdcad9a72c917c01fa3053d02bd86ccbe06e81798e66de947ef21b3eb5eb236d7b2ac0780c144b32cc3443f31103d6070a754661d01fd7c970ade4316bc0ebcdc9ac54ba36b680e5a681e4a496688bd0f80ce6d5ec319b873da3edc52e15ad08bd6a0a970e3cee093465560ae70bdfdc6badccdc2f62985e8d8cb244bfec838b5d849a645cea6da70e7e8b7285a52cfbd3ed747b2749f724a9853490851a9e43c48bd6f7afb7e9af943da4c301bbbb4fd9394b7a6c92febcba619d4eff61741d1cbbffc47bd94f423941987bb46627744960e4233d9a6da478ba232b940ba5c4cbc878a5d99525c5f03c0243827c81825d01957eb74b94086ca8be59128add4ffef43afd0e3b63c3cb68be1ffc889f64771f7b4b612c25c62625748d2ed7b029a15ebbcf4646c4739a2b021f969e8d37e14dca22f61b8db42bc792847d62e9cdb8c480420dbef44f673314089a9db2070514485d36b8beab9af57fd4ba3ff082f46ed0550f6ae6dd2ff5e116b5f3f0f6bcfc05, 'Accessed page [product.php] with action=insert_product. Review page_parameters and postdata for details.', 'info'),
(352, '2024-12-19 10:06:41', 1, 'product.php', 'cPath=3&action=insert_product', '::1', 0, '', 0xe554db4e1b3110fd152baf2d513624a0f216a00d915a1691f48284644d6c2719c96b2f636f2e42fc7bedcd06b21b22fadea7b5cf9c9933b7f5732b272b0be1b9dfe4aa75d14a5a9f5b1938af880bf06a6e0995e32883e934982ab6e3129db08579f5eb1c35f219d9acc9c80985e2ce52106ada9c075fb82a97b798211b0e4b400d531d15cb444d3103e10b525425f9e6c2d10569d5482ea202b47e3721c9a71b0ede134e0b7f50958735171a5ca574e81e533eed9eb5fbef941a9dd108fdcad9a72c917c01fa3053d02bd86ccbe06e81798e66de947ef21b3eb5eb236d7b2ac0780c144b32cc3443f31103d6070a754661d01fd7c970ade4316bc0ebcdc9ac54ba36b680e5a681e4a496688bd0f80ce6d5ec319b873da3edc52e15ad08bd6a0a970e3cee093465560ae70bdfdc6badccdc2f62985e8d8cb244bfec838b5d849a645cea6da70e7e8b7285a52cfbd3ed747b2749f724a9853490851a9e43c48bd6f7afb7e9af943da4c301bbbb4fd9394b7a6c92febcba619d4eff61741d1cbbffc47bd94f423941987bb46627744960e4233d9a6da478ba232b940ba5c4cbc878a5d99525c5f03c0243827c81825d01957eb74b94086ca8be59128add4ffef43afd0e3b63c3cb68be1ffc889f64771f7b4b612c25c62625748d2ed7b029a15ebbcf4646c4739a2b021f969e8d37e14dca22f61b8db42bc792847d62e9cdb8c480420dbef44f673314089a9db2070514485d36b8beab9af57fd4ba3ff082f46ed0550f6ae6dd2ff5e116b5f3f0f6bcfc05, 'New product 20 added via admin console.', 'info'),
(353, '2024-12-19 10:06:41', 1, 'category_product_listing.php', 'cPath=3&pID=20', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(354, '2024-12-19 10:07:15', 1, 'product.php', 'action=new_product', '::1', 0, '', 0xab562a28ca4f294d2e892fa92c4855b2523254d2514a0e482cc900b28d81ecc4e492ccfc3c20272fb53c1eaa56a91600, 'Accessed page [product.php] with action=new_product. Review page_parameters and postdata for details.', 'info'),
(355, '2024-12-19 10:07:51', 1, 'product.php', 'cPath=3&action=new_product_preview', '::1', 0, '', 0xdd54db4e1b3110fd156b5f5b50360934f01608a291a08b1aa92d129235b19d6424afbd8cbdb908e5dfb1371b20bb41ed739f6c9f3973f35c5e9282ac2c85e77e53a8e4324993af490ece2be202bc9a5b42e538ca20ea0551cd765ca213b6346f7a9d4f857c46366f320a42a1b8b3141c3565ce832f5d1dcbbbcd100d8725a086a98e1eab404d3903e14b525407f951c5401e882fc1ce657277f323fb95b1c7ec76c82677e37b76ced23ecbee6e46ac73351e05b5ee3fb0b66fd639ba90986aa41e51015a1f4d57f2e98683f784d3d2b7feccc39a0b0daecea3ad1ec0c16070dabb68ff63d44523f451ca12c997a0db81825ec1669705770b2c0a34f3a6e767bfe153bbfea426cf25188f8162498686c9d1fc8d01eb9687434669d07fee27c7b592adce504e10161eadd957fb8ac0c8277a32bb82c6db0359a15ce8b8f8181baf34bbb6a4187e8bc02d41b140c1ae81e43b614ce8fea8f8fe39bc8f477ace6eafe265e22dc1bc129da5dd1a1ca12b346c2a62ffb4c3c646c47b5628021f3e974d3661b0f288fd4623edcab134655f58f67d526140216c5fe967b3190a04cd7aec510105528f0d470f759bfeb7e96d8f143de47b76d031b9954a37463d2f4c0329482dd196619cf290c94e88f93cec26da3dec52d18ad0ab663f550a3cee1668ba2949ef5bac2ec541c82b85f3856fae4aadccdc2fa297fe477885b2420f8675b1b7701051dc93bbf9686dda6a2b4a594d45b7d3ed9fa4dd93f422d9be02, 'Accessed page [product.php] with action=new_product_preview. Review page_parameters and postdata for details.', 'info'),
(356, '2024-12-19 10:07:51', 1, 'product.php', 'cPath=3&action=new_product_preview', '::1', 1, '', 0xdd54db4e1b3110fd156b5f5b50360934f01608a291a08b1aa92d129235b19d6424afbd8cbdb908e5dfb1371b20bb41ed739f6c9f3973f35c5e9282ac2c85e77e53a8e4324993af490ece2be202bc9a5b42e538ca20ea0551cd765ca213b6346f7a9d4f857c46366f320a42a1b8b3141c3565ce832f5d1dcbbbcd100d8725a086a98e1eab404d3903e14b525407f951c5401e882fc1ce657277f323fb95b1c7ec76c82677e37b76ced23ecbee6e46ac73351e05b5ee3fb0b66fd639ba90986aa41e51015a1f4d57f2e98683f784d3d2b7feccc39a0b0daecea3ad1ec0c16070dabb68ff63d44523f451ca12c997a0db81825ec1669705770b2c0a34f3a6e767bfe153bbfea426cf25188f8162498686c9d1fc8d01eb9687434669d07fee27c7b592adce504e10161eadd957fb8ac0c8277a32bb82c6db0359a15ce8b8f8181baf34bbb6a4187e8bc02d41b140c1ae81e43b614ce8fea8f8fe39bc8f477ace6eafe265e22dc1bc129da5dd1a1ca12b346c2a62ffb4c3c646c47b5628021f3e974d3661b0f288fd4623edcab134655f58f67d526140216c5fe967b3190a04cd7aec510105528f0d470f759bfeb7e96d8f143de47b76d031b9954a37463d2f4c0329482dd196619cf290c94e88f93cec26da3dec52d18ad0ab663f550a3cee1668ba2949ef5bac2ec541c82b85f3856fae4aadccdc2fa297fe477885b2420f8675b1b7701051dc93bbf9686dda6a2b4a594d45b7d3ed9fa4dd93f422d9be02, 'Success: File upload saved successfully LENOVO YOGA SLIM 6 14 OLED 0BID.png', 'notice'),
(357, '2024-12-19 10:07:53', 1, 'product.php', 'cPath=3&action=insert_product', '::1', 0, '', 0xdd54db6e1a3110fd158bd736880592a67983105124d28d8ad43652246bb00d8ce4b537632f1745f9f7dacb52b24b50fadca7b5cf9c9933b7f54b2b272b0be1b9dfe5aa75d34a5a9f5b1938af880bf06a690995e32883a9174c15db71894ed8c2fcf5eb9c35f205d9acc9c80985e2ce52106ada9c075fb82a9763cc900d8735a086b98e8a65a2a65880f00529aa923cba7074415a35928ba800addf4d48f2f98e83f784f3c29f54e561cb850657299dba07f0fafabaddfb7a5a69f44523f4bb9435922f409f260a7a03bb7d15dcad30cfd12c9bcacf7ec7e7767ba66bcf05188f816249869166683e62c0f644a1ce280cfaf33a196e953c670df8652d7466a5d2b5a9052c370d2427b5465b84be67b0ac468fd932ac19ed2f76ad6843e85553b874e0714da029b351b85cf9e65a6b65967e15c3f46b6494255a1bdbea10a12619777adfa993bfa2dc6029cbfe743bddfe45d2bd486a210d64a1869710f1a635bdfb9efe4cd9633a1eb0d97472cfae58d267e9f46ec43ac3c928b875ff81f5fa3601e50461eed19a83c890c0c8277a32fb38f1f440562817ca889789f14ab35b4b8ae197088c09f2150a760b248f8409a1fbade2fdc7e03e7e922b361ec6c3cc5b0a3388c7cba45b812374b9865d49ecb73b6c62443ca7b922f061c7d96c175ea02c62bfd048bb712c49d827967e9b95185048db97fee962810241b31e7b544081d46383d143d59dffb6bcb7632d481fc659955d331f7e9a0f36a59d87b7e5f50f, 'Accessed page [product.php] with action=insert_product. Review page_parameters and postdata for details.', 'info'),
(358, '2024-12-19 10:07:53', 1, 'product.php', 'cPath=3&action=insert_product', '::1', 0, '', 0xdd54db6e1a3110fd158bd736880592a67983105124d28d8ad43652246bb00d8ce4b537632f1745f9f7dacb52b24b50fadca7b5cf9c9933b7f54b2b272b0be1b9dfe5aa75d34a5a9f5b1938af880bf06a690995e32883a9174c15db71894ed8c2fcf5eb9c35f205d9acc9c80985e2ce52106ada9c075fb82a9763cc900d8735a086b98e8a65a2a65880f00529aa923cba7074415a35928ba800addf4d48f2f98e83f784f3c29f54e561cb850657299dba07f0fafabaddfb7a5a69f44523f4bb9435922f409f260a7a03bb7d15dcad30cfd12c9bcacf7ec7e7767ba66bcf05188f816249869166683e62c0f644a1ce280cfaf33a196e953c670df8652d7466a5d2b5a9052c370d2427b5465b84be67b0ac468fd932ac19ed2f76ad6843e85553b874e0714da029b351b85cf9e65a6b65967e15c3f46b6494255a1bdbea10a12619777adfa993bfa2dc6029cbfe743bddfe45d2bd486a210d64a1869710f1a635bdfb9efe4cd9633a1eb0d97472cfae58d267e9f46ec43ac3c928b875ff81f5fa3601e50461eed19a83c890c0c8277a32fb38f1f440562817ca889789f14ab35b4b8ae197088c09f2150a760b248f8409a1fbade2fdc7e03e7e922b361ec6c3cc5b0a3388c7cba45b812374b9865d49ecb73b6c62443ca7b922f061c7d96c175ea02c62bfd048bb712c49d827967e9b95185048db97fee962810241b31e7b544081d46383d143d59dffb6bcb7632d481fc659955d331f7e9a0f36a59d87b7e5f50f, 'New product 21 added via admin console.', 'info'),
(359, '2024-12-19 10:07:53', 1, 'category_product_listing.php', 'cPath=3&pID=21', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(360, '2024-12-19 10:08:02', 1, 'product.php', 'action=new_product', '::1', 0, '', 0xab562a28ca4f294d2e892fa92c4855b2523254d2514a0e482cc900b28d81ecc4e492ccfc3c20272fb53c1eaa56a91600, 'Accessed page [product.php] with action=new_product. Review page_parameters and postdata for details.', 'info'),
(361, '2024-12-19 10:09:16', 1, 'product.php', 'cPath=3&action=new_product_preview', '::1', 0, '', 0xdd54db4e1b3110fd156b5f5b10bb4d52c15b202944a2dda869299590ac89ed242379ed65eccd45887fafbd592ed905557ded93ed33673cf779484ab2b2129efb5da992b3244d3e260538af880bf06a690995e32883e85310356cc7253a612bf3ac77f2ae902fc8166d46492814779682a1b6cc79f0956b7c79f93378c3610da861aea3c5da51532d40f88a14354ebe56315004e243f8e72cb91e7fcb6f7236198d87d3e1887db91edfb23e4b7b2cbf1e8fd88ffce7c5151bdc4c46413ffb17fae3b33d8e2e84aa5ac988a800addf4c80e4f31d07ef09e795ef64d1c3960b0dae89acab1ec0cf83c1f1e0b49bd9a88b46e837296b245f81ee3a0a7a03bb7d14dcadb02cd12cdb96effd8ecfedf69d2add57603c068a25195aa840f337066c3b160e199541ffbe9d02b74a767a453941587ab4e6a9fee70446ded19dd95736dea6648572a107e36362bcd2ecc29262d88fc02541b942c12e80e40b6142e86e557c7f1f7e8d473a6097e7f132f39660598bfa69d6802374a5865d4dec1d9fb08911f19e978ac087e4b2d92e8c5a11b15f68a4dd3896a6ec03cbaf66350614dcf6b57ebe58a040d02c63bf15109b922ab02a023963c3d1b4e9dbff3eccc7379a20c4dd3fe8a0c24aa55bcba0284d0b2949add15661bc8a10d15e88c5326c2fda3fec5ad186d0ab767fd50a3c6e1f689ba9483fb55c53920397370a972bdf5ea65a99a55f452bbdd7f006658d1e0cefeae987038fe226ddcf4b6717d77b53ca7a4ab293ac77946647e969f2f807, 'Accessed page [product.php] with action=new_product_preview. Review page_parameters and postdata for details.', 'info'),
(362, '2024-12-19 10:09:16', 1, 'product.php', 'cPath=3&action=new_product_preview', '::1', 1, '', 0xdd54db4e1b3110fd156b5f5b10bb4d52c15b202944a2dda869299590ac89ed242379ed65eccd45887fafbd592ed905557ded93ed33673cf779484ab2b2129efb5da992b3244d3e260538af880bf06a690995e32883e85310356cc7253a612bf3ac77f2ae902fc8166d46492814779682a1b6cc79f0956b7c79f93378c3610da861aea3c5da51532d40f88a14354ebe56315004e243f8e72cb91e7fcb6f7236198d87d3e1887db91edfb23e4b7b2cbf1e8fd88ffce7c5151bdc4c46413ffb17fae3b33d8e2e84aa5ac988a800addf4c80e4f31d07ef09e795ef64d1c3960b0dae89acab1ec0cf83c1f1e0b49bd9a88b46e837296b245f81ee3a0a7a03bb7d14dcadb02cd12cdb96effd8ecfedf69d2add57603c068a25195aa840f337066c3b160e199541ffbe9d02b74a767a453941587ab4e6a9fee70446ded19dd95736dea6648572a107e36362bcd2ecc29262d88fc02541b942c12e80e40b6142e86e557c7f1f7e8d473a6097e7f132f39660598bfa69d6802374a5865d4dec1d9fb08911f19e978ac087e4b2d92e8c5a11b15f68a4dd3896a6ec03cbaf66350614dcf6b57ebe58a040d02c63bf15109b922ab02a023963c3d1b4e9dbff3eccc7379a20c4dd3fe8a0c24aa55bcba0284d0b2949add15661bc8a10d15e88c5326c2fda3fec5ad186d0ab767fd50a3c6e1f689ba9483fb55c53920397370a972bdf5ea65a99a55f452bbdd7f006658d1e0cefeae987038fe226ddcf4b6717d77b53ca7a4ab293ac77946647e969f2f807, 'Success: File upload saved successfully LENOVO IDEAPAD FLEX 5 14 OLED TOUCH 6VID.png', 'notice'),
(363, '2024-12-19 10:09:18', 1, 'product.php', 'cPath=3&action=insert_product', '::1', 0, '', 0xdd545d4fdb3014fd2b565f3710c9da4ee3add00e2ab1a55a37c62424ebd676db2b3976b876fa21c47fc74ed34152aa6daf7b8a7deeb9f7dcaff8b1539095a5f0dc6f0bd539ef249df79d1c9c57c40578b5b084ca7194c1f421986ab6e3129db0a5f9ed7776d4c8e764f336a320148a3b4b41a86d731e7ce9ea5c5e62866c38ac0035cc7454ac1235e51c842f49519de48b0b4717a4552bb9880ad0facd84249f6d39784f382bfd41551e365c6870b5d2a17b003ff6fba7fd4f8795465f3442bf495921f912f461a2a0d7b0dd55c1dd128b02cda2adfce0b77c663747baf65082f11828966418698ee64f0cd81c283419a5417f5c27c78d92c7ac01ef3542e7562add985ac00ad3420a522bb465e87b0e8b7af4982fc29ad1ee62578ad6845eb5852b071ed704da326b858ba56fafb55666e197314cb7414659a18db12df7111a9271a7779d3af82baa0d96b2ea4f7a96764f92f42469843490871a1e43c4f3cecde86b769bb1f17034980c86ecf3cde88ef558d265d9cd68c8be673f2eaf59ff763c0cfee9bfd09f5ea7a49c202c3c5ab397bd2030f29eeecd2e603c4dc80ae54261f132365e6976694931ec45e08aa058a2609740f285302674772adebf0dbec44fd2675717f130f596c254e2b197a43538445768d856c4eee9191b1b11cf59a1087cd87a36dd8637298fd84f34d2ae1d4b12f68e65d7d30a030a69fbca3f9bcf51206896b25f0a884d48e558e6819cb2c17052b7ebbf2ff3f5984bd2fbf1d6e537ccfbdfea6f57e8b408cfd0d333, 'Accessed page [product.php] with action=insert_product. Review page_parameters and postdata for details.', 'info'),
(364, '2024-12-19 10:09:18', 1, 'product.php', 'cPath=3&action=insert_product', '::1', 0, '', 0xdd545d4fdb3014fd2b565f3710c9da4ee3add00e2ab1a55a37c62424ebd676db2b3976b876fa21c47fc74ed34152aa6daf7b8a7deeb9f7dcaff8b1539095a5f0dc6f0bd539ef249df79d1c9c57c40578b5b084ca7194c1f421986ab6e3129db0a5f9ed7776d4c8e764f336a320148a3b4b41a86d731e7ce9ea5c5e62866c38ac0035cc7454ac1235e51c842f49519de48b0b4717a4552bb9880ad0facd84249f6d39784f382bfd41551e365c6870b5d2a17b003ff6fba7fd4f8795465f3442bf495921f912f461a2a0d7b0dd55c1dd128b02cda2adfce0b77c663747baf65082f11828966418698ee64f0cd81c283419a5417f5c27c78d92c7ac01ef3542e7562add985ac00ad3420a522bb465e87b0e8b7af4982fc29ad1ee62578ad6845eb5852b071ed704da326b858ba56fafb55666e197314cb7414659a18db12df7111a9271a7779d3af82baa0d96b2ea4f7a96764f92f42469843490871a1e43c4f3cecde86b769bb1f17034980c86ecf3cde88ef558d265d9cd68c8be673f2eaf59ff763c0cfee9bfd09f5ea7a49c202c3c5ab397bd2030f29eeecd2e603c4dc80ae54261f132365e6976694931ec45e08aa058a2609740f285302674772adebf0dbec44fd2675717f130f596c254e2b197a43538445768d856c4eee9191b1b11cf59a1087cd87a36dd8637298fd84f34d2ae1d4b12f68e65d7d30a030a69fbca3f9bcf51206896b25f0a884d48e558e6819cb2c17052b7ebbf2ff3f5984bd2fbf1d6e537ccfbdfea6f57e8b408cfd0d333, 'New product 22 added via admin console.', 'info'),
(365, '2024-12-19 10:09:18', 1, 'category_product_listing.php', 'cPath=3&pID=22', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(366, '2024-12-19 10:09:20', 1, 'product.php', 'action=new_product', '::1', 0, '', 0xab562a28ca4f294d2e892fa92c4855b2523254d2514a0e482cc900b28d81ecc4e492ccfc3c20272fb53c1eaa56a91600, 'Accessed page [product.php] with action=new_product. Review page_parameters and postdata for details.', 'info'),
(367, '2024-12-19 10:10:56', 1, 'product.php', 'cPath=3&action=new_product_preview', '::1', 0, '', 0xe554594fe33010fe2b565e774149cbb1f046812d958022bada4342b2a6b6db8ee4d861ecf410e2bf6327e16852b4dae77db23df3cde96fe62929c8ca5278ee37854a4e932cf99ae4e0bc222ec0abb925548ea30caa7e503568c7253a614bf366977eaae433b2791b51100ac59da510a8ad731e7ce99a5cde7d866c382c01354c758c58256aca19085f92a226c98f2606f2007c0a7e4e93ebcbdbf1cf31bbbe1c8ec6b76c723dba61872c3b62a36396f58fd3f48addfff87d901ea5ecdb70109cf4fed9e6f92d3247178a56adb644a900ad77b642f2e98683f784d3d277fae961cd8506d7d4d8358fcd3ac8b2fda3936e93a3311aa177639648be04dd4d15f40a36751ddc2db028d0ccdbb11ffd864fedfa931f7b2cc1780c104b32d02947f33704ac3b11b611a541ff799c1cd74a7678a39c202c3c5af3ca850181910ff460ea0f8eb73bb242b9c0c7f81819af343bb7a4181e47c190a058a060e74095dded1225021baaef96847a67011b0ea2fafeec261e8129f57be22dc15cc5eb61d66b8417e80a0d9b1ab89fb29111f13e2e14810fbd66934d98c23cca7ea19176e55896b12f6c7c35a96440a10a5fd98f673314089af5d91f0514407d767671d7b0f87fa9f679072542f9875b7ccaad54bab526f2c2b42405a925da328c5b1e2aa99598cfc35ea3fa61978a56845eb5d95619f0b897a01da624fd4ac0e667b6525e299c2f7c7bcd6a65e67e518dee47f10a6525dd1ae5c5ab87ad8ce28eada7a7b3a5ab8d2a653533bdb477b097f5f6b293e4f905, 'Accessed page [product.php] with action=new_product_preview. Review page_parameters and postdata for details.', 'info'),
(368, '2024-12-19 10:10:56', 1, 'product.php', 'cPath=3&action=new_product_preview', '::1', 1, '', 0xe554594fe33010fe2b565e774149cbb1f046812d958022bada4342b2a6b6db8ee4d861ecf410e2bf6327e16852b4dae77db23df3cde96fe62929c8ca5278ee37854a4e932cf99ae4e0bc222ec0abb925548ea30caa7e503568c7253a614bf366977eaae433b2791b51100ac59da510a8ad731e7ce99a5cde7d866c382c01354c758c58256aca19085f92a226c98f2606f2007c0a7e4e93ebcbdbf1cf31bbbe1c8ec6b76c723dba61872c3b62a36396f58fd3f48addfff87d901ea5ecdb70109cf4fed9e6f92d3247178a56adb644a900ad77b642f2e98683f784d3d277fae961cd8506d7d4d8358fcd3ac8b2fda3936e93a3311aa177639648be04dd4d15f40a36751ddc2db028d0ccdbb11ffd864fedfa931f7b2cc1780c104b32d02947f33704ac3b11b611a541ff799c1cd74a7678a39c202c3c5af3ca850181910ff460ea0f8eb73bb242b9c0c7f81819af343bb7a4181e47c190a058a060e74095dded1225021baaef96847a67011b0ea2fafeec261e8129f57be22dc15cc5eb61d66b8417e80a0d9b1ab89fb29111f13e2e14810fbd66934d98c23cca7ea19176e55896b12f6c7c35a96440a10a5fd98f673314089af5d91f0514407d767671d7b0f87fa9f679072542f9875b7ccaad54bab526f2c2b42405a925da328c5b1e2aa99598cfc35ea3fa61978a56845eb5d95619f0b897a01da624fd4ac0e667b6525e299c2f7c7bcd6a65e67e518dee47f10a6525dd1ae5c5ab87ad8ce28eada7a7b3a5ab8d2a653533bdb477b097f5f6b293e4f905, 'Success: File upload saved successfully LENOVO LEGION SLIM 5 16 I7 13700H RTX4060 8GB.jpg', 'notice'),
(369, '2024-12-19 10:10:58', 1, 'product.php', 'cPath=3&action=insert_product', '::1', 0, '', 0xe554c96edb3010fd1542d7368164676973cb56c740120771d10508408c495a9e82229521e50541fe3da42c37911ca3c8b927916f96f766a19e9292acac84e77e55aae424c992cf4901ce2be202bcca2da1721c6530f583a9f1765ca213b6327fe3d29d463e255b743d4a42a1b8b31488ba36e7c157aed1f29a33a8e13007d430d191b1166aaa29085f91a246e46b084717a855475c440568fdae20c9272b0ede134e2abf55958725171a5cc3b41d1e251f64d9fed1d7ed5263301aa1dff79923f90af4b654d00b58adebe06e86658926ef723ffa159fd8e58ebe3d56603c06174b320cb540f32f0f586e31b43d2a837e374f814b257759037ed84a5d58a9746b6e012b4d072949cdd156a1f305e4cdf0b1c8c3a2d1fa62e78a16845e7589eb001e1705ba340b85f9cc77175b2b93fb593da69633ca1a6d8d6db6c9d0a28c5bbdeed4d6bba87758caba3fbdb477b097f5f6b2564a0345a8e129643c49ae2f6f473f46ecfa72301cddb2f1f5f0861db2ec880d8f59d63f4ed32b76fffdd7417a94b22f83b390a4f7e198e7b7e2941384a5476b3602ce088c7ca007b3ce1a4f77648572a1c478191aaf343bb7a4181e47604050ce50b073a03aee768e12810dd4374b42bd52b3c15934df9fdec44f90b7be8fbda530ae783ccc7a0d7881aed4b05a3beea76c68443c8f4a45e0c37360e355f85d1511fb8946da856359c63eb1d1d5b8c6804215be8e1f4da7281034ebb3df0a2838f5d9e9c55dd3baffa5dab743af486f86dd74a165de3cb70f6dd5fe9f324f9e5f00, 'Accessed page [product.php] with action=insert_product. Review page_parameters and postdata for details.', 'info'),
(370, '2024-12-19 10:10:58', 1, 'product.php', 'cPath=3&action=insert_product', '::1', 0, '', 0xe554c96edb3010fd1542d7368164676973cb56c740120771d10508408c495a9e82229521e50541fe3da42c37911ca3c8b927916f96f766a19e9292acac84e77e55aae424c992cf4901ce2be202bcca2da1721c6530f583a9f1765ca213b6327fe3d29d463e255b743d4a42a1b8b31488ba36e7c157aed1f29a33a8e13007d430d191b1166aaa29085f91a246e46b084717a855475c440568fdae20c9272b0ede134e2abf55958725171a5cc3b41d1e251f64d9fed1d7ed5263301aa1dff79923f90af4b654d00b58adebe06e86658926ef723ffa159fd8e58ebe3d56603c06174b320cb540f32f0f586e31b43d2a837e374f814b257759037ed84a5d58a9746b6e012b4d072949cdd156a1f305e4cdf0b1c8c3a2d1fa62e78a16845e7589eb001e1705ba340b85f9cc77175b2b93fb593da69633ca1a6d8d6db6c9d0a28c5bbdeed4d6bba87758caba3fbdb477b097f5f6b2564a0345a8e129643c49ae2f6f473f46ecfa72301cddb2f1f5f0861db2ec880d8f59d63f4ed32b76fffdd7417a94b22f83b390a4f7e198e7b7e2941384a5476b3602ce088c7ca007b3ce1a4f77648572a1c478191aaf343bb7a4181e47604050ce50b073a03aee768e12810dd4374b42bd52b3c15934df9fdec44f90b7be8fbda530ae783ccc7a0d7881aed4b05a3beea76c68443c8f4a45e0c37360e355f85d1511fb8946da856359c63eb1d1d5b8c6804215be8e1f4da7281034ebb3df0a2838f5d9e9c55dd3baffa5dab743af486f86dd74a165de3cb70f6dd5fe9f324f9e5f00, 'New product 23 added via admin console.', 'info'),
(371, '2024-12-19 10:10:59', 1, 'category_product_listing.php', 'cPath=3&pID=23', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(372, '2024-12-19 10:11:02', 1, 'product.php', 'action=new_product', '::1', 0, '', 0xab562a28ca4f294d2e892fa92c4855b2523254d2514a0e482cc900b28d81ecc4e492ccfc3c20272fb53c1eaa56a91600, 'Accessed page [product.php] with action=new_product. Review page_parameters and postdata for details.', 'info'),
(373, '2024-12-19 10:12:30', 1, 'product.php', 'cPath=3&action=new_product_preview', '::1', 0, '', 0xe554db4ee33010fd152bafbba0a4858af2c66d4b25962040bbac84644d6db71dc9b1c3d8e945a8ff8e9d944b13d06a9ff729f19933571fcf7352929595f0dcaf4b951c2759f23d29c079455c8057334ba81c47194cfd60dab21d97e884adcc9b5ffaa5914fc9166d46492814779642a2b6cd79f095dbd6f21e3354c36101a861a263c6ba50534d41f88a146d8bfce862a008c4e710e738b9bab8ce7fe5ecea6234ceafd9cd6dce0e593660e321cbfac334bd7c60b7f70f07e9206547a3d310a4f7cf3e9bb7cc1c5d685ab5c61251015a7f3a0ac9276b0ede134e2adf99a78715171adcb6c7ae7b1cd6a03fd83fea77871c9dd108fd396781e42bd0dd52412f61ddf4c1dd1ccb12cdac9dfbc9aff9c4aebeb8b1a70a8cc740b124839c0a347f63c0aa9361975119f45fe72970a5644737ca09c2d2a335af5a382530f2911e4d73c1f1ef86ac502ee8311ec6c62bcdce2c2986c3088c08ca390a760654fb5d2f5022b091fa6149a87715b0d16934df9efc8c9f2095e67ce72dc14cd518bbafa17374a5867543db4fd9d888f89f978ac08749b3bb75788345c47ea39176e95896b16f2cbfbcab31a0d083affdf3e9140582667df6470105529f9d9cdf6c35fc7ff4baf9440ea1f9c31d2d15562add5a1145695a48496a81b60a4fad087d34462c6661a75173b00b454b42afda4aab1d78dc49d04e53917e15dff65e764a5e2a9ccd7d7bc56a65667e1eb31c7c8497286b74f8119cbf46d8a928eed7e6e5743674bd4da5acdf4b2fed1dec65bdbd6c986c5e00, 'Accessed page [product.php] with action=new_product_preview. Review page_parameters and postdata for details.', 'info'),
(374, '2024-12-19 10:12:30', 1, 'product.php', 'cPath=3&action=new_product_preview', '::1', 1, '', 0xe554db4ee33010fd152bafbba0a4858af2c66d4b25962040bbac84644d6db71dc9b1c3d8e945a8ff8e9d944b13d06a9ff729f19933571fcf7352929595f0dcaf4b951c2759f23d29c079455c8057334ba81c47194cfd60dab21d97e884adcc9b5ffaa5914fc9166d46492814779642a2b6cd79f095dbd6f21e3354c36101a861a263c6ba50534d41f88a146d8bfce862a008c4e710e738b9bab8ce7fe5ecea6234ceafd9cd6dce0e593660e321cbfac334bd7c60b7f70f07e9206547a3d310a4f7cf3e9bb7cc1c5d685ab5c61251015a7f3a0ac9276b0ede134e2adf99a78715171adcb6c7ae7b1cd6a03fd83fea77871c9dd108fd396781e42bd0dd52412f61ddf4c1dd1ccb12cdac9dfbc9aff9c4aebeb8b1a70a8cc740b124839c0a347f63c0aa9361975119f45fe72970a5644737ca09c2d2a335af5a382530f2911e4d73c1f1ef86ac502ee8311ec6c62bcdce2c2986c3088c08ca390a760654fb5d2f5022b091fa6149a87715b0d16934df9efc8c9f2095e67ce72dc14cd518bbafa17374a5867543db4fd9d888f89f978ac08749b3bb75788345c47ea39176e95896b16f2cbfbcab31a0d083affdf3e9140582667df6470105529f9d9cdf6c35fc7ff4baf9440ea1f9c31d2d15562add5a1145695a48496a81b60a4fad087d34462c6661a75173b00b454b42afda4aab1d78dc49d04e53917e15dff65e764a5e2a9ccd7d7bc56a65667e1eb31c7c8497286b74f8119cbf46d8a928eed7e6e5743674bd4da5acdf4b2fed1dec65bdbd6c986c5e00, 'Success: File upload saved successfully LENOVO LEGION PRO 5 16 I9 13900HX RTX4060 8GB.jpg', 'notice'),
(375, '2024-12-19 10:12:31', 1, 'product.php', 'cPath=3&action=insert_product', '::1', 0, '', 0xe5545b4fdb3014fe2b565e3750d2424579e3b652891144d1c62424ebd471d333397638767a11e2bfcf4ed34152aa89e73dc5fecee5fbcec579894a3259251c77eb5246a751127d8d0ab04e1217e0646e08a5e5987953df9b1a6fcb33b4c254fa6f5cbcd7c867648aae47492824b7863c51d7661db8ca365ade727a351c16800aa62a30d642753503e12a92d4887c0be1683db5ec880ba800a53e1494f1e99a837384d3caed54e560c58502db30ed8607c983fee0f0a4bf5b6a08462dd4c73e0b245781da950a6a09eb4d1ddcceb12c51e75dee67b7e653b3dad3b7e70ab443ef6228f3432d50ffcb03563b0c6d8f4aa3dbcf53e04a66fbac1e3f6ea52e4c26556b6e1e2b750729492ed054bef305e4cdf0b1c8fda2d1e662169296844e7689eb001e1605ba344b89f9dc75175b499dbb794873d472c6ac4687efc1f936438b326cf5a6533befa2dee12cabfbd38b7b470749ef2069a5d450f81a5e7cc6d3e8e6ea36fd91b29babd138bd6577f7293b66c9808d872ce90fe3f8fa91dd3f3c1ec583989d8cce7d92dea7635edf8b935610960e8dde0a3827d0d9133de94dd670ba2323a4f52586cb583ba9d88521c970188011413947c12e80eab8db0566086c24bf1912f28d9a8dce83f9feec7bf8787d9bfbc419f2e3aa31f6504397684b05eb8ddb61ccc65a84735a4a02e71f039bacfdcfaa08d84fd499595a9624ec0b4baf273506e46b70757c3a9ba14050accf7e4920efd4676797774de3fe8f5adf0fbc22b51d74d3839679fbd43eb55187bfcb3c7afd03, 'Accessed page [product.php] with action=insert_product. Review page_parameters and postdata for details.', 'info'),
(376, '2024-12-19 10:12:31', 1, 'product.php', 'cPath=3&action=insert_product', '::1', 0, '', 0xe5545b4fdb3014fe2b565e3750d2424579e3b652891144d1c62424ebd471d333397638767a11e2bfcf4ed34152aa89e73dc5fecee5fbcec579894a3259251c77eb5246a751127d8d0ab04e1217e0646e08a5e5987953df9b1a6fcb33b4c254fa6f5cbcd7c867648aae47492824b7863c51d7661db8ca365ade727a351c16800aa62a30d642753503e12a92d4887c0be1683db5ec880ba800a53e1494f1e99a837384d3caed54e560c58502db30ed8607c983fee0f0a4bf5b6a08462dd4c73e0b245781da950a6a09eb4d1ddcceb12c51e75dee67b7e653b3dad3b7e70ab443ef6228f3432d50ffcb03563b0c6d8f4aa3dbcf53e04a66fbac1e3f6ea52e4c26556b6e1e2b750729492ed054bef305e4cdf0b1c8fda2d1e662169296844e7689eb001e1605ba344b89f9dc75175b499dbb794873d472c6ac4687efc1f936438b326cf5a6533befa2dee12cabfbd38b7b470749ef2069a5d450f81a5e7cc6d3e8e6ea36fd91b29babd138bd6577f7293b66c9808d872ce90fe3f8fa91dd3f3c1ec583989d8cce7d92dea7635edf8b935610960e8dde0a3827d0d9133de94dd670ba2323a4f52586cb583ba9d88521c970188011413947c12e80eab8db0566086c24bf1912f28d9a8dce83f9feec7bf8787d9bfbc419f2e3aa31f6504397684b05eb8ddb61ccc65a84735a4a02e71f039bacfdcfaa08d84fd499595a9624ec0b4baf273506e46b70757c3a9ba14050accf7e4920efd4676797774de3fe8f5adf0fbc22b51d74d3839679fbd43eb55187bfcb3c7afd03, 'New product 24 added via admin console.', 'info'),
(377, '2024-12-19 10:12:31', 1, 'category_product_listing.php', 'cPath=3&pID=24', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(378, '2024-12-19 10:12:58', 1, 'product.php', 'action=new_product', '::1', 0, '', 0xab562a28ca4f294d2e892fa92c4855b2523254d2514a0e482cc900b28d81ecc4e492ccfc3c20272fb53c1eaa56a91600, 'Accessed page [product.php] with action=new_product. Review page_parameters and postdata for details.', 'info');
INSERT INTO `admin_activity_log` (`log_id`, `access_date`, `admin_id`, `page_accessed`, `page_parameters`, `ip_address`, `flagged`, `attention`, `gzpost`, `logmessage`, `severity`) VALUES
(379, '2024-12-19 10:13:45', 1, 'product.php', 'cPath=3&action=new_product_preview', '::1', 0, '', 0xdd54db6edb300cfd15c1af5b8bd84db7b56fe952b401da2458b00d030a088ca4240464c9a5e45c50f4df2b394e9bd809fabe2751878722295e5e9282ac2c85e77e53a8e43a4993af490ece2be202bc9a5b42e538caa0ba08aa9aedb844276c69deed3a27957c46366f320a42a1b8b3141c3575ce832f5d1dcbc79b211a0e4b400d531d3d56819a7206c297a4a80e72dfc4401e882fe19debe4e17638fa336283fe6d6fdcebb3c9c3e091a52cedb261b79345f7d9e7a4d7f7b739ba90966a241e51015a1f4d56f2e98683f784d3d2b77eccc39a0b0daecea26d1ec0ec7b767e71e417a32d1aa177947dc612c997a0db71825ec1669b04770b2c0a34f3a6e367bfe153bb3e5190e7128cc740b12443b7e4683e63c0bae5e190511af4a7fde4b856b2d516ca09c2c2a335bb52df1018f9444f665bce288dc90ae542bbc5cbc078a5d9308a7704c50205fb09243f54bfeffbf1f2abf7188f1fecee269e136f09e62a8ad9e5b71aeca32b346ca29876cf3b6c604494478522f0e14bd9641366298fd85f34d2ae1c4b53f6858dee2715061482f595fd68364381a059c6fe29203626956399d7adf99f25f57aa4c021cbcb83eec8ad54ba31d379611a48416a89b60c9393874cb64acce76109d1f662978a56845e357ba732e0718940d34d497ad74e75010e425e299c2f7c73276a65e67e11bd74f7e115ca0abdda0717bb170e228a0b713b0bad955aad3f29ab09c83a59f72ccdced2abe4f50d, 'Accessed page [product.php] with action=new_product_preview. Review page_parameters and postdata for details.', 'info'),
(380, '2024-12-19 10:13:45', 1, 'product.php', 'cPath=3&action=new_product_preview', '::1', 1, '', 0xdd54db6edb300cfd15c1af5b8bd84db7b56fe952b401da2458b00d030a088ca4240464c9a5e45c50f4df2b394e9bd809fabe2751878722295e5e9282ac2c85e77e53a8e43a4993af490ece2be202bc9a5b42e538caa0ba08aa9aedb844276c69deed3a27957c46366f320a42a1b8b3141c3575ce832f5d1dcbc79b211a0e4b400d531d3d56819a7206c297a4a80e72dfc4401e882fe19debe4e17638fa336283fe6d6fdcebb3c9c3e091a52cedb261b79345f7d9e7a4d7f7b739ba90966a241e51015a1f4d56f2e98683f784d3d2b77eccc39a0b0daecea26d1ec0ec7b767e71e417a32d1aa177947dc612c997a0db71825ec1669b04770b2c0a34f3a6e367bfe153bb3e5190e7128cc740b12443b7e4683e63c0bae5e190511af4a7fde4b856b2d516ca09c2c2a335bb52df1018f9444f665bce288dc90ae542bbc5cbc078a5d9308a7704c50205fb09243f54bfeffbf1f2abf7188f1fecee269e136f09e62a8ad9e5b71aeca32b346ca29876cf3b6c604494478522f0e14bd9641366298fd85f34d2ae1c4b53f6858dee2715061482f595fd68364381a059c6fe29203626956399d7adf99f25f57aa4c021cbcb83eec8ad54ba31d379611a48416a89b60c9393874cb64acce76109d1f662978a56845e357ba732e0718940d34d497ad74e75010e425e299c2f7c73276a65e67e11bd74f7e115ca0abdda0717bb170e228a0b713b0bad955aad3f29ab09c83a59f72ccdced2abe4f50d, 'Success: File upload saved successfully LENOVO IDEAPAD SLIM 1 14 N4020.png', 'notice'),
(381, '2024-12-19 10:13:48', 1, 'product.php', 'cPath=3&action=insert_product', '::1', 0, '', 0xdd54db6e1a3110fd158bd73688dd905ef2464a942025808adaaa52246bb0cd3292d7de8cbd5c14e5df6b2f4b6197d0bcf7c9e333973337fba5539095a5f0dc6f0bd5b9ee249d8f9d1c9c57c40578955942e538caa0ba0caadada71894ed8d2fcf5eb9d55f205d9bc6d51100ac59da540d4d6390fbe74752e8798211b0e2b400d731d19ab444db900e14b5254277970e1e802b56a251751015abf9990e4f32d07ef09e7a53fa9cac3860b0dae663a750f60fa39ed5ebe5169f44523f4dee4d86285e44bd0a779825ec3765704774b2c0a34599bf8d96ff9dc6ece34edb904e33198589261a2399af72c6073c2d0b4280dfaf33c396e943ca70df85523746ea5d28da105ac302da420b5425b86b6e790d593c73c0b5b46bb8b5d295a137ad526ae1c78dc1268d3ac15664bdfde6aad4ce697314cbf618cb242bf1e83cb7d8406655ce95da74e1e45b5c05256fd497b69ff22492f9246480379a8e12544bcee3cdc8e273f276c34bc1d4c0743367b183db284257d36eef7d218387ddfe8f5985e39415878b4664f714360e4133d995d98284dc90ae54211f132325e69368ee21d41b144c1be01c983eac7fd305ebe0f1ee3f185ddddc473e62d85be4731bdfa5483437485866d14937eb7c7464644795228021ff69acdb6e1d3c923f60b8db46bc792847d6093fb59850185647de53f592c50206896b2df0a884d49e558e6754bfeb3a28e475892de8fae2eb6a1de3f8f7f2f45b7089fc8eb1f, 'Accessed page [product.php] with action=insert_product. Review page_parameters and postdata for details.', 'info'),
(382, '2024-12-19 10:13:48', 1, 'product.php', 'cPath=3&action=insert_product', '::1', 0, '', 0xdd54db6e1a3110fd158bd73688dd905ef2464a942025808adaaa52246bb0cd3292d7de8cbd5c14e5df6b2f4b6197d0bcf7c9e333973337fba5539095a5f0dc6f0bd5b9ee249d8f9d1c9c57c40578955942e538caa0ba0caadada71894ed8d2fcf5eb9d55f205d9bc6d51100ac59da540d4d6390fbe74752e8798211b0e2b400d731d19ab444db900e14b5254277970e1e802b56a251751015abf9990e4f32d07ef09e7a53fa9cac3860b0dae663a750f60fa39ed5ebe5169f44523f4dee4d86285e44bd0a779825ec3765704774b2c0a34599bf8d96ff9dc6ece34edb904e33198589261a2399af72c6073c2d0b4280dfaf33c396e943ca70df85523746ea5d28da105ac302da420b5425b86b6e790d593c73c0b5b46bb8b5d295a137ad526ae1c78dc1268d3ac15664bdfde6aad4ce697314cbf618cb242bf1e83cb7d8406655ce95da74e1e45b5c05256fd497b69ff22492f9246480379a8e12544bcee3cdc8e273f276c34bc1d4c0743367b183db284257d36eef7d218387ddfe8f5985e39415878b4664f714360e4133d995d98284dc90ae54211f132325e69368ee21d41b144c1be01c983eac7fd305ebe0f1ee3f185ddddc473e62d85be4731bdfa5483437485866d14937eb7c7464644795228021ff69acdb6e1d3c923f60b8db46bc792847d6093fb59850185647de53f592c50206896b2df0a884d49e558e6754bfeb3a28e475892de8fae2eb6a1de3f8f7f2f45b7089fc8eb1f, 'New product 25 added via admin console.', 'info'),
(383, '2024-12-19 10:13:48', 1, 'category_product_listing.php', 'cPath=3&pID=25', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(384, '2024-12-19 10:13:53', 1, 'category_product_listing.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(385, '2024-12-19 10:13:56', 1, 'category_product_listing.php', 'cPath=5', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(386, '2024-12-19 10:17:00', 1, 'banner_manager.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [banner_manager.php]', 'info'),
(387, '2024-12-19 10:17:07', 1, 'define_pages_editor.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php]', 'info'),
(388, '2024-12-19 10:17:10', 1, 'define_pages_editor.php', 'reset_editor=2&action=set_editor', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php] with action=set_editor. Review page_parameters and postdata for details.', 'info'),
(389, '2024-12-19 10:17:10', 1, 'define_pages_editor.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php]', 'info'),
(390, '2024-12-19 10:17:14', 1, 'define_pages_editor.php', 'define_it=7&action=new_page', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php] with action=new_page. Review page_parameters and postdata for details.', 'info'),
(391, '2024-12-19 10:17:36', 1, 'define_pages_editor.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php]', 'info'),
(392, '2024-12-19 10:18:51', 1, 'define_pages_editor.php', 'define_it=7&action=new_page', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php] with action=new_page. Review page_parameters and postdata for details.', 'info'),
(393, '2024-12-19 10:18:57', 1, 'define_pages_editor.php', 'lngdir=english&filename=define_main_page.php&action=save', '::1', 0, '', 0xab564acbcc498d4fcecf2b49cd2b2956b25252aa0500, 'Accessed page [define_pages_editor.php] with action=save. Review page_parameters and postdata for details.', 'info'),
(394, '2024-12-19 10:18:57', 1, 'define_pages_editor.php', 'lngdir=english&filename=define_main_page.php&action=save', '::1', 0, '', 0xab564acbcc498d4fcecf2b49cd2b2956b25252aa0500, 'Define-Page-Editor was used to save changes to file C:/xampp/htdocs/zc_computer/includes/languages/english/html_includes/responsive_classic/define_main_page.php', 'info'),
(395, '2024-12-19 10:18:57', 1, 'define_pages_editor.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php]', 'info'),
(396, '2024-12-19 10:19:10', 1, 'define_pages_editor.php', 'define_it=7&action=new_page', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php] with action=new_page. Review page_parameters and postdata for details.', 'info'),
(397, '2024-12-19 10:19:13', 1, 'define_pages_editor.php', 'lngdir=english&filename=define_main_page.php&action=save', '::1', 0, '', 0xab564acbcc498d4fcecf2b49cd2b2956b25252aa0500, 'Accessed page [define_pages_editor.php] with action=save. Review page_parameters and postdata for details.', 'info'),
(398, '2024-12-19 10:19:13', 1, 'define_pages_editor.php', 'lngdir=english&filename=define_main_page.php&action=save', '::1', 0, '', 0xab564acbcc498d4fcecf2b49cd2b2956b25252aa0500, 'Define-Page-Editor was used to save changes to file C:/xampp/htdocs/zc_computer/includes/languages/english/html_includes/responsive_classic/define_main_page.php', 'info'),
(399, '2024-12-19 10:19:13', 1, 'define_pages_editor.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php]', 'info'),
(400, '2024-12-19 10:19:31', 1, 'define_pages_editor.php', 'define_it=8&action=new_page', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php] with action=new_page. Review page_parameters and postdata for details.', 'info'),
(401, '2024-12-19 10:19:36', 1, 'define_pages_editor.php', 'action=new_page', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php] with action=new_page. Review page_parameters and postdata for details.', 'info'),
(402, '2024-12-19 10:19:44', 1, 'define_pages_editor.php', 'define_it=7&action=new_page', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php] with action=new_page. Review page_parameters and postdata for details.', 'info'),
(403, '2024-12-19 10:19:48', 1, 'define_pages_editor.php', 'lngdir=english&filename=define_main_page.php&action=save', '::1', 0, '', 0xab564acbcc498d4fcecf2b49cd2b2956b25252aa0500, 'Accessed page [define_pages_editor.php] with action=save. Review page_parameters and postdata for details.', 'info'),
(404, '2024-12-19 10:19:48', 1, 'define_pages_editor.php', 'lngdir=english&filename=define_main_page.php&action=save', '::1', 0, '', 0xab564acbcc498d4fcecf2b49cd2b2956b25252aa0500, 'Define-Page-Editor was used to save changes to file C:/xampp/htdocs/zc_computer/includes/languages/english/html_includes/responsive_classic/define_main_page.php', 'info'),
(405, '2024-12-19 10:19:48', 1, 'define_pages_editor.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php]', 'info'),
(406, '2024-12-19 10:19:51', 1, 'define_pages_editor.php', 'define_it=7&action=new_page', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php] with action=new_page. Review page_parameters and postdata for details.', 'info'),
(407, '2024-12-19 10:24:07', 1, 'product_types.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [product_types.php]', 'info'),
(408, '2024-12-19 10:24:12', 1, 'category_product_listing.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(409, '2024-12-19 10:24:14', 1, 'categories.php', 'action=new_category', '::1', 0, '', 0x8b8e0500, 'Accessed page [categories.php] with action=new_category. Review page_parameters and postdata for details.', 'info'),
(410, '2024-12-19 10:24:38', 1, 'categories.php', 'action=insert_category', '::1', 0, '', 0x7d8eb10ec2300c447fc5f2c0d40118b321d8e10f22abb1228bc4ae9c3055fd770405a92cacefee9e6ec6913a6773e1162561d80f5ba25419c38c070c782a0544e1aa0c3bb870bb779be076c6018f7fd2e5c797b88d2e5317d3aff6b37f15a5e698c457b8fd552973aca40f2a6bd8cc7b344ffc2e2f4f, 'Accessed page [categories.php] with action=insert_category. Review page_parameters and postdata for details.', 'info'),
(411, '2024-12-19 10:24:38', 1, 'category_product_listing.php', 'cID=6', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(412, '2024-12-19 10:24:46', 1, 'categories.php', 'action=new_category', '::1', 0, '', 0x8b8e0500, 'Accessed page [categories.php] with action=new_category. Review page_parameters and postdata for details.', 'info'),
(413, '2024-12-19 10:24:57', 1, 'categories.php', 'action=insert_category', '::1', 0, '', 0x558db10e80200c44ffa5b3833ab2fa21a4918634016a0a4e847f378a2638debb77b90a3b16f2a24cd9b203334f234918094c85050c6c92b2048209d621b59fef28efca476149dfecf56f91a3b78eb5c3f137a2271b319d187a99458b1575f4c8ed02, 'Accessed page [categories.php] with action=insert_category. Review page_parameters and postdata for details.', 'info'),
(414, '2024-12-19 10:24:57', 1, 'category_product_listing.php', 'cID=7', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(415, '2024-12-19 10:24:59', 1, 'categories.php', 'action=new_category', '::1', 0, '', 0x8b8e0500, 'Accessed page [categories.php] with action=new_category. Review page_parameters and postdata for details.', 'info'),
(416, '2024-12-19 10:25:03', 1, 'categories.php', 'action=insert_category', '::1', 0, '', 0x658ebb0a853010447f45b6b89585de325f61611f56b3c40593954dacc47f175fa0d89e9933cc023d66f2a24cc9b20353954f12311098056a30d00c12a9f8152d76236528e1ff85ebcb76947ae529b3c47be4d2f622076f1deb099f2f027ab201e38ce31926d16c451d1de57503, 'Accessed page [categories.php] with action=insert_category. Review page_parameters and postdata for details.', 'info'),
(417, '2024-12-19 10:25:03', 1, 'category_product_listing.php', 'cID=8', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(418, '2024-12-19 10:25:10', 1, 'categories.php', 'action=new_category', '::1', 0, '', 0x8b8e0500, 'Accessed page [categories.php] with action=new_category. Review page_parameters and postdata for details.', 'info'),
(419, '2024-12-19 10:25:14', 1, 'categories.php', 'action=insert_category', '::1', 0, '', 0x6d8e4b0a80300c44af2259b872a12e7b0ac10394d08612b0a9a47525de5dfc8182db37338f59c161a19094295bf660dae64d04238159a1030383b214d2aaae468722a4d040ffcbb78fc35376ca73e1248fea5e1e458ec17ad60bbebf440c6423ca82d315e6a4c526f57496b71d, 'Accessed page [categories.php] with action=insert_category. Review page_parameters and postdata for details.', 'info'),
(420, '2024-12-19 10:25:14', 1, 'category_product_listing.php', 'cID=9', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(421, '2024-12-19 10:28:49', 1, 'define_pages_editor.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php]', 'info'),
(422, '2024-12-19 10:28:52', 1, 'define_pages_editor.php', 'define_it=7&action=new_page', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php] with action=new_page. Review page_parameters and postdata for details.', 'info'),
(423, '2024-12-19 10:28:54', 1, 'define_pages_editor.php', 'define_it=7&action=new_page', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php] with action=new_page. Review page_parameters and postdata for details.', 'info'),
(424, '2024-12-19 10:28:59', 1, 'define_pages_editor.php', 'reset_editor=1&action=set_editor', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php] with action=set_editor. Review page_parameters and postdata for details.', 'info'),
(425, '2024-12-19 10:28:59', 1, 'define_pages_editor.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php]', 'info'),
(426, '2024-12-19 10:29:03', 1, 'define_pages_editor.php', 'define_it=7&action=new_page', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php] with action=new_page. Review page_parameters and postdata for details.', 'info'),
(427, '2024-12-19 10:40:31', 1, 'layout_controller.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [layout_controller.php]', 'info'),
(428, '2024-12-19 10:41:54', 1, 'banner_manager.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [banner_manager.php]', 'info'),
(429, '2024-12-19 10:42:03', 1, 'define_pages_editor.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php]', 'info'),
(430, '2024-12-19 10:42:06', 1, 'define_pages_editor.php', 'define_it=7&action=new_page', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php] with action=new_page. Review page_parameters and postdata for details.', 'info'),
(431, '2024-12-19 10:42:16', 1, 'define_pages_editor.php', 'reset_editor=2&action=set_editor', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php] with action=set_editor. Review page_parameters and postdata for details.', 'info'),
(432, '2024-12-19 10:42:17', 1, 'define_pages_editor.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php]', 'info'),
(433, '2024-12-19 10:42:21', 1, 'define_pages_editor.php', 'define_it=7&action=new_page', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php] with action=new_page. Review page_parameters and postdata for details.', 'info'),
(434, '2024-12-19 10:42:28', 1, 'define_pages_editor.php', 'lngdir=english&filename=define_main_page.php&action=save', '::1', 0, '', 0xab564acbcc498d4fcecf2b49cd2b2956b252b229b0b3292e48cc53282ea9cc49b58d514acecfc92fb2524e4eb53434b7b08e51b28b725670cecf2d282d492db289d107a9b503d205764ab500, 'Accessed page [define_pages_editor.php] with action=save. Review page_parameters and postdata for details.', 'info'),
(435, '2024-12-19 10:42:28', 1, 'define_pages_editor.php', 'lngdir=english&filename=define_main_page.php&action=save', '::1', 0, '', 0xab564acbcc498d4fcecf2b49cd2b2956b252b229b0b3292e48cc53282ea9cc49b58d514acecfc92fb2524e4eb53434b7b08e51b28b725670cecf2d282d492db289d107a9b503d205764ab500, 'Define-Page-Editor was used to save changes to file C:/xampp/htdocs/zc_computer/includes/languages/english/html_includes/responsive_classic/define_main_page.php', 'info'),
(436, '2024-12-19 10:42:28', 1, 'define_pages_editor.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php]', 'info'),
(437, '2024-12-19 10:42:50', 1, 'define_pages_editor.php', 'define_it=7&action=new_page', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php] with action=new_page. Review page_parameters and postdata for details.', 'info'),
(438, '2024-12-19 10:42:53', 1, 'define_pages_editor.php', 'lngdir=english&filename=define_main_page.php&action=save', '::1', 0, '', 0xab564acbcc498d4fcecf2b49cd2b2956b25252aa0500, 'Accessed page [define_pages_editor.php] with action=save. Review page_parameters and postdata for details.', 'info'),
(439, '2024-12-19 10:42:53', 1, 'define_pages_editor.php', 'lngdir=english&filename=define_main_page.php&action=save', '::1', 0, '', 0xab564acbcc498d4fcecf2b49cd2b2956b25252aa0500, 'Define-Page-Editor was used to save changes to file C:/xampp/htdocs/zc_computer/includes/languages/english/html_includes/responsive_classic/define_main_page.php', 'info'),
(440, '2024-12-19 10:42:54', 1, 'define_pages_editor.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [define_pages_editor.php]', 'info'),
(441, '2024-12-20 08:20:45', 0, 'login.php ', 'camefrom=category_product_listing.php&cPath=5&cID=2', '::1', 0, '', 0x8b8e0500, 'Accessed page [login.php]', 'info'),
(442, '2024-12-20 08:22:29', 0, 'login.php admin', 'camefrom=category_product_listing.php&cPath=5&cID=2', '::1', 0, '', 0xab564a4c2ec9cccf53b2524ac9374a4d4a49b54cb54c4b354f4e314a4a4c323749b6304db34c4a493237354f3651d2514a4cc9cdcc8bcf4bcc4d05ea0073946a01, 'Accessed page [login.php] with action=do2ebde9e9fe7cd2bab74c85f9bdb757c4. Review page_parameters and postdata for details.', 'info'),
(443, '2024-12-20 08:22:29', 0, 'login.php admin', 'camefrom=category_product_listing.php&cPath=5&cID=2', '::1', 1, '', 0xab564a4c2ec9cccf53b2524ac9374a4d4a49b54cb54c4b354f4e314a4a4c323749b6304db34c4a493237354f3651d2514a4cc9cdcc8bcf4bcc4d05ea0073946a01, 'TFA Passed - Two-factor authentication passed', 'warning'),
(444, '2024-12-20 08:29:58', 0, 'login.php admin', 'camefrom=category_product_listing.php&cPath=5&cID=2', '::1', 0, '', 0xab564a4c2ec9cccf53b2524ac9374a4d4a49b54cb54c4b354f4e314a4a4c323749b6304db34c4a493237354f3651d2514a4cc9cdcc8bcf4bcc4d05ea0073946a01, 'Accessed page [login.php] with action=do2ebde9e9fe7cd2bab74c85f9bdb757c4. Review page_parameters and postdata for details.', 'info'),
(445, '2024-12-20 08:29:59', 0, 'login.php admin', 'camefrom=category_product_listing.php&cPath=5&cID=2', '::1', 1, '', 0xab564a4c2ec9cccf53b2524ac9374a4d4a49b54cb54c4b354f4e314a4a4c323749b6304db34c4a493237354f3651d2514a4cc9cdcc8bcf4bcc4d05ea0073946a01, 'Failed admin login attempt:  admin', 'warning'),
(446, '2024-12-20 08:31:45', 0, 'login.php ', 'camefrom=category_product_listing.php&cPath=5&cID=2', '::1', 0, '', 0x8b8e0500, 'Accessed page [login.php]', 'info'),
(447, '2024-12-20 08:31:50', 0, 'login.php admin', 'camefrom=category_product_listing.php&cPath=5&cID=2', '::1', 0, '', 0xab564a4c2ec9cccf53b2524ac9374a4d4a49b54cb54c4b354f4e314a4a4c323749b6304db34c4a493237354f3651d2514a4cc9cdcc8bcf4bcc4d05ea0073946a01, 'Accessed page [login.php] with action=do2ebde9e9fe7cd2bab74c85f9bdb757c4. Review page_parameters and postdata for details.', 'info'),
(448, '2024-12-20 08:31:50', 0, 'login.php admin', 'camefrom=category_product_listing.php&cPath=5&cID=2', '::1', 1, '', 0xab564a4c2ec9cccf53b2524ac9374a4d4a49b54cb54c4b354f4e314a4a4c323749b6304db34c4a493237354f3651d2514a4cc9cdcc8bcf4bcc4d05ea0073946a01, 'TFA Passed - Two-factor authentication passed', 'warning'),
(449, '2024-12-20 08:31:50', 1, 'category_product_listing.php', 'cPath=5&cID=2', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(450, '2024-12-20 08:31:57', 1, 'modules.php', 'set=ordertotal', '::1', 0, '', 0x8b8e0500, 'Accessed page [modules.php]', 'info'),
(451, '2024-12-20 08:31:57', 1, 'modules.php', 'set=shipping', '::1', 0, '', 0x8b8e0500, 'Accessed page [modules.php]', 'info'),
(452, '2024-12-20 08:32:22', 1, 'modules.php', 'set=shipping&module=flat&action=edit', '::1', 0, '', 0x8b8e0500, 'Accessed page [modules.php] with action=edit. Review page_parameters and postdata for details.', 'info'),
(453, '2024-12-20 08:32:28', 1, 'modules.php', 'set=shipping&module=flat', '::1', 0, '', 0x8b8e0500, 'Accessed page [modules.php]', 'info'),
(454, '2024-12-20 08:32:38', 1, 'customers.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [customers.php]', 'info'),
(455, '2024-12-20 08:32:43', 1, 'orders.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [orders.php]', 'info'),
(456, '2024-12-20 08:47:07', 1, 'login.php', 'camefrom=category_product_listing.php&cPath=5&cID=2', '::1', 0, '', 0x8b8e0500, 'Accessed page [login.php]', 'info'),
(457, '2024-12-20 08:47:26', 1, 'login.php', 'camefrom=category_product_listing.php&cPath=5&cID=2', '::1', 0, '', 0xab564a4c2ec9cccf53b2524ac9374a4d4a49b54cb54c4b354f4e314a4a4c323749b6304db34c4a493237354f3651d2514a4cc9cdcc8bcf4bcc4d05ea0073946a01, 'Accessed page [login.php] with action=do2ebde9e9fe7cd2bab74c85f9bdb757c4. Review page_parameters and postdata for details.', 'info'),
(458, '2024-12-20 08:47:26', 1, 'login.php', 'camefrom=category_product_listing.php&cPath=5&cID=2', '::1', 1, '', 0xab564a4c2ec9cccf53b2524ac9374a4d4a49b54cb54c4b354f4e314a4a4c323749b6304db34c4a493237354f3651d2514a4cc9cdcc8bcf4bcc4d05ea0073946a01, 'TFA Passed - Two-factor authentication passed', 'warning'),
(459, '2024-12-20 08:47:26', 1, 'category_product_listing.php', 'cPath=5&cID=2', '::1', 0, '', 0x8b8e0500, 'Accessed page [category_product_listing.php]', 'info'),
(460, '2024-12-20 08:51:35', 1, 'orders.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [orders.php]', 'info'),
(461, '2024-12-20 08:51:37', 1, 'orders.php', 'page=1&oID=1&action=edit', '::1', 0, '', 0x8b8e0500, 'Accessed page [orders.php] with action=edit. Review page_parameters and postdata for details.', 'info'),
(462, '2024-12-20 08:51:56', 1, 'invoice.php', 'oID=1', '::1', 0, '', 0x8b8e0500, 'Accessed page [invoice.php]', 'info'),
(463, '2024-12-20 08:52:14', 1, 'packingslip.php', 'oID=1', '::1', 0, '', 0x8b8e0500, 'Accessed page [packingslip.php]', 'info'),
(464, '2024-12-20 08:52:34', 1, 'orders.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [orders.php]', 'info'),
(465, '2024-12-20 08:52:44', 1, 'orders.php', 'page=1&action=update_order&oID=1&language=id', '::1', 0, '', 0xab564a4cc9cdcc8bcf49cc4b2f4d4c4f55b2524acd53d251cacb2fc94cab04f20c819ce292c492d2e2d08294c492d4e0d49cd4e412a084b1522d00, 'Accessed page [orders.php] with action=update_order. Review page_parameters and postdata for details.', 'info'),
(466, '2024-12-20 08:52:46', 1, 'orders.php', 'page=1&action=update_order&oID=1&language=id', '::1', 0, '', 0xab564a4cc9cdcc8bcf49cc4b2f4d4c4f55b2524acd53d251cacb2fc94cab04f20c819ce292c492d2e2d08294c492d4e0d49cd4e412a084b1522d00, 'Order 1 updated.', 'info'),
(467, '2024-12-20 08:52:46', 1, 'orders.php', 'page=1&oID=1', '::1', 0, '', 0x8b8e0500, 'Accessed page [orders.php]', 'info'),
(468, '2024-12-20 08:52:50', 1, 'orders.php', 'page=1&oID=1&action=update_order&language=id', '::1', 0, '', 0xab564a4cc9cdcc8bcf49cc4b2f4d4c4f55b2524acd53d251cacb2fc94cab04f20c819ce292c492d2e2d08294c492d4e0d49cd4e412b0442d00, 'Accessed page [orders.php] with action=update_order. Review page_parameters and postdata for details.', 'info'),
(469, '2024-12-20 08:52:52', 1, 'orders.php', 'page=1&oID=1&action=update_order&language=id', '::1', 0, '', 0xab564a4cc9cdcc8bcf49cc4b2f4d4c4f55b2524acd53d251cacb2fc94cab04f20c819ce292c492d2e2d08294c492d4e0d49cd4e412b0442d00, 'Order 1 updated.', 'info'),
(470, '2024-12-20 08:52:52', 1, 'orders.php', 'page=1&oID=1', '::1', 0, '', 0x8b8e0500, 'Accessed page [orders.php]', 'info'),
(471, '2024-12-20 08:53:02', 1, 'orders.php', 'page=1&oID=1&action=delete', '::1', 0, '', 0x8b8e0500, 'Accessed page [orders.php] with action=delete. Review page_parameters and postdata for details.', 'info'),
(472, '2024-12-20 08:53:07', 1, 'orders.php', 'page=1&action=deleteconfirm', '::1', 0, '', 0xab56caf77451b2523254d2512a4a2d2ec94fce06f2f2f3946a01, 'Accessed page [orders.php] with action=deleteconfirm. Review page_parameters and postdata for details.', 'info'),
(473, '2024-12-20 08:53:07', 1, 'orders.php', 'page=1&action=deleteconfirm', '::1', 1, '', 0xab56caf77451b2523254d2512a4a2d2ec94fce06f2f2f3946a01, 'Deleted order 1 from database via admin console.', 'warning'),
(474, '2024-12-20 08:53:07', 1, 'orders.php', 'page=1', '::1', 0, '', 0x8b8e0500, 'Accessed page [orders.php]', 'info'),
(475, '2024-12-20 08:54:45', 1, 'users.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [users.php]', 'info'),
(476, '2024-12-20 08:54:50', 1, 'profiles.php', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [profiles.php]', 'info'),
(477, '2024-12-20 09:09:50', 0, 'login.php ', 'camefrom=logoff.php', '::1', 0, '', 0x8b8e0500, 'Accessed page [login.php]', 'info'),
(478, '2024-12-20 09:15:04', 0, 'login.php ', 'camefrom=profiles.php', '::1', 0, '', 0x8b8e0500, 'Accessed page [login.php]', 'info'),
(479, '2024-12-21 12:04:40', 0, 'login.php ', 'camefrom=category_product_listing.php&cPath=5&cID=2', '::1', 0, '', 0x8b8e0500, 'Accessed page [login.php]', 'info'),
(480, '2024-12-21 12:05:38', 0, 'alert_page.php ', '', '::1', 0, '', 0x8b8e0500, 'Accessed page [alert_page.php]', 'info');

-- --------------------------------------------------------

--
-- Table structure for table `admin_expired_tokens`
--

CREATE TABLE `admin_expired_tokens` (
  `admin_name` varchar(44) NOT NULL DEFAULT '',
  `otp_code` varchar(32) NOT NULL DEFAULT '',
  `used_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_menus`
--

CREATE TABLE `admin_menus` (
  `menu_key` varchar(191) NOT NULL DEFAULT '',
  `language_key` varchar(255) NOT NULL DEFAULT '',
  `sort_order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_menus`
--

INSERT INTO `admin_menus` (`menu_key`, `language_key`, `sort_order`) VALUES
('configuration', 'BOX_HEADING_CONFIGURATION', 1),
('catalog', 'BOX_HEADING_CATALOG', 2),
('modules', 'BOX_HEADING_MODULES', 3),
('customers', 'BOX_HEADING_CUSTOMERS', 4),
('taxes', 'BOX_HEADING_LOCATION_AND_TAXES', 5),
('localization', 'BOX_HEADING_LOCALIZATION', 6),
('reports', 'BOX_HEADING_REPORTS', 7),
('tools', 'BOX_HEADING_TOOLS', 8),
('gv', 'BOX_HEADING_GV_ADMIN', 9),
('access', 'BOX_HEADING_ADMIN_ACCESS', 10),
('extras', 'BOX_HEADING_EXTRAS', 11);

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `notification_key` varchar(40) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `dismissed` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_pages`
--

CREATE TABLE `admin_pages` (
  `page_key` varchar(191) NOT NULL DEFAULT '',
  `language_key` varchar(255) NOT NULL DEFAULT '',
  `main_page` varchar(255) NOT NULL DEFAULT '',
  `page_params` varchar(255) NOT NULL DEFAULT '',
  `menu_key` varchar(191) NOT NULL DEFAULT '',
  `display_on_menu` char(1) NOT NULL DEFAULT 'N',
  `sort_order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_pages`
--

INSERT INTO `admin_pages` (`page_key`, `language_key`, `main_page`, `page_params`, `menu_key`, `display_on_menu`, `sort_order`) VALUES
('configMyStore', 'BOX_CONFIGURATION_MY_STORE', 'FILENAME_CONFIGURATION', 'gID=1', 'configuration', 'Y', 1),
('configMinimumValues', 'BOX_CONFIGURATION_MINIMUM_VALUES', 'FILENAME_CONFIGURATION', 'gID=2', 'configuration', 'Y', 2),
('configMaximumValues', 'BOX_CONFIGURATION_MAXIMUM_VALUES', 'FILENAME_CONFIGURATION', 'gID=3', 'configuration', 'Y', 3),
('configImages', 'BOX_CONFIGURATION_IMAGES', 'FILENAME_CONFIGURATION', 'gID=4', 'configuration', 'Y', 4),
('configCustomerDetails', 'BOX_CONFIGURATION_CUSTOMER_DETAILS', 'FILENAME_CONFIGURATION', 'gID=5', 'configuration', 'Y', 5),
('configShipping', 'BOX_CONFIGURATION_SHIPPING_PACKAGING', 'FILENAME_CONFIGURATION', 'gID=7', 'configuration', 'Y', 6),
('configProductListing', 'BOX_CONFIGURATION_PRODUCT_LISTING', 'FILENAME_CONFIGURATION', 'gID=8', 'configuration', 'Y', 7),
('configStock', 'BOX_CONFIGURATION_STOCK', 'FILENAME_CONFIGURATION', 'gID=9', 'configuration', 'Y', 8),
('configLogging', 'BOX_CONFIGURATION_LOGGING', 'FILENAME_CONFIGURATION', 'gID=10', 'configuration', 'Y', 9),
('configEmail', 'BOX_CONFIGURATION_EMAIL_OPTIONS', 'FILENAME_CONFIGURATION', 'gID=12', 'configuration', 'Y', 10),
('configAttributes', 'BOX_CONFIGURATION_ATTRIBUTE_OPTIONS', 'FILENAME_CONFIGURATION', 'gID=13', 'configuration', 'Y', 11),
('configGzipCompression', 'BOX_CONFIGURATION_GZIP_COMPRESSION', 'FILENAME_CONFIGURATION', 'gID=14', 'configuration', 'Y', 12),
('configSessions', 'BOX_CONFIGURATION_SESSIONS', 'FILENAME_CONFIGURATION', 'gID=15', 'configuration', 'Y', 13),
('configRegulations', 'BOX_CONFIGURATION_REGULATIONS', 'FILENAME_CONFIGURATION', 'gID=11', 'configuration', 'Y', 14),
('configGvCoupons', 'BOX_CONFIGURATION_GV_COUPONS', 'FILENAME_CONFIGURATION', 'gID=16', 'configuration', 'Y', 15),
('configCreditCards', 'BOX_CONFIGURATION_CREDIT_CARDS', 'FILENAME_CONFIGURATION', 'gID=17', 'configuration', 'Y', 16),
('configProductInfo', 'BOX_CONFIGURATION_PRODUCT_INFO', 'FILENAME_CONFIGURATION', 'gID=18', 'configuration', 'Y', 17),
('configLayoutSettings', 'BOX_CONFIGURATION_LAYOUT_SETTINGS', 'FILENAME_CONFIGURATION', 'gID=19', 'configuration', 'Y', 18),
('configWebsiteMaintenance', 'BOX_CONFIGURATION_WEBSITE_MAINTENANCE', 'FILENAME_CONFIGURATION', 'gID=20', 'configuration', 'Y', 19),
('configNewListing', 'BOX_CONFIGURATION_NEW_LISTING', 'FILENAME_CONFIGURATION', 'gID=21', 'configuration', 'N', 20),
('configFeaturedListing', 'BOX_CONFIGURATION_FEATURED_LISTING', 'FILENAME_CONFIGURATION', 'gID=22', 'configuration', 'N', 21),
('configAllListing', 'BOX_CONFIGURATION_ALL_LISTING', 'FILENAME_CONFIGURATION', 'gID=23', 'configuration', 'N', 22),
('configIndexListing', 'BOX_CONFIGURATION_INDEX_LISTING', 'FILENAME_CONFIGURATION', 'gID=24', 'configuration', 'Y', 23),
('configDefinePageStatus', 'BOX_CONFIGURATION_DEFINE_PAGE_STATUS', 'FILENAME_CONFIGURATION', 'gID=25', 'configuration', 'Y', 24),
('configEzPagesSettings', 'BOX_CONFIGURATION_EZPAGES_SETTINGS', 'FILENAME_CONFIGURATION', 'gID=30', 'configuration', 'Y', 25),
('categories', 'BOX_CATALOG_CATEGORY', 'FILENAME_CATEGORIES', '', 'catalog', 'N', 18),
('categoriesProductListing', 'BOX_CATALOG_CATEGORIES_PRODUCTS', 'FILENAME_CATEGORY_PRODUCT_LISTING', '', 'catalog', 'Y', 1),
('productTypes', 'BOX_CATALOG_PRODUCT_TYPES', 'FILENAME_PRODUCT_TYPES', '', 'catalog', 'Y', 2),
('priceManager', 'BOX_CATALOG_PRODUCTS_PRICE_MANAGER', 'FILENAME_PRODUCTS_PRICE_MANAGER', '', 'catalog', 'Y', 3),
('optionNames', 'BOX_CATALOG_CATEGORIES_OPTIONS_NAME_MANAGER', 'FILENAME_OPTIONS_NAME_MANAGER', '', 'catalog', 'Y', 4),
('optionValues', 'BOX_CATALOG_CATEGORIES_OPTIONS_VALUES_MANAGER', 'FILENAME_OPTIONS_VALUES_MANAGER', '', 'catalog', 'Y', 5),
('attributes', 'BOX_CATALOG_CATEGORIES_ATTRIBUTES_CONTROLLER', 'FILENAME_ATTRIBUTES_CONTROLLER', '', 'catalog', 'Y', 6),
('downloads', 'BOX_CATALOG_CATEGORIES_ATTRIBUTES_DOWNLOADS_MANAGER', 'FILENAME_DOWNLOADS_MANAGER', '', 'catalog', 'Y', 7),
('optionNameSorter', 'BOX_CATALOG_PRODUCT_OPTIONS_NAME', 'FILENAME_PRODUCTS_OPTIONS_NAME', '', 'catalog', 'Y', 8),
('optionValueSorter', 'BOX_CATALOG_PRODUCT_OPTIONS_VALUES', 'FILENAME_PRODUCTS_OPTIONS_VALUES', '', 'catalog', 'Y', 9),
('manufacturers', 'BOX_CATALOG_MANUFACTURERS', 'FILENAME_MANUFACTURERS', '', 'catalog', 'Y', 10),
('reviews', 'BOX_CATALOG_REVIEWS', 'FILENAME_REVIEWS', '', 'catalog', 'Y', 11),
('specials', 'BOX_CATALOG_SPECIALS', 'FILENAME_SPECIALS', '', 'catalog', 'Y', 12),
('featured', 'BOX_CATALOG_FEATURED', 'FILENAME_FEATURED', '', 'catalog', 'Y', 13),
('featured_categories', 'BOX_CATALOG_FEATURED_CATEGORIES', 'FILENAME_FEATURED_CATEGORIES', '', 'catalog', 'Y', 14),
('salemaker', 'BOX_CATALOG_SALEMAKER', 'FILENAME_SALEMAKER', '', 'catalog', 'Y', 15),
('productsExpected', 'BOX_CATALOG_PRODUCTS_EXPECTED', 'FILENAME_PRODUCTS_EXPECTED', '', 'catalog', 'Y', 16),
('product', 'BOX_CATALOG_PRODUCT', 'FILENAME_PRODUCT', '', 'catalog', 'N', 17),
('productsToCategories', 'BOX_CATALOG_PRODUCTS_TO_CATEGORIES', 'FILENAME_PRODUCTS_TO_CATEGORIES', '', 'catalog', 'Y', 18),
('payment', 'BOX_MODULES_PAYMENT', 'FILENAME_MODULES', 'set=payment', 'modules', 'Y', 1),
('shipping', 'BOX_MODULES_SHIPPING', 'FILENAME_MODULES', 'set=shipping', 'modules', 'Y', 2),
('plugins', 'BOX_MODULES_PLUGINS', 'FILENAME_PLUGIN_MANAGER', '', 'modules', 'Y', 4),
('orderTotal', 'BOX_MODULES_ORDER_TOTAL', 'FILENAME_MODULES', 'set=ordertotal', 'modules', 'Y', 3),
('customers', 'BOX_CUSTOMERS_CUSTOMERS', 'FILENAME_CUSTOMERS', '', 'customers', 'Y', 1),
('customerGroups', 'BOX_CUSTOMERS_CUSTOMER_GROUPS', 'FILENAME_CUSTOMER_GROUPS', '', 'customers', 'Y', 3),
('orders', 'BOX_CUSTOMERS_ORDERS', 'FILENAME_ORDERS', '', 'customers', 'Y', 2),
('groupPricing', 'BOX_CUSTOMERS_GROUP_PRICING', 'FILENAME_GROUP_PRICING', '', 'customers', 'Y', 3),
('paypal', 'BOX_CUSTOMERS_PAYPAL', 'FILENAME_PAYPAL', '', 'customers', 'Y', 4),
('invoice', 'BOX_CUSTOMERS_INVOICE', 'FILENAME_ORDERS_INVOICE', '', 'customers', 'N', 5),
('packingslip', 'BOX_CUSTOMERS_PACKING_SLIP', 'FILENAME_ORDERS_PACKINGSLIP', '', 'customers', 'N', 6),
('countries', 'BOX_TAXES_COUNTRIES', 'FILENAME_COUNTRIES', '', 'taxes', 'Y', 1),
('zones', 'BOX_TAXES_ZONES', 'FILENAME_ZONES', '', 'taxes', 'Y', 2),
('geoZones', 'BOX_TAXES_GEO_ZONES', 'FILENAME_GEO_ZONES', '', 'taxes', 'Y', 3),
('taxClasses', 'BOX_TAXES_TAX_CLASSES', 'FILENAME_TAX_CLASSES', '', 'taxes', 'Y', 4),
('taxRates', 'BOX_TAXES_TAX_RATES', 'FILENAME_TAX_RATES', '', 'taxes', 'Y', 5),
('currencies', 'BOX_LOCALIZATION_CURRENCIES', 'FILENAME_CURRENCIES', '', 'localization', 'Y', 1),
('languages', 'BOX_LOCALIZATION_LANGUAGES', 'FILENAME_LANGUAGES', '', 'localization', 'Y', 2),
('ordersStatus', 'BOX_LOCALIZATION_ORDERS_STATUS', 'FILENAME_ORDERS_STATUS', '', 'localization', 'Y', 3),
('reportCustomers', 'BOX_REPORTS_ORDERS_TOTAL', 'FILENAME_STATS_CUSTOMERS', '', 'reports', 'Y', 1),
('reportReferrals', 'BOX_REPORTS_CUSTOMERS_REFERRALS', 'FILENAME_STATS_CUSTOMERS_REFERRALS', '', 'reports', 'Y', 2),
('reportLowStock', 'BOX_REPORTS_PRODUCTS_LOWSTOCK', 'FILENAME_STATS_PRODUCTS_LOWSTOCK', '', 'reports', 'Y', 3),
('reportProductsSold', 'BOX_REPORTS_PRODUCTS_PURCHASED', 'FILENAME_STATS_PRODUCTS_PURCHASED', '', 'reports', 'Y', 4),
('reportProductsViewed', 'BOX_REPORTS_PRODUCTS_VIEWED', 'FILENAME_STATS_PRODUCTS_VIEWED', '', 'reports', 'Y', 5),
('templateSelect', 'BOX_TOOLS_TEMPLATE_SELECT', 'FILENAME_TEMPLATE_SELECT', '', 'tools', 'Y', 1),
('layoutController', 'BOX_TOOLS_LAYOUT_CONTROLLER', 'FILENAME_LAYOUT_CONTROLLER', '', 'tools', 'Y', 2),
('banners', 'BOX_TOOLS_BANNER_MANAGER', 'FILENAME_BANNER_MANAGER', '', 'tools', 'Y', 3),
('mail', 'BOX_TOOLS_MAIL', 'FILENAME_MAIL', '', 'tools', 'Y', 4),
('newsletters', 'BOX_TOOLS_NEWSLETTER_MANAGER', 'FILENAME_NEWSLETTERS', '', 'tools', 'Y', 5),
('server', 'BOX_TOOLS_SERVER_INFO', 'FILENAME_SERVER_INFO', '', 'tools', 'Y', 6),
('whosOnline', 'BOX_TOOLS_WHOS_ONLINE', 'FILENAME_WHOS_ONLINE', '', 'tools', 'Y', 7),
('storeManager', 'BOX_TOOLS_STORE_MANAGER', 'FILENAME_STORE_MANAGER', '', 'tools', 'Y', 9),
('developersToolKit', 'BOX_TOOLS_DEVELOPERS_TOOL_KIT', 'FILENAME_DEVELOPERS_TOOL_KIT', '', 'tools', 'Y', 10),
('ezpages', 'BOX_TOOLS_EZPAGES', 'FILENAME_EZPAGES_ADMIN', '', 'tools', 'Y', 11),
('definePagesEditor', 'BOX_TOOLS_DEFINE_PAGES_EDITOR', 'FILENAME_DEFINE_PAGES_EDITOR', '', 'tools', 'Y', 12),
('sqlPatch', 'BOX_TOOLS_SQLPATCH', 'FILENAME_SQLPATCH', '', 'tools', 'Y', 13),
('couponAdmin', 'BOX_COUPON_ADMIN', 'FILENAME_COUPON_ADMIN', '', 'gv', 'Y', 1),
('couponRestrict', 'BOX_COUPON_RESTRICT', 'FILENAME_COUPON_RESTRICT', '', 'gv', 'N', 1),
('gvQueue', 'BOX_GV_ADMIN_QUEUE', 'FILENAME_GV_QUEUE', '', 'gv', 'Y', 2),
('gvMail', 'BOX_GV_ADMIN_MAIL', 'FILENAME_GV_MAIL', '', 'gv', 'Y', 3),
('gvSent', 'BOX_GV_ADMIN_SENT', 'FILENAME_GV_SENT', '', 'gv', 'Y', 4),
('couponReferrers', 'BOX_COUPON_REFERRERS', 'FILENAME_COUPON_REFERRERS', '', 'gv', 'N', 5),
('profiles', 'BOX_ADMIN_ACCESS_PROFILES', 'FILENAME_PROFILES', '', 'access', 'Y', 1),
('users', 'BOX_ADMIN_ACCESS_USERS', 'FILENAME_USERS', '', 'access', 'Y', 2),
('pageRegistration', 'BOX_ADMIN_ACCESS_PAGE_REGISTRATION', 'FILENAME_ADMIN_PAGE_REGISTRATION', '', 'access', 'Y', 3),
('adminlogs', 'BOX_ADMIN_ACCESS_LOGS', 'FILENAME_ADMIN_ACTIVITY', '', 'access', 'Y', 4),
('recordArtists', 'BOX_CATALOG_RECORD_ARTISTS', 'FILENAME_RECORD_ARTISTS', '', 'extras', 'Y', 1),
('recordCompanies', 'BOX_CATALOG_RECORD_COMPANY', 'FILENAME_RECORD_COMPANY', '', 'extras', 'Y', 2),
('musicGenre', 'BOX_CATALOG_MUSIC_GENRE', 'FILENAME_MUSIC_GENRE', '', 'extras', 'Y', 3),
('mediaManager', 'BOX_CATALOG_MEDIA_MANAGER', 'FILENAME_MEDIA_MANAGER', '', 'extras', 'Y', 4),
('mediaTypes', 'BOX_CATALOG_MEDIA_TYPES', 'FILENAME_MEDIA_TYPES', '', 'extras', 'Y', 5),
('reportSalesWithGraphs', 'BOX_REPORTS_SALES_REPORT_GRAPHS', 'FILENAME_STATS_SALES_REPORT_GRAPHS', '', 'reports', 'Y', 15);

-- --------------------------------------------------------

--
-- Table structure for table `admin_pages_to_profiles`
--

CREATE TABLE `admin_pages_to_profiles` (
  `profile_id` int(11) NOT NULL DEFAULT 0,
  `page_key` varchar(191) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_pages_to_profiles`
--

INSERT INTO `admin_pages_to_profiles` (`profile_id`, `page_key`) VALUES
(2, 'currencies'),
(2, 'customers'),
(2, 'gvMail'),
(2, 'gvQueue'),
(2, 'gvSent'),
(2, 'invoice'),
(2, 'mail'),
(2, 'orders'),
(2, 'packingslip'),
(2, 'paypal'),
(2, 'reportCustomers'),
(2, 'reportLowStock'),
(2, 'reportProductsSold'),
(2, 'reportProductsViewed'),
(2, 'reportReferrals'),
(2, 'whosOnline');

-- --------------------------------------------------------

--
-- Table structure for table `admin_profiles`
--

CREATE TABLE `admin_profiles` (
  `profile_id` int(11) NOT NULL,
  `profile_name` varchar(191) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_profiles`
--

INSERT INTO `admin_profiles` (`profile_id`, `profile_name`) VALUES
(1, 'Superuser'),
(2, 'Order Processing');

-- --------------------------------------------------------

--
-- Table structure for table `authorizenet`
--

CREATE TABLE `authorizenet` (
  `id` int(11) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `response_code` int(1) NOT NULL DEFAULT 0,
  `response_text` varchar(255) NOT NULL DEFAULT '',
  `authorization_type` varchar(50) NOT NULL DEFAULT '',
  `transaction_id` varchar(32) DEFAULT NULL,
  `sent` longtext NOT NULL,
  `received` longtext NOT NULL,
  `time` varchar(50) NOT NULL DEFAULT '',
  `session_id` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `banners_id` int(11) NOT NULL,
  `banners_title` varchar(64) NOT NULL DEFAULT '',
  `banners_url` varchar(255) NOT NULL DEFAULT '',
  `banners_image` varchar(255) NOT NULL DEFAULT '',
  `banners_group` varchar(15) NOT NULL DEFAULT '',
  `banners_html_text` text DEFAULT NULL,
  `expires_impressions` int(7) DEFAULT 0,
  `expires_date` datetime DEFAULT NULL,
  `date_scheduled` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `date_status_change` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `banners_open_new_windows` int(1) NOT NULL DEFAULT 1,
  `banners_on_ssl` int(1) NOT NULL DEFAULT 1,
  `banners_sort_order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`banners_id`, `banners_title`, `banners_url`, `banners_image`, `banners_group`, `banners_html_text`, `expires_impressions`, `expires_date`, `date_scheduled`, `date_added`, `date_status_change`, `status`, `banners_open_new_windows`, `banners_on_ssl`, `banners_sort_order`) VALUES
(1, 'Zen Cart', 'https://www.zen-cart.com', 'banners/zencart_468_60_02.gif', 'Wide-Banners', '', 0, NULL, NULL, '2004-01-11 20:59:12', '2024-12-18 12:00:42', 0, 1, 1, 0),
(2, 'Zen Cart the art of e-commerce', 'https://www.zen-cart.com', 'banners/125zen_logo.gif', 'SideBox-Banners', '', 0, NULL, NULL, '2004-01-11 20:59:12', '2024-12-18 12:00:35', 0, 1, 1, 0),
(3, 'Zen Cart the art of e-commerce', 'https://www.zen-cart.com', 'banners/125x125_zen_logo.gif', 'SideBox-Banners', '', 0, NULL, NULL, '2004-01-11 20:59:12', '2024-12-18 12:00:37', 0, 1, 1, 0),
(4, 'if you have to think ... you haven\'t been Zenned!', 'https://www.zen-cart.com', 'banners/think_anim.gif', 'Wide-Banners', '', 0, NULL, NULL, '2004-01-12 20:53:18', '2024-12-18 12:00:40', 0, 1, 1, 0),
(5, 'Zen Cart the art of e-commerce', 'https://www.zen-cart.com', 'banners/bw_zen_88wide.gif', 'BannersAll', '', 0, NULL, NULL, '2005-05-13 10:54:38', '2024-12-18 12:00:31', 0, 1, 1, 10),
(6, 'Zen Cart Certified Services', 'https://www.zen-cart.com', '', 'Wide-Banners', '<script><!--//<![CDATA[\r\n   var loc = \'//pan.zen-cart.com/display/group/1/\';\r\n   var rd = Math.floor(Math.random()*99999999999);\r\n   document.write (\"<scr\"+\"ipt src=\'\"+loc);\r\n   document.write (\'?rd=\' + rd);\r\n   document.write (\"\'></scr\"+\"ipt>\");\r\n//]]>--></script>', 0, NULL, NULL, '2004-01-11 20:59:12', '2024-12-18 12:00:44', 0, 1, 1, 0),
(7, 'Credit Card Processing', 'https://www.zen-cart.com/partners/square_promo', 'banners/cardsvcs_468x60.gif', 'Wide-Banners', '', 0, NULL, NULL, '2005-05-13 10:54:38', '2024-12-18 12:00:38', 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `banners_history`
--

CREATE TABLE `banners_history` (
  `banners_history_id` int(11) NOT NULL,
  `banners_id` int(11) NOT NULL DEFAULT 0,
  `banners_shown` int(5) NOT NULL DEFAULT 0,
  `banners_clicked` int(5) NOT NULL DEFAULT 0,
  `banners_history_date` datetime NOT NULL DEFAULT '0001-01-01 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banners_history`
--

INSERT INTO `banners_history` (`banners_history_id`, `banners_id`, `banners_shown`, `banners_clicked`, `banners_history_date`) VALUES
(1, 2, 24, 0, '2024-12-18 10:04:42'),
(2, 5, 19, 0, '2024-12-18 10:04:42'),
(3, 2, 24, 0, '2024-12-18 10:04:42'),
(4, 6, 5, 0, '2024-12-18 10:04:43'),
(5, 4, 5, 0, '2024-12-18 10:06:49'),
(6, 3, 13, 0, '2024-12-18 10:08:25'),
(7, 3, 13, 0, '2024-12-18 10:08:25'),
(8, 7, 4, 0, '2024-12-18 10:08:25'),
(9, 1, 5, 0, '2024-12-18 10:30:38');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categories_image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `sort_order` int(3) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `categories_status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_image`, `parent_id`, `sort_order`, `date_added`, `last_modified`, `categories_status`) VALUES
(1, 'asus.jpg', 5, 0, '2024-12-18 10:27:12', '2024-12-18 12:06:22', 1),
(2, 'acer.jpg', 5, 0, '2024-12-18 10:29:26', '2024-12-18 12:06:09', 1),
(3, 'lenovo.png', 5, 0, '2024-12-18 10:30:03', '2024-12-18 12:06:51', 1),
(4, 'hp.png', 5, 0, '2024-12-18 10:30:22', '2024-12-18 12:06:35', 1),
(5, NULL, 0, 0, '2024-12-18 12:03:22', NULL, 1),
(6, NULL, 0, 0, '2024-12-19 10:24:38', NULL, 1),
(7, NULL, 0, 0, '2024-12-19 10:24:57', NULL, 1),
(8, NULL, 0, 0, '2024-12-19 10:25:03', NULL, 1),
(9, NULL, 0, 0, '2024-12-19 10:25:14', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories_description`
--

CREATE TABLE `categories_description` (
  `categories_id` int(11) NOT NULL DEFAULT 0,
  `language_id` int(11) NOT NULL DEFAULT 1,
  `categories_name` varchar(32) NOT NULL DEFAULT '',
  `categories_description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories_description`
--

INSERT INTO `categories_description` (`categories_id`, `language_id`, `categories_name`, `categories_description`) VALUES
(1, 1, 'Asus', '<p>Laptop</p>'),
(1, 2, 'Asus', '<p>Laptop</p>'),
(2, 1, 'Acer', '<p>Laptop</p>'),
(2, 2, 'Acer', '<p>Laptop</p>'),
(3, 1, 'Lenovo', '<p>Laptop</p>'),
(3, 2, 'Lenovo', '<p>Laptop</p>'),
(4, 1, 'HP', '<p>Laptop</p>'),
(4, 2, 'HP', '<p>Laptop</p>'),
(5, 1, 'Laptop', ''),
(5, 2, 'Laptop', ''),
(6, 1, 'All in One & Desktop PC', ''),
(6, 2, 'All in One & Desktop PC', ''),
(7, 1, 'Console', ''),
(7, 2, 'Console', ''),
(8, 1, 'Phone & Tablet', ''),
(8, 2, 'Phone & Tablet', ''),
(9, 1, 'Printer & Scanner', ''),
(9, 2, 'Printer & Scanner', '');

-- --------------------------------------------------------

--
-- Table structure for table `configuration`
--

CREATE TABLE `configuration` (
  `configuration_id` int(11) NOT NULL,
  `configuration_title` text NOT NULL,
  `configuration_key` varchar(180) NOT NULL DEFAULT '',
  `configuration_value` text NOT NULL,
  `configuration_description` text NOT NULL,
  `configuration_group_id` int(11) NOT NULL DEFAULT 0,
  `sort_order` int(5) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `use_function` text DEFAULT NULL,
  `set_function` text DEFAULT NULL,
  `val_function` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `configuration`
--

INSERT INTO `configuration` (`configuration_id`, `configuration_title`, `configuration_key`, `configuration_value`, `configuration_description`, `configuration_group_id`, `sort_order`, `last_modified`, `date_added`, `use_function`, `set_function`, `val_function`) VALUES
(1, 'Store Name', 'STORE_NAME', 'ZC Computer', 'The name of my store', 1, 1, NULL, '2024-12-18 09:59:01', NULL, NULL, NULL),
(2, 'Store Owner', 'STORE_OWNER', 'Anugrah Panji', 'The name of my store owner', 1, 2, NULL, '2024-12-18 09:59:01', NULL, NULL, NULL),
(3, 'Telephone - Customer Service', 'STORE_TELEPHONE_CUSTSERVICE', '', 'Enter a telephone number for customers to reach your Customer Service department. This number may be sent as part of payment transaction details.', 1, 3, NULL, '2024-12-18 09:59:01', NULL, NULL, NULL),
(4, 'Country', 'STORE_COUNTRY', '100', 'The country my store is located in <br /><br /><strong>Note: Please remember to update the store zone.</strong>', 1, 6, NULL, '2024-12-18 09:59:01', 'zen_get_country_name', 'zen_cfg_pull_down_country_list(', NULL),
(5, 'Zone', 'STORE_ZONE', '0', 'The zone my store is located in', 1, 7, NULL, '2024-12-18 09:59:02', 'zen_cfg_get_zone_name', 'zen_cfg_pull_down_zone_list(', NULL),
(6, 'Expected Sort Order', 'EXPECTED_PRODUCTS_SORT', 'desc', 'This is the sort order used in the expected products box.', 1, 8, NULL, '2024-12-18 09:59:02', NULL, 'zen_cfg_select_option(array(\'asc\', \'desc\'), ', NULL),
(7, 'Expected Sort Field', 'EXPECTED_PRODUCTS_FIELD', 'date_expected', 'The column to sort by in the expected products box.', 1, 9, NULL, '2024-12-18 09:59:02', NULL, 'zen_cfg_select_option(array(\'products_name\', \'date_expected\'), ', NULL),
(8, 'Switch To Default Language Currency', 'USE_DEFAULT_LANGUAGE_CURRENCY', 'false', 'Automatically switch to the language\'s currency when it is changed', 1, 10, NULL, '2024-12-18 09:59:02', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(9, 'Language Selector', 'LANGUAGE_DEFAULT_SELECTOR', 'Default', 'Should the default language be based on the Store preferences, or the customer\'s browser settings?<br /><br />Default: Store\'s default settings', 1, 11, NULL, '2024-12-18 09:59:02', NULL, 'zen_cfg_select_option(array(\'Default\', \'Browser\'), ', NULL),
(10, 'Use Search-Engine Safe URLs (still in development)', 'SEARCH_ENGINE_FRIENDLY_URLS', 'false', 'Use search-engine safe urls for all site links', 6, 12, NULL, '2024-12-18 09:59:02', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(11, 'Display Cart After Adding Product', 'DISPLAY_CART', 'true', 'Display the shopping cart after adding a product (or return back to their origin)', 1, 14, NULL, '2024-12-18 09:59:02', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(12, 'Default Search Operator', 'ADVANCED_SEARCH_DEFAULT_OPERATOR', 'and', 'Default search operators', 1, 17, NULL, '2024-12-18 09:59:02', NULL, 'zen_cfg_select_option(array(\'and\', \'or\'), ', NULL),
(13, 'Include meta-tags in product search?', 'ADVANCED_SEARCH_INCLUDE_METATAGS', 'true', 'Should a product\'s meta-tag keywords and meta-tag descriptions be considered in any <code>advanced_search_results</code> displayed?', 1, 18, NULL, '2024-12-18 09:59:02', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'),', NULL),
(14, 'Store Address and Phone', 'STORE_NAME_ADDRESS', 'ZC Computer\r\nCikupa, Kabupaten Tangerang, Banten, 15710\r\nIndonesia\r\n+6281219406489', 'This is the Store Name, Address and Phone used on printable documents and displayed online', 1, 7, NULL, '2024-12-18 09:59:02', NULL, 'zen_cfg_textarea(', NULL),
(15, 'Show Category Counts', 'SHOW_COUNTS', 'true', 'Count recursively how many products are in each category', 1, 19, NULL, '2024-12-18 09:59:02', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(16, 'Tax Decimal Places', 'TAX_DECIMAL_PLACES', '0', 'Pad the tax value this amount of decimal places', 1, 20, NULL, '2024-12-18 09:59:02', NULL, NULL, NULL),
(17, 'Display Prices with Tax', 'DISPLAY_PRICE_WITH_TAX', 'false', 'Display prices with tax included (true) or add the tax at the end (false)', 1, 21, NULL, '2024-12-18 09:59:02', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(18, 'Display Prices with Tax in Admin', 'DISPLAY_PRICE_WITH_TAX_ADMIN', 'false', 'Display prices with tax included (true) or add the tax at the end (false) in Admin(Invoices)', 1, 21, NULL, '2024-12-18 09:59:02', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(19, 'Basis of Product Tax', 'STORE_PRODUCT_TAX_BASIS', 'Shipping', 'On what basis is Product Tax calculated. Options are<br />Shipping - Based on customers Shipping Address<br />Billing Based on customers Billing address<br />Store - Based on Store address if Billing/Shipping Zone equals Store zone', 1, 21, NULL, '2024-12-18 09:59:02', NULL, 'zen_cfg_select_option(array(\'Shipping\', \'Billing\', \'Store\'), ', NULL),
(20, 'Basis of Shipping Tax', 'STORE_SHIPPING_TAX_BASIS', 'Shipping', 'On what basis is Shipping Tax calculated. Options are<br />Shipping - Based on customers Shipping Address<br />Billing Based on customers Billing address<br />Store - Based on Store address if Billing/Shipping Zone equals Store zone - Can be overridden by correctly written Shipping Module', 1, 21, NULL, '2024-12-18 09:59:02', NULL, 'zen_cfg_select_option(array(\'Shipping\', \'Billing\', \'Store\'), ', NULL),
(21, 'Sales Tax Display Status', 'STORE_TAX_DISPLAY_STATUS', '0', 'Always show Sales Tax even when amount is $0.00?<br />0= Off<br />1= On', 1, 21, NULL, '2024-12-18 09:59:02', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(22, 'Show Split Tax Lines', 'SHOW_SPLIT_TAX_CHECKOUT', 'false', 'If multiple tax rates apply, show each rate as a separate line at checkout', 1, 22, NULL, '2024-12-18 09:59:02', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(23, 'Wholesale Pricing', 'WHOLESALE_PRICING_CONFIG', 'false', 'Should <em>Wholesale Pricing</em> be enabled for your site?  Choose <b>false</b> (the default) if you don\'t want that feature enabled. Otherwise, choose <b>Tax Exempt</b> to enable with tax-exemptions for all wholesale customers or <b>Pricing Only</b> to apply tax as usual for wholesale customers.', 1, 23, NULL, '2024-12-18 09:59:02', NULL, 'zen_cfg_select_option([\'false\', \'Tax Exempt\', \'Pricing Only\'],', NULL),
(24, 'MFA Multi-Factor Authentication Required', 'MFA_ENABLED', 'False', '2-Factor authentication for Admin users', 1, 29, NULL, '2024-12-18 09:59:02', NULL, 'zen_cfg_select_option([\'True\', \'False\'],', NULL),
(25, 'PA-DSS Admin Session Timeout Enforced?', 'PADSS_ADMIN_SESSION_TIMEOUT_ENFORCED', '1', 'PA-DSS Compliance requires that any Admin login sessions expire after 15 minutes of inactivity. <strong>Disabling this makes your site NON-COMPLIANT with PA-DSS rules, thus invalidating any certification.</strong>', 1, 30, '2024-12-18 09:59:02', '2024-12-18 09:59:02', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Non-Compliant\'), array(\'id\'=>\'1\', \'text\'=>\'On\')),', NULL),
(26, 'PA-DSS Strong Password Rules Enforced?', 'PADSS_PWD_EXPIRY_ENFORCED', '1', 'PA-DSS Compliance requires that admin passwords must be changed after 90 days and cannot re-use the last 4 passwords. <strong>Disabling this makes your site NON-COMPLIANT with PA-DSS rules, thus invalidating any certification.</strong>', 1, 30, '2024-12-18 09:59:02', '2024-12-18 09:59:02', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Non-Compliant\'), array(\'id\'=>\'1\', \'text\'=>\'On\')),', NULL),
(27, 'PA-DSS Ajax Checkout?', 'PADSS_AJAX_CHECKOUT', '1', 'PA-DSS Compliance requires that for some inbuilt payment methods, that we use ajax to draw the checkout confirmation screen. While this will only happen if one of those payment methods is actually present, some people may want the traditional checkout flow <strong>Disabling this makes your site NON-COMPLIANT with PA-DSS rules, thus invalidating any certification.</strong>', 1, 30, '2024-12-18 09:59:02', '2024-12-18 09:59:02', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Non-Compliant\'), array(\'id\'=>\'1\', \'text\'=>\'On\')),', NULL),
(28, 'Customer <em>Place Order</em>: Single Admin ID', 'EMP_LOGIN_ADMIN_ID', '0', 'Identify the ID number of an admin that is permitted to use the <em>Place Order</em> feature on the customers list, regardless of their assigned admin-profile. Set the value to 0 to disable the <em>Single Admin ID</em> feature.', 1, 300, NULL, '2024-12-18 09:59:02', NULL, NULL, NULL),
(29, 'Customer <em>Place Order</em>: Passwordless Login', 'EMP_LOGIN_AUTOMATIC', 'false', 'Login directly to store without entering credentials', 1, 302, NULL, '2024-12-18 09:59:02', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'),', NULL),
(30, 'Customer <em>Place Order</em>: Admin Profiles', 'EMP_LOGIN_ADMIN_PROFILE_ID', '0', 'Identify the admin <em>User Profile IDs</em> that are permitted to use the <em>Place Order</em> feature on the customers list &mdash; all admins that are in these profiles are permitted. Enter the value as a comma-separated list (intervening blanks are OK) of Admin Profile IDs, e.g. <b>1, 2, 3</b>. Set the value to 0 to disable the <em>Admin Profiles</em> feature.<br><br><b>Default: 0 </b>', 1, 301, NULL, '2024-12-18 09:59:02', NULL, NULL, NULL),
(31, 'Admin Session Time Out in Seconds', 'SESSION_TIMEOUT_ADMIN', '900', 'Enter the time in seconds.<br />Max allowed is 900 for PCI Compliance Reasons.<br /> Default=900<br />Example: 900= 15 min <br /><br />Note: Too few seconds can result in timeout issues when adding/editing products', 1, 40, NULL, '2024-12-18 09:59:02', NULL, NULL, NULL),
(32, 'Admin Set max_execution_time for processes', 'GLOBAL_SET_TIME_LIMIT', '60', 'Enter the time in seconds for how long the max_execution_time of processes should be. Default=60<br />Example: 60= 1 minute<br /><br />Note: Changing the time limit is only needed if you are having problems with the execution time of a process', 1, 42, NULL, '2024-12-18 09:59:02', NULL, NULL, NULL),
(33, 'Show if version update available', 'SHOW_VERSION_UPDATE_IN_HEADER', 'true', 'Automatically check to see if a new version of Zen Cart is available. Enabling this can sometimes slow down the loading of Admin pages. (Displayed on main Index page after login, and Server Info page.)', 1, 44, NULL, '2024-12-18 09:59:02', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(34, 'Store Status', 'STORE_STATUS', '0', 'What is your Store Status<br />0= Normal Store<br />1= Showcase no prices<br />2= Showcase with prices', 1, 25, NULL, '2024-12-18 09:59:02', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), ', NULL),
(35, 'Server Uptime', 'DISPLAY_SERVER_UPTIME', 'true', 'Displaying Server uptime can cause entries in error logs on some servers. (true = Display, false = don\'t display)', 1, 46, '2003-11-08 20:24:47', '0001-01-01 00:00:00', '', 'zen_cfg_select_option(array(\'true\', \'false\'),', NULL),
(36, 'Missing Page Check', 'MISSING_PAGE_CHECK', 'Page Not Found', 'Zen Cart can check for missing pages in the URL and redirect to Index page. For debugging you may want to turn this off. <br /><br /><strong>Default=On</strong><br />On = Send missing pages to \'index\'<br />Off = Don\'t check for missing pages<br />Page Not Found = display the Page-Not-Found page', 1, 48, '2003-11-08 20:24:47', '0001-01-01 00:00:00', '', 'zen_cfg_select_option(array(\'On\', \'Off\', \'Page Not Found\'),', NULL),
(37, 'cURL Proxy Status', 'CURL_PROXY_REQUIRED', 'False', 'Does your host require that you use a proxy for cURL communication?', 6, 50, NULL, '2024-12-18 09:59:02', NULL, 'zen_cfg_select_option(array(\'True\', \'False\'), ', NULL),
(38, 'cURL Proxy Address', 'CURL_PROXY_SERVER_DETAILS', '', 'If you have a hosting service that requires use of a proxy to talk to external sites via cURL, enter their proxy address here.<br />format: address:port<br />ie: 127.0.0.1:3128', 6, 51, NULL, '2024-12-18 09:59:02', NULL, NULL, NULL),
(39, 'HTML Editor', 'HTML_EDITOR_PREFERENCE', 'NONE', 'Please select the HTML/Rich-Text editor you wish to use for composing Admin-related emails, newsletters, and product descriptions', 1, 110, NULL, '2024-12-18 09:59:02', NULL, 'zen_cfg_pull_down_htmleditors(', NULL),
(40, 'Default for Notify Customer on Order Status Update?', 'NOTIFY_CUSTOMER_DEFAULT', '1', 'Set the default email behavior on status update to Send Email, Do Not Send Email, or Hide Update.', 1, 120, '2024-12-18 09:59:02', '2024-12-18 09:59:02', NULL, 'zen_cfg_select_drop_down(array( array(\'id\'=>\'1\', \'text\'=>\'Email\'), array(\'id\'=>\'0\', \'text\'=>\'No Email\'), array(\'id\'=>\'-1\', \'text\'=>\'Hide\')),', NULL),
(41, 'Show Category Counts - Admin', 'SHOW_COUNTS_ADMIN', 'true', 'Show Category Counts in Admin?', 1, 19, NULL, '2024-12-18 09:59:02', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(42, 'Show linked status for categories', 'SHOW_CATEGORY_PRODUCTS_LINKED_STATUS', 'true', 'Show Category products linked status?', 1, 19, NULL, '2024-12-18 09:59:02', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(43, 'Currency Conversion Ratio', 'CURRENCY_UPLIFT_RATIO', '1.05', 'When auto-updating currencies, what \"uplift\" ratio should be used to calculate the exchange rate used by your store?<br />ie: the bank rate is obtained from the currency-exchange servers; how much extra do you want to charge in order to make up the difference between the bank rate and the consumer rate?<br /><br /><strong>Default: 1.05 </strong><br />This will cause the published bank rate to be multiplied by 1.05 to set the currency rates in your store.', 1, 55, NULL, '2024-12-18 09:59:02', NULL, NULL, NULL),
(44, 'Currency Exchange Rate: Primary Source', 'CURRENCY_SERVER_PRIMARY', 'ecb', 'Where to request external currency updates from (Primary source)<br><br>Additional sources can be installed via plugins.', 1, 55, NULL, '2024-12-18 09:59:02', NULL, 'zen_cfg_pull_down_exchange_rate_sources(', NULL),
(45, 'Currency Exchange Rate: Secondary Source', 'CURRENCY_SERVER_BACKUP', 'boc', 'Where to request external currency updates from (Secondary source)<br><br>Additional sources can be installed via plugins.', 1, 55, NULL, '2024-12-18 09:59:02', NULL, 'zen_cfg_pull_down_exchange_rate_sources(', NULL),
(46, 'First Name', 'ENTRY_FIRST_NAME_MIN_LENGTH', '2', 'Minimum length of first name', 2, 1, NULL, '2024-12-18 09:59:02', NULL, NULL, '{\"error\":\"TEXT_MIN_ADMIN_FIRST_NAME_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(47, 'Last Name', 'ENTRY_LAST_NAME_MIN_LENGTH', '2', 'Minimum length of last name', 2, 2, NULL, '2024-12-18 09:59:02', NULL, NULL, '{\"error\":\"TEXT_MIN_ADMIN_LAST_NAME_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(48, 'Date of Birth', 'ENTRY_DOB_MIN_LENGTH', '8', 'Minimum length of date of birth', 2, 3, NULL, '2024-12-18 09:59:02', NULL, NULL, '{\"error\":\"TEXT_MIN_ADMIN_DOB_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(49, 'E-Mail Address', 'ENTRY_EMAIL_ADDRESS_MIN_LENGTH', '6', 'Minimum length of e-mail address', 2, 4, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MIN_ADMIN_EMAIL_ADDRESS_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(50, 'Street Address', 'ENTRY_STREET_ADDRESS_MIN_LENGTH', '5', 'Minimum length of street address', 2, 5, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MIN_ADMIN_STREET_ADDRESS_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(51, 'Company', 'ENTRY_COMPANY_MIN_LENGTH', '0', 'Minimum length of company name', 2, 6, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MIN_ADMIN_COMPANY_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(52, 'Post Code', 'ENTRY_POSTCODE_MIN_LENGTH', '4', 'Minimum length of post code', 2, 7, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MIN_ADMIN_POSTCODE_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(53, 'City', 'ENTRY_CITY_MIN_LENGTH', '2', 'Minimum length of city', 2, 8, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MIN_ADMIN_CITY_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(54, 'State', 'ENTRY_STATE_MIN_LENGTH', '2', 'Minimum length of state', 2, 9, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MIN_ADMIN_STATE_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(55, 'Telephone Number', 'ENTRY_TELEPHONE_MIN_LENGTH', '3', 'Minimum length of telephone number', 2, 10, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MIN_ADMIN_TELEPHONE_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(56, 'Password', 'ENTRY_PASSWORD_MIN_LENGTH', '7', 'Minimum length of password', 2, 11, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MIN_ADMIN_PASSWORD_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(57, 'Credit Card Owner Name', 'CC_OWNER_MIN_LENGTH', '3', 'Minimum length of credit card owner name', 2, 12, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MIN_ADMIN_CC_OWNER_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(58, 'Credit Card Number', 'CC_NUMBER_MIN_LENGTH', '10', 'Minimum length of credit card number', 2, 13, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MIN_ADMIN_CC_NUMBER_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(59, 'Product Review Text', 'REVIEW_TEXT_MIN_LENGTH', '50', 'Minimum length of product review text', 2, 14, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MIN_ADMIN_REVIEW_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(60, 'Best Sellers', 'MIN_DISPLAY_BESTSELLERS', '1', 'Minimum number of best sellers to display', 2, 15, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MIN_ADMIN_DISPLAY_BESTSELLERS_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(61, 'Also Purchased Products', 'MIN_DISPLAY_ALSO_PURCHASED', '1', 'Minimum number of products to display in the \'Also Purchased\' box', 2, 16, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MIN_ADMIN_DISPLAY_ALSO_PURCHASED_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(62, 'Nick Name', 'ENTRY_NICK_MIN_LENGTH', '3', 'Minimum length of Nick Name', 2, 1, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MIN_ADMIN_ENTRY_NICK_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(63, 'Admin Usernames', 'ADMIN_NAME_MINIMUM_LENGTH', '4', 'Minimum length of admin usernames (must be 4 or more)', 2, 18, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MIN_ADMIN_USER_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":4}}}'),
(64, 'Address Book Entries', 'MAX_ADDRESS_BOOK_ENTRIES', '5', 'Maximum address book entries a customer is allowed to have', 3, 1, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_ADDRESS_BOOK_ENTRIES_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(65, 'Admin Search Results Per Page', 'MAX_DISPLAY_SEARCH_RESULTS', '20', 'Number of products to list on an Admin search result page', 3, 2, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_DISPLAY_SEARCH_RESULTS_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(66, 'Prev/Next Navigation Page Links (Desktop)', 'MAX_DISPLAY_PAGE_LINKS', '5', 'Number of numbered pagination links to display.', 3, 3, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_DISPLAY_PAGE_LINKS_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(67, 'Prev/Next Navigation Page Links (Mobile)', 'MAX_DISPLAY_PAGE_LINKS_MOBILE', '3', 'Number of numbered pagination links to display on Mobile devices (assuming your template supports mobile-specific settings)', 3, 3, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_DISPLAY_PAGE_LINKS_MOBILE_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(68, 'Products on Special Page', 'MAX_DISPLAY_SPECIAL_PRODUCTS', '9', 'Number of products to show per page on the Specials page', 3, 4, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_DISPLAY_SPECIAL_PRODUCTS_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(69, 'New Products Centerbox', 'MAX_DISPLAY_NEW_PRODUCTS', '9', 'Number of products to display in the New Products centerbox', 3, 5, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_DISPLAY_NEW_PRODUCTS_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(70, 'Upcoming Products Centerbox', 'MAX_DISPLAY_UPCOMING_PRODUCTS', '10', 'Number of products to display in the Upcoming Products centerbox', 3, 6, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_DISPLAY_UPCOMING_PRODUCTS_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(71, 'Manufacturers List - Scroll Box Size/Style', 'MAX_MANUFACTURERS_LIST', '3', 'Number of manufacturers names to be displayed in the scroll box window. Setting this to 1 or 0 will display a dropdown list.', 3, 7, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_MANUFACTURERS_LIST_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(72, 'Manufacturers List - Verify Product Exist', 'PRODUCTS_MANUFACTURERS_STATUS', '1', 'Verify that at least 1 product exists and is active for the manufacturer name to show<br /><br />Note: When this feature is ON it can produce slower results on sites with a large number of products and/or manufacturers<br />0= off 1= on', 3, 7, NULL, '2024-12-18 09:59:03', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(73, 'Music Genre List - Scroll Box Size/Style', 'MAX_MUSIC_GENRES_LIST', '3', 'Number of music genre names to be displayed in the scroll box window. Setting this to 1 or 0 will display a dropdown list.', 3, 7, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_MUSIC_GENRES_LIST_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(74, 'Record Company List - Scroll Box Size/Style', 'MAX_RECORD_COMPANY_LIST', '3', 'Number of record company names to be displayed in the scroll box window. Setting this to 1 or 0 will display a dropdown list.', 3, 7, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_RECORD_COMPANY_LIST_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(75, 'Length of Record Company Name', 'MAX_DISPLAY_RECORD_COMPANY_NAME_LEN', '15', 'Used in record companies box; maximum length of record company name to display. Longer names will be truncated.', 3, 8, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_RECORD_COMPANY_NAME_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(76, 'Length of Music Genre Name', 'MAX_DISPLAY_MUSIC_GENRES_NAME_LEN', '15', 'Used in music genres box; maximum length of music genre name to display. Longer names will be truncated.', 3, 8, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_MUSIC_GENRES_NAME_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(77, 'Length of Manufacturers Name', 'MAX_DISPLAY_MANUFACTURER_NAME_LEN', '15', 'Used in manufacturers box; maximum length of manufacturers name to display. Longer names will be truncated.', 3, 8, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_DISPLAY_MANUFACTURERS_NAME_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(78, 'New Product Reviews Per Page', 'MAX_DISPLAY_NEW_REVIEWS', '6', 'Number of new reviews to display on each page', 3, 9, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_DISPLAY_NEW_REVIEWS_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(79, 'Random Product Reviews for SideBox', 'MAX_RANDOM_SELECT_REVIEWS', '1', 'Number of random product REVIEWS to rotate in the sidebox<br />Enter the number of products to display in this sidebox at one time.<br /><br />How many products do you want to display in this sidebox?', 3, 10, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_RANDOM_SELECT_REVIEWS_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(80, 'Random New Products for SideBox', 'MAX_RANDOM_SELECT_NEW', '3', 'Number of random NEW products to rotate in the sidebox<br />Enter the number of products to display in this sidebox at one time.<br /><br />How many products do you want to display in this sidebox?', 3, 11, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_RANDOM_SELECT_NEW_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(81, 'Random Products On Special for SideBox', 'MAX_RANDOM_SELECT_SPECIALS', '2', 'Number of random products on SPECIAL to rotate in the sidebox<br />Enter the number of products to display in this sidebox at one time.<br /><br />How many products do you want to display in this sidebox?', 3, 12, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_RANDOM_SELECT_SPECIALS_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(82, 'Categories To List Per Row', 'MAX_DISPLAY_CATEGORIES_PER_ROW', '3', 'How many categories to list per row', 3, 13, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_DISPLAY_CATEGORIES_PER_ROW_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(83, 'New Products Page', 'MAX_DISPLAY_PRODUCTS_NEW', '10', 'Number of products to show per page when viewing New Products', 3, 14, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_DISPLAY_PRODUCTS_NEW_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(84, 'Best Sellers For Box', 'MAX_DISPLAY_BESTSELLERS', '10', 'Number of best sellers to display in box', 3, 15, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_DISPLAY_BESTSELLERS_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(85, 'Also Purchased Products', 'MAX_DISPLAY_ALSO_PURCHASED', '6', 'Number of products to display in the \'Also Purchased\' box', 3, 16, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_DISPLAY_ALSO_PURCHASED_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(86, 'Order History Box', 'MAX_DISPLAY_PRODUCTS_IN_ORDER_HISTORY_BOX', '6', 'Number of products to display in the order history box', 3, 17, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_DISPLAY_PRODUCTS_IN_ORDER_HISTORY_BOX_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(87, 'Customer Order History List Per Page', 'MAX_DISPLAY_ORDER_HISTORY', '10', 'Number of orders to display in the order history list in \'My Account\'', 3, 18, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_DISPLAY_ORDER_HISTORY_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(88, 'Maximum Display of Customers on Customers Page', 'MAX_DISPLAY_SEARCH_RESULTS_CUSTOMER', '20', '', 3, 19, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_DISPLAY_SEARCH_RESULTS_CUSTOMER_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(89, 'Maximum Display of Orders on Orders Page', 'MAX_DISPLAY_SEARCH_RESULTS_ORDERS', '20', '', 3, 20, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_DISPLAY_SEARCH_RESULTS_ORDERS_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(90, 'Maximum Display of Products on Reports', 'MAX_DISPLAY_SEARCH_RESULTS_REPORTS', '20', '', 3, 21, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_DISPLAY_SEARCH_RESULTS_RESULTS_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(91, 'Maximum Categories Products Display List', 'MAX_DISPLAY_RESULTS_CATEGORIES', '10', 'Number of products to list per screen', 3, 22, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_DISPLAY_RESULTS_CATEGORIES_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(92, 'Products Listing Page', 'MAX_DISPLAY_PRODUCTS_LISTING', '10', 'Number of products to show per page when viewing an index listing', 3, 30, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_DISPLAY_PRODUCTS_LISTING_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(93, 'Products Attributes - Option Names and Values Display', 'MAX_ROW_LISTS_OPTIONS', '10', 'Maximum number of option names and values to display in the products attributes page', 3, 24, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_ROW_LISTS_OPTIONS_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(94, 'Products Attributes - Downloads Manager Display', 'MAX_DISPLAY_SEARCH_RESULTS_DOWNLOADS_MANAGER', '30', 'Maximum number of attributes downloads to display in the Downloads Manager page', 3, 26, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_DISPLAY_SEARCH_RESULTS_DOWNLOADS_MANAGER_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(95, 'Featured Products And Categories - Number to Display Admin', 'MAX_DISPLAY_SEARCH_RESULTS_FEATURED_ADMIN', '10', 'Number of featured products to list per screen - Admin', 3, 27, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_DISPLAY_SEARCH_RESULTS_FEATURED_ADMIN_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(96, 'Featured Products And Categories Centerbox', 'MAX_DISPLAY_SEARCH_RESULTS_FEATURED', '9', 'Number of products to display in the Featured Products centerbox', 3, 28, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_DISPLAY_SEARCH_RESULTS_FEATURED_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(97, 'Featured Products Page', 'MAX_DISPLAY_PRODUCTS_FEATURED_PRODUCTS', '10', 'Number of products to show per page when viewing Featured Products', 3, 29, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_DISPLAY_SEARCH_RESULTS_FEATURED_PRODUCTS_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(98, 'Random Featured Products for SideBox', 'MAX_RANDOM_SELECT_FEATURED_PRODUCTS', '2', 'Number of random FEATURED products to rotate in the sidebox<br />Enter the number of products to display in this sidebox at one time.<br /><br />How many products do you want to display in this sidebox?', 3, 30, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_RANDOM_SELECT_FEATURED_PRODUCTS_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(99, 'Products on Special Centerbox', 'MAX_DISPLAY_SPECIAL_PRODUCTS_INDEX', '9', 'Number of products to display in the Products on Special centerbox', 3, 31, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_DISPLAY_SPECIAL_PRODUCTS_INDEX_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(100, 'New Product Listing - Limited to ...', 'SHOW_NEW_PRODUCTS_LIMIT', '0', 'Limit the New Product Listing to<br />0= All Products<br />1= Current Month<br />7= 7 Days<br />14= 14 Days<br />30= 30 Days<br />60= 60 Days<br />90= 90 Days<br />120= 120 Days', 3, 40, NULL, '2024-12-18 09:59:03', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'7\', \'14\', \'30\', \'60\', \'90\', \'120\'), ', '{\"error\":\"TEXT_MAX_ADMIN_SHOW_NEW_PRODUCTS_LIMIT_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(101, 'All Products Page', 'MAX_DISPLAY_PRODUCTS_ALL', '10', 'Number of products to show per page on the All Products page', 3, 45, NULL, '2024-12-18 09:59:03', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_DISPLAY_PRODUCTS_ALL_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(102, 'Maximum Display of Language Flags in Language Side Box', 'MAX_LANGUAGE_FLAGS_COLUMNS', '3', 'Number of Language Flags per Row', 3, 50, NULL, '2024-12-18 09:59:04', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_LANGUAGE_FLAGS_COLUMNS_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(103, 'Maximum File Upload Size', 'MAX_FILE_UPLOAD_SIZE', '2048000', 'What is the Maximum file size for uploads?<br />Default= 2048000', 3, 60, NULL, '2024-12-18 09:59:04', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_FILE_UPLOAD_SIZE_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(104, 'Maximum Orders Detail Display on Admin Orders Listing', 'MAX_DISPLAY_RESULTS_ORDERS_DETAILS_LISTING', '0', 'Maximum number of Order Details<br />0 = Unlimited', 3, 65, NULL, '2024-12-18 09:59:04', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_DISPLAY_RESULTS_ORDERS_DETAILS_LISTING_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(105, 'Maximum PayPal IPN Display on Admin Listing', 'MAX_DISPLAY_SEARCH_RESULTS_PAYPAL_IPN', '20', 'Maximum number of PayPal IPN Listings in Admin<br />Default is 20', 3, 66, NULL, '2024-12-18 09:59:04', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_DISPLAY_SEARCH_RESULTS_PAYPAL_IPN_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(106, 'Maximum Display Columns Products to Multiple Categories Manager', 'MAX_DISPLAY_PRODUCTS_TO_CATEGORIES_COLUMNS', '3', 'Maximum Display Columns Products to Multiple Categories Manager<br />3 = Default', 3, 70, NULL, '2024-12-18 09:59:04', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_DISPLAY_PRODUCTS_TO_CATEGORIES_COLUMNS_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(107, 'Maximum Display EZ-Pages', 'MAX_DISPLAY_SEARCH_RESULTS_EZPAGE', '20', 'Maximum Display EZ-Pages<br />20 = Default', 3, 71, NULL, '2024-12-18 09:59:04', NULL, NULL, '{\"error\":\"TEXT_MAX_ADMIN_DISPLAY_SEARCH_RESULTS_EZPAGE_LENGTH\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(108, 'Maximum Preview', 'MAX_PREVIEW', '100', 'Maximum Preview length<br />100 = Default', 3, 80, NULL, '2024-12-18 09:59:04', NULL, NULL, '{\"error\":\"TEXT_MAX_PREVIEW\",\"id\":\"FILTER_VALIDATE_INT\",\"options\":{\"options\":{\"min_range\":0}}}'),
(109, 'Small Image Width', 'SMALL_IMAGE_WIDTH', '100', 'The pixel width of small images', 4, 1, NULL, '2024-12-18 09:59:04', NULL, NULL, NULL),
(110, 'Small Image Height', 'SMALL_IMAGE_HEIGHT', '80', 'The pixel height of small images', 4, 2, NULL, '2024-12-18 09:59:04', NULL, NULL, NULL),
(111, 'Heading Image Width - Admin', 'HEADING_IMAGE_WIDTH', '57', 'The pixel width of heading images in the Admin<br />NOTE: Presently, this adjusts the spacing on the pages in the Admin Pages or could be used to add images to the heading in the Admin', 4, 3, NULL, '2024-12-18 09:59:04', NULL, NULL, NULL),
(112, 'Heading Image Height - Admin', 'HEADING_IMAGE_HEIGHT', '40', 'The pixel height of heading images in the Admin<br />NOTE: Presently, this adjusts the spacing on the pages in the Admin Pages or could be used to add images to the heading in the Admin', 4, 4, NULL, '2024-12-18 09:59:04', NULL, NULL, NULL),
(113, 'Subcategory Image Width', 'SUBCATEGORY_IMAGE_WIDTH', '100', 'The pixel width of subcategory images', 4, 5, NULL, '2024-12-18 09:59:04', NULL, NULL, NULL),
(114, 'Subcategory Image Height', 'SUBCATEGORY_IMAGE_HEIGHT', '57', 'The pixel height of subcategory images', 4, 6, NULL, '2024-12-18 09:59:04', NULL, NULL, NULL),
(115, 'Calculate Image Size', 'CONFIG_CALCULATE_IMAGE_SIZE', 'true', 'Calculate the size of images?', 4, 7, NULL, '2024-12-18 09:59:04', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(116, 'Image Required', 'IMAGE_REQUIRED', 'true', 'Enable to display broken images. Good for development.', 4, 8, NULL, '2024-12-18 09:59:04', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(117, 'Image - Shopping Cart Status', 'IMAGE_SHOPPING_CART_STATUS', '1', 'Show product image in the shopping cart?<br />0= off 1= on', 4, 9, NULL, '2024-12-18 09:59:04', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(118, 'Image - Shopping Cart Width', 'IMAGE_SHOPPING_CART_WIDTH', '50', 'Default = 50', 4, 10, NULL, '2024-12-18 09:59:04', NULL, NULL, NULL),
(119, 'Image - Shopping Cart Height', 'IMAGE_SHOPPING_CART_HEIGHT', '40', 'Default = 40', 4, 11, NULL, '2024-12-18 09:59:04', NULL, NULL, NULL),
(120, 'Category Icon Image Width - Product Info Pages', 'CATEGORY_ICON_IMAGE_WIDTH', '57', 'The pixel width of Category Icon heading images for Product Info Pages', 4, 13, NULL, '2024-12-18 09:59:04', NULL, NULL, NULL),
(121, 'Category Icon Image Height - Product Info Pages', 'CATEGORY_ICON_IMAGE_HEIGHT', '40', 'The pixel height of Category Icon heading images for Product Info Pages', 4, 14, NULL, '2024-12-18 09:59:04', NULL, NULL, NULL),
(122, 'Top Subcategory Image Width', 'SUBCATEGORY_IMAGE_TOP_WIDTH', '150', 'The pixel width of Top subcategory images<br />Top subcategory is when the Category contains subcategories', 4, 15, NULL, '2024-12-18 09:59:04', NULL, NULL, NULL),
(123, 'Top Subcategory Image Height', 'SUBCATEGORY_IMAGE_TOP_HEIGHT', '85', 'The pixel height of Top subcategory images<br />Top subcategory is when the Category contains subcategories', 4, 16, NULL, '2024-12-18 09:59:04', NULL, NULL, NULL),
(124, 'Product Info - Image Width', 'MEDIUM_IMAGE_WIDTH', '150', 'The pixel width of Product Info images', 4, 20, NULL, '2024-12-18 09:59:04', NULL, NULL, NULL),
(125, 'Product Info - Image Height', 'MEDIUM_IMAGE_HEIGHT', '120', 'The pixel height of Product Info images', 4, 21, NULL, '2024-12-18 09:59:04', NULL, NULL, NULL),
(126, 'Product Info - Image Medium Suffix', 'IMAGE_SUFFIX_MEDIUM', '_MED', 'Product Info Medium Image Suffix<br />Default = _MED', 4, 22, NULL, '2024-12-18 09:59:04', NULL, NULL, NULL),
(127, 'Product Info - Image Large Suffix', 'IMAGE_SUFFIX_LARGE', '_LRG', 'Product Info Large Image Suffix<br />Default = _LRG', 4, 23, NULL, '2024-12-18 09:59:04', NULL, NULL, NULL),
(128, 'Additional Images matching pattern', 'ADDITIONAL_IMAGES_MODE', 'strict', '&quot;strict&quot; = always use &quot;_&quot; suffix<br>&quot;legacy&quot; = only use &quot;_&quot; suffix in subdirectories<br>(Before v210 legacy was the default)<br>Default = strict', 4, 25, NULL, '2024-12-18 09:59:04', NULL, 'zen_cfg_select_option(array(\'strict\', \'legacy\'), ', NULL),
(129, 'Product Info - Number of Additional Images per Row', 'IMAGES_AUTO_ADDED', '3', 'Product Info - Enter the number of additional images to display per row<br />Default = 3', 4, 30, NULL, '2024-12-18 09:59:04', NULL, NULL, NULL),
(130, 'Image - Product Listing Width', 'IMAGE_PRODUCT_LISTING_WIDTH', '100', 'Default = 100', 4, 40, NULL, '2024-12-18 09:59:04', NULL, NULL, NULL),
(131, 'Image - Product Listing Height', 'IMAGE_PRODUCT_LISTING_HEIGHT', '80', 'Default = 80', 4, 41, NULL, '2024-12-18 09:59:04', NULL, NULL, NULL),
(132, 'Image - Product New Listing Width', 'IMAGE_PRODUCT_NEW_LISTING_WIDTH', '100', 'Default = 100', 4, 42, NULL, '2024-12-18 09:59:04', NULL, NULL, NULL),
(133, 'Image - Product New Listing Height', 'IMAGE_PRODUCT_NEW_LISTING_HEIGHT', '80', 'Default = 80', 4, 43, NULL, '2024-12-18 09:59:04', NULL, NULL, NULL),
(134, 'Image - New Products Width', 'IMAGE_PRODUCT_NEW_WIDTH', '100', 'Default = 100', 4, 44, NULL, '2024-12-18 09:59:04', NULL, NULL, NULL),
(135, 'Image - New Products Height', 'IMAGE_PRODUCT_NEW_HEIGHT', '80', 'Default = 80', 4, 45, NULL, '2024-12-18 09:59:04', NULL, NULL, NULL),
(136, 'Image - Featured Products And Categories Width', 'IMAGE_FEATURED_PRODUCTS_LISTING_WIDTH', '100', 'Default = 100', 4, 46, NULL, '2024-12-18 09:59:04', NULL, NULL, NULL),
(137, 'Image - Featured Products And Categories Height', 'IMAGE_FEATURED_PRODUCTS_LISTING_HEIGHT', '80', 'Default = 80', 4, 47, NULL, '2024-12-18 09:59:04', NULL, NULL, NULL),
(138, 'Image - Product All Listing Width', 'IMAGE_PRODUCT_ALL_LISTING_WIDTH', '100', 'Default = 100', 4, 48, NULL, '2024-12-18 09:59:04', NULL, NULL, NULL),
(139, 'Image - Product All Listing Height', 'IMAGE_PRODUCT_ALL_LISTING_HEIGHT', '80', 'Default = 80', 4, 49, NULL, '2024-12-18 09:59:04', NULL, NULL, NULL),
(140, 'Product And Category Image - No Image Status', 'PRODUCTS_IMAGE_NO_IMAGE_STATUS', '1', 'Use automatic No Image when none is added to product or category<br>0= off<br />1= On', 4, 60, NULL, '2024-12-18 09:59:04', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(141, 'Product And Category Image - No Image picture', 'PRODUCTS_IMAGE_NO_IMAGE', 'no_picture.gif', 'Use automatic No Image when none is added to product or category<br>Default = no_picture.gif', 4, 61, NULL, '2024-12-18 09:59:04', NULL, NULL, NULL),
(142, 'Image - Use Proportional Images on Products and Categories', 'PROPORTIONAL_IMAGES_STATUS', '1', 'Use Proportional Images on Products and Categories?<br /><br />NOTE: Do not use 0 height or width settings for Proportion Images<br />0= off 1= on', 4, 75, NULL, '2024-12-18 09:59:04', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(143, 'Email Salutation', 'ACCOUNT_GENDER', 'false', 'Display salutation choice during account creation and with account information', 5, 1, NULL, '2024-12-18 09:59:04', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(144, 'Date of Birth', 'ACCOUNT_DOB', 'false', 'Display date of birth field during account creation and with account information<br />NOTE: Set Minimum Value Date of Birth to blank for not required<br />Set Minimum Value Date of Birth > 0 to require', 5, 2, NULL, '2024-12-18 09:59:04', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(145, 'Company', 'ACCOUNT_COMPANY', 'true', 'Display company field during account creation and with account information', 5, 3, NULL, '2024-12-18 09:59:04', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(146, 'Address Line 2', 'ACCOUNT_SUBURB', 'true', 'Display address line 2 field during account creation and with account information', 5, 4, NULL, '2024-12-18 09:59:04', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(147, 'State', 'ACCOUNT_STATE', 'true', 'Display state field during account creation and with account information', 5, 5, NULL, '2024-12-18 09:59:04', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(148, 'State field - Display as pulldown when possible?', 'ACCOUNT_STATE_DRAW_INITIAL_DROPDOWN', 'false', 'If zones have been defined for a country, the State field may be displayed as a dropdown populated by the defined zones. Otherwise a text field is displayed for customer entry.<br><strong>true</strong>: When a State field is used, display a pulldown menu whenever possible.<br><strong>false</strong>: When a State field is used, always display a text input field.', 5, 5, NULL, '2024-12-18 09:59:04', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(149, 'Create Account Default Country', 'SHOW_CREATE_ACCOUNT_DEFAULT_COUNTRY', '223', 'Set the default/pre-selected country on the Create Account page to:<br>(default is United States)', 5, 6, NULL, '2024-12-18 09:59:04', 'zen_get_country_name', 'zen_cfg_pull_down_country_list_none(', NULL),
(150, 'Fax Number', 'ACCOUNT_FAX_NUMBER', 'true', 'Display fax number field during account creation and with account information', 5, 10, NULL, '2024-12-18 09:59:04', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(151, 'Show Newsletter Checkbox', 'ACCOUNT_NEWSLETTER_STATUS', '1', 'Show Newsletter Checkbox<br />0= off<br />1= Display Unchecked<br />2= Display Checked<br /><strong>Note: Defaulting this to accepted may be in violation of certain regulations for your state or country</strong>', 5, 45, NULL, '2024-12-18 09:59:04', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), ', NULL),
(152, 'Customer Default Email Preference', 'ACCOUNT_EMAIL_PREFERENCE', '0', 'Set the Default Customer Default Email Preference<br />0= Text<br />1= HTML<br />', 5, 46, NULL, '2024-12-18 09:59:04', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(153, 'Customer Product Notification Status', 'CUSTOMERS_PRODUCTS_NOTIFICATION_STATUS', '1', 'Customer should be asked about product notifications after checkout success and in account preferences<br />0= Never ask<br />1= Ask (ignored on checkout if has already selected global notifications)<br /><br />Note: Sidebox must be turned off separately', 5, 50, NULL, '2024-12-18 09:59:04', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(154, 'Customer Shop Status - View Shop and Prices', 'CUSTOMERS_APPROVAL', '0', 'Customer must be approved to shop<br />0= Not required<br />1= Must login to browse<br />2= May browse but no prices unless logged in<br />3= Showroom Only<br /><br />It is recommended that Option 2 be used for the purposes of Spiders if you wish customers to login to see prices.', 5, 55, NULL, '2024-12-18 09:59:05', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'), ', NULL),
(155, 'Customer Approval Status - Authorization Pending', 'CUSTOMERS_APPROVAL_AUTHORIZATION', '0', 'Customer must be Authorized to shop<br />0= Not required<br />1= Must be Authorized to Browse<br />2= May browse but no prices unless Authorized<br />3= Customer May Browse and May see Prices but Must be Authorized to Buy<br /><br />It is recommended that Option 2 or 3 be used for the purposes of Spiders', 5, 65, NULL, '2024-12-18 09:59:05', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'), ', NULL),
(156, 'Customer Authorization: filename', 'CUSTOMERS_AUTHORIZATION_FILENAME', 'customers_authorization', 'Customer Authorization filename<br />Note: Do not include the extension<br />Default=customers_authorization', 5, 66, NULL, '2024-12-18 09:59:05', NULL, '', NULL),
(157, 'Customer Authorization: Hide Header', 'CUSTOMERS_AUTHORIZATION_HEADER_OFF', 'false', 'Customer Authorization: Hide Header <br />(true=hide false=show)', 5, 67, NULL, '2024-12-18 09:59:05', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(158, 'Customer Authorization: Hide Column Left', 'CUSTOMERS_AUTHORIZATION_COLUMN_LEFT_OFF', 'false', 'Customer Authorization: Hide Column Left <br />(true=hide false=show)', 5, 68, NULL, '2024-12-18 09:59:05', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(159, 'Customer Authorization: Hide Column Right', 'CUSTOMERS_AUTHORIZATION_COLUMN_RIGHT_OFF', 'false', 'Customer Authorization: Hide Column Right <br />(true=hide false=show)', 5, 69, NULL, '2024-12-18 09:59:05', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(160, 'Customer Authorization: Hide Footer', 'CUSTOMERS_AUTHORIZATION_FOOTER_OFF', 'false', 'Customer Authorization: Hide Footer <br />(true=hide false=show)', 5, 70, NULL, '2024-12-18 09:59:05', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(161, 'Customers Referral Status', 'CUSTOMERS_REFERRAL_STATUS', '0', 'Customers Referral Code is created from<br />0= Off<br />1= 1st Discount Coupon Code used<br />2= Customer can add during create account or edit if blank<br /><br />NOTE: Once the Customers Referral Code has been set it can only be changed by the Administrator', 5, 80, NULL, '2024-12-18 09:59:05', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), ', NULL),
(162, 'Installed Modules', 'MODULE_PAYMENT_INSTALLED', 'bank_bca.php;bank_bni.php;cod.php;freecharger.php;moneyorder.php', 'List of payment module filenames separated by a semi-colon. This is automatically updated. No need to edit. (Example: freecharger.php;cod.php;paypal.php)', 6, 0, '2024-12-18 10:15:33', '2024-12-18 09:59:05', NULL, NULL, NULL),
(163, 'Installed Modules', 'MODULE_ORDER_TOTAL_INSTALLED', 'ot_subtotal.php;ot_shipping.php;ot_coupon.php;ot_group_pricing.php;ot_tax.php;ot_loworderfee.php;ot_gv.php;ot_total.php', 'List of order_total module filenames separated by a semi-colon. This is automatically updated. No need to edit. (Example: ot_subtotal.php;ot_tax.php;ot_shipping.php;ot_total.php)', 6, 0, NULL, '2024-12-18 09:59:05', NULL, NULL, NULL),
(164, 'Installed Modules', 'MODULE_SHIPPING_INSTALLED', 'flat.php;freeshipper.php;item.php;storepickup.php', 'List of shipping module filenames separated by a semi-colon. This is automatically updated. No need to edit. (Example: ups.php;flat.php;item.php)', 6, 0, NULL, '2024-12-18 09:59:05', NULL, NULL, NULL),
(165, 'Enable Free Shipping', 'MODULE_SHIPPING_FREESHIPPER_STATUS', 'True', 'Do you want to offer Free shipping?', 6, 0, NULL, '2024-12-18 09:59:05', NULL, 'zen_cfg_select_option(array(\'True\', \'False\'), ', NULL),
(166, 'Pickup Locations', 'MODULE_SHIPPING_STOREPICKUP_LOCATIONS_LIST', 'Walk In', 'Enter a list of locations, separated by semicolons (;).<br>Optionally you may specify a fee/surcharge for each location by adding a comma and an amount. If no amount is specified, then the generic Shipping Cost amount from the next setting will be applied.<br><br>Examples:<br>121 Main Street;20 Church Street<br>Sunnyside,4.00;Lee Park,5.00;High Street,0.00<br>Dallas;Tulsa,5.00;Phoenix,0.00<br>For multilanguage use, see the define-statement in the language file for this module.', 6, 0, NULL, '2024-12-18 09:59:05', NULL, NULL, NULL);
INSERT INTO `configuration` (`configuration_id`, `configuration_title`, `configuration_key`, `configuration_value`, `configuration_description`, `configuration_group_id`, `sort_order`, `last_modified`, `date_added`, `use_function`, `set_function`, `val_function`) VALUES
(167, 'Free Shipping Cost', 'MODULE_SHIPPING_FREESHIPPER_COST', '0.00', 'What is the Shipping cost?', 6, 6, NULL, '2024-12-18 09:59:05', NULL, NULL, NULL),
(168, 'Handling Fee', 'MODULE_SHIPPING_FREESHIPPER_HANDLING', '0', 'Handling fee for this shipping method.', 6, 0, NULL, '2024-12-18 09:59:05', NULL, NULL, NULL),
(169, 'Tax Class', 'MODULE_SHIPPING_FREESHIPPER_TAX_CLASS', '0', 'Use the following tax class on the shipping fee.', 6, 0, NULL, '2024-12-18 09:59:05', 'zen_get_tax_class_title', 'zen_cfg_pull_down_tax_classes(', NULL),
(170, 'Shipping Zone', 'MODULE_SHIPPING_FREESHIPPER_ZONE', '0', 'If a zone is selected, only enable this shipping method for that zone.', 6, 0, NULL, '2024-12-18 09:59:05', 'zen_get_zone_class_title', 'zen_cfg_pull_down_zone_classes(', NULL),
(171, 'Sort Order', 'MODULE_SHIPPING_FREESHIPPER_SORT_ORDER', '0', 'Sort order of display.', 6, 0, NULL, '2024-12-18 09:59:05', NULL, NULL, NULL),
(172, 'Enable Store Pickup Shipping', 'MODULE_SHIPPING_STOREPICKUP_STATUS', 'True', 'Do you want to offer In Store rate shipping?', 6, 0, NULL, '2024-12-18 09:59:05', NULL, 'zen_cfg_select_option(array(\'True\', \'False\'), ', NULL),
(173, 'Shipping Cost', 'MODULE_SHIPPING_STOREPICKUP_COST', '0.00', 'The shipping cost for all orders using this shipping method.', 6, 0, NULL, '2024-12-18 09:59:05', NULL, NULL, NULL),
(174, 'Tax Class', 'MODULE_SHIPPING_STOREPICKUP_TAX_CLASS', '0', 'Use the following tax class on the shipping fee.', 6, 0, NULL, '2024-12-18 09:59:05', 'zen_get_tax_class_title', 'zen_cfg_pull_down_tax_classes(', NULL),
(175, 'Tax Basis', 'MODULE_SHIPPING_STOREPICKUP_TAX_BASIS', 'Shipping', 'On what basis is Shipping Tax calculated. Options are<br>Shipping - Based on Store Pickup Address <br>Billing - Based on customers Billing address', 6, 0, NULL, '2024-12-18 09:59:05', NULL, 'zen_cfg_select_option(array(\'Shipping\', \'Billing\'), ', NULL),
(176, 'Shipping Zone', 'MODULE_SHIPPING_STOREPICKUP_ZONE', '0', 'If a zone is selected, only enable this shipping method for that zone.', 6, 0, NULL, '2024-12-18 09:59:05', 'zen_get_zone_class_title', 'zen_cfg_pull_down_zone_classes(', NULL),
(177, 'Sort Order', 'MODULE_SHIPPING_STOREPICKUP_SORT_ORDER', '0', 'Sort order of display.', 6, 0, NULL, '2024-12-18 09:59:05', NULL, NULL, NULL),
(178, 'Enable Item Shipping', 'MODULE_SHIPPING_ITEM_STATUS', 'True', 'Do you want to offer per item rate shipping?', 6, 0, NULL, '2024-12-18 09:59:05', NULL, 'zen_cfg_select_option(array(\'True\', \'False\'), ', NULL),
(179, 'Shipping Cost', 'MODULE_SHIPPING_ITEM_COST', '2.50', 'The shipping cost will be multiplied by the number of items in an order that uses this shipping method.', 6, 0, NULL, '2024-12-18 09:59:05', NULL, NULL, NULL),
(180, 'Handling Fee', 'MODULE_SHIPPING_ITEM_HANDLING', '0', 'Handling fee for this shipping method.', 6, 0, NULL, '2024-12-18 09:59:05', NULL, NULL, NULL),
(181, 'Tax Class', 'MODULE_SHIPPING_ITEM_TAX_CLASS', '0', 'Use the following tax class on the shipping fee.', 6, 0, NULL, '2024-12-18 09:59:05', 'zen_get_tax_class_title', 'zen_cfg_pull_down_tax_classes(', NULL),
(182, 'Tax Basis', 'MODULE_SHIPPING_ITEM_TAX_BASIS', 'Shipping', 'On what basis is Shipping Tax calculated. Options are<br />Shipping - Based on customers Shipping Address<br />Billing Based on customers Billing address<br />Store - Based on Store address if Billing/Shipping Zone equals Store zone', 6, 0, NULL, '2024-12-18 09:59:05', NULL, 'zen_cfg_select_option(array(\'Shipping\', \'Billing\', \'Store\'), ', NULL),
(183, 'Shipping Zone', 'MODULE_SHIPPING_ITEM_ZONE', '0', 'If a zone is selected, only enable this shipping method for that zone.', 6, 0, NULL, '2024-12-18 09:59:05', 'zen_get_zone_class_title', 'zen_cfg_pull_down_zone_classes(', NULL),
(184, 'Sort Order', 'MODULE_SHIPPING_ITEM_SORT_ORDER', '0', 'Sort order of display.', 6, 0, NULL, '2024-12-18 09:59:05', NULL, NULL, NULL),
(185, 'Enable Free Charge Module', 'MODULE_PAYMENT_FREECHARGER_STATUS', 'True', 'Do you want to accept Free Charge payments?', 6, 1, NULL, '2024-12-18 09:59:05', NULL, 'zen_cfg_select_option(array(\'True\', \'False\'), ', NULL),
(186, 'Sort order of display.', 'MODULE_PAYMENT_FREECHARGER_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2024-12-18 09:59:05', NULL, NULL, NULL),
(187, 'Payment Zone', 'MODULE_PAYMENT_FREECHARGER_ZONE', '0', 'If a zone is selected, only enable this payment method for that zone.', 6, 2, NULL, '2024-12-18 09:59:05', 'zen_get_zone_class_title', 'zen_cfg_pull_down_zone_classes(', NULL),
(188, 'Set Order Status', 'MODULE_PAYMENT_FREECHARGER_ORDER_STATUS_ID', '2', 'Set the status of orders made with this payment module to this value', 6, 0, NULL, '2024-12-18 09:59:05', 'zen_get_order_status_name', 'zen_cfg_pull_down_order_statuses(', NULL),
(189, 'Enable Check/Money Order Module', 'MODULE_PAYMENT_MONEYORDER_STATUS', 'True', 'Do you want to accept Check/Money Order payments?', 6, 1, NULL, '2024-12-18 09:59:05', NULL, 'zen_cfg_select_option(array(\'True\', \'False\'), ', NULL),
(190, 'Make Payable to:', 'MODULE_PAYMENT_MONEYORDER_PAYTO', 'the Store Owner/Website Name', 'Who should payments be made payable to?', 6, 1, NULL, '2024-12-18 09:59:05', NULL, NULL, NULL),
(191, 'Sort order of display.', 'MODULE_PAYMENT_MONEYORDER_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2024-12-18 09:59:05', NULL, NULL, NULL),
(192, 'Payment Zone', 'MODULE_PAYMENT_MONEYORDER_ZONE', '0', 'If a zone is selected, only enable this payment method for that zone.', 6, 2, NULL, '2024-12-18 09:59:05', 'zen_get_zone_class_title', 'zen_cfg_pull_down_zone_classes(', NULL),
(193, 'Set Order Status', 'MODULE_PAYMENT_MONEYORDER_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', 6, 0, NULL, '2024-12-18 09:59:05', 'zen_get_order_status_name', 'zen_cfg_pull_down_order_statuses(', NULL),
(194, 'Include Tax', 'MODULE_ORDER_TOTAL_GROUP_PRICING_INC_TAX', 'false', 'Include Tax value in amount before discount calculation?', 6, 6, NULL, '2024-12-18 09:59:05', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(195, 'This module is installed', 'MODULE_ORDER_TOTAL_GROUP_PRICING_STATUS', 'true', '', 6, 1, NULL, '2024-12-18 09:59:05', NULL, 'zen_cfg_select_option(array(\'true\'), ', NULL),
(196, 'Sort Order', 'MODULE_ORDER_TOTAL_GROUP_PRICING_SORT_ORDER', '290', 'Sort order of display.', 6, 2, NULL, '2024-12-18 09:59:05', NULL, NULL, NULL),
(197, 'Include Shipping', 'MODULE_ORDER_TOTAL_GROUP_PRICING_INC_SHIPPING', 'false', 'Include Shipping value in amount before discount calculation?', 6, 5, NULL, '2024-12-18 09:59:05', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(198, 'Re-calculate Tax', 'MODULE_ORDER_TOTAL_GROUP_PRICING_CALC_TAX', 'Standard', 'Re-Calculate Tax', 6, 7, NULL, '2024-12-18 09:59:05', NULL, 'zen_cfg_select_option(array(\'None\', \'Standard\', \'Credit Note\'), ', NULL),
(199, 'Tax Class', 'MODULE_ORDER_TOTAL_GROUP_PRICING_TAX_CLASS', '0', 'Use the following tax class when treating Group Discount as Credit Note.', 6, 0, NULL, '2024-12-18 09:59:05', 'zen_get_tax_class_title', 'zen_cfg_pull_down_tax_classes(', NULL),
(200, 'Enable Flat Shipping', 'MODULE_SHIPPING_FLAT_STATUS', 'True', 'Do you want to offer flat rate shipping?', 6, 0, NULL, '2024-12-18 09:59:05', NULL, 'zen_cfg_select_option(array(\'True\', \'False\'), ', NULL),
(201, 'Shipping Cost', 'MODULE_SHIPPING_FLAT_COST', '5.00', 'The shipping cost for all orders using this shipping method.', 6, 0, NULL, '2024-12-18 09:59:05', NULL, NULL, NULL),
(202, 'Tax Class', 'MODULE_SHIPPING_FLAT_TAX_CLASS', '0', 'Use the following tax class on the shipping fee.', 6, 0, NULL, '2024-12-18 09:59:05', 'zen_get_tax_class_title', 'zen_cfg_pull_down_tax_classes(', NULL),
(203, 'Tax Basis', 'MODULE_SHIPPING_FLAT_TAX_BASIS', 'Shipping', 'On what basis is Shipping Tax calculated. Options are<br />Shipping - Based on customers Shipping Address<br />Billing Based on customers Billing address<br />Store - Based on Store address if Billing/Shipping Zone equals Store zone', 6, 0, NULL, '2024-12-18 09:59:05', NULL, 'zen_cfg_select_option(array(\'Shipping\', \'Billing\', \'Store\'), ', NULL),
(204, 'Shipping Zone', 'MODULE_SHIPPING_FLAT_ZONE', '0', 'If a zone is selected, only enable this shipping method for that zone.', 6, 0, NULL, '2024-12-18 09:59:05', 'zen_get_zone_class_title', 'zen_cfg_pull_down_zone_classes(', NULL),
(205, 'Sort Order', 'MODULE_SHIPPING_FLAT_SORT_ORDER', '0', 'Sort order of display.', 6, 0, NULL, '2024-12-18 09:59:05', NULL, NULL, NULL),
(206, 'Default Currency', 'DEFAULT_CURRENCY', 'IDR', 'Default Currency', 6, 0, NULL, '2024-12-18 09:59:05', NULL, NULL, NULL),
(207, 'Default Language', 'DEFAULT_LANGUAGE', 'id', 'Default Language', 6, 0, NULL, '2024-12-18 09:59:05', NULL, NULL, NULL),
(208, 'Default Order Status For New Orders', 'DEFAULT_ORDERS_STATUS_ID', '1', 'When a new order is created, this order status will be assigned to it.', 6, 0, NULL, '2024-12-18 09:59:05', NULL, NULL, NULL),
(209, 'Admin configuration_key shows', 'ADMIN_CONFIGURATION_KEY_ON', '0', 'Manually switch to value of 1 to see the configuration_key name in configuration displays', 6, 0, NULL, '2024-12-18 09:59:05', NULL, NULL, NULL),
(210, 'Country of Origin', 'SHIPPING_ORIGIN_COUNTRY', '100', 'Select the country of origin to be used in shipping quotes.', 7, 1, NULL, '2024-12-18 09:59:06', 'zen_get_country_name', 'zen_cfg_pull_down_country_list(', NULL),
(211, 'Postal Code', 'SHIPPING_ORIGIN_ZIP', 'NONE', 'Enter the Postal Code (ZIP) of the Store to be used in shipping quotes. NOTE: For USA zip codes, only use your 5 digit zip code.', 7, 2, NULL, '2024-12-18 09:59:06', NULL, NULL, NULL),
(212, 'Enter the Maximum Package Weight you will ship', 'SHIPPING_MAX_WEIGHT', '50', 'Carriers have a max weight limit for a single package. This is a common one for all.', 7, 3, NULL, '2024-12-18 09:59:06', NULL, NULL, NULL),
(213, 'Package Tare Small to Medium - added percentage:weight', 'SHIPPING_BOX_WEIGHT', '0:3', 'What is the weight of typical packaging of small to medium packages?<br>Example:<br>Unit = Your SHIPPING_WEIGHT_UNITS (lbs or kgs) <br> 10% + 1 Unit 10:1<br>10% + 0 Units 10:0<br>0% + 5 Units 0:5<br>0% + 1/2 Unit 0:0.5<br>0% + 0 Units 0:0', 7, 4, NULL, '2024-12-18 09:59:06', NULL, NULL, NULL),
(214, 'Larger packages - added packaging percentage:weight', 'SHIPPING_BOX_PADDING', '10:0', 'What is the weight of typical packaging for Large packages?<br>Example:<br>Unit = Your SHIPPING_WEIGHT_UNITS (lbs or kgs) <br> 10% + 1 Unit 10:1<br>10% + 0 Units 10:0<br>0% + 5 Units 0:5<br>0% + 1/2 Unit 0:0.5<br>0% + 0 Units 0:0', 7, 5, NULL, '2024-12-18 09:59:06', NULL, NULL, NULL),
(215, 'Shipping Weight Units', 'SHIPPING_WEIGHT_UNITS', 'lbs', 'How should shipping modules treat the weights set on products? (remember if using lbs, 1 ounce=0.0625). <b>NOTE: You must still manually update your language files to show the correct units visually.</b>', 7, 6, NULL, '2024-12-18 09:59:06', NULL, 'zen_cfg_select_option([\'lbs\', \'kgs\'],', NULL),
(216, 'Shipping Dimension Units', 'SHIPPING_DIMENSION_UNITS', 'inches', 'In which unit of measurement does your store save length/width/height for your products?', 7, 7, NULL, '2024-12-18 09:59:06', NULL, 'zen_cfg_select_option([\'inches\', \'centimeters\'],', NULL),
(217, 'Display Number of Boxes and Weight Status', 'SHIPPING_BOX_WEIGHT_DISPLAY', '3', 'Display Shipping Weight and Number of Boxes?<br /><br />0= off<br />1= Boxes Only<br />2= Weight Only<br />3= Both Boxes and Weight', 7, 15, NULL, '2024-12-18 09:59:06', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'), ', NULL),
(218, 'Shipping Estimator Display Settings for Shopping Cart', 'SHOW_SHIPPING_ESTIMATOR_BUTTON', '1', '<br />0= Off<br />1= Display as Button on Shopping Cart<br />2= Display as Listing on Shopping Cart Page', 7, 20, NULL, '2024-12-18 09:59:06', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), ', NULL),
(219, 'Display Order Comments on Admin Invoice', 'ORDER_COMMENTS_INVOICE', '1', 'Do you want to display the Order Comments on the Admin Invoice?<br />0= OFF<br />1= First Comment by Customer only<br />2= All Comments for the Order', 7, 25, NULL, '2024-12-18 09:59:06', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), ', NULL),
(220, 'Display Order Comments on Admin Packing Slip', 'ORDER_COMMENTS_PACKING_SLIP', '1', 'Do you want to display the Order Comments on the Admin Packing Slip?<br />0= OFF<br />1= First Comment by Customer only<br />2= All Comments for the Order', 7, 26, NULL, '2024-12-18 09:59:06', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), ', NULL),
(221, 'Order Free Shipping 0 Weight Status', 'ORDER_WEIGHT_ZERO_STATUS', '0', 'If there is no weight to the order, does the order have Free Shipping?<br>0= no<br>1= yes<br><br>Note: When using Free Shipping, enable the Free Shipping Module (freeshipper).  It will only show when shipping is free.', 7, 15, NULL, '2024-12-18 09:59:06', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(222, 'Display Product Image', 'PRODUCT_LIST_IMAGE', '1', 'Do you want to display the Product Image?', 8, 1, NULL, '2024-12-18 09:59:06', NULL, NULL, NULL),
(223, 'Display Product Manufacturer Name', 'PRODUCT_LIST_MANUFACTURER', '0', 'Do you want to display the Product Manufacturer Name?', 8, 2, NULL, '2024-12-18 09:59:06', NULL, NULL, NULL),
(224, 'Display Product Model', 'PRODUCT_LIST_MODEL', '0', 'Do you want to display the Product Model?', 8, 3, NULL, '2024-12-18 09:59:06', NULL, NULL, NULL),
(225, 'Display Product Name', 'PRODUCT_LIST_NAME', '2', 'Do you want to display the Product Name?', 8, 4, NULL, '2024-12-18 09:59:06', NULL, NULL, NULL),
(226, 'Display Product Price/Add to Cart', 'PRODUCT_LIST_PRICE', '3', 'Do you want to display the Product Price/Add to Cart', 8, 5, NULL, '2024-12-18 09:59:06', NULL, NULL, NULL),
(227, 'Display Product Quantity', 'PRODUCT_LIST_QUANTITY', '0', 'Do you want to display the Product Quantity?', 8, 6, NULL, '2024-12-18 09:59:06', NULL, NULL, NULL),
(228, 'Display Product Weight', 'PRODUCT_LIST_WEIGHT', '0', 'Do you want to display the Product Weight?', 8, 7, NULL, '2024-12-18 09:59:06', NULL, NULL, NULL),
(229, 'Display Product Price/Add to Cart Column Width', 'PRODUCTS_LIST_PRICE_WIDTH', '125', 'Define the width of the Price/Add to Cart column<br />Default= 125', 8, 8, NULL, '2024-12-18 09:59:06', NULL, NULL, NULL),
(230, 'Display Category/Manufacturer Filter (0=off; 1=on)', 'PRODUCT_LIST_FILTER', '1', 'Do you want to display the Category/Manufacturer Filter?', 8, 9, NULL, '2024-12-18 09:59:06', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(231, 'Prev/Next Split Page Navigation (1-top, 2-bottom, 3-both)', 'PREV_NEXT_BAR_LOCATION', '3', 'Sets the location of the Prev/Next Split Page Navigation', 8, 10, NULL, '2024-12-18 09:59:06', NULL, 'zen_cfg_select_option(array(\'1\', \'2\', \'3\'), ', NULL),
(232, 'Sort Order Default - Product Listing', 'PRODUCT_LISTING_DEFAULT_SORT_ORDER', '', 'Product Listing Default sort order?<br>NOTE: Leave Blank for Product Sort Order; otherwise use a number from 1-8 corresponding to the sort order dropdown on the listing page. Example: 1', 8, 15, NULL, '2024-12-18 09:59:06', NULL, NULL, NULL),
(233, 'Sort Order Default - New Products', 'PRODUCT_NEW_LIST_SORT_DEFAULT', '6', 'What Sort Order Default should be used for New Products Display?<br />Default= 6 for Date New to Old<br /><br />1= Products Name<br />2= Products Name Desc<br />3= Price low to high, Products Name<br />4= Price high to low, Products Name<br />5= Model<br />6= Date Added desc<br />7= Date Added<br />8= Product Sort Order', 8, 15, NULL, '2024-12-18 09:59:06', NULL, 'zen_cfg_select_option(array(\'1\', \'2\', \'3\', \'4\', \'5\', \'6\', \'7\', \'8\'), ', NULL),
(234, 'Sort Order Default - Featured', 'PRODUCT_FEATURED_LIST_SORT_DEFAULT', '1', 'What Sort Order Default should be used for Featured Product Display?<br />Default= 1 for Product Name<br /><br />1= Products Name<br />2= Products Name Desc<br />3= Price low to high, Products Name<br />4= Price high to low, Products Name<br />5= Model<br />6= Date Added desc<br />7= Date Added<br />8= Product Sort Order', 8, 15, NULL, '2024-12-18 09:59:06', NULL, 'zen_cfg_select_option(array(\'1\', \'2\', \'3\', \'4\', \'5\', \'6\', \'7\', \'8\'), ', NULL),
(235, 'Sort Order Default - All-Products', 'PRODUCT_ALL_LIST_SORT_DEFAULT', '1', 'What Sort Order Default should be used for All Products Display?<br />Default= 1 for Product Name<br /><br />1= Products Name<br />2= Products Name Desc<br />3= Price low to high, Products Name<br />4= Price high to low, Products Name<br />5= Model<br />6= Date Added desc<br />7= Date Added<br />8= Product Sort Order', 8, 15, NULL, '2024-12-18 09:59:06', NULL, 'zen_cfg_select_option(array(\'1\', \'2\', \'3\', \'4\', \'5\', \'6\', \'7\', \'8\'), ', NULL),
(236, 'Mask Upcoming Products from being included as New Products', 'SHOW_NEW_PRODUCTS_UPCOMING_MASKED', '0', 'Do you want to mask Upcoming Products from being included as New Products in Listing, Sideboxes and Centerbox?<br />0= off<br />1= on', 8, 19, NULL, '2024-12-18 09:59:06', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(237, 'Display Product Add to Cart Button (0=off; 1=on; 2=on with Qty Box per Product)', 'PRODUCT_LIST_PRICE_BUY_NOW', '1', 'Do you want to display the Add to Cart Button?<br /><br /><strong>NOTE:</strong> Turn OFF Display Multiple Products Qty Box Status to use Option 2 on with Qty Box per Product', 8, 20, NULL, '2024-12-18 09:59:06', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), ', NULL),
(238, 'Display Multiple Products Qty Box Status and Set Button Location', 'PRODUCT_LISTING_MULTIPLE_ADD_TO_CART', '3', 'Do you want to display Add Multiple Products Qty Box and Set Button Location?<br />0= off<br />1= Top<br />2= Bottom<br />3= Both', 8, 25, NULL, '2024-12-18 09:59:06', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'), ', NULL),
(239, 'Display Product Description', 'PRODUCT_LIST_DESCRIPTION', '150', 'Do you want to display the Product Description?<br /><br />0= OFF<br />150= Suggested Length, or enter the maximum number of characters to display', 8, 30, NULL, '2024-12-18 09:59:06', NULL, NULL, NULL),
(240, 'Product Listing Ascending Sort Order', 'PRODUCT_LIST_SORT_ORDER_ASCENDING', '+', 'What do you want to use to indicate Sort Order Ascending?<br />Default = +', 8, 40, NULL, '2024-12-18 09:59:06', NULL, 'zen_cfg_textarea_small(', NULL),
(241, 'Product Listing Descending Sort Order', 'PRODUCT_LIST_SORT_ORDER_DESCENDING', '-', 'What do you want to use to indicate Sort Order Descending?<br />Default = -', 8, 41, NULL, '2024-12-18 09:59:06', NULL, 'zen_cfg_textarea_small(', NULL),
(242, 'Columns Per Row', 'PRODUCT_LISTING_COLUMNS_PER_ROW', '1', 'Select the number of columns of products to show per row in the product listing.<br>Recommended: 3<br>1=[rows] mode.', 8, 45, NULL, '2024-12-18 09:59:06', NULL, NULL, NULL),
(243, 'Include Product Listing Alpha Sorter Dropdown', 'PRODUCT_LIST_ALPHA_SORTER', 'true', 'Do you want to include an Alpha Filter dropdown on the Product Listing?', 8, 50, NULL, '2024-12-18 09:59:06', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(244, 'Include Product Listing Sub Categories Image', 'PRODUCT_LIST_CATEGORIES_IMAGE_STATUS', 'true', 'Do you want to include the Sub Categories Image on the Product Listing?', 8, 52, NULL, '2024-12-18 09:59:06', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(245, 'Include Product Listing Top Categories Image', 'PRODUCT_LIST_CATEGORIES_IMAGE_STATUS_TOP', 'true', 'Do you want to include the Top Categories Image on the Product Listing?', 8, 53, NULL, '2024-12-18 09:59:06', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(246, 'Show SubCategories on Main Page while navigating', 'PRODUCT_LIST_CATEGORY_ROW_STATUS', '1', 'Show Sub-Categories on Main Page while navigating through Categories<br /><br />0= off<br />1= on', 8, 60, NULL, '2024-12-18 09:59:06', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(247, 'Check stock level', 'STOCK_CHECK', 'true', 'Check to see if sufficient stock is available', 9, 1, NULL, '2024-12-18 09:59:06', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(248, 'Subtract stock', 'STOCK_LIMITED', 'true', 'Subtract product in stock by product orders', 9, 2, NULL, '2024-12-18 09:59:06', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(249, 'Allow Checkout', 'STOCK_ALLOW_CHECKOUT', 'true', 'Allow customer to checkout even if there is insufficient stock', 9, 3, NULL, '2024-12-18 09:59:06', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(250, 'Mark product out of stock', 'STOCK_MARK_PRODUCT_OUT_OF_STOCK', '***', 'Display something on screen so customer can see which product has insufficient stock', 9, 4, NULL, '2024-12-18 09:59:06', NULL, NULL, NULL),
(251, 'Stock Re-order level', 'STOCK_REORDER_LEVEL', '5', 'Define when stock needs to be re-ordered', 9, 5, NULL, '2024-12-18 09:59:06', NULL, NULL, NULL),
(252, 'Products status in Catalog when out of stock should be set to', 'SHOW_PRODUCTS_SOLD_OUT', '0', 'Show Products when out of stock<br /><br />0= set product status to OFF<br />1= leave product status ON', 9, 10, NULL, '2024-12-18 09:59:06', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(253, 'Disabled Product Status for Search Engines', 'DISABLED_PRODUCTS_TRIGGER_HTTP200', 'false', 'When a product is marked Disabled (status=0) but is not deleted from the database, should Search Engines still show it as Available?<br>eg:<br>True = Return HTTP 200 response<br>False = Return HTTP 410<br>(Deleting it will return HTTP 404)<br><b>Default: false</b>', 9, 10, NULL, '2024-12-18 09:59:06', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'),', NULL),
(254, 'Show Sold Out Image in place of Add to Cart', 'SHOW_PRODUCTS_SOLD_OUT_IMAGE', '1', 'Show Sold Out Image instead of Add to Cart Button<br /><br />0= off<br />1= on', 9, 11, NULL, '2024-12-18 09:59:06', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(255, 'Enable disabled product by available date', 'ENABLE_DISABLED_UPCOMING_PRODUCT', 'Automatic', 'How should disabled products with a future available date be made active when the date is reached?<br />', 9, 12, NULL, '2024-12-18 09:59:06', NULL, 'zen_cfg_select_option(array(\'Manual\', \'Automatic\'), ', NULL),
(256, 'Product Quantity Decimals', 'QUANTITY_DECIMALS', '0', 'Allow how many decimals on Quantity<br /><br />0= off', 9, 15, NULL, '2024-12-18 09:59:06', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'), ', NULL),
(257, 'Show Shopping Cart - Delete Checkboxes or Delete Button', 'SHOW_SHOPPING_CART_DELETE', '3', 'Show on Shopping Cart Delete Button and/or Checkboxes<br /><br />1= Delete Button Only<br />2= Checkbox Only<br />3= Both Delete Button and Checkbox', 9, 20, NULL, '2024-12-18 09:59:06', NULL, 'zen_cfg_select_option(array(\'1\', \'2\', \'3\'), ', NULL),
(258, 'Show Shopping Cart - Update Cart Button Location', 'SHOW_SHOPPING_CART_UPDATE', '3', 'Show on Shopping Cart Update Cart Button Location as:<br /><br />1= Next to each Qty Box<br />2= Below all Products<br />3= Both Next to each Qty Box and Below all Products', 9, 22, NULL, '2024-12-18 09:59:07', NULL, 'zen_cfg_select_option(array(\'1\', \'2\', \'3\'), ', NULL),
(259, 'Show New Products on empty Shopping Cart Page', 'SHOW_SHOPPING_CART_EMPTY_NEW_PRODUCTS', '1', 'Show New Products on empty Shopping Cart Page<br />0= off or set the sort order', 9, 30, NULL, '2024-12-18 09:59:07', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), ', NULL),
(260, 'Show Featured Products on empty Shopping Cart Page', 'SHOW_SHOPPING_CART_EMPTY_FEATURED_PRODUCTS', '2', 'Show Featured Products on empty Shopping Cart Page<br />0= off or set the sort order', 9, 31, NULL, '2024-12-18 09:59:07', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), ', NULL),
(261, 'Show Special Products on empty Shopping Cart Page', 'SHOW_SHOPPING_CART_EMPTY_SPECIALS_PRODUCTS', '3', 'Show Special Products on empty Shopping Cart Page<br />0= off or set the sort order', 9, 32, NULL, '2024-12-18 09:59:07', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), ', NULL),
(262, 'Show Upcoming Products on empty Shopping Cart Page', 'SHOW_SHOPPING_CART_EMPTY_UPCOMING', '4', 'Show Upcoming Products on empty Shopping Cart Page<br />0= off or set the sort order', 9, 33, NULL, '2024-12-18 09:59:07', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), ', NULL),
(263, 'Show Notice of Combining Shopping Cart on Login', 'SHOW_SHOPPING_CART_COMBINED', '1', 'When a customer logs in and has a previously stored shopping cart, the products are combined with the existing shopping cart.<br /><br />Do you wish to display a Notice to the customer?<br /><br />0= OFF, do not display a notice<br />1= Yes show notice and go to shopping cart<br />2= Yes show notice, but do not go to shopping cart', 9, 35, NULL, '2024-12-18 09:59:07', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), ', NULL),
(264, 'Log Database Queries', 'STORE_DB_TRANSACTIONS', 'false', 'Record the database queries to files in the system /logs/ folder. USE WITH CAUTION. This can seriously degrade your site performance and blow out your disk space storage quotas.<br><strong>Enabling this makes your site NON-COMPLIANT with PCI DSS rules, thus invalidating any certification.</strong>', 10, 5, NULL, '2024-12-18 09:59:07', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(265, 'Report All Errors (Admin)?', 'REPORT_ALL_ERRORS_ADMIN', 'No', 'Do you want create debug-log files for <b>all</b> PHP errors, even warnings, that occur during your Zen Cart admin\'s processing?  If you want to log all PHP errors <b>except</b> duplicate-language definitions, choose <em>IgnoreDups</em>.', 10, 40, NULL, '2024-12-18 09:59:07', NULL, 'zen_cfg_select_option(array(\'Yes\', \'No\', \'IgnoreDups\'),', NULL),
(266, 'Report All Errors (Store)?', 'REPORT_ALL_ERRORS_STORE', 'No', 'Do you want create debug-log files for <b>all</b> PHP errors, even warnings, that occur during your Zen Cart store\'s processing?  If you want to log all PHP errors <b>except</b> duplicate-language definitions, choose <em>IgnoreDups</em>.<br /><br /><strong>Note:</strong> Choosing \'Yes\' is not suggested for a <em>live</em> store, since it will reduce performance significantly!', 10, 41, NULL, '2024-12-18 09:59:07', NULL, 'zen_cfg_select_option(array(\'Yes\', \'No\', \'IgnoreDups\'),', NULL),
(267, 'Report All Errors: Backtrace on Notice Errors?', 'REPORT_ALL_ERRORS_NOTICE_BACKTRACE', 'No', 'Include backtrace information on &quot;Notice&quot; errors?  These are usually isolated to the identified file and the backtrace information just fills the logs. Default (<b>No</b>).', 10, 42, NULL, '2024-12-18 09:59:07', NULL, 'zen_cfg_select_option(array(\'Yes\', \'No\'),', NULL),
(268, 'E-Mail Transport Method', 'EMAIL_TRANSPORT', 'PHP', 'Defines the method for sending mail.<br><br><strong>PHP</strong> is the default, and uses built-in PHP wrappers for processing.<br><strong>smtpauth</strong> should be used by most sites, as it provides secure sending of authenticated email. You must also configure your smtpauth settings in the appropriate fields in this admin section.<br><strong>Gmail</strong> is used for sending emails using the Google mail service, and requires the [less secure] setting enabled in your gmail account.<br><strong>sendmail</strong> is for linux/unix hosts using the sendmail program on the server<br><strong>sendmail-f</strong> is only for servers which require the use of the -f parameter to use sendmail. This is a security setting often used to prevent spoofing. Will cause errors if your host mailserver is not configured to use it.<br><strong>Qmail</strong> is used for linux/unix hosts running Qmail as sendmail wrapper at /var/qmail/bin/sendmail.<br><br>MOST SITES WILL USE [smtpauth].', 12, 1, NULL, '2024-12-18 09:59:07', NULL, 'zen_cfg_select_option(array(\'PHP\', \'sendmail\', \'sendmail-f\', \'smtp\', \'smtpauth\', \'Gmail\',\'Qmail\'),', NULL),
(269, 'SMTP Email Account Mailbox', 'EMAIL_SMTPAUTH_MAILBOX', 'YourEmailAccountNameHere', 'Enter the mailbox account name (me@mydomain.com) supplied by your host. This is the account name that your host requires for SMTP authentication.<br />Only required if using SMTP Authentication for email.', 12, 101, NULL, '2024-12-18 09:59:07', NULL, NULL, NULL),
(270, 'SMTP Email Account Password', 'EMAIL_SMTPAUTH_PASSWORD', 'YourPasswordHere', 'Enter the password for your SMTP mailbox. <br />Only required if using SMTP Authentication for email.', 12, 101, NULL, '2024-12-18 09:59:07', 'zen_cfg_password_display', NULL, NULL),
(271, 'SMTP Email Mail Host', 'EMAIL_SMTPAUTH_MAIL_SERVER', 'mail.EnterYourDomain.com', 'Enter the DNS name of your SMTP mail server.<br />ie: mail.mydomain.com<br />or 55.66.77.88<br />Only required if using SMTP Authentication for email.', 12, 101, NULL, '2024-12-18 09:59:07', NULL, NULL, NULL),
(272, 'SMTP Email Mail Server Port', 'EMAIL_SMTPAUTH_MAIL_SERVER_PORT', '25', 'Enter the IP port number that your SMTP mailserver operates on.<br />Only required if using SMTP Authentication for email.<br><br>Default: 25<br>Typical values are:<br>25 - normal unencrypted SMTP<br>587 - encrypted SMTP<br>465 - older MS SMTP port', 12, 101, NULL, '2024-12-18 09:59:07', NULL, NULL, NULL),
(273, 'Newsletter SMTP Email Account Mailbox', 'NEWSLETTER_EMAIL_SMTPAUTH_MAILBOX', 'YourEmailAccountNameHere', 'Enter the newsletter mailbox account name (me@mydomain.com) supplied by your host. This is the account name that your newsletter host requires for SMTP authentication.', 12, 501, NULL, '2024-12-18 09:59:07', NULL, NULL, NULL),
(274, 'Newsletter SMTP Email Account Password', 'NEWSLETTER_EMAIL_SMTPAUTH_PASSWORD', 'YourPasswordHere', 'Enter the password for your newsletter SMTP mailbox.', 12, 502, NULL, '2024-12-18 09:59:07', 'zen_cfg_password_display', NULL, NULL),
(275, 'Newsletter SMTP Email Mail Host', 'NEWSLETTER_EMAIL_SMTPAUTH_MAIL_SERVER', '', 'Enter the DNS name of your Newsletter SMTP mail server if you are using a separate email server for bulk email.', 12, 503, NULL, '2024-12-18 09:59:07', NULL, NULL, NULL),
(276, 'Newsletter SMTP Email Mail Server Port', 'NEWSLETTER_EMAIL_SMTPAUTH_MAIL_SERVER_PORT', '587', 'Enter the IP port number that your newsletter SMTP mailserver operates on.<br><br>Default: 587<br>Typical values are:<br>587 - encrypted SMTP<br>465 - older MS SMTP port', 12, 504, NULL, '2024-12-18 09:59:07', NULL, NULL, NULL),
(277, 'Newsletter Modules', 'NEWSLETTER_MODULES', 'newsletters,product_notification,back_in_stock_notification,recover_cart_sales', 'Enter a comma-separated list of the modules that should use the newsletter settings when sending email (rather than the regular email settings).', 12, 505, NULL, '2024-12-18 09:59:07', NULL, NULL, NULL),
(278, 'Send E-Mails', 'SEND_EMAILS', 'true', 'Send out e-mails?<br>Normally this is set to true.<br>Set to false to suppress ALL outgoing email messages from this store, such as when working with a test copy of your store offline.', 12, 1, NULL, '2024-12-18 09:59:07', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(279, 'Enable HTML Emails?', 'EMAIL_USE_HTML', 'false', 'Send emails in HTML format if recipient has enabled it in their preferences.', 12, 3, NULL, '2024-12-18 09:59:07', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'),', NULL),
(280, 'Verify E-Mail Addresses Through DNS', 'ENTRY_EMAIL_ADDRESS_CHECK', 'false', 'Verify e-mail address through a DNS server', 6, 6, NULL, '2024-12-18 09:59:07', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(281, 'Email Archiving Active?', 'EMAIL_ARCHIVE', 'false', 'If you wish to have email messages archived/stored when sent, set this to \"true\".', 12, 6, NULL, '2024-12-18 09:59:07', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'),', NULL),
(282, 'Email Address (Displayed to Contact you)', 'STORE_OWNER_EMAIL_ADDRESS', 'anugrahpanji@zccomputer.com', 'Email address of Store Owner.  Used as \"display only\" when informing customers of how to contact you.', 12, 10, NULL, '2024-12-18 09:59:07', NULL, NULL, '{\"error\":\"TEXT_EMAIL_ADDRESS_VALIDATE_SINGLE\",\"id\":\"FILTER_CALLBACK\",\"options\":{\"options\":[\"configurationValidation\",\"sanitizeEmail\"]}}'),
(283, 'Email Address (sent FROM)', 'EMAIL_FROM', 'anugrahpanji@zccomputer.com', 'Address from which email messages will be \"sent\" by default. Can be over-ridden at compose-time in admin modules.', 12, 11, NULL, '2024-12-18 09:59:07', NULL, NULL, '{\"error\":\"TEXT_EMAIL_ADDRESS_VALIDATE_SINGLE\",\"id\":\"FILTER_CALLBACK\",\"options\":{\"options\":[\"configurationValidation\",\"sanitizeEmail\"]}}'),
(284, 'Emails must send from known domain?', 'EMAIL_SEND_MUST_BE_STORE', 'Yes', 'Does your mailserver require that all outgoing emails have their \"from\" address match a known domain that exists on your webserver?<br /><br />This is often required in order to prevent spoofing and spam broadcasts.  If set to Yes, this will cause the email address (sent FROM) to be used as the \"from\" address on all outgoing mail.', 12, 11, NULL, '0001-01-01 00:00:00', NULL, 'zen_cfg_select_option(array(\'No\', \'Yes\'), ', NULL),
(285, 'Email Admin Format?', 'ADMIN_EXTRA_EMAIL_FORMAT', 'TEXT', 'Please select the Admin extra email format (Note: Enable HTML Emails must be on for HTML option to work)', 12, 12, NULL, '0001-01-01 00:00:00', NULL, 'zen_cfg_select_option(array(\'TEXT\', \'HTML\'), ', NULL),
(286, 'Send Copy of Order Confirmation Emails To', 'SEND_EXTRA_ORDER_EMAILS_TO', 'anugrahpanji@zccomputer.com', 'Send COPIES of order confirmation emails to the following email addresses, in this format: Name 1 &lt;email@address1&gt;, Name 2 &lt;email@address2&gt;', 12, 12, NULL, '2024-12-18 09:59:07', NULL, NULL, '{\"error\":\"TEXT_EMAIL_ADDRESS_VALIDATE\",\"id\":\"FILTER_CALLBACK\",\"options\":{\"options\":[\"configurationValidation\",\"sanitizeEmailNullOK\"]}}'),
(287, 'Send Copy of Create Account Emails To - Status', 'SEND_EXTRA_CREATE_ACCOUNT_EMAILS_TO_STATUS', '0', 'Send copy of Create Account Status<br />0= off 1= on', 12, 13, NULL, '2024-12-18 09:59:07', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'),', NULL),
(288, 'Send Copy of Create Account Emails To', 'SEND_EXTRA_CREATE_ACCOUNT_EMAILS_TO', 'anugrahpanji@zccomputer.com', 'Send copy of Create Account emails to the following email addresses, in this format: Name 1 &lt;email@address1&gt;, Name 2 &lt;email@address2&gt;', 12, 14, NULL, '2024-12-18 09:59:07', NULL, NULL, '{\"error\":\"TEXT_EMAIL_ADDRESS_VALIDATE\",\"id\":\"FILTER_CALLBACK\",\"options\":{\"options\":[\"configurationValidation\",\"sanitizeEmailNullOK\"]}}'),
(289, 'Send Copy of Customer GV Send Emails To - Status', 'SEND_EXTRA_GV_CUSTOMER_EMAILS_TO_STATUS', '0', 'Send copy of Customer GV Send Status<br />0= off 1= on', 12, 17, NULL, '2024-12-18 09:59:07', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'),', NULL),
(290, 'Send Copy of Customer GV Send Emails To', 'SEND_EXTRA_GV_CUSTOMER_EMAILS_TO', 'anugrahpanji@zccomputer.com', 'Send copy of Customer GV Send emails to the following email addresses, in this format: Name 1 &lt;email@address1&gt;, Name 2 &lt;email@address2&gt;', 12, 18, NULL, '2024-12-18 09:59:07', NULL, NULL, '{\"error\":\"TEXT_EMAIL_ADDRESS_VALIDATE\",\"id\":\"FILTER_CALLBACK\",\"options\":{\"options\":[\"configurationValidation\",\"sanitizeEmailNullOK\"]}}'),
(291, 'Send Copy of Admin GV Mail Emails To - Status', 'SEND_EXTRA_GV_ADMIN_EMAILS_TO_STATUS', '0', 'Send copy of Admin GV Mail Status<br />0= off 1= on', 12, 19, NULL, '2024-12-18 09:59:07', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'),', NULL),
(292, 'Send Copy of Customer Admin GV Mail Emails To', 'SEND_EXTRA_GV_ADMIN_EMAILS_TO', 'anugrahpanji@zccomputer.com', 'Send copy of Admin GV Mail emails to the following email addresses, in this format: Name 1 &lt;email@address1&gt;, Name 2 &lt;email@address2&gt;', 12, 20, NULL, '2024-12-18 09:59:07', NULL, NULL, '{\"error\":\"TEXT_EMAIL_ADDRESS_VALIDATE\",\"id\":\"FILTER_CALLBACK\",\"options\":{\"options\":[\"configurationValidation\",\"sanitizeEmailNullOK\"]}}'),
(293, 'Send Copy of Admin Discount Coupon Mail Emails To - Status', 'SEND_EXTRA_DISCOUNT_COUPON_ADMIN_EMAILS_TO_STATUS', '0', 'Send copy of Admin Discount Coupon Mail Status<br />0= off 1= on', 12, 21, NULL, '2024-12-18 09:59:07', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'),', NULL),
(294, 'Send Copy of Customer Admin Discount Coupon Mail Emails To', 'SEND_EXTRA_DISCOUNT_COUPON_ADMIN_EMAILS_TO', 'anugrahpanji@zccomputer.com', 'Send copy of Admin Discount Coupon Mail emails to the following email addresses, in this format: Name 1 &lt;email@address1&gt;, Name 2 &lt;email@address2&gt;', 12, 22, NULL, '2024-12-18 09:59:07', NULL, NULL, '{\"error\":\"TEXT_EMAIL_ADDRESS_VALIDATE\",\"id\":\"FILTER_CALLBACK\",\"options\":{\"options\":[\"configurationValidation\",\"sanitizeEmailNullOK\"]}}'),
(295, 'Send Copy of Admin Orders Status Emails To - Status', 'SEND_EXTRA_ORDERS_STATUS_ADMIN_EMAILS_TO_STATUS', '0', 'Send copy of Admin Orders Status Status<br />0= off 1= on', 12, 23, NULL, '2024-12-18 09:59:07', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'),', NULL),
(296, 'Send Copy of Admin Orders Status Emails To', 'SEND_EXTRA_ORDERS_STATUS_ADMIN_EMAILS_TO', 'anugrahpanji@zccomputer.com', 'Send copy of Admin Orders Status emails to the following email addresses, in this format: Name 1 &lt;email@address1&gt;, Name 2 &lt;email@address2&gt;', 12, 24, NULL, '2024-12-18 09:59:07', NULL, NULL, '{\"error\":\"TEXT_EMAIL_ADDRESS_VALIDATE\",\"id\":\"FILTER_CALLBACK\",\"options\":{\"options\":[\"configurationValidation\",\"sanitizeEmailNullOK\"]}}'),
(297, 'Send Notice of Pending Reviews Emails To - Status', 'SEND_EXTRA_REVIEW_NOTIFICATION_EMAILS_TO_STATUS', '0', 'Send copy of Pending Reviews Status<br />0= off 1= on', 12, 25, NULL, '2024-12-18 09:59:07', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'),', NULL),
(298, 'Send Notice of Pending Reviews Emails To', 'SEND_EXTRA_REVIEW_NOTIFICATION_EMAILS_TO', 'anugrahpanji@zccomputer.com', 'Send copy of Pending Reviews emails to the following email addresses, in this format: Name 1 &lt;email@address1&gt;, Name 2 &lt;email@address2&gt;', 12, 26, NULL, '2024-12-18 09:59:07', NULL, NULL, '{\"error\":\"TEXT_EMAIL_ADDRESS_VALIDATE\",\"id\":\"FILTER_CALLBACK\",\"options\":{\"options\":[\"configurationValidation\",\"sanitizeEmailNullOK\"]}}'),
(299, 'Set \"Contact Us\" Email Dropdown List', 'CONTACT_US_LIST', '', 'On the \"Contact Us\" Page, set the list of email addresses , in this format: Name 1 &lt;email@address1&gt;, Name 2 &lt;email@address2&gt;', 12, 40, NULL, '2024-12-18 09:59:07', NULL, 'zen_cfg_textarea(', '{\"error\":\"TEXT_EMAIL_ADDRESS_VALIDATE\",\"id\":\"FILTER_CALLBACK\",\"options\":{\"options\":[\"configurationValidation\",\"sanitizeEmailNullOK\"]}}'),
(300, 'Contact Us - Show Store Name and Address', 'CONTACT_US_STORE_NAME_ADDRESS', '1', 'Include Store Name and Address<br />0= off 1= on', 12, 50, NULL, '2024-12-18 09:59:07', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(301, 'Send Low Stock Emails', 'SEND_LOWSTOCK_EMAIL', '0', 'When stock level is at or below low stock level send an email<br />0= off<br />1= on', 12, 60, '2024-12-18 09:59:07', '2024-12-18 09:59:07', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'),', NULL),
(302, 'Send Low Stock Emails To', 'SEND_EXTRA_LOW_STOCK_EMAILS_TO', 'anugrahpanji@zccomputer.com', 'When stock level is at or below low stock level send an email to this address, in this format: Name 1 &lt;email@address1&gt;, Name 2 &lt;email@address2&gt;', 12, 61, NULL, '2024-12-18 09:59:07', NULL, NULL, '{\"error\":\"TEXT_EMAIL_ADDRESS_VALIDATE\",\"id\":\"FILTER_CALLBACK\",\"options\":{\"options\":[\"configurationValidation\",\"sanitizeEmailNullOK\"]}}'),
(303, 'Display \"Newsletter Unsubscribe\" Link?', 'SHOW_NEWSLETTER_UNSUBSCRIBE_LINK', 'true', 'Show \"Newsletter Unsubscribe\" link in the \"Information\" side-box?', 12, 70, NULL, '2024-12-18 09:59:07', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'),', NULL),
(304, 'Audience-Select Count Display', 'AUDIENCE_SELECT_DISPLAY_COUNTS', 'true', 'When displaying lists of available audiences/recipients, should the recipients-count be included? <br /><em>(This may make things slower if you have a lot of customers or complex audience queries)</em>', 12, 90, NULL, '2024-12-18 09:59:07', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'),', NULL),
(305, 'Enable Downloads', 'DOWNLOAD_ENABLED', 'true', 'Enable the products download functions.', 13, 1, NULL, '2024-12-18 09:59:07', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(306, 'Download by Redirect', 'DOWNLOAD_BY_REDIRECT', 'true', 'Use browser redirection for download. Disable on non-Unix systems.<br /><br />Note: Set /pub to 777 when redirect is true', 13, 2, NULL, '2024-12-18 09:59:07', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(307, 'Download by streaming', 'DOWNLOAD_IN_CHUNKS', 'false', 'If download-by-redirect is disabled, and your PHP memory_limit setting is under 8 MB, you might need to enable this setting so that files are streamed in smaller segments to the browser.<br /><br />Has no effect if Download By Redirect is enabled.', 13, 2, NULL, '2024-12-18 09:59:07', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(308, 'Download Expiration (Number of Days)', 'DOWNLOAD_MAX_DAYS', '7', 'Set number of days before the download link expires. 0 means no limit.', 13, 3, NULL, '2024-12-18 09:59:07', NULL, '', NULL),
(309, 'Number of Downloads Allowed - Per Product', 'DOWNLOAD_MAX_COUNT', '5', 'Set the maximum number of downloads. 0 means no download authorized.', 13, 4, NULL, '2024-12-18 09:59:07', NULL, '', NULL),
(310, 'Downloads Controller Update Status Value', 'DOWNLOADS_ORDERS_STATUS_UPDATED_VALUE', '4', 'What orders_status resets the Download days and Max Downloads - Default is 4', 13, 10, '2024-12-18 09:59:07', '2024-12-18 09:59:07', NULL, NULL, NULL),
(311, 'Downloads Controller Order Status Value >= lower value', 'DOWNLOADS_CONTROLLER_ORDERS_STATUS', '2', 'Downloads Controller Order Status Value - Default >= 2<br /><br />Downloads are available for checkout based on the orders status. Orders with orders status greater than this value will be available for download. The orders status is set for an order by the Payment Modules. Set the lower range for this range.', 13, 12, '2024-12-18 09:59:07', '2024-12-18 09:59:07', NULL, NULL, NULL),
(312, 'Downloads Controller Order Status Value <= upper value', 'DOWNLOADS_CONTROLLER_ORDERS_STATUS_END', '4', 'Downloads Controller Order Status Value - Default <= 4<br /><br />Downloads are available for checkout based on the orders status. Orders with orders status less than this value will be available for download. The orders status is set for an order by the Payment Modules.  Set the upper range for this range.', 13, 13, '2024-12-18 09:59:07', '2024-12-18 09:59:07', NULL, NULL, NULL),
(313, 'Enable Price Factor', 'ATTRIBUTES_ENABLED_PRICE_FACTOR', 'true', 'Enable the Attributes Price Factor.', 13, 25, NULL, '2024-12-18 09:59:08', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(314, 'Enable Qty Price Discount', 'ATTRIBUTES_ENABLED_QTY_PRICES', 'true', 'Enable the Attributes Quantity Price Discounts.', 13, 26, NULL, '2024-12-18 09:59:08', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(315, 'Enable Attribute Images', 'ATTRIBUTES_ENABLED_IMAGES', 'true', 'Enable the Attributes Images.', 13, 28, NULL, '2024-12-18 09:59:08', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(316, 'Enable Text Pricing by word or letter', 'ATTRIBUTES_ENABLED_TEXT_PRICES', 'true', 'Enable the Attributes Text Pricing by word or letter.', 13, 35, NULL, '2024-12-18 09:59:08', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(317, 'Text Pricing - Spaces are Free', 'TEXT_SPACES_FREE', '1', 'On Text pricing Spaces are Free<br /><br />0= off 1= on', 13, 36, NULL, '2024-12-18 09:59:08', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(318, 'Read Only option type - Ignore for Add to Cart', 'PRODUCTS_OPTIONS_TYPE_READONLY_IGNORED', '1', 'When a Product only uses READONLY attributes, should the Add to Cart button be On or Off?<br />0= OFF<br />1= ON', 13, 37, NULL, '2024-12-18 09:59:08', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(319, 'Enable GZip Compression', 'GZIP_LEVEL', '0', '0= off 1= on', 14, 1, NULL, '2024-12-18 09:59:08', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'),', NULL),
(320, 'Session Directory', 'SESSION_WRITE_DIRECTORY', 'C:\\xampp\\htdocs\\zc_computer/cache', 'This should point to the folder specified in your DIR_FS_SQL_CACHE setting in your configure.php files.', 15, 1, NULL, '2024-12-18 09:59:08', NULL, NULL, NULL),
(321, 'Cookie Domain', 'SESSION_USE_FQDN', 'True', 'If True the full domain name will be used to store the cookie, e.g. www.mydomain.com. If False only a partial domain name will be used, e.g. mydomain.com. If you are unsure about this, always leave set to true.', 15, 2, NULL, '2024-12-18 09:59:08', NULL, 'zen_cfg_select_option(array(\'True\', \'False\'), ', NULL),
(322, 'Force Cookie Use', 'SESSION_FORCE_COOKIE_USE', 'False', 'Force the use of sessions when cookies are only enabled.', 15, 2, NULL, '2024-12-18 09:59:08', NULL, 'zen_cfg_select_option(array(\'True\', \'False\'), ', NULL),
(323, 'Check SSL Session ID', 'SESSION_CHECK_SSL_SESSION_ID', 'False', 'Validate the SSL_SESSION_ID on every secure HTTPS page request.', 15, 3, NULL, '2024-12-18 09:59:08', NULL, 'zen_cfg_select_option(array(\'True\', \'False\'), ', NULL),
(324, 'Check User Agent', 'SESSION_CHECK_USER_AGENT', 'False', 'Validate the clients browser user agent on every page request.', 15, 4, NULL, '2024-12-18 09:59:08', NULL, 'zen_cfg_select_option(array(\'True\', \'False\'), ', NULL),
(325, 'Check IP Address', 'SESSION_CHECK_IP_ADDRESS', 'False', 'Validate the clients IP address on every page request.', 15, 5, NULL, '2024-12-18 09:59:08', NULL, 'zen_cfg_select_option(array(\'True\', \'False\'), ', NULL),
(326, 'Prevent Spider Sessions', 'SESSION_BLOCK_SPIDERS', 'True', 'Prevent known spiders from starting a session.', 15, 6, NULL, '2024-12-18 09:59:08', NULL, 'zen_cfg_select_option(array(\'True\', \'False\'), ', NULL),
(327, 'Recreate Session', 'SESSION_RECREATE', 'True', 'Recreate the session to generate a new session ID when the customer logs on or creates an account.', 15, 7, NULL, '2024-12-18 09:59:08', NULL, 'zen_cfg_select_option(array(\'True\', \'False\'), ', NULL),
(328, 'IP to Host Conversion Status', 'SESSION_IP_TO_HOST_ADDRESS', 'true', 'Convert IP Address to Host Address<br /><br />Note: on some servers this can slow down the initial start of a session or execution of Emails', 15, 10, NULL, '2024-12-18 09:59:08', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(329, 'Length of the redeem code', 'SECURITY_CODE_LENGTH', '10', 'Enter the length of the redeem code<br />The longer the more secure', 16, 1, NULL, '2024-12-18 09:59:08', NULL, NULL, NULL),
(330, 'Default Order Status For Zero Balance Orders', 'DEFAULT_ZERO_BALANCE_ORDERS_STATUS_ID', '2', 'When an order\'s balance is zero, this order status will be assigned to it.', 16, 0, NULL, '2024-12-18 09:59:08', 'zen_get_order_status_name', 'zen_cfg_pull_down_order_statuses(', NULL),
(331, 'New Signup Discount Coupon ID#', 'NEW_SIGNUP_DISCOUNT_COUPON', '', 'Select the coupon<br />', 16, 75, NULL, '2024-12-18 09:59:08', NULL, 'zen_cfg_select_coupon_id(', NULL),
(332, 'New Signup Gift Voucher Amount', 'NEW_SIGNUP_GIFT_VOUCHER_AMOUNT', '', 'Leave blank for none<br />Or enter an amount ie. 10 for $10.00', 16, 76, NULL, '2024-12-18 09:59:08', NULL, NULL, NULL),
(333, 'Maximum Discount Coupons Per Page', 'MAX_DISPLAY_SEARCH_RESULTS_DISCOUNT_COUPONS', '20', 'Number of Discount Coupons to list per Page', 16, 81, NULL, '2024-12-18 09:59:08', NULL, NULL, NULL),
(334, 'Maximum Discount Coupon Report Results Per Page', 'MAX_DISPLAY_SEARCH_RESULTS_DISCOUNT_COUPONS_REPORTS', '20', 'Number of Discount Coupons to list on Reports Page', 16, 81, NULL, '2024-12-18 09:59:08', NULL, NULL, NULL),
(335, 'Credit Card Enable Status - VISA', 'CC_ENABLED_VISA', '1', 'Accept VISA 0= off 1= on', 17, 1, NULL, '2024-12-18 09:59:08', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(336, 'Credit Card Enable Status - MasterCard', 'CC_ENABLED_MC', '1', 'Accept MasterCard 0= off 1= on', 17, 2, NULL, '2024-12-18 09:59:08', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(337, 'Credit Card Enable Status - AmericanExpress', 'CC_ENABLED_AMEX', '0', 'Accept AmericanExpress 0= off 1= on', 17, 3, NULL, '2024-12-18 09:59:08', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(338, 'Credit Card Enable Status - Diners Club', 'CC_ENABLED_DINERS_CLUB', '0', 'Accept Diners Club 0= off 1= on', 17, 4, NULL, '2024-12-18 09:59:08', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(339, 'Credit Card Enable Status - Discover Card', 'CC_ENABLED_DISCOVER', '0', 'Accept Discover Card 0= off 1= on', 17, 5, NULL, '2024-12-18 09:59:08', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(340, 'Credit Card Enable Status - JCB', 'CC_ENABLED_JCB', '0', 'Accept JCB 0= off 1= on', 17, 6, NULL, '2024-12-18 09:59:08', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(341, 'Credit Card Enable Status - AUSTRALIAN BANKCARD', 'CC_ENABLED_AUSTRALIAN_BANKCARD', '0', 'Accept AUSTRALIAN BANKCARD 0= off 1= on', 17, 7, NULL, '2024-12-18 09:59:08', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL);
INSERT INTO `configuration` (`configuration_id`, `configuration_title`, `configuration_key`, `configuration_value`, `configuration_description`, `configuration_group_id`, `sort_order`, `last_modified`, `date_added`, `use_function`, `set_function`, `val_function`) VALUES
(342, 'Credit Card Enable Status - SOLO', 'CC_ENABLED_SOLO', '0', 'Accept SOLO Card 0= off 1= on', 17, 8, NULL, '2024-12-18 09:59:08', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(343, 'Credit Card Enable Status - Debit', 'CC_ENABLED_DEBIT', '0', 'Accept Debit Cards 0= off 1= on<br>NOTE: This is not deeply integrated at this time, and this setting may be redundant if your payment modules do not yet specifically have code to honour this switch.', 17, 9, NULL, '2024-12-18 09:59:08', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(344, 'Credit Card Enable Status - Maestro', 'CC_ENABLED_MAESTRO', '0', 'Accept MAESTRO Card 0= off 1= on', 17, 10, NULL, '2024-12-18 09:59:08', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(345, 'Credit Card Enabled - Show on Payment', 'SHOW_ACCEPTED_CREDIT_CARDS', '0', 'Show accepted credit cards on Payment page?<br />0= off<br />1= As Text<br />2= As Images<br /><br />Note: images and text must be defined in both the database and language file for specific credit card types.', 17, 50, NULL, '2024-12-18 09:59:08', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), ', NULL),
(346, 'This module is installed', 'MODULE_ORDER_TOTAL_GV_STATUS', 'true', '', 6, 1, NULL, '2003-10-30 22:16:40', NULL, 'zen_cfg_select_option(array(\'true\'),', NULL),
(347, 'Sort Order', 'MODULE_ORDER_TOTAL_GV_SORT_ORDER', '840', 'Sort order of display.', 6, 2, NULL, '2003-10-30 22:16:40', NULL, NULL, NULL),
(348, 'Queue Purchases', 'MODULE_ORDER_TOTAL_GV_QUEUE', 'true', 'Do you want to queue purchases of the Gift Voucher?', 6, 3, NULL, '2003-10-30 22:16:40', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'),', NULL),
(349, 'Include Shipping', 'MODULE_ORDER_TOTAL_GV_INC_SHIPPING', 'true', 'Include Shipping in calculation', 6, 5, NULL, '2003-10-30 22:16:40', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'),', NULL),
(350, 'Include Tax', 'MODULE_ORDER_TOTAL_GV_INC_TAX', 'true', 'Include Tax in calculation.', 6, 6, NULL, '2003-10-30 22:16:40', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'),', NULL),
(351, 'Re-calculate Tax', 'MODULE_ORDER_TOTAL_GV_CALC_TAX', 'None', 'Re-Calculate Tax', 6, 7, NULL, '2003-10-30 22:16:40', NULL, 'zen_cfg_select_option(array(\'None\', \'Standard\', \'Credit Note\'),', NULL),
(352, 'Tax Class', 'MODULE_ORDER_TOTAL_GV_TAX_CLASS', '0', 'Use the following tax class when treating Gift Voucher as Credit Note.', 6, 0, NULL, '2003-10-30 22:16:40', 'zen_get_tax_class_title', 'zen_cfg_pull_down_tax_classes(', NULL),
(353, 'Credit including Tax', 'MODULE_ORDER_TOTAL_GV_CREDIT_TAX', 'false', 'Add tax to purchased Gift Voucher when crediting to Account', 6, 8, NULL, '2003-10-30 22:16:40', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'),', NULL),
(354, 'Set Order Status', 'MODULE_ORDER_TOTAL_GV_ORDER_STATUS_ID', '0', 'Set the status of orders made where GV covers full payment', 6, 0, NULL, '2024-12-18 09:59:08', 'zen_get_order_status_name', 'zen_cfg_pull_down_order_statuses(', NULL),
(355, 'This module is installed', 'MODULE_ORDER_TOTAL_LOWORDERFEE_STATUS', 'true', '', 6, 1, NULL, '2003-10-30 22:16:43', NULL, 'zen_cfg_select_option(array(\'true\'),', NULL),
(356, 'Sort Order', 'MODULE_ORDER_TOTAL_LOWORDERFEE_SORT_ORDER', '400', 'Sort order of display.', 6, 2, NULL, '2003-10-30 22:16:43', NULL, NULL, NULL),
(357, 'Allow Low Order Fee', 'MODULE_ORDER_TOTAL_LOWORDERFEE_LOW_ORDER_FEE', 'false', 'Do you want to allow low order fees?', 6, 3, NULL, '2003-10-30 22:16:43', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'),', NULL),
(358, 'Order Fee For Orders Under', 'MODULE_ORDER_TOTAL_LOWORDERFEE_ORDER_UNDER', '50', 'Add the low order fee to orders under this amount.', 6, 4, NULL, '2003-10-30 22:16:43', 'currencies->format', NULL, NULL),
(359, 'Order Fee', 'MODULE_ORDER_TOTAL_LOWORDERFEE_FEE', '5', 'For Percentage Calculation - include a % Example: 10%<br />For a flat amount just enter the amount - Example: 5 for $5.00', 6, 5, NULL, '2003-10-30 22:16:43', '', NULL, NULL),
(360, 'Attach Low Order Fee On Orders Made', 'MODULE_ORDER_TOTAL_LOWORDERFEE_DESTINATION', 'both', 'Attach low order fee for orders sent to the set destination.', 6, 6, NULL, '2003-10-30 22:16:43', NULL, 'zen_cfg_select_option(array(\'national\', \'international\', \'both\'),', NULL),
(361, 'Tax Class', 'MODULE_ORDER_TOTAL_LOWORDERFEE_TAX_CLASS', '0', 'Use the following tax class on the low order fee.', 6, 7, NULL, '2003-10-30 22:16:43', 'zen_get_tax_class_title', 'zen_cfg_pull_down_tax_classes(', NULL),
(362, 'No Low Order Fee on Virtual Products', 'MODULE_ORDER_TOTAL_LOWORDERFEE_VIRTUAL', 'false', 'Do not charge Low Order Fee when cart is Virtual Products Only', 6, 8, NULL, '2004-04-20 22:16:43', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'),', NULL),
(363, 'No Low Order Fee on Gift Vouchers', 'MODULE_ORDER_TOTAL_LOWORDERFEE_GV', 'false', 'Do not charge Low Order Fee when cart is Gift Vouchers Only', 6, 9, NULL, '2004-04-20 22:16:43', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'),', NULL),
(364, 'This module is installed', 'MODULE_ORDER_TOTAL_SHIPPING_STATUS', 'true', '', 6, 1, NULL, '2003-10-30 22:16:46', NULL, 'zen_cfg_select_option(array(\'true\'),', NULL),
(365, 'Sort Order', 'MODULE_ORDER_TOTAL_SHIPPING_SORT_ORDER', '200', 'Sort order of display.', 6, 2, NULL, '2003-10-30 22:16:46', NULL, NULL, NULL),
(366, 'Allow Free Shipping', 'MODULE_ORDER_TOTAL_SHIPPING_FREE_SHIPPING', 'false', 'Do you want to allow free shipping?', 6, 3, NULL, '2003-10-30 22:16:46', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'),', NULL),
(367, 'Free Shipping For Orders Over', 'MODULE_ORDER_TOTAL_SHIPPING_FREE_SHIPPING_OVER', '50', 'Provide free shipping for orders over the set amount.', 6, 4, NULL, '2003-10-30 22:16:46', 'currencies->format', NULL, NULL),
(368, 'Provide Free Shipping For Orders Made', 'MODULE_ORDER_TOTAL_SHIPPING_DESTINATION', 'national', 'Provide free shipping for orders sent to the set destination.', 6, 5, NULL, '2003-10-30 22:16:46', NULL, 'zen_cfg_select_option(array(\'national\', \'international\', \'both\'),', NULL),
(369, 'This module is installed', 'MODULE_ORDER_TOTAL_SUBTOTAL_STATUS', 'true', '', 6, 1, NULL, '2003-10-30 22:16:49', NULL, 'zen_cfg_select_option(array(\'true\'),', NULL),
(370, 'Sort Order', 'MODULE_ORDER_TOTAL_SUBTOTAL_SORT_ORDER', '100', 'Sort order of display.', 6, 2, NULL, '2003-10-30 22:16:49', NULL, NULL, NULL),
(371, 'This module is installed', 'MODULE_ORDER_TOTAL_TAX_STATUS', 'true', '', 6, 1, NULL, '2003-10-30 22:16:52', NULL, 'zen_cfg_select_option(array(\'true\'),', NULL),
(372, 'Sort Order', 'MODULE_ORDER_TOTAL_TAX_SORT_ORDER', '300', 'Sort order of display.', 6, 2, NULL, '2003-10-30 22:16:52', NULL, NULL, NULL),
(373, 'This module is installed', 'MODULE_ORDER_TOTAL_TOTAL_STATUS', 'true', '', 6, 1, NULL, '2003-10-30 22:16:55', NULL, 'zen_cfg_select_option(array(\'true\'),', NULL),
(374, 'Sort Order', 'MODULE_ORDER_TOTAL_TOTAL_SORT_ORDER', '999', 'Sort order of display.', 6, 2, NULL, '2003-10-30 22:16:55', NULL, NULL, NULL),
(375, 'Tax Class', 'MODULE_ORDER_TOTAL_COUPON_TAX_CLASS', '0', 'Use the following tax class when treating Discount Coupon as Credit Note.', 6, 0, NULL, '2003-10-30 22:16:36', 'zen_get_tax_class_title', 'zen_cfg_pull_down_tax_classes(', NULL),
(376, 'Include Tax', 'MODULE_ORDER_TOTAL_COUPON_INC_TAX', 'false', 'Include Tax in calculation.', 6, 6, NULL, '2003-10-30 22:16:36', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'),', NULL),
(377, 'Sort Order', 'MODULE_ORDER_TOTAL_COUPON_SORT_ORDER', '280', 'Sort order of display.', 6, 2, NULL, '2003-10-30 22:16:36', NULL, NULL, NULL),
(378, 'Include Shipping', 'MODULE_ORDER_TOTAL_COUPON_INC_SHIPPING', 'false', 'Include Shipping in calculation', 6, 5, NULL, '2003-10-30 22:16:36', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'),', NULL),
(379, 'This module is installed', 'MODULE_ORDER_TOTAL_COUPON_STATUS', 'true', '', 6, 1, NULL, '2003-10-30 22:16:36', NULL, 'zen_cfg_select_option(array(\'true\'),', NULL),
(380, 'Re-calculate Tax', 'MODULE_ORDER_TOTAL_COUPON_CALC_TAX', 'Standard', 'Re-Calculate Tax', 6, 7, NULL, '2003-10-30 22:16:36', NULL, 'zen_cfg_select_option(array(\'None\', \'Standard\', \'Credit Note\'),', NULL),
(381, 'Product option type Select', 'PRODUCTS_OPTIONS_TYPE_SELECT', '0', 'The number representing the Select type of product option.', 6, NULL, '2024-12-18 09:59:09', '2024-12-18 09:59:09', NULL, NULL, NULL),
(382, 'Text product option type', 'PRODUCTS_OPTIONS_TYPE_TEXT', '1', 'Numeric value of the text product option type', 6, NULL, '2024-12-18 09:59:09', '2024-12-18 09:59:09', NULL, NULL, NULL),
(383, 'Radio button product option type', 'PRODUCTS_OPTIONS_TYPE_RADIO', '2', 'Numeric value of the radio button product option type', 6, NULL, '2024-12-18 09:59:09', '2024-12-18 09:59:09', NULL, NULL, NULL),
(384, 'Check box product option type', 'PRODUCTS_OPTIONS_TYPE_CHECKBOX', '3', 'Numeric value of the check box product option type', 6, NULL, '2024-12-18 09:59:09', '2024-12-18 09:59:09', NULL, NULL, NULL),
(385, 'File product option type', 'PRODUCTS_OPTIONS_TYPE_FILE', '4', 'Numeric value of the file product option type', 6, NULL, '2024-12-18 09:59:09', '2024-12-18 09:59:09', NULL, NULL, NULL),
(386, 'ID for text and file products options values', 'PRODUCTS_OPTIONS_VALUES_TEXT_ID', '0', 'Numeric value of the products_options_values_id used by the text and file attributes.', 6, NULL, '2024-12-18 09:59:09', '2024-12-18 09:59:09', NULL, NULL, NULL),
(387, 'Upload prefix', 'UPLOAD_PREFIX', 'upload_', 'Prefix used to differentiate between upload options and other options', 6, NULL, '2024-12-18 09:59:09', '2024-12-18 09:59:09', NULL, NULL, NULL),
(388, 'Text prefix', 'TEXT_PREFIX', 'txt_', 'Prefix used to differentiate between text option values and other option values', 6, NULL, '2024-12-18 09:59:09', '2024-12-18 09:59:09', NULL, NULL, NULL),
(389, 'Read Only option type', 'PRODUCTS_OPTIONS_TYPE_READONLY', '5', 'Numeric value of the file product option type', 6, NULL, '2024-12-18 09:59:09', '2024-12-18 09:59:09', NULL, NULL, NULL),
(390, 'login mode https', 'SSLPWSTATUSCHECK', '0:0', 'System setting. Do not edit.', 6, 99, '2024-12-18 10:02:06', '2024-12-18 09:59:09', NULL, NULL, NULL),
(391, 'Default Target Category (Products to Multiple Categories Manager)', 'P2C_TARGET_CATEGORY_DEFAULT', '', 'Default Target Category for Products to Multiple Categories Manager (set on page)', 6, 100, NULL, '0001-01-01 00:00:00', NULL, NULL, NULL),
(392, 'Products Info - Products Option Name Sort Order', 'PRODUCTS_OPTIONS_SORT_ORDER', '0', 'Sort order of Option Names for Products Info<br />0= Sort Order, Option Name<br />1= Option Name', 18, 35, '2024-12-18 09:59:09', '2024-12-18 09:59:09', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'),', NULL),
(393, 'Products Info - Product Option Value of Attributes Sort Order', 'PRODUCTS_OPTIONS_SORT_BY_PRICE', '1', 'Sort order of Product Option Values of Attributes for Products Info<br />0= Sort Order, Price<br />1= Sort Order, Option Value Name', 18, 36, '2024-12-18 09:59:09', '2024-12-18 09:59:09', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'),', NULL),
(394, 'Product Info - Show Option Values Name Below Attributes Image', 'PRODUCT_IMAGES_ATTRIBUTES_NAMES', '1', 'Product Info - Show the name of the Option Value beneath the Attribute Image?<br />0= off 1= on', 18, 41, NULL, '2024-12-18 09:59:09', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(395, 'Product Info - Show Sales Discount Savings Status', 'SHOW_SALE_DISCOUNT_STATUS', '1', 'Product Info - Show the amount of discount savings?<br />0= off 1= on', 18, 45, NULL, '2024-12-18 09:59:09', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(396, 'Product Info - Show Sales Discount Savings Dollars or Percentage', 'SHOW_SALE_DISCOUNT', '1', 'Product Info - Show the amount of discount savings display as:<br />1= % off 2= $amount off', 18, 46, NULL, '2024-12-18 09:59:09', NULL, 'zen_cfg_select_option(array(\'1\', \'2\'), ', NULL),
(397, 'Product Info - Show Sales Discount Savings Percentage Decimals', 'SHOW_SALE_DISCOUNT_DECIMALS', '0', 'Product Info - Show discount savings display as a Percentage with how many decimals?:<br />Default= 0', 18, 47, NULL, '2024-12-18 09:59:09', NULL, NULL, NULL),
(398, 'Product Info - Price is Free Image or Text Status', 'OTHER_IMAGE_PRICE_IS_FREE_ON', '1', 'Product Info - Show the Price is Free Image or Text on Displayed Price<br />0= Text<br />1= Image', 18, 50, NULL, '2024-12-18 09:59:09', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(399, 'Product Info - Price is Call for Price Image or Text Status', 'PRODUCTS_PRICE_IS_CALL_IMAGE_ON', '1', 'Product Info - Show the Price is Call for Price Image or Text on Displayed Price<br />0= Text<br />1= Image', 18, 51, NULL, '2024-12-18 09:59:09', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(400, 'Product Quantity Box Status - Adding New Products', 'PRODUCTS_QTY_BOX_STATUS', '1', 'What should the Default Quantity Box Status be set to when adding New Products?<br /><br />0= off<br />1= on<br />NOTE: This will show a Qty Box when ON and default the Add to Cart to 1', 18, 55, NULL, '2024-12-18 09:59:09', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(401, 'Product Reviews Require Approval', 'REVIEWS_APPROVAL', '1', 'Do product reviews require approval?<br /><br />Note: When Review Status is off, it will also not show<br /><br />0= off 1= on', 18, 62, NULL, '2024-12-18 09:59:09', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(402, 'Product page generated &lt;title&gt; tag - include Product Model?', 'META_TAG_INCLUDE_MODEL', '1', 'When custom Keywords and Description meta tags are not set, include the Product Model in the generated page &lt;title&gt; tag?<br><br>0=no / 1=yes', 18, 69, NULL, '2024-12-18 09:59:09', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(403, 'Product page generated &lt;title&gt; tag - include Product Price?', 'META_TAG_INCLUDE_PRICE', '1', 'When custom Keywords and Description meta tags are not set, include the Product Price in the generated page &lt;title&gt; tag?<br><br>0=no / 1=yes', 18, 70, NULL, '2024-12-18 09:59:09', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(404, 'Product page generated &lt;meta - description&gt; tag - Maximum Length', 'MAX_META_TAG_DESCRIPTION_LENGTH', '50', 'When custom Keywords and Description meta tags are not set, limit the generated &lt;meta - description&gt; tag to this number of words. Default 50.', 18, 71, NULL, '2024-12-18 09:59:09', NULL, NULL, NULL),
(405, 'Also Purchased Products Columns per Row', 'SHOW_PRODUCT_INFO_COLUMNS_ALSO_PURCHASED_PRODUCTS', '3', 'Also Purchased Products Columns per Row<br />0= off or set the sort order', 18, 72, NULL, '2024-12-18 09:59:09', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\', \'5\', \'6\', \'7\', \'8\', \'9\', \'10\', \'11\', \'12\'), ', NULL),
(406, 'Previous Next - Navigation Bar Position', 'PRODUCT_INFO_PREVIOUS_NEXT', '1', 'Location of Previous/Next Navigation Bar<br />0= off<br />1= Top of Page<br />2= Bottom of Page<br />3= Both Top and Bottom of Page', 18, 21, '2024-12-18 09:59:09', '2024-12-18 09:59:09', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Off\'), array(\'id\'=>\'1\', \'text\'=>\'Top of Page\'), array(\'id\'=>\'2\', \'text\'=>\'Bottom of Page\'), array(\'id\'=>\'3\', \'text\'=>\'Both Top & Bottom of Page\')),', NULL),
(407, 'Previous Next - Sort Order', 'PRODUCT_INFO_PREVIOUS_NEXT_SORT', '1', 'Products Display Order by<br />0= Product ID<br />1= Product Name<br />2= Model<br />3= Price, Product Name<br />4= Price, Model<br />5= Product Name, Model<br />6= Product Sort Order', 18, 22, '2024-12-18 09:59:09', '2024-12-18 09:59:09', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Product ID\'), array(\'id\'=>\'1\', \'text\'=>\'Name\'), array(\'id\'=>\'2\', \'text\'=>\'Product Model\'), array(\'id\'=>\'3\', \'text\'=>\'Product Price - Name\'), array(\'id\'=>\'4\', \'text\'=>\'Product Price - Model\'), array(\'id\'=>\'5\', \'text\'=>\'Product Name - Model\'), array(\'id\'=>\'6\', \'text\'=>\'Product Sort Order\')),', NULL),
(408, 'Previous Next - Button and Image Status', 'SHOW_PREVIOUS_NEXT_STATUS', '0', 'Button and Product Image status settings are:<br />0= Off<br />1= On', 18, 20, '2024-12-18 09:59:09', '2024-12-18 09:59:09', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Off\'), array(\'id\'=>\'1\', \'text\'=>\'On\')),', NULL),
(409, 'Previous Next - Button and Image Settings', 'SHOW_PREVIOUS_NEXT_IMAGES', '0', 'Show Previous/Next Button and Product Image Settings<br />0= Button Only<br />1= Button and Product Image<br />2= Product Image Only', 18, 21, '2024-12-18 09:59:09', '2024-12-18 09:59:09', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Button Only\'), array(\'id\'=>\'1\', \'text\'=>\'Button and Product Image\'), array(\'id\'=>\'2\', \'text\'=>\'Product Image Only\')),', NULL),
(410, 'Previous Next - Image Width?', 'PREVIOUS_NEXT_IMAGE_WIDTH', '50', 'Previous/Next Image Width?', 18, 22, NULL, '2024-12-18 09:59:09', '', '', NULL),
(411, 'Previous Next - Image Height?', 'PREVIOUS_NEXT_IMAGE_HEIGHT', '40', 'Previous/Next Image Height?', 18, 23, NULL, '2024-12-18 09:59:09', '', '', NULL),
(412, 'Previous Next - Navigation Includes Category Position', 'PRODUCT_INFO_CATEGORIES', '1', 'Product\'s Category Image and Name Alignment Above Previous/Next Navigation Bar<br />0= off<br />1= Align Left<br />2= Align Center<br />3= Align Right', 18, 20, '2024-12-18 09:59:09', '2024-12-18 09:59:09', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Off\'), array(\'id\'=>\'1\', \'text\'=>\'Align Left\'), array(\'id\'=>\'2\', \'text\'=>\'Align Center\'), array(\'id\'=>\'3\', \'text\'=>\'Align Right\')),', NULL),
(413, 'Previous Next - Navigation Includes Category Name and Image Status', 'PRODUCT_INFO_CATEGORIES_IMAGE_STATUS', '2', 'Product\'s Category Image and Name Status<br />0= Category Name and Image always shows<br />1= Category Name only<br />2= Category Name and Image when not blank', 18, 20, '2024-12-18 09:59:09', '2024-12-18 09:59:09', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Category Name and Image Always\'), array(\'id\'=>\'1\', \'text\'=>\'Category Name only\'), array(\'id\'=>\'2\', \'text\'=>\'Category Name and Image when not blank\')),', NULL),
(414, 'Column Width - Left Boxes', 'BOX_WIDTH_LEFT', '150px', 'Width of the Left Column Boxes<br />px may be included<br />Default = 150px', 19, 1, NULL, '2003-11-21 22:16:36', NULL, NULL, NULL),
(415, 'Column Width - Right Boxes', 'BOX_WIDTH_RIGHT', '150px', 'Width of the Right Column Boxes<br />px may be included<br />Default = 150px', 19, 2, NULL, '2003-11-21 22:16:36', NULL, NULL, NULL),
(416, 'Bread Crumbs Navigation Separator', 'BREAD_CRUMBS_SEPARATOR', '&nbsp;::&nbsp;', 'Enter the separator symbol to appear between the Navigation Bread Crumb trail<br />Note: Include spaces with the &amp;nbsp; symbol if you want them part of the separator.<br />Default = &amp;nbsp;::&amp;nbsp;', 19, 3, NULL, '2003-11-21 22:16:36', NULL, 'zen_cfg_textarea_small(', NULL),
(417, 'Define Breadcrumb Status', 'DEFINE_BREADCRUMB_STATUS', '1', 'Enable the Breadcrumb Trail Links?<br />0= OFF<br />1= ON<br />2= Off for Home Page Only', 19, 4, NULL, '2024-12-18 09:59:09', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), ', NULL),
(418, 'Bestsellers - Number Padding', 'BEST_SELLERS_FILLER', '&nbsp;', 'What do you want to Pad the numbers with?<br />Default = &amp;nbsp;', 19, 5, NULL, '2003-11-21 22:16:36', NULL, 'zen_cfg_textarea_small(', NULL),
(419, 'Bestsellers - Truncate Product Names', 'BEST_SELLERS_TRUNCATE', '35', 'What size do you want to truncate the Product Names?<br />Default = 35', 19, 6, NULL, '2003-11-21 22:16:36', NULL, NULL, NULL),
(420, 'Bestsellers - Truncate Product Names followed by ...', 'BEST_SELLERS_TRUNCATE_MORE', 'true', 'When truncated Product Names follow with ...<br />Default = true', 19, 7, '2003-03-21 13:08:25', '2003-03-21 11:42:47', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'),', NULL),
(421, 'Categories Box - Show Specials Link', 'SHOW_CATEGORIES_BOX_SPECIALS', 'true', 'Show Specials Link in the Categories Box', 19, 8, '2003-03-21 13:08:25', '2003-03-21 11:42:47', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'),', NULL),
(422, 'Categories Box - Show Products New Link', 'SHOW_CATEGORIES_BOX_PRODUCTS_NEW', 'true', 'Show Products New Link in the Categories Box', 19, 9, '2003-03-21 13:08:25', '2003-03-21 11:42:47', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'),', NULL),
(423, 'Shopping Cart Box Status', 'SHOW_SHOPPING_CART_BOX_STATUS', '1', 'Shopping Cart Shows<br />0= Always<br />1= Only when full<br />2= Only when full but not when viewing the Shopping Cart', 19, 10, NULL, '2024-12-18 09:59:10', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), ', NULL),
(424, 'Categories Box - Show Featured Products Link', 'SHOW_CATEGORIES_BOX_FEATURED_PRODUCTS', 'true', 'Show Featured Products Link in the Categories Box', 19, 11, '2003-03-21 13:08:25', '2003-03-21 11:42:47', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'),', NULL),
(425, 'Categories Box - Show Products All Link', 'SHOW_CATEGORIES_BOX_PRODUCTS_ALL', 'true', 'Show Products All Link in the Categories Box', 19, 12, '2003-03-21 13:08:25', '2003-03-21 11:42:47', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'),', NULL),
(426, 'Column Left Status - Global', 'COLUMN_LEFT_STATUS', '1', 'Show Column Left, unless page override exists?<br />0= Column Left is always off<br />1= Column Left is on, unless page override', 19, 15, NULL, '2024-12-18 09:59:10', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(427, 'Column Right Status - Global', 'COLUMN_RIGHT_STATUS', '1', 'Show Column Right, unless page override exists?<br />0= Column Right is always off<br />1= Column Right is on, unless page override', 19, 16, NULL, '2024-12-18 09:59:10', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(428, 'Column Width - Left', 'COLUMN_WIDTH_LEFT', '150px', 'Width of the Left Column<br />px may be included<br />Default = 150px', 19, 20, NULL, '2003-11-21 22:16:36', NULL, NULL, NULL),
(429, 'Column Width - Right', 'COLUMN_WIDTH_RIGHT', '150px', 'Width of the Right Column<br />px may be included<br />Default = 150px', 19, 21, NULL, '2003-11-21 22:16:36', NULL, NULL, NULL),
(430, 'Categories Separator between links Status', 'SHOW_CATEGORIES_SEPARATOR_LINK', '1', 'Show Category Separator between Category Names and Links?<br />0= off<br />1= on', 19, 24, NULL, '2024-12-18 09:59:10', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(431, 'Categories Separator between the Category Name and Count', 'CATEGORIES_SEPARATOR', '-&gt;', 'What separator do you want between the Category name and the count?<br />Default = -&amp;gt;', 19, 25, NULL, '2003-11-21 22:16:36', NULL, 'zen_cfg_textarea_small(', NULL),
(432, 'Categories Separator between the Category Name and Sub Categories', 'CATEGORIES_SEPARATOR_SUBS', '|_&nbsp;', 'What separator do you want between the Category name and Sub Category Name?<br />Default = |_&amp;nbsp;', 19, 26, NULL, '2004-03-25 22:16:36', NULL, 'zen_cfg_textarea_small(', NULL),
(433, 'Categories Count Prefix', 'CATEGORIES_COUNT_PREFIX', '&nbsp;(', 'What do you want to Prefix the count with?<br />Default= (', 19, 27, NULL, '2003-01-21 22:16:36', NULL, 'zen_cfg_textarea_small(', NULL),
(434, 'Categories Count Suffix', 'CATEGORIES_COUNT_SUFFIX', ')', 'What do you want as a Suffix to the count?<br />Default= )', 19, 28, NULL, '2003-01-21 22:16:36', NULL, 'zen_cfg_textarea_small(', NULL),
(435, 'Categories SubCategories Indent', 'CATEGORIES_SUBCATEGORIES_INDENT', '&nbsp;&nbsp;', 'What do you want to use as the subcategories indent?<br />Default= &nbsp;&nbsp;', 19, 29, NULL, '2004-06-24 22:16:36', NULL, 'zen_cfg_textarea_small(', NULL),
(436, 'Categories with 0 Products Status', 'CATEGORIES_COUNT_ZERO', '0', 'Show Category Count for 0 Products?<br />0= off<br />1= on', 19, 30, NULL, '2024-12-18 09:59:10', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(437, 'Shopping Cart - Show Totals', 'SHOW_TOTALS_IN_CART', '1', 'Show Totals Above Shopping Cart?<br />0= off<br />1= on: Items Weight Amount<br />2= on: Items Weight Amount, but no weight when 0<br />3= on: Items Amount', 19, 31, NULL, '2024-12-18 09:59:10', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'), ', NULL),
(438, 'Customer Greeting - Show on Index Page', 'SHOW_CUSTOMER_GREETING', '1', 'Always Show Customer Greeting on Index?<br />0= off<br />1= on', 19, 40, NULL, '2024-12-18 09:59:10', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(439, 'Categories - Always Show on Main Page', 'SHOW_CATEGORIES_ALWAYS', '0', 'Always Show Categories on Main Page<br />0= off<br />1= on<br />Default category can be set to Top Level or a Specific Top Level', 19, 45, NULL, '2024-12-18 09:59:10', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(440, 'Main Page - Opens with Category', 'CATEGORIES_START_MAIN', '0', '0= Top Level Categories<br />Or enter the Category ID#<br />Note: Sub Categories can also be used Example: 3_10', 19, 46, NULL, '2024-12-18 09:59:10', '', '', NULL),
(441, 'Categories - Always Open to Show SubCategories', 'SHOW_CATEGORIES_SUBCATEGORIES_ALWAYS', '1', 'Always Show Categories and SubCategories<br />0= off, just show Top Categories<br />1= on, Always show Categories and SubCategories when selected', 19, 47, NULL, '2024-12-18 09:59:10', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(442, 'Banner Display Groups - Header Position 1', 'SHOW_BANNERS_GROUP_SET1', '', 'The Banner Display Groups can be from one Banner Group or multiple Banner Groups<br /><br />For multiple Banner Groups enter the Banner Group Name separated by a colon <strong>:</strong><br /><br />Example: Wide-Banners:SideBox-Banners<br /><br />What Banner Group(s) do you want to use in the Header Position 1?<br />Leave blank for none', 19, 55, NULL, '2024-12-18 09:59:10', '', '', NULL),
(443, 'Banner Display Groups - Header Position 2', 'SHOW_BANNERS_GROUP_SET2', '', 'The Banner Display Groups can be from one Banner Group or multiple Banner Groups<br /><br />For multiple Banner Groups enter the Banner Group Name separated by a colon <strong>:</strong><br /><br />Example: Wide-Banners:SideBox-Banners<br /><br />What Banner Group(s) do you want to use in the Header Position 2?<br />Leave blank for none', 19, 56, NULL, '2024-12-18 09:59:10', '', '', NULL),
(444, 'Banner Display Groups - Header Position 3', 'SHOW_BANNERS_GROUP_SET3', '', 'The Banner Display Groups can be from one Banner Group or multiple Banner Groups<br /><br />For multiple Banner Groups enter the Banner Group Name separated by a colon <strong>:</strong><br /><br />Example: Wide-Banners:SideBox-Banners<br /><br />What Banner Group(s) do you want to use in the Header Position 3?<br />Leave blank for none', 19, 57, NULL, '2024-12-18 09:59:10', '', '', NULL),
(445, 'Banner Display Groups - Footer Position 1', 'SHOW_BANNERS_GROUP_SET4', '', 'The Banner Display Groups can be from one Banner Group or multiple Banner Groups<br /><br />For multiple Banner Groups enter the Banner Group Name separated by a colon <strong>:</strong><br /><br />Example: Wide-Banners:SideBox-Banners<br /><br />What Banner Group(s) do you want to use in the Footer Position 1?<br />Leave blank for none', 19, 65, NULL, '2024-12-18 09:59:10', '', '', NULL),
(446, 'Banner Display Groups - Footer Position 2', 'SHOW_BANNERS_GROUP_SET5', '', 'The Banner Display Groups can be from one Banner Group or multiple Banner Groups<br /><br />For multiple Banner Groups enter the Banner Group Name separated by a colon <strong>:</strong><br /><br />Example: Wide-Banners:SideBox-Banners<br /><br />What Banner Group(s) do you want to use in the Footer Position 2?<br />Leave blank for none', 19, 66, NULL, '2024-12-18 09:59:10', '', '', NULL),
(447, 'Banner Display Groups - Footer Position 3', 'SHOW_BANNERS_GROUP_SET6', 'Wide-Banners', 'The Banner Display Groups can be from one Banner Group or multiple Banner Groups<br /><br />For multiple Banner Groups enter the Banner Group Name separated by a colon <strong>:</strong><br /><br />Example: Wide-Banners:SideBox-Banners<br /><br />Default Group is Wide-Banners<br /><br />What Banner Group(s) do you want to use in the Footer Position 3?<br />Leave blank for none', 19, 67, NULL, '2024-12-18 09:59:10', '', '', NULL),
(448, 'Banner Display Groups - Side Box banner_box', 'SHOW_BANNERS_GROUP_SET7', 'SideBox-Banners', 'The Banner Display Groups can be from one Banner Group or multiple Banner Groups<br /><br />For multiple Banner Groups enter the Banner Group Name separated by a colon <strong>:</strong><br /><br />Example: Wide-Banners:SideBox-Banners<br />Default Group is SideBox-Banners<br /><br />What Banner Group(s) do you want to use in the Side Box - banner_box?<br />Leave blank for none', 19, 70, NULL, '2024-12-18 09:59:10', '', '', NULL),
(449, 'Banner Display Groups - Side Box banner_box2', 'SHOW_BANNERS_GROUP_SET8', 'SideBox-Banners', 'The Banner Display Groups can be from one Banner Group or multiple Banner Groups<br /><br />For multiple Banner Groups enter the Banner Group Name separated by a colon <strong>:</strong><br /><br />Example: Wide-Banners:SideBox-Banners<br />Default Group is SideBox-Banners<br /><br />What Banner Group(s) do you want to use in the Side Box - banner_box2?<br />Leave blank for none', 19, 71, NULL, '2024-12-18 09:59:10', '', '', NULL),
(450, 'Banner Display Group - Side Box banner_box_all', 'SHOW_BANNERS_GROUP_SET_ALL', 'BannersAll', 'The Banner Display Group may only be from one Banner Group for the Banner All sidebox<br /><br />Default Group is BannersAll<br /><br />What Banner Group do you want to use in the Side Box - banner_box_all?<br />Leave blank for none', 19, 72, NULL, '2024-12-18 09:59:10', '', '', NULL),
(451, 'Footer - Show IP Address status', 'SHOW_FOOTER_IP', '1', 'Show Customer IP Address in the Footer<br />0= off<br />1= on<br />Should the Customer IP Address show in the footer?', 19, 80, NULL, '2024-12-18 09:59:10', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(452, 'Product Discount Quantities - Add how many blank discounts?', 'DISCOUNT_QTY_ADD', '5', 'How many blank discount quantities should be added for Product Pricing?', 19, 90, NULL, '2024-12-18 09:59:10', '', '', NULL),
(453, 'Product Discount Quantities - Display how many per row?', 'DISCOUNT_QUANTITY_PRICES_COLUMN', '5', 'How many discount quantities should show per row on Product Info Pages?', 19, 95, NULL, '2024-12-18 09:59:10', '', '', NULL),
(454, 'Categories/Products Display Sort Order', 'CATEGORIES_PRODUCTS_SORT_ORDER', '0', '<p>Set the initial sort order for the Admin Category/Product listing page.</p>&nbsp;0 = Categories/Products: Sort Order, Name<br>&nbsp;1 = Categories/Products: Name<br>&nbsp;2 = Categories: ID+ / Products: Model<br>&nbsp;3 = Categories: ID- / Products: Qty+, Name<br>&nbsp;4 = Categories: Status, Name+ / Products: Qty-, Name<br>&nbsp;5 = Categories: Status, Name- / Products: Price+, Name<br>&nbsp;6 = Products: Price-, Name<br>&nbsp;7 = Products: Model-<br>&nbsp;8 = Products: Status+<br>&nbsp;9 = Products: Status-<br>10 = Products: ID<br>11 = Products: Weight', 19, 100, NULL, '2024-12-18 09:59:10', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\', \'5\', \'6\', \'7\', \'8\', \'9\', \'10\', \'11\'), ', NULL),
(455, 'Option Names and Values Global Add, Copy and Delete Features Status', 'OPTION_NAMES_VALUES_GLOBAL_STATUS', '1', 'Option Names and Values Global Add, Copy and Delete Features Status<br />0= Hide Features<br />1= Show Features<br />(Default=1)', 19, 110, NULL, '2024-12-18 09:59:10', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(456, 'Category Header Menu ON/OFF', 'CATEGORIES_TABS_STATUS', '1', 'Category Header Nav<br />This enables the display of your store\'s categories as a menu across the top of your header. There are many potential creative uses for this.<br />0= Hide Categories Tabs<br />1= Show Categories Tabs', 19, 112, NULL, '2024-12-18 09:59:10', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(457, 'Site Map - include My Account Links?', 'SHOW_ACCOUNT_LINKS_ON_SITE_MAP', 'No', 'Should the links to My Account show up on the site-map?<br />Note: Spiders will try to index this page, and likely should not be sent to secure pages, since there is no benefit in indexing a login page.<br /><br />Default: false', 19, 115, NULL, '2024-12-18 09:59:10', NULL, 'zen_cfg_select_option(array(\'Yes\', \'No\'), ', NULL),
(458, 'Skip 1-prod Categories', 'SKIP_SINGLE_PRODUCT_CATEGORIES', 'True', 'Skip single-product categories<br />If this option is set to True, then if the customer clicks on a link to a category which only contains a single item, then Zen Cart will take them directly to that product-page, rather than present them with another link to click in order to see the product.<br />Default: True', 19, 120, NULL, '2024-12-18 09:59:10', NULL, 'zen_cfg_select_option(array(\'True\', \'False\'), ', NULL),
(459, 'Use split-login page', 'USE_SPLIT_LOGIN_MODE', 'False', 'The login page can be displayed in two modes: Split or Vertical.<br />In Split mode, the create-account options are accessed by clicking a button to get to the create-account page.  In Vertical mode, the create-account input fields are all displayed inline, below the login field, making one less click for the customer to create their account.<br />Default: False', 19, 121, NULL, '2024-12-18 09:59:10', NULL, 'zen_cfg_select_option(array(\'True\', \'False\'), ', NULL),
(460, 'CSS Buttons', 'IMAGE_USE_CSS_BUTTONS', 'Yes', 'CSS Buttons<br />Use CSS buttons instead of images (GIF/JPG)?<br />Button styles must be configured in the stylesheet if you enable this option.', 19, 147, NULL, '2024-12-18 09:59:10', NULL, 'zen_cfg_select_option(array(\'No\', \'Yes\'), ', NULL),
(461, '<strong>Down for Maintenance: ON/OFF</strong>', 'DOWN_FOR_MAINTENANCE', 'false', 'Down for Maintenance <br />(true=on false=off)', 20, 1, NULL, '2024-12-18 09:59:10', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(462, 'Down for Maintenance: filename', 'DOWN_FOR_MAINTENANCE_FILENAME', 'down_for_maintenance', 'Down for Maintenance filename<br />Note: Do not include the extension<br />Default=down_for_maintenance', 20, 2, NULL, '2024-12-18 09:59:10', NULL, '', NULL),
(463, 'Down for Maintenance: Hide Header', 'DOWN_FOR_MAINTENANCE_HEADER_OFF', 'false', 'Down for Maintenance: Hide Header <br />(true=hide false=show)', 20, 3, NULL, '2024-12-18 09:59:10', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(464, 'Down for Maintenance: Hide Column Left', 'DOWN_FOR_MAINTENANCE_COLUMN_LEFT_OFF', 'false', 'Down for Maintenance: Hide Column Left <br />(true=hide false=show)', 20, 4, NULL, '2024-12-18 09:59:10', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(465, 'Down for Maintenance: Hide Column Right', 'DOWN_FOR_MAINTENANCE_COLUMN_RIGHT_OFF', 'false', 'Down for Maintenance: Hide Column Right <br />(true=hide false=show)', 20, 5, NULL, '2024-12-18 09:59:10', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(466, 'Down for Maintenance: Hide Footer', 'DOWN_FOR_MAINTENANCE_FOOTER_OFF', 'false', 'Down for Maintenance: Hide Footer <br />(true=hide false=show)', 20, 6, NULL, '2024-12-18 09:59:10', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(467, 'Down for Maintenance: Hide Prices', 'DOWN_FOR_MAINTENANCE_PRICES_OFF', 'false', 'Down for Maintenance: Hide Prices <br />(true=hide false=show)', 20, 7, NULL, '2024-12-18 09:59:10', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(468, 'Down For Maintenance (exclude this IP-Address)', 'EXCLUDE_ADMIN_IP_FOR_MAINTENANCE', 'your IP (ADMIN)', 'This IP Address is able to access the website while it is Down For Maintenance (like webmaster)<br />To enter multiple IP Addresses, separate with a comma. If you do not know your IP Address, check in the Footer of your Shop.', 20, 8, '2003-03-21 13:43:22', '2003-03-21 21:20:07', NULL, NULL, NULL),
(469, 'NOTICE PUBLIC Before going Down for Maintenance: ON/OFF', 'WARN_BEFORE_DOWN_FOR_MAINTENANCE', 'false', 'Give a WARNING some time before you put your website Down for Maintenance<br />(true=on false=off)<br />If you set the \'Down For Maintenance: ON/OFF\' to true this will automatically be updated to false', 20, 9, '2003-03-21 13:08:25', '2003-03-21 11:42:47', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'),', NULL),
(470, 'Date and hours for notice before maintenance', 'PERIOD_BEFORE_DOWN_FOR_MAINTENANCE', '15/05/2003  2-3 PM', 'Date and hours for notice before maintenance website, enter date and hours for maintenance website', 20, 10, '2003-03-21 13:08:25', '2003-03-21 11:42:47', NULL, NULL, NULL),
(471, 'Display when webmaster has enabled maintenance', 'DISPLAY_MAINTENANCE_TIME', 'false', 'Display when Webmaster has enabled maintenance <br />(true=on false=off)<br />', 20, 11, '2003-03-21 13:08:25', '2003-03-21 11:42:47', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'),', NULL),
(472, 'Display website maintenance period', 'DISPLAY_MAINTENANCE_PERIOD', 'false', 'Display Website maintenance period <br />(true=on false=off)<br />', 20, 12, '2003-03-21 13:08:25', '2003-03-21 11:42:47', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'),', NULL),
(473, 'Website maintenance period', 'TEXT_MAINTENANCE_PERIOD_TIME', '2h00', 'Enter Website Maintenance period (hh:mm)', 20, 13, '2003-03-21 13:08:25', '2003-03-21 11:42:47', NULL, NULL, NULL),
(474, 'Confirm Terms and Conditions During Checkout Procedure', 'DISPLAY_CONDITIONS_ON_CHECKOUT', 'false', 'Show the Terms and Conditions during the checkout procedure which the customer must agree to.', 11, 1, NULL, '2024-12-18 09:59:11', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(475, 'Confirm Privacy Notice During Account Creation Procedure', 'DISPLAY_PRIVACY_CONDITIONS', 'false', 'Show the Privacy Notice during the account creation procedure which the customer must agree to.', 11, 2, NULL, '2024-12-18 09:59:11', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), ', NULL),
(476, 'Display Product Image', 'PRODUCT_NEW_LIST_IMAGE', '1102', 'Do you want to display the Product Image?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />', 21, 1, NULL, '2024-12-18 09:59:11', NULL, NULL, NULL),
(477, 'Display Product Quantity', 'PRODUCT_NEW_LIST_QUANTITY', '1202', 'Do you want to display the Product Quantity?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />', 21, 2, NULL, '2024-12-18 09:59:11', NULL, NULL, NULL),
(478, 'Display Product Buy Now Button', 'PRODUCT_NEW_BUY_NOW', '1300', 'Do you want to display the Product Buy Now Button<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />', 21, 3, NULL, '2024-12-18 09:59:11', NULL, NULL, NULL),
(479, 'Display Product Name', 'PRODUCT_NEW_LIST_NAME', '2101', 'Do you want to display the Product Name?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />', 21, 4, NULL, '2024-12-18 09:59:11', NULL, NULL, NULL),
(480, 'Display Product Model', 'PRODUCT_NEW_LIST_MODEL', '2201', 'Do you want to display the Product Model?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />', 21, 5, NULL, '2024-12-18 09:59:11', NULL, NULL, NULL),
(481, 'Display Product Manufacturer Name', 'PRODUCT_NEW_LIST_MANUFACTURER', '2302', 'Do you want to display the Product Manufacturer Name?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />', 21, 6, NULL, '2024-12-18 09:59:11', NULL, NULL, NULL),
(482, 'Display Product Price', 'PRODUCT_NEW_LIST_PRICE', '2402', 'Do you want to display the Product Price<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />', 21, 7, NULL, '2024-12-18 09:59:11', NULL, NULL, NULL),
(483, 'Display Product Weight', 'PRODUCT_NEW_LIST_WEIGHT', '2502', 'Do you want to display the Product Weight?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />', 21, 8, NULL, '2024-12-18 09:59:11', NULL, NULL, NULL),
(484, 'Display Product Date Added', 'PRODUCT_NEW_LIST_DATE_ADDED', '2601', 'Do you want to display the Product Date Added?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />', 21, 9, NULL, '2024-12-18 09:59:11', NULL, NULL, NULL),
(485, 'Display Product Description', 'PRODUCT_NEW_LIST_DESCRIPTION', '150', 'How many characters do you want to display of the Product Description?<br /><br />0= OFF<br />150= Suggested Length, or enter the maximum number of characters to display', 21, 10, NULL, '2024-12-18 09:59:11', NULL, NULL, NULL),
(486, 'Default Products New Group ID', 'PRODUCT_NEW_LIST_GROUP_ID', '21', 'Warning: Only change this if your Products New Group ID has changed from the default of 21<br />What is the configuration_group_id for New Products Listings?', 21, 12, NULL, '2024-12-18 09:59:11', NULL, NULL, NULL),
(487, 'Display Multiple Products Qty Box Status and Set Button Location', 'PRODUCT_NEW_LISTING_MULTIPLE_ADD_TO_CART', '3', 'Do you want to display Add Multiple Products Qty Box and Set Button Location?<br />0= off<br />1= Top<br />2= Bottom<br />3= Both', 21, 25, NULL, '2024-12-18 09:59:11', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'), ', NULL),
(488, 'Display Product Image', 'PRODUCT_FEATURED_LIST_IMAGE', '1102', 'Do you want to display the Product Image?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />', 22, 1, NULL, '2024-12-18 09:59:11', NULL, NULL, NULL),
(489, 'Display Product Quantity', 'PRODUCT_FEATURED_LIST_QUANTITY', '1202', 'Do you want to display the Product Quantity?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />', 22, 2, NULL, '2024-12-18 09:59:11', NULL, NULL, NULL),
(490, 'Display Product Buy Now Button', 'PRODUCT_FEATURED_BUY_NOW', '1300', 'Do you want to display the Product Buy Now Button<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />', 22, 3, NULL, '2024-12-18 09:59:11', NULL, NULL, NULL),
(491, 'Display Product Name', 'PRODUCT_FEATURED_LIST_NAME', '2101', 'Do you want to display the Product Name?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />', 22, 4, NULL, '2024-12-18 09:59:11', NULL, NULL, NULL),
(492, 'Display Product Model', 'PRODUCT_FEATURED_LIST_MODEL', '2201', 'Do you want to display the Product Model?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />', 22, 5, NULL, '2024-12-18 09:59:11', NULL, NULL, NULL),
(493, 'Display Product Manufacturer Name', 'PRODUCT_FEATURED_LIST_MANUFACTURER', '2302', 'Do you want to display the Product Manufacturer Name?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />', 22, 6, NULL, '2024-12-18 09:59:11', NULL, NULL, NULL),
(494, 'Display Product Price', 'PRODUCT_FEATURED_LIST_PRICE', '2402', 'Do you want to display the Product Price<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />', 22, 7, NULL, '2024-12-18 09:59:11', NULL, NULL, NULL),
(495, 'Display Product Weight', 'PRODUCT_FEATURED_LIST_WEIGHT', '2502', 'Do you want to display the Product Weight?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />', 22, 8, NULL, '2024-12-18 09:59:11', NULL, NULL, NULL),
(496, 'Display Product Date Added', 'PRODUCT_FEATURED_LIST_DATE_ADDED', '2601', 'Do you want to display the Product Date Added?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />', 22, 9, NULL, '2024-12-18 09:59:11', NULL, NULL, NULL),
(497, 'Display Product Description', 'PRODUCT_FEATURED_LIST_DESCRIPTION', '150', 'How many characters do you want to display of the Product Description?<br /><br />0= OFF<br />150= Suggested Length, or enter the maximum number of characters to display', 22, 10, NULL, '2024-12-18 09:59:11', NULL, NULL, NULL),
(498, 'Default Featured Products Group ID', 'PRODUCT_FEATURED_LIST_GROUP_ID', '22', 'Warning: Only change this if your Featured Products Group ID has changed from the default of 22<br />What is the configuration_group_id for Featured Products Listings?', 22, 12, NULL, '2024-12-18 09:59:11', NULL, NULL, NULL),
(499, 'Display Multiple Products Qty Box Status and Set Button Location', 'PRODUCT_FEATURED_LISTING_MULTIPLE_ADD_TO_CART', '3', 'Do you want to display Add Multiple Products Qty Box and Set Button Location?<br />0= off<br />1= Top<br />2= Bottom<br />3= Both', 22, 25, NULL, '2024-12-18 09:59:11', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'), ', NULL),
(500, 'Display Product Image', 'PRODUCT_ALL_LIST_IMAGE', '1102', 'Do you want to display the Product Image?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />', 23, 1, NULL, '2024-12-18 09:59:11', NULL, NULL, NULL),
(501, 'Display Product Quantity', 'PRODUCT_ALL_LIST_QUANTITY', '1202', 'Do you want to display the Product Quantity?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />', 23, 2, NULL, '2024-12-18 09:59:11', NULL, NULL, NULL),
(502, 'Display Product Buy Now Button', 'PRODUCT_ALL_BUY_NOW', '1300', 'Do you want to display the Product Buy Now Button<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />', 23, 3, NULL, '2024-12-18 09:59:11', NULL, NULL, NULL),
(503, 'Display Product Name', 'PRODUCT_ALL_LIST_NAME', '2101', 'Do you want to display the Product Name?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />', 23, 4, NULL, '2024-12-18 09:59:11', NULL, NULL, NULL),
(504, 'Display Product Model', 'PRODUCT_ALL_LIST_MODEL', '2201', 'Do you want to display the Product Model?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />', 23, 5, NULL, '2024-12-18 09:59:11', NULL, NULL, NULL),
(505, 'Display Product Manufacturer Name', 'PRODUCT_ALL_LIST_MANUFACTURER', '2302', 'Do you want to display the Product Manufacturer Name?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />', 23, 6, NULL, '2024-12-18 09:59:11', NULL, NULL, NULL),
(506, 'Display Product Price', 'PRODUCT_ALL_LIST_PRICE', '2402', 'Do you want to display the Product Price<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />', 23, 7, NULL, '2024-12-18 09:59:11', NULL, NULL, NULL),
(507, 'Display Product Weight', 'PRODUCT_ALL_LIST_WEIGHT', '2502', 'Do you want to display the Product Weight?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />', 23, 8, NULL, '2024-12-18 09:59:11', NULL, NULL, NULL),
(508, 'Display Product Date Added', 'PRODUCT_ALL_LIST_DATE_ADDED', '2601', 'Do you want to display the Product Date Added?<br /><br />0= off<br />1st digit Left or Right<br />2nd and 3rd digit Sort Order<br />4th digit number of breaks after<br />', 23, 9, NULL, '2024-12-18 09:59:11', NULL, NULL, NULL),
(509, 'Display Product Description', 'PRODUCT_ALL_LIST_DESCRIPTION', '150', 'How many characters do you want to display of the Product Description?<br /><br />0= OFF<br />150= Suggested Length, or enter the maximum number of characters to display', 23, 10, NULL, '2024-12-18 09:59:11', NULL, NULL, NULL),
(510, 'Default Products All Group ID', 'PRODUCT_ALL_LIST_GROUP_ID', '23', 'Warning: Only change this if your Products All Group ID has changed from the default of 23<br />What is the configuration_group_id for Products All Listings?', 23, 12, NULL, '2024-12-18 09:59:11', NULL, NULL, NULL),
(511, 'Display Multiple Products Qty Box Status and Set Button Location', 'PRODUCT_ALL_LISTING_MULTIPLE_ADD_TO_CART', '3', 'Do you want to display Add Multiple Products Qty Box and Set Button Location?<br />0= off<br />1= Top<br />2= Bottom<br />3= Both', 23, 25, NULL, '2024-12-18 09:59:11', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'), ', NULL),
(512, 'Show New Products on Main Page', 'SHOW_PRODUCT_INFO_MAIN_NEW_PRODUCTS', '1', 'Show New Products on Main Page<br />0= off or set the sort order', 24, 65, NULL, '2024-12-18 09:59:11', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\', \'5\'), ', NULL);
INSERT INTO `configuration` (`configuration_id`, `configuration_title`, `configuration_key`, `configuration_value`, `configuration_description`, `configuration_group_id`, `sort_order`, `last_modified`, `date_added`, `use_function`, `set_function`, `val_function`) VALUES
(513, 'Show Featured Products on Main Page', 'SHOW_PRODUCT_INFO_MAIN_FEATURED_PRODUCTS', '2', 'Show Featured Products on Main Page<br />0= off or set the sort order', 24, 66, NULL, '2024-12-18 09:59:11', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\', \'5\'), ', NULL),
(514, 'Show Special Products on Main Page', 'SHOW_PRODUCT_INFO_MAIN_SPECIALS_PRODUCTS', '3', 'Show Special Products on Main Page<br />0= off or set the sort order', 24, 67, NULL, '2024-12-18 09:59:11', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\', \'5\'), ', NULL),
(515, 'Show Upcoming Products on Main Page', 'SHOW_PRODUCT_INFO_MAIN_UPCOMING', '5', 'Show Upcoming Products on Main Page<br />0= off or set the sort order', 24, 68, NULL, '2024-12-18 09:59:11', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\', \'5\'), ', NULL),
(516, 'Show New Products on Main Page - Category with SubCategories', 'SHOW_PRODUCT_INFO_CATEGORY_NEW_PRODUCTS', '1', 'Show New Products on Main Page - Category with SubCategories<br />0= off or set the sort order', 24, 70, NULL, '2024-12-18 09:59:11', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), ', NULL),
(517, 'Show Featured Products on Main Page - Category with SubCategories', 'SHOW_PRODUCT_INFO_CATEGORY_FEATURED_PRODUCTS', '2', 'Show Featured Products on Main Page - Category with SubCategories<br />0= off or set the sort order', 24, 71, NULL, '2024-12-18 09:59:11', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), ', NULL),
(518, 'Show Special Products on Main Page - Category with SubCategories', 'SHOW_PRODUCT_INFO_CATEGORY_SPECIALS_PRODUCTS', '3', 'Show Special Products on Main Page - Category with SubCategories<br />0= off or set the sort order', 24, 72, NULL, '2024-12-18 09:59:11', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), ', NULL),
(519, 'Show Upcoming Products on Main Page - Category with SubCategories', 'SHOW_PRODUCT_INFO_CATEGORY_UPCOMING', '4', 'Show Upcoming Products on Main Page - Category with SubCategories<br />0= off or set the sort order', 24, 73, NULL, '2024-12-18 09:59:11', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), ', NULL),
(520, 'Show New Products on Main Page - Errors and Missing Products Page', 'SHOW_PRODUCT_INFO_MISSING_NEW_PRODUCTS', '1', 'Show New Products on Main Page - Errors and Missing Product<br />0= off or set the sort order', 24, 75, NULL, '2024-12-18 09:59:11', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), ', NULL),
(521, 'Show Featured Products on Main Page - Errors and Missing Products Page', 'SHOW_PRODUCT_INFO_MISSING_FEATURED_PRODUCTS', '2', 'Show Featured Products on Main Page - Errors and Missing Product<br />0= off or set the sort order', 24, 76, NULL, '2024-12-18 09:59:11', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), ', NULL),
(522, 'Show Special Products on Main Page - Errors and Missing Products Page', 'SHOW_PRODUCT_INFO_MISSING_SPECIALS_PRODUCTS', '3', 'Show Special Products on Main Page - Errors and Missing Product<br />0= off or set the sort order', 24, 77, NULL, '2024-12-18 09:59:11', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), ', NULL),
(523, 'Show Upcoming Products on Main Page - Errors and Missing Products Page', 'SHOW_PRODUCT_INFO_MISSING_UPCOMING', '4', 'Show Upcoming Products on Main Page - Errors and Missing Product<br />0= off or set the sort order', 24, 78, NULL, '2024-12-18 09:59:11', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), ', NULL),
(524, 'Show New Products - below Product Listing', 'SHOW_PRODUCT_INFO_LISTING_BELOW_NEW_PRODUCTS', '1', 'Show New Products below Product Listing<br />0= off or set the sort order', 24, 85, NULL, '2024-12-18 09:59:12', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), ', NULL),
(525, 'Show Featured Products - below Product Listing', 'SHOW_PRODUCT_INFO_LISTING_BELOW_FEATURED_PRODUCTS', '2', 'Show Featured Products below Product Listing<br />0= off or set the sort order', 24, 86, NULL, '2024-12-18 09:59:12', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), ', NULL),
(526, 'Show Special Products - below Product Listing', 'SHOW_PRODUCT_INFO_LISTING_BELOW_SPECIALS_PRODUCTS', '3', 'Show Special Products below Product Listing<br />0= off or set the sort order', 24, 87, NULL, '2024-12-18 09:59:12', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), ', NULL),
(527, 'Show Upcoming Products - below Product Listing', 'SHOW_PRODUCT_INFO_LISTING_BELOW_UPCOMING', '4', 'Show Upcoming Products below Product Listing<br />0= off or set the sort order', 24, 88, NULL, '2024-12-18 09:59:12', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\'), ', NULL),
(528, 'New Products Columns per Row', 'SHOW_PRODUCT_INFO_COLUMNS_NEW_PRODUCTS', '3', 'New Products Columns per Row', 24, 95, NULL, '2024-12-18 09:59:12', NULL, 'zen_cfg_select_option(array(\'1\', \'2\', \'3\', \'4\', \'5\', \'6\', \'7\', \'8\', \'9\', \'10\', \'11\', \'12\'), ', NULL),
(529, 'Featured Products And Categories Columns per Row', 'SHOW_PRODUCT_INFO_COLUMNS_FEATURED_PRODUCTS', '3', 'Featured Products And Categories Columns per Row', 24, 96, NULL, '2024-12-18 09:59:12', NULL, 'zen_cfg_select_option(array(\'1\', \'2\', \'3\', \'4\', \'5\', \'6\', \'7\', \'8\', \'9\', \'10\', \'11\', \'12\'), ', NULL),
(530, 'Special Products Columns per Row', 'SHOW_PRODUCT_INFO_COLUMNS_SPECIALS_PRODUCTS', '3', 'Special Products Columns per Row', 24, 97, NULL, '2024-12-18 09:59:12', NULL, 'zen_cfg_select_option(array(\'1\', \'2\', \'3\', \'4\', \'5\', \'6\', \'7\', \'8\', \'9\', \'10\', \'11\', \'12\'), ', NULL),
(531, 'Filter Product Listing for Current Top Level Category When Enabled', 'SHOW_PRODUCT_INFO_ALL_PRODUCTS', '1', 'Filter the products when Product Listing is enabled for current Main Category or show products from all categories?<br />0= Filter Off 1=Filter On ', 24, 100, NULL, '2024-12-18 09:59:12', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'), ', NULL),
(532, 'Define Main Page Status', 'DEFINE_MAIN_PAGE_STATUS', '1', 'Enable the Defined Main Page Link/Text?<br />0= Link ON, Define Text OFF<br />1= Link ON, Define Text ON<br />2= Link OFF, Define Text ON<br />3= Link OFF, Define Text OFF', 25, 60, '2024-12-18 09:59:12', '2024-12-18 09:59:12', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),', NULL),
(533, 'Define Contact Us Status', 'DEFINE_CONTACT_US_STATUS', '1', 'Enable the Defined Contact Us Link/Text?<br />0= Link ON, Define Text OFF<br />1= Link ON, Define Text ON<br />2= Link OFF, Define Text ON<br />3= Link OFF, Define Text OFF', 25, 61, '2024-12-18 09:59:12', '2024-12-18 09:59:12', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),', NULL),
(534, 'Define Privacy Status', 'DEFINE_PRIVACY_STATUS', '1', 'Enable the Defined Privacy Link/Text?<br />0= Link ON, Define Text OFF<br />1= Link ON, Define Text ON<br />2= Link OFF, Define Text ON<br />3= Link OFF, Define Text OFF', 25, 62, '2024-12-18 09:59:12', '2024-12-18 09:59:12', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),', NULL),
(535, 'Define Shipping & Returns', 'DEFINE_SHIPPINGINFO_STATUS', '1', 'Enable the Defined Shipping & Returns Link/Text?<br />0= Link ON, Define Text OFF<br />1= Link ON, Define Text ON<br />2= Link OFF, Define Text ON<br />3= Link OFF, Define Text OFF', 25, 63, '2024-12-18 09:59:12', '2024-12-18 09:59:12', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),', NULL),
(536, 'Define Conditions of Use', 'DEFINE_CONDITIONS_STATUS', '1', 'Enable the Defined Conditions of Use Link/Text?<br />0= Link ON, Define Text OFF<br />1= Link ON, Define Text ON<br />2= Link OFF, Define Text ON<br />3= Link OFF, Define Text OFF', 25, 64, '2024-12-18 09:59:12', '2024-12-18 09:59:12', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),', NULL),
(537, 'Define Checkout Success', 'DEFINE_CHECKOUT_SUCCESS_STATUS', '1', 'Enable the Defined Checkout Success Link/Text?<br />0= Link ON, Define Text OFF<br />1= Link ON, Define Text ON<br />2= Link OFF, Define Text ON<br />3= Link OFF, Define Text OFF', 25, 65, '2024-12-18 09:59:12', '2024-12-18 09:59:12', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),', NULL),
(538, 'Define Discount Coupon', 'DEFINE_DISCOUNT_COUPON_STATUS', '1', 'Enable the Defined Discount Coupon Link/Text?<br />0= Link ON, Define Text OFF<br />1= Link ON, Define Text ON<br />2= Link OFF, Define Text ON<br />3= Link OFF, Define Text OFF', 25, 66, '2024-12-18 09:59:12', '2024-12-18 09:59:12', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),', NULL),
(539, 'Define Site Map Status', 'DEFINE_SITE_MAP_STATUS', '1', 'Enable the Defined Site Map Link/Text?<br />0= Link ON, Define Text OFF<br />1= Link ON, Define Text ON<br />2= Link OFF, Define Text ON<br />3= Link OFF, Define Text OFF', 25, 67, '2024-12-18 09:59:12', '2024-12-18 09:59:12', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),', NULL),
(540, 'Define Page-Not-Found Status', 'DEFINE_PAGE_NOT_FOUND_STATUS', '1', 'Enable the Defined Page-Not-Found Text from define-pages?<br />0= Define Text OFF<br />1= Define Text ON', 25, 67, '2024-12-18 09:59:12', '2024-12-18 09:59:12', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'),', NULL),
(541, 'Define Page 2', 'DEFINE_PAGE_2_STATUS', '1', 'Enable the Defined Page 2 Link/Text?<br />0= Link ON, Define Text OFF<br />1= Link ON, Define Text ON<br />2= Link OFF, Define Text ON<br />3= Link OFF, Define Text OFF', 25, 82, '2024-12-18 09:59:12', '2024-12-18 09:59:12', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),', NULL),
(542, 'Define Page 3', 'DEFINE_PAGE_3_STATUS', '1', 'Enable the Defined Page 3 Link/Text?<br />0= Link ON, Define Text OFF<br />1= Link ON, Define Text ON<br />2= Link OFF, Define Text ON<br />3= Link OFF, Define Text OFF', 25, 83, '2024-12-18 09:59:12', '2024-12-18 09:59:12', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),', NULL),
(543, 'Define Page 4', 'DEFINE_PAGE_4_STATUS', '1', 'Enable the Defined Page 4 Link/Text?<br />0= Link ON, Define Text OFF<br />1= Link ON, Define Text ON<br />2= Link OFF, Define Text ON<br />3= Link OFF, Define Text OFF', 25, 84, '2024-12-18 09:59:12', '2024-12-18 09:59:12', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),', NULL),
(544, 'EZ-Pages Display Status - HeaderBar', 'EZPAGES_STATUS_HEADER', '1', 'Display of EZ-Pages content can be Globally enabled/disabled for the Header Bar<br />0 = Off<br />1 = On<br />2= On ADMIN IP ONLY located in Website Maintenance<br />NOTE: Warning only shows to the Admin and not to the public', 30, 10, NULL, '2024-12-18 09:59:12', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), ', NULL),
(545, 'EZ-Pages Display Status - FooterBar', 'EZPAGES_STATUS_FOOTER', '1', 'Display of EZ-Pages content can be Globally enabled/disabled for the Footer Bar<br />0 = Off<br />1 = On<br />2= On ADMIN IP ONLY located in Website Maintenance<br />NOTE: Warning only shows to the Admin and not to the public', 30, 11, NULL, '2024-12-18 09:59:12', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), ', NULL),
(546, 'EZ-Pages Display Status - Sidebox', 'EZPAGES_STATUS_SIDEBOX', '1', 'Display of EZ-Pages content can be Globally enabled/disabled for the Sidebox<br />0 = Off<br />1 = On<br />2= On ADMIN IP ONLY located in Website Maintenance<br />NOTE: Warning only shows to the Admin and not to the public', 30, 12, NULL, '2024-12-18 09:59:12', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), ', NULL),
(547, 'EZ-Pages Header Link Separator', 'EZPAGES_SEPARATOR_HEADER', '&nbsp;::&nbsp;', 'EZ-Pages Header Link Separator<br />Default = &amp;nbsp;::&amp;nbsp;', 30, 20, NULL, '2024-12-18 09:59:12', NULL, 'zen_cfg_textarea_small(', NULL),
(548, 'EZ-Pages Footer Link Separator', 'EZPAGES_SEPARATOR_FOOTER', '&nbsp;::&nbsp;', 'EZ-Pages Footer Link Separator<br />Default = &amp;nbsp;::&amp;nbsp;', 30, 21, NULL, '2024-12-18 09:59:12', NULL, 'zen_cfg_textarea_small(', NULL),
(549, 'EZ-Pages Prev/Next Buttons', 'EZPAGES_SHOW_PREV_NEXT_BUTTONS', '2', 'Display Prev/Continue/Next buttons on EZ-Pages pages?<br />0=OFF (no buttons)<br />1=\"Continue\"<br />2=\"Prev/Continue/Next\"<br /><br />Default setting: 2.', 30, 30, NULL, '2024-12-18 09:59:12', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\'), ', NULL),
(550, 'EZ-Pages Table of Contents for Chapters Status', 'EZPAGES_SHOW_TABLE_CONTENTS', '1', 'Enable EZ-Pages Table of Contents for Chapters?<br />0= OFF<br />1= ON', 30, 35, '2024-12-18 09:59:12', '2024-12-18 09:59:12', NULL, 'zen_cfg_select_option(array(\'0\', \'1\'),', NULL),
(551, 'EZ-Pages Pages to disable headers', 'EZPAGES_DISABLE_HEADER_DISPLAY_LIST', '', 'EZ-Pages \"pages\" on which to NOT display the normal \"header\" for your site.<br />Simply list page ID numbers separated by commas with no spaces.<br />Page ID numbers can be obtained from the EZ-Pages screen under Admin->Tools.<br />ie: 1,5,2<br />or leave blank.', 30, 40, NULL, '2024-12-18 09:59:12', NULL, 'zen_cfg_textarea_small(', NULL),
(552, 'EZ-Pages Pages to disable footers', 'EZPAGES_DISABLE_FOOTER_DISPLAY_LIST', '', 'EZ-Pages \"pages\" on which to NOT display the normal \"footer\" for your site.<br />Simply list page ID numbers separated by commas with no spaces.<br />Page ID numbers can be obtained from the EZ-Pages screen under Admin->Tools.<br />ie: 3,7<br />or leave blank.', 30, 41, NULL, '2024-12-18 09:59:12', NULL, 'zen_cfg_textarea_small(', NULL),
(553, 'EZ-Pages Pages to disable left-column', 'EZPAGES_DISABLE_LEFTCOLUMN_DISPLAY_LIST', '', 'EZ-Pages \"pages\" on which to NOT display the normal \"left\" column (of sideboxes) for your site.<br />Simply list page ID numbers separated by commas with no spaces.<br />Page ID numbers can be obtained from the EZ-Pages screen under Admin->Tools.<br />ie: 21<br />or leave blank.', 30, 42, NULL, '2024-12-18 09:59:12', NULL, 'zen_cfg_textarea_small(', NULL),
(554, 'EZ-Pages Pages to disable right-column', 'EZPAGES_DISABLE_RIGHTCOLUMN_DISPLAY_LIST', '', 'EZ-Pages \"pages\" on which to NOT display the normal \"right\" column (of sideboxes) for your site.<br />Simply list page ID numbers separated by commas with no spaces.<br />Page ID numbers can be obtained from the EZ-Pages screen under Admin->Tools.<br />ie: 3,82,13<br />or leave blank.', 30, 43, NULL, '2024-12-18 09:59:12', NULL, 'zen_cfg_textarea_small(', NULL),
(555, 'Show Featured Categories on Main Page', 'SHOW_PRODUCT_INFO_MAIN_FEATURED_CATEGORIES', '4', 'Show Featured Categories on Main Page<br>0= off or set the sort order', 24, 68, NULL, '2024-12-18 09:59:12', NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\', \'4\', \'5\'), ', NULL),
(556, 'Categories Box - Show Featured Category Link', 'SHOW_CATEGORIES_BOX_FEATURED_CATEGORIES', 'true', 'Show Featured Categories Link in the Categories Box', 19, 11, NULL, '2024-12-18 09:59:12', NULL, 'zen_cfg_select_option(array(\'true\', \'false\'),', NULL),
(557, 'global auth key', 'GLOBAL_AUTH_KEY', 'c5621f55a3ec0d511911b519ad885decaf3bdcc871b405cc80e033a03b567568', '', 6, 30, '2024-12-18 09:59:12', '2024-12-18 09:59:12', NULL, NULL, NULL),
(558, 'Convert currencies for Text emails', 'CURRENCIES_TRANSLATIONS', '&pound;,£:&euro;,€:&reg;,®:&trade;,™', 'What currency conversions do you need for Text emails?<br />Example = &amp;pound;,&pound;:&amp;euro;,&euro;', 12, 120, NULL, '2003-11-21 00:00:00', NULL, 'zen_cfg_textarea_small(', NULL),
(559, 'Use root path for cookie path', 'SESSION_USE_ROOT_COOKIE_PATH', 'False', 'Normally Zen Cart will use the directory that a store resides in as the cookie path. This can cause problems with some servers. This setting allows you to set the cookie path to the root of the server, rather than the store directory. It should only be used if you have problems with sessions. <strong>Default Value = False</strong><br><br><strong>Changing this setting may mean you have problems logging into your admin, you should clear your browser cookies to overcome this.</strong>', 15, 999, NULL, '0001-01-01 00:00:00', NULL, 'zen_cfg_select_option(array(\'True\', \'False\'), ', NULL),
(560, 'Add period prefix to cookie domain', 'SESSION_ADD_PERIOD_PREFIX', 'True', 'Normally Zen Cart will add a period prefix to the cookie domain, e.g.  .www.mydomain.com. This can sometimes cause problems with some server configurations. If you are having session problems you may want to try setting this to False. <strong>Default Value = True</strong>', 15, 999, NULL, '0001-01-01 00:00:00', NULL, 'zen_cfg_select_option(array(\'True\', \'False\'), ', NULL),
(561, 'Enable Transfer Bank BCA Module', 'MODULE_PAYMENT_BANK_BCA_STATUS', 'True', 'Do you want to accept Transfer Bank BCA payments?', 6, 1, NULL, '2024-12-18 10:12:40', NULL, 'zen_cfg_select_option(array(\'True\', \'False\'), ', NULL),
(562, 'Payment Zone', 'MODULE_PAYMENT_BANK_BCA_ZONE', '0', 'If a zone is selected, only enable this payment method for that zone.', 6, 2, NULL, '2024-12-18 10:12:40', 'zen_get_zone_class_title', 'zen_cfg_pull_down_zone_classes(', NULL),
(563, 'Sort order of display.', 'MODULE_PAYMENT_BANK_BCA_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2024-12-18 10:12:40', NULL, NULL, NULL),
(564, 'BSB Number', 'MODULE_PAYMENT_BANK_BCA_BSB', '000-000', 'BSB Number in the format 000-000', 6, 1, NULL, '2024-12-18 10:12:40', NULL, NULL, NULL),
(565, 'Bank Account No.', 'MODULE_PAYMENT_BANK_BCA_ACCNUM', '12345678', 'Bank Account No.', 6, 1, NULL, '2024-12-18 10:12:40', NULL, NULL, NULL),
(566, 'Swift Code.', 'MODULE_PAYMENT_BANK_BCA_SWIFT', '12345678', 'Swift Code.', 6, 1, NULL, '2024-12-18 10:12:40', NULL, NULL, NULL),
(567, 'Bank Account Name', 'MODULE_PAYMENT_BANK_BCA_ACCNAM', 'zccomputer', 'Bank Account Name', 6, 1, NULL, '2024-12-18 10:12:40', NULL, NULL, NULL),
(568, 'Bank Name', 'MODULE_PAYMENT_BANK_BCA_BANKNAM', 'Bank BCA', 'Bank BCA', 6, 1, NULL, '2024-12-18 10:12:40', NULL, NULL, NULL),
(569, 'Set Order Status', 'MODULE_PAYMENT_BANK_BCA_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', 6, 0, NULL, '2024-12-18 10:12:40', 'zen_get_order_status_name', 'zen_cfg_pull_down_order_statuses(', NULL),
(570, 'Address', 'MODULE_PAYMENT_BANK_BCA_ADDRESS', 'Cikupa, Kabupaten Tangerang, Banten, 15710', 'Address to send money orders.', 6, 1, NULL, '2024-12-18 10:12:40', NULL, NULL, NULL),
(571, 'Payable', 'MODULE_PAYMENT_BANK_BCA_PAYABLE', 'ZC Computer', 'Money Orders Payable to:', 6, 1, NULL, '2024-12-18 10:12:40', NULL, NULL, NULL),
(572, 'Enable Transfer Bank BNI Module', 'MODULE_PAYMENT_BANK_BNI_STATUS', 'True', 'Do you want to accept Transfer Bank BNI payments?', 6, 1, NULL, '2024-12-18 10:14:44', NULL, 'zen_cfg_select_option(array(\'True\', \'False\'), ', NULL),
(573, 'Payment Zone', 'MODULE_PAYMENT_BANK_BNI_ZONE', '0', 'If a zone is selected, only enable this payment method for that zone.', 6, 2, NULL, '2024-12-18 10:14:44', 'zen_get_zone_class_title', 'zen_cfg_pull_down_zone_classes(', NULL),
(574, 'Sort order of display.', 'MODULE_PAYMENT_BANK_BNI_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2024-12-18 10:14:44', NULL, NULL, NULL),
(575, 'BSB Number', 'MODULE_PAYMENT_BANK_BNI_BSB', '000-000', 'BSB Number in the format 000-000', 6, 1, NULL, '2024-12-18 10:14:44', NULL, NULL, NULL),
(576, 'Bank Account No.', 'MODULE_PAYMENT_BANK_BNI_ACCNUM', '87654321', 'Bank Account No.', 6, 1, NULL, '2024-12-18 10:14:44', NULL, NULL, NULL),
(577, 'Swift Code.', 'MODULE_PAYMENT_BANK_BNI_SWIFT', '87654321', 'Swift Code.', 6, 1, NULL, '2024-12-18 10:14:44', NULL, NULL, NULL),
(578, 'Bank Account Name', 'MODULE_PAYMENT_BANK_BNI_ACCNAM', 'zccomputer', 'Bank Account Name', 6, 1, NULL, '2024-12-18 10:14:44', NULL, NULL, NULL),
(579, 'Bank Name', 'MODULE_PAYMENT_BANK_BNI_BANKNAM', 'Bank BNI', 'Bank BNI', 6, 1, NULL, '2024-12-18 10:14:44', NULL, NULL, NULL),
(580, 'Set Order Status', 'MODULE_PAYMENT_BANK_BNI_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', 6, 0, NULL, '2024-12-18 10:14:44', 'zen_get_order_status_name', 'zen_cfg_pull_down_order_statuses(', NULL),
(581, 'Address', 'MODULE_PAYMENT_BANK_BNI_ADDRESS', 'Cikupa, Kabupaten Tangerang, Banten, 15710', 'Address to send money orders.', 6, 1, NULL, '2024-12-18 10:14:44', NULL, NULL, NULL),
(582, 'Payable', 'MODULE_PAYMENT_BANK_BNI_PAYABLE', 'ZC Computer', 'Money Orders Payable to:', 6, 1, NULL, '2024-12-18 10:14:44', NULL, NULL, NULL),
(583, 'Enable Cash On Delivery Module', 'MODULE_PAYMENT_COD_STATUS', 'True', 'Do you want to accept Cash On Delivery payments?', 6, 1, NULL, '2024-12-18 10:15:32', NULL, 'zen_cfg_select_option(array(\'True\', \'False\'), ', NULL),
(584, 'Payment Zone', 'MODULE_PAYMENT_COD_ZONE', '0', 'If a zone is selected, only enable this payment method for that zone.', 6, 2, NULL, '2024-12-18 10:15:32', 'zen_get_zone_class_title', 'zen_cfg_pull_down_zone_classes(', NULL),
(585, 'Sort order of display.', 'MODULE_PAYMENT_COD_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2024-12-18 10:15:32', NULL, NULL, NULL),
(586, 'Set Order Status', 'MODULE_PAYMENT_COD_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', 6, 0, NULL, '2024-12-18 10:15:32', 'zen_get_order_status_name', 'zen_cfg_pull_down_order_statuses(', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `configuration_group`
--

CREATE TABLE `configuration_group` (
  `configuration_group_id` int(11) NOT NULL,
  `configuration_group_title` varchar(64) NOT NULL DEFAULT '',
  `configuration_group_description` varchar(255) NOT NULL DEFAULT '',
  `sort_order` int(5) DEFAULT NULL,
  `visible` int(1) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `configuration_group`
--

INSERT INTO `configuration_group` (`configuration_group_id`, `configuration_group_title`, `configuration_group_description`, `sort_order`, `visible`) VALUES
(1, 'My Store', 'General information about my store', 1, 1),
(2, 'Minimum Values', 'The minimum values for functions / data', 2, 1),
(3, 'Maximum Values', 'The maximum values for functions / data', 3, 1),
(4, 'Images', 'Image parameters', 4, 1),
(5, 'Customer Details', 'Customer account configuration', 5, 1),
(6, 'Module Options', 'Hidden from configuration', 6, 0),
(7, 'Shipping/Packaging', 'Shipping options available at my store', 7, 1),
(8, 'Product Listing', 'Product Listing configuration options', 8, 1),
(9, 'Stock', 'Stock configuration options', 9, 1),
(10, 'Logging', 'Logging configuration options', 10, 1),
(11, 'Regulations', 'Regulation options', 16, 1),
(12, 'Email', 'Email-related settings', 12, 1),
(13, 'Attribute Settings', 'Configure products attributes settings', 13, 1),
(14, 'GZip Compression', 'GZip compression options', 14, 1),
(15, 'Sessions', 'Session options', 15, 1),
(16, 'GV Coupons', 'Gift Vouchers and Coupons', 16, 1),
(17, 'Credit Cards', 'Credit Cards Accepted', 17, 1),
(18, 'Product Info', 'Product Info Display Options', 18, 1),
(19, 'Layout Settings', 'Layout Options', 19, 1),
(20, 'Website Maintenance', 'Website Maintenance Options', 20, 1),
(21, 'New Listing', 'New Products Listing', 21, 0),
(22, 'Featured Listing', 'Featured Products Listing', 22, 0),
(23, 'All Listing', 'All Products Listing', 23, 0),
(24, 'Index Listing', 'Index Products Listing', 24, 1),
(25, 'Define Page Status', 'Define Pages Options Settings', 25, 1),
(30, 'EZ-Pages Settings', 'EZ-Pages Settings', 30, 1);

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `startdate` char(8) DEFAULT NULL,
  `counter` int(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` (`startdate`, `counter`) VALUES
('20241218', 124);

-- --------------------------------------------------------

--
-- Table structure for table `counter_history`
--

CREATE TABLE `counter_history` (
  `startdate` char(8) NOT NULL DEFAULT '',
  `counter` int(12) DEFAULT NULL,
  `session_counter` int(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `counter_history`
--

INSERT INTO `counter_history` (`startdate`, `counter`, `session_counter`) VALUES
('20241218', 44, 3),
('20241219', 58, 1),
('20241220', 21, 2),
('20241221', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `countries_id` int(11) NOT NULL,
  `countries_name` varchar(64) NOT NULL DEFAULT '',
  `countries_iso_code_2` char(2) NOT NULL DEFAULT '',
  `countries_iso_code_3` char(3) NOT NULL DEFAULT '',
  `address_format_id` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`countries_id`, `countries_name`, `countries_iso_code_2`, `countries_iso_code_3`, `address_format_id`, `status`) VALUES
(240, 'Åland Islands', 'AX', 'ALA', 5, 1),
(1, 'Afghanistan', 'AF', 'AFG', 6, 1),
(2, 'Albania', 'AL', 'ALB', 5, 1),
(3, 'Algeria', 'DZ', 'DZA', 5, 1),
(4, 'American Samoa', 'AS', 'ASM', 7, 1),
(5, 'Andorra', 'AD', 'AND', 5, 1),
(6, 'Angola', 'AO', 'AGO', 8, 1),
(7, 'Anguilla', 'AI', 'AIA', 10, 1),
(8, 'Antarctica', 'AQ', 'ATA', 10, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', 8, 1),
(10, 'Argentina', 'AR', 'ARG', 5, 1),
(11, 'Armenia', 'AM', 'ARM', 5, 1),
(12, 'Aruba', 'AW', 'ABW', 8, 1),
(13, 'Australia', 'AU', 'AUS', 7, 1),
(14, 'Austria', 'AT', 'AUT', 5, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', 5, 1),
(16, 'Bahamas', 'BS', 'BHS', 10, 1),
(17, 'Bahrain', 'BH', 'BHR', 10, 1),
(18, 'Bangladesh', 'BD', 'BGD', 10, 1),
(19, 'Barbados', 'BB', 'BRB', 8, 1),
(20, 'Belarus', 'BY', 'BLR', 14, 1),
(21, 'Belgium', 'BE', 'BEL', 5, 1),
(22, 'Belize', 'BZ', 'BLZ', 10, 1),
(23, 'Benin', 'BJ', 'BEN', 8, 1),
(24, 'Bermuda', 'BM', 'BMU', 10, 1),
(25, 'Bhutan', 'BT', 'BTN', 10, 1),
(26, 'Bolivia', 'BO', 'BOL', 8, 1),
(27, 'Bosnia and Herzegowina', 'BA', 'BIH', 5, 1),
(28, 'Botswana', 'BW', 'BWA', 8, 1),
(29, 'Bouvet Island', 'BV', 'BVT', 8, 1),
(30, 'Brazil', 'BR', 'BRA', 11, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', 6, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', 18, 1),
(33, 'Bulgaria', 'BG', 'BGR', 5, 1),
(34, 'Burkina Faso', 'BF', 'BFA', 10, 1),
(35, 'Burundi', 'BI', 'BDI', 8, 1),
(36, 'Cambodia', 'KH', 'KHM', 7, 1),
(37, 'Cameroon', 'CM', 'CMR', 8, 1),
(38, 'Canada', 'CA', 'CAN', 7, 1),
(39, 'Cape Verde', 'CV', 'CPV', 5, 1),
(40, 'Cayman Islands', 'KY', 'CYM', 7, 1),
(41, 'Central African Republic', 'CF', 'CAF', 8, 1),
(42, 'Chad', 'TD', 'TCD', 8, 1),
(43, 'Chile', 'CL', 'CHL', 5, 1),
(44, 'China', 'CN', 'CHN', 7, 1),
(45, 'Christmas Island', 'CX', 'CXR', 7, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', 7, 1),
(47, 'Colombia', 'CO', 'COL', 7, 1),
(48, 'Comoros', 'KM', 'COM', 8, 1),
(49, 'Congo', 'CG', 'COG', 8, 1),
(50, 'Cook Islands', 'CK', 'COK', 10, 1),
(51, 'Costa Rica', 'CR', 'CRI', 11, 1),
(52, 'Côte d\'Ivoire', 'CI', 'CIV', 8, 1),
(53, 'Croatia', 'HR', 'HRV', 5, 1),
(54, 'Cuba', 'CU', 'CUB', 9, 1),
(55, 'Cyprus', 'CY', 'CYP', 5, 1),
(56, 'Czech Republic', 'CZ', 'CZE', 5, 1),
(57, 'Denmark', 'DK', 'DNK', 5, 1),
(58, 'Djibouti', 'DJ', 'DJI', 8, 1),
(59, 'Dominica', 'DM', 'DMA', 8, 1),
(60, 'Dominican Republic', 'DO', 'DOM', 5, 1),
(61, 'Timor-Leste', 'TL', 'TLS', 10, 1),
(62, 'Ecuador', 'EC', 'ECU', 12, 1),
(63, 'Egypt', 'EG', 'EGY', 6, 1),
(64, 'El Salvador', 'SV', 'SLV', 14, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', 5, 1),
(66, 'Eritrea', 'ER', 'ERI', 8, 1),
(67, 'Estonia', 'EE', 'EST', 5, 1),
(68, 'Ethiopia', 'ET', 'ETH', 5, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', 6, 1),
(70, 'Faroe Islands', 'FO', 'FRO', 5, 1),
(71, 'Fiji', 'FJ', 'FJI', 8, 1),
(72, 'Finland', 'FI', 'FIN', 5, 1),
(73, 'France', 'FR', 'FRA', 5, 1),
(75, 'French Guiana', 'GF', 'GUF', 5, 1),
(76, 'French Polynesia', 'PF', 'PYF', 5, 1),
(77, 'French Southern Territories', 'TF', 'ATF', 5, 1),
(78, 'Gabon', 'GA', 'GAB', 5, 1),
(79, 'Gambia', 'GM', 'GMB', 8, 1),
(80, 'Georgia', 'GE', 'GEO', 5, 1),
(81, 'Germany', 'DE', 'DEU', 5, 1),
(82, 'Ghana', 'GH', 'GHA', 11, 1),
(83, 'Gibraltar', 'GI', 'GIB', 6, 1),
(84, 'Greece', 'GR', 'GRC', 5, 1),
(85, 'Greenland', 'GL', 'GRL', 5, 1),
(86, 'Grenada', 'GD', 'GRD', 8, 1),
(87, 'Guadeloupe', 'GP', 'GLP', 5, 1),
(88, 'Guam', 'GU', 'GUM', 7, 1),
(89, 'Guatemala', 'GT', 'GTM', 14, 1),
(90, 'Guinea', 'GN', 'GIN', 5, 1),
(91, 'Guinea-bissau', 'GW', 'GNB', 5, 1),
(92, 'Guyana', 'GY', 'GUY', 7, 1),
(93, 'Haiti', 'HT', 'HTI', 5, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', 7, 1),
(95, 'Honduras', 'HN', 'HND', 9, 1),
(96, 'Hong Kong', 'HK', 'HKG', 8, 1),
(97, 'Hungary', 'HU', 'HUN', 19, 1),
(98, 'Iceland', 'IS', 'ISL', 5, 1),
(99, 'India', 'IN', 'IND', 6, 1),
(100, 'Indonesia', 'ID', 'IDN', 10, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', 6, 1),
(102, 'Iraq', 'IQ', 'IRQ', 11, 1),
(103, 'Ireland', 'IE', 'IRL', 6, 1),
(104, 'Israel', 'IL', 'ISR', 5, 1),
(105, 'Italy', 'IT', 'ITA', 9, 1),
(106, 'Jamaica', 'JM', 'JAM', 5, 1),
(107, 'Japan', 'JP', 'JPN', 7, 1),
(108, 'Jordan', 'JO', 'JOR', 10, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', 6, 1),
(110, 'Kenya', 'KE', 'KEN', 6, 1),
(111, 'Kiribati', 'KI', 'KIR', 6, 1),
(112, 'Korea, Democratic People\'s Republic of', 'KP', 'PRK', 10, 1),
(113, 'Korea,  Republic of', 'KR', 'KOR', 7, 1),
(114, 'Kuwait', 'KW', 'KWT', 5, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', 14, 1),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', 5, 1),
(117, 'Latvia', 'LV', 'LVA', 2, 1),
(118, 'Lebanon', 'LB', 'LBN', 10, 1),
(119, 'Lesotho', 'LS', 'LSO', 10, 1),
(120, 'Liberia', 'LR', 'LBR', 9, 1),
(121, 'Libya', 'LY', 'LBY', 8, 1),
(122, 'Liechtenstein', 'LI', 'LIE', 5, 1),
(123, 'Lithuania', 'LT', 'LTU', 5, 1),
(124, 'Luxembourg', 'LU', 'LUX', 5, 1),
(125, 'Macao', 'MO', 'MAC', 8, 1),
(126, 'Macedonia, The Former Yugoslav Republic of', 'MK', 'MKD', 5, 1),
(127, 'Madagascar', 'MG', 'MDG', 5, 1),
(128, 'Malawi', 'MW', 'MWI', 8, 1),
(129, 'Malaysia', 'MY', 'MYS', 14, 1),
(130, 'Maldives', 'MV', 'MDV', 10, 1),
(131, 'Mali', 'ML', 'MLI', 8, 1),
(132, 'Malta', 'MT', 'MLT', 6, 1),
(133, 'Marshall Islands', 'MH', 'MHL', 7, 1),
(134, 'Martinique', 'MQ', 'MTQ', 5, 1),
(135, 'Mauritania', 'MR', 'MRT', 8, 1),
(136, 'Mauritius', 'MU', 'MUS', 8, 1),
(137, 'Mayotte', 'YT', 'MYT', 5, 1),
(138, 'Mexico', 'MX', 'MEX', 9, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', 7, 1),
(140, 'Moldova', 'MD', 'MDA', 5, 1),
(141, 'Monaco', 'MC', 'MCO', 5, 1),
(142, 'Mongolia', 'MN', 'MNG', 10, 1),
(143, 'Montserrat', 'MS', 'MSR', 6, 1),
(144, 'Morocco', 'MA', 'MAR', 5, 1),
(145, 'Mozambique', 'MZ', 'MOZ', 14, 1),
(146, 'Myanmar', 'MM', 'MMR', 2, 1),
(147, 'Namibia', 'NA', 'NAM', 8, 1),
(148, 'Nauru', 'NR', 'NRU', 10, 1),
(149, 'Nepal', 'NP', 'NPL', 10, 1),
(150, 'Netherlands', 'NL', 'NLD', 5, 1),
(151, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', 10, 1),
(152, 'New Caledonia', 'NC', 'NCL', 5, 1),
(153, 'New Zealand', 'NZ', 'NZL', 10, 1),
(154, 'Nicaragua', 'NI', 'NIC', 12, 1),
(155, 'Niger', 'NE', 'NER', 5, 1),
(156, 'Nigeria', 'NG', 'NGA', 13, 1),
(157, 'Niue', 'NU', 'NIU', 10, 1),
(158, 'Norfolk Island', 'NF', 'NFK', 7, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', 7, 1),
(160, 'Norway', 'NO', 'NOR', 5, 1),
(161, 'Oman', 'OM', 'OMN', 15, 1),
(162, 'Pakistan', 'PK', 'PAK', 7, 1),
(163, 'Palau', 'PW', 'PLW', 7, 1),
(164, 'Panama', 'PA', 'PAN', 14, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', 16, 1),
(166, 'Paraguay', 'PY', 'PRY', 5, 1),
(167, 'Peru', 'PE', 'PER', 12, 1),
(168, 'Philippines', 'PH', 'PHL', 17, 1),
(169, 'Pitcairn', 'PN', 'PCN', 6, 1),
(170, 'Poland', 'PL', 'POL', 5, 1),
(171, 'Portugal', 'PT', 'PRT', 5, 1),
(172, 'Puerto Rico', 'PR', 'PRI', 7, 1),
(173, 'Qatar', 'QA', 'QAT', 8, 1),
(174, 'Réunion', 'RE', 'REU', 5, 1),
(175, 'Romania', 'RO', 'ROU', 5, 1),
(176, 'Russian Federation', 'RU', 'RUS', 6, 1),
(177, 'Rwanda', 'RW', 'RWA', 8, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', 2, 1),
(179, 'Saint Lucia', 'LC', 'LCA', 8, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 10, 1),
(181, 'Samoa', 'WS', 'WSM', 8, 1),
(182, 'San Marino', 'SM', 'SMR', 5, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', 8, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', 10, 1),
(185, 'Senegal', 'SN', 'SEN', 5, 1),
(186, 'Seychelles', 'SC', 'SYC', 6, 1),
(187, 'Sierra Leone', 'SL', 'SLE', 8, 1),
(188, 'Singapore', 'SG', 'SGP', 10, 1),
(189, 'Slovakia (Slovak Republic)', 'SK', 'SVK', 5, 1),
(190, 'Slovenia', 'SI', 'SVN', 5, 1),
(191, 'Solomon Islands', 'SB', 'SLB', 6, 1),
(192, 'Somalia', 'SO', 'SOM', 2, 1),
(193, 'South Africa', 'ZA', 'ZAF', 6, 1),
(194, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', 6, 1),
(195, 'Spain', 'ES', 'ESP', 20, 1),
(196, 'Sri Lanka', 'LK', 'LKA', 6, 1),
(197, 'St. Helena', 'SH', 'SHN', 6, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', 5, 1),
(199, 'Sudan', 'SD', 'SDN', 12, 1),
(200, 'Suriname', 'SR', 'SUR', 8, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', 5, 1),
(202, 'Swaziland', 'SZ', 'SWZ', 6, 1),
(203, 'Sweden', 'SE', 'SWE', 5, 1),
(204, 'Switzerland', 'CH', 'CHE', 5, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', 5, 1),
(206, 'Taiwan', 'TW', 'TWN', 10, 1),
(207, 'Tajikistan', 'TJ', 'TJK', 5, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', 14, 1),
(209, 'Thailand', 'TH', 'THA', 11, 1),
(210, 'Togo', 'TG', 'TGO', 6, 1),
(211, 'Tokelau', 'TK', 'TKL', 10, 1),
(212, 'Tonga', 'TO', 'TON', 8, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', 2, 1),
(214, 'Tunisia', 'TN', 'TUN', 9, 1),
(215, 'Türkiye', 'TR', 'TUR', 9, 1),
(216, 'Turkmenistan', 'TM', 'TKM', 5, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', 6, 1),
(218, 'Tuvalu', 'TV', 'TUV', 6, 1),
(219, 'Uganda', 'UG', 'UGA', 8, 1),
(220, 'Ukraine', 'UA', 'UKR', 6, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', 6, 1),
(222, 'United Kingdom', 'GB', 'GBR', 6, 1),
(223, 'United States', 'US', 'USA', 7, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', 7, 1),
(225, 'Uruguay', 'UY', 'URY', 5, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', 6, 1),
(227, 'Vanuatu', 'VU', 'VUT', 8, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', 9, 1),
(229, 'Venezuela', 'VE', 'VEN', 16, 1),
(230, 'Viet Nam', 'VN', 'VNM', 18, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', 10, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', 7, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', 5, 1),
(234, 'Western Sahara', 'EH', 'ESH', 8, 1),
(235, 'Yemen', 'YE', 'YEM', 8, 1),
(236, 'Serbia', 'RS', 'SRB', 6, 1),
(238, 'Zambia', 'ZM', 'ZMB', 10, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', 6, 1),
(241, 'Palestine,  State of', 'PS', 'PSE', 5, 1),
(242, 'Montenegro', 'ME', 'MNE', 5, 1),
(243, 'Guernsey', 'GG', 'GGY', 6, 1),
(244, 'Isle of Man', 'IM', 'IMN', 6, 1),
(245, 'Jersey', 'JE', 'JEY', 6, 1),
(246, 'South Sudan', 'SS', 'SSD', 5, 1),
(247, 'Curaçao', 'CW', 'CUW', 7, 1),
(248, 'Sint Maarten (Dutch part)', 'SX', 'SXM', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `count_product_views`
--

CREATE TABLE `count_product_views` (
  `product_id` int(11) NOT NULL DEFAULT 0,
  `language_id` int(11) NOT NULL DEFAULT 1,
  `date_viewed` date NOT NULL,
  `views` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `count_product_views`
--

INSERT INTO `count_product_views` (`product_id`, `language_id`, `date_viewed`, `views`) VALUES
(2, 2, '2024-12-19', 3);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(11) NOT NULL,
  `coupon_type` char(1) NOT NULL DEFAULT 'F',
  `coupon_code` varchar(32) NOT NULL DEFAULT '',
  `coupon_amount` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `coupon_minimum_order` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `coupon_start_date` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `coupon_expire_date` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `uses_per_coupon` int(5) NOT NULL DEFAULT 1,
  `uses_per_user` int(5) NOT NULL DEFAULT 0,
  `restrict_to_products` varchar(255) DEFAULT NULL,
  `restrict_to_categories` varchar(255) DEFAULT NULL,
  `restrict_to_customers` text DEFAULT NULL,
  `coupon_active` char(1) NOT NULL DEFAULT 'Y',
  `date_created` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `coupon_zone_restriction` int(11) NOT NULL DEFAULT 0,
  `coupon_calc_base` tinyint(1) NOT NULL DEFAULT 0,
  `coupon_order_limit` int(4) NOT NULL DEFAULT 0,
  `coupon_is_valid_for_sales` tinyint(1) NOT NULL DEFAULT 1,
  `coupon_product_count` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons_description`
--

CREATE TABLE `coupons_description` (
  `coupon_id` int(11) NOT NULL DEFAULT 0,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `coupon_name` varchar(64) NOT NULL DEFAULT '',
  `coupon_description` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_email_track`
--

CREATE TABLE `coupon_email_track` (
  `unique_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL DEFAULT 0,
  `customer_id_sent` int(11) NOT NULL DEFAULT 0,
  `sent_firstname` varchar(32) DEFAULT NULL,
  `sent_lastname` varchar(32) DEFAULT NULL,
  `emailed_to` varchar(96) DEFAULT NULL,
  `date_sent` datetime NOT NULL DEFAULT '0001-01-01 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_gv_customer`
--

CREATE TABLE `coupon_gv_customer` (
  `customer_id` int(5) NOT NULL DEFAULT 0,
  `amount` decimal(15,4) NOT NULL DEFAULT 0.0000
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_gv_queue`
--

CREATE TABLE `coupon_gv_queue` (
  `unique_id` int(5) NOT NULL,
  `customer_id` int(5) NOT NULL DEFAULT 0,
  `order_id` int(5) NOT NULL DEFAULT 0,
  `amount` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `date_created` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `ipaddr` varchar(45) NOT NULL DEFAULT '',
  `release_flag` char(1) NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_redeem_track`
--

CREATE TABLE `coupon_redeem_track` (
  `unique_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL DEFAULT 0,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `redeem_date` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `redeem_ip` varchar(45) NOT NULL DEFAULT '',
  `order_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_referrers`
--

CREATE TABLE `coupon_referrers` (
  `referrer_id` int(11) NOT NULL,
  `referrer_domain` varchar(64) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_restrict`
--

CREATE TABLE `coupon_restrict` (
  `restrict_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL DEFAULT 0,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL DEFAULT 0,
  `coupon_restrict` char(1) NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `currencies_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL DEFAULT '',
  `code` char(3) NOT NULL DEFAULT '',
  `symbol_left` varchar(32) DEFAULT NULL,
  `symbol_right` varchar(32) DEFAULT NULL,
  `decimal_point` char(1) DEFAULT NULL,
  `thousands_point` char(1) DEFAULT NULL,
  `decimal_places` char(1) DEFAULT NULL,
  `value` decimal(14,6) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`currencies_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_point`, `thousands_point`, `decimal_places`, `value`, `last_updated`) VALUES
(1, 'US Dollar', 'USD', '$', '', '.', ',', '2', 1.000000, '2024-12-18 09:59:13'),
(2, 'Euro', 'EUR', '&euro;', '', '.', ',', '2', 0.773000, '2024-12-18 09:59:13'),
(3, 'GB Pound', 'GBP', '&pound;', '', '.', ',', '2', 0.672600, '2024-12-18 09:59:13'),
(4, 'Canadian Dollar', 'CAD', '$', '', '.', ',', '2', 1.104200, '2024-12-18 09:59:13'),
(5, 'Australian Dollar', 'AUD', '$', '', '.', ',', '2', 1.178900, '2024-12-18 09:59:13'),
(6, 'Indonesia Rupiah', 'IDR', 'Rp.', '', '.', ',', '0', 16469.000000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customers_id` int(11) NOT NULL,
  `customers_gender` char(1) NOT NULL DEFAULT '',
  `customers_firstname` varchar(32) NOT NULL DEFAULT '',
  `customers_lastname` varchar(32) NOT NULL DEFAULT '',
  `customers_dob` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `customers_email_address` varchar(96) NOT NULL DEFAULT '',
  `customers_nick` varchar(96) NOT NULL DEFAULT '',
  `customers_default_address_id` int(11) NOT NULL DEFAULT 0,
  `customers_telephone` varchar(32) NOT NULL DEFAULT '',
  `customers_fax` varchar(32) DEFAULT NULL,
  `customers_password` varchar(255) NOT NULL DEFAULT '',
  `customers_secret` varchar(64) NOT NULL DEFAULT '',
  `customers_newsletter` char(1) DEFAULT NULL,
  `customers_group_pricing` int(11) NOT NULL DEFAULT 0,
  `customers_email_format` varchar(4) NOT NULL DEFAULT 'TEXT',
  `customers_authorization` int(1) NOT NULL DEFAULT 0,
  `customers_referral` varchar(32) NOT NULL DEFAULT '',
  `registration_ip` varchar(45) NOT NULL DEFAULT '',
  `last_login_ip` varchar(45) NOT NULL DEFAULT '',
  `customers_paypal_payerid` varchar(20) NOT NULL DEFAULT '',
  `customers_paypal_ec` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `customers_whole` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customers_id`, `customers_gender`, `customers_firstname`, `customers_lastname`, `customers_dob`, `customers_email_address`, `customers_nick`, `customers_default_address_id`, `customers_telephone`, `customers_fax`, `customers_password`, `customers_secret`, `customers_newsletter`, `customers_group_pricing`, `customers_email_format`, `customers_authorization`, `customers_referral`, `registration_ip`, `last_login_ip`, `customers_paypal_payerid`, `customers_paypal_ec`, `customers_whole`) VALUES
(1, '', 'Anugrah', 'Panji', '0001-01-01 00:00:00', 'anugrah@gmail.com', '', 1, '081234567890', '', '$2y$10$CJrBDr/e6veQIHGRUTJsOe8hFEJpN34513Pft6K8EIUglytZac3N6', '', '0', 0, 'TEXT', 0, '', '::1', '::1', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customers_basket`
--

CREATE TABLE `customers_basket` (
  `customers_basket_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL DEFAULT 0,
  `products_id` tinytext NOT NULL,
  `customers_basket_quantity` float NOT NULL DEFAULT 0,
  `customers_basket_date_added` varchar(8) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers_basket_attributes`
--

CREATE TABLE `customers_basket_attributes` (
  `customers_basket_attributes_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL DEFAULT 0,
  `products_id` tinytext NOT NULL,
  `products_options_id` varchar(64) NOT NULL DEFAULT '0',
  `products_options_value_id` int(11) NOT NULL DEFAULT 0,
  `products_options_value_text` blob DEFAULT NULL,
  `products_options_sort_order` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers_info`
--

CREATE TABLE `customers_info` (
  `customers_info_id` int(11) NOT NULL DEFAULT 0,
  `customers_info_date_of_last_logon` datetime DEFAULT NULL,
  `customers_info_number_of_logons` int(5) DEFAULT NULL,
  `customers_info_date_account_created` datetime DEFAULT NULL,
  `customers_info_date_account_last_modified` datetime DEFAULT NULL,
  `global_product_notifications` int(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers_info`
--

INSERT INTO `customers_info` (`customers_info_id`, `customers_info_date_of_last_logon`, `customers_info_number_of_logons`, `customers_info_date_account_created`, `customers_info_date_account_last_modified`, `global_product_notifications`) VALUES
(1, '2024-12-20 08:49:35', 2, '2024-12-20 08:49:35', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customers_to_groups`
--

CREATE TABLE `customers_to_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_groups`
--

CREATE TABLE `customer_groups` (
  `group_id` int(10) UNSIGNED NOT NULL,
  `group_name` varchar(191) NOT NULL,
  `group_comment` varchar(255) DEFAULT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_cache`
--

CREATE TABLE `db_cache` (
  `cache_entry_name` varchar(64) NOT NULL DEFAULT '',
  `cache_data` mediumblob DEFAULT NULL,
  `cache_entry_created` int(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_archive`
--

CREATE TABLE `email_archive` (
  `archive_id` int(11) NOT NULL,
  `email_to_name` varchar(96) NOT NULL DEFAULT '',
  `email_to_address` varchar(96) NOT NULL DEFAULT '',
  `email_from_name` varchar(96) NOT NULL DEFAULT '',
  `email_from_address` varchar(96) NOT NULL DEFAULT '',
  `email_subject` varchar(255) NOT NULL DEFAULT '',
  `email_html` text NOT NULL,
  `email_text` text NOT NULL,
  `date_sent` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `module` varchar(64) NOT NULL DEFAULT '',
  `errorinfo` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ezpages`
--

CREATE TABLE `ezpages` (
  `pages_id` int(11) NOT NULL,
  `alt_url` varchar(255) NOT NULL DEFAULT '',
  `alt_url_external` varchar(255) NOT NULL DEFAULT '',
  `status_mobile` tinyint(4) NOT NULL DEFAULT 1,
  `status_header` int(1) NOT NULL DEFAULT 1,
  `status_sidebox` int(1) NOT NULL DEFAULT 1,
  `status_footer` int(1) NOT NULL DEFAULT 1,
  `status_visible` int(1) NOT NULL DEFAULT 0,
  `status_toc` int(1) NOT NULL DEFAULT 1,
  `mobile_sort_order` tinyint(4) NOT NULL DEFAULT 0,
  `header_sort_order` int(3) NOT NULL DEFAULT 0,
  `sidebox_sort_order` int(3) NOT NULL DEFAULT 0,
  `footer_sort_order` int(3) NOT NULL DEFAULT 0,
  `toc_sort_order` int(3) NOT NULL DEFAULT 0,
  `page_open_new_window` int(1) NOT NULL DEFAULT 0,
  `page_is_ssl` int(1) NOT NULL DEFAULT 1,
  `toc_chapter` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ezpages_content`
--

CREATE TABLE `ezpages_content` (
  `pages_id` int(11) NOT NULL DEFAULT 0,
  `languages_id` int(11) NOT NULL DEFAULT 1,
  `pages_title` varchar(64) NOT NULL DEFAULT '',
  `pages_html_text` mediumtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `featured`
--

CREATE TABLE `featured` (
  `featured_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL DEFAULT 0,
  `featured_date_added` datetime DEFAULT NULL,
  `featured_last_modified` datetime DEFAULT NULL,
  `expires_date` date NOT NULL DEFAULT '0001-01-01',
  `date_status_change` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `featured_date_available` date NOT NULL DEFAULT '0001-01-01'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `featured_categories`
--

CREATE TABLE `featured_categories` (
  `featured_categories_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL DEFAULT 0,
  `featured_date_added` datetime DEFAULT NULL,
  `featured_last_modified` datetime DEFAULT NULL,
  `expires_date` date NOT NULL DEFAULT '0001-01-01',
  `date_status_change` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `featured_date_available` date NOT NULL DEFAULT '0001-01-01'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files_uploaded`
--

CREATE TABLE `files_uploaded` (
  `files_uploaded_id` int(11) NOT NULL,
  `sesskey` varchar(32) DEFAULT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `files_uploaded_name` varchar(64) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Must always have either a sesskey or customers_id';

-- --------------------------------------------------------

--
-- Table structure for table `geo_zones`
--

CREATE TABLE `geo_zones` (
  `geo_zone_id` int(11) NOT NULL,
  `geo_zone_name` varchar(32) NOT NULL DEFAULT '',
  `geo_zone_description` varchar(255) NOT NULL DEFAULT '',
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL DEFAULT '0001-01-01 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `geo_zones`
--

INSERT INTO `geo_zones` (`geo_zone_id`, `geo_zone_name`, `geo_zone_description`, `last_modified`, `date_added`) VALUES
(1, 'Florida', 'Florida local sales tax zone', NULL, '2024-12-18 09:59:15');

-- --------------------------------------------------------

--
-- Table structure for table `get_terms_to_filter`
--

CREATE TABLE `get_terms_to_filter` (
  `get_term_name` varchar(191) NOT NULL DEFAULT '',
  `get_term_table` varchar(64) NOT NULL,
  `get_term_name_field` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `get_terms_to_filter`
--

INSERT INTO `get_terms_to_filter` (`get_term_name`, `get_term_table`, `get_term_name_field`) VALUES
('manufacturers_id', 'TABLE_MANUFACTURERS', 'manufacturers_name'),
('music_genre_id', 'TABLE_MUSIC_GENRE', 'music_genre_name'),
('record_company_id', 'TABLE_RECORD_COMPANY', 'record_company_name');

-- --------------------------------------------------------

--
-- Table structure for table `group_pricing`
--

CREATE TABLE `group_pricing` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(32) NOT NULL DEFAULT '',
  `group_percentage` decimal(5,2) NOT NULL DEFAULT 0.00,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL DEFAULT '0001-01-01 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `languages_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL DEFAULT '',
  `code` char(2) NOT NULL DEFAULT '',
  `image` varchar(64) DEFAULT NULL,
  `directory` varchar(32) DEFAULT NULL,
  `sort_order` int(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`languages_id`, `name`, `code`, `image`, `directory`, `sort_order`) VALUES
(1, 'English', 'en', 'icon.gif', 'english', 1),
(2, 'Indonesia', 'id', 'icon.gif', 'indonesia', 1);

-- --------------------------------------------------------

--
-- Table structure for table `layout_boxes`
--

CREATE TABLE `layout_boxes` (
  `layout_id` int(11) NOT NULL,
  `layout_template` varchar(64) NOT NULL DEFAULT '',
  `layout_box_name` varchar(64) NOT NULL DEFAULT '',
  `layout_box_status` tinyint(1) NOT NULL DEFAULT 0,
  `layout_box_location` tinyint(1) NOT NULL DEFAULT 0,
  `layout_box_sort_order` int(11) NOT NULL DEFAULT 0,
  `layout_box_sort_order_single` int(11) NOT NULL DEFAULT 0,
  `layout_box_status_single` tinyint(4) NOT NULL DEFAULT 0,
  `plugin_details` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `layout_boxes`
--

INSERT INTO `layout_boxes` (`layout_id`, `layout_template`, `layout_box_name`, `layout_box_status`, `layout_box_location`, `layout_box_sort_order`, `layout_box_sort_order_single`, `layout_box_status_single`, `plugin_details`) VALUES
(1, 'default_template_settings', 'banner_box_all.php', 1, 1, 5, 0, 0, ''),
(2, 'default_template_settings', 'banner_box.php', 1, 0, 300, 1, 127, ''),
(3, 'default_template_settings', 'banner_box2.php', 1, 1, 15, 1, 15, ''),
(4, 'default_template_settings', 'best_sellers.php', 1, 1, 30, 70, 1, ''),
(5, 'default_template_settings', 'categories.php', 1, 0, 10, 10, 1, ''),
(6, 'default_template_settings', 'currencies.php', 0, 1, 80, 60, 0, ''),
(7, 'default_template_settings', 'document_categories.php', 1, 0, 0, 0, 0, ''),
(8, 'default_template_settings', 'ezpages.php', 1, 1, -1, 2, 1, ''),
(9, 'default_template_settings', 'featured.php', 1, 0, 45, 0, 0, ''),
(10, 'default_template_settings', 'information.php', 1, 0, 50, 40, 1, ''),
(11, 'default_template_settings', 'languages.php', 0, 1, 70, 50, 0, ''),
(12, 'default_template_settings', 'manufacturers.php', 1, 0, 30, 20, 1, ''),
(13, 'default_template_settings', 'manufacturer_info.php', 1, 1, 35, 95, 1, ''),
(14, 'default_template_settings', 'more_information.php', 1, 0, 200, 200, 1, ''),
(15, 'default_template_settings', 'music_genres.php', 1, 1, 0, 0, 0, ''),
(16, 'default_template_settings', 'order_history.php', 1, 1, 0, 0, 0, ''),
(17, 'default_template_settings', 'product_notifications.php', 1, 1, 55, 85, 1, ''),
(18, 'default_template_settings', 'record_companies.php', 1, 1, 0, 0, 0, ''),
(19, 'default_template_settings', 'reviews.php', 1, 0, 40, 0, 0, ''),
(20, 'default_template_settings', 'search.php', 1, 1, 10, 0, 0, ''),
(21, 'default_template_settings', 'search_header.php', 0, 0, 0, 0, 1, ''),
(22, 'default_template_settings', 'shopping_cart.php', 1, 1, 20, 30, 1, ''),
(23, 'default_template_settings', 'specials.php', 1, 1, 45, 0, 0, ''),
(24, 'default_template_settings', 'whats_new.php', 1, 0, 20, 0, 0, ''),
(25, 'default_template_settings', 'whos_online.php', 1, 1, 200, 200, 1, ''),
(26, 'template_default', 'banner_box_all.php', 1, 1, 5, 0, 0, ''),
(27, 'template_default', 'banner_box.php', 1, 0, 300, 1, 127, ''),
(28, 'template_default', 'banner_box2.php', 1, 1, 15, 1, 15, ''),
(29, 'template_default', 'best_sellers.php', 1, 1, 30, 70, 1, ''),
(30, 'template_default', 'categories.php', 1, 0, 10, 10, 1, ''),
(31, 'template_default', 'currencies.php', 0, 1, 80, 60, 0, ''),
(32, 'template_default', 'ezpages.php', 1, 1, -1, 2, 1, ''),
(33, 'template_default', 'featured.php', 1, 0, 45, 0, 0, ''),
(34, 'template_default', 'information.php', 1, 0, 50, 40, 1, ''),
(35, 'template_default', 'languages.php', 0, 1, 70, 50, 0, ''),
(36, 'template_default', 'manufacturers.php', 1, 0, 30, 20, 1, ''),
(37, 'template_default', 'manufacturer_info.php', 1, 1, 35, 95, 1, ''),
(38, 'template_default', 'more_information.php', 1, 0, 200, 200, 1, ''),
(39, 'template_default', 'my_broken_box.php', 1, 0, 0, 0, 0, ''),
(40, 'template_default', 'order_history.php', 1, 1, 0, 0, 0, ''),
(41, 'template_default', 'product_notifications.php', 1, 1, 55, 85, 1, ''),
(42, 'template_default', 'reviews.php', 1, 0, 40, 0, 0, ''),
(43, 'template_default', 'search.php', 1, 1, 10, 0, 0, ''),
(44, 'template_default', 'search_header.php', 0, 0, 0, 0, 1, ''),
(45, 'template_default', 'shopping_cart.php', 1, 1, 20, 30, 1, ''),
(46, 'template_default', 'specials.php', 1, 1, 45, 0, 0, ''),
(47, 'template_default', 'whats_new.php', 1, 0, 20, 0, 0, ''),
(48, 'template_default', 'whos_online.php', 1, 1, 200, 200, 1, ''),
(49, 'classic', 'banner_box.php', 1, 0, 300, 1, 127, ''),
(50, 'classic', 'banner_box2.php', 1, 1, 15, 1, 15, ''),
(51, 'classic', 'banner_box_all.php', 1, 1, 5, 0, 0, ''),
(52, 'classic', 'best_sellers.php', 1, 1, 30, 70, 1, ''),
(53, 'classic', 'categories.php', 1, 0, 10, 10, 1, ''),
(54, 'classic', 'currencies.php', 0, 1, 80, 60, 0, ''),
(55, 'classic', 'document_categories.php', 1, 0, 0, 0, 0, ''),
(56, 'classic', 'ezpages.php', 1, 1, -1, 2, 1, ''),
(57, 'classic', 'featured.php', 1, 0, 45, 0, 0, ''),
(58, 'classic', 'information.php', 1, 0, 50, 40, 1, ''),
(59, 'classic', 'languages.php', 0, 1, 70, 50, 0, ''),
(60, 'classic', 'manufacturers.php', 1, 0, 30, 20, 1, ''),
(61, 'classic', 'manufacturer_info.php', 1, 1, 35, 95, 1, ''),
(62, 'classic', 'more_information.php', 1, 0, 200, 200, 1, ''),
(63, 'classic', 'music_genres.php', 1, 1, 0, 0, 0, ''),
(64, 'classic', 'order_history.php', 1, 1, 0, 0, 0, ''),
(65, 'classic', 'product_notifications.php', 1, 1, 55, 85, 1, ''),
(66, 'classic', 'record_companies.php', 1, 1, 0, 0, 0, ''),
(67, 'classic', 'reviews.php', 1, 0, 40, 0, 0, ''),
(68, 'classic', 'search.php', 1, 1, 10, 0, 0, ''),
(69, 'classic', 'search_header.php', 0, 0, 0, 0, 1, ''),
(70, 'classic', 'shopping_cart.php', 1, 1, 20, 30, 1, ''),
(71, 'classic', 'specials.php', 1, 1, 45, 0, 0, ''),
(72, 'classic', 'whats_new.php', 1, 0, 20, 0, 0, ''),
(73, 'classic', 'whos_online.php', 1, 1, 200, 200, 1, ''),
(74, 'responsive_classic', 'banner_box.php', 1, 0, 300, 1, 127, ''),
(75, 'responsive_classic', 'banner_box2.php', 1, 1, 15, 1, 15, ''),
(76, 'responsive_classic', 'banner_box_all.php', 1, 1, 5, 0, 0, ''),
(77, 'responsive_classic', 'best_sellers.php', 1, 1, 30, 70, 1, ''),
(78, 'responsive_classic', 'categories.php', 1, 0, 10, 10, 1, ''),
(79, 'responsive_classic', 'currencies.php', 0, 1, 80, 60, 0, ''),
(80, 'responsive_classic', 'document_categories.php', 1, 0, 0, 0, 0, ''),
(81, 'responsive_classic', 'ezpages.php', 1, 1, -1, 2, 1, ''),
(82, 'responsive_classic', 'featured.php', 1, 0, 45, 0, 0, ''),
(83, 'responsive_classic', 'information.php', 1, 0, 50, 40, 1, ''),
(84, 'responsive_classic', 'languages.php', 0, 1, 70, 50, 0, ''),
(85, 'responsive_classic', 'manufacturers.php', 1, 0, 30, 20, 1, ''),
(86, 'responsive_classic', 'manufacturer_info.php', 1, 1, 35, 95, 1, ''),
(87, 'responsive_classic', 'more_information.php', 1, 0, 200, 200, 1, ''),
(88, 'responsive_classic', 'music_genres.php', 1, 1, 0, 0, 0, ''),
(89, 'responsive_classic', 'order_history.php', 1, 1, 0, 0, 0, ''),
(90, 'responsive_classic', 'product_notifications.php', 1, 1, 55, 85, 1, ''),
(91, 'responsive_classic', 'record_companies.php', 1, 1, 0, 0, 0, ''),
(92, 'responsive_classic', 'reviews.php', 1, 0, 40, 0, 0, ''),
(93, 'responsive_classic', 'search.php', 1, 1, 10, 0, 0, ''),
(94, 'responsive_classic', 'search_header.php', 0, 0, 0, 0, 1, ''),
(95, 'responsive_classic', 'shopping_cart.php', 1, 1, 20, 30, 1, ''),
(96, 'responsive_classic', 'specials.php', 1, 1, 45, 0, 0, ''),
(97, 'responsive_classic', 'whats_new.php', 1, 0, 20, 0, 0, ''),
(98, 'responsive_classic', 'whos_online.php', 1, 1, 200, 200, 1, ''),
(99, 'responsive_classic', 'brands.php', 0, 0, 3000, 3000, 0, ''),
(100, 'responsive_classic', 'featured_categories.php', 0, 0, 3000, 3000, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturers_id` int(11) NOT NULL,
  `manufacturers_name` varchar(32) NOT NULL DEFAULT '',
  `manufacturers_image` varchar(255) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `featured` tinyint(4) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers_info`
--

CREATE TABLE `manufacturers_info` (
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `languages_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_url` varchar(255) NOT NULL DEFAULT '',
  `url_clicked` int(5) NOT NULL DEFAULT 0,
  `date_last_click` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_clips`
--

CREATE TABLE `media_clips` (
  `clip_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL DEFAULT 0,
  `clip_type` smallint(6) NOT NULL DEFAULT 0,
  `clip_filename` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `last_modified` datetime NOT NULL DEFAULT '0001-01-01 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_manager`
--

CREATE TABLE `media_manager` (
  `media_id` int(11) NOT NULL,
  `media_name` varchar(255) NOT NULL DEFAULT '',
  `last_modified` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `date_added` datetime NOT NULL DEFAULT '0001-01-01 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_to_products`
--

CREATE TABLE `media_to_products` (
  `media_id` int(11) NOT NULL DEFAULT 0,
  `product_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_types`
--

CREATE TABLE `media_types` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(64) NOT NULL DEFAULT '',
  `type_ext` varchar(8) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `media_types`
--

INSERT INTO `media_types` (`type_id`, `type_name`, `type_ext`) VALUES
(1, 'MP3', '.mp3');

-- --------------------------------------------------------

--
-- Table structure for table `meta_tags_categories_description`
--

CREATE TABLE `meta_tags_categories_description` (
  `categories_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 1,
  `metatags_title` varchar(255) NOT NULL DEFAULT '',
  `metatags_keywords` text DEFAULT NULL,
  `metatags_description` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meta_tags_products_description`
--

CREATE TABLE `meta_tags_products_description` (
  `products_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 1,
  `metatags_title` varchar(255) NOT NULL DEFAULT '',
  `metatags_keywords` text DEFAULT NULL,
  `metatags_description` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `music_genre`
--

CREATE TABLE `music_genre` (
  `music_genre_id` int(11) NOT NULL,
  `music_genre_name` varchar(32) NOT NULL DEFAULT '',
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `newsletters_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `content_html` text NOT NULL,
  `module` varchar(255) NOT NULL DEFAULT '',
  `date_added` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `date_sent` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `locked` int(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL DEFAULT 0,
  `customers_name` varchar(64) NOT NULL DEFAULT '',
  `customers_company` varchar(64) DEFAULT NULL,
  `customers_street_address` varchar(128) NOT NULL DEFAULT '',
  `customers_suburb` varchar(128) DEFAULT NULL,
  `customers_city` varchar(128) NOT NULL DEFAULT '',
  `customers_postcode` varchar(64) NOT NULL DEFAULT '',
  `customers_state` varchar(128) DEFAULT NULL,
  `customers_country` varchar(64) NOT NULL DEFAULT '',
  `customers_telephone` varchar(32) NOT NULL DEFAULT '',
  `customers_email_address` varchar(96) NOT NULL DEFAULT '',
  `customers_address_format_id` int(5) NOT NULL DEFAULT 0,
  `delivery_name` varchar(64) NOT NULL DEFAULT '',
  `delivery_company` varchar(64) DEFAULT NULL,
  `delivery_street_address` varchar(128) NOT NULL DEFAULT '',
  `delivery_suburb` varchar(128) DEFAULT NULL,
  `delivery_city` varchar(128) NOT NULL DEFAULT '',
  `delivery_postcode` varchar(64) NOT NULL DEFAULT '',
  `delivery_state` varchar(128) DEFAULT NULL,
  `delivery_country` varchar(64) NOT NULL DEFAULT '',
  `delivery_address_format_id` int(5) NOT NULL DEFAULT 0,
  `billing_name` varchar(64) NOT NULL DEFAULT '',
  `billing_company` varchar(64) DEFAULT NULL,
  `billing_street_address` varchar(128) NOT NULL DEFAULT '',
  `billing_suburb` varchar(128) DEFAULT NULL,
  `billing_city` varchar(128) NOT NULL DEFAULT '',
  `billing_postcode` varchar(64) NOT NULL DEFAULT '',
  `billing_state` varchar(128) DEFAULT NULL,
  `billing_country` varchar(64) NOT NULL DEFAULT '',
  `billing_address_format_id` int(5) NOT NULL DEFAULT 0,
  `payment_method` varchar(128) NOT NULL DEFAULT '',
  `payment_module_code` varchar(32) NOT NULL DEFAULT '',
  `shipping_method` varchar(255) DEFAULT NULL,
  `shipping_module_code` varchar(32) NOT NULL DEFAULT '',
  `coupon_code` varchar(32) NOT NULL DEFAULT '',
  `cc_type` varchar(20) DEFAULT NULL,
  `cc_owner` varchar(64) DEFAULT NULL,
  `cc_number` varchar(32) DEFAULT NULL,
  `cc_expires` varchar(4) DEFAULT NULL,
  `cc_cvv` blob DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_purchased` datetime DEFAULT NULL,
  `orders_status` int(5) NOT NULL DEFAULT 0,
  `orders_date_finished` datetime DEFAULT NULL,
  `currency` char(3) DEFAULT NULL,
  `currency_value` decimal(14,6) DEFAULT NULL,
  `order_total` decimal(15,4) DEFAULT NULL,
  `order_tax` decimal(15,4) DEFAULT NULL,
  `shipping_tax_rate` decimal(15,4) DEFAULT NULL,
  `paypal_ipn_id` int(11) NOT NULL DEFAULT 0,
  `ip_address` varchar(96) NOT NULL DEFAULT '',
  `order_weight` float DEFAULT NULL,
  `language_code` char(2) NOT NULL DEFAULT '',
  `is_wholesale` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

CREATE TABLE `orders_products` (
  `orders_products_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL DEFAULT 0,
  `products_id` int(11) NOT NULL DEFAULT 0,
  `products_model` varchar(32) DEFAULT NULL,
  `products_name` varchar(191) NOT NULL DEFAULT '',
  `products_price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `final_price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `products_tax` decimal(7,4) NOT NULL DEFAULT 0.0000,
  `products_quantity` float NOT NULL DEFAULT 0,
  `onetime_charges` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `products_priced_by_attribute` tinyint(1) NOT NULL DEFAULT 0,
  `product_is_free` tinyint(1) NOT NULL DEFAULT 0,
  `products_discount_type` tinyint(1) NOT NULL DEFAULT 0,
  `products_discount_type_from` tinyint(1) NOT NULL DEFAULT 0,
  `products_prid` tinytext NOT NULL,
  `products_weight` float DEFAULT NULL,
  `products_virtual` tinyint(1) DEFAULT NULL,
  `product_is_always_free_shipping` tinyint(1) DEFAULT NULL,
  `products_quantity_order_min` float DEFAULT NULL,
  `products_quantity_order_units` float DEFAULT NULL,
  `products_quantity_order_max` float DEFAULT NULL,
  `products_quantity_mixed` tinyint(1) DEFAULT NULL,
  `products_mixed_discount_quantity` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_products_attributes`
--

CREATE TABLE `orders_products_attributes` (
  `orders_products_attributes_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL DEFAULT 0,
  `orders_products_id` int(11) NOT NULL DEFAULT 0,
  `products_options` varchar(32) NOT NULL DEFAULT '',
  `products_options_values` text NOT NULL,
  `options_values_price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `price_prefix` char(1) NOT NULL DEFAULT '',
  `product_attribute_is_free` tinyint(1) NOT NULL DEFAULT 0,
  `products_attributes_weight` float NOT NULL DEFAULT 0,
  `products_attributes_weight_prefix` char(1) NOT NULL DEFAULT '',
  `attributes_discounted` tinyint(1) NOT NULL DEFAULT 1,
  `attributes_price_base_included` tinyint(1) NOT NULL DEFAULT 1,
  `attributes_price_onetime` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `attributes_price_factor` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `attributes_price_factor_offset` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `attributes_price_factor_onetime` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `attributes_price_factor_onetime_offset` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `attributes_qty_prices` text DEFAULT NULL,
  `attributes_qty_prices_onetime` text DEFAULT NULL,
  `attributes_price_words` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `attributes_price_words_free` int(4) NOT NULL DEFAULT 0,
  `attributes_price_letters` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `attributes_price_letters_free` int(4) NOT NULL DEFAULT 0,
  `products_options_id` int(11) NOT NULL DEFAULT 0,
  `products_options_values_id` int(11) NOT NULL DEFAULT 0,
  `products_prid` tinytext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_products_download`
--

CREATE TABLE `orders_products_download` (
  `orders_products_download_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL DEFAULT 0,
  `orders_products_id` int(11) NOT NULL DEFAULT 0,
  `orders_products_filename` varchar(255) NOT NULL DEFAULT '',
  `download_maxdays` int(2) NOT NULL DEFAULT 0,
  `download_count` int(2) NOT NULL DEFAULT 0,
  `products_prid` tinytext NOT NULL,
  `products_attributes_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_status`
--

CREATE TABLE `orders_status` (
  `orders_status_id` int(11) NOT NULL DEFAULT 0,
  `language_id` int(11) NOT NULL DEFAULT 1,
  `orders_status_name` varchar(32) NOT NULL DEFAULT '',
  `sort_order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders_status`
--

INSERT INTO `orders_status` (`orders_status_id`, `language_id`, `orders_status_name`, `sort_order`) VALUES
(1, 1, 'Pending', 0),
(2, 1, 'Processing', 10),
(3, 1, 'Delivered', 20),
(4, 1, 'Update', 30),
(1, 2, 'Pending', 0),
(2, 2, 'Processing', 10),
(3, 2, 'Delivered', 20),
(4, 2, 'Update', 30);

-- --------------------------------------------------------

--
-- Table structure for table `orders_status_history`
--

CREATE TABLE `orders_status_history` (
  `orders_status_history_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL DEFAULT 0,
  `orders_status_id` int(5) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `customer_notified` int(1) DEFAULT 0,
  `comments` text DEFAULT NULL,
  `updated_by` varchar(45) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_total`
--

CREATE TABLE `orders_total` (
  `orders_total_id` int(10) UNSIGNED NOT NULL,
  `orders_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `text` varchar(255) NOT NULL DEFAULT '',
  `value` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `class` varchar(32) NOT NULL DEFAULT '',
  `sort_order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paypal`
--

CREATE TABLE `paypal` (
  `paypal_ipn_id` int(11) UNSIGNED NOT NULL,
  `order_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `txn_type` varchar(40) NOT NULL DEFAULT '',
  `module_name` varchar(40) NOT NULL DEFAULT '',
  `module_mode` varchar(40) NOT NULL DEFAULT '',
  `reason_code` varchar(40) DEFAULT NULL,
  `payment_type` varchar(40) NOT NULL DEFAULT '',
  `payment_status` varchar(32) NOT NULL DEFAULT '',
  `pending_reason` varchar(32) DEFAULT NULL,
  `invoice` varchar(128) DEFAULT NULL,
  `mc_currency` char(3) NOT NULL DEFAULT '',
  `first_name` varchar(32) NOT NULL DEFAULT '',
  `last_name` varchar(32) NOT NULL DEFAULT '',
  `payer_business_name` varchar(128) DEFAULT NULL,
  `address_name` varchar(64) DEFAULT NULL,
  `address_street` varchar(254) DEFAULT NULL,
  `address_city` varchar(120) DEFAULT NULL,
  `address_state` varchar(120) DEFAULT NULL,
  `address_zip` varchar(64) DEFAULT NULL,
  `address_country` varchar(64) DEFAULT NULL,
  `address_status` varchar(11) DEFAULT NULL,
  `payer_email` varchar(128) NOT NULL DEFAULT '',
  `payer_id` varchar(32) NOT NULL DEFAULT '',
  `payer_status` varchar(10) NOT NULL DEFAULT '',
  `payment_date` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `business` varchar(128) NOT NULL DEFAULT '',
  `receiver_email` varchar(128) NOT NULL DEFAULT '',
  `receiver_id` varchar(32) NOT NULL DEFAULT '',
  `txn_id` varchar(20) NOT NULL DEFAULT '',
  `parent_txn_id` varchar(20) DEFAULT NULL,
  `num_cart_items` tinyint(4) UNSIGNED NOT NULL DEFAULT 1,
  `mc_gross` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `mc_fee` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `payment_gross` decimal(15,4) DEFAULT NULL,
  `payment_fee` decimal(15,4) DEFAULT NULL,
  `settle_amount` decimal(15,4) DEFAULT NULL,
  `settle_currency` char(3) DEFAULT NULL,
  `exchange_rate` decimal(15,4) DEFAULT NULL,
  `notify_version` varchar(6) NOT NULL DEFAULT '',
  `verify_sign` varchar(128) NOT NULL DEFAULT '',
  `last_modified` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `date_added` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `memo` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paypal_payment_status`
--

CREATE TABLE `paypal_payment_status` (
  `payment_status_id` int(11) NOT NULL,
  `payment_status_name` varchar(64) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paypal_payment_status`
--

INSERT INTO `paypal_payment_status` (`payment_status_id`, `payment_status_name`) VALUES
(1, 'Completed'),
(2, 'Pending'),
(3, 'Failed'),
(4, 'Denied'),
(5, 'Refunded'),
(6, 'Canceled_Reversal'),
(7, 'Reversed');

-- --------------------------------------------------------

--
-- Table structure for table `paypal_payment_status_history`
--

CREATE TABLE `paypal_payment_status_history` (
  `payment_status_history_id` int(11) NOT NULL,
  `paypal_ipn_id` int(11) NOT NULL DEFAULT 0,
  `txn_id` varchar(64) NOT NULL DEFAULT '',
  `parent_txn_id` varchar(64) NOT NULL DEFAULT '',
  `payment_status` varchar(17) NOT NULL DEFAULT '',
  `pending_reason` varchar(32) DEFAULT NULL,
  `date_added` datetime NOT NULL DEFAULT '0001-01-01 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paypal_session`
--

CREATE TABLE `paypal_session` (
  `unique_id` int(11) NOT NULL,
  `session_id` text NOT NULL,
  `saved_session` mediumblob NOT NULL,
  `expiry` int(17) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paypal_testing`
--

CREATE TABLE `paypal_testing` (
  `paypal_ipn_id` int(11) UNSIGNED NOT NULL,
  `order_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `custom` varchar(255) NOT NULL DEFAULT '',
  `txn_type` varchar(40) NOT NULL DEFAULT '',
  `module_name` varchar(40) NOT NULL DEFAULT '',
  `module_mode` varchar(40) NOT NULL DEFAULT '',
  `reason_code` varchar(40) DEFAULT NULL,
  `payment_type` varchar(40) NOT NULL DEFAULT '',
  `payment_status` varchar(32) NOT NULL DEFAULT '',
  `pending_reason` varchar(32) DEFAULT NULL,
  `invoice` varchar(128) DEFAULT NULL,
  `mc_currency` char(3) NOT NULL DEFAULT '',
  `first_name` varchar(32) NOT NULL DEFAULT '',
  `last_name` varchar(32) NOT NULL DEFAULT '',
  `payer_business_name` varchar(128) DEFAULT NULL,
  `address_name` varchar(64) DEFAULT NULL,
  `address_street` varchar(254) DEFAULT NULL,
  `address_city` varchar(120) DEFAULT NULL,
  `address_state` varchar(120) DEFAULT NULL,
  `address_zip` varchar(64) DEFAULT NULL,
  `address_country` varchar(64) DEFAULT NULL,
  `address_status` varchar(11) DEFAULT NULL,
  `payer_email` varchar(128) NOT NULL DEFAULT '',
  `payer_id` varchar(32) NOT NULL DEFAULT '',
  `payer_status` varchar(10) NOT NULL DEFAULT '',
  `payment_date` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `business` varchar(128) NOT NULL DEFAULT '',
  `receiver_email` varchar(128) NOT NULL DEFAULT '',
  `receiver_id` varchar(32) NOT NULL DEFAULT '',
  `txn_id` varchar(20) NOT NULL DEFAULT '',
  `parent_txn_id` varchar(20) DEFAULT NULL,
  `num_cart_items` tinyint(4) UNSIGNED NOT NULL DEFAULT 1,
  `mc_gross` decimal(7,2) NOT NULL DEFAULT 0.00,
  `mc_fee` decimal(7,2) NOT NULL DEFAULT 0.00,
  `payment_gross` decimal(7,2) DEFAULT NULL,
  `payment_fee` decimal(7,2) DEFAULT NULL,
  `settle_amount` decimal(7,2) DEFAULT NULL,
  `settle_currency` char(3) DEFAULT NULL,
  `exchange_rate` decimal(4,2) DEFAULT NULL,
  `notify_version` decimal(2,1) NOT NULL DEFAULT 0.0,
  `verify_sign` varchar(128) NOT NULL DEFAULT '',
  `last_modified` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `date_added` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `memo` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plugin_control`
--

CREATE TABLE `plugin_control` (
  `unique_key` varchar(40) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `type` varchar(11) NOT NULL DEFAULT 'free',
  `managed` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `author` varchar(64) NOT NULL,
  `version` varchar(10) DEFAULT NULL,
  `zc_versions` text NOT NULL,
  `zc_contrib_id` int(11) DEFAULT NULL,
  `infs` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plugin_control_versions`
--

CREATE TABLE `plugin_control_versions` (
  `unique_key` varchar(40) NOT NULL,
  `version` varchar(10) NOT NULL,
  `author` varchar(64) NOT NULL,
  `zc_versions` text NOT NULL,
  `infs` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plugin_groups`
--

CREATE TABLE `plugin_groups` (
  `unique_key` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plugin_groups_description`
--

CREATE TABLE `plugin_groups_description` (
  `plugin_group_unique_key` varchar(20) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 1,
  `name` varchar(64) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `products_id` int(11) NOT NULL,
  `products_type` int(11) NOT NULL DEFAULT 1,
  `products_quantity` float NOT NULL DEFAULT 0,
  `products_model` varchar(32) DEFAULT NULL,
  `products_mpn` varchar(32) DEFAULT NULL,
  `products_image` varchar(255) DEFAULT NULL,
  `products_price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `products_price_w` varchar(150) NOT NULL DEFAULT '0',
  `products_virtual` tinyint(1) NOT NULL DEFAULT 0,
  `products_date_added` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `products_last_modified` datetime DEFAULT NULL,
  `products_date_available` datetime DEFAULT NULL,
  `products_weight` float NOT NULL DEFAULT 0,
  `products_length` decimal(8,4) DEFAULT NULL,
  `products_width` decimal(8,4) DEFAULT NULL,
  `products_height` decimal(8,4) DEFAULT NULL,
  `product_ships_in_own_box` tinyint(4) DEFAULT NULL,
  `products_status` tinyint(1) NOT NULL DEFAULT 0,
  `products_tax_class_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) DEFAULT NULL,
  `products_ordered` float NOT NULL DEFAULT 0,
  `products_quantity_order_min` float NOT NULL DEFAULT 1,
  `products_quantity_order_units` float NOT NULL DEFAULT 1,
  `products_priced_by_attribute` tinyint(1) NOT NULL DEFAULT 0,
  `product_is_free` tinyint(1) NOT NULL DEFAULT 0,
  `product_is_call` tinyint(1) NOT NULL DEFAULT 0,
  `products_quantity_mixed` tinyint(1) NOT NULL DEFAULT 0,
  `product_is_always_free_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `products_qty_box_status` tinyint(1) NOT NULL DEFAULT 1,
  `products_quantity_order_max` float NOT NULL DEFAULT 0,
  `products_sort_order` int(11) NOT NULL DEFAULT 0,
  `products_discount_type` tinyint(1) NOT NULL DEFAULT 0,
  `products_discount_type_from` tinyint(1) NOT NULL DEFAULT 0,
  `products_price_sorter` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `master_categories_id` int(11) NOT NULL DEFAULT 0,
  `products_mixed_discount_quantity` tinyint(1) NOT NULL DEFAULT 1,
  `metatags_title_status` tinyint(1) NOT NULL DEFAULT 0,
  `metatags_products_name_status` tinyint(1) NOT NULL DEFAULT 0,
  `metatags_model_status` tinyint(1) NOT NULL DEFAULT 0,
  `metatags_price_status` tinyint(1) NOT NULL DEFAULT 0,
  `metatags_title_tagline_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `products_type`, `products_quantity`, `products_model`, `products_mpn`, `products_image`, `products_price`, `products_price_w`, `products_virtual`, `products_date_added`, `products_last_modified`, `products_date_available`, `products_weight`, `products_length`, `products_width`, `products_height`, `product_ships_in_own_box`, `products_status`, `products_tax_class_id`, `manufacturers_id`, `products_ordered`, `products_quantity_order_min`, `products_quantity_order_units`, `products_priced_by_attribute`, `product_is_free`, `product_is_call`, `products_quantity_mixed`, `product_is_always_free_shipping`, `products_qty_box_status`, `products_quantity_order_max`, `products_sort_order`, `products_discount_type`, `products_discount_type_from`, `products_price_sorter`, `master_categories_id`, `products_mixed_discount_quantity`, `metatags_title_status`, `metatags_products_name_status`, `metatags_model_status`, `metatags_price_status`, `metatags_title_tagline_status`) VALUES
(2, 1, 50, '', '', 'Asus Vivobook Pro 15 M3500QC OLED955.jpg', 876.2200, '0', 0, '2024-12-19 09:25:41', NULL, NULL, 3, 14.0000, 9.0000, 1.0000, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 876.2200, 1, 1, 0, 0, 0, 0, 0),
(3, 1, 50, '', '', 'Asus M6500QC OLEDS551.png', 742.3500, '0', 0, '2024-12-19 09:28:08', NULL, NULL, 3, 14.0000, 9.0000, 1.0000, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 742.3500, 1, 1, 0, 0, 0, 0, 0),
(4, 1, 50, '', '', 'Asus Vivobook 15 K513EA OLED551.jpg', 508.0900, '0', 0, '2024-12-19 09:30:24', NULL, NULL, 3, 14.0000, 9.0000, 1.0000, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 508.0900, 1, 1, 0, 0, 0, 0, 0),
(5, 1, 50, '', '', 'Asus Vivobook 15 K513EA OLED751.jpg', 666.2900, '0', 0, '2024-12-19 09:32:50', NULL, NULL, 3, 14.0000, 9.0000, 1.0000, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 666.2900, 1, 1, 0, 0, 0, 0, 0),
(6, 1, 50, '', '', 'ASUS ZENBOOK 14 OLED UX5401EA OLED714.jpg', 909.6900, '0', 0, '2024-12-19 09:34:31', NULL, NULL, 3, 14.0000, 9.0000, 1.0000, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 909.6900, 1, 1, 0, 0, 0, 0, 0),
(7, 1, 50, '', '', 'ASUS ROG STRIX G15 G513RC R735B7GO.jpg', 1052.6800, '0', 0, '2024-12-19 09:37:01', NULL, NULL, 3, 14.0000, 9.0000, 1.0000, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1052.6800, 1, 1, 0, 0, 0, 0, 0),
(8, 1, 50, '', '', 'ACER SWIFT 3 OLED.jpg', 676.9400, '0', 0, '2024-12-19 09:40:23', '2024-12-19 09:42:00', NULL, 3, 14.0000, 9.0000, 1.0000, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 676.9400, 2, 1, 0, 0, 0, 0, 0),
(9, 1, 50, '', '', 'ACER ASPIRE 5 SLIM A514.png', 509.6100, '0', 0, '2024-12-19 09:41:44', NULL, NULL, 3, 14.0000, 9.0000, 1.0000, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 509.6100, 2, 1, 0, 0, 0, 0, 0),
(10, 1, 50, '', '', 'ACER SWIFT 3 NOW SF314-512 GOLD.png', 690.6300, '0', 0, '2024-12-19 09:45:33', NULL, NULL, 3, 14.0000, 9.0000, 1.0000, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 690.6300, 2, 1, 0, 0, 0, 0, 0),
(11, 1, 50, '', '', 'ACER ASPIRE 5 SLIM A515 I9 13900H.png', 745.4000, '0', 0, '2024-12-19 09:47:01', NULL, NULL, 3, 14.0000, 9.0000, 1.0000, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 745.4000, 2, 1, 0, 0, 0, 0, 0),
(12, 1, 50, '', '', 'ACER ASPIRE 5 SPIN A5SP14 TOUCH I5 1335.png', 696.6600, '0', 0, '2024-12-19 09:49:39', NULL, NULL, 3, 14.0000, 9.0000, 1.0000, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 696.6600, 2, 1, 0, 0, 0, 0, 0),
(13, 1, 50, '', '', 'ACER NITRO V 15 ANV15 51 5115.png', 870.1400, '0', 0, '2024-12-19 09:50:58', NULL, NULL, 3, 14.0000, 9.0000, 1.0000, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 870.1400, 2, 1, 0, 0, 0, 0, 0),
(14, 1, 50, '', '', 'Hp 245 G8 Ryzen 5.png', 383.2900, '0', 0, '2024-12-19 09:53:14', NULL, NULL, 3, 14.0000, 9.0000, 1.0000, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 383.2900, 4, 1, 0, 0, 0, 0, 0),
(15, 1, 50, '', '', 'HP PAVILION AERO 13 BE1001AU.jpg', 605.4400, '0', 0, '2024-12-19 09:54:27', NULL, NULL, 3, 14.0000, 9.0000, 1.0000, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 605.4400, 4, 1, 0, 0, 0, 0, 0),
(16, 1, 50, '', '', 'HP 245 G10.png', 324.0200, '0', 0, '2024-12-19 09:55:52', NULL, NULL, 3, 14.0000, 9.0000, 1.0000, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 324.0200, 4, 1, 0, 0, 0, 0, 0),
(17, 1, 50, '', '', 'HP PAVILION PLUS 14 EW0021TU.png', 675.3600, '0', 0, '2024-12-19 09:59:20', NULL, NULL, 3, 14.0000, 9.0000, 1.0000, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 675.3600, 4, 1, 0, 0, 0, 0, 0),
(18, 1, 50, '', '', 'HP PAVILION PLUS 14 EY0017AU.jpg', 649.9000, '0', 0, '2024-12-19 10:01:04', NULL, NULL, 3, 14.0000, 9.0000, 1.0000, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 649.9000, 4, 1, 0, 0, 0, 0, 0),
(19, 1, 50, '', '', 'HP ENVY X360 14 OLED FC0888TU.png', 1180.4000, '0', 0, '2024-12-19 10:03:10', NULL, NULL, 3, 14.0000, 9.0000, 1.0000, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1180.4000, 4, 1, 0, 0, 0, 0, 0),
(20, 1, 50, '', '', 'LENOVO YOGA PRO 7 14 TOUCH 005YID.png', 1326.5000, '0', 0, '2024-12-19 10:06:41', NULL, NULL, 3, 14.0000, 9.0000, 1.0000, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1326.5000, 3, 1, 0, 0, 0, 0, 0),
(21, 1, 50, '', '', 'LENOVO YOGA SLIM 6 14 OLED 0BID.png', 888.3900, '0', 0, '2024-12-19 10:07:53', NULL, NULL, 3, 14.0000, 9.0000, 1.0000, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 888.3900, 3, 1, 0, 0, 0, 0, 0),
(22, 1, 50, '', '', 'LENOVO IDEAPAD FLEX 5 14 OLED TOUCH 6VID.png', 766.6900, '0', 0, '2024-12-19 10:09:18', NULL, NULL, 3, 14.0000, 9.0000, 1.0000, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 766.6900, 3, 1, 0, 0, 0, 0, 0),
(23, 1, 50, '', '', 'LENOVO LEGION SLIM 5 16 I7 13700H RTX4060 8GB.jpg', 1411.6900, '0', 0, '2024-12-19 10:10:58', NULL, NULL, 3, 14.0000, 9.0000, 1.0000, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1411.6900, 3, 1, 0, 0, 0, 0, 0),
(24, 1, 50, '', '', 'LENOVO LEGION PRO 5 16 I9 13900HX RTX4060 8GB.jpg', 1636.8300, '0', 0, '2024-12-19 10:12:31', NULL, NULL, 3, 14.0000, 9.0000, 1.0000, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1636.8300, 3, 1, 0, 0, 0, 0, 0),
(25, 1, 50, '', '', 'LENOVO IDEAPAD SLIM 1 14 N4020.png', 272.3000, '0', 0, '2024-12-19 10:13:48', NULL, NULL, 3, 14.0000, 9.0000, 1.0000, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 272.3000, 3, 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

CREATE TABLE `products_attributes` (
  `products_attributes_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL DEFAULT 0,
  `options_id` int(11) NOT NULL DEFAULT 0,
  `options_values_id` int(11) NOT NULL DEFAULT 0,
  `options_values_price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `options_values_price_w` varchar(150) NOT NULL DEFAULT '0',
  `price_prefix` char(1) NOT NULL DEFAULT '',
  `products_options_sort_order` int(11) NOT NULL DEFAULT 0,
  `product_attribute_is_free` tinyint(1) NOT NULL DEFAULT 0,
  `products_attributes_weight` float NOT NULL DEFAULT 0,
  `products_attributes_weight_prefix` char(1) NOT NULL DEFAULT '',
  `attributes_display_only` tinyint(1) NOT NULL DEFAULT 0,
  `attributes_default` tinyint(1) NOT NULL DEFAULT 0,
  `attributes_discounted` tinyint(1) NOT NULL DEFAULT 1,
  `attributes_image` varchar(255) DEFAULT NULL,
  `attributes_price_base_included` tinyint(1) NOT NULL DEFAULT 1,
  `attributes_price_onetime` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `attributes_price_factor` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `attributes_price_factor_offset` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `attributes_price_factor_onetime` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `attributes_price_factor_onetime_offset` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `attributes_qty_prices` text DEFAULT NULL,
  `attributes_qty_prices_onetime` text DEFAULT NULL,
  `attributes_price_words` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `attributes_price_words_free` int(4) NOT NULL DEFAULT 0,
  `attributes_price_letters` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `attributes_price_letters_free` int(4) NOT NULL DEFAULT 0,
  `attributes_required` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes_download`
--

CREATE TABLE `products_attributes_download` (
  `products_attributes_id` int(11) NOT NULL DEFAULT 0,
  `products_attributes_filename` varchar(255) NOT NULL DEFAULT '',
  `products_attributes_maxdays` int(2) DEFAULT 0,
  `products_attributes_maxcount` int(2) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_description`
--

CREATE TABLE `products_description` (
  `products_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 1,
  `products_name` varchar(191) NOT NULL DEFAULT '',
  `products_description` text DEFAULT NULL,
  `products_url` varchar(255) DEFAULT NULL,
  `products_viewed` int(5) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products_description`
--

INSERT INTO `products_description` (`products_id`, `language_id`, `products_name`, `products_description`, `products_url`, `products_viewed`) VALUES
(2, 1, 'Asus Vivobook Pro 15 M3500QC OLED955', 'Brand\r\nASUS\r\nProcessor\r\nAMD Ryzen 9\r\nGraphic Card\r\nNvidia GeForce RTX3050 4 GB\r\nRAM\r\n16 GB\r\nStorage\r\n512 GB SSD\r\nDisplay\r\n15.6 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial 2 Year', '', 0),
(2, 2, 'Asus Vivobook Pro 15 M3500QC OLED955', 'Brand\r\nASUS\r\nProcessor\r\nAMD Ryzen 9\r\nGraphic Card\r\nNvidia GeForce RTX3050 4 GB\r\nRAM\r\n16 GB\r\nStorage\r\n512 GB SSD\r\nDisplay\r\n15.6 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial 2 Year', '', 0),
(3, 1, 'Asus M6500QC OLEDS551', 'Brand\r\nASUS\r\nProcessor\r\nAMD Ryzen 5\r\nGraphic Card\r\nNvidia GeForce RTX3050 4 GB\r\nRAM\r\n16 GB\r\nStorage\r\n512 GB SSD\r\nDisplay\r\n15.6 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial', '', 0),
(3, 2, 'Asus M6500QC OLEDS551', 'Brand\r\nASUS\r\nProcessor\r\nAMD Ryzen 5\r\nGraphic Card\r\nNvidia GeForce RTX3050 4 GB\r\nRAM\r\n16 GB\r\nStorage\r\n512 GB SSD\r\nDisplay\r\n15.6 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial', '', 0),
(4, 1, 'Asus Vivobook 15 K513EA OLED551', 'Brand\r\nASUS\r\nProcessor\r\nIntel Core i5\r\nGraphic Card\r\nIntel HD\r\nRAM\r\n8 GB\r\nStorage\r\n512 GB SSD\r\nDisplay\r\n15.6 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial', '', 0),
(4, 2, 'Asus Vivobook 15 K513EA OLED551', 'Brand\r\nASUS\r\nProcessor\r\nIntel Core i5\r\nGraphic Card\r\nIntel HD\r\nRAM\r\n8 GB\r\nStorage\r\n512 GB SSD\r\nDisplay\r\n15.6 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial', '', 0),
(5, 1, 'Asus Vivobook 15 K513EA OLED751', 'Brand\r\nASUS\r\nProcessor\r\nIntel Core i7\r\nGraphic Card\r\nIntel HD\r\nRAM\r\n8 GB\r\nStorage\r\n512 GB SSD\r\nDisplay\r\n15.6 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial', '', 0),
(5, 2, 'Asus Vivobook 15 K513EA OLED751', 'Brand\r\nASUS\r\nProcessor\r\nIntel Core i7\r\nGraphic Card\r\nIntel HD\r\nRAM\r\n8 GB\r\nStorage\r\n512 GB SSD\r\nDisplay\r\n15.6 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial', '', 0),
(6, 1, 'ASUS ZENBOOK 14 OLED UX5401EA OLED714', 'Brand\r\nASUS\r\nProcessor\r\nIntel Core i7\r\nGraphic Card\r\nIntel IrisXe\r\nRAM\r\n16 GB\r\nStorage\r\n1 TB SSD\r\nDisplay\r\n14.0 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial', '', 0),
(6, 2, 'ASUS ZENBOOK 14 OLED UX5401EA OLED714', 'Brand\r\nASUS\r\nProcessor\r\nIntel Core i7\r\nGraphic Card\r\nIntel IrisXe\r\nRAM\r\n16 GB\r\nStorage\r\n1 TB SSD\r\nDisplay\r\n14.0 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial', '', 0),
(7, 1, 'ASUS ROG STRIX G15 G513RC R735B7GO', 'Brand\r\nASUS\r\nProcessor\r\nAMD Ryzen 7\r\nGraphic Card\r\nNvidia GeForce RTX3050 4 GB\r\nRAM\r\n16 GB\r\nStorage\r\n512 GB SSD\r\nDisplay\r\n15.6 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial 2 Year + 1 Year Perfect', '', 0),
(7, 2, 'ASUS ROG STRIX G15 G513RC R735B7GO', 'Brand\r\nASUS\r\nProcessor\r\nAMD Ryzen 7\r\nGraphic Card\r\nNvidia GeForce RTX3050 4 GB\r\nRAM\r\n16 GB\r\nStorage\r\n512 GB SSD\r\nDisplay\r\n15.6 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial 2 Year + 1 Year Perfect', '', 0),
(8, 1, 'ACER SWIFT 3 OLED', 'Brand\r\nACER\r\nProcessor\r\nIntel Core i5\r\nGraphic Card\r\nIntel IrisXe\r\nRAM\r\n16 GB\r\nStorage\r\n512 GB\r\nDisplay\r\n14.0 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial 2 Year + ADP', '', 0),
(8, 2, 'ACER SWIFT 3 OLED', 'Brand\r\nACER\r\nProcessor\r\nIntel Core i5\r\nGraphic Card\r\nIntel IrisXe\r\nRAM\r\n16 GB\r\nStorage\r\n512 GB\r\nDisplay\r\n14.0 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial 2 Year + ADP', '', 0),
(9, 1, 'ACER ASPIRE 5 SLIM A514', 'Brand\r\nACER\r\nProcessor\r\nIntel Core i5\r\nGraphic Card\r\nIntel IrisXe\r\nRAM\r\n8 GB\r\nStorage\r\n512 GB\r\nDisplay\r\n14.0 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial', '', 0),
(9, 2, 'ACER ASPIRE 5 SLIM A514', 'Brand\r\nACER\r\nProcessor\r\nIntel Core i5\r\nGraphic Card\r\nIntel IrisXe\r\nRAM\r\n8 GB\r\nStorage\r\n512 GB\r\nDisplay\r\n14.0 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial', '', 0),
(10, 1, 'ACER SWIFT 3 NOW SF314-512 GOLD', 'Brand\r\nACER\r\nProcessor\r\nIntel Core i5\r\nGraphic Card\r\nIntel IrisXe\r\nRAM\r\n16 GB\r\nStorage\r\n512 GB SSD\r\nDisplay\r\n14.0 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial 2 Year + ADP', '', 0),
(10, 2, 'ACER SWIFT 3 NOW SF314-512 GOLD', 'Brand\r\nACER\r\nProcessor\r\nIntel Core i5\r\nGraphic Card\r\nIntel IrisXe\r\nRAM\r\n16 GB\r\nStorage\r\n512 GB SSD\r\nDisplay\r\n14.0 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial 2 Year + ADP', '', 0),
(11, 1, 'ACER ASPIRE 5 SLIM A515 I9 13900H', 'Brand\r\nACER\r\nProcessor\r\nIntel Core i9\r\nGraphic Card\r\nIntel IrisXe\r\nRAM\r\n16 GB\r\nStorage\r\n512 GB SSD\r\nDisplay\r\n15.6 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial', '', 0),
(11, 2, 'ACER ASPIRE 5 SLIM A515 I9 13900H', 'Brand\r\nACER\r\nProcessor\r\nIntel Core i9\r\nGraphic Card\r\nIntel IrisXe\r\nRAM\r\n16 GB\r\nStorage\r\n512 GB SSD\r\nDisplay\r\n15.6 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial', '', 0),
(12, 1, 'ACER ASPIRE 5 SPIN A5SP14 TOUCH I5 1335', 'Brand\r\nACER\r\nProcessor\r\nIntel Core i5\r\nGraphic Card\r\nIntel UHD\r\nRAM\r\n16 GB\r\nStorage\r\n512 GB SSD\r\nDisplay\r\n14.0 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial', '', 0),
(12, 2, 'ACER ASPIRE 5 SPIN A5SP14 TOUCH I5 1335', 'Brand\r\nACER\r\nProcessor\r\nIntel Core i5\r\nGraphic Card\r\nIntel UHD\r\nRAM\r\n16 GB\r\nStorage\r\n512 GB SSD\r\nDisplay\r\n14.0 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial', '', 0),
(13, 1, 'ACER NITRO V 15 ANV15 51 5115', 'Brand\r\nACER\r\nProcessor\r\nIntel Core i5\r\nGraphic Card\r\nNvidia GeForce RTX4050 6 GB\r\nRAM\r\n8 GB\r\nStorage\r\n512 GB SSD\r\nDisplay\r\n15.6 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial 2 Year + ADP', '', 0),
(13, 2, 'ACER NITRO V 15 ANV15 51 5115', 'Brand\r\nACER\r\nProcessor\r\nIntel Core i5\r\nGraphic Card\r\nNvidia GeForce RTX4050 6 GB\r\nRAM\r\n8 GB\r\nStorage\r\n512 GB SSD\r\nDisplay\r\n15.6 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial 2 Year + ADP', '', 0),
(14, 1, 'Hp 245 G8 Ryzen 5', 'Brand\r\nHP\r\nProcessor\r\nAMD Ryzen 5\r\nGraphic Card\r\nVEGA 7\r\nRAM\r\n8 GB\r\nStorage\r\n512 GB SSD\r\nDisplay\r\n14.0 Inc\r\nOperating System\r\nWindows 11\r\nWarranty\r\nOfficial', '', 0),
(14, 2, 'Hp 245 G8 Ryzen 5', 'Brand\r\nHP\r\nProcessor\r\nAMD Ryzen 5\r\nGraphic Card\r\nVEGA 7\r\nRAM\r\n8 GB\r\nStorage\r\n512 GB SSD\r\nDisplay\r\n14.0 Inc\r\nOperating System\r\nWindows 11\r\nWarranty\r\nOfficial', '', 0),
(15, 1, 'HP PAVILION AERO 13 BE1001AU', 'Brand\r\nHP\r\nProcessor\r\nAMD Ryzen 5\r\nGraphic Card\r\nVEGA 7\r\nRAM\r\n16 GB\r\nStorage\r\n512 GB SSD\r\nDisplay\r\n13.3 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial 2 Year + ADP', '', 0),
(15, 2, 'HP PAVILION AERO 13 BE1001AU', 'Brand\r\nHP\r\nProcessor\r\nAMD Ryzen 5\r\nGraphic Card\r\nVEGA 7\r\nRAM\r\n16 GB\r\nStorage\r\n512 GB SSD\r\nDisplay\r\n13.3 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial 2 Year + ADP', '', 0),
(16, 1, 'HP 245 G10', 'Brand\r\nHP\r\nProcessor\r\nAMD Ryzen 3\r\nGraphic Card\r\nAMD Radeon\r\nRAM\r\n8 GB\r\nStorage\r\n256 GB SSD\r\nDisplay\r\n14.0 Inc\r\nOperating System\r\nWindows 11\r\nWarranty\r\nOfficial', '', 0),
(16, 2, 'HP 245 G10', 'Brand\r\nHP\r\nProcessor\r\nAMD Ryzen 3\r\nGraphic Card\r\nAMD Radeon\r\nRAM\r\n8 GB\r\nStorage\r\n256 GB SSD\r\nDisplay\r\n14.0 Inc\r\nOperating System\r\nWindows 11\r\nWarranty\r\nOfficial', '', 0),
(17, 1, 'HP PAVILION PLUS 14 EW0021TU', 'Brand\r\nHP\r\nProcessor\r\nIntel Core i5\r\nGraphic Card\r\nIntel IrisXe\r\nRAM\r\n16 GB\r\nStorage\r\n512 GB SSD\r\nDisplay\r\n14.0 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial 2 Year', '', 0),
(17, 2, 'HP PAVILION PLUS 14 EW0021TU', 'Brand\r\nHP\r\nProcessor\r\nIntel Core i5\r\nGraphic Card\r\nIntel IrisXe\r\nRAM\r\n16 GB\r\nStorage\r\n512 GB SSD\r\nDisplay\r\n14.0 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial 2 Year', '', 0),
(18, 1, 'HP PAVILION PLUS 14 EY0017AU', 'Brand\r\nHP\r\nProcessor\r\nAMD Ryzen 5\r\nGraphic Card\r\nAMD Radeon\r\nRAM\r\n16 GB\r\nStorage\r\n512 GB\r\nDisplay\r\n14.0 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial 2 Year + ADP', '', 0),
(18, 2, 'HP PAVILION PLUS 14 EY0017AU', 'Brand\r\nHP\r\nProcessor\r\nAMD Ryzen 5\r\nGraphic Card\r\nAMD Radeon\r\nRAM\r\n16 GB\r\nStorage\r\n512 GB\r\nDisplay\r\n14.0 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial 2 Year + ADP', '', 0),
(19, 1, 'HP ENVY X360 14 OLED FC0888TU', 'Brand\r\nHP\r\nProcessor\r\nIntel Core Ultra 7\r\nGraphic Card\r\nIntel Graphics\r\nRAM\r\n16 GB\r\nStorage\r\n1 TB\r\nDisplay\r\n14.0 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial 2 Year + ADP', '', 0),
(19, 2, 'HP ENVY X360 14 OLED FC0888TU', 'Brand\r\nHP\r\nProcessor\r\nIntel Core Ultra 7\r\nGraphic Card\r\nIntel Graphics\r\nRAM\r\n16 GB\r\nStorage\r\n1 TB\r\nDisplay\r\n14.0 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial 2 Year + ADP', '', 0),
(20, 1, 'LENOVO YOGA PRO 7 14 TOUCH 005YID', 'Brand\r\nLENOVO\r\nProcessor\r\nIntel Core i7\r\nGraphic Card\r\nNvidia GeForce RTX4050 6 GB\r\nRAM\r\n16 GB\r\nStorage\r\n1 TB\r\nDisplay\r\n14.5 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial 3 Year + 2 ADP', '', 0),
(20, 2, 'LENOVO YOGA PRO 7 14 TOUCH 005YID', 'Brand\r\nLENOVO\r\nProcessor\r\nIntel Core i7\r\nGraphic Card\r\nNvidia GeForce RTX4050 6 GB\r\nRAM\r\n16 GB\r\nStorage\r\n1 TB\r\nDisplay\r\n14.5 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial 3 Year + 2 ADP', '', 0),
(21, 1, 'LENOVO YOGA SLIM 6 14 OLED 0BID', 'Brand\r\nLENOVO\r\nProcessor\r\nIntel Core i7\r\nGraphic Card\r\nIntel IrisXe\r\nRAM\r\n16 GB\r\nStorage\r\n512 GB\r\nDisplay\r\n14.0 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial 3 Year + 3 ADP', '', 0),
(21, 2, 'LENOVO YOGA SLIM 6 14 OLED 0BID', 'Brand\r\nLENOVO\r\nProcessor\r\nIntel Core i7\r\nGraphic Card\r\nIntel IrisXe\r\nRAM\r\n16 GB\r\nStorage\r\n512 GB\r\nDisplay\r\n14.0 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial 3 Year + 3 ADP', '', 0),
(22, 1, 'LENOVO IDEAPAD FLEX 5 14 OLED TOUCH 6VID', 'Brand\r\nLENOVO\r\nProcessor\r\nIntel Core i5\r\nGraphic Card\r\nIntel IrisXe\r\nRAM\r\n16 GB\r\nStorage\r\n512 GB\r\nDisplay\r\n14.0 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial 2 Year Premium + 2 ADP', '', 0),
(22, 2, 'LENOVO IDEAPAD FLEX 5 14 OLED TOUCH 6VID', 'Brand\r\nLENOVO\r\nProcessor\r\nIntel Core i5\r\nGraphic Card\r\nIntel IrisXe\r\nRAM\r\n16 GB\r\nStorage\r\n512 GB\r\nDisplay\r\n14.0 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial 2 Year Premium + 2 ADP', '', 0),
(23, 1, 'LENOVO LEGION SLIM 5 16 I7 13700H RTX4060 8GB', 'Brand\r\nLENOVO\r\nProcessor\r\nIntel Core i7\r\nGraphic Card\r\nNvidia GeForce RTX4060 8 GB\r\nRAM\r\n16 GB\r\nStorage\r\n512 GB\r\nDisplay\r\n16.0 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial 3 Year + 3 ADP', '', 0),
(23, 2, 'LENOVO LEGION SLIM 5 16 I7 13700H RTX4060 8GB', 'Brand\r\nLENOVO\r\nProcessor\r\nIntel Core i7\r\nGraphic Card\r\nNvidia GeForce RTX4060 8 GB\r\nRAM\r\n16 GB\r\nStorage\r\n512 GB\r\nDisplay\r\n16.0 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial 3 Year + 3 ADP', '', 0),
(24, 1, 'LENOVO LEGION PRO 5 16 I9 13900HX RTX4060 8GB', 'Brand\r\nLENOVO\r\nProcessor\r\nIntel Core i9\r\nGraphic Card\r\nNvidia GeForce RTX4060 8 GB\r\nRAM\r\n16 GB\r\nStorage\r\n1 TB\r\nDisplay\r\n16.0 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial 3 Year + 3 ADP', '', 0),
(24, 2, 'LENOVO LEGION PRO 5 16 I9 13900HX RTX4060 8GB', 'Brand\r\nLENOVO\r\nProcessor\r\nIntel Core i9\r\nGraphic Card\r\nNvidia GeForce RTX4060 8 GB\r\nRAM\r\n16 GB\r\nStorage\r\n1 TB\r\nDisplay\r\n16.0 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial 3 Year + 3 ADP', '', 0),
(25, 1, 'LENOVO IDEAPAD SLIM 1 14 N4020', 'Brand\r\nLENOVO\r\nProcessor\r\nIntel N\r\nGraphic Card\r\nIntel UHD\r\nRAM\r\n8 GB\r\nStorage\r\n256 GB\r\nDisplay\r\n14.0 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial 2 Year Premium', '', 0),
(25, 2, 'LENOVO IDEAPAD SLIM 1 14 N4020', 'Brand\r\nLENOVO\r\nProcessor\r\nIntel N\r\nGraphic Card\r\nIntel UHD\r\nRAM\r\n8 GB\r\nStorage\r\n256 GB\r\nDisplay\r\n14.0 Inc\r\nOperating System\r\nWindows 11 + OHS\r\nWarranty\r\nOfficial 2 Year Premium', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products_discount_quantity`
--

CREATE TABLE `products_discount_quantity` (
  `discount_id` int(4) NOT NULL DEFAULT 0,
  `products_id` int(11) NOT NULL DEFAULT 0,
  `discount_qty` float NOT NULL DEFAULT 0,
  `discount_price_w` varchar(150) NOT NULL DEFAULT '0',
  `discount_price` decimal(15,4) NOT NULL DEFAULT 0.0000
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_notifications`
--

CREATE TABLE `products_notifications` (
  `products_id` int(11) NOT NULL DEFAULT 0,
  `customers_id` int(11) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT '0001-01-01 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_options`
--

CREATE TABLE `products_options` (
  `products_options_id` int(11) NOT NULL DEFAULT 0,
  `language_id` int(11) NOT NULL DEFAULT 1,
  `products_options_name` varchar(32) NOT NULL DEFAULT '',
  `products_options_sort_order` int(11) NOT NULL DEFAULT 0,
  `products_options_type` int(5) NOT NULL DEFAULT 0,
  `products_options_length` smallint(2) NOT NULL DEFAULT 32,
  `products_options_comment` varchar(256) DEFAULT NULL,
  `products_options_comment_position` smallint(2) NOT NULL DEFAULT 0,
  `products_options_size` smallint(2) NOT NULL DEFAULT 32,
  `products_options_images_per_row` int(2) DEFAULT 5,
  `products_options_images_style` int(1) DEFAULT 0,
  `products_options_rows` smallint(2) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_options_types`
--

CREATE TABLE `products_options_types` (
  `products_options_types_id` int(11) NOT NULL DEFAULT 0,
  `products_options_types_name` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Track products_options_types';

--
-- Dumping data for table `products_options_types`
--

INSERT INTO `products_options_types` (`products_options_types_id`, `products_options_types_name`) VALUES
(0, 'Dropdown'),
(1, 'Text'),
(2, 'Radio'),
(3, 'Checkbox'),
(4, 'File'),
(5, 'Read Only');

-- --------------------------------------------------------

--
-- Table structure for table `products_options_values`
--

CREATE TABLE `products_options_values` (
  `products_options_values_id` int(11) NOT NULL DEFAULT 0,
  `language_id` int(11) NOT NULL DEFAULT 1,
  `products_options_values_name` varchar(64) NOT NULL DEFAULT '',
  `products_options_values_sort_order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products_options_values`
--

INSERT INTO `products_options_values` (`products_options_values_id`, `language_id`, `products_options_values_name`, `products_options_values_sort_order`) VALUES
(0, 1, 'TEXT', 0),
(0, 2, 'TEXT', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products_options_values_to_products_options`
--

CREATE TABLE `products_options_values_to_products_options` (
  `products_options_values_to_products_options_id` int(11) NOT NULL,
  `products_options_id` int(11) NOT NULL DEFAULT 0,
  `products_options_values_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_to_categories`
--

CREATE TABLE `products_to_categories` (
  `products_id` int(11) NOT NULL DEFAULT 0,
  `categories_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products_to_categories`
--

INSERT INTO `products_to_categories` (`products_id`, `categories_id`) VALUES
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 4),
(15, 4),
(16, 4),
(17, 4),
(18, 4),
(19, 4),
(20, 3),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_music_extra`
--

CREATE TABLE `product_music_extra` (
  `products_id` int(11) NOT NULL DEFAULT 0,
  `artists_id` int(11) NOT NULL DEFAULT 0,
  `record_company_id` int(11) NOT NULL DEFAULT 0,
  `music_genre_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_types`
--

CREATE TABLE `product_types` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(255) NOT NULL DEFAULT '',
  `type_handler` varchar(255) NOT NULL DEFAULT '',
  `type_master_type` int(11) NOT NULL DEFAULT 1,
  `allow_add_to_cart` char(1) NOT NULL DEFAULT 'Y',
  `default_image` varchar(255) NOT NULL DEFAULT '',
  `date_added` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `last_modified` datetime NOT NULL DEFAULT '0001-01-01 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_types`
--

INSERT INTO `product_types` (`type_id`, `type_name`, `type_handler`, `type_master_type`, `allow_add_to_cart`, `default_image`, `date_added`, `last_modified`) VALUES
(1, 'Product - General', 'product', 1, 'Y', '', '2024-12-18 09:59:14', '2024-12-18 09:59:14'),
(2, 'Product - Music', 'product_music', 1, 'Y', '', '2024-12-18 09:59:14', '2024-12-18 09:59:14'),
(3, 'Document - General', 'document_general', 3, 'N', '', '2024-12-18 09:59:14', '2024-12-18 09:59:14'),
(4, 'Document - Product', 'document_product', 3, 'Y', '', '2024-12-18 09:59:14', '2024-12-18 09:59:14'),
(5, 'Product - Free Shipping', 'product_free_shipping', 1, 'Y', '', '2024-12-18 09:59:14', '2024-12-18 09:59:14');

-- --------------------------------------------------------

--
-- Table structure for table `product_types_to_category`
--

CREATE TABLE `product_types_to_category` (
  `product_type_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_type_layout`
--

CREATE TABLE `product_type_layout` (
  `configuration_id` int(11) NOT NULL,
  `configuration_title` text NOT NULL,
  `configuration_key` varchar(180) NOT NULL DEFAULT '',
  `configuration_value` text NOT NULL,
  `configuration_description` text NOT NULL,
  `product_type_id` int(11) NOT NULL DEFAULT 0,
  `sort_order` int(5) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL DEFAULT '0001-01-01 00:00:00',
  `use_function` text DEFAULT NULL,
  `set_function` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_type_layout`
--

INSERT INTO `product_type_layout` (`configuration_id`, `configuration_title`, `configuration_key`, `configuration_value`, `configuration_description`, `product_type_id`, `sort_order`, `last_modified`, `date_added`, `use_function`, `set_function`) VALUES
(1, 'Show Model Number', 'SHOW_PRODUCT_INFO_MODEL', '1', 'Display Model Number on Product Info 0= off 1= on', 1, 1, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(2, 'Show Weight', 'SHOW_PRODUCT_INFO_WEIGHT', '1', 'Display Weight on Product Info 0= off 1= on', 1, 2, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(3, 'Show Attribute Weight', 'SHOW_PRODUCT_INFO_WEIGHT_ATTRIBUTES', '1', 'Display Attribute Weight on Product Info 0= off 1= on', 1, 3, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(4, 'Show Manufacturer', 'SHOW_PRODUCT_INFO_MANUFACTURER', '1', 'Display Manufacturer Name on Product Info 0= off 1= on', 1, 4, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(5, 'Show Quantity in Shopping Cart', 'SHOW_PRODUCT_INFO_IN_CART_QTY', '1', 'Display Quantity in Current Shopping Cart on Product Info 0= off 1= on', 1, 5, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(6, 'Show Quantity in Stock', 'SHOW_PRODUCT_INFO_QUANTITY', '1', 'Display Quantity in Stock on Product Info 0= off 1= on', 1, 6, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(7, 'Show Product Reviews Count', 'SHOW_PRODUCT_INFO_REVIEWS_COUNT', '1', 'Display Product Reviews Count on Product Info 0= off 1= on', 1, 7, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(8, 'Show Product Reviews Button', 'SHOW_PRODUCT_INFO_REVIEWS', '1', 'Display Product Reviews Button on Product Info 0= off 1= on', 1, 8, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(9, 'Show Date Available', 'SHOW_PRODUCT_INFO_DATE_AVAILABLE', '1', 'Display Date Available on Product Info 0= off 1= on', 1, 9, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(10, 'Show Date Added', 'SHOW_PRODUCT_INFO_DATE_ADDED', '1', 'Display Date Added on Product Info 0= off 1= on', 1, 10, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(11, 'Show Product URL', 'SHOW_PRODUCT_INFO_URL', '1', 'Display URL on Product Info 0= off 1= on', 1, 11, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(12, 'Show Product Additional Images', 'SHOW_PRODUCT_INFO_ADDITIONAL_IMAGES', '1', 'Display Additional Images on Product Info 0= off 1= on', 1, 13, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(13, 'Show Starting At text on Price', 'SHOW_PRODUCT_INFO_STARTING_AT', '1', 'Display Starting At text on products with attributes Product Info 0= off 1= on', 1, 12, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(14, 'Product Free Shipping Image Status - Catalog', 'SHOW_PRODUCT_INFO_ALWAYS_FREE_SHIPPING_IMAGE_SWITCH', '0', 'Show the Free Shipping image/text in the catalog?', 1, 16, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),
(15, 'Product Price Tax Class Default - When adding new products?', 'DEFAULT_PRODUCT_TAX_CLASS_ID', '0', 'What should the Product Price Tax Class Default ID be when adding new products?', 1, 100, NULL, '2024-12-18 09:59:15', '', ''),
(16, 'Product Virtual Default Status - Skip Shipping Address - When adding new products?', 'DEFAULT_PRODUCT_PRODUCTS_VIRTUAL', '0', 'Default Virtual Product status to be ON when adding new products?', 1, 101, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(17, 'Product Free Shipping Default Status - Normal Shipping Rules - When adding new products?', 'DEFAULT_PRODUCT_PRODUCTS_IS_ALWAYS_FREE_SHIPPING', '0', 'What should the Default Free Shipping status be when adding new products?<br />Yes, Always Free Shipping ON<br />No, Always Free Shipping OFF<br />Special, Product/Download Requires Shipping', 1, 102, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes, Always ON\'), array(\'id\'=>\'0\', \'text\'=>\'No, Always OFF\'), array(\'id\'=>\'2\', \'text\'=>\'Special\')), '),
(18, 'Show Model Number', 'SHOW_PRODUCT_MUSIC_INFO_MODEL', '1', 'Display Model Number on Product Info 0= off 1= on', 2, 1, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(19, 'Show Weight', 'SHOW_PRODUCT_MUSIC_INFO_WEIGHT', '0', 'Display Weight on Product Info 0= off 1= on', 2, 2, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(20, 'Show Attribute Weight', 'SHOW_PRODUCT_MUSIC_INFO_WEIGHT_ATTRIBUTES', '1', 'Display Attribute Weight on Product Info 0= off 1= on', 2, 3, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(21, 'Show Artist', 'SHOW_PRODUCT_MUSIC_INFO_ARTIST', '1', 'Display Artists Name on Product Info 0= off 1= on', 2, 4, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(22, 'Show Music Genre', 'SHOW_PRODUCT_MUSIC_INFO_GENRE', '1', 'Display Music Genre on Product Info 0= off 1= on', 2, 4, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(23, 'Show Record Company', 'SHOW_PRODUCT_MUSIC_INFO_RECORD_COMPANY', '1', 'Display Record Company on Product Info 0= off 1= on', 2, 4, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(24, 'Show Quantity in Shopping Cart', 'SHOW_PRODUCT_MUSIC_INFO_IN_CART_QTY', '1', 'Display Quantity in Current Shopping Cart on Product Info 0= off 1= on', 2, 5, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(25, 'Show Quantity in Stock', 'SHOW_PRODUCT_MUSIC_INFO_QUANTITY', '0', 'Display Quantity in Stock on Product Info 0= off 1= on', 2, 6, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(26, 'Show Product Reviews Count', 'SHOW_PRODUCT_MUSIC_INFO_REVIEWS_COUNT', '1', 'Display Product Reviews Count on Product Info 0= off 1= on', 2, 7, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(27, 'Show Product Reviews Button', 'SHOW_PRODUCT_MUSIC_INFO_REVIEWS', '1', 'Display Product Reviews Button on Product Info 0= off 1= on', 2, 8, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(28, 'Show Date Available', 'SHOW_PRODUCT_MUSIC_INFO_DATE_AVAILABLE', '1', 'Display Date Available on Product Info 0= off 1= on', 2, 9, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(29, 'Show Date Added', 'SHOW_PRODUCT_MUSIC_INFO_DATE_ADDED', '1', 'Display Date Added on Product Info 0= off 1= on', 2, 10, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(30, 'Show Starting At text on Price', 'SHOW_PRODUCT_MUSIC_INFO_STARTING_AT', '1', 'Display Starting At text on products with attributes Product Info 0= off 1= on', 2, 12, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(31, 'Show Product Additional Images', 'SHOW_PRODUCT_MUSIC_INFO_ADDITIONAL_IMAGES', '1', 'Display Additional Images on Product Info 0= off 1= on', 2, 13, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(32, 'Product Free Shipping Image Status - Catalog', 'SHOW_PRODUCT_MUSIC_INFO_ALWAYS_FREE_SHIPPING_IMAGE_SWITCH', '0', 'Show the Free Shipping image/text in the catalog?', 2, 16, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),
(33, 'Product Price Tax Class Default - When adding new products?', 'DEFAULT_PRODUCT_MUSIC_TAX_CLASS_ID', '0', 'What should the Product Price Tax Class Default ID be when adding new products?', 2, 100, NULL, '2024-12-18 09:59:15', '', ''),
(34, 'Product Virtual Default Status - Skip Shipping Address - When adding new products?', 'DEFAULT_PRODUCT_MUSIC_PRODUCTS_VIRTUAL', '0', 'Default Virtual Product status to be ON when adding new products?', 2, 101, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(35, 'Product Free Shipping Default Status - Normal Shipping Rules - When adding new products?', 'DEFAULT_PRODUCT_MUSIC_PRODUCTS_IS_ALWAYS_FREE_SHIPPING', '0', 'What should the Default Free Shipping status be when adding new products?<br />Yes, Always Free Shipping ON<br />No, Always Free Shipping OFF<br />Special, Product/Download Requires Shipping', 2, 102, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes, Always ON\'), array(\'id\'=>\'0\', \'text\'=>\'No, Always OFF\'), array(\'id\'=>\'2\', \'text\'=>\'Special\')), '),
(36, 'Show Product Reviews Count', 'SHOW_DOCUMENT_GENERAL_INFO_REVIEWS_COUNT', '1', 'Display Product Reviews Count on Product Info 0= off 1= on', 3, 7, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(37, 'Show Product Reviews Button', 'SHOW_DOCUMENT_GENERAL_INFO_REVIEWS', '1', 'Display Product Reviews Button on Product Info 0= off 1= on', 3, 8, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(38, 'Show Date Available', 'SHOW_DOCUMENT_GENERAL_INFO_DATE_AVAILABLE', '1', 'Display Date Available on Product Info 0= off 1= on', 3, 9, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(39, 'Show Date Added', 'SHOW_DOCUMENT_GENERAL_INFO_DATE_ADDED', '1', 'Display Date Added on Product Info 0= off 1= on', 3, 10, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(40, 'Show Product URL', 'SHOW_DOCUMENT_GENERAL_INFO_URL', '1', 'Display URL on Product Info 0= off 1= on', 3, 11, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(41, 'Show Product Additional Images', 'SHOW_DOCUMENT_GENERAL_INFO_ADDITIONAL_IMAGES', '1', 'Display Additional Images on Product Info 0= off 1= on', 3, 13, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(42, 'Show Model Number', 'SHOW_DOCUMENT_PRODUCT_INFO_MODEL', '1', 'Display Model Number on Product Info 0= off 1= on', 4, 1, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(43, 'Show Weight', 'SHOW_DOCUMENT_PRODUCT_INFO_WEIGHT', '0', 'Display Weight on Product Info 0= off 1= on', 4, 2, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(44, 'Show Attribute Weight', 'SHOW_DOCUMENT_PRODUCT_INFO_WEIGHT_ATTRIBUTES', '1', 'Display Attribute Weight on Product Info 0= off 1= on', 4, 3, NULL, '2024-12-18 09:59:15', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(45, 'Show Manufacturer', 'SHOW_DOCUMENT_PRODUCT_INFO_MANUFACTURER', '1', 'Display Manufacturer Name on Product Info 0= off 1= on', 4, 4, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(46, 'Show Quantity in Shopping Cart', 'SHOW_DOCUMENT_PRODUCT_INFO_IN_CART_QTY', '1', 'Display Quantity in Current Shopping Cart on Product Info 0= off 1= on', 4, 5, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(47, 'Show Quantity in Stock', 'SHOW_DOCUMENT_PRODUCT_INFO_QUANTITY', '0', 'Display Quantity in Stock on Product Info 0= off 1= on', 4, 6, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(48, 'Show Product Reviews Count', 'SHOW_DOCUMENT_PRODUCT_INFO_REVIEWS_COUNT', '1', 'Display Product Reviews Count on Product Info 0= off 1= on', 4, 7, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(49, 'Show Product Reviews Button', 'SHOW_DOCUMENT_PRODUCT_INFO_REVIEWS', '1', 'Display Product Reviews Button on Product Info 0= off 1= on', 4, 8, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(50, 'Show Date Available', 'SHOW_DOCUMENT_PRODUCT_INFO_DATE_AVAILABLE', '1', 'Display Date Available on Product Info 0= off 1= on', 4, 9, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(51, 'Show Date Added', 'SHOW_DOCUMENT_PRODUCT_INFO_DATE_ADDED', '1', 'Display Date Added on Product Info 0= off 1= on', 4, 10, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(52, 'Show Product URL', 'SHOW_DOCUMENT_PRODUCT_INFO_URL', '1', 'Display URL on Product Info 0= off 1= on', 4, 11, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(53, 'Show Product Additional Images', 'SHOW_DOCUMENT_PRODUCT_INFO_ADDITIONAL_IMAGES', '1', 'Display Additional Images on Product Info 0= off 1= on', 4, 13, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(54, 'Show Starting At text on Price', 'SHOW_DOCUMENT_PRODUCT_INFO_STARTING_AT', '1', 'Display Starting At text on products with attributes Product Info 0= off 1= on', 4, 12, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(55, 'Product Free Shipping Image Status - Catalog', 'SHOW_DOCUMENT_PRODUCT_INFO_ALWAYS_FREE_SHIPPING_IMAGE_SWITCH', '0', 'Show the Free Shipping image/text in the catalog?', 4, 16, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),
(56, 'Product Price Tax Class Default - When adding new products?', 'DEFAULT_DOCUMENT_PRODUCT_TAX_CLASS_ID', '0', 'What should the Product Price Tax Class Default ID be when adding new products?', 4, 100, NULL, '2024-12-18 09:59:16', '', ''),
(57, 'Product Virtual Default Status - Skip Shipping Address - When adding new products?', 'DEFAULT_DOCUMENT_PRODUCT_PRODUCTS_VIRTUAL', '0', 'Default Virtual Product status to be ON when adding new products?', 4, 101, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(58, 'Product Free Shipping Default Status - Normal Shipping Rules - When adding new products?', 'DEFAULT_DOCUMENT_PRODUCT_PRODUCTS_IS_ALWAYS_FREE_SHIPPING', '0', 'What should the Default Free Shipping status be when adding new products?<br />Yes, Always Free Shipping ON<br />No, Always Free Shipping OFF<br />Special, Product/Download Requires Shipping', 4, 102, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes, Always ON\'), array(\'id\'=>\'0\', \'text\'=>\'No, Always OFF\'), array(\'id\'=>\'2\', \'text\'=>\'Special\')), '),
(59, 'Show Model Number', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_MODEL', '1', 'Display Model Number on Product Info 0= off 1= on', 5, 1, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(60, 'Show Weight', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_WEIGHT', '0', 'Display Weight on Product Info 0= off 1= on', 5, 2, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(61, 'Show Attribute Weight', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_WEIGHT_ATTRIBUTES', '1', 'Display Attribute Weight on Product Info 0= off 1= on', 5, 3, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(62, 'Show Manufacturer', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_MANUFACTURER', '1', 'Display Manufacturer Name on Product Info 0= off 1= on', 5, 4, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(63, 'Show Quantity in Shopping Cart', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_IN_CART_QTY', '1', 'Display Quantity in Current Shopping Cart on Product Info 0= off 1= on', 5, 5, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(64, 'Show Quantity in Stock', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_QUANTITY', '1', 'Display Quantity in Stock on Product Info 0= off 1= on', 5, 6, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(65, 'Show Product Reviews Count', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_REVIEWS_COUNT', '1', 'Display Product Reviews Count on Product Info 0= off 1= on', 5, 7, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(66, 'Show Product Reviews Button', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_REVIEWS', '1', 'Display Product Reviews Button on Product Info 0= off 1= on', 5, 8, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(67, 'Show Date Available', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_DATE_AVAILABLE', '0', 'Display Date Available on Product Info 0= off 1= on', 5, 9, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(68, 'Show Date Added', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_DATE_ADDED', '1', 'Display Date Added on Product Info 0= off 1= on', 5, 10, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(69, 'Show Product URL', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_URL', '1', 'Display URL on Product Info 0= off 1= on', 5, 11, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(70, 'Show Product Additional Images', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_ADDITIONAL_IMAGES', '1', 'Display Additional Images on Product Info 0= off 1= on', 5, 13, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(71, 'Show Starting At text on Price', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_STARTING_AT', '1', 'Display Starting At text on products with attributes Product Info 0= off 1= on', 5, 12, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(72, 'Product Free Shipping Image Status - Catalog', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_ALWAYS_FREE_SHIPPING_IMAGE_SWITCH', '1', 'Show the Free Shipping image/text in the catalog?', 5, 16, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),
(73, 'Product Price Tax Class Default - When adding new products?', 'DEFAULT_PRODUCT_FREE_SHIPPING_TAX_CLASS_ID', '0', 'What should the Product Price Tax Class Default ID be when adding new products?', 5, 100, NULL, '2024-12-18 09:59:16', '', ''),
(74, 'Product Virtual Default Status - Skip Shipping Address - When adding new products?', 'DEFAULT_PRODUCT_FREE_SHIPPING_PRODUCTS_VIRTUAL', '0', 'Default Virtual Product status to be ON when adding new products?', 5, 101, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(75, 'Product Free Shipping Default Status - Normal Shipping Rules - When adding new products?', 'DEFAULT_PRODUCT_FREE_SHIPPING_PRODUCTS_IS_ALWAYS_FREE_SHIPPING', '1', 'What should the Default Free Shipping status be when adding new products?<br />Yes, Always Free Shipping ON<br />No, Always Free Shipping OFF<br />Special, Product/Download Requires Shipping', 5, 102, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes, Always ON\'), array(\'id\'=>\'0\', \'text\'=>\'No, Always OFF\'), array(\'id\'=>\'2\', \'text\'=>\'Special\')), '),
(76, 'Product page &lt;title&gt; tag - default: use Product Name', 'SHOW_PRODUCT_INFO_METATAGS_PRODUCTS_NAME_STATUS', '1', 'Default setting for a new product (can be modified per product).<br>Show the Product Name in the page &lt;title&gt; tag.', 1, 50, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(77, 'Product page &lt;title&gt; tag - default: use Title Additional Text', 'SHOW_PRODUCT_INFO_METATAGS_TITLE_STATUS', '1', 'Default setting for a new product (can be modified per product).<br>Show the Title Additional text in the page &lt;title&gt; tag.', 1, 51, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(78, 'Product page &lt;title&gt; tag - default: use Product Model', 'SHOW_PRODUCT_INFO_METATAGS_MODEL_STATUS', '1', 'Default setting for a new product (can be modified per product).<br>Show the Product Model in the page &lt;title&gt; tag.', 1, 52, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(79, 'Product page &lt;title&gt; tag - default: use Product Price', 'SHOW_PRODUCT_INFO_METATAGS_PRICE_STATUS', '1', 'Default setting for a new product (can be modified per product).<br>Show the Product Price in the page &lt;title&gt; tag.', 1, 53, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(80, 'Product page &lt;title&gt; tag - default: use SITE_TAGLINE', 'SHOW_PRODUCT_INFO_METATAGS_TITLE_TAGLINE_STATUS', '1', 'Default setting for a new product (can be modified per product).<br>Show the defined constant \"SITE_TAGLINE\" in the page &lt;title&gt; tag.', 1, 54, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(81, 'Product page &lt;title&gt; tag - default: use Product Name', 'SHOW_PRODUCT_MUSIC_INFO_METATAGS_PRODUCTS_NAME_STATUS', '1', 'Default setting for a new product (can be modified per product).<br>Show the Product Name in the page &lt;title&gt; tag.', 2, 50, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(82, 'Product page &lt;title&gt; tag - default: use Title Additional Text', 'SHOW_PRODUCT_MUSIC_INFO_METATAGS_TITLE_STATUS', '1', 'Default setting for a new product (can be modified per product).<br>Show the Product Title in the page &lt;title&gt; tag.', 2, 51, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(83, 'Product page &lt;title&gt; tag - default: use Product Model', 'SHOW_PRODUCT_MUSIC_INFO_METATAGS_MODEL_STATUS', '1', 'Default setting for a new product (can be modified per product).<br>Show the Product Model in the page &lt;title&gt; tag.', 2, 52, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(84, 'Product page &lt;title&gt; tag - default: use Product Price', 'SHOW_PRODUCT_MUSIC_INFO_METATAGS_PRICE_STATUS', '1', 'Default setting for a new product (can be modified per product).<br>Show the Product Price in the page &lt;title&gt; tag.', 2, 53, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(85, 'Product page &lt;title&gt; tag - default: use SITE_TAGLINE', 'SHOW_PRODUCT_MUSIC_INFO_METATAGS_TITLE_TAGLINE_STATUS', '1', 'Default setting for a new product (can be modified per product).<br>Show the defined constant \"SITE_TAGLINE\" in the page &lt;title&gt; tag.', 2, 54, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(86, 'Document page &lt;title&gt; tag - default: use Document Title', 'SHOW_DOCUMENT_GENERAL_INFO_METATAGS_TITLE_STATUS', '1', 'Default setting for a new product (can be modified per product).<br>Show the Document  Title in the page &lt;title&gt; tag.', 3, 50, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(87, 'Document page &lt;title&gt; tag - default: use Document Name', 'SHOW_DOCUMENT_GENERAL_INFO_METATAGS_PRODUCTS_NAME_STATUS', '1', 'Default setting for a new product (can be modified per product).<br>Show the Document  Name in the page &lt;title&gt; tag.', 3, 51, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(88, 'Product page &lt;title&gt; tag - default: use Document Tagline', 'SHOW_DOCUMENT_GENERAL_INFO_METATAGS_TITLE_TAGLINE_STATUS', '1', 'Default setting for a new product (can be modified per product).<br>Show the Document  Tagline in the page &lt;title&gt; tag.', 3, 52, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(89, 'Product page &lt;title&gt; tag - default: use Document Title', 'SHOW_DOCUMENT_PRODUCT_INFO_METATAGS_TITLE_STATUS', '1', 'Default setting for a new product (can be modified per product).<br>Show the Document  Title in the page &lt;title&gt; tag.', 4, 50, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(90, 'Product page &lt;title&gt; tag - default: use Document Name', 'SHOW_DOCUMENT_PRODUCT_INFO_METATAGS_PRODUCTS_NAME_STATUS', '1', 'Default setting for a new product (can be modified per product).<br>Show the Document  Name in the page &lt;title&gt; tag.', 4, 51, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(91, 'Product page &lt;title&gt; tag - default: use Document Model', 'SHOW_DOCUMENT_PRODUCT_INFO_METATAGS_MODEL_STATUS', '1', 'Default setting for a new product (can be modified per product).<br>Show the Document  Model in the page &lt;title&gt; tag.', 4, 52, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(92, 'Product page &lt;title&gt; tag - default: use Document Price', 'SHOW_DOCUMENT_PRODUCT_INFO_METATAGS_PRICE_STATUS', '1', 'Default setting for a new product (can be modified per product).<br>Show the Document  Price in the page &lt;title&gt; tag.', 4, 53, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(93, 'Product page &lt;title&gt; tag - default: use Document Tagline', 'SHOW_DOCUMENT_PRODUCT_INFO_METATAGS_TITLE_TAGLINE_STATUS', '1', 'Default setting for a new product (can be modified per product).<br>Show the Document  Tagline in the page &lt;title&gt; tag.', 4, 54, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(94, 'Product page &lt;title&gt; tag - default: use Product Name', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_METATAGS_TITLE_STATUS', '1', 'Default setting for a new product (can be modified per product).<br>Show the Product Name in the page &lt;title&gt; tag.', 5, 50, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(95, 'Product page &lt;title&gt; tag - default: use Title Additional Text', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_METATAGS_PRODUCTS_NAME_STATUS', '1', 'Default setting for a new product (can be modified per product).<br>Show the Title Additional text in the page &lt;title&gt; tag.', 5, 51, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(96, 'Product page &lt;title&gt; tag - default: use Product Model', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_METATAGS_MODEL_STATUS', '1', 'Default setting for a new product (can be modified per product).<br>Show the Product Model in the page &lt;title&gt; tag.', 5, 52, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(97, 'Product page &lt;title&gt; tag - default: use Product Price', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_METATAGS_PRICE_STATUS', '1', 'Default setting for a new product (can be modified per product).<br>Show the Product Price in the page &lt;title&gt; tag.', 5, 53, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(98, 'Product page &lt;title&gt; tag - default: use SITE_TAGLINE', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_METATAGS_TITLE_TAGLINE_STATUS', '1', 'Default setting for a new product (can be modified per product).<br>Show the defined constant \"SITE_TAGLINE\" in the page &lt;title&gt; tag.', 5, 54, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(99, 'PRODUCT Attribute is Display Only - Default', 'DEFAULT_PRODUCT_ATTRIBUTES_DISPLAY_ONLY', '0', 'PRODUCT Attribute is Display Only<br />Used For Display Purposes Only<br />0= No 1= Yes', 1, 200, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),
(100, 'PRODUCT Attribute is Free - Default', 'DEFAULT_PRODUCT_ATTRIBUTE_IS_FREE', '1', 'PRODUCT Attribute is Free<br />Attribute is Free When Product is Free<br />0= No 1= Yes', 1, 201, NULL, '2024-12-18 09:59:16', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),
(101, 'PRODUCT Attribute is Default - Default', 'DEFAULT_PRODUCT_ATTRIBUTES_DEFAULT', '0', 'PRODUCT Attribute is Default<br />Default Attribute to be Marked Selected<br />0= No 1= Yes', 1, 202, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),
(102, 'PRODUCT Attribute is Discounted - Default', 'DEFAULT_PRODUCT_ATTRIBUTES_DISCOUNTED', '1', 'PRODUCT Attribute is Discounted<br />Apply Discounts Used by Product Special/Sale<br />0= No 1= Yes', 1, 203, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),
(103, 'PRODUCT Attribute is Included in Base Price - Default', 'DEFAULT_PRODUCT_ATTRIBUTES_PRICE_BASE_INCLUDED', '1', 'PRODUCT Attribute is Included in Base Price<br />Include in Base Price When Priced by Attributes<br />0= No 1= Yes', 1, 204, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),
(104, 'PRODUCT Attribute is Required - Default', 'DEFAULT_PRODUCT_ATTRIBUTES_REQUIRED', '0', 'PRODUCT Attribute is Required<br />Attribute Required for Text<br />0= No 1= Yes', 1, 205, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),
(105, 'PRODUCT Attribute Price Prefix - Default', 'DEFAULT_PRODUCT_PRICE_PREFIX', '1', 'PRODUCT Attribute Price Prefix<br />Default Attribute Price Prefix for Adding<br />Blank, + or -', 1, 206, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), '),
(106, 'PRODUCT Attribute Weight Prefix - Default', 'DEFAULT_PRODUCT_PRODUCTS_ATTRIBUTES_WEIGHT_PREFIX', '1', 'PRODUCT Attribute Weight Prefix<br />Default Attribute Weight Prefix<br />Blank, + or -', 1, 207, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), '),
(107, 'MUSIC Attribute is Display Only - Default', 'DEFAULT_PRODUCT_MUSIC_ATTRIBUTES_DISPLAY_ONLY', '0', 'MUSIC Attribute is Display Only<br />Used For Display Purposes Only<br />0= No 1= Yes', 2, 200, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),
(108, 'MUSIC Attribute is Free - Default', 'DEFAULT_PRODUCT_MUSIC_ATTRIBUTE_IS_FREE', '1', 'MUSIC Attribute is Free<br />Attribute is Free When Product is Free<br />0= No 1= Yes', 2, 201, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),
(109, 'MUSIC Attribute is Default - Default', 'DEFAULT_PRODUCT_MUSIC_ATTRIBUTES_DEFAULT', '0', 'MUSIC Attribute is Default<br />Default Attribute to be Marked Selected<br />0= No 1= Yes', 2, 202, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),
(110, 'MUSIC Attribute is Discounted - Default', 'DEFAULT_PRODUCT_MUSIC_ATTRIBUTES_DISCOUNTED', '1', 'MUSIC Attribute is Discounted<br />Apply Discounts Used by Product Special/Sale<br />0= No 1= Yes', 2, 203, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),
(111, 'MUSIC Attribute is Included in Base Price - Default', 'DEFAULT_PRODUCT_MUSIC_ATTRIBUTES_PRICE_BASE_INCLUDED', '1', 'MUSIC Attribute is Included in Base Price<br />Include in Base Price When Priced by Attributes<br />0= No 1= Yes', 2, 204, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),
(112, 'MUSIC Attribute is Required - Default', 'DEFAULT_PRODUCT_MUSIC_ATTRIBUTES_REQUIRED', '0', 'MUSIC Attribute is Required<br />Attribute Required for Text<br />0= No 1= Yes', 2, 205, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),
(113, 'MUSIC Attribute Price Prefix - Default', 'DEFAULT_PRODUCT_MUSIC_PRICE_PREFIX', '1', 'MUSIC Attribute Price Prefix<br />Default Attribute Price Prefix for Adding<br />Blank, + or -', 2, 206, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), '),
(114, 'MUSIC Attribute Weight Prefix - Default', 'DEFAULT_PRODUCT_MUSIC_PRODUCTS_ATTRIBUTES_WEIGHT_PREFIX', '1', 'MUSIC Attribute Weight Prefix<br />Default Attribute Weight Prefix<br />Blank, + or -', 2, 207, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), '),
(115, 'DOCUMENT GENERAL Attribute is Display Only - Default', 'DEFAULT_DOCUMENT_GENERAL_ATTRIBUTES_DISPLAY_ONLY', '0', 'DOCUMENT GENERAL Attribute is Display Only<br />Used For Display Purposes Only<br />0= No 1= Yes', 3, 200, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),
(116, 'DOCUMENT GENERAL Attribute is Free - Default', 'DEFAULT_DOCUMENT_GENERAL_ATTRIBUTE_IS_FREE', '1', 'DOCUMENT GENERAL Attribute is Free<br />Attribute is Free When Product is Free<br />0= No 1= Yes', 3, 201, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),
(117, 'DOCUMENT GENERAL Attribute is Default - Default', 'DEFAULT_DOCUMENT_GENERAL_ATTRIBUTES_DEFAULT', '0', 'DOCUMENT GENERAL Attribute is Default<br />Default Attribute to be Marked Selected<br />0= No 1= Yes', 3, 202, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),
(118, 'DOCUMENT GENERAL Attribute is Discounted - Default', 'DEFAULT_DOCUMENT_GENERAL_ATTRIBUTES_DISCOUNTED', '1', 'DOCUMENT GENERAL Attribute is Discounted<br />Apply Discounts Used by Product Special/Sale<br />0= No 1= Yes', 3, 203, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),
(119, 'DOCUMENT GENERAL Attribute is Included in Base Price - Default', 'DEFAULT_DOCUMENT_GENERAL_ATTRIBUTES_PRICE_BASE_INCLUDED', '1', 'DOCUMENT GENERAL Attribute is Included in Base Price<br />Include in Base Price When Priced by Attributes<br />0= No 1= Yes', 3, 204, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),
(120, 'DOCUMENT GENERAL Attribute is Required - Default', 'DEFAULT_DOCUMENT_GENERAL_ATTRIBUTES_REQUIRED', '0', 'DOCUMENT GENERAL Attribute is Required<br />Attribute Required for Text<br />0= No 1= Yes', 3, 205, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),
(121, 'DOCUMENT GENERAL Attribute Price Prefix - Default', 'DEFAULT_DOCUMENT_GENERAL_PRICE_PREFIX', '1', 'DOCUMENT GENERAL Attribute Price Prefix<br />Default Attribute Price Prefix for Adding<br />Blank, + or -', 3, 206, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), '),
(122, 'DOCUMENT GENERAL Attribute Weight Prefix - Default', 'DEFAULT_DOCUMENT_GENERAL_PRODUCTS_ATTRIBUTES_WEIGHT_PREFIX', '1', 'DOCUMENT GENERAL Attribute Weight Prefix<br />Default Attribute Weight Prefix<br />Blank, + or -', 3, 207, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), '),
(123, 'DOCUMENT PRODUCT Attribute is Display Only - Default', 'DEFAULT_DOCUMENT_PRODUCT_ATTRIBUTES_DISPLAY_ONLY', '0', 'DOCUMENT PRODUCT Attribute is Display Only<br />Used For Display Purposes Only<br />0= No 1= Yes', 4, 200, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),
(124, 'DOCUMENT PRODUCT Attribute is Free - Default', 'DEFAULT_DOCUMENT_PRODUCT_ATTRIBUTE_IS_FREE', '1', 'DOCUMENT PRODUCT Attribute is Free<br />Attribute is Free When Product is Free<br />0= No 1= Yes', 4, 201, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),
(125, 'DOCUMENT PRODUCT Attribute is Default - Default', 'DEFAULT_DOCUMENT_PRODUCT_ATTRIBUTES_DEFAULT', '0', 'DOCUMENT PRODUCT Attribute is Default<br />Default Attribute to be Marked Selected<br />0= No 1= Yes', 4, 202, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),
(126, 'DOCUMENT PRODUCT Attribute is Discounted - Default', 'DEFAULT_DOCUMENT_PRODUCT_ATTRIBUTES_DISCOUNTED', '1', 'DOCUMENT PRODUCT Attribute is Discounted<br />Apply Discounts Used by Product Special/Sale<br />0= No 1= Yes', 4, 203, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),
(127, 'DOCUMENT PRODUCT Attribute is Included in Base Price - Default', 'DEFAULT_DOCUMENT_PRODUCT_ATTRIBUTES_PRICE_BASE_INCLUDED', '1', 'DOCUMENT PRODUCT Attribute is Included in Base Price<br />Include in Base Price When Priced by Attributes<br />0= No 1= Yes', 4, 204, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),
(128, 'DOCUMENT PRODUCT Attribute is Required - Default', 'DEFAULT_DOCUMENT_PRODUCT_ATTRIBUTES_REQUIRED', '0', 'DOCUMENT PRODUCT Attribute is Required<br />Attribute Required for Text<br />0= No 1= Yes', 4, 205, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),
(129, 'DOCUMENT PRODUCT Attribute Price Prefix - Default', 'DEFAULT_DOCUMENT_PRODUCT_PRICE_PREFIX', '1', 'DOCUMENT PRODUCT Attribute Price Prefix<br />Default Attribute Price Prefix for Adding<br />Blank, + or -', 4, 206, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), '),
(130, 'DOCUMENT PRODUCT Attribute Weight Prefix - Default', 'DEFAULT_DOCUMENT_PRODUCT_PRODUCTS_ATTRIBUTES_WEIGHT_PREFIX', '1', 'DOCUMENT PRODUCT Attribute Weight Prefix<br />Default Attribute Weight Prefix<br />Blank, + or -', 4, 207, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), '),
(131, 'PRODUCT FREE SHIPPING Attribute is Display Only - Default', 'DEFAULT_PRODUCT_FREE_SHIPPING_ATTRIBUTES_DISPLAY_ONLY', '0', 'PRODUCT FREE SHIPPING Attribute is Display Only<br />Used For Display Purposes Only<br />0= No 1= Yes', 5, 201, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),
(132, 'PRODUCT FREE SHIPPING Attribute is Free - Default', 'DEFAULT_PRODUCT_FREE_SHIPPING_ATTRIBUTE_IS_FREE', '1', 'PRODUCT FREE SHIPPING Attribute is Free<br />Attribute is Free When Product is Free<br />0= No 1= Yes', 5, 201, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),
(133, 'PRODUCT FREE SHIPPING Attribute is Default - Default', 'DEFAULT_PRODUCT_FREE_SHIPPING_ATTRIBUTES_DEFAULT', '0', 'PRODUCT FREE SHIPPING Attribute is Default<br />Default Attribute to be Marked Selected<br />0= No 1= Yes', 5, 202, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),
(134, 'PRODUCT FREE SHIPPING Attribute is Discounted - Default', 'DEFAULT_PRODUCT_FREE_SHIPPING_ATTRIBUTES_DISCOUNTED', '1', 'PRODUCT FREE SHIPPING Attribute is Discounted<br />Apply Discounts Used by Product Special/Sale<br />0= No 1= Yes', 5, 203, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),
(135, 'PRODUCT FREE SHIPPING Attribute is Included in Base Price - Default', 'DEFAULT_PRODUCT_FREE_SHIPPING_ATTRIBUTES_PRICE_BASE_INCLUDED', '1', 'PRODUCT FREE SHIPPING Attribute is Included in Base Price<br />Include in Base Price When Priced by Attributes<br />0= No 1= Yes', 5, 204, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),
(136, 'PRODUCT FREE SHIPPING Attribute is Required - Default', 'DEFAULT_PRODUCT_FREE_SHIPPING_ATTRIBUTES_REQUIRED', '0', 'PRODUCT FREE SHIPPING Attribute is Required<br />Attribute Required for Text<br />0= No 1= Yes', 5, 205, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'Yes\'), array(\'id\'=>\'0\', \'text\'=>\'No\')), '),
(137, 'PRODUCT FREE SHIPPING Attribute Price Prefix - Default', 'DEFAULT_PRODUCT_FREE_SHIPPING_PRICE_PREFIX', '1', 'PRODUCT FREE SHIPPING Attribute Price Prefix<br />Default Attribute Price Prefix for Adding<br />Blank, + or -', 5, 206, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), '),
(138, 'PRODUCT FREE SHIPPING Attribute Weight Prefix - Default', 'DEFAULT_PRODUCT_FREE_SHIPPING_PRODUCTS_ATTRIBUTES_WEIGHT_PREFIX', '1', 'PRODUCT FREE SHIPPING Attribute Weight Prefix<br />Default Attribute Weight Prefix<br />Blank, + or -', 5, 207, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'0\', \'text\'=>\'Blank\'), array(\'id\'=>\'1\', \'text\'=>\'+\'), array(\'id\'=>\'2\', \'text\'=>\'-\')), '),
(139, 'Show \"Ask a Question\" button?', 'SHOW_PRODUCT_INFO_ASK_A_QUESTION', '1', 'Display the \"Ask a Question\" button on product Info pages? (0 = False, 1 = True)', 1, 14, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(140, 'Show \"Ask a Question\" button?', 'SHOW_PRODUCT_MUSIC_INFO_ASK_A_QUESTION', '1', 'Display the \"Ask a Question\" button on product Info pages? (0 = False, 1 = True)', 2, 14, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(141, 'Show \"Ask a Question\" button?', 'SHOW_DOCUMENT_GENERAL_INFO_ASK_A_QUESTION', '1', 'Display the \"Ask a Question\" button on product Info pages? (0 = False, 1 = True)', 3, 14, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');
INSERT INTO `product_type_layout` (`configuration_id`, `configuration_title`, `configuration_key`, `configuration_value`, `configuration_description`, `product_type_id`, `sort_order`, `last_modified`, `date_added`, `use_function`, `set_function`) VALUES
(142, 'Show \"Ask a Question\" button?', 'SHOW_DOCUMENT_PRODUCT_INFO_ASK_A_QUESTION', '1', 'Display the \"Ask a Question\" button on product Info pages? (0 = False, 1 = True)', 4, 14, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), '),
(143, 'Show \"Ask a Question\" button?', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_ASK_A_QUESTION', '1', 'Display the \"Ask a Question\" button on product Info pages? (0 = False, 1 = True)', 5, 14, NULL, '2024-12-18 09:59:17', NULL, 'zen_cfg_select_drop_down(array(array(\'id\'=>\'1\', \'text\'=>\'True\'), array(\'id\'=>\'0\', \'text\'=>\'False\')), ');

-- --------------------------------------------------------

--
-- Table structure for table `project_version`
--

CREATE TABLE `project_version` (
  `project_version_id` tinyint(3) NOT NULL,
  `project_version_key` varchar(40) NOT NULL DEFAULT '',
  `project_version_major` varchar(20) NOT NULL DEFAULT '',
  `project_version_minor` varchar(20) NOT NULL DEFAULT '',
  `project_version_patch1` varchar(20) NOT NULL DEFAULT '',
  `project_version_patch2` varchar(20) NOT NULL DEFAULT '',
  `project_version_patch1_source` varchar(20) NOT NULL DEFAULT '',
  `project_version_patch2_source` varchar(20) NOT NULL DEFAULT '',
  `project_version_comment` varchar(250) NOT NULL DEFAULT '',
  `project_version_date_applied` datetime NOT NULL DEFAULT '0001-01-01 01:01:01'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Database Version Tracking';

--
-- Dumping data for table `project_version`
--

INSERT INTO `project_version` (`project_version_id`, `project_version_key`, `project_version_major`, `project_version_minor`, `project_version_patch1`, `project_version_patch2`, `project_version_patch1_source`, `project_version_patch2_source`, `project_version_comment`, `project_version_date_applied`) VALUES
(1, 'Zen-Cart Main', '2', '1.0', '', '', '', '', 'New Installation-v210', '2024-12-18 09:59:18'),
(2, 'Zen-Cart Database', '2', '1.0', '', '', '', '', 'New Installation-v210', '2024-12-18 09:59:18');

-- --------------------------------------------------------

--
-- Table structure for table `project_version_history`
--

CREATE TABLE `project_version_history` (
  `project_version_id` tinyint(3) NOT NULL,
  `project_version_key` varchar(40) NOT NULL DEFAULT '',
  `project_version_major` varchar(20) NOT NULL DEFAULT '',
  `project_version_minor` varchar(20) NOT NULL DEFAULT '',
  `project_version_patch` varchar(20) NOT NULL DEFAULT '',
  `project_version_comment` varchar(250) NOT NULL DEFAULT '',
  `project_version_date_applied` datetime NOT NULL DEFAULT '0001-01-01 01:01:01'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Database Version Tracking History';

--
-- Dumping data for table `project_version_history`
--

INSERT INTO `project_version_history` (`project_version_id`, `project_version_key`, `project_version_major`, `project_version_minor`, `project_version_patch`, `project_version_comment`, `project_version_date_applied`) VALUES
(1, 'Zen-Cart Main', '2', '1.0', '', 'New Installation-v210', '2024-12-18 09:59:18'),
(2, 'Zen-Cart Database', '2', '1.0', '', 'New Installation-v210', '2024-12-18 09:59:18');

-- --------------------------------------------------------

--
-- Table structure for table `query_builder`
--

CREATE TABLE `query_builder` (
  `query_id` int(11) NOT NULL,
  `query_category` varchar(40) NOT NULL DEFAULT '',
  `query_name` varchar(80) NOT NULL DEFAULT '',
  `query_description` text NOT NULL,
  `query_string` text NOT NULL,
  `query_keys_list` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Stores queries for re-use in Admin email and report modules';

--
-- Dumping data for table `query_builder`
--

INSERT INTO `query_builder` (`query_id`, `query_category`, `query_name`, `query_description`, `query_string`, `query_keys_list`) VALUES
(1, 'email', 'All Customers', 'Returns all customers name and email address for sending mass emails (ie: for newsletters, coupons, GVs, messages, etc).', 'select customers_email_address, customers_firstname, customers_lastname from TABLE_CUSTOMERS order by customers_lastname, customers_firstname, customers_email_address', ''),
(2, 'email,newsletters', 'All Newsletter Subscribers', 'Returns name and email address of newsletter subscribers', 'select customers_firstname, customers_lastname, customers_email_address from TABLE_CUSTOMERS where customers_newsletter = \'1\'', ''),
(3, 'email,newsletters', 'Customers Dormant for 3+ months (Subscribers)', 'Subscribers who HAVE purchased something, but have NOT purchased for at least three months.', 'select max(o.date_purchased) as date_purchased, c.customers_email_address, c.customers_lastname, c.customers_firstname from TABLE_CUSTOMERS c, TABLE_ORDERS o WHERE c.customers_id = o.customers_id AND c.customers_newsletter = 1 GROUP BY c.customers_email_address, c.customers_lastname, c.customers_firstname HAVING max(o.date_purchased) <= subdate(now(),INTERVAL 3 MONTH) ORDER BY c.customers_lastname, c.customers_firstname ASC', ''),
(4, 'email,newsletters', 'Active customers in past 3 months (Subscribers)', 'Newsletter subscribers who are also active customers (purchased something) in last 3 months.', 'select c.customers_email_address, c.customers_lastname, c.customers_firstname from TABLE_CUSTOMERS c, TABLE_ORDERS o where c.customers_newsletter = \'1\' AND c.customers_id = o.customers_id and o.date_purchased > subdate(now(),INTERVAL 3 MONTH) GROUP BY c.customers_email_address, c.customers_lastname, c.customers_firstname order by c.customers_lastname, c.customers_firstname ASC', ''),
(5, 'email,newsletters', 'Active customers in past 3 months (Regardless of subscription status)', 'All active customers (purchased something) in last 3 months, ignoring newsletter-subscription status.', 'select c.customers_email_address, c.customers_lastname, c.customers_firstname from TABLE_CUSTOMERS c, TABLE_ORDERS o WHERE c.customers_id = o.customers_id and o.date_purchased > subdate(now(),INTERVAL 3 MONTH) GROUP BY c.customers_email_address, c.customers_lastname, c.customers_firstname order by c.customers_lastname, c.customers_firstname ASC', ''),
(6, 'email,newsletters', 'Administrator', 'Just the email account of the current administrator', 'select \'ADMIN\' as customers_firstname, admin_name as customers_lastname, admin_email as customers_email_address from TABLE_ADMIN where admin_id = $SESSION:admin_id', ''),
(7, 'email,newsletters', 'Customers who have never completed a purchase', 'For sending newsletter to all customers who registered but have never completed a purchase', 'SELECT DISTINCT c.customers_email_address as customers_email_address, c.customers_lastname as customers_lastname, c.customers_firstname as customers_firstname FROM TABLE_CUSTOMERS c LEFT JOIN  TABLE_ORDERS o ON c.customers_id=o.customers_id WHERE o.date_purchased IS NULL', '');

-- --------------------------------------------------------

--
-- Table structure for table `record_artists`
--

CREATE TABLE `record_artists` (
  `artists_id` int(11) NOT NULL,
  `artists_name` varchar(32) NOT NULL DEFAULT '',
  `artists_image` varchar(255) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `record_artists_info`
--

CREATE TABLE `record_artists_info` (
  `artists_id` int(11) NOT NULL DEFAULT 0,
  `languages_id` int(11) NOT NULL DEFAULT 0,
  `artists_url` varchar(255) NOT NULL DEFAULT '',
  `url_clicked` int(5) NOT NULL DEFAULT 0,
  `date_last_click` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `record_company`
--

CREATE TABLE `record_company` (
  `record_company_id` int(11) NOT NULL,
  `record_company_name` varchar(32) NOT NULL DEFAULT '',
  `record_company_image` varchar(255) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `record_company_info`
--

CREATE TABLE `record_company_info` (
  `record_company_id` int(11) NOT NULL DEFAULT 0,
  `languages_id` int(11) NOT NULL DEFAULT 0,
  `record_company_url` varchar(255) NOT NULL DEFAULT '',
  `url_clicked` int(5) NOT NULL DEFAULT 0,
  `date_last_click` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `reviews_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL DEFAULT 0,
  `customers_id` int(11) DEFAULT NULL,
  `customers_name` varchar(64) NOT NULL DEFAULT '',
  `reviews_rating` int(1) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `reviews_read` int(5) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews_description`
--

CREATE TABLE `reviews_description` (
  `reviews_id` int(11) NOT NULL DEFAULT 0,
  `languages_id` int(11) NOT NULL DEFAULT 0,
  `reviews_text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salemaker_sales`
--

CREATE TABLE `salemaker_sales` (
  `sale_id` int(11) NOT NULL,
  `sale_status` tinyint(4) NOT NULL DEFAULT 0,
  `sale_name` varchar(128) NOT NULL DEFAULT '',
  `sale_deduction_value` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `sale_deduction_type` tinyint(4) NOT NULL DEFAULT 0,
  `sale_pricerange_from` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `sale_pricerange_to` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `sale_specials_condition` tinyint(4) NOT NULL DEFAULT 0,
  `sale_categories_selected` text DEFAULT NULL,
  `sale_categories_all` text DEFAULT NULL,
  `sale_date_start` date NOT NULL DEFAULT '0001-01-01',
  `sale_date_end` date NOT NULL DEFAULT '0001-01-01',
  `sale_date_added` date NOT NULL DEFAULT '0001-01-01',
  `sale_date_last_modified` date NOT NULL DEFAULT '0001-01-01',
  `sale_date_status_change` date NOT NULL DEFAULT '0001-01-01'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sesskey` varchar(191) NOT NULL DEFAULT '',
  `expiry` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`sesskey`, `expiry`, `value`) VALUES
('a7a9qbmvp2en89m6916tqe9etb', 1734783236, 0x6332566a64584a7064486c556232746c626e787a4f6a4d794f694a6b4d7a5a6d4e7a6c694e6a67355a474a6d596a67774d7a597a5a6d49794e6d497a5a6d4d7a4f44426a4e4349375933567a644739745a584a7a58326876633352665957526b636d567a6333787a4f6a6b36496b46756457647959576851565349375932467964456c4566484d364d446f69496a746a59584a3058325679636d39796333787a4f6a413649694937646d467361575266644739665932686c5932747664585238596a6f784f324e68636e5238547a6f784d6a6f696332687663484270626d644459584a30496a6f784d7a7037637a6f794d546f6941474a686332554162324a7a5a584a325a584a4262476c686332567a496a74684f6a453665334d364d7a6336496b355056456c4753566c6654314a4552564a66513046535646395456554a5554315242544639445155784456557842564555694f334d364d7a5936496b355056456c4757563950556b5246556c394451564a5558314e56516c52505645464d58304e4254454e56544546555253493766584d364f446f69593239756447567564484d694f3245364d44703766584d364e546f6964473930595777694f326b364d44747a4f6a5936496e646c6157646f6443493761546f774f334d364d5455364967417141474e76626e526c626e526664486c775a534937596a6f774f334d364d6a45364967417141475a795a5756666332687063484270626d64666158526c6253493761546f774f334d364d6a4d364967417141475a795a5756666332687063484270626d6466643256705a326830496a74704f6a4137637a6f794d6a6f6941436f415a6e4a6c5a56397a61476c7763476c755a313977636d6c6a5a53493761546f774f334d364d5463364967417141475276643235736232466b58324e7664573530496a74704f6a4137637a6f794e546f6941436f416447393059577866596d566d62334a6c5832527063324e76645735306379493761546f774f334d364d6a553649674171414752706333427359586c665a475669645764666257567a6332466e5a584d694f3249364d44747a4f6a49324f6949414b67426d6247466e5832523163477870593246305a5639746332647a58334e6c64434937596a6f774f334d364d7a55364967417141475a73595764665a48567762476c6a5958526c5833463159573530615852355832317a5a334e6663325630496a74684f6a4136653331395932686c59327466646d46736157526663484a765a4878694f6a4537626d46326157646864476c76626e78504f6a45334f694a7559585a705a3246306157397553476c7a64473979655349364d7a7037637a6f794d546f6941474a686332554162324a7a5a584a325a584a4262476c686332567a496a74684f6a453665334d364d7a6336496b355056456c4753566c6654314a4552564a66513046535646395456554a5554315242544639445155784456557842564555694f334d364d7a5936496b355056456c4757563950556b5246556c394451564a5558314e56516c52505645464d58304e4254454e56544546555253493766584d364e446f69634746306143493759546f784f6e74704f6a413759546f304f6e747a4f6a5136496e42685a3255694f334d364e546f696157356b5a5867694f334d364e446f696257396b5a534937637a6f324f694a4f54303554553077694f334d364d7a6f695a325630496a74684f6a41366533317a4f6a5136496e4276633351694f3245364d44703766583139637a6f344f694a7a626d4677633268766443493759546f774f6e743966577868626d64315957646c66484d364f546f696157356b6232356c63326c68496a74735957356e6457466e5a584e666157523861546f794f327868626d64315957646c6331396a6232526c66484d364d6a6f69615751694f327868655739316446523563475638637a6f324f694a735a57646859336b694f324e31636e4a6c626d4e3566484d364d7a6f6953555253496a743062325268655639706333787a4f6a45774f6949794d4449304c5445794c544978496a7431634752686447564665484270636d463061573975633378694f6a45375957353061584e77595731665a6d6c6c624752755957316c66484d364d544136496b524c4e477479637a4a44525745694f334e6c63334e706232356659323931626e526c636e78694f6a45375933567a644739745a584a7a58326c775832466b5a484a6c63334e38637a6f7a4f6949364f6a45694f773d3d);

-- --------------------------------------------------------

--
-- Table structure for table `specials`
--

CREATE TABLE `specials` (
  `specials_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL DEFAULT 0,
  `specials_new_products_price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `specials_date_added` datetime DEFAULT NULL,
  `specials_last_modified` datetime DEFAULT NULL,
  `expires_date` date NOT NULL DEFAULT '0001-01-01',
  `date_status_change` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `specials_date_available` date NOT NULL DEFAULT '0001-01-01'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_class`
--

CREATE TABLE `tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `tax_class_title` varchar(32) NOT NULL DEFAULT '',
  `tax_class_description` varchar(255) NOT NULL DEFAULT '',
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL DEFAULT '0001-01-01 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tax_class`
--

INSERT INTO `tax_class` (`tax_class_id`, `tax_class_title`, `tax_class_description`, `last_modified`, `date_added`) VALUES
(1, 'Taxable Goods', 'The following types of products are included: non-food, services, etc', NULL, '2024-12-18 09:59:15');

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE `tax_rates` (
  `tax_rates_id` int(11) NOT NULL,
  `tax_zone_id` int(11) NOT NULL DEFAULT 0,
  `tax_class_id` int(11) NOT NULL DEFAULT 0,
  `tax_priority` int(5) DEFAULT 1,
  `tax_rate` decimal(7,4) NOT NULL DEFAULT 0.0000,
  `tax_description` varchar(255) NOT NULL DEFAULT '',
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL DEFAULT '0001-01-01 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tax_rates`
--

INSERT INTO `tax_rates` (`tax_rates_id`, `tax_zone_id`, `tax_class_id`, `tax_priority`, `tax_rate`, `tax_description`, `last_modified`, `date_added`) VALUES
(1, 1, 1, 1, 7.0000, 'FL TAX 7.0%', '2024-12-18 09:59:15', '2024-12-18 09:59:15');

-- --------------------------------------------------------

--
-- Table structure for table `template_select`
--

CREATE TABLE `template_select` (
  `template_id` int(11) NOT NULL,
  `template_dir` varchar(64) NOT NULL DEFAULT '',
  `template_language` varchar(64) NOT NULL DEFAULT '0',
  `template_settings` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `template_select`
--

INSERT INTO `template_select` (`template_id`, `template_dir`, `template_language`, `template_settings`) VALUES
(1, 'responsive_classic', '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `upgrade_exceptions`
--

CREATE TABLE `upgrade_exceptions` (
  `upgrade_exception_id` smallint(5) NOT NULL,
  `sql_file` varchar(128) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `errordate` datetime DEFAULT NULL,
  `sqlstatement` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `whos_online`
--

CREATE TABLE `whos_online` (
  `customer_id` int(11) DEFAULT NULL,
  `full_name` varchar(64) NOT NULL DEFAULT '',
  `session_id` varchar(191) NOT NULL DEFAULT '',
  `ip_address` varchar(45) NOT NULL DEFAULT '',
  `time_entry` varchar(14) NOT NULL DEFAULT '',
  `time_last_click` varchar(14) NOT NULL DEFAULT '',
  `last_page_url` varchar(255) NOT NULL DEFAULT '',
  `host_address` text NOT NULL,
  `user_agent` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `whos_online`
--

INSERT INTO `whos_online` (`customer_id`, `full_name`, `session_id`, `ip_address`, `time_entry`, `time_last_click`, `last_page_url`, `host_address`, `user_agent`) VALUES
(0, '&yen;Guest', 'a7a9qbmvp2en89m6916tqe9etb', '::1', '1734781793', '1734781793', '/zc_computer/', 'AnugrahPU', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `zone_id` int(11) NOT NULL,
  `zone_country_id` int(11) NOT NULL DEFAULT 0,
  `zone_code` varchar(32) NOT NULL DEFAULT '',
  `zone_name` varchar(128) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`zone_id`, `zone_country_id`, `zone_code`, `zone_name`) VALUES
(1, 223, 'AL', 'Alabama'),
(2, 223, 'AK', 'Alaska'),
(3, 223, 'AS', 'American Samoa'),
(4, 223, 'AZ', 'Arizona'),
(5, 223, 'AR', 'Arkansas'),
(7, 223, 'AA', 'Armed Forces Americas'),
(9, 223, 'AE', 'Armed Forces Europe'),
(11, 223, 'AP', 'Armed Forces Pacific'),
(12, 223, 'CA', 'California'),
(13, 223, 'CO', 'Colorado'),
(14, 223, 'CT', 'Connecticut'),
(15, 223, 'DE', 'Delaware'),
(16, 223, 'DC', 'District of Columbia'),
(17, 223, 'FM', 'Federated States Of Micronesia'),
(18, 223, 'FL', 'Florida'),
(19, 223, 'GA', 'Georgia'),
(20, 223, 'GU', 'Guam'),
(21, 223, 'HI', 'Hawaii'),
(22, 223, 'ID', 'Idaho'),
(23, 223, 'IL', 'Illinois'),
(24, 223, 'IN', 'Indiana'),
(25, 223, 'IA', 'Iowa'),
(26, 223, 'KS', 'Kansas'),
(27, 223, 'KY', 'Kentucky'),
(28, 223, 'LA', 'Louisiana'),
(29, 223, 'ME', 'Maine'),
(30, 223, 'MH', 'Marshall Islands'),
(31, 223, 'MD', 'Maryland'),
(32, 223, 'MA', 'Massachusetts'),
(33, 223, 'MI', 'Michigan'),
(34, 223, 'MN', 'Minnesota'),
(35, 223, 'MS', 'Mississippi'),
(36, 223, 'MO', 'Missouri'),
(37, 223, 'MT', 'Montana'),
(38, 223, 'NE', 'Nebraska'),
(39, 223, 'NV', 'Nevada'),
(40, 223, 'NH', 'New Hampshire'),
(41, 223, 'NJ', 'New Jersey'),
(42, 223, 'NM', 'New Mexico'),
(43, 223, 'NY', 'New York'),
(44, 223, 'NC', 'North Carolina'),
(45, 223, 'ND', 'North Dakota'),
(46, 223, 'MP', 'Northern Mariana Islands'),
(47, 223, 'OH', 'Ohio'),
(48, 223, 'OK', 'Oklahoma'),
(49, 223, 'OR', 'Oregon'),
(50, 163, 'PW', 'Palau'),
(51, 223, 'PA', 'Pennsylvania'),
(52, 223, 'PR', 'Puerto Rico'),
(53, 223, 'RI', 'Rhode Island'),
(54, 223, 'SC', 'South Carolina'),
(55, 223, 'SD', 'South Dakota'),
(56, 223, 'TN', 'Tennessee'),
(57, 223, 'TX', 'Texas'),
(58, 223, 'UT', 'Utah'),
(59, 223, 'VT', 'Vermont'),
(60, 223, 'VI', 'Virgin Islands'),
(61, 223, 'VA', 'Virginia'),
(62, 223, 'WA', 'Washington'),
(63, 223, 'WV', 'West Virginia'),
(64, 223, 'WI', 'Wisconsin'),
(65, 223, 'WY', 'Wyoming'),
(66, 38, 'AB', 'Alberta'),
(67, 38, 'BC', 'British Columbia'),
(68, 38, 'MB', 'Manitoba'),
(69, 38, 'NL', 'Newfoundland'),
(70, 38, 'NB', 'New Brunswick'),
(71, 38, 'NS', 'Nova Scotia'),
(72, 38, 'NT', 'Northwest Territories'),
(73, 38, 'NU', 'Nunavut'),
(74, 38, 'ON', 'Ontario'),
(75, 38, 'PE', 'Prince Edward Island'),
(76, 38, 'QC', 'Quebec'),
(77, 38, 'SK', 'Saskatchewan'),
(78, 38, 'YT', 'Yukon Territory'),
(79, 81, 'NDS', 'Niedersachsen'),
(80, 81, 'BAW', 'Baden-Württemberg'),
(81, 81, 'BAY', 'Bayern'),
(82, 81, 'BER', 'Berlin'),
(83, 81, 'BRG', 'Brandenburg'),
(84, 81, 'BRE', 'Bremen'),
(85, 81, 'HAM', 'Hamburg'),
(86, 81, 'HES', 'Hessen'),
(87, 81, 'MEC', 'Mecklenburg-Vorpommern'),
(88, 81, 'NRW', 'Nordrhein-Westfalen'),
(89, 81, 'RHE', 'Rheinland-Pfalz'),
(90, 81, 'SAR', 'Saarland'),
(91, 81, 'SAS', 'Sachsen'),
(92, 81, 'SAC', 'Sachsen-Anhalt'),
(93, 81, 'SCN', 'Schleswig-Holstein'),
(94, 81, 'THE', 'Thüringen'),
(95, 14, 'WI', 'Wien'),
(96, 14, 'NO', 'Niederösterreich'),
(97, 14, 'OO', 'Oberösterreich'),
(98, 14, 'SB', 'Salzburg'),
(99, 14, 'KN', 'Kärnten'),
(100, 14, 'ST', 'Steiermark'),
(101, 14, 'TI', 'Tirol'),
(102, 14, 'BL', 'Burgenland'),
(103, 14, 'VB', 'Vorarlberg'),
(104, 195, 'A Coruña', 'A Coruña'),
(105, 195, 'Álava', 'Álava'),
(106, 195, 'Albacete', 'Albacete'),
(107, 195, 'Alicante', 'Alicante'),
(108, 195, 'Almería', 'Almería'),
(109, 195, 'Asturias', 'Asturias'),
(110, 195, 'Ávila', 'Ávila'),
(111, 195, 'Badajoz', 'Badajoz'),
(112, 195, 'Baleares', 'Baleares'),
(113, 195, 'Barcelona', 'Barcelona'),
(114, 195, 'Burgos', 'Burgos'),
(115, 195, 'Cáceres', 'Cáceres'),
(116, 195, 'Cádiz', 'Cádiz'),
(117, 195, 'Cantabria', 'Cantabria'),
(118, 195, 'Castellón', 'Castellón'),
(119, 195, 'Ceuta', 'Ceuta'),
(120, 195, 'Ciudad Real', 'Ciudad Real'),
(121, 195, 'Córdoba', 'Córdoba'),
(122, 195, 'Cuenca', 'Cuenca'),
(123, 195, 'Girona', 'Girona'),
(124, 195, 'Granada', 'Granada'),
(125, 195, 'Guadalajara', 'Guadalajara'),
(126, 195, 'Guipúzcoa', 'Guipúzcoa'),
(127, 195, 'Huelva', 'Huelva'),
(128, 195, 'Huesca', 'Huesca'),
(129, 195, 'Jaén', 'Jaén'),
(130, 195, 'La Rioja', 'La Rioja'),
(131, 195, 'Las Palmas', 'Las Palmas'),
(132, 195, 'León', 'León'),
(133, 195, 'Lérida', 'Lérida'),
(134, 195, 'Lugo', 'Lugo'),
(135, 195, 'Madrid', 'Madrid'),
(136, 195, 'Málaga', 'Málaga'),
(137, 195, 'Melilla', 'Melilla'),
(138, 195, 'Murcia', 'Murcia'),
(139, 195, 'Navarra', 'Navarra'),
(140, 195, 'Ourense', 'Ourense'),
(141, 195, 'Palencia', 'Palencia'),
(142, 195, 'Pontevedra', 'Pontevedra'),
(143, 195, 'Salamanca', 'Salamanca'),
(144, 195, 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
(145, 195, 'Segovia', 'Segovia'),
(146, 195, 'Sevilla', 'Sevilla'),
(147, 195, 'Soria', 'Soria'),
(148, 195, 'Tarragona', 'Tarragona'),
(149, 195, 'Teruel', 'Teruel'),
(150, 195, 'Toledo', 'Toledo'),
(151, 195, 'Valencia', 'Valencia'),
(152, 195, 'Valladolid', 'Valladolid'),
(153, 195, 'Vizcaya', 'Vizcaya'),
(154, 195, 'Zamora', 'Zamora'),
(155, 195, 'Zaragoza', 'Zaragoza'),
(156, 13, 'ACT', 'Australian Capital Territory'),
(157, 13, 'NSW', 'New South Wales'),
(158, 13, 'NT', 'Northern Territory'),
(159, 13, 'QLD', 'Queensland'),
(160, 13, 'SA', 'South Australia'),
(161, 13, 'TAS', 'Tasmania'),
(162, 13, 'VIC', 'Victoria'),
(163, 13, 'WA', 'Western Australia'),
(164, 105, 'AG', 'Agrigento'),
(165, 105, 'AL', 'Alessandria'),
(166, 105, 'AN', 'Ancona'),
(167, 105, 'AO', 'Valle D\'Aosta'),
(168, 105, 'AR', 'Arezzo'),
(169, 105, 'AP', 'Ascoli Piceno'),
(170, 105, 'AT', 'Asti'),
(171, 105, 'AV', 'Avellino'),
(172, 105, 'BA', 'Bari'),
(173, 105, 'BT', 'Barletta-Andria-Trani'),
(174, 105, 'BL', 'Belluno'),
(175, 105, 'BN', 'Benevento'),
(176, 105, 'BG', 'Bergamo'),
(177, 105, 'BI', 'Biella'),
(178, 105, 'BO', 'Bologna'),
(179, 105, 'BZ', 'Bolzano'),
(180, 105, 'BS', 'Brescia'),
(181, 105, 'BR', 'Brindisi'),
(182, 105, 'CA', 'Cagliari'),
(183, 105, 'CL', 'Caltanissetta'),
(184, 105, 'CB', 'Campobasso'),
(185, 105, 'CE', 'Caserta'),
(186, 105, 'CT', 'Catania'),
(187, 105, 'CZ', 'Catanzaro'),
(188, 105, 'CH', 'Chieti'),
(189, 105, 'CO', 'Como'),
(190, 105, 'CS', 'Cosenza'),
(191, 105, 'CR', 'Cremona'),
(192, 105, 'KR', 'Crotone'),
(193, 105, 'CN', 'Cuneo'),
(194, 105, 'EN', 'Enna'),
(195, 105, 'FM', 'Fermo'),
(196, 105, 'FE', 'Ferrara'),
(197, 105, 'FI', 'Firenze'),
(198, 105, 'FG', 'Foggia'),
(199, 105, 'FC', 'Forlì-Cesena'),
(200, 105, 'FR', 'Frosinone'),
(201, 105, 'GE', 'Genova'),
(202, 105, 'GO', 'Gorizia'),
(203, 105, 'GR', 'Grosseto'),
(204, 105, 'IM', 'Imperia'),
(205, 105, 'IS', 'Isernia'),
(206, 105, 'AQ', 'L\'Aquila'),
(207, 105, 'SP', 'La Spezia'),
(208, 105, 'LT', 'Latina'),
(209, 105, 'LE', 'Lecce'),
(210, 105, 'LC', 'Lecco'),
(211, 105, 'LI', 'Livorno'),
(212, 105, 'LO', 'Lodi'),
(213, 105, 'LU', 'Lucca'),
(214, 105, 'MC', 'Macerata'),
(215, 105, 'MN', 'Mantova'),
(216, 105, 'MS', 'Massa-Carrara'),
(217, 105, 'MT', 'Matera'),
(218, 105, 'ME', 'Messina'),
(219, 105, 'MI', 'Milano'),
(220, 105, 'MO', 'Modena'),
(221, 105, 'MB', 'Monza e Brianza'),
(222, 105, 'NA', 'Napoli'),
(223, 105, 'NO', 'Novara'),
(224, 105, 'NU', 'Nuoro'),
(225, 105, 'OR', 'Oristano'),
(226, 105, 'PD', 'Padova'),
(227, 105, 'PA', 'Palermo'),
(228, 105, 'PR', 'Parma'),
(229, 105, 'PG', 'Perugia'),
(230, 105, 'PV', 'Pavia'),
(231, 105, 'PU', 'Pesaro E Urbino'),
(232, 105, 'PE', 'Pescara'),
(233, 105, 'PC', 'Piacenza'),
(234, 105, 'PI', 'Pisa'),
(235, 105, 'PT', 'Pistoia'),
(236, 105, 'PN', 'Pordenone'),
(237, 105, 'PZ', 'Potenza'),
(238, 105, 'PO', 'Prato'),
(239, 105, 'RG', 'Ragusa'),
(240, 105, 'RA', 'Ravenna'),
(241, 105, 'RC', 'Reggio Calabria'),
(242, 105, 'RE', 'Reggio Emilia'),
(243, 105, 'RI', 'Rieti'),
(244, 105, 'RN', 'Rimini'),
(245, 105, 'RM', 'Roma'),
(246, 105, 'RO', 'Rovigo'),
(247, 105, 'SA', 'Salerno'),
(248, 105, 'SS', 'Sassari'),
(249, 105, 'SV', 'Savona'),
(250, 105, 'SI', 'Siena'),
(251, 105, 'SR', 'Siracusa'),
(252, 105, 'SO', 'Sondrio'),
(253, 105, 'SU', 'Sud Sardegna'),
(254, 105, 'TA', 'Taranto'),
(255, 105, 'TE', 'Teramo'),
(256, 105, 'TR', 'Terni'),
(257, 105, 'TO', 'Torino'),
(258, 105, 'TP', 'Trapani'),
(259, 105, 'TN', 'Trento'),
(260, 105, 'TV', 'Treviso'),
(261, 105, 'TS', 'Trieste'),
(262, 105, 'UD', 'Udine'),
(263, 105, 'VA', 'Varese'),
(264, 105, 'VE', 'Venezia'),
(265, 105, 'VB', 'Verbano-Cusio-Ossola'),
(266, 105, 'VC', 'Vercelli'),
(267, 105, 'VR', 'Verona'),
(268, 105, 'VV', 'Vibo Valentia'),
(269, 105, 'VI', 'Vicenza'),
(270, 105, 'VT', 'Viterbo'),
(271, 100, 'NAD', 'Nanggroe Aceh Darussalam'),
(272, 100, 'Sumut', 'Sumatera Utara'),
(273, 100, 'Sumbar', 'Sumatera Barat'),
(274, 100, 'Riau', 'Riau'),
(275, 100, 'Kepri', 'Kepulauan Riau'),
(276, 100, 'Sumsel', 'Sumatera Selatan'),
(277, 100, 'Bengkulu', 'Bengkulu'),
(278, 100, 'Jambi', 'Jambi'),
(279, 100, 'Lampung', 'Lampung'),
(280, 100, 'Babel', 'Bangka Belitung'),
(281, 100, 'DKI', 'DKI Jakarta'),
(282, 100, 'Jabar', 'Jawa Barat'),
(283, 100, 'Jateng', 'Jawa Tengah'),
(284, 100, 'DIY', 'DI Jogjakarta'),
(285, 100, 'Jatim', 'Jawa Timur'),
(286, 100, 'Banten', 'Banten'),
(287, 100, 'Bali', 'Bali'),
(288, 100, 'Kalbar', 'Kalimantan Barat'),
(289, 100, 'Kalsel', 'Kalimantan Selatan'),
(290, 100, 'Kalteng', 'Kalimantan Tengah'),
(291, 100, 'Kaltim', 'Kalimantan Timur'),
(292, 100, 'Kaltara', 'Kalimantan Utara'),
(293, 100, 'Sulut', 'Sulawesi Utara'),
(294, 100, 'Sulteng', 'Sulawesi Tengah'),
(295, 100, 'Sultra', 'Sulawesi Tenggara'),
(296, 100, 'Sulsel', 'Sulawesi Selatan'),
(297, 100, 'Sulbar', 'Sulawesi Barat'),
(298, 100, 'Gorontalo', 'Gorontalo'),
(299, 100, 'NTB', 'Nusa Tenggara Barat'),
(300, 100, 'NTT', 'Nusa Tenggara Timur'),
(301, 100, 'Maluku', 'Maluku'),
(302, 100, 'Malut', 'Maluku Utara'),
(303, 100, 'Papua', 'Papua'),
(304, 100, 'Papua Barat', 'Papua Barat');

-- --------------------------------------------------------

--
-- Table structure for table `zones_to_geo_zones`
--

CREATE TABLE `zones_to_geo_zones` (
  `association_id` int(11) NOT NULL,
  `zone_country_id` int(11) NOT NULL DEFAULT 0,
  `zone_id` int(11) DEFAULT NULL,
  `geo_zone_id` int(11) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL DEFAULT '0001-01-01 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zones_to_geo_zones`
--

INSERT INTO `zones_to_geo_zones` (`association_id`, `zone_country_id`, `zone_id`, `geo_zone_id`, `last_modified`, `date_added`) VALUES
(1, 223, 18, 1, NULL, '2024-12-18 09:59:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address_book`
--
ALTER TABLE `address_book`
  ADD PRIMARY KEY (`address_book_id`),
  ADD KEY `idx_address_book_customers_id_zen` (`customers_id`);

--
-- Indexes for table `address_format`
--
ALTER TABLE `address_format`
  ADD PRIMARY KEY (`address_format_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `idx_admin_name_zen` (`admin_name`),
  ADD KEY `idx_admin_email_zen` (`admin_email`),
  ADD KEY `idx_admin_profile_zen` (`admin_profile`);

--
-- Indexes for table `admin_activity_log`
--
ALTER TABLE `admin_activity_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `idx_page_accessed_zen` (`page_accessed`),
  ADD KEY `idx_access_date_zen` (`access_date`),
  ADD KEY `idx_flagged_zen` (`flagged`),
  ADD KEY `idx_ip_zen` (`ip_address`);

--
-- Indexes for table `admin_expired_tokens`
--
ALTER TABLE `admin_expired_tokens`
  ADD PRIMARY KEY (`used_date`,`otp_code`,`admin_name`),
  ADD KEY `idx_admin_name_otp_code_zen` (`admin_name`,`otp_code`);

--
-- Indexes for table `admin_menus`
--
ALTER TABLE `admin_menus`
  ADD UNIQUE KEY `menu_key` (`menu_key`);

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD UNIQUE KEY `notification_key` (`notification_key`);

--
-- Indexes for table `admin_pages`
--
ALTER TABLE `admin_pages`
  ADD UNIQUE KEY `page_key` (`page_key`);

--
-- Indexes for table `admin_pages_to_profiles`
--
ALTER TABLE `admin_pages_to_profiles`
  ADD UNIQUE KEY `profile_page` (`profile_id`,`page_key`),
  ADD UNIQUE KEY `page_profile` (`page_key`,`profile_id`);

--
-- Indexes for table `admin_profiles`
--
ALTER TABLE `admin_profiles`
  ADD PRIMARY KEY (`profile_id`),
  ADD UNIQUE KEY `idx_profile_name_zen` (`profile_name`);

--
-- Indexes for table `authorizenet`
--
ALTER TABLE `authorizenet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`banners_id`),
  ADD KEY `idx_status_group_zen` (`status`,`banners_group`),
  ADD KEY `idx_expires_date_zen` (`expires_date`),
  ADD KEY `idx_date_scheduled_zen` (`date_scheduled`);

--
-- Indexes for table `banners_history`
--
ALTER TABLE `banners_history`
  ADD PRIMARY KEY (`banners_history_id`),
  ADD KEY `idx_banners_id_zen` (`banners_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`),
  ADD KEY `idx_parent_id_cat_id_zen` (`parent_id`,`categories_id`),
  ADD KEY `idx_status_zen` (`categories_status`),
  ADD KEY `idx_sort_order_zen` (`sort_order`);

--
-- Indexes for table `categories_description`
--
ALTER TABLE `categories_description`
  ADD PRIMARY KEY (`categories_id`,`language_id`),
  ADD KEY `idx_categories_name_zen` (`categories_name`);

--
-- Indexes for table `configuration`
--
ALTER TABLE `configuration`
  ADD PRIMARY KEY (`configuration_id`),
  ADD UNIQUE KEY `unq_config_key_zen` (`configuration_key`),
  ADD KEY `idx_key_value_zen` (`configuration_key`,`configuration_value`(10)),
  ADD KEY `idx_cfg_grp_id_zen` (`configuration_group_id`);

--
-- Indexes for table `configuration_group`
--
ALTER TABLE `configuration_group`
  ADD PRIMARY KEY (`configuration_group_id`),
  ADD KEY `idx_visible_zen` (`visible`);

--
-- Indexes for table `counter_history`
--
ALTER TABLE `counter_history`
  ADD PRIMARY KEY (`startdate`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`countries_id`),
  ADD KEY `idx_countries_name_zen` (`countries_name`),
  ADD KEY `idx_address_format_id_zen` (`address_format_id`),
  ADD KEY `idx_iso_2_zen` (`countries_iso_code_2`),
  ADD KEY `idx_iso_3_zen` (`countries_iso_code_3`);

--
-- Indexes for table `count_product_views`
--
ALTER TABLE `count_product_views`
  ADD PRIMARY KEY (`product_id`,`language_id`,`date_viewed`),
  ADD KEY `idx_pid_lang_date_zen` (`language_id`,`product_id`,`date_viewed`),
  ADD KEY `idx_date_pid_lang_zen` (`date_viewed`,`product_id`,`language_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`),
  ADD KEY `idx_active_type_zen` (`coupon_active`,`coupon_type`),
  ADD KEY `idx_coupon_code_zen` (`coupon_code`),
  ADD KEY `idx_coupon_type_zen` (`coupon_type`);

--
-- Indexes for table `coupons_description`
--
ALTER TABLE `coupons_description`
  ADD PRIMARY KEY (`coupon_id`,`language_id`);

--
-- Indexes for table `coupon_email_track`
--
ALTER TABLE `coupon_email_track`
  ADD PRIMARY KEY (`unique_id`),
  ADD KEY `idx_coupon_id_zen` (`coupon_id`);

--
-- Indexes for table `coupon_gv_customer`
--
ALTER TABLE `coupon_gv_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `coupon_gv_queue`
--
ALTER TABLE `coupon_gv_queue`
  ADD PRIMARY KEY (`unique_id`),
  ADD KEY `idx_cust_id_order_id_zen` (`customer_id`,`order_id`),
  ADD KEY `idx_release_flag_zen` (`release_flag`);

--
-- Indexes for table `coupon_redeem_track`
--
ALTER TABLE `coupon_redeem_track`
  ADD PRIMARY KEY (`unique_id`),
  ADD KEY `idx_coupon_id_zen` (`coupon_id`);

--
-- Indexes for table `coupon_referrers`
--
ALTER TABLE `coupon_referrers`
  ADD PRIMARY KEY (`referrer_id`),
  ADD UNIQUE KEY `idx_referrer_domain_zen` (`referrer_domain`),
  ADD KEY `idx_refcoupon_id_zen` (`coupon_id`);

--
-- Indexes for table `coupon_restrict`
--
ALTER TABLE `coupon_restrict`
  ADD PRIMARY KEY (`restrict_id`),
  ADD KEY `idx_coup_id_prod_id_zen` (`coupon_id`,`product_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`currencies_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customers_id`),
  ADD KEY `idx_email_address_zen` (`customers_email_address`),
  ADD KEY `idx_referral_zen` (`customers_referral`(10)),
  ADD KEY `idx_grp_pricing_zen` (`customers_group_pricing`),
  ADD KEY `idx_nick_zen` (`customers_nick`),
  ADD KEY `idx_newsletter_zen` (`customers_newsletter`);

--
-- Indexes for table `customers_basket`
--
ALTER TABLE `customers_basket`
  ADD PRIMARY KEY (`customers_basket_id`),
  ADD KEY `idx_customers_id_zen` (`customers_id`);

--
-- Indexes for table `customers_basket_attributes`
--
ALTER TABLE `customers_basket_attributes`
  ADD PRIMARY KEY (`customers_basket_attributes_id`),
  ADD KEY `idx_cust_id_prod_id_zen` (`customers_id`,`products_id`(36));

--
-- Indexes for table `customers_info`
--
ALTER TABLE `customers_info`
  ADD PRIMARY KEY (`customers_info_id`),
  ADD KEY `idx_date_created_cust_id_zen` (`customers_info_date_account_created`,`customers_info_id`);

--
-- Indexes for table `customers_to_groups`
--
ALTER TABLE `customers_to_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_custid_groupid_zen` (`customer_id`,`group_id`),
  ADD KEY `idx_groupid_custid_zen` (`group_id`,`customer_id`);

--
-- Indexes for table `customer_groups`
--
ALTER TABLE `customer_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `idx_groupname_zen` (`group_name`);

--
-- Indexes for table `db_cache`
--
ALTER TABLE `db_cache`
  ADD PRIMARY KEY (`cache_entry_name`);

--
-- Indexes for table `email_archive`
--
ALTER TABLE `email_archive`
  ADD PRIMARY KEY (`archive_id`),
  ADD KEY `idx_email_to_address_zen` (`email_to_address`),
  ADD KEY `idx_email_date_sent_zen` (`date_sent`),
  ADD KEY `idx_module_zen` (`module`);

--
-- Indexes for table `ezpages`
--
ALTER TABLE `ezpages`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `idx_ezp_status_header_zen` (`status_header`),
  ADD KEY `idx_ezp_status_sidebox_zen` (`status_sidebox`),
  ADD KEY `idx_ezp_status_footer_zen` (`status_footer`),
  ADD KEY `idx_ezp_status_mobile_zen` (`status_mobile`),
  ADD KEY `idx_ezp_status_toc_zen` (`status_toc`);

--
-- Indexes for table `ezpages_content`
--
ALTER TABLE `ezpages_content`
  ADD UNIQUE KEY `idx_ezpages_content` (`pages_id`,`languages_id`),
  ADD KEY `idx_lang_id_zen` (`languages_id`);

--
-- Indexes for table `featured`
--
ALTER TABLE `featured`
  ADD PRIMARY KEY (`featured_id`),
  ADD KEY `idx_status_zen` (`status`),
  ADD KEY `idx_products_id_zen` (`products_id`),
  ADD KEY `idx_date_avail_zen` (`featured_date_available`),
  ADD KEY `idx_expires_date_zen` (`expires_date`);

--
-- Indexes for table `featured_categories`
--
ALTER TABLE `featured_categories`
  ADD PRIMARY KEY (`featured_categories_id`),
  ADD KEY `idx_status_zen` (`status`),
  ADD KEY `idx_category_id_zen` (`categories_id`),
  ADD KEY `idx_date_avail_zen` (`featured_date_available`),
  ADD KEY `idx_expires_date_zen` (`expires_date`);

--
-- Indexes for table `files_uploaded`
--
ALTER TABLE `files_uploaded`
  ADD PRIMARY KEY (`files_uploaded_id`),
  ADD KEY `idx_customers_id_zen` (`customers_id`);

--
-- Indexes for table `geo_zones`
--
ALTER TABLE `geo_zones`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `get_terms_to_filter`
--
ALTER TABLE `get_terms_to_filter`
  ADD PRIMARY KEY (`get_term_name`);

--
-- Indexes for table `group_pricing`
--
ALTER TABLE `group_pricing`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languages_id`),
  ADD KEY `idx_languages_name_zen` (`name`);

--
-- Indexes for table `layout_boxes`
--
ALTER TABLE `layout_boxes`
  ADD PRIMARY KEY (`layout_id`),
  ADD KEY `idx_name_template_zen` (`layout_template`,`layout_box_name`),
  ADD KEY `idx_layout_box_status_zen` (`layout_box_status`),
  ADD KEY `idx_layout_box_sort_order_zen` (`layout_box_sort_order`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturers_id`),
  ADD KEY `idx_mfg_name_zen` (`manufacturers_name`);

--
-- Indexes for table `manufacturers_info`
--
ALTER TABLE `manufacturers_info`
  ADD PRIMARY KEY (`manufacturers_id`,`languages_id`);

--
-- Indexes for table `media_clips`
--
ALTER TABLE `media_clips`
  ADD PRIMARY KEY (`clip_id`),
  ADD KEY `idx_media_id_zen` (`media_id`),
  ADD KEY `idx_clip_type_zen` (`clip_type`);

--
-- Indexes for table `media_manager`
--
ALTER TABLE `media_manager`
  ADD PRIMARY KEY (`media_id`),
  ADD KEY `idx_media_name_zen` (`media_name`(191));

--
-- Indexes for table `media_to_products`
--
ALTER TABLE `media_to_products`
  ADD KEY `idx_media_product_zen` (`media_id`,`product_id`);

--
-- Indexes for table `media_types`
--
ALTER TABLE `media_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_type_name_zen` (`type_name`);

--
-- Indexes for table `meta_tags_categories_description`
--
ALTER TABLE `meta_tags_categories_description`
  ADD PRIMARY KEY (`categories_id`,`language_id`);

--
-- Indexes for table `meta_tags_products_description`
--
ALTER TABLE `meta_tags_products_description`
  ADD PRIMARY KEY (`products_id`,`language_id`);

--
-- Indexes for table `music_genre`
--
ALTER TABLE `music_genre`
  ADD PRIMARY KEY (`music_genre_id`),
  ADD KEY `idx_music_genre_name_zen` (`music_genre_name`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`newsletters_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `idx_status_orders_cust_zen` (`orders_status`,`orders_id`,`customers_id`),
  ADD KEY `idx_date_purchased_zen` (`date_purchased`),
  ADD KEY `idx_cust_id_orders_id_zen` (`customers_id`,`orders_id`),
  ADD KEY `idx_status_date_id_zen` (`orders_status`,`date_purchased`,`orders_id`);

--
-- Indexes for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`orders_products_id`),
  ADD KEY `idx_orders_id_prod_id_zen` (`orders_id`,`products_id`),
  ADD KEY `idx_prod_id_orders_id_zen` (`products_id`,`orders_id`);

--
-- Indexes for table `orders_products_attributes`
--
ALTER TABLE `orders_products_attributes`
  ADD PRIMARY KEY (`orders_products_attributes_id`),
  ADD KEY `idx_orders_id_prod_id_zen` (`orders_id`,`orders_products_id`);

--
-- Indexes for table `orders_products_download`
--
ALTER TABLE `orders_products_download`
  ADD PRIMARY KEY (`orders_products_download_id`),
  ADD KEY `idx_orders_id_zen` (`orders_id`),
  ADD KEY `idx_orders_products_id_zen` (`orders_products_id`);

--
-- Indexes for table `orders_status`
--
ALTER TABLE `orders_status`
  ADD PRIMARY KEY (`orders_status_id`,`language_id`),
  ADD KEY `idx_orders_status_name_zen` (`orders_status_name`);

--
-- Indexes for table `orders_status_history`
--
ALTER TABLE `orders_status_history`
  ADD PRIMARY KEY (`orders_status_history_id`),
  ADD KEY `idx_orders_id_status_id_zen` (`orders_id`,`orders_status_id`);

--
-- Indexes for table `orders_total`
--
ALTER TABLE `orders_total`
  ADD PRIMARY KEY (`orders_total_id`),
  ADD KEY `idx_ot_orders_id_zen` (`orders_id`),
  ADD KEY `idx_ot_class_zen` (`class`),
  ADD KEY `idx_oid_class_zen` (`orders_id`,`class`);

--
-- Indexes for table `paypal`
--
ALTER TABLE `paypal`
  ADD PRIMARY KEY (`paypal_ipn_id`,`txn_id`),
  ADD KEY `idx_order_id_zen` (`order_id`);

--
-- Indexes for table `paypal_payment_status`
--
ALTER TABLE `paypal_payment_status`
  ADD PRIMARY KEY (`payment_status_id`);

--
-- Indexes for table `paypal_payment_status_history`
--
ALTER TABLE `paypal_payment_status_history`
  ADD PRIMARY KEY (`payment_status_history_id`),
  ADD KEY `idx_paypal_ipn_id_zen` (`paypal_ipn_id`);

--
-- Indexes for table `paypal_session`
--
ALTER TABLE `paypal_session`
  ADD PRIMARY KEY (`unique_id`),
  ADD KEY `idx_session_id_zen` (`session_id`(36));

--
-- Indexes for table `paypal_testing`
--
ALTER TABLE `paypal_testing`
  ADD PRIMARY KEY (`paypal_ipn_id`,`txn_id`),
  ADD KEY `idx_order_id_zen` (`order_id`);

--
-- Indexes for table `plugin_control`
--
ALTER TABLE `plugin_control`
  ADD PRIMARY KEY (`unique_key`);

--
-- Indexes for table `plugin_control_versions`
--
ALTER TABLE `plugin_control_versions`
  ADD PRIMARY KEY (`unique_key`,`version`);

--
-- Indexes for table `plugin_groups`
--
ALTER TABLE `plugin_groups`
  ADD PRIMARY KEY (`unique_key`);

--
-- Indexes for table `plugin_groups_description`
--
ALTER TABLE `plugin_groups_description`
  ADD PRIMARY KEY (`plugin_group_unique_key`,`language_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`),
  ADD KEY `idx_products_date_added_zen` (`products_date_added`),
  ADD KEY `idx_products_status_zen` (`products_status`),
  ADD KEY `idx_products_date_available_zen` (`products_date_available`),
  ADD KEY `idx_products_ordered_zen` (`products_ordered`),
  ADD KEY `idx_products_model_zen` (`products_model`),
  ADD KEY `idx_products_price_sorter_zen` (`products_price_sorter`),
  ADD KEY `idx_master_categories_id_zen` (`master_categories_id`),
  ADD KEY `idx_products_sort_order_zen` (`products_sort_order`),
  ADD KEY `idx_manufacturers_id_zen` (`manufacturers_id`);

--
-- Indexes for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`products_attributes_id`),
  ADD KEY `idx_id_options_id_values_zen` (`products_id`,`options_id`,`options_values_id`),
  ADD KEY `idx_opt_sort_order_zen` (`products_options_sort_order`);

--
-- Indexes for table `products_attributes_download`
--
ALTER TABLE `products_attributes_download`
  ADD PRIMARY KEY (`products_attributes_id`);

--
-- Indexes for table `products_description`
--
ALTER TABLE `products_description`
  ADD PRIMARY KEY (`products_id`,`language_id`),
  ADD KEY `idx_products_name_zen` (`products_name`);

--
-- Indexes for table `products_discount_quantity`
--
ALTER TABLE `products_discount_quantity`
  ADD KEY `idx_id_qty_zen` (`products_id`,`discount_qty`);

--
-- Indexes for table `products_notifications`
--
ALTER TABLE `products_notifications`
  ADD PRIMARY KEY (`products_id`,`customers_id`);

--
-- Indexes for table `products_options`
--
ALTER TABLE `products_options`
  ADD PRIMARY KEY (`products_options_id`,`language_id`),
  ADD KEY `idx_lang_id_zen` (`language_id`),
  ADD KEY `idx_products_options_sort_order_zen` (`products_options_sort_order`),
  ADD KEY `idx_products_options_name_zen` (`products_options_name`);

--
-- Indexes for table `products_options_types`
--
ALTER TABLE `products_options_types`
  ADD PRIMARY KEY (`products_options_types_id`);

--
-- Indexes for table `products_options_values`
--
ALTER TABLE `products_options_values`
  ADD PRIMARY KEY (`products_options_values_id`,`language_id`),
  ADD KEY `idx_products_options_values_name_zen` (`products_options_values_name`),
  ADD KEY `idx_products_options_values_sort_order_zen` (`products_options_values_sort_order`);

--
-- Indexes for table `products_options_values_to_products_options`
--
ALTER TABLE `products_options_values_to_products_options`
  ADD PRIMARY KEY (`products_options_values_to_products_options_id`),
  ADD KEY `idx_products_options_id_zen` (`products_options_id`),
  ADD KEY `idx_products_options_values_id_zen` (`products_options_values_id`);

--
-- Indexes for table `products_to_categories`
--
ALTER TABLE `products_to_categories`
  ADD PRIMARY KEY (`products_id`,`categories_id`),
  ADD KEY `idx_cat_prod_id_zen` (`categories_id`,`products_id`);

--
-- Indexes for table `product_music_extra`
--
ALTER TABLE `product_music_extra`
  ADD PRIMARY KEY (`products_id`),
  ADD KEY `idx_music_genre_id_zen` (`music_genre_id`),
  ADD KEY `idx_artists_id_zen` (`artists_id`),
  ADD KEY `idx_record_company_id_zen` (`record_company_id`);

--
-- Indexes for table `product_types`
--
ALTER TABLE `product_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_type_master_type_zen` (`type_master_type`);

--
-- Indexes for table `product_types_to_category`
--
ALTER TABLE `product_types_to_category`
  ADD KEY `idx_category_id_zen` (`category_id`),
  ADD KEY `idx_product_type_id_zen` (`product_type_id`);

--
-- Indexes for table `product_type_layout`
--
ALTER TABLE `product_type_layout`
  ADD PRIMARY KEY (`configuration_id`),
  ADD UNIQUE KEY `unq_config_key_zen` (`configuration_key`),
  ADD KEY `idx_key_value_zen` (`configuration_key`,`configuration_value`(10)),
  ADD KEY `idx_type_id_sort_order_zen` (`product_type_id`,`sort_order`);

--
-- Indexes for table `project_version`
--
ALTER TABLE `project_version`
  ADD PRIMARY KEY (`project_version_id`),
  ADD UNIQUE KEY `idx_project_version_key_zen` (`project_version_key`);

--
-- Indexes for table `project_version_history`
--
ALTER TABLE `project_version_history`
  ADD PRIMARY KEY (`project_version_id`);

--
-- Indexes for table `query_builder`
--
ALTER TABLE `query_builder`
  ADD PRIMARY KEY (`query_id`),
  ADD UNIQUE KEY `query_name` (`query_name`);

--
-- Indexes for table `record_artists`
--
ALTER TABLE `record_artists`
  ADD PRIMARY KEY (`artists_id`),
  ADD KEY `idx_rec_artists_name_zen` (`artists_name`);

--
-- Indexes for table `record_artists_info`
--
ALTER TABLE `record_artists_info`
  ADD PRIMARY KEY (`artists_id`,`languages_id`);

--
-- Indexes for table `record_company`
--
ALTER TABLE `record_company`
  ADD PRIMARY KEY (`record_company_id`),
  ADD KEY `idx_rec_company_name_zen` (`record_company_name`);

--
-- Indexes for table `record_company_info`
--
ALTER TABLE `record_company_info`
  ADD PRIMARY KEY (`record_company_id`,`languages_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`reviews_id`),
  ADD KEY `idx_products_id_zen` (`products_id`),
  ADD KEY `idx_customers_id_zen` (`customers_id`),
  ADD KEY `idx_status_zen` (`status`),
  ADD KEY `idx_date_added_zen` (`date_added`);

--
-- Indexes for table `reviews_description`
--
ALTER TABLE `reviews_description`
  ADD PRIMARY KEY (`reviews_id`,`languages_id`);

--
-- Indexes for table `salemaker_sales`
--
ALTER TABLE `salemaker_sales`
  ADD PRIMARY KEY (`sale_id`),
  ADD KEY `idx_sale_status_zen` (`sale_status`),
  ADD KEY `idx_sale_date_start_zen` (`sale_date_start`),
  ADD KEY `idx_sale_date_end_zen` (`sale_date_end`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sesskey`);

--
-- Indexes for table `specials`
--
ALTER TABLE `specials`
  ADD PRIMARY KEY (`specials_id`),
  ADD KEY `idx_status_zen` (`status`),
  ADD KEY `idx_products_id_zen` (`products_id`),
  ADD KEY `idx_date_avail_zen` (`specials_date_available`),
  ADD KEY `idx_expires_date_zen` (`expires_date`);

--
-- Indexes for table `tax_class`
--
ALTER TABLE `tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`tax_rates_id`),
  ADD KEY `idx_tax_zone_id_zen` (`tax_zone_id`),
  ADD KEY `idx_tax_class_id_zen` (`tax_class_id`);

--
-- Indexes for table `template_select`
--
ALTER TABLE `template_select`
  ADD PRIMARY KEY (`template_id`),
  ADD KEY `idx_tpl_lang_zen` (`template_language`);

--
-- Indexes for table `upgrade_exceptions`
--
ALTER TABLE `upgrade_exceptions`
  ADD PRIMARY KEY (`upgrade_exception_id`);

--
-- Indexes for table `whos_online`
--
ALTER TABLE `whos_online`
  ADD KEY `idx_ip_address_zen` (`ip_address`),
  ADD KEY `idx_session_id_zen` (`session_id`),
  ADD KEY `idx_customer_id_zen` (`customer_id`),
  ADD KEY `idx_time_entry_zen` (`time_entry`),
  ADD KEY `idx_time_last_click_zen` (`time_last_click`),
  ADD KEY `idx_last_page_url_zen` (`last_page_url`(191));

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`zone_id`),
  ADD KEY `idx_zone_country_id_zen` (`zone_country_id`),
  ADD KEY `idx_zone_code_zen` (`zone_code`);

--
-- Indexes for table `zones_to_geo_zones`
--
ALTER TABLE `zones_to_geo_zones`
  ADD PRIMARY KEY (`association_id`),
  ADD KEY `idx_zones_zen` (`geo_zone_id`,`zone_country_id`,`zone_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address_book`
--
ALTER TABLE `address_book`
  MODIFY `address_book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `address_format`
--
ALTER TABLE `address_format`
  MODIFY `address_format_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_activity_log`
--
ALTER TABLE `admin_activity_log`
  MODIFY `log_id` bigint(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=481;

--
-- AUTO_INCREMENT for table `admin_profiles`
--
ALTER TABLE `admin_profiles`
  MODIFY `profile_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `authorizenet`
--
ALTER TABLE `authorizenet`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `banners_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `banners_history`
--
ALTER TABLE `banners_history`
  MODIFY `banners_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `configuration`
--
ALTER TABLE `configuration`
  MODIFY `configuration_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=587;

--
-- AUTO_INCREMENT for table `configuration_group`
--
ALTER TABLE `configuration_group`
  MODIFY `configuration_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `countries_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon_email_track`
--
ALTER TABLE `coupon_email_track`
  MODIFY `unique_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon_gv_queue`
--
ALTER TABLE `coupon_gv_queue`
  MODIFY `unique_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon_redeem_track`
--
ALTER TABLE `coupon_redeem_track`
  MODIFY `unique_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon_referrers`
--
ALTER TABLE `coupon_referrers`
  MODIFY `referrer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon_restrict`
--
ALTER TABLE `coupon_restrict`
  MODIFY `restrict_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `currencies_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers_basket`
--
ALTER TABLE `customers_basket`
  MODIFY `customers_basket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers_basket_attributes`
--
ALTER TABLE `customers_basket_attributes`
  MODIFY `customers_basket_attributes_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers_to_groups`
--
ALTER TABLE `customers_to_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_groups`
--
ALTER TABLE `customer_groups`
  MODIFY `group_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_archive`
--
ALTER TABLE `email_archive`
  MODIFY `archive_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezpages`
--
ALTER TABLE `ezpages`
  MODIFY `pages_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `featured`
--
ALTER TABLE `featured`
  MODIFY `featured_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `featured_categories`
--
ALTER TABLE `featured_categories`
  MODIFY `featured_categories_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files_uploaded`
--
ALTER TABLE `files_uploaded`
  MODIFY `files_uploaded_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `geo_zones`
--
ALTER TABLE `geo_zones`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `group_pricing`
--
ALTER TABLE `group_pricing`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `languages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `layout_boxes`
--
ALTER TABLE `layout_boxes`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturers_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media_clips`
--
ALTER TABLE `media_clips`
  MODIFY `clip_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media_manager`
--
ALTER TABLE `media_manager`
  MODIFY `media_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media_types`
--
ALTER TABLE `media_types`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `music_genre`
--
ALTER TABLE `music_genre`
  MODIFY `music_genre_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `newsletters_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `orders_products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders_products_attributes`
--
ALTER TABLE `orders_products_attributes`
  MODIFY `orders_products_attributes_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_products_download`
--
ALTER TABLE `orders_products_download`
  MODIFY `orders_products_download_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_status_history`
--
ALTER TABLE `orders_status_history`
  MODIFY `orders_status_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders_total`
--
ALTER TABLE `orders_total`
  MODIFY `orders_total_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `paypal`
--
ALTER TABLE `paypal`
  MODIFY `paypal_ipn_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paypal_payment_status`
--
ALTER TABLE `paypal_payment_status`
  MODIFY `payment_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `paypal_payment_status_history`
--
ALTER TABLE `paypal_payment_status_history`
  MODIFY `payment_status_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paypal_session`
--
ALTER TABLE `paypal_session`
  MODIFY `unique_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paypal_testing`
--
ALTER TABLE `paypal_testing`
  MODIFY `paypal_ipn_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `products_attributes_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products_options_values_to_products_options`
--
ALTER TABLE `products_options_values_to_products_options`
  MODIFY `products_options_values_to_products_options_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_types`
--
ALTER TABLE `product_types`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_type_layout`
--
ALTER TABLE `product_type_layout`
  MODIFY `configuration_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `project_version`
--
ALTER TABLE `project_version`
  MODIFY `project_version_id` tinyint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `project_version_history`
--
ALTER TABLE `project_version_history`
  MODIFY `project_version_id` tinyint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `query_builder`
--
ALTER TABLE `query_builder`
  MODIFY `query_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `record_artists`
--
ALTER TABLE `record_artists`
  MODIFY `artists_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `record_company`
--
ALTER TABLE `record_company`
  MODIFY `record_company_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `reviews_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salemaker_sales`
--
ALTER TABLE `salemaker_sales`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `specials`
--
ALTER TABLE `specials`
  MODIFY `specials_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_class`
--
ALTER TABLE `tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `tax_rates_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `template_select`
--
ALTER TABLE `template_select`
  MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `upgrade_exceptions`
--
ALTER TABLE `upgrade_exceptions`
  MODIFY `upgrade_exception_id` smallint(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;

--
-- AUTO_INCREMENT for table `zones_to_geo_zones`
--
ALTER TABLE `zones_to_geo_zones`
  MODIFY `association_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
