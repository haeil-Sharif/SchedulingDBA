/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 5.7.31 : Database - scheduling
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`scheduling` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `scheduling`;

/*Table structure for table `booking` */

DROP TABLE IF EXISTS `booking`;

CREATE TABLE `booking` (
  `booking_id` INT(11) NOT NULL AUTO_INCREMENT,
  `time_in` TIMESTAMP(6) NOT NULL,
  `time_out` TIMESTAMP(6) NOT NULL,
  `user` VARCHAR(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=INNODB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `booking` */
`schedulingdb``schedulingdb``schedulingdb`
INSERT  INTO `booking`(`booking_id`,`time_in`,`time_out`,`user`) VALUES 
(1,'2021-03-22 06:00:00.000000','2021-03-22 10:00:00.000000','Sharif'),
(2,'2021-03-22 10:00:00.000000','2021-03-22 13:00:00.000000','Vincent'),
(3,'2021-03-22 13:00:00.000000','2021-03-22 17:00:00.000000','Lim');

/*Table structure for table `rooms` */

DROP TABLE IF EXISTS `rooms`;

CREATE TABLE `rooms` (
  `room_id` INT(11) NOT NULL AUTO_INCREMENT,
  `room_no` VARCHAR(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_build` VARCHAR(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` TEXT COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=INNODB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `rooms` */

INSERT  INTO `rooms`(`room_id`,`room_no`,`room_build`,`description`) VALUES 
(1,'203','Building A','Secong Floor Room'),
(2,'304','Building A','Second to the last room in 3rd Floor'),
(3,'306','Building A','Aboitiz lab');

/*Table structure for table `user personnel` */

DROP TABLE IF EXISTS `user personnel`;

CREATE TABLE `user personnel` (
  `user_id` INT(11) NOT NULL AUTO_INCREMENT,
  `firsname` VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` TEXT COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=INNODB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `user personnel` */

INSERT  INTO `user personnel`(`user_id`,`firsname`,`lastname`,`subject`) VALUES 
(1,'Sharif','launto','Database Administration'),
(2,'Vincent','Dolz','Multimedia'),
(3,'John Christopher','Lim','Software engineering');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
