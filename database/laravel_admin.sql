-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  lun. 18 jan. 2021 à 22:19
-- Version du serveur :  10.4.8-MariaDB
-- Version de PHP :  7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `laravel_admin`
--

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2021_01_14_213533_create_roles_table', 1),
(10, '2021_01_14_233030_add_role_id_to_user_table', 1),
(11, '2021_01_15_132924_create_products_table', 2),
(12, '2021_01_16_131154_create_order_table', 3),
(13, '2021_01_16_131429_create_order_item_table', 3),
(14, '2021_01_16_173322_create_permissions_table', 4),
(15, '2021_01_16_173544_create_role_permission_table', 4);

-- --------------------------------------------------------

--
-- Structure de la table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('49244927ab61844e39b602bb01a00997e5be8ccc6d0878736a3516de0873be004670fde384eeb988', 3, 1, 'admin', '[]', 0, '2021-01-14 23:34:34', '2021-01-14 23:34:34', '2022-01-15 00:34:34'),
('5a8d9f1fd6d2ba42b12f0197a02c859b4835d57bb0d9c9c833b1818c33a7883976d1d3a105bc1406', 3, 1, 'admin', '[]', 0, '2021-01-16 22:37:22', '2021-01-16 22:37:22', '2022-01-16 23:37:22'),
('8ab079c236ab9f1410bc5b2ba8e98cf910385d4f8ec5ae6440ff54df1bee12cef2625d8f1a769209', 24, 1, 'admin', '[]', 0, '2021-01-16 22:42:08', '2021-01-16 22:42:08', '2022-01-16 23:42:08'),
('8c3f5212346001ac28cdad7eb4f307ff94e826124d822af13959f3a984034322d8cc746776858087', 3, 1, 'admin', '[]', 0, '2021-01-15 21:37:13', '2021-01-15 21:37:13', '2022-01-15 22:37:13'),
('aaae602779f5e921150ed2c11c17de2852f9b95e5f97c339373ceff9c7ad9b0aae6255396b761f59', 2, 1, 'admin', '[]', 0, '2021-01-16 22:40:24', '2021-01-16 22:40:24', '2022-01-16 23:40:24');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'xQa3RYACDo59kyt95igQLflBSXWRkfa0DnrtYIaE', NULL, 'http://localhost', 1, 0, 0, '2021-01-14 23:34:14', '2021-01-14 23:34:14'),
(2, NULL, 'Laravel Password Grant Client', 'TKo2N35fbdcWcl0PNuYfeQfuuLhDSbFGuZniGUZl', 'users', 'http://localhost', 0, 1, 0, '2021-01-14 23:34:15', '2021-01-14 23:34:15');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-01-14 23:34:14', '2021-01-14 23:34:14');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `first_name`, `last_name`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Arnoldo', 'Hills', 'hmarks@koss.org', '2021-01-16 12:44:18', '2021-01-16 12:44:18'),
(2, 'Kelton', 'Emmerich', 'kunze.easton@gmail.com', '2021-01-16 12:44:18', '2021-01-16 12:44:18'),
(3, 'Shaina', 'Legros', 'zgleichner@moen.com', '2021-01-16 12:44:18', '2021-01-16 12:44:18'),
(4, 'Felipe', 'Jacobson', 'jalen57@yahoo.com', '2021-01-16 12:44:18', '2021-01-16 12:44:18'),
(5, 'Anastacio', 'Collins', 'sipes.erwin@rice.com', '2021-01-16 12:44:18', '2021-01-16 12:44:18'),
(6, 'Nayeli', 'Lynch', 'fae.hintz@yahoo.com', '2021-01-16 12:44:18', '2021-01-16 12:44:18'),
(7, 'Don', 'Towne', 'urunte@heathcote.org', '2021-01-16 12:44:18', '2021-01-16 12:44:18'),
(8, 'Hope', 'Gislason', 'purdy.armand@schmidt.com', '2021-01-16 12:44:18', '2021-01-16 12:44:18'),
(9, 'Edgardo', 'Conn', 'audie01@yahoo.com', '2021-01-16 12:44:18', '2021-01-16 12:44:18'),
(10, 'Merritt', 'Kreiger', 'consuelo.volkman@yahoo.com', '2021-01-16 12:44:18', '2021-01-16 12:44:18'),
(11, 'Edmond', 'Barton', 'nolan66@zboncak.biz', '2021-01-16 12:44:18', '2021-01-16 12:44:18'),
(12, 'Brooks', 'Beahan', 'vcrooks@waelchi.net', '2021-01-16 12:44:18', '2021-01-16 12:44:18'),
(13, 'Jane', 'Hand', 'buckridge.madyson@stiedemann.com', '2021-01-16 12:44:18', '2021-01-16 12:44:18'),
(14, 'Maeve', 'Beier', 'anthony81@gmail.com', '2021-01-16 12:44:18', '2021-01-16 12:44:18'),
(15, 'Celine', 'Kuhn', 'aliyah36@hotmail.com', '2021-01-16 12:44:18', '2021-01-16 12:44:18'),
(16, 'Winston', 'Huel', 'luigi.beier@hotmail.com', '2021-01-16 12:44:18', '2021-01-16 12:44:18'),
(17, 'Henriette', 'Harvey', 'hagenes.vidal@zboncak.net', '2021-01-16 12:44:18', '2021-01-16 12:44:18'),
(18, 'Karl', 'Vandervort', 'elisha.hackett@gmail.com', '2021-01-16 12:44:18', '2021-01-16 12:44:18'),
(19, 'Devyn', 'Schamberger', 'prohaska.hilma@hotmail.com', '2021-01-16 12:44:19', '2021-01-16 12:44:19'),
(20, 'Abel', 'Greenholt', 'lafayette.effertz@hotmail.com', '2021-01-16 12:44:19', '2021-01-16 12:44:19'),
(21, 'Nathan', 'Reichel', 'srau@gmail.com', '2021-01-16 12:44:19', '2021-01-16 12:44:19'),
(22, 'Vicente', 'Jaskolski', 'wunsch.dorcas@gmail.com', '2021-01-16 12:44:19', '2021-01-16 12:44:19'),
(23, 'Brain', 'Feeney', 'sharris@yahoo.com', '2021-01-16 12:44:19', '2021-01-16 12:44:19'),
(24, 'Colton', 'Fritsch', 'hjacobson@leuschke.com', '2021-01-16 12:44:19', '2021-01-16 12:44:19'),
(25, 'Judson', 'VonRueden', 'gswift@yahoo.com', '2021-01-16 12:44:19', '2021-01-16 12:44:19'),
(26, 'Camylle', 'Ryan', 'kohler.christop@nikolaus.com', '2021-01-16 12:44:19', '2021-01-16 12:44:19'),
(27, 'Clovis', 'Nolan', 'tanya.mckenzie@hotmail.com', '2021-01-16 12:44:19', '2021-01-16 12:44:19'),
(28, 'Demario', 'Haley', 'moore.dahlia@smith.biz', '2021-01-16 12:44:19', '2021-01-16 12:44:19'),
(29, 'Ettie', 'Nikolaus', 'katherine68@gmail.com', '2021-01-16 12:44:19', '2021-01-16 12:44:19'),
(30, 'Erich', 'Oberbrunner', 'jayda78@mayer.org', '2021-01-16 12:44:19', '2021-01-16 12:44:19'),
(31, 'Oren', 'Buckridge', 'wyman.hilario@bruen.com', '2021-01-16 12:44:52', '2021-01-16 12:44:52'),
(32, 'Milford', 'Kiehn', 'julien62@simonis.com', '2021-01-16 12:44:52', '2021-01-16 12:44:52'),
(33, 'Francisca', 'Friesen', 'ddare@hotmail.com', '2021-01-16 12:44:52', '2021-01-16 12:44:52'),
(34, 'Nathan', 'King', 'roob.patsy@von.com', '2021-01-16 12:44:52', '2021-01-16 12:44:52'),
(35, 'Misael', 'Emard', 'hamill.nicholaus@gutkowski.com', '2021-01-16 12:44:52', '2021-01-16 12:44:52'),
(36, 'Luis', 'Rosenbaum', 'clifford30@gmail.com', '2021-01-16 12:44:52', '2021-01-16 12:44:52'),
(37, 'Braxton', 'Kilback', 'rkris@hodkiewicz.biz', '2021-01-16 12:44:52', '2021-01-16 12:44:52'),
(38, 'Alf', 'Corwin', 'wanda.spencer@robel.info', '2021-01-16 12:44:52', '2021-01-16 12:44:52'),
(39, 'Jacinto', 'Waelchi', 'lilla.schinner@kuhlman.com', '2021-01-16 12:44:52', '2021-01-16 12:44:52'),
(40, 'Odessa', 'Bernhard', 'wgreenholt@mraz.com', '2021-01-16 12:44:52', '2021-01-16 12:44:52'),
(41, 'Sherwood', 'Cummerata', 'xhalvorson@yahoo.com', '2021-01-16 12:44:52', '2021-01-16 12:44:52'),
(42, 'Michael', 'Green', 'kelvin52@rath.info', '2021-01-16 12:44:52', '2021-01-16 12:44:52'),
(43, 'Eugenia', 'Huel', 'pacocha.brianne@gmail.com', '2021-01-16 12:44:52', '2021-01-16 12:44:52'),
(44, 'Jett', 'Mohr', 'bstamm@larson.com', '2021-01-16 12:44:52', '2021-01-16 12:44:52'),
(45, 'Reyna', 'Lang', 'jaiden.stehr@marks.biz', '2021-01-16 12:44:52', '2021-01-16 12:44:52'),
(46, 'Amanda', 'Gorczany', 'yokon@hotmail.com', '2021-01-16 12:44:52', '2021-01-16 12:44:52'),
(47, 'Ramiro', 'Haag', 'rogahn.elise@watsica.com', '2021-01-16 12:44:52', '2021-01-16 12:44:52'),
(48, 'Sydnie', 'Bauch', 'maybell.lebsack@kuphal.info', '2021-01-16 12:44:52', '2021-01-16 12:44:52'),
(49, 'Emil', 'Jones', 'goyette.ryan@gmail.com', '2021-01-16 12:44:52', '2021-01-16 12:44:52'),
(50, 'Harold', 'Flatley', 'vkoch@gmail.com', '2021-01-16 12:44:52', '2021-01-16 12:44:52'),
(51, 'Rasheed', 'Stiedemann', 'clement.pouros@herzog.biz', '2021-01-16 12:44:52', '2021-01-16 12:44:52'),
(52, 'Keshawn', 'Flatley', 'kailey62@barrows.com', '2021-01-16 12:44:53', '2021-01-16 12:44:53'),
(53, 'Braden', 'Grant', 'ruthie02@gmail.com', '2021-01-16 12:44:53', '2021-01-16 12:44:53'),
(54, 'Bessie', 'Funk', 'djacobson@hotmail.com', '2021-01-16 12:44:53', '2021-01-16 12:44:53'),
(55, 'Guadalupe', 'Thiel', 'melody90@kulas.net', '2021-01-16 12:44:53', '2021-01-16 12:44:53'),
(56, 'Dayana', 'Flatley', 'ogleichner@legros.com', '2021-01-16 12:44:53', '2021-01-16 12:44:53'),
(57, 'Leonel', 'Wunsch', 'pfeffer.jayde@hotmail.com', '2021-01-16 12:44:53', '2021-01-16 12:44:53'),
(58, 'Quinn', 'Shanahan', 'jokeefe@roberts.com', '2021-01-16 12:44:53', '2021-01-16 12:44:53'),
(59, 'Corrine', 'Stokes', 'nigel59@schimmel.net', '2021-01-16 12:44:53', '2021-01-16 12:44:53'),
(60, 'Chauncey', 'Grimes', 'bgrady@brekke.info', '2021-01-16 12:44:53', '2021-01-16 12:44:53'),
(61, 'Shanon', 'Renner', 'elta.daugherty@becker.com', '2021-01-16 16:45:47', '2021-01-16 16:45:47'),
(62, 'Dario', 'Murazik', 'louisa.king@hotmail.com', '2021-01-16 16:45:47', '2021-01-16 16:45:47'),
(63, 'Jack', 'Renner', 'melyna.altenwerth@yahoo.com', '2021-01-16 16:45:47', '2021-01-16 16:45:47'),
(64, 'Destinee', 'Lind', 'yzieme@armstrong.net', '2021-01-16 16:45:47', '2021-01-16 16:45:47'),
(65, 'Garnet', 'Willms', 'flubowitz@yahoo.com', '2021-01-16 16:45:47', '2021-01-16 16:45:47'),
(66, 'Alvina', 'Daniel', 'selena06@yahoo.com', '2021-01-16 16:45:47', '2021-01-16 16:45:47'),
(67, 'Edgardo', 'Douglas', 'sharon.mraz@bartell.com', '2021-01-16 16:45:47', '2021-01-16 16:45:47'),
(68, 'Margarett', 'Kunze', 'koss.raymond@hotmail.com', '2021-01-16 16:45:47', '2021-01-16 16:45:47'),
(69, 'Jonathan', 'Grant', 'lzemlak@gmail.com', '2021-01-16 16:45:47', '2021-01-16 16:45:47'),
(70, 'Kelli', 'Wilderman', 'kkutch@daugherty.info', '2021-01-16 16:45:47', '2021-01-16 16:45:47'),
(71, 'Freida', 'Ratke', 'mnikolaus@cartwright.biz', '2021-01-16 16:45:47', '2021-01-16 16:45:47'),
(72, 'Alfreda', 'Casper', 'mia.murphy@ernser.net', '2021-01-16 16:45:47', '2021-01-16 16:45:47'),
(73, 'Joesph', 'McDermott', 'melody.dubuque@yahoo.com', '2021-01-16 16:45:47', '2021-01-16 16:45:47'),
(74, 'Buddy', 'Dach', 'rachael.eichmann@gorczany.com', '2021-01-16 16:45:47', '2021-01-16 16:45:47'),
(75, 'Robb', 'Block', 'grady55@gmail.com', '2021-01-16 16:45:47', '2021-01-16 16:45:47'),
(76, 'Patricia', 'Raynor', 'katelynn.simonis@gmail.com', '2021-01-16 16:45:48', '2021-01-16 16:45:48'),
(77, 'Tyrel', 'Beier', 'delbert.johns@gmail.com', '2021-01-16 16:45:48', '2021-01-16 16:45:48'),
(78, 'Frieda', 'Kuphal', 'dane.hamill@yahoo.com', '2021-01-16 16:45:48', '2021-01-16 16:45:48'),
(79, 'Zoie', 'Klein', 'ycrist@beahan.net', '2021-01-16 16:45:48', '2021-01-16 16:45:48'),
(80, 'Gunner', 'Schmeler', 'block.kimberly@johnson.biz', '2021-01-16 16:45:48', '2021-01-16 16:45:48'),
(81, 'Jaunita', 'Greenholt', 'yazmin33@okuneva.biz', '2021-01-16 16:45:48', '2021-01-16 16:45:48'),
(82, 'Lynn', 'Ullrich', 'raufderhar@yahoo.com', '2021-01-16 16:45:48', '2021-01-16 16:45:48'),
(83, 'Roselyn', 'Dibbert', 'williamson.august@runolfsson.com', '2021-01-16 16:45:48', '2021-01-16 16:45:48'),
(84, 'Sabrina', 'Murazik', 'dhettinger@hotmail.com', '2021-01-16 16:45:48', '2021-01-16 16:45:48'),
(85, 'Ernesto', 'Legros', 'jbrekke@hotmail.com', '2021-01-16 16:45:48', '2021-01-16 16:45:48'),
(86, 'Antonia', 'Luettgen', 'phyllis.christiansen@gmail.com', '2021-01-16 16:45:48', '2021-01-16 16:45:48'),
(87, 'Erick', 'Mante', 'maida10@morissette.biz', '2021-01-16 16:45:48', '2021-01-16 16:45:48'),
(88, 'Destany', 'Littel', 'heloise63@kozey.org', '2021-01-16 16:45:48', '2021-01-16 16:45:48'),
(89, 'Nestor', 'Stark', 'bartell.lilliana@gmail.com', '2021-01-16 16:45:48', '2021-01-16 16:45:48'),
(90, 'Diamond', 'Swift', 'wade.stiedemann@ernser.com', '2021-01-16 16:45:48', '2021-01-16 16:45:48'),
(91, 'Adriel', 'Keebler', 'jmorar@yahoo.com', '2021-01-16 16:46:24', '2021-01-16 16:46:24'),
(92, 'Kirstin', 'Pfeffer', 'qfriesen@hotmail.com', '2021-01-16 16:46:24', '2021-01-16 16:46:24'),
(93, 'Caroline', 'Koss', 'caroline.welch@hotmail.com', '2021-01-16 16:46:24', '2021-01-16 16:46:24'),
(94, 'Price', 'Hane', 'immanuel.mcdermott@erdman.org', '2021-01-16 16:46:24', '2021-01-16 16:46:24'),
(95, 'Brock', 'Lakin', 'rstiedemann@yost.org', '2021-01-16 16:46:25', '2021-01-16 16:46:25'),
(96, 'Susan', 'Kemmer', 'dgoodwin@hotmail.com', '2021-01-16 16:46:25', '2021-01-16 16:46:25'),
(97, 'Karli', 'Stark', 'grant.else@yahoo.com', '2021-01-16 16:46:25', '2021-01-16 16:46:25'),
(98, 'Judson', 'Schimmel', 'oda.farrell@yahoo.com', '2021-01-16 16:46:25', '2021-01-16 16:46:25'),
(99, 'Garett', 'Reichert', 'aisha.mcdermott@gmail.com', '2021-01-16 16:46:25', '2021-01-16 16:46:25'),
(100, 'Clinton', 'Wintheiser', 'wjacobs@streich.com', '2021-01-16 16:46:25', '2021-01-16 16:46:25'),
(101, 'Kristoffer', 'Hudson', 'jada.gerlach@hotmail.com', '2021-01-16 16:46:25', '2021-01-16 16:46:25'),
(102, 'Emmalee', 'Thiel', 'doyle.dariana@hotmail.com', '2021-01-16 16:46:25', '2021-01-16 16:46:25'),
(103, 'Schuyler', 'Kemmer', 'glenda.johnston@heaney.net', '2021-01-16 16:46:25', '2021-01-16 16:46:25'),
(104, 'Joany', 'Crooks', 'cydney21@luettgen.org', '2021-01-16 16:46:25', '2021-01-16 16:46:25'),
(105, 'Perry', 'Powlowski', 'bednar.roscoe@gmail.com', '2021-01-16 16:46:25', '2021-01-16 16:46:25'),
(106, 'Ashly', 'Bogisich', 'isobel17@yahoo.com', '2021-01-16 16:46:25', '2021-01-16 16:46:25'),
(107, 'Efren', 'West', 'lbeahan@yahoo.com', '2021-01-16 16:46:25', '2021-01-16 16:46:25'),
(108, 'Cecil', 'Kiehn', 'makayla.hansen@botsford.com', '2021-01-16 16:46:25', '2021-01-16 16:46:25'),
(109, 'Lonzo', 'Torphy', 'tillman.eloise@padberg.com', '2021-01-16 16:46:25', '2021-01-16 16:46:25'),
(110, 'Ethyl', 'Marquardt', 'tamia.considine@yahoo.com', '2021-01-16 16:46:25', '2021-01-16 16:46:25'),
(111, 'Jonathon', 'Lynch', 'little.mollie@olson.com', '2021-01-16 16:46:25', '2021-01-16 16:46:25'),
(112, 'Katarina', 'Anderson', 'wunsch.jade@carter.com', '2021-01-16 16:46:25', '2021-01-16 16:46:25'),
(113, 'Alba', 'Marks', 'bashirian.dortha@murphy.net', '2021-01-16 16:46:26', '2021-01-16 16:46:26'),
(114, 'Sydney', 'Hackett', 'cassidy74@yahoo.com', '2021-01-16 16:46:26', '2021-01-16 16:46:26'),
(115, 'Art', 'Cronin', 'collins.mozelle@miller.com', '2021-01-16 16:46:26', '2021-01-16 16:46:26'),
(116, 'Abner', 'Kulas', 'littel.vernie@predovic.com', '2021-01-16 16:46:26', '2021-01-16 16:46:26'),
(117, 'Beverly', 'Treutel', 'violet.torp@gmail.com', '2021-01-16 16:46:26', '2021-01-16 16:46:26'),
(118, 'Lawson', 'Swift', 'stehr.gage@yahoo.com', '2021-01-16 16:46:26', '2021-01-16 16:46:26'),
(119, 'Hazel', 'Blanda', 'vconsidine@hotmail.com', '2021-01-16 16:46:26', '2021-01-16 16:46:26'),
(120, 'Abdiel', 'Schmitt', 'zbarrows@friesen.com', '2021-01-16 16:46:26', '2021-01-16 16:46:26');

-- --------------------------------------------------------

--
-- Structure de la table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_title`, `price`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 31, 'Quia corrupti ducimus ex.', '44.00', 2, '2021-01-16 12:44:53', '2021-01-16 12:44:53'),
(2, 31, 'Numquam et vel non omnis.', '41.00', 2, '2021-01-16 12:44:53', '2021-01-16 12:44:53'),
(3, 31, 'Velit non non est.', '53.00', 1, '2021-01-16 12:44:53', '2021-01-16 12:44:53'),
(4, 31, 'Nam cupiditate quia corporis.', '97.00', 2, '2021-01-16 12:44:53', '2021-01-16 12:44:53'),
(5, 32, 'Sunt in dolorem placeat.', '11.00', 2, '2021-01-16 12:44:53', '2021-01-16 12:44:53'),
(6, 32, 'Labore aut saepe mollitia.', '49.00', 3, '2021-01-16 12:44:53', '2021-01-16 12:44:53'),
(7, 33, 'Qui nulla ipsum qui amet.', '75.00', 2, '2021-01-16 12:44:53', '2021-01-16 12:44:53'),
(8, 33, 'Odit culpa similique ut qui.', '49.00', 3, '2021-01-16 12:44:53', '2021-01-16 12:44:53'),
(9, 33, 'Minus placeat non omnis.', '88.00', 5, '2021-01-16 12:44:53', '2021-01-16 12:44:53'),
(10, 33, 'Dolor deserunt eum quo.', '63.00', 2, '2021-01-16 12:44:53', '2021-01-16 12:44:53'),
(11, 34, 'Magnam sit fugiat placeat id.', '63.00', 4, '2021-01-16 12:44:53', '2021-01-16 12:44:53'),
(12, 34, 'Natus qui quia quas est cum.', '79.00', 1, '2021-01-16 12:44:53', '2021-01-16 12:44:53'),
(13, 35, 'Atque porro in placeat.', '99.00', 2, '2021-01-16 12:44:54', '2021-01-16 12:44:54'),
(14, 35, 'Ipsam quia porro asperiores.', '85.00', 1, '2021-01-16 12:44:54', '2021-01-16 12:44:54'),
(15, 35, 'Enim sunt neque quis cum qui.', '67.00', 1, '2021-01-16 12:44:54', '2021-01-16 12:44:54'),
(16, 36, 'In quibusdam non aut qui.', '55.00', 1, '2021-01-16 12:44:54', '2021-01-16 12:44:54'),
(17, 36, 'Vitae et dolor maxime unde.', '58.00', 4, '2021-01-16 12:44:54', '2021-01-16 12:44:54'),
(18, 36, 'Eligendi nemo est sint aut.', '27.00', 5, '2021-01-16 12:44:54', '2021-01-16 12:44:54'),
(19, 37, 'In eum eos rem amet.', '99.00', 2, '2021-01-16 12:44:54', '2021-01-16 12:44:54'),
(20, 37, 'Omnis qui minus est hic.', '34.00', 5, '2021-01-16 12:44:54', '2021-01-16 12:44:54'),
(21, 38, 'Amet ut et est dolor et.', '28.00', 4, '2021-01-16 12:44:54', '2021-01-16 12:44:54'),
(22, 39, 'Sed ipsa ullam eius totam ex.', '57.00', 1, '2021-01-16 12:44:54', '2021-01-16 12:44:54'),
(23, 40, 'Unde rem ut rerum sit quo.', '51.00', 3, '2021-01-16 12:44:54', '2021-01-16 12:44:54'),
(24, 40, 'Enim dolor quae ut at aut.', '36.00', 4, '2021-01-16 12:44:54', '2021-01-16 12:44:54'),
(25, 40, 'Ad non officiis quas nisi.', '24.00', 1, '2021-01-16 12:44:54', '2021-01-16 12:44:54'),
(26, 40, 'Quia eum et cumque.', '20.00', 5, '2021-01-16 12:44:54', '2021-01-16 12:44:54'),
(27, 41, 'Eveniet possimus ut officia.', '78.00', 4, '2021-01-16 12:44:54', '2021-01-16 12:44:54'),
(28, 41, 'Fuga aut autem alias.', '88.00', 4, '2021-01-16 12:44:54', '2021-01-16 12:44:54'),
(29, 41, 'Quisquam nemo omnis qui aut.', '21.00', 1, '2021-01-16 12:44:54', '2021-01-16 12:44:54'),
(30, 41, 'Corporis magnam quia natus.', '89.00', 5, '2021-01-16 12:44:54', '2021-01-16 12:44:54'),
(31, 42, 'Ipsum ipsum vel quo at.', '88.00', 5, '2021-01-16 12:44:54', '2021-01-16 12:44:54'),
(32, 42, 'Sint ducimus iste quam et.', '14.00', 2, '2021-01-16 12:44:54', '2021-01-16 12:44:54'),
(33, 42, 'Ab qui eum qui est officiis.', '75.00', 1, '2021-01-16 12:44:54', '2021-01-16 12:44:54'),
(34, 42, 'Odio quo qui culpa iusto id.', '19.00', 5, '2021-01-16 12:44:54', '2021-01-16 12:44:54'),
(35, 43, 'Est dolore aliquid ut unde.', '16.00', 3, '2021-01-16 12:44:55', '2021-01-16 12:44:55'),
(36, 43, 'Natus eum earum ut ut.', '94.00', 3, '2021-01-16 12:44:55', '2021-01-16 12:44:55'),
(37, 43, 'Et qui est praesentium.', '61.00', 2, '2021-01-16 12:44:55', '2021-01-16 12:44:55'),
(38, 43, 'Autem aspernatur est amet in.', '89.00', 5, '2021-01-16 12:44:55', '2021-01-16 12:44:55'),
(39, 43, 'Dolor impedit illo ut quae.', '51.00', 4, '2021-01-16 12:44:55', '2021-01-16 12:44:55'),
(40, 44, 'Cumque ipsam dicta et porro.', '82.00', 4, '2021-01-16 12:44:55', '2021-01-16 12:44:55'),
(41, 45, 'Et occaecati vero et.', '41.00', 2, '2021-01-16 12:44:55', '2021-01-16 12:44:55'),
(42, 46, 'Aut dolor occaecati eaque.', '78.00', 5, '2021-01-16 12:44:55', '2021-01-16 12:44:55'),
(43, 46, 'Voluptas ut non cumque.', '38.00', 4, '2021-01-16 12:44:55', '2021-01-16 12:44:55'),
(44, 46, 'Totam laudantium ea aut amet.', '55.00', 4, '2021-01-16 12:44:55', '2021-01-16 12:44:55'),
(45, 46, 'Rerum minima aliquid et est.', '57.00', 1, '2021-01-16 12:44:55', '2021-01-16 12:44:55'),
(46, 47, 'Corrupti et libero ipsam a.', '67.00', 5, '2021-01-16 12:44:55', '2021-01-16 12:44:55'),
(47, 47, 'Rerum quia fugiat alias.', '50.00', 2, '2021-01-16 12:44:55', '2021-01-16 12:44:55'),
(48, 48, 'Corporis est ut ea.', '32.00', 1, '2021-01-16 12:44:55', '2021-01-16 12:44:55'),
(49, 48, 'Sint non quasi quia.', '11.00', 2, '2021-01-16 12:44:55', '2021-01-16 12:44:55'),
(50, 48, 'Et inventore sint non aut.', '96.00', 3, '2021-01-16 12:44:55', '2021-01-16 12:44:55'),
(51, 48, 'Qui dolor labore et mollitia.', '88.00', 1, '2021-01-16 12:44:55', '2021-01-16 12:44:55'),
(52, 48, 'Velit ut ab aperiam officiis.', '78.00', 4, '2021-01-16 12:44:55', '2021-01-16 12:44:55'),
(53, 49, 'Voluptas sequi quod debitis.', '84.00', 4, '2021-01-16 12:44:55', '2021-01-16 12:44:55'),
(54, 49, 'Dolores culpa maxime facilis.', '18.00', 2, '2021-01-16 12:44:55', '2021-01-16 12:44:55'),
(55, 49, 'Enim reiciendis et iure sit.', '52.00', 1, '2021-01-16 12:44:55', '2021-01-16 12:44:55'),
(56, 49, 'Qui et fugit optio dolor ut.', '93.00', 3, '2021-01-16 12:44:55', '2021-01-16 12:44:55'),
(57, 49, 'Et voluptate et eveniet eos.', '80.00', 4, '2021-01-16 12:44:55', '2021-01-16 12:44:55'),
(58, 50, 'Aut corporis sed ullam omnis.', '77.00', 3, '2021-01-16 12:44:55', '2021-01-16 12:44:55'),
(59, 50, 'Ullam sit est voluptas.', '59.00', 3, '2021-01-16 12:44:56', '2021-01-16 12:44:56'),
(60, 50, 'Soluta nihil animi amet odio.', '64.00', 5, '2021-01-16 12:44:56', '2021-01-16 12:44:56'),
(61, 51, 'Et libero adipisci omnis.', '87.00', 4, '2021-01-16 12:44:56', '2021-01-16 12:44:56'),
(62, 51, 'Natus ea modi non.', '52.00', 4, '2021-01-16 12:44:56', '2021-01-16 12:44:56'),
(63, 51, 'Illum aut esse soluta dolor.', '71.00', 2, '2021-01-16 12:44:56', '2021-01-16 12:44:56'),
(64, 51, 'Cum quia sed optio itaque.', '44.00', 3, '2021-01-16 12:44:56', '2021-01-16 12:44:56'),
(65, 51, 'Quia nemo sed eligendi eos.', '79.00', 2, '2021-01-16 12:44:56', '2021-01-16 12:44:56'),
(66, 52, 'Voluptas suscipit qui animi.', '72.00', 1, '2021-01-16 12:44:56', '2021-01-16 12:44:56'),
(67, 52, 'Velit quis quia nihil vel.', '95.00', 4, '2021-01-16 12:44:56', '2021-01-16 12:44:56'),
(68, 52, 'Et exercitationem amet unde.', '18.00', 2, '2021-01-16 12:44:56', '2021-01-16 12:44:56'),
(69, 53, 'Consequatur omnis et atque.', '73.00', 1, '2021-01-16 12:44:56', '2021-01-16 12:44:56'),
(70, 53, 'Eum eum dolor odio maiores.', '93.00', 3, '2021-01-16 12:44:56', '2021-01-16 12:44:56'),
(71, 54, 'Aut eos quam quam quia est.', '35.00', 5, '2021-01-16 12:44:56', '2021-01-16 12:44:56'),
(72, 55, 'Voluptas labore sequi aut ea.', '18.00', 1, '2021-01-16 12:44:56', '2021-01-16 12:44:56'),
(73, 55, 'Qui in ut recusandae et.', '27.00', 4, '2021-01-16 12:44:56', '2021-01-16 12:44:56'),
(74, 56, 'Totam tempora nostrum sed.', '70.00', 2, '2021-01-16 12:44:56', '2021-01-16 12:44:56'),
(75, 56, 'Illum voluptatem et qui.', '55.00', 3, '2021-01-16 12:44:56', '2021-01-16 12:44:56'),
(76, 56, 'Facilis enim quia numquam.', '23.00', 3, '2021-01-16 12:44:56', '2021-01-16 12:44:56'),
(77, 56, 'Quas quasi dicta beatae quis.', '39.00', 3, '2021-01-16 12:44:57', '2021-01-16 12:44:57'),
(78, 57, 'Debitis sint et reiciendis.', '75.00', 5, '2021-01-16 12:44:57', '2021-01-16 12:44:57'),
(79, 57, 'Delectus voluptatem quia sed.', '38.00', 1, '2021-01-16 12:44:57', '2021-01-16 12:44:57'),
(80, 57, 'Et distinctio totam mollitia.', '91.00', 2, '2021-01-16 12:44:57', '2021-01-16 12:44:57'),
(81, 57, 'Id corrupti vel qui voluptas.', '26.00', 5, '2021-01-16 12:44:57', '2021-01-16 12:44:57'),
(82, 57, 'A aliquam aut fuga aut iure.', '65.00', 1, '2021-01-16 12:44:57', '2021-01-16 12:44:57'),
(83, 58, 'Velit et dolorem eligendi.', '63.00', 2, '2021-01-16 12:44:57', '2021-01-16 12:44:57'),
(84, 58, 'Facilis error ad veniam non.', '60.00', 2, '2021-01-16 12:44:57', '2021-01-16 12:44:57'),
(85, 58, 'Odit consequatur omnis sit.', '63.00', 1, '2021-01-16 12:44:57', '2021-01-16 12:44:57'),
(86, 58, 'Minima expedita autem eos.', '74.00', 4, '2021-01-16 12:44:57', '2021-01-16 12:44:57'),
(87, 58, 'Facilis animi qui aut.', '89.00', 1, '2021-01-16 12:44:57', '2021-01-16 12:44:57'),
(88, 59, 'Quia et et animi ad maxime.', '63.00', 4, '2021-01-16 12:44:57', '2021-01-16 12:44:57'),
(89, 59, 'Quasi iure nobis qui saepe.', '69.00', 2, '2021-01-16 12:44:57', '2021-01-16 12:44:57'),
(90, 59, 'Cumque placeat odio rem.', '98.00', 5, '2021-01-16 12:44:57', '2021-01-16 12:44:57'),
(91, 59, 'Sint est minus et soluta.', '93.00', 2, '2021-01-16 12:44:57', '2021-01-16 12:44:57'),
(92, 59, 'Delectus ipsum qui nulla non.', '44.00', 4, '2021-01-16 12:44:57', '2021-01-16 12:44:57'),
(93, 60, 'Veniam et qui aut quaerat.', '53.00', 3, '2021-01-16 12:44:57', '2021-01-16 12:44:57'),
(94, 61, 'Et omnis ipsam quia amet.', '46.00', 4, '2021-01-16 16:45:48', '2021-01-16 16:45:48'),
(95, 61, 'Eum qui doloribus et rerum.', '63.00', 5, '2021-01-16 16:45:48', '2021-01-16 16:45:48'),
(96, 61, 'Est libero magnam ab.', '87.00', 4, '2021-01-16 16:45:48', '2021-01-16 16:45:48'),
(97, 61, 'Illo ut et et et ut fugiat.', '75.00', 2, '2021-01-16 16:45:48', '2021-01-16 16:45:48'),
(98, 61, 'Sed et hic dolor quasi aut.', '28.00', 2, '2021-01-16 16:45:48', '2021-01-16 16:45:48'),
(99, 62, 'Ut illo odio cum quasi.', '31.00', 4, '2021-01-16 16:45:49', '2021-01-16 16:45:49'),
(100, 63, 'Quam id maxime quo aliquam.', '87.00', 2, '2021-01-16 16:45:49', '2021-01-16 16:45:49'),
(101, 63, 'Ipsum ad dolor in aliquid.', '18.00', 1, '2021-01-16 16:45:49', '2021-01-16 16:45:49'),
(102, 63, 'Ea eius ab fugit.', '64.00', 5, '2021-01-16 16:45:49', '2021-01-16 16:45:49'),
(103, 64, 'Nemo commodi et rerum iusto.', '75.00', 1, '2021-01-16 16:45:49', '2021-01-16 16:45:49'),
(104, 64, 'Praesentium ducimus est et.', '53.00', 2, '2021-01-16 16:45:49', '2021-01-16 16:45:49'),
(105, 65, 'Modi et ipsum numquam.', '71.00', 1, '2021-01-16 16:45:49', '2021-01-16 16:45:49'),
(106, 65, 'Et esse cum magni sit ut.', '82.00', 3, '2021-01-16 16:45:49', '2021-01-16 16:45:49'),
(107, 66, 'Est dolor facere ut quam.', '89.00', 3, '2021-01-16 16:45:50', '2021-01-16 16:45:50'),
(108, 66, 'Ex et fugiat unde qui.', '86.00', 5, '2021-01-16 16:45:50', '2021-01-16 16:45:50'),
(109, 67, 'Ab odit soluta ut qui.', '90.00', 5, '2021-01-16 16:45:50', '2021-01-16 16:45:50'),
(110, 68, 'Sed quia sequi illo ullam.', '20.00', 4, '2021-01-16 16:45:50', '2021-01-16 16:45:50'),
(111, 68, 'Aliquam magnam libero at.', '26.00', 1, '2021-01-16 16:45:50', '2021-01-16 16:45:50'),
(112, 68, 'Ea asperiores adipisci ut et.', '33.00', 4, '2021-01-16 16:45:50', '2021-01-16 16:45:50'),
(113, 68, 'Qui illo quibusdam nulla.', '87.00', 1, '2021-01-16 16:45:50', '2021-01-16 16:45:50'),
(114, 69, 'Aut sit vel doloribus.', '27.00', 2, '2021-01-16 16:45:50', '2021-01-16 16:45:50'),
(115, 69, 'Dolorem officia rerum quia.', '61.00', 2, '2021-01-16 16:45:50', '2021-01-16 16:45:50'),
(116, 69, 'Unde qui sed ipsum mollitia.', '84.00', 4, '2021-01-16 16:45:50', '2021-01-16 16:45:50'),
(117, 70, 'Quis libero mollitia tenetur.', '18.00', 4, '2021-01-16 16:45:50', '2021-01-16 16:45:50'),
(118, 71, 'Ipsa qui eos architecto.', '16.00', 2, '2021-01-16 16:45:50', '2021-01-16 16:45:50'),
(119, 71, 'Saepe tempore facilis quos.', '80.00', 2, '2021-01-16 16:45:50', '2021-01-16 16:45:50'),
(120, 72, 'Qui nisi incidunt nam vel.', '70.00', 5, '2021-01-16 16:45:50', '2021-01-16 16:45:50'),
(121, 73, 'Et sit eveniet magni eum.', '100.00', 5, '2021-01-16 16:45:50', '2021-01-16 16:45:50'),
(122, 73, 'Quas et sint ipsa sed rem.', '17.00', 1, '2021-01-16 16:45:50', '2021-01-16 16:45:50'),
(123, 73, 'Velit vel error vitae earum.', '69.00', 2, '2021-01-16 16:45:51', '2021-01-16 16:45:51'),
(124, 74, 'Odio et et officiis.', '84.00', 5, '2021-01-16 16:45:51', '2021-01-16 16:45:51'),
(125, 74, 'Non recusandae debitis totam.', '20.00', 3, '2021-01-16 16:45:51', '2021-01-16 16:45:51'),
(126, 74, 'Non est officia nihil.', '68.00', 5, '2021-01-16 16:45:51', '2021-01-16 16:45:51'),
(127, 74, 'Illum et eligendi est a.', '39.00', 1, '2021-01-16 16:45:51', '2021-01-16 16:45:51'),
(128, 74, 'Nostrum at veniam cum rerum.', '22.00', 1, '2021-01-16 16:45:51', '2021-01-16 16:45:51'),
(129, 75, 'Maxime et est facere ducimus.', '84.00', 1, '2021-01-16 16:45:51', '2021-01-16 16:45:51'),
(130, 75, 'Quo alias ratione optio aut.', '41.00', 3, '2021-01-16 16:45:51', '2021-01-16 16:45:51'),
(131, 75, 'Ut quia quae dicta impedit.', '46.00', 2, '2021-01-16 16:45:51', '2021-01-16 16:45:51'),
(132, 75, 'Cum nostrum ut est.', '21.00', 3, '2021-01-16 16:45:51', '2021-01-16 16:45:51'),
(133, 75, 'Blanditiis numquam nam eum.', '87.00', 2, '2021-01-16 16:45:51', '2021-01-16 16:45:51'),
(134, 76, 'Autem rerum temporibus odio.', '51.00', 5, '2021-01-16 16:45:51', '2021-01-16 16:45:51'),
(135, 77, 'Sint ipsam iure et.', '87.00', 5, '2021-01-16 16:45:51', '2021-01-16 16:45:51'),
(136, 77, 'Velit ex voluptatem ad et.', '12.00', 1, '2021-01-16 16:45:51', '2021-01-16 16:45:51'),
(137, 77, 'Cupiditate qui non molestiae.', '47.00', 4, '2021-01-16 16:45:51', '2021-01-16 16:45:51'),
(138, 77, 'Blanditiis qui omnis commodi.', '77.00', 1, '2021-01-16 16:45:51', '2021-01-16 16:45:51'),
(139, 78, 'Aspernatur et eveniet vero.', '73.00', 3, '2021-01-16 16:45:51', '2021-01-16 16:45:51'),
(140, 78, 'Dolor eos labore nostrum aut.', '66.00', 4, '2021-01-16 16:45:51', '2021-01-16 16:45:51'),
(141, 78, 'Quod ut sint eaque.', '85.00', 2, '2021-01-16 16:45:51', '2021-01-16 16:45:51'),
(142, 78, 'Pariatur quo quia a ipsam.', '16.00', 5, '2021-01-16 16:45:52', '2021-01-16 16:45:52'),
(143, 78, 'Ut ut a adipisci minus.', '37.00', 2, '2021-01-16 16:45:52', '2021-01-16 16:45:52'),
(144, 79, 'Culpa sunt adipisci voluptas.', '29.00', 2, '2021-01-16 16:45:52', '2021-01-16 16:45:52'),
(145, 79, 'Et cum corrupti illum fugiat.', '97.00', 1, '2021-01-16 16:45:52', '2021-01-16 16:45:52'),
(146, 80, 'Quam dolorum illum optio.', '24.00', 5, '2021-01-16 16:45:52', '2021-01-16 16:45:52'),
(147, 80, 'Tempora minus ex officiis et.', '79.00', 1, '2021-01-16 16:45:52', '2021-01-16 16:45:52'),
(148, 80, 'Aut non rerum minus dolorum.', '28.00', 3, '2021-01-16 16:45:52', '2021-01-16 16:45:52'),
(149, 80, 'Dolor amet explicabo et.', '81.00', 1, '2021-01-16 16:45:52', '2021-01-16 16:45:52'),
(150, 91, 'Dolorem corrupti et qui est.', '58.00', 5, '2021-01-16 16:46:26', '2021-01-16 16:46:26'),
(151, 91, 'Ut fuga ea sint blanditiis.', '30.00', 5, '2021-01-16 16:46:26', '2021-01-16 16:46:26'),
(152, 91, 'Vel et earum et et.', '75.00', 5, '2021-01-16 16:46:26', '2021-01-16 16:46:26'),
(153, 91, 'Occaecati quia laboriosam ut.', '30.00', 2, '2021-01-16 16:46:26', '2021-01-16 16:46:26'),
(154, 92, 'Doloribus illum quod qui.', '16.00', 2, '2021-01-16 16:46:26', '2021-01-16 16:46:26'),
(155, 92, 'Eum modi dolores sit.', '27.00', 5, '2021-01-16 16:46:26', '2021-01-16 16:46:26'),
(156, 92, 'Ipsam cum magni non et.', '62.00', 2, '2021-01-16 16:46:26', '2021-01-16 16:46:26'),
(157, 92, 'Aut animi maiores quo culpa.', '82.00', 4, '2021-01-16 16:46:26', '2021-01-16 16:46:26'),
(158, 92, 'Sapiente quia non quam.', '45.00', 4, '2021-01-16 16:46:26', '2021-01-16 16:46:26'),
(159, 93, 'Nobis rerum nisi aut aut.', '73.00', 5, '2021-01-16 16:46:26', '2021-01-16 16:46:26'),
(160, 93, 'Qui ut accusamus a.', '73.00', 4, '2021-01-16 16:46:26', '2021-01-16 16:46:26'),
(161, 93, 'Voluptatem tempore eos sequi.', '83.00', 1, '2021-01-16 16:46:26', '2021-01-16 16:46:26'),
(162, 93, 'Deleniti et nihil aut.', '33.00', 3, '2021-01-16 16:46:27', '2021-01-16 16:46:27'),
(163, 94, 'Eligendi aut alias magni aut.', '87.00', 3, '2021-01-16 16:46:27', '2021-01-16 16:46:27'),
(164, 94, 'Eius nulla qui nihil et et.', '11.00', 2, '2021-01-16 16:46:27', '2021-01-16 16:46:27'),
(165, 95, 'Dolor ab alias nobis.', '57.00', 4, '2021-01-16 16:46:27', '2021-01-16 16:46:27'),
(166, 95, 'Illum esse sit sed.', '43.00', 3, '2021-01-16 16:46:27', '2021-01-16 16:46:27'),
(167, 95, 'Ut quaerat qui quod illum.', '70.00', 3, '2021-01-16 16:46:27', '2021-01-16 16:46:27'),
(168, 96, 'Quo sint cum eligendi magni.', '22.00', 3, '2021-01-16 16:46:27', '2021-01-16 16:46:27'),
(169, 97, 'Sequi molestias et cum odio.', '100.00', 4, '2021-01-16 16:46:27', '2021-01-16 16:46:27'),
(170, 97, 'Aut aliquid iusto sit ex qui.', '26.00', 2, '2021-01-16 16:46:27', '2021-01-16 16:46:27'),
(171, 97, 'A sequi natus repellendus.', '25.00', 3, '2021-01-16 16:46:27', '2021-01-16 16:46:27'),
(172, 97, 'Ut est voluptate autem quia.', '32.00', 4, '2021-01-16 16:46:27', '2021-01-16 16:46:27'),
(173, 97, 'Ad odit quas autem ipsa.', '96.00', 1, '2021-01-16 16:46:27', '2021-01-16 16:46:27'),
(174, 98, 'Reiciendis possimus vel quia.', '76.00', 4, '2021-01-16 16:46:27', '2021-01-16 16:46:27'),
(175, 98, 'Aliquam porro qui nihil et.', '73.00', 2, '2021-01-16 16:46:27', '2021-01-16 16:46:27'),
(176, 98, 'Eius qui est et.', '32.00', 5, '2021-01-16 16:46:27', '2021-01-16 16:46:27'),
(177, 99, 'Qui cumque aut omnis.', '89.00', 4, '2021-01-16 16:46:27', '2021-01-16 16:46:27'),
(178, 100, 'Odit qui labore quo sed.', '56.00', 1, '2021-01-16 16:46:27', '2021-01-16 16:46:27'),
(179, 100, 'Maiores occaecati quis est.', '51.00', 3, '2021-01-16 16:46:27', '2021-01-16 16:46:27'),
(180, 100, 'Eaque eveniet autem aut esse.', '89.00', 3, '2021-01-16 16:46:27', '2021-01-16 16:46:27'),
(181, 100, 'Quia tenetur rerum in alias.', '72.00', 1, '2021-01-16 16:46:28', '2021-01-16 16:46:28'),
(182, 101, 'Molestias quo hic rerum hic.', '42.00', 4, '2021-01-16 16:46:28', '2021-01-16 16:46:28'),
(183, 101, 'Et reprehenderit ut sunt.', '94.00', 1, '2021-01-16 16:46:28', '2021-01-16 16:46:28'),
(184, 101, 'Quis natus commodi neque.', '86.00', 4, '2021-01-16 16:46:28', '2021-01-16 16:46:28'),
(185, 101, 'Non ducimus iure omnis qui.', '93.00', 4, '2021-01-16 16:46:28', '2021-01-16 16:46:28'),
(186, 101, 'Fugiat omnis sed vel.', '96.00', 5, '2021-01-16 16:46:28', '2021-01-16 16:46:28'),
(187, 102, 'Est itaque vel nesciunt qui.', '41.00', 2, '2021-01-16 16:46:28', '2021-01-16 16:46:28'),
(188, 103, 'Non quos autem hic repellat.', '96.00', 3, '2021-01-16 16:46:28', '2021-01-16 16:46:28'),
(189, 103, 'Consequatur ut rerum sed qui.', '61.00', 1, '2021-01-16 16:46:28', '2021-01-16 16:46:28'),
(190, 104, 'Ipsum quod quae porro.', '85.00', 4, '2021-01-16 16:46:28', '2021-01-16 16:46:28'),
(191, 104, 'Velit a ipsa sunt dolores in.', '91.00', 5, '2021-01-16 16:46:28', '2021-01-16 16:46:28'),
(192, 104, 'Id nihil dolorem vitae in.', '93.00', 4, '2021-01-16 16:46:28', '2021-01-16 16:46:28'),
(193, 104, 'Magnam odio ad in aliquid et.', '38.00', 3, '2021-01-16 16:46:28', '2021-01-16 16:46:28'),
(194, 104, 'Assumenda adipisci illo quo.', '42.00', 4, '2021-01-16 16:46:28', '2021-01-16 16:46:28'),
(195, 105, 'Perferendis id sapiente illo.', '74.00', 3, '2021-01-16 16:46:28', '2021-01-16 16:46:28'),
(196, 106, 'Alias debitis ut ut ipsa.', '65.00', 5, '2021-01-16 16:46:28', '2021-01-16 16:46:28'),
(197, 106, 'Autem distinctio sint ipsam.', '10.00', 2, '2021-01-16 16:46:29', '2021-01-16 16:46:29'),
(198, 107, 'Aliquid et eos est officiis.', '59.00', 2, '2021-01-16 16:46:29', '2021-01-16 16:46:29'),
(199, 108, 'Dicta inventore ut culpa.', '45.00', 1, '2021-01-16 16:46:29', '2021-01-16 16:46:29'),
(200, 108, 'Nobis aliquam et possimus et.', '33.00', 5, '2021-01-16 16:46:29', '2021-01-16 16:46:29'),
(201, 108, 'Nihil est nisi qui.', '81.00', 1, '2021-01-16 16:46:29', '2021-01-16 16:46:29'),
(202, 109, 'Amet aut eum cum vel.', '73.00', 2, '2021-01-16 16:46:29', '2021-01-16 16:46:29'),
(203, 109, 'Enim error nesciunt at.', '68.00', 3, '2021-01-16 16:46:29', '2021-01-16 16:46:29'),
(204, 109, 'Expedita et rerum id.', '57.00', 3, '2021-01-16 16:46:29', '2021-01-16 16:46:29'),
(205, 109, 'Sequi sed modi modi culpa.', '60.00', 1, '2021-01-16 16:46:29', '2021-01-16 16:46:29'),
(206, 109, 'Qui est asperiores sit.', '71.00', 3, '2021-01-16 16:46:29', '2021-01-16 16:46:29'),
(207, 110, 'Ut quaerat ut ex quia quia.', '34.00', 5, '2021-01-16 16:46:29', '2021-01-16 16:46:29'),
(208, 110, 'Nemo excepturi odio ut animi.', '98.00', 2, '2021-01-16 16:46:29', '2021-01-16 16:46:29'),
(209, 110, 'Nulla iusto saepe nihil a.', '23.00', 4, '2021-01-16 16:46:29', '2021-01-16 16:46:29'),
(210, 111, 'Optio maiores ut dolorum et.', '65.00', 3, '2021-01-16 16:46:29', '2021-01-16 16:46:29'),
(211, 111, 'Et maxime nihil cum in.', '86.00', 1, '2021-01-16 16:46:29', '2021-01-16 16:46:29'),
(212, 111, 'Ut aut omnis et.', '23.00', 5, '2021-01-16 16:46:29', '2021-01-16 16:46:29'),
(213, 111, 'Et ut et in qui.', '61.00', 3, '2021-01-16 16:46:29', '2021-01-16 16:46:29'),
(214, 111, 'Sunt et aut perspiciatis.', '100.00', 4, '2021-01-16 16:46:30', '2021-01-16 16:46:30'),
(215, 112, 'Nam atque neque vero placeat.', '72.00', 1, '2021-01-16 16:46:30', '2021-01-16 16:46:30'),
(216, 112, 'Placeat ut natus odio nemo.', '91.00', 1, '2021-01-16 16:46:30', '2021-01-16 16:46:30'),
(217, 113, 'Rerum sequi ex voluptas.', '88.00', 5, '2021-01-16 16:46:30', '2021-01-16 16:46:30'),
(218, 113, 'Iusto et quia non.', '11.00', 2, '2021-01-16 16:46:30', '2021-01-16 16:46:30'),
(219, 113, 'Similique eaque autem ut.', '73.00', 2, '2021-01-16 16:46:30', '2021-01-16 16:46:30'),
(220, 113, 'Voluptatem est nihil id fuga.', '36.00', 2, '2021-01-16 16:46:30', '2021-01-16 16:46:30'),
(221, 114, 'Et eum repudiandae et quos.', '88.00', 1, '2021-01-16 16:46:30', '2021-01-16 16:46:30'),
(222, 114, 'Est ab ut debitis sunt autem.', '99.00', 2, '2021-01-16 16:46:30', '2021-01-16 16:46:30'),
(223, 114, 'Ab ut amet ea quae.', '44.00', 2, '2021-01-16 16:46:30', '2021-01-16 16:46:30'),
(224, 114, 'Ex qui veniam explicabo id.', '77.00', 5, '2021-01-16 16:46:30', '2021-01-16 16:46:30'),
(225, 115, 'Sed ad autem aut qui eum.', '64.00', 1, '2021-01-16 16:46:30', '2021-01-16 16:46:30'),
(226, 115, 'Dolor quae soluta nisi.', '75.00', 4, '2021-01-16 16:46:30', '2021-01-16 16:46:30'),
(227, 115, 'Omnis animi culpa quos.', '51.00', 4, '2021-01-16 16:46:30', '2021-01-16 16:46:30'),
(228, 115, 'Rerum mollitia ab iste.', '24.00', 3, '2021-01-16 16:46:30', '2021-01-16 16:46:30'),
(229, 115, 'Totam perferendis sint error.', '59.00', 2, '2021-01-16 16:46:30', '2021-01-16 16:46:30'),
(230, 116, 'In est vitae ratione.', '18.00', 3, '2021-01-16 16:46:30', '2021-01-16 16:46:30'),
(231, 116, 'In non est dolore.', '25.00', 2, '2021-01-16 16:46:30', '2021-01-16 16:46:30'),
(232, 116, 'Aperiam voluptatum in et id.', '89.00', 1, '2021-01-16 16:46:30', '2021-01-16 16:46:30'),
(233, 116, 'Amet nam quis quia dolores.', '44.00', 1, '2021-01-16 16:46:30', '2021-01-16 16:46:30'),
(234, 116, 'Ea odit ut vitae vero.', '28.00', 4, '2021-01-16 16:46:30', '2021-01-16 16:46:30'),
(235, 117, 'Impedit modi dolorem in et.', '43.00', 1, '2021-01-16 16:46:30', '2021-01-16 16:46:30'),
(236, 117, 'Qui hic tenetur quis sint.', '13.00', 5, '2021-01-16 16:46:31', '2021-01-16 16:46:31'),
(237, 117, 'Quis ab deleniti qui a.', '44.00', 2, '2021-01-16 16:46:31', '2021-01-16 16:46:31'),
(238, 118, 'Tenetur quisquam quas ut.', '29.00', 4, '2021-01-16 16:46:31', '2021-01-16 16:46:31'),
(239, 118, 'Ullam beatae corporis sunt.', '94.00', 3, '2021-01-16 16:46:31', '2021-01-16 16:46:31'),
(240, 118, 'Sed a aut qui itaque nostrum.', '31.00', 4, '2021-01-16 16:46:31', '2021-01-16 16:46:31'),
(241, 118, 'Ipsum dicta laboriosam qui.', '22.00', 5, '2021-01-16 16:46:31', '2021-01-16 16:46:31'),
(242, 119, 'Illo itaque cum odio.', '13.00', 5, '2021-01-16 16:46:31', '2021-01-16 16:46:31'),
(243, 119, 'Molestiae non quis quasi.', '81.00', 2, '2021-01-16 16:46:31', '2021-01-16 16:46:31'),
(244, 119, 'Dolorem ea aut aut eos et.', '68.00', 3, '2021-01-16 16:46:31', '2021-01-16 16:46:31'),
(245, 119, 'Quis enim omnis nobis nihil.', '39.00', 2, '2021-01-16 16:46:31', '2021-01-16 16:46:31'),
(246, 120, 'Voluptatem et provident eius.', '91.00', 4, '2021-01-16 16:46:31', '2021-01-16 16:46:31');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `name`) VALUES
(1, 'view_users'),
(2, 'edit_users'),
(3, 'view_roles'),
(4, 'edit_roles'),
(5, 'view_products'),
(6, 'edit_products'),
(7, 'view_orders'),
(8, 'edit_orders');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_ar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `title`, `title_ar`, `description`, `description_ar`, `image`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Dolore enim dolor cupiditate.', 'Qui vel itaque tempora.', 'Qui eveniet consectetur assumenda consectetur eveniet maiores accusamus facilis. Eum quisquam rem ut harum quas culpa. Nihil quo tempora sequi distinctio quia rerum est molestias.', 'Praesentium delectus laudantium voluptatibus sint. Illum aut ut ex dolorem vel enim. Facilis quia harum quaerat autem facere enim voluptatibus nulla.', 'https://via.placeholder.com/640x480.png/00ccee?text=amet', '43.00', '2021-01-15 12:44:00', '2021-01-15 12:44:00'),
(2, 'Rerum incidunt nihil qui.', 'Eum et qui corrupti.', 'Sed eius ipsum voluptatem adipisci est. Molestiae illum sed dignissimos totam aperiam dignissimos in velit. Aut quia ipsum quod enim.', 'Voluptate sit error at tempora nulla. Ea vel totam iste sed tenetur. Possimus saepe possimus ut eum sit rerum. Laborum voluptas et sit reprehenderit porro.', 'https://via.placeholder.com/640x480.png/00aa22?text=tenetur', '78.00', '2021-01-15 12:44:00', '2021-01-15 12:44:00'),
(3, 'Ipsum sit at enim et.', 'Qui aut ipsa velit ullam.', 'Ipsam numquam est a aliquid excepturi tenetur. Voluptatem nihil architecto et quos. Totam unde aut voluptatem nemo et ut. Ducimus tempore velit laboriosam recusandae.', 'Voluptatem distinctio aut nihil hic id sit molestiae. Rem accusantium perferendis qui dignissimos. Expedita et quam ducimus magni asperiores.', 'https://via.placeholder.com/640x480.png/00ff55?text=sit', '60.00', '2021-01-15 12:44:00', '2021-01-15 12:44:00'),
(4, 'Omnis nostrum explicabo quae.', 'Accusantium ea aperiam ut.', 'Earum voluptas porro sequi itaque vitae quaerat. Nihil aliquam et asperiores quia veritatis. Ut eum nisi sint reiciendis deleniti. Inventore maiores possimus et nemo velit eligendi.', 'Fugiat possimus et non mollitia pariatur. In temporibus doloremque sunt quibusdam deleniti deserunt.', 'https://via.placeholder.com/640x480.png/00eeaa?text=a', '94.00', '2021-01-15 12:44:00', '2021-01-15 12:44:00'),
(5, 'Et et hic et.', 'Et et laudantium omnis.', 'Perspiciatis culpa quis totam ex. Vero dicta et illum culpa. Doloribus id est eum rem quos sunt unde. Omnis velit ipsum et iste et qui aperiam.', 'Maiores odio debitis tenetur quia. Maiores error rerum cumque labore eos quia. In est facere deleniti. Consequatur fugiat incidunt error excepturi ut quam odio vitae.', 'https://via.placeholder.com/640x480.png/0000ff?text=natus', '71.00', '2021-01-15 12:44:00', '2021-01-15 12:44:00'),
(6, 'Atque sunt quis quasi.', 'Cum dolores est et similique.', 'Repudiandae repellat nulla saepe in. Occaecati optio veritatis deserunt nam magnam et voluptatibus enim. Officiis voluptatum voluptatum hic tenetur.', 'Dolores sed itaque possimus blanditiis quos qui quia. Est aut non nemo ea illo delectus in. Dolores quisquam voluptate quae.', 'https://via.placeholder.com/640x480.png/005577?text=aliquam', '40.00', '2021-01-15 12:44:00', '2021-01-15 12:44:00'),
(7, 'Autem aut ut iure occaecati.', 'Qui quae tempore est ullam.', 'Occaecati numquam dignissimos consequuntur aut voluptate. Sint a nesciunt libero odit officiis commodi. Exercitationem veritatis occaecati deleniti.', 'Consequuntur delectus ullam blanditiis ad odio dolorum quaerat. Molestias expedita eligendi vero est. In optio ad laborum sint. Deleniti dolores id qui et qui ab.', 'https://via.placeholder.com/640x480.png/002211?text=eius', '17.00', '2021-01-15 12:44:00', '2021-01-15 12:44:00'),
(8, 'Velit delectus dolorem quasi.', 'Sunt maxime aperiam aut et.', 'Saepe perspiciatis velit temporibus. Minima nihil qui ut accusantium consectetur consequuntur voluptatem. Cupiditate accusamus labore facilis voluptates.', 'Consequatur placeat qui distinctio eaque. Eos similique sit nobis. Sit reprehenderit cumque sint repudiandae fuga molestiae. Dolorem minima aliquam porro delectus.', 'https://via.placeholder.com/640x480.png/00dd88?text=est', '18.00', '2021-01-15 12:44:00', '2021-01-15 12:44:00'),
(9, 'Omnis facere est vitae.', 'Qui aut error dicta.', 'Aliquid temporibus adipisci labore nisi. Tempore explicabo quia nobis. Eligendi tempore nesciunt voluptatibus consequatur incidunt cupiditate.', 'Voluptates qui autem distinctio est. Tempore nobis voluptatem et magnam officia ipsa. Ut autem aliquid sint dolore architecto sed. Nisi et inventore quia fuga.', 'https://via.placeholder.com/640x480.png/003311?text=aut', '55.00', '2021-01-15 12:44:00', '2021-01-15 12:44:00'),
(10, 'Ad aliquam ipsam totam ea.', 'Ut dolore eum dolores qui.', 'Qui mollitia nisi provident corporis perferendis consectetur sit. Nihil incidunt assumenda possimus odit sint nihil maiores. Eius impedit atque voluptas et voluptate.', 'Aut totam maiores aut itaque. Rerum laboriosam qui dolorum repellat consectetur. Soluta ullam magni nobis fugiat. Sed quia explicabo dignissimos consequuntur voluptate distinctio.', 'https://via.placeholder.com/640x480.png/00ccff?text=doloremque', '58.00', '2021-01-15 12:44:00', '2021-01-15 12:44:00'),
(11, 'Aut quia velit quis nobis.', 'Ut libero ipsa deserunt.', 'Enim eos minima reiciendis architecto et vitae. Facere et aliquid hic. Natus corrupti quibusdam accusamus ipsa in.', 'Omnis rerum non qui aut adipisci. Velit soluta et consequatur omnis neque. Quo rerum aut cumque enim suscipit. Qui ea ut quis ipsa dignissimos.', 'https://via.placeholder.com/640x480.png/00dd44?text=aliquid', '20.00', '2021-01-15 12:44:00', '2021-01-15 12:44:00'),
(12, 'Unde quia dolore hic ut.', 'Id quo eveniet nisi rem.', 'Aspernatur est iusto ut nam odio adipisci officia. Rerum error odio laboriosam ipsa beatae aut ipsum.', 'Est accusantium et sit sit voluptatum sint. Quis laboriosam ea qui quisquam inventore veniam. Consequatur nostrum placeat qui illum architecto.', 'https://via.placeholder.com/640x480.png/006600?text=molestiae', '79.00', '2021-01-15 12:44:00', '2021-01-15 12:44:00'),
(13, 'Ut nam unde aspernatur.', 'Nam quia repellat eveniet.', 'Consequatur modi nihil vero non recusandae facere eius distinctio. Ut et quia ducimus rerum voluptatem magnam et illum. Labore tenetur optio iure et cumque.', 'Libero et sed magnam rerum. Aperiam doloremque quia vel possimus quo. Quia harum nemo ad repellendus repellendus magnam eum soluta. Sint suscipit et qui et id.', 'https://via.placeholder.com/640x480.png/00ee33?text=quasi', '11.00', '2021-01-15 12:44:00', '2021-01-15 12:44:00'),
(14, 'Esse hic nihil dicta et.', 'Sed animi totam cumque.', 'Saepe assumenda modi asperiores doloribus. Voluptatem sint nulla officia sit porro voluptas. Est officia recusandae rerum. Ut eius ut recusandae.', 'Tempora iste eius voluptas illo et delectus. Ex enim id ratione animi. Deserunt deserunt soluta consequatur quas.', 'https://via.placeholder.com/640x480.png/005522?text=non', '32.00', '2021-01-15 12:44:00', '2021-01-15 12:44:00'),
(15, 'A non et molestias est quo.', 'Ducimus eos harum aut.', 'Ea eos quo velit fugiat quod ipsam explicabo. Repellendus libero dolorem laboriosam eligendi. Qui molestias repellendus architecto non eveniet.', 'Facilis qui quis impedit provident expedita at est. Recusandae ullam in eos et est perferendis. Recusandae nesciunt et et ipsam rem. Rem ratione facere saepe velit perferendis.', 'https://via.placeholder.com/640x480.png/0000dd?text=quibusdam', '78.00', '2021-01-15 12:44:00', '2021-01-15 12:44:00'),
(16, 'Hic iure qui sint earum.', 'Rerum et ut possimus est.', 'Nesciunt sit suscipit cum sed facere eius. Ea placeat deleniti consequatur labore id dolorum. Sint nemo occaecati nostrum sed perferendis.', 'Voluptas suscipit minus sunt. Omnis voluptatem incidunt eligendi reiciendis corrupti et.', 'https://via.placeholder.com/640x480.png/004444?text=suscipit', '95.00', '2021-01-15 12:44:01', '2021-01-15 12:44:01'),
(17, 'Adipisci quas et aut sed.', 'Qui vel ut temporibus.', 'Et sint ipsam optio nostrum excepturi. Sint et quam excepturi doloribus eos perferendis. Perspiciatis asperiores non quis est aliquam saepe. Laudantium omnis architecto laudantium.', 'Ducimus consequatur est earum exercitationem. Rerum quia aliquam non quae eaque sequi ratione quia. Cumque est minus ut blanditiis.', 'https://via.placeholder.com/640x480.png/00ddcc?text=et', '45.00', '2021-01-15 12:44:01', '2021-01-15 12:44:01'),
(18, 'Numquam ut quo excepturi eum.', 'Illo nihil facere reiciendis.', 'Est quibusdam facere quidem expedita a est quam tempore. Aperiam commodi inventore beatae ut rem. Eius quos voluptas voluptate et consequatur.', 'Maxime maxime est cum et asperiores iusto cum. Voluptas ipsa sed quia non cum eveniet est.', 'https://via.placeholder.com/640x480.png/0022bb?text=nihil', '72.00', '2021-01-15 12:44:01', '2021-01-15 12:44:01'),
(19, 'Maiores ut qui illo quis et.', 'Est inventore aut dolores in.', 'Praesentium magnam qui qui molestiae totam blanditiis neque. Aut est sed voluptatem quia quia accusamus. Officia qui quo provident nemo. Est non soluta sed quidem autem molestiae maxime.', 'Incidunt est sit consequatur iure. Nemo deserunt sint optio labore quis. Autem enim distinctio voluptatum minima porro illum.', 'https://via.placeholder.com/640x480.png/00ffff?text=nam', '66.00', '2021-01-15 12:44:01', '2021-01-15 12:44:01'),
(20, 'Qui quam est magni.', 'Rerum itaque aut velit.', 'Rerum corporis sunt voluptatem dolores. Autem animi vel aliquam sed. Harum esse vel recusandae laudantium deleniti voluptas.', 'Perspiciatis distinctio laboriosam rem eius aut. Sapiente aliquam explicabo ratione sit nobis qui. Consequatur eum deleniti autem repellat sunt. Non provident qui quasi molestias quis iste.', 'https://via.placeholder.com/640x480.png/00dddd?text=suscipit', '88.00', '2021-01-15 12:44:01', '2021-01-15 12:44:01'),
(30, 'Vans', 'فانسس', 'chaussure vans', 'حذاء فانسس', 'http://localhost:8000/images/RlRSdOJfBD.jpg', '2000.00', '2021-01-15 21:56:55', '2021-01-15 21:56:55'),
(31, 'Vans', 'فانسس', 'chaussure vans', 'حذاء فانسس', 'http://127.0.0.1:8000/images/iAgrfPDJAD.jpg', '5000.00', '2021-01-15 22:43:14', '2021-01-15 22:45:34'),
(32, 'Omnis officia et est dolorum.', 'Sequi est beatae eos ut.', 'Corporis quae fugit ipsum sint facere quia nihil aut. Et aut quam nihil perferendis.', 'Id quaerat est quia. Libero ut eveniet quaerat voluptas. Atque ducimus laboriosam molestiae sint voluptatum. Illum id modi qui accusantium qui. Dolores consequatur qui sed ab quam dolor optio.', 'https://via.placeholder.com/640x480.png/008800?text=dignissimos', '62.00', '2021-01-16 16:45:46', '2021-01-16 16:45:46'),
(33, 'Alias quis consequuntur sit.', 'Omnis delectus quia sit.', 'Ipsa qui magnam mollitia. Sint suscipit distinctio impedit voluptatem est modi molestiae sint. Cumque animi asperiores voluptas.', 'Omnis amet velit tenetur soluta quos odio. Alias dolores aspernatur non sunt et et iusto. Quidem qui molestiae nostrum dolor recusandae. Rerum voluptatem ut temporibus natus unde sunt.', 'https://via.placeholder.com/640x480.png/0000cc?text=molestiae', '29.00', '2021-01-16 16:45:46', '2021-01-16 16:45:46'),
(34, 'Et in dolores commodi in aut.', 'Dolorum fuga totam ut.', 'Deleniti fugit suscipit similique eius enim nisi sit. Possimus reprehenderit nulla consequatur odio deserunt animi ut. Deserunt eum non dolores repellat vero deleniti omnis.', 'Dolores inventore inventore eos quae temporibus fugiat. Ab aut explicabo sed labore rerum. Alias beatae consequatur modi aut dolorem consequatur est.', 'https://via.placeholder.com/640x480.png/00ccaa?text=cumque', '61.00', '2021-01-16 16:45:46', '2021-01-16 16:45:46'),
(35, 'In omnis blanditiis libero.', 'Ex quo atque facere nihil.', 'Sint aut cumque et eligendi pariatur id. Minima laudantium numquam qui ducimus. Dolore aut autem voluptas veritatis ipsum inventore voluptatem. Voluptas animi ratione velit officia.', 'Voluptatem alias et perferendis at repellat. Repellendus sunt illo ullam et non est dolor. Quis laboriosam voluptate velit dolorem saepe aut. Iure exercitationem in ea et.', 'https://via.placeholder.com/640x480.png/0044bb?text=non', '91.00', '2021-01-16 16:45:46', '2021-01-16 16:45:46'),
(36, 'Molestiae eum rem sed maxime.', 'Id ipsam occaecati sed.', 'Dicta ullam dolore excepturi itaque. Repudiandae nam magni autem ullam quia libero nemo. Itaque quo cum officiis quisquam similique doloremque ducimus autem.', 'Excepturi est voluptatem mollitia neque ullam dolorem. Blanditiis non corporis illo cupiditate dolores explicabo. Aspernatur quia illo dolorum dolores. Commodi ipsa est quibusdam.', 'https://via.placeholder.com/640x480.png/00dd99?text=at', '98.00', '2021-01-16 16:45:46', '2021-01-16 16:45:46'),
(37, 'Id aut non eveniet.', 'Magni rerum ut rerum nisi.', 'Eum impedit atque sint dolore sit nemo doloribus. Tempora dolores sint quaerat vel optio aperiam. Dolorem autem beatae sed explicabo rerum. Inventore rem iusto qui atque culpa in alias minima.', 'Facere et eius qui consequatur. Aut qui et sit blanditiis. Eos sed modi dolore nostrum omnis.', 'https://via.placeholder.com/640x480.png/006677?text=quae', '90.00', '2021-01-16 16:45:46', '2021-01-16 16:45:46'),
(38, 'Fugit velit ut dolor rem.', 'Rem explicabo nisi est.', 'Voluptas est sunt aliquid veritatis quis dolores consequuntur. Rerum officiis asperiores rem in sunt. Quam fugit dolorem sequi atque sed.', 'Fugit qui quam ratione veritatis. Tempore omnis placeat sed dolor iusto. Recusandae optio tempore beatae similique provident velit dolorem. Aut sed dolor facilis.', 'https://via.placeholder.com/640x480.png/001188?text=recusandae', '88.00', '2021-01-16 16:45:46', '2021-01-16 16:45:46'),
(39, 'Aut et blanditiis quidem et.', 'Aperiam vitae quis nisi.', 'Delectus voluptatibus neque nam sit et. Doloribus quo corrupti ullam libero debitis aut soluta perspiciatis. Cupiditate tempore laboriosam quia.', 'Odit occaecati sint debitis facere rerum. Minus molestiae minus qui consequuntur. Omnis quia qui laborum facilis. Sit quis ipsa quisquam ex consequatur.', 'https://via.placeholder.com/640x480.png/004400?text=est', '27.00', '2021-01-16 16:45:46', '2021-01-16 16:45:46'),
(40, 'Ratione mollitia aut omnis.', 'Ut repellendus quidem nihil.', 'Laborum quod numquam quam facere. Alias enim nihil sit aut possimus atque quam. Eos inventore error qui dolorem qui. Ad ut repellendus et esse praesentium harum aut.', 'Accusantium placeat expedita beatae corrupti dolorem qui qui. Quos voluptas nostrum omnis quaerat. Earum facere qui rem repellendus in veniam.', 'https://via.placeholder.com/640x480.png/00aacc?text=voluptas', '78.00', '2021-01-16 16:45:46', '2021-01-16 16:45:46'),
(41, 'Pariatur eveniet sit veniam.', 'Tempore aut dolorem ut.', 'Nostrum inventore alias vel ad eaque repudiandae fuga. Minus et dolor ut in aut earum omnis. Non officiis repellendus eius deserunt.', 'Illum molestiae voluptatem accusamus sapiente veniam aut non. Molestias hic praesentium non et sint aut. Aut possimus magnam quia quibusdam sunt et cupiditate fugiat. Tenetur non qui sequi et amet.', 'https://via.placeholder.com/640x480.png/008855?text=et', '24.00', '2021-01-16 16:45:46', '2021-01-16 16:45:46'),
(42, 'Vero similique et nihil sit.', 'Sint aliquid qui maxime.', 'Ratione qui ipsa itaque vel. Ratione eaque unde aspernatur dolore ut minus. Odio qui non quia dignissimos harum. Aut ex distinctio aut voluptates et velit.', 'Et quia quisquam ullam sit impedit et sed. Totam aut placeat eaque est ratione fuga. Quia sed sit eligendi est. Et atque aliquam a aut quia consequatur velit.', 'https://via.placeholder.com/640x480.png/00bbcc?text=dolor', '27.00', '2021-01-16 16:45:46', '2021-01-16 16:45:46'),
(43, 'Quis nemo sequi et aut.', 'Eos qui ad enim ex.', 'Placeat qui repellendus eos eligendi veritatis. Porro architecto temporibus vero eos sed in nostrum. Animi accusantium et quae quisquam officia ut eos.', 'Enim nihil sequi sapiente incidunt. Velit delectus doloribus minus necessitatibus. Ut quia et omnis dolorem illum eaque.', 'https://via.placeholder.com/640x480.png/00aa77?text=voluptatem', '72.00', '2021-01-16 16:45:46', '2021-01-16 16:45:46'),
(44, 'Non dolorem aperiam quis et.', 'Nihil aliquid magnam minima.', 'Sequi id necessitatibus autem possimus ea vel nisi. Enim et nemo delectus quae. Amet cum rerum asperiores adipisci quibusdam repellendus modi.', 'Labore autem voluptatem facilis magnam. Est a qui doloribus. Voluptas rerum recusandae doloremque non quod. Et qui culpa rerum id quia.', 'https://via.placeholder.com/640x480.png/00ff55?text=id', '69.00', '2021-01-16 16:45:46', '2021-01-16 16:45:46'),
(45, 'Dicta delectus tempora enim.', 'Accusamus ex sequi tempore.', 'Fugiat et eligendi quis iure. Vero molestiae quod et iure est. Ut hic quaerat autem corporis. Laboriosam dolor dolores corporis non quis. Totam deleniti est blanditiis non nemo odio ut.', 'Voluptatem quia eos quisquam consequatur odio non. Quod eligendi dolore et aut. Cupiditate occaecati tempore velit.', 'https://via.placeholder.com/640x480.png/008866?text=ratione', '51.00', '2021-01-16 16:45:47', '2021-01-16 16:45:47'),
(46, 'Voluptatem fugit aut et illo.', 'Fugit sunt sit id est.', 'Magnam voluptas non molestias sint. Officia possimus nihil reprehenderit aut rerum voluptatum soluta iusto. Modi dolor ut totam reiciendis consectetur magni.', 'Necessitatibus et ratione natus a mollitia sit culpa aliquid. Omnis voluptatem ut eius. Est autem nulla velit provident sapiente a.', 'https://via.placeholder.com/640x480.png/000099?text=provident', '23.00', '2021-01-16 16:45:47', '2021-01-16 16:45:47'),
(47, 'Veniam cumque et et qui.', 'Eos inventore sed nobis aut.', 'Nihil mollitia voluptas ab adipisci a. Voluptatem repellat et nisi minus quis minima aspernatur. Saepe quis temporibus ad. Id et eos voluptates nam quidem.', 'Quo ullam quam ex dolor. Sed ipsam quia vitae tempore quisquam aperiam. Velit sunt ut repudiandae omnis. Animi et consequatur est quam voluptas impedit fugiat optio.', 'https://via.placeholder.com/640x480.png/0077cc?text=illo', '64.00', '2021-01-16 16:45:47', '2021-01-16 16:45:47'),
(48, 'Molestias repellat at modi.', 'Expedita qui omnis aperiam.', 'Deleniti libero dolor doloribus velit aliquid qui. Sit temporibus alias molestias voluptate perspiciatis. Praesentium qui incidunt autem eius quis. Nemo quos dolorem molestiae natus.', 'Aut eligendi dolores aspernatur laborum impedit itaque ipsum. Cupiditate nulla ex eveniet modi accusantium ut. Quo temporibus sed veritatis harum.', 'https://via.placeholder.com/640x480.png/00ff11?text=officiis', '79.00', '2021-01-16 16:45:47', '2021-01-16 16:45:47'),
(49, 'Qui porro qui quam veritatis.', 'Deleniti ut sit harum.', 'Provident tempora cupiditate sit est non autem consequuntur totam. Qui eos velit repellendus voluptatum. Alias ipsa sit non amet nihil praesentium. Similique eveniet et ea dolore aperiam et et.', 'Tenetur rerum delectus iure porro facilis ut ipsa. Quisquam odio dolorem hic modi aut nulla quos. Ipsa est est aspernatur sunt quo sunt vitae. Aut nulla tempora consequuntur.', 'https://via.placeholder.com/640x480.png/00ffff?text=harum', '71.00', '2021-01-16 16:45:47', '2021-01-16 16:45:47'),
(50, 'Est architecto sit nemo aut.', 'Ut at sequi est.', 'Natus doloremque sit occaecati dolores sed. Voluptatem dolor aut fuga. Maxime sed possimus consectetur dignissimos. Rem est deleniti neque consequatur cumque consequatur.', 'Quasi et est suscipit quia eveniet expedita. Minus ab adipisci nemo deleniti voluptas est. Eos aliquam commodi voluptas ut aliquam iste. Expedita minima enim sint reiciendis.', 'https://via.placeholder.com/640x480.png/00ff33?text=eaque', '100.00', '2021-01-16 16:45:47', '2021-01-16 16:45:47'),
(51, 'Ut et animi qui quasi.', 'Sint aut quia sunt nesciunt.', 'Odit voluptas animi doloremque omnis doloremque. Quia debitis in deleniti eius. Voluptatem voluptatem et doloribus beatae. Iste earum et ut. Enim quam maiores debitis quasi distinctio.', 'Deleniti rem nesciunt esse. Beatae sit eius eligendi.', 'https://via.placeholder.com/640x480.png/002255?text=optio', '11.00', '2021-01-16 16:45:47', '2021-01-16 16:45:47'),
(52, 'Sint id et id ad.', 'Tenetur aliquam quas alias.', 'Doloribus velit molestiae aut reprehenderit saepe ut nesciunt repellat. Ea inventore in et aut a. Porro nulla quam ut soluta.', 'Voluptas dolorem culpa dignissimos. Odio quisquam quod suscipit praesentium dolores. Nisi rerum deserunt facere itaque.', 'https://via.placeholder.com/640x480.png/0066aa?text=reprehenderit', '74.00', '2021-01-16 16:46:23', '2021-01-16 16:46:23'),
(53, 'Aut ut et unde facilis.', 'Nobis atque explicabo qui ad.', 'Velit tenetur quos corporis laudantium labore maxime voluptate autem. Ullam ea ullam a ducimus laborum ut at. Dolor doloremque aspernatur quia. Et voluptates aut dolor at et velit qui.', 'Quis ducimus quia in suscipit eos vel doloribus. Quas ipsum minus cupiditate ratione velit. Quas sed ut molestiae iusto reprehenderit rerum nihil. Eaque est et debitis.', 'https://via.placeholder.com/640x480.png/00cc11?text=et', '65.00', '2021-01-16 16:46:23', '2021-01-16 16:46:23'),
(54, 'Et eius est itaque nobis.', 'Quibusdam velit nam aut.', 'Velit sint non expedita reprehenderit quaerat autem quaerat. Ratione labore suscipit cum enim rem repellat dolorem. Accusamus facere provident a maxime sapiente aliquam.', 'Fugiat a eligendi vel explicabo et quisquam consequuntur. Sapiente deserunt rem quia ut. Magnam harum dolorum at aliquid earum odit. Aut officiis dolorem iure sit vero possimus.', 'https://via.placeholder.com/640x480.png/00aa66?text=laboriosam', '98.00', '2021-01-16 16:46:23', '2021-01-16 16:46:23'),
(55, 'Dolorum ab tempore maxime.', 'Quae quo excepturi iure.', 'Delectus qui eos eos voluptatem ad explicabo iusto. Expedita recusandae quo aut dolore hic voluptas quaerat.', 'Ullam quasi explicabo ad rem sint dolorem. In quia aut unde at explicabo nobis. Laborum reiciendis incidunt porro recusandae. Velit vitae eos mollitia error qui laudantium aliquam.', 'https://via.placeholder.com/640x480.png/00ff77?text=tempore', '89.00', '2021-01-16 16:46:23', '2021-01-16 16:46:23'),
(56, 'Dicta ut earum et qui.', 'Repellendus rem alias quo.', 'Vel suscipit quia delectus eaque. Ullam et iure consequuntur nostrum. Ex enim nemo enim non dolore perspiciatis voluptas et. Voluptate totam itaque ducimus fuga.', 'Culpa molestiae non quasi et provident atque autem commodi. Aliquam a saepe voluptatibus et vel. Odit occaecati voluptate doloremque voluptatem recusandae libero excepturi.', 'https://via.placeholder.com/640x480.png/001122?text=impedit', '32.00', '2021-01-16 16:46:23', '2021-01-16 16:46:23'),
(57, 'Vel sunt vel nostrum.', 'Quia ea aut fuga voluptatum.', 'Non enim pariatur quasi molestiae ratione quas. Aut nostrum aut animi ea. Eius dignissimos et dolorem. Sequi quis sunt numquam consequatur quos facilis dolor.', 'Sequi aliquid id accusamus dignissimos aliquam. Assumenda sed aut ab modi sapiente voluptatem. Aliquid eligendi laborum dicta voluptas eum assumenda.', 'https://via.placeholder.com/640x480.png/007766?text=rerum', '36.00', '2021-01-16 16:46:23', '2021-01-16 16:46:23'),
(58, 'Ut sed nulla cupiditate et.', 'Et aut quo et iure aut.', 'Porro nesciunt ut accusantium dignissimos iste. Vitae eum harum laudantium. Ut maxime laborum ea non quas amet. Ut similique eum necessitatibus ea atque voluptatem.', 'Veritatis vitae aut at consequatur quod sapiente rerum. Commodi veniam est sit delectus maiores quo. Dolores sit est cupiditate.', 'https://via.placeholder.com/640x480.png/00ffcc?text=fugiat', '47.00', '2021-01-16 16:46:24', '2021-01-16 16:46:24'),
(59, 'Eum ut ipsum et.', 'Officiis omnis qui id.', 'Nemo eius temporibus est et eveniet dolorem repudiandae. Dolorem quis id asperiores in animi veritatis rem. Illo dolor qui similique nobis sit. Suscipit qui omnis aut expedita sit.', 'Sunt cumque autem aut non laudantium voluptates. Neque hic id omnis ut qui excepturi itaque neque. Quo nam vitae eius nihil.', 'https://via.placeholder.com/640x480.png/006666?text=ullam', '33.00', '2021-01-16 16:46:24', '2021-01-16 16:46:24'),
(60, 'A doloremque officia enim.', 'Doloremque qui ut cum et aut.', 'Sunt est hic eum earum sed ut corrupti eos. Est est quidem aut eum sit aut.', 'Optio et nisi saepe tenetur. Consequuntur maxime sit eos quisquam consequatur illo voluptatem. Laboriosam nostrum tempora ab aliquam aliquam neque non.', 'https://via.placeholder.com/640x480.png/0066cc?text=quas', '39.00', '2021-01-16 16:46:24', '2021-01-16 16:46:24'),
(61, 'Ex labore qui dolorem et.', 'Neque eaque esse et iure.', 'Minus dolore nisi iste iusto facilis tempora. Quam earum consequatur voluptatibus. Ea aspernatur nihil enim neque et at.', 'Et corporis vel accusamus quibusdam nam enim. Reiciendis et cumque eum voluptas. Consectetur sed officiis sed unde officia perferendis in. Eligendi quae commodi autem et et rerum soluta.', 'https://via.placeholder.com/640x480.png/0000ee?text=possimus', '25.00', '2021-01-16 16:46:24', '2021-01-16 16:46:24'),
(62, 'Ea impedit suscipit omnis et.', 'Saepe nesciunt ea placeat.', 'Culpa architecto enim eligendi vel. Minima qui et asperiores consequatur aut. Temporibus cum officiis et sit officiis corporis fugit dolores. Commodi blanditiis magni ratione.', 'Atque quos nobis et laboriosam iste. Ut repellat sed nihil labore aut.', 'https://via.placeholder.com/640x480.png/00dd33?text=qui', '92.00', '2021-01-16 16:46:24', '2021-01-16 16:46:24'),
(63, 'Qui ipsam vel recusandae.', 'Sit perspiciatis nulla ipsam.', 'Et omnis ut ducimus voluptatem amet est et. Voluptas maiores aliquid velit rem magni veritatis. Aliquid blanditiis non fugit ad facere eum excepturi.', 'Provident ea neque modi amet blanditiis nam. Libero ratione maiores at incidunt et amet velit. Animi ad qui aut.', 'https://via.placeholder.com/640x480.png/001155?text=sit', '59.00', '2021-01-16 16:46:24', '2021-01-16 16:46:24'),
(64, 'Qui vitae est commodi fugiat.', 'Suscipit rerum sed quas.', 'Repellendus distinctio officiis aut harum nulla. Itaque qui molestias provident expedita aut excepturi eum. Reiciendis vero officiis in qui doloribus sint delectus.', 'Id quos aut rerum odit quo ipsam delectus. Odio quasi explicabo velit quae aliquid. Totam neque molestias sequi ut dignissimos eaque impedit dolore. Corporis omnis odio id voluptas fugiat temporibus.', 'https://via.placeholder.com/640x480.png/00bbcc?text=voluptatem', '24.00', '2021-01-16 16:46:24', '2021-01-16 16:46:24'),
(65, 'Ullam nam qui et tenetur.', 'Aut vel aliquam et quae.', 'Rem quos qui id adipisci porro ipsum explicabo. Rerum et autem sed minima eaque. Eligendi blanditiis temporibus aspernatur est ut enim.', 'Iure ipsa numquam rerum fugit totam. Velit sunt consequatur rerum dignissimos. Voluptas eum reiciendis amet molestias.', 'https://via.placeholder.com/640x480.png/00ff44?text=sed', '17.00', '2021-01-16 16:46:24', '2021-01-16 16:46:24'),
(66, 'Est quis nam autem sunt.', 'Omnis labore qui vel ab.', 'Magni tempore iusto enim sunt. Quas iure iste veritatis id at rerum. Autem vel ut nostrum architecto deleniti nulla. Minima ducimus dignissimos quia eveniet ipsum ut et.', 'Sunt sit est provident deleniti explicabo est impedit. Cupiditate aut et nihil est optio est possimus. Sequi aut officiis laudantium aut et. Odio velit impedit ducimus culpa consequatur.', 'https://via.placeholder.com/640x480.png/00ccdd?text=dolor', '82.00', '2021-01-16 16:46:24', '2021-01-16 16:46:24'),
(67, 'Est sunt ipsum sit aut.', 'Vero voluptatem qui repellat.', 'Sint magnam aperiam occaecati ipsa nam alias dolor. Accusamus placeat ab magni consequuntur aliquid minus nam. Et in non et error consequuntur. Ipsum sit dignissimos quo rerum non odit maiores.', 'A qui architecto quod eos laudantium. In sunt dolor modi odit quia ut quas.', 'https://via.placeholder.com/640x480.png/00cc77?text=qui', '44.00', '2021-01-16 16:46:24', '2021-01-16 16:46:24'),
(68, 'Iste suscipit enim incidunt.', 'Doloremque quia dolorum ut.', 'Praesentium nam aut ea incidunt in ea et dolores. Et voluptatum molestias omnis aut doloribus. Sed quo voluptate architecto eum. Fugit quia quia amet qui ut.', 'Sed consequuntur aut id voluptas recusandae ipsum. Aut et cum voluptatem vitae aut quas ut non. Dolores autem animi ut.', 'https://via.placeholder.com/640x480.png/003344?text=possimus', '76.00', '2021-01-16 16:46:24', '2021-01-16 16:46:24'),
(69, 'Quis dolore soluta velit.', 'Ab eum ut quo consequuntur.', 'Non unde aut dignissimos fuga esse possimus officia. Delectus modi omnis est omnis. Ipsa et quia et voluptatem voluptatem quia.', 'Alias soluta id voluptas dolore dolorum. In qui quidem itaque aut dolorum dolores. Esse a voluptas magnam consequatur sequi itaque. Consequatur commodi perspiciatis id odio corporis.', 'https://via.placeholder.com/640x480.png/0022ff?text=aut', '70.00', '2021-01-16 16:46:24', '2021-01-16 16:46:24'),
(70, 'Et eveniet dolor suscipit.', 'Quae rerum vero ea et.', 'Et optio omnis similique. Eum minus aut molestiae a laboriosam harum. Delectus aperiam deserunt mollitia delectus omnis.', 'Facere eveniet voluptatem aut quia non. Est ut aliquam placeat modi in dolor quam. Similique eum ratione non. Quaerat velit quas est cumque non possimus omnis.', 'https://via.placeholder.com/640x480.png/004433?text=placeat', '69.00', '2021-01-16 16:46:24', '2021-01-16 16:46:24'),
(71, 'Non ut est ut nihil repellat.', 'Quis facilis sit et aperiam.', 'Ipsum quia nisi qui ea eius alias. Molestiae voluptatem tempore molestiae delectus perferendis. Voluptatum eligendi nihil laudantium assumenda suscipit perspiciatis in.', 'In aut ut unde voluptates est dolorum accusamus. Beatae minus qui ut hic aut harum. Delectus est quasi fugiat nulla voluptas nulla nisi. Nam nihil hic aut. Voluptatem et odio est maiores.', 'https://via.placeholder.com/640x480.png/0077aa?text=quibusdam', '63.00', '2021-01-16 16:46:24', '2021-01-16 16:46:24');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Custom'),
(2, 'Custom'),
(3, 'Custom'),
(4, 'Admin'),
(5, 'Custom'),
(6, 'Viewer'),
(7, 'Admin'),
(8, 'Editor'),
(9, 'Viewer'),
(12, 'Custom');

-- --------------------------------------------------------

--
-- Structure de la table `role_permission`
--

CREATE TABLE `role_permission` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `role_permission`
--

INSERT INTO `role_permission` (`id`, `role_id`, `permission_id`) VALUES
(20, 12, 1),
(21, 12, 2),
(22, 12, 5),
(23, 12, 6),
(24, 3, 1),
(25, 5, 1),
(26, 2, 1),
(27, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `role_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Marguerite', 'Wilderman', 'klocko.ollie@example.com', 2, '2021-01-14 23:12:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fpSZLEsoOp', '2021-01-14 23:12:28', '2021-01-14 23:12:28'),
(2, 'Donavon', 'Mohr', 'powlowski.jerome@example.org', 1, '2021-01-14 23:12:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7ivji6SNbe', '2021-01-14 23:12:28', '2021-01-14 23:12:28'),
(3, 'Kenny', 'Murazik', 'priscilla92@example.com', 3, '2021-01-14 23:12:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aKfDbDFFP2', '2021-01-14 23:12:28', '2021-01-14 23:12:28'),
(4, 'Kane', 'McLaughlin', 'rita49@example.net', 2, '2021-01-14 23:12:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4bOLo7uFHW', '2021-01-14 23:12:28', '2021-01-14 23:12:28'),
(5, 'Kyra', 'Crooks', 'thompson.bianka@example.com', 3, '2021-01-14 23:12:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lLFEvJe73Y', '2021-01-14 23:12:28', '2021-01-14 23:12:28'),
(6, 'Lela', 'Runolfsson', 'reta.pouros@example.org', 1, '2021-01-14 23:12:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qkdK8gIeaM', '2021-01-14 23:12:28', '2021-01-14 23:12:28'),
(7, 'Kristin', 'Gaylord', 'vandervort.werner@example.com', 2, '2021-01-14 23:12:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'X7Pfgk3ZvN', '2021-01-14 23:12:29', '2021-01-14 23:12:29'),
(8, 'Laura', 'Dooley', 'carleton.veum@example.com', 2, '2021-01-14 23:12:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'q9mKGXJYY0', '2021-01-14 23:12:29', '2021-01-14 23:12:29'),
(9, 'Edd', 'Terry', 'mbins@example.org', 1, '2021-01-14 23:12:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KMalFneFpR', '2021-01-14 23:12:29', '2021-01-14 23:12:29'),
(10, 'Malcolm', 'Toy', 'levi31@example.com', 2, '2021-01-14 23:12:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'luQzZrzN1Y', '2021-01-14 23:12:29', '2021-01-14 23:12:29'),
(11, 'Grayson', 'McGlynn', 'lparisian@example.org', 2, '2021-01-14 23:12:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FEF8lJnKax', '2021-01-14 23:12:29', '2021-01-14 23:12:29'),
(12, 'Roxanne', 'Ritchie', 'berge.hipolito@example.net', 2, '2021-01-14 23:12:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iSu7gYGmAv', '2021-01-14 23:12:29', '2021-01-14 23:12:29'),
(13, 'Shanelle', 'Luettgen', 'mharvey@example.net', 2, '2021-01-14 23:12:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PZ5hdZDF9x', '2021-01-14 23:12:29', '2021-01-14 23:12:29'),
(14, 'Reed', 'Olson', 'tina20@example.com', 1, '2021-01-14 23:12:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EHmERy3dUn', '2021-01-14 23:12:29', '2021-01-14 23:12:29'),
(15, 'Morgan', 'Johnson', 'glenda87@example.net', 2, '2021-01-14 23:12:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FYxoqHsTzA', '2021-01-14 23:12:29', '2021-01-14 23:12:29'),
(16, 'Rogelio', 'Stark', 'quinn96@example.org', 2, '2021-01-14 23:12:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'q4XAIg4025', '2021-01-14 23:12:29', '2021-01-14 23:12:29'),
(17, 'Michele', 'Shields', 'bogan.braden@example.com', 2, '2021-01-14 23:12:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2ep5Pg5SQP', '2021-01-14 23:12:29', '2021-01-14 23:12:29'),
(18, 'Thora', 'Wunsch', 'estrella86@example.org', 2, '2021-01-14 23:12:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vsC7T8ZPdY', '2021-01-14 23:12:29', '2021-01-14 23:12:29'),
(19, 'Myrtle', 'Fahey', 'reichert.gavin@example.net', 3, '2021-01-14 23:12:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nPCmSfhg5C', '2021-01-14 23:12:29', '2021-01-14 23:12:29'),
(20, 'Furman', 'Blick', 'celine.stracke@example.net', 2, '2021-01-14 23:12:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MKvHI062Ke', '2021-01-14 23:12:29', '2021-01-14 23:12:29'),
(21, 'Jaquelin', 'Ferry', 'cecil.kirlin@example.com', 5, '2021-01-16 16:45:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CdxPdXC2Mq', '2021-01-16 16:45:45', '2021-01-16 16:45:45'),
(22, 'Armando', 'Koch', 'dickinson.mercedes@example.net', 1, '2021-01-16 16:45:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'g2IiBPj7uJ', '2021-01-16 16:45:45', '2021-01-16 16:45:45'),
(23, 'Buck', 'Hettinger', 'cbecker@example.org', 3, '2021-01-16 16:45:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'S9YkULE3l0', '2021-01-16 16:45:45', '2021-01-16 16:45:45'),
(24, 'Preston', 'Purdy', 'hartmann.sabryna@example.com', 4, '2021-01-16 16:45:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'b8fyckEhuJ', '2021-01-16 16:45:45', '2021-01-16 16:45:45'),
(25, 'Virginie', 'Maggio', 'mconroy@example.org', 6, '2021-01-16 16:45:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wM8u03zTdV', '2021-01-16 16:45:45', '2021-01-16 16:45:45'),
(26, 'Liliane', 'Jakubowski', 'tod05@example.net', 3, '2021-01-16 16:45:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sRpl6umM3O', '2021-01-16 16:45:45', '2021-01-16 16:45:45'),
(27, 'Godfrey', 'Sanford', 'stiedemann.chauncey@example.com', 4, '2021-01-16 16:45:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dQoyGDY4bT', '2021-01-16 16:45:45', '2021-01-16 16:45:45'),
(28, 'Noemi', 'Kerluke', 'gabriella48@example.net', 6, '2021-01-16 16:45:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'O0gIk7OYnq', '2021-01-16 16:45:45', '2021-01-16 16:45:45'),
(29, 'Kelsie', 'Cruickshank', 'pattie.gleason@example.net', 1, '2021-01-16 16:45:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oZvLWmgMOy', '2021-01-16 16:45:45', '2021-01-16 16:45:45'),
(30, 'Marilie', 'Pollich', 'carol86@example.net', 2, '2021-01-16 16:45:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eAHqyUSqWN', '2021-01-16 16:45:45', '2021-01-16 16:45:45'),
(31, 'Sabryna', 'Howe', 'fausto.vonrueden@example.com', 1, '2021-01-16 16:45:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'I9JWfVKtkQ', '2021-01-16 16:45:45', '2021-01-16 16:45:45'),
(32, 'Demetrius', 'Emmerich', 'virgie49@example.com', 2, '2021-01-16 16:45:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2xGPq4aQbw', '2021-01-16 16:45:45', '2021-01-16 16:45:45'),
(33, 'Berniece', 'Bergnaum', 'liza89@example.net', 6, '2021-01-16 16:45:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'P3qBbpfKLP', '2021-01-16 16:45:45', '2021-01-16 16:45:45'),
(34, 'Fae', 'Pollich', 'finn.bartell@example.net', 5, '2021-01-16 16:45:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ToUjPljGQS', '2021-01-16 16:45:45', '2021-01-16 16:45:45'),
(35, 'Kaia', 'Hills', 'torn@example.org', 3, '2021-01-16 16:45:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VRDjarCnzL', '2021-01-16 16:45:45', '2021-01-16 16:45:45'),
(36, 'Sanford', 'O\'Hara', 'xfranecki@example.net', 4, '2021-01-16 16:45:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TOhFDyWzcx', '2021-01-16 16:45:45', '2021-01-16 16:45:45'),
(37, 'Kelvin', 'Christiansen', 'zoie.volkman@example.com', 5, '2021-01-16 16:45:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bUl3ZXpiev', '2021-01-16 16:45:46', '2021-01-16 16:45:46'),
(38, 'Ali', 'Schimmel', 'rfeeney@example.org', 2, '2021-01-16 16:45:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SXeIKRKjvb', '2021-01-16 16:45:46', '2021-01-16 16:45:46'),
(39, 'Jacky', 'Maggio', 'elakin@example.com', 5, '2021-01-16 16:45:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sILI7p3Vtt', '2021-01-16 16:45:46', '2021-01-16 16:45:46'),
(40, 'Mandy', 'Strosin', 'owen22@example.net', 3, '2021-01-16 16:45:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'acbhLdfnQ2', '2021-01-16 16:45:46', '2021-01-16 16:45:46'),
(41, 'Maureen', 'Thiel', 'kling.jaden@example.net', 5, '2021-01-16 16:46:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iHdOaKBRVQ', '2021-01-16 16:46:22', '2021-01-16 16:46:22'),
(42, 'Elisabeth', 'Block', 'mcclure.will@example.org', 4, '2021-01-16 16:46:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fZIhXzfy5p', '2021-01-16 16:46:22', '2021-01-16 16:46:22'),
(43, 'Haleigh', 'Hoeger', 'cpacocha@example.org', 4, '2021-01-16 16:46:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZICUhENRdx', '2021-01-16 16:46:22', '2021-01-16 16:46:22'),
(44, 'Adolfo', 'Hilpert', 'madelynn.jacobson@example.net', 5, '2021-01-16 16:46:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LwCakbUtKa', '2021-01-16 16:46:22', '2021-01-16 16:46:22'),
(45, 'Madyson', 'Zieme', 'darrion.altenwerth@example.org', 4, '2021-01-16 16:46:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'V0ayxxwDPM', '2021-01-16 16:46:22', '2021-01-16 16:46:22'),
(46, 'Simeon', 'Wilkinson', 'jasmin.wuckert@example.net', 5, '2021-01-16 16:46:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WLC4dJ5jfy', '2021-01-16 16:46:22', '2021-01-16 16:46:22'),
(47, 'Rebekah', 'Marquardt', 'wtreutel@example.net', 5, '2021-01-16 16:46:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '17Qj7eUcfU', '2021-01-16 16:46:22', '2021-01-16 16:46:22'),
(48, 'Elyssa', 'Erdman', 'dortha51@example.net', 6, '2021-01-16 16:46:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sZwoMZpCeO', '2021-01-16 16:46:23', '2021-01-16 16:46:23'),
(49, 'Mitchell', 'Huels', 'mcdermott.jerrell@example.org', 9, '2021-01-16 16:46:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eMlHmHvVN0', '2021-01-16 16:46:23', '2021-01-16 16:46:23'),
(50, 'Wallace', 'Wolff', 'ypredovic@example.org', 5, '2021-01-16 16:46:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UQVDwx8t8T', '2021-01-16 16:46:23', '2021-01-16 16:46:23'),
(51, 'Nadia', 'Jakubowski', 'janick78@example.org', 5, '2021-01-16 16:46:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dNp1ylzhEj', '2021-01-16 16:46:23', '2021-01-16 16:46:23'),
(52, 'Jimmie', 'Abbott', 'orn.marcelo@example.net', 5, '2021-01-16 16:46:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rGA37Zj7u9', '2021-01-16 16:46:23', '2021-01-16 16:46:23'),
(53, 'Allen', 'Osinski', 'ikovacek@example.net', 9, '2021-01-16 16:46:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'g1OiTXmNdO', '2021-01-16 16:46:23', '2021-01-16 16:46:23'),
(54, 'Justine', 'Bayer', 'bernadine60@example.com', 9, '2021-01-16 16:46:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yoF3eOU2yF', '2021-01-16 16:46:23', '2021-01-16 16:46:23'),
(55, 'Clovis', 'Borer', 'crona.helga@example.org', 9, '2021-01-16 16:46:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XpcAGYEKdH', '2021-01-16 16:46:23', '2021-01-16 16:46:23'),
(56, 'Blaise', 'Ebert', 'regan22@example.com', 4, '2021-01-16 16:46:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8pL0XrKURM', '2021-01-16 16:46:23', '2021-01-16 16:46:23'),
(57, 'Grant', 'Wilderman', 'arno49@example.net', 1, '2021-01-16 16:46:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'J2Jmwlclda', '2021-01-16 16:46:23', '2021-01-16 16:46:23'),
(58, 'Jayson', 'Dickens', 'dquigley@example.com', 2, '2021-01-16 16:46:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DsPhAne1BU', '2021-01-16 16:46:23', '2021-01-16 16:46:23'),
(59, 'Darrick', 'Murray', 'pfannerstill.rosendo@example.net', 1, '2021-01-16 16:46:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'k2h07LZTyi', '2021-01-16 16:46:23', '2021-01-16 16:46:23'),
(60, 'Eldon', 'Bartoletti', 'qgusikowski@example.org', 9, '2021-01-16 16:46:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bEV7PLc62S', '2021-01-16 16:46:23', '2021-01-16 16:46:23');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `role_permission`
--
ALTER TABLE `role_permission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_permission_role_id_foreign` (`role_id`),
  ADD KEY `role_permission_permission_id_foreign` (`permission_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT pour la table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `role_permission`
--
ALTER TABLE `role_permission`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Contraintes pour la table `role_permission`
--
ALTER TABLE `role_permission`
  ADD CONSTRAINT `role_permission_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`),
  ADD CONSTRAINT `role_permission_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
