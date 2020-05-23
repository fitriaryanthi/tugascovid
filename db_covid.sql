/*
SQLyog Ultimate v12.4.1 (64 bit)
MySQL - 10.4.10-MariaDB : Database - db_covid
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_covid` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_covid`;

/*Table structure for table `tb_data` */

DROP TABLE IF EXISTS `tb_data`;

CREATE TABLE `tb_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_kabupaten` int(11) DEFAULT NULL,
  `tgl_data` date DEFAULT NULL,
  `sembuh` int(11) DEFAULT NULL,
  `positif` int(11) DEFAULT NULL,
  `rawat` int(11) DEFAULT NULL,
  `meninggal` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_kabupaten` (`id_kabupaten`),
  CONSTRAINT `tb_data_ibfk_1` FOREIGN KEY (`id_kabupaten`) REFERENCES `tb_kabupaten` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=572 DEFAULT CHARSET=latin1;

/*Data for the table `tb_data` */

insert  into `tb_data`(`id`,`id_kabupaten`,`tgl_data`,`sembuh`,`positif`,`rawat`,`meninggal`,`created_at`,`updated_at`) values 
(1,1,'2020-05-01',5,7,2,0,'2020-05-14 07:33:59','2020-05-18 14:08:05'),
(2,2,'2020-05-02',24,53,27,4,'2020-05-14 08:29:56','2020-05-14 13:02:17'),
(3,3,'2020-05-02',8,11,3,0,'2020-05-14 08:31:30','2020-05-14 08:31:30'),
(4,1,'2020-05-02',2,13,14,3,'2020-05-14 11:49:12','2020-05-14 11:49:12'),
(5,5,'2020-05-02',5,3,5,12,'2020-05-14 13:38:15','2020-05-14 13:38:15'),
(7,3,'2020-05-16',9,12,3,0,'2020-05-16 06:24:28','2020-05-16 06:24:28'),
(8,6,'2020-05-16',11,14,3,0,'2020-05-16 06:25:15','2020-05-16 06:25:15'),
(9,1,'2020-05-16',17,24,7,0,'2020-05-16 06:26:03','2020-05-16 06:26:03'),
(10,2,'2020-05-16',49,65,14,2,'2020-05-16 06:26:42','2020-05-16 06:26:42'),
(11,5,'2020-05-16',22,28,6,0,'2020-05-16 06:31:57','2020-05-16 06:31:57'),
(12,9,'2020-05-16',54,81,27,0,'2020-05-16 06:33:57','2020-05-16 06:33:57'),
(13,8,'2020-05-16',15,19,4,0,'2020-05-16 06:34:43','2020-05-16 06:34:43'),
(14,7,'2020-05-16',22,29,7,0,'2020-05-16 06:35:11','2020-05-16 06:35:11'),
(15,4,'2020-05-16',33,61,28,0,'2020-05-16 06:35:40','2020-05-16 06:35:40'),
(32,3,'2020-05-17',9,12,3,0,'2020-05-17 16:31:00','2020-05-17 16:31:00'),
(33,6,'2020-05-17',11,14,3,0,'2020-05-17 16:31:00','2020-05-17 16:31:00'),
(34,1,'2020-05-17',18,24,6,0,'2020-05-17 16:31:00','2020-05-17 11:44:34'),
(35,2,'2020-05-17',49,65,14,2,'2020-05-17 16:31:00','2020-05-17 16:31:00'),
(36,5,'2020-05-17',22,28,6,0,'2020-05-17 16:31:00','2020-05-17 16:31:00'),
(37,9,'2020-05-17',56,81,25,0,'2020-05-17 16:31:00','2020-05-17 11:46:11'),
(38,8,'2020-05-17',15,19,4,0,'2020-05-17 16:31:00','2020-05-17 16:31:00'),
(39,7,'2020-05-17',22,29,7,0,'2020-05-17 16:31:00','2020-05-17 16:31:00'),
(56,4,'2020-05-17',33,61,28,0,'2020-05-17 19:47:36','2020-05-17 19:47:38'),
(563,3,'2020-05-18',9,12,3,0,'2020-05-18 08:57:54','2020-05-18 08:57:54'),
(564,6,'2020-05-18',11,14,3,0,'2020-05-18 08:57:54','2020-05-18 08:57:54'),
(565,1,'2020-05-18',18,24,6,0,'2020-05-18 08:57:54','2020-05-18 08:57:54'),
(566,2,'2020-05-18',49,65,14,2,'2020-05-18 08:57:54','2020-05-18 08:57:54'),
(567,5,'2020-05-18',22,28,6,0,'2020-05-18 08:57:54','2020-05-18 08:57:54'),
(568,9,'2020-05-18',56,81,25,0,'2020-05-18 08:57:54','2020-05-18 08:57:54'),
(569,8,'2020-05-18',15,19,4,0,'2020-05-18 08:57:54','2020-05-18 08:57:54'),
(570,7,'2020-05-18',22,29,7,0,'2020-05-18 08:57:54','2020-05-18 08:57:54'),
(571,4,'2020-05-18',33,61,28,0,'2020-05-18 08:57:54','2020-05-18 08:57:54');

/*Table structure for table `tb_kabupaten` */

DROP TABLE IF EXISTS `tb_kabupaten`;

CREATE TABLE `tb_kabupaten` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kabupaten` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `tb_kabupaten` */

insert  into `tb_kabupaten`(`id`,`kabupaten`) values 
(1,'BADUNG'),
(2,'BANGLI'),
(3,'BULELENG'),
(4,'DENPASAR'),
(5,'GIANYAR'),
(6,'JEMBRANA'),
(7,'KARANGASEM'),
(8,'KLUNGKUNG'),
(9,'TABANAN');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
