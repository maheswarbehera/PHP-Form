-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.4.27-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for form
CREATE DATABASE IF NOT EXISTS `form` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `form`;

-- Dumping structure for table form.input_form
CREATE TABLE IF NOT EXISTS `input_form` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Comment` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table form.input_form: ~9 rows (approximately)
INSERT INTO `input_form` (`id`, `Name`, `Email`, `Comment`) VALUES
	(1, 'maheswar behera', 'admin3@gmail.com', 'tttttttt'),
	(2, 'maheswar behera', 'ffmahesh6@gmail.com', ''),
	(3, 'maheswar behera', 'ffmahesh6@gmail.com', ''),
	(4, 'maheswar behera', 'ffmahesh6@gmail.com', ''),
	(5, 'maheswar behera', '', ''),
	(6, 'maheswar behera', '', ''),
	(7, 'f', '', ''),
	(8, '', '', ''),
	(9, '', '', ''),
	(10, '', '', ''),
	(11, 'gh', 'fg@gmail.com', 'g');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
