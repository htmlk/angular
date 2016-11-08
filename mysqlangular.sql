/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.40 : Database - test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `test`;

/*Table structure for table `good` */

DROP TABLE IF EXISTS `good`;

CREATE TABLE `good` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `price` int(20) DEFAULT NULL,
  `sum` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;

/*Data for the table `good` */

insert  into `good`(`id`,`name`,`desc`,`price`,`sum`) values (119,'567','全世界最好吃的苹果',12,115),(118,'567','全世界最好吃的苹果',12,23);

/*Table structure for table `yg_category` */

DROP TABLE IF EXISTS `yg_category`;

CREATE TABLE `yg_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryId` char(50) DEFAULT NULL,
  `CategoryCode` char(50) DEFAULT NULL,
  `CategoryName` char(100) DEFAULT NULL,
  `Grade` int(11) DEFAULT NULL,
  `PriorId` char(50) DEFAULT NULL,
  `HighId` char(50) DEFAULT NULL,
  `PictureUrl` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `yg_category` */

insert  into `yg_category`(`id`,`CategoryId`,`CategoryCode`,`CategoryName`,`Grade`,`PriorId`,`HighId`,`PictureUrl`) values (1,'b5fff91c-caef-4a8e-a1b4-bc2f44475110','0101_qiyiguo','奇异果',2,'ad7f227d-73c0-44a2-9edd-924006deb134','8a85c9c0-9e61-4709-92ea-4259c3060ea2',NULL),(2,'afffecb2-ddba-4dbc-9da1-698fdfbcd0f8','0201_pingguo','苹果',2,'1e17a99d-ca4b-49be-908b-93c8faa20baf','1e17a99d-ca4b-49be-908b-93c8faa20baf',NULL);

/*Table structure for table `yg_good` */

DROP TABLE IF EXISTS `yg_good`;

CREATE TABLE `yg_good` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CommodityId` char(50) DEFAULT NULL,
  `CommodityName` char(100) DEFAULT NULL,
  `CommodityCode` char(50) DEFAULT NULL,
  `OriginalPrice` int(11) DEFAULT NULL,
  `CommodityPrice` int(11) DEFAULT NULL,
  `Spec` char(50) DEFAULT NULL,
  `SpecId` char(50) DEFAULT NULL,
  `SmallPic` char(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

/*Data for the table `yg_good` */

insert  into `yg_good`(`id`,`CommodityId`,`CommodityName`,`CommodityCode`,`OriginalPrice`,`CommodityPrice`,`Spec`,`SpecId`,`SmallPic`) values (49,'63206793-55eb-427a-9e0a-45b59b545888','美国青啤梨6个约200g/个(北京)','1208981',69,69,'6个/份','YG10332','http://img13.yiguoimg.com/e/items/2016/161020/9288697816129876_300.jpg'),(50,'f24e71e0-6e54-4c22-82a5-32b80041830d','泰国龙眼2kg','10957',58,58,'2kg/份','YG10067','http://img14.yiguoimg.com/e/items/2016/160810/9288696306442506_300.jpg'),(51,'f6ccde4a-dc81-46fc-8a35-571ee46b56a6','南非柠檬4个（北京）','10403',15,15,'4个/份','YG10068','http://img06.yiguoimg.com/e/web/151010/133902/151010133902555_10403_300.jpg'),(52,'bf65a4e9-2141-456e-b117-8800d7924d52','美国红啤梨12个约210g/个','11830',128,128,'12个/份','YG10423','http://img05.yiguoimg.com/e/web/151117/161716/151117161716161_11830_300.jpg'),(55,'09b8defb-3922-48f8-997f-e177e86cb1cb','进口香蕉2.6kg装（北京）','11421',34,34,'2.6kg/箱','YG10718','http://img08.yiguoimg.com/e/web/151010/145005/151010145005129_11421_300.jpg'),(56,'429c0682-ed97-465b-9dca-572111f8845b','智利嘎啦果20个约140g/个(北京)','1005241',65,65,'20个/份','YG10055','http://img12.yiguoimg.com/e/items/2016/160919/9288697256354099_300.jpg'),(57,'cf2b7e94-338d-4303-851b-6d41ec15a65c','进口香蕉1.3kg装（北京）','12743',18,18,'1.3kg/份','YG10718','http://img05.yiguoimg.com/e/web/151010/145002/151010145002430_12743_300.jpg'),(58,'85e48834-abbe-4961-baad-c5a0163f49c6','美国嘎啦果6个约125g/个','61481',35,35,'6个/份','YG10761','http://img14.yiguoimg.com/e/items/2016/160928/9288697418457404_300.jpg'),(62,'9de07671-6d88-4978-8a0a-551b9252e5e6','美国红提2kg(北京)','11003',109,109,'2kg/份','YG10094','http://img14.yiguoimg.com/e/items/2016/160929/9288697467511101_300.jpg'),(63,'134a485d-4975-41a2-8428-a825f0c943e9','美国无籽红提2kg','10974',160,160,'2kg/份','YG10743','http://img14.yiguoimg.com/e/items/2016/160816/9288696415756560_300.jpg'),(64,'9377b0d3-efd6-436f-9348-5017012c0418','泰国椰青4个装(北京)','12144',59,59,'4个/份','YG10164','http://img11.yiguoimg.com/e/items/2016/160823/9288696600240407_300.jpg'),(65,'8b7d6554-c07f-4cca-a606-c970a35d337b','美国红蛇果8个装（约190g/个）','10975',68,68,'8个/组','YG10056','http://img09.yiguoimg.com/e/items/2016/160922/9288697306784054_300.jpg'),(66,'420b5dad-2e0b-46bc-9eaa-ee5ed94687d9','越南白心火龙果2.8kg（北京）','12064',35,35,'2.8kg/箱','YG10066','http://img11.yiguoimg.com/e/items/2015/151224/9288691316989848_300.jpg'),(67,'57ede725-f7f7-483c-922d-9b5041b5bc71','智利蓝莓2盒（约125g/盒）','11722',77,77,'2盒/份','YG10442','http://img09.yiguoimg.com/e/items/2016/160905/9288696992702757_300.jpg');

/*Table structure for table `yg_menu` */

DROP TABLE IF EXISTS `yg_menu`;

CREATE TABLE `yg_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryId` char(50) DEFAULT NULL,
  `CategoryName` char(50) DEFAULT NULL,
  `CategoryCode` char(50) DEFAULT NULL,
  `Description` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `yg_menu` */

insert  into `yg_menu`(`id`,`CategoryId`,`CategoryName`,`CategoryCode`,`Description`) values (1,'ad7f227d-73c0-44a2-9edd-924006deb134','进口水果','01_channelhome','奇异果/车厘子/牛油果/柑桔橙柚'),(2,'1e17a99d-ca4b-49be-908b-93c8faa20baf','国产水果','02_channelhome','苹果/梨/猕猴桃/瓜/葡萄/枣');

/*Table structure for table `yg_user` */

DROP TABLE IF EXISTS `yg_user`;

CREATE TABLE `yg_user` (
  `id` int(11) DEFAULT NULL,
  `name` char(50) DEFAULT NULL,
  `pwd` char(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `yg_user` */

insert  into `yg_user`(`id`,`name`,`pwd`) values (0,'admin','admin'),(1,'root','root');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
