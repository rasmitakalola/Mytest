/*
SQLyog Community v11.1 (64 bit)
MySQL - 5.5.36 : Database - ubi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ubi` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ubi`;

/*Table structure for table `account_` */

DROP TABLE IF EXISTS `account_`;

CREATE TABLE `account_` (
  `accountId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentAccountId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `legalName` varchar(75) DEFAULT NULL,
  `legalId` varchar(75) DEFAULT NULL,
  `legalType` varchar(75) DEFAULT NULL,
  `sicCode` varchar(75) DEFAULT NULL,
  `tickerSymbol` varchar(75) DEFAULT NULL,
  `industry` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `size_` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`accountId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `account_` */

insert  into `account_`(`accountId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`parentAccountId`,`name`,`legalName`,`legalId`,`legalType`,`sicCode`,`tickerSymbol`,`industry`,`type_`,`size_`) values (20157,20155,0,'','2017-12-12 12:11:47','2017-12-12 12:11:47',0,'Audi','','','','','','','','');

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `uuid_` varchar(75) DEFAULT NULL,
  `addressId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `street1` varchar(75) DEFAULT NULL,
  `street2` varchar(75) DEFAULT NULL,
  `street3` varchar(75) DEFAULT NULL,
  `city` varchar(75) DEFAULT NULL,
  `zip` varchar(75) DEFAULT NULL,
  `regionId` bigint(20) DEFAULT NULL,
  `countryId` bigint(20) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `mailing` tinyint(4) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`addressId`),
  KEY `IX_93D5AD4E` (`companyId`),
  KEY `IX_ABD7DAC0` (`companyId`,`classNameId`),
  KEY `IX_71CB1123` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_923BD178` (`companyId`,`classNameId`,`classPK`,`mailing`),
  KEY `IX_9226DBB4` (`companyId`,`classNameId`,`classPK`,`primary_`),
  KEY `IX_5BC8B0D4` (`userId`),
  KEY `IX_381E55DA` (`uuid_`),
  KEY `IX_8FCB620E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `address` */

/*Table structure for table `announcementsdelivery` */

DROP TABLE IF EXISTS `announcementsdelivery`;

CREATE TABLE `announcementsdelivery` (
  `deliveryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `email` tinyint(4) DEFAULT NULL,
  `sms` tinyint(4) DEFAULT NULL,
  `website` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`deliveryId`),
  UNIQUE KEY `IX_BA4413D5` (`userId`,`type_`),
  KEY `IX_6EDB9600` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `announcementsdelivery` */

/*Table structure for table `announcementsentry` */

DROP TABLE IF EXISTS `announcementsentry`;

CREATE TABLE `announcementsentry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `entryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `title` varchar(75) DEFAULT NULL,
  `content` longtext,
  `url` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `displayDate` datetime DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `alert` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  KEY `IX_A6EF0B81` (`classNameId`,`classPK`),
  KEY `IX_14F06A6B` (`classNameId`,`classPK`,`alert`),
  KEY `IX_D49C2E66` (`userId`),
  KEY `IX_1AFBDE08` (`uuid_`),
  KEY `IX_F2949120` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `announcementsentry` */

/*Table structure for table `announcementsflag` */

DROP TABLE IF EXISTS `announcementsflag`;

CREATE TABLE `announcementsflag` (
  `flagId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `entryId` bigint(20) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`flagId`),
  UNIQUE KEY `IX_4539A99C` (`userId`,`entryId`,`value`),
  KEY `IX_9C7EB9F` (`entryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `announcementsflag` */

/*Table structure for table `assetcategory` */

DROP TABLE IF EXISTS `assetcategory`;

CREATE TABLE `assetcategory` (
  `uuid_` varchar(75) DEFAULT NULL,
  `categoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentCategoryId` bigint(20) DEFAULT NULL,
  `leftCategoryId` bigint(20) DEFAULT NULL,
  `rightCategoryId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `vocabularyId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`categoryId`),
  UNIQUE KEY `IX_BE4DF2BF` (`parentCategoryId`,`name`,`vocabularyId`),
  UNIQUE KEY `IX_E8D019AA` (`uuid_`,`groupId`),
  KEY `IX_E639E2F6` (`groupId`),
  KEY `IX_C7F39FCA` (`groupId`,`name`,`vocabularyId`),
  KEY `IX_852EA801` (`groupId`,`parentCategoryId`,`name`,`vocabularyId`),
  KEY `IX_87603842` (`groupId`,`parentCategoryId`,`vocabularyId`),
  KEY `IX_2008FACB` (`groupId`,`vocabularyId`),
  KEY `IX_D61ABE08` (`name`,`vocabularyId`),
  KEY `IX_7BB1826B` (`parentCategoryId`),
  KEY `IX_9DDD15EA` (`parentCategoryId`,`name`),
  KEY `IX_B185E980` (`parentCategoryId`,`vocabularyId`),
  KEY `IX_4D37BB00` (`uuid_`),
  KEY `IX_BBAF6928` (`uuid_`,`companyId`),
  KEY `IX_287B1F89` (`vocabularyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `assetcategory` */

/*Table structure for table `assetcategoryproperty` */

DROP TABLE IF EXISTS `assetcategoryproperty`;

CREATE TABLE `assetcategoryproperty` (
  `categoryPropertyId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `key_` varchar(75) DEFAULT NULL,
  `value` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`categoryPropertyId`),
  UNIQUE KEY `IX_DBD111AA` (`categoryId`,`key_`),
  KEY `IX_99DA856` (`categoryId`),
  KEY `IX_8654719F` (`companyId`),
  KEY `IX_52340033` (`companyId`,`key_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `assetcategoryproperty` */

/*Table structure for table `assetentries_assetcategories` */

DROP TABLE IF EXISTS `assetentries_assetcategories`;

CREATE TABLE `assetentries_assetcategories` (
  `categoryId` bigint(20) NOT NULL,
  `entryId` bigint(20) NOT NULL,
  PRIMARY KEY (`categoryId`,`entryId`),
  KEY `IX_A188F560` (`categoryId`),
  KEY `IX_E119938A` (`entryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `assetentries_assetcategories` */

/*Table structure for table `assetentries_assettags` */

DROP TABLE IF EXISTS `assetentries_assettags`;

CREATE TABLE `assetentries_assettags` (
  `entryId` bigint(20) NOT NULL,
  `tagId` bigint(20) NOT NULL,
  PRIMARY KEY (`entryId`,`tagId`),
  KEY `IX_2ED82CAD` (`entryId`),
  KEY `IX_B2A61B55` (`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `assetentries_assettags` */

/*Table structure for table `assetentry` */

DROP TABLE IF EXISTS `assetentry`;

CREATE TABLE `assetentry` (
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `classUuid` varchar(75) DEFAULT NULL,
  `classTypeId` bigint(20) DEFAULT NULL,
  `visible` tinyint(4) DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `publishDate` datetime DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `summary` longtext,
  `url` longtext,
  `layoutUuid` varchar(75) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `priority` double DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_1E9D371D` (`classNameId`,`classPK`),
  KEY `IX_FC1F9C7B` (`classUuid`),
  KEY `IX_7306C60` (`companyId`),
  KEY `IX_75D42FF9` (`expirationDate`),
  KEY `IX_1EBA6821` (`groupId`,`classUuid`),
  KEY `IX_FEC4A201` (`layoutUuid`),
  KEY `IX_2E4E3885` (`publishDate`),
  KEY `IX_9029E15A` (`visible`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `assetentry` */

insert  into `assetentry`(`entryId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`classNameId`,`classPK`,`classUuid`,`classTypeId`,`visible`,`startDate`,`endDate`,`publishDate`,`expirationDate`,`mimeType`,`title`,`description`,`summary`,`url`,`layoutUuid`,`height`,`width`,`priority`,`viewCount`) values (20180,20173,20155,20159,'','2017-12-12 12:11:49','2017-12-12 12:11:49',20116,20178,'c0a747d6-4425-4b35-b187-c540827e8aa8',0,0,NULL,NULL,NULL,NULL,'text/html','20176','','','','',0,0,0,0),(20189,20182,20155,20159,'','2017-12-12 12:11:50','2017-12-12 12:11:50',20116,20187,'dcd6ff93-e437-4e6d-86a7-af9b5133cc6f',0,0,NULL,NULL,NULL,NULL,'text/html','20185','','','','',0,0,0,0),(20204,20195,20155,20199,'Liferray Admin','2017-12-12 12:11:51','2017-12-12 12:11:51',20005,20199,'190fc52b-23a8-49ff-bed9-1239fb89a59c',0,0,NULL,NULL,NULL,NULL,'','Liferray Admin','','','','',0,0,0,0),(20325,20317,20155,20159,'','2017-12-12 12:11:57','2017-12-12 12:11:57',20116,20322,'0ea5eb5e-a63f-42ab-aa37-b96800563695',0,0,NULL,NULL,NULL,NULL,'text/html','20320','','','','',0,0,0,0),(20336,20329,20155,20159,'','2017-12-12 12:11:58','2017-12-12 12:11:58',20116,20334,'f99102f3-0a2a-44a5-bf1e-be1ecf94a9ad',0,0,NULL,NULL,NULL,NULL,'text/html','20332','','','','',0,0,0,0),(20346,20339,20155,20159,'','2017-12-12 12:11:59','2017-12-12 12:11:59',20116,20344,'85f0d245-3e47-472e-aa1e-00c6b5b53d35',0,0,NULL,NULL,NULL,NULL,'text/html','20342','','','','',0,0,0,0),(20365,20350,20155,20159,'','2017-12-12 12:12:01','2017-12-12 12:12:01',20116,20363,'a9075d78-e7bc-4b35-94de-dad583d7a813',0,0,NULL,NULL,NULL,NULL,'text/html','20361','','','','',0,0,0,0),(20373,20350,20155,20159,'','2017-12-12 12:12:03','2017-12-12 12:12:03',20116,20371,'f091ff42-65b1-4ecf-942a-7676a245e464',0,0,NULL,NULL,NULL,NULL,'text/html','20369','','','','',0,0,0,0),(20391,20376,20155,20159,'','2017-12-12 12:12:05','2017-12-12 12:12:05',20116,20389,'455b10d1-bbec-49ee-8486-c952546cd884',0,0,NULL,NULL,NULL,NULL,'text/html','20387','','','','',0,0,0,0),(20400,20376,20155,20159,'','2017-12-12 12:12:07','2017-12-12 12:12:07',20116,20398,'9f294b6a-cd77-4df4-89c8-ba976f4549b4',0,0,NULL,NULL,NULL,NULL,'text/html','20396','','','','',0,0,0,0),(20408,20376,20155,20159,'','2017-12-12 12:12:08','2017-12-12 12:12:08',20116,20406,'ccec268e-fa1c-4a2d-a0d4-664289f5fd8d',0,0,NULL,NULL,NULL,NULL,'text/html','20404','','','','',0,0,0,0),(20534,20517,20155,20159,'','2017-12-12 12:15:06','2017-12-12 12:15:06',20116,20532,'e0f81914-c6f3-4d94-8255-b95d198abb2d',0,0,NULL,NULL,NULL,NULL,'text/html','20530','','','','',0,0,0,0),(20542,20201,20155,20199,'Liferray Admin','2017-12-12 12:23:26','2017-12-12 12:23:26',20116,20540,'cf005fea-1376-425b-9cca-de76b8a6a156',0,0,NULL,NULL,NULL,NULL,'text/html','20538','','','','',0,0,0,0),(20548,20201,20155,20199,'Liferray Admin','2017-12-12 12:23:27','2017-12-12 12:23:27',20116,20546,'4b713e63-0f10-4dc5-9965-1fb091d60110',0,0,NULL,NULL,NULL,NULL,'text/html','20544','','','','',0,0,0,0),(20560,20195,20155,20199,'Liferray Admin','2017-12-12 12:27:22','2017-12-12 12:27:22',20001,20557,'',0,0,NULL,NULL,NULL,NULL,'','UBI','UBI','','','',0,0,0,0),(20568,20557,20155,20199,'Liferray Admin','2017-12-12 13:01:03','2017-12-12 13:01:03',20116,20566,'b168bdad-404c-4264-995c-a9b46ffe7bef',0,0,NULL,NULL,NULL,NULL,'text/html','20564','','','','',0,0,0,0),(20574,20557,20155,20199,'Liferray Admin','2017-12-12 13:01:35','2017-12-12 13:01:35',20116,20572,'491216b2-2e82-4fe8-82e9-7cf693cd6b42',0,0,NULL,NULL,NULL,NULL,'text/html','20570','','','','',0,0,0,0),(20605,20557,20155,20199,'Liferray Admin','2018-01-02 06:56:53','2018-01-02 06:56:53',20116,20603,'0e1c90cd-900c-4959-b68c-3d4bd1eab386',0,0,NULL,NULL,NULL,NULL,'text/html','20601','','','','',0,0,0,0),(20611,20557,20155,20199,'Liferray Admin','2018-01-02 06:57:22','2018-01-02 06:57:22',20116,20609,'c82d5f9e-5cd3-4cee-a263-d4722b22f352',0,0,NULL,NULL,NULL,NULL,'text/html','20607','','','','',0,0,0,0);

/*Table structure for table `assetlink` */

DROP TABLE IF EXISTS `assetlink`;

CREATE TABLE `assetlink` (
  `linkId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `entryId1` bigint(20) DEFAULT NULL,
  `entryId2` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  PRIMARY KEY (`linkId`),
  UNIQUE KEY `IX_8F542794` (`entryId1`,`entryId2`,`type_`),
  KEY `IX_128516C8` (`entryId1`),
  KEY `IX_56E0AB21` (`entryId1`,`entryId2`),
  KEY `IX_14D5A20D` (`entryId1`,`type_`),
  KEY `IX_12851A89` (`entryId2`),
  KEY `IX_91F132C` (`entryId2`,`type_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `assetlink` */

/*Table structure for table `assettag` */

DROP TABLE IF EXISTS `assettag`;

CREATE TABLE `assettag` (
  `tagId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `assetCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`tagId`),
  KEY `IX_7C9E46BA` (`groupId`),
  KEY `IX_D63322F9` (`groupId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `assettag` */

/*Table structure for table `assettagproperty` */

DROP TABLE IF EXISTS `assettagproperty`;

CREATE TABLE `assettagproperty` (
  `tagPropertyId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `tagId` bigint(20) DEFAULT NULL,
  `key_` varchar(75) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tagPropertyId`),
  UNIQUE KEY `IX_2C944354` (`tagId`,`key_`),
  KEY `IX_DFF1F063` (`companyId`),
  KEY `IX_13805BF7` (`companyId`,`key_`),
  KEY `IX_3269E180` (`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `assettagproperty` */

/*Table structure for table `assettagstats` */

DROP TABLE IF EXISTS `assettagstats`;

CREATE TABLE `assettagstats` (
  `tagStatsId` bigint(20) NOT NULL,
  `tagId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `assetCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`tagStatsId`),
  UNIQUE KEY `IX_56682CC4` (`tagId`,`classNameId`),
  KEY `IX_50702693` (`classNameId`),
  KEY `IX_9464CA` (`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `assettagstats` */

/*Table structure for table `assetvocabulary` */

DROP TABLE IF EXISTS `assetvocabulary`;

CREATE TABLE `assetvocabulary` (
  `uuid_` varchar(75) DEFAULT NULL,
  `vocabularyId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `settings_` longtext,
  PRIMARY KEY (`vocabularyId`),
  UNIQUE KEY `IX_1B2B8792` (`uuid_`,`groupId`),
  KEY `IX_B22D908C` (`companyId`),
  KEY `IX_B6B8CA0E` (`groupId`),
  KEY `IX_C0AAD74D` (`groupId`,`name`),
  KEY `IX_55F58818` (`uuid_`),
  KEY `IX_C4E6FD10` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `assetvocabulary` */

insert  into `assetvocabulary`(`uuid_`,`vocabularyId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`name`,`title`,`description`,`settings_`) values ('06174241-7934-4876-9913-13a3ab2e847d',20324,20195,20155,20159,'','2017-12-12 12:11:57','2017-12-12 12:11:57','Topic','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Topic</Title></root>','','');

/*Table structure for table `backgroundtask` */

DROP TABLE IF EXISTS `backgroundtask`;

CREATE TABLE `backgroundtask` (
  `backgroundTaskId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `servletContextNames` varchar(255) DEFAULT NULL,
  `taskExecutorClassName` varchar(200) DEFAULT NULL,
  `taskContext` longtext,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusMessage` longtext,
  PRIMARY KEY (`backgroundTaskId`),
  KEY `IX_C5A6C78F` (`companyId`),
  KEY `IX_5A09E5D1` (`groupId`),
  KEY `IX_98CC0AAB` (`groupId`,`name`,`taskExecutorClassName`),
  KEY `IX_579C63B0` (`groupId`,`name`,`taskExecutorClassName`,`completed`),
  KEY `IX_C71C3B7` (`groupId`,`status`),
  KEY `IX_A73B688A` (`groupId`,`taskExecutorClassName`),
  KEY `IX_7A9FF471` (`groupId`,`taskExecutorClassName`,`completed`),
  KEY `IX_7E757D70` (`groupId`,`taskExecutorClassName`,`status`),
  KEY `IX_C07CC7F8` (`name`),
  KEY `IX_75638CDF` (`status`),
  KEY `IX_2FCFE748` (`taskExecutorClassName`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `backgroundtask` */

/*Table structure for table `blogsentry` */

DROP TABLE IF EXISTS `blogsentry`;

CREATE TABLE `blogsentry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` varchar(150) DEFAULT NULL,
  `urlTitle` varchar(150) DEFAULT NULL,
  `description` longtext,
  `content` longtext,
  `displayDate` datetime DEFAULT NULL,
  `allowPingbacks` tinyint(4) DEFAULT NULL,
  `allowTrackbacks` tinyint(4) DEFAULT NULL,
  `trackbacks` longtext,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_DB780A20` (`groupId`,`urlTitle`),
  UNIQUE KEY `IX_1B1040FD` (`uuid_`,`groupId`),
  KEY `IX_72EF6041` (`companyId`),
  KEY `IX_430D791F` (`companyId`,`displayDate`),
  KEY `IX_BB0C2905` (`companyId`,`displayDate`,`status`),
  KEY `IX_EB2DCE27` (`companyId`,`status`),
  KEY `IX_8CACE77B` (`companyId`,`userId`),
  KEY `IX_A5F57B61` (`companyId`,`userId`,`status`),
  KEY `IX_2672F77F` (`displayDate`,`status`),
  KEY `IX_81A50303` (`groupId`),
  KEY `IX_621E19D` (`groupId`,`displayDate`),
  KEY `IX_F0E73383` (`groupId`,`displayDate`,`status`),
  KEY `IX_1EFD8EE9` (`groupId`,`status`),
  KEY `IX_FBDE0AA3` (`groupId`,`userId`,`displayDate`),
  KEY `IX_DA04F689` (`groupId`,`userId`,`displayDate`,`status`),
  KEY `IX_49E15A23` (`groupId`,`userId`,`status`),
  KEY `IX_69157A4D` (`uuid_`),
  KEY `IX_5E8307BB` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `blogsentry` */

/*Table structure for table `blogsstatsuser` */

DROP TABLE IF EXISTS `blogsstatsuser`;

CREATE TABLE `blogsstatsuser` (
  `statsUserId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `entryCount` int(11) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  `ratingsTotalEntries` int(11) DEFAULT NULL,
  `ratingsTotalScore` double DEFAULT NULL,
  `ratingsAverageScore` double DEFAULT NULL,
  PRIMARY KEY (`statsUserId`),
  UNIQUE KEY `IX_82254C25` (`groupId`,`userId`),
  KEY `IX_90CDA39A` (`companyId`,`entryCount`),
  KEY `IX_43840EEB` (`groupId`),
  KEY `IX_28C78D5C` (`groupId`,`entryCount`),
  KEY `IX_BB51F1D9` (`userId`),
  KEY `IX_507BA031` (`userId`,`lastPostDate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `blogsstatsuser` */

/*Table structure for table `bookmarksentry` */

DROP TABLE IF EXISTS `bookmarksentry`;

CREATE TABLE `bookmarksentry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `description` longtext,
  `visits` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_EAA02A91` (`uuid_`,`groupId`),
  KEY `IX_1F90CA2D` (`companyId`),
  KEY `IX_276C8C13` (`companyId`,`status`),
  KEY `IX_5200100C` (`groupId`,`folderId`),
  KEY `IX_146382F2` (`groupId`,`folderId`,`status`),
  KEY `IX_416AD7D5` (`groupId`,`status`),
  KEY `IX_C78B61AC` (`groupId`,`userId`,`folderId`,`status`),
  KEY `IX_9D9CF70F` (`groupId`,`userId`,`status`),
  KEY `IX_E848278F` (`resourceBlockId`),
  KEY `IX_B670BA39` (`uuid_`),
  KEY `IX_89BEDC4F` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bookmarksentry` */

/*Table structure for table `bookmarksfolder` */

DROP TABLE IF EXISTS `bookmarksfolder`;

CREATE TABLE `bookmarksfolder` (
  `uuid_` varchar(75) DEFAULT NULL,
  `folderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`folderId`),
  UNIQUE KEY `IX_DC2F8927` (`uuid_`,`groupId`),
  KEY `IX_2ABA25D7` (`companyId`),
  KEY `IX_C27C9DBD` (`companyId`,`status`),
  KEY `IX_7F703619` (`groupId`),
  KEY `IX_967799C0` (`groupId`,`parentFolderId`),
  KEY `IX_D16018A6` (`groupId`,`parentFolderId`,`status`),
  KEY `IX_28A49BB9` (`resourceBlockId`),
  KEY `IX_451E7AE3` (`uuid_`),
  KEY `IX_54F0ED65` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bookmarksfolder` */

/*Table structure for table `browsertracker` */

DROP TABLE IF EXISTS `browsertracker`;

CREATE TABLE `browsertracker` (
  `browserTrackerId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `browserKey` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`browserTrackerId`),
  UNIQUE KEY `IX_E7B95510` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `browsertracker` */

insert  into `browsertracker`(`browserTrackerId`,`userId`,`browserKey`) values (20552,20199,1437472832071);

/*Table structure for table `calendar` */

DROP TABLE IF EXISTS `calendar`;

CREATE TABLE `calendar` (
  `uuid_` varchar(75) DEFAULT NULL,
  `calendarId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `calendarResourceId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `timeZoneId` varchar(75) DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `defaultCalendar` tinyint(4) DEFAULT NULL,
  `enableComments` tinyint(4) DEFAULT NULL,
  `enableRatings` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`calendarId`),
  UNIQUE KEY `IX_3AE311A` (`uuid_`,`groupId`),
  KEY `IX_B53EB0E1` (`groupId`,`calendarResourceId`),
  KEY `IX_97FC174E` (`groupId`,`calendarResourceId`,`defaultCalendar`),
  KEY `IX_F0FAF226` (`resourceBlockId`),
  KEY `IX_96C8590` (`uuid_`),
  KEY `IX_97656498` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `calendar` */

/*Table structure for table `calendarbooking` */

DROP TABLE IF EXISTS `calendarbooking`;

CREATE TABLE `calendarbooking` (
  `uuid_` varchar(75) DEFAULT NULL,
  `calendarBookingId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `calendarId` bigint(20) DEFAULT NULL,
  `calendarResourceId` bigint(20) DEFAULT NULL,
  `parentCalendarBookingId` bigint(20) DEFAULT NULL,
  `vEventUid` varchar(255) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `location` longtext,
  `startTime` bigint(20) DEFAULT NULL,
  `endTime` bigint(20) DEFAULT NULL,
  `allDay` tinyint(4) DEFAULT NULL,
  `recurrence` longtext,
  `firstReminder` bigint(20) DEFAULT NULL,
  `firstReminderType` varchar(75) DEFAULT NULL,
  `secondReminder` bigint(20) DEFAULT NULL,
  `secondReminderType` varchar(75) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`calendarBookingId`),
  UNIQUE KEY `IX_113A264E` (`calendarId`,`parentCalendarBookingId`),
  UNIQUE KEY `IX_8B23DA0E` (`calendarId`,`vEventUid`),
  UNIQUE KEY `IX_F4C61797` (`uuid_`,`groupId`),
  KEY `IX_D300DFCE` (`calendarId`),
  KEY `IX_470170B4` (`calendarId`,`status`),
  KEY `IX_B198FFC` (`calendarResourceId`),
  KEY `IX_57EBF55B` (`parentCalendarBookingId`),
  KEY `IX_F7B8A941` (`parentCalendarBookingId`,`status`),
  KEY `IX_22DFDB49` (`resourceBlockId`),
  KEY `IX_F6E8EE73` (`uuid_`),
  KEY `IX_A21D9FD5` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `calendarbooking` */

/*Table structure for table `calendarnotificationtemplate` */

DROP TABLE IF EXISTS `calendarnotificationtemplate`;

CREATE TABLE `calendarnotificationtemplate` (
  `uuid_` varchar(75) DEFAULT NULL,
  `calendarNotificationTemplateId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `calendarId` bigint(20) DEFAULT NULL,
  `notificationType` varchar(75) DEFAULT NULL,
  `notificationTypeSettings` varchar(75) DEFAULT NULL,
  `notificationTemplateType` varchar(75) DEFAULT NULL,
  `subject` varchar(75) DEFAULT NULL,
  `body` longtext,
  PRIMARY KEY (`calendarNotificationTemplateId`),
  UNIQUE KEY `IX_4012E97F` (`uuid_`,`groupId`),
  KEY `IX_A412E5B6` (`calendarId`),
  KEY `IX_7727A482` (`calendarId`,`notificationType`,`notificationTemplateType`),
  KEY `IX_A2D4D78B` (`uuid_`),
  KEY `IX_4D7D97BD` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `calendarnotificationtemplate` */

/*Table structure for table `calendarresource` */

DROP TABLE IF EXISTS `calendarresource`;

CREATE TABLE `calendarresource` (
  `uuid_` varchar(75) DEFAULT NULL,
  `calendarResourceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `classUuid` varchar(75) DEFAULT NULL,
  `code_` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`calendarResourceId`),
  UNIQUE KEY `IX_16A12327` (`classNameId`,`classPK`),
  UNIQUE KEY `IX_4ABD2BC8` (`uuid_`,`groupId`),
  KEY `IX_76DDD0F7` (`active_`),
  KEY `IX_4470A59D` (`companyId`,`code_`,`active_`),
  KEY `IX_1243D698` (`groupId`),
  KEY `IX_40678371` (`groupId`,`active_`),
  KEY `IX_55C2F8AA` (`groupId`,`code_`),
  KEY `IX_8BCB4D38` (`resourceBlockId`),
  KEY `IX_150E2F22` (`uuid_`),
  KEY `IX_56A06BC6` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `calendarresource` */

/*Table structure for table `calevent` */

DROP TABLE IF EXISTS `calevent`;

CREATE TABLE `calevent` (
  `uuid_` varchar(75) DEFAULT NULL,
  `eventId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` varchar(75) DEFAULT NULL,
  `description` longtext,
  `location` longtext,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `durationHour` int(11) DEFAULT NULL,
  `durationMinute` int(11) DEFAULT NULL,
  `allDay` tinyint(4) DEFAULT NULL,
  `timeZoneSensitive` tinyint(4) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `repeating` tinyint(4) DEFAULT NULL,
  `recurrence` longtext,
  `remindBy` int(11) DEFAULT NULL,
  `firstReminder` int(11) DEFAULT NULL,
  `secondReminder` int(11) DEFAULT NULL,
  PRIMARY KEY (`eventId`),
  UNIQUE KEY `IX_5CCE79C8` (`uuid_`,`groupId`),
  KEY `IX_D6FD9496` (`companyId`),
  KEY `IX_12EE4898` (`groupId`),
  KEY `IX_4FDDD2BF` (`groupId`,`repeating`),
  KEY `IX_FCD7C63D` (`groupId`,`type_`),
  KEY `IX_FD93CBFA` (`groupId`,`type_`,`repeating`),
  KEY `IX_F6006202` (`remindBy`),
  KEY `IX_C1AD2122` (`uuid_`),
  KEY `IX_299639C6` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `calevent` */

/*Table structure for table `classname_` */

DROP TABLE IF EXISTS `classname_`;

CREATE TABLE `classname_` (
  `classNameId` bigint(20) NOT NULL,
  `value` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`classNameId`),
  UNIQUE KEY `IX_B27A301F` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `classname_` */

insert  into `classname_`(`classNameId`,`value`) values (20439,'com.liferay.calendar.model.Calendar'),(20440,'com.liferay.calendar.model.CalendarBooking'),(20441,'com.liferay.calendar.model.CalendarNotificationTemplate'),(20442,'com.liferay.calendar.model.CalendarResource'),(20017,'com.liferay.counter.model.Counter'),(20433,'com.liferay.marketplace.model.App'),(20434,'com.liferay.marketplace.model.Module'),(20493,'com.liferay.notifications.model.UserNotificationEvent'),(20497,'com.liferay.opensocial.model.Gadget'),(20498,'com.liferay.opensocial.model.OAuthConsumer'),(20499,'com.liferay.opensocial.model.OAuthToken'),(20424,'com.liferay.portal.kernel.repository.model.FileEntry'),(20018,'com.liferay.portal.kernel.workflow.WorkflowTask'),(20019,'com.liferay.portal.model.Account'),(20020,'com.liferay.portal.model.Address'),(20021,'com.liferay.portal.model.BackgroundTask'),(20022,'com.liferay.portal.model.BrowserTracker'),(20023,'com.liferay.portal.model.ClassName'),(20024,'com.liferay.portal.model.ClusterGroup'),(20025,'com.liferay.portal.model.Company'),(20026,'com.liferay.portal.model.Contact'),(20027,'com.liferay.portal.model.Country'),(20028,'com.liferay.portal.model.EmailAddress'),(20001,'com.liferay.portal.model.Group'),(20029,'com.liferay.portal.model.Image'),(20002,'com.liferay.portal.model.Layout'),(20030,'com.liferay.portal.model.LayoutBranch'),(20031,'com.liferay.portal.model.LayoutFriendlyURL'),(20032,'com.liferay.portal.model.LayoutPrototype'),(20033,'com.liferay.portal.model.LayoutRevision'),(20034,'com.liferay.portal.model.LayoutSet'),(20035,'com.liferay.portal.model.LayoutSetBranch'),(20036,'com.liferay.portal.model.LayoutSetPrototype'),(20037,'com.liferay.portal.model.ListType'),(20038,'com.liferay.portal.model.Lock'),(20039,'com.liferay.portal.model.MembershipRequest'),(20003,'com.liferay.portal.model.Organization'),(20040,'com.liferay.portal.model.OrgGroupRole'),(20041,'com.liferay.portal.model.OrgLabor'),(20042,'com.liferay.portal.model.PasswordPolicy'),(20043,'com.liferay.portal.model.PasswordPolicyRel'),(20044,'com.liferay.portal.model.PasswordTracker'),(20045,'com.liferay.portal.model.Phone'),(20046,'com.liferay.portal.model.PluginSetting'),(20047,'com.liferay.portal.model.PortalPreferences'),(20048,'com.liferay.portal.model.Portlet'),(20049,'com.liferay.portal.model.PortletItem'),(20050,'com.liferay.portal.model.PortletPreferences'),(20051,'com.liferay.portal.model.Region'),(20052,'com.liferay.portal.model.Release'),(20053,'com.liferay.portal.model.Repository'),(20054,'com.liferay.portal.model.RepositoryEntry'),(20055,'com.liferay.portal.model.ResourceAction'),(20056,'com.liferay.portal.model.ResourceBlock'),(20057,'com.liferay.portal.model.ResourceBlockPermission'),(20058,'com.liferay.portal.model.ResourcePermission'),(20059,'com.liferay.portal.model.ResourceTypePermission'),(20004,'com.liferay.portal.model.Role'),(20060,'com.liferay.portal.model.ServiceComponent'),(20061,'com.liferay.portal.model.Shard'),(20062,'com.liferay.portal.model.Subscription'),(20063,'com.liferay.portal.model.SystemEvent'),(20064,'com.liferay.portal.model.Team'),(20065,'com.liferay.portal.model.Ticket'),(20005,'com.liferay.portal.model.User'),(20006,'com.liferay.portal.model.UserGroup'),(20066,'com.liferay.portal.model.UserGroupGroupRole'),(20067,'com.liferay.portal.model.UserGroupRole'),(20068,'com.liferay.portal.model.UserIdMapper'),(20069,'com.liferay.portal.model.UserNotificationDelivery'),(20070,'com.liferay.portal.model.UserNotificationEvent'),(20191,'com.liferay.portal.model.UserPersonalSite'),(20071,'com.liferay.portal.model.UserTracker'),(20072,'com.liferay.portal.model.UserTrackerPath'),(20073,'com.liferay.portal.model.VirtualHost'),(20074,'com.liferay.portal.model.WebDAVProps'),(20075,'com.liferay.portal.model.Website'),(20076,'com.liferay.portal.model.WorkflowDefinitionLink'),(20077,'com.liferay.portal.model.WorkflowInstanceLink'),(20446,'com.liferay.portal.workflow.kaleo.model.KaleoAction'),(20447,'com.liferay.portal.workflow.kaleo.model.KaleoCondition'),(20448,'com.liferay.portal.workflow.kaleo.model.KaleoDefinition'),(20449,'com.liferay.portal.workflow.kaleo.model.KaleoInstance'),(20450,'com.liferay.portal.workflow.kaleo.model.KaleoInstanceToken'),(20451,'com.liferay.portal.workflow.kaleo.model.KaleoLog'),(20452,'com.liferay.portal.workflow.kaleo.model.KaleoNode'),(20453,'com.liferay.portal.workflow.kaleo.model.KaleoNotification'),(20454,'com.liferay.portal.workflow.kaleo.model.KaleoNotificationRecipient'),(20455,'com.liferay.portal.workflow.kaleo.model.KaleoTask'),(20456,'com.liferay.portal.workflow.kaleo.model.KaleoTaskAssignment'),(20457,'com.liferay.portal.workflow.kaleo.model.KaleoTaskAssignmentInstance'),(20458,'com.liferay.portal.workflow.kaleo.model.KaleoTaskInstanceToken'),(20459,'com.liferay.portal.workflow.kaleo.model.KaleoTimer'),(20460,'com.liferay.portal.workflow.kaleo.model.KaleoTimerInstanceToken'),(20461,'com.liferay.portal.workflow.kaleo.model.KaleoTransition'),(20078,'com.liferay.portlet.announcements.model.AnnouncementsDelivery'),(20079,'com.liferay.portlet.announcements.model.AnnouncementsEntry'),(20080,'com.liferay.portlet.announcements.model.AnnouncementsFlag'),(20081,'com.liferay.portlet.asset.model.AssetCategory'),(20082,'com.liferay.portlet.asset.model.AssetCategoryProperty'),(20083,'com.liferay.portlet.asset.model.AssetEntry'),(20084,'com.liferay.portlet.asset.model.AssetLink'),(20085,'com.liferay.portlet.asset.model.AssetTag'),(20086,'com.liferay.portlet.asset.model.AssetTagProperty'),(20087,'com.liferay.portlet.asset.model.AssetTagStats'),(20088,'com.liferay.portlet.asset.model.AssetVocabulary'),(20007,'com.liferay.portlet.blogs.model.BlogsEntry'),(20089,'com.liferay.portlet.blogs.model.BlogsStatsUser'),(20008,'com.liferay.portlet.bookmarks.model.BookmarksEntry'),(20009,'com.liferay.portlet.bookmarks.model.BookmarksFolder'),(20010,'com.liferay.portlet.calendar.model.CalEvent'),(20090,'com.liferay.portlet.documentlibrary.model.DLContent'),(20011,'com.liferay.portlet.documentlibrary.model.DLFileEntry'),(20091,'com.liferay.portlet.documentlibrary.model.DLFileEntryMetadata'),(20092,'com.liferay.portlet.documentlibrary.model.DLFileEntryType'),(20093,'com.liferay.portlet.documentlibrary.model.DLFileRank'),(20094,'com.liferay.portlet.documentlibrary.model.DLFileShortcut'),(20095,'com.liferay.portlet.documentlibrary.model.DLFileVersion'),(20012,'com.liferay.portlet.documentlibrary.model.DLFolder'),(20096,'com.liferay.portlet.documentlibrary.model.DLSyncEvent'),(20314,'com.liferay.portlet.documentlibrary.util.RawMetadataProcessor'),(20097,'com.liferay.portlet.dynamicdatalists.model.DDLRecord'),(20098,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet'),(20099,'com.liferay.portlet.dynamicdatalists.model.DDLRecordVersion'),(20100,'com.liferay.portlet.dynamicdatamapping.model.DDMContent'),(20101,'com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink'),(20102,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure'),(20103,'com.liferay.portlet.dynamicdatamapping.model.DDMStructureLink'),(20104,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate'),(20105,'com.liferay.portlet.expando.model.ExpandoColumn'),(20106,'com.liferay.portlet.expando.model.ExpandoRow'),(20107,'com.liferay.portlet.expando.model.ExpandoTable'),(20108,'com.liferay.portlet.expando.model.ExpandoValue'),(20109,'com.liferay.portlet.journal.model.JournalArticle'),(20110,'com.liferay.portlet.journal.model.JournalArticleImage'),(20111,'com.liferay.portlet.journal.model.JournalArticleResource'),(20112,'com.liferay.portlet.journal.model.JournalContentSearch'),(20113,'com.liferay.portlet.journal.model.JournalFeed'),(20013,'com.liferay.portlet.journal.model.JournalFolder'),(20114,'com.liferay.portlet.messageboards.model.MBBan'),(20115,'com.liferay.portlet.messageboards.model.MBCategory'),(20116,'com.liferay.portlet.messageboards.model.MBDiscussion'),(20117,'com.liferay.portlet.messageboards.model.MBMailingList'),(20014,'com.liferay.portlet.messageboards.model.MBMessage'),(20118,'com.liferay.portlet.messageboards.model.MBStatsUser'),(20015,'com.liferay.portlet.messageboards.model.MBThread'),(20119,'com.liferay.portlet.messageboards.model.MBThreadFlag'),(20120,'com.liferay.portlet.mobiledevicerules.model.MDRAction'),(20121,'com.liferay.portlet.mobiledevicerules.model.MDRRule'),(20122,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup'),(20123,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance'),(20124,'com.liferay.portlet.polls.model.PollsChoice'),(20125,'com.liferay.portlet.polls.model.PollsQuestion'),(20126,'com.liferay.portlet.polls.model.PollsVote'),(20127,'com.liferay.portlet.ratings.model.RatingsEntry'),(20128,'com.liferay.portlet.ratings.model.RatingsStats'),(20129,'com.liferay.portlet.shopping.model.ShoppingCart'),(20130,'com.liferay.portlet.shopping.model.ShoppingCategory'),(20131,'com.liferay.portlet.shopping.model.ShoppingCoupon'),(20132,'com.liferay.portlet.shopping.model.ShoppingItem'),(20133,'com.liferay.portlet.shopping.model.ShoppingItemField'),(20134,'com.liferay.portlet.shopping.model.ShoppingItemPrice'),(20135,'com.liferay.portlet.shopping.model.ShoppingOrder'),(20136,'com.liferay.portlet.shopping.model.ShoppingOrderItem'),(20137,'com.liferay.portlet.social.model.SocialActivity'),(20138,'com.liferay.portlet.social.model.SocialActivityAchievement'),(20139,'com.liferay.portlet.social.model.SocialActivityCounter'),(20140,'com.liferay.portlet.social.model.SocialActivityLimit'),(20141,'com.liferay.portlet.social.model.SocialActivitySet'),(20142,'com.liferay.portlet.social.model.SocialActivitySetting'),(20143,'com.liferay.portlet.social.model.SocialRelation'),(20144,'com.liferay.portlet.social.model.SocialRequest'),(20145,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion'),(20146,'com.liferay.portlet.softwarecatalog.model.SCLicense'),(20147,'com.liferay.portlet.softwarecatalog.model.SCProductEntry'),(20148,'com.liferay.portlet.softwarecatalog.model.SCProductScreenshot'),(20149,'com.liferay.portlet.softwarecatalog.model.SCProductVersion'),(20150,'com.liferay.portlet.trash.model.TrashEntry'),(20151,'com.liferay.portlet.trash.model.TrashVersion'),(20152,'com.liferay.portlet.wiki.model.WikiNode'),(20016,'com.liferay.portlet.wiki.model.WikiPage'),(20153,'com.liferay.portlet.wiki.model.WikiPageResource'),(20507,'com.liferay.sync.model.SyncDLFileVersionDiff'),(20508,'com.liferay.sync.model.SyncDLObject');

/*Table structure for table `clustergroup` */

DROP TABLE IF EXISTS `clustergroup`;

CREATE TABLE `clustergroup` (
  `clusterGroupId` bigint(20) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `clusterNodeIds` varchar(75) DEFAULT NULL,
  `wholeCluster` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`clusterGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `clustergroup` */

/*Table structure for table `company` */

DROP TABLE IF EXISTS `company`;

CREATE TABLE `company` (
  `companyId` bigint(20) NOT NULL,
  `accountId` bigint(20) DEFAULT NULL,
  `webId` varchar(75) DEFAULT NULL,
  `key_` longtext,
  `mx` varchar(75) DEFAULT NULL,
  `homeURL` longtext,
  `logoId` bigint(20) DEFAULT NULL,
  `system` tinyint(4) DEFAULT NULL,
  `maxUsers` int(11) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`companyId`),
  UNIQUE KEY `IX_EC00543C` (`webId`),
  KEY `IX_38EFE3FD` (`logoId`),
  KEY `IX_12566EC2` (`mx`),
  KEY `IX_35E3E7C6` (`system`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `company` */

insert  into `company`(`companyId`,`accountId`,`webId`,`key_`,`mx`,`homeURL`,`logoId`,`system`,`maxUsers`,`active_`) values (20155,20157,'liferay.com','rO0ABXNyAB9qYXZheC5jcnlwdG8uc3BlYy5TZWNyZXRLZXlTcGVjW0cLZuIwYU0CAAJMAAlhbGdvcml0aG10ABJMamF2YS9sYW5nL1N0cmluZztbAANrZXl0AAJbQnhwdAADQUVTdXIAAltCrPMX+AYIVOACAAB4cAAAABB+ExE55eCfaU8Pn+A17Oz3','liferay.com','',0,0,0,1);

/*Table structure for table `contact_` */

DROP TABLE IF EXISTS `contact_`;

CREATE TABLE `contact_` (
  `contactId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `accountId` bigint(20) DEFAULT NULL,
  `parentContactId` bigint(20) DEFAULT NULL,
  `emailAddress` varchar(75) DEFAULT NULL,
  `firstName` varchar(75) DEFAULT NULL,
  `middleName` varchar(75) DEFAULT NULL,
  `lastName` varchar(75) DEFAULT NULL,
  `prefixId` int(11) DEFAULT NULL,
  `suffixId` int(11) DEFAULT NULL,
  `male` tinyint(4) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `smsSn` varchar(75) DEFAULT NULL,
  `aimSn` varchar(75) DEFAULT NULL,
  `facebookSn` varchar(75) DEFAULT NULL,
  `icqSn` varchar(75) DEFAULT NULL,
  `jabberSn` varchar(75) DEFAULT NULL,
  `msnSn` varchar(75) DEFAULT NULL,
  `mySpaceSn` varchar(75) DEFAULT NULL,
  `skypeSn` varchar(75) DEFAULT NULL,
  `twitterSn` varchar(75) DEFAULT NULL,
  `ymSn` varchar(75) DEFAULT NULL,
  `employeeStatusId` varchar(75) DEFAULT NULL,
  `employeeNumber` varchar(75) DEFAULT NULL,
  `jobTitle` varchar(100) DEFAULT NULL,
  `jobClass` varchar(75) DEFAULT NULL,
  `hoursOfOperation` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`contactId`),
  KEY `IX_B8C28C53` (`accountId`),
  KEY `IX_791914FA` (`classNameId`,`classPK`),
  KEY `IX_66D496A3` (`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `contact_` */

insert  into `contact_`(`contactId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`classNameId`,`classPK`,`accountId`,`parentContactId`,`emailAddress`,`firstName`,`middleName`,`lastName`,`prefixId`,`suffixId`,`male`,`birthday`,`smsSn`,`aimSn`,`facebookSn`,`icqSn`,`jabberSn`,`msnSn`,`mySpaceSn`,`skypeSn`,`twitterSn`,`ymSn`,`employeeStatusId`,`employeeNumber`,`jobTitle`,`jobClass`,`hoursOfOperation`) values (20160,20155,20159,'','2017-12-12 12:11:47','2017-12-12 12:11:47',20005,20159,20157,0,'default@liferay.com','','','',0,0,1,'2017-12-12 12:11:47','','','','','','','','','','','','','','',''),(20200,20155,20199,'','2017-12-12 12:11:51','2017-12-12 12:11:51',20005,20199,20157,0,'test@liferay.com','Liferray','','Admin',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','','');

/*Table structure for table `counter` */

DROP TABLE IF EXISTS `counter`;

CREATE TABLE `counter` (
  `name` varchar(75) NOT NULL,
  `currentId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `counter` */

insert  into `counter`(`name`,`currentId`) values ('com.liferay.counter.model.Counter',20700),('com.liferay.portal.model.Layout#20173#true',1),('com.liferay.portal.model.Layout#20182#false',1),('com.liferay.portal.model.Layout#20201#false',1),('com.liferay.portal.model.Layout#20201#true',1),('com.liferay.portal.model.Layout#20317#true',1),('com.liferay.portal.model.Layout#20329#true',1),('com.liferay.portal.model.Layout#20339#true',1),('com.liferay.portal.model.Layout#20350#true',2),('com.liferay.portal.model.Layout#20376#true',3),('com.liferay.portal.model.Layout#20517#true',1),('com.liferay.portal.model.Layout#20557#false',4),('com.liferay.portal.model.ResourceAction',1200),('com.liferay.portal.model.ResourcePermission',700);

/*Table structure for table `country` */

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `countryId` bigint(20) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `a2` varchar(75) DEFAULT NULL,
  `a3` varchar(75) DEFAULT NULL,
  `number_` varchar(75) DEFAULT NULL,
  `idd_` varchar(75) DEFAULT NULL,
  `zipRequired` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`countryId`),
  UNIQUE KEY `IX_717B97E1` (`a2`),
  UNIQUE KEY `IX_717B9BA2` (`a3`),
  UNIQUE KEY `IX_19DA007B` (`name`),
  KEY `IX_25D734CD` (`active_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `country` */

insert  into `country`(`countryId`,`name`,`a2`,`a3`,`number_`,`idd_`,`zipRequired`,`active_`) values (1,'canada','CA','CAN','124','001',1,1),(2,'china','CN','CHN','156','086',1,1),(3,'france','FR','FRA','250','033',1,1),(4,'germany','DE','DEU','276','049',1,1),(5,'hong-kong','HK','HKG','344','852',1,1),(6,'hungary','HU','HUN','348','036',1,1),(7,'israel','IL','ISR','376','972',1,1),(8,'italy','IT','ITA','380','039',1,1),(9,'japan','JP','JPN','392','081',0,1),(10,'south-korea','KR','KOR','410','082',1,1),(11,'netherlands','NL','NLD','528','031',1,1),(12,'portugal','PT','PRT','620','351',1,1),(13,'russia','RU','RUS','643','007',1,1),(14,'singapore','SG','SGP','702','065',1,1),(15,'spain','ES','ESP','724','034',1,1),(16,'turkey','TR','TUR','792','090',1,1),(17,'vietnam','VN','VNM','704','084',1,1),(18,'united-kingdom','GB','GBR','826','044',1,1),(19,'united-states','US','USA','840','001',1,1),(20,'afghanistan','AF','AFG','4','093',1,1),(21,'albania','AL','ALB','8','355',1,1),(22,'algeria','DZ','DZA','12','213',1,1),(23,'american-samoa','AS','ASM','16','684',1,1),(24,'andorra','AD','AND','20','376',1,1),(25,'angola','AO','AGO','24','244',0,1),(26,'anguilla','AI','AIA','660','264',1,1),(27,'antarctica','AQ','ATA','10','672',1,1),(28,'antigua-barbuda','AG','ATG','28','268',0,1),(29,'argentina','AR','ARG','32','054',1,1),(30,'armenia','AM','ARM','51','374',1,1),(31,'aruba','AW','ABW','533','297',0,1),(32,'australia','AU','AUS','36','061',1,1),(33,'austria','AT','AUT','40','043',1,1),(34,'azerbaijan','AZ','AZE','31','994',1,1),(35,'bahamas','BS','BHS','44','242',0,1),(36,'bahrain','BH','BHR','48','973',1,1),(37,'bangladesh','BD','BGD','50','880',1,1),(38,'barbados','BB','BRB','52','246',1,1),(39,'belarus','BY','BLR','112','375',1,1),(40,'belgium','BE','BEL','56','032',1,1),(41,'belize','BZ','BLZ','84','501',0,1),(42,'benin','BJ','BEN','204','229',0,1),(43,'bermuda','BM','BMU','60','441',1,1),(44,'bhutan','BT','BTN','64','975',1,1),(45,'bolivia','BO','BOL','68','591',1,1),(46,'bosnia-herzegovina','BA','BIH','70','387',1,1),(47,'botswana','BW','BWA','72','267',0,1),(48,'brazil','BR','BRA','76','055',1,1),(49,'british-virgin-islands','VG','VGB','92','284',1,1),(50,'brunei','BN','BRN','96','673',1,1),(51,'bulgaria','BG','BGR','100','359',1,1),(52,'burkina-faso','BF','BFA','854','226',0,1),(53,'burma-myanmar','MM','MMR','104','095',1,1),(54,'burundi','BI','BDI','108','257',0,1),(55,'cambodia','KH','KHM','116','855',1,1),(56,'cameroon','CM','CMR','120','237',1,1),(57,'cape-verde-island','CV','CPV','132','238',1,1),(58,'cayman-islands','KY','CYM','136','345',1,1),(59,'central-african-republic','CF','CAF','140','236',0,1),(60,'chad','TD','TCD','148','235',1,1),(61,'chile','CL','CHL','152','056',1,1),(62,'christmas-island','CX','CXR','162','061',1,1),(63,'cocos-islands','CC','CCK','166','061',1,1),(64,'colombia','CO','COL','170','057',1,1),(65,'comoros','KM','COM','174','269',0,1),(66,'republic-of-congo','CD','COD','180','242',0,1),(67,'democratic-republic-of-congo','CG','COG','178','243',0,1),(68,'cook-islands','CK','COK','184','682',0,1),(69,'costa-rica','CR','CRI','188','506',1,1),(70,'croatia','HR','HRV','191','385',1,1),(71,'cuba','CU','CUB','192','053',1,1),(72,'cyprus','CY','CYP','196','357',1,1),(73,'czech-republic','CZ','CZE','203','420',1,1),(74,'denmark','DK','DNK','208','045',1,1),(75,'djibouti','DJ','DJI','262','253',0,1),(76,'dominica','DM','DMA','212','767',0,1),(77,'dominican-republic','DO','DOM','214','809',1,1),(78,'ecuador','EC','ECU','218','593',1,1),(79,'egypt','EG','EGY','818','020',1,1),(80,'el-salvador','SV','SLV','222','503',1,1),(81,'equatorial-guinea','GQ','GNQ','226','240',0,1),(82,'eritrea','ER','ERI','232','291',0,1),(83,'estonia','EE','EST','233','372',1,1),(84,'ethiopia','ET','ETH','231','251',1,1),(85,'faeroe-islands','FO','FRO','234','298',1,1),(86,'falkland-islands','FK','FLK','238','500',1,1),(87,'fiji-islands','FJ','FJI','242','679',0,1),(88,'finland','FI','FIN','246','358',1,1),(89,'french-guiana','GF','GUF','254','594',1,1),(90,'french-polynesia','PF','PYF','258','689',1,1),(91,'gabon','GA','GAB','266','241',1,1),(92,'gambia','GM','GMB','270','220',0,1),(93,'georgia','GE','GEO','268','995',1,1),(94,'ghana','GH','GHA','288','233',0,1),(95,'gibraltar','GI','GIB','292','350',1,1),(96,'greece','GR','GRC','300','030',1,1),(97,'greenland','GL','GRL','304','299',1,1),(98,'grenada','GD','GRD','308','473',0,1),(99,'guadeloupe','GP','GLP','312','590',1,1),(100,'guam','GU','GUM','316','671',1,1),(101,'guatemala','GT','GTM','320','502',1,1),(102,'guinea','GN','GIN','324','224',0,1),(103,'guinea-bissau','GW','GNB','624','245',1,1),(104,'guyana','GY','GUY','328','592',0,1),(105,'haiti','HT','HTI','332','509',1,1),(106,'honduras','HN','HND','340','504',1,1),(107,'iceland','IS','ISL','352','354',1,1),(108,'india','IN','IND','356','091',1,1),(109,'indonesia','ID','IDN','360','062',1,1),(110,'iran','IR','IRN','364','098',1,1),(111,'iraq','IQ','IRQ','368','964',1,1),(112,'ireland','IE','IRL','372','353',0,1),(113,'ivory-coast','CI','CIV','384','225',1,1),(114,'jamaica','JM','JAM','388','876',1,1),(115,'jordan','JO','JOR','400','962',1,1),(116,'kazakhstan','KZ','KAZ','398','007',1,1),(117,'kenya','KE','KEN','404','254',1,1),(118,'kiribati','KI','KIR','408','686',0,1),(119,'kuwait','KW','KWT','414','965',1,1),(120,'north-korea','KP','PRK','408','850',0,1),(121,'kyrgyzstan','KG','KGZ','471','996',1,1),(122,'laos','LA','LAO','418','856',1,1),(123,'latvia','LV','LVA','428','371',1,1),(124,'lebanon','LB','LBN','422','961',1,1),(125,'lesotho','LS','LSO','426','266',1,1),(126,'liberia','LR','LBR','430','231',1,1),(127,'libya','LY','LBY','434','218',1,1),(128,'liechtenstein','LI','LIE','438','423',1,1),(129,'lithuania','LT','LTU','440','370',1,1),(130,'luxembourg','LU','LUX','442','352',1,1),(131,'macau','MO','MAC','446','853',0,1),(132,'macedonia','MK','MKD','807','389',1,1),(133,'madagascar','MG','MDG','450','261',1,1),(134,'malawi','MW','MWI','454','265',0,1),(135,'malaysia','MY','MYS','458','060',1,1),(136,'maldives','MV','MDV','462','960',1,1),(137,'mali','ML','MLI','466','223',0,1),(138,'malta','MT','MLT','470','356',1,1),(139,'marshall-islands','MH','MHL','584','692',1,1),(140,'martinique','MQ','MTQ','474','596',1,1),(141,'mauritania','MR','MRT','478','222',0,1),(142,'mauritius','MU','MUS','480','230',0,1),(143,'mayotte-island','YT','MYT','175','269',1,1),(144,'mexico','MX','MEX','484','052',1,1),(145,'micronesia','FM','FSM','583','691',1,1),(146,'moldova','MD','MDA','498','373',1,1),(147,'monaco','MC','MCO','492','377',1,1),(148,'mongolia','MN','MNG','496','976',1,1),(149,'montenegro','ME','MNE','499','382',1,1),(150,'montserrat','MS','MSR','500','664',0,1),(151,'morocco','MA','MAR','504','212',1,1),(152,'mozambique','MZ','MOZ','508','258',1,1),(153,'namibia','NA','NAM','516','264',1,1),(154,'nauru','NR','NRU','520','674',0,1),(155,'nepal','NP','NPL','524','977',1,1),(156,'netherlands-antilles','AN','ANT','530','599',1,1),(157,'new-caledonia','NC','NCL','540','687',1,1),(158,'new-zealand','NZ','NZL','554','064',1,1),(159,'nicaragua','NI','NIC','558','505',1,1),(160,'niger','NE','NER','562','227',1,1),(161,'nigeria','NG','NGA','566','234',1,1),(162,'niue','NU','NIU','570','683',0,1),(163,'norfolk-island','NF','NFK','574','672',1,1),(164,'norway','NO','NOR','578','047',1,1),(165,'oman','OM','OMN','512','968',1,1),(166,'pakistan','PK','PAK','586','092',1,1),(167,'palau','PW','PLW','585','680',1,1),(168,'palestine','PS','PSE','275','970',1,1),(169,'panama','PA','PAN','591','507',1,1),(170,'papua-new-guinea','PG','PNG','598','675',1,1),(171,'paraguay','PY','PRY','600','595',1,1),(172,'peru','PE','PER','604','051',1,1),(173,'philippines','PH','PHL','608','063',1,1),(174,'poland','PL','POL','616','048',1,1),(175,'puerto-rico','PR','PRI','630','787',1,1),(176,'qatar','QA','QAT','634','974',0,1),(177,'reunion-island','RE','REU','638','262',1,1),(178,'romania','RO','ROU','642','040',1,1),(179,'rwanda','RW','RWA','646','250',0,1),(180,'st-helena','SH','SHN','654','290',1,1),(181,'st-kitts','KN','KNA','659','869',0,1),(182,'st-lucia','LC','LCA','662','758',0,1),(183,'st-pierre-miquelon','PM','SPM','666','508',1,1),(184,'st-vincent','VC','VCT','670','784',1,1),(185,'san-marino','SM','SMR','674','378',1,1),(186,'sao-tome-principe','ST','STP','678','239',0,1),(187,'saudi-arabia','SA','SAU','682','966',1,1),(188,'senegal','SN','SEN','686','221',1,1),(189,'serbia','RS','SRB','688','381',1,1),(190,'seychelles','SC','SYC','690','248',0,1),(191,'sierra-leone','SL','SLE','694','249',0,1),(192,'slovakia','SK','SVK','703','421',1,1),(193,'slovenia','SI','SVN','705','386',1,1),(194,'solomon-islands','SB','SLB','90','677',0,1),(195,'somalia','SO','SOM','706','252',0,1),(196,'south-africa','ZA','ZAF','710','027',1,1),(197,'sri-lanka','LK','LKA','144','094',1,1),(198,'sudan','SD','SDN','736','095',1,1),(199,'suriname','SR','SUR','740','597',0,1),(200,'swaziland','SZ','SWZ','748','268',1,1),(201,'sweden','SE','SWE','752','046',1,1),(202,'switzerland','CH','CHE','756','041',1,1),(203,'syria','SY','SYR','760','963',0,1),(204,'taiwan','TW','TWN','158','886',1,1),(205,'tajikistan','TJ','TJK','762','992',1,1),(206,'tanzania','TZ','TZA','834','255',0,1),(207,'thailand','TH','THA','764','066',1,1),(208,'togo','TG','TGO','768','228',1,1),(209,'tonga','TO','TON','776','676',0,1),(210,'trinidad-tobago','TT','TTO','780','868',0,1),(211,'tunisia','TN','TUN','788','216',1,1),(212,'turkmenistan','TM','TKM','795','993',1,1),(213,'turks-caicos','TC','TCA','796','649',1,1),(214,'tuvalu','TV','TUV','798','688',0,1),(215,'uganda','UG','UGA','800','256',0,1),(216,'ukraine','UA','UKR','804','380',1,1),(217,'united-arab-emirates','AE','ARE','784','971',0,1),(218,'uruguay','UY','URY','858','598',1,1),(219,'uzbekistan','UZ','UZB','860','998',1,1),(220,'vanuatu','VU','VUT','548','678',0,1),(221,'vatican-city','VA','VAT','336','039',1,1),(222,'venezuela','VE','VEN','862','058',1,1),(223,'wallis-futuna','WF','WLF','876','681',1,1),(224,'western-samoa','WS','WSM','882','685',1,1),(225,'yemen','YE','YEM','887','967',0,1),(226,'zambia','ZM','ZMB','894','260',1,1),(227,'zimbabwe','ZW','ZWE','716','263',0,1),(228,'aland-islands','AX','ALA','248','359',1,1),(229,'bonaire-st-eustatius-saba','BQ','BES','535','599',1,1),(230,'bouvet-island','BV','BVT','74','047',1,1),(231,'british-indian-ocean-territory','IO','IOT','86','246',1,1),(232,'curacao','CW','CUW','531','599',1,1),(233,'french-southern-territories','TF','ATF','260','033',0,1),(234,'guernsey','GG','GGY','831','044',1,1),(235,'heard-island-mcdonald-islands','HM','HMD','334','061',1,1),(236,'isle-of-man','IM','IMN','833','044',1,1),(237,'jersey','JE','JEY','832','044',1,1),(238,'northern-mariana-islands','MP','MNP','580','670',1,1),(239,'pitcairn','PN','PCN','612','649',1,1),(240,'south-georgia-south-sandwich-islands','GS','SGS','239','044',1,1),(241,'south-sudan','SS','SSD','728','211',1,1),(242,'sint-maarten','SX','SXM','534','721',1,1),(243,'st-barthelemy','BL','BLM','652','590',1,1),(244,'st-martin','MF','MAF','663','590',1,1),(245,'tokelau','TK','TKL','772','690',0,1),(246,'timor-leste','TL','TLS','626','670',1,1),(247,'united-states-minor-outlying-islands','UM','UMI','581','699',1,1),(248,'united-states-virgin-islands','VI','VIR','850','340',1,1),(249,'western-sahara','EH','ESH','732','212',1,1);

/*Table structure for table `cyrususer` */

DROP TABLE IF EXISTS `cyrususer`;

CREATE TABLE `cyrususer` (
  `userId` varchar(75) NOT NULL,
  `password_` varchar(75) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cyrususer` */

/*Table structure for table `cyrusvirtual` */

DROP TABLE IF EXISTS `cyrusvirtual`;

CREATE TABLE `cyrusvirtual` (
  `emailAddress` varchar(75) NOT NULL,
  `userId` varchar(75) NOT NULL,
  PRIMARY KEY (`emailAddress`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cyrusvirtual` */

/*Table structure for table `ddlrecord` */

DROP TABLE IF EXISTS `ddlrecord`;

CREATE TABLE `ddlrecord` (
  `uuid_` varchar(75) DEFAULT NULL,
  `recordId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `versionUserId` bigint(20) DEFAULT NULL,
  `versionUserName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `DDMStorageId` bigint(20) DEFAULT NULL,
  `recordSetId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `displayIndex` int(11) DEFAULT NULL,
  PRIMARY KEY (`recordId`),
  UNIQUE KEY `IX_B4328F39` (`uuid_`,`groupId`),
  KEY `IX_6A6C1C85` (`companyId`),
  KEY `IX_87A6B599` (`recordSetId`),
  KEY `IX_AAC564D3` (`recordSetId`,`userId`),
  KEY `IX_8BC2F891` (`uuid_`),
  KEY `IX_384AB6F7` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ddlrecord` */

/*Table structure for table `ddlrecordset` */

DROP TABLE IF EXISTS `ddlrecordset`;

CREATE TABLE `ddlrecordset` (
  `uuid_` varchar(75) DEFAULT NULL,
  `recordSetId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `DDMStructureId` bigint(20) DEFAULT NULL,
  `recordSetKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `minDisplayRows` int(11) DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  PRIMARY KEY (`recordSetId`),
  UNIQUE KEY `IX_56DAB121` (`groupId`,`recordSetKey`),
  UNIQUE KEY `IX_270BA5E1` (`uuid_`,`groupId`),
  KEY `IX_4FA5969F` (`groupId`),
  KEY `IX_561E44E9` (`uuid_`),
  KEY `IX_5938C39F` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ddlrecordset` */

/*Table structure for table `ddlrecordversion` */

DROP TABLE IF EXISTS `ddlrecordversion`;

CREATE TABLE `ddlrecordversion` (
  `recordVersionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `DDMStorageId` bigint(20) DEFAULT NULL,
  `recordSetId` bigint(20) DEFAULT NULL,
  `recordId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `displayIndex` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`recordVersionId`),
  UNIQUE KEY `IX_C79E347` (`recordId`,`version`),
  KEY `IX_2F4DDFE1` (`recordId`),
  KEY `IX_762ADC7` (`recordId`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ddlrecordversion` */

/*Table structure for table `ddmcontent` */

DROP TABLE IF EXISTS `ddmcontent`;

CREATE TABLE `ddmcontent` (
  `uuid_` varchar(75) DEFAULT NULL,
  `contentId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `xml` longtext,
  PRIMARY KEY (`contentId`),
  UNIQUE KEY `IX_EB9BDE28` (`uuid_`,`groupId`),
  KEY `IX_E3BAF436` (`companyId`),
  KEY `IX_50BF1038` (`groupId`),
  KEY `IX_AE4B50C2` (`uuid_`),
  KEY `IX_3A9C0626` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ddmcontent` */

/*Table structure for table `ddmstoragelink` */

DROP TABLE IF EXISTS `ddmstoragelink`;

CREATE TABLE `ddmstoragelink` (
  `uuid_` varchar(75) DEFAULT NULL,
  `storageLinkId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `structureId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`storageLinkId`),
  UNIQUE KEY `IX_702D1AD5` (`classPK`),
  KEY `IX_81776090` (`structureId`),
  KEY `IX_32A18526` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ddmstoragelink` */

/*Table structure for table `ddmstructure` */

DROP TABLE IF EXISTS `ddmstructure`;

CREATE TABLE `ddmstructure` (
  `uuid_` varchar(75) DEFAULT NULL,
  `structureId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentStructureId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `structureKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `xsd` longtext,
  `storageType` varchar(75) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  PRIMARY KEY (`structureId`),
  UNIQUE KEY `IX_C8785130` (`groupId`,`classNameId`,`structureKey`),
  UNIQUE KEY `IX_85C7EBE2` (`uuid_`,`groupId`),
  KEY `IX_31817A62` (`classNameId`),
  KEY `IX_4FBAC092` (`companyId`,`classNameId`),
  KEY `IX_C8419FBE` (`groupId`),
  KEY `IX_B6ED5E50` (`groupId`,`classNameId`),
  KEY `IX_43395316` (`groupId`,`parentStructureId`),
  KEY `IX_657899A8` (`parentStructureId`),
  KEY `IX_20FDE04C` (`structureKey`),
  KEY `IX_E61809C8` (`uuid_`),
  KEY `IX_F9FB8D60` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ddmstructure` */

insert  into `ddmstructure`(`uuid_`,`structureId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`parentStructureId`,`classNameId`,`structureKey`,`name`,`description`,`xsd`,`storageType`,`type_`) values ('7a9dc434-6e90-41fc-b74e-05487e452a06',20303,20195,20155,20159,'','2017-12-12 12:11:54','2017-12-12 12:11:54',0,20091,'LEARNING MODULE METADATA','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Learning Module Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Learning Module Metadata</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"true\" name=\"select2235\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"home_edition\" type=\"option\" value=\"HE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Home Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"business_edition\" type=\"option\" value=\"BE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Business Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"enterprise_edition\" type=\"option\" value=\"EE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Enterprise Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Product]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"true\" name=\"select3212\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"1_0\" type=\"option\" value=\"1\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[1.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"2_0\" type=\"option\" value=\"2\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[2.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"3_0\" type=\"option\" value=\"3\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[3.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Version]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"true\" name=\"select4115\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"administration\" type=\"option\" value=\"admin\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Administration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"installation\" type=\"option\" value=\"install\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Installation]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"configuration\" type=\"option\" value=\"config\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Configuration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Topics]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select5069\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"beginner\" type=\"option\" value=\"beginner\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Beginner]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"intermediate\" type=\"option\" value=\"intermediate\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Intermediate]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"advanced\" type=\"option\" value=\"advanced\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Advanced]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Level]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('12b2c96e-d3e7-4789-803f-65e2e35d93aa',20304,20195,20155,20159,'','2017-12-12 12:11:54','2017-12-12 12:11:54',0,20091,'MARKETING CAMPAIGN THEME METADATA','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Marketing Campaign Theme Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Marketing Campaign Theme Metadata</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select2305\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"strong_company\" type=\"option\" value=\"strong\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Strong Company]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"new_product_launch\" type=\"option\" value=\"product\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[New Product Launch]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"company_philosophy\" type=\"option\" value=\"philosophy\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Company Philosophy]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Select]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select3229\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"your_trusted_advisor\" type=\"option\" value=\"advisor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Your Trusted Advisor]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"10_years_of_customer_solutions\" type=\"option\" value=\"solutions\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[10 Years of Customer Solutions]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"making_a_difference\" type=\"option\" value=\"difference\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Making a Difference]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Campaign Theme]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select4282\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"awareness\" type=\"option\" value=\"awareness\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Awareness]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"lead_generation\" type=\"option\" value=\"leads\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Lead Generation]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"customer_service\" type=\"option\" value=\"service\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Customer Service]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Business Goal]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('1ac93f73-dc5b-4885-8caa-0cd3735374e2',20305,20195,20155,20159,'','2017-12-12 12:11:55','2017-12-12 12:11:55',0,20091,'MEETING METADATA','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Meeting Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Metadata for meeting</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" indexType=\"keyword\" name=\"ddm-date3054\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"ddm-date\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text2217\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Meeting Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text4569\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Time]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text5638\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"text\" name=\"textarea6584\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"text\" name=\"textarea7502\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Participants]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('444046a2-dc13-452b-bfe3-a6e3ac05b442',20307,20195,20155,20159,'','2017-12-12 12:11:56','2017-12-12 12:11:56',0,20091,'AUTO_3A5434CA-C223-4B7E-BDD1-FAAF194C95A7','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Contract</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Contract</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" indexType=\"keyword\" name=\"ddm-date18949\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"ddm-date\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Effective Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" indexType=\"keyword\" name=\"ddm-date20127\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"ddm-date\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Expiration Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select10264\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"nda\" type=\"option\" value=\"NDA\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[NDA]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"msa\" type=\"option\" value=\"MSA\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[MSA]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"license_agreement\" type=\"option\" value=\"License\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[License Agreement]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Contract Type]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select4893\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"draft\" type=\"option\" value=\"Draft\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Draft]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"in_review\" type=\"option\" value=\"Review\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[In Review]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"suspended\" type=\"option\" value=\"Suspended\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Suspended]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"signed\" type=\"option\" value=\"Signed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Signed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text14822\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Legal Reviewer]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text17700\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Signing Authority]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text2087\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Deal Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('8eb24c8c-b176-433f-bc6b-c69deb8eab34',20309,20195,20155,20159,'','2017-12-12 12:11:56','2017-12-12 12:11:56',0,20091,'AUTO_0ABE8309-186B-4FD7-B30D-914D38860A0C','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Marketing Banner</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Marketing Banner</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"radio5547\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"radio\">\n		<dynamic-element name=\"yes\" type=\"option\" value=\"yes\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Yes]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"no\" type=\"option\" value=\"no\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[No]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Needs Legal Review]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text2033\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Banner Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"text\" name=\"textarea2873\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('283d722a-28b3-4ee0-bdaf-7d0ad5ed5428',20311,20195,20155,20159,'','2017-12-12 12:11:56','2017-12-12 12:11:56',0,20091,'AUTO_D9BAD61D-4D52-4DBD-942A-8E5933C5CF4B','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Online Training</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Online Training</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text2082\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Lesson Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text2979\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Author]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('8c89f68a-2031-4aa4-8777-b60380304b84',20313,20195,20155,20159,'','2017-12-12 12:11:56','2017-12-12 12:11:56',0,20091,'AUTO_0D4BF396-0BAF-48C4-8DA4-4FA77AA3431F','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Sales Presentation</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Sales Presentation</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select2890\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"home_edition\" type=\"option\" value=\"HE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Home Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"business_edition\" type=\"option\" value=\"BE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Business Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"enterprise_edition\" type=\"option\" value=\"EE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Enterprise Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Product]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select3864\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"1_0\" type=\"option\" value=\"1\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[1.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"2_0\" type=\"option\" value=\"2\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[2.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"3_0\" type=\"option\" value=\"3\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[3.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Version]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"true\" name=\"select4831\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"website\" type=\"option\" value=\"website\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Website]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"collaboration\" type=\"option\" value=\"collaboration\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Collaboration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"intranet\" type=\"option\" value=\"intranet\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Intranet]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Areas of Interest]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"true\" name=\"select5929\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"acme\" type=\"option\" value=\"acme\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[ACME]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"sevencogs\" type=\"option\" value=\"sevencogs\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[SevenCogs]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"freeplus\" type=\"option\" value=\"freeplus\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[FreePlus]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Competitors]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text1993\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Prospect Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('31f17566-fa0f-429c-a089-62f716798a7f',20315,20195,20155,20159,'','2017-12-12 12:11:57','2017-12-12 12:11:57',0,20314,'TIKARAWMETADATA','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">TIKARAWMETADATA</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">TIKARAWMETADATA</Description></root>','<root available-locales=\"en_US\" default-locale=\"en_US\"><dynamic-element dataType=\"string\" name=\"ClimateForcast_PROGRAM_ID\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.PROGRAM_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_COMMAND_LINE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.COMMAND_LINE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_HISTORY\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.HISTORY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_TABLE_ID\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.TABLE_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_INSTITUTION\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.INSTITUTION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_SOURCE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.SOURCE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_CONTACT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.CONTACT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_PROJECT_ID\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.PROJECT_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_CONVENTIONS\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.CONVENTIONS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_REFERENCES\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.REFERENCES]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_ACKNOWLEDGEMENT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.ACKNOWLEDGEMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_REALIZATION\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.REALIZATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_EXPERIMENT_ID\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.EXPERIMENT_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_COMMENT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.COMMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_MODEL_NAME_ENGLISH\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.MODEL_NAME_ENGLISH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"CreativeCommons_LICENSE_URL\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.CreativeCommons.LICENSE_URL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"CreativeCommons_LICENSE_LOCATION\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.CreativeCommons.LICENSE_LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"CreativeCommons_WORK_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.CreativeCommons.WORK_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_NAMESPACE_URI_DC\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.NAMESPACE_URI_DC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_NAMESPACE_URI_DC_TERMS\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.NAMESPACE_URI_DC_TERMS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_PREFIX_DC\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.PREFIX_DC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_PREFIX_DC_TERMS\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.PREFIX_DC_TERMS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_FORMAT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.FORMAT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_IDENTIFIER\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.IDENTIFIER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_MODIFIED\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.MODIFIED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_CONTRIBUTOR\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.CONTRIBUTOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_COVERAGE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.COVERAGE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_CREATOR\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.CREATOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_CREATED\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.CREATED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_DATE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_DESCRIPTION\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.DESCRIPTION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_LANGUAGE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.LANGUAGE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_PUBLISHER\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.PUBLISHER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_RELATION\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.RELATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_RIGHTS\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.RIGHTS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_SOURCE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.SOURCE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_SUBJECT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.SUBJECT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_TITLE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.TITLE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Geographic_LATITUDE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Geographic.LATITUDE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Geographic_LONGITUDE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Geographic.LONGITUDE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Geographic_ALTITUDE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Geographic.ALTITUDE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_ENCODING\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_ENCODING]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LANGUAGE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LANGUAGE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LENGTH\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LENGTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LOCATION\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_DISPOSITION\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_DISPOSITION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_MD5\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_MD5]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_LAST_MODIFIED\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.LAST_MODIFIED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_LOCATION\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_RECIPIENT_ADDRESS\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_RECIPIENT_ADDRESS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_FROM\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_FROM]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_TO\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_TO]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_CC\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_CC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_BCC\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_BCC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_KEYWORDS\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.KEYWORDS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_COMMENTS\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.COMMENTS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LAST_AUTHOR\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_AUTHOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_AUTHOR\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.AUTHOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_APPLICATION_NAME\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.APPLICATION_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_REVISION_NUMBER\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.REVISION_NUMBER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_TEMPLATE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.TEMPLATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_TOTAL_TIME\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.TOTAL_TIME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_PRESENTATION_FORMAT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.PRESENTATION_FORMAT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_NOTES\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.NOTES]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_MANAGER\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.MANAGER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_APPLICATION_VERSION\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.APPLICATION_VERSION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_VERSION\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.VERSION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CONTENT_STATUS\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CONTENT_STATUS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CATEGORY\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CATEGORY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_COMPANY\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.COMPANY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_SECURITY\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.SECURITY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_SLIDE_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.SLIDE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_PAGE_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.PAGE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_PARAGRAPH_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.PARAGRAPH_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LINE_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LINE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_WORD_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.WORD_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CHARACTER_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CHARACTER_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CHARACTER_COUNT_WITH_SPACES\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CHARACTER_COUNT_WITH_SPACES]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_TABLE_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.TABLE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_IMAGE_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.IMAGE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_OBJECT_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.OBJECT_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_EDIT_TIME\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.EDIT_TIME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CREATION_DATE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CREATION_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LAST_SAVED\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_SAVED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LAST_PRINTED\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_PRINTED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_USER_DEFINED_METADATA_NAME_PREFIX\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.USER_DEFINED_METADATA_NAME_PREFIX]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_BITS_PER_SAMPLE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.BITS_PER_SAMPLE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_IMAGE_LENGTH\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.IMAGE_LENGTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_IMAGE_WIDTH\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.IMAGE_WIDTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_SAMPLES_PER_PIXEL\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.SAMPLES_PER_PIXEL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_FLASH_FIRED\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.FLASH_FIRED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_EXPOSURE_TIME\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.EXPOSURE_TIME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_F_NUMBER\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.F_NUMBER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_FOCAL_LENGTH\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.FOCAL_LENGTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_ISO_SPEED_RATINGS\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.ISO_SPEED_RATINGS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_EQUIPMENT_MAKE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.EQUIPMENT_MAKE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_EQUIPMENT_MODEL\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.EQUIPMENT_MODEL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_SOFTWARE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.SOFTWARE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_ORIENTATION\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.ORIENTATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_HORIZONTAL\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_HORIZONTAL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_VERTICAL\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_VERTICAL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_UNIT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_UNIT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_ORIGINAL_DATE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.ORIGINAL_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMetadataKeys_RESOURCE_NAME_KEY\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMetadataKeys.RESOURCE_NAME_KEY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMetadataKeys_PROTECTED\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMetadataKeys.PROTECTED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMetadataKeys_EMBEDDED_RELATIONSHIP_ID\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMetadataKeys.EMBEDDED_RELATIONSHIP_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMimeKeys_TIKA_MIME_FILE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMimeKeys.TIKA_MIME_FILE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMimeKeys_MIME_TYPE_MAGIC\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMimeKeys.MIME_TYPE_MAGIC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_DURATION\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.DURATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ABS_PEAK_AUDIO_FILE_PATH\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ABS_PEAK_AUDIO_FILE_PATH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ALBUM\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ALBUM]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ALT_TAPE_NAME\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ALT_TAPE_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ARTIST\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ARTIST]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_MOD_DATE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_MOD_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_SAMPLE_RATE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_SAMPLE_RATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_SAMPLE_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_SAMPLE_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_CHANNEL_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_CHANNEL_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_COMPRESSOR\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_COMPRESSOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_COMPOSER\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.COMPOSER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_COPYRIGHT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.COPYRIGHT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ENGINEER\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ENGINEER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_FILE_DATA_RATE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.FILE_DATA_RATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_GENRE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.GENRE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_INSTRUMENT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.INSTRUMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_KEY\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.KEY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_LOG_COMMENT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.LOG_COMMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_LOOP\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.LOOP]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_NUMBER_OF_BEATS\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.NUMBER_OF_BEATS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_METADATA_MOD_DATE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.METADATA_MOD_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_PULL_DOWN\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.PULL_DOWN]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_RELATIVE_PEAK_AUDIO_FILE_PATH\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.RELATIVE_PEAK_AUDIO_FILE_PATH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_RELEASE_DATE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.RELEASE_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SCALE_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SCALE_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SCENE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SCENE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_DATE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_LOCATION\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_NAME\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SPEAKER_PLACEMENT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SPEAKER_PLACEMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_STRETCH_MODE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.STRETCH_MODE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TAPE_NAME\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TAPE_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TEMPO\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TEMPO]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TIME_SIGNATURE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TIME_SIGNATURE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TRACK_NUMBER\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TRACK_NUMBER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_ALPHA_MODE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_ALPHA_MODE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_ALPHA_UNITY_IS_TRANSPARENT\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_ALPHA_UNITY_IS_TRANSPARENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_COLOR_SPACE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_COLOR_SPACE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_COMPRESSOR\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_COMPRESSOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_FIELD_ORDER\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_FIELD_ORDER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_FRAME_RATE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_FRAME_RATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_MOD_DATE\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_MOD_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_PIXEL_DEPTH\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_PIXEL_DEPTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_PIXEL_ASPECT_RATIO\" required=\"false\" showLabel=\"true\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_PIXEL_ASPECT_RATIO]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry></meta-data></dynamic-element></root>','xml',0),('17263768-6f09-414a-93a3-15a7d19ba8cf',20412,20182,20155,20159,'','2017-12-12 12:12:09','2017-12-12 12:12:09',0,20098,'CONTACTS','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Contacts</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Contacts</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"company\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Company]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"email\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Email]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"firstName\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[First Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" multiple=\"false\" name=\"imService\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"aol\" type=\"option\" value=\"aol\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[AOL]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"yahoo\" type=\"option\" value=\"yahoo\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Yahoo]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"gtalk\" type=\"option\" value=\"gtalk\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[GTalk]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Instant Messenger Service]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"gtalk\"]]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"imUserName\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Instant Messenger]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"jobTitle\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Job Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"lastName\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Last Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"notes\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Notes]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"phoneMobile\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Phone (Mobile)]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"phoneOffice\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Phone (Office)]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('15886ba7-4ffd-424b-afb2-b0971aa0c6f4',20413,20182,20155,20159,'','2017-12-12 12:12:09','2017-12-12 12:12:09',0,20098,'EVENTS','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Events</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Events</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"document-library\" fieldNamespace=\"ddm\" name=\"attachment\" required=\"false\" showLabel=\"true\" type=\"ddm-documentlibrary\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"double\" fieldNamespace=\"ddm\" name=\"cost\" required=\"false\" showLabel=\"true\" type=\"ddm-number\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Cost]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"eventDate\" required=\"false\" showLabel=\"true\" type=\"ddm-date\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"eventName\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Event Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"eventTime\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Time]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"location\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('222ea057-2add-4adc-af76-083bacec3880',20414,20182,20155,20159,'','2017-12-12 12:12:09','2017-12-12 12:12:09',0,20098,'INVENTORY','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Inventory</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Inventory</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"description\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"item\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Item]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"location\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"purchaseDate\" required=\"false\" showLabel=\"true\" type=\"ddm-date\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Purchase Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"double\" fieldNamespace=\"ddm\" name=\"purchasePrice\" required=\"false\" showLabel=\"true\" type=\"ddm-number\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Purchase Price]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"double\" fieldNamespace=\"ddm\" name=\"quantity\" required=\"false\" showLabel=\"true\" type=\"ddm-number\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Quantity]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('0909534e-c20d-4340-97d3-fc3218ae9167',20415,20182,20155,20159,'','2017-12-12 12:12:09','2017-12-12 12:12:09',0,20098,'ISSUES TRACKING','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Issues Tracking</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Issue Tracking</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"assignedTo\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Assigned To]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"document-library\" fieldNamespace=\"ddm\" name=\"attachment\" required=\"false\" showLabel=\"true\" type=\"ddm-documentlibrary\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"comments\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Comments]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"dueDate\" required=\"false\" showLabel=\"true\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Due Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"issueId\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Issue ID]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" multiple=\"false\" name=\"severity\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"critical\" type=\"option\" value=\"critical\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Critical]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"major\" type=\"option\" value=\"major\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Major]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"minor\" type=\"option\" value=\"minor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Minor]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"trivial\" type=\"option\" value=\"trivial\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Trivial]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Severity]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"minor\"]]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" multiple=\"false\" name=\"status\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"open\" type=\"option\" value=\"open\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Open]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"pending\" type=\"option\" value=\"pending\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Pending]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"completed\" type=\"option\" value=\"completed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Completed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"open\"]]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"title\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('740bfa6e-4baf-4195-b0fb-6e15ca0ae81a',20416,20182,20155,20159,'','2017-12-12 12:12:10','2017-12-12 12:12:10',0,20098,'MEETING MINUTES','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Meeting Minutes</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Meeting Minutes</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"document-library\" fieldNamespace=\"ddm\" name=\"attachment\" required=\"false\" showLabel=\"true\" type=\"ddm-documentlibrary\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"author\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Author]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"duration\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Meeting Duration]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"meetingDate\" required=\"false\" showLabel=\"true\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Meeting Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"minutes\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Minutes]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"title\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('30123132-11d2-4326-98d9-088e1c72b074',20417,20182,20155,20159,'','2017-12-12 12:12:10','2017-12-12 12:12:10',0,20098,'TO DO','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">To Do</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">To Do</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"assignedTo\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Assigned To]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"document-library\" fieldNamespace=\"ddm\" name=\"attachment\" required=\"false\" showLabel=\"true\" type=\"ddm-documentlibrary\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"comments\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Comments]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"endDate\" required=\"false\" showLabel=\"true\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[End Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"integer\" fieldNamespace=\"ddm\" name=\"percentComplete\" required=\"false\" showLabel=\"true\" type=\"ddm-integer\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[% Complete]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[0]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" multiple=\"false\" name=\"severity\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"critical\" type=\"option\" value=\"critical\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Critical]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"major\" type=\"option\" value=\"major\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Major]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"minor\" type=\"option\" value=\"minor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Minor]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"trivial\" type=\"option\" value=\"trivial\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Trivial]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Severity]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"minor\"]]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"startDate\" required=\"false\" showLabel=\"true\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Start Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" multiple=\"false\" name=\"status\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"open\" type=\"option\" value=\"open\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Open]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"pending\" type=\"option\" value=\"pending\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Pending]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"completed\" type=\"option\" value=\"completed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Completed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"open\"]]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"title\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0);

/*Table structure for table `ddmstructurelink` */

DROP TABLE IF EXISTS `ddmstructurelink`;

CREATE TABLE `ddmstructurelink` (
  `structureLinkId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `structureId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`structureLinkId`),
  UNIQUE KEY `IX_C803899D` (`classPK`),
  KEY `IX_D43E4208` (`classNameId`),
  KEY `IX_17692B58` (`structureId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ddmstructurelink` */

/*Table structure for table `ddmtemplate` */

DROP TABLE IF EXISTS `ddmtemplate`;

CREATE TABLE `ddmtemplate` (
  `uuid_` varchar(75) DEFAULT NULL,
  `templateId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `templateKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `mode_` varchar(75) DEFAULT NULL,
  `language` varchar(75) DEFAULT NULL,
  `script` longtext,
  `cacheable` tinyint(4) DEFAULT NULL,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`templateId`),
  UNIQUE KEY `IX_E6DFAB84` (`groupId`,`classNameId`,`templateKey`),
  UNIQUE KEY `IX_1AA75CE3` (`uuid_`,`groupId`),
  KEY `IX_B6356F93` (`classNameId`,`classPK`,`type_`),
  KEY `IX_32F83D16` (`classPK`),
  KEY `IX_DB24DDDD` (`groupId`),
  KEY `IX_BD9A4A91` (`groupId`,`classNameId`),
  KEY `IX_824ADC72` (`groupId`,`classNameId`,`classPK`),
  KEY `IX_90800923` (`groupId`,`classNameId`,`classPK`,`type_`),
  KEY `IX_F0C3449` (`groupId`,`classNameId`,`classPK`,`type_`,`mode_`),
  KEY `IX_B1C33EA6` (`groupId`,`classPK`),
  KEY `IX_33BEF579` (`language`),
  KEY `IX_127A35B0` (`smallImageId`),
  KEY `IX_CAE41A28` (`templateKey`),
  KEY `IX_C4F283C8` (`type_`),
  KEY `IX_F2A243A7` (`uuid_`),
  KEY `IX_D4C2C221` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ddmtemplate` */

insert  into `ddmtemplate`(`uuid_`,`templateId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`classNameId`,`classPK`,`templateKey`,`name`,`description`,`type_`,`mode_`,`language`,`script`,`cacheable`,`smallImage`,`smallImageId`,`smallImageURL`) values ('20208ee2-98dd-478d-a88e-f8e8d6d71ff3',20418,20195,20155,20159,'','2017-12-12 12:12:10','2017-12-12 12:12:10',20007,0,'BLOGS-BASIC-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Basic</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays titles, authors, and abstracts compactly for blog entries.</Description></root>','display','','ftl','<#assign liferay_ui = taglibLiferayHash[\"/WEB-INF/tld/liferay-ui.tld\"] />\n\n<#list entries as entry>\n	<div class=\"entry\">\n		<#assign viewURL = renderResponse.createRenderURL() />\n\n		${viewURL.setParameter(\"struts_action\", \"/blogs/view_entry\")}\n		${viewURL.setParameter(\"redirect\", currentURL)}\n		${viewURL.setParameter(\"urlTitle\", entry.getUrlTitle())}\n\n		<div class=\"entry-content\">\n			<div class=\"entry-title\">\n				<h2><a href=\"${viewURL}\">${htmlUtil.escape(entry.getTitle())}</a></h2>\n			</div>\n		</div>\n\n		<div class=\"entry-body\">\n			<div class=\"entry-author\">\n				<@liferay.language key=\"written-by\" /> ${htmlUtil.escape(portalUtil.getUserName(entry.getUserId(), entry.getUserName()))}\n			</div>\n\n			<#assign summary = entry.getDescription() />\n\n			<#if (validator.isNull(summary))>\n				<#assign summary = entry.getContent() />\n			</#if>\n\n			${stringUtil.shorten(htmlUtil.stripHtml(summary), 100)}\n\n			<a href=\"${viewURL}\"><@liferay.language key=\"read-more\" /> <span class=\"hide-accessible\"><@liferay.language key=\"about\"/>${htmlUtil.escape(entry.getTitle())}</span> &raquo;</a>\n		</div>\n\n		<div class=\"entry-footer\">\n			<span class=\"entry-date\">\n				${dateUtil.getDate(entry.getCreateDate(), \"dd MMM yyyy - HH:mm:ss\", locale)}\n			</span>\n\n			<#assign blogsEntryClassName = \"com.liferay.portlet.blogs.model.BlogsEntry\" />\n\n			<#if (enableFlags == \"true\")>\n				<@liferay_ui[\"flags\"]\n					className=blogsEntryClassName\n					classPK=entry.getEntryId()\n					contentTitle=entry.getTitle()\n					reportedUserId=entry.getUserId()\n				/>\n			</#if>\n\n			<span class=\"entry-categories\">\n				<@liferay_ui[\"asset-categories-summary\"]\n					className=blogsEntryClassName\n					classPK=entry.getEntryId()\n					portletURL=renderResponse.createRenderURL()\n				/>\n			</span>\n\n			<span class=\"entry-tags\">\n				<@liferay_ui[\"asset-tags-summary\"]\n					className=blogsEntryClassName\n					classPK=entry.getEntryId()\n					portletURL=renderResponse.createRenderURL()\n				/>\n			</span>\n		</div>\n	</div>\n\n	<div class=\"separator\"><!-- --></div>\n</#list>',0,0,20419,''),('beadf641-7ee0-403c-a926-82802f6e9871',20420,20195,20155,20159,'','2017-12-12 12:12:10','2017-12-12 12:12:10',20083,0,'ASSET-PUBLISHER-RICH-SUMMARY-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Rich Summary</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays abstracts, icons, related assets, and print/edit actions for assets. Optionally include asset bookmarks and ratings.</Description></root>','display','','ftl','<#assign liferay_ui = taglibLiferayHash[\"/WEB-INF/tld/liferay-ui.tld\"] />\n\n<#list entries as entry>\n	<#assign entry = entry />\n\n	<#assign assetRenderer = entry.getAssetRenderer() />\n\n	<#assign entryTitle = htmlUtil.escape(assetRenderer.getTitle(locale)) />\n\n	<#assign viewURL = assetPublisherHelper.getAssetViewURL(renderRequest, renderResponse, entry) />\n\n	<#if assetLinkBehavior != \"showFullContent\">\n		<#assign viewURL = assetPublisherHelperImpl.getAssetViewURL(renderRequest, renderResponse, entry, true) />\n	</#if>\n\n	<div class=\"asset-abstract\">\n		<div class=\"lfr-meta-actions asset-actions\">\n			<@getPrintIcon />\n\n			<@getFlagsIcon />\n\n			<@getEditIcon />\n		</div>\n\n		<h3 class=\"asset-title\">\n			<a href=\"${viewURL}\"><img alt=\"\" src=\"${assetRenderer.getIconPath(renderRequest)}\" />${entryTitle}</a>\n		</h3>\n\n		<@getMetadataField fieldName=\"tags\" />\n\n		<@getMetadataField fieldName=\"create-date\" />\n\n		<@getMetadataField fieldName=\"view-count\" />\n\n		<div class=\"asset-content\">\n			<@getSocialBookmarks />\n\n			<div class=\"asset-summary\">\n				<@getMetadataField fieldName=\"author\" />\n\n				${htmlUtil.escape(assetRenderer.getSummary(locale))}\n\n				<a href=\"${viewURL}\"><@liferay.language key=\"read-more\" /><span class=\"hide-accessible\"><@liferay.language key=\"about\" />${entryTitle}</span> &raquo;</a>\n			</div>\n\n			<@getRatings />\n\n			<@getRelatedAssets />\n\n			<@getDiscussion />\n		</div>\n	</div>\n\n</#list>\n\n<#macro getDiscussion>\n	<#if validator.isNotNull(assetRenderer.getDiscussionPath()) && (enableComments == \"true\")>\n		<br />\n\n		<#assign discussionURL = renderResponse.createActionURL() />\n\n		${discussionURL.setParameter(\"struts_action\", \"/asset_publisher/\" + assetRenderer.getDiscussionPath())}\n\n		<@liferay_ui[\"discussion\"]\n			className=entry.getClassName()\n			classPK=entry.getClassPK()\n			formAction=discussionURL?string\n			formName=\"fm\" + entry.getClassPK()\n			ratingsEnabled=enableCommentRatings == \"true\"\n			redirect=portalUtil.getCurrentURL(request)\n			userId=assetRenderer.getUserId()\n		/>\n	</#if>\n</#macro>\n\n<#macro getEditIcon>\n	<#if assetRenderer.hasEditPermission(themeDisplay.getPermissionChecker())>\n		<#assign redirectURL = renderResponse.createRenderURL() />\n\n		${redirectURL.setParameter(\"struts_action\", \"/asset_publisher/add_asset_redirect\")}\n		${redirectURL.setWindowState(\"pop_up\")}\n\n		<#assign editPortletURL = assetRenderer.getURLEdit(renderRequest, renderResponse, windowStateFactory.getWindowState(\"pop_up\"), redirectURL)!\"\" />\n\n		<#if validator.isNotNull(editPortletURL)>\n			<#assign title = languageUtil.format(locale, \"edit-x\", entryTitle) />\n\n			<@liferay_ui[\"icon\"]\n				image=\"edit\"\n				message=title\n				url=\"javascript:Liferay.Util.openWindow({dialog: {width: 960}, id:\'\" + renderResponse.getNamespace() + \"editAsset\', title: \'\" + title + \"\', uri:\'\" + htmlUtil.escapeURL(editPortletURL.toString()) + \"\'});\"\n			/>\n		</#if>\n	</#if>\n</#macro>\n\n<#macro getFlagsIcon>\n	<#if enableFlags == \"true\">\n		<@liferay_ui[\"flags\"]\n			className=entry.getClassName()\n			classPK=entry.getClassPK()\n			contentTitle=entry.getTitle(locale)\n			label=false\n			reportedUserId=entry.getUserId()\n		/>\n	</#if>\n</#macro>\n\n<#macro getMetadataField\n	fieldName\n>\n	<#if stringUtil.split(metadataFields)?seq_contains(fieldName)>\n		<span class=\"metadata-entry metadata-\"${fieldName}\">\n			<#assign dateFormat = \"dd MMM yyyy - HH:mm:ss\" />\n\n			<#if fieldName == \"author\">\n				<@liferay.language key=\"by\" /> ${portalUtil.getUserName(assetRenderer.getUserId(), assetRenderer.getUserName())}\n			<#elseif fieldName == \"categories\">\n				<@liferay_ui[\"asset-categories-summary\"]\n					className=entry.getClassName()\n					classPK=entry.getClassPK()\n					portletURL=renderResponse.createRenderURL()\n				/>\n			<#elseif fieldName == \"create-date\">\n				${dateUtil.getDate(entry.getCreateDate(), dateFormat, locale)}\n			<#elseif fieldName == \"expiration-date\">\n				${dateUtil.getDate(entry.getExpirationDate(), dateFormat, locale)}\n			<#elseif fieldName == \"modified-date\">\n				${dateUtil.getDate(entry.getModifiedDate(), dateFormat, locale)}\n			<#elseif fieldName == \"priority\">\n				${entry.getPriority()}\n			<#elseif fieldName == \"publish-date\">\n				${dateUtil.getDate(entry.getPublishDate(), dateFormat, locale)}\n			<#elseif fieldName == \"tags\">\n				<@liferay_ui[\"asset-tags-summary\"]\n					className=entry.getClassName()\n					classPK=entry.getClassPK()\n					portletURL=renderResponse.createRenderURL()\n				/>\n			<#elseif fieldName == \"view-count\">\n				<@liferay_ui[\"icon\"]\n					image=\"history\"\n				/>\n\n				${entry.getViewCount()} <@liferay.language key=\"views\" />\n			</#if>\n		</span>\n	</#if>\n</#macro>\n\n<#macro getPrintIcon>\n	<#if enablePrint == \"true\" >\n		<#assign printURL = renderResponse.createRenderURL() />\n\n		${printURL.setParameter(\"struts_action\", \"/asset_publisher/view_content\")}\n		${printURL.setParameter(\"assetEntryId\", entry.getEntryId()?string)}\n		${printURL.setParameter(\"viewMode\", \"print\")}\n		${printURL.setParameter(\"type\", entry.getAssetRendererFactory().getType())}\n\n		<#if (validator.isNotNull(assetRenderer.getUrlTitle()))>\n			<#if (assetRenderer.getGroupId() != themeDisplay.getScopeGroupId())>\n				${printURL.setParameter(\"groupId\", assetRenderer.getGroupId()?string)}\n			</#if>\n\n			${printURL.setParameter(\"urlTitle\", assetRenderer.getUrlTitle())}\n		</#if>\n\n		${printURL.setWindowState(\"pop_up\")}\n\n		<@liferay_ui[\"icon\"]\n			image=\"print\"\n			message=\"print\"\n			url=\"javascript:Liferay.Util.openWindow({id:\'\" + renderResponse.getNamespace() + \"printAsset\', title: \'\" + languageUtil.format(locale, \"print-x-x\", [\"hide-accessible\", entryTitle]) + \"\', uri: \'\" + htmlUtil.escapeURL(printURL.toString()) + \"\'});\"\n		/>\n	</#if>\n</#macro>\n\n<#macro getRatings>\n	<#if (enableRatings == \"true\")>\n		<div class=\"asset-ratings\">\n			<@liferay_ui[\"ratings\"]\n				className=entry.getClassName()\n				classPK=entry.getClassPK()\n			/>\n		</div>\n	</#if>\n</#macro>\n\n<#macro getRelatedAssets>\n	<#if enableRelatedAssets == \"true\">\n		<@liferay_ui[\"asset-links\"]\n			assetEntryId=entry.getEntryId()\n		/>\n	</#if>\n</#macro>\n\n<#macro getSocialBookmarks>\n	<#if enableSocialBookmarks == \"true\">\n		<@liferay_ui[\"social-bookmarks\"]\n			displayStyle=\"${socialBookmarksDisplayStyle}\"\n			target=\"_blank\"\n			title=entry.getTitle(locale)\n			url=viewURL\n		/>\n	</#if>\n</#macro>',0,0,20421,''),('32d60bdb-84db-4450-a8e8-52e43e8cb0e7',20422,20195,20155,20159,'','2017-12-12 12:12:10','2017-12-12 12:12:10',20034,0,'SITE-MAP-MULTI-COLUMN-LAYOUT-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Multi Column Layout</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays a column for each top level page. Each column includes the name of a top level page with the page\'s immediate children listed underneath.</Description></root>','display','','ftl','<#assign aui = taglibLiferayHash[\"/WEB-INF/tld/aui.tld\"] />\n\n<#if entries?has_content>\n	<@aui.layout>\n		<#list entries as entry>\n		    <@aui.column columnWidth=25>\n				<div class=\"results-header\">\n					<h3>\n						<#assign layoutURL = portalUtil.getLayoutURL(entry, themeDisplay)>\n\n						<a href=\"${layoutURL}\">${entry.getName(locale)}</a>\n					</h3>\n				</div>\n\n				<#assign pages = entry.getChildren()>\n\n				<@displayPages pages = pages />\n		    </@aui.column>\n		</#list>\n	</@aui.layout>\n</#if>\n\n<#macro displayPages\n	pages\n>\n	<#if pages?has_content>\n		<ul class=\"child-pages\">\n			<#list pages as page>\n				<li>\n					<#assign pageLayoutURL = portalUtil.getLayoutURL(page, themeDisplay)>\n\n					<a href=\"${pageLayoutURL}\">${page.getName(locale)}</a>\n\n					<#assign childPages = page.getChildren()>\n\n					<@displayPages pages = childPages />\n				</li>\n			</#list>\n		</ul>\n	</#if>\n</#macro>',0,0,20423,''),('6cd701f9-197c-412f-beaa-232d7297afba',20425,20195,20155,20159,'','2017-12-12 12:12:10','2017-12-12 12:12:10',20424,0,'DOCUMENTLIBRARY-CAROUSEL-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Carousel</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays images in a carousel.</Description></root>','display','','ftl','<#assign aui = taglibLiferayHash[\"/WEB-INF/tld/aui.tld\"] />\n<#assign liferay_portlet = taglibLiferayHash[\"/WEB-INF/tld/liferay-portlet.tld\"] />\n\n<#if entries?has_content>\n	<style>\n		#<@liferay_portlet.namespace />carousel .carousel-item {\n			background-color: #000;\n			height: 250px;\n			overflow: hidden;\n			text-align: center;\n			width: 700px;\n		}\n\n		#<@liferay_portlet.namespace />carousel .carousel-item img {\n			max-height: 250px;\n			max-width: 700px;\n		}\n	</style>\n\n	<div id=\"<@liferay_portlet.namespace />carousel\">\n		<#assign imageMimeTypes = propsUtil.getArray(\"dl.file.entry.preview.image.mime.types\") />\n\n		<#list entries as entry>\n			<#if imageMimeTypes?seq_contains(entry.getMimeType()) >\n				<div class=\"carousel-item\">\n					<img src=\"${dlUtil.getPreviewURL(entry, entry.getFileVersion(), themeDisplay, \"\")}\" />\n				</div>\n			</#if>\n		</#list>\n	</div>\n\n	<@aui.script use=\"aui-carousel\">\n		new A.Carousel(\n			{\n				contentBox: \'#<@liferay_portlet.namespace />carousel\',\n				height: 250,\n				intervalTime: 2,\n				width: 700\n			}\n		).render();\n	</@aui.script>\n</#if>',0,0,20426,''),('0ac9828f-92a7-4c13-8be1-e4949ebd8b44',20427,20195,20155,20159,'','2017-12-12 12:12:10','2017-12-12 12:12:10',20016,0,'WIKI-SOCIAL-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Social</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays social bookmarks and ratings for wiki pages and their child pages.</Description></root>','display','','ftl','<#assign liferay_ui = taglibLiferayHash[\"/WEB-INF/tld/liferay-ui.tld\"] />\n\n<#assign wikiPageClassName = \"com.liferay.portlet.wiki.model.WikiPage\" />\n\n<#assign assetRenderer = assetEntry.getAssetRenderer() />\n\n<div class=\"taglib-header\">\n	<h1 class=\"header-title\">${entry.getTitle()}</h1>\n</div>\n\n<div style=\"float: right;\">\n	<@getEditIcon />\n\n	<@getPageDetailsIcon />\n\n	<@getPrintIcon />\n</div>\n\n<div class=\"wiki-body\">\n	<div class=\"wiki-info\">\n		<span class=\"stats\">${assetEntry.getViewCount()} <@liferay.language key=\"views\" /></span> |\n\n		<span class=\"date\"><@liferay.language key=\"last-modified\" /> ${dateUtil.getDate(entry.getModifiedDate(), \"dd MMM yyyy - HH:mm:ss\", locale)}</span>\n\n		<span class=\"author\"><@liferay.language key=\"by\" /> ${htmlUtil.escape(portalUtil.getUserName(entry.getUserId(), entry.getUserName()))}</span>\n	</div>\n\n	<div class=\"wiki-content\">\n		<@liferay_ui[\"social-bookmarks\"]\n			displayStyle=\"normal\"\n			target=\"_blank\"\n			title=entry.getTitle()\n			url=viewURL\n		/>\n\n		${formattedContent}\n	</div>\n\n	<div class=\"page-actions\">\n		<div class=\"article-actions\">\n			<@getAddChildPageIcon />\n\n			<@getAttatchmentsIcon />\n		</div>\n	</div>\n\n	 <br />\n\n	<@getRatings cssClass=\"page-ratings\" entry=entry />\n\n	<@getRelatedAssets />\n</div>\n\n<div class=\"page-categorization\">\n	<div class=\"page-categories\">\n		<#assign viewCategorizedPagesURL = renderResponse.createRenderURL() />\n\n		${viewCategorizedPagesURL.setParameter(\"struts_action\", \"/wiki/view_categorized_pages\")}\n		${viewCategorizedPagesURL.setParameter(\"nodeId\", entry.getNodeId()?string)}\n\n		<@liferay_ui[\"asset-categories-summary\"]\n			className=wikiPageClassName\n			classPK=entry.getResourcePrimKey()\n			portletURL=viewCategorizedPagesURL\n		/>\n	</div>\n\n	<div class=\"page-tags\">\n		<#assign viewTaggedPagesURL = renderResponse.createRenderURL() />\n\n		${viewTaggedPagesURL.setParameter(\"struts_action\", \"/wiki/view_tagged_pages\")}\n		${viewTaggedPagesURL.setParameter(\"nodeId\", entry.getNodeId()?string)}\n\n		<@liferay_ui[\"asset-tags-summary\"]\n			className=wikiPageClassName\n			classPK=entry.getResourcePrimKey()\n			portletURL=viewTaggedPagesURL\n		/>\n	</div>\n</div>\n\n<#assign childPages = entry.getChildPages() />\n\n<#if (childPages?has_content)>\n	<div class=\"child-pages\">\n		<h2><@liferay.language key=\"children-pages\" /></h2>\n\n		<table class=\"taglib-search-iterator\">\n			<tr class=\"portlet-section-header results-header\">\n				<th>\n					<@liferay.language key=\"page\" />\n				</th>\n				<th>\n					<@liferay.language key=\"last-modified\" />\n				</th>\n				<th>\n					<@liferay.language key=\"ratings\" />\n				</th>\n			</tr>\n\n			<#list childPages as childPage>\n				<tr class=\"results-row\">\n					<#assign viewPageURL = renderResponse.createRenderURL() />\n\n					${viewPageURL.setParameter(\"struts_action\", \"/wiki/view\")}\n\n					<#assign childNode = childPage.getNode() />\n\n					${viewPageURL.setParameter(\"nodeName\", childNode.getName())}\n					${viewPageURL.setParameter(\"title\", childPage.getTitle())}\n\n					<td>\n						<a href=\"${viewPageURL}\">${childPage.getTitle()}</a>\n					</td>\n					<td>\n						<a href=\"${viewPageURL}\">${dateUtil.getDate(childPage.getModifiedDate(),\"dd MMM yyyy - HH:mm:ss\", locale)} <@liferay.language key=\"by\" /> ${htmlUtil.escape(portalUtil.getUserName(childPage.getUserId(), childPage.getUserName()))}</a>\n					</td>\n					<td>\n						<@getRatings cssClass=\"child-ratings\" entry=childPage />\n					</td>\n				</tr>\n			</#list>\n		</table>\n	</div>\n</#if>\n\n<@getDiscussion />\n\n<#macro getAddChildPageIcon>\n	<#if assetRenderer.hasEditPermission(themeDisplay.getPermissionChecker())>\n		<#assign addPageURL = renderResponse.createRenderURL() />\n\n		${addPageURL.setParameter(\"struts_action\", \"/wiki/edit_page\")}\n		${addPageURL.setParameter(\"redirect\", currentURL)}\n		${addPageURL.setParameter(\"nodeId\", entry.getNodeId()?string)}\n		${addPageURL.setParameter(\"title\", \"\")}\n		${addPageURL.setParameter(\"editTitle\", \"1\")}\n		${addPageURL.setParameter(\"parentTitle\", entry.getTitle())}\n\n		<@liferay_ui[\"icon\"]\n			image=\"add_article\"\n			label=true\n			message=\"add-child-page\"\n			url=addPageURL?string\n		/>\n	</#if>\n</#macro>\n\n<#macro getAttatchmentsIcon>\n	<#assign viewPageAttachmentsURL = renderResponse.createRenderURL() />\n\n	${viewPageAttachmentsURL.setParameter(\"struts_action\", \"/wiki/view_page_attachments\") }\n\n	<@liferay_ui[\"icon\"]\n		image=\"clip\"\n		label=true\n		message=\'${entry.getAttachmentsFileEntriesCount() + languageUtil.get(locale, \"attachments\")}\'\n		url=viewPageAttachmentsURL?string\n	/>\n</#macro>\n\n<#macro getDiscussion>\n	<#if validator.isNotNull(assetRenderer.getDiscussionPath()) && (enableComments == \"true\")>\n		<br />\n\n		<#assign discussionURL = renderResponse.createActionURL() />\n\n		${discussionURL.setParameter(\"struts_action\", \"/wiki/\" + assetRenderer.getDiscussionPath())}\n\n		<@liferay_ui[\"discussion\"]\n			className=wikiPageClassName\n			classPK=entry.getResourcePrimKey()\n			formAction=discussionURL?string\n			formName=\"fm2\"\n			ratingsEnabled=enableCommentRatings == \"true\"\n			redirect=currentURL\n			subject=assetRenderer.getTitle(locale)\n			userId=assetRenderer.getUserId()\n		/>\n	</#if>\n</#macro>\n\n<#macro getEditIcon>\n	<#if assetRenderer.hasEditPermission(themeDisplay.getPermissionChecker())>\n		<#assign editPageURL = renderResponse.createRenderURL() />\n\n		${editPageURL.setParameter(\"struts_action\", \"/wiki/edit_page\")}\n		${editPageURL.setParameter(\"redirect\", currentURL)}\n		${editPageURL.setParameter(\"nodeId\", entry.getNodeId()?string)}\n		${editPageURL.setParameter(\"title\", entry.getTitle())}\n\n		<@liferay_ui[\"icon\"]\n			image=\"edit\"\n			message=entry.getTitle()\n			url=editPageURL?string\n		/>\n	</#if>\n</#macro>\n\n<#macro getPageDetailsIcon>\n	<#assign viewPageDetailsURL = renderResponse.createRenderURL() />\n\n	${viewPageDetailsURL.setParameter(\"struts_action\", \"/wiki/view_page_details\")}\n	${viewPageDetailsURL.setParameter(\"redirect\", currentURL)}\n\n	<@liferay_ui[\"icon\"]\n		image=\"history\"\n		message=\"details\"\n		url=viewPageDetailsURL?string\n	/>\n</#macro>\n\n<#macro getPrintIcon>\n	<#assign printURL = renderResponse.createRenderURL() />\n\n	${printURL.setParameter(\"viewMode\", \"print\")}\n	${printURL.setWindowState(\"pop_up\")}\n\n	<#assign title = languageUtil.format(locale, \"print-x-x\", [\"hide-accessible\", htmlUtil.escape(assetRenderer.getTitle(locale))]) />\n	<#assign taglibPrintURL = \"javascript:Liferay.Util.openWindow({dialog: {width: 960}, id:\'\" + renderResponse.getNamespace() + \"printAsset\', title: \'\" + title + \"\', uri: \'\" + htmlUtil.escapeURL(printURL.toString()) + \"\'});\" />\n\n	<@liferay_ui[\"icon\"]\n		image=\"print\"\n		message=\"print\"\n		url=taglibPrintURL\n	/>\n</#macro>\n\n<#macro getRatings\n	cssClass\n	entry\n>\n	<#if enablePageRatings == \"true\">\n		<div class=\"${cssClass}\">\n			<@liferay_ui[\"ratings\"]\n				className=wikiPageClassName\n				classPK=entry.getResourcePrimKey()\n			/>\n		</div>\n	</#if>\n</#macro>\n\n<#macro getRelatedAssets>\n	<#if assetEntry?? && (enableRelatedAssets == \"true\")>\n		<@liferay_ui[\"asset-links\"]\n			assetEntryId=assetEntry.getEntryId()\n		/>\n	</#if>\n</#macro>',0,0,20428,''),('5694ac16-10f0-4e4d-8e3b-0635fd530196',20429,20195,20155,20159,'','2017-12-12 12:12:11','2017-12-12 12:12:11',20085,0,'ASSET-TAGS-NAVIGATION-COLOR-BY-POPULARITY-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Color by Popularity</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays asset tags colored by popularity: red (high), yellow (medium), and green (low).</Description></root>','display','','ftl','<#if entries?has_content>\n	<ul class=\"tag-items tag-list\">\n		<#assign scopeGroupId = getterUtil.getLong(scopeGroupId, themeDisplay.getScopeGroupId()) />\n		<#assign classNameId = getterUtil.getLong(classNameId, 0) />\n\n		<#assign maxCount = 1 />\n		<#assign minCount = 1 />\n\n		<#list entries as entry>\n			<#assign maxCount = liferay.max(maxCount, entry.getAssetCount()) />\n			<#assign minCount = liferay.min(minCount, entry.getAssetCount()) />\n		</#list>\n\n		<#assign multiplier = 1 />\n\n		<#if maxCount != minCount>\n			<#assign multiplier = 3 / (maxCount - minCount) />\n		</#if>\n\n		<#list entries as entry>\n			<li class=\"taglib-asset-tags-summary\">\n				<#assign popularity = (maxCount - (maxCount - (entry.getAssetCount() - minCount))) * multiplier />\n\n				<#if popularity < 1>\n					<#assign color = \"green\" />\n				<#elseif (popularity >= 1) && (popularity < 2)>\n					<#assign color = \"orange\" />\n				<#else>\n					<#assign color = \"red\" />\n				</#if>\n\n				<#assign tagURL = renderResponse.createRenderURL() />\n\n				${tagURL.setParameter(\"resetCur\", \"true\")}\n				${tagURL.setParameter(\"tag\", entry.getName())}\n\n				<a class =\"tag\" style=\"color: ${color};\" href=\"${tagURL}\">\n					${entry.getName()}\n\n					<#if (showAssetCount == \"true\")>\n						<span class=\"tag-asset-count\">(${count})</span>\n					</#if>\n				</a>\n			</li>\n		</#list>\n	</ul>\n\n	<br style=\"clear: both;\" />\n</#if>',0,0,20430,''),('38e485e2-dce2-4539-bdfe-e19f49269e5c',20431,20195,20155,20159,'','2017-12-12 12:12:11','2017-12-12 12:12:11',20081,0,'ASSET-CATEGORIES-NAVIGATION-MULTI-COLUMN-LAYOUT-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Multi Column Layout</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays a column for each vocabulary. Each column includes the name of a vocabulary with the vocabulary\'s top level categories listed underneath.</Description></root>','display','','ftl','<#assign aui = taglibLiferayHash[\"/WEB-INF/tld/aui.tld\"] />\n\n<#if entries?has_content>\n	<@aui.layout>\n		<#list entries as entry>\n			<@aui.column columnWidth=25>\n				<div class=\"results-header\">\n					<h3>\n						${entry.getName()}\n					</h3>\n				</div>\n\n				<#assign categories = entry.getCategories()>\n\n				<@displayCategories categories=categories />\n			</@aui.column>\n		</#list>\n	</@aui.layout>\n</#if>\n\n<#macro displayCategories\n	categories\n>\n	<#if categories?has_content>\n		<ul class=\"categories\">\n			<#list categories as category>\n				<li>\n					<#assign categoryURL = renderResponse.createRenderURL()>\n\n					${categoryURL.setParameter(\"resetCur\", \"true\")}\n					${categoryURL.setParameter(\"categoryId\", category.getCategoryId()?string)}\n\n					<a href=\"${categoryURL}\">${category.getName()}</a>\n\n					<#if serviceLocator??>\n						<#assign assetCategoryService = serviceLocator.findService(\"com.liferay.portlet.asset.service.AssetCategoryService\")>\n\n						<#assign childCategories = assetCategoryService.getChildCategories(category.getCategoryId())>\n\n						<@displayCategories categories=childCategories />\n					</#if>\n				</li>\n			</#list>\n		</ul>\n	</#if>\n</#macro>',0,0,20432,'');

/*Table structure for table `dlcontent` */

DROP TABLE IF EXISTS `dlcontent`;

CREATE TABLE `dlcontent` (
  `contentId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `path_` varchar(255) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `data_` longblob,
  `size_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`contentId`),
  UNIQUE KEY `IX_FDD1AAA8` (`companyId`,`repositoryId`,`path_`,`version`),
  KEY `IX_6A83A66A` (`companyId`,`repositoryId`),
  KEY `IX_EB531760` (`companyId`,`repositoryId`,`path_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dlcontent` */

/*Table structure for table `dlfileentry` */

DROP TABLE IF EXISTS `dlfileentry`;

CREATE TABLE `dlfileentry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(255) DEFAULT NULL,
  `extension` varchar(75) DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `extraSettings` longtext,
  `fileEntryTypeId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `size_` bigint(20) DEFAULT NULL,
  `readCount` int(11) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `largeImageId` bigint(20) DEFAULT NULL,
  `custom1ImageId` bigint(20) DEFAULT NULL,
  `custom2ImageId` bigint(20) DEFAULT NULL,
  `manualCheckInRequired` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`fileEntryId`),
  UNIQUE KEY `IX_5391712` (`groupId`,`folderId`,`name`),
  UNIQUE KEY `IX_ED5CA615` (`groupId`,`folderId`,`title`),
  UNIQUE KEY `IX_BC2E7E6A` (`uuid_`,`groupId`),
  KEY `IX_4CB1B2B4` (`companyId`),
  KEY `IX_772ECDE7` (`fileEntryTypeId`),
  KEY `IX_8F6C75D0` (`folderId`,`name`),
  KEY `IX_F4AF5636` (`groupId`),
  KEY `IX_93CF8193` (`groupId`,`folderId`),
  KEY `IX_29D0AF28` (`groupId`,`folderId`,`fileEntryTypeId`),
  KEY `IX_43261870` (`groupId`,`userId`),
  KEY `IX_D20C434D` (`groupId`,`userId`,`folderId`),
  KEY `IX_D9492CF6` (`mimeType`),
  KEY `IX_1B352F4A` (`repositoryId`,`folderId`),
  KEY `IX_64F0FE40` (`uuid_`),
  KEY `IX_31079DE8` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dlfileentry` */

/*Table structure for table `dlfileentrymetadata` */

DROP TABLE IF EXISTS `dlfileentrymetadata`;

CREATE TABLE `dlfileentrymetadata` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileEntryMetadataId` bigint(20) NOT NULL,
  `DDMStorageId` bigint(20) DEFAULT NULL,
  `DDMStructureId` bigint(20) DEFAULT NULL,
  `fileEntryTypeId` bigint(20) DEFAULT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  `fileVersionId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`fileEntryMetadataId`),
  UNIQUE KEY `IX_7332B44F` (`DDMStructureId`,`fileVersionId`),
  KEY `IX_4F40FE5E` (`fileEntryId`),
  KEY `IX_A44636C9` (`fileEntryId`,`fileVersionId`),
  KEY `IX_F8E90438` (`fileEntryTypeId`),
  KEY `IX_1FE9C04` (`fileVersionId`),
  KEY `IX_D49AB5D1` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dlfileentrymetadata` */

/*Table structure for table `dlfileentrytype` */

DROP TABLE IF EXISTS `dlfileentrytype`;

CREATE TABLE `dlfileentrytype` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileEntryTypeId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `fileEntryTypeKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  PRIMARY KEY (`fileEntryTypeId`),
  UNIQUE KEY `IX_5B6BEF5F` (`groupId`,`fileEntryTypeKey`),
  UNIQUE KEY `IX_1399D844` (`uuid_`,`groupId`),
  KEY `IX_4501FD9C` (`groupId`),
  KEY `IX_90724726` (`uuid_`),
  KEY `IX_5B03E942` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dlfileentrytype` */

insert  into `dlfileentrytype`(`uuid_`,`fileEntryTypeId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`fileEntryTypeKey`,`name`,`description`) values ('fa93c8f8-f290-41d6-a415-3de3c35c5fb0',0,0,0,0,'','2017-12-12 12:11:30','2017-12-12 12:11:30','BASIC-DOCUMENT','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">basic-document</Name></root>',''),('3a5434ca-c223-4b7e-bdd1-faaf194c95a7',20306,20195,20155,20159,'','2017-12-12 12:11:56','2017-12-12 12:11:56','CONTRACT','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Contract</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Contract</Description></root>'),('0abe8309-186b-4fd7-b30d-914d38860a0c',20308,20195,20155,20159,'','2017-12-12 12:11:56','2017-12-12 12:11:56','MARKETING BANNER','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Marketing Banner</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Marketing Banner</Description></root>'),('d9bad61d-4d52-4dbd-942a-8e5933c5cf4b',20310,20195,20155,20159,'','2017-12-12 12:11:56','2017-12-12 12:11:56','ONLINE TRAINING','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Online Training</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Online Training</Description></root>'),('0d4bf396-0baf-48c4-8da4-4fa77aa3431f',20312,20195,20155,20159,'','2017-12-12 12:11:56','2017-12-12 12:11:56','SALES PRESENTATION','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Sales Presentation</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Sales Presentation</Description></root>');

/*Table structure for table `dlfileentrytypes_ddmstructures` */

DROP TABLE IF EXISTS `dlfileentrytypes_ddmstructures`;

CREATE TABLE `dlfileentrytypes_ddmstructures` (
  `structureId` bigint(20) NOT NULL,
  `fileEntryTypeId` bigint(20) NOT NULL,
  PRIMARY KEY (`structureId`,`fileEntryTypeId`),
  KEY `IX_8373EC7C` (`fileEntryTypeId`),
  KEY `IX_F147CF3F` (`structureId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dlfileentrytypes_ddmstructures` */

insert  into `dlfileentrytypes_ddmstructures`(`structureId`,`fileEntryTypeId`) values (20307,20306),(20304,20308),(20309,20308),(20303,20310),(20311,20310),(20305,20312),(20313,20312);

/*Table structure for table `dlfileentrytypes_dlfolders` */

DROP TABLE IF EXISTS `dlfileentrytypes_dlfolders`;

CREATE TABLE `dlfileentrytypes_dlfolders` (
  `fileEntryTypeId` bigint(20) NOT NULL,
  `folderId` bigint(20) NOT NULL,
  PRIMARY KEY (`fileEntryTypeId`,`folderId`),
  KEY `IX_5BB6AD6C` (`fileEntryTypeId`),
  KEY `IX_6E00A2EC` (`folderId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dlfileentrytypes_dlfolders` */

/*Table structure for table `dlfilerank` */

DROP TABLE IF EXISTS `dlfilerank`;

CREATE TABLE `dlfilerank` (
  `fileRankId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`fileRankId`),
  UNIQUE KEY `IX_38F0315` (`companyId`,`userId`,`fileEntryId`),
  KEY `IX_A65A1F8B` (`fileEntryId`),
  KEY `IX_BAFB116E` (`groupId`,`userId`),
  KEY `IX_4E96195B` (`groupId`,`userId`,`active_`),
  KEY `IX_EED06670` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dlfilerank` */

/*Table structure for table `dlfileshortcut` */

DROP TABLE IF EXISTS `dlfileshortcut`;

CREATE TABLE `dlfileshortcut` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileShortcutId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `toFileEntryId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`fileShortcutId`),
  UNIQUE KEY `IX_FDB4A946` (`uuid_`,`groupId`),
  KEY `IX_A4BB2E58` (`companyId`),
  KEY `IX_8571953E` (`companyId`,`status`),
  KEY `IX_B0051937` (`groupId`,`folderId`),
  KEY `IX_348DC3B2` (`groupId`,`folderId`,`active_`),
  KEY `IX_17EE3098` (`groupId`,`folderId`,`active_`,`status`),
  KEY `IX_4B7247F6` (`toFileEntryId`),
  KEY `IX_4831EBE4` (`uuid_`),
  KEY `IX_29AE81C4` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dlfileshortcut` */

/*Table structure for table `dlfileversion` */

DROP TABLE IF EXISTS `dlfileversion`;

CREATE TABLE `dlfileversion` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileVersionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `extension` varchar(75) DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `changeLog` varchar(75) DEFAULT NULL,
  `extraSettings` longtext,
  `fileEntryTypeId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `size_` bigint(20) DEFAULT NULL,
  `checksum` varchar(75) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`fileVersionId`),
  UNIQUE KEY `IX_E2815081` (`fileEntryId`,`version`),
  UNIQUE KEY `IX_C99B2650` (`uuid_`,`groupId`),
  KEY `IX_F389330E` (`companyId`),
  KEY `IX_A0A283F4` (`companyId`,`status`),
  KEY `IX_C68DC967` (`fileEntryId`),
  KEY `IX_D47BB14D` (`fileEntryId`,`status`),
  KEY `IX_DFD809D3` (`groupId`,`folderId`,`status`),
  KEY `IX_9BE769ED` (`groupId`,`folderId`,`title`,`version`),
  KEY `IX_FFB3395C` (`mimeType`),
  KEY `IX_4BFABB9A` (`uuid_`),
  KEY `IX_95E9E44E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dlfileversion` */

/*Table structure for table `dlfolder` */

DROP TABLE IF EXISTS `dlfolder`;

CREATE TABLE `dlfolder` (
  `uuid_` varchar(75) DEFAULT NULL,
  `folderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `mountPoint` tinyint(4) DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(100) DEFAULT NULL,
  `description` longtext,
  `lastPostDate` datetime DEFAULT NULL,
  `defaultFileEntryTypeId` bigint(20) DEFAULT NULL,
  `hidden_` tinyint(4) DEFAULT NULL,
  `overrideFileEntryTypes` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`folderId`),
  UNIQUE KEY `IX_902FD874` (`groupId`,`parentFolderId`,`name`),
  UNIQUE KEY `IX_3CC1DED2` (`uuid_`,`groupId`),
  KEY `IX_A74DB14C` (`companyId`),
  KEY `IX_E79BE432` (`companyId`,`status`),
  KEY `IX_F2EA1ACE` (`groupId`),
  KEY `IX_F78286C5` (`groupId`,`mountPoint`,`parentFolderId`,`hidden_`),
  KEY `IX_C88430AB` (`groupId`,`mountPoint`,`parentFolderId`,`hidden_`,`status`),
  KEY `IX_49C37475` (`groupId`,`parentFolderId`),
  KEY `IX_CE360BF6` (`groupId`,`parentFolderId`,`hidden_`,`status`),
  KEY `IX_51556082` (`parentFolderId`,`name`),
  KEY `IX_EE29C715` (`repositoryId`),
  KEY `IX_CBC408D8` (`uuid_`),
  KEY `IX_DA448450` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dlfolder` */

/*Table structure for table `dlsyncevent` */

DROP TABLE IF EXISTS `dlsyncevent`;

CREATE TABLE `dlsyncevent` (
  `syncEventId` bigint(20) NOT NULL,
  `modifiedTime` bigint(20) DEFAULT NULL,
  `event` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `typePK` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`syncEventId`),
  UNIQUE KEY `IX_57D82B06` (`typePK`),
  KEY `IX_3D8E1607` (`modifiedTime`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dlsyncevent` */

/*Table structure for table `emailaddress` */

DROP TABLE IF EXISTS `emailaddress`;

CREATE TABLE `emailaddress` (
  `uuid_` varchar(75) DEFAULT NULL,
  `emailAddressId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `address` varchar(75) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`emailAddressId`),
  KEY `IX_1BB072CA` (`companyId`),
  KEY `IX_49D2DEC4` (`companyId`,`classNameId`),
  KEY `IX_551A519F` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_2A2CB130` (`companyId`,`classNameId`,`classPK`,`primary_`),
  KEY `IX_7B43CD8` (`userId`),
  KEY `IX_D24F3956` (`uuid_`),
  KEY `IX_F74AB912` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `emailaddress` */

/*Table structure for table `expandocolumn` */

DROP TABLE IF EXISTS `expandocolumn`;

CREATE TABLE `expandocolumn` (
  `columnId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `tableId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `defaultData` longtext,
  `typeSettings` longtext,
  PRIMARY KEY (`columnId`),
  UNIQUE KEY `IX_FEFC8DA7` (`tableId`,`name`),
  KEY `IX_A8C0CBE8` (`tableId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `expandocolumn` */

insert  into `expandocolumn`(`columnId`,`companyId`,`tableId`,`name`,`type_`,`defaultData`,`typeSettings`) values (20438,20155,20437,'clientId',15,'','');

/*Table structure for table `expandorow` */

DROP TABLE IF EXISTS `expandorow`;

CREATE TABLE `expandorow` (
  `rowId_` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `tableId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`rowId_`),
  UNIQUE KEY `IX_81EFBFF5` (`tableId`,`classPK`),
  KEY `IX_49EB3118` (`classPK`),
  KEY `IX_D3F5D7AE` (`tableId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `expandorow` */

/*Table structure for table `expandotable` */

DROP TABLE IF EXISTS `expandotable`;

CREATE TABLE `expandotable` (
  `tableId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`tableId`),
  UNIQUE KEY `IX_37562284` (`companyId`,`classNameId`,`name`),
  KEY `IX_B5AE8A85` (`companyId`,`classNameId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `expandotable` */

insert  into `expandotable`(`tableId`,`companyId`,`classNameId`,`name`) values (20505,20155,20002,'OPEN_SOCIAL_DATA_'),(20437,20155,20005,'MP'),(20506,20155,20005,'OPEN_SOCIAL_DATA_');

/*Table structure for table `expandovalue` */

DROP TABLE IF EXISTS `expandovalue`;

CREATE TABLE `expandovalue` (
  `valueId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `tableId` bigint(20) DEFAULT NULL,
  `columnId` bigint(20) DEFAULT NULL,
  `rowId_` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `data_` longtext,
  PRIMARY KEY (`valueId`),
  UNIQUE KEY `IX_9DDD21E5` (`columnId`,`rowId_`),
  UNIQUE KEY `IX_D27B03E7` (`tableId`,`columnId`,`classPK`),
  KEY `IX_B29FEF17` (`classNameId`,`classPK`),
  KEY `IX_F7DD0987` (`columnId`),
  KEY `IX_9112A7A0` (`rowId_`),
  KEY `IX_F0566A77` (`tableId`),
  KEY `IX_1BD3F4C` (`tableId`,`classPK`),
  KEY `IX_CA9AFB7C` (`tableId`,`columnId`),
  KEY `IX_B71E92D5` (`tableId`,`rowId_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `expandovalue` */

/*Table structure for table `group_` */

DROP TABLE IF EXISTS `group_`;

CREATE TABLE `group_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `groupId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `creatorUserId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `parentGroupId` bigint(20) DEFAULT NULL,
  `liveGroupId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(150) DEFAULT NULL,
  `description` longtext,
  `type_` int(11) DEFAULT NULL,
  `typeSettings` longtext,
  `manualMembership` tinyint(4) DEFAULT NULL,
  `membershipRestriction` int(11) DEFAULT NULL,
  `friendlyURL` varchar(255) DEFAULT NULL,
  `site` tinyint(4) DEFAULT NULL,
  `remoteStagingGroupCount` int(11) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`groupId`),
  UNIQUE KEY `IX_D0D5E397` (`companyId`,`classNameId`,`classPK`),
  UNIQUE KEY `IX_5DE0BE11` (`companyId`,`classNameId`,`liveGroupId`,`name`),
  UNIQUE KEY `IX_5BDDB872` (`companyId`,`friendlyURL`),
  UNIQUE KEY `IX_BBCA55B` (`companyId`,`liveGroupId`,`name`),
  UNIQUE KEY `IX_5AA68501` (`companyId`,`name`),
  UNIQUE KEY `IX_754FBB1C` (`uuid_`,`groupId`),
  KEY `IX_ABA5CEC2` (`companyId`),
  KEY `IX_B584B5CC` (`companyId`,`classNameId`),
  KEY `IX_ABE2D54` (`companyId`,`classNameId`,`parentGroupId`),
  KEY `IX_5D75499E` (`companyId`,`parentGroupId`),
  KEY `IX_6C499099` (`companyId`,`parentGroupId`,`site`),
  KEY `IX_63A2AABD` (`companyId`,`site`),
  KEY `IX_16218A38` (`liveGroupId`),
  KEY `IX_7B590A7A` (`type_`,`active_`),
  KEY `IX_F981514E` (`uuid_`),
  KEY `IX_26CC761A` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `group_` */

insert  into `group_`(`uuid_`,`groupId`,`companyId`,`creatorUserId`,`classNameId`,`classPK`,`parentGroupId`,`liveGroupId`,`treePath`,`name`,`description`,`type_`,`typeSettings`,`manualMembership`,`membershipRestriction`,`friendlyURL`,`site`,`remoteStagingGroupCount`,`active_`) values ('d55359b8-cec4-45e2-8e07-49a12de49875',20173,20155,20159,20001,20173,0,0,'/20173/','Control Panel','',3,'',1,0,'/control_panel',0,0,1),('d6197220-4c90-4050-b47f-068fc588fc0a',20182,20155,20159,20001,20182,0,0,'/20182/','Guest','',1,'',1,0,'/guest',1,0,1),('8ec19a23-3d3b-434a-ac09-173ad4793dea',20192,20155,20159,20191,20159,0,0,'/20192/','User Personal Site','',3,'',1,0,'/personal_site',0,0,1),('2fb4c8a5-e610-41dd-921e-f1f42b534fa8',20195,20155,20159,20025,20155,0,0,'/20195/','20155','',0,'',1,0,'/global',1,0,1),('82f158e8-785a-4a35-9b0a-1eb0f2197b36',20201,20155,20199,20005,20199,0,0,'/20201/','20199','',0,'',1,0,'/test',0,0,1),('a82626e3-7d68-474d-96de-47aa90dc0c13',20317,20155,20159,20032,20316,0,0,'/20317/','20316','',0,'',1,0,'/template-20316',0,0,1),('f13c7d6d-84d1-4e62-b87e-f188e6924c5c',20329,20155,20159,20032,20328,0,0,'/20329/','20328','',0,'',1,0,'/template-20328',0,0,1),('77f3c2ca-8183-460a-b00e-6664d02f746b',20339,20155,20159,20032,20338,0,0,'/20339/','20338','',0,'',1,0,'/template-20338',0,0,1),('4af89311-fde3-4ef8-a49c-3c61d4b52435',20350,20155,20159,20036,20349,0,0,'/20350/','20349','',0,'',1,0,'/template-20349',0,0,1),('c62539a5-87d6-4cd3-b425-609c89abde06',20376,20155,20159,20036,20375,0,0,'/20376/','20375','',0,'',1,0,'/template-20375',0,0,1),('26cf7c4e-6390-492a-966a-d648af14714b',20517,20155,20159,20036,20516,0,0,'/20517/','20516','',0,'',1,0,'/template-20516',0,0,1),('3dffbd29-31c2-430c-9156-8467b2b834d8',20557,20155,20199,20001,20557,0,0,'/20557/','UBI','UBI',1,'breadcrumbShowParentGroups=true\ncontentSharingWithChildrenEnabled=-1\nmergeGuestPublicPages=false\ntrashEnabled=true\n',1,0,'/ubi',1,0,1);

/*Table structure for table `groups_orgs` */

DROP TABLE IF EXISTS `groups_orgs`;

CREATE TABLE `groups_orgs` (
  `groupId` bigint(20) NOT NULL,
  `organizationId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`organizationId`),
  KEY `IX_75267DCA` (`groupId`),
  KEY `IX_6BBB7682` (`organizationId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `groups_orgs` */

/*Table structure for table `groups_roles` */

DROP TABLE IF EXISTS `groups_roles`;

CREATE TABLE `groups_roles` (
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`roleId`),
  KEY `IX_84471FD2` (`groupId`),
  KEY `IX_3103EF3D` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `groups_roles` */

/*Table structure for table `groups_usergroups` */

DROP TABLE IF EXISTS `groups_usergroups`;

CREATE TABLE `groups_usergroups` (
  `groupId` bigint(20) NOT NULL,
  `userGroupId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`userGroupId`),
  KEY `IX_31FB749A` (`groupId`),
  KEY `IX_3B69160F` (`userGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `groups_usergroups` */

/*Table structure for table `image` */

DROP TABLE IF EXISTS `image`;

CREATE TABLE `image` (
  `imageId` bigint(20) NOT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `size_` int(11) DEFAULT NULL,
  PRIMARY KEY (`imageId`),
  KEY `IX_6A925A4D` (`size_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `image` */

/*Table structure for table `journalarticle` */

DROP TABLE IF EXISTS `journalarticle`;

CREATE TABLE `journalarticle` (
  `uuid_` varchar(75) DEFAULT NULL,
  `id_` bigint(20) NOT NULL,
  `resourcePrimKey` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `articleId` varchar(75) DEFAULT NULL,
  `version` double DEFAULT NULL,
  `title` longtext,
  `urlTitle` varchar(150) DEFAULT NULL,
  `description` longtext,
  `content` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `structureId` varchar(75) DEFAULT NULL,
  `templateId` varchar(75) DEFAULT NULL,
  `layoutUuid` varchar(75) DEFAULT NULL,
  `displayDate` datetime DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  `reviewDate` datetime DEFAULT NULL,
  `indexable` tinyint(4) DEFAULT NULL,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`),
  UNIQUE KEY `IX_85C52EEC` (`groupId`,`articleId`,`version`),
  UNIQUE KEY `IX_3463D95B` (`uuid_`,`groupId`),
  KEY `IX_FF0E7A72` (`classNameId`,`templateId`),
  KEY `IX_DFF98523` (`companyId`),
  KEY `IX_323DF109` (`companyId`,`status`),
  KEY `IX_3D070845` (`companyId`,`version`),
  KEY `IX_E82F322B` (`companyId`,`version`,`status`),
  KEY `IX_EA05E9E1` (`displayDate`,`status`),
  KEY `IX_9356F865` (`groupId`),
  KEY `IX_68C0F69C` (`groupId`,`articleId`),
  KEY `IX_4D5CD982` (`groupId`,`articleId`,`status`),
  KEY `IX_9CE6E0FA` (`groupId`,`classNameId`,`classPK`),
  KEY `IX_A2534AC2` (`groupId`,`classNameId`,`layoutUuid`),
  KEY `IX_91E78C35` (`groupId`,`classNameId`,`structureId`),
  KEY `IX_F43B9FF2` (`groupId`,`classNameId`,`templateId`),
  KEY `IX_5CD17502` (`groupId`,`folderId`),
  KEY `IX_F35391E8` (`groupId`,`folderId`,`status`),
  KEY `IX_3C028C1E` (`groupId`,`layoutUuid`),
  KEY `IX_301D024B` (`groupId`,`status`),
  KEY `IX_2E207659` (`groupId`,`structureId`),
  KEY `IX_8DEAE14E` (`groupId`,`templateId`),
  KEY `IX_22882D02` (`groupId`,`urlTitle`),
  KEY `IX_D2D249E8` (`groupId`,`urlTitle`,`status`),
  KEY `IX_D19C1B9F` (`groupId`,`userId`),
  KEY `IX_43A0F80F` (`groupId`,`userId`,`classNameId`),
  KEY `IX_3F1EA19E` (`layoutUuid`),
  KEY `IX_33F49D16` (`resourcePrimKey`),
  KEY `IX_89FF8B06` (`resourcePrimKey`,`indexable`),
  KEY `IX_451D63EC` (`resourcePrimKey`,`indexable`,`status`),
  KEY `IX_3E2765FC` (`resourcePrimKey`,`status`),
  KEY `IX_EF9B7028` (`smallImageId`),
  KEY `IX_8E8710D9` (`structureId`),
  KEY `IX_9106F6CE` (`templateId`),
  KEY `IX_F029602F` (`uuid_`),
  KEY `IX_71520099` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `journalarticle` */

/*Table structure for table `journalarticleimage` */

DROP TABLE IF EXISTS `journalarticleimage`;

CREATE TABLE `journalarticleimage` (
  `articleImageId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL,
  `version` double DEFAULT NULL,
  `elInstanceId` varchar(75) DEFAULT NULL,
  `elName` varchar(75) DEFAULT NULL,
  `languageId` varchar(75) DEFAULT NULL,
  `tempImage` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`articleImageId`),
  UNIQUE KEY `IX_103D6207` (`groupId`,`articleId`,`version`,`elInstanceId`,`elName`,`languageId`),
  KEY `IX_3B51BB68` (`groupId`),
  KEY `IX_158B526F` (`groupId`,`articleId`,`version`),
  KEY `IX_D4121315` (`tempImage`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `journalarticleimage` */

/*Table structure for table `journalarticleresource` */

DROP TABLE IF EXISTS `journalarticleresource`;

CREATE TABLE `journalarticleresource` (
  `uuid_` varchar(75) DEFAULT NULL,
  `resourcePrimKey` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`resourcePrimKey`),
  UNIQUE KEY `IX_88DF994A` (`groupId`,`articleId`),
  UNIQUE KEY `IX_84AB0309` (`uuid_`,`groupId`),
  KEY `IX_F8433677` (`groupId`),
  KEY `IX_DCD1FAC1` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `journalarticleresource` */

/*Table structure for table `journalcontentsearch` */

DROP TABLE IF EXISTS `journalcontentsearch`;

CREATE TABLE `journalcontentsearch` (
  `contentSearchId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `layoutId` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`contentSearchId`),
  UNIQUE KEY `IX_C3AA93B8` (`groupId`,`privateLayout`,`layoutId`,`portletId`,`articleId`),
  KEY `IX_9207CB31` (`articleId`),
  KEY `IX_6838E427` (`groupId`,`articleId`),
  KEY `IX_20962903` (`groupId`,`privateLayout`),
  KEY `IX_7CC7D73E` (`groupId`,`privateLayout`,`articleId`),
  KEY `IX_B3B318DC` (`groupId`,`privateLayout`,`layoutId`),
  KEY `IX_7ACC74C9` (`groupId`,`privateLayout`,`layoutId`,`portletId`),
  KEY `IX_8DAF8A35` (`portletId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `journalcontentsearch` */

/*Table structure for table `journalfeed` */

DROP TABLE IF EXISTS `journalfeed`;

CREATE TABLE `journalfeed` (
  `uuid_` varchar(75) DEFAULT NULL,
  `id_` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `feedId` varchar(75) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `structureId` varchar(75) DEFAULT NULL,
  `templateId` varchar(75) DEFAULT NULL,
  `rendererTemplateId` varchar(75) DEFAULT NULL,
  `delta` int(11) DEFAULT NULL,
  `orderByCol` varchar(75) DEFAULT NULL,
  `orderByType` varchar(75) DEFAULT NULL,
  `targetLayoutFriendlyUrl` varchar(255) DEFAULT NULL,
  `targetPortletId` varchar(75) DEFAULT NULL,
  `contentField` varchar(75) DEFAULT NULL,
  `feedFormat` varchar(75) DEFAULT NULL,
  `feedVersion` double DEFAULT NULL,
  PRIMARY KEY (`id_`),
  UNIQUE KEY `IX_65576CBC` (`groupId`,`feedId`),
  UNIQUE KEY `IX_39031F51` (`uuid_`,`groupId`),
  KEY `IX_35A2DB2F` (`groupId`),
  KEY `IX_50C36D79` (`uuid_`),
  KEY `IX_CB37A10F` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `journalfeed` */

/*Table structure for table `journalfolder` */

DROP TABLE IF EXISTS `journalfolder`;

CREATE TABLE `journalfolder` (
  `uuid_` varchar(75) DEFAULT NULL,
  `folderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(100) DEFAULT NULL,
  `description` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`folderId`),
  UNIQUE KEY `IX_65026705` (`groupId`,`parentFolderId`,`name`),
  UNIQUE KEY `IX_E002061` (`uuid_`,`groupId`),
  KEY `IX_E6E2725D` (`companyId`),
  KEY `IX_C36B0443` (`companyId`,`status`),
  KEY `IX_742DEC1F` (`groupId`),
  KEY `IX_E988689E` (`groupId`,`name`),
  KEY `IX_190483C6` (`groupId`,`parentFolderId`),
  KEY `IX_EFD9CAC` (`groupId`,`parentFolderId`,`status`),
  KEY `IX_63BDFA69` (`uuid_`),
  KEY `IX_54F89E1F` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `journalfolder` */

/*Table structure for table `kaleoaction` */

DROP TABLE IF EXISTS `kaleoaction`;

CREATE TABLE `kaleoaction` (
  `kaleoActionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeName` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `executionType` varchar(20) DEFAULT NULL,
  `script` longtext,
  `scriptLanguage` varchar(75) DEFAULT NULL,
  `scriptRequiredContexts` longtext,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`kaleoActionId`),
  KEY `IX_50E9112C` (`companyId`),
  KEY `IX_170EFD7A` (`kaleoClassName`,`kaleoClassPK`),
  KEY `IX_4B2545E8` (`kaleoClassName`,`kaleoClassPK`,`executionType`),
  KEY `IX_F95A622` (`kaleoDefinitionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kaleoaction` */

insert  into `kaleoaction`(`kaleoActionId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`kaleoClassName`,`kaleoClassPK`,`kaleoDefinitionId`,`kaleoNodeName`,`name`,`description`,`executionType`,`script`,`scriptLanguage`,`scriptRequiredContexts`,`priority`) values (20466,0,20155,20159,'','2017-12-12 12:13:47','2017-12-12 12:13:47','com.liferay.portal.workflow.kaleo.model.KaleoNode',20465,20464,'approved','approve','','onEntry','\n					\n						import com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil;\n						import com.liferay.portal.kernel.workflow.WorkflowConstants;\n\n						WorkflowStatusManagerUtil.updateStatus(WorkflowConstants.toStatus(\"approved\"), workflowContext);\n					\n				','groovy','',0),(20485,0,20155,20159,'','2017-12-12 12:13:48','2017-12-12 12:13:48','com.liferay.portal.workflow.kaleo.model.KaleoNode',20484,20464,'update','reject','','onAssignment','\n					\n						Packages.com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil.updateStatus(Packages.com.liferay.portal.kernel.workflow.WorkflowConstants.toStatus(\"denied\"), workflowContext);\n						Packages.com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil.updateStatus(Packages.com.liferay.portal.kernel.workflow.WorkflowConstants.toStatus(\"pending\"), workflowContext);\n					\n				','javascript','',0);

/*Table structure for table `kaleocondition` */

DROP TABLE IF EXISTS `kaleocondition`;

CREATE TABLE `kaleocondition` (
  `kaleoConditionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeId` bigint(20) DEFAULT NULL,
  `script` longtext,
  `scriptLanguage` varchar(75) DEFAULT NULL,
  `scriptRequiredContexts` longtext,
  PRIMARY KEY (`kaleoConditionId`),
  KEY `IX_FEE46067` (`companyId`),
  KEY `IX_DC978A5D` (`kaleoDefinitionId`),
  KEY `IX_86CBD4C` (`kaleoNodeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kaleocondition` */

/*Table structure for table `kaleodefinition` */

DROP TABLE IF EXISTS `kaleodefinition`;

CREATE TABLE `kaleodefinition` (
  `kaleoDefinitionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `content` longtext,
  `version` int(11) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  `startKaleoNodeId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`kaleoDefinitionId`),
  KEY `IX_40B9112F` (`companyId`),
  KEY `IX_408542BA` (`companyId`,`active_`),
  KEY `IX_76C781AE` (`companyId`,`name`),
  KEY `IX_4C23F11B` (`companyId`,`name`,`active_`),
  KEY `IX_EC14F81A` (`companyId`,`name`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kaleodefinition` */

insert  into `kaleodefinition`(`kaleoDefinitionId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`name`,`title`,`description`,`content`,`version`,`active_`,`startKaleoNodeId`) values (20464,0,20155,20159,'','2017-12-12 12:13:47','2017-12-12 12:13:48','Single Approver','Single Approver','A single approver can approve a workflow content.','<?xml version=\"1.0\"?>\n\n<workflow-definition xmlns=\"urn:liferay.com:liferay-workflow_6.2.0\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"urn:liferay.com:liferay-workflow_6.2.0 http://www.liferay.com/dtd/liferay-workflow-definition_6_2_0.xsd\">\n	<name>Single Approver</name>\n	<description>A single approver can approve a workflow content.</description>\n	<version>1</version>\n	<state>\n		<name>created</name>\n		<metadata> <![CDATA[{\"xy\":[36,51]}]]> </metadata>\n		<initial>true</initial>\n		<transitions>\n			<transition>\n				<name>review</name>\n				<target>review</target>\n			</transition>\n		</transitions>\n	</state>\n	<task>\n		<name>update</name>\n		<metadata> <![CDATA[{\"transitions\":{\"resubmit\":{\"bendpoints\":[[303,140]]}},\"xy\":[328,199]}]]> </metadata>\n		<actions>\n			<action>\n				<name>reject</name>\n				<script> <![CDATA[\n						Packages.com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil.updateStatus(Packages.com.liferay.portal.kernel.workflow.WorkflowConstants.toStatus(\"denied\"), workflowContext);\n						Packages.com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil.updateStatus(Packages.com.liferay.portal.kernel.workflow.WorkflowConstants.toStatus(\"pending\"), workflowContext);\n					]]> </script>\n				<script-language>javascript</script-language>\n				<execution-type>onAssignment</execution-type>\n			</action>\n			<notification>\n				<name>Creator Modification Notification</name>\n				<template>Your submission was rejected by ${userName}, please modify and resubmit.</template>\n				<template-language>freemarker</template-language>\n				<notification-type>email</notification-type>\n				<notification-type>user-notification</notification-type>\n				<execution-type>onAssignment</execution-type>\n			</notification>\n		</actions>\n		<assignments>\n			<user/>\n		</assignments>\n		<transitions>\n			<transition>\n				<name>resubmit</name>\n				<target>review</target>\n			</transition>\n		</transitions>\n	</task>\n	<task>\n		<name>review</name>\n		<metadata> <![CDATA[{\"xy\":[168,36]}]]> </metadata>\n		<actions>\n			<notification>\n				<name>Review Notification</name>\n				<template>${userName} sent you a ${entryType} for review in the workflow.</template>\n				<template-language>freemarker</template-language>\n				<notification-type>email</notification-type>\n				<notification-type>user-notification</notification-type>\n				<execution-type>onAssignment</execution-type>\n			</notification>\n			<notification>\n				<name>Review Completion Notification</name>\n				<template>Your submission has been reviewed and the reviewer has applied the following ${taskComments}.</template>\n				<template-language>freemarker</template-language>\n				<notification-type>email</notification-type>\n				<recipients>\n					<user/>\n				</recipients>\n				<execution-type>onExit</execution-type>\n			</notification>\n		</actions>\n		<assignments>\n			<roles>\n				<role>\n					<role-type>organization</role-type>\n					<name>Organization Administrator</name>\n				</role>\n				<role>\n					<role-type>organization</role-type>\n					<name>Organization Content Reviewer</name>\n				</role>\n				<role>\n					<role-type>organization</role-type>\n					<name>Organization Owner</name>\n				</role>\n				<role>\n					<role-type>regular</role-type>\n					<name>Administrator</name>\n				</role>\n				<role>\n					<role-type>regular</role-type>\n					<name>Portal Content Reviewer</name>\n				</role>\n				<role>\n					<role-type>site</role-type>\n					<name>Site Administrator</name>\n				</role>\n				<role>\n					<role-type>site</role-type>\n					<name>Site Content Reviewer</name>\n				</role>\n				<role>\n					<role-type>site</role-type>\n					<name>Site Owner</name>\n				</role>\n			</roles>\n		</assignments>\n		<transitions>\n			<transition>\n				<name>approve</name>\n				<target>approved</target>\n			</transition>\n			<transition>\n				<name>reject</name>\n				<target>update</target>\n				<default>false</default>\n			</transition>\n		</transitions>\n	</task>\n	<state>\n		<name>approved</name>\n		<metadata> <![CDATA[\n				{\"xy\":[380,51]}\n			]]> </metadata>\n		<actions>\n			<action>\n				<name>approve</name>\n				<script> <![CDATA[\n						import com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil;\n						import com.liferay.portal.kernel.workflow.WorkflowConstants;\n\n						WorkflowStatusManagerUtil.updateStatus(WorkflowConstants.toStatus(\"approved\"), workflowContext);\n					]]> </script>\n				<script-language>groovy</script-language>\n				<execution-type>onEntry</execution-type>\n			</action>\n		</actions>\n	</state>\n</workflow-definition>',1,1,20467);

/*Table structure for table `kaleoinstance` */

DROP TABLE IF EXISTS `kaleoinstance`;

CREATE TABLE `kaleoinstance` (
  `kaleoInstanceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoDefinitionName` varchar(200) DEFAULT NULL,
  `kaleoDefinitionVersion` int(11) DEFAULT NULL,
  `rootKaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `className` varchar(200) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  `workflowContext` longtext,
  PRIMARY KEY (`kaleoInstanceId`),
  KEY `IX_58D85ECB` (`className`,`classPK`),
  KEY `IX_5F2FCD2D` (`companyId`),
  KEY `IX_BF5839F8` (`companyId`,`kaleoDefinitionName`,`kaleoDefinitionVersion`,`completionDate`),
  KEY `IX_C6D7A867` (`companyId`,`userId`),
  KEY `IX_4DA4D123` (`kaleoDefinitionId`),
  KEY `IX_ACF16238` (`kaleoDefinitionId`,`completed`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kaleoinstance` */

/*Table structure for table `kaleoinstancetoken` */

DROP TABLE IF EXISTS `kaleoinstancetoken`;

CREATE TABLE `kaleoinstancetoken` (
  `kaleoInstanceTokenId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoInstanceId` bigint(20) DEFAULT NULL,
  `parentKaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `currentKaleoNodeId` bigint(20) DEFAULT NULL,
  `currentKaleoNodeName` varchar(200) DEFAULT NULL,
  `className` varchar(200) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  PRIMARY KEY (`kaleoInstanceTokenId`),
  KEY `IX_153721BE` (`companyId`),
  KEY `IX_4A86923B` (`companyId`,`parentKaleoInstanceTokenId`),
  KEY `IX_360D34D9` (`companyId`,`parentKaleoInstanceTokenId`,`completionDate`),
  KEY `IX_7BDB04B4` (`kaleoDefinitionId`),
  KEY `IX_F42AAFF6` (`kaleoInstanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kaleoinstancetoken` */

/*Table structure for table `kaleolog` */

DROP TABLE IF EXISTS `kaleolog`;

CREATE TABLE `kaleolog` (
  `kaleoLogId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoInstanceId` bigint(20) DEFAULT NULL,
  `kaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTaskInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoNodeName` varchar(200) DEFAULT NULL,
  `terminalKaleoNode` tinyint(4) DEFAULT NULL,
  `kaleoActionId` bigint(20) DEFAULT NULL,
  `kaleoActionName` varchar(200) DEFAULT NULL,
  `kaleoActionDescription` longtext,
  `previousKaleoNodeId` bigint(20) DEFAULT NULL,
  `previousKaleoNodeName` varchar(200) DEFAULT NULL,
  `previousAssigneeClassName` varchar(200) DEFAULT NULL,
  `previousAssigneeClassPK` bigint(20) DEFAULT NULL,
  `currentAssigneeClassName` varchar(200) DEFAULT NULL,
  `currentAssigneeClassPK` bigint(20) DEFAULT NULL,
  `type_` varchar(50) DEFAULT NULL,
  `comment_` longtext,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `duration` bigint(20) DEFAULT NULL,
  `workflowContext` longtext,
  PRIMARY KEY (`kaleoLogId`),
  KEY `IX_73B5F4DE` (`companyId`),
  KEY `IX_E66A153A` (`kaleoClassName`,`kaleoClassPK`,`kaleoInstanceTokenId`,`type_`),
  KEY `IX_6C64B7D4` (`kaleoDefinitionId`),
  KEY `IX_5BC6AB16` (`kaleoInstanceId`),
  KEY `IX_470B9FF8` (`kaleoInstanceTokenId`,`type_`),
  KEY `IX_B0CDCA38` (`kaleoTaskInstanceTokenId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kaleolog` */

/*Table structure for table `kaleonode` */

DROP TABLE IF EXISTS `kaleonode`;

CREATE TABLE `kaleonode` (
  `kaleoNodeId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `metadata` longtext,
  `description` longtext,
  `type_` varchar(20) DEFAULT NULL,
  `initial_` tinyint(4) DEFAULT NULL,
  `terminal` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`kaleoNodeId`),
  KEY `IX_C4E9ACE0` (`companyId`),
  KEY `IX_F28C443E` (`companyId`,`kaleoDefinitionId`),
  KEY `IX_32E94DD6` (`kaleoDefinitionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kaleonode` */

insert  into `kaleonode`(`kaleoNodeId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`kaleoDefinitionId`,`name`,`metadata`,`description`,`type_`,`initial_`,`terminal`) values (20465,0,20155,20159,'','2017-12-12 12:13:47','2017-12-12 12:13:47',20464,'approved','\n			\n				{\"xy\":[380,51]}\n			\n		','','STATE',0,1),(20467,0,20155,20159,'','2017-12-12 12:13:47','2017-12-12 12:13:47',20464,'created','\n			{\"xy\":[36,51]}\n		','','STATE',1,0),(20468,0,20155,20159,'','2017-12-12 12:13:47','2017-12-12 12:13:47',20464,'review','\n			{\"xy\":[168,36]}\n		','','TASK',0,0),(20484,0,20155,20159,'','2017-12-12 12:13:48','2017-12-12 12:13:48',20464,'update','\n			{\"transitions\":{\"resubmit\":{\"bendpoints\":[[303,140]]}},\"xy\":[328,199]}\n		','','TASK',0,0);

/*Table structure for table `kaleonotification` */

DROP TABLE IF EXISTS `kaleonotification`;

CREATE TABLE `kaleonotification` (
  `kaleoNotificationId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeName` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `executionType` varchar(20) DEFAULT NULL,
  `template` longtext,
  `templateLanguage` varchar(75) DEFAULT NULL,
  `notificationTypes` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`kaleoNotificationId`),
  KEY `IX_38829497` (`companyId`),
  KEY `IX_902D342F` (`kaleoClassName`,`kaleoClassPK`),
  KEY `IX_F3362E93` (`kaleoClassName`,`kaleoClassPK`,`executionType`),
  KEY `IX_4B968E8D` (`kaleoDefinitionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kaleonotification` */

insert  into `kaleonotification`(`kaleoNotificationId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`kaleoClassName`,`kaleoClassPK`,`kaleoDefinitionId`,`kaleoNodeName`,`name`,`description`,`executionType`,`template`,`templateLanguage`,`notificationTypes`) values (20469,0,20155,20159,'','2017-12-12 12:13:47','2017-12-12 12:13:47','com.liferay.portal.workflow.kaleo.model.KaleoNode',20468,20464,'review','Review Notification','','onAssignment','${userName} sent you a ${entryType} for review in the workflow.','freemarker','user-notification,email'),(20470,0,20155,20159,'','2017-12-12 12:13:47','2017-12-12 12:13:47','com.liferay.portal.workflow.kaleo.model.KaleoNode',20468,20464,'review','Review Completion Notification','','onExit','\n					Your submission has been reviewed and the reviewer has applied the following ${taskComments}.','freemarker','email'),(20486,0,20155,20159,'','2017-12-12 12:13:48','2017-12-12 12:13:48','com.liferay.portal.workflow.kaleo.model.KaleoNode',20484,20464,'update','Creator Modification Notification','','onAssignment','Your submission was rejected by ${userName}, please modify and resubmit.','freemarker','user-notification,email');

/*Table structure for table `kaleonotificationrecipient` */

DROP TABLE IF EXISTS `kaleonotificationrecipient`;

CREATE TABLE `kaleonotificationrecipient` (
  `kaleoNotificationRecipientId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNotificationId` bigint(20) DEFAULT NULL,
  `recipientClassName` varchar(200) DEFAULT NULL,
  `recipientClassPK` bigint(20) DEFAULT NULL,
  `recipientRoleType` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`kaleoNotificationRecipientId`),
  KEY `IX_2C8C4AF4` (`companyId`),
  KEY `IX_AA6697EA` (`kaleoDefinitionId`),
  KEY `IX_7F4FED02` (`kaleoNotificationId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kaleonotificationrecipient` */

insert  into `kaleonotificationrecipient`(`kaleoNotificationRecipientId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`kaleoDefinitionId`,`kaleoNotificationId`,`recipientClassName`,`recipientClassPK`,`recipientRoleType`,`address`) values (20471,0,20155,20159,'','2017-12-12 12:13:47','2017-12-12 12:13:47',20464,20470,'com.liferay.portal.model.User',0,0,'');

/*Table structure for table `kaleotask` */

DROP TABLE IF EXISTS `kaleotask`;

CREATE TABLE `kaleotask` (
  `kaleoTaskId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeId` bigint(20) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`kaleoTaskId`),
  KEY `IX_E1F8B23D` (`companyId`),
  KEY `IX_3FFA633` (`kaleoDefinitionId`),
  KEY `IX_77B3F1A2` (`kaleoNodeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kaleotask` */

insert  into `kaleotask`(`kaleoTaskId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`kaleoDefinitionId`,`kaleoNodeId`,`name`,`description`) values (20472,0,20155,20159,'','2017-12-12 12:13:47','2017-12-12 12:13:47',20464,20468,'review',''),(20487,0,20155,20159,'','2017-12-12 12:13:48','2017-12-12 12:13:48',20464,20484,'update','');

/*Table structure for table `kaleotaskassignment` */

DROP TABLE IF EXISTS `kaleotaskassignment`;

CREATE TABLE `kaleotaskassignment` (
  `kaleoTaskAssignmentId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeId` bigint(20) DEFAULT NULL,
  `assigneeClassName` varchar(200) DEFAULT NULL,
  `assigneeClassPK` bigint(20) DEFAULT NULL,
  `assigneeActionId` varchar(75) DEFAULT NULL,
  `assigneeScript` longtext,
  `assigneeScriptLanguage` varchar(75) DEFAULT NULL,
  `assigneeScriptRequiredContexts` longtext,
  PRIMARY KEY (`kaleoTaskAssignmentId`),
  KEY `IX_611732B0` (`companyId`),
  KEY `IX_D835C576` (`kaleoClassName`,`kaleoClassPK`),
  KEY `IX_1087068E` (`kaleoClassName`,`kaleoClassPK`,`assigneeClassName`),
  KEY `IX_575C03A6` (`kaleoDefinitionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kaleotaskassignment` */

insert  into `kaleotaskassignment`(`kaleoTaskAssignmentId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`kaleoClassName`,`kaleoClassPK`,`kaleoDefinitionId`,`kaleoNodeId`,`assigneeClassName`,`assigneeClassPK`,`assigneeActionId`,`assigneeScript`,`assigneeScriptLanguage`,`assigneeScriptRequiredContexts`) values (20473,0,20155,20159,'','2017-12-12 12:13:47','2017-12-12 12:13:47','com.liferay.portal.workflow.kaleo.model.KaleoTask',20472,20464,0,'com.liferay.portal.model.Role',20474,'','','',''),(20475,0,20155,20159,'','2017-12-12 12:13:47','2017-12-12 12:13:47','com.liferay.portal.workflow.kaleo.model.KaleoTask',20472,20464,0,'com.liferay.portal.model.Role',20162,'','','',''),(20476,0,20155,20159,'','2017-12-12 12:13:47','2017-12-12 12:13:47','com.liferay.portal.workflow.kaleo.model.KaleoTask',20472,20464,0,'com.liferay.portal.model.Role',20167,'','','',''),(20477,0,20155,20159,'','2017-12-12 12:13:47','2017-12-12 12:13:47','com.liferay.portal.workflow.kaleo.model.KaleoTask',20472,20464,0,'com.liferay.portal.model.Role',20168,'','','',''),(20478,0,20155,20159,'','2017-12-12 12:13:47','2017-12-12 12:13:47','com.liferay.portal.workflow.kaleo.model.KaleoTask',20472,20464,0,'com.liferay.portal.model.Role',20170,'','','',''),(20479,0,20155,20159,'','2017-12-12 12:13:47','2017-12-12 12:13:47','com.liferay.portal.workflow.kaleo.model.KaleoTask',20472,20464,0,'com.liferay.portal.model.Role',20480,'','','',''),(20481,0,20155,20159,'','2017-12-12 12:13:47','2017-12-12 12:13:47','com.liferay.portal.workflow.kaleo.model.KaleoTask',20472,20464,0,'com.liferay.portal.model.Role',20172,'','','',''),(20482,0,20155,20159,'','2017-12-12 12:13:47','2017-12-12 12:13:47','com.liferay.portal.workflow.kaleo.model.KaleoTask',20472,20464,0,'com.liferay.portal.model.Role',20483,'','','',''),(20488,0,20155,20159,'','2017-12-12 12:13:48','2017-12-12 12:13:48','com.liferay.portal.workflow.kaleo.model.KaleoTask',20487,20464,0,'com.liferay.portal.model.User',0,'','','','');

/*Table structure for table `kaleotaskassignmentinstance` */

DROP TABLE IF EXISTS `kaleotaskassignmentinstance`;

CREATE TABLE `kaleotaskassignmentinstance` (
  `kaleoTaskAssignmentInstanceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoInstanceId` bigint(20) DEFAULT NULL,
  `kaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTaskInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTaskId` bigint(20) DEFAULT NULL,
  `kaleoTaskName` varchar(200) DEFAULT NULL,
  `assigneeClassName` varchar(200) DEFAULT NULL,
  `assigneeClassPK` bigint(20) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  PRIMARY KEY (`kaleoTaskAssignmentInstanceId`),
  KEY `IX_945F4EB7` (`assigneeClassName`),
  KEY `IX_3BD436FD` (`assigneeClassName`,`assigneeClassPK`),
  KEY `IX_6E3CDA1B` (`companyId`),
  KEY `IX_38A47B17` (`groupId`,`assigneeClassPK`),
  KEY `IX_C851011` (`kaleoDefinitionId`),
  KEY `IX_67A9EE93` (`kaleoInstanceId`),
  KEY `IX_D4C2235B` (`kaleoTaskInstanceTokenId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kaleotaskassignmentinstance` */

/*Table structure for table `kaleotaskinstancetoken` */

DROP TABLE IF EXISTS `kaleotaskinstancetoken`;

CREATE TABLE `kaleotaskinstancetoken` (
  `kaleoTaskInstanceTokenId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoInstanceId` bigint(20) DEFAULT NULL,
  `kaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTaskId` bigint(20) DEFAULT NULL,
  `kaleoTaskName` varchar(200) DEFAULT NULL,
  `className` varchar(200) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `completionUserId` bigint(20) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  `dueDate` datetime DEFAULT NULL,
  `workflowContext` longtext,
  PRIMARY KEY (`kaleoTaskInstanceTokenId`),
  KEY `IX_A3271995` (`className`,`classPK`),
  KEY `IX_997FE723` (`companyId`),
  KEY `IX_608E9519` (`kaleoDefinitionId`),
  KEY `IX_2CE1159B` (`kaleoInstanceId`),
  KEY `IX_B857A115` (`kaleoInstanceId`,`kaleoTaskId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kaleotaskinstancetoken` */

/*Table structure for table `kaleotimer` */

DROP TABLE IF EXISTS `kaleotimer`;

CREATE TABLE `kaleotimer` (
  `kaleoTimerId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `blocking` tinyint(4) DEFAULT NULL,
  `description` longtext,
  `duration` double DEFAULT NULL,
  `scale` varchar(75) DEFAULT NULL,
  `recurrenceDuration` double DEFAULT NULL,
  `recurrenceScale` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`kaleoTimerId`),
  KEY `IX_4DE6A889` (`kaleoClassName`,`kaleoClassPK`),
  KEY `IX_1A479F32` (`kaleoClassName`,`kaleoClassPK`,`blocking`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kaleotimer` */

/*Table structure for table `kaleotimerinstancetoken` */

DROP TABLE IF EXISTS `kaleotimerinstancetoken`;

CREATE TABLE `kaleotimerinstancetoken` (
  `kaleoTimerInstanceTokenId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoInstanceId` bigint(20) DEFAULT NULL,
  `kaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTaskInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTimerId` bigint(20) DEFAULT NULL,
  `kaleoTimerName` varchar(200) DEFAULT NULL,
  `blocking` tinyint(4) DEFAULT NULL,
  `completionUserId` bigint(20) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  `workflowContext` longtext,
  PRIMARY KEY (`kaleoTimerInstanceTokenId`),
  KEY `IX_DB96C55B` (`kaleoInstanceId`),
  KEY `IX_DB279423` (`kaleoInstanceTokenId`,`completed`),
  KEY `IX_9932524C` (`kaleoInstanceTokenId`,`completed`,`blocking`),
  KEY `IX_13A5BA2C` (`kaleoInstanceTokenId`,`kaleoTimerId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kaleotimerinstancetoken` */

/*Table structure for table `kaleotransition` */

DROP TABLE IF EXISTS `kaleotransition`;

CREATE TABLE `kaleotransition` (
  `kaleoTransitionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeId` bigint(20) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `sourceKaleoNodeId` bigint(20) DEFAULT NULL,
  `sourceKaleoNodeName` varchar(200) DEFAULT NULL,
  `targetKaleoNodeId` bigint(20) DEFAULT NULL,
  `targetKaleoNodeName` varchar(200) DEFAULT NULL,
  `defaultTransition` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`kaleoTransitionId`),
  KEY `IX_41D6C6D` (`companyId`),
  KEY `IX_479F3063` (`kaleoDefinitionId`),
  KEY `IX_A392DFD2` (`kaleoNodeId`),
  KEY `IX_A38E2194` (`kaleoNodeId`,`defaultTransition`),
  KEY `IX_85268A11` (`kaleoNodeId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kaleotransition` */

insert  into `kaleotransition`(`kaleoTransitionId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`kaleoDefinitionId`,`kaleoNodeId`,`name`,`description`,`sourceKaleoNodeId`,`sourceKaleoNodeName`,`targetKaleoNodeId`,`targetKaleoNodeName`,`defaultTransition`) values (20489,0,20155,20159,'','2017-12-12 12:13:48','2017-12-12 12:13:48',20464,20467,'review','',20467,'created',20468,'review',1),(20490,0,20155,20159,'','2017-12-12 12:13:48','2017-12-12 12:13:48',20464,20468,'approve','',20468,'review',20465,'approved',1),(20491,0,20155,20159,'','2017-12-12 12:13:48','2017-12-12 12:13:48',20464,20468,'reject','',20468,'review',20484,'update',0),(20492,0,20155,20159,'','2017-12-12 12:13:48','2017-12-12 12:13:48',20464,20484,'resubmit','',20484,'update',20468,'review',1);

/*Table structure for table `layout` */

DROP TABLE IF EXISTS `layout`;

CREATE TABLE `layout` (
  `uuid_` varchar(75) DEFAULT NULL,
  `plid` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `layoutId` bigint(20) DEFAULT NULL,
  `parentLayoutId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `title` longtext,
  `description` longtext,
  `keywords` longtext,
  `robots` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `typeSettings` longtext,
  `hidden_` tinyint(4) DEFAULT NULL,
  `friendlyURL` varchar(255) DEFAULT NULL,
  `iconImage` tinyint(4) DEFAULT NULL,
  `iconImageId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `priority` int(11) DEFAULT NULL,
  `layoutPrototypeUuid` varchar(75) DEFAULT NULL,
  `layoutPrototypeLinkEnabled` tinyint(4) DEFAULT NULL,
  `sourcePrototypeLayoutUuid` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`plid`),
  UNIQUE KEY `IX_BC2C4231` (`groupId`,`privateLayout`,`friendlyURL`),
  UNIQUE KEY `IX_7162C27C` (`groupId`,`privateLayout`,`layoutId`),
  UNIQUE KEY `IX_E118C537` (`uuid_`,`groupId`,`privateLayout`),
  KEY `IX_C7FBC998` (`companyId`),
  KEY `IX_C099D61A` (`groupId`),
  KEY `IX_705F5AA3` (`groupId`,`privateLayout`),
  KEY `IX_6DE88B06` (`groupId`,`privateLayout`,`parentLayoutId`),
  KEY `IX_8CE8C0D9` (`groupId`,`privateLayout`,`sourcePrototypeLayoutUuid`),
  KEY `IX_1A1B61D2` (`groupId`,`privateLayout`,`type_`),
  KEY `IX_23922F7D` (`iconImageId`),
  KEY `IX_B529BFD3` (`layoutPrototypeUuid`),
  KEY `IX_39A18ECC` (`sourcePrototypeLayoutUuid`),
  KEY `IX_D0822724` (`uuid_`),
  KEY `IX_2CE4BE84` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `layout` */

insert  into `layout`(`uuid_`,`plid`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`privateLayout`,`layoutId`,`parentLayoutId`,`name`,`title`,`description`,`keywords`,`robots`,`type_`,`typeSettings`,`hidden_`,`friendlyURL`,`iconImage`,`iconImageId`,`themeId`,`colorSchemeId`,`wapThemeId`,`wapColorSchemeId`,`css`,`priority`,`layoutPrototypeUuid`,`layoutPrototypeLinkEnabled`,`sourcePrototypeLayoutUuid`) values ('d6e0321d-c79c-4e67-a5ba-2c1de7384eef',20176,20173,20155,20159,'','2017-12-12 12:11:49','2017-12-12 12:11:49',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Control Panel</Name></root>','','','','','control_panel','privateLayout=true\n',0,'/manage',0,0,'','','','','',0,'',0,''),('d46d6358-3bb6-4778-b73a-b6e6df13abce',20185,20182,20155,20159,'','2017-12-12 12:11:50','2017-12-12 12:11:50',0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','','','','','portlet','column-1=58,\ncolumn-2=47,\nlayout-template-id=2_columns_ii\n',0,'/home',0,0,'','','','','',0,'',0,''),('f78f8240-4de3-4e85-aed2-2c6aade65f67',20320,20317,20155,20159,'','2017-12-12 12:11:57','2017-12-12 12:11:58',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Blog</Name></root>','','','','','portlet','column-1=33,\ncolumn-2=148_INSTANCE_jsmy6xcE4g7n,114,\nlayout-template-id=2_columns_iii\nprivateLayout=true\n',0,'/layout',0,0,'','','','','',0,'',0,''),('b91cf2b2-86b5-4d47-9978-02570be97610',20332,20329,20155,20159,'','2017-12-12 12:11:58','2017-12-12 12:11:59',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Content Display Page</Name></root>','','','','','portlet','column-1=141_INSTANCE_m0mZr1LoWC6w,122_INSTANCE_7wQ0Gize8hBT,\ncolumn-2=3,101_INSTANCE_dgyl1iNc0nCK,\ndefault-asset-publisher-portlet-id=101_INSTANCE_dgyl1iNc0nCK\nlayout-template-id=2_columns_ii\nprivateLayout=true\n',0,'/layout',0,0,'','','','','',0,'',0,''),('7b46454a-e7dc-4cfb-a722-4164014a5092',20342,20339,20155,20159,'','2017-12-12 12:11:59','2017-12-12 12:12:00',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','','','','','portlet','column-1=36,\ncolumn-2=122_INSTANCE_qo1uI77P4wdp,141_INSTANCE_KU5RbEzZ3khF,\nlayout-template-id=2_columns_iii\nprivateLayout=true\n',0,'/layout',0,0,'','','','','',0,'',0,''),('0a8a42c6-b82f-48eb-b1f3-c18024e2bb82',20361,20350,20155,20159,'','2017-12-12 12:12:01','2017-12-12 12:12:03',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Home</Name></root>','','','','','portlet','column-1=19,\ncolumn-2=3,59_INSTANCE_grjhULKdQRW2,180,101_INSTANCE_6uN7sjyWWJmP,\nlayout-template-id=2_columns_iii\nprivateLayout=true\n',0,'/home',0,0,'','','','','',0,'',0,''),('43d81fe2-974e-4e18-aca6-a6c7e41df36a',20369,20350,20155,20159,'','2017-12-12 12:12:03','2017-12-12 12:12:04',1,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','','','','','portlet','column-1=36,\ncolumn-2=122_INSTANCE_CmxaXFxhOkY3,148_INSTANCE_1PH22hgNRNxF,\nlayout-template-id=2_columns_iii\nprivateLayout=true\n',0,'/wiki',0,0,'','','','','',1,'',0,''),('3a9ac928-3521-4fed-a70b-29455e9d7a0e',20387,20376,20155,20159,'','2017-12-12 12:12:05','2017-12-12 12:12:07',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Home</Name></root>','','','','','portlet','column-1=116,\ncolumn-2=3,82,101_INSTANCE_gSSYCN80ow9y,\nlayout-template-id=2_columns_i\nprivateLayout=true\n',0,'/home',0,0,'','','','','',0,'',0,''),('3ff1864f-6312-489a-badc-b771898b2396',20396,20376,20155,20159,'','2017-12-12 12:12:07','2017-12-12 12:12:08',1,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Documents and Media</Name></root>','','','','','portlet','column-1=20,\ncolumn-2=101_INSTANCE_1GsB23G56aqh,\nlayout-template-id=1_column\nprivateLayout=true\n',0,'/documents',0,0,'','','','','',1,'',0,''),('efa36a80-a2ee-4cf4-9160-25961c791040',20404,20376,20155,20159,'','2017-12-12 12:12:08','2017-12-12 12:12:09',1,3,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">News</Name></root>','','','','','portlet','column-1=39_INSTANCE_JHjr35gJgp6w,\ncolumn-2=39_INSTANCE_bTbvMyLtEEBA,\nlayout-template-id=2_columns_iii\nprivateLayout=true\n',0,'/news',0,0,'','','','','',2,'',0,''),('2c1f4166-6c97-4eca-b29d-bbf0cba158e1',20530,20517,20155,20159,'','2017-12-12 12:15:06','2017-12-12 12:15:06',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Welcome</Title></root>','','','','portlet','column-1=58,\ncolumn-2=47,\nlayout-template-id=2_columns_ii\nprivateLayout=true\n',0,'/home',0,0,'','','','','',0,'',0,''),('03a424e5-e61f-4f09-b483-28604d2b3afb',20538,20201,20155,20199,'Liferray Admin','2017-12-12 12:23:26','2017-12-12 12:23:27',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','','','','','portlet','column-1=82,23,11,\ncolumn-2=29,\nlayout-template-id=2_columns_ii\nprivateLayout=true\n',0,'/home',0,0,'','','','','',0,'',0,''),('75480338-7d9c-4700-9c04-a942a26f8120',20544,20201,20155,20199,'Liferray Admin','2017-12-12 12:23:27','2017-12-12 12:23:27',0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','','','','','portlet','column-1=82,3,\ncolumn-2=33,\nlayout-template-id=2_columns_ii\n',0,'/home',0,0,'','','','','',0,'',0,''),('7a2b9a44-5e9a-41d4-935e-d75c0bd1a931',20564,20557,20155,20199,'Liferray Admin','2017-12-12 13:01:03','2017-12-12 13:01:56',0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Driving Behavior</Name></root>','','','','','portlet','column-1-customizable=false\nlayout-template-id=1_column\nlayoutUpdateable=true\nsitemap-changefreq=daily\nsitemap-include=1\n',0,'/driving-behavior',0,0,'classic','','','','',0,'',0,''),('7487c576-48e9-4fb9-bf29-2287546952c8',20570,20557,20155,20199,'Liferray Admin','2017-12-12 13:01:35','2017-12-12 13:02:52',0,2,1,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Driving Behavior Overview</Name></root>','','','','','portlet','column-1=drivingbehavioroverviewportlet_WAR_ubiportlet\nlayout-template-id=1_column\n',0,'/driving-behavior-overview',0,0,'','','','','',0,'',0,''),('a3d0fe29-7a64-4db5-9c56-ae14a0f24812',20601,20557,20155,20199,'Liferray Admin','2018-01-02 06:56:52','2018-01-02 06:58:54',0,3,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Raw Data Monitor</Name></root>','','','','','portlet','column-1=rowdataportlet_WAR_ubiportlet\nlayout-template-id=1_column\n',0,'/raw-data-monitor',0,0,'','','','','',1,'',0,''),('72d207cc-3acb-44ab-bba3-f5ed2034976c',20607,20557,20155,20199,'Liferray Admin','2018-01-02 06:57:22','2018-01-02 06:59:25',0,4,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">UBI Score Analysis</Name></root>','','','','','portlet','column-1=ubiscoreanalysisportlet_WAR_ubiportlet\nlayout-template-id=1_column\n',0,'/ubi-score-analysis',0,0,'','','','','',2,'',0,'');

/*Table structure for table `layoutbranch` */

DROP TABLE IF EXISTS `layoutbranch`;

CREATE TABLE `layoutbranch` (
  `LayoutBranchId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `layoutSetBranchId` bigint(20) DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `master` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`LayoutBranchId`),
  UNIQUE KEY `IX_FD57097D` (`layoutSetBranchId`,`plid`,`name`),
  KEY `IX_6C226433` (`layoutSetBranchId`),
  KEY `IX_2C42603E` (`layoutSetBranchId`,`plid`),
  KEY `IX_A705FF94` (`layoutSetBranchId`,`plid`,`master`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `layoutbranch` */

/*Table structure for table `layoutfriendlyurl` */

DROP TABLE IF EXISTS `layoutfriendlyurl`;

CREATE TABLE `layoutfriendlyurl` (
  `uuid_` varchar(75) DEFAULT NULL,
  `layoutFriendlyURLId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `friendlyURL` varchar(255) DEFAULT NULL,
  `languageId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`layoutFriendlyURLId`),
  UNIQUE KEY `IX_A6FC2B28` (`groupId`,`privateLayout`,`friendlyURL`,`languageId`),
  UNIQUE KEY `IX_C5762E72` (`plid`,`languageId`),
  UNIQUE KEY `IX_326525D6` (`uuid_`,`groupId`),
  KEY `IX_EAB317C8` (`companyId`),
  KEY `IX_742EF04A` (`groupId`),
  KEY `IX_CA713461` (`groupId`,`privateLayout`,`friendlyURL`),
  KEY `IX_83AE56AB` (`plid`),
  KEY `IX_59051329` (`plid`,`friendlyURL`),
  KEY `IX_9F80D54` (`uuid_`),
  KEY `IX_F4321A54` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `layoutfriendlyurl` */

insert  into `layoutfriendlyurl`(`uuid_`,`layoutFriendlyURLId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`plid`,`privateLayout`,`friendlyURL`,`languageId`) values ('c5eb3aa9-779f-4154-b997-232ed4d689aa',20177,20173,20155,20159,'','2017-12-12 12:11:49','2017-12-12 12:11:49',20176,1,'/manage','en_US'),('09044ffe-4354-4576-89ee-30528d91267c',20186,20182,20155,20159,'','2017-12-12 12:11:50','2017-12-12 12:11:50',20185,0,'/home','en_US'),('088669d1-5353-48bb-b171-86a2df7f5bc2',20321,20317,20155,20159,'','2017-12-12 12:11:57','2017-12-12 12:11:57',20320,1,'/layout','en_US'),('7082b047-ae8f-4fa5-aedd-9b413094178e',20333,20329,20155,20159,'','2017-12-12 12:11:58','2017-12-12 12:11:58',20332,1,'/layout','en_US'),('6854a541-29c2-452f-8d34-e3d5110a365d',20343,20339,20155,20159,'','2017-12-12 12:11:59','2017-12-12 12:11:59',20342,1,'/layout','en_US'),('6819c1f3-30bd-4612-ae59-a9341ed26cb3',20362,20350,20155,20159,'','2017-12-12 12:12:01','2017-12-12 12:12:01',20361,1,'/home','en_US'),('503d9f56-229b-42fb-be81-d6be854e5040',20370,20350,20155,20159,'','2017-12-12 12:12:03','2017-12-12 12:12:03',20369,1,'/wiki','en_US'),('222b96ce-283f-456e-b0b6-487f80d6b533',20388,20376,20155,20159,'','2017-12-12 12:12:05','2017-12-12 12:12:05',20387,1,'/home','en_US'),('639f679a-30d7-473f-856d-8045d66ad27b',20397,20376,20155,20159,'','2017-12-12 12:12:07','2017-12-12 12:12:07',20396,1,'/documents','en_US'),('5c65b116-6462-4841-955e-bd1c072ec073',20405,20376,20155,20159,'','2017-12-12 12:12:08','2017-12-12 12:12:08',20404,1,'/news','en_US'),('555e84e9-6398-4909-9783-9585884f1b53',20531,20517,20155,20159,'','2017-12-12 12:15:06','2017-12-12 12:15:06',20530,1,'/home','en_US'),('c2edbada-15cd-47a8-8556-3e9fa00e84ce',20539,20201,20155,20199,'Liferray Admin','2017-12-12 12:23:26','2017-12-12 12:23:26',20538,1,'/home','en_US'),('603d8a7d-6d81-4a5a-8a42-690451626a8a',20545,20201,20155,20199,'Liferray Admin','2017-12-12 12:23:27','2017-12-12 12:23:27',20544,0,'/home','en_US'),('fbb7557e-ad38-4ca9-b033-b590f597eee5',20565,20557,20155,20199,'Liferray Admin','2017-12-12 13:01:03','2017-12-12 13:01:03',20564,0,'/driving-behavior','en_US'),('e1fd792d-47f0-4c25-a23e-ce7cc62f17ee',20571,20557,20155,20199,'Liferray Admin','2017-12-12 13:01:35','2017-12-12 13:01:35',20570,0,'/driving-behavior-overview','en_US'),('937d5e5c-fd3b-49af-88b3-68f8a369beba',20602,20557,20155,20199,'Liferray Admin','2018-01-02 06:56:52','2018-01-02 06:56:52',20601,0,'/raw-data-monitor','en_US'),('987b413e-c3e0-4c4f-8440-1d201b0c0ed6',20608,20557,20155,20199,'Liferray Admin','2018-01-02 06:57:22','2018-01-02 06:57:22',20607,0,'/ubi-score-analysis','en_US');

/*Table structure for table `layoutprototype` */

DROP TABLE IF EXISTS `layoutprototype`;

CREATE TABLE `layoutprototype` (
  `uuid_` varchar(75) DEFAULT NULL,
  `layoutPrototypeId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `settings_` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutPrototypeId`),
  KEY `IX_30616AAA` (`companyId`),
  KEY `IX_557A639F` (`companyId`,`active_`),
  KEY `IX_CEF72136` (`uuid_`),
  KEY `IX_63ED2532` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `layoutprototype` */

insert  into `layoutprototype`(`uuid_`,`layoutPrototypeId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`name`,`description`,`settings_`,`active_`) values ('c0644dba-2ab6-4899-8b19-289a3e0d4faf',20316,20155,20159,'','2017-12-12 12:11:57','2017-12-12 12:11:57','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Blog</Name></root>','Create, edit, and view blogs from this page. Explore topics using tags, and connect with other members that blog.','',1),('b11b56af-a4c1-4916-a9a7-909da2f00be0',20328,20155,20159,'','2017-12-12 12:11:58','2017-12-12 12:11:58','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Content Display Page</Name></root>','Create, edit, and explore web content with this page. Search available content, explore related content with tags, and browse content categories.','',1),('455a624a-fcbf-457d-be46-6b5aa6c8f0ae',20338,20155,20159,'','2017-12-12 12:11:59','2017-12-12 12:11:59','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','Collaborate with members through the wiki on this page. Discover related content through tags, and navigate quickly and easily with categories.','',1);

/*Table structure for table `layoutrevision` */

DROP TABLE IF EXISTS `layoutrevision`;

CREATE TABLE `layoutrevision` (
  `layoutRevisionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `layoutSetBranchId` bigint(20) DEFAULT NULL,
  `layoutBranchId` bigint(20) DEFAULT NULL,
  `parentLayoutRevisionId` bigint(20) DEFAULT NULL,
  `head` tinyint(4) DEFAULT NULL,
  `major` tinyint(4) DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `name` longtext,
  `title` longtext,
  `description` longtext,
  `keywords` longtext,
  `robots` longtext,
  `typeSettings` longtext,
  `iconImage` tinyint(4) DEFAULT NULL,
  `iconImageId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`layoutRevisionId`),
  KEY `IX_43E8286A` (`head`,`plid`),
  KEY `IX_314B621A` (`layoutSetBranchId`),
  KEY `IX_A9AC086E` (`layoutSetBranchId`,`head`),
  KEY `IX_E10AC39` (`layoutSetBranchId`,`head`,`plid`),
  KEY `IX_13984800` (`layoutSetBranchId`,`layoutBranchId`,`plid`),
  KEY `IX_4A84AF43` (`layoutSetBranchId`,`parentLayoutRevisionId`,`plid`),
  KEY `IX_B7B914E5` (`layoutSetBranchId`,`plid`),
  KEY `IX_70DA9ECB` (`layoutSetBranchId`,`plid`,`status`),
  KEY `IX_7FFAE700` (`layoutSetBranchId`,`status`),
  KEY `IX_9329C9D6` (`plid`),
  KEY `IX_8EC3D2BC` (`plid`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `layoutrevision` */

/*Table structure for table `layoutset` */

DROP TABLE IF EXISTS `layoutset`;

CREATE TABLE `layoutset` (
  `layoutSetId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `logo` tinyint(4) DEFAULT NULL,
  `logoId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `pageCount` int(11) DEFAULT NULL,
  `settings_` longtext,
  `layoutSetPrototypeUuid` varchar(75) DEFAULT NULL,
  `layoutSetPrototypeLinkEnabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutSetId`),
  UNIQUE KEY `IX_48550691` (`groupId`,`privateLayout`),
  KEY `IX_A40B8BEC` (`groupId`),
  KEY `IX_72BBA8B7` (`layoutSetPrototypeUuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `layoutset` */

insert  into `layoutset`(`layoutSetId`,`groupId`,`companyId`,`createDate`,`modifiedDate`,`privateLayout`,`logo`,`logoId`,`themeId`,`colorSchemeId`,`wapThemeId`,`wapColorSchemeId`,`css`,`pageCount`,`settings_`,`layoutSetPrototypeUuid`,`layoutSetPrototypeLinkEnabled`) values (20174,20173,20155,'2017-12-12 12:11:49','2017-12-12 12:11:49',1,0,0,'classic','01','mobile','01','',1,'','',0),(20175,20173,20155,'2017-12-12 12:11:49','2017-12-12 12:11:49',0,0,0,'classic','01','mobile','01','',0,'','',0),(20183,20182,20155,'2017-12-12 12:11:50','2017-12-12 12:11:50',1,0,0,'classic','01','mobile','01','',0,'','',0),(20184,20182,20155,'2017-12-12 12:11:50','2017-12-12 12:11:50',0,0,0,'classic','01','mobile','01','',1,'','',0),(20193,20192,20155,'2017-12-12 12:11:50','2017-12-12 12:11:50',1,0,0,'classic','01','mobile','01','',0,'','',0),(20194,20192,20155,'2017-12-12 12:11:50','2017-12-12 12:11:50',0,0,0,'classic','01','mobile','01','',0,'','',0),(20196,20195,20155,'2017-12-12 12:11:51','2017-12-12 12:11:51',1,0,0,'classic','01','mobile','01','',0,'','',0),(20197,20195,20155,'2017-12-12 12:11:51','2017-12-12 12:11:51',0,0,0,'classic','01','mobile','01','',0,'','',0),(20202,20201,20155,'2017-12-12 12:11:51','2017-12-12 12:23:26',1,0,0,'classic','01','mobile','01','',1,'','',0),(20203,20201,20155,'2017-12-12 12:11:51','2017-12-12 12:23:27',0,0,0,'classic','01','mobile','01','',1,'','',0),(20318,20317,20155,'2017-12-12 12:11:57','2017-12-12 12:11:57',1,0,0,'classic','01','mobile','01','',1,'','',0),(20319,20317,20155,'2017-12-12 12:11:57','2017-12-12 12:11:57',0,0,0,'classic','01','mobile','01','',0,'','',0),(20330,20329,20155,'2017-12-12 12:11:58','2017-12-12 12:11:58',1,0,0,'classic','01','mobile','01','',1,'','',0),(20331,20329,20155,'2017-12-12 12:11:58','2017-12-12 12:11:58',0,0,0,'classic','01','mobile','01','',0,'','',0),(20340,20339,20155,'2017-12-12 12:11:59','2017-12-12 12:11:59',1,0,0,'classic','01','mobile','01','',1,'','',0),(20341,20339,20155,'2017-12-12 12:11:59','2017-12-12 12:11:59',0,0,0,'classic','01','mobile','01','',0,'','',0),(20351,20350,20155,'2017-12-12 12:12:00','2017-12-12 12:12:04',1,0,0,'classic','01','mobile','01','',2,'','',0),(20352,20350,20155,'2017-12-12 12:12:00','2017-12-12 12:12:00',0,0,0,'classic','01','mobile','01','',0,'','',0),(20377,20376,20155,'2017-12-12 12:12:04','2017-12-12 12:12:09',1,0,0,'classic','01','mobile','01','',3,'','',0),(20378,20376,20155,'2017-12-12 12:12:04','2017-12-12 12:12:04',0,0,0,'classic','01','mobile','01','',0,'','',0),(20518,20517,20155,'2017-12-12 12:15:05','2017-12-12 12:15:06',1,0,0,'ubi_WAR_ubitheme','01','mobile','01','',1,'','',0),(20519,20517,20155,'2017-12-12 12:15:05','2017-12-12 12:15:06',0,0,0,'ubi_WAR_ubitheme','01','mobile','01','',0,'','',0),(20558,20557,20155,'2017-12-12 12:27:22','2017-12-12 12:27:22',1,0,0,'classic','01','mobile','01','',0,'','',0),(20559,20557,20155,'2017-12-12 12:27:22','2018-01-02 06:57:39',0,0,0,'ubi_WAR_ubitheme','01','mobile','01','',4,'showSiteName=true\n','',0);

/*Table structure for table `layoutsetbranch` */

DROP TABLE IF EXISTS `layoutsetbranch`;

CREATE TABLE `layoutsetbranch` (
  `layoutSetBranchId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `master` tinyint(4) DEFAULT NULL,
  `logo` tinyint(4) DEFAULT NULL,
  `logoId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `settings_` longtext,
  `layoutSetPrototypeUuid` varchar(75) DEFAULT NULL,
  `layoutSetPrototypeLinkEnabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutSetBranchId`),
  UNIQUE KEY `IX_5FF18552` (`groupId`,`privateLayout`,`name`),
  KEY `IX_8FF5D6EA` (`groupId`),
  KEY `IX_C4079FD3` (`groupId`,`privateLayout`),
  KEY `IX_CCF0DA29` (`groupId`,`privateLayout`,`master`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `layoutsetbranch` */

/*Table structure for table `layoutsetprototype` */

DROP TABLE IF EXISTS `layoutsetprototype`;

CREATE TABLE `layoutsetprototype` (
  `uuid_` varchar(75) DEFAULT NULL,
  `layoutSetPrototypeId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `settings_` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutSetPrototypeId`),
  KEY `IX_55F63D98` (`companyId`),
  KEY `IX_9178FC71` (`companyId`,`active_`),
  KEY `IX_C5D69B24` (`uuid_`),
  KEY `IX_D9FFCA84` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `layoutsetprototype` */

insert  into `layoutsetprototype`(`uuid_`,`layoutSetPrototypeId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`name`,`description`,`settings_`,`active_`) values ('e44de8b4-20bd-49d7-99d6-017d1a9ba599',20349,20155,20159,'','2017-12-12 12:12:00','2017-12-12 12:12:04','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Community Site</Name></root>','Site with Forums and Wiki','layoutsUpdateable=true\n',1),('0faf3e07-3b4a-463f-ab35-83c55d6d5beb',20375,20155,20159,'','2017-12-12 12:12:04','2017-12-12 12:12:09','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Intranet Site</Name></root>','Site with Documents and News','layoutsUpdateable=true\n',1),('9fdc6747-86d4-4b70-be86-89c234f1d558',20516,20155,20159,'','2017-12-12 12:15:05','2017-12-12 12:15:06','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Ubi Theme</Name></root>','','layoutsUpdateable=true\n',1);

/*Table structure for table `listtype` */

DROP TABLE IF EXISTS `listtype`;

CREATE TABLE `listtype` (
  `listTypeId` int(11) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`listTypeId`),
  KEY `IX_2932DD37` (`type_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `listtype` */

insert  into `listtype`(`listTypeId`,`name`,`type_`) values (10000,'billing','com.liferay.portal.model.Account.address'),(10001,'other','com.liferay.portal.model.Account.address'),(10002,'p-o-box','com.liferay.portal.model.Account.address'),(10003,'shipping','com.liferay.portal.model.Account.address'),(10004,'email-address','com.liferay.portal.model.Account.emailAddress'),(10005,'email-address-2','com.liferay.portal.model.Account.emailAddress'),(10006,'email-address-3','com.liferay.portal.model.Account.emailAddress'),(10007,'fax','com.liferay.portal.model.Account.phone'),(10008,'local','com.liferay.portal.model.Account.phone'),(10009,'other','com.liferay.portal.model.Account.phone'),(10010,'toll-free','com.liferay.portal.model.Account.phone'),(10011,'tty','com.liferay.portal.model.Account.phone'),(10012,'intranet','com.liferay.portal.model.Account.website'),(10013,'public','com.liferay.portal.model.Account.website'),(11000,'business','com.liferay.portal.model.Contact.address'),(11001,'other','com.liferay.portal.model.Contact.address'),(11002,'personal','com.liferay.portal.model.Contact.address'),(11003,'email-address','com.liferay.portal.model.Contact.emailAddress'),(11004,'email-address-2','com.liferay.portal.model.Contact.emailAddress'),(11005,'email-address-3','com.liferay.portal.model.Contact.emailAddress'),(11006,'business','com.liferay.portal.model.Contact.phone'),(11007,'business-fax','com.liferay.portal.model.Contact.phone'),(11008,'mobile-phone','com.liferay.portal.model.Contact.phone'),(11009,'other','com.liferay.portal.model.Contact.phone'),(11010,'pager','com.liferay.portal.model.Contact.phone'),(11011,'personal','com.liferay.portal.model.Contact.phone'),(11012,'personal-fax','com.liferay.portal.model.Contact.phone'),(11013,'tty','com.liferay.portal.model.Contact.phone'),(11014,'dr','com.liferay.portal.model.Contact.prefix'),(11015,'mr','com.liferay.portal.model.Contact.prefix'),(11016,'mrs','com.liferay.portal.model.Contact.prefix'),(11017,'ms','com.liferay.portal.model.Contact.prefix'),(11020,'ii','com.liferay.portal.model.Contact.suffix'),(11021,'iii','com.liferay.portal.model.Contact.suffix'),(11022,'iv','com.liferay.portal.model.Contact.suffix'),(11023,'jr','com.liferay.portal.model.Contact.suffix'),(11024,'phd','com.liferay.portal.model.Contact.suffix'),(11025,'sr','com.liferay.portal.model.Contact.suffix'),(11026,'blog','com.liferay.portal.model.Contact.website'),(11027,'business','com.liferay.portal.model.Contact.website'),(11028,'other','com.liferay.portal.model.Contact.website'),(11029,'personal','com.liferay.portal.model.Contact.website'),(12000,'billing','com.liferay.portal.model.Organization.address'),(12001,'other','com.liferay.portal.model.Organization.address'),(12002,'p-o-box','com.liferay.portal.model.Organization.address'),(12003,'shipping','com.liferay.portal.model.Organization.address'),(12004,'email-address','com.liferay.portal.model.Organization.emailAddress'),(12005,'email-address-2','com.liferay.portal.model.Organization.emailAddress'),(12006,'email-address-3','com.liferay.portal.model.Organization.emailAddress'),(12007,'fax','com.liferay.portal.model.Organization.phone'),(12008,'local','com.liferay.portal.model.Organization.phone'),(12009,'other','com.liferay.portal.model.Organization.phone'),(12010,'toll-free','com.liferay.portal.model.Organization.phone'),(12011,'tty','com.liferay.portal.model.Organization.phone'),(12012,'administrative','com.liferay.portal.model.Organization.service'),(12013,'contracts','com.liferay.portal.model.Organization.service'),(12014,'donation','com.liferay.portal.model.Organization.service'),(12015,'retail','com.liferay.portal.model.Organization.service'),(12016,'training','com.liferay.portal.model.Organization.service'),(12017,'full-member','com.liferay.portal.model.Organization.status'),(12018,'provisional-member','com.liferay.portal.model.Organization.status'),(12019,'intranet','com.liferay.portal.model.Organization.website'),(12020,'public','com.liferay.portal.model.Organization.website');

/*Table structure for table `lock_` */

DROP TABLE IF EXISTS `lock_`;

CREATE TABLE `lock_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `lockId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `className` varchar(75) DEFAULT NULL,
  `key_` varchar(200) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `inheritable` tinyint(4) DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`lockId`),
  UNIQUE KEY `IX_228562AD` (`className`,`key_`),
  KEY `IX_E3F1286B` (`expirationDate`),
  KEY `IX_13C5CD3A` (`uuid_`),
  KEY `IX_2C418EAE` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `lock_` */

/*Table structure for table `marketplace_app` */

DROP TABLE IF EXISTS `marketplace_app`;

CREATE TABLE `marketplace_app` (
  `uuid_` varchar(75) DEFAULT NULL,
  `appId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `remoteAppId` bigint(20) DEFAULT NULL,
  `title` varchar(75) DEFAULT NULL,
  `description` longtext,
  `category` varchar(75) DEFAULT NULL,
  `iconURL` longtext,
  `version` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`appId`),
  KEY `IX_94A7EF25` (`category`),
  KEY `IX_865B7BD5` (`companyId`),
  KEY `IX_20F14D93` (`remoteAppId`),
  KEY `IX_3E667FE1` (`uuid_`),
  KEY `IX_A7807DA7` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `marketplace_app` */

/*Table structure for table `marketplace_module` */

DROP TABLE IF EXISTS `marketplace_module`;

CREATE TABLE `marketplace_module` (
  `uuid_` varchar(75) DEFAULT NULL,
  `moduleId` bigint(20) NOT NULL,
  `appId` bigint(20) DEFAULT NULL,
  `bundleSymbolicName` varchar(500) DEFAULT NULL,
  `bundleVersion` varchar(75) DEFAULT NULL,
  `contextName` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`moduleId`),
  KEY `IX_7DC16D26` (`appId`),
  KEY `IX_5848F52D` (`appId`,`bundleSymbolicName`,`bundleVersion`),
  KEY `IX_C6938724` (`appId`,`contextName`),
  KEY `IX_DD03D499` (`bundleSymbolicName`),
  KEY `IX_F2F1E964` (`contextName`),
  KEY `IX_A7EFD80E` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `marketplace_module` */

/*Table structure for table `mbban` */

DROP TABLE IF EXISTS `mbban`;

CREATE TABLE `mbban` (
  `uuid_` varchar(75) DEFAULT NULL,
  `banId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `banUserId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`banId`),
  UNIQUE KEY `IX_8ABC4E3B` (`groupId`,`banUserId`),
  UNIQUE KEY `IX_2A3B68F6` (`uuid_`,`groupId`),
  KEY `IX_69951A25` (`banUserId`),
  KEY `IX_5C3FF12A` (`groupId`),
  KEY `IX_48814BBA` (`userId`),
  KEY `IX_8A13C634` (`uuid_`),
  KEY `IX_4F841574` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mbban` */

/*Table structure for table `mbcategory` */

DROP TABLE IF EXISTS `mbcategory`;

CREATE TABLE `mbcategory` (
  `uuid_` varchar(75) DEFAULT NULL,
  `categoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentCategoryId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `displayStyle` varchar(75) DEFAULT NULL,
  `threadCount` int(11) DEFAULT NULL,
  `messageCount` int(11) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`categoryId`),
  UNIQUE KEY `IX_F7D28C2F` (`uuid_`,`groupId`),
  KEY `IX_BC735DCF` (`companyId`),
  KEY `IX_E15A5DB5` (`companyId`,`status`),
  KEY `IX_BB870C11` (`groupId`),
  KEY `IX_ED292508` (`groupId`,`parentCategoryId`),
  KEY `IX_C295DBEE` (`groupId`,`parentCategoryId`,`status`),
  KEY `IX_DA84A9F7` (`groupId`,`status`),
  KEY `IX_C2626EDB` (`uuid_`),
  KEY `IX_13DF4E6D` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mbcategory` */

/*Table structure for table `mbdiscussion` */

DROP TABLE IF EXISTS `mbdiscussion`;

CREATE TABLE `mbdiscussion` (
  `uuid_` varchar(75) DEFAULT NULL,
  `discussionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `threadId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`discussionId`),
  UNIQUE KEY `IX_33A4DE38` (`classNameId`,`classPK`),
  UNIQUE KEY `IX_B5CA2DC` (`threadId`),
  UNIQUE KEY `IX_F7AAC799` (`uuid_`,`groupId`),
  KEY `IX_79D0120B` (`classNameId`),
  KEY `IX_5477D431` (`uuid_`),
  KEY `IX_7E965757` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mbdiscussion` */

insert  into `mbdiscussion`(`uuid_`,`discussionId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`classNameId`,`classPK`,`threadId`) values ('61018ce3-c9a9-4163-8b63-0bb62e40d9d4',20181,0,0,20159,'','2017-12-12 12:11:50','2017-12-12 12:11:50',20002,20176,20179),('721e44dd-e996-41ac-bc2c-86ba71fd69c8',20190,0,0,20159,'','2017-12-12 12:11:50','2017-12-12 12:11:50',20002,20185,20188),('4de40894-d916-4056-995b-f870916989da',20326,0,0,20159,'','2017-12-12 12:11:57','2017-12-12 12:11:57',20002,20320,20323),('56c44491-646b-41e5-b516-0e191a5ce358',20337,0,0,20159,'','2017-12-12 12:11:58','2017-12-12 12:11:58',20002,20332,20335),('12621289-0958-486f-b263-c17addd829cd',20347,0,0,20159,'','2017-12-12 12:11:59','2017-12-12 12:11:59',20002,20342,20345),('0a92dab3-d358-412e-9908-ede36881e430',20366,0,0,20159,'','2017-12-12 12:12:01','2017-12-12 12:12:01',20002,20361,20364),('2d5012d7-ccd4-414b-a726-a6ef0d103659',20374,0,0,20159,'','2017-12-12 12:12:03','2017-12-12 12:12:03',20002,20369,20372),('1c1f30bf-7b6b-4b9c-a1b4-9ff0a7ff631d',20392,0,0,20159,'','2017-12-12 12:12:05','2017-12-12 12:12:05',20002,20387,20390),('b0b831d7-bb22-4914-bb43-91ca50dbc3d3',20401,0,0,20159,'','2017-12-12 12:12:07','2017-12-12 12:12:07',20002,20396,20399),('af01fca0-2b6c-45b2-8427-86b9a0dc14c1',20409,0,0,20159,'','2017-12-12 12:12:08','2017-12-12 12:12:08',20002,20404,20407),('fa2eda81-1bea-4073-8dd4-2981f344ac7a',20535,0,0,20159,'','2017-12-12 12:15:06','2017-12-12 12:15:06',20002,20530,20533),('bb7e7d95-2e6c-483d-97ae-e6ddc8a2a87e',20543,0,0,20199,'Liferray Admin','2017-12-12 12:23:27','2017-12-12 12:23:27',20002,20538,20541),('64e32c62-4bcd-488c-a730-b5a64583cbae',20549,0,0,20199,'Liferray Admin','2017-12-12 12:23:27','2017-12-12 12:23:27',20002,20544,20547),('8f675c76-02e1-4cb3-8210-9b16d44e98f3',20569,0,0,20199,'Liferray Admin','2017-12-12 13:01:03','2017-12-12 13:01:03',20002,20564,20567),('80b581e1-d155-45d4-9187-16d3d9def88f',20575,0,0,20199,'Liferray Admin','2017-12-12 13:01:35','2017-12-12 13:01:35',20002,20570,20573),('f3a4afa7-2826-4433-9a00-69a856f9e92f',20606,0,0,20199,'Liferray Admin','2018-01-02 06:56:54','2018-01-02 06:56:54',20002,20601,20604),('35c03e32-7657-4a94-8178-ba6a9722cbf9',20612,0,0,20199,'Liferray Admin','2018-01-02 06:57:22','2018-01-02 06:57:22',20002,20607,20610);

/*Table structure for table `mbmailinglist` */

DROP TABLE IF EXISTS `mbmailinglist`;

CREATE TABLE `mbmailinglist` (
  `uuid_` varchar(75) DEFAULT NULL,
  `mailingListId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `emailAddress` varchar(75) DEFAULT NULL,
  `inProtocol` varchar(75) DEFAULT NULL,
  `inServerName` varchar(75) DEFAULT NULL,
  `inServerPort` int(11) DEFAULT NULL,
  `inUseSSL` tinyint(4) DEFAULT NULL,
  `inUserName` varchar(75) DEFAULT NULL,
  `inPassword` varchar(75) DEFAULT NULL,
  `inReadInterval` int(11) DEFAULT NULL,
  `outEmailAddress` varchar(75) DEFAULT NULL,
  `outCustom` tinyint(4) DEFAULT NULL,
  `outServerName` varchar(75) DEFAULT NULL,
  `outServerPort` int(11) DEFAULT NULL,
  `outUseSSL` tinyint(4) DEFAULT NULL,
  `outUserName` varchar(75) DEFAULT NULL,
  `outPassword` varchar(75) DEFAULT NULL,
  `allowAnonymous` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`mailingListId`),
  UNIQUE KEY `IX_76CE9CDD` (`groupId`,`categoryId`),
  UNIQUE KEY `IX_E858F170` (`uuid_`,`groupId`),
  KEY `IX_BFEB984F` (`active_`),
  KEY `IX_4115EC7A` (`uuid_`),
  KEY `IX_FC61676E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mbmailinglist` */

/*Table structure for table `mbmessage` */

DROP TABLE IF EXISTS `mbmessage`;

CREATE TABLE `mbmessage` (
  `uuid_` varchar(75) DEFAULT NULL,
  `messageId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `threadId` bigint(20) DEFAULT NULL,
  `rootMessageId` bigint(20) DEFAULT NULL,
  `parentMessageId` bigint(20) DEFAULT NULL,
  `subject` varchar(75) DEFAULT NULL,
  `body` longtext,
  `format` varchar(75) DEFAULT NULL,
  `anonymous` tinyint(4) DEFAULT NULL,
  `priority` double DEFAULT NULL,
  `allowPingbacks` tinyint(4) DEFAULT NULL,
  `answer` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`messageId`),
  UNIQUE KEY `IX_8D12316E` (`uuid_`,`groupId`),
  KEY `IX_51A8D44D` (`classNameId`,`classPK`),
  KEY `IX_F6687633` (`classNameId`,`classPK`,`status`),
  KEY `IX_B1432D30` (`companyId`),
  KEY `IX_1AD93C16` (`companyId`,`status`),
  KEY `IX_5B153FB2` (`groupId`),
  KEY `IX_1073AB9F` (`groupId`,`categoryId`),
  KEY `IX_4257DB85` (`groupId`,`categoryId`,`status`),
  KEY `IX_B674AB58` (`groupId`,`categoryId`,`threadId`),
  KEY `IX_CBFDBF0A` (`groupId`,`categoryId`,`threadId`,`answer`),
  KEY `IX_385E123E` (`groupId`,`categoryId`,`threadId`,`status`),
  KEY `IX_ED39AC98` (`groupId`,`status`),
  KEY `IX_8EB8C5EC` (`groupId`,`userId`),
  KEY `IX_377858D2` (`groupId`,`userId`,`status`),
  KEY `IX_75B95071` (`threadId`),
  KEY `IX_9D7C3B23` (`threadId`,`answer`),
  KEY `IX_A7038CD7` (`threadId`,`parentMessageId`),
  KEY `IX_9DC8E57` (`threadId`,`status`),
  KEY `IX_7A040C32` (`userId`),
  KEY `IX_59F9CE5C` (`userId`,`classNameId`),
  KEY `IX_ABEB6D07` (`userId`,`classNameId`,`classPK`),
  KEY `IX_4A4BB4ED` (`userId`,`classNameId`,`classPK`,`status`),
  KEY `IX_3321F142` (`userId`,`classNameId`,`status`),
  KEY `IX_C57B16BC` (`uuid_`),
  KEY `IX_57CA9FEC` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mbmessage` */

insert  into `mbmessage`(`uuid_`,`messageId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`classNameId`,`classPK`,`categoryId`,`threadId`,`rootMessageId`,`parentMessageId`,`subject`,`body`,`format`,`anonymous`,`priority`,`allowPingbacks`,`answer`,`status`,`statusByUserId`,`statusByUserName`,`statusDate`) values ('c0a747d6-4425-4b35-b187-c540827e8aa8',20178,20173,20155,20159,'','2017-12-12 12:11:49','2017-12-12 12:11:49',20002,20176,-1,20179,20178,0,'20176','20176','bbcode',1,0,0,0,0,20159,'','2017-12-12 12:11:50'),('dcd6ff93-e437-4e6d-86a7-af9b5133cc6f',20187,20182,20155,20159,'','2017-12-12 12:11:50','2017-12-12 12:11:50',20002,20185,-1,20188,20187,0,'20185','20185','bbcode',1,0,0,0,0,20159,'','2017-12-12 12:11:50'),('0ea5eb5e-a63f-42ab-aa37-b96800563695',20322,20317,20155,20159,'','2017-12-12 12:11:57','2017-12-12 12:11:57',20002,20320,-1,20323,20322,0,'20320','20320','bbcode',1,0,0,0,0,20159,'','2017-12-12 12:11:57'),('f99102f3-0a2a-44a5-bf1e-be1ecf94a9ad',20334,20329,20155,20159,'','2017-12-12 12:11:58','2017-12-12 12:11:58',20002,20332,-1,20335,20334,0,'20332','20332','bbcode',1,0,0,0,0,20159,'','2017-12-12 12:11:58'),('85f0d245-3e47-472e-aa1e-00c6b5b53d35',20344,20339,20155,20159,'','2017-12-12 12:11:59','2017-12-12 12:11:59',20002,20342,-1,20345,20344,0,'20342','20342','bbcode',1,0,0,0,0,20159,'','2017-12-12 12:11:59'),('a9075d78-e7bc-4b35-94de-dad583d7a813',20363,20350,20155,20159,'','2017-12-12 12:12:01','2017-12-12 12:12:01',20002,20361,-1,20364,20363,0,'20361','20361','bbcode',1,0,0,0,0,20159,'','2017-12-12 12:12:01'),('f091ff42-65b1-4ecf-942a-7676a245e464',20371,20350,20155,20159,'','2017-12-12 12:12:03','2017-12-12 12:12:03',20002,20369,-1,20372,20371,0,'20369','20369','bbcode',1,0,0,0,0,20159,'','2017-12-12 12:12:03'),('455b10d1-bbec-49ee-8486-c952546cd884',20389,20376,20155,20159,'','2017-12-12 12:12:05','2017-12-12 12:12:05',20002,20387,-1,20390,20389,0,'20387','20387','bbcode',1,0,0,0,0,20159,'','2017-12-12 12:12:05'),('9f294b6a-cd77-4df4-89c8-ba976f4549b4',20398,20376,20155,20159,'','2017-12-12 12:12:07','2017-12-12 12:12:07',20002,20396,-1,20399,20398,0,'20396','20396','bbcode',1,0,0,0,0,20159,'','2017-12-12 12:12:07'),('ccec268e-fa1c-4a2d-a0d4-664289f5fd8d',20406,20376,20155,20159,'','2017-12-12 12:12:08','2017-12-12 12:12:08',20002,20404,-1,20407,20406,0,'20404','20404','bbcode',1,0,0,0,0,20159,'','2017-12-12 12:12:08'),('e0f81914-c6f3-4d94-8255-b95d198abb2d',20532,20517,20155,20159,'','2017-12-12 12:15:06','2017-12-12 12:15:06',20002,20530,-1,20533,20532,0,'20530','20530','bbcode',1,0,0,0,0,20159,'','2017-12-12 12:15:06'),('cf005fea-1376-425b-9cca-de76b8a6a156',20540,20201,20155,20199,'Liferray Admin','2017-12-12 12:23:26','2017-12-12 12:23:26',20002,20538,-1,20541,20540,0,'20538','20538','bbcode',0,0,0,0,0,20199,'Liferray Admin','2017-12-12 12:23:26'),('4b713e63-0f10-4dc5-9965-1fb091d60110',20546,20201,20155,20199,'Liferray Admin','2017-12-12 12:23:27','2017-12-12 12:23:27',20002,20544,-1,20547,20546,0,'20544','20544','bbcode',0,0,0,0,0,20199,'Liferray Admin','2017-12-12 12:23:27'),('b168bdad-404c-4264-995c-a9b46ffe7bef',20566,20557,20155,20199,'Liferray Admin','2017-12-12 13:01:03','2017-12-12 13:01:03',20002,20564,-1,20567,20566,0,'20564','20564','bbcode',0,0,0,0,0,20199,'Liferray Admin','2017-12-12 13:01:03'),('491216b2-2e82-4fe8-82e9-7cf693cd6b42',20572,20557,20155,20199,'Liferray Admin','2017-12-12 13:01:35','2017-12-12 13:01:35',20002,20570,-1,20573,20572,0,'20570','20570','bbcode',0,0,0,0,0,20199,'Liferray Admin','2017-12-12 13:01:35'),('0e1c90cd-900c-4959-b68c-3d4bd1eab386',20603,20557,20155,20199,'Liferray Admin','2018-01-02 06:56:53','2018-01-02 06:56:53',20002,20601,-1,20604,20603,0,'20601','20601','bbcode',0,0,0,0,0,20199,'Liferray Admin','2018-01-02 06:56:53'),('c82d5f9e-5cd3-4cee-a263-d4722b22f352',20609,20557,20155,20199,'Liferray Admin','2018-01-02 06:57:22','2018-01-02 06:57:22',20002,20607,-1,20610,20609,0,'20607','20607','bbcode',0,0,0,0,0,20199,'Liferray Admin','2018-01-02 06:57:22');

/*Table structure for table `mbstatsuser` */

DROP TABLE IF EXISTS `mbstatsuser`;

CREATE TABLE `mbstatsuser` (
  `statsUserId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `messageCount` int(11) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  PRIMARY KEY (`statsUserId`),
  UNIQUE KEY `IX_9168E2C9` (`groupId`,`userId`),
  KEY `IX_A00A898F` (`groupId`),
  KEY `IX_D33A5445` (`groupId`,`userId`,`messageCount`),
  KEY `IX_847F92B5` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mbstatsuser` */

/*Table structure for table `mbthread` */

DROP TABLE IF EXISTS `mbthread`;

CREATE TABLE `mbthread` (
  `uuid_` varchar(75) DEFAULT NULL,
  `threadId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `rootMessageId` bigint(20) DEFAULT NULL,
  `rootMessageUserId` bigint(20) DEFAULT NULL,
  `messageCount` int(11) DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  `lastPostByUserId` bigint(20) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  `priority` double DEFAULT NULL,
  `question` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`threadId`),
  UNIQUE KEY `IX_3A200B7B` (`uuid_`,`groupId`),
  KEY `IX_41F6DC8A` (`categoryId`,`priority`),
  KEY `IX_95C0EA45` (`groupId`),
  KEY `IX_9A2D11B2` (`groupId`,`categoryId`),
  KEY `IX_50F1904A` (`groupId`,`categoryId`,`lastPostDate`),
  KEY `IX_485F7E98` (`groupId`,`categoryId`,`status`),
  KEY `IX_E1E7142B` (`groupId`,`status`),
  KEY `IX_AEDD9CB5` (`lastPostDate`,`priority`),
  KEY `IX_CC993ECB` (`rootMessageId`),
  KEY `IX_7E264A0F` (`uuid_`),
  KEY `IX_F8CA2AB9` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mbthread` */

insert  into `mbthread`(`uuid_`,`threadId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`categoryId`,`rootMessageId`,`rootMessageUserId`,`messageCount`,`viewCount`,`lastPostByUserId`,`lastPostDate`,`priority`,`question`,`status`,`statusByUserId`,`statusByUserName`,`statusDate`) values ('723cf6f7-6de6-41fa-88a3-c652e0071379',20179,20173,20155,20159,'','2017-12-12 12:11:49','2017-12-12 12:11:50',-1,20178,20159,1,0,0,'2017-12-12 12:11:50',0,0,0,20159,'','2017-12-12 12:11:50'),('597983cd-116d-402f-aa18-e6ad7cd7cf7b',20188,20182,20155,20159,'','2017-12-12 12:11:50','2017-12-12 12:11:50',-1,20187,20159,1,0,0,'2017-12-12 12:11:50',0,0,0,20159,'','2017-12-12 12:11:50'),('d0b4da45-1510-4ac2-a009-b969c3d2c419',20323,20317,20155,20159,'','2017-12-12 12:11:57','2017-12-12 12:11:57',-1,20322,20159,1,0,0,'2017-12-12 12:11:57',0,0,0,20159,'','2017-12-12 12:11:57'),('0e0903fa-48f9-4e93-8e66-528d1a1c2552',20335,20329,20155,20159,'','2017-12-12 12:11:58','2017-12-12 12:11:58',-1,20334,20159,1,0,0,'2017-12-12 12:11:58',0,0,0,20159,'','2017-12-12 12:11:58'),('6944eff4-1fd7-42aa-ba4d-83b5bb7d2a3b',20345,20339,20155,20159,'','2017-12-12 12:11:59','2017-12-12 12:11:59',-1,20344,20159,1,0,0,'2017-12-12 12:11:59',0,0,0,20159,'','2017-12-12 12:11:59'),('63dcd65c-9cfc-450b-bb5b-604f30c81613',20364,20350,20155,20159,'','2017-12-12 12:12:01','2017-12-12 12:12:01',-1,20363,20159,1,0,0,'2017-12-12 12:12:01',0,0,0,20159,'','2017-12-12 12:12:01'),('52b860fe-12a3-4f8e-8d15-c4ce5596e137',20372,20350,20155,20159,'','2017-12-12 12:12:03','2017-12-12 12:12:03',-1,20371,20159,1,0,0,'2017-12-12 12:12:03',0,0,0,20159,'','2017-12-12 12:12:03'),('46c21349-977c-4f20-ae94-4f7e0d81fcd9',20390,20376,20155,20159,'','2017-12-12 12:12:05','2017-12-12 12:12:05',-1,20389,20159,1,0,0,'2017-12-12 12:12:05',0,0,0,20159,'','2017-12-12 12:12:05'),('fa8ef95c-127d-425e-aaf8-34b9289f86c5',20399,20376,20155,20159,'','2017-12-12 12:12:07','2017-12-12 12:12:07',-1,20398,20159,1,0,0,'2017-12-12 12:12:07',0,0,0,20159,'','2017-12-12 12:12:07'),('94958f8a-2892-4aa2-9457-fdb8528d80e3',20407,20376,20155,20159,'','2017-12-12 12:12:08','2017-12-12 12:12:08',-1,20406,20159,1,0,0,'2017-12-12 12:12:08',0,0,0,20159,'','2017-12-12 12:12:08'),('56f91abc-26e1-48f0-a5ee-1745696ede30',20533,20517,20155,20159,'','2017-12-12 12:15:06','2017-12-12 12:15:06',-1,20532,20159,1,0,0,'2017-12-12 12:15:06',0,0,0,20159,'','2017-12-12 12:15:06'),('b1f1255f-365e-4b4f-a457-380d3d086908',20541,20201,20155,20199,'Liferray Admin','2017-12-12 12:23:26','2017-12-12 12:23:26',-1,20540,20199,1,0,20199,'2017-12-12 12:23:26',0,0,0,20199,'Liferray Admin','2017-12-12 12:23:26'),('8b271755-e4c2-400a-a610-0bd36345c876',20547,20201,20155,20199,'Liferray Admin','2017-12-12 12:23:27','2017-12-12 12:23:27',-1,20546,20199,1,0,20199,'2017-12-12 12:23:27',0,0,0,20199,'Liferray Admin','2017-12-12 12:23:27'),('0dec3a3a-3c15-4e95-9be5-76e05dee72b4',20567,20557,20155,20199,'Liferray Admin','2017-12-12 13:01:03','2017-12-12 13:01:03',-1,20566,20199,1,0,20199,'2017-12-12 13:01:03',0,0,0,20199,'Liferray Admin','2017-12-12 13:01:03'),('b0841006-1c37-4600-bba1-86eaa57202ae',20573,20557,20155,20199,'Liferray Admin','2017-12-12 13:01:35','2017-12-12 13:01:35',-1,20572,20199,1,0,20199,'2017-12-12 13:01:35',0,0,0,20199,'Liferray Admin','2017-12-12 13:01:35'),('8f6c35dd-bb66-42d0-bd5f-fb2e158f7bd1',20604,20557,20155,20199,'Liferray Admin','2018-01-02 06:56:53','2018-01-02 06:56:53',-1,20603,20199,1,0,20199,'2018-01-02 06:56:53',0,0,0,20199,'Liferray Admin','2018-01-02 06:56:53'),('58568352-0f30-470e-baac-662e77a516e0',20610,20557,20155,20199,'Liferray Admin','2018-01-02 06:57:22','2018-01-02 06:57:22',-1,20609,20199,1,0,20199,'2018-01-02 06:57:22',0,0,0,20199,'Liferray Admin','2018-01-02 06:57:22');

/*Table structure for table `mbthreadflag` */

DROP TABLE IF EXISTS `mbthreadflag`;

CREATE TABLE `mbthreadflag` (
  `uuid_` varchar(75) DEFAULT NULL,
  `threadFlagId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `threadId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`threadFlagId`),
  UNIQUE KEY `IX_33781904` (`userId`,`threadId`),
  UNIQUE KEY `IX_FEB0FC87` (`uuid_`,`groupId`),
  KEY `IX_8CB0A24A` (`threadId`),
  KEY `IX_A28004B` (`userId`),
  KEY `IX_F36BBB83` (`uuid_`),
  KEY `IX_DCE308C5` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mbthreadflag` */

/*Table structure for table `mdraction` */

DROP TABLE IF EXISTS `mdraction`;

CREATE TABLE `mdraction` (
  `uuid_` varchar(75) DEFAULT NULL,
  `actionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `ruleGroupInstanceId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `type_` varchar(255) DEFAULT NULL,
  `typeSettings` longtext,
  PRIMARY KEY (`actionId`),
  UNIQUE KEY `IX_75BE36AD` (`uuid_`,`groupId`),
  KEY `IX_FD90786C` (`ruleGroupInstanceId`),
  KEY `IX_77BB5E9D` (`uuid_`),
  KEY `IX_C58A516B` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mdraction` */

/*Table structure for table `mdrrule` */

DROP TABLE IF EXISTS `mdrrule`;

CREATE TABLE `mdrrule` (
  `uuid_` varchar(75) DEFAULT NULL,
  `ruleId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `ruleGroupId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `type_` varchar(255) DEFAULT NULL,
  `typeSettings` longtext,
  PRIMARY KEY (`ruleId`),
  UNIQUE KEY `IX_F3EFDCB3` (`uuid_`,`groupId`),
  KEY `IX_4F4293F1` (`ruleGroupId`),
  KEY `IX_EA63B9D7` (`uuid_`),
  KEY `IX_7DEA8DF1` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mdrrule` */

/*Table structure for table `mdrrulegroup` */

DROP TABLE IF EXISTS `mdrrulegroup`;

CREATE TABLE `mdrrulegroup` (
  `uuid_` varchar(75) DEFAULT NULL,
  `ruleGroupId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  PRIMARY KEY (`ruleGroupId`),
  UNIQUE KEY `IX_46665CC4` (`uuid_`,`groupId`),
  KEY `IX_5849891C` (`groupId`),
  KEY `IX_7F26B2A6` (`uuid_`),
  KEY `IX_CC14DC2` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mdrrulegroup` */

/*Table structure for table `mdrrulegroupinstance` */

DROP TABLE IF EXISTS `mdrrulegroupinstance`;

CREATE TABLE `mdrrulegroupinstance` (
  `uuid_` varchar(75) DEFAULT NULL,
  `ruleGroupInstanceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `ruleGroupId` bigint(20) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`ruleGroupInstanceId`),
  UNIQUE KEY `IX_808A0036` (`classNameId`,`classPK`,`ruleGroupId`),
  UNIQUE KEY `IX_9CBC6A39` (`uuid_`,`groupId`),
  KEY `IX_C95A08D8` (`classNameId`,`classPK`),
  KEY `IX_AFF28547` (`groupId`),
  KEY `IX_22DAB85C` (`groupId`,`classNameId`,`classPK`),
  KEY `IX_BF3E642B` (`ruleGroupId`),
  KEY `IX_B6A6BD91` (`uuid_`),
  KEY `IX_25C9D1F7` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mdrrulegroupinstance` */

/*Table structure for table `membershiprequest` */

DROP TABLE IF EXISTS `membershiprequest`;

CREATE TABLE `membershiprequest` (
  `membershipRequestId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `comments` longtext,
  `replyComments` longtext,
  `replyDate` datetime DEFAULT NULL,
  `replierUserId` bigint(20) DEFAULT NULL,
  `statusId` int(11) DEFAULT NULL,
  PRIMARY KEY (`membershipRequestId`),
  KEY `IX_8A1CC4B` (`groupId`),
  KEY `IX_C28C72EC` (`groupId`,`statusId`),
  KEY `IX_35AA8FA6` (`groupId`,`userId`,`statusId`),
  KEY `IX_66D70879` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `membershiprequest` */

/*Table structure for table `notifications_usernotificationevent` */

DROP TABLE IF EXISTS `notifications_usernotificationevent`;

CREATE TABLE `notifications_usernotificationevent` (
  `notificationEventId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userNotificationEventId` bigint(20) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `delivered` tinyint(4) DEFAULT NULL,
  `actionRequired` tinyint(4) DEFAULT NULL,
  `archived` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`notificationEventId`),
  UNIQUE KEY `IX_DC9FCEDC` (`userNotificationEventId`),
  KEY `IX_93C52776` (`userId`,`actionRequired`),
  KEY `IX_36E5AE4C` (`userId`,`actionRequired`,`archived`),
  KEY `IX_73C065F0` (`userId`,`delivered`,`actionRequired`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `notifications_usernotificationevent` */

/*Table structure for table `opensocial_gadget` */

DROP TABLE IF EXISTS `opensocial_gadget`;

CREATE TABLE `opensocial_gadget` (
  `uuid_` varchar(75) DEFAULT NULL,
  `gadgetId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `url` longtext,
  `portletCategoryNames` longtext,
  PRIMARY KEY (`gadgetId`),
  KEY `IX_729869EE` (`companyId`),
  KEY `IX_E1F8627A` (`uuid_`),
  KEY `IX_3C79316E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `opensocial_gadget` */

/*Table structure for table `opensocial_oauthconsumer` */

DROP TABLE IF EXISTS `opensocial_oauthconsumer`;

CREATE TABLE `opensocial_oauthconsumer` (
  `oAuthConsumerId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `gadgetKey` varchar(75) DEFAULT NULL,
  `serviceName` varchar(75) DEFAULT NULL,
  `consumerKey` varchar(75) DEFAULT NULL,
  `consumerSecret` longtext,
  `keyType` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`oAuthConsumerId`),
  KEY `IX_47206618` (`gadgetKey`),
  KEY `IX_8E715BF8` (`gadgetKey`,`serviceName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `opensocial_oauthconsumer` */

/*Table structure for table `opensocial_oauthtoken` */

DROP TABLE IF EXISTS `opensocial_oauthtoken`;

CREATE TABLE `opensocial_oauthtoken` (
  `oAuthTokenId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `gadgetKey` varchar(75) DEFAULT NULL,
  `serviceName` varchar(75) DEFAULT NULL,
  `moduleId` bigint(20) DEFAULT NULL,
  `accessToken` varchar(75) DEFAULT NULL,
  `tokenName` varchar(75) DEFAULT NULL,
  `tokenSecret` varchar(75) DEFAULT NULL,
  `sessionHandle` varchar(75) DEFAULT NULL,
  `expiration` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`oAuthTokenId`),
  KEY `IX_6C8CCC3D` (`gadgetKey`,`serviceName`),
  KEY `IX_CDD35402` (`userId`,`gadgetKey`,`serviceName`,`moduleId`,`tokenName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `opensocial_oauthtoken` */

/*Table structure for table `organization_` */

DROP TABLE IF EXISTS `organization_`;

CREATE TABLE `organization_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `organizationId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentOrganizationId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(100) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `recursable` tinyint(4) DEFAULT NULL,
  `regionId` bigint(20) DEFAULT NULL,
  `countryId` bigint(20) DEFAULT NULL,
  `statusId` int(11) DEFAULT NULL,
  `comments` longtext,
  PRIMARY KEY (`organizationId`),
  UNIQUE KEY `IX_E301BDF5` (`companyId`,`name`),
  KEY `IX_834BCEB6` (`companyId`),
  KEY `IX_418E4522` (`companyId`,`parentOrganizationId`),
  KEY `IX_396D6B42` (`uuid_`),
  KEY `IX_A9D85BA6` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `organization_` */

/*Table structure for table `orggrouprole` */

DROP TABLE IF EXISTS `orggrouprole`;

CREATE TABLE `orggrouprole` (
  `organizationId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`organizationId`,`groupId`,`roleId`),
  KEY `IX_4A527DD3` (`groupId`),
  KEY `IX_AB044D1C` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `orggrouprole` */

/*Table structure for table `orglabor` */

DROP TABLE IF EXISTS `orglabor`;

CREATE TABLE `orglabor` (
  `orgLaborId` bigint(20) NOT NULL,
  `organizationId` bigint(20) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `sunOpen` int(11) DEFAULT NULL,
  `sunClose` int(11) DEFAULT NULL,
  `monOpen` int(11) DEFAULT NULL,
  `monClose` int(11) DEFAULT NULL,
  `tueOpen` int(11) DEFAULT NULL,
  `tueClose` int(11) DEFAULT NULL,
  `wedOpen` int(11) DEFAULT NULL,
  `wedClose` int(11) DEFAULT NULL,
  `thuOpen` int(11) DEFAULT NULL,
  `thuClose` int(11) DEFAULT NULL,
  `friOpen` int(11) DEFAULT NULL,
  `friClose` int(11) DEFAULT NULL,
  `satOpen` int(11) DEFAULT NULL,
  `satClose` int(11) DEFAULT NULL,
  PRIMARY KEY (`orgLaborId`),
  KEY `IX_6AF0D434` (`organizationId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `orglabor` */

/*Table structure for table `passwordpolicy` */

DROP TABLE IF EXISTS `passwordpolicy`;

CREATE TABLE `passwordpolicy` (
  `uuid_` varchar(75) DEFAULT NULL,
  `passwordPolicyId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `defaultPolicy` tinyint(4) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `changeable` tinyint(4) DEFAULT NULL,
  `changeRequired` tinyint(4) DEFAULT NULL,
  `minAge` bigint(20) DEFAULT NULL,
  `checkSyntax` tinyint(4) DEFAULT NULL,
  `allowDictionaryWords` tinyint(4) DEFAULT NULL,
  `minAlphanumeric` int(11) DEFAULT NULL,
  `minLength` int(11) DEFAULT NULL,
  `minLowerCase` int(11) DEFAULT NULL,
  `minNumbers` int(11) DEFAULT NULL,
  `minSymbols` int(11) DEFAULT NULL,
  `minUpperCase` int(11) DEFAULT NULL,
  `regex` varchar(75) DEFAULT NULL,
  `history` tinyint(4) DEFAULT NULL,
  `historyCount` int(11) DEFAULT NULL,
  `expireable` tinyint(4) DEFAULT NULL,
  `maxAge` bigint(20) DEFAULT NULL,
  `warningTime` bigint(20) DEFAULT NULL,
  `graceLimit` int(11) DEFAULT NULL,
  `lockout` tinyint(4) DEFAULT NULL,
  `maxFailure` int(11) DEFAULT NULL,
  `lockoutDuration` bigint(20) DEFAULT NULL,
  `requireUnlock` tinyint(4) DEFAULT NULL,
  `resetFailureCount` bigint(20) DEFAULT NULL,
  `resetTicketMaxAge` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`passwordPolicyId`),
  UNIQUE KEY `IX_3FBFA9F4` (`companyId`,`name`),
  KEY `IX_8FEE65F5` (`companyId`),
  KEY `IX_2C1142E` (`companyId`,`defaultPolicy`),
  KEY `IX_51437A01` (`uuid_`),
  KEY `IX_E4D7EF87` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `passwordpolicy` */

insert  into `passwordpolicy`(`uuid_`,`passwordPolicyId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`defaultPolicy`,`name`,`description`,`changeable`,`changeRequired`,`minAge`,`checkSyntax`,`allowDictionaryWords`,`minAlphanumeric`,`minLength`,`minLowerCase`,`minNumbers`,`minSymbols`,`minUpperCase`,`regex`,`history`,`historyCount`,`expireable`,`maxAge`,`warningTime`,`graceLimit`,`lockout`,`maxFailure`,`lockoutDuration`,`requireUnlock`,`resetFailureCount`,`resetTicketMaxAge`) values ('832c98e4-2c48-4e5d-a45d-3280fec5e3dc',20198,20155,20159,'','2017-12-12 12:11:51','2017-12-12 12:11:51',1,'Default Password Policy','Default Password Policy',1,1,0,0,1,0,6,0,1,0,1,'(?=.{4})(?:[a-zA-Z0-9]*)',0,6,0,8640000,86400,0,0,3,0,1,600,86400);

/*Table structure for table `passwordpolicyrel` */

DROP TABLE IF EXISTS `passwordpolicyrel`;

CREATE TABLE `passwordpolicyrel` (
  `passwordPolicyRelId` bigint(20) NOT NULL,
  `passwordPolicyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`passwordPolicyRelId`),
  UNIQUE KEY `IX_C3A17327` (`classNameId`,`classPK`),
  KEY `IX_CD25266E` (`passwordPolicyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `passwordpolicyrel` */

/*Table structure for table `passwordtracker` */

DROP TABLE IF EXISTS `passwordtracker`;

CREATE TABLE `passwordtracker` (
  `passwordTrackerId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `password_` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`passwordTrackerId`),
  KEY `IX_326F75BD` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `passwordtracker` */

/*Table structure for table `phone` */

DROP TABLE IF EXISTS `phone`;

CREATE TABLE `phone` (
  `uuid_` varchar(75) DEFAULT NULL,
  `phoneId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `number_` varchar(75) DEFAULT NULL,
  `extension` varchar(75) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`phoneId`),
  KEY `IX_9F704A14` (`companyId`),
  KEY `IX_A2E4AFBA` (`companyId`,`classNameId`),
  KEY `IX_9A53569` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_812CE07A` (`companyId`,`classNameId`,`classPK`,`primary_`),
  KEY `IX_F202B9CE` (`userId`),
  KEY `IX_EA6245A0` (`uuid_`),
  KEY `IX_B271FA88` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `phone` */

/*Table structure for table `pluginsetting` */

DROP TABLE IF EXISTS `pluginsetting`;

CREATE TABLE `pluginsetting` (
  `pluginSettingId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `pluginId` varchar(75) DEFAULT NULL,
  `pluginType` varchar(75) DEFAULT NULL,
  `roles` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`pluginSettingId`),
  UNIQUE KEY `IX_7171B2E8` (`companyId`,`pluginId`,`pluginType`),
  KEY `IX_B9746445` (`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pluginsetting` */

/*Table structure for table `pollschoice` */

DROP TABLE IF EXISTS `pollschoice`;

CREATE TABLE `pollschoice` (
  `uuid_` varchar(75) DEFAULT NULL,
  `choiceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `questionId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`choiceId`),
  UNIQUE KEY `IX_D76DD2CF` (`questionId`,`name`),
  UNIQUE KEY `IX_C222BD31` (`uuid_`,`groupId`),
  KEY `IX_EC370F10` (`questionId`),
  KEY `IX_6660B399` (`uuid_`),
  KEY `IX_8AE746EF` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pollschoice` */

/*Table structure for table `pollsquestion` */

DROP TABLE IF EXISTS `pollsquestion`;

CREATE TABLE `pollsquestion` (
  `uuid_` varchar(75) DEFAULT NULL,
  `questionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `expirationDate` datetime DEFAULT NULL,
  `lastVoteDate` datetime DEFAULT NULL,
  PRIMARY KEY (`questionId`),
  UNIQUE KEY `IX_F3C9F36` (`uuid_`,`groupId`),
  KEY `IX_9FF342EA` (`groupId`),
  KEY `IX_51F087F4` (`uuid_`),
  KEY `IX_F910BBB4` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pollsquestion` */

/*Table structure for table `pollsvote` */

DROP TABLE IF EXISTS `pollsvote`;

CREATE TABLE `pollsvote` (
  `uuid_` varchar(75) DEFAULT NULL,
  `voteId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `questionId` bigint(20) DEFAULT NULL,
  `choiceId` bigint(20) DEFAULT NULL,
  `voteDate` datetime DEFAULT NULL,
  PRIMARY KEY (`voteId`),
  UNIQUE KEY `IX_1BBFD4D3` (`questionId`,`userId`),
  UNIQUE KEY `IX_A88C673A` (`uuid_`,`groupId`),
  KEY `IX_D5DF7B54` (`choiceId`),
  KEY `IX_12112599` (`questionId`),
  KEY `IX_FD32EB70` (`uuid_`),
  KEY `IX_7D8E92B8` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pollsvote` */

/*Table structure for table `portalpreferences` */

DROP TABLE IF EXISTS `portalpreferences`;

CREATE TABLE `portalpreferences` (
  `portalPreferencesId` bigint(20) NOT NULL,
  `ownerId` bigint(20) DEFAULT NULL,
  `ownerType` int(11) DEFAULT NULL,
  `preferences` longtext,
  PRIMARY KEY (`portalPreferencesId`),
  KEY `IX_D1F795F1` (`ownerId`,`ownerType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `portalpreferences` */

insert  into `portalpreferences`(`portalPreferencesId`,`ownerId`,`ownerType`,`preferences`) values (20154,0,1,'<portlet-preferences />'),(20161,20155,1,'<portlet-preferences />'),(20536,20159,4,'<portlet-preferences />'),(20550,20199,4,'<portlet-preferences><preference><name>com.liferay.portal.util.SessionClicks#liferay_addpanel_tab</name><value>applications</value></preference><preference><name>com.liferay.portal.util.SessionClicks#p_auth</name><value>GVhgj2DX</value></preference></portlet-preferences>');

/*Table structure for table `portlet` */

DROP TABLE IF EXISTS `portlet`;

CREATE TABLE `portlet` (
  `id_` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `roles` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  UNIQUE KEY `IX_12B5E51D` (`companyId`,`portletId`),
  KEY `IX_80CC9508` (`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `portlet` */

insert  into `portlet`(`id_`,`companyId`,`portletId`,`roles`,`active_`) values (20205,20155,'193','',1),(20206,20155,'194','',1),(20207,20155,'110','',1),(20208,20155,'114','',1),(20209,20155,'115','',1),(20210,20155,'116','',1),(20211,20155,'118','',1),(20212,20155,'97','',1),(20213,20155,'98','',0),(20214,20155,'11','',1),(20215,20155,'99','',1),(20216,20155,'15','',1),(20217,20155,'16','',1),(20218,20155,'19','',1),(20219,20155,'121','',1),(20220,20155,'122','',1),(20221,20155,'3','',1),(20222,20155,'125','',1),(20223,20155,'127','',1),(20224,20155,'128','',1),(20225,20155,'129','',1),(20226,20155,'9','',1),(20227,20155,'20','',1),(20228,20155,'23','',1),(20229,20155,'25','',1),(20230,20155,'26','',1),(20231,20155,'27','',1),(20232,20155,'28','',1),(20233,20155,'29','',1),(20234,20155,'130','',1),(20235,20155,'131','',1),(20236,20155,'132','',1),(20237,20155,'134','',1),(20238,20155,'135','',1),(20239,20155,'137','',1),(20240,20155,'30','',1),(20241,20155,'31','',1),(20242,20155,'33','',1),(20243,20155,'34','',1),(20244,20155,'36','',1),(20245,20155,'39','',1),(20246,20155,'141','',1),(20247,20155,'143','',1),(20248,20155,'146','',1),(20249,20155,'147','',1),(20250,20155,'148','',1),(20251,20155,'149','',1),(20252,20155,'47','',1),(20253,20155,'48','',1),(20254,20155,'150','',1),(20255,20155,'151','',1),(20256,20155,'152','',1),(20257,20155,'153','',1),(20258,20155,'154','',1),(20259,20155,'157','',1),(20260,20155,'158','',1),(20261,20155,'50','',1),(20262,20155,'54','',1),(20263,20155,'56','',1),(20264,20155,'58','',1),(20265,20155,'59','',1),(20266,20155,'161','',1),(20267,20155,'162','',1),(20268,20155,'164','',1),(20269,20155,'166','',1),(20270,20155,'167','',1),(20271,20155,'169','',1),(20272,20155,'61','',1),(20273,20155,'62','',0),(20274,20155,'64','',1),(20275,20155,'66','',1),(20276,20155,'67','',1),(20277,20155,'173','',0),(20278,20155,'175','',1),(20279,20155,'176','',1),(20280,20155,'178','',1),(20281,20155,'179','',1),(20282,20155,'70','',1),(20283,20155,'71','',1),(20284,20155,'73','',1),(20285,20155,'77','',1),(20286,20155,'180','',1),(20287,20155,'181','',1),(20288,20155,'182','',1),(20289,20155,'183','',1),(20290,20155,'184','',1),(20291,20155,'186','',1),(20292,20155,'187','',1),(20293,20155,'100','',1),(20294,20155,'188','',1),(20295,20155,'101','',1),(20296,20155,'102','',1),(20297,20155,'107','',1),(20298,20155,'108','',1),(20299,20155,'82','',1),(20300,20155,'83','',1),(20301,20155,'84','',1),(20302,20155,'85','',1),(20445,20155,'1_WAR_calendarportlet','',1),(20496,20155,'1_WAR_notificationsportlet','',1),(20501,20155,'1_WAR_opensocialportlet','',1),(20502,20155,'2_WAR_opensocialportlet','',1),(20503,20155,'3_WAR_opensocialportlet','',1),(20504,20155,'4_WAR_opensocialportlet','',1),(20511,20155,'1_WAR_webformportlet','',1),(20512,20155,'rowdataportlet_WAR_ubiportlet','',1),(20513,20155,'drivingbehavioroverviewportlet_WAR_ubiportlet','',1),(20514,20155,'navigationportlet_WAR_ubiportlet','',1),(20515,20155,'ubiscoreanalysisportlet_WAR_ubiportlet','',1);

/*Table structure for table `portletitem` */

DROP TABLE IF EXISTS `portletitem`;

CREATE TABLE `portletitem` (
  `portletItemId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`portletItemId`),
  KEY `IX_96BDD537` (`groupId`,`classNameId`),
  KEY `IX_D699243F` (`groupId`,`name`,`portletId`,`classNameId`),
  KEY `IX_2C61314E` (`groupId`,`portletId`),
  KEY `IX_E922D6C0` (`groupId`,`portletId`,`classNameId`),
  KEY `IX_8E71167F` (`groupId`,`portletId`,`classNameId`,`name`),
  KEY `IX_33B8CE8D` (`groupId`,`portletId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `portletitem` */

/*Table structure for table `portletpreferences` */

DROP TABLE IF EXISTS `portletpreferences`;

CREATE TABLE `portletpreferences` (
  `portletPreferencesId` bigint(20) NOT NULL,
  `ownerId` bigint(20) DEFAULT NULL,
  `ownerType` int(11) DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `preferences` longtext,
  PRIMARY KEY (`portletPreferencesId`),
  UNIQUE KEY `IX_C7057FF7` (`ownerId`,`ownerType`,`plid`,`portletId`),
  KEY `IX_E4F13E6E` (`ownerId`,`ownerType`,`plid`),
  KEY `IX_C9A3FCE2` (`ownerId`,`ownerType`,`portletId`),
  KEY `IX_D5EDA3A1` (`ownerType`,`plid`,`portletId`),
  KEY `IX_A3B2A80C` (`ownerType`,`portletId`),
  KEY `IX_F15C1C4F` (`plid`),
  KEY `IX_D340DB76` (`plid`,`portletId`),
  KEY `IX_8E6DA3A1` (`portletId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `portletpreferences` */

insert  into `portletpreferences`(`portletPreferencesId`,`ownerId`,`ownerType`,`plid`,`portletId`,`preferences`) values (20327,0,3,20320,'148_INSTANCE_jsmy6xcE4g7n','<portlet-preferences><preference><name>displayStyle</name><value>cloud</value></preference><preference><name>showAssetCount</name><value>true</value></preference><preference><name>maxAssetTags</name><value>10</value></preference><preference><name>showZeroAssetCount</name><value>false</value></preference><preference><name>classNameId</name><value>20007</value></preference></portlet-preferences>'),(20348,0,3,20342,'141_INSTANCE_KU5RbEzZ3khF','<portlet-preferences><preference><name>showAssetCount</name><value>true</value></preference><preference><name>classNameId</name><value>20016</value></preference></portlet-preferences>'),(20367,0,3,20361,'3','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(20368,0,3,20361,'101_INSTANCE_6uN7sjyWWJmP','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>portletSetupTitle_en_US</name><value>Upcoming Events</value></preference><preference><name>anyAssetType</name><value>false</value></preference></portlet-preferences>'),(20393,0,3,20387,'3','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(20394,0,3,20387,'82','<portlet-preferences><preference><name>displayStyle</name><value>3</value></preference></portlet-preferences>'),(20395,0,3,20387,'101_INSTANCE_gSSYCN80ow9y','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>portletSetupTitle_en_US</name><value>Recent Content</value></preference></portlet-preferences>'),(20402,0,3,20396,'20','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(20403,0,3,20396,'101_INSTANCE_1GsB23G56aqh','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>portletSetupTitle_en_US</name><value>Upcoming Events</value></preference><preference><name>anyAssetType</name><value>false</value></preference></portlet-preferences>'),(20410,0,3,20404,'39_INSTANCE_JHjr35gJgp6w','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>urls</name><value>http://partners.userland.com/nytRss/technology.xml</value></preference><preference><name>portletSetupTitle_en_US</name><value>Technology news</value></preference><preference><name>entriesPerFeed</name><value>4</value></preference><preference><name>expandedEntriesPerFeed</name><value>3</value></preference></portlet-preferences>'),(20411,0,3,20404,'39_INSTANCE_bTbvMyLtEEBA','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>urls</name><value>http://www.liferay.com/en/about-us/news/-/blogs/rss</value></preference><preference><name>portletSetupTitle_en_US</name><value>Liferay news</value></preference><preference><name>entriesPerFeed</name><value>4</value></preference><preference><name>expandedEntriesPerFeed</name><value>0</value></preference><preference><name>titles</name><value>Liferay Press Releases</value></preference></portlet-preferences>'),(20537,0,3,20185,'145','<portlet-preferences />'),(20551,0,3,20185,'2_WAR_notificationsportlet','<portlet-preferences />'),(20553,0,3,20176,'190','<portlet-preferences />'),(20554,0,3,20176,'145','<portlet-preferences />'),(20555,0,3,20176,'2_WAR_notificationsportlet','<portlet-preferences />'),(20556,0,3,20176,'134','<portlet-preferences />'),(20561,0,3,20176,'160','<portlet-preferences />'),(20562,0,3,20176,'165','<portlet-preferences />'),(20563,0,3,20176,'156','<portlet-preferences />'),(20576,0,3,20564,'145','<portlet-preferences />'),(20577,0,3,20564,'2_WAR_notificationsportlet','<portlet-preferences />'),(20578,0,3,20570,'145','<portlet-preferences />'),(20579,0,3,20570,'2_WAR_notificationsportlet','<portlet-preferences />'),(20580,0,3,20570,'drivingbehavioroverviewportlet_WAR_ubiportlet','<portlet-preferences />'),(20613,0,3,20601,'145','<portlet-preferences />'),(20614,0,3,20601,'2_WAR_notificationsportlet','<portlet-preferences />'),(20615,0,3,20601,'rowdataportlet_WAR_ubiportlet','<portlet-preferences />'),(20616,0,3,20607,'145','<portlet-preferences />'),(20617,0,3,20607,'2_WAR_notificationsportlet','<portlet-preferences />'),(20618,0,3,20607,'ubiscoreanalysisportlet_WAR_ubiportlet','<portlet-preferences />');

/*Table structure for table `quartz_blob_triggers` */

DROP TABLE IF EXISTS `quartz_blob_triggers`;

CREATE TABLE `quartz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` longblob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `quartz_blob_triggers` */

/*Table structure for table `quartz_calendars` */

DROP TABLE IF EXISTS `quartz_calendars`;

CREATE TABLE `quartz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` longblob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `quartz_calendars` */

/*Table structure for table `quartz_cron_triggers` */

DROP TABLE IF EXISTS `quartz_cron_triggers`;

CREATE TABLE `quartz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `quartz_cron_triggers` */

/*Table structure for table `quartz_fired_triggers` */

DROP TABLE IF EXISTS `quartz_fired_triggers`;

CREATE TABLE `quartz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(20) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` tinyint(4) DEFAULT NULL,
  `REQUESTS_RECOVERY` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IX_BE3835E5` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IX_4BD722BM` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IX_204D31E8` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IX_339E078M` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IX_5005E3AF` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IX_BC2F03B0` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `quartz_fired_triggers` */

/*Table structure for table `quartz_job_details` */

DROP TABLE IF EXISTS `quartz_job_details`;

CREATE TABLE `quartz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` tinyint(4) NOT NULL,
  `IS_NONCONCURRENT` tinyint(4) NOT NULL,
  `IS_UPDATE_DATA` tinyint(4) NOT NULL,
  `REQUESTS_RECOVERY` tinyint(4) NOT NULL,
  `JOB_DATA` longblob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IX_88328984` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IX_779BCA37` (`SCHED_NAME`,`REQUESTS_RECOVERY`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `quartz_job_details` */

/*Table structure for table `quartz_locks` */

DROP TABLE IF EXISTS `quartz_locks`;

CREATE TABLE `quartz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `quartz_locks` */

/*Table structure for table `quartz_paused_trigger_grps` */

DROP TABLE IF EXISTS `quartz_paused_trigger_grps`;

CREATE TABLE `quartz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `quartz_paused_trigger_grps` */

/*Table structure for table `quartz_scheduler_state` */

DROP TABLE IF EXISTS `quartz_scheduler_state`;

CREATE TABLE `quartz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(20) NOT NULL,
  `CHECKIN_INTERVAL` bigint(20) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `quartz_scheduler_state` */

/*Table structure for table `quartz_simple_triggers` */

DROP TABLE IF EXISTS `quartz_simple_triggers`;

CREATE TABLE `quartz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(20) NOT NULL,
  `REPEAT_INTERVAL` bigint(20) NOT NULL,
  `TIMES_TRIGGERED` bigint(20) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `quartz_simple_triggers` */

/*Table structure for table `quartz_simprop_triggers` */

DROP TABLE IF EXISTS `quartz_simprop_triggers`;

CREATE TABLE `quartz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` tinyint(4) DEFAULT NULL,
  `BOOL_PROP_2` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `quartz_simprop_triggers` */

/*Table structure for table `quartz_triggers` */

DROP TABLE IF EXISTS `quartz_triggers`;

CREATE TABLE `quartz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(20) NOT NULL,
  `END_TIME` bigint(20) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` int(11) DEFAULT NULL,
  `JOB_DATA` longblob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IX_186442A4` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IX_1BA1F9DC` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IX_91CA7CCE` (`SCHED_NAME`,`TRIGGER_GROUP`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`,`MISFIRE_INSTR`),
  KEY `IX_D219AFDE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IX_A85822A0` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IX_8AA50BE1` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IX_EEFE382A` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IX_F026CF4C` (`SCHED_NAME`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IX_F2DD7C7E` (`SCHED_NAME`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`,`MISFIRE_INSTR`),
  KEY `IX_1F92813C` (`SCHED_NAME`,`NEXT_FIRE_TIME`,`MISFIRE_INSTR`),
  KEY `IX_99108B6E` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IX_CD7132D0` (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `quartz_triggers` */

/*Table structure for table `ratingsentry` */

DROP TABLE IF EXISTS `ratingsentry`;

CREATE TABLE `ratingsentry` (
  `entryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `score` double DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_B47E3C11` (`userId`,`classNameId`,`classPK`),
  KEY `IX_16184D57` (`classNameId`,`classPK`),
  KEY `IX_A1A8CB8B` (`classNameId`,`classPK`,`score`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ratingsentry` */

/*Table structure for table `ratingsstats` */

DROP TABLE IF EXISTS `ratingsstats`;

CREATE TABLE `ratingsstats` (
  `statsId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `totalEntries` int(11) DEFAULT NULL,
  `totalScore` double DEFAULT NULL,
  `averageScore` double DEFAULT NULL,
  PRIMARY KEY (`statsId`),
  UNIQUE KEY `IX_A6E99284` (`classNameId`,`classPK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ratingsstats` */

/*Table structure for table `region` */

DROP TABLE IF EXISTS `region`;

CREATE TABLE `region` (
  `regionId` bigint(20) NOT NULL,
  `countryId` bigint(20) DEFAULT NULL,
  `regionCode` varchar(75) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`regionId`),
  UNIQUE KEY `IX_A2635F5C` (`countryId`,`regionCode`),
  KEY `IX_2D9A426F` (`active_`),
  KEY `IX_16D87CA7` (`countryId`),
  KEY `IX_11FB3E42` (`countryId`,`active_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `region` */

insert  into `region`(`regionId`,`countryId`,`regionCode`,`name`,`active_`) values (1001,1,'AB','Alberta',1),(1002,1,'BC','British Columbia',1),(1003,1,'MB','Manitoba',1),(1004,1,'NB','New Brunswick',1),(1005,1,'NL','Newfoundland and Labrador',1),(1006,1,'NT','Northwest Territories',1),(1007,1,'NS','Nova Scotia',1),(1008,1,'NU','Nunavut',1),(1009,1,'ON','Ontario',1),(1010,1,'PE','Prince Edward Island',1),(1011,1,'QC','Quebec',1),(1012,1,'SK','Saskatchewan',1),(1013,1,'YT','Yukon',1),(2001,2,'CN-34','Anhui',1),(2002,2,'CN-92','Aomen',1),(2003,2,'CN-11','Beijing',1),(2004,2,'CN-50','Chongqing',1),(2005,2,'CN-35','Fujian',1),(2006,2,'CN-62','Gansu',1),(2007,2,'CN-44','Guangdong',1),(2008,2,'CN-45','Guangxi',1),(2009,2,'CN-52','Guizhou',1),(2010,2,'CN-46','Hainan',1),(2011,2,'CN-13','Hebei',1),(2012,2,'CN-23','Heilongjiang',1),(2013,2,'CN-41','Henan',1),(2014,2,'CN-42','Hubei',1),(2015,2,'CN-43','Hunan',1),(2016,2,'CN-32','Jiangsu',1),(2017,2,'CN-36','Jiangxi',1),(2018,2,'CN-22','Jilin',1),(2019,2,'CN-21','Liaoning',1),(2020,2,'CN-15','Nei Mongol',1),(2021,2,'CN-64','Ningxia',1),(2022,2,'CN-63','Qinghai',1),(2023,2,'CN-61','Shaanxi',1),(2024,2,'CN-37','Shandong',1),(2025,2,'CN-31','Shanghai',1),(2026,2,'CN-14','Shanxi',1),(2027,2,'CN-51','Sichuan',1),(2028,2,'CN-71','Taiwan',1),(2029,2,'CN-12','Tianjin',1),(2030,2,'CN-91','Xianggang',1),(2031,2,'CN-65','Xinjiang',1),(2032,2,'CN-54','Xizang',1),(2033,2,'CN-53','Yunnan',1),(2034,2,'CN-33','Zhejiang',1),(3001,3,'A','Alsace',1),(3002,3,'B','Aquitaine',1),(3003,3,'C','Auvergne',1),(3004,3,'P','Basse-Normandie',1),(3005,3,'D','Bourgogne',1),(3006,3,'E','Bretagne',1),(3007,3,'F','Centre',1),(3008,3,'G','Champagne-Ardenne',1),(3009,3,'H','Corse',1),(3010,3,'GF','Guyane',1),(3011,3,'I','Franche Comté',1),(3012,3,'GP','Guadeloupe',1),(3013,3,'Q','Haute-Normandie',1),(3014,3,'J','Île-de-France',1),(3015,3,'K','Languedoc-Roussillon',1),(3016,3,'L','Limousin',1),(3017,3,'M','Lorraine',1),(3018,3,'MQ','Martinique',1),(3019,3,'N','Midi-Pyrénées',1),(3020,3,'O','Nord Pas de Calais',1),(3021,3,'R','Pays de la Loire',1),(3022,3,'S','Picardie',1),(3023,3,'T','Poitou-Charentes',1),(3024,3,'U','Provence-Alpes-Côte-d\'Azur',1),(3025,3,'RE','Réunion',1),(3026,3,'V','Rhône-Alpes',1),(4001,4,'BW','Baden-Württemberg',1),(4002,4,'BY','Bayern',1),(4003,4,'BE','Berlin',1),(4004,4,'BB','Brandenburg',1),(4005,4,'HB','Bremen',1),(4006,4,'HH','Hamburg',1),(4007,4,'HE','Hessen',1),(4008,4,'MV','Mecklenburg-Vorpommern',1),(4009,4,'NI','Niedersachsen',1),(4010,4,'NW','Nordrhein-Westfalen',1),(4011,4,'RP','Rheinland-Pfalz',1),(4012,4,'SL','Saarland',1),(4013,4,'SN','Sachsen',1),(4014,4,'ST','Sachsen-Anhalt',1),(4015,4,'SH','Schleswig-Holstein',1),(4016,4,'TH','Thüringen',1),(8001,8,'AG','Agrigento',1),(8002,8,'AL','Alessandria',1),(8003,8,'AN','Ancona',1),(8004,8,'AO','Aosta',1),(8005,8,'AR','Arezzo',1),(8006,8,'AP','Ascoli Piceno',1),(8007,8,'AT','Asti',1),(8008,8,'AV','Avellino',1),(8009,8,'BA','Bari',1),(8010,8,'BT','Barletta-Andria-Trani',1),(8011,8,'BL','Belluno',1),(8012,8,'BN','Benevento',1),(8013,8,'BG','Bergamo',1),(8014,8,'BI','Biella',1),(8015,8,'BO','Bologna',1),(8016,8,'BZ','Bolzano',1),(8017,8,'BS','Brescia',1),(8018,8,'BR','Brindisi',1),(8019,8,'CA','Cagliari',1),(8020,8,'CL','Caltanissetta',1),(8021,8,'CB','Campobasso',1),(8022,8,'CI','Carbonia-Iglesias',1),(8023,8,'CE','Caserta',1),(8024,8,'CT','Catania',1),(8025,8,'CZ','Catanzaro',1),(8026,8,'CH','Chieti',1),(8027,8,'CO','Como',1),(8028,8,'CS','Cosenza',1),(8029,8,'CR','Cremona',1),(8030,8,'KR','Crotone',1),(8031,8,'CN','Cuneo',1),(8032,8,'EN','Enna',1),(8033,8,'FM','Fermo',1),(8034,8,'FE','Ferrara',1),(8035,8,'FI','Firenze',1),(8036,8,'FG','Foggia',1),(8037,8,'FC','Forli-Cesena',1),(8038,8,'FR','Frosinone',1),(8039,8,'GE','Genova',1),(8040,8,'GO','Gorizia',1),(8041,8,'GR','Grosseto',1),(8042,8,'IM','Imperia',1),(8043,8,'IS','Isernia',1),(8044,8,'AQ','L\'Aquila',1),(8045,8,'SP','La Spezia',1),(8046,8,'LT','Latina',1),(8047,8,'LE','Lecce',1),(8048,8,'LC','Lecco',1),(8049,8,'LI','Livorno',1),(8050,8,'LO','Lodi',1),(8051,8,'LU','Lucca',1),(8052,8,'MC','Macerata',1),(8053,8,'MN','Mantova',1),(8054,8,'MS','Massa-Carrara',1),(8055,8,'MT','Matera',1),(8056,8,'MA','Medio Campidano',1),(8057,8,'ME','Messina',1),(8058,8,'MI','Milano',1),(8059,8,'MO','Modena',1),(8060,8,'MB','Monza e Brianza',1),(8061,8,'NA','Napoli',1),(8062,8,'NO','Novara',1),(8063,8,'NU','Nuoro',1),(8064,8,'OG','Ogliastra',1),(8065,8,'OT','Olbia-Tempio',1),(8066,8,'OR','Oristano',1),(8067,8,'PD','Padova',1),(8068,8,'PA','Palermo',1),(8069,8,'PR','Parma',1),(8070,8,'PV','Pavia',1),(8071,8,'PG','Perugia',1),(8072,8,'PU','Pesaro e Urbino',1),(8073,8,'PE','Pescara',1),(8074,8,'PC','Piacenza',1),(8075,8,'PI','Pisa',1),(8076,8,'PT','Pistoia',1),(8077,8,'PN','Pordenone',1),(8078,8,'PZ','Potenza',1),(8079,8,'PO','Prato',1),(8080,8,'RG','Ragusa',1),(8081,8,'RA','Ravenna',1),(8082,8,'RC','Reggio Calabria',1),(8083,8,'RE','Reggio Emilia',1),(8084,8,'RI','Rieti',1),(8085,8,'RN','Rimini',1),(8086,8,'RM','Roma',1),(8087,8,'RO','Rovigo',1),(8088,8,'SA','Salerno',1),(8089,8,'SS','Sassari',1),(8090,8,'SV','Savona',1),(8091,8,'SI','Siena',1),(8092,8,'SR','Siracusa',1),(8093,8,'SO','Sondrio',1),(8094,8,'TA','Taranto',1),(8095,8,'TE','Teramo',1),(8096,8,'TR','Terni',1),(8097,8,'TO','Torino',1),(8098,8,'TP','Trapani',1),(8099,8,'TN','Trento',1),(8100,8,'TV','Treviso',1),(8101,8,'TS','Trieste',1),(8102,8,'UD','Udine',1),(8103,8,'VA','Varese',1),(8104,8,'VE','Venezia',1),(8105,8,'VB','Verbano-Cusio-Ossola',1),(8106,8,'VC','Vercelli',1),(8107,8,'VR','Verona',1),(8108,8,'VV','Vibo Valentia',1),(8109,8,'VI','Vicenza',1),(8110,8,'VT','Viterbo',1),(11001,11,'DR','Drenthe',1),(11002,11,'FL','Flevoland',1),(11003,11,'FR','Friesland',1),(11004,11,'GE','Gelderland',1),(11005,11,'GR','Groningen',1),(11006,11,'LI','Limburg',1),(11007,11,'NB','Noord-Brabant',1),(11008,11,'NH','Noord-Holland',1),(11009,11,'OV','Overijssel',1),(11010,11,'UT','Utrecht',1),(11011,11,'ZE','Zeeland',1),(11012,11,'ZH','Zuid-Holland',1),(15001,15,'AN','Andalusia',1),(15002,15,'AR','Aragon',1),(15003,15,'AS','Asturias',1),(15004,15,'IB','Balearic Islands',1),(15005,15,'PV','Basque Country',1),(15006,15,'CN','Canary Islands',1),(15007,15,'CB','Cantabria',1),(15008,15,'CL','Castile and Leon',1),(15009,15,'CM','Castile-La Mancha',1),(15010,15,'CT','Catalonia',1),(15011,15,'CE','Ceuta',1),(15012,15,'EX','Extremadura',1),(15013,15,'GA','Galicia',1),(15014,15,'LO','La Rioja',1),(15015,15,'M','Madrid',1),(15016,15,'ML','Melilla',1),(15017,15,'MU','Murcia',1),(15018,15,'NA','Navarra',1),(15019,15,'VC','Valencia',1),(19001,19,'AL','Alabama',1),(19002,19,'AK','Alaska',1),(19003,19,'AZ','Arizona',1),(19004,19,'AR','Arkansas',1),(19005,19,'CA','California',1),(19006,19,'CO','Colorado',1),(19007,19,'CT','Connecticut',1),(19008,19,'DC','District of Columbia',1),(19009,19,'DE','Delaware',1),(19010,19,'FL','Florida',1),(19011,19,'GA','Georgia',1),(19012,19,'HI','Hawaii',1),(19013,19,'ID','Idaho',1),(19014,19,'IL','Illinois',1),(19015,19,'IN','Indiana',1),(19016,19,'IA','Iowa',1),(19017,19,'KS','Kansas',1),(19018,19,'KY','Kentucky ',1),(19019,19,'LA','Louisiana ',1),(19020,19,'ME','Maine',1),(19021,19,'MD','Maryland',1),(19022,19,'MA','Massachusetts',1),(19023,19,'MI','Michigan',1),(19024,19,'MN','Minnesota',1),(19025,19,'MS','Mississippi',1),(19026,19,'MO','Missouri',1),(19027,19,'MT','Montana',1),(19028,19,'NE','Nebraska',1),(19029,19,'NV','Nevada',1),(19030,19,'NH','New Hampshire',1),(19031,19,'NJ','New Jersey',1),(19032,19,'NM','New Mexico',1),(19033,19,'NY','New York',1),(19034,19,'NC','North Carolina',1),(19035,19,'ND','North Dakota',1),(19036,19,'OH','Ohio',1),(19037,19,'OK','Oklahoma ',1),(19038,19,'OR','Oregon',1),(19039,19,'PA','Pennsylvania',1),(19040,19,'PR','Puerto Rico',1),(19041,19,'RI','Rhode Island',1),(19042,19,'SC','South Carolina',1),(19043,19,'SD','South Dakota',1),(19044,19,'TN','Tennessee',1),(19045,19,'TX','Texas',1),(19046,19,'UT','Utah',1),(19047,19,'VT','Vermont',1),(19048,19,'VA','Virginia',1),(19049,19,'WA','Washington',1),(19050,19,'WV','West Virginia',1),(19051,19,'WI','Wisconsin',1),(19052,19,'WY','Wyoming',1),(32001,32,'ACT','Australian Capital Territory',1),(32002,32,'NSW','New South Wales',1),(32003,32,'NT','Northern Territory',1),(32004,32,'QLD','Queensland',1),(32005,32,'SA','South Australia',1),(32006,32,'TAS','Tasmania',1),(32007,32,'VIC','Victoria',1),(32008,32,'WA','Western Australia',1),(144001,144,'MX-AGS','Aguascalientes',1),(144002,144,'MX-BCN','Baja California',1),(144003,144,'MX-BCS','Baja California Sur',1),(144004,144,'MX-CAM','Campeche',1),(144005,144,'MX-CHP','Chiapas',1),(144006,144,'MX-CHI','Chihuahua',1),(144007,144,'MX-COA','Coahuila',1),(144008,144,'MX-COL','Colima',1),(144009,144,'MX-DUR','Durango',1),(144010,144,'MX-GTO','Guanajuato',1),(144011,144,'MX-GRO','Guerrero',1),(144012,144,'MX-HGO','Hidalgo',1),(144013,144,'MX-JAL','Jalisco',1),(144014,144,'MX-MEX','Mexico',1),(144015,144,'MX-MIC','Michoacan',1),(144016,144,'MX-MOR','Morelos',1),(144017,144,'MX-NAY','Nayarit',1),(144018,144,'MX-NLE','Nuevo Leon',1),(144019,144,'MX-OAX','Oaxaca',1),(144020,144,'MX-PUE','Puebla',1),(144021,144,'MX-QRO','Queretaro',1),(144023,144,'MX-ROO','Quintana Roo',1),(144024,144,'MX-SLP','San Luis Potosí',1),(144025,144,'MX-SIN','Sinaloa',1),(144026,144,'MX-SON','Sonora',1),(144027,144,'MX-TAB','Tabasco',1),(144028,144,'MX-TAM','Tamaulipas',1),(144029,144,'MX-TLX','Tlaxcala',1),(144030,144,'MX-VER','Veracruz',1),(144031,144,'MX-YUC','Yucatan',1),(144032,144,'MX-ZAC','Zacatecas',1),(164001,164,'01','Østfold',1),(164002,164,'02','Akershus',1),(164003,164,'03','Oslo',1),(164004,164,'04','Hedmark',1),(164005,164,'05','Oppland',1),(164006,164,'06','Buskerud',1),(164007,164,'07','Vestfold',1),(164008,164,'08','Telemark',1),(164009,164,'09','Aust-Agder',1),(164010,164,'10','Vest-Agder',1),(164011,164,'11','Rogaland',1),(164012,164,'12','Hordaland',1),(164013,164,'14','Sogn og Fjordane',1),(164014,164,'15','Møre of Romsdal',1),(164015,164,'16','Sør-Trøndelag',1),(164016,164,'17','Nord-Trøndelag',1),(164017,164,'18','Nordland',1),(164018,164,'19','Troms',1),(164019,164,'20','Finnmark',1),(202001,202,'AG','Aargau',1),(202002,202,'AR','Appenzell Ausserrhoden',1),(202003,202,'AI','Appenzell Innerrhoden',1),(202004,202,'BL','Basel-Landschaft',1),(202005,202,'BS','Basel-Stadt',1),(202006,202,'BE','Bern',1),(202007,202,'FR','Fribourg',1),(202008,202,'GE','Geneva',1),(202009,202,'GL','Glarus',1),(202010,202,'GR','Graubünden',1),(202011,202,'JU','Jura',1),(202012,202,'LU','Lucerne',1),(202013,202,'NE','Neuchâtel',1),(202014,202,'NW','Nidwalden',1),(202015,202,'OW','Obwalden',1),(202016,202,'SH','Schaffhausen',1),(202017,202,'SZ','Schwyz',1),(202018,202,'SO','Solothurn',1),(202019,202,'SG','St. Gallen',1),(202020,202,'TG','Thurgau',1),(202021,202,'TI','Ticino',1),(202022,202,'UR','Uri',1),(202023,202,'VS','Valais',1),(202024,202,'VD','Vaud',1),(202025,202,'ZG','Zug',1),(202026,202,'ZH','Zürich',1);

/*Table structure for table `release_` */

DROP TABLE IF EXISTS `release_`;

CREATE TABLE `release_` (
  `releaseId` bigint(20) NOT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `servletContextName` varchar(75) DEFAULT NULL,
  `buildNumber` int(11) DEFAULT NULL,
  `buildDate` datetime DEFAULT NULL,
  `verified` tinyint(4) DEFAULT NULL,
  `state_` int(11) DEFAULT NULL,
  `testString` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`releaseId`),
  UNIQUE KEY `IX_8BD6BCA7` (`servletContextName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `release_` */

insert  into `release_`(`releaseId`,`createDate`,`modifiedDate`,`servletContextName`,`buildNumber`,`buildDate`,`verified`,`state_`,`testString`) values (1,'2017-12-12 17:38:56','2018-02-08 07:37:08','portal',6205,'2016-01-06 00:00:00',1,0,'You take the blue pill, the story ends, you wake up in your bed and believe whatever you want to believe. You take the red pill, you stay in Wonderland, and I show you how deep the rabbit hole goes.'),(20436,'2017-12-12 12:13:12','2018-02-08 07:38:22','marketplace-portlet',100,NULL,1,0,''),(20444,'2017-12-12 12:13:22','2018-02-08 07:38:25','calendar-portlet',102,NULL,1,0,''),(20463,'2017-12-12 12:13:45','2018-02-08 07:38:37','kaleo-web',110,NULL,1,0,''),(20495,'2017-12-12 12:13:55','2018-02-08 07:38:44','notifications-portlet',110,NULL,1,0,''),(20510,'2017-12-12 12:14:39','2018-02-08 07:39:19','sync-web',101,NULL,1,0,'');

/*Table structure for table `repository` */

DROP TABLE IF EXISTS `repository`;

CREATE TABLE `repository` (
  `uuid_` varchar(75) DEFAULT NULL,
  `repositoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `portletId` varchar(200) DEFAULT NULL,
  `typeSettings` longtext,
  `dlFolderId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`repositoryId`),
  UNIQUE KEY `IX_60C8634C` (`groupId`,`name`,`portletId`),
  UNIQUE KEY `IX_11641E26` (`uuid_`,`groupId`),
  KEY `IX_5253B1FA` (`groupId`),
  KEY `IX_74C17B04` (`uuid_`),
  KEY `IX_F543EA4` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `repository` */

/*Table structure for table `repositoryentry` */

DROP TABLE IF EXISTS `repositoryentry`;

CREATE TABLE `repositoryentry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `repositoryEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `mappedId` varchar(75) DEFAULT NULL,
  `manualCheckInRequired` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`repositoryEntryId`),
  UNIQUE KEY `IX_9BDCF489` (`repositoryId`,`mappedId`),
  UNIQUE KEY `IX_354AA664` (`uuid_`,`groupId`),
  KEY `IX_B7034B27` (`repositoryId`),
  KEY `IX_B9B1506` (`uuid_`),
  KEY `IX_D3B9AF62` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `repositoryentry` */

/*Table structure for table `resourceaction` */

DROP TABLE IF EXISTS `resourceaction`;

CREATE TABLE `resourceaction` (
  `resourceActionId` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `actionId` varchar(75) DEFAULT NULL,
  `bitwiseValue` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceActionId`),
  UNIQUE KEY `IX_EDB9986E` (`name`,`actionId`),
  KEY `IX_81F2DB09` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `resourceaction` */

insert  into `resourceaction`(`resourceActionId`,`name`,`actionId`,`bitwiseValue`) values (1,'com.liferay.portlet.polls','ADD_QUESTION',2),(2,'com.liferay.portlet.polls','PERMISSIONS',4),(3,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','DELETE',2),(4,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','PERMISSIONS',4),(5,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','UPDATE',8),(6,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','VIEW',1),(7,'com.liferay.portal.model.LayoutSetBranch','DELETE',2),(8,'com.liferay.portal.model.LayoutSetBranch','MERGE',4),(9,'com.liferay.portal.model.LayoutSetBranch','PERMISSIONS',8),(10,'com.liferay.portal.model.LayoutSetBranch','UPDATE',16),(11,'com.liferay.portlet.journal.model.JournalArticle','ADD_DISCUSSION',2),(12,'com.liferay.portlet.journal.model.JournalArticle','DELETE',4),(13,'com.liferay.portlet.journal.model.JournalArticle','DELETE_DISCUSSION',8),(14,'com.liferay.portlet.journal.model.JournalArticle','EXPIRE',16),(15,'com.liferay.portlet.journal.model.JournalArticle','PERMISSIONS',32),(16,'com.liferay.portlet.journal.model.JournalArticle','UPDATE',64),(17,'com.liferay.portlet.journal.model.JournalArticle','UPDATE_DISCUSSION',128),(18,'com.liferay.portlet.journal.model.JournalArticle','VIEW',1),(19,'com.liferay.portal.model.Team','ASSIGN_MEMBERS',2),(20,'com.liferay.portal.model.Team','DELETE',4),(21,'com.liferay.portal.model.Team','PERMISSIONS',8),(22,'com.liferay.portal.model.Team','UPDATE',16),(23,'com.liferay.portal.model.Team','VIEW',1),(24,'com.liferay.portlet.dynamicdatalists','ADD_RECORD_SET',2),(25,'com.liferay.portlet.dynamicdatalists','ADD_STRUCTURE',4),(26,'com.liferay.portlet.dynamicdatalists','ADD_TEMPLATE',8),(27,'com.liferay.portlet.dynamicdatalists','PERMISSIONS',16),(28,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','DELETE',2),(29,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','PERMISSIONS',4),(30,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','UPDATE',8),(31,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','VIEW',1),(32,'com.liferay.portlet.expando.model.ExpandoColumn','DELETE',2),(33,'com.liferay.portlet.expando.model.ExpandoColumn','PERMISSIONS',4),(34,'com.liferay.portlet.expando.model.ExpandoColumn','UPDATE',8),(35,'com.liferay.portlet.expando.model.ExpandoColumn','VIEW',1),(36,'com.liferay.portlet.polls.model.PollsQuestion','ADD_VOTE',2),(37,'com.liferay.portlet.polls.model.PollsQuestion','DELETE',4),(38,'com.liferay.portlet.polls.model.PollsQuestion','PERMISSIONS',8),(39,'com.liferay.portlet.polls.model.PollsQuestion','UPDATE',16),(40,'com.liferay.portlet.polls.model.PollsQuestion','VIEW',1),(41,'com.liferay.portlet.documentlibrary.model.DLFolder','ACCESS',2),(42,'com.liferay.portlet.documentlibrary.model.DLFolder','ADD_DOCUMENT',4),(43,'com.liferay.portlet.documentlibrary.model.DLFolder','ADD_SHORTCUT',8),(44,'com.liferay.portlet.documentlibrary.model.DLFolder','ADD_SUBFOLDER',16),(45,'com.liferay.portlet.documentlibrary.model.DLFolder','DELETE',32),(46,'com.liferay.portlet.documentlibrary.model.DLFolder','PERMISSIONS',64),(47,'com.liferay.portlet.documentlibrary.model.DLFolder','UPDATE',128),(48,'com.liferay.portlet.documentlibrary.model.DLFolder','VIEW',1),(49,'com.liferay.portal.model.User','DELETE',2),(50,'com.liferay.portal.model.User','IMPERSONATE',4),(51,'com.liferay.portal.model.User','PERMISSIONS',8),(52,'com.liferay.portal.model.User','UPDATE',16),(53,'com.liferay.portal.model.User','VIEW',1),(54,'com.liferay.portlet.asset.model.AssetTag','DELETE',2),(55,'com.liferay.portlet.asset.model.AssetTag','PERMISSIONS',4),(56,'com.liferay.portlet.asset.model.AssetTag','UPDATE',8),(57,'com.liferay.portlet.asset.model.AssetTag','VIEW',1),(58,'com.liferay.portlet.calendar','ADD_EVENT',2),(59,'com.liferay.portlet.calendar','EXPORT_ALL_EVENTS',4),(60,'com.liferay.portlet.calendar','PERMISSIONS',8),(61,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion','DELETE',2),(62,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion','PERMISSIONS',4),(63,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion','UPDATE',8),(64,'com.liferay.portlet.journal.model.JournalFeed','DELETE',2),(65,'com.liferay.portlet.journal.model.JournalFeed','PERMISSIONS',4),(66,'com.liferay.portlet.journal.model.JournalFeed','UPDATE',8),(67,'com.liferay.portlet.journal.model.JournalFeed','VIEW',1),(68,'com.liferay.portlet.bookmarks.model.BookmarksFolder','ACCESS',2),(69,'com.liferay.portlet.bookmarks.model.BookmarksFolder','ADD_ENTRY',4),(70,'com.liferay.portlet.bookmarks.model.BookmarksFolder','ADD_SUBFOLDER',8),(71,'com.liferay.portlet.bookmarks.model.BookmarksFolder','DELETE',16),(72,'com.liferay.portlet.bookmarks.model.BookmarksFolder','PERMISSIONS',32),(73,'com.liferay.portlet.bookmarks.model.BookmarksFolder','SUBSCRIBE',64),(74,'com.liferay.portlet.bookmarks.model.BookmarksFolder','UPDATE',128),(75,'com.liferay.portlet.bookmarks.model.BookmarksFolder','VIEW',1),(76,'com.liferay.portlet.messageboards.model.MBThread','SUBSCRIBE',2),(77,'com.liferay.portlet.messageboards.model.MBThread','VIEW',1),(78,'com.liferay.portlet.messageboards.model.MBThread','PERMISSIONS',4),(79,'com.liferay.portal.model.LayoutPrototype','DELETE',2),(80,'com.liferay.portal.model.LayoutPrototype','PERMISSIONS',4),(81,'com.liferay.portal.model.LayoutPrototype','UPDATE',8),(82,'com.liferay.portal.model.LayoutPrototype','VIEW',1),(83,'com.liferay.portlet.messageboards','ADD_CATEGORY',2),(84,'com.liferay.portlet.messageboards','ADD_FILE',4),(85,'com.liferay.portlet.messageboards','ADD_MESSAGE',8),(86,'com.liferay.portlet.messageboards','BAN_USER',16),(87,'com.liferay.portlet.messageboards','MOVE_THREAD',32),(88,'com.liferay.portlet.messageboards','LOCK_THREAD',64),(89,'com.liferay.portlet.messageboards','PERMISSIONS',128),(90,'com.liferay.portlet.messageboards','REPLY_TO_MESSAGE',256),(91,'com.liferay.portlet.messageboards','SUBSCRIBE',512),(92,'com.liferay.portlet.messageboards','UPDATE_THREAD_PRIORITY',1024),(93,'com.liferay.portlet.messageboards','VIEW',1),(94,'com.liferay.portlet.bookmarks','ADD_ENTRY',2),(95,'com.liferay.portlet.bookmarks','ADD_FOLDER',4),(96,'com.liferay.portlet.bookmarks','PERMISSIONS',8),(97,'com.liferay.portlet.bookmarks','SUBSCRIBE',16),(98,'com.liferay.portlet.bookmarks','VIEW',1),(99,'com.liferay.portlet.softwarecatalog','ADD_FRAMEWORK_VERSION',2),(100,'com.liferay.portlet.softwarecatalog','ADD_PRODUCT_ENTRY',4),(101,'com.liferay.portlet.softwarecatalog','PERMISSIONS',8),(102,'com.liferay.portlet.wiki.model.WikiNode','ADD_ATTACHMENT',2),(103,'com.liferay.portlet.wiki.model.WikiNode','ADD_PAGE',4),(104,'com.liferay.portlet.wiki.model.WikiNode','DELETE',8),(105,'com.liferay.portlet.wiki.model.WikiNode','IMPORT',16),(106,'com.liferay.portlet.wiki.model.WikiNode','PERMISSIONS',32),(107,'com.liferay.portlet.wiki.model.WikiNode','SUBSCRIBE',64),(108,'com.liferay.portlet.wiki.model.WikiNode','UPDATE',128),(109,'com.liferay.portlet.wiki.model.WikiNode','VIEW',1),(110,'com.liferay.portlet.documentlibrary','ADD_DOCUMENT',2),(111,'com.liferay.portlet.documentlibrary','ADD_DOCUMENT_TYPE',4),(112,'com.liferay.portlet.documentlibrary','ADD_FOLDER',8),(113,'com.liferay.portlet.documentlibrary','ADD_REPOSITORY',16),(114,'com.liferay.portlet.documentlibrary','ADD_STRUCTURE',32),(115,'com.liferay.portlet.documentlibrary','ADD_SHORTCUT',64),(116,'com.liferay.portlet.documentlibrary','PERMISSIONS',128),(117,'com.liferay.portlet.documentlibrary','SUBSCRIBE',256),(118,'com.liferay.portlet.documentlibrary','UPDATE',512),(119,'com.liferay.portlet.documentlibrary','VIEW',1),(120,'com.liferay.portlet.calendar.model.CalEvent','ADD_DISCUSSION',2),(121,'com.liferay.portlet.calendar.model.CalEvent','DELETE',4),(122,'com.liferay.portlet.calendar.model.CalEvent','DELETE_DISCUSSION',8),(123,'com.liferay.portlet.calendar.model.CalEvent','PERMISSIONS',16),(124,'com.liferay.portlet.calendar.model.CalEvent','UPDATE',32),(125,'com.liferay.portlet.calendar.model.CalEvent','UPDATE_DISCUSSION',64),(126,'com.liferay.portlet.calendar.model.CalEvent','VIEW',1),(127,'com.liferay.portlet.softwarecatalog.model.SCLicense','DELETE',2),(128,'com.liferay.portlet.softwarecatalog.model.SCLicense','PERMISSIONS',4),(129,'com.liferay.portlet.softwarecatalog.model.SCLicense','UPDATE',8),(130,'com.liferay.portlet.softwarecatalog.model.SCLicense','VIEW',1),(131,'com.liferay.portal.model.Organization','ADD_ORGANIZATION',2),(132,'com.liferay.portal.model.Organization','ASSIGN_MEMBERS',4),(133,'com.liferay.portal.model.Organization','ASSIGN_USER_ROLES',8),(134,'com.liferay.portal.model.Organization','DELETE',16),(135,'com.liferay.portal.model.Organization','MANAGE_ANNOUNCEMENTS',32),(136,'com.liferay.portal.model.Organization','MANAGE_SUBORGANIZATIONS',64),(137,'com.liferay.portal.model.Organization','MANAGE_USERS',128),(138,'com.liferay.portal.model.Organization','PERMISSIONS',256),(139,'com.liferay.portal.model.Organization','UPDATE',512),(140,'com.liferay.portal.model.Organization','VIEW',1),(141,'com.liferay.portal.model.Organization','VIEW_MEMBERS',1024),(142,'com.liferay.portal.model.Group','ADD_COMMUNITY',2),(143,'com.liferay.portal.model.Group','ADD_LAYOUT',4),(144,'com.liferay.portal.model.Group','ADD_LAYOUT_BRANCH',8),(145,'com.liferay.portal.model.Group','ADD_LAYOUT_SET_BRANCH',16),(146,'com.liferay.portal.model.Group','ASSIGN_MEMBERS',32),(147,'com.liferay.portal.model.Group','ASSIGN_USER_ROLES',64),(148,'com.liferay.portal.model.Group','CONFIGURE_PORTLETS',128),(149,'com.liferay.portal.model.Group','DELETE',256),(150,'com.liferay.portal.model.Group','EXPORT_IMPORT_LAYOUTS',512),(151,'com.liferay.portal.model.Group','EXPORT_IMPORT_PORTLET_INFO',1024),(152,'com.liferay.portal.model.Group','MANAGE_ANNOUNCEMENTS',2048),(153,'com.liferay.portal.model.Group','MANAGE_ARCHIVED_SETUPS',4096),(154,'com.liferay.portal.model.Group','MANAGE_LAYOUTS',8192),(155,'com.liferay.portal.model.Group','MANAGE_STAGING',16384),(156,'com.liferay.portal.model.Group','MANAGE_SUBGROUPS',32768),(157,'com.liferay.portal.model.Group','MANAGE_TEAMS',65536),(158,'com.liferay.portal.model.Group','PERMISSIONS',131072),(159,'com.liferay.portal.model.Group','PREVIEW_IN_DEVICE',262144),(160,'com.liferay.portal.model.Group','PUBLISH_STAGING',524288),(161,'com.liferay.portal.model.Group','PUBLISH_TO_REMOTE',1048576),(162,'com.liferay.portal.model.Group','UPDATE',2097152),(163,'com.liferay.portal.model.Group','VIEW',1),(164,'com.liferay.portal.model.Group','VIEW_MEMBERS',4194304),(165,'com.liferay.portal.model.Group','VIEW_SITE_ADMINISTRATION',8388608),(166,'com.liferay.portal.model.Group','VIEW_STAGING',16777216),(167,'com.liferay.portlet.shopping.model.ShoppingCategory','ADD_ITEM',2),(168,'com.liferay.portlet.shopping.model.ShoppingCategory','ADD_SUBCATEGORY',4),(169,'com.liferay.portlet.shopping.model.ShoppingCategory','DELETE',8),(170,'com.liferay.portlet.shopping.model.ShoppingCategory','PERMISSIONS',16),(171,'com.liferay.portlet.shopping.model.ShoppingCategory','UPDATE',32),(172,'com.liferay.portlet.shopping.model.ShoppingCategory','VIEW',1),(173,'com.liferay.portlet.shopping.model.ShoppingOrder','DELETE',2),(174,'com.liferay.portlet.shopping.model.ShoppingOrder','PERMISSIONS',4),(175,'com.liferay.portlet.shopping.model.ShoppingOrder','UPDATE',8),(176,'com.liferay.portlet.shopping.model.ShoppingOrder','VIEW',1),(177,'com.liferay.portlet.journal.model.JournalFolder','ACCESS',2),(178,'com.liferay.portlet.journal.model.JournalFolder','ADD_ARTICLE',4),(179,'com.liferay.portlet.journal.model.JournalFolder','ADD_SUBFOLDER',8),(180,'com.liferay.portlet.journal.model.JournalFolder','DELETE',16),(181,'com.liferay.portlet.journal.model.JournalFolder','PERMISSIONS',32),(182,'com.liferay.portlet.journal.model.JournalFolder','UPDATE',64),(183,'com.liferay.portlet.journal.model.JournalFolder','VIEW',1),(184,'com.liferay.portlet.wiki.model.WikiPage','ADD_DISCUSSION',2),(185,'com.liferay.portlet.wiki.model.WikiPage','DELETE',4),(186,'com.liferay.portlet.wiki.model.WikiPage','DELETE_DISCUSSION',8),(187,'com.liferay.portlet.wiki.model.WikiPage','PERMISSIONS',16),(188,'com.liferay.portlet.wiki.model.WikiPage','SUBSCRIBE',32),(189,'com.liferay.portlet.wiki.model.WikiPage','UPDATE',64),(190,'com.liferay.portlet.wiki.model.WikiPage','UPDATE_DISCUSSION',128),(191,'com.liferay.portlet.wiki.model.WikiPage','VIEW',1),(192,'com.liferay.portlet.asset.model.AssetCategory','ADD_CATEGORY',2),(193,'com.liferay.portlet.asset.model.AssetCategory','DELETE',4),(194,'com.liferay.portlet.asset.model.AssetCategory','PERMISSIONS',8),(195,'com.liferay.portlet.asset.model.AssetCategory','UPDATE',16),(196,'com.liferay.portlet.asset.model.AssetCategory','VIEW',1),(197,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','DELETE',2),(198,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','PERMISSIONS',4),(199,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','UPDATE',8),(200,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','VIEW',1),(201,'com.liferay.portlet.shopping.model.ShoppingItem','DELETE',2),(202,'com.liferay.portlet.shopping.model.ShoppingItem','PERMISSIONS',4),(203,'com.liferay.portlet.shopping.model.ShoppingItem','UPDATE',8),(204,'com.liferay.portlet.shopping.model.ShoppingItem','VIEW',1),(205,'com.liferay.portlet.blogs.model.BlogsEntry','ADD_DISCUSSION',2),(206,'com.liferay.portlet.blogs.model.BlogsEntry','DELETE',4),(207,'com.liferay.portlet.blogs.model.BlogsEntry','DELETE_DISCUSSION',8),(208,'com.liferay.portlet.blogs.model.BlogsEntry','PERMISSIONS',16),(209,'com.liferay.portlet.blogs.model.BlogsEntry','UPDATE',32),(210,'com.liferay.portlet.blogs.model.BlogsEntry','UPDATE_DISCUSSION',64),(211,'com.liferay.portlet.blogs.model.BlogsEntry','VIEW',1),(212,'com.liferay.portal.model.PasswordPolicy','ASSIGN_MEMBERS',2),(213,'com.liferay.portal.model.PasswordPolicy','DELETE',4),(214,'com.liferay.portal.model.PasswordPolicy','PERMISSIONS',8),(215,'com.liferay.portal.model.PasswordPolicy','UPDATE',16),(216,'com.liferay.portal.model.PasswordPolicy','VIEW',1),(217,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','ADD_RECORD',2),(218,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','DELETE',4),(219,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','PERMISSIONS',8),(220,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','UPDATE',16),(221,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','VIEW',1),(222,'com.liferay.portlet.shopping','ADD_CATEGORY',2),(223,'com.liferay.portlet.shopping','ADD_ITEM',4),(224,'com.liferay.portlet.shopping','MANAGE_COUPONS',8),(225,'com.liferay.portlet.shopping','MANAGE_ORDERS',16),(226,'com.liferay.portlet.shopping','PERMISSIONS',32),(227,'com.liferay.portlet.shopping','VIEW',1),(228,'com.liferay.portlet.wiki','ADD_NODE',2),(229,'com.liferay.portlet.wiki','PERMISSIONS',4),(230,'com.liferay.portlet.blogs','ADD_ENTRY',2),(231,'com.liferay.portlet.blogs','PERMISSIONS',4),(232,'com.liferay.portlet.blogs','SUBSCRIBE',8),(233,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','DELETE',2),(234,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','PERMISSIONS',4),(235,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','UPDATE',8),(236,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','VIEW',1),(237,'com.liferay.portlet.asset.model.AssetVocabulary','DELETE',2),(238,'com.liferay.portlet.asset.model.AssetVocabulary','PERMISSIONS',4),(239,'com.liferay.portlet.asset.model.AssetVocabulary','UPDATE',8),(240,'com.liferay.portlet.asset.model.AssetVocabulary','VIEW',1),(241,'com.liferay.portlet.bookmarks.model.BookmarksEntry','DELETE',2),(242,'com.liferay.portlet.bookmarks.model.BookmarksEntry','PERMISSIONS',4),(243,'com.liferay.portlet.bookmarks.model.BookmarksEntry','SUBSCRIBE',8),(244,'com.liferay.portlet.bookmarks.model.BookmarksEntry','UPDATE',16),(245,'com.liferay.portlet.bookmarks.model.BookmarksEntry','VIEW',1),(246,'com.liferay.portlet.journal.model.JournalStructure','DELETE',2),(247,'com.liferay.portlet.journal.model.JournalStructure','PERMISSIONS',4),(248,'com.liferay.portlet.journal.model.JournalStructure','UPDATE',8),(249,'com.liferay.portlet.journal.model.JournalStructure','VIEW',1),(250,'com.liferay.portlet.documentlibrary.model.DLFileEntry','ADD_DISCUSSION',2),(251,'com.liferay.portlet.documentlibrary.model.DLFileEntry','DELETE',4),(252,'com.liferay.portlet.documentlibrary.model.DLFileEntry','DELETE_DISCUSSION',8),(253,'com.liferay.portlet.documentlibrary.model.DLFileEntry','OVERRIDE_CHECKOUT',16),(254,'com.liferay.portlet.documentlibrary.model.DLFileEntry','PERMISSIONS',32),(255,'com.liferay.portlet.documentlibrary.model.DLFileEntry','UPDATE',64),(256,'com.liferay.portlet.documentlibrary.model.DLFileEntry','UPDATE_DISCUSSION',128),(257,'com.liferay.portlet.documentlibrary.model.DLFileEntry','VIEW',1),(258,'com.liferay.portlet.messageboards.model.MBMessage','DELETE',2),(259,'com.liferay.portlet.messageboards.model.MBMessage','PERMISSIONS',4),(260,'com.liferay.portlet.messageboards.model.MBMessage','SUBSCRIBE',8),(261,'com.liferay.portlet.messageboards.model.MBMessage','UPDATE',16),(262,'com.liferay.portlet.messageboards.model.MBMessage','VIEW',1),(263,'com.liferay.portlet.journal','ADD_ARTICLE',2),(264,'com.liferay.portlet.journal','ADD_FEED',4),(265,'com.liferay.portlet.journal','ADD_FOLDER',8),(266,'com.liferay.portlet.journal','ADD_STRUCTURE',16),(267,'com.liferay.portlet.journal','ADD_TEMPLATE',32),(268,'com.liferay.portlet.journal','SUBSCRIBE',64),(269,'com.liferay.portlet.journal','VIEW',1),(270,'com.liferay.portlet.journal','PERMISSIONS',128),(271,'com.liferay.portal.model.LayoutSetPrototype','DELETE',2),(272,'com.liferay.portal.model.LayoutSetPrototype','PERMISSIONS',4),(273,'com.liferay.portal.model.LayoutSetPrototype','UPDATE',8),(274,'com.liferay.portal.model.LayoutSetPrototype','VIEW',1),(275,'com.liferay.portal.model.UserGroup','ASSIGN_MEMBERS',2),(276,'com.liferay.portal.model.UserGroup','DELETE',4),(277,'com.liferay.portal.model.UserGroup','MANAGE_ANNOUNCEMENTS',8),(278,'com.liferay.portal.model.UserGroup','PERMISSIONS',16),(279,'com.liferay.portal.model.UserGroup','UPDATE',32),(280,'com.liferay.portal.model.UserGroup','VIEW',1),(281,'com.liferay.portal.model.UserGroup','VIEW_MEMBERS',64),(282,'com.liferay.portal.model.Role','ASSIGN_MEMBERS',2),(283,'com.liferay.portal.model.Role','DEFINE_PERMISSIONS',4),(284,'com.liferay.portal.model.Role','DELETE',8),(285,'com.liferay.portal.model.Role','MANAGE_ANNOUNCEMENTS',16),(286,'com.liferay.portal.model.Role','PERMISSIONS',32),(287,'com.liferay.portal.model.Role','UPDATE',64),(288,'com.liferay.portal.model.Role','VIEW',1),(289,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','DELETE',2),(290,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','PERMISSIONS',4),(291,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','UPDATE',8),(292,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','VIEW',1),(293,'com.liferay.portal.model.Layout','ADD_DISCUSSION',2),(294,'com.liferay.portal.model.Layout','ADD_LAYOUT',4),(295,'com.liferay.portal.model.Layout','CONFIGURE_PORTLETS',8),(296,'com.liferay.portal.model.Layout','CUSTOMIZE',16),(297,'com.liferay.portal.model.Layout','DELETE',32),(298,'com.liferay.portal.model.Layout','DELETE_DISCUSSION',64),(299,'com.liferay.portal.model.Layout','PERMISSIONS',128),(300,'com.liferay.portal.model.Layout','UPDATE',256),(301,'com.liferay.portal.model.Layout','UPDATE_DISCUSSION',512),(302,'com.liferay.portal.model.Layout','VIEW',1),(303,'com.liferay.portlet.asset','ADD_TAG',2),(304,'com.liferay.portlet.asset','PERMISSIONS',4),(305,'com.liferay.portlet.asset','ADD_CATEGORY',8),(306,'com.liferay.portlet.asset','ADD_VOCABULARY',16),(307,'com.liferay.portlet.messageboards.model.MBCategory','ADD_FILE',2),(308,'com.liferay.portlet.messageboards.model.MBCategory','ADD_MESSAGE',4),(309,'com.liferay.portlet.messageboards.model.MBCategory','ADD_SUBCATEGORY',8),(310,'com.liferay.portlet.messageboards.model.MBCategory','DELETE',16),(311,'com.liferay.portlet.messageboards.model.MBCategory','LOCK_THREAD',32),(312,'com.liferay.portlet.messageboards.model.MBCategory','MOVE_THREAD',64),(313,'com.liferay.portlet.messageboards.model.MBCategory','PERMISSIONS',128),(314,'com.liferay.portlet.messageboards.model.MBCategory','REPLY_TO_MESSAGE',256),(315,'com.liferay.portlet.messageboards.model.MBCategory','SUBSCRIBE',512),(316,'com.liferay.portlet.messageboards.model.MBCategory','UPDATE',1024),(317,'com.liferay.portlet.messageboards.model.MBCategory','UPDATE_THREAD_PRIORITY',2048),(318,'com.liferay.portlet.messageboards.model.MBCategory','VIEW',1),(319,'com.liferay.portlet.journal.model.JournalTemplate','DELETE',2),(320,'com.liferay.portlet.journal.model.JournalTemplate','PERMISSIONS',4),(321,'com.liferay.portlet.journal.model.JournalTemplate','UPDATE',8),(322,'com.liferay.portlet.journal.model.JournalTemplate','VIEW',1),(323,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','ADD_DISCUSSION',2),(324,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','DELETE',4),(325,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','DELETE_DISCUSSION',8),(326,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','PERMISSIONS',16),(327,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','UPDATE',32),(328,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','UPDATE_DISCUSSION',64),(329,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','VIEW',1),(330,'com.liferay.portlet.mobiledevicerules','ADD_RULE_GROUP',2),(331,'com.liferay.portlet.mobiledevicerules','ADD_RULE_GROUP_INSTANCE',4),(332,'com.liferay.portlet.mobiledevicerules','CONFIGURATION',8),(333,'com.liferay.portlet.mobiledevicerules','VIEW',1),(334,'com.liferay.portlet.mobiledevicerules','PERMISSIONS',16),(335,'com.liferay.portal.model.LayoutBranch','DELETE',2),(336,'com.liferay.portal.model.LayoutBranch','PERMISSIONS',4),(337,'com.liferay.portal.model.LayoutBranch','UPDATE',8),(338,'com.liferay.portlet.announcements.model.AnnouncementsEntry','DELETE',2),(339,'com.liferay.portlet.announcements.model.AnnouncementsEntry','UPDATE',4),(340,'com.liferay.portlet.announcements.model.AnnouncementsEntry','VIEW',1),(341,'com.liferay.portlet.announcements.model.AnnouncementsEntry','PERMISSIONS',8),(342,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','DELETE',2),(343,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','PERMISSIONS',4),(344,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','UPDATE',8),(345,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','VIEW',1),(346,'25','ACCESS_IN_CONTROL_PANEL',2),(347,'25','CONFIGURATION',4),(348,'25','VIEW',1),(349,'25','PERMISSIONS',8),(350,'25','PREFERENCES',16),(351,'28','ACCESS_IN_CONTROL_PANEL',2),(352,'28','ADD_TO_PAGE',4),(353,'28','CONFIGURATION',8),(354,'28','VIEW',1),(355,'28','PERMISSIONS',16),(356,'28','PREFERENCES',32),(357,'174','ADD_TO_PAGE',2),(358,'174','CONFIGURATION',4),(359,'174','PERMISSIONS',8),(360,'174','PREFERENCES',16),(361,'174','VIEW',1),(362,'110','ADD_TO_PAGE',2),(363,'110','CONFIGURATION',4),(364,'110','PERMISSIONS',8),(365,'110','PREFERENCES',16),(366,'110','VIEW',1),(367,'154','ACCESS_IN_CONTROL_PANEL',2),(368,'154','CONFIGURATION',4),(369,'154','VIEW',1),(370,'154','PERMISSIONS',8),(371,'154','PREFERENCES',16),(372,'134','ACCESS_IN_CONTROL_PANEL',2),(373,'134','CONFIGURATION',4),(374,'134','VIEW',1),(375,'134','PERMISSIONS',8),(376,'134','PREFERENCES',16),(377,'156','ADD_TO_PAGE',2),(378,'156','CONFIGURATION',4),(379,'156','PERMISSIONS',8),(380,'156','PREFERENCES',16),(381,'156','VIEW',1),(382,'178','CONFIGURATION',2),(383,'178','VIEW',1),(384,'178','ADD_TO_PAGE',4),(385,'178','PERMISSIONS',8),(386,'178','PREFERENCES',16),(387,'139','ACCESS_IN_CONTROL_PANEL',2),(388,'139','ADD_EXPANDO',4),(389,'139','CONFIGURATION',8),(390,'139','VIEW',1),(391,'139','PERMISSIONS',16),(392,'139','PREFERENCES',32),(393,'31','ADD_TO_PAGE',2),(394,'31','CONFIGURATION',4),(395,'31','PERMISSIONS',8),(396,'31','PREFERENCES',16),(397,'31','VIEW',1),(398,'98','ACCESS_IN_CONTROL_PANEL',2),(399,'98','ADD_TO_PAGE',4),(400,'98','CONFIGURATION',8),(401,'98','VIEW',1),(402,'98','PERMISSIONS',16),(403,'98','PREFERENCES',32),(404,'99','ACCESS_IN_CONTROL_PANEL',2),(405,'99','CONFIGURATION',4),(406,'99','VIEW',1),(407,'99','PERMISSIONS',8),(408,'99','PREFERENCES',16),(409,'33','ADD_PORTLET_DISPLAY_TEMPLATE',2),(410,'33','ADD_TO_PAGE',4),(411,'33','CONFIGURATION',8),(412,'33','VIEW',1),(413,'33','PERMISSIONS',16),(414,'33','PREFERENCES',32),(415,'34','ADD_TO_PAGE',2),(416,'34','CONFIGURATION',4),(417,'34','VIEW',1),(418,'34','PERMISSIONS',8),(419,'34','PREFERENCES',16),(420,'36','ADD_PORTLET_DISPLAY_TEMPLATE',2),(421,'36','ADD_TO_PAGE',4),(422,'36','CONFIGURATION',8),(423,'36','VIEW',1),(424,'36','PERMISSIONS',16),(425,'36','PREFERENCES',32),(426,'15','ACCESS_IN_CONTROL_PANEL',2),(427,'15','ADD_TO_PAGE',4),(428,'15','CONFIGURATION',8),(429,'15','VIEW',1),(430,'15','PERMISSIONS',16),(431,'15','PREFERENCES',32),(432,'59','ADD_TO_PAGE',2),(433,'59','CONFIGURATION',4),(434,'59','PERMISSIONS',8),(435,'59','PREFERENCES',16),(436,'59','VIEW',1),(437,'19','ADD_TO_PAGE',2),(438,'19','CONFIGURATION',4),(439,'19','VIEW',1),(440,'19','PERMISSIONS',8),(441,'19','PREFERENCES',16),(442,'161','ACCESS_IN_CONTROL_PANEL',2),(443,'161','CONFIGURATION',4),(444,'161','VIEW',1),(445,'161','PERMISSIONS',8),(446,'161','PREFERENCES',16),(447,'162','ACCESS_IN_CONTROL_PANEL',2),(448,'162','CONFIGURATION',4),(449,'162','VIEW',1),(450,'162','PERMISSIONS',8),(451,'162','PREFERENCES',16),(452,'165','ADD_TO_PAGE',2),(453,'165','CONFIGURATION',4),(454,'165','PERMISSIONS',8),(455,'165','PREFERENCES',16),(456,'165','VIEW',1),(457,'166','ACCESS_IN_CONTROL_PANEL',2),(458,'166','ADD_TO_PAGE',4),(459,'166','CONFIGURATION',8),(460,'166','VIEW',1),(461,'166','PERMISSIONS',16),(462,'166','PREFERENCES',32),(463,'167','ACCESS_IN_CONTROL_PANEL',2),(464,'167','ADD_TO_PAGE',4),(465,'167','CONFIGURATION',8),(466,'167','VIEW',1),(467,'167','PERMISSIONS',16),(468,'167','PREFERENCES',32),(469,'146','ACCESS_IN_CONTROL_PANEL',2),(470,'146','CONFIGURATION',4),(471,'146','VIEW',1),(472,'146','PERMISSIONS',8),(473,'146','PREFERENCES',16),(474,'125','ACCESS_IN_CONTROL_PANEL',2),(475,'125','CONFIGURATION',4),(476,'125','EXPORT_USER',8),(477,'125','VIEW',1),(478,'125','PERMISSIONS',16),(479,'125','PREFERENCES',32),(480,'147','ACCESS_IN_CONTROL_PANEL',2),(481,'147','CONFIGURATION',4),(482,'147','VIEW',1),(483,'147','PERMISSIONS',8),(484,'147','PREFERENCES',16),(485,'169','ADD_TO_PAGE',2),(486,'169','CONFIGURATION',4),(487,'169','PERMISSIONS',8),(488,'169','PREFERENCES',16),(489,'169','VIEW',1),(490,'149','ACCESS_IN_CONTROL_PANEL',2),(491,'149','CONFIGURATION',4),(492,'149','VIEW',1),(493,'149','PERMISSIONS',8),(494,'149','PREFERENCES',16),(495,'127','ADD_TO_PAGE',2),(496,'127','CONFIGURATION',4),(497,'127','PERMISSIONS',8),(498,'127','PREFERENCES',16),(499,'127','VIEW',1),(500,'128','ACCESS_IN_CONTROL_PANEL',2),(501,'128','CONFIGURATION',4),(502,'128','VIEW',1),(503,'128','PERMISSIONS',8),(504,'128','PREFERENCES',16),(505,'129','ACCESS_IN_CONTROL_PANEL',2),(506,'129','CONFIGURATION',4),(507,'129','VIEW',1),(508,'129','PERMISSIONS',8),(509,'129','PREFERENCES',16),(510,'8','ACCESS_IN_CONTROL_PANEL',2),(511,'8','ADD_TO_PAGE',4),(512,'8','CONFIGURATION',8),(513,'8','VIEW',1),(514,'8','PERMISSIONS',16),(515,'8','PREFERENCES',32),(516,'83','ADD_ENTRY',2),(517,'83','ADD_TO_PAGE',4),(518,'83','CONFIGURATION',8),(519,'83','VIEW',1),(520,'83','PERMISSIONS',16),(521,'83','PREFERENCES',32),(522,'84','ADD_ENTRY',2),(523,'84','ADD_TO_PAGE',4),(524,'84','CONFIGURATION',8),(525,'84','VIEW',1),(526,'84','PERMISSIONS',16),(527,'84','PREFERENCES',32),(528,'20','ACCESS_IN_CONTROL_PANEL',2),(529,'20','ADD_PORTLET_DISPLAY_TEMPLATE',4),(530,'20','ADD_TO_PAGE',8),(531,'20','CONFIGURATION',16),(532,'20','VIEW',1),(533,'20','PERMISSIONS',32),(534,'20','PREFERENCES',64),(535,'88','VIEW',1),(536,'88','ADD_TO_PAGE',2),(537,'88','CONFIGURATION',4),(538,'88','PERMISSIONS',8),(539,'88','PREFERENCES',16),(540,'88','ACCESS_IN_CONTROL_PANEL',32),(541,'190','VIEW',1),(542,'190','ADD_TO_PAGE',2),(543,'190','CONFIGURATION',4),(544,'190','PERMISSIONS',8),(545,'190','PREFERENCES',16),(546,'190','ACCESS_IN_CONTROL_PANEL',32),(547,'191','VIEW',1),(548,'191','ADD_TO_PAGE',2),(549,'191','CONFIGURATION',4),(550,'191','PERMISSIONS',8),(551,'191','PREFERENCES',16),(552,'191','ACCESS_IN_CONTROL_PANEL',32),(553,'192','VIEW',1),(554,'192','ADD_TO_PAGE',2),(555,'192','CONFIGURATION',4),(556,'192','PERMISSIONS',8),(557,'192','PREFERENCES',16),(558,'192','ACCESS_IN_CONTROL_PANEL',32),(559,'193','VIEW',1),(560,'193','ADD_TO_PAGE',2),(561,'193','CONFIGURATION',4),(562,'193','PERMISSIONS',8),(563,'193','PREFERENCES',16),(564,'193','ACCESS_IN_CONTROL_PANEL',32),(565,'194','VIEW',1),(566,'194','ADD_TO_PAGE',2),(567,'194','CONFIGURATION',4),(568,'194','PERMISSIONS',8),(569,'194','PREFERENCES',16),(570,'194','ACCESS_IN_CONTROL_PANEL',32),(571,'110','ACCESS_IN_CONTROL_PANEL',32),(572,'113','VIEW',1),(573,'113','ADD_TO_PAGE',2),(574,'113','CONFIGURATION',4),(575,'113','PERMISSIONS',8),(576,'113','PREFERENCES',16),(577,'113','ACCESS_IN_CONTROL_PANEL',32),(578,'114','VIEW',1),(579,'114','ADD_TO_PAGE',2),(580,'114','CONFIGURATION',4),(581,'114','PERMISSIONS',8),(582,'114','PREFERENCES',16),(583,'114','ACCESS_IN_CONTROL_PANEL',32),(584,'115','VIEW',1),(585,'115','ADD_TO_PAGE',2),(586,'115','CONFIGURATION',4),(587,'115','PERMISSIONS',8),(588,'115','PREFERENCES',16),(589,'115','ACCESS_IN_CONTROL_PANEL',32),(590,'116','VIEW',1),(591,'116','ADD_TO_PAGE',2),(592,'116','CONFIGURATION',4),(593,'116','PERMISSIONS',8),(594,'116','PREFERENCES',16),(595,'116','ACCESS_IN_CONTROL_PANEL',32),(596,'90','ADD_COMMUNITY',2),(597,'90','ADD_GENERAL_ANNOUNCEMENTS',4),(598,'90','ADD_LAYOUT_PROTOTYPE',8),(599,'90','ADD_LAYOUT_SET_PROTOTYPE',16),(600,'90','ADD_LICENSE',32),(601,'90','ADD_ORGANIZATION',64),(602,'90','ADD_PASSWORD_POLICY',128),(603,'90','ADD_ROLE',256),(604,'90','ADD_USER',512),(605,'90','ADD_USER_GROUP',1024),(606,'90','CONFIGURATION',2048),(607,'90','EXPORT_USER',4096),(608,'90','IMPERSONATE',8192),(609,'90','UNLINK_LAYOUT_SET_PROTOTYPE',16384),(610,'90','VIEW_CONTROL_PANEL',32768),(611,'90','ADD_TO_PAGE',65536),(612,'90','PERMISSIONS',131072),(613,'90','PREFERENCES',262144),(614,'90','VIEW',1),(615,'90','ACCESS_IN_CONTROL_PANEL',524288),(616,'118','VIEW',1),(617,'118','ADD_TO_PAGE',2),(618,'118','CONFIGURATION',4),(619,'118','PERMISSIONS',8),(620,'118','PREFERENCES',16),(621,'118','ACCESS_IN_CONTROL_PANEL',32),(622,'119','VIEW',1),(623,'119','ADD_TO_PAGE',2),(624,'119','CONFIGURATION',4),(625,'119','PERMISSIONS',8),(626,'119','PREFERENCES',16),(627,'119','ACCESS_IN_CONTROL_PANEL',32),(628,'97','VIEW',1),(629,'97','ADD_TO_PAGE',2),(630,'97','CONFIGURATION',4),(631,'97','PERMISSIONS',8),(632,'97','PREFERENCES',16),(633,'97','ACCESS_IN_CONTROL_PANEL',32),(634,'11','ADD_TO_PAGE',2),(635,'11','CONFIGURATION',4),(636,'11','VIEW',1),(637,'11','PERMISSIONS',8),(638,'11','PREFERENCES',16),(639,'11','ACCESS_IN_CONTROL_PANEL',32),(640,'16','VIEW',1),(641,'16','GUEST_PREFERENCES',2),(642,'16','PREFERENCES',4),(643,'16','ADD_TO_PAGE',8),(644,'16','CONFIGURATION',16),(645,'16','PERMISSIONS',32),(646,'16','ACCESS_IN_CONTROL_PANEL',64),(647,'19','ACCESS_IN_CONTROL_PANEL',32),(648,'121','VIEW',1),(649,'121','ADD_TO_PAGE',2),(650,'121','CONFIGURATION',4),(651,'121','PERMISSIONS',8),(652,'121','PREFERENCES',16),(653,'121','ACCESS_IN_CONTROL_PANEL',32),(654,'122','ADD_PORTLET_DISPLAY_TEMPLATE',2),(655,'122','CONFIGURATION',4),(656,'122','VIEW',1),(657,'122','ADD_TO_PAGE',8),(658,'122','PERMISSIONS',16),(659,'122','PREFERENCES',32),(660,'122','ACCESS_IN_CONTROL_PANEL',64),(661,'2','ACCESS_IN_CONTROL_PANEL',2),(662,'2','CONFIGURATION',4),(663,'2','VIEW',1),(664,'2','PERMISSIONS',8),(665,'2','PREFERENCES',16),(666,'3','VIEW',1),(667,'3','ADD_TO_PAGE',2),(668,'3','CONFIGURATION',4),(669,'3','PERMISSIONS',8),(670,'3','PREFERENCES',16),(671,'3','ACCESS_IN_CONTROL_PANEL',32),(672,'124','VIEW',1),(673,'124','ADD_TO_PAGE',2),(674,'124','CONFIGURATION',4),(675,'124','PERMISSIONS',8),(676,'124','PREFERENCES',16),(677,'124','ACCESS_IN_CONTROL_PANEL',32),(678,'127','ACCESS_IN_CONTROL_PANEL',32),(679,'9','VIEW',1),(680,'9','ADD_TO_PAGE',2),(681,'9','CONFIGURATION',4),(682,'9','PERMISSIONS',8),(683,'9','PREFERENCES',16),(684,'9','ACCESS_IN_CONTROL_PANEL',32),(685,'23','VIEW',1),(686,'23','ADD_TO_PAGE',2),(687,'23','CONFIGURATION',4),(688,'23','PERMISSIONS',8),(689,'23','PREFERENCES',16),(690,'23','ACCESS_IN_CONTROL_PANEL',32),(691,'26','VIEW',1),(692,'26','ADD_TO_PAGE',2),(693,'26','CONFIGURATION',4),(694,'26','PERMISSIONS',8),(695,'26','PREFERENCES',16),(696,'26','ACCESS_IN_CONTROL_PANEL',32),(697,'27','VIEW',1),(698,'27','ADD_TO_PAGE',2),(699,'27','CONFIGURATION',4),(700,'27','PERMISSIONS',8),(701,'27','PREFERENCES',16),(702,'27','ACCESS_IN_CONTROL_PANEL',32),(703,'29','ADD_TO_PAGE',2),(704,'29','CONFIGURATION',4),(705,'29','VIEW',1),(706,'29','PERMISSIONS',8),(707,'29','PREFERENCES',16),(708,'29','ACCESS_IN_CONTROL_PANEL',32),(709,'130','ACCESS_IN_CONTROL_PANEL',2),(710,'130','CONFIGURATION',4),(711,'130','VIEW',1),(712,'130','PERMISSIONS',8),(713,'130','PREFERENCES',16),(714,'131','ACCESS_IN_CONTROL_PANEL',2),(715,'131','CONFIGURATION',4),(716,'131','VIEW',1),(717,'131','PERMISSIONS',8),(718,'131','PREFERENCES',16),(719,'132','ACCESS_IN_CONTROL_PANEL',2),(720,'132','CONFIGURATION',4),(721,'132','VIEW',1),(722,'132','PERMISSIONS',8),(723,'132','PREFERENCES',16),(724,'133','VIEW',1),(725,'133','ADD_TO_PAGE',2),(726,'133','CONFIGURATION',4),(727,'133','PERMISSIONS',8),(728,'133','PREFERENCES',16),(729,'133','ACCESS_IN_CONTROL_PANEL',32),(730,'135','ACCESS_IN_CONTROL_PANEL',2),(731,'135','CONFIGURATION',4),(732,'135','VIEW',1),(733,'135','PERMISSIONS',8),(734,'135','PREFERENCES',16),(735,'137','ACCESS_IN_CONTROL_PANEL',2),(736,'137','CONFIGURATION',4),(737,'137','VIEW',1),(738,'137','PERMISSIONS',8),(739,'137','PREFERENCES',16),(740,'30','VIEW',1),(741,'30','ADD_TO_PAGE',2),(742,'30','CONFIGURATION',4),(743,'30','PERMISSIONS',8),(744,'30','PREFERENCES',16),(745,'30','ACCESS_IN_CONTROL_PANEL',32),(746,'31','ACCESS_IN_CONTROL_PANEL',32),(747,'33','ACCESS_IN_CONTROL_PANEL',64),(748,'34','ACCESS_IN_CONTROL_PANEL',32),(749,'36','ACCESS_IN_CONTROL_PANEL',64),(750,'39','VIEW',1),(751,'39','ADD_TO_PAGE',2),(752,'39','CONFIGURATION',4),(753,'39','PERMISSIONS',8),(754,'39','PREFERENCES',16),(755,'39','ACCESS_IN_CONTROL_PANEL',32),(756,'140','ACCESS_IN_CONTROL_PANEL',2),(757,'140','CONFIGURATION',4),(758,'140','VIEW',1),(759,'140','PERMISSIONS',8),(760,'140','PREFERENCES',16),(761,'141','ADD_PORTLET_DISPLAY_TEMPLATE',2),(762,'141','CONFIGURATION',4),(763,'141','VIEW',1),(764,'141','ADD_TO_PAGE',8),(765,'141','PERMISSIONS',16),(766,'141','PREFERENCES',32),(767,'141','ACCESS_IN_CONTROL_PANEL',64),(768,'142','VIEW',1),(769,'142','ADD_TO_PAGE',2),(770,'142','CONFIGURATION',4),(771,'142','PERMISSIONS',8),(772,'142','PREFERENCES',16),(773,'142','ACCESS_IN_CONTROL_PANEL',32),(774,'143','VIEW',1),(775,'143','ADD_TO_PAGE',2),(776,'143','CONFIGURATION',4),(777,'143','PERMISSIONS',8),(778,'143','PREFERENCES',16),(779,'143','ACCESS_IN_CONTROL_PANEL',32),(780,'145','VIEW',1),(781,'145','ADD_TO_PAGE',2),(782,'145','CONFIGURATION',4),(783,'145','PERMISSIONS',8),(784,'145','PREFERENCES',16),(785,'145','ACCESS_IN_CONTROL_PANEL',32),(786,'148','VIEW',1),(787,'148','ADD_TO_PAGE',2),(788,'148','CONFIGURATION',4),(789,'148','PERMISSIONS',8),(790,'148','PREFERENCES',16),(791,'148','ACCESS_IN_CONTROL_PANEL',32),(792,'47','VIEW',1),(793,'47','ADD_TO_PAGE',2),(794,'47','CONFIGURATION',4),(795,'47','PERMISSIONS',8),(796,'47','PREFERENCES',16),(797,'47','ACCESS_IN_CONTROL_PANEL',32),(798,'48','VIEW',1),(799,'48','ADD_TO_PAGE',2),(800,'48','CONFIGURATION',4),(801,'48','PERMISSIONS',8),(802,'48','PREFERENCES',16),(803,'48','ACCESS_IN_CONTROL_PANEL',32),(804,'49','VIEW',1),(805,'49','ADD_TO_PAGE',2),(806,'49','CONFIGURATION',4),(807,'49','PERMISSIONS',8),(808,'49','PREFERENCES',16),(809,'49','ACCESS_IN_CONTROL_PANEL',32),(810,'150','ACCESS_IN_CONTROL_PANEL',2),(811,'150','CONFIGURATION',4),(812,'150','VIEW',1),(813,'150','PERMISSIONS',8),(814,'150','PREFERENCES',16),(815,'151','ACCESS_IN_CONTROL_PANEL',2),(816,'151','CONFIGURATION',4),(817,'151','VIEW',1),(818,'151','PERMISSIONS',8),(819,'151','PREFERENCES',16),(820,'152','ACCESS_IN_CONTROL_PANEL',2),(821,'152','CONFIGURATION',4),(822,'152','VIEW',1),(823,'152','PERMISSIONS',8),(824,'152','PREFERENCES',16),(825,'153','ACCESS_IN_CONTROL_PANEL',2),(826,'153','ADD_TO_PAGE',4),(827,'153','CONFIGURATION',8),(828,'153','VIEW',1),(829,'153','PERMISSIONS',16),(830,'153','PREFERENCES',32),(831,'156','ACCESS_IN_CONTROL_PANEL',32),(832,'157','ACCESS_IN_CONTROL_PANEL',2),(833,'157','CONFIGURATION',4),(834,'157','VIEW',1),(835,'157','PERMISSIONS',8),(836,'157','PREFERENCES',16),(837,'158','ACCESS_IN_CONTROL_PANEL',2),(838,'158','ADD_TO_PAGE',4),(839,'158','CONFIGURATION',8),(840,'158','VIEW',1),(841,'158','PERMISSIONS',16),(842,'158','PREFERENCES',32),(843,'50','VIEW',1),(844,'50','ADD_TO_PAGE',2),(845,'50','CONFIGURATION',4),(846,'50','PERMISSIONS',8),(847,'50','PREFERENCES',16),(848,'50','ACCESS_IN_CONTROL_PANEL',32),(849,'54','VIEW',1),(850,'54','ADD_TO_PAGE',2),(851,'54','CONFIGURATION',4),(852,'54','PERMISSIONS',8),(853,'54','PREFERENCES',16),(854,'54','ACCESS_IN_CONTROL_PANEL',32),(855,'56','ADD_TO_PAGE',2),(856,'56','CONFIGURATION',4),(857,'56','VIEW',1),(858,'56','PERMISSIONS',8),(859,'56','PREFERENCES',16),(860,'56','ACCESS_IN_CONTROL_PANEL',32),(861,'58','ADD_TO_PAGE',2),(862,'58','CONFIGURATION',4),(863,'58','VIEW',1),(864,'58','PERMISSIONS',8),(865,'58','PREFERENCES',16),(866,'58','ACCESS_IN_CONTROL_PANEL',32),(867,'59','ACCESS_IN_CONTROL_PANEL',32),(868,'160','VIEW',1),(869,'160','ADD_TO_PAGE',2),(870,'160','CONFIGURATION',4),(871,'160','PERMISSIONS',8),(872,'160','PREFERENCES',16),(873,'160','ACCESS_IN_CONTROL_PANEL',32),(874,'164','VIEW',1),(875,'164','ADD_TO_PAGE',2),(876,'164','CONFIGURATION',4),(877,'164','PERMISSIONS',8),(878,'164','PREFERENCES',16),(879,'164','ACCESS_IN_CONTROL_PANEL',32),(880,'165','ACCESS_IN_CONTROL_PANEL',32),(881,'169','ACCESS_IN_CONTROL_PANEL',32),(882,'61','VIEW',1),(883,'61','ADD_TO_PAGE',2),(884,'61','CONFIGURATION',4),(885,'61','PERMISSIONS',8),(886,'61','PREFERENCES',16),(887,'61','ACCESS_IN_CONTROL_PANEL',32),(888,'62','VIEW',1),(889,'62','ADD_TO_PAGE',2),(890,'62','CONFIGURATION',4),(891,'62','PERMISSIONS',8),(892,'62','PREFERENCES',16),(893,'62','ACCESS_IN_CONTROL_PANEL',32),(894,'64','VIEW',1),(895,'64','ADD_TO_PAGE',2),(896,'64','CONFIGURATION',4),(897,'64','PERMISSIONS',8),(898,'64','PREFERENCES',16),(899,'64','ACCESS_IN_CONTROL_PANEL',32),(900,'66','VIEW',1),(901,'66','ADD_TO_PAGE',2),(902,'66','CONFIGURATION',4),(903,'66','PERMISSIONS',8),(904,'66','PREFERENCES',16),(905,'66','ACCESS_IN_CONTROL_PANEL',32),(906,'67','VIEW',1),(907,'67','ADD_TO_PAGE',2),(908,'67','CONFIGURATION',4),(909,'67','PERMISSIONS',8),(910,'67','PREFERENCES',16),(911,'67','ACCESS_IN_CONTROL_PANEL',32),(912,'170','VIEW',1),(913,'170','ADD_TO_PAGE',2),(914,'170','CONFIGURATION',4),(915,'170','PERMISSIONS',8),(916,'170','PREFERENCES',16),(917,'170','ACCESS_IN_CONTROL_PANEL',32),(918,'172','VIEW',1),(919,'172','ADD_TO_PAGE',2),(920,'172','CONFIGURATION',4),(921,'172','PERMISSIONS',8),(922,'172','PREFERENCES',16),(923,'172','ACCESS_IN_CONTROL_PANEL',32),(924,'173','VIEW',1),(925,'173','ADD_TO_PAGE',2),(926,'173','CONFIGURATION',4),(927,'173','PERMISSIONS',8),(928,'173','PREFERENCES',16),(929,'173','ACCESS_IN_CONTROL_PANEL',32),(930,'174','ACCESS_IN_CONTROL_PANEL',32),(931,'175','VIEW',1),(932,'175','ADD_TO_PAGE',2),(933,'175','CONFIGURATION',4),(934,'175','PERMISSIONS',8),(935,'175','PREFERENCES',16),(936,'175','ACCESS_IN_CONTROL_PANEL',32),(937,'176','VIEW',1),(938,'176','ADD_TO_PAGE',2),(939,'176','CONFIGURATION',4),(940,'176','PERMISSIONS',8),(941,'176','PREFERENCES',16),(942,'176','ACCESS_IN_CONTROL_PANEL',32),(943,'178','ACCESS_IN_CONTROL_PANEL',32),(944,'179','ACCESS_IN_CONTROL_PANEL',2),(945,'179','CONFIGURATION',4),(946,'179','VIEW',1),(947,'179','PERMISSIONS',8),(948,'179','PREFERENCES',16),(949,'70','VIEW',1),(950,'70','ADD_TO_PAGE',2),(951,'70','CONFIGURATION',4),(952,'70','PERMISSIONS',8),(953,'70','PREFERENCES',16),(954,'70','ACCESS_IN_CONTROL_PANEL',32),(955,'71','ADD_TO_PAGE',2),(956,'71','CONFIGURATION',4),(957,'71','VIEW',1),(958,'71','PERMISSIONS',8),(959,'71','PREFERENCES',16),(960,'71','ACCESS_IN_CONTROL_PANEL',32),(961,'73','ADD_TO_PAGE',2),(962,'73','CONFIGURATION',4),(963,'73','VIEW',1),(964,'73','PERMISSIONS',8),(965,'73','PREFERENCES',16),(966,'73','ACCESS_IN_CONTROL_PANEL',32),(967,'77','VIEW',1),(968,'77','ADD_TO_PAGE',2),(969,'77','CONFIGURATION',4),(970,'77','PERMISSIONS',8),(971,'77','PREFERENCES',16),(972,'77','ACCESS_IN_CONTROL_PANEL',32),(973,'180','VIEW',1),(974,'180','ADD_TO_PAGE',2),(975,'180','CONFIGURATION',4),(976,'180','PERMISSIONS',8),(977,'180','PREFERENCES',16),(978,'180','ACCESS_IN_CONTROL_PANEL',32),(979,'181','VIEW',1),(980,'181','ADD_TO_PAGE',2),(981,'181','CONFIGURATION',4),(982,'181','PERMISSIONS',8),(983,'181','PREFERENCES',16),(984,'181','ACCESS_IN_CONTROL_PANEL',32),(985,'182','VIEW',1),(986,'182','ADD_TO_PAGE',2),(987,'182','CONFIGURATION',4),(988,'182','PERMISSIONS',8),(989,'182','PREFERENCES',16),(990,'182','ACCESS_IN_CONTROL_PANEL',32),(991,'183','VIEW',1),(992,'183','ADD_TO_PAGE',2),(993,'183','CONFIGURATION',4),(994,'183','PERMISSIONS',8),(995,'183','PREFERENCES',16),(996,'183','ACCESS_IN_CONTROL_PANEL',32),(997,'184','ADD_TO_PAGE',2),(998,'184','CONFIGURATION',4),(999,'184','VIEW',1),(1000,'184','PERMISSIONS',8),(1001,'184','PREFERENCES',16),(1002,'184','ACCESS_IN_CONTROL_PANEL',32),(1003,'185','VIEW',1),(1004,'185','ADD_TO_PAGE',2),(1005,'185','CONFIGURATION',4),(1006,'185','PERMISSIONS',8),(1007,'185','PREFERENCES',16),(1008,'185','ACCESS_IN_CONTROL_PANEL',32),(1009,'186','ADD_TO_PAGE',2),(1010,'186','CONFIGURATION',4),(1011,'186','VIEW',1),(1012,'186','PERMISSIONS',8),(1013,'186','PREFERENCES',16),(1014,'186','ACCESS_IN_CONTROL_PANEL',32),(1015,'187','ADD_TO_PAGE',2),(1016,'187','CONFIGURATION',4),(1017,'187','VIEW',1),(1018,'187','PERMISSIONS',8),(1019,'187','PREFERENCES',16),(1020,'187','ACCESS_IN_CONTROL_PANEL',32),(1021,'100','VIEW',1),(1022,'100','ADD_TO_PAGE',2),(1023,'100','CONFIGURATION',4),(1024,'100','PERMISSIONS',8),(1025,'100','PREFERENCES',16),(1026,'100','ACCESS_IN_CONTROL_PANEL',32),(1027,'188','ADD_TO_PAGE',2),(1028,'188','CONFIGURATION',4),(1029,'188','VIEW',1),(1030,'188','PERMISSIONS',8),(1031,'188','PREFERENCES',16),(1032,'188','ACCESS_IN_CONTROL_PANEL',32),(1033,'101','ADD_PORTLET_DISPLAY_TEMPLATE',2),(1034,'101','ADD_TO_PAGE',4),(1035,'101','CONFIGURATION',8),(1036,'101','SUBSCRIBE',16),(1037,'101','VIEW',1),(1038,'101','PERMISSIONS',32),(1039,'101','PREFERENCES',64),(1040,'101','ACCESS_IN_CONTROL_PANEL',128),(1041,'102','VIEW',1),(1042,'102','ADD_TO_PAGE',2),(1043,'102','CONFIGURATION',4),(1044,'102','PERMISSIONS',8),(1045,'102','PREFERENCES',16),(1046,'102','ACCESS_IN_CONTROL_PANEL',32),(1047,'103','VIEW',1),(1048,'103','ADD_TO_PAGE',2),(1049,'103','CONFIGURATION',4),(1050,'103','PERMISSIONS',8),(1051,'103','PREFERENCES',16),(1052,'103','ACCESS_IN_CONTROL_PANEL',32),(1053,'107','VIEW',1),(1054,'107','ADD_TO_PAGE',2),(1055,'107','CONFIGURATION',4),(1056,'107','PERMISSIONS',8),(1057,'107','PREFERENCES',16),(1058,'107','ACCESS_IN_CONTROL_PANEL',32),(1059,'108','VIEW',1),(1060,'108','ADD_TO_PAGE',2),(1061,'108','CONFIGURATION',4),(1062,'108','PERMISSIONS',8),(1063,'108','PREFERENCES',16),(1064,'108','ACCESS_IN_CONTROL_PANEL',32),(1065,'82','VIEW',1),(1066,'82','ADD_TO_PAGE',2),(1067,'82','CONFIGURATION',4),(1068,'82','PERMISSIONS',8),(1069,'82','PREFERENCES',16),(1070,'82','ACCESS_IN_CONTROL_PANEL',32),(1071,'83','ACCESS_IN_CONTROL_PANEL',64),(1072,'84','ACCESS_IN_CONTROL_PANEL',64),(1073,'85','ADD_TO_PAGE',2),(1074,'85','CONFIGURATION',4),(1075,'85','VIEW',1),(1076,'85','PERMISSIONS',8),(1077,'85','PREFERENCES',16),(1078,'85','ADD_PORTLET_DISPLAY_TEMPLATE',32),(1079,'85','ACCESS_IN_CONTROL_PANEL',64),(1080,'86','VIEW',1),(1081,'86','ADD_TO_PAGE',2),(1082,'86','CONFIGURATION',4),(1083,'86','PERMISSIONS',8),(1084,'86','PREFERENCES',16),(1085,'86','ACCESS_IN_CONTROL_PANEL',32),(1086,'1_WAR_marketplaceportlet','VIEW',1),(1087,'1_WAR_marketplaceportlet','ADD_TO_PAGE',2),(1088,'1_WAR_marketplaceportlet','CONFIGURATION',4),(1089,'1_WAR_marketplaceportlet','PERMISSIONS',8),(1090,'1_WAR_marketplaceportlet','PREFERENCES',16),(1091,'1_WAR_marketplaceportlet','ACCESS_IN_CONTROL_PANEL',32),(1092,'3_WAR_marketplaceportlet','VIEW',1),(1093,'3_WAR_marketplaceportlet','ADD_TO_PAGE',2),(1094,'3_WAR_marketplaceportlet','CONFIGURATION',4),(1095,'3_WAR_marketplaceportlet','PERMISSIONS',8),(1096,'3_WAR_marketplaceportlet','PREFERENCES',16),(1097,'3_WAR_marketplaceportlet','ACCESS_IN_CONTROL_PANEL',32),(1098,'2_WAR_marketplaceportlet','VIEW',1),(1099,'2_WAR_marketplaceportlet','ADD_TO_PAGE',2),(1100,'2_WAR_marketplaceportlet','CONFIGURATION',4),(1101,'2_WAR_marketplaceportlet','PERMISSIONS',8),(1102,'2_WAR_marketplaceportlet','PREFERENCES',16),(1103,'2_WAR_marketplaceportlet','ACCESS_IN_CONTROL_PANEL',32),(1104,'1_WAR_calendarportlet','ACCESS_IN_CONTROL_PANEL',2),(1105,'1_WAR_calendarportlet','ADD_TO_PAGE',4),(1106,'1_WAR_calendarportlet','CONFIGURATION',8),(1107,'1_WAR_calendarportlet','VIEW',1),(1108,'1_WAR_calendarportlet','PERMISSIONS',16),(1109,'1_WAR_calendarportlet','PREFERENCES',32),(1110,'com.liferay.calendar.model.CalendarResource','ADD_CALENDAR',2),(1111,'com.liferay.calendar.model.CalendarResource','DELETE',4),(1112,'com.liferay.calendar.model.CalendarResource','UPDATE',8),(1113,'com.liferay.calendar.model.CalendarResource','VIEW',1),(1114,'com.liferay.calendar.model.CalendarResource','PERMISSIONS',16),(1115,'com.liferay.calendar.model.CalendarBooking','ADD_DISCUSSION',2),(1116,'com.liferay.calendar.model.CalendarBooking','DELETE_DISCUSSION',4),(1117,'com.liferay.calendar.model.CalendarBooking','PERMISSIONS',8),(1118,'com.liferay.calendar.model.CalendarBooking','UPDATE_DISCUSSION',16),(1119,'com.liferay.calendar','ADD_RESOURCE',2),(1120,'com.liferay.calendar','PERMISSIONS',4),(1121,'com.liferay.calendar.model.Calendar','DELETE',2),(1122,'com.liferay.calendar.model.Calendar','MANAGE_BOOKINGS',4),(1123,'com.liferay.calendar.model.Calendar','PERMISSIONS',8),(1124,'com.liferay.calendar.model.Calendar','UPDATE',16),(1125,'com.liferay.calendar.model.Calendar','VIEW',1),(1126,'com.liferay.calendar.model.Calendar','VIEW_BOOKING_DETAILS',32),(1127,'2_WAR_notificationsportlet','VIEW',1),(1128,'2_WAR_notificationsportlet','ADD_TO_PAGE',2),(1129,'2_WAR_notificationsportlet','CONFIGURATION',4),(1130,'2_WAR_notificationsportlet','PERMISSIONS',8),(1131,'2_WAR_notificationsportlet','PREFERENCES',16),(1132,'2_WAR_notificationsportlet','ACCESS_IN_CONTROL_PANEL',32),(1133,'1_WAR_notificationsportlet','VIEW',1),(1134,'1_WAR_notificationsportlet','ADD_TO_PAGE',2),(1135,'1_WAR_notificationsportlet','CONFIGURATION',4),(1136,'1_WAR_notificationsportlet','PERMISSIONS',8),(1137,'1_WAR_notificationsportlet','PREFERENCES',16),(1138,'1_WAR_notificationsportlet','ACCESS_IN_CONTROL_PANEL',32),(1139,'1_WAR_opensocialportlet','ACCESS_IN_CONTROL_PANEL',2),(1140,'1_WAR_opensocialportlet','CONFIGURATION',4),(1141,'1_WAR_opensocialportlet','VIEW',1),(1142,'1_WAR_opensocialportlet','PERMISSIONS',8),(1143,'1_WAR_opensocialportlet','PREFERENCES',16),(1144,'com.liferay.opensocial.model.Gadget','DELETE',2),(1145,'com.liferay.opensocial.model.Gadget','PERMISSIONS',4),(1146,'com.liferay.opensocial.model.Gadget','UPDATE',8),(1147,'com.liferay.opensocial.model.Gadget','VIEW',1),(1148,'com.liferay.opensocial','PERMISSIONS',2),(1149,'com.liferay.opensocial','PUBLISH_GADGET',4),(1150,'2_WAR_opensocialportlet','ADD_TO_PAGE',2),(1151,'2_WAR_opensocialportlet','CONFIGURATION',4),(1152,'2_WAR_opensocialportlet','VIEW',1),(1153,'2_WAR_opensocialportlet','PERMISSIONS',8),(1154,'2_WAR_opensocialportlet','PREFERENCES',16),(1155,'2_WAR_opensocialportlet','ACCESS_IN_CONTROL_PANEL',32),(1156,'3_WAR_opensocialportlet','ADD_TO_PAGE',2),(1157,'3_WAR_opensocialportlet','CONFIGURATION',4),(1158,'3_WAR_opensocialportlet','VIEW',1),(1159,'3_WAR_opensocialportlet','PERMISSIONS',8),(1160,'3_WAR_opensocialportlet','PREFERENCES',16),(1161,'3_WAR_opensocialportlet','ACCESS_IN_CONTROL_PANEL',32),(1162,'4_WAR_opensocialportlet','ACCESS_IN_CONTROL_PANEL',2),(1163,'4_WAR_opensocialportlet','CONFIGURATION',4),(1164,'4_WAR_opensocialportlet','VIEW',1),(1165,'4_WAR_opensocialportlet','PERMISSIONS',8),(1166,'4_WAR_opensocialportlet','PREFERENCES',16),(1167,'1_WAR_webformportlet','VIEW',1),(1168,'1_WAR_webformportlet','ADD_TO_PAGE',2),(1169,'1_WAR_webformportlet','CONFIGURATION',4),(1170,'1_WAR_webformportlet','PERMISSIONS',8),(1171,'1_WAR_webformportlet','PREFERENCES',16),(1172,'1_WAR_webformportlet','ACCESS_IN_CONTROL_PANEL',32),(1173,'rowdataportlet_WAR_ubiportlet','VIEW',1),(1174,'rowdataportlet_WAR_ubiportlet','PREFERENCES',2),(1175,'rowdataportlet_WAR_ubiportlet','ADD_TO_PAGE',4),(1176,'rowdataportlet_WAR_ubiportlet','CONFIGURATION',8),(1177,'rowdataportlet_WAR_ubiportlet','PERMISSIONS',16),(1178,'rowdataportlet_WAR_ubiportlet','ACCESS_IN_CONTROL_PANEL',32),(1179,'drivingbehavioroverviewportlet_WAR_ubiportlet','VIEW',1),(1180,'drivingbehavioroverviewportlet_WAR_ubiportlet','PREFERENCES',2),(1181,'drivingbehavioroverviewportlet_WAR_ubiportlet','ADD_TO_PAGE',4),(1182,'drivingbehavioroverviewportlet_WAR_ubiportlet','CONFIGURATION',8),(1183,'drivingbehavioroverviewportlet_WAR_ubiportlet','PERMISSIONS',16),(1184,'drivingbehavioroverviewportlet_WAR_ubiportlet','ACCESS_IN_CONTROL_PANEL',32),(1185,'navigationportlet_WAR_ubiportlet','VIEW',1),(1186,'navigationportlet_WAR_ubiportlet','ADD_TO_PAGE',2),(1187,'navigationportlet_WAR_ubiportlet','CONFIGURATION',4),(1188,'navigationportlet_WAR_ubiportlet','PERMISSIONS',8),(1189,'navigationportlet_WAR_ubiportlet','PREFERENCES',16),(1190,'navigationportlet_WAR_ubiportlet','ACCESS_IN_CONTROL_PANEL',32),(1191,'ubiscoreanalysisportlet_WAR_ubiportlet','VIEW',1),(1192,'ubiscoreanalysisportlet_WAR_ubiportlet','PREFERENCES',2),(1193,'ubiscoreanalysisportlet_WAR_ubiportlet','ADD_TO_PAGE',4),(1194,'ubiscoreanalysisportlet_WAR_ubiportlet','CONFIGURATION',8),(1195,'ubiscoreanalysisportlet_WAR_ubiportlet','PERMISSIONS',16),(1196,'ubiscoreanalysisportlet_WAR_ubiportlet','ACCESS_IN_CONTROL_PANEL',32);

/*Table structure for table `resourceblock` */

DROP TABLE IF EXISTS `resourceblock`;

CREATE TABLE `resourceblock` (
  `resourceBlockId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `permissionsHash` varchar(75) DEFAULT NULL,
  `referenceCount` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceBlockId`),
  UNIQUE KEY `IX_AEEA209C` (`companyId`,`groupId`,`name`,`permissionsHash`),
  KEY `IX_DA30B086` (`companyId`,`groupId`,`name`),
  KEY `IX_2D4CC782` (`companyId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `resourceblock` */

/*Table structure for table `resourceblockpermission` */

DROP TABLE IF EXISTS `resourceblockpermission`;

CREATE TABLE `resourceblockpermission` (
  `resourceBlockPermissionId` bigint(20) NOT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `actionIds` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceBlockPermissionId`),
  UNIQUE KEY `IX_D63D20BB` (`resourceBlockId`,`roleId`),
  KEY `IX_4AB3756` (`resourceBlockId`),
  KEY `IX_20A2E3D9` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `resourceblockpermission` */

/*Table structure for table `resourcepermission` */

DROP TABLE IF EXISTS `resourcepermission`;

CREATE TABLE `resourcepermission` (
  `resourcePermissionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  `primKey` varchar(255) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `ownerId` bigint(20) DEFAULT NULL,
  `actionIds` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourcePermissionId`),
  UNIQUE KEY `IX_8D83D0CE` (`companyId`,`name`,`scope`,`primKey`,`roleId`),
  KEY `IX_60B99860` (`companyId`,`name`,`scope`),
  KEY `IX_2200AA69` (`companyId`,`name`,`scope`,`primKey`),
  KEY `IX_26284944` (`companyId`,`primKey`),
  KEY `IX_A37A0588` (`roleId`),
  KEY `IX_F4555981` (`scope`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `resourcepermission` */

insert  into `resourcepermission`(`resourcePermissionId`,`companyId`,`name`,`scope`,`primKey`,`roleId`,`ownerId`,`actionIds`) values (1,20155,'2',1,'20155',20166,0,2),(2,20155,'140',1,'20155',20166,0,2),(3,20155,'158',1,'20155',20166,0,6),(4,20155,'153',1,'20155',20166,0,6),(5,20155,'com.liferay.portal.model.Role',4,'20162',20166,0,1),(6,20155,'com.liferay.portal.model.Role',4,'20163',20166,0,1),(7,20155,'com.liferay.portal.model.Role',4,'20164',20166,0,1),(8,20155,'com.liferay.portal.model.Role',4,'20165',20166,0,1),(9,20155,'com.liferay.portal.model.Role',4,'20166',20166,0,1),(10,20155,'com.liferay.portal.model.Role',4,'20167',20166,0,1),(11,20155,'com.liferay.portal.model.Role',4,'20168',20166,0,1),(12,20155,'com.liferay.portal.model.Role',4,'20169',20166,0,1),(13,20155,'com.liferay.portal.model.Role',4,'20170',20166,0,1),(14,20155,'com.liferay.portal.model.Role',4,'20171',20166,0,1),(15,20155,'com.liferay.portal.model.Role',4,'20172',20166,0,1),(16,20155,'com.liferay.portal.model.Layout',4,'20176',20164,20159,1023),(17,20155,'com.liferay.portal.model.Layout',4,'20176',20171,0,19),(18,20155,'com.liferay.portal.model.Layout',4,'20176',20163,0,1),(19,20155,'com.liferay.portal.model.Layout',4,'20185',20164,20159,1023),(20,20155,'com.liferay.portal.model.Layout',4,'20185',20171,0,19),(21,20155,'com.liferay.portal.model.Layout',4,'20185',20163,0,1),(22,20155,'com.liferay.portal.model.Layout',2,'20192',20166,0,1),(23,20155,'com.liferay.portlet.blogs',2,'20192',20166,0,14),(24,20155,'98',2,'20192',20165,0,2),(25,20155,'99',2,'20192',20165,0,2),(26,20155,'15',2,'20192',20165,0,2),(27,20155,'20',2,'20192',20165,0,2),(28,20155,'25',2,'20192',20165,0,2),(29,20155,'28',2,'20192',20165,0,2),(30,20155,'147',2,'20192',20165,0,2),(31,20155,'152',2,'20192',20165,0,2),(32,20155,'154',2,'20192',20165,0,2),(33,20155,'161',2,'20192',20165,0,2),(34,20155,'162',2,'20192',20165,0,2),(35,20155,'167',2,'20192',20165,0,2),(36,20155,'173',2,'20192',20165,0,32),(37,20155,'178',2,'20192',20165,0,32),(38,20155,'179',2,'20192',20165,0,2),(39,20155,'182',2,'20192',20165,0,32),(40,20155,'183',2,'20192',20165,0,32),(41,20155,'com.liferay.portal.model.Group',2,'20192',20165,0,8396800),(42,20155,'com.liferay.portlet.asset',2,'20192',20165,0,30),(43,20155,'com.liferay.portlet.blogs',2,'20192',20165,0,14),(44,20155,'com.liferay.portlet.bookmarks',2,'20192',20165,0,31),(45,20155,'com.liferay.portlet.documentlibrary',2,'20192',20165,0,1023),(46,20155,'com.liferay.portlet.journal',2,'20192',20165,0,255),(47,20155,'com.liferay.portlet.messageboards',2,'20192',20165,0,2047),(48,20155,'com.liferay.portlet.polls',2,'20192',20165,0,6),(49,20155,'com.liferay.portlet.wiki',2,'20192',20165,0,6),(50,20155,'com.liferay.portal.model.User',4,'20199',20164,20199,31),(51,20155,'193',1,'20155',20163,0,2),(52,20155,'193',1,'20155',20165,0,2),(53,20155,'193',1,'20155',20166,0,2),(54,20155,'194',1,'20155',20163,0,2),(55,20155,'194',1,'20155',20165,0,2),(56,20155,'194',1,'20155',20166,0,2),(57,20155,'110',1,'20155',20165,0,2),(58,20155,'110',1,'20155',20166,0,2),(59,20155,'114',1,'20155',20163,0,2),(60,20155,'114',1,'20155',20165,0,2),(61,20155,'114',1,'20155',20166,0,2),(62,20155,'115',1,'20155',20163,0,2),(63,20155,'115',1,'20155',20165,0,2),(64,20155,'115',1,'20155',20166,0,2),(65,20155,'116',1,'20155',20163,0,2),(66,20155,'116',1,'20155',20165,0,2),(67,20155,'116',1,'20155',20166,0,2),(68,20155,'118',1,'20155',20163,0,2),(69,20155,'118',1,'20155',20165,0,2),(70,20155,'118',1,'20155',20166,0,2),(71,20155,'97',1,'20155',20165,0,2),(72,20155,'97',1,'20155',20166,0,2),(73,20155,'98',1,'20155',20165,0,4),(74,20155,'98',1,'20155',20166,0,4),(75,20155,'11',1,'20155',20165,0,2),(76,20155,'11',1,'20155',20166,0,2),(77,20155,'15',1,'20155',20165,0,4),(78,20155,'15',1,'20155',20166,0,4),(79,20155,'16',1,'20155',20165,0,8),(80,20155,'16',1,'20155',20166,0,8),(81,20155,'19',1,'20155',20165,0,2),(82,20155,'19',1,'20155',20166,0,2),(83,20155,'121',1,'20155',20163,0,2),(84,20155,'121',1,'20155',20165,0,2),(85,20155,'121',1,'20155',20166,0,2),(86,20155,'122',1,'20155',20163,0,8),(87,20155,'122',1,'20155',20165,0,8),(88,20155,'122',1,'20155',20166,0,8),(89,20155,'3',1,'20155',20163,0,2),(90,20155,'3',1,'20155',20165,0,2),(91,20155,'3',1,'20155',20166,0,2),(92,20155,'127',1,'20155',20162,0,2),(93,20155,'9',1,'20155',20162,0,2),(94,20155,'20',1,'20155',20163,0,8),(95,20155,'20',1,'20155',20165,0,8),(96,20155,'20',1,'20155',20166,0,8),(97,20155,'23',1,'20155',20165,0,2),(98,20155,'23',1,'20155',20166,0,2),(99,20155,'26',1,'20155',20165,0,2),(100,20155,'26',1,'20155',20166,0,2),(101,20155,'27',1,'20155',20165,0,2),(102,20155,'27',1,'20155',20166,0,2),(103,20155,'28',1,'20155',20165,0,4),(104,20155,'28',1,'20155',20166,0,4),(105,20155,'29',1,'20155',20165,0,2),(106,20155,'29',1,'20155',20166,0,2),(107,20155,'30',1,'20155',20165,0,2),(108,20155,'30',1,'20155',20166,0,2),(109,20155,'31',1,'20155',20163,0,2),(110,20155,'31',1,'20155',20165,0,2),(111,20155,'31',1,'20155',20166,0,2),(112,20155,'33',1,'20155',20163,0,4),(113,20155,'33',1,'20155',20165,0,4),(114,20155,'33',1,'20155',20166,0,4),(115,20155,'34',1,'20155',20165,0,2),(116,20155,'34',1,'20155',20166,0,2),(117,20155,'36',1,'20155',20165,0,4),(118,20155,'36',1,'20155',20166,0,4),(119,20155,'39',1,'20155',20165,0,2),(120,20155,'39',1,'20155',20166,0,2),(121,20155,'141',1,'20155',20163,0,8),(122,20155,'141',1,'20155',20165,0,8),(123,20155,'141',1,'20155',20166,0,8),(124,20155,'143',1,'20155',20163,0,2),(125,20155,'143',1,'20155',20165,0,2),(126,20155,'143',1,'20155',20166,0,2),(127,20155,'148',1,'20155',20163,0,2),(128,20155,'148',1,'20155',20165,0,2),(129,20155,'148',1,'20155',20166,0,2),(130,20155,'47',1,'20155',20163,0,2),(131,20155,'47',1,'20155',20165,0,2),(132,20155,'47',1,'20155',20166,0,2),(133,20155,'48',1,'20155',20165,0,2),(134,20155,'48',1,'20155',20166,0,2),(135,20155,'153',1,'20155',20165,0,4),(136,20155,'158',1,'20155',20165,0,4),(137,20155,'50',1,'20155',20163,0,2),(138,20155,'50',1,'20155',20165,0,2),(139,20155,'50',1,'20155',20166,0,2),(140,20155,'54',1,'20155',20165,0,2),(141,20155,'54',1,'20155',20166,0,2),(142,20155,'56',1,'20155',20163,0,2),(143,20155,'56',1,'20155',20165,0,2),(144,20155,'56',1,'20155',20166,0,2),(145,20155,'58',1,'20155',20163,0,2),(146,20155,'58',1,'20155',20165,0,2),(147,20155,'58',1,'20155',20166,0,2),(148,20155,'59',1,'20155',20165,0,2),(149,20155,'59',1,'20155',20166,0,2),(150,20155,'164',1,'20155',20163,0,2),(151,20155,'164',1,'20155',20165,0,2),(152,20155,'164',1,'20155',20166,0,2),(153,20155,'166',1,'20155',20165,0,4),(154,20155,'166',1,'20155',20166,0,4),(155,20155,'167',1,'20155',20165,0,4),(156,20155,'167',1,'20155',20166,0,4),(157,20155,'169',1,'20155',20165,0,2),(158,20155,'169',1,'20155',20166,0,2),(159,20155,'61',1,'20155',20165,0,2),(160,20155,'61',1,'20155',20166,0,2),(161,20155,'62',1,'20155',20165,0,2),(162,20155,'62',1,'20155',20166,0,2),(163,20155,'64',1,'20155',20163,0,2),(164,20155,'64',1,'20155',20165,0,2),(165,20155,'64',1,'20155',20166,0,2),(166,20155,'66',1,'20155',20165,0,2),(167,20155,'66',1,'20155',20166,0,2),(168,20155,'67',1,'20155',20165,0,2),(169,20155,'67',1,'20155',20166,0,2),(170,20155,'173',1,'20155',20163,0,2),(171,20155,'173',1,'20155',20165,0,2),(172,20155,'173',1,'20155',20166,0,2),(173,20155,'175',1,'20155',20163,0,2),(174,20155,'175',1,'20155',20165,0,2),(175,20155,'175',1,'20155',20166,0,2),(176,20155,'176',1,'20155',20162,0,2),(177,20155,'178',1,'20155',20165,0,4),(178,20155,'178',1,'20155',20166,0,4),(179,20155,'70',1,'20155',20165,0,2),(180,20155,'70',1,'20155',20166,0,2),(181,20155,'71',1,'20155',20163,0,2),(182,20155,'71',1,'20155',20165,0,2),(183,20155,'71',1,'20155',20166,0,2),(184,20155,'73',1,'20155',20163,0,2),(185,20155,'73',1,'20155',20165,0,2),(186,20155,'73',1,'20155',20166,0,2),(187,20155,'77',1,'20155',20163,0,2),(188,20155,'77',1,'20155',20165,0,2),(189,20155,'77',1,'20155',20166,0,2),(190,20155,'180',1,'20155',20163,0,2),(191,20155,'180',1,'20155',20165,0,2),(192,20155,'180',1,'20155',20166,0,2),(193,20155,'181',1,'20155',20163,0,2),(194,20155,'181',1,'20155',20165,0,2),(195,20155,'181',1,'20155',20166,0,2),(196,20155,'182',1,'20155',20165,0,2),(197,20155,'182',1,'20155',20166,0,2),(198,20155,'183',1,'20155',20162,0,2),(199,20155,'184',1,'20155',20163,0,2),(200,20155,'184',1,'20155',20165,0,2),(201,20155,'184',1,'20155',20166,0,2),(202,20155,'186',1,'20155',20165,0,2),(203,20155,'186',1,'20155',20166,0,2),(204,20155,'187',1,'20155',20165,0,2),(205,20155,'187',1,'20155',20166,0,2),(206,20155,'100',1,'20155',20165,0,2),(207,20155,'100',1,'20155',20166,0,2),(208,20155,'188',1,'20155',20165,0,2),(209,20155,'188',1,'20155',20166,0,2),(210,20155,'101',1,'20155',20163,0,4),(211,20155,'101',1,'20155',20165,0,4),(212,20155,'101',1,'20155',20166,0,4),(213,20155,'102',1,'20155',20162,0,2),(214,20155,'107',1,'20155',20165,0,2),(215,20155,'107',1,'20155',20166,0,2),(216,20155,'108',1,'20155',20165,0,2),(217,20155,'108',1,'20155',20166,0,2),(218,20155,'82',1,'20155',20163,0,2),(219,20155,'82',1,'20155',20165,0,2),(220,20155,'82',1,'20155',20166,0,2),(221,20155,'83',1,'20155',20165,0,4),(222,20155,'83',1,'20155',20166,0,4),(223,20155,'84',1,'20155',20165,0,4),(224,20155,'84',1,'20155',20166,0,4),(225,20155,'85',1,'20155',20163,0,2),(226,20155,'85',1,'20155',20165,0,2),(227,20155,'85',1,'20155',20166,0,2),(228,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20303',20164,20159,15),(229,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20303',20166,0,1),(230,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20303',20163,0,1),(231,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20304',20164,20159,15),(232,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20304',20166,0,1),(233,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20304',20163,0,1),(234,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20305',20164,20159,15),(235,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20305',20166,0,1),(236,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20305',20163,0,1),(237,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20307',20164,20159,15),(238,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20307',20166,0,1),(239,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20307',20163,0,1),(240,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20306',20164,20159,15),(241,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20306',20166,0,1),(242,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20306',20163,0,1),(243,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20309',20164,20159,15),(244,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20309',20166,0,1),(245,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20309',20163,0,1),(246,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20308',20164,20159,15),(247,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20308',20166,0,1),(248,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20308',20163,0,1),(249,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20311',20164,20159,15),(250,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20311',20166,0,1),(251,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20311',20163,0,1),(252,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20310',20164,20159,15),(253,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20310',20166,0,1),(254,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20310',20163,0,1),(255,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20313',20164,20159,15),(256,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20313',20166,0,1),(257,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20313',20163,0,1),(258,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20312',20164,20159,15),(259,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20312',20166,0,1),(260,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20312',20163,0,1),(261,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20315',20164,20159,15),(262,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20315',20166,0,1),(263,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20315',20163,0,1),(264,20155,'com.liferay.portal.model.LayoutPrototype',4,'20316',20164,20159,15),(265,20155,'com.liferay.portal.model.Layout',4,'20320',20164,20159,1023),(266,20155,'com.liferay.portal.model.Layout',4,'20320',20171,0,19),(267,20155,'com.liferay.portlet.asset.model.AssetVocabulary',4,'20324',20164,20159,15),(268,20155,'33',4,'20320_LAYOUT_33',20164,0,127),(269,20155,'33',4,'20320_LAYOUT_33',20171,0,1),(270,20155,'33',4,'20320_LAYOUT_33',20163,0,1),(271,20155,'com.liferay.portlet.blogs',4,'20317',20164,0,14),(272,20155,'148',4,'20320_LAYOUT_148_INSTANCE_jsmy6xcE4g7n',20164,0,63),(273,20155,'148',4,'20320_LAYOUT_148_INSTANCE_jsmy6xcE4g7n',20171,0,1),(274,20155,'148',4,'20320_LAYOUT_148_INSTANCE_jsmy6xcE4g7n',20163,0,1),(275,20155,'114',4,'20320_LAYOUT_114',20164,0,63),(276,20155,'114',4,'20320_LAYOUT_114',20171,0,1),(277,20155,'114',4,'20320_LAYOUT_114',20163,0,1),(278,20155,'com.liferay.portal.model.LayoutPrototype',4,'20328',20164,20159,15),(279,20155,'com.liferay.portal.model.Layout',4,'20332',20164,20159,1023),(280,20155,'com.liferay.portal.model.Layout',4,'20332',20171,0,19),(281,20155,'141',4,'20332_LAYOUT_141_INSTANCE_m0mZr1LoWC6w',20164,0,127),(282,20155,'141',4,'20332_LAYOUT_141_INSTANCE_m0mZr1LoWC6w',20171,0,1),(283,20155,'141',4,'20332_LAYOUT_141_INSTANCE_m0mZr1LoWC6w',20163,0,1),(284,20155,'122',4,'20332_LAYOUT_122_INSTANCE_7wQ0Gize8hBT',20164,0,127),(285,20155,'122',4,'20332_LAYOUT_122_INSTANCE_7wQ0Gize8hBT',20171,0,1),(286,20155,'122',4,'20332_LAYOUT_122_INSTANCE_7wQ0Gize8hBT',20163,0,1),(287,20155,'3',4,'20332_LAYOUT_3',20164,0,63),(288,20155,'3',4,'20332_LAYOUT_3',20171,0,1),(289,20155,'3',4,'20332_LAYOUT_3',20163,0,1),(290,20155,'101',4,'20332_LAYOUT_101_INSTANCE_dgyl1iNc0nCK',20164,0,255),(291,20155,'101',4,'20332_LAYOUT_101_INSTANCE_dgyl1iNc0nCK',20171,0,17),(292,20155,'101',4,'20332_LAYOUT_101_INSTANCE_dgyl1iNc0nCK',20163,0,1),(293,20155,'com.liferay.portal.model.LayoutPrototype',4,'20338',20164,20159,15),(294,20155,'com.liferay.portal.model.Layout',4,'20342',20164,20159,1023),(295,20155,'com.liferay.portal.model.Layout',4,'20342',20171,0,19),(296,20155,'36',4,'20342_LAYOUT_36',20164,0,127),(297,20155,'36',4,'20342_LAYOUT_36',20171,0,1),(298,20155,'36',4,'20342_LAYOUT_36',20163,0,1),(299,20155,'com.liferay.portlet.wiki',4,'20339',20164,0,6),(300,20155,'122',4,'20342_LAYOUT_122_INSTANCE_qo1uI77P4wdp',20164,0,127),(301,20155,'122',4,'20342_LAYOUT_122_INSTANCE_qo1uI77P4wdp',20171,0,1),(302,20155,'122',4,'20342_LAYOUT_122_INSTANCE_qo1uI77P4wdp',20163,0,1),(303,20155,'141',4,'20342_LAYOUT_141_INSTANCE_KU5RbEzZ3khF',20164,0,127),(304,20155,'141',4,'20342_LAYOUT_141_INSTANCE_KU5RbEzZ3khF',20171,0,1),(305,20155,'141',4,'20342_LAYOUT_141_INSTANCE_KU5RbEzZ3khF',20163,0,1),(306,20155,'com.liferay.portal.model.LayoutSetPrototype',4,'20349',20164,20159,15),(310,20155,'com.liferay.portal.model.Layout',4,'20361',20164,20159,1023),(311,20155,'com.liferay.portal.model.Layout',4,'20361',20171,0,19),(312,20155,'com.liferay.portal.model.Layout',4,'20361',20163,0,1),(313,20155,'19',4,'20361_LAYOUT_19',20164,0,63),(314,20155,'19',4,'20361_LAYOUT_19',20171,0,1),(315,20155,'19',4,'20361_LAYOUT_19',20163,0,1),(316,20155,'com.liferay.portlet.messageboards',4,'20350',20164,0,2047),(317,20155,'com.liferay.portlet.messageboards',4,'20350',20171,0,781),(318,20155,'com.liferay.portlet.messageboards',4,'20350',20163,0,1),(319,20155,'3',4,'20361_LAYOUT_3',20164,0,63),(320,20155,'3',4,'20361_LAYOUT_3',20171,0,1),(321,20155,'3',4,'20361_LAYOUT_3',20163,0,1),(322,20155,'59',4,'20361_LAYOUT_59_INSTANCE_grjhULKdQRW2',20164,0,63),(323,20155,'59',4,'20361_LAYOUT_59_INSTANCE_grjhULKdQRW2',20171,0,1),(324,20155,'59',4,'20361_LAYOUT_59_INSTANCE_grjhULKdQRW2',20163,0,1),(325,20155,'com.liferay.portlet.polls',4,'20350',20164,0,6),(326,20155,'180',4,'20361_LAYOUT_180',20164,0,63),(327,20155,'180',4,'20361_LAYOUT_180',20171,0,1),(328,20155,'180',4,'20361_LAYOUT_180',20163,0,1),(329,20155,'101',4,'20361_LAYOUT_101_INSTANCE_6uN7sjyWWJmP',20164,0,255),(330,20155,'101',4,'20361_LAYOUT_101_INSTANCE_6uN7sjyWWJmP',20171,0,17),(331,20155,'101',4,'20361_LAYOUT_101_INSTANCE_6uN7sjyWWJmP',20163,0,1),(332,20155,'com.liferay.portal.model.Layout',4,'20369',20164,20159,1023),(333,20155,'com.liferay.portal.model.Layout',4,'20369',20171,0,19),(334,20155,'com.liferay.portal.model.Layout',4,'20369',20163,0,1),(335,20155,'36',4,'20369_LAYOUT_36',20164,0,127),(336,20155,'36',4,'20369_LAYOUT_36',20171,0,1),(337,20155,'36',4,'20369_LAYOUT_36',20163,0,1),(338,20155,'com.liferay.portlet.wiki',4,'20350',20164,0,6),(339,20155,'122',4,'20369_LAYOUT_122_INSTANCE_CmxaXFxhOkY3',20164,0,127),(340,20155,'122',4,'20369_LAYOUT_122_INSTANCE_CmxaXFxhOkY3',20171,0,1),(341,20155,'122',4,'20369_LAYOUT_122_INSTANCE_CmxaXFxhOkY3',20163,0,1),(342,20155,'148',4,'20369_LAYOUT_148_INSTANCE_1PH22hgNRNxF',20164,0,63),(343,20155,'148',4,'20369_LAYOUT_148_INSTANCE_1PH22hgNRNxF',20171,0,1),(344,20155,'148',4,'20369_LAYOUT_148_INSTANCE_1PH22hgNRNxF',20163,0,1),(345,20155,'com.liferay.portal.model.LayoutSetPrototype',4,'20375',20164,20159,15),(349,20155,'com.liferay.portal.model.Layout',4,'20387',20164,20159,1023),(350,20155,'com.liferay.portal.model.Layout',4,'20387',20171,0,19),(351,20155,'com.liferay.portal.model.Layout',4,'20387',20163,0,1),(352,20155,'116',4,'20387_LAYOUT_116',20164,0,63),(353,20155,'116',4,'20387_LAYOUT_116',20171,0,1),(354,20155,'116',4,'20387_LAYOUT_116',20163,0,1),(355,20155,'3',4,'20387_LAYOUT_3',20164,0,63),(356,20155,'3',4,'20387_LAYOUT_3',20171,0,1),(357,20155,'3',4,'20387_LAYOUT_3',20163,0,1),(358,20155,'82',4,'20387_LAYOUT_82',20164,0,63),(359,20155,'82',4,'20387_LAYOUT_82',20171,0,1),(360,20155,'82',4,'20387_LAYOUT_82',20163,0,1),(361,20155,'101',4,'20387_LAYOUT_101_INSTANCE_gSSYCN80ow9y',20164,0,255),(362,20155,'101',4,'20387_LAYOUT_101_INSTANCE_gSSYCN80ow9y',20171,0,17),(363,20155,'101',4,'20387_LAYOUT_101_INSTANCE_gSSYCN80ow9y',20163,0,1),(364,20155,'com.liferay.portal.model.Layout',4,'20396',20164,20159,1023),(365,20155,'com.liferay.portal.model.Layout',4,'20396',20171,0,19),(366,20155,'com.liferay.portal.model.Layout',4,'20396',20163,0,1),(367,20155,'20',4,'20396_LAYOUT_20',20164,0,127),(368,20155,'20',4,'20396_LAYOUT_20',20171,0,1),(369,20155,'20',4,'20396_LAYOUT_20',20163,0,1),(370,20155,'com.liferay.portlet.documentlibrary',4,'20376',20164,0,1023),(371,20155,'com.liferay.portlet.documentlibrary',4,'20376',20171,0,331),(372,20155,'com.liferay.portlet.documentlibrary',4,'20376',20163,0,1),(373,20155,'101',4,'20396_LAYOUT_101_INSTANCE_1GsB23G56aqh',20164,0,255),(374,20155,'101',4,'20396_LAYOUT_101_INSTANCE_1GsB23G56aqh',20171,0,17),(375,20155,'101',4,'20396_LAYOUT_101_INSTANCE_1GsB23G56aqh',20163,0,1),(376,20155,'com.liferay.portal.model.Layout',4,'20404',20164,20159,1023),(377,20155,'com.liferay.portal.model.Layout',4,'20404',20171,0,19),(378,20155,'com.liferay.portal.model.Layout',4,'20404',20163,0,1),(379,20155,'39',4,'20404_LAYOUT_39_INSTANCE_JHjr35gJgp6w',20164,0,63),(380,20155,'39',4,'20404_LAYOUT_39_INSTANCE_JHjr35gJgp6w',20171,0,1),(381,20155,'39',4,'20404_LAYOUT_39_INSTANCE_JHjr35gJgp6w',20163,0,1),(382,20155,'39',4,'20404_LAYOUT_39_INSTANCE_bTbvMyLtEEBA',20164,0,63),(383,20155,'39',4,'20404_LAYOUT_39_INSTANCE_bTbvMyLtEEBA',20171,0,1),(384,20155,'39',4,'20404_LAYOUT_39_INSTANCE_bTbvMyLtEEBA',20163,0,1),(385,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20412',20164,20159,15),(386,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20413',20164,20159,15),(387,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20414',20164,20159,15),(388,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20415',20164,20159,15),(389,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20416',20164,20159,15),(390,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20417',20164,20159,15),(391,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'20418',20164,20159,15),(392,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'20420',20164,20159,15),(393,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'20422',20164,20159,15),(394,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'20425',20164,20159,15),(395,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'20427',20164,20159,15),(396,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'20429',20164,20159,15),(397,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'20431',20164,20159,15),(398,20155,'com.liferay.portlet.expando.model.ExpandoColumn',4,'20438',20164,0,15),(399,20155,'1_WAR_calendarportlet',1,'20155',20162,0,4),(400,20155,'1_WAR_calendarportlet',1,'20155',20163,0,4),(401,20155,'1_WAR_calendarportlet',1,'20155',20165,0,4),(402,20155,'1_WAR_calendarportlet',1,'20155',20166,0,4),(403,20155,'1_WAR_notificationsportlet',1,'20155',20162,0,2),(404,20155,'1_WAR_notificationsportlet',1,'20155',20163,0,2),(405,20155,'1_WAR_notificationsportlet',1,'20155',20165,0,2),(406,20155,'1_WAR_notificationsportlet',1,'20155',20166,0,2),(407,20155,'2_WAR_opensocialportlet',1,'20155',20162,0,2),(408,20155,'2_WAR_opensocialportlet',1,'20155',20163,0,2),(409,20155,'2_WAR_opensocialportlet',1,'20155',20165,0,2),(410,20155,'2_WAR_opensocialportlet',1,'20155',20166,0,2),(411,20155,'3_WAR_opensocialportlet',1,'20155',20162,0,2),(412,20155,'3_WAR_opensocialportlet',1,'20155',20163,0,2),(413,20155,'3_WAR_opensocialportlet',1,'20155',20165,0,2),(414,20155,'3_WAR_opensocialportlet',1,'20155',20166,0,2),(415,20155,'1_WAR_webformportlet',1,'20155',20162,0,2),(416,20155,'1_WAR_webformportlet',1,'20155',20163,0,2),(417,20155,'1_WAR_webformportlet',1,'20155',20165,0,2),(418,20155,'1_WAR_webformportlet',1,'20155',20166,0,2),(419,20155,'rowdataportlet_WAR_ubiportlet',1,'20155',20162,0,4),(420,20155,'rowdataportlet_WAR_ubiportlet',1,'20155',20163,0,4),(421,20155,'rowdataportlet_WAR_ubiportlet',1,'20155',20165,0,4),(422,20155,'rowdataportlet_WAR_ubiportlet',1,'20155',20166,0,4),(423,20155,'drivingbehavioroverviewportlet_WAR_ubiportlet',1,'20155',20162,0,4),(424,20155,'drivingbehavioroverviewportlet_WAR_ubiportlet',1,'20155',20163,0,4),(425,20155,'drivingbehavioroverviewportlet_WAR_ubiportlet',1,'20155',20165,0,4),(426,20155,'drivingbehavioroverviewportlet_WAR_ubiportlet',1,'20155',20166,0,4),(427,20155,'navigationportlet_WAR_ubiportlet',1,'20155',20162,0,2),(428,20155,'navigationportlet_WAR_ubiportlet',1,'20155',20163,0,2),(429,20155,'navigationportlet_WAR_ubiportlet',1,'20155',20165,0,2),(430,20155,'navigationportlet_WAR_ubiportlet',1,'20155',20166,0,2),(431,20155,'ubiscoreanalysisportlet_WAR_ubiportlet',1,'20155',20162,0,4),(432,20155,'ubiscoreanalysisportlet_WAR_ubiportlet',1,'20155',20163,0,4),(433,20155,'ubiscoreanalysisportlet_WAR_ubiportlet',1,'20155',20165,0,4),(434,20155,'ubiscoreanalysisportlet_WAR_ubiportlet',1,'20155',20166,0,4),(435,20155,'com.liferay.portal.model.LayoutSetPrototype',4,'20516',20164,20159,15),(439,20155,'com.liferay.portal.model.Layout',4,'20530',20164,20159,1023),(440,20155,'com.liferay.portal.model.Layout',4,'20530',20171,0,19),(441,20155,'com.liferay.portal.model.Layout',4,'20530',20163,0,1),(442,20155,'58',4,'20185_LAYOUT_58',20164,0,63),(443,20155,'47',4,'20185_LAYOUT_47',20164,0,63),(444,20155,'47',4,'20185_LAYOUT_47',20171,0,1),(445,20155,'58',4,'20185_LAYOUT_58',20171,0,1),(446,20155,'47',4,'20185_LAYOUT_47',20163,0,1),(447,20155,'58',4,'20185_LAYOUT_58',20163,0,1),(448,20155,'145',4,'20185_LAYOUT_145',20164,0,63),(449,20155,'145',4,'20185_LAYOUT_145',20171,0,1),(450,20155,'145',4,'20185_LAYOUT_145',20163,0,1),(451,20155,'com.liferay.portal.model.Layout',4,'20538',20164,20199,1023),(452,20155,'com.liferay.portal.model.Layout',4,'20544',20164,20199,1023),(453,20155,'com.liferay.portal.model.Layout',4,'20544',20166,0,19),(454,20155,'com.liferay.portal.model.Layout',4,'20544',20163,0,1),(455,20155,'2_WAR_notificationsportlet',4,'20185_LAYOUT_2_WAR_notificationsportlet',20164,0,63),(456,20155,'2_WAR_notificationsportlet',4,'20185_LAYOUT_2_WAR_notificationsportlet',20171,0,1),(457,20155,'2_WAR_notificationsportlet',4,'20185_LAYOUT_2_WAR_notificationsportlet',20163,0,1),(458,20155,'com.liferay.portal.model.Group',4,'20557',20164,0,33554431),(459,20155,'com.liferay.portal.model.Layout',4,'20564',20164,20199,1023),(460,20155,'com.liferay.portal.model.Layout',4,'20564',20171,0,19),(461,20155,'com.liferay.portal.model.Layout',4,'20564',20163,0,1),(462,20155,'com.liferay.portal.model.Layout',4,'20570',20164,20199,1023),(463,20155,'com.liferay.portal.model.Layout',4,'20570',20171,0,19),(464,20155,'com.liferay.portal.model.Layout',4,'20570',20163,0,1),(465,20155,'49',4,'20185_LAYOUT_49',20164,0,63),(466,20155,'49',4,'20185_LAYOUT_49',20171,0,1),(467,20155,'49',4,'20185_LAYOUT_49',20163,0,1),(468,20155,'145',4,'20564_LAYOUT_145',20164,0,63),(469,20155,'145',4,'20564_LAYOUT_145',20171,0,1),(470,20155,'145',4,'20564_LAYOUT_145',20163,0,1),(471,20155,'2_WAR_notificationsportlet',4,'20564_LAYOUT_2_WAR_notificationsportlet',20164,0,63),(472,20155,'2_WAR_notificationsportlet',4,'20564_LAYOUT_2_WAR_notificationsportlet',20171,0,1),(473,20155,'2_WAR_notificationsportlet',4,'20564_LAYOUT_2_WAR_notificationsportlet',20163,0,1),(474,20155,'145',4,'20570_LAYOUT_145',20164,0,63),(475,20155,'145',4,'20570_LAYOUT_145',20171,0,1),(476,20155,'145',4,'20570_LAYOUT_145',20163,0,1),(477,20155,'2_WAR_notificationsportlet',4,'20570_LAYOUT_2_WAR_notificationsportlet',20164,0,63),(478,20155,'2_WAR_notificationsportlet',4,'20570_LAYOUT_2_WAR_notificationsportlet',20171,0,1),(479,20155,'2_WAR_notificationsportlet',4,'20570_LAYOUT_2_WAR_notificationsportlet',20163,0,1),(480,20155,'com.liferay.portlet.journal',4,'20557',20164,0,255),(481,20155,'com.liferay.portlet.journal',4,'20557',20171,0,1),(482,20155,'com.liferay.portlet.journal',4,'20557',20163,0,1),(483,20155,'com.liferay.portlet.documentlibrary',4,'20557',20164,0,1023),(484,20155,'com.liferay.portlet.documentlibrary',4,'20557',20171,0,331),(485,20155,'com.liferay.portlet.documentlibrary',4,'20557',20163,0,1),(486,20155,'drivingbehavioroverviewportlet_WAR_ubiportlet',4,'20570_LAYOUT_drivingbehavioroverviewportlet_WAR_ubiportlet',20164,0,63),(487,20155,'drivingbehavioroverviewportlet_WAR_ubiportlet',4,'20570_LAYOUT_drivingbehavioroverviewportlet_WAR_ubiportlet',20171,0,1),(488,20155,'drivingbehavioroverviewportlet_WAR_ubiportlet',4,'20570_LAYOUT_drivingbehavioroverviewportlet_WAR_ubiportlet',20163,0,1),(501,20155,'com.liferay.portal.model.Layout',4,'20601',20164,20199,1023),(502,20155,'com.liferay.portal.model.Layout',4,'20601',20171,0,19),(503,20155,'com.liferay.portal.model.Layout',4,'20601',20163,0,1),(504,20155,'com.liferay.portal.model.Layout',4,'20607',20164,20199,1023),(505,20155,'com.liferay.portal.model.Layout',4,'20607',20171,0,19),(506,20155,'com.liferay.portal.model.Layout',4,'20607',20163,0,1),(507,20155,'145',4,'20601_LAYOUT_145',20164,0,63),(508,20155,'145',4,'20601_LAYOUT_145',20171,0,1),(509,20155,'145',4,'20601_LAYOUT_145',20163,0,1),(510,20155,'2_WAR_notificationsportlet',4,'20601_LAYOUT_2_WAR_notificationsportlet',20164,0,63),(511,20155,'2_WAR_notificationsportlet',4,'20601_LAYOUT_2_WAR_notificationsportlet',20171,0,1),(512,20155,'2_WAR_notificationsportlet',4,'20601_LAYOUT_2_WAR_notificationsportlet',20163,0,1),(513,20155,'rowdataportlet_WAR_ubiportlet',4,'20601_LAYOUT_rowdataportlet_WAR_ubiportlet',20164,0,63),(514,20155,'rowdataportlet_WAR_ubiportlet',4,'20601_LAYOUT_rowdataportlet_WAR_ubiportlet',20171,0,1),(515,20155,'rowdataportlet_WAR_ubiportlet',4,'20601_LAYOUT_rowdataportlet_WAR_ubiportlet',20163,0,1),(516,20155,'145',4,'20607_LAYOUT_145',20164,0,63),(517,20155,'145',4,'20607_LAYOUT_145',20171,0,1),(518,20155,'145',4,'20607_LAYOUT_145',20163,0,1),(519,20155,'2_WAR_notificationsportlet',4,'20607_LAYOUT_2_WAR_notificationsportlet',20164,0,63),(520,20155,'2_WAR_notificationsportlet',4,'20607_LAYOUT_2_WAR_notificationsportlet',20171,0,1),(521,20155,'2_WAR_notificationsportlet',4,'20607_LAYOUT_2_WAR_notificationsportlet',20163,0,1),(522,20155,'ubiscoreanalysisportlet_WAR_ubiportlet',4,'20607_LAYOUT_ubiscoreanalysisportlet_WAR_ubiportlet',20164,0,63),(523,20155,'ubiscoreanalysisportlet_WAR_ubiportlet',4,'20607_LAYOUT_ubiscoreanalysisportlet_WAR_ubiportlet',20171,0,1),(524,20155,'ubiscoreanalysisportlet_WAR_ubiportlet',4,'20607_LAYOUT_ubiscoreanalysisportlet_WAR_ubiportlet',20163,0,1),(601,20155,'49',4,'20607_LAYOUT_49',20164,0,63),(602,20155,'49',4,'20607_LAYOUT_49',20171,0,1),(603,20155,'49',4,'20607_LAYOUT_49',20163,0,1);

/*Table structure for table `resourcetypepermission` */

DROP TABLE IF EXISTS `resourcetypepermission`;

CREATE TABLE `resourcetypepermission` (
  `resourceTypePermissionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `actionIds` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceTypePermissionId`),
  UNIQUE KEY `IX_BA497163` (`companyId`,`groupId`,`name`,`roleId`),
  KEY `IX_7D81F66F` (`companyId`,`name`,`roleId`),
  KEY `IX_A82690E2` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `resourcetypepermission` */

/*Table structure for table `role_` */

DROP TABLE IF EXISTS `role_`;

CREATE TABLE `role_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `roleId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `type_` int(11) DEFAULT NULL,
  `subtype` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`roleId`),
  UNIQUE KEY `IX_A88E424E` (`companyId`,`classNameId`,`classPK`),
  UNIQUE KEY `IX_EBC931B8` (`companyId`,`name`),
  KEY `IX_449A10B9` (`companyId`),
  KEY `IX_F3E1C6FC` (`companyId`,`type_`),
  KEY `IX_F436EC8E` (`name`),
  KEY `IX_5EB4E2FB` (`subtype`),
  KEY `IX_F92B66E6` (`type_`),
  KEY `IX_CBE204` (`type_`,`subtype`),
  KEY `IX_26DB26C5` (`uuid_`),
  KEY `IX_B9FF6043` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `role_` */

insert  into `role_`(`uuid_`,`roleId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`classNameId`,`classPK`,`name`,`title`,`description`,`type_`,`subtype`) values ('b136d4bd-a791-4dc7-ae42-48c82581fc30',20162,20155,20159,'','2017-12-12 12:11:48','2017-12-12 12:11:48',20004,20162,'Administrator','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Administrators are super users who can do anything.</Description></root>',1,''),('ca13c032-fb2e-4d7b-8dcd-b83b83cb00f9',20163,20155,20159,'','2017-12-12 12:11:48','2017-12-12 12:11:48',20004,20163,'Guest','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Unauthenticated users always have this role.</Description></root>',1,''),('049a97f3-a7de-4ff1-a4e1-6a8056f3e2e6',20164,20155,20159,'','2017-12-12 12:11:48','2017-12-12 12:11:48',20004,20164,'Owner','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">This is an implied role with respect to the objects users create.</Description></root>',1,''),('6bc6c6f8-9ad8-4ff3-9eae-9628e00c66b2',20165,20155,20159,'','2017-12-12 12:11:48','2017-12-12 12:11:48',20004,20165,'Power User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Power Users have their own personal site.</Description></root>',1,''),('d7d8245b-0e8b-4733-9f8b-4a3eb8b062d2',20166,20155,20159,'','2017-12-12 12:11:48','2017-12-12 12:11:48',20004,20166,'User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Authenticated users should be assigned this role.</Description></root>',1,''),('249d6261-40b5-4b02-86b1-7022b137e1ce',20167,20155,20159,'','2017-12-12 12:11:48','2017-12-12 12:11:48',20004,20167,'Organization Administrator','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Organization Administrators are super users of their organization but cannot make other users into Organization Administrators.</Description></root>',3,''),('fa80e269-0d03-4c26-9113-ad977017ba06',20168,20155,20159,'','2017-12-12 12:11:48','2017-12-12 12:11:48',20004,20168,'Organization Owner','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Organization Owners are super users of their organization and can assign organization roles to users.</Description></root>',3,''),('d3721c21-01a1-4f4f-b141-cb615f0b3210',20169,20155,20159,'','2017-12-12 12:11:48','2017-12-12 12:11:48',20004,20169,'Organization User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">All users who belong to an organization have this role within that organization.</Description></root>',3,''),('e31eed3d-01b2-45ab-ae10-930dc7e8e34b',20170,20155,20159,'','2017-12-12 12:11:48','2017-12-12 12:11:48',20004,20170,'Site Administrator','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Site Administrators are super users of their site but cannot make other users into Site Administrators.</Description></root>',2,''),('dc3b39f9-aa6b-4fb7-a8f7-bb336696c8b9',20171,20155,20159,'','2017-12-12 12:11:48','2017-12-12 12:11:48',20004,20171,'Site Member','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">All users who belong to a site have this role within that site.</Description></root>',2,''),('2681073c-0607-4233-a860-ab467905da03',20172,20155,20159,'','2017-12-12 12:11:48','2017-12-12 12:11:48',20004,20172,'Site Owner','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Site Owners are super users of their site and can assign site roles to users.</Description></root>',2,''),('01d50ff0-70c4-49d9-a46f-fa938a62f3af',20474,20155,20159,'','2017-12-12 12:13:47','2017-12-12 12:13:47',20004,20474,'Organization Content Reviewer','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Autogenerated role from workflow definition</Description></root>',3,''),('77d8f44b-601c-49a8-a603-8f1f87cae13a',20480,20155,20159,'','2017-12-12 12:13:47','2017-12-12 12:13:47',20004,20480,'Site Content Reviewer','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Autogenerated role from workflow definition</Description></root>',2,''),('ea00a4b6-168b-4e73-9445-02dc31570760',20483,20155,20159,'','2017-12-12 12:13:47','2017-12-12 12:13:47',20004,20483,'Portal Content Reviewer','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Autogenerated role from workflow definition</Description></root>',1,'');

/*Table structure for table `scframeworkversi_scproductvers` */

DROP TABLE IF EXISTS `scframeworkversi_scproductvers`;

CREATE TABLE `scframeworkversi_scproductvers` (
  `frameworkVersionId` bigint(20) NOT NULL,
  `productVersionId` bigint(20) NOT NULL,
  PRIMARY KEY (`frameworkVersionId`,`productVersionId`),
  KEY `IX_3BB93ECA` (`frameworkVersionId`),
  KEY `IX_E8D33FF9` (`productVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `scframeworkversi_scproductvers` */

/*Table structure for table `scframeworkversion` */

DROP TABLE IF EXISTS `scframeworkversion`;

CREATE TABLE `scframeworkversion` (
  `frameworkVersionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `url` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`frameworkVersionId`),
  KEY `IX_C98C0D78` (`companyId`),
  KEY `IX_272991FA` (`groupId`),
  KEY `IX_6E1764F` (`groupId`,`active_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `scframeworkversion` */

/*Table structure for table `sclicense` */

DROP TABLE IF EXISTS `sclicense`;

CREATE TABLE `sclicense` (
  `licenseId` bigint(20) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `url` longtext,
  `openSource` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  `recommended` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`licenseId`),
  KEY `IX_1C841592` (`active_`),
  KEY `IX_5327BB79` (`active_`,`recommended`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sclicense` */

/*Table structure for table `sclicenses_scproductentries` */

DROP TABLE IF EXISTS `sclicenses_scproductentries`;

CREATE TABLE `sclicenses_scproductentries` (
  `licenseId` bigint(20) NOT NULL,
  `productEntryId` bigint(20) NOT NULL,
  PRIMARY KEY (`licenseId`,`productEntryId`),
  KEY `IX_27006638` (`licenseId`),
  KEY `IX_D7710A66` (`productEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sclicenses_scproductentries` */

/*Table structure for table `scproductentry` */

DROP TABLE IF EXISTS `scproductentry`;

CREATE TABLE `scproductentry` (
  `productEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `shortDescription` longtext,
  `longDescription` longtext,
  `pageURL` longtext,
  `author` varchar(75) DEFAULT NULL,
  `repoGroupId` varchar(75) DEFAULT NULL,
  `repoArtifactId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`productEntryId`),
  KEY `IX_5D25244F` (`companyId`),
  KEY `IX_72F87291` (`groupId`),
  KEY `IX_98E6A9CB` (`groupId`,`userId`),
  KEY `IX_7311E812` (`repoGroupId`,`repoArtifactId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `scproductentry` */

/*Table structure for table `scproductscreenshot` */

DROP TABLE IF EXISTS `scproductscreenshot`;

CREATE TABLE `scproductscreenshot` (
  `productScreenshotId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `productEntryId` bigint(20) DEFAULT NULL,
  `thumbnailId` bigint(20) DEFAULT NULL,
  `fullImageId` bigint(20) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`productScreenshotId`),
  KEY `IX_AE8224CC` (`fullImageId`),
  KEY `IX_467956FD` (`productEntryId`),
  KEY `IX_DA913A55` (`productEntryId`,`priority`),
  KEY `IX_6C572DAC` (`thumbnailId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `scproductscreenshot` */

/*Table structure for table `scproductversion` */

DROP TABLE IF EXISTS `scproductversion`;

CREATE TABLE `scproductversion` (
  `productVersionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `productEntryId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `changeLog` longtext,
  `downloadPageURL` longtext,
  `directDownloadURL` varchar(2000) DEFAULT NULL,
  `repoStoreArtifact` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`productVersionId`),
  KEY `IX_7020130F` (`directDownloadURL`(767)),
  KEY `IX_8377A211` (`productEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `scproductversion` */

/*Table structure for table `servicecomponent` */

DROP TABLE IF EXISTS `servicecomponent`;

CREATE TABLE `servicecomponent` (
  `serviceComponentId` bigint(20) NOT NULL,
  `buildNamespace` varchar(75) DEFAULT NULL,
  `buildNumber` bigint(20) DEFAULT NULL,
  `buildDate` bigint(20) DEFAULT NULL,
  `data_` longtext,
  PRIMARY KEY (`serviceComponentId`),
  UNIQUE KEY `IX_4F0315B8` (`buildNamespace`,`buildNumber`),
  KEY `IX_7338606F` (`buildNamespace`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `servicecomponent` */

insert  into `servicecomponent`(`serviceComponentId`,`buildNamespace`,`buildNumber`,`buildDate`,`data_`) values (20435,'Marketplace',4,1410828214125,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table Marketplace_App (\n	uuid_ VARCHAR(75) null,\n	appId LONG not null primary key,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	remoteAppId LONG,\n	title VARCHAR(75) null,\n	description STRING null,\n	category VARCHAR(75) null,\n	iconURL STRING null,\n	version VARCHAR(75) null\n);\n\ncreate table Marketplace_Module (\n	uuid_ VARCHAR(75) null,\n	moduleId LONG not null primary key,\n	appId LONG,\n	bundleSymbolicName VARCHAR(500) null,\n	bundleVersion VARCHAR(75) null,\n	contextName VARCHAR(75) null\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_94A7EF25 on Marketplace_App (category);\ncreate index IX_865B7BD5 on Marketplace_App (companyId);\ncreate index IX_20F14D93 on Marketplace_App (remoteAppId);\ncreate index IX_3E667FE1 on Marketplace_App (uuid_);\ncreate index IX_A7807DA7 on Marketplace_App (uuid_, companyId);\n\ncreate index IX_7DC16D26 on Marketplace_Module (appId);\ncreate index IX_5848F52D on Marketplace_Module (appId, bundleSymbolicName, bundleVersion);\ncreate index IX_C6938724 on Marketplace_Module (appId, contextName);\ncreate index IX_DD03D499 on Marketplace_Module (bundleSymbolicName);\ncreate index IX_F2F1E964 on Marketplace_Module (contextName);\ncreate index IX_A7EFD80E on Marketplace_Module (uuid_);]]></indexes-sql>\n</data>'),(20443,'Calendar',4,1424703239325,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table Calendar (\n	uuid_ VARCHAR(75) null,\n	calendarId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	resourceBlockId LONG,\n	calendarResourceId LONG,\n	name STRING null,\n	description STRING null,\n	timeZoneId VARCHAR(75) null,\n	color INTEGER,\n	defaultCalendar BOOLEAN,\n	enableComments BOOLEAN,\n	enableRatings BOOLEAN\n);\n\ncreate table CalendarBooking (\n	uuid_ VARCHAR(75) null,\n	calendarBookingId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	resourceBlockId LONG,\n	calendarId LONG,\n	calendarResourceId LONG,\n	parentCalendarBookingId LONG,\n	vEventUid VARCHAR(255) null,\n	title STRING null,\n	description TEXT null,\n	location STRING null,\n	startTime LONG,\n	endTime LONG,\n	allDay BOOLEAN,\n	recurrence STRING null,\n	firstReminder LONG,\n	firstReminderType VARCHAR(75) null,\n	secondReminder LONG,\n	secondReminderType VARCHAR(75) null,\n	status INTEGER,\n	statusByUserId LONG,\n	statusByUserName VARCHAR(75) null,\n	statusDate DATE null\n);\n\ncreate table CalendarNotificationTemplate (\n	uuid_ VARCHAR(75) null,\n	calendarNotificationTemplateId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	calendarId LONG,\n	notificationType VARCHAR(75) null,\n	notificationTypeSettings VARCHAR(75) null,\n	notificationTemplateType VARCHAR(75) null,\n	subject VARCHAR(75) null,\n	body TEXT null\n);\n\ncreate table CalendarResource (\n	uuid_ VARCHAR(75) null,\n	calendarResourceId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	resourceBlockId LONG,\n	classNameId LONG,\n	classPK LONG,\n	classUuid VARCHAR(75) null,\n	code_ VARCHAR(75) null,\n	name STRING null,\n	description STRING null,\n	active_ BOOLEAN\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_B53EB0E1 on Calendar (groupId, calendarResourceId);\ncreate index IX_97FC174E on Calendar (groupId, calendarResourceId, defaultCalendar);\ncreate index IX_F0FAF226 on Calendar (resourceBlockId);\ncreate index IX_96C8590 on Calendar (uuid_);\ncreate index IX_97656498 on Calendar (uuid_, companyId);\ncreate unique index IX_3AE311A on Calendar (uuid_, groupId);\n\ncreate index IX_D300DFCE on CalendarBooking (calendarId);\ncreate unique index IX_113A264E on CalendarBooking (calendarId, parentCalendarBookingId);\ncreate index IX_470170B4 on CalendarBooking (calendarId, status);\ncreate unique index IX_8B23DA0E on CalendarBooking (calendarId, vEventUid);\ncreate index IX_B198FFC on CalendarBooking (calendarResourceId);\ncreate index IX_57EBF55B on CalendarBooking (parentCalendarBookingId);\ncreate index IX_F7B8A941 on CalendarBooking (parentCalendarBookingId, status);\ncreate index IX_22DFDB49 on CalendarBooking (resourceBlockId);\ncreate index IX_F6E8EE73 on CalendarBooking (uuid_);\ncreate index IX_A21D9FD5 on CalendarBooking (uuid_, companyId);\ncreate unique index IX_F4C61797 on CalendarBooking (uuid_, groupId);\n\ncreate index IX_A412E5B6 on CalendarNotificationTemplate (calendarId);\ncreate index IX_7727A482 on CalendarNotificationTemplate (calendarId, notificationType, notificationTemplateType);\ncreate index IX_A2D4D78B on CalendarNotificationTemplate (uuid_);\ncreate index IX_4D7D97BD on CalendarNotificationTemplate (uuid_, companyId);\ncreate unique index IX_4012E97F on CalendarNotificationTemplate (uuid_, groupId);\n\ncreate index IX_76DDD0F7 on CalendarResource (active_);\ncreate unique index IX_16A12327 on CalendarResource (classNameId, classPK);\ncreate index IX_4470A59D on CalendarResource (companyId, code_, active_);\ncreate index IX_1243D698 on CalendarResource (groupId);\ncreate index IX_40678371 on CalendarResource (groupId, active_);\ncreate index IX_55C2F8AA on CalendarResource (groupId, code_);\ncreate index IX_8BCB4D38 on CalendarResource (resourceBlockId);\ncreate index IX_150E2F22 on CalendarResource (uuid_);\ncreate index IX_56A06BC6 on CalendarResource (uuid_, companyId);\ncreate unique index IX_4ABD2BC8 on CalendarResource (uuid_, groupId);]]></indexes-sql>\n</data>'),(20462,'Kaleo',8,1425595080483,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table KaleoAction (\n	kaleoActionId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	kaleoNodeName VARCHAR(200) null,\n	name VARCHAR(200) null,\n	description STRING null,\n	executionType VARCHAR(20) null,\n	script TEXT null,\n	scriptLanguage VARCHAR(75) null,\n	scriptRequiredContexts STRING null,\n	priority INTEGER\n);\n\ncreate table KaleoCondition (\n	kaleoConditionId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoNodeId LONG,\n	script TEXT null,\n	scriptLanguage VARCHAR(75) null,\n	scriptRequiredContexts STRING null\n);\n\ncreate table KaleoDefinition (\n	kaleoDefinitionId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	name VARCHAR(200) null,\n	title STRING null,\n	description STRING null,\n	content TEXT null,\n	version INTEGER,\n	active_ BOOLEAN,\n	startKaleoNodeId LONG\n);\n\ncreate table KaleoInstance (\n	kaleoInstanceId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoDefinitionName VARCHAR(200) null,\n	kaleoDefinitionVersion INTEGER,\n	rootKaleoInstanceTokenId LONG,\n	className VARCHAR(200) null,\n	classPK LONG,\n	completed BOOLEAN,\n	completionDate DATE null,\n	workflowContext TEXT null\n);\n\ncreate table KaleoInstanceToken (\n	kaleoInstanceTokenId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoInstanceId LONG,\n	parentKaleoInstanceTokenId LONG,\n	currentKaleoNodeId LONG,\n	currentKaleoNodeName VARCHAR(200) null,\n	className VARCHAR(200) null,\n	classPK LONG,\n	completed BOOLEAN,\n	completionDate DATE null\n);\n\ncreate table KaleoLog (\n	kaleoLogId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	kaleoInstanceId LONG,\n	kaleoInstanceTokenId LONG,\n	kaleoTaskInstanceTokenId LONG,\n	kaleoNodeName VARCHAR(200) null,\n	terminalKaleoNode BOOLEAN,\n	kaleoActionId LONG,\n	kaleoActionName VARCHAR(200) null,\n	kaleoActionDescription STRING null,\n	previousKaleoNodeId LONG,\n	previousKaleoNodeName VARCHAR(200) null,\n	previousAssigneeClassName VARCHAR(200) null,\n	previousAssigneeClassPK LONG,\n	currentAssigneeClassName VARCHAR(200) null,\n	currentAssigneeClassPK LONG,\n	type_ VARCHAR(50) null,\n	comment_ TEXT null,\n	startDate DATE null,\n	endDate DATE null,\n	duration LONG,\n	workflowContext TEXT null\n);\n\ncreate table KaleoNode (\n	kaleoNodeId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	name VARCHAR(200) null,\n	metadata STRING null,\n	description STRING null,\n	type_ VARCHAR(20) null,\n	initial_ BOOLEAN,\n	terminal BOOLEAN\n);\n\ncreate table KaleoNotification (\n	kaleoNotificationId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	kaleoNodeName VARCHAR(200) null,\n	name VARCHAR(200) null,\n	description STRING null,\n	executionType VARCHAR(20) null,\n	template TEXT null,\n	templateLanguage VARCHAR(75) null,\n	notificationTypes VARCHAR(25) null\n);\n\ncreate table KaleoNotificationRecipient (\n	kaleoNotificationRecipientId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoNotificationId LONG,\n	recipientClassName VARCHAR(200) null,\n	recipientClassPK LONG,\n	recipientRoleType INTEGER,\n	address VARCHAR(255) null\n);\n\ncreate table KaleoTask (\n	kaleoTaskId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoNodeId LONG,\n	name VARCHAR(200) null,\n	description STRING null\n);\n\ncreate table KaleoTaskAssignment (\n	kaleoTaskAssignmentId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	kaleoNodeId LONG,\n	assigneeClassName VARCHAR(200) null,\n	assigneeClassPK LONG,\n	assigneeActionId VARCHAR(75) null,\n	assigneeScript TEXT null,\n	assigneeScriptLanguage VARCHAR(75) null,\n	assigneeScriptRequiredContexts STRING null\n);\n\ncreate table KaleoTaskAssignmentInstance (\n	kaleoTaskAssignmentInstanceId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoInstanceId LONG,\n	kaleoInstanceTokenId LONG,\n	kaleoTaskInstanceTokenId LONG,\n	kaleoTaskId LONG,\n	kaleoTaskName VARCHAR(200) null,\n	assigneeClassName VARCHAR(200) null,\n	assigneeClassPK LONG,\n	completed BOOLEAN,\n	completionDate DATE null\n);\n\ncreate table KaleoTaskInstanceToken (\n	kaleoTaskInstanceTokenId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoInstanceId LONG,\n	kaleoInstanceTokenId LONG,\n	kaleoTaskId LONG,\n	kaleoTaskName VARCHAR(200) null,\n	className VARCHAR(200) null,\n	classPK LONG,\n	completionUserId LONG,\n	completed BOOLEAN,\n	completionDate DATE null,\n	dueDate DATE null,\n	workflowContext TEXT null\n);\n\ncreate table KaleoTimer (\n	kaleoTimerId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	name VARCHAR(75) null,\n	blocking BOOLEAN,\n	description STRING null,\n	duration DOUBLE,\n	scale VARCHAR(75) null,\n	recurrenceDuration DOUBLE,\n	recurrenceScale VARCHAR(75) null\n);\n\ncreate table KaleoTimerInstanceToken (\n	kaleoTimerInstanceTokenId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	kaleoInstanceId LONG,\n	kaleoInstanceTokenId LONG,\n	kaleoTaskInstanceTokenId LONG,\n	kaleoTimerId LONG,\n	kaleoTimerName VARCHAR(200) null,\n	blocking BOOLEAN,\n	completionUserId LONG,\n	completed BOOLEAN,\n	completionDate DATE null,\n	workflowContext TEXT null\n);\n\ncreate table KaleoTransition (\n	kaleoTransitionId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoNodeId LONG,\n	name VARCHAR(200) null,\n	description STRING null,\n	sourceKaleoNodeId LONG,\n	sourceKaleoNodeName VARCHAR(200) null,\n	targetKaleoNodeId LONG,\n	targetKaleoNodeName VARCHAR(200) null,\n	defaultTransition BOOLEAN\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_50E9112C on KaleoAction (companyId);\ncreate index IX_170EFD7A on KaleoAction (kaleoClassName, kaleoClassPK);\ncreate index IX_4B2545E8 on KaleoAction (kaleoClassName, kaleoClassPK, executionType);\ncreate index IX_F95A622 on KaleoAction (kaleoDefinitionId);\n\ncreate index IX_FEE46067 on KaleoCondition (companyId);\ncreate index IX_DC978A5D on KaleoCondition (kaleoDefinitionId);\ncreate index IX_86CBD4C on KaleoCondition (kaleoNodeId);\n\ncreate index IX_40B9112F on KaleoDefinition (companyId);\ncreate index IX_408542BA on KaleoDefinition (companyId, active_);\ncreate index IX_76C781AE on KaleoDefinition (companyId, name);\ncreate index IX_4C23F11B on KaleoDefinition (companyId, name, active_);\ncreate index IX_EC14F81A on KaleoDefinition (companyId, name, version);\n\ncreate index IX_58D85ECB on KaleoInstance (className, classPK);\ncreate index IX_5F2FCD2D on KaleoInstance (companyId);\ncreate index IX_BF5839F8 on KaleoInstance (companyId, kaleoDefinitionName, kaleoDefinitionVersion, completionDate);\ncreate index IX_C6D7A867 on KaleoInstance (companyId, userId);\ncreate index IX_4DA4D123 on KaleoInstance (kaleoDefinitionId);\ncreate index IX_ACF16238 on KaleoInstance (kaleoDefinitionId, completed);\n\ncreate index IX_153721BE on KaleoInstanceToken (companyId);\ncreate index IX_4A86923B on KaleoInstanceToken (companyId, parentKaleoInstanceTokenId);\ncreate index IX_360D34D9 on KaleoInstanceToken (companyId, parentKaleoInstanceTokenId, completionDate);\ncreate index IX_7BDB04B4 on KaleoInstanceToken (kaleoDefinitionId);\ncreate index IX_F42AAFF6 on KaleoInstanceToken (kaleoInstanceId);\n\ncreate index IX_73B5F4DE on KaleoLog (companyId);\ncreate index IX_E66A153A on KaleoLog (kaleoClassName, kaleoClassPK, kaleoInstanceTokenId, type_);\ncreate index IX_6C64B7D4 on KaleoLog (kaleoDefinitionId);\ncreate index IX_5BC6AB16 on KaleoLog (kaleoInstanceId);\ncreate index IX_470B9FF8 on KaleoLog (kaleoInstanceTokenId, type_);\ncreate index IX_B0CDCA38 on KaleoLog (kaleoTaskInstanceTokenId);\n\ncreate index IX_C4E9ACE0 on KaleoNode (companyId);\ncreate index IX_F28C443E on KaleoNode (companyId, kaleoDefinitionId);\ncreate index IX_32E94DD6 on KaleoNode (kaleoDefinitionId);\n\ncreate index IX_38829497 on KaleoNotification (companyId);\ncreate index IX_902D342F on KaleoNotification (kaleoClassName, kaleoClassPK);\ncreate index IX_F3362E93 on KaleoNotification (kaleoClassName, kaleoClassPK, executionType);\ncreate index IX_4B968E8D on KaleoNotification (kaleoDefinitionId);\n\ncreate index IX_2C8C4AF4 on KaleoNotificationRecipient (companyId);\ncreate index IX_AA6697EA on KaleoNotificationRecipient (kaleoDefinitionId);\ncreate index IX_7F4FED02 on KaleoNotificationRecipient (kaleoNotificationId);\n\ncreate index IX_E1F8B23D on KaleoTask (companyId);\ncreate index IX_3FFA633 on KaleoTask (kaleoDefinitionId);\ncreate index IX_77B3F1A2 on KaleoTask (kaleoNodeId);\n\ncreate index IX_611732B0 on KaleoTaskAssignment (companyId);\ncreate index IX_D835C576 on KaleoTaskAssignment (kaleoClassName, kaleoClassPK);\ncreate index IX_1087068E on KaleoTaskAssignment (kaleoClassName, kaleoClassPK, assigneeClassName);\ncreate index IX_575C03A6 on KaleoTaskAssignment (kaleoDefinitionId);\n\ncreate index IX_945F4EB7 on KaleoTaskAssignmentInstance (assigneeClassName);\ncreate index IX_3BD436FD on KaleoTaskAssignmentInstance (assigneeClassName, assigneeClassPK);\ncreate index IX_6E3CDA1B on KaleoTaskAssignmentInstance (companyId);\ncreate index IX_38A47B17 on KaleoTaskAssignmentInstance (groupId, assigneeClassPK);\ncreate index IX_C851011 on KaleoTaskAssignmentInstance (kaleoDefinitionId);\ncreate index IX_67A9EE93 on KaleoTaskAssignmentInstance (kaleoInstanceId);\ncreate index IX_D4C2235B on KaleoTaskAssignmentInstance (kaleoTaskInstanceTokenId);\n\ncreate index IX_A3271995 on KaleoTaskInstanceToken (className, classPK);\ncreate index IX_997FE723 on KaleoTaskInstanceToken (companyId);\ncreate index IX_608E9519 on KaleoTaskInstanceToken (kaleoDefinitionId);\ncreate index IX_2CE1159B on KaleoTaskInstanceToken (kaleoInstanceId);\ncreate index IX_B857A115 on KaleoTaskInstanceToken (kaleoInstanceId, kaleoTaskId);\n\ncreate index IX_4DE6A889 on KaleoTimer (kaleoClassName, kaleoClassPK);\ncreate index IX_1A479F32 on KaleoTimer (kaleoClassName, kaleoClassPK, blocking);\n\ncreate index IX_DB96C55B on KaleoTimerInstanceToken (kaleoInstanceId);\ncreate index IX_DB279423 on KaleoTimerInstanceToken (kaleoInstanceTokenId, completed);\ncreate index IX_9932524C on KaleoTimerInstanceToken (kaleoInstanceTokenId, completed, blocking);\ncreate index IX_13A5BA2C on KaleoTimerInstanceToken (kaleoInstanceTokenId, kaleoTimerId);\n\ncreate index IX_41D6C6D on KaleoTransition (companyId);\ncreate index IX_479F3063 on KaleoTransition (kaleoDefinitionId);\ncreate index IX_A392DFD2 on KaleoTransition (kaleoNodeId);\ncreate index IX_A38E2194 on KaleoTransition (kaleoNodeId, defaultTransition);\ncreate index IX_85268A11 on KaleoTransition (kaleoNodeId, name);]]></indexes-sql>\n</data>'),(20494,'Notification',1,1409250476826,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table Notifications_UserNotificationEvent (\n	notificationEventId LONG not null primary key,\n	companyId LONG,\n	userId LONG,\n	userNotificationEventId LONG,\n	timestamp LONG,\n	delivered BOOLEAN,\n	actionRequired BOOLEAN,\n	archived BOOLEAN\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_93C52776 on Notifications_UserNotificationEvent (userId, actionRequired);\ncreate index IX_36E5AE4C on Notifications_UserNotificationEvent (userId, actionRequired, archived);\ncreate index IX_73C065F0 on Notifications_UserNotificationEvent (userId, delivered, actionRequired);\ncreate unique index IX_DC9FCEDC on Notifications_UserNotificationEvent (userNotificationEventId);]]></indexes-sql>\n</data>'),(20500,'OpenSocial',4,1343264401607,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table OpenSocial_Gadget (\n	uuid_ VARCHAR(75) null,\n	gadgetId LONG not null primary key,\n	companyId LONG,\n	createDate DATE null,\n	modifiedDate DATE null,\n	name VARCHAR(75) null,\n	url STRING null,\n	portletCategoryNames STRING null\n);\n\ncreate table OpenSocial_OAuthConsumer (\n	oAuthConsumerId LONG not null primary key,\n	companyId LONG,\n	createDate DATE null,\n	modifiedDate DATE null,\n	gadgetKey VARCHAR(75) null,\n	serviceName VARCHAR(75) null,\n	consumerKey VARCHAR(75) null,\n	consumerSecret TEXT null,\n	keyType VARCHAR(75) null\n);\n\ncreate table OpenSocial_OAuthToken (\n	oAuthTokenId LONG not null primary key,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	gadgetKey VARCHAR(75) null,\n	serviceName VARCHAR(75) null,\n	moduleId LONG,\n	accessToken VARCHAR(75) null,\n	tokenName VARCHAR(75) null,\n	tokenSecret VARCHAR(75) null,\n	sessionHandle VARCHAR(75) null,\n	expiration LONG\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_729869EE on OpenSocial_Gadget (companyId);\ncreate unique index IX_A6A89EB1 on OpenSocial_Gadget (companyId, url);\ncreate index IX_E1F8627A on OpenSocial_Gadget (uuid_);\ncreate index IX_3C79316E on OpenSocial_Gadget (uuid_, companyId);\n\ncreate index IX_47206618 on OpenSocial_OAuthConsumer (gadgetKey);\ncreate index IX_8E715BF8 on OpenSocial_OAuthConsumer (gadgetKey, serviceName);\n\ncreate index IX_6C8CCC3D on OpenSocial_OAuthToken (gadgetKey, serviceName);\ncreate index IX_CDD35402 on OpenSocial_OAuthToken (userId, gadgetKey, serviceName, moduleId, tokenName);]]></indexes-sql>\n</data>'),(20509,'Sync',6,1445034861916,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table SyncDLFileVersionDiff (\n	syncDLFileVersionDiffId LONG not null primary key,\n	fileEntryId LONG,\n	sourceFileVersionId LONG,\n	targetFileVersionId LONG,\n	dataFileEntryId LONG,\n	size_ LONG,\n	expirationDate DATE null\n);\n\ncreate table SyncDLObject (\n	syncDLObjectId LONG not null primary key,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createTime LONG,\n	modifiedTime LONG,\n	repositoryId LONG,\n	parentFolderId LONG,\n	treePath STRING null,\n	name VARCHAR(255) null,\n	extension VARCHAR(75) null,\n	mimeType VARCHAR(75) null,\n	description STRING null,\n	changeLog VARCHAR(75) null,\n	extraSettings TEXT null,\n	version VARCHAR(75) null,\n	versionId LONG,\n	size_ LONG,\n	checksum VARCHAR(75) null,\n	event VARCHAR(75) null,\n	lastPermissionChangeDate DATE null,\n	lockExpirationDate DATE null,\n	lockUserId LONG,\n	lockUserName VARCHAR(75) null,\n	type_ VARCHAR(75) null,\n	typePK LONG,\n	typeUuid VARCHAR(75) null\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_A9B43C55 on SyncDLFileVersionDiff (expirationDate);\ncreate index IX_F832A75D on SyncDLFileVersionDiff (fileEntryId);\ncreate unique index IX_AC4C7667 on SyncDLFileVersionDiff (fileEntryId, sourceFileVersionId, targetFileVersionId);\n\ncreate index IX_980323CB on SyncDLObject (modifiedTime, repositoryId);\ncreate index IX_8D4FDC9F on SyncDLObject (modifiedTime, repositoryId, event);\ncreate index IX_A3ACE372 on SyncDLObject (modifiedTime, repositoryId, parentFolderId);\ncreate index IX_F174AD48 on SyncDLObject (repositoryId, parentFolderId);\ncreate index IX_3BE7BB8D on SyncDLObject (repositoryId, parentFolderId, type_);\ncreate index IX_57F62914 on SyncDLObject (repositoryId, type_);\ncreate unique index IX_E3F57BD6 on SyncDLObject (type_, typePK);\ncreate index IX_28CD54BB on SyncDLObject (type_, version);\ncreate index IX_1CCA3B5 on SyncDLObject (version, type_);]]></indexes-sql>\n</data>');

/*Table structure for table `shard` */

DROP TABLE IF EXISTS `shard`;

CREATE TABLE `shard` (
  `shardId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`shardId`),
  KEY `IX_DA5F4359` (`classNameId`,`classPK`),
  KEY `IX_941BA8C3` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `shard` */

insert  into `shard`(`shardId`,`classNameId`,`classPK`,`name`) values (20156,20025,20155,'default');

/*Table structure for table `shoppingcart` */

DROP TABLE IF EXISTS `shoppingcart`;

CREATE TABLE `shoppingcart` (
  `cartId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `itemIds` longtext,
  `couponCodes` varchar(75) DEFAULT NULL,
  `altShipping` int(11) DEFAULT NULL,
  `insure` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`cartId`),
  UNIQUE KEY `IX_FC46FE16` (`groupId`,`userId`),
  KEY `IX_C28B41DC` (`groupId`),
  KEY `IX_54101CC8` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `shoppingcart` */

/*Table structure for table `shoppingcategory` */

DROP TABLE IF EXISTS `shoppingcategory`;

CREATE TABLE `shoppingcategory` (
  `categoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentCategoryId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`categoryId`),
  KEY `IX_5F615D3E` (`groupId`),
  KEY `IX_6A84467D` (`groupId`,`name`),
  KEY `IX_1E6464F5` (`groupId`,`parentCategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `shoppingcategory` */

/*Table structure for table `shoppingcoupon` */

DROP TABLE IF EXISTS `shoppingcoupon`;

CREATE TABLE `shoppingcoupon` (
  `couponId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `code_` varchar(75) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  `limitCategories` longtext,
  `limitSkus` longtext,
  `minOrder` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `discountType` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`couponId`),
  UNIQUE KEY `IX_DC60CFAE` (`code_`),
  KEY `IX_3251AF16` (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `shoppingcoupon` */

/*Table structure for table `shoppingitem` */

DROP TABLE IF EXISTS `shoppingitem`;

CREATE TABLE `shoppingitem` (
  `itemId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `sku` varchar(75) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `properties` longtext,
  `fields_` tinyint(4) DEFAULT NULL,
  `fieldsQuantities` longtext,
  `minQuantity` int(11) DEFAULT NULL,
  `maxQuantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `taxable` tinyint(4) DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `useShippingFormula` tinyint(4) DEFAULT NULL,
  `requiresShipping` tinyint(4) DEFAULT NULL,
  `stockQuantity` int(11) DEFAULT NULL,
  `featured_` tinyint(4) DEFAULT NULL,
  `sale_` tinyint(4) DEFAULT NULL,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  `mediumImage` tinyint(4) DEFAULT NULL,
  `mediumImageId` bigint(20) DEFAULT NULL,
  `mediumImageURL` longtext,
  `largeImage` tinyint(4) DEFAULT NULL,
  `largeImageId` bigint(20) DEFAULT NULL,
  `largeImageURL` longtext,
  PRIMARY KEY (`itemId`),
  UNIQUE KEY `IX_1C717CA6` (`companyId`,`sku`),
  KEY `IX_FEFE7D76` (`groupId`,`categoryId`),
  KEY `IX_903DC750` (`largeImageId`),
  KEY `IX_D217AB30` (`mediumImageId`),
  KEY `IX_FF203304` (`smallImageId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `shoppingitem` */

/*Table structure for table `shoppingitemfield` */

DROP TABLE IF EXISTS `shoppingitemfield`;

CREATE TABLE `shoppingitemfield` (
  `itemFieldId` bigint(20) NOT NULL,
  `itemId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `values_` longtext,
  `description` longtext,
  PRIMARY KEY (`itemFieldId`),
  KEY `IX_6D5F9B87` (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `shoppingitemfield` */

/*Table structure for table `shoppingitemprice` */

DROP TABLE IF EXISTS `shoppingitemprice`;

CREATE TABLE `shoppingitemprice` (
  `itemPriceId` bigint(20) NOT NULL,
  `itemId` bigint(20) DEFAULT NULL,
  `minQuantity` int(11) DEFAULT NULL,
  `maxQuantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `taxable` tinyint(4) DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `useShippingFormula` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemPriceId`),
  KEY `IX_EA6FD516` (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `shoppingitemprice` */

/*Table structure for table `shoppingorder` */

DROP TABLE IF EXISTS `shoppingorder`;

CREATE TABLE `shoppingorder` (
  `orderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `number_` varchar(75) DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `altShipping` varchar(75) DEFAULT NULL,
  `requiresShipping` tinyint(4) DEFAULT NULL,
  `insure` tinyint(4) DEFAULT NULL,
  `insurance` double DEFAULT NULL,
  `couponCodes` varchar(75) DEFAULT NULL,
  `couponDiscount` double DEFAULT NULL,
  `billingFirstName` varchar(75) DEFAULT NULL,
  `billingLastName` varchar(75) DEFAULT NULL,
  `billingEmailAddress` varchar(75) DEFAULT NULL,
  `billingCompany` varchar(75) DEFAULT NULL,
  `billingStreet` varchar(75) DEFAULT NULL,
  `billingCity` varchar(75) DEFAULT NULL,
  `billingState` varchar(75) DEFAULT NULL,
  `billingZip` varchar(75) DEFAULT NULL,
  `billingCountry` varchar(75) DEFAULT NULL,
  `billingPhone` varchar(75) DEFAULT NULL,
  `shipToBilling` tinyint(4) DEFAULT NULL,
  `shippingFirstName` varchar(75) DEFAULT NULL,
  `shippingLastName` varchar(75) DEFAULT NULL,
  `shippingEmailAddress` varchar(75) DEFAULT NULL,
  `shippingCompany` varchar(75) DEFAULT NULL,
  `shippingStreet` varchar(75) DEFAULT NULL,
  `shippingCity` varchar(75) DEFAULT NULL,
  `shippingState` varchar(75) DEFAULT NULL,
  `shippingZip` varchar(75) DEFAULT NULL,
  `shippingCountry` varchar(75) DEFAULT NULL,
  `shippingPhone` varchar(75) DEFAULT NULL,
  `ccName` varchar(75) DEFAULT NULL,
  `ccType` varchar(75) DEFAULT NULL,
  `ccNumber` varchar(75) DEFAULT NULL,
  `ccExpMonth` int(11) DEFAULT NULL,
  `ccExpYear` int(11) DEFAULT NULL,
  `ccVerNumber` varchar(75) DEFAULT NULL,
  `comments` longtext,
  `ppTxnId` varchar(75) DEFAULT NULL,
  `ppPaymentStatus` varchar(75) DEFAULT NULL,
  `ppPaymentGross` double DEFAULT NULL,
  `ppReceiverEmail` varchar(75) DEFAULT NULL,
  `ppPayerEmail` varchar(75) DEFAULT NULL,
  `sendOrderEmail` tinyint(4) DEFAULT NULL,
  `sendShippingEmail` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  UNIQUE KEY `IX_D7D6E87A` (`number_`),
  KEY `IX_1D15553E` (`groupId`),
  KEY `IX_119B5630` (`groupId`,`userId`,`ppPaymentStatus`),
  KEY `IX_F474FD89` (`ppTxnId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `shoppingorder` */

/*Table structure for table `shoppingorderitem` */

DROP TABLE IF EXISTS `shoppingorderitem`;

CREATE TABLE `shoppingorderitem` (
  `orderItemId` bigint(20) NOT NULL,
  `orderId` bigint(20) DEFAULT NULL,
  `itemId` varchar(75) DEFAULT NULL,
  `sku` varchar(75) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `properties` longtext,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `shippedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`orderItemId`),
  KEY `IX_B5F82C7A` (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `shoppingorderitem` */

/*Table structure for table `socialactivity` */

DROP TABLE IF EXISTS `socialactivity`;

CREATE TABLE `socialactivity` (
  `activityId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `activitySetId` bigint(20) DEFAULT NULL,
  `mirrorActivityId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `parentClassNameId` bigint(20) DEFAULT NULL,
  `parentClassPK` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  `receiverUserId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`activityId`),
  UNIQUE KEY `IX_8F32DEC9` (`groupId`,`userId`,`createDate`,`classNameId`,`classPK`,`type_`,`receiverUserId`),
  KEY `IX_F542E9BC` (`activitySetId`),
  KEY `IX_82E39A0C` (`classNameId`),
  KEY `IX_A853C757` (`classNameId`,`classPK`),
  KEY `IX_D0E9029E` (`classNameId`,`classPK`,`type_`),
  KEY `IX_64B1BC66` (`companyId`),
  KEY `IX_2A2468` (`groupId`),
  KEY `IX_FB604DC7` (`groupId`,`userId`,`classNameId`,`classPK`,`type_`,`receiverUserId`),
  KEY `IX_1271F25F` (`mirrorActivityId`),
  KEY `IX_1F00C374` (`mirrorActivityId`,`classNameId`,`classPK`),
  KEY `IX_121CA3CB` (`receiverUserId`),
  KEY `IX_3504B8BC` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `socialactivity` */

/*Table structure for table `socialactivityachievement` */

DROP TABLE IF EXISTS `socialactivityachievement`;

CREATE TABLE `socialactivityachievement` (
  `activityAchievementId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `firstInGroup` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`activityAchievementId`),
  UNIQUE KEY `IX_D4390CAA` (`groupId`,`userId`,`name`),
  KEY `IX_E14B1F1` (`groupId`),
  KEY `IX_83E16F2F` (`groupId`,`firstInGroup`),
  KEY `IX_8F6408F0` (`groupId`,`name`),
  KEY `IX_C8FD892B` (`groupId`,`userId`),
  KEY `IX_AABC18E9` (`groupId`,`userId`,`firstInGroup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `socialactivityachievement` */

/*Table structure for table `socialactivitycounter` */

DROP TABLE IF EXISTS `socialactivitycounter`;

CREATE TABLE `socialactivitycounter` (
  `activityCounterId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `ownerType` int(11) DEFAULT NULL,
  `currentValue` int(11) DEFAULT NULL,
  `totalValue` int(11) DEFAULT NULL,
  `graceValue` int(11) DEFAULT NULL,
  `startPeriod` int(11) DEFAULT NULL,
  `endPeriod` int(11) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`activityCounterId`),
  UNIQUE KEY `IX_1B7E3B67` (`groupId`,`classNameId`,`classPK`,`name`,`ownerType`,`endPeriod`),
  UNIQUE KEY `IX_374B35AE` (`groupId`,`classNameId`,`classPK`,`name`,`ownerType`,`startPeriod`),
  KEY `IX_A4B9A23B` (`classNameId`,`classPK`),
  KEY `IX_D6666704` (`groupId`),
  KEY `IX_926CDD04` (`groupId`,`classNameId`,`classPK`,`ownerType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `socialactivitycounter` */

/*Table structure for table `socialactivitylimit` */

DROP TABLE IF EXISTS `socialactivitylimit`;

CREATE TABLE `socialactivitylimit` (
  `activityLimitId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `activityType` int(11) DEFAULT NULL,
  `activityCounterName` varchar(75) DEFAULT NULL,
  `value` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`activityLimitId`),
  UNIQUE KEY `IX_F1C1A617` (`groupId`,`userId`,`classNameId`,`classPK`,`activityType`,`activityCounterName`),
  KEY `IX_B15863FA` (`classNameId`,`classPK`),
  KEY `IX_18D4BAE5` (`groupId`),
  KEY `IX_6F9EDE9F` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `socialactivitylimit` */

/*Table structure for table `socialactivityset` */

DROP TABLE IF EXISTS `socialactivityset`;

CREATE TABLE `socialactivityset` (
  `activitySetId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `modifiedDate` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  `activityCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`activitySetId`),
  KEY `IX_4460FA14` (`classNameId`,`classPK`,`type_`),
  KEY `IX_9E13F2DE` (`groupId`),
  KEY `IX_9BE30DDF` (`groupId`,`userId`,`classNameId`,`type_`),
  KEY `IX_F71071BD` (`groupId`,`userId`,`type_`),
  KEY `IX_F80C4386` (`userId`),
  KEY `IX_62AC101A` (`userId`,`classNameId`,`classPK`,`type_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `socialactivityset` */

/*Table structure for table `socialactivitysetting` */

DROP TABLE IF EXISTS `socialactivitysetting`;

CREATE TABLE `socialactivitysetting` (
  `activitySettingId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `activityType` int(11) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `value` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`activitySettingId`),
  KEY `IX_8BE5F230` (`groupId`),
  KEY `IX_384788CD` (`groupId`,`activityType`),
  KEY `IX_9D22151E` (`groupId`,`classNameId`),
  KEY `IX_1E9CF33B` (`groupId`,`classNameId`,`activityType`),
  KEY `IX_D984AABA` (`groupId`,`classNameId`,`activityType`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `socialactivitysetting` */

/*Table structure for table `socialrelation` */

DROP TABLE IF EXISTS `socialrelation`;

CREATE TABLE `socialrelation` (
  `uuid_` varchar(75) DEFAULT NULL,
  `relationId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `userId1` bigint(20) DEFAULT NULL,
  `userId2` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  PRIMARY KEY (`relationId`),
  UNIQUE KEY `IX_12A92145` (`userId1`,`userId2`,`type_`),
  KEY `IX_61171E99` (`companyId`),
  KEY `IX_95135D1C` (`companyId`,`type_`),
  KEY `IX_C31A64C6` (`type_`),
  KEY `IX_5A40CDCC` (`userId1`),
  KEY `IX_4B52BE89` (`userId1`,`type_`),
  KEY `IX_B5C9C690` (`userId1`,`userId2`),
  KEY `IX_5A40D18D` (`userId2`),
  KEY `IX_3F9C2FA8` (`userId2`,`type_`),
  KEY `IX_F0CA24A5` (`uuid_`),
  KEY `IX_5B30F663` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `socialrelation` */

/*Table structure for table `socialrequest` */

DROP TABLE IF EXISTS `socialrequest`;

CREATE TABLE `socialrequest` (
  `uuid_` varchar(75) DEFAULT NULL,
  `requestId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `modifiedDate` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  `receiverUserId` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`requestId`),
  UNIQUE KEY `IX_36A90CA7` (`userId`,`classNameId`,`classPK`,`type_`,`receiverUserId`),
  UNIQUE KEY `IX_4F973EFE` (`uuid_`,`groupId`),
  KEY `IX_D3425487` (`classNameId`,`classPK`,`type_`,`receiverUserId`,`status`),
  KEY `IX_A90FE5A0` (`companyId`),
  KEY `IX_32292ED1` (`receiverUserId`),
  KEY `IX_D9380CB7` (`receiverUserId`,`status`),
  KEY `IX_80F7A9C2` (`userId`),
  KEY `IX_CC86A444` (`userId`,`classNameId`,`classPK`,`type_`,`status`),
  KEY `IX_AB5906A8` (`userId`,`status`),
  KEY `IX_49D5872C` (`uuid_`),
  KEY `IX_8D42897C` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `socialrequest` */

/*Table structure for table `subscription` */

DROP TABLE IF EXISTS `subscription`;

CREATE TABLE `subscription` (
  `subscriptionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `frequency` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`subscriptionId`),
  UNIQUE KEY `IX_2E1A92D4` (`companyId`,`userId`,`classNameId`,`classPK`),
  KEY `IX_786D171A` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_54243AFD` (`userId`),
  KEY `IX_E8F34171` (`userId`,`classNameId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `subscription` */

/*Table structure for table `syncdlfileversiondiff` */

DROP TABLE IF EXISTS `syncdlfileversiondiff`;

CREATE TABLE `syncdlfileversiondiff` (
  `syncDLFileVersionDiffId` bigint(20) NOT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  `sourceFileVersionId` bigint(20) DEFAULT NULL,
  `targetFileVersionId` bigint(20) DEFAULT NULL,
  `dataFileEntryId` bigint(20) DEFAULT NULL,
  `size_` bigint(20) DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`syncDLFileVersionDiffId`),
  UNIQUE KEY `IX_AC4C7667` (`fileEntryId`,`sourceFileVersionId`,`targetFileVersionId`),
  KEY `IX_A9B43C55` (`expirationDate`),
  KEY `IX_F832A75D` (`fileEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `syncdlfileversiondiff` */

/*Table structure for table `syncdlobject` */

DROP TABLE IF EXISTS `syncdlobject`;

CREATE TABLE `syncdlobject` (
  `syncDLObjectId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createTime` bigint(20) DEFAULT NULL,
  `modifiedTime` bigint(20) DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(255) DEFAULT NULL,
  `extension` varchar(75) DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `description` longtext,
  `changeLog` varchar(75) DEFAULT NULL,
  `extraSettings` longtext,
  `version` varchar(75) DEFAULT NULL,
  `versionId` bigint(20) DEFAULT NULL,
  `size_` bigint(20) DEFAULT NULL,
  `checksum` varchar(75) DEFAULT NULL,
  `event` varchar(75) DEFAULT NULL,
  `lastPermissionChangeDate` datetime DEFAULT NULL,
  `lockExpirationDate` datetime DEFAULT NULL,
  `lockUserId` bigint(20) DEFAULT NULL,
  `lockUserName` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `typePK` bigint(20) DEFAULT NULL,
  `typeUuid` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`syncDLObjectId`),
  UNIQUE KEY `IX_E3F57BD6` (`type_`,`typePK`),
  KEY `IX_980323CB` (`modifiedTime`,`repositoryId`),
  KEY `IX_8D4FDC9F` (`modifiedTime`,`repositoryId`,`event`),
  KEY `IX_A3ACE372` (`modifiedTime`,`repositoryId`,`parentFolderId`),
  KEY `IX_F174AD48` (`repositoryId`,`parentFolderId`),
  KEY `IX_3BE7BB8D` (`repositoryId`,`parentFolderId`,`type_`),
  KEY `IX_57F62914` (`repositoryId`,`type_`),
  KEY `IX_28CD54BB` (`type_`,`version`),
  KEY `IX_1CCA3B5` (`version`,`type_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `syncdlobject` */

/*Table structure for table `systemevent` */

DROP TABLE IF EXISTS `systemevent`;

CREATE TABLE `systemevent` (
  `systemEventId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `classUuid` varchar(75) DEFAULT NULL,
  `referrerClassNameId` bigint(20) DEFAULT NULL,
  `parentSystemEventId` bigint(20) DEFAULT NULL,
  `systemEventSetKey` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  PRIMARY KEY (`systemEventId`),
  KEY `IX_72D73D39` (`groupId`),
  KEY `IX_7A2F0ECE` (`groupId`,`classNameId`,`classPK`),
  KEY `IX_FFCBB747` (`groupId`,`classNameId`,`classPK`,`type_`),
  KEY `IX_A19C89FF` (`groupId`,`systemEventSetKey`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `systemevent` */

/*Table structure for table `team` */

DROP TABLE IF EXISTS `team`;

CREATE TABLE `team` (
  `teamId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`teamId`),
  UNIQUE KEY `IX_143DC786` (`groupId`,`name`),
  KEY `IX_AE6E9907` (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `team` */

/*Table structure for table `ticket` */

DROP TABLE IF EXISTS `ticket`;

CREATE TABLE `ticket` (
  `ticketId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `key_` varchar(75) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraInfo` longtext,
  `expirationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ticketId`),
  KEY `IX_1E8DFB2E` (`classNameId`,`classPK`,`type_`),
  KEY `IX_B2468446` (`key_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ticket` */

/*Table structure for table `trashentry` */

DROP TABLE IF EXISTS `trashentry`;

CREATE TABLE `trashentry` (
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `systemEventSetKey` bigint(20) DEFAULT NULL,
  `typeSettings` longtext,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_B35F73D5` (`classNameId`,`classPK`),
  KEY `IX_2674F2A8` (`companyId`),
  KEY `IX_526A032A` (`groupId`),
  KEY `IX_FC4EEA64` (`groupId`,`classNameId`),
  KEY `IX_6CAAE2E8` (`groupId`,`createDate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `trashentry` */

/*Table structure for table `trashversion` */

DROP TABLE IF EXISTS `trashversion`;

CREATE TABLE `trashversion` (
  `versionId` bigint(20) NOT NULL,
  `entryId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `typeSettings` longtext,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`versionId`),
  UNIQUE KEY `IX_D639348C` (`entryId`,`classNameId`,`classPK`),
  KEY `IX_630A643B` (`classNameId`,`classPK`),
  KEY `IX_55D44577` (`entryId`),
  KEY `IX_72D58D37` (`entryId`,`classNameId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `trashversion` */

/*Table structure for table `user_` */

DROP TABLE IF EXISTS `user_`;

CREATE TABLE `user_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `userId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `defaultUser` tinyint(4) DEFAULT NULL,
  `contactId` bigint(20) DEFAULT NULL,
  `password_` varchar(75) DEFAULT NULL,
  `passwordEncrypted` tinyint(4) DEFAULT NULL,
  `passwordReset` tinyint(4) DEFAULT NULL,
  `passwordModifiedDate` datetime DEFAULT NULL,
  `digest` varchar(255) DEFAULT NULL,
  `reminderQueryQuestion` varchar(75) DEFAULT NULL,
  `reminderQueryAnswer` varchar(75) DEFAULT NULL,
  `graceLoginCount` int(11) DEFAULT NULL,
  `screenName` varchar(75) DEFAULT NULL,
  `emailAddress` varchar(75) DEFAULT NULL,
  `facebookId` bigint(20) DEFAULT NULL,
  `ldapServerId` bigint(20) DEFAULT NULL,
  `openId` varchar(1024) DEFAULT NULL,
  `portraitId` bigint(20) DEFAULT NULL,
  `languageId` varchar(75) DEFAULT NULL,
  `timeZoneId` varchar(75) DEFAULT NULL,
  `greeting` varchar(255) DEFAULT NULL,
  `comments` longtext,
  `firstName` varchar(75) DEFAULT NULL,
  `middleName` varchar(75) DEFAULT NULL,
  `lastName` varchar(75) DEFAULT NULL,
  `jobTitle` varchar(100) DEFAULT NULL,
  `loginDate` datetime DEFAULT NULL,
  `loginIP` varchar(75) DEFAULT NULL,
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginIP` varchar(75) DEFAULT NULL,
  `lastFailedLoginDate` datetime DEFAULT NULL,
  `failedLoginAttempts` int(11) DEFAULT NULL,
  `lockout` tinyint(4) DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `agreedToTermsOfUse` tinyint(4) DEFAULT NULL,
  `emailAddressVerified` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `IX_615E9F7A` (`companyId`,`emailAddress`),
  UNIQUE KEY `IX_C5806019` (`companyId`,`screenName`),
  UNIQUE KEY `IX_9782AD88` (`companyId`,`userId`),
  UNIQUE KEY `IX_5ADBE171` (`contactId`),
  KEY `IX_3A1E834E` (`companyId`),
  KEY `IX_740C4D0C` (`companyId`,`createDate`),
  KEY `IX_BCFDA257` (`companyId`,`createDate`,`modifiedDate`),
  KEY `IX_6EF03E4E` (`companyId`,`defaultUser`),
  KEY `IX_1D731F03` (`companyId`,`facebookId`),
  KEY `IX_EE8ABD19` (`companyId`,`modifiedDate`),
  KEY `IX_89509087` (`companyId`,`openId`(767)),
  KEY `IX_F6039434` (`companyId`,`status`),
  KEY `IX_762F63C6` (`emailAddress`),
  KEY `IX_A18034A4` (`portraitId`),
  KEY `IX_E0422BDA` (`uuid_`),
  KEY `IX_405CC0E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_` */

insert  into `user_`(`uuid_`,`userId`,`companyId`,`createDate`,`modifiedDate`,`defaultUser`,`contactId`,`password_`,`passwordEncrypted`,`passwordReset`,`passwordModifiedDate`,`digest`,`reminderQueryQuestion`,`reminderQueryAnswer`,`graceLoginCount`,`screenName`,`emailAddress`,`facebookId`,`ldapServerId`,`openId`,`portraitId`,`languageId`,`timeZoneId`,`greeting`,`comments`,`firstName`,`middleName`,`lastName`,`jobTitle`,`loginDate`,`loginIP`,`lastLoginDate`,`lastLoginIP`,`lastFailedLoginDate`,`failedLoginAttempts`,`lockout`,`lockoutDate`,`agreedToTermsOfUse`,`emailAddressVerified`,`status`) values ('9ea3a9e3-586b-4d69-906a-e47a096ef4fc',20159,20155,'2017-12-12 12:11:47','2017-12-12 12:11:47',1,20160,'password',0,0,NULL,'5533ed38b5e33c076a804bb4bca644f9,9590828507537743bc166fef8cff8748,9590828507537743bc166fef8cff8748','','',0,'20159','default@liferay.com',0,0,'',0,'en_US','UTC','Welcome!','','','','','','2017-12-12 12:11:47','',NULL,'',NULL,0,0,NULL,1,0,0),('190fc52b-23a8-49ff-bed9-1239fb89a59c',20199,20155,'2017-12-12 12:11:51','2017-12-12 12:11:51',0,20200,'AAAAoAAB9AA0g4bUBv3bqZFXpYJ5t54i5+9Np6YQC+MtUEEY',1,0,NULL,'e5d86c6f3672e52795891c3597f20de0,751da756639bc033b572ba2e7849b589,2ee91139ff7378a589975d15f60a0a77','what-is-your-father\'s-middle-name','a',0,'test','test@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Liferray Admin!','','Liferray','','Admin','','2018-02-08 08:54:00','127.0.0.1','2018-02-08 07:41:24','127.0.0.1','2017-12-20 12:20:15',0,0,NULL,1,1,0);

/*Table structure for table `usergroup` */

DROP TABLE IF EXISTS `usergroup`;

CREATE TABLE `usergroup` (
  `uuid_` varchar(75) DEFAULT NULL,
  `userGroupId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentUserGroupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `addedByLDAPImport` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`userGroupId`),
  UNIQUE KEY `IX_23EAD0D` (`companyId`,`name`),
  KEY `IX_524FEFCE` (`companyId`),
  KEY `IX_69771487` (`companyId`,`parentUserGroupId`),
  KEY `IX_5F1DD85A` (`uuid_`),
  KEY `IX_72394F8E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `usergroup` */

/*Table structure for table `usergroupgrouprole` */

DROP TABLE IF EXISTS `usergroupgrouprole`;

CREATE TABLE `usergroupgrouprole` (
  `userGroupId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`userGroupId`,`groupId`,`roleId`),
  KEY `IX_CCBE4063` (`groupId`),
  KEY `IX_CAB0CCC8` (`groupId`,`roleId`),
  KEY `IX_1CDF88C` (`roleId`),
  KEY `IX_DCDED558` (`userGroupId`),
  KEY `IX_73C52252` (`userGroupId`,`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `usergroupgrouprole` */

/*Table structure for table `usergrouprole` */

DROP TABLE IF EXISTS `usergrouprole`;

CREATE TABLE `usergrouprole` (
  `userId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`,`groupId`,`roleId`),
  KEY `IX_1B988D7A` (`groupId`),
  KEY `IX_871412DF` (`groupId`,`roleId`),
  KEY `IX_887A2C95` (`roleId`),
  KEY `IX_887BE56A` (`userId`),
  KEY `IX_4D040680` (`userId`,`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `usergrouprole` */

insert  into `usergrouprole`(`userId`,`groupId`,`roleId`) values (20199,20557,20172);

/*Table structure for table `usergroups_teams` */

DROP TABLE IF EXISTS `usergroups_teams`;

CREATE TABLE `usergroups_teams` (
  `teamId` bigint(20) NOT NULL,
  `userGroupId` bigint(20) NOT NULL,
  PRIMARY KEY (`teamId`,`userGroupId`),
  KEY `IX_31FB0B08` (`teamId`),
  KEY `IX_7F187E63` (`userGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `usergroups_teams` */

/*Table structure for table `useridmapper` */

DROP TABLE IF EXISTS `useridmapper`;

CREATE TABLE `useridmapper` (
  `userIdMapperId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `description` varchar(75) DEFAULT NULL,
  `externalUserId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`userIdMapperId`),
  UNIQUE KEY `IX_41A32E0D` (`type_`,`externalUserId`),
  UNIQUE KEY `IX_D1C44A6E` (`userId`,`type_`),
  KEY `IX_E60EA987` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `useridmapper` */

/*Table structure for table `usernotificationdelivery` */

DROP TABLE IF EXISTS `usernotificationdelivery`;

CREATE TABLE `usernotificationdelivery` (
  `userNotificationDeliveryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `notificationType` int(11) DEFAULT NULL,
  `deliveryType` int(11) DEFAULT NULL,
  `deliver` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`userNotificationDeliveryId`),
  UNIQUE KEY `IX_8B6E3ACE` (`userId`,`portletId`,`classNameId`,`notificationType`,`deliveryType`),
  KEY `IX_C648700A` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `usernotificationdelivery` */

/*Table structure for table `usernotificationevent` */

DROP TABLE IF EXISTS `usernotificationevent`;

CREATE TABLE `usernotificationevent` (
  `uuid_` varchar(75) DEFAULT NULL,
  `userNotificationEventId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `deliverBy` bigint(20) DEFAULT NULL,
  `delivered` tinyint(4) DEFAULT NULL,
  `payload` longtext,
  `archived` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`userNotificationEventId`),
  KEY `IX_3E5D78C4` (`userId`),
  KEY `IX_3DBB361A` (`userId`,`archived`),
  KEY `IX_24F1BF0` (`userId`,`delivered`),
  KEY `IX_ECD8CFEA` (`uuid_`),
  KEY `IX_A6BAFDFE` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `usernotificationevent` */

/*Table structure for table `users_groups` */

DROP TABLE IF EXISTS `users_groups`;

CREATE TABLE `users_groups` (
  `groupId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`userId`),
  KEY `IX_C4F9E699` (`groupId`),
  KEY `IX_F10B6C6B` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users_groups` */

insert  into `users_groups`(`groupId`,`userId`) values (20182,20199),(20557,20199);

/*Table structure for table `users_orgs` */

DROP TABLE IF EXISTS `users_orgs`;

CREATE TABLE `users_orgs` (
  `organizationId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`organizationId`,`userId`),
  KEY `IX_7EF4EC0E` (`organizationId`),
  KEY `IX_FB646CA6` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users_orgs` */

/*Table structure for table `users_roles` */

DROP TABLE IF EXISTS `users_roles`;

CREATE TABLE `users_roles` (
  `roleId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`roleId`,`userId`),
  KEY `IX_C19E5F31` (`roleId`),
  KEY `IX_C1A01806` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users_roles` */

insert  into `users_roles`(`roleId`,`userId`) values (20162,20199),(20163,20159),(20165,20199),(20166,20199);

/*Table structure for table `users_teams` */

DROP TABLE IF EXISTS `users_teams`;

CREATE TABLE `users_teams` (
  `teamId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`teamId`,`userId`),
  KEY `IX_4D06AD51` (`teamId`),
  KEY `IX_A098EFBF` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users_teams` */

/*Table structure for table `users_usergroups` */

DROP TABLE IF EXISTS `users_usergroups`;

CREATE TABLE `users_usergroups` (
  `userId` bigint(20) NOT NULL,
  `userGroupId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`,`userGroupId`),
  KEY `IX_66FF2503` (`userGroupId`),
  KEY `IX_BE8102D6` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users_usergroups` */

/*Table structure for table `usertracker` */

DROP TABLE IF EXISTS `usertracker`;

CREATE TABLE `usertracker` (
  `userTrackerId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `sessionId` varchar(200) DEFAULT NULL,
  `remoteAddr` varchar(75) DEFAULT NULL,
  `remoteHost` varchar(75) DEFAULT NULL,
  `userAgent` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`userTrackerId`),
  KEY `IX_29BA1CF5` (`companyId`),
  KEY `IX_46B0AE8E` (`sessionId`),
  KEY `IX_E4EFBA8D` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `usertracker` */

/*Table structure for table `usertrackerpath` */

DROP TABLE IF EXISTS `usertrackerpath`;

CREATE TABLE `usertrackerpath` (
  `userTrackerPathId` bigint(20) NOT NULL,
  `userTrackerId` bigint(20) DEFAULT NULL,
  `path_` longtext,
  `pathDate` datetime DEFAULT NULL,
  PRIMARY KEY (`userTrackerPathId`),
  KEY `IX_14D8BCC0` (`userTrackerId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `usertrackerpath` */

/*Table structure for table `virtualhost` */

DROP TABLE IF EXISTS `virtualhost`;

CREATE TABLE `virtualhost` (
  `virtualHostId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `layoutSetId` bigint(20) DEFAULT NULL,
  `hostname` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`virtualHostId`),
  UNIQUE KEY `IX_A083D394` (`companyId`,`layoutSetId`),
  UNIQUE KEY `IX_431A3960` (`hostname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `virtualhost` */

insert  into `virtualhost`(`virtualHostId`,`companyId`,`layoutSetId`,`hostname`) values (20158,20155,0,'localhost');

/*Table structure for table `webdavprops` */

DROP TABLE IF EXISTS `webdavprops`;

CREATE TABLE `webdavprops` (
  `webDavPropsId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `props` longtext,
  PRIMARY KEY (`webDavPropsId`),
  UNIQUE KEY `IX_97DFA146` (`classNameId`,`classPK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `webdavprops` */

/*Table structure for table `website` */

DROP TABLE IF EXISTS `website`;

CREATE TABLE `website` (
  `uuid_` varchar(75) DEFAULT NULL,
  `websiteId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `url` longtext,
  `typeId` int(11) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`websiteId`),
  KEY `IX_96F07007` (`companyId`),
  KEY `IX_4F0F0CA7` (`companyId`,`classNameId`),
  KEY `IX_F960131C` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_1AA07A6D` (`companyId`,`classNameId`,`classPK`,`primary_`),
  KEY `IX_F75690BB` (`userId`),
  KEY `IX_76F15D13` (`uuid_`),
  KEY `IX_712BCD35` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `website` */

/*Table structure for table `wikinode` */

DROP TABLE IF EXISTS `wikinode`;

CREATE TABLE `wikinode` (
  `uuid_` varchar(75) DEFAULT NULL,
  `nodeId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `lastPostDate` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`nodeId`),
  UNIQUE KEY `IX_920CD8B1` (`groupId`,`name`),
  UNIQUE KEY `IX_7609B2AE` (`uuid_`,`groupId`),
  KEY `IX_5D6FE3F0` (`companyId`),
  KEY `IX_B54332D6` (`companyId`,`status`),
  KEY `IX_B480A672` (`groupId`),
  KEY `IX_23325358` (`groupId`,`status`),
  KEY `IX_6C112D7C` (`uuid_`),
  KEY `IX_E0E6D12C` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `wikinode` */

/*Table structure for table `wikipage` */

DROP TABLE IF EXISTS `wikipage`;

CREATE TABLE `wikipage` (
  `uuid_` varchar(75) DEFAULT NULL,
  `pageId` bigint(20) NOT NULL,
  `resourcePrimKey` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `nodeId` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `version` double DEFAULT NULL,
  `minorEdit` tinyint(4) DEFAULT NULL,
  `content` longtext,
  `summary` longtext,
  `format` varchar(75) DEFAULT NULL,
  `head` tinyint(4) DEFAULT NULL,
  `parentTitle` varchar(255) DEFAULT NULL,
  `redirectTitle` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`pageId`),
  UNIQUE KEY `IX_3D4AF476` (`nodeId`,`title`,`version`),
  UNIQUE KEY `IX_2CD67C81` (`resourcePrimKey`,`nodeId`,`version`),
  UNIQUE KEY `IX_899D3DFB` (`uuid_`,`groupId`),
  KEY `IX_A2001730` (`format`),
  KEY `IX_16E99B0A` (`groupId`,`nodeId`,`head`),
  KEY `IX_BA72B89A` (`groupId`,`nodeId`,`head`,`parentTitle`,`status`),
  KEY `IX_E0092FF0` (`groupId`,`nodeId`,`head`,`status`),
  KEY `IX_941E429C` (`groupId`,`nodeId`,`status`),
  KEY `IX_5FF21CE6` (`groupId`,`nodeId`,`title`,`head`),
  KEY `IX_CAA451D6` (`groupId`,`userId`,`nodeId`,`status`),
  KEY `IX_C8A9C476` (`nodeId`),
  KEY `IX_E7F635CA` (`nodeId`,`head`),
  KEY `IX_65E84AF4` (`nodeId`,`head`,`parentTitle`),
  KEY `IX_9F7655DA` (`nodeId`,`head`,`parentTitle`,`status`),
  KEY `IX_64CCB282` (`nodeId`,`head`,`redirectTitle`),
  KEY `IX_40F94F68` (`nodeId`,`head`,`redirectTitle`,`status`),
  KEY `IX_432F0AB0` (`nodeId`,`head`,`status`),
  KEY `IX_46EEF3C8` (`nodeId`,`parentTitle`),
  KEY `IX_1ECC7656` (`nodeId`,`redirectTitle`),
  KEY `IX_546F2D5C` (`nodeId`,`status`),
  KEY `IX_997EEDD2` (`nodeId`,`title`),
  KEY `IX_E745EA26` (`nodeId`,`title`,`head`),
  KEY `IX_BEA33AB8` (`nodeId`,`title`,`status`),
  KEY `IX_85E7CC76` (`resourcePrimKey`),
  KEY `IX_B771D67` (`resourcePrimKey`,`nodeId`),
  KEY `IX_E1F55FB` (`resourcePrimKey`,`nodeId`,`head`),
  KEY `IX_94D1054D` (`resourcePrimKey`,`nodeId`,`status`),
  KEY `IX_1725355C` (`resourcePrimKey`,`status`),
  KEY `IX_FBBE7C96` (`userId`,`nodeId`,`status`),
  KEY `IX_9C0E478F` (`uuid_`),
  KEY `IX_5DC4BD39` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `wikipage` */

/*Table structure for table `wikipageresource` */

DROP TABLE IF EXISTS `wikipageresource`;

CREATE TABLE `wikipageresource` (
  `uuid_` varchar(75) DEFAULT NULL,
  `resourcePrimKey` bigint(20) NOT NULL,
  `nodeId` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`resourcePrimKey`),
  UNIQUE KEY `IX_21277664` (`nodeId`,`title`),
  KEY `IX_BE898221` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `wikipageresource` */

/*Table structure for table `workflowdefinitionlink` */

DROP TABLE IF EXISTS `workflowdefinitionlink`;

CREATE TABLE `workflowdefinitionlink` (
  `workflowDefinitionLinkId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `typePK` bigint(20) DEFAULT NULL,
  `workflowDefinitionName` varchar(75) DEFAULT NULL,
  `workflowDefinitionVersion` int(11) DEFAULT NULL,
  PRIMARY KEY (`workflowDefinitionLinkId`),
  KEY `IX_A8B0D276` (`companyId`),
  KEY `IX_A4DB1F0F` (`companyId`,`workflowDefinitionName`,`workflowDefinitionVersion`),
  KEY `IX_B6EE8C9E` (`groupId`,`companyId`,`classNameId`),
  KEY `IX_1E5B9905` (`groupId`,`companyId`,`classNameId`,`classPK`),
  KEY `IX_705B40EE` (`groupId`,`companyId`,`classNameId`,`classPK`,`typePK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `workflowdefinitionlink` */

/*Table structure for table `workflowinstancelink` */

DROP TABLE IF EXISTS `workflowinstancelink`;

CREATE TABLE `workflowinstancelink` (
  `workflowInstanceLinkId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `workflowInstanceId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`workflowInstanceLinkId`),
  KEY `IX_415A7007` (`groupId`,`companyId`,`classNameId`,`classPK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `workflowinstancelink` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
