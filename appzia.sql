-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 19, 2023 at 01:22 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appzia`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_18_200551_create_vehicles_table', 1),
(6, '2023_01_18_211038_create_vehicles_table', 2),
(7, '2023_01_18_212445_create_vehicles_table', 3),
(8, '2023_01_18_212850_create_vehicles_table', 4),
(9, '2023_01_18_213319_$table-;', 5),
(10, '2023_01_18_213437_create_vehicles_table', 5),
(11, '2023_01_18_213553_create_vehicles_table', 6),
(12, '2023_01_18_214316_create_user_messages_table', 7),
(13, '2023_01_18_223502_create_orders_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL,
  `vendor_ids` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` int(11) NOT NULL,
  `discription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `vendor_ids`, `order_status`, `discription`, `created_at`, `updated_at`) VALUES
(1, '56,89,75,9', 1, 'test description', '2023-01-18 22:43:05', '2023-01-18 22:43:05'),
(2, '452,102,89,4', 1, 'test description', '2023-01-18 22:43:05', '2023-01-18 22:43:05'),
(3, '56,89,452,9', 1, 'test description', '2023-01-18 22:43:53', '2023-01-18 22:43:53');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_mssages`
--

DROP TABLE IF EXISTS `user_mssages`;
CREATE TABLE IF NOT EXISTS `user_mssages` (
  `msg_id` int(15) NOT NULL AUTO_INCREMENT,
  `sender_u_id` varchar(1000) NOT NULL,
  `receiver_u_id` varchar(1000) NOT NULL,
  `mesasge` text NOT NULL,
  `msg_file_path` varchar(5000) NOT NULL,
  `file_type` int(15) NOT NULL COMMENT '1-image,2-video',
  `msg_delete_flag` int(15) NOT NULL COMMENT '1-both,2-sender,3-receiver',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_mssages`
--

INSERT INTO `user_mssages` (`msg_id`, `sender_u_id`, `receiver_u_id`, `mesasge`, `msg_file_path`, `file_type`, `msg_delete_flag`, `created_at`, `updated_at`) VALUES
(1, '6343a8171d533', '627b3edb5d5d8', 'how are you..', '', 0, 0, '2022-11-11 09:24:04', '2022-11-11 09:24:04'),
(2, '6343a8171d533', '627b3edb5d5d8', 'how are you..', '', 0, 0, '2022-11-14 05:37:14', '2022-11-14 05:37:14'),
(3, '627b41113b959', '627b3edb5d5d8', 'hi', '', 0, 0, '2022-11-14 05:38:23', '2022-11-14 05:38:23'),
(4, '627b41113b959', '627b3edb5d5d8', 'hi', '', 0, 0, '2022-11-14 05:40:23', '2022-11-14 05:40:23'),
(5, '627b41113b959', '627b3edb5d5d8', 'where r u ', '', 0, 0, '2022-11-14 07:32:49', '2022-11-14 07:32:49'),
(6, '627b41113b959', '627b3edb5d5d8', 'tried contact last night ?', '', 0, 0, '2022-11-14 07:35:14', '2022-11-14 07:35:14'),
(7, '6343a8171d533', '627b3edb5d5d8', '.', 'assets/message_files/imagesstudy.png', 1, 0, '2022-11-14 07:36:06', '2022-11-14 07:36:06'),
(8, '6347998c9bf6d', '627b3edb5d5d8', 'hey', '', 0, 0, '2022-11-15 10:34:07', '2022-11-15 10:34:07'),
(9, '6347998c9bf6d', '62d8f8ea45e40', 'hello', '', 0, 0, '2022-11-15 10:36:20', '2022-11-15 10:36:20');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE IF NOT EXISTS `vehicles` (
  `Value` text COLLATE utf8mb4_unicode_ci,
  `ValueId` text COLLATE utf8mb4_unicode_ci,
  `Variable` text COLLATE utf8mb4_unicode_ci,
  `VariableId` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`Value`, `ValueId`, `Variable`, `VariableId`, `created_at`, `updated_at`) VALUES
(NULL, '', 'Suggested VIN', 142, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '6', 'Error Code', 143, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Possible Values', 144, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Additional Error Text', 156, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Error Text', 191, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Vehicle Descriptor', 196, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, NULL, 'Destination Market', 10, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '452', 'Make', 26, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '968', 'Manufacturer Name', 27, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '1719', 'Model', 28, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Model Year', 29, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Plant City', 31, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Series', 34, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Trim', 38, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '7', 'Vehicle Type', 39, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '2', 'Plant Country', 75, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Plant Company Name', 76, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Plant State', 77, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Trim2', 109, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Series2', 110, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Note', 114, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Base Price ($)', 136, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, NULL, 'Non-Land Use', 195, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '7', 'Body Class', 5, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Doors', 14, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Windows', 40, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, NULL, 'Wheel Base Type', 60, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Track Width (inches)', 159, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '13', 'Gross Vehicle Weight Rating From', 25, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Bed Length (inches)', 49, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Curb Weight (pounds)', 54, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Wheel Base (inches) From', 111, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Wheel Base (inches) To', 112, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, NULL, 'Gross Combination Weight Rating From', 184, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, NULL, 'Gross Combination Weight Rating To', 185, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, NULL, 'Gross Vehicle Weight Rating To', 190, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, NULL, 'Bed Type', 3, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, NULL, 'Cab Type', 4, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '0', 'Trailer Type Connection', 116, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '0', 'Trailer Body Type', 117, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Trailer Length (feet)', 118, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Other Trailer Info', 155, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Number of Wheels', 115, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Wheel Size Front (inches)', 119, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Wheel Size Rear (inches)', 120, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, NULL, 'Entertainment System', 23, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, NULL, 'Steering Location', 36, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Number of Seats', 33, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Number of Seat Rows', 61, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, NULL, 'Transmission Style', 37, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Transmission Speeds', 63, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, NULL, 'Drive Type', 15, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Axles', 41, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, NULL, 'Axle Configuration', 145, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, NULL, 'Brake System Type', 42, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Brake System Description', 52, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Other Battery Info', 1, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, NULL, 'Battery Type', 2, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Number of Battery Cells per Module', 48, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Battery Current (Amps) From', 57, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Battery Voltage (Volts) From', 58, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Battery Energy (kWh) From', 59, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, NULL, 'EV Drive Unit', 72, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Battery Current (Amps) To', 132, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Battery Voltage (Volts) To', 133, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Battery Energy (kWh) To', 134, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Number of Battery Modules per Pack', 137, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Number of Battery Packs per Vehicle', 138, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, NULL, 'Charger Level', 127, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Charger Power (kW)', 128, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Engine Number of Cylinders', 9, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Displacement (CC)', 11, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Displacement (CI)', 12, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Displacement (L)', 13, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Engine Stroke Cycles', 17, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Engine Model', 18, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '', 'Engine Power (kW)', 21, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, '4', 'Fuel Type - Primary', 24, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, NULL, 'Valve Train Design', 62, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, NULL, 'Engine Configuration', 64, '2023-01-18 19:40:18', '2023-01-18 19:40:18'),
(NULL, NULL, 'Fuel Type - Secondary', 66, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, NULL, 'Fuel Delivery / Fuel Injection Type', 67, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, '', 'Engine Brake (hp) From', 71, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, NULL, 'Cooling Type', 122, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, '', 'Engine Brake (hp) To', 125, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, NULL, 'Electrification Level', 126, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, '', 'Other Engine Info', 129, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, NULL, 'Turbo', 135, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, '', 'Top Speed (MPH)', 139, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, '', 'Engine Manufacturer', 146, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, '1', 'Pretensioner', 78, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, '1', 'Seat Belt Type', 79, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, '', 'Other Restraint System Info', 121, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, NULL, 'Curtain Air Bag Locations', 55, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, NULL, 'Seat Cushion Air Bag Locations', 56, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, '3', 'Front Air Bag Locations', 65, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, NULL, 'Knee Air Bag Locations', 69, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, '3', 'Side Air Bag Locations', 107, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, NULL, 'Anti-lock Braking System (ABS)', 86, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, NULL, 'Electronic Stability Control (ESC)', 99, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, NULL, 'Traction Control', 100, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, NULL, 'Tire Pressure Monitoring System (TPMS) Type', 168, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, '', 'Active Safety System Note', 169, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, NULL, 'Auto-Reverse System for Windows and Sunroofs', 172, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, NULL, 'Automatic Pedestrian Alerting Sound (for Hybrid and EV only)', 173, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, NULL, 'Event Data Recorder (EDR)', 175, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, NULL, 'Keyless Ignition', 176, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, '', 'SAE Automation Level From', 181, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, '', 'SAE Automation Level To', 182, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, NULL, 'Adaptive Cruise Control (ACC)', 81, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, NULL, 'Crash Imminent Braking (CIB)', 87, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, NULL, 'Blind Spot Warning (BSW)', 88, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, NULL, 'Forward Collision Warning (FCW)', 101, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, NULL, 'Lane Departure Warning (LDW)', 102, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, NULL, 'Lane Keeping Assistance (LKA)', 103, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, NULL, 'Backup Camera', 104, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, NULL, 'Parking Assist', 105, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, '', 'Bus Length (feet)', 147, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, '0', 'Bus Floor Configuration Type', 148, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, '0', 'Bus Type', 149, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, '', 'Other Bus Info', 150, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, '0', 'Custom Motorcycle Type', 151, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, '0', 'Motorcycle Suspension Type', 152, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, '0', 'Motorcycle Chassis Type', 153, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, '', 'Other Motorcycle Info', 154, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, NULL, 'Dynamic Brake Support (DBS)', 170, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, NULL, 'Pedestrian Automatic Emergency Braking (PAEB)', 171, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, NULL, 'Automatic Crash Notification (ACN) / Advanced Automatic Crash Notification (AACN)', 174, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, NULL, 'Daytime Running Light (DRL)', 177, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, NULL, 'Headlamp Light Source', 178, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, NULL, 'Semiautomatic Headlamp Beam Switching', 179, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, NULL, 'Adaptive Driving Beam (ADB)', 180, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, NULL, 'Rear Cross Traffic Alert', 183, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, NULL, 'Rear Automatic Emergency Braking', 192, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, NULL, 'Blind Spot Intervention (BSI)', 193, '2023-01-18 19:40:19', '2023-01-18 19:40:19'),
(NULL, NULL, 'Lane Centering Assistance', 194, '2023-01-18 19:40:19', '2023-01-18 19:40:19');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
