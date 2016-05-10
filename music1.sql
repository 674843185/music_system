/*
SQLyog Ultimate v11.27 (32 bit)
MySQL - 5.6.17 : Database - music
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`music` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `music`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `pwd` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`id`,`name`,`pwd`) values (1,'admin','e10adc3949ba59abbe56e057f20f883e'),(2,'ad','admin'),(3,'cjgong','e10adc3949ba59abbe56e057f20f883e');

/*Table structure for table `comments` */

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `value` text,
  `name` varchar(20) DEFAULT NULL,
  `music_id` int(4) DEFAULT NULL,
  `time` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `comments` */

insert  into `comments`(`id`,`value`,`name`,`music_id`,`time`) values (1,'dgfdgfdgnjbhjbhjbhjb','fdf',14,'1461633873274');

/*Table structure for table `link` */

DROP TABLE IF EXISTS `link`;

CREATE TABLE `link` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `value` text,
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `link` */

insert  into `link`(`id`,`value`,`title`) values (3,'http://baidu.com','baidu'),(4,'http://google.com','google');

/*Table structure for table `message` */

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `from` varchar(20) DEFAULT NULL,
  `to` int(4) DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  `value` text NOT NULL,
  `time` varchar(13) NOT NULL,
  `new` int(1) DEFAULT '1',
  `isHot` bigint(2) DEFAULT NULL,
  `isTj` bigint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `message` */

insert  into `message`(`id`,`from`,`to`,`title`,`value`,`time`,`new`,`isHot`,`isTj`) values (2,'cjgong',9,'祝贺你','cjgong发给你的短信。','1282141327426',0,NULL,NULL);

/*Table structure for table `music` */

DROP TABLE IF EXISTS `music`;

CREATE TABLE `music` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `singer` varchar(30) NOT NULL,
  `special` varchar(30) NOT NULL,
  `value` text NOT NULL,
  `time` datetime NOT NULL,
  `click` int(5) NOT NULL,
  `url` longtext,
  `typeId` int(11) DEFAULT NULL,
  `isTj` bigint(2) DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `uploadNum` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

/*Data for the table `music` */

insert  into `music`(`id`,`title`,`singer`,`special`,`value`,`time`,`click`,`url`,`typeId`,`isTj`,`author`,`uploadNum`) values (16,'鸽子 - 《我是歌手》双年巅峰会','胡彦斌','我是歌手','  《鸽子》这首歌的原唱及作词是宋冬野，写给自己在1993年2月2日失去的一只鸽子。那一日，他的父亲瞒着他将养的鸽子摔在地上，熬了一锅汤招待客人。很多年过去，他仍过不了心中那个坎儿，以至于至今都对带有禽类的汤发憷...\r\n   令人意外的是胡彦斌在《我是歌手》巅峰会上选择了一首民谣 ——《鸽子》。可我们今天不在这里谈论民谣，不再讨论改编，不再讨论摇滚…而是，听了这首歌，听了这样的词。突然想聊聊回忆…聊聊“南方”。','2016-05-02 09:21:37',0,'music/2016050211111.mp3',3,1,'小杰',1),(17,'青苹果乐园 - 《我是歌手》双年巅峰会','黄致列','我是歌手','不一样的味道','2016-04-01 09:23:11',0,'music/2016050211112.mp3',3,NULL,'小杰',2),(18,'丑八怪','薛之谦','我是歌手','好好好好听听听','2016-05-02 09:26:44',0,'music/2016050211113.mp3',1,NULL,'小杰',3),(19,'中国摇滚天团 - 礼物 - 《我是歌手》第四季 总决赛','老狼','我是歌手','赞赞赞！！！！','2016-04-01 14:20:45',5,'music/2016050211114.mp3',2,1,'小杰',4),(20,'爱情转移','陈奕迅','十年','good','2016-04-01 14:27:17',7,'music/2016050211115.mp3',2,1,'小杰',5),(21,'红玫瑰','陈奕迅','十年','棒','2016-05-04 14:28:32',10,'music/2016050211116.mp3',1,1,'小杰',6),(22,'白玫瑰','陈奕迅','红色回忆','好','2016-04-15 14:29:47',13,'music/2016050211117.mp3',1,1,'小杰',7),(23,'淘汰','陈奕迅','红色回忆','红色回忆','2016-05-03 14:30:48',0,'music/2016050211118.mp3',1,NULL,'小杰',8),(24,'十年(Live)','韩红、陈奕迅','我是歌手','我是歌手','2016-05-05 14:31:51',0,'music/2016050211119.mp3',2,NULL,'小杰',9);

/*Table structure for table `musictype` */

DROP TABLE IF EXISTS `musictype`;

CREATE TABLE `musictype` (
  `typeId` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `musictype` */

insert  into `musictype`(`typeId`,`typeName`) values (1,'古典'),(2,'纯音乐'),(3,'摇滚');

/*Table structure for table `tip` */

DROP TABLE IF EXISTS `tip`;

CREATE TABLE `tip` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `value` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `tip` */

insert  into `tip`(`id`,`value`) values (11,'[123] 分享了歌曲 [红装]'),(12,'[123] 分享了歌曲 [丑八怪]'),(13,'[123] 分享了歌曲 [这么近（那么远）]'),(14,'[123] 分享了歌曲 [青苹果乐园]'),(15,'[123] 分享了歌曲 [那么近那么远]');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `pwd` varchar(32) DEFAULT NULL,
  `music_box` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`pwd`,`music_box`) values (11,'123','250cf8b51c773f3f8dc8b4be867a9a02','8,14'),(13,'456','123',NULL),(22,'12','12','0'),(24,'1234','123','0'),(25,'12345','12','0'),(26,'1','1','0'),(27,'2','12','0'),(28,'userName','password','0'),(29,'5','12','0');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
