-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2021 at 04:03 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `events_orig`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '<p>The Cloud Based Event Tabulation System is designed and developed specifically to cope up with the pandemic crisis people facing right now. The researchers will make it possible to conduct a contactless event tabulation which can cast votes and scores online</p><ol><li>Combined two systems, an electronic voting system and dynamic tabulation system.</li><li>Built and hosted via a cloud computing platform via the internet, and can be accessed remotely.</li><li>It is more secure, fast, user- friendly, and can produce a reliable and accurate results to prevent human error.</li></ol><p>&nbsp;</p>', '2021-06-13 02:03:49', '2021-06-13 02:03:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `host` varchar(46) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `description`, `subject_id`, `subject_type`, `user_id`, `properties`, `host`, `created_at`, `updated_at`) VALUES
(1, 'audit:created', 1, 'App\\Models\\Homepage#1', 1, '{\"title\":\"This is header 1 of the Landing Page\",\"content\":\"The Content 1 etc., of the header 1 of the Landing Page, The Content 1 etc., of the header 1 of the Landing Page The Content 1 etc., of the header 1 of the Landing Page,\",\"updated_at\":\"2021-06-13 09:45:34\",\"created_at\":\"2021-06-13 09:45:34\",\"id\":1}', '127.0.0.1', '2021-06-13 01:45:34', '2021-06-13 01:45:34'),
(2, 'audit:updated', 1, 'App\\Models\\User#1', 1, '{\"name\":\"Merson Taguiam\",\"updated_at\":\"2021-06-13 10:01:52\",\"id\":1,\"image\":{\"id\":1,\"model_type\":\"App\\\\Models\\\\User\",\"model_id\":1,\"uuid\":\"e15ad4a4-0c79-44e5-af36-c73ceeb52a13\",\"collection_name\":\"image\",\"name\":\"60c5d7756897e_195786314_153448286829604_380592371526862919_n\",\"file_name\":\"60c5d7756897e_195786314_153448286829604_380592371526862919_n.jpg\",\"mime_type\":\"image\\/jpeg\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":37504,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true,\"preview\":true}},\"responsive_images\":[],\"order_column\":1,\"created_at\":\"2021-06-13T10:01:27.000000Z\",\"updated_at\":\"2021-06-13T10:01:29.000000Z\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/1\\/60c5d7756897e_195786314_153448286829604_380592371526862919_n.jpg\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/1\\/conversions\\/60c5d7756897e_195786314_153448286829604_380592371526862919_n-thumb.jpg\",\"preview\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/1\\/conversions\\/60c5d7756897e_195786314_153448286829604_380592371526862919_n-preview.jpg\"},\"media\":[{\"id\":1,\"model_type\":\"App\\\\Models\\\\User\",\"model_id\":1,\"uuid\":\"e15ad4a4-0c79-44e5-af36-c73ceeb52a13\",\"collection_name\":\"image\",\"name\":\"60c5d7756897e_195786314_153448286829604_380592371526862919_n\",\"file_name\":\"60c5d7756897e_195786314_153448286829604_380592371526862919_n.jpg\",\"mime_type\":\"image\\/jpeg\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":37504,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true,\"preview\":true}},\"responsive_images\":[],\"order_column\":1,\"created_at\":\"2021-06-13T10:01:27.000000Z\",\"updated_at\":\"2021-06-13T10:01:29.000000Z\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/1\\/60c5d7756897e_195786314_153448286829604_380592371526862919_n.jpg\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/1\\/conversions\\/60c5d7756897e_195786314_153448286829604_380592371526862919_n-thumb.jpg\",\"preview\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/1\\/conversions\\/60c5d7756897e_195786314_153448286829604_380592371526862919_n-preview.jpg\"}]}', '127.0.0.1', '2021-06-13 02:01:52', '2021-06-13 02:01:52'),
(3, 'audit:created', 2, 'App\\Models\\Homepage#2', 1, '{\"title\":\"This is header 2 of the Landing Page\",\"content\":\"This is the content 2 of the header 2 of the Landing Page, This is the content 2 of the header 2 of the Landing Page This is the content 2 of the header 2 of the Landing Page, This is the content 2 of the header 2 of the Landing Page\",\"updated_at\":\"2021-06-13 10:02:48\",\"created_at\":\"2021-06-13 10:02:48\",\"id\":2}', '127.0.0.1', '2021-06-13 02:02:48', '2021-06-13 02:02:48'),
(4, 'audit:created', 1, 'App\\Models\\About#1', 1, '{\"content\":\"<p>The Cloud Based Event Tabulation System is designed and developed specifically to cope up with the pandemic crisis people facing right now. The researchers will make it possible to conduct a contactless event tabulation which can cast votes and scores online<\\/p><ol><li>Combined two systems, an electronic voting system and dynamic tabulation system.<\\/li><li>Built and hosted via a cloud computing platform via the internet, and can be accessed remotely.<\\/li><li>It is more secure, fast, user- friendly, and can produce a reliable and accurate results to prevent human error.<\\/li><\\/ol><p>&nbsp;<\\/p>\",\"updated_at\":\"2021-06-13 10:03:49\",\"created_at\":\"2021-06-13 10:03:49\",\"id\":1}', '127.0.0.1', '2021-06-13 02:03:49', '2021-06-13 02:03:49'),
(5, 'audit:created', 1, 'App\\Models\\Faq#1', 1, '{\"question\":\"Is our election system secure from cyber-attack?\",\"answer\":\"Yes! Our team raised by security experts, and have done so for years, such as paper-based systems, including voter verifiable paper audit trails; independent testing; and post-election audits; and physical security of tabulation equipment. The Events Tabulation system is secured by highly skilled Office of the Secretary of State IT staff and Security Operations Center, using state of the art equipment and following IT industry best practices. We have embarked on an unprecedented opportunity to work collaboratively with College for Research & Technology to ensure that our Tabulation systems remain secure.\",\"updated_at\":\"2021-06-13 10:04:19\",\"created_at\":\"2021-06-13 10:04:19\",\"id\":1}', '127.0.0.1', '2021-06-13 02:04:19', '2021-06-13 02:04:19'),
(6, 'audit:created', 2, 'App\\Models\\Faq#2', 1, '{\"question\":\"Can the election be rigged?\",\"answer\":\"Before a tabulation system can be used, we require testing at a federally approved independent testing lab. These expert testers include security reviews as a part of their overall testing efforts. Then, systems are tested here at the state level and reviewed by our own voting systems certification board, comprised of technology experts, accessibility experts, and certified county election officials.\",\"updated_at\":\"2021-06-13 10:04:33\",\"created_at\":\"2021-06-13 10:04:33\",\"id\":2}', '127.0.0.1', '2021-06-13 02:04:33', '2021-06-13 02:04:33'),
(7, 'audit:created', 3, 'App\\Models\\Faq#3', 1, '{\"question\":\"Is a voters\\u2019 guide available online? How about PDF of the print version?\",\"answer\":\"Yes, the Events Tabulation System is available online in PDF, Excel or print online. Go to the results page, select your desired Election or Tabulation result, and click on the options above the table.\",\"updated_at\":\"2021-06-13 10:04:45\",\"created_at\":\"2021-06-13 10:04:45\",\"id\":3}', '127.0.0.1', '2021-06-13 02:04:45', '2021-06-13 02:04:45'),
(8, 'audit:created', 1, 'App\\Models\\Service#1', 1, '{\"title\":\"DYNAMIC TABULATION SYSTEM\",\"content\":\"It is the act or process of tabulating and table displaying data in a compact form. A tabulation system for delivery to a medium of data information suitably arranged for tabulation of character series and ruled lines, and a control for controlling the data information arrangement applied to the medium.\",\"updated_at\":\"2021-06-13 10:05:19\",\"created_at\":\"2021-06-13 10:05:19\",\"id\":1}', '127.0.0.1', '2021-06-13 02:05:19', '2021-06-13 02:05:19'),
(9, 'audit:created', 2, 'App\\Models\\Service#2', 1, '{\"title\":\"E-VOTING SYSTEM\",\"content\":\"Electronic voting (also known as e-voting) is voting that uses electronic means to either aid or take care of casting and counting votes.  E-voting may use standalone electronic voting machines or computers connected to the Internet.\",\"updated_at\":\"2021-06-13 10:05:33\",\"created_at\":\"2021-06-13 10:05:33\",\"id\":2}', '127.0.0.1', '2021-06-13 02:05:33', '2021-06-13 02:05:33'),
(10, 'audit:created', 3, 'App\\Models\\Service#3', 1, '{\"title\":\"TEAM SUPPORT\",\"content\":\"Teammate can also create of an Event Tabulation or Election, it can also add criteria, judges, participants in the event, can monitor the actual event tabulation, can also communicate with the service chat .\",\"updated_at\":\"2021-06-13 10:05:44\",\"created_at\":\"2021-06-13 10:05:44\",\"id\":3}', '127.0.0.1', '2021-06-13 02:05:44', '2021-06-13 02:05:44'),
(11, 'audit:created', 1, 'App\\Models\\Price#1', 1, '{\"title\":\"Free\",\"content\":\"<h4><sup>\\u20b1<\\/sup>0<span> \\/ month<\\/span><\\/h4>\\r\\n              <ul>\\r\\n                <li>Aida dere<\\/li>\\r\\n                <li>Nec feugiat nisl<\\/li>\\r\\n                <li>Nulla at volutpat dola<\\/li>\\r\\n                <li class=\\\"na\\\">Pharetra massa<\\/li>\\r\\n                <li class=\\\"na\\\">Massa ultricies mi<\\/li>\\r\\n              <\\/ul>\",\"updated_at\":\"2021-06-13 10:06:21\",\"created_at\":\"2021-06-13 10:06:21\",\"id\":1}', '127.0.0.1', '2021-06-13 02:06:21', '2021-06-13 02:06:21'),
(12, 'audit:created', 2, 'App\\Models\\Price#2', 1, '{\"title\":\"Business\",\"content\":\"<h4><sup>\\u20b1<\\/sup>200<span> \\/ month<\\/span><\\/h4>\\r\\n              <ul>\\r\\n                <li>Aida dere<\\/li>\\r\\n                <li>Nec feugiat nisl<\\/li>\\r\\n                <li>Nulla at volutpat dola<\\/li>\\r\\n                <li>Pharetra massa<\\/li>\\r\\n                <li class=\\\"na\\\">Massa ultricies mi<\\/li>\\r\\n              <\\/ul>\",\"updated_at\":\"2021-06-13 10:06:47\",\"created_at\":\"2021-06-13 10:06:47\",\"id\":2}', '127.0.0.1', '2021-06-13 02:06:47', '2021-06-13 02:06:47'),
(13, 'audit:created', 3, 'App\\Models\\Price#3', 1, '{\"title\":\"Developer\",\"content\":\"<h4><sup>\\u20b1<\\/sup>350<span> \\/ month<\\/span><\\/h4>\\r\\n              <ul>\\r\\n                <li>Aida dere<\\/li>\\r\\n                <li>Nec feugiat nisl<\\/li>\\r\\n                <li>Nulla at volutpat dola<\\/li>\\r\\n                <li>Pharetra massa<\\/li>\\r\\n                <li>Massa ultricies mi<\\/li>\\r\\n              <\\/ul>\",\"updated_at\":\"2021-06-13 10:07:00\",\"created_at\":\"2021-06-13 10:07:00\",\"id\":3}', '127.0.0.1', '2021-06-13 02:07:00', '2021-06-13 02:07:00'),
(14, 'audit:created', 4, 'App\\Models\\Price#4', 1, '{\"title\":\"Ultimate\",\"content\":\"<h4><sup>\\u20b1<\\/sup>500<span> \\/ month<\\/span><\\/h4>\\r\\n              <ul>\\r\\n                <li>Aida dere<\\/li>\\r\\n                <li>Nec feugiat nisl<\\/li>\\r\\n                <li>Nulla at volutpat dola<\\/li>\\r\\n                <li>Pharetra massa<\\/li>\\r\\n                <li>Massa ultricies mi<\\/li>\\r\\n              <\\/ul>\",\"updated_at\":\"2021-06-13 10:07:14\",\"created_at\":\"2021-06-13 10:07:14\",\"id\":4}', '127.0.0.1', '2021-06-13 02:07:14', '2021-06-13 02:07:14'),
(15, 'audit:created', 2, 'App\\Models\\User#2', NULL, '{\"name\":\"Manager poge\",\"email\":\"zedpoge@bambase.com\",\"team_id\":null,\"updated_at\":\"2021-06-13 11:09:30\",\"created_at\":\"2021-06-13 11:09:30\",\"id\":2,\"image\":null,\"media\":[]}', '127.0.0.1', '2021-06-13 03:09:30', '2021-06-13 03:09:30'),
(16, 'audit:updated', 2, 'App\\Models\\User#2', NULL, '{\"name\":\"Manager poge\",\"email\":\"zedpoge@bambase.com\",\"team_id\":null,\"updated_at\":\"2021-06-13 11:09:30\",\"created_at\":\"2021-06-13 11:09:30\",\"id\":2,\"verification_token\":\"1JpLsHUn05PvAK3ElRqnkatmBQHVg42JTrGuY6LsQPNw8YUSX3N9HoxGw3bO3gWx\",\"image\":null,\"media\":[]}', '127.0.0.1', '2021-06-13 03:09:30', '2021-06-13 03:09:30'),
(17, 'audit:created', 1, 'App\\Models\\Team#1', NULL, '{\"name\":\"Zedpoge\",\"updated_at\":\"2021-06-13 11:09:41\",\"created_at\":\"2021-06-13 11:09:41\",\"id\":1}', '127.0.0.1', '2021-06-13 03:09:41', '2021-06-13 03:09:41'),
(18, 'audit:updated', 2, 'App\\Models\\User#2', NULL, '{\"team_id\":1,\"updated_at\":\"2021-06-13 11:09:41\",\"id\":2,\"image\":null,\"media\":[]}', '127.0.0.1', '2021-06-13 03:09:41', '2021-06-13 03:09:41'),
(19, 'audit:updated', 2, 'App\\Models\\User#2', NULL, '{\"verified\":1,\"verified_at\":\"06\\/13\\/2021 11:09:52\",\"verification_token\":null,\"updated_at\":\"2021-06-13 11:09:52\",\"id\":2,\"image\":null,\"media\":[]}', '127.0.0.1', '2021-06-13 03:09:52', '2021-06-13 03:09:52'),
(20, 'audit:updated', 2, 'App\\Models\\User#2', 1, '{\"approved\":\"1\",\"updated_at\":\"2021-06-13 11:10:17\",\"id\":2,\"image\":null,\"media\":[]}', '127.0.0.1', '2021-06-13 03:10:17', '2021-06-13 03:10:17'),
(21, 'audit:created', 1, 'App\\Models\\Organization#1', 2, '{\"status\":\"true\",\"title\":\"CRT-Election-2021\",\"slug\":\"CRT-Election-2021\",\"description\":\"CRT-Election-2021CRT-Election-2021CRT-Election-2021CRT-Election-2021\",\"team_id\":1,\"updated_at\":\"2021-06-13 11:11:31\",\"created_at\":\"2021-06-13 11:11:31\",\"id\":1}', '127.0.0.1', '2021-06-13 03:11:31', '2021-06-13 03:11:31'),
(22, 'audit:created', 2, 'App\\Models\\Organization#2', 2, '{\"status\":\"false\",\"title\":\"CRT-Election-2022\",\"slug\":\"CRT-Election-2022CRT-Election-2022CRT-Election-2022\",\"description\":\"CRT-Election-2022CRT-Election-2022CRT-Election-2022\",\"team_id\":1,\"updated_at\":\"2021-06-13 11:11:42\",\"created_at\":\"2021-06-13 11:11:42\",\"id\":2}', '127.0.0.1', '2021-06-13 03:11:42', '2021-06-13 03:11:42'),
(23, 'audit:created', 1, 'App\\Models\\Position#1', 2, '{\"organization_id\":\"1\",\"vote_allow\":\"1\",\"position\":\"President\",\"description\":null,\"team_id\":1,\"updated_at\":\"2021-06-13 11:12:29\",\"created_at\":\"2021-06-13 11:12:29\",\"id\":1}', '127.0.0.1', '2021-06-13 03:12:29', '2021-06-13 03:12:29'),
(24, 'audit:created', 2, 'App\\Models\\Position#2', 2, '{\"organization_id\":\"1\",\"vote_allow\":\"1\",\"position\":\"V-President\",\"description\":null,\"team_id\":1,\"updated_at\":\"2021-06-13 11:12:41\",\"created_at\":\"2021-06-13 11:12:41\",\"id\":2}', '127.0.0.1', '2021-06-13 03:12:41', '2021-06-13 03:12:41'),
(25, 'audit:created', 3, 'App\\Models\\Position#3', 2, '{\"organization_id\":\"1\",\"vote_allow\":\"1\",\"position\":\"4th Year Representative\",\"description\":null,\"team_id\":1,\"updated_at\":\"2021-06-13 11:12:59\",\"created_at\":\"2021-06-13 11:12:59\",\"id\":3}', '127.0.0.1', '2021-06-13 03:12:59', '2021-06-13 03:12:59'),
(26, 'audit:created', 1, 'App\\Models\\Partylist#1', 2, '{\"organization_id\":\"1\",\"name\":\"Party one 0 one\",\"platform\":\"<blockquote><h2>Header 123&nbsp;Header 123&nbsp;Header 123&nbsp;Header 123&nbsp;<\\/h2><\\/blockquote><ol><li>&nbsp;awer we efasdfawefcergwe ybqery qgw<\\/li><li>&nbsp;awer we efasdfawefcergwe ybqery qgw awer we efasdfawefcergwe ybqery qgw<\\/li><li>&nbsp;awer we efasdfawefcergwe ybqery qgw awer we efasdfawefcergw<\\/li><li>&nbsp;awer we efasdfawefcergwe ybqery qgw awer we efasdfawefcergwe ybqery qgw awer we efasdfawefcergwe ybqery qgw<\\/li><li>&nbsp;awer we efasdfawefcergwe ybqery qgw awer we efasdfawefcergwe ybqery<\\/li><\\/ol>\",\"description\":null,\"team_id\":1,\"updated_at\":\"2021-06-13 11:14:04\",\"created_at\":\"2021-06-13 11:14:04\",\"id\":1}', '127.0.0.1', '2021-06-13 03:14:04', '2021-06-13 03:14:04'),
(27, 'audit:created', 2, 'App\\Models\\Partylist#2', 2, '{\"organization_id\":\"1\",\"name\":\"Party Party\",\"platform\":\"<blockquote><h2>Header 123&nbsp;Header 123&nbsp;Header 123&nbsp;Header 123&nbsp;<\\/h2><\\/blockquote><ol><li>awer we efasdfawefcergwe ybqery qgw<\\/li><li>awer we efasdfawefcergwe ybqery qgw awer we efasdfawefcergwe ybqery qgw<\\/li><li>awer we efasdfawefcergwe ybqery qgw awer we efasdfawefcergw<\\/li><li>awer we efasdfawefcergwe ybqery qgw awer we efasdfawefcergwe ybqery qgw awer we efasdfawefcergwe ybqery qgw<\\/li><li>awer we efasdfawefcergwe ybqery qgw awer we efasdfawefcergwe ybqery<\\/li><\\/ol>\",\"description\":null,\"team_id\":1,\"updated_at\":\"2021-06-13 11:14:18\",\"created_at\":\"2021-06-13 11:14:18\",\"id\":2}', '127.0.0.1', '2021-06-13 03:14:18', '2021-06-13 03:14:18'),
(28, 'audit:created', 1, 'App\\Models\\Candidate#1', 2, '{\"status\":\"true\",\"organization_id\":\"1\",\"partylist_id\":\"1\",\"position_id\":\"1\",\"name\":\"Candidate 1 as president\",\"address\":null,\"gender\":\"Male\",\"email\":null,\"contact\":null,\"description\":null,\"team_id\":1,\"updated_at\":\"2021-06-13 11:16:37\",\"created_at\":\"2021-06-13 11:16:37\",\"id\":1,\"image\":null,\"media\":[]}', '127.0.0.1', '2021-06-13 03:16:37', '2021-06-13 03:16:37'),
(29, 'audit:created', 2, 'App\\Models\\Candidate#2', 2, '{\"status\":\"true\",\"organization_id\":\"1\",\"partylist_id\":\"1\",\"position_id\":\"1\",\"name\":\"Candidate 2 as president\",\"address\":null,\"gender\":\"Male\",\"email\":null,\"contact\":null,\"description\":null,\"team_id\":1,\"updated_at\":\"2021-06-13 11:17:24\",\"created_at\":\"2021-06-13 11:17:24\",\"id\":2,\"image\":null,\"media\":[]}', '127.0.0.1', '2021-06-13 03:17:24', '2021-06-13 03:17:24'),
(30, 'audit:created', 3, 'App\\Models\\Candidate#3', 2, '{\"status\":\"false\",\"organization_id\":\"1\",\"partylist_id\":\"2\",\"position_id\":\"2\",\"name\":\"Ulla Nunez\",\"address\":\"Rerum dolores dolor\",\"gender\":\"Female\",\"email\":\"sigigyx@mailinator.com\",\"contact\":\"Est dolore rerum to\",\"description\":\"Consequat Perspicia\",\"team_id\":1,\"updated_at\":\"2021-06-13 11:18:08\",\"created_at\":\"2021-06-13 11:18:08\",\"id\":3,\"image\":null,\"media\":[]}', '127.0.0.1', '2021-06-13 03:18:08', '2021-06-13 03:18:08'),
(31, 'audit:created', 4, 'App\\Models\\Candidate#4', 2, '{\"status\":\"true\",\"organization_id\":\"1\",\"partylist_id\":\"1\",\"position_id\":\"2\",\"name\":\"Robert Perkins\",\"address\":\"Quia iusto voluptas\",\"gender\":\"Female\",\"email\":\"gulezyne@mailinator.com\",\"contact\":\"Voluptatibus eos fac\",\"description\":\"Ullamco ab asperiore\",\"team_id\":1,\"updated_at\":\"2021-06-13 11:18:34\",\"created_at\":\"2021-06-13 11:18:34\",\"id\":4,\"image\":null,\"media\":[]}', '127.0.0.1', '2021-06-13 03:18:34', '2021-06-13 03:18:34'),
(32, 'audit:updated', 3, 'App\\Models\\Candidate#3', 2, '{\"status\":\"true\",\"updated_at\":\"2021-06-13 11:18:46\",\"id\":3,\"image\":{\"id\":4,\"model_type\":\"App\\\\Models\\\\Candidate\",\"model_id\":3,\"uuid\":\"702a0980-bccf-47d2-942a-adead7e1d0f7\",\"collection_name\":\"image\",\"name\":\"60c5e96d65529_Tulips\",\"file_name\":\"60c5e96d65529_Tulips.jpg\",\"mime_type\":\"image\\/jpeg\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":620888,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true,\"preview\":true}},\"responsive_images\":[],\"order_column\":4,\"created_at\":\"2021-06-13T11:18:08.000000Z\",\"updated_at\":\"2021-06-13T11:18:09.000000Z\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/4\\/60c5e96d65529_Tulips.jpg\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/4\\/conversions\\/60c5e96d65529_Tulips-thumb.jpg\",\"preview\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/4\\/conversions\\/60c5e96d65529_Tulips-preview.jpg\"},\"media\":[{\"id\":4,\"model_type\":\"App\\\\Models\\\\Candidate\",\"model_id\":3,\"uuid\":\"702a0980-bccf-47d2-942a-adead7e1d0f7\",\"collection_name\":\"image\",\"name\":\"60c5e96d65529_Tulips\",\"file_name\":\"60c5e96d65529_Tulips.jpg\",\"mime_type\":\"image\\/jpeg\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":620888,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true,\"preview\":true}},\"responsive_images\":[],\"order_column\":4,\"created_at\":\"2021-06-13T11:18:08.000000Z\",\"updated_at\":\"2021-06-13T11:18:09.000000Z\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/4\\/60c5e96d65529_Tulips.jpg\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/4\\/conversions\\/60c5e96d65529_Tulips-thumb.jpg\",\"preview\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/4\\/conversions\\/60c5e96d65529_Tulips-preview.jpg\"}]}', '127.0.0.1', '2021-06-13 03:18:46', '2021-06-13 03:18:46'),
(33, 'audit:created', 5, 'App\\Models\\Candidate#5', 2, '{\"status\":\"true\",\"organization_id\":\"1\",\"partylist_id\":\"2\",\"position_id\":\"3\",\"name\":\"Mollie Burke\",\"address\":\"Nesciunt sed qui pe\",\"gender\":\"Female\",\"email\":\"ribivi@mailinator.com\",\"contact\":\"Consequatur porro e\",\"description\":\"Assumenda atque eius\",\"team_id\":1,\"updated_at\":\"2021-06-13 11:19:15\",\"created_at\":\"2021-06-13 11:19:15\",\"id\":5,\"image\":null,\"media\":[]}', '127.0.0.1', '2021-06-13 03:19:15', '2021-06-13 03:19:15'),
(34, 'audit:updated', 3, 'App\\Models\\Position#3', 2, '{\"vote_allow\":\"2\",\"updated_at\":\"2021-06-13 11:19:32\",\"id\":3}', '127.0.0.1', '2021-06-13 03:19:32', '2021-06-13 03:19:32'),
(35, 'audit:created', 6, 'App\\Models\\Candidate#6', 2, '{\"status\":\"true\",\"organization_id\":\"1\",\"partylist_id\":\"1\",\"position_id\":\"3\",\"name\":\"Amity Simmons\",\"address\":\"Itaque cum sunt comm\",\"gender\":\"Female\",\"email\":\"cyzacyb@mailinator.com\",\"contact\":\"Do eaque sint culpa\",\"description\":\"Sint quis rerum sit\",\"team_id\":1,\"updated_at\":\"2021-06-13 11:20:08\",\"created_at\":\"2021-06-13 11:20:08\",\"id\":6,\"image\":null,\"media\":[]}', '127.0.0.1', '2021-06-13 03:20:08', '2021-06-13 03:20:08'),
(36, 'audit:created', 7, 'App\\Models\\Candidate#7', 2, '{\"status\":\"false\",\"organization_id\":\"1\",\"partylist_id\":\"1\",\"position_id\":\"3\",\"name\":\"Ursula Tran\",\"address\":\"Accusamus commodi do\",\"gender\":\"Male\",\"email\":\"lokoxyzafe@mailinator.com\",\"contact\":\"Esse voluptatem Ex\",\"description\":\"Adipisci non eos qu\",\"team_id\":1,\"updated_at\":\"2021-06-13 11:20:27\",\"created_at\":\"2021-06-13 11:20:27\",\"id\":7,\"image\":null,\"media\":[]}', '127.0.0.1', '2021-06-13 03:20:28', '2021-06-13 03:20:28'),
(37, 'audit:created', 8, 'App\\Models\\Candidate#8', 2, '{\"status\":\"true\",\"organization_id\":\"1\",\"partylist_id\":\"1\",\"position_id\":\"3\",\"name\":\"Kylie Holloway\",\"address\":\"Consequuntur quia ma\",\"gender\":\"Female\",\"email\":\"jaja@mailinator.com\",\"contact\":\"Excepturi quas proid\",\"description\":\"In dicta a maiores i\",\"team_id\":1,\"updated_at\":\"2021-06-13 11:21:04\",\"created_at\":\"2021-06-13 11:21:04\",\"id\":8,\"image\":null,\"media\":[]}', '127.0.0.1', '2021-06-13 03:21:04', '2021-06-13 03:21:04'),
(38, 'audit:created', 1, 'App\\Models\\Voter#1', 2, '{\"status\":\"true\",\"organization_id\":\"1\",\"votersid\":\"GPRNSGF19AHV\",\"name\":\"Basil Levine\",\"address\":\"Totam deserunt qui v\",\"gender\":\"Male\",\"age\":\"58\",\"email\":\"piwukiqamu@mailinator.com\",\"contact\":\"Sint repudiandae ea\",\"description\":\"In obcaecati mollit\",\"team_id\":1,\"updated_at\":\"2021-06-13 11:21:55\",\"created_at\":\"2021-06-13 11:21:55\",\"id\":1,\"image\":null,\"media\":[]}', '127.0.0.1', '2021-06-13 03:21:55', '2021-06-13 03:21:55'),
(39, 'audit:created', 2, 'App\\Models\\Voter#2', 2, '{\"status\":\"false\",\"organization_id\":\"1\",\"votersid\":\"OXPAZ7TYQ82B\",\"name\":\"Ira Strickland\",\"address\":\"Recusandae Sint qui\",\"gender\":\"Male\",\"age\":\"13\",\"email\":\"tokohu@mailinator.com\",\"contact\":\"Vel eligendi dolorem\",\"description\":\"Consequatur Obcaeca\",\"team_id\":1,\"updated_at\":\"2021-06-13 11:22:07\",\"created_at\":\"2021-06-13 11:22:07\",\"id\":2,\"image\":null,\"media\":[]}', '127.0.0.1', '2021-06-13 03:22:07', '2021-06-13 03:22:07'),
(40, 'audit:updated', 2, 'App\\Models\\Organization#2', 2, '{\"slug\":\"CRT-Election-2022\",\"updated_at\":\"2021-06-13 11:22:54\",\"id\":2}', '127.0.0.1', '2021-06-13 03:22:54', '2021-06-13 03:22:54'),
(41, 'audit:updated', 1, 'App\\Models\\Voter#1', 2, '{\"status\":\"false\",\"updated_at\":\"2021-06-13 14:36:36\",\"id\":1,\"image\":null,\"media\":[]}', '127.0.0.1', '2021-06-13 06:36:36', '2021-06-13 06:36:36'),
(42, 'audit:created', 3, 'App\\Models\\User#3', 1, '{\"name\":\"Manager 2 poge 2\",\"email\":\"manager2@manager2.com\",\"approved\":\"1\",\"team_id\":\"1\",\"updated_at\":\"2021-06-14 03:38:43\",\"created_at\":\"2021-06-14 03:38:43\",\"id\":3,\"image\":null,\"media\":[]}', '127.0.0.1', '2021-06-13 19:38:43', '2021-06-13 19:38:43'),
(43, 'audit:updated', 3, 'App\\Models\\User#3', 1, '{\"name\":\"Manager 2 poge 2\",\"email\":\"manager2@manager2.com\",\"approved\":\"1\",\"team_id\":\"1\",\"updated_at\":\"2021-06-14 03:38:43\",\"created_at\":\"2021-06-14 03:38:43\",\"id\":3,\"verified\":1,\"verified_at\":\"06\\/14\\/2021 03:38:43\",\"image\":null,\"media\":[]}', '127.0.0.1', '2021-06-13 19:38:43', '2021-06-13 19:38:43'),
(44, 'audit:created', 2, 'App\\Models\\Team#2', 1, '{\"name\":\"z2\",\"updated_at\":\"2021-06-14 03:38:51\",\"created_at\":\"2021-06-14 03:38:51\",\"id\":2}', '127.0.0.1', '2021-06-13 19:38:51', '2021-06-13 19:38:51'),
(45, 'audit:created', 3, 'App\\Models\\Voter#3', 1, '{\"status\":\"false\",\"organization_id\":\"1\",\"votersid\":\"PHWJJL8G23IB\",\"name\":\"Florence Baker\",\"address\":\"Suscipit ut asperior\",\"gender\":\"Male\",\"age\":\"50\",\"email\":\"jume@mailinator.com\",\"contact\":\"Eaque et tempor nisi\",\"description\":\"Est et do ullamco v\",\"updated_at\":\"2021-06-14 18:17:14\",\"created_at\":\"2021-06-14 18:17:14\",\"id\":3,\"image\":null,\"media\":[]}', '127.0.0.1', '2021-06-14 10:17:14', '2021-06-14 10:17:14'),
(46, 'audit:created', 1, 'App\\Models\\Title#1', 1, '{\"status_2\":\"true\",\"title\":\"Tabulation System 101\",\"slug\":\"tabulation-2021\",\"location\":null,\"date\":null,\"score_min\":\"1\",\"score_max\":\"10\",\"basetype\":\"single\",\"description\":null,\"updated_at\":\"2021-06-15 14:22:41\",\"created_at\":\"2021-06-15 14:22:41\",\"id\":1}', '127.0.0.1', '2021-06-15 06:22:42', '2021-06-15 06:22:42'),
(47, 'audit:created', 3, 'App\\Models\\Organization#3', 2, '{\"status\":\"true\",\"title\":\"ELECTION 20202021\",\"slug\":\"ELECTION-20202021\",\"description\":\"ELECTION-20202021\",\"team_id\":1,\"updated_at\":\"2021-06-15 16:44:21\",\"created_at\":\"2021-06-15 16:44:21\",\"id\":3}', '127.0.0.1', '2021-06-15 08:44:21', '2021-06-15 08:44:21'),
(48, 'audit:created', 4, 'App\\Models\\User#4', NULL, '{\"name\":\"Yuri Jensen\",\"email\":\"nozulan@mailinator.com\",\"team_id\":null,\"updated_at\":\"2021-06-15 16:45:21\",\"created_at\":\"2021-06-15 16:45:21\",\"id\":4,\"image\":null,\"media\":[]}', '127.0.0.1', '2021-06-15 08:45:21', '2021-06-15 08:45:21'),
(49, 'audit:updated', 4, 'App\\Models\\User#4', NULL, '{\"name\":\"Yuri Jensen\",\"email\":\"nozulan@mailinator.com\",\"team_id\":null,\"updated_at\":\"2021-06-15 16:45:21\",\"created_at\":\"2021-06-15 16:45:21\",\"id\":4,\"verification_token\":\"zpBNVNfsLbPiFw7BtmPbSgZnWsg3dbDBeB1rl1D6JiVqsYPJr2tBk9tRpPY8gUL9\",\"image\":null,\"media\":[]}', '127.0.0.1', '2021-06-15 08:45:22', '2021-06-15 08:45:22'),
(50, 'audit:created', 3, 'App\\Models\\Team#3', NULL, '{\"name\":\"Ignatius Love\",\"updated_at\":\"2021-06-15 16:45:28\",\"created_at\":\"2021-06-15 16:45:28\",\"id\":3}', '127.0.0.1', '2021-06-15 08:45:28', '2021-06-15 08:45:28'),
(51, 'audit:updated', 4, 'App\\Models\\User#4', NULL, '{\"team_id\":3,\"updated_at\":\"2021-06-15 16:45:28\",\"id\":4,\"image\":null,\"media\":[]}', '127.0.0.1', '2021-06-15 08:45:29', '2021-06-15 08:45:29'),
(52, 'audit:created', 4, 'App\\Models\\Organization#4', 1, '{\"status\":\"true\",\"title\":\"testingtestingtesting\",\"slug\":\"testingtestingtesting\",\"description\":\"testingtestingtesting\",\"updated_at\":\"2021-06-15 16:46:37\",\"created_at\":\"2021-06-15 16:46:37\",\"id\":4}', '127.0.0.1', '2021-06-15 08:46:37', '2021-06-15 08:46:37'),
(53, 'audit:created', 1, 'App\\Models\\Category#1', 1, '{\"status\":\"true\",\"title_id\":\"1\",\"name\":\"Category 1\",\"percentage\":\"100\",\"partipants\":null,\"description\":null,\"updated_at\":\"2021-06-16 01:59:53\",\"created_at\":\"2021-06-16 01:59:53\",\"id\":1}', '127.0.0.1', '2021-06-15 17:59:53', '2021-06-15 17:59:53'),
(54, 'audit:created', 2, 'App\\Models\\Category#2', 1, '{\"status\":\"true\",\"title_id\":\"1\",\"name\":\"Elimination Round\",\"percentage\":\"100\",\"partipants\":\"10\",\"description\":null,\"updated_at\":\"2021-06-16 02:00:21\",\"created_at\":\"2021-06-16 02:00:21\",\"id\":2}', '127.0.0.1', '2021-06-15 18:00:21', '2021-06-15 18:00:21'),
(55, 'audit:updated', 1, 'App\\Models\\Category#1', 1, '{\"status\":\"false\",\"updated_at\":\"2021-06-16 02:17:23\",\"id\":1}', '127.0.0.1', '2021-06-15 18:17:23', '2021-06-15 18:17:23'),
(56, 'audit:updated', 2, 'App\\Models\\Category#2', 1, '{\"status\":\"false\",\"updated_at\":\"2021-06-16 02:17:31\",\"id\":2}', '127.0.0.1', '2021-06-15 18:17:31', '2021-06-15 18:17:31'),
(57, 'audit:created', 1, 'App\\Models\\Criterion#1', 1, '{\"status\":\"true\",\"title_id\":\"1\",\"category_id\":\"1\",\"name\":\"Hermione Smith\",\"percentage\":\"50\",\"description\":\"Neque odio expedita\",\"updated_at\":\"2021-06-16 03:02:22\",\"created_at\":\"2021-06-16 03:02:22\",\"id\":1}', '127.0.0.1', '2021-06-15 19:02:22', '2021-06-15 19:02:22'),
(58, 'audit:created', 2, 'App\\Models\\Criterion#2', 1, '{\"status\":\"true\",\"title_id\":\"1\",\"category_id\":\"1\",\"name\":\"Ulla Love\",\"percentage\":\"50\",\"description\":\"In error a elit qui\",\"updated_at\":\"2021-06-16 03:02:44\",\"created_at\":\"2021-06-16 03:02:44\",\"id\":2}', '127.0.0.1', '2021-06-15 19:02:44', '2021-06-15 19:02:44'),
(59, 'audit:created', 1, 'App\\Models\\Judge#1', 1, '{\"status\":\"false\",\"title_id\":\"1\",\"name\":\"Malik Bright\",\"address\":\"Consequuntur volupta\",\"gender\":\"Female\",\"age\":\"72\",\"email\":\"jetisaj@mailinator.com\",\"username\":\"gexigaby\",\"description\":\"Praesentium in animi\",\"updated_at\":\"2021-06-16 03:13:12\",\"created_at\":\"2021-06-16 03:13:12\",\"id\":1,\"image\":null,\"media\":[]}', '127.0.0.1', '2021-06-15 19:13:12', '2021-06-15 19:13:12'),
(60, 'audit:created', 5, 'App\\Models\\User#5', 1, '{\"name\":\"Clark Frye\",\"email\":\"mepelugex@mailinator.com\",\"approved\":\"1\",\"team_id\":\"2\",\"updated_at\":\"2021-06-16 03:20:02\",\"created_at\":\"2021-06-16 03:20:02\",\"id\":5,\"image\":null,\"media\":[]}', '127.0.0.1', '2021-06-15 19:20:02', '2021-06-15 19:20:02'),
(61, 'audit:updated', 5, 'App\\Models\\User#5', 1, '{\"name\":\"Clark Frye\",\"email\":\"mepelugex@mailinator.com\",\"approved\":\"1\",\"team_id\":\"2\",\"updated_at\":\"2021-06-16 03:20:02\",\"created_at\":\"2021-06-16 03:20:02\",\"id\":5,\"verified\":1,\"verified_at\":\"06\\/16\\/2021 03:20:02\",\"image\":null,\"media\":[]}', '127.0.0.1', '2021-06-15 19:20:02', '2021-06-15 19:20:02'),
(62, 'audit:created', 2, 'App\\Models\\Judge#2', 1, '{\"status\":\"false\",\"title_id\":\"1\",\"name\":\"Cora Small\",\"address\":\"Facere voluptatibus\",\"gender\":\"Female\",\"age\":\"7\",\"email\":\"regowamyh@mailinator.com\",\"username\":\"nubipogaku\",\"description\":\"Rem molestiae nihil\",\"updated_at\":\"2021-06-16 03:35:41\",\"created_at\":\"2021-06-16 03:35:41\",\"id\":2,\"image\":null,\"media\":[]}', '127.0.0.1', '2021-06-15 19:35:41', '2021-06-15 19:35:41'),
(63, 'audit:created', 1, 'App\\Models\\Participant#1', 1, '{\"status\":\"false\",\"title_id\":\"1\",\"number\":\"1\",\"type\":\"3\",\"name\":\"Ginger Hamilton\",\"description\":\"Voluptatem Modi dol\",\"updated_at\":\"2021-06-16 04:04:47\",\"created_at\":\"2021-06-16 04:04:47\",\"id\":1,\"image\":[],\"media\":[]}', '127.0.0.1', '2021-06-15 20:04:48', '2021-06-15 20:04:48'),
(64, 'audit:updated', 1, 'App\\Models\\Criterion#1', 1, '{\"name\":\"Criteria 1\",\"updated_at\":\"2021-06-16 08:43:59\",\"id\":1}', '127.0.0.1', '2021-06-16 00:43:59', '2021-06-16 00:43:59'),
(65, 'audit:updated', 2, 'App\\Models\\Criterion#2', 1, '{\"name\":\"Criteria 2\",\"updated_at\":\"2021-06-16 08:44:17\",\"id\":2}', '127.0.0.1', '2021-06-16 00:44:17', '2021-06-16 00:44:17'),
(66, 'audit:updated', 2, 'App\\Models\\Judge#2', 1, '{\"username\":\"judge_1\",\"updated_at\":\"2021-06-16 09:27:42\",\"id\":2,\"image\":null,\"media\":[]}', '127.0.0.1', '2021-06-16 01:27:42', '2021-06-16 01:27:42'),
(67, 'audit:updated', 1, 'App\\Models\\Judge#1', 1, '{\"username\":\"judge_2\",\"updated_at\":\"2021-06-16 09:27:59\",\"id\":1,\"image\":{\"id\":10,\"model_type\":\"App\\\\Models\\\\Judge\",\"model_id\":1,\"uuid\":\"4d8dffc4-a7d6-4ecb-9e32-3b677d131632\",\"collection_name\":\"image\",\"name\":\"60c975d498a28_Koala\",\"file_name\":\"60c975d498a28_Koala.jpg\",\"mime_type\":\"image\\/jpeg\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":780831,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true,\"preview\":true}},\"responsive_images\":[],\"order_column\":10,\"created_at\":\"2021-06-16T03:53:58.000000Z\",\"updated_at\":\"2021-06-16T03:54:00.000000Z\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/10\\/60c975d498a28_Koala.jpg\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/10\\/conversions\\/60c975d498a28_Koala-thumb.jpg\",\"preview\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/10\\/conversions\\/60c975d498a28_Koala-preview.jpg\"},\"media\":[{\"id\":10,\"model_type\":\"App\\\\Models\\\\Judge\",\"model_id\":1,\"uuid\":\"4d8dffc4-a7d6-4ecb-9e32-3b677d131632\",\"collection_name\":\"image\",\"name\":\"60c975d498a28_Koala\",\"file_name\":\"60c975d498a28_Koala.jpg\",\"mime_type\":\"image\\/jpeg\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":780831,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true,\"preview\":true}},\"responsive_images\":[],\"order_column\":10,\"created_at\":\"2021-06-16T03:53:58.000000Z\",\"updated_at\":\"2021-06-16T03:54:00.000000Z\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/10\\/60c975d498a28_Koala.jpg\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/10\\/conversions\\/60c975d498a28_Koala-thumb.jpg\",\"preview\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/10\\/conversions\\/60c975d498a28_Koala-preview.jpg\"}]}', '127.0.0.1', '2021-06-16 01:27:59', '2021-06-16 01:27:59'),
(68, 'audit:created', 3, 'App\\Models\\Judge#3', 1, '{\"status\":\"true\",\"title_id\":\"1\",\"name\":\"Galena Ortega\",\"address\":\"Veniam incidunt am\",\"gender\":\"Female\",\"age\":\"81\",\"email\":\"harexylat@mailinator.com\",\"username\":\"judge_1\",\"description\":\"Ea non dolores sequi\",\"updated_at\":\"2021-06-16 09:28:38\",\"created_at\":\"2021-06-16 09:28:38\",\"id\":3,\"image\":null,\"media\":[]}', '127.0.0.1', '2021-06-16 01:28:38', '2021-06-16 01:28:38'),
(69, 'audit:deleted', 3, 'App\\Models\\Judge#3', 1, '{\"id\":3,\"status\":\"true\",\"name\":\"Galena Ortega\",\"address\":\"Veniam incidunt am\",\"gender\":\"Female\",\"age\":81,\"email\":\"harexylat@mailinator.com\",\"username\":\"judge_1\",\"description\":\"Ea non dolores sequi\",\"created_at\":\"2021-06-16 09:28:38\",\"updated_at\":\"2021-06-16 09:52:54\",\"deleted_at\":\"2021-06-16 09:52:54\",\"title_id\":1,\"team_id\":null,\"image\":null,\"media\":[]}', '127.0.0.1', '2021-06-16 01:52:54', '2021-06-16 01:52:54'),
(70, 'audit:created', 4, 'App\\Models\\Judge#4', 1, '{\"status\":\"false\",\"title_id\":\"1\",\"name\":\"Deacon Jacobs\",\"address\":\"Incididunt aspernatu\",\"gender\":\"Male\",\"age\":\"75\",\"email\":\"sifu@mailinator.com\",\"username\":\"judge_1\",\"description\":\"Enim sed dolor conse\",\"updated_at\":\"2021-06-16 09:54:44\",\"created_at\":\"2021-06-16 09:54:44\",\"id\":4,\"image\":null,\"media\":[]}', '127.0.0.1', '2021-06-16 01:54:44', '2021-06-16 01:54:44'),
(71, 'audit:created', 2, 'App\\Models\\Title#2', 1, '{\"status_2\":\"true\",\"title\":\"TABULATION SYSTEM\",\"slug\":\"TABULATION-SYSTEM\",\"location\":null,\"date\":null,\"score_min\":\"1\",\"score_max\":\"100\",\"basetype\":\"single\",\"description\":null,\"updated_at\":\"2021-06-16 11:52:34\",\"created_at\":\"2021-06-16 11:52:34\",\"id\":2}', '127.0.0.1', '2021-06-16 03:52:34', '2021-06-16 03:52:34'),
(72, 'audit:created', 5, 'App\\Models\\Judge#5', 1, '{\"status\":\"true\",\"title_id\":\"2\",\"name\":\"Martin Barry\",\"address\":\"Perspiciatis tempor\",\"gender\":\"Male\",\"age\":\"55\",\"email\":\"xycisucujo@mailinator.com\",\"username\":\"judge_1\",\"description\":\"Voluptatibus ullamco\",\"updated_at\":\"2021-06-16 11:53:49\",\"created_at\":\"2021-06-16 11:53:49\",\"id\":5,\"image\":null,\"media\":[]}', '127.0.0.1', '2021-06-16 03:53:49', '2021-06-16 03:53:49'),
(73, 'audit:deleted', 2, 'App\\Models\\Judge#2', 1, '{\"id\":2,\"status\":\"false\",\"name\":\"Cora Small\",\"address\":\"Facere voluptatibus\",\"gender\":\"Female\",\"age\":7,\"email\":\"regowamyh@mailinator.com\",\"username\":\"judge_1\",\"description\":\"Rem molestiae nihil\",\"created_at\":\"2021-06-16 03:35:41\",\"updated_at\":\"2021-06-16 11:54:01\",\"deleted_at\":\"2021-06-16 11:54:01\",\"title_id\":1,\"team_id\":null,\"image\":null,\"media\":[]}', '127.0.0.1', '2021-06-16 03:54:01', '2021-06-16 03:54:01'),
(74, 'audit:updated', 4, 'App\\Models\\Judge#4', 1, '{\"password\":\"$2y$10$nKfw0SXCizmq7caMnDE3POU4alCkT.ljJD0gb1SalNyOk9LYo6YMq\",\"updated_at\":\"2021-06-16 12:07:45\",\"id\":4,\"image\":null,\"media\":[]}', '127.0.0.1', '2021-06-16 04:07:45', '2021-06-16 04:07:45'),
(75, 'audit:updated', 1, 'App\\Models\\Judge#1', 1, '{\"password\":\"$2y$10$x\\/jycn1OGtVGuGvAUWJK7.pVEdlMDjkJ.OtuaNnpIDsBabu1NnNXO\",\"updated_at\":\"2021-06-16 12:18:22\",\"id\":1,\"image\":{\"id\":10,\"model_type\":\"App\\\\Models\\\\Judge\",\"model_id\":1,\"uuid\":\"4d8dffc4-a7d6-4ecb-9e32-3b677d131632\",\"collection_name\":\"image\",\"name\":\"60c975d498a28_Koala\",\"file_name\":\"60c975d498a28_Koala.jpg\",\"mime_type\":\"image\\/jpeg\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":780831,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true,\"preview\":true}},\"responsive_images\":[],\"order_column\":10,\"created_at\":\"2021-06-16T03:53:58.000000Z\",\"updated_at\":\"2021-06-16T03:54:00.000000Z\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/10\\/60c975d498a28_Koala.jpg\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/10\\/conversions\\/60c975d498a28_Koala-thumb.jpg\",\"preview\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/10\\/conversions\\/60c975d498a28_Koala-preview.jpg\"},\"media\":[{\"id\":10,\"model_type\":\"App\\\\Models\\\\Judge\",\"model_id\":1,\"uuid\":\"4d8dffc4-a7d6-4ecb-9e32-3b677d131632\",\"collection_name\":\"image\",\"name\":\"60c975d498a28_Koala\",\"file_name\":\"60c975d498a28_Koala.jpg\",\"mime_type\":\"image\\/jpeg\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":780831,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true,\"preview\":true}},\"responsive_images\":[],\"order_column\":10,\"created_at\":\"2021-06-16T03:53:58.000000Z\",\"updated_at\":\"2021-06-16T03:54:00.000000Z\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/10\\/60c975d498a28_Koala.jpg\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/10\\/conversions\\/60c975d498a28_Koala-thumb.jpg\",\"preview\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/10\\/conversions\\/60c975d498a28_Koala-preview.jpg\"}]}', '127.0.0.1', '2021-06-16 04:18:22', '2021-06-16 04:18:22'),
(76, 'audit:updated', 4, 'App\\Models\\Judge#4', 1, '{\"status\":\"true\",\"updated_at\":\"2021-06-16 12:20:57\",\"id\":4,\"image\":null,\"media\":[]}', '127.0.0.1', '2021-06-16 04:20:57', '2021-06-16 04:20:57'),
(77, 'audit:updated', 4, 'App\\Models\\Judge#4', 1, '{\"password\":\"$2y$10$vykXZCH\\/DDyh9yG\\/4pp9heRHlxbzce.s6ocMfo54Fy5pcDafoho0a\",\"updated_at\":\"2021-06-16 12:21:35\",\"id\":4,\"image\":null,\"media\":[]}', '127.0.0.1', '2021-06-16 04:21:35', '2021-06-16 04:21:35'),
(78, 'audit:updated', 4, 'App\\Models\\Judge#4', 1, '{\"password\":\"$2y$10$U8h.Gfa\\/IiKU5LaGIS56SeWQeZ9akltiF.POkMQC1fMwOmKZ1CTJy\",\"updated_at\":\"2021-06-16 12:21:59\",\"id\":4,\"image\":null,\"media\":[]}', '127.0.0.1', '2021-06-16 04:21:59', '2021-06-16 04:21:59'),
(79, 'audit:created', 3, 'App\\Models\\Criterion#3', 1, '{\"status\":\"false\",\"title_id\":\"1\",\"category_id\":\"2\",\"name\":\"Criteria Elimination round 1\",\"percentage\":\"30\",\"description\":\"Labore enim minima n\",\"updated_at\":\"2021-06-16 16:36:47\",\"created_at\":\"2021-06-16 16:36:47\",\"id\":3}', '127.0.0.1', '2021-06-16 08:36:47', '2021-06-16 08:36:47'),
(80, 'audit:created', 4, 'App\\Models\\Criterion#4', 1, '{\"status\":\"true\",\"title_id\":\"1\",\"category_id\":\"2\",\"name\":\"Criteria Elimination round 2\",\"percentage\":\"30\",\"description\":\"Enim et rerum eum it\",\"updated_at\":\"2021-06-16 16:37:08\",\"created_at\":\"2021-06-16 16:37:08\",\"id\":4}', '127.0.0.1', '2021-06-16 08:37:08', '2021-06-16 08:37:08'),
(81, 'audit:created', 5, 'App\\Models\\Criterion#5', 1, '{\"status\":\"false\",\"title_id\":\"1\",\"category_id\":\"2\",\"name\":\"Criteria Elimination round 3\",\"percentage\":\"40\",\"description\":null,\"updated_at\":\"2021-06-16 16:37:35\",\"created_at\":\"2021-06-16 16:37:35\",\"id\":5}', '127.0.0.1', '2021-06-16 08:37:35', '2021-06-16 08:37:35'),
(82, 'audit:updated', 2, 'App\\Models\\Criterion#2', 1, '{\"percentage\":\"20\",\"updated_at\":\"2021-06-17 07:40:17\",\"id\":2}', '127.0.0.1', '2021-06-16 23:40:17', '2021-06-16 23:40:17'),
(83, 'audit:updated', 1, 'App\\Models\\Criterion#1', 1, '{\"percentage\":\"20\",\"updated_at\":\"2021-06-17 07:40:29\",\"id\":1}', '127.0.0.1', '2021-06-16 23:40:29', '2021-06-16 23:40:29'),
(84, 'audit:created', 6, 'App\\Models\\Criterion#6', 1, '{\"status\":\"false\",\"title_id\":\"1\",\"category_id\":\"1\",\"name\":\"Criteria 3 Criteria 3\",\"percentage\":\"20\",\"description\":null,\"updated_at\":\"2021-06-17 07:40:52\",\"created_at\":\"2021-06-17 07:40:52\",\"id\":6}', '127.0.0.1', '2021-06-16 23:40:52', '2021-06-16 23:40:52'),
(85, 'audit:created', 7, 'App\\Models\\Criterion#7', 1, '{\"status\":\"false\",\"title_id\":\"1\",\"category_id\":\"1\",\"name\":\"Criteria 4 Criteria 4 Criteria 4\",\"percentage\":\"20\",\"description\":null,\"updated_at\":\"2021-06-17 07:41:11\",\"created_at\":\"2021-06-17 07:41:11\",\"id\":7}', '127.0.0.1', '2021-06-16 23:41:11', '2021-06-16 23:41:11'),
(86, 'audit:created', 8, 'App\\Models\\Criterion#8', 1, '{\"status\":\"true\",\"title_id\":\"1\",\"category_id\":\"1\",\"name\":\"Criteria 5\",\"percentage\":\"20\",\"description\":null,\"updated_at\":\"2021-06-17 07:41:39\",\"created_at\":\"2021-06-17 07:41:39\",\"id\":8}', '127.0.0.1', '2021-06-16 23:41:39', '2021-06-16 23:41:39'),
(87, 'audit:updated', 6, 'App\\Models\\Criterion#6', 1, '{\"status\":\"true\",\"updated_at\":\"2021-06-17 07:41:59\",\"id\":6}', '127.0.0.1', '2021-06-16 23:41:59', '2021-06-16 23:41:59'),
(88, 'audit:updated', 7, 'App\\Models\\Criterion#7', 1, '{\"status\":\"true\",\"updated_at\":\"2021-06-17 07:42:10\",\"id\":7}', '127.0.0.1', '2021-06-16 23:42:10', '2021-06-16 23:42:10'),
(89, 'audit:deleted', 1, 'App\\Models\\Participant#1', 1, '{\"id\":1,\"status\":\"false\",\"number\":1,\"type\":\"3\",\"name\":\"Ginger Hamilton\",\"description\":\"Voluptatem Modi dol\",\"created_at\":\"2021-06-16 04:04:47\",\"updated_at\":\"2021-06-17 08:08:21\",\"deleted_at\":\"2021-06-17 08:08:21\",\"title_id\":1,\"team_id\":null,\"image\":[],\"media\":[]}', '127.0.0.1', '2021-06-17 00:08:22', '2021-06-17 00:08:22'),
(90, 'audit:created', 2, 'App\\Models\\Participant#2', 1, '{\"status\":\"true\",\"title_id\":\"1\",\"number\":\"1\",\"type\":\"1\",\"name\":\"Rhiannon Gould\",\"description\":\"Corrupti Nam dolore\",\"updated_at\":\"2021-06-17 08:08:46\",\"created_at\":\"2021-06-17 08:08:46\",\"id\":2,\"image\":[],\"media\":[]}', '127.0.0.1', '2021-06-17 00:08:46', '2021-06-17 00:08:46'),
(91, 'audit:created', 3, 'App\\Models\\Participant#3', 1, '{\"status\":\"true\",\"title_id\":\"1\",\"number\":\"2\",\"type\":\"1\",\"name\":\"Calvin Hale\",\"description\":\"Molestias labore ali\",\"updated_at\":\"2021-06-17 08:09:16\",\"created_at\":\"2021-06-17 08:09:16\",\"id\":3,\"image\":[],\"media\":[]}', '127.0.0.1', '2021-06-17 00:09:16', '2021-06-17 00:09:16'),
(92, 'audit:created', 4, 'App\\Models\\Participant#4', 1, '{\"status\":\"false\",\"title_id\":\"1\",\"number\":\"3\",\"type\":\"1\",\"name\":\"Roth Harding\",\"description\":\"Hic dolor accusamus\",\"updated_at\":\"2021-06-17 08:09:40\",\"created_at\":\"2021-06-17 08:09:40\",\"id\":4,\"image\":[],\"media\":[]}', '127.0.0.1', '2021-06-17 00:09:40', '2021-06-17 00:09:40'),
(93, 'audit:created', 5, 'App\\Models\\Participant#5', 1, '{\"status\":\"true\",\"title_id\":\"1\",\"number\":\"3\",\"type\":\"1\",\"name\":\"Rigel Potts\",\"description\":\"Eligendi nulla volup\",\"updated_at\":\"2021-06-17 08:10:01\",\"created_at\":\"2021-06-17 08:10:01\",\"id\":5,\"image\":[],\"media\":[]}', '127.0.0.1', '2021-06-17 00:10:01', '2021-06-17 00:10:01'),
(94, 'audit:updated', 4, 'App\\Models\\Participant#4', 1, '{\"status\":\"true\",\"number\":\"1\",\"type\":\"2\",\"updated_at\":\"2021-06-17 08:10:15\",\"id\":4,\"image\":[],\"media\":[]}', '127.0.0.1', '2021-06-17 00:10:16', '2021-06-17 00:10:16'),
(95, 'audit:created', 6, 'App\\Models\\Participant#6', 1, '{\"status\":\"true\",\"title_id\":\"1\",\"number\":\"2\",\"type\":\"2\",\"name\":\"Erin Gibson\",\"description\":\"Quia necessitatibus\",\"updated_at\":\"2021-06-17 08:10:52\",\"created_at\":\"2021-06-17 08:10:52\",\"id\":6,\"image\":[],\"media\":[]}', '127.0.0.1', '2021-06-17 00:10:52', '2021-06-17 00:10:52'),
(96, 'audit:created', 7, 'App\\Models\\Participant#7', 1, '{\"status\":\"false\",\"title_id\":\"1\",\"number\":\"3\",\"type\":\"2\",\"name\":\"Abel Velazquez\",\"description\":\"Ipsum in voluptas a\",\"updated_at\":\"2021-06-17 08:11:03\",\"created_at\":\"2021-06-17 08:11:03\",\"id\":7,\"image\":[],\"media\":[]}', '127.0.0.1', '2021-06-17 00:11:03', '2021-06-17 00:11:03'),
(97, 'audit:updated', 7, 'App\\Models\\Participant#7', 1, '{\"status\":\"true\",\"updated_at\":\"2021-06-17 08:18:09\",\"id\":7,\"image\":[],\"media\":[]}', '127.0.0.1', '2021-06-17 00:18:09', '2021-06-17 00:18:09'),
(98, 'audit:updated', 1, 'App\\Models\\Title#1', 1, '{\"score_max\":\"100\",\"updated_at\":\"2021-06-19 16:27:27\",\"id\":1}', '127.0.0.1', '2021-06-19 08:27:28', '2021-06-19 08:27:28');

-- --------------------------------------------------------

--
-- Table structure for table `audit_voters`
--

CREATE TABLE `audit_voters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `organization_id` bigint(20) UNSIGNED DEFAULT NULL,
  `position_id` bigint(20) UNSIGNED DEFAULT NULL,
  `candidate_id` bigint(20) UNSIGNED DEFAULT NULL,
  `voter_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_voters`
--

INSERT INTO `audit_voters` (`id`, `created_at`, `updated_at`, `deleted_at`, `organization_id`, `position_id`, `candidate_id`, `voter_id`) VALUES
(1, '2021-06-13 03:43:36', '2021-06-13 03:57:19', '2021-06-13 03:57:19', 1, 2, 2, 2),
(2, '2021-06-13 03:45:13', '2021-06-13 03:57:19', '2021-06-13 03:57:19', 1, 2, 2, 2),
(3, '2021-06-13 03:45:23', '2021-06-13 03:57:19', '2021-06-13 03:57:19', 1, 2, 2, 2),
(4, '2021-06-13 03:50:13', '2021-06-13 03:57:19', '2021-06-13 03:57:19', 1, 1, NULL, 2),
(5, '2021-06-13 03:50:13', '2021-06-13 03:57:19', '2021-06-13 03:57:19', 1, 2, 1, 2),
(6, '2021-06-13 03:50:13', '2021-06-13 03:57:19', '2021-06-13 03:57:19', 1, 3, 3, 2),
(7, '2021-06-13 03:57:25', '2021-06-13 05:00:20', '2021-06-13 05:00:20', 1, 1, 1, 2),
(8, '2021-06-13 03:57:25', '2021-06-13 05:00:20', '2021-06-13 05:00:20', 1, 2, 3, 2),
(9, '2021-06-13 03:57:25', '2021-06-13 05:00:20', '2021-06-13 05:00:20', 1, 3, 6, 2),
(10, '2021-06-13 05:00:47', '2021-06-13 05:02:43', '2021-06-13 05:02:43', 1, 1, 1, 2),
(11, '2021-06-13 05:00:47', '2021-06-13 05:02:43', '2021-06-13 05:02:43', 1, 2, 3, 2),
(12, '2021-06-13 05:00:47', '2021-06-13 05:02:43', '2021-06-13 05:02:43', 1, 3, 8, 2),
(13, '2021-06-13 05:02:51', '2021-06-13 05:03:04', '2021-06-13 05:03:04', 1, 1, 1, 2),
(14, '2021-06-13 05:02:51', '2021-06-13 05:03:04', '2021-06-13 05:03:04', 1, 2, 3, 2),
(15, '2021-06-13 05:02:51', '2021-06-13 05:03:04', '2021-06-13 05:03:04', 1, 3, 8, 2),
(16, '2021-06-13 05:03:14', '2021-06-13 05:12:48', '2021-06-13 05:12:48', 1, 1, 1, 2),
(17, '2021-06-13 05:03:14', '2021-06-13 05:12:48', '2021-06-13 05:12:48', 1, 2, 3, 2),
(18, '2021-06-13 05:03:14', '2021-06-13 05:12:48', '2021-06-13 05:12:48', 1, 3, 8, 2),
(19, '2021-06-13 05:11:07', '2021-06-13 05:12:48', '2021-06-13 05:12:48', 1, 1, 1, 2),
(20, '2021-06-13 05:11:07', '2021-06-13 05:12:48', '2021-06-13 05:12:48', 1, 2, 3, 2),
(21, '2021-06-13 05:11:07', '2021-06-13 05:12:48', '2021-06-13 05:12:48', 1, 3, 8, 2),
(22, '2021-06-13 05:12:35', '2021-06-13 05:12:48', '2021-06-13 05:12:48', 1, 1, 1, 2),
(23, '2021-06-13 05:12:35', '2021-06-13 05:12:48', '2021-06-13 05:12:48', 1, 2, 3, 2),
(24, '2021-06-13 05:12:35', '2021-06-13 05:12:48', '2021-06-13 05:12:48', 1, 3, 8, 2),
(25, '2021-06-13 05:13:40', '2021-06-13 06:07:12', '2021-06-13 06:07:12', 1, 1, 1, 2),
(26, '2021-06-13 05:13:40', '2021-06-13 06:07:12', '2021-06-13 06:07:12', 1, 2, 3, 2),
(27, '2021-06-13 05:13:40', '2021-06-13 06:07:12', '2021-06-13 06:07:12', 1, 3, 6, 2),
(28, '2021-06-13 06:07:22', '2021-06-13 06:10:39', '2021-06-13 06:10:39', 1, 1, 1, 2),
(29, '2021-06-13 06:09:30', '2021-06-13 06:10:39', '2021-06-13 06:10:39', 1, 1, 1, 2),
(30, '2021-06-13 06:09:53', '2021-06-13 06:10:39', '2021-06-13 06:10:39', 1, 1, 1, 2),
(31, '2021-06-13 06:10:22', '2021-06-13 06:10:39', '2021-06-13 06:10:39', 1, 1, 1, 2),
(32, '2021-06-13 06:10:42', '2021-06-13 06:10:42', NULL, 1, 1, 1, 2),
(33, '2021-06-13 06:10:42', '2021-06-13 06:10:42', NULL, 1, 2, 3, 2),
(34, '2021-06-13 06:10:42', '2021-06-13 06:10:42', NULL, 1, 3, 5, 2),
(35, '2021-06-13 06:10:42', '2021-06-13 06:10:42', NULL, 1, 3, 6, 2),
(36, '2021-06-14 06:45:24', '2021-06-14 06:45:24', NULL, 1, 1, 2, 1),
(37, '2021-06-14 06:45:24', '2021-06-14 06:45:24', NULL, 1, 2, 3, 1),
(38, '2021-06-14 06:45:24', '2021-06-14 06:45:24', NULL, 1, 3, 5, 1),
(39, '2021-06-14 06:45:24', '2021-06-14 06:45:24', NULL, 1, 3, 6, 1),
(40, '2021-06-14 10:17:46', '2021-06-14 10:17:46', NULL, 1, 1, 2, 3),
(41, '2021-06-14 10:17:46', '2021-06-14 10:17:46', NULL, 1, 2, 4, 3),
(42, '2021-06-14 10:17:46', '2021-06-14 10:17:46', NULL, 1, 3, 6, 3),
(43, '2021-06-14 10:17:46', '2021-06-14 10:17:46', NULL, 1, 3, 8, 3),
(44, '2021-06-19 10:21:47', '2021-06-19 10:21:47', NULL, 1, 1, 1, 24),
(45, '2021-06-19 10:21:47', '2021-06-19 10:21:47', NULL, 1, 2, 3, 24),
(46, '2021-06-19 10:21:47', '2021-06-19 10:21:47', NULL, 1, 3, 5, 24),
(47, '2021-06-19 10:21:47', '2021-06-19 10:21:47', NULL, 1, 3, 8, 24);

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `organization_id` bigint(20) UNSIGNED NOT NULL,
  `partylist_id` bigint(20) UNSIGNED DEFAULT NULL,
  `position_id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `status`, `name`, `address`, `gender`, `email`, `contact`, `description`, `created_at`, `updated_at`, `deleted_at`, `organization_id`, `partylist_id`, `position_id`, `team_id`) VALUES
(1, 'true', 'Candidate 1 as president', NULL, 'Male', NULL, NULL, NULL, '2021-06-13 03:16:37', '2021-06-13 03:16:37', NULL, 1, 1, 1, 1),
(2, 'true', 'Candidate 2 as president', NULL, 'Male', NULL, NULL, NULL, '2021-06-13 03:17:24', '2021-06-13 03:17:24', NULL, 1, 1, 1, 1),
(3, 'true', 'Ulla Nunez', 'Rerum dolores dolor', 'Female', 'sigigyx@mailinator.com', 'Est dolore rerum to', 'Consequat Perspicia', '2021-06-13 03:18:08', '2021-06-13 03:18:46', NULL, 1, 2, 2, 1),
(4, 'true', 'Robert Perkins', 'Quia iusto voluptas', 'Female', 'gulezyne@mailinator.com', 'Voluptatibus eos fac', 'Ullamco ab asperiore', '2021-06-13 03:18:34', '2021-06-13 03:18:34', NULL, 1, 1, 2, 1),
(5, 'true', 'Mollie Burke', 'Nesciunt sed qui pe', 'Female', 'ribivi@mailinator.com', 'Consequatur porro e', 'Assumenda atque eius', '2021-06-13 03:19:15', '2021-06-13 03:19:15', NULL, 1, 2, 3, 1),
(6, 'true', 'Amity Simmons', 'Itaque cum sunt comm', 'Female', 'cyzacyb@mailinator.com', 'Do eaque sint culpa', 'Sint quis rerum sit', '2021-06-13 03:20:08', '2021-06-13 03:20:08', NULL, 1, 1, 3, 1),
(7, 'false', 'Ursula Tran', 'Accusamus commodi do', 'Male', 'lokoxyzafe@mailinator.com', 'Esse voluptatem Ex', 'Adipisci non eos qu', '2021-06-13 03:20:27', '2021-06-13 03:20:27', NULL, 1, 1, 3, 1),
(8, 'true', 'Kylie Holloway', 'Consequuntur quia ma', 'Female', 'jaja@mailinator.com', 'Excepturi quas proid', 'In dicta a maiores i', '2021-06-13 03:21:04', '2021-06-13 03:21:04', NULL, 1, 1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partipants` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title_id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `status`, `name`, `percentage`, `partipants`, `description`, `created_at`, `updated_at`, `deleted_at`, `title_id`, `team_id`) VALUES
(1, 'false', 'Category 1', '100', NULL, NULL, '2021-06-15 17:59:53', '2021-06-15 18:17:23', NULL, 1, NULL),
(2, 'false', 'Elimination Round', '100', 10, NULL, '2021-06-15 18:00:21', '2021-06-15 18:17:31', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `criteria`
--

CREATE TABLE `criteria` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `criteria`
--

INSERT INTO `criteria` (`id`, `status`, `name`, `percentage`, `description`, `created_at`, `updated_at`, `deleted_at`, `title_id`, `category_id`, `team_id`) VALUES
(1, 'true', 'Criteria 1', '20', 'Neque odio expedita', '2021-06-15 19:02:22', '2021-06-16 23:40:29', NULL, 1, 1, NULL),
(2, 'true', 'Criteria 2', '20', 'In error a elit qui', '2021-06-15 19:02:44', '2021-06-16 23:40:17', NULL, 1, 1, NULL),
(3, 'false', 'Criteria Elimination round 1', '30', 'Labore enim minima n', '2021-06-16 08:36:47', '2021-06-16 08:36:47', NULL, 1, 2, NULL),
(4, 'true', 'Criteria Elimination round 2', '30', 'Enim et rerum eum it', '2021-06-16 08:37:08', '2021-06-16 08:37:08', NULL, 1, 2, NULL),
(5, 'false', 'Criteria Elimination round 3', '40', NULL, '2021-06-16 08:37:35', '2021-06-16 08:37:35', NULL, 1, 2, NULL),
(6, 'true', 'Criteria 3 Criteria 3', '20', NULL, '2021-06-16 23:40:52', '2021-06-16 23:41:59', NULL, 1, 1, NULL),
(7, 'true', 'Criteria 4 Criteria 4 Criteria 4', '20', NULL, '2021-06-16 23:41:11', '2021-06-16 23:42:10', NULL, 1, 1, NULL),
(8, 'true', 'Criteria 5', '20', NULL, '2021-06-16 23:41:39', '2021-06-16 23:41:39', NULL, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Is our election system secure from cyber-attack?', 'Yes! Our team raised by security experts, and have done so for years, such as paper-based systems, including voter verifiable paper audit trails; independent testing; and post-election audits; and physical security of tabulation equipment. The Events Tabulation system is secured by highly skilled Office of the Secretary of State IT staff and Security Operations Center, using state of the art equipment and following IT industry best practices. We have embarked on an unprecedented opportunity to work collaboratively with College for Research & Technology to ensure that our Tabulation systems remain secure.', '2021-06-13 02:04:19', '2021-06-13 02:04:19', NULL),
(2, 'Can the election be rigged?', 'Before a tabulation system can be used, we require testing at a federally approved independent testing lab. These expert testers include security reviews as a part of their overall testing efforts. Then, systems are tested here at the state level and reviewed by our own voting systems certification board, comprised of technology experts, accessibility experts, and certified county election officials.', '2021-06-13 02:04:33', '2021-06-13 02:04:33', NULL),
(3, 'Is a voters’ guide available online? How about PDF of the print version?', 'Yes, the Events Tabulation System is available online in PDF, Excel or print online. Go to the results page, select your desired Election or Tabulation result, and click on the options above the table.', '2021-06-13 02:04:45', '2021-06-13 02:04:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `homepages`
--

CREATE TABLE `homepages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `homepages`
--

INSERT INTO `homepages` (`id`, `title`, `content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'This is header 1 of the Landing Page', 'The Content 1 etc., of the header 1 of the Landing Page, The Content 1 etc., of the header 1 of the Landing Page The Content 1 etc., of the header 1 of the Landing Page,', '2021-06-13 01:45:34', '2021-06-13 01:45:34', NULL),
(2, 'This is header 2 of the Landing Page', 'This is the content 2 of the header 2 of the Landing Page, This is the content 2 of the header 2 of the Landing Page This is the content 2 of the header 2 of the Landing Page, This is the content 2 of the header 2 of the Landing Page', '2021-06-13 02:02:48', '2021-06-13 02:02:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `judges`
--

CREATE TABLE `judges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title_id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `judges`
--

INSERT INTO `judges` (`id`, `status`, `name`, `address`, `gender`, `age`, `email`, `username`, `password`, `description`, `created_at`, `updated_at`, `deleted_at`, `title_id`, `team_id`) VALUES
(1, 'false', 'Malik Bright', 'Consequuntur volupta', 'Female', 72, 'jetisaj@mailinator.com', 'judge_2', '$2y$10$x/jycn1OGtVGuGvAUWJK7.pVEdlMDjkJ.OtuaNnpIDsBabu1NnNXO', 'Praesentium in animi', '2021-06-15 19:13:12', '2021-06-16 04:18:22', NULL, 1, NULL),
(2, 'false', 'Cora Small', 'Facere voluptatibus', 'Female', 7, 'regowamyh@mailinator.com', 'judge_1', '$2y$10$lTPD5UhuTXCHP/B42eiLUeei.KsHF6MUPUNOWCVceaJ3GcwjRp6Je', 'Rem molestiae nihil', '2021-06-15 19:35:41', '2021-06-16 03:54:01', '2021-06-16 03:54:01', 1, NULL),
(3, 'true', 'Galena Ortega', 'Veniam incidunt am', 'Female', 81, 'harexylat@mailinator.com', 'judge_1', '$2y$10$8JXTm73lCozgdvxGlRtd2ez1Uh4S9IIQi5pldnVUl9n7iWfGyR9ZC', 'Ea non dolores sequi', '2021-06-16 01:28:38', '2021-06-16 01:52:54', '2021-06-16 01:52:54', 1, NULL),
(4, 'true', 'Deacon Jacobs', 'Incididunt aspernatu', 'Male', 75, 'sifu@mailinator.com', 'judge_1', '$2y$10$U8h.Gfa/IiKU5LaGIS56SeWQeZ9akltiF.POkMQC1fMwOmKZ1CTJy', 'Enim sed dolor conse', '2021-06-16 01:54:44', '2021-06-16 04:21:59', NULL, 1, NULL),
(5, 'true', 'Martin Barry', 'Perspiciatis tempor', 'Male', 55, 'xycisucujo@mailinator.com', 'judge_1', '$2y$10$Lt9Ve8GYqlDS9rKZ8VpEi.eIU/NuWfJyAZwk8zQgeXW36wbXOPaVm', 'Voluptatibus ullamco', '2021-06-16 03:53:49', '2021-06-16 03:53:49', NULL, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'e15ad4a4-0c79-44e5-af36-c73ceeb52a13', 'image', '60c5d7756897e_195786314_153448286829604_380592371526862919_n', '60c5d7756897e_195786314_153448286829604_380592371526862919_n.jpg', 'image/jpeg', 'public', 'public', 37504, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 1, '2021-06-13 02:01:27', '2021-06-13 02:01:29'),
(2, 'App\\Models\\Candidate', 1, 'dbf9703e-e8af-496c-b21f-1c6c36ec7d93', 'image', '60c5e914a7b5e_Penguins', '60c5e914a7b5e_Penguins.jpg', 'image/jpeg', 'public', 'public', 777835, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 2, '2021-06-13 03:16:37', '2021-06-13 03:16:38'),
(3, 'App\\Models\\Candidate', 2, 'b566c77a-e9ea-491d-baa6-dbc2e3d6068d', 'image', '60c5e941da640_Chrysanthemum', '60c5e941da640_Chrysanthemum.jpg', 'image/jpeg', 'public', 'public', 879394, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 3, '2021-06-13 03:17:25', '2021-06-13 03:17:26'),
(4, 'App\\Models\\Candidate', 3, '702a0980-bccf-47d2-942a-adead7e1d0f7', 'image', '60c5e96d65529_Tulips', '60c5e96d65529_Tulips.jpg', 'image/jpeg', 'public', 'public', 620888, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 4, '2021-06-13 03:18:08', '2021-06-13 03:18:09'),
(5, 'App\\Models\\Candidate', 4, '42ee7ad9-dd6b-4f26-8967-75fbd214e119', 'image', '60c5e98991e7d_Desert', '60c5e98991e7d_Desert.jpg', 'image/jpeg', 'public', 'public', 845941, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 5, '2021-06-13 03:18:34', '2021-06-13 03:18:35'),
(6, 'App\\Models\\Candidate', 5, 'b92692ac-78f7-4195-baa4-6201cc9539f4', 'image', '60c5e9b26aae5_Hydrangeas', '60c5e9b26aae5_Hydrangeas.jpg', 'image/jpeg', 'public', 'public', 595284, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 6, '2021-06-13 03:19:15', '2021-06-13 03:19:17'),
(7, 'App\\Models\\Candidate', 6, 'a006885a-2942-4b07-822b-8a67e65afcfe', 'image', '60c5e9e6df617_Jellyfish', '60c5e9e6df617_Jellyfish.jpg', 'image/jpeg', 'public', 'public', 775702, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 7, '2021-06-13 03:20:08', '2021-06-13 03:20:09'),
(8, 'App\\Models\\Candidate', 7, '83411002-4b0d-4f04-9c1b-ebb663299a9b', 'image', '60c5e9fa5bd10_Koala', '60c5e9fa5bd10_Koala.jpg', 'image/jpeg', 'public', 'public', 780831, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 8, '2021-06-13 03:20:28', '2021-06-13 03:20:29'),
(9, 'App\\Models\\Candidate', 8, '94ab8240-1852-4e6e-909f-c10419b99955', 'image', '60c5ea194413f_Lighthouse', '60c5ea194413f_Lighthouse.jpg', 'image/jpeg', 'public', 'public', 561276, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 9, '2021-06-13 03:21:04', '2021-06-13 03:21:05'),
(10, 'App\\Models\\Judge', 1, '4d8dffc4-a7d6-4ecb-9e32-3b677d131632', 'image', '60c975d498a28_Koala', '60c975d498a28_Koala.jpg', 'image/jpeg', 'public', 'public', 780831, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 10, '2021-06-15 19:53:58', '2021-06-15 19:54:00'),
(11, 'App\\Models\\Judge', 5, '6c2026e8-86a3-4366-b455-02a24a8f2adb', 'image', '60c9efe1ea7aa_Tulips', '60c9efe1ea7aa_Tulips.jpg', 'image/jpeg', 'public', 'public', 620888, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 11, '2021-06-16 04:34:44', '2021-06-16 04:34:45'),
(12, 'App\\Models\\Judge', 4, 'e026bba6-7e1d-4225-9f40-2951f0357679', 'image', '60c9eff809339_Hydrangeas', '60c9eff809339_Hydrangeas.jpg', 'image/jpeg', 'public', 'public', 595284, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 12, '2021-06-16 04:35:08', '2021-06-16 04:35:09'),
(13, 'App\\Models\\Participant', 2, 'd4286968-70e7-482b-aea0-89693be839cb', 'image', '60d07fa8204c5_Koala', '60d07fa8204c5_Koala.jpg', 'image/jpeg', 'public', 'public', 780831, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 13, '2021-06-21 04:01:45', '2021-06-21 04:01:49'),
(14, 'App\\Models\\Participant', 2, '3e999ada-653f-4b62-a4a3-051712be1714', 'image', '60d088a348b46_Hydrangeas', '60d088a348b46_Hydrangeas.jpg', 'image/jpeg', 'public', 'public', 595284, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 14, '2021-06-21 04:40:06', '2021-06-21 04:40:07'),
(15, 'App\\Models\\Participant', 2, '2b5a7b0e-81cc-4658-9b7e-62aed12cc9d5', 'image', '60d088a39afc1_Jellyfish', '60d088a39afc1_Jellyfish.jpg', 'image/jpeg', 'public', 'public', 775702, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 15, '2021-06-21 04:40:07', '2021-06-21 04:40:08'),
(16, 'App\\Models\\Participant', 2, 'dfa4b63a-0662-4f6a-a2ba-85e391536a42', 'image', '60d088a3e4b83_Koala', '60d088a3e4b83_Koala.jpg', 'image/jpeg', 'public', 'public', 780831, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 16, '2021-06-21 04:40:08', '2021-06-21 04:40:09'),
(17, 'App\\Models\\Participant', 2, 'dab8c9a0-913a-4ca0-9105-0d0f96b1a6d6', 'image', '60d088a433b8a_Lighthouse', '60d088a433b8a_Lighthouse.jpg', 'image/jpeg', 'public', 'public', 561276, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 17, '2021-06-21 04:40:09', '2021-06-21 04:40:10'),
(18, 'App\\Models\\Participant', 2, '0e708336-11c5-47e5-8932-6795350a5c85', 'image', '60d088a47f2a4_Penguins', '60d088a47f2a4_Penguins.jpg', 'image/jpeg', 'public', 'public', 777835, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 18, '2021-06-21 04:40:10', '2021-06-21 04:40:11'),
(19, 'App\\Models\\Participant', 2, '12572d27-d694-4207-9308-74c036f0640b', 'image', '60d088a4cdc86_Tulips', '60d088a4cdc86_Tulips.jpg', 'image/jpeg', 'public', 'public', 620888, '[]', '{\"generated_conversions\":{\"thumb\":true,\"preview\":true}}', '[]', 19, '2021-06-21 04:40:11', '2021-06-21 04:40:12');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2021_05_27_000001_create_audit_logs_table', 1),
(4, '2021_05_27_000002_create_media_table', 1),
(5, '2021_05_27_000003_create_services_table', 1),
(6, '2021_05_27_000004_create_titles_table', 1),
(7, '2021_05_27_000005_create_voters_table', 1),
(8, '2021_05_27_000006_create_judges_table', 1),
(9, '2021_05_27_000007_create_candidates_table', 1),
(10, '2021_05_27_000008_create_partylists_table', 1),
(11, '2021_05_27_000009_create_positions_table', 1),
(12, '2021_05_27_000010_create_participants_table', 1),
(13, '2021_05_27_000011_create_organizations_table', 1),
(14, '2021_05_27_000012_create_prices_table', 1),
(15, '2021_05_27_000013_create_faqs_table', 1),
(16, '2021_05_27_000014_create_categories_table', 1),
(17, '2021_05_27_000015_create_abouts_table', 1),
(18, '2021_05_27_000016_create_teams_table', 1),
(19, '2021_05_27_000017_create_user_alerts_table', 1),
(20, '2021_05_27_000018_create_users_table', 1),
(21, '2021_05_27_000019_create_homepages_table', 1),
(22, '2021_05_27_000020_create_roles_table', 1),
(23, '2021_05_27_000021_create_permissions_table', 1),
(24, '2021_05_27_000022_create_criteria_table', 1),
(25, '2021_05_27_000023_create_user_user_alert_pivot_table', 1),
(26, '2021_05_27_000024_create_role_user_pivot_table', 1),
(27, '2021_05_27_000025_create_permission_role_pivot_table', 1),
(28, '2021_05_27_000026_add_relationship_fields_to_participants_table', 1),
(29, '2021_05_27_000027_add_relationship_fields_to_judges_table', 1),
(30, '2021_05_27_000028_add_relationship_fields_to_criteria_table', 1),
(31, '2021_05_27_000029_add_relationship_fields_to_positions_table', 1),
(32, '2021_05_27_000030_add_relationship_fields_to_categories_table', 1),
(33, '2021_05_27_000031_add_relationship_fields_to_titles_table', 1),
(34, '2021_05_27_000032_add_relationship_fields_to_voters_table', 1),
(35, '2021_05_27_000033_add_relationship_fields_to_candidates_table', 1),
(36, '2021_05_27_000034_add_relationship_fields_to_partylists_table', 1),
(37, '2021_05_27_000035_add_relationship_fields_to_organizations_table', 1),
(38, '2021_05_27_000036_add_relationship_fields_to_users_table', 1),
(39, '2021_05_27_000037_add_relationship_fields_to_roles_table', 1),
(40, '2021_05_27_000038_add_approval_fields', 1),
(41, '2021_05_27_000039_create_qa_topics_table', 1),
(42, '2021_05_27_000040_create_qa_messages_table', 1),
(43, '2021_06_12_161633_create_audit_voters_table', 1),
(44, '2021_06_12_162152_add_relationship_fields_to_audit_voters_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`id`, `status`, `title`, `slug`, `description`, `created_at`, `updated_at`, `deleted_at`, `team_id`) VALUES
(1, 'true', 'CRT-Election-2021', 'CRT-Election-2021', 'CRT-Election-2021CRT-Election-2021CRT-Election-2021CRT-Election-2021', '2021-06-13 03:11:31', '2021-06-13 03:11:31', NULL, 1),
(2, 'false', 'CRT-Election-2022', 'CRT-Election-2022', 'CRT-Election-2022CRT-Election-2022CRT-Election-2022', '2021-06-13 03:11:42', '2021-06-13 03:22:54', NULL, 1),
(3, 'true', 'ELECTION 20202021', 'ELECTION-20202021', 'ELECTION-20202021', '2021-06-15 08:44:21', '2021-06-15 08:44:21', NULL, 1),
(4, 'true', 'testingtestingtesting', 'testingtestingtesting', 'testingtestingtesting', '2021-06-15 08:46:37', '2021-06-15 08:46:37', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title_id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `participants`
--

INSERT INTO `participants` (`id`, `status`, `number`, `type`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`, `title_id`, `team_id`) VALUES
(1, 'false', 1, '3', 'Ginger Hamilton', 'Voluptatem Modi dol', '2021-06-15 20:04:47', '2021-06-17 00:08:21', '2021-06-17 00:08:21', 1, NULL),
(2, 'true', 1, '1', 'Rhiannon Gould', 'Corrupti Nam dolore', '2021-06-17 00:08:46', '2021-06-17 00:08:46', NULL, 1, NULL),
(3, 'true', 2, '1', 'Calvin Hale', 'Molestias labore ali', '2021-06-17 00:09:16', '2021-06-17 00:09:16', NULL, 1, NULL),
(4, 'true', 1, '2', 'Roth Harding', 'Hic dolor accusamus', '2021-06-17 00:09:40', '2021-06-17 00:10:15', NULL, 1, NULL),
(5, 'true', 3, '1', 'Rigel Potts', 'Eligendi nulla volup', '2021-06-17 00:10:01', '2021-06-17 00:10:01', NULL, 1, NULL),
(6, 'true', 2, '2', 'Erin Gibson', 'Quia necessitatibus', '2021-06-17 00:10:52', '2021-06-17 00:10:52', NULL, 1, NULL),
(7, 'true', 3, '2', 'Abel Velazquez', 'Ipsum in voluptas a', '2021-06-17 00:11:03', '2021-06-17 00:18:09', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `partylists`
--

CREATE TABLE `partylists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `organization_id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partylists`
--

INSERT INTO `partylists` (`id`, `name`, `platform`, `description`, `created_at`, `updated_at`, `deleted_at`, `organization_id`, `team_id`) VALUES
(1, 'Party one 0 one', '<blockquote><h2>Header 123&nbsp;Header 123&nbsp;Header 123&nbsp;Header 123&nbsp;</h2></blockquote><ol><li>&nbsp;awer we efasdfawefcergwe ybqery qgw</li><li>&nbsp;awer we efasdfawefcergwe ybqery qgw awer we efasdfawefcergwe ybqery qgw</li><li>&nbsp;awer we efasdfawefcergwe ybqery qgw awer we efasdfawefcergw</li><li>&nbsp;awer we efasdfawefcergwe ybqery qgw awer we efasdfawefcergwe ybqery qgw awer we efasdfawefcergwe ybqery qgw</li><li>&nbsp;awer we efasdfawefcergwe ybqery qgw awer we efasdfawefcergwe ybqery</li></ol>', NULL, '2021-06-13 03:14:04', '2021-06-13 03:14:04', NULL, 1, 1),
(2, 'Party Party', '<blockquote><h2>Header 123&nbsp;Header 123&nbsp;Header 123&nbsp;Header 123&nbsp;</h2></blockquote><ol><li>awer we efasdfawefcergwe ybqery qgw</li><li>awer we efasdfawefcergwe ybqery qgw awer we efasdfawefcergwe ybqery qgw</li><li>awer we efasdfawefcergwe ybqery qgw awer we efasdfawefcergw</li><li>awer we efasdfawefcergwe ybqery qgw awer we efasdfawefcergwe ybqery qgw awer we efasdfawefcergwe ybqery qgw</li><li>awer we efasdfawefcergwe ybqery qgw awer we efasdfawefcergwe ybqery</li></ol>', NULL, '2021-06-13 03:14:18', '2021-06-13 03:14:18', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user_management_access', NULL, NULL, NULL),
(2, 'permission_create', NULL, NULL, NULL),
(3, 'permission_edit', NULL, NULL, NULL),
(4, 'permission_show', NULL, NULL, NULL),
(5, 'permission_delete', NULL, NULL, NULL),
(6, 'permission_access', NULL, NULL, NULL),
(7, 'role_create', NULL, NULL, NULL),
(8, 'role_edit', NULL, NULL, NULL),
(9, 'role_show', NULL, NULL, NULL),
(10, 'role_delete', NULL, NULL, NULL),
(11, 'role_access', NULL, NULL, NULL),
(12, 'user_create', NULL, NULL, NULL),
(13, 'user_edit', NULL, NULL, NULL),
(14, 'user_show', NULL, NULL, NULL),
(15, 'user_delete', NULL, NULL, NULL),
(16, 'user_access', NULL, NULL, NULL),
(17, 'audit_log_show', NULL, NULL, NULL),
(18, 'audit_log_access', NULL, NULL, NULL),
(19, 'user_alert_create', NULL, NULL, NULL),
(20, 'user_alert_show', NULL, NULL, NULL),
(21, 'user_alert_delete', NULL, NULL, NULL),
(22, 'user_alert_access', NULL, NULL, NULL),
(23, 'team_create', NULL, NULL, NULL),
(24, 'team_edit', NULL, NULL, NULL),
(25, 'team_show', NULL, NULL, NULL),
(26, 'team_delete', NULL, NULL, NULL),
(27, 'team_access', NULL, NULL, NULL),
(28, 'election_access', NULL, NULL, NULL),
(29, 'tabulation_access', NULL, NULL, NULL),
(30, 'landingpage_access', NULL, NULL, NULL),
(31, 'about_create', NULL, NULL, NULL),
(32, 'about_edit', NULL, NULL, NULL),
(33, 'about_show', NULL, NULL, NULL),
(34, 'about_delete', NULL, NULL, NULL),
(35, 'about_access', NULL, NULL, NULL),
(36, 'faq_create', NULL, NULL, NULL),
(37, 'faq_edit', NULL, NULL, NULL),
(38, 'faq_show', NULL, NULL, NULL),
(39, 'faq_delete', NULL, NULL, NULL),
(40, 'faq_access', NULL, NULL, NULL),
(41, 'service_create', NULL, NULL, NULL),
(42, 'service_edit', NULL, NULL, NULL),
(43, 'service_show', NULL, NULL, NULL),
(44, 'service_delete', NULL, NULL, NULL),
(45, 'service_access', NULL, NULL, NULL),
(46, 'price_create', NULL, NULL, NULL),
(47, 'price_edit', NULL, NULL, NULL),
(48, 'price_show', NULL, NULL, NULL),
(49, 'price_delete', NULL, NULL, NULL),
(50, 'price_access', NULL, NULL, NULL),
(51, 'organization_create', NULL, NULL, NULL),
(52, 'organization_edit', NULL, NULL, NULL),
(53, 'organization_show', NULL, NULL, NULL),
(54, 'organization_delete', NULL, NULL, NULL),
(55, 'organization_access', NULL, NULL, NULL),
(56, 'position_create', NULL, NULL, NULL),
(57, 'position_edit', NULL, NULL, NULL),
(58, 'position_show', NULL, NULL, NULL),
(59, 'position_delete', NULL, NULL, NULL),
(60, 'position_access', NULL, NULL, NULL),
(61, 'partylist_create', NULL, NULL, NULL),
(62, 'partylist_edit', NULL, NULL, NULL),
(63, 'partylist_show', NULL, NULL, NULL),
(64, 'partylist_delete', NULL, NULL, NULL),
(65, 'partylist_access', NULL, NULL, NULL),
(66, 'candidate_create', NULL, NULL, NULL),
(67, 'candidate_edit', NULL, NULL, NULL),
(68, 'candidate_show', NULL, NULL, NULL),
(69, 'candidate_delete', NULL, NULL, NULL),
(70, 'candidate_access', NULL, NULL, NULL),
(71, 'voter_create', NULL, NULL, NULL),
(72, 'voter_edit', NULL, NULL, NULL),
(73, 'voter_show', NULL, NULL, NULL),
(74, 'voter_delete', NULL, NULL, NULL),
(75, 'voter_access', NULL, NULL, NULL),
(76, 'title_create', NULL, NULL, NULL),
(77, 'title_edit', NULL, NULL, NULL),
(78, 'title_show', NULL, NULL, NULL),
(79, 'title_delete', NULL, NULL, NULL),
(80, 'title_access', NULL, NULL, NULL),
(81, 'category_create', NULL, NULL, NULL),
(82, 'category_edit', NULL, NULL, NULL),
(83, 'category_show', NULL, NULL, NULL),
(84, 'category_delete', NULL, NULL, NULL),
(85, 'category_access', NULL, NULL, NULL),
(86, 'criterion_create', NULL, NULL, NULL),
(87, 'criterion_edit', NULL, NULL, NULL),
(88, 'criterion_show', NULL, NULL, NULL),
(89, 'criterion_delete', NULL, NULL, NULL),
(90, 'criterion_access', NULL, NULL, NULL),
(91, 'judge_create', NULL, NULL, NULL),
(92, 'judge_edit', NULL, NULL, NULL),
(93, 'judge_show', NULL, NULL, NULL),
(94, 'judge_delete', NULL, NULL, NULL),
(95, 'judge_access', NULL, NULL, NULL),
(96, 'participant_create', NULL, NULL, NULL),
(97, 'participant_edit', NULL, NULL, NULL),
(98, 'participant_show', NULL, NULL, NULL),
(99, 'participant_delete', NULL, NULL, NULL),
(100, 'participant_access', NULL, NULL, NULL),
(101, 'monitor_create', NULL, NULL, NULL),
(102, 'monitor_edit', NULL, NULL, NULL),
(103, 'monitor_show', NULL, NULL, NULL),
(104, 'monitor_delete', NULL, NULL, NULL),
(105, 'monitor_access', NULL, NULL, NULL),
(106, 'result_create', NULL, NULL, NULL),
(107, 'result_edit', NULL, NULL, NULL),
(108, 'result_show', NULL, NULL, NULL),
(109, 'result_delete', NULL, NULL, NULL),
(110, 'result_access', NULL, NULL, NULL),
(111, 'generate_result_create', NULL, NULL, NULL),
(112, 'generate_result_edit', NULL, NULL, NULL),
(113, 'generate_result_show', NULL, NULL, NULL),
(114, 'generate_result_delete', NULL, NULL, NULL),
(115, 'generate_result_access', NULL, NULL, NULL),
(116, 'homepage_create', NULL, NULL, NULL),
(117, 'homepage_edit', NULL, NULL, NULL),
(118, 'homepage_show', NULL, NULL, NULL),
(119, 'homepage_delete', NULL, NULL, NULL),
(120, 'homepage_access', NULL, NULL, NULL),
(121, 'profile_password_edit', NULL, NULL, NULL),
(122, 'audit_voter_delete', '2021-06-13 02:45:32', '2021-06-13 02:45:32', NULL),
(123, 'audit_voter_access', '2021-06-13 02:45:38', '2021-06-13 02:45:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 47),
(1, 48),
(1, 49),
(1, 50),
(1, 51),
(1, 52),
(1, 53),
(1, 54),
(1, 55),
(1, 56),
(1, 57),
(1, 58),
(1, 59),
(1, 60),
(1, 61),
(1, 62),
(1, 63),
(1, 64),
(1, 65),
(1, 66),
(1, 67),
(1, 68),
(1, 69),
(1, 70),
(1, 71),
(1, 72),
(1, 73),
(1, 74),
(1, 75),
(1, 76),
(1, 77),
(1, 78),
(1, 79),
(1, 80),
(1, 81),
(1, 82),
(1, 83),
(1, 84),
(1, 85),
(1, 86),
(1, 87),
(1, 88),
(1, 89),
(1, 90),
(1, 91),
(1, 92),
(1, 93),
(1, 94),
(1, 95),
(1, 96),
(1, 97),
(1, 98),
(1, 99),
(1, 100),
(1, 101),
(1, 102),
(1, 103),
(1, 104),
(1, 105),
(1, 106),
(1, 107),
(1, 108),
(1, 109),
(1, 110),
(1, 111),
(1, 112),
(1, 113),
(1, 114),
(1, 115),
(1, 116),
(1, 117),
(1, 118),
(1, 119),
(1, 120),
(1, 121),
(2, 1),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 28),
(2, 29),
(2, 51),
(2, 52),
(2, 53),
(2, 54),
(2, 55),
(2, 56),
(2, 57),
(2, 58),
(2, 59),
(2, 60),
(2, 61),
(2, 62),
(2, 63),
(2, 64),
(2, 65),
(2, 66),
(2, 67),
(2, 68),
(2, 69),
(2, 70),
(2, 71),
(2, 72),
(2, 73),
(2, 74),
(2, 75),
(2, 76),
(2, 77),
(2, 78),
(2, 79),
(2, 80),
(2, 81),
(2, 82),
(2, 83),
(2, 84),
(2, 85),
(2, 86),
(2, 87),
(2, 88),
(2, 89),
(2, 90),
(2, 91),
(2, 92),
(2, 93),
(2, 94),
(2, 95),
(2, 96),
(2, 97),
(2, 98),
(2, 99),
(2, 100),
(2, 101),
(2, 102),
(2, 103),
(2, 104),
(2, 105),
(2, 106),
(2, 107),
(2, 108),
(2, 109),
(2, 110),
(2, 111),
(2, 112),
(2, 113),
(2, 114),
(2, 115),
(2, 116),
(2, 117),
(2, 118),
(2, 119),
(2, 120),
(1, 122),
(1, 123),
(2, 122),
(2, 123);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vote_allow` int(11) NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `organization_id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `vote_allow`, `position`, `description`, `created_at`, `updated_at`, `deleted_at`, `organization_id`, `team_id`) VALUES
(1, 1, 'President', NULL, '2021-06-13 03:12:29', '2021-06-13 03:12:29', NULL, 1, 1),
(2, 1, 'V-President', NULL, '2021-06-13 03:12:41', '2021-06-13 03:12:41', NULL, 1, 1),
(3, 2, '4th Year Representative', NULL, '2021-06-13 03:12:59', '2021-06-13 03:19:32', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`id`, `title`, `content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Free', '<h4><sup>₱</sup>0<span> / month</span></h4>\r\n              <ul>\r\n                <li>Aida dere</li>\r\n                <li>Nec feugiat nisl</li>\r\n                <li>Nulla at volutpat dola</li>\r\n                <li class=\"na\">Pharetra massa</li>\r\n                <li class=\"na\">Massa ultricies mi</li>\r\n              </ul>', '2021-06-13 02:06:21', '2021-06-13 02:06:21', NULL),
(2, 'Business', '<h4><sup>₱</sup>200<span> / month</span></h4>\r\n              <ul>\r\n                <li>Aida dere</li>\r\n                <li>Nec feugiat nisl</li>\r\n                <li>Nulla at volutpat dola</li>\r\n                <li>Pharetra massa</li>\r\n                <li class=\"na\">Massa ultricies mi</li>\r\n              </ul>', '2021-06-13 02:06:47', '2021-06-13 02:06:47', NULL),
(3, 'Developer', '<h4><sup>₱</sup>350<span> / month</span></h4>\r\n              <ul>\r\n                <li>Aida dere</li>\r\n                <li>Nec feugiat nisl</li>\r\n                <li>Nulla at volutpat dola</li>\r\n                <li>Pharetra massa</li>\r\n                <li>Massa ultricies mi</li>\r\n              </ul>', '2021-06-13 02:07:00', '2021-06-13 02:07:00', NULL),
(4, 'Ultimate', '<h4><sup>₱</sup>500<span> / month</span></h4>\r\n              <ul>\r\n                <li>Aida dere</li>\r\n                <li>Nec feugiat nisl</li>\r\n                <li>Nulla at volutpat dola</li>\r\n                <li>Pharetra massa</li>\r\n                <li>Massa ultricies mi</li>\r\n              </ul>', '2021-06-13 02:07:14', '2021-06-13 02:07:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `qa_messages`
--

CREATE TABLE `qa_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topic_id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qa_topics`
--

CREATE TABLE `qa_topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `owner_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`, `owner_id`) VALUES
(1, 'Admin', NULL, NULL, NULL, 1),
(2, 'Manager', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 2),
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'DYNAMIC TABULATION SYSTEM', 'It is the act or process of tabulating and table displaying data in a compact form. A tabulation system for delivery to a medium of data information suitably arranged for tabulation of character series and ruled lines, and a control for controlling the data information arrangement applied to the medium.', '2021-06-13 02:05:19', '2021-06-13 02:05:19', NULL),
(2, 'E-VOTING SYSTEM', 'Electronic voting (also known as e-voting) is voting that uses electronic means to either aid or take care of casting and counting votes.  E-voting may use standalone electronic voting machines or computers connected to the Internet.', '2021-06-13 02:05:33', '2021-06-13 02:05:33', NULL),
(3, 'TEAM SUPPORT', 'Teammate can also create of an Event Tabulation or Election, it can also add criteria, judges, participants in the event, can monitor the actual event tabulation, can also communicate with the service chat .', '2021-06-13 02:05:44', '2021-06-13 02:05:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Zedpoge', '2021-06-13 03:09:41', '2021-06-13 03:09:41', NULL),
(2, 'z2', '2021-06-13 19:38:51', '2021-06-13 19:38:51', NULL),
(3, 'Ignatius Love', '2021-06-15 08:45:28', '2021-06-15 08:45:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE `titles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `status_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `score_min` int(11) NOT NULL,
  `score_max` int(11) NOT NULL,
  `basetype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `titles`
--

INSERT INTO `titles` (`id`, `status`, `status_2`, `title`, `slug`, `location`, `date`, `score_min`, `score_max`, `basetype`, `description`, `created_at`, `updated_at`, `deleted_at`, `team_id`) VALUES
(1, 0, 'true', 'Tabulation System 101', 'tabulation-2021', NULL, NULL, 1, 100, 'single', NULL, '2021-06-15 06:22:41', '2021-06-19 08:27:27', NULL, NULL),
(2, 0, 'true', 'TABULATION SYSTEM', 'TABULATION-SYSTEM', NULL, NULL, 1, 100, 'single', NULL, '2021-06-16 03:52:34', '2021-06-16 03:52:34', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `verified` tinyint(1) DEFAULT 0,
  `verified_at` datetime DEFAULT NULL,
  `verification_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved` tinyint(1) DEFAULT 0,
  `two_factor` tinyint(1) DEFAULT 0,
  `two_factor_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_expires_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `verified`, `verified_at`, `verification_token`, `password`, `approved`, `two_factor`, `two_factor_code`, `remember_token`, `two_factor_expires_at`, `created_at`, `updated_at`, `deleted_at`, `team_id`) VALUES
(1, 'Merson Taguiam', 'admin@admin.com', NULL, 1, '2021-05-28 14:58:55', '', '$2y$10$U4oqBH/GnXFDnmJ4KJ7uk.O1KFajBYxG9l///LwYghtWc9z5wFnBq', 1, 0, '', NULL, NULL, NULL, '2021-06-13 02:01:52', NULL, NULL),
(2, 'Manager poge', 'zedpoge@bambase.com', NULL, 1, '2021-06-13 11:09:52', NULL, '$2y$10$ZOU7OMLaMuZVie57arArQO9wWW3T2QsrxM46crY0w4fbkVToz0BD.', 1, 0, NULL, NULL, NULL, '2021-06-13 03:09:30', '2021-06-13 03:10:17', NULL, 1),
(3, 'Manager 2 poge 2', 'manager2@manager2.com', NULL, 1, '2021-06-14 03:38:43', NULL, '$2y$10$rANOxkqiPK36NwhJGJ/CC.zrT0ZbFBsBadhWrBc681FbmRwed0lCW', 1, 0, NULL, NULL, NULL, '2021-06-13 19:38:43', '2021-06-13 19:38:43', NULL, 1),
(4, 'Yuri Jensen', 'nozulan@mailinator.com', NULL, 0, NULL, 'zpBNVNfsLbPiFw7BtmPbSgZnWsg3dbDBeB1rl1D6JiVqsYPJr2tBk9tRpPY8gUL9', '$2y$10$yW8xh/NLha.DzgUxXGIe0eeiBx3yWS6DfnI/l/xuM4Drlpe3USSue', 0, 0, NULL, NULL, NULL, '2021-06-15 08:45:21', '2021-06-15 08:45:28', NULL, 3),
(5, 'Clark Frye', 'mepelugex@mailinator.com', NULL, 1, '2021-06-16 03:20:02', NULL, '$2y$10$qXg/DCiGcOao3.IQx/Ul2egfHEn8fYdkLSAY/nsdsIqCc2wOXnZ3m', 1, 0, NULL, NULL, NULL, '2021-06-15 19:20:02', '2021-06-15 19:20:02', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_alerts`
--

CREATE TABLE `user_alerts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `alert_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alert_link` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_user_alert`
--

CREATE TABLE `user_user_alert` (
  `user_alert_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `votersid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Male',
  `age` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `organization_id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `status`, `votersid`, `name`, `address`, `gender`, `age`, `email`, `contact`, `description`, `created_at`, `updated_at`, `deleted_at`, `organization_id`, `team_id`) VALUES
(1, 'true', 'T06VLEL1B91J', 'Basil Levine', 'Totam deserunt qui v', 'Male', 58, 'piwukiqamu@mailinator.com', 'Sint repudiandae ea', 'In obcaecati mollit', '2021-06-13 03:21:55', '2021-06-14 06:45:24', NULL, 1, 1),
(2, 'true', 'OMIP39ZSZI5I', 'Ira Strickland', 'Recusandae Sint qui', 'Male', 13, 'tokohu@mailinator.com', 'Vel eligendi dolorem', 'Consequatur Obcaeca', '2021-06-13 03:22:07', '2021-06-13 06:10:42', NULL, 1, 1),
(3, 'true', 'PHWJJL8G23IB', 'Florence Baker', 'Suscipit ut asperior', 'Male', 50, 'jume@mailinator.com', 'Eaque et tempor nisi', 'Est et do ullamco v', '2021-06-14 10:17:14', '2021-06-14 10:17:46', NULL, 1, NULL),
(4, 'false', NULL, 'Zed1', NULL, 'Male', NULL, 'zed1@24hinbox.com', NULL, NULL, NULL, '2021-06-15 08:11:49', '2021-06-15 08:11:49', 2, NULL),
(5, 'false', NULL, 'Zed2', NULL, 'Male', NULL, 'zed2@24hinbox.com', NULL, NULL, NULL, '2021-06-15 08:11:49', '2021-06-15 08:11:49', 2, NULL),
(6, 'false', NULL, 'Zed3', NULL, 'Male', NULL, 'zed3@24hinbox.com', NULL, NULL, NULL, '2021-06-15 08:11:49', '2021-06-15 08:11:49', 2, NULL),
(7, 'false', NULL, 'Zed4', NULL, 'Male', NULL, 'zed4@24hinbox.com', NULL, NULL, NULL, '2021-06-15 08:11:49', '2021-06-15 08:11:49', 2, NULL),
(8, 'false', NULL, 'Zed5', NULL, 'Male', NULL, 'zed5@24hinbox.com', NULL, NULL, NULL, '2021-06-15 08:11:49', '2021-06-15 08:11:49', 2, NULL),
(9, 'false', NULL, 'Zed1', NULL, 'Male', NULL, 'zed1@24hinbox.com', NULL, NULL, NULL, '2021-06-15 08:11:49', '2021-06-15 08:11:49', 2, NULL),
(10, 'false', NULL, 'Zed2', NULL, 'Male', NULL, 'zed2@24hinbox.com', NULL, NULL, NULL, '2021-06-15 08:11:49', '2021-06-15 08:11:49', 2, NULL),
(11, 'false', NULL, 'Zed3', NULL, 'Male', NULL, 'zed3@24hinbox.com', NULL, NULL, NULL, '2021-06-15 08:11:49', '2021-06-15 08:11:49', 2, NULL),
(12, 'false', NULL, 'Zed4', NULL, 'Male', NULL, 'zed4@24hinbox.com', NULL, NULL, NULL, '2021-06-15 08:11:49', '2021-06-15 08:11:49', 2, NULL),
(13, 'false', NULL, 'Zed5', NULL, 'Male', NULL, 'zed5@24hinbox.com', NULL, NULL, NULL, '2021-06-15 08:11:49', '2021-06-15 08:11:49', 2, NULL),
(14, 'false', NULL, 'Zed1', NULL, 'Male', NULL, 'zed1@24hinbox.com', NULL, NULL, NULL, '2021-06-15 08:13:16', '2021-06-15 08:13:16', 2, NULL),
(15, 'false', NULL, 'Zed2', NULL, 'Male', NULL, 'zed2@24hinbox.com', NULL, NULL, NULL, '2021-06-15 08:13:16', '2021-06-15 08:13:16', 2, NULL),
(16, 'false', NULL, 'Zed3', NULL, 'Male', NULL, 'zed3@24hinbox.com', NULL, NULL, NULL, '2021-06-15 08:13:16', '2021-06-15 08:13:16', 2, NULL),
(17, 'false', NULL, 'Zed4', NULL, 'Male', NULL, 'zed4@24hinbox.com', NULL, NULL, NULL, '2021-06-15 08:13:16', '2021-06-15 08:13:16', 2, NULL),
(18, 'false', NULL, 'Zed5', NULL, 'Male', NULL, 'zed5@24hinbox.com', NULL, NULL, NULL, '2021-06-15 08:13:16', '2021-06-15 08:13:16', 2, NULL),
(19, 'false', NULL, 'Zed1', NULL, 'Male', NULL, 'zed1@24hinbox.com', NULL, NULL, NULL, '2021-06-15 08:13:16', '2021-06-15 08:13:16', 2, NULL),
(20, 'false', NULL, 'Zed2', NULL, 'Male', NULL, 'zed2@24hinbox.com', NULL, NULL, NULL, '2021-06-15 08:13:16', '2021-06-15 08:13:16', 2, NULL),
(21, 'false', NULL, 'Zed3', NULL, 'Male', NULL, 'zed3@24hinbox.com', NULL, NULL, NULL, '2021-06-15 08:13:16', '2021-06-15 08:13:16', 2, NULL),
(22, 'false', NULL, 'Zed4', NULL, 'Male', NULL, 'zed4@24hinbox.com', NULL, NULL, NULL, '2021-06-15 08:13:16', '2021-06-15 08:13:16', 2, NULL),
(23, 'false', NULL, 'Zed5', NULL, 'Male', NULL, 'zed5@24hinbox.com', NULL, NULL, NULL, '2021-06-15 08:13:16', '2021-06-15 08:13:16', 2, NULL),
(24, 'true', 'US2VUBJTF2FP', 'Zed1', NULL, 'Male', NULL, 'zed1@24hinbox.com', NULL, NULL, NULL, '2021-06-19 10:21:47', NULL, 1, NULL),
(25, 'false', '1NTA4RLI3AC9', 'Zed2', NULL, 'Male', NULL, 'zed2@24hinbox.com', NULL, NULL, NULL, '2021-06-15 08:13:47', NULL, 1, NULL),
(26, 'false', 'R6H3G54XOQ6B', 'Zed3', NULL, 'Male', NULL, 'zed3@24hinbox.com', NULL, NULL, NULL, '2021-06-15 08:13:47', NULL, 1, NULL),
(27, 'false', 'B5ZCKIMRS1JU', 'Zed4', NULL, 'Male', NULL, 'zed4@24hinbox.com', NULL, NULL, NULL, '2021-06-15 08:13:47', NULL, 1, NULL),
(28, 'false', 'GZ0TFT3CY1WO', 'Zed5', NULL, 'Male', NULL, 'zed5@24hinbox.com', NULL, NULL, NULL, '2021-06-15 08:13:47', NULL, 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audit_voters`
--
ALTER TABLE `audit_voters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `organization_fk_4149507` (`organization_id`),
  ADD KEY `position_fk_4149508` (`position_id`),
  ADD KEY `candidate_fk_4149509` (`candidate_id`),
  ADD KEY `voter_fk_4149510` (`voter_id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `organization_fk_4015597` (`organization_id`),
  ADD KEY `partylist_fk_4015598` (`partylist_id`),
  ADD KEY `position_fk_4015603` (`position_id`),
  ADD KEY `team_fk_4015602` (`team_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title_fk_4015643` (`title_id`),
  ADD KEY `team_fk_4015650` (`team_id`);

--
-- Indexes for table `criteria`
--
ALTER TABLE `criteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title_fk_4015654` (`title_id`),
  ADD KEY `category_fk_4015659` (`category_id`),
  ADD KEY `team_fk_4015658` (`team_id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homepages`
--
ALTER TABLE `homepages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `judges`
--
ALTER TABLE `judges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title_fk_4015665` (`title_id`),
  ADD KEY `team_fk_4015678` (`team_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `organizations_slug_unique` (`slug`),
  ADD KEY `team_fk_4015574` (`team_id`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title_fk_4015681` (`title_id`),
  ADD KEY `team_fk_4016521` (`team_id`);

--
-- Indexes for table `partylists`
--
ALTER TABLE `partylists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `organization_fk_4015594` (`organization_id`),
  ADD KEY `team_fk_4015593` (`team_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `role_id_fk_4015481` (`role_id`),
  ADD KEY `permission_id_fk_4015481` (`permission_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `organization_fk_4015578` (`organization_id`),
  ADD KEY `team_fk_4015584` (`team_id`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qa_messages`
--
ALTER TABLE `qa_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `qa_messages_topic_id_foreign` (`topic_id`),
  ADD KEY `qa_messages_sender_id_foreign` (`sender_id`);

--
-- Indexes for table `qa_topics`
--
ALTER TABLE `qa_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `qa_topics_creator_id_foreign` (`creator_id`),
  ADD KEY `qa_topics_receiver_id_foreign` (`receiver_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner_fk_4015544` (`owner_id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `user_id_fk_4015697` (`user_id`),
  ADD KEY `role_id_fk_4015697` (`role_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `titles_slug_unique` (`slug`),
  ADD KEY `team_fk_4015640` (`team_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `team_fk_4015543` (`team_id`);

--
-- Indexes for table `user_alerts`
--
ALTER TABLE `user_alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_user_alert`
--
ALTER TABLE `user_user_alert`
  ADD KEY `user_alert_id_fk_4015530` (`user_alert_id`),
  ADD KEY `user_id_fk_4015530` (`user_id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `organization_fk_4015612` (`organization_id`),
  ADD KEY `team_fk_4015624` (`team_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `audit_voters`
--
ALTER TABLE `audit_voters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `criteria`
--
ALTER TABLE `criteria`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `homepages`
--
ALTER TABLE `homepages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `judges`
--
ALTER TABLE `judges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `partylists`
--
ALTER TABLE `partylists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `qa_messages`
--
ALTER TABLE `qa_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qa_topics`
--
ALTER TABLE `qa_topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `titles`
--
ALTER TABLE `titles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_alerts`
--
ALTER TABLE `user_alerts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `audit_voters`
--
ALTER TABLE `audit_voters`
  ADD CONSTRAINT `candidate_fk_4149509` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`),
  ADD CONSTRAINT `organization_fk_4149507` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`),
  ADD CONSTRAINT `position_fk_4149508` FOREIGN KEY (`position_id`) REFERENCES `positions` (`id`),
  ADD CONSTRAINT `voter_fk_4149510` FOREIGN KEY (`voter_id`) REFERENCES `voters` (`id`);

--
-- Constraints for table `candidates`
--
ALTER TABLE `candidates`
  ADD CONSTRAINT `organization_fk_4015597` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`),
  ADD CONSTRAINT `partylist_fk_4015598` FOREIGN KEY (`partylist_id`) REFERENCES `partylists` (`id`),
  ADD CONSTRAINT `position_fk_4015603` FOREIGN KEY (`position_id`) REFERENCES `positions` (`id`),
  ADD CONSTRAINT `team_fk_4015602` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `team_fk_4015650` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`),
  ADD CONSTRAINT `title_fk_4015643` FOREIGN KEY (`title_id`) REFERENCES `titles` (`id`);

--
-- Constraints for table `criteria`
--
ALTER TABLE `criteria`
  ADD CONSTRAINT `category_fk_4015659` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `team_fk_4015658` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`),
  ADD CONSTRAINT `title_fk_4015654` FOREIGN KEY (`title_id`) REFERENCES `titles` (`id`);

--
-- Constraints for table `judges`
--
ALTER TABLE `judges`
  ADD CONSTRAINT `team_fk_4015678` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`),
  ADD CONSTRAINT `title_fk_4015665` FOREIGN KEY (`title_id`) REFERENCES `titles` (`id`);

--
-- Constraints for table `organizations`
--
ALTER TABLE `organizations`
  ADD CONSTRAINT `team_fk_4015574` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);

--
-- Constraints for table `participants`
--
ALTER TABLE `participants`
  ADD CONSTRAINT `team_fk_4016521` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`),
  ADD CONSTRAINT `title_fk_4015681` FOREIGN KEY (`title_id`) REFERENCES `titles` (`id`);

--
-- Constraints for table `partylists`
--
ALTER TABLE `partylists`
  ADD CONSTRAINT `organization_fk_4015594` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`),
  ADD CONSTRAINT `team_fk_4015593` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_id_fk_4015481` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_id_fk_4015481` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `positions`
--
ALTER TABLE `positions`
  ADD CONSTRAINT `organization_fk_4015578` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`),
  ADD CONSTRAINT `team_fk_4015584` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);

--
-- Constraints for table `qa_messages`
--
ALTER TABLE `qa_messages`
  ADD CONSTRAINT `qa_messages_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `qa_messages_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `qa_topics` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `qa_topics`
--
ALTER TABLE `qa_topics`
  ADD CONSTRAINT `qa_topics_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `qa_topics_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `owner_fk_4015544` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_id_fk_4015697` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id_fk_4015697` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `titles`
--
ALTER TABLE `titles`
  ADD CONSTRAINT `team_fk_4015640` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `team_fk_4015543` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);

--
-- Constraints for table `user_user_alert`
--
ALTER TABLE `user_user_alert`
  ADD CONSTRAINT `user_alert_id_fk_4015530` FOREIGN KEY (`user_alert_id`) REFERENCES `user_alerts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id_fk_4015530` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `voters`
--
ALTER TABLE `voters`
  ADD CONSTRAINT `organization_fk_4015612` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`),
  ADD CONSTRAINT `team_fk_4015624` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
