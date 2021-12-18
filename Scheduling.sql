/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 5.7.31-log : Database - scheduling
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
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `time_in` timestamp(6) NOT NULL,
  `time_out` timestamp(6) NOT NULL,
  `User_ID` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Room_ID` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `booking` */

insert  into `booking`(`booking_id`,`time_in`,`time_out`,`User_ID`,`Room_ID`) values 
(1,'2021-11-26 12:00:00.000000','2021-11-26 18:00:00.000000','Sharif','R1'),
(2,'2021-11-27 08:00:00.000000','2021-11-27 12:00:00.000000','Vincent','R2'),
(3,'2021-11-27 13:00:00.000000','2021-11-27 17:00:00.000000','Christopher','R3'),
(4,'2021-11-28 14:00:00.000000','2021-11-28 19:00:00.000000','Zayn','R4'),
(5,'2021-11-29 08:00:00.000000','2021-11-29 11:00:00.000000','Laurence','R5'),
(9,'2021-12-15 08:00:00.000000','2021-12-15 12:00:00.000000','Rayan','R8');

/*Table structure for table `rooms` */

DROP TABLE IF EXISTS `rooms`;

CREATE TABLE `rooms` (
  `room_id` int(11) NOT NULL AUTO_INCREMENT,
  `room_no` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_build` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `rooms` */

insert  into `rooms`(`room_id`,`room_no`,`room_build`,`description`) values 
(1,'203','Building A','Secong Floor Room'),
(2,'304','Building A','Second to the last room in 3rd Floor'),
(3,'306','Building A','Aboitiz lab'),
(4,'205','Building B','Ground Floor last room to the left'),
(5,'303','Building B','Second Floor last room to the right'),
(6,'405','Building A','fourth floor last room'),
(8,'407','Building A',' 4th Floor room');

/*Table structure for table `user_personnel` */

DROP TABLE IF EXISTS `user_personnel`;

CREATE TABLE `user_personnel` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `user_personnel` */

insert  into `user_personnel`(`user_id`,`firstname`,`lastname`,`subject_id`) values 
(1,'Sharif','launto','Database Administration'),
(2,'Vincent','Dolz','Multimedia'),
(3,'John Christopher','Lim','Software engineering'),
(4,'Kyle','Espana','Web Programming'),
(5,'Mhel','Formalejo','System Analysis'),
(6,'Sharif','Launto','Application Software'),
(7,'Vincent','Dolz','Multimedia'),
(8,'Rayan','Said','Database');

/* Function  structure for function  `getTime` */

/*!50003 DROP FUNCTION IF EXISTS `getTime` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `getTime`(user_i varchar(11)) RETURNS timestamp
    DETERMINISTIC
BEGIN
DECLARE timeget TIMESTAMP;
SELECT time_in INTO timeget FROM scheduling.booking WHERE user_i = user_id;
RETURN timeget;
 END */$$
DELIMITER ;

/* Function  structure for function  `getTimeOut` */

/*!50003 DROP FUNCTION IF EXISTS `getTimeOut` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `getTimeOut`(user_i varchar(11)) RETURNS timestamp
    DETERMINISTIC
BEGIN
DECLARE time2 TIMESTAMP;
SELECT time_out INTO time2 FROM scheduling.booking WHERE user_i = user_id;
RETURN time2;
 END */$$
DELIMITER ;

/* Procedure structure for procedure `ForBooking` */

/*!50003 DROP PROCEDURE IF EXISTS  `ForBooking` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `ForBooking`(
IN booking_id INT(11),
IN time_in Timestamp(6),
IN time_out TIMESTAMP(6),
IN User_ID varchar (11),
IN Room_ID varchar(11))
BEGIN 
	INSERT INTO booking(booking_id, time_in, time_out, User_ID, Room_ID) VALUES (9,'2021-12-15 08:00:00.000000' , '2021-12-15 12:00:00.000000' , 'Rayan', 'R8');
END */$$
DELIMITER ;

/* Procedure structure for procedure `ForRooms` */

/*!50003 DROP PROCEDURE IF EXISTS  `ForRooms` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `ForRooms`(
IN room_id INT(11),
IN room_no VARCHAR(20),
IN room_build VARCHAR(50),
IN description TEXT)
BEGIN 
	INSERT INTO rooms(room_id, room_no, room_build, description) VALUES (8 , '407' , 'Building A' , ' 4th Floor room' );
END */$$
DELIMITER ;

/* Procedure structure for procedure `ForUserPerson` */

/*!50003 DROP PROCEDURE IF EXISTS  `ForUserPerson` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `ForUserPerson`(
IN user_id INT(11),
IN firstname VARCHAR(255),
IN lastname VARCHAR(255),
IN subject_id TEXT)
BEGIN 
	INSERT INTO user_personnel(user_id, firstname, lastname, subject_id) VALUES (8,'Rayan' , 'Said' , 'Database');
END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
