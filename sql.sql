/*
SQLyog Community Edition- MySQL GUI v8.02 
MySQL - 5.0.87-community-nt : Database - demo_ors0
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`demo_ors0` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `demo_ors0`;

/*Table structure for table `b_subject` */

DROP TABLE IF EXISTS `b_subject`;

CREATE TABLE `b_subject` (
  `ID` bigint(20) NOT NULL,
  `CREATED_BY` varchar(50) default NULL,
  `CREATED_DATETIME` datetime default NULL,
  `MODIFIED_BY` varchar(50) default NULL,
  `MODIFIED_DATETIME` datetime default NULL,
  `COURSE_ID` bigint(20) default NULL,
  `COURSE_NAME` varchar(50) default NULL,
  `SEMESTER` int(11) default NULL,
  `SUBJECT_CODE1` varchar(50) default NULL,
  `SUBJECT_CODE2` varchar(50) default NULL,
  `SUBJECT_CODE3` varchar(50) default NULL,
  `SUBJECT_CODE4` varchar(50) default NULL,
  `SUBJECT_CODE5` varchar(50) default NULL,
  `SUBJECT_NAME1` varchar(50) default NULL,
  `SUBJECT_NAME2` varchar(50) default NULL,
  `SUBJECT_NAME3` varchar(50) default NULL,
  `SUBJECT_NAME4` varchar(50) default NULL,
  `SUBJECT_NAME5` varchar(50) default NULL,
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `b_subject` */

/*Table structure for table `faculty_college` */

DROP TABLE IF EXISTS `faculty_college`;

CREATE TABLE `faculty_college` (
  `ID` bigint(20) NOT NULL,
  `CREATED_BY` varchar(50) default NULL,
  `CREATED_DATETIME` datetime default NULL,
  `MODIFIED_BY` varchar(50) default NULL,
  `MODIFIED_DATETIME` datetime default NULL,
  `COLLEGE_ID` bigint(20) default NULL,
  `COLLEGE_NAME` varchar(255) default NULL,
  `COURSE_ID` bigint(20) default NULL,
  `COURSE_NAME` varchar(255) default NULL,
  `USER_ID` bigint(20) default NULL,
  `FACULTY_NAME` varchar(255) default NULL,
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `faculty_college` */

/*Table structure for table `st_college` */

DROP TABLE IF EXISTS `st_college`;

CREATE TABLE `st_college` (
  `ID` bigint(20) NOT NULL,
  `NAME` varchar(255) default NULL,
  `ADDRESS` varchar(255) default NULL,
  `STATE` varchar(255) default NULL,
  `CITY` varchar(255) default NULL,
  `PHONE_NO` varchar(255) default NULL,
  `CREATED_BY` varchar(255) default NULL,
  `MODIFIED_BY` varchar(255) default NULL,
  `CREATED_DATETIME` datetime default NULL,
  `MODIFIED_DATETIME` datetime default NULL,
  PRIMARY KEY  (`ID`),
  KEY `NAME_IDX` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `st_college` */

insert  into `st_college`(`ID`,`NAME`,`ADDRESS`,`STATE`,`CITY`,`PHONE_NO`,`CREATED_BY`,`MODIFIED_BY`,`CREATED_DATETIME`,`MODIFIED_DATETIME`) values (4,'DY patil','pune','Mp','bhopal','9561880538','Admin','Admin','2016-01-08 14:39:26','2016-01-08 14:39:26'),(5,'CV Raman','kotaa','Mp','bhopal','9561880537','Admin','k@gmail.com','2016-04-19 00:04:01','2016-04-19 00:04:01'),(6,'shankracharya','udyan nagar','chattisgarh','raipur','9561889586','k@gmail.com','k@gmail.com','2016-02-15 11:51:24','2016-02-15 11:51:24'),(7,'Chouksey','laal khadan','chhattisgarh','bilaspur','8602512246','k@gmail.com','k@gmail.com','2016-02-15 12:00:24','2016-02-15 12:00:24'),(8,'JK institute','raipur road','himachal','chandigarh','8502135644','k@gmail.com','k@gmail.com','2016-02-15 12:02:50','2016-02-15 12:02:50'),(9,'Government','Koni','chhattisgarh','durg','7854656412','k@gmail.com','k@gmail.com','2016-02-15 12:04:22','2016-02-15 12:04:22'),(11,'wjlkwkd','ksdlas','slkxm','skxmls','9638527418','admin@gmail.com','admin@gmail.com','2016-10-01 16:42:25','2016-10-01 16:42:25'),(12,'QWSD','dcdfc','sdcdf','dcvd','8528527414','admin@gmail.com','admin@gmail.com','2016-10-03 14:21:43','2016-10-03 14:21:43'),(13,'jljj','kl;k;','hhjkj','hgjhj','9876543215','admin@gmail.com','admin@gmail.com','2016-10-18 15:53:20','2016-10-18 15:53:20'),(14,'sdds','sdsd','sdsd','dsd','9876543215',NULL,NULL,NULL,NULL),(15,'Shibhu','SB Road','Maharastra','PUNE','1234567890','Admin','Admin',NULL,NULL),(16,'Shibh','SB Road','Maharastra','PUNE','1234567890','Admi','Admi',NULL,NULL),(17,'sdgjflk','kejfdlkj ekjfl22','dfdjkdl','skdjdflv','9963852741',NULL,NULL,NULL,NULL);

/*Table structure for table `st_course` */

DROP TABLE IF EXISTS `st_course`;

CREATE TABLE `st_course` (
  `ID` bigint(20) NOT NULL,
  `COURSE_NAME` varchar(255) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `CREATED_BY` varchar(255) default NULL,
  `MODIFIED_BY` varchar(255) default NULL,
  `CREATED_DATETIME` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `MODIFIED_DATETIME` timestamp NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`ID`),
  KEY `NAME_IDX` (`COURSE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `st_course` */

insert  into `st_course`(`ID`,`COURSE_NAME`,`DESCRIPTION`,`CREATED_BY`,`MODIFIED_BY`,`CREATED_DATETIME`,`MODIFIED_DATETIME`) values (1,'BBA','course name is bba','admin@gmail.com',NULL,'2016-11-11 08:01:45','2016-11-11 08:01:45'),(2,'LLB','asdsad','admin@gmail.com',NULL,'2017-01-12 13:04:09','2017-01-12 13:04:09'),(3,'MTECH','asds','admin@gmail.com',NULL,'2017-01-12 12:58:25','2017-01-12 12:58:25'),(4,'BCA','asdd','admin@gmail.com','admin@gmail.com','2016-10-06 15:42:36','2016-10-06 15:42:36'),(6,'MCA','sdasd','admin@gmail.com','admin@gmail.com','2016-10-06 15:43:15','2016-10-06 15:43:15'),(7,'MBA','asdd','admin@gmail.com','admin@gmail.com','2016-10-06 15:43:27','2016-10-06 15:43:27'),(9,'MBBS','adssd','admin@gmail.com','admin@gmail.com','2016-10-08 13:03:45','2016-10-08 13:03:45'),(10,'pgpit','hgjhjhg','admin@gmail.com','admin@gmail.com','2016-10-08 16:38:40','2016-10-08 16:38:40'),(11,'Modern Science','SDsd asdsd','admin@gmail.com','admin@gmail.com','2016-10-12 17:03:14','2016-10-12 17:03:14'),(12,'32323','deddd','',NULL,'2016-11-11 12:20:23','2016-11-11 12:20:23'),(13,'sdsd','dsdss','',NULL,'2016-11-11 12:47:56','2016-11-11 12:47:56'),(14,'FDFDF','FDFDF','',NULL,'2016-11-12 16:05:36','2016-11-12 16:05:36'),(15,'VVV','dfdf','',NULL,'2016-11-12 22:10:05','2016-11-12 22:10:05'),(16,'eee','cgfdfhgd','',NULL,'2016-12-30 15:22:00','2016-12-30 15:22:00'),(17,'PGDM','Business Management','Admin','Admin','2017-01-03 17:59:48',NULL);

/*Table structure for table `st_faculty` */

DROP TABLE IF EXISTS `st_faculty`;

CREATE TABLE `st_faculty` (
  `ID` bigint(20) NOT NULL,
  `FACULTY_NAME` varchar(255) default NULL,
  `USER_ID` bigint(20) default NULL,
  `COLLEGE_ID` bigint(20) default NULL,
  `CREATED_BY` varchar(255) default NULL,
  `MODIFIED_BY` varchar(255) default NULL,
  `CREATED_DATETIME` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `MODIFIED_DATETIME` timestamp NOT NULL default '0000-00-00 00:00:00',
  `COLLEGE_NAME` varchar(50) default NULL,
  `LOGIN` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `st_faculty` */

insert  into `st_faculty`(`ID`,`FACULTY_NAME`,`USER_ID`,`COLLEGE_ID`,`CREATED_BY`,`MODIFIED_BY`,`CREATED_DATETIME`,`MODIFIED_DATETIME`,`COLLEGE_NAME`,`LOGIN`) values (2,'Deepak Kumar',102,4,'',NULL,'2016-11-12 22:11:55','2016-11-12 22:11:55','DY patil',NULL),(3,'Ranjit Singh',104,6,'',NULL,'2017-01-12 13:01:58','2017-01-12 13:01:58','shankracharya',NULL),(4,'Raman Singh',105,5,'',NULL,'2016-12-30 15:32:57','2016-12-30 15:32:57','CV Raman',NULL),(5,'Sonali Rathi',109,2,'',NULL,'2016-12-30 15:52:02','2016-12-30 15:52:02','SVTS',NULL),(6,'Sonali Rathi',109,7,'',NULL,'2016-11-10 08:17:21','2016-11-10 08:17:21','Chouksey',NULL),(7,'richa trivedi',27,2,'',NULL,'2016-12-30 15:49:15','2016-12-30 15:49:15','SVTS',NULL),(8,'Rupali Bhusari',121,5,'',NULL,'2017-01-09 14:06:23','2017-01-09 14:06:23','CV Raman',NULL),(9,'Monali Patil',108,8,'',NULL,'2017-01-09 14:07:05','2017-01-09 14:07:05','JK institute',NULL),(10,'Prachi Sharma',127,8,'',NULL,'2017-01-09 14:57:48','2017-01-09 14:57:48','JK institute',NULL);

/*Table structure for table `st_marksheet` */

DROP TABLE IF EXISTS `st_marksheet`;

CREATE TABLE `st_marksheet` (
  `ID` bigint(20) NOT NULL,
  `ROLL_NO` varchar(255) default NULL,
  `STUDENT_ID` bigint(20) default NULL,
  `NAME` varchar(255) default NULL,
  `PHYSICS` int(11) default NULL,
  `CHEMISTRY` int(11) default NULL,
  `MATHS` int(11) default NULL,
  `CREATED_BY` varchar(255) default NULL,
  `MODIFIED_BY` varchar(255) default NULL,
  `CREATED_DATETIME` datetime default NULL,
  `MODIFIED_DATETIME` datetime default NULL,
  `STUDENTID` bigint(20) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `st_marksheet` */

insert  into `st_marksheet`(`ID`,`ROLL_NO`,`STUDENT_ID`,`NAME`,`PHYSICS`,`CHEMISTRY`,`MATHS`,`CREATED_BY`,`MODIFIED_BY`,`CREATED_DATETIME`,`MODIFIED_DATETIME`,`STUDENTID`) values (27,'111Q',7,'John Costaa',77,88,88,'rahul.sahu@nenosystems.com',NULL,'2016-12-30 15:32:44','2016-12-30 15:32:44',NULL),(35,'123S',25,'AshwiniRathod',99,89,88,'admin@gmail.com','admin@gmail.com','2016-10-02 18:37:00','2016-10-02 18:37:00',NULL),(36,'90Q',7,'JohnCostaa',78,77,78,'admin@gmail.com','admin@gmail.com','2016-10-02 18:37:32','2016-10-02 18:37:32',NULL),(37,'890D',7,'JohnCostaa',99,99,99,'admin@gmail.com','admin@gmail.com','2016-10-02 18:38:25','2016-10-02 18:38:25',NULL),(39,'89lk',25,'AshwiniRathod',78,45,45,'admin@gmail.com','admin@gmail.com','2016-10-02 18:41:27','2016-10-02 18:41:27',NULL),(41,'123ww',25,'AshwiniRathod',88,88,88,'admin@gmail.com','admin@gmail.com','2016-10-04 14:58:39','2016-10-04 14:58:39',NULL),(44,'122m',27,'PunamPatil',77,77,77,'admin@gmail.com','admin@gmail.com','2016-10-04 16:54:20','2016-10-04 16:54:20',NULL),(45,'1234A',25,'AshwiniRathod',72,78,87,'admin@gmail.com','admin@gmail.com','2016-10-05 13:35:12','2016-10-05 13:35:12',NULL),(47,'456Y',32,'Nisha sharma',99,66,99,'',NULL,'2017-01-09 15:00:33','2017-01-09 15:00:33',NULL);

/*Table structure for table `st_role` */

DROP TABLE IF EXISTS `st_role`;

CREATE TABLE `st_role` (
  `ID` bigint(20) NOT NULL,
  `NAME` varchar(255) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `CREATED_BY` varchar(255) default NULL,
  `MODIFIED_BY` varchar(255) default NULL,
  `CREATED_DATETIME` timestamp NULL default CURRENT_TIMESTAMP,
  `MODIFIED_DATETIME` timestamp NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`ID`),
  KEY `NAME_IDX` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `st_role` */

insert  into `st_role`(`ID`,`NAME`,`DESCRIPTION`,`CREATED_BY`,`MODIFIED_BY`,`CREATED_DATETIME`,`MODIFIED_DATETIME`) values (1,'Admin','Administrator Role','Admin',NULL,'2016-11-13 09:10:32','2016-11-13 09:10:32'),(2,'Student','Student Role Test','Rahul Sahu',NULL,'2017-01-12 12:55:01','2017-01-12 12:55:01'),(3,'College','Collegere','Rahul Sahu','admin@gmail.com','2016-10-08 16:46:42','2016-10-08 16:46:42'),(4,'Kiosk','Kiosk Role','k@gmail.com',NULL,'2016-12-30 15:34:48','2016-12-30 15:34:48'),(5,'Faculty','Teaching Role','k@gmail.com',NULL,'2017-01-12 12:55:19','2017-01-12 12:55:19'),(7,'yyyy','fgf','admin@gmail.com','admin@gmail.com','2016-10-05 14:13:32','2016-10-05 14:13:32'),(8,'ae','adsd ssdfds','admin@gmail.com','admin@gmail.com','2016-10-12 16:59:40','2016-10-12 16:59:40'),(9,'sd','sds sds sdsa','admin@gmail.com','admin@gmail.com','2016-10-12 16:59:50','2016-10-12 16:59:50'),(10,'eret','dgdgf','',NULL,'2016-12-30 15:26:38','2016-12-30 15:26:38'),(11,'sdrtg','fdgdg','',NULL,'2016-12-30 15:39:46','2016-12-30 15:39:46'),(12,'sdfjk','sdjfskdfj','',NULL,'2017-01-09 14:20:27','2017-01-09 14:20:27');

/*Table structure for table `st_subject` */

DROP TABLE IF EXISTS `st_subject`;

CREATE TABLE `st_subject` (
  `ID` bigint(20) NOT NULL,
  `COURSE_ID` bigint(20) default NULL,
  `COURSE_NAME` varchar(255) default NULL,
  `SUBJECT` varchar(255) default NULL,
  `SUBJECT_CODE` varchar(255) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `CREATED_BY` varchar(30) default NULL,
  `MODIFIED_BY` varchar(30) default NULL,
  `CREATED_DATETIME` datetime default NULL,
  `MODIFIED_DATETIME` datetime default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `st_subject` */

insert  into `st_subject`(`ID`,`COURSE_ID`,`COURSE_NAME`,`SUBJECT`,`SUBJECT_CODE`,`DESCRIPTION`,`CREATED_BY`,`MODIFIED_BY`,`CREATED_DATETIME`,`MODIFIED_DATETIME`) values (57,2,'LLB','dfdf','df34','efdf','',NULL,'2017-01-12 13:19:42','2017-01-12 13:19:42'),(58,1,'BBA','TT','TT101','testing for findBySubject method','',NULL,'2017-01-12 13:00:24','2017-01-12 13:00:24'),(60,4,'BCA','qwe','qwe12','fdfdf','',NULL,'2016-11-12 09:11:33','2016-11-12 09:11:33'),(61,11,'Modern Science','fhf','dgfd45','fdg','',NULL,'2016-12-30 15:49:01','2016-12-30 15:49:01'),(62,2,'PGDM1',NULL,NULL,'dsfd','Faculty','sdsdf',NULL,NULL),(63,7,'MBA','sssss','www1','sdfdsf','',NULL,'2017-01-12 13:04:35','2017-01-12 13:04:35'),(64,7,'MBA','ddd','www1','hjglj','',NULL,'2017-01-12 13:11:37','2017-01-12 13:11:37');

/*Table structure for table `st_timetable` */

DROP TABLE IF EXISTS `st_timetable`;

CREATE TABLE `st_timetable` (
  `ID` bigint(20) NOT NULL,
  `FACULTY_ID` bigint(20) default NULL,
  `FACULTY_NAME` varchar(255) default NULL,
  `COURSE_ID` bigint(20) default NULL,
  `COURSE_NAME` varchar(255) default NULL,
  `DAY` varchar(255) default NULL,
  `TIME` varchar(255) default NULL,
  `CREATED_BY` varchar(50) default NULL,
  `CREATED_DATETIME` datetime default NULL,
  `MODIFIED_BY` varchar(50) default NULL,
  `MODIFIED_DATETIME` datetime default NULL,
  `SUBJECT_ID` bigint(20) default NULL,
  `SUBJECT_NAME` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `st_timetable` */

insert  into `st_timetable`(`ID`,`FACULTY_ID`,`FACULTY_NAME`,`COURSE_ID`,`COURSE_NAME`,`DAY`,`TIME`,`CREATED_BY`,`CREATED_DATETIME`,`MODIFIED_BY`,`MODIFIED_DATETIME`,`SUBJECT_ID`,`SUBJECT_NAME`) values (8,109,'Sonali Rathi',1,'BBA','Wednesday','10.00AM-11.00AM','','2017-01-19 16:49:49',NULL,'2017-01-19 16:49:49',58,'TT'),(9,102,'Deepak Kumar',11,'Modern Science','Tuesday','10.00AM-11.00AM','','2017-01-19 12:43:00',NULL,'2017-01-19 12:43:00',61,'fhf'),(10,27,'richa trivedi',1,'BBA','Monday','10.00AM-11.00AM','','2016-12-28 22:44:53',NULL,'2016-12-28 22:44:53',58,'TT'),(11,108,'Monali Patil',7,'MBA','Tuesday','02.00PM-03.00PM','','2017-01-19 12:43:17',NULL,'2017-01-19 12:43:17',64,'ddd'),(12,108,'Monali Patil',4,'BCA','Wednesday','10.00AM-11.00AM','','2017-01-19 12:43:35',NULL,'2017-01-19 12:43:35',60,'qwe'),(13,104,'Ranjit Singh',1,'BBA','Tuesday','02.00PM-03.00PM','','2016-12-30 16:03:20',NULL,'2016-12-30 16:03:20',58,'TT'),(14,NULL,NULL,2,'PGPLM',NULL,NULL,'Admin','2017-01-04 17:05:26','Admin','2017-01-04 17:05:26',NULL,NULL),(15,108,'Monali Patil',11,'Modern Science','Thursday','02.00PM-03.00PM','','2017-01-07 13:22:33',NULL,'2017-01-07 13:22:33',61,'fhf'),(16,111,'Kunal Pathak',2,'LLB','Saturday','11.00AM-12.00AM','','2017-01-07 13:22:54',NULL,'2017-01-07 13:22:54',59,'qwe'),(17,114,'Shyamli Sonune',11,'Modern Science','Friday','02.00PM-03.00PM','','2017-01-09 14:06:42',NULL,'2017-01-09 14:06:42',61,'fhf');

/*Table structure for table `st_user` */

DROP TABLE IF EXISTS `st_user`;

CREATE TABLE `st_user` (
  `ID` bigint(20) NOT NULL,
  `FIRST_NAME` varchar(255) default NULL,
  `LAST_NAME` varchar(255) default NULL,
  `LOGIN` varchar(255) default NULL,
  `PASSWORD` varchar(255) default NULL,
  `DOB` datetime default NULL,
  `MOBILE_NO` varchar(255) default NULL,
  `ROLE_ID` bigint(20) default NULL,
  `UNSUCCESSFUL_LOGIN` int(11) default NULL,
  `GENDER` varchar(255) default NULL,
  `LAST_LOGIN` datetime default NULL,
  `USER_LOCK` varchar(255) default NULL,
  `REGISTERED_IP` varchar(255) default NULL,
  `LAST_LOGIN_IP` varchar(255) default NULL,
  `CREATED_BY` varchar(255) default NULL,
  `MODIFIED_BY` varchar(255) default NULL,
  `CREATED_DATETIME` datetime default NULL,
  `MODIFIED_DATETIME` datetime default NULL,
  `ROLE_NAME` varchar(255) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `fk_ROLE_ID_idx` (`ROLE_ID`),
  KEY `MOBILE_NO_IDX` (`MOBILE_NO`),
  KEY `FIRST_LAST_NAME_IDX` (`FIRST_NAME`,`LAST_NAME`),
  CONSTRAINT `fk_ROLE_ID` FOREIGN KEY (`ROLE_ID`) REFERENCES `st_role` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `st_user` */

insert  into `st_user`(`ID`,`FIRST_NAME`,`LAST_NAME`,`LOGIN`,`PASSWORD`,`DOB`,`MOBILE_NO`,`ROLE_ID`,`UNSUCCESSFUL_LOGIN`,`GENDER`,`LAST_LOGIN`,`USER_LOCK`,`REGISTERED_IP`,`LAST_LOGIN_IP`,`CREATED_BY`,`MODIFIED_BY`,`CREATED_DATETIME`,`MODIFIED_DATETIME`,`ROLE_NAME`) values (1,'Nkjkj','ssww','admin@gmail.com','111111','1990-06-19 00:00:00','8529637415',1,0,'Male','1970-01-01 05:30:00','Inactive','',NULL,'Rahul Sahu',NULL,'2017-01-12 13:02:38','2017-01-12 13:02:38',NULL),(16,'ranjit','choudhary','r@gmail.com','121212','1970-01-14 00:00:00','7418529635',2,0,'M',NULL,'INACTIVE',NULL,NULL,'rahul.sahu@nenosystems.com','rahul.sahu@nenosystems.com','2016-09-06 15:21:53','2016-09-06 15:21:53',NULL),(19,'Sunil','Sahu','sunil.sahu@nenosystems.com','pass1234','2014-09-01 00:00:00','9827360504',4,0,'M','2014-09-22 19:23:09','Inactive',NULL,'122.168.194.184','root','root','2014-09-01 13:34:16','2014-09-01 13:34:48',NULL),(21,'Pankaj','Sahu','pankaj.sahu@nenosystems.com','karisma123','1986-11-07 00:00:00','9827568186',1,0,'M','2014-10-31 13:05:24','Inactive','','122.168.194.184','root','rahul.sahu@nenosystems.com','2014-09-01 19:50:04','2014-09-01 19:56:54',NULL),(26,'arif','khan','kevin.college@gmail.com','12345678','1985-05-08 00:00:00','9638527414',3,0,'M',NULL,'Inactive',NULL,NULL,'root','pankaj.sahu@nenosystems.com','2014-09-21 15:48:58','2014-10-30 18:59:25',NULL),(27,'richa','trivedi','trivedi.richa88@gmail.com','123456','1988-01-27 00:00:00','9999666335',5,0,'F',NULL,'Inactive',NULL,NULL,'root','root','2014-09-22 08:29:50','2014-09-22 08:29:50',NULL),(32,'shubham','tiwari','shubhamtiwari@gmail.com','justbitit','2014-07-27 00:00:00','8529637415',4,0,'M',NULL,'Inactive',NULL,NULL,'root','root','2014-09-27 14:06:08','2014-09-27 14:06:08',NULL),(33,'harsh','dubey','hdubey29@gmail.com','124','1993-07-29 00:00:00','8527415685',2,0,'M',NULL,'Inactive',NULL,NULL,'root','root','2014-09-29 11:15:41','2014-09-29 11:15:41',NULL),(40,'ashish','gupta','ashishgupta@gmail.com','12345678','1997-04-17 00:00:00','7894561235',2,0,'M',NULL,'INACTIVE',NULL,NULL,'root','kevin.admin@gmail.com','2016-04-22 13:46:07','2016-04-22 13:46:07',NULL),(52,'kunal','pathak','pathakkunal940@gmail.com','1234','2004-02-03 00:00:00','8527419636',2,0,'M',NULL,'INACTIVE',NULL,NULL,'root','root','2016-02-02 15:51:53','2016-02-02 15:51:53',NULL),(53,'Vikas','Shivawedi','v@gmail.com','1234','2016-04-06 00:00:00','7894561234',2,0,'M',NULL,'INACTIVE',NULL,NULL,'root','root','2016-02-09 19:25:08','2016-02-09 19:25:08',NULL),(54,'Damini','Jawale','damini07@gmail.com','1111','2016-02-04 00:00:00',NULL,2,0,'F',NULL,'INACTIVE',NULL,NULL,'root','root','2016-02-15 15:57:33','2016-02-15 15:57:33',NULL),(56,'Monisha','Singh','monisha12@yahoo.com','11','2016-02-12 00:00:00',NULL,3,0,'F',NULL,'INACTIVE',NULL,NULL,'root','root','2016-02-16 19:48:38','2016-02-16 19:48:38',NULL),(57,'kevin','johns','kevin123@gmail.com','kevin-1234','1994-03-19 00:00:00',NULL,2,0,'M',NULL,'INACTIVE',NULL,NULL,'root','root','2016-03-15 16:20:45','2016-03-15 16:20:45',NULL),(65,'Monica','Dsouza','monica7@yahoo.com','m-123456','1993-02-17 00:00:00',NULL,2,0,'F',NULL,'INACTIVE',NULL,NULL,'k@gmail.com','k@gmail.com','2016-03-30 12:42:58','2016-03-30 12:42:58',NULL),(70,'Deependra','Singh','ds@gmail.com','12345678','1984-04-14 00:00:00',NULL,2,0,'M',NULL,'INACTIVE',NULL,NULL,'k@gmail.com','k@gmail.com','2016-04-04 16:09:10','2016-04-04 16:09:10',NULL),(89,'Nandini','Pyasi','nandini@gmail.com','1234567','1997-04-08 00:00:00',NULL,2,0,'F',NULL,'INACTIVE',NULL,NULL,'k@gmail.com','k@gmail.com','2016-04-20 16:40:29','2016-04-20 16:40:29',NULL),(93,'ghvyv','huuhhjvjh','mm@gmail.com','1234567','1997-04-08 00:00:00',NULL,2,0,'M',NULL,'INACTIVE',NULL,NULL,'root','root','2016-04-26 14:59:38','2016-04-26 14:59:38',NULL),(94,'gchghhgfhg','chghghedde','gcgh@gmail.com','1234567','1996-04-11 00:00:00',NULL,4,0,'F',NULL,'INACTIVE',NULL,NULL,'kevin.admin@gmail.com','kevin.admin@gmail.com','2016-05-05 17:04:14','2016-05-05 17:04:14',NULL),(102,'Deepak','Kumar','dpk@gmail.com','1234567','1991-05-17 00:00:00',NULL,5,0,'M',NULL,'INACTIVE',NULL,NULL,'kevin.admin@gmail.com','kevin.admin@gmail.com','2016-05-10 12:33:55','2016-05-10 12:33:55',NULL),(103,'kevin','johns','kevin.johns2409@gmail.com','12345678','1990-05-25 00:00:00',NULL,2,0,'M',NULL,'INACTIVE',NULL,NULL,'kevin.admin@gmail.com','kevin.admin@gmail.com','2016-05-11 10:29:35','2016-05-11 10:29:35',NULL),(104,'Ranjit','Singh','rr@yahoo.com','1234567','1993-05-14 00:00:00',NULL,5,0,'M',NULL,'INACTIVE',NULL,NULL,'kevin.admin@gmail.com','kevin.admin@gmail.com','2016-05-11 10:42:18','2016-05-11 10:42:18',NULL),(105,'Raman','Singh','raman@gmail.com','12345678','1997-05-15 00:00:00',NULL,5,0,'M',NULL,'INACTIVE',NULL,NULL,'kevin.admin@gmail.com','kevin.admin@gmail.com','2016-05-11 11:13:19','2016-05-11 11:13:19',NULL),(106,'Shivani','Sharma','ss@gmail.com','1741852','1994-08-10 00:00:00',NULL,1,0,'F',NULL,'INACTIVE',NULL,NULL,'sneha@gmail.com','sneha@gmail.com','2016-08-20 15:39:33','2016-08-20 15:39:33',NULL),(108,'Monali','Patil','mpp@gmail.com','111111','1995-08-03 00:00:00',NULL,5,0,'F',NULL,'INACTIVE',NULL,NULL,'rahul.sahu@nenosystems.com','admin@gmail.com','2016-10-08 16:49:38','2016-10-08 16:49:38',NULL),(109,'Sonali','Rathi','sr@gmail.com','741741741','1995-08-04 00:00:00',NULL,5,0,'F',NULL,'INACTIVE',NULL,NULL,'rahul.sahu@nenosystems.com','rahul.sahu@nenosystems.com','2016-08-30 15:27:35','2016-08-30 15:27:35',NULL),(111,'Kunal','Pathak','kp@gmail.com','741852963','1994-06-21 00:00:00',NULL,5,0,'M',NULL,'INACTIVE',NULL,NULL,'rahul.sahu@nenosystems.com','rahul.sahu@nenosystems.com','2016-09-03 15:30:51','2016-09-03 15:30:51',NULL),(114,'Shyamli','Sonune','ssd@gmail.com','741852963','1989-12-07 00:00:00',NULL,5,0,'F',NULL,'INACTIVE',NULL,NULL,'rahul.sahu@nenosystems.com','rahul.sahu@nenosystems.com','2016-09-14 17:07:56','2016-09-14 17:07:56',NULL),(116,'Mamta','Banarji','mb12@gmail.com','741852','1988-12-26 00:00:00',NULL,5,0,'F',NULL,'INACTIVE',NULL,NULL,'rahul.sahu@nenosystems.com','rahul.sahu@nenosystems.com','2016-09-16 06:50:58','2016-09-16 06:50:58',NULL),(118,'kjhkhk','hgjhk','jhk@gmail.com','741852963','1990-01-30 00:00:00',NULL,2,0,'F',NULL,'INACTIVE',NULL,NULL,'root','root','2016-09-16 06:53:19','2016-09-16 06:53:19',NULL),(119,'Sonali','Kulkarni','sk12@gmail.com','qwerty','1989-01-02 00:00:00',NULL,1,0,'F',NULL,'INACTIVE',NULL,NULL,'admin@gmail.com','admin@gmail.com','2016-10-02 17:51:05','2016-10-02 17:51:05',NULL),(120,'Sadhana','Patil','sp89@gmail.com','111111','1989-03-06 00:00:00',NULL,5,0,'F',NULL,'INACTIVE',NULL,NULL,'admin@gmail.com','admin@gmail.com','2016-10-03 14:22:57','2016-10-03 14:22:57',NULL),(121,'Rupali','Bhusari','rb4@gmail.com','111111','1990-02-06 00:00:00',NULL,5,0,'F',NULL,'INACTIVE',NULL,NULL,'admin@gmail.com','admin@gmail.com','2016-10-03 14:25:34','2016-10-03 14:25:34',NULL),(123,'Mamta','Banarji','mba@gmail.com','852963','1989-01-30 00:00:00',NULL,5,0,'F',NULL,'INACTIVE',NULL,NULL,'admin@gmail.com','admin@gmail.com','2016-10-04 15:42:34','2016-10-04 15:42:34',NULL),(124,'Mamta','Banarji','mba12@gmail.com','852963','1989-01-30 00:00:00',NULL,5,0,'F',NULL,'INACTIVE',NULL,NULL,'admin@gmail.com','admin@gmail.com','2016-10-04 15:42:47','2016-10-04 15:42:47',NULL),(126,'Ranjit','singh','rs123@gmail.com','qwerty','1988-10-25 00:00:00',NULL,5,0,'M',NULL,'INACTIVE',NULL,NULL,'admin@gmail.com','admin@gmail.com','2016-10-04 15:55:09','2016-10-04 15:55:09',NULL),(127,'Prachi','Sharma','ps23@gmail.com','741852','1989-01-02 00:00:00',NULL,5,0,'F',NULL,'INACTIVE',NULL,NULL,'admin@gmail.com','admin@gmail.com','2016-10-05 12:10:05','2016-10-05 12:10:05',NULL),(128,'aaaa','nnn','asd@gmail.com','741852','1990-06-19 00:00:00',NULL,2,0,'M',NULL,'INACTIVE',NULL,NULL,'root','root','2016-10-05 13:20:25','2016-10-05 13:20:25',NULL),(129,'aaaa','nnn','asd123@gmail.com','741852','1990-06-19 00:00:00',NULL,2,0,'M',NULL,'INACTIVE',NULL,NULL,'root','root','2016-10-05 13:21:19','2016-10-05 13:21:19',NULL),(130,'Puja','Sapkal','ps11@gmail.com','111111','1989-11-29 00:00:00',NULL,3,0,'F',NULL,'INACTIVE',NULL,NULL,'admin@gmail.com','admin@gmail.com','2016-10-08 13:00:01','2016-10-08 13:00:01',NULL),(131,'dvfb','dgfdg','fff@g.vvl','7777777','1960-02-02 00:00:00','7418529638',9,0,'Male','1970-01-01 05:30:00','Inactive','',NULL,'',NULL,'2017-01-11 15:13:00','2017-01-11 15:13:00',NULL),(132,'sdfjdsl','wejfrlkg','ewjr@d.ccl','5555555','1951-03-07 00:00:00','7418529638',1,0,'Male','1970-01-01 05:30:00','Inactive','',NULL,'',NULL,'2017-01-12 16:30:20','2017-01-12 16:30:20',NULL),(133,'ryirot','rktlh','fjgfk@g.llp','1111111','1980-02-05 00:00:00','9963852741',2,0,'Female',NULL,'Inactive',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `ID` bigint(20) NOT NULL,
  `COLLEGE_ID` bigint(20) default NULL,
  `COLLEGE_NAME` varchar(255) default NULL,
  `FIRST_NAME` varchar(255) default NULL,
  `LAST_NAME` varchar(255) default NULL,
  `DATE_OF_BIRTH` datetime default NULL,
  `MOBILE_NO` varchar(255) default NULL,
  `EMAIL` varchar(255) default NULL,
  `CREATED_BY` varchar(255) default NULL,
  `MODIFIED_BY` varchar(255) default NULL,
  `CREATED_DATETIME` datetime default NULL,
  `MODIFIED_DATETIME` datetime default NULL,
  PRIMARY KEY  (`ID`),
  KEY `MOBILE_NO_IDX` (`MOBILE_NO`),
  KEY `fk_COLLEGE_ID_idx` (`COLLEGE_ID`),
  KEY `FIRST_LAST_NAME_IDX` (`FIRST_NAME`,`LAST_NAME`),
  CONSTRAINT `fk_COLLEGE_ID` FOREIGN KEY (`COLLEGE_ID`) REFERENCES `st_college` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `student` */

insert  into `student`(`ID`,`COLLEGE_ID`,`COLLEGE_NAME`,`FIRST_NAME`,`LAST_NAME`,`DATE_OF_BIRTH`,`MOBILE_NO`,`EMAIL`,`CREATED_BY`,`MODIFIED_BY`,`CREATED_DATETIME`,`MODIFIED_DATETIME`) values (4,4,'DY patil','vipin','Chandore','1989-05-27 00:00:00','8602512753','vipin.chandore@sunrays.co.in','Admin','k@gmail.com','2016-03-15 12:13:30','2016-03-15 12:13:30'),(19,5,'CV Raman','Tanya','Singh','1994-04-20 00:00:00','7305279604','tani07@gmail.com','k@gmail.com','k@gmail.com','2016-03-31 15:08:29','2016-03-31 15:08:29'),(23,4,'DY patil','sagar','patne','1992-08-01 00:00:00','7417418525','sp@gmail.com','rahul.sahu@nenosystems.com','rahul.sahu@nenosystems.com','2016-08-29 17:09:06','2016-08-29 17:09:06'),(25,9,'Government','Ashwini','Rathod','1995-07-20 00:00:00','8529637418','are@gmail.com','admin@gmail.com','admin@gmail.com','2016-10-02 18:04:58','2016-10-02 18:04:58'),(32,NULL,NULL,'Nisha','sharma',NULL,'1234567890',NULL,'admin',NULL,NULL,NULL),(33,8,'JK institute','bvn','gvhg','1960-02-02 00:00:00','9963852741','ff@y.mmo','',NULL,'2017-01-07 13:24:29','2017-01-07 13:24:29');

/*Table structure for table `timetable` */

DROP TABLE IF EXISTS `timetable`;

CREATE TABLE `timetable` (
  `ID` bigint(20) NOT NULL,
  `CREATED_BY` varchar(50) default NULL,
  `CREATED_DATETIME` datetime default NULL,
  `MODIFIED_BY` varchar(50) default NULL,
  `MODIFIED_DATETIME` datetime default NULL,
  `COLLEGE_ID` bigint(20) default NULL,
  `COLLEGE_NAME` varchar(255) default NULL,
  `COURSE_ID` bigint(20) default NULL,
  `COURSE_NAME` varchar(255) default NULL,
  `END_TIME1` varchar(255) default NULL,
  `END_TIME2` varchar(255) default NULL,
  `END_TIME3` varchar(255) default NULL,
  `END_TIME4` varchar(255) default NULL,
  `END_TIME5` varchar(255) default NULL,
  `EXAM_DATE1` datetime default NULL,
  `EXAM_DATE2` datetime default NULL,
  `EXAM_DATE3` datetime default NULL,
  `EXAM_DATE4` datetime default NULL,
  `EXAM_DATE5` datetime default NULL,
  `SEMISTER` int(11) default NULL,
  `START_TIME1` varchar(255) default NULL,
  `START_TIME2` varchar(255) default NULL,
  `START_TIME3` varchar(255) default NULL,
  `START_TIME4` varchar(255) default NULL,
  `START_TIME5` varchar(255) default NULL,
  `SUBJECT_NAME1` varchar(255) default NULL,
  `SUBJECT_NAME2` varchar(255) default NULL,
  `SUBJECT_NAME3` varchar(255) default NULL,
  `SUBJECT_NAME4` varchar(255) default NULL,
  `SUBJECT_NAME5` varchar(255) default NULL,
  `SUBJECT_CODE1` varchar(255) default NULL,
  `SUBJECT_CODE2` varchar(255) default NULL,
  `SUBJECT_CODE3` varchar(255) default NULL,
  `SUBJECT_CODE4` varchar(255) default NULL,
  `SUBJECT_CODE5` varchar(255) default NULL,
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `timetable` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
