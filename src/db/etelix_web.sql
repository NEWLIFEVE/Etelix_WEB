CREATE DATABASE  IF NOT EXISTS `etelix_web` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `etelix_web`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 172.16.17.190    Database: etelix_web
-- ------------------------------------------------------
-- Server version	5.5.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `_p3_media_meta_v0_15`
--

DROP TABLE IF EXISTS `_p3_media_meta_v0_15`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_p3_media_meta_v0_15` (
  `id` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `type` varchar(64) DEFAULT NULL,
  `language` varchar(8) DEFAULT NULL,
  `treeParent_id` int(11) DEFAULT NULL,
  `treePosition` int(11) DEFAULT NULL,
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `keywords` text,
  `customData` text,
  `label` int(11) DEFAULT NULL,
  `owner` varchar(64) DEFAULT NULL,
  `checkAccessCreate` varchar(256) DEFAULT NULL,
  `checkAccessRead` varchar(256) DEFAULT NULL,
  `checkAccessUpdate` varchar(256) DEFAULT NULL,
  `checkAccessDelete` varchar(256) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdBy` varchar(64) DEFAULT NULL,
  `modifiedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modifiedBy` varchar(64) DEFAULT NULL,
  `guid` varchar(64) DEFAULT NULL,
  `ancestor_guid` varchar(64) DEFAULT NULL,
  `model` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_p3_media_meta_treeParent_id` (`treeParent_id`),
  CONSTRAINT `fk_p3_media_meta_treeParent_id` FOREIGN KEY (`treeParent_id`) REFERENCES `_p3_media_meta_v0_15` (`id`),
  CONSTRAINT `fk_p3_media_id` FOREIGN KEY (`id`) REFERENCES `_p3_media_v0_15` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_p3_media_meta_v0_15`
--

LOCK TABLES `_p3_media_meta_v0_15` WRITE;
/*!40000 ALTER TABLE `_p3_media_meta_v0_15` DISABLE KEYS */;
/*!40000 ALTER TABLE `_p3_media_meta_v0_15` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_p3_media_v0_15`
--

DROP TABLE IF EXISTS `_p3_media_v0_15`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_p3_media_v0_15` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` text,
  `type` int(11) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `md5` varchar(32) DEFAULT NULL,
  `originalName` varchar(128) DEFAULT NULL,
  `mimeType` varchar(128) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `info` text,
  `nameId` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `p3_media_nameId_unique` (`nameId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_p3_media_v0_15`
--

LOCK TABLES `_p3_media_v0_15` WRITE;
/*!40000 ALTER TABLE `_p3_media_v0_15` DISABLE KEYS */;
/*!40000 ALTER TABLE `_p3_media_v0_15` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_p3_page_meta_v0_16`
--

DROP TABLE IF EXISTS `_p3_page_meta_v0_16`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_p3_page_meta_v0_16` (
  `id` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `type` varchar(64) DEFAULT NULL,
  `language` varchar(8) DEFAULT NULL,
  `treeParent_id` int(11) DEFAULT NULL,
  `treePosition` int(11) DEFAULT NULL,
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `keywords` text,
  `customData` text,
  `label` int(11) DEFAULT NULL,
  `owner` varchar(64) DEFAULT NULL,
  `checkAccessCreate` varchar(256) DEFAULT NULL,
  `checkAccessRead` varchar(256) DEFAULT NULL,
  `checkAccessUpdate` varchar(256) DEFAULT NULL,
  `checkAccessDelete` varchar(256) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdBy` varchar(64) DEFAULT NULL,
  `modifiedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modifiedBy` varchar(64) DEFAULT NULL,
  `guid` varchar(64) DEFAULT NULL,
  `ancestor_guid` varchar(64) DEFAULT NULL,
  `model` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_p3_page_meta_treeParent_id` (`treeParent_id`),
  CONSTRAINT `fk_p3_page_meta_treeParent_id` FOREIGN KEY (`treeParent_id`) REFERENCES `_p3_page_meta_v0_16` (`id`),
  CONSTRAINT `fk_p3_page_id` FOREIGN KEY (`id`) REFERENCES `_p3_page_v0_16` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_p3_page_meta_v0_16`
--

LOCK TABLES `_p3_page_meta_v0_16` WRITE;
/*!40000 ALTER TABLE `_p3_page_meta_v0_16` DISABLE KEYS */;
INSERT INTO `_p3_page_meta_v0_16` VALUES (1,30,NULL,'*',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,'2014-03-31 13:49:28','1','2013-05-15 02:10:04','1','4DACAAC0-DA36-4EE5-B5EE-CD2A71202B11',NULL,'P3Page'),(2,30,NULL,'*',1,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,'2014-03-31 13:49:28','1','0000-00-00 00:00:00',NULL,'61A27DA3-D5E2-405D-A33D-E1A67AAEB33C',NULL,'P3Page'),(3,30,NULL,'*',2,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,'2014-03-31 13:49:28','1','2013-05-15 02:14:57','1','98FAF80B-39D9-4245-A248-497215A8F255',NULL,'P3Page'),(4,30,NULL,'*',2,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,'2014-03-31 13:49:28','1','2013-05-15 02:28:04','1','682954BD-BDD5-4B98-B0B5-6778A1FEBE6F',NULL,'P3Page'),(5,30,NULL,'*',2,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,'2014-03-31 13:49:28','1','2013-05-15 02:29:24','1','71B94105-58F0-4277-A377-9DF5DB0BE351',NULL,'P3Page');
/*!40000 ALTER TABLE `_p3_page_meta_v0_16` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_p3_page_translation_v0_16`
--

DROP TABLE IF EXISTS `_p3_page_translation_v0_16`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_p3_page_translation_v0_16` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p3_page_id` int(11) NOT NULL,
  `language` varchar(8) DEFAULT NULL,
  `seoUrl` varchar(255) DEFAULT NULL,
  `pageTitle` varchar(255) DEFAULT NULL,
  `menuName` varchar(128) NOT NULL,
  `keywords` text,
  `description` text,
  `createdAt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modifiedAt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `fk_p3_page_p3_page_id` (`p3_page_id`),
  CONSTRAINT `fk_p3_page_p3_page_id` FOREIGN KEY (`p3_page_id`) REFERENCES `_p3_page_v0_16` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_p3_page_translation_v0_16`
--

LOCK TABLES `_p3_page_translation_v0_16` WRITE;
/*!40000 ALTER TABLE `_p3_page_translation_v0_16` DISABLE KEYS */;
INSERT INTO `_p3_page_translation_v0_16` VALUES (1,2,'en','examples','Examples','Examples',NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,3,'en',NULL,NULL,'Basic HTML',NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,4,'en',NULL,NULL,'Carousel',NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,5,'en',NULL,NULL,'Fancybox',NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `_p3_page_translation_v0_16` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_p3_page_v0_16`
--

DROP TABLE IF EXISTS `_p3_page_v0_16`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_p3_page_v0_16` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layout` varchar(128) DEFAULT NULL,
  `view` varchar(128) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `nameId` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `p3_page_nameId_unique` (`nameId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_p3_page_v0_16`
--

LOCK TABLES `_p3_page_v0_16` WRITE;
/*!40000 ALTER TABLE `_p3_page_v0_16` DISABLE KEYS */;
INSERT INTO `_p3_page_v0_16` VALUES (1,NULL,NULL,'{\"route\":\"/site/index\"}','Navbar'),(2,NULL,NULL,NULL,NULL),(3,'//layouts/main','//p3pages/column1','{}',NULL),(4,'//layouts/main','//p3pages/column1','{}',NULL),(5,'//layouts/main','//p3pages/column1','{}',NULL);
/*!40000 ALTER TABLE `_p3_page_v0_16` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_p3_widget_meta_v0_16`
--

DROP TABLE IF EXISTS `_p3_widget_meta_v0_16`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_p3_widget_meta_v0_16` (
  `id` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `type` varchar(64) DEFAULT NULL,
  `language` varchar(8) DEFAULT NULL,
  `treeParent_id` int(11) DEFAULT NULL,
  `treePosition` int(11) DEFAULT NULL,
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `keywords` text,
  `customData` text,
  `label` int(11) DEFAULT NULL,
  `owner` varchar(64) DEFAULT NULL,
  `checkAccessCreate` varchar(256) DEFAULT NULL,
  `checkAccessRead` varchar(256) DEFAULT NULL,
  `checkAccessUpdate` varchar(256) DEFAULT NULL,
  `checkAccessDelete` varchar(256) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdBy` varchar(64) DEFAULT NULL,
  `modifiedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modifiedBy` varchar(64) DEFAULT NULL,
  `guid` varchar(64) DEFAULT NULL,
  `ancestor_guid` varchar(64) DEFAULT NULL,
  `model` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_p3_widget_meta_treeParent_id` (`treeParent_id`),
  CONSTRAINT `fk_p3_widget_meta_treeParent_id` FOREIGN KEY (`treeParent_id`) REFERENCES `_p3_widget_meta_v0_16` (`id`),
  CONSTRAINT `fk_p3_widget_id` FOREIGN KEY (`id`) REFERENCES `_p3_widget_v0_16` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_p3_widget_meta_v0_16`
--

LOCK TABLES `_p3_widget_meta_v0_16` WRITE;
/*!40000 ALTER TABLE `_p3_widget_meta_v0_16` DISABLE KEYS */;
INSERT INTO `_p3_widget_meta_v0_16` VALUES (1,30,NULL,'*',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,'2014-03-31 13:49:28','1','2014-03-31 13:49:27',NULL,'017DE3C5-D643-4771-AC23-0003BE613972',NULL,'P3Widget'),(2,30,NULL,'*',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,'2014-03-31 13:49:28','1','2014-03-31 13:49:27',NULL,'B38A147B-EE98-4C79-9F46-6AA8A742FA8A',NULL,'P3Widget'),(3,30,NULL,'*',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,'2014-03-31 13:49:28','1','2014-03-31 13:49:27',NULL,'86453BF3-50F4-491F-8F15-144A14073B12',NULL,'P3Widget'),(4,30,NULL,'*',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,'2014-03-31 13:49:28','1','2014-03-31 13:49:27',NULL,'DA675921-1139-4FF0-B168-D8C8B9C3EC30',NULL,'P3Widget'),(5,30,NULL,'*',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,'2014-03-31 13:49:28','1','2014-03-31 13:49:27',NULL,'CFE5CA78-B09A-4AEA-A5AE-254CC84F4371',NULL,'P3Widget');
/*!40000 ALTER TABLE `_p3_widget_meta_v0_16` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_p3_widget_translation_v0_16`
--

DROP TABLE IF EXISTS `_p3_widget_translation_v0_16`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_p3_widget_translation_v0_16` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p3_widget_id` int(11) NOT NULL,
  `language` varchar(8) NOT NULL,
  `properties` text,
  `content` text,
  `createdAt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modifiedAt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `fk_p3_widget_p3_widget_id` (`p3_widget_id`),
  CONSTRAINT `fk_p3_widget_p3_widget_id` FOREIGN KEY (`p3_widget_id`) REFERENCES `_p3_widget_v0_16` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_p3_widget_translation_v0_16`
--

LOCK TABLES `_p3_widget_translation_v0_16` WRITE;
/*!40000 ALTER TABLE `_p3_widget_translation_v0_16` DISABLE KEYS */;
INSERT INTO `_p3_widget_translation_v0_16` VALUES (1,1,'en','{\"actionPrefix\":\"NULL\",\"skin\":\"default\"}','<div data-intro=\"Hello step one!\" data-step=\"1\" id=\"login\" style=\"background:#f3f3f3;border-radius:5px;padding:20px;margin-bottom:20px;\">\n\n	<img src=\"https://raw.github.com/waalzer/app-demo-data/f8379e8e4bd4a5150f08c0666d75ca91212a8f9a/images/phundament.png\" style=\"float:left;margin-right:20px;margin-bottom:10px;\" />\n\n	<h1>\n\n		Welcome to Phundament 3!</h1>\n\n	<h3>\n\n		You will like it.</h3>\n\n	<p>\n\n		<a href=\"https://github.com/phundament/\" target=\"_blank\">View on GitHub</a> | <a href=\"https://github.com/phundament/app/wiki\" target=\"_blank\">The Definitive Guide</a> |&nbsp;<a href=\"http://phundament.com/\" target=\"_blank\">Phundament Homepage</a></p>\n\n</div>\n\n<div class=\"row\">\n\n	<div class=\"span4\" data-intro=\"Hello step one!\" data-step=\"2\" id=\"login\" style=\"background:#f3f3f3;border-radius:5px;margin-bottom:20px;\">\n\n		<div style=\"padding:10px;\">\n\n			<h1>\n\n				Login</h1>\n\n			<p>\n\n				Login with&nbsp;<code>admin/admin</code></p>\n\n			<p>\n\n				<img alt=\"\" src=\"https://raw.github.com/waalzer/app-demo-data/f8379e8e4bd4a5150f08c0666d75ca91212a8f9a/images/login.png\" /></p>\n\n		</div>\n\n	</div>\n\n	<div class=\"span4\" data-intro=\"Hello step one!\" data-step=\"3\" id=\"login\" style=\"background:#f3f3f3;border-radius:5px;margin-bottom:20px;\">\n\n		<div style=\"padding:10px;\">\n\n			<h1>\n\n				Create Pages</h1>\n\n			<p>\n\n				<strong>Create index</strong></p>\n\n			<p>\n\n				Log in and go to Sitemap in the top menu. Click <span class=\"label label-error\">Create</span>&nbsp;then&nbsp;<span class=\"label label-error\">Text input</span> and paste <code>{&quot;route&quot;:&quot;/site/index&quot;}</code>&nbsp;in the text box to add this page as index.</p>\n\n			<p>\n\n				Select Layout <span class=\"label label-error\">_TbNavbar</span> and save the page.</p>\n\n			<p>\n\n				<strong>Create Child Page</strong></p>\n\n			<p>\n\n				Go to your index page. Click <span class=\"label label-error\">Append Child Page</span> in the top menu. Select&nbsp;<span class=\"label label-error\">Main Layout</span> and save.</p>\n\n			<p>\n\n				<strong>Add translation</strong></p>\n\n			<p>\n\n				You will see * after the pages name in the top menu because there isn&#39;t any translation for it. Add one by clicking <span class=\"label label-error\">+ Add Translation</span>. Choose language, menu name and page title.</p>\n\n			<p>\n\n				<strong>Create Sibling Pages</strong></p>\n\n			<p>\n\n				To add more pages at same level in the top menu click <span class=\"label label-error\">Append Sibling Page</span>.</p>\n\n		</div>\n\n	</div>\n\n	<div class=\"span4\" data-intro=\"Hello step one!\" data-step=\"4\" id=\"login\" style=\"background:#f3f3f3;border-radius:5px;margin-bottom:20px;\">\n\n		<div style=\"padding:10px;\">\n\n			<h1>\n\n				Create Widgets</h1>\n\n			<p>\n\n				<strong>Switch to edit mode</strong></p>\n\n			<p>\n\n				Go to a page and switch to the edit mode by clicking the edit icon at the top.</p>\n\n			<p>\n\n				<img alt=\"\" src=\"https://raw.github.com/waalzer/app-demo-data/f8379e8e4bd4a5150f08c0666d75ca91212a8f9a/images/topmenubar.png\" style=\"width: 299px; height: 35px;\" /></p>\n\n			<p>\n\n				<strong>Create a widget</strong></p>\n\n			<p>\n\n				Hover over container top or main and add <span class=\"label label-error\">Basic HTML Widget</span>.</p>\n\n			<p>\n\n				<strong>Add translation and content</strong></p>\n\n			<p>\n\n				Then add a translation, type some text in the editor, try to style it and add some media.</p>\n\n			<p>\n\n				<strong>See the guide</strong></p>\n\n			<p>\n\n				<a href=\"https://github.com/phundament/app/wiki/Pages\" target=\"_blank\">Pages</a>,&nbsp;<a href=\"https://github.com/phundament/app/wiki/Widgets\" target=\"_blank\">Widgets</a>, <a href=\"https://github.com/phundament/app/wiki/Ckeditor\" target=\"_blank\">CKEditor</a> and <a href=\"https://github.com/phundament/app/wiki/Media\" target=\"_blank\">Media</a>.</p>\n\n		</div>\n\n	</div>\n\n</div>\n\n<div style=\"background:#f3f3f3;border-radius:5px;padding:20px;margin-bottom:20px;\">\n\n	<h1>\n\n		Give us some Feedback</h1>\n\n	<p>\n\n		<a href=\"https://groups.google.com/forum/?fromgroups#!forum/phundament-dev\" target=\"_blank\">Google Groups</a>&nbsp;| <a href=\"https://plus.google.com/u/0/114873431066202526630/posts\" target=\"_blank\">Google+</a> | <a href=\"https://www.facebook.com/phundament\" target=\"_blank\">Facebook</a>&nbsp;| <a href=\"https://twitter.com/phundament\" target=\"_blank\">Twitter</a>&nbsp;| <a href=\"http://www.yiiframework.com/forum/index.php/topic/24696-extension-phundament\" target=\"_blank\">Yii Forum</a></p>\n\n</div>\n\n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,2,'en','{\"actionPrefix\":\"NULL\",\"skin\":\"default\"}','<div>\r\n	<h2>\r\n		Ex feugait processus</h2>\r\n	<div class=\"row\">\r\n		<div class=\"span4\">\r\n			<p>\r\n				<a href=\"http://placehold.it/1200x900.jpg\"><img alt=\"\" src=\"http://placehold.it/400x300.jpg\" /></a></p>\r\n			<p>\r\n				Ex feugait processus Est veniam sit, Qui ut typi con. Sequat nobis elit. Liber facer elit delenit nunc consequat. Parum augue in minim vero amet. Te qui ut per molestie notare.</p>\r\n		</div>\r\n		<div class=\"span4\">\r\n			<p>\r\n				<a href=\"http://placehold.it/1200x900.jpg\"><img alt=\"\" src=\"http://placehold.it/400x300.jpg\" /></a></p>\r\n			<p>\r\n				Ex feugait processus Est veniam sit, Qui ut typi con. Sequat nobis elit. Liber facer elit delenit nunc consequat. Parum augue in minim vero amet. Te qui ut per molestie notare.</p>\r\n		</div>\r\n		<div class=\"span4\">\r\n			<p>\r\n				<a href=\"http://placehold.it/1200x900.jpg\"><img alt=\"\" src=\"http://placehold.it/400x300.jpg\" /></a></p>\r\n			<p>\r\n				Ex feugait processus Est veniam sit, Qui ut typi con. Sequat nobis elit. Liber facer elit delenit nunc consequat. Parum augue in minim vero amet. Te qui ut per molestie notare.</p>\r\n		</div>\r\n	</div>\r\n</div>\r\n<div>\r\n</div>\r\n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,3,'en','{\"actionPrefix\":\"NULL\",\"skin\":\"default\"}','<h2>\r\n	Properties</h2>\r\n<pre>\r\n{\r\n    &quot;actionPrefix&quot;: &quot;NULL&quot;,\r\n    &quot;skin&quot;: &quot;default&quot;\r\n}</pre>\r\n<h2>\r\n	HTML Source-Code</h2>\r\n<pre>\r\n&lt;div&gt;\r\n&nbsp;&nbsp;&nbsp; &lt;h2&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ex feugait processus&lt;/h2&gt;\r\n\r\n&nbsp;&nbsp;&nbsp; &lt;div class=&quot;row&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;span4&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;p&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;a href=&quot;http://placehold.it/1200x900.jpg&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http://placehold.it/400x300.jpg&quot;/&gt;&lt;/a&gt;&lt;/p&gt;\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;p&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ex feugait processus Est veniam sit, Qui ut typi con. Sequat nobis elit. Liber facer elit delenit nunc\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; consequat. Parum augue in minim vero amet. Te qui ut per molestie notare.&lt;/p&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;span4&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;p&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;a href=&quot;http://placehold.it/1200x900.jpg&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http://placehold.it/400x300.jpg&quot;/&gt;&lt;/a&gt;&lt;/p&gt;\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;p&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ex feugait processus Est veniam sit, Qui ut typi con. Sequat nobis elit. Liber facer elit delenit nunc\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; consequat. Parum augue in minim vero amet. Te qui ut per molestie notare.&lt;/p&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;span4&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;p&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;a href=&quot;http://placehold.it/1200x900.jpg&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http://placehold.it/400x300.jpg&quot;/&gt;&lt;/a&gt;&lt;/p&gt;\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;p&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ex feugait processus Est veniam sit, Qui ut typi con. Sequat nobis elit. Liber facer elit delenit nunc\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; consequat. Parum augue in minim vero amet. Te qui ut per molestie notare.&lt;/p&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp; &lt;/div&gt;\r\n&lt;/div&gt;</pre>\r\n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,4,'en','{\r\n  \"prevLabel\":\"‹\",\r\n  \"nextLabel\":\"›\",\r\n  \"slide\":\"1\",\r\n  \"displayPrevAndNext\":\"1\",\r\n  \"items\":{\r\n    \"0\":{\r\n      \"image\":\"http://placehold.it/1400x800&text=This+stuff\",\r\n      \"label\":\"It\'s foo bar!\",\r\n      \"caption\":\"Lorem ipsum dolor sit amet, est te labitur tincidunt consequuntur, mutat consul dicunt id sed. Et mei quando aliquid, sed ad graece audiam ornatus. Vel id adhuc consul perfecto. Decore ignota euismod eos ex.\"\r\n    },\r\n    \"1\":{\r\n      \"image\":\"http://placehold.it/1400x800&text=rockz!\",\r\n      \"label\":\"Sup?\",\r\n      \"caption\":\"Lorem ipsum dolor sit amet, est te labitur tincidunt consequuntur, mutat consul dicunt id sed. Et mei quando aliquid, sed ad graece audiam ornatus. Vel id adhuc consul perfecto. Decore ignota euismod eos ex.\"\r\n    }\r\n  },      \r\n  \"actionPrefix\":\"NULL\",\r\n  \"skin\":\"default\"\r\n}','<div>\r\n	<div class=\"row\">\r\n		<div class=\"span6\">\r\n			{WIDGET_CONTENT}</div>\r\n		<div class=\"span6\">\r\n			<h2>\r\n				Ex feugait processus</h2>\r\n			<p>\r\n				Ex feugait processus Est veniam sit, Qui ut typi con. Sequat nobis elit. Liber facer elit delenit nunc consequat. Parum augue in minim vero amet. Te qui ut per molestie notare.</p>\r\n			<p>\r\n				Ex feugait processus Est veniam sit, Qui ut typi con. Sequat nobis elit. Liber facer elit delenit nunc consequat. Parum augue in minim vero amet. Te qui ut per molestie notare.Ex feugait processus Est veniam sit, Qui ut typi con. Sequat nobis elit. Liber facer elit delenit nunc consequat. Parum augue in minim vero amet. Te qui ut per molestie notare.</p>\r\n		</div>\r\n	</div>\r\n</div>\r\n<div>\r\n</div>\r\n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,5,'en','{\"actionPrefix\":\"NULL\",\"skin\":\"default\"}','<div>\r\n	<h2>\r\n		Properties</h2>\r\n	<pre>\r\n{\r\n    &quot;prevLabel&quot;: &quot;&lsaquo;&quot;,\r\n    &quot;nextLabel&quot;: &quot;&rsaquo;&quot;,\r\n    &quot;slide&quot;: &quot;1&quot;,\r\n    &quot;displayPrevAndNext&quot;: &quot;1&quot;,\r\n    &quot;items&quot;: {\r\n        &quot;0&quot;: {\r\n            &quot;image&quot;: &quot;http://placehold.it/1400x800&amp;text=This+stuff&quot;,\r\n            &quot;label&quot;: &quot;It&#39;s foo bar!&quot;,\r\n            &quot;caption&quot;: &quot;Lorem ipsum dolor sit amet, est te labitur tincidunt consequuntur, mutat consul dicunt id sed. Et mei quando aliquid, sed ad graece audiam ornatus. Vel id adhuc consul perfecto. Decore ignota euismod eos ex.&quot;\r\n        },\r\n        &quot;1&quot;: {\r\n            &quot;image&quot;: &quot;http://placehold.it/1400x800&amp;text=rockz!&quot;,\r\n            &quot;label&quot;: &quot;Sup?&quot;,\r\n            &quot;caption&quot;: &quot;Lorem ipsum dolor sit amet, est te labitur tincidunt consequuntur, mutat consul dicunt id sed. Et mei quando aliquid, sed ad graece audiam ornatus. Vel id adhuc consul perfecto. Decore ignota euismod eos ex.&quot;\r\n        }\r\n    },\r\n    &quot;actionPrefix&quot;: &quot;NULL&quot;,\r\n    &quot;skin&quot;: &quot;default&quot;\r\n}</pre>\r\n	<h2>\r\n		HTML Source-Code</h2>\r\n	<pre>\r\n&lt;div&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n  &lt;div class=&quot;span6&quot;&gt;\r\n   {WIDGET_CONTENT}&lt;/div&gt;\r\n  &lt;div class=&quot;span6&quot;&gt;\r\n   &lt;h2&gt;\r\n    Ex feugait processus&lt;/h2&gt;\r\n   &lt;p&gt;\r\n    Ex feugait processus Est veniam sit, Qui ut typi con. Sequat nobis elit. Liber facer elit delenit nunc consequat. Parum augue in minim vero amet. Te qui ut per molestie notare.&lt;/p&gt;\r\n   &lt;p&gt;\r\n    Ex feugait processus Est veniam sit, Qui ut typi con. Sequat nobis elit. Liber facer elit delenit nunc consequat. Parum augue in minim vero amet. Te qui ut per molestie notare.Ex feugait processus Est veniam sit, Qui ut typi con. Sequat nobis elit. Liber facer elit delenit nunc consequat. Parum augue in minim vero amet. Te qui ut per molestie notare.&lt;/p&gt;\r\n  &lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;</pre>\r\n	<div class=\"row-fluid\">\r\n	</div>\r\n</div>\r\n<div>\r\n</div>\r\n','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `_p3_widget_translation_v0_16` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_p3_widget_v0_16`
--

DROP TABLE IF EXISTS `_p3_widget_v0_16`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_p3_widget_v0_16` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(128) NOT NULL,
  `rank` int(11) NOT NULL DEFAULT '0',
  `containerId` varchar(128) NOT NULL,
  `moduleId` varchar(128) NOT NULL,
  `controllerId` varchar(128) NOT NULL,
  `actionName` varchar(128) NOT NULL,
  `requestParam` varchar(128) NOT NULL,
  `sessionParam` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_p3_widget_v0_16`
--

LOCK TABLES `_p3_widget_v0_16` WRITE;
/*!40000 ALTER TABLE `_p3_widget_v0_16` DISABLE KEYS */;
INSERT INTO `_p3_widget_v0_16` VALUES (1,'CWidget',0,'top','','site','index','',''),(2,'CWidget',0,'top','p3pages','default','page','3',''),(3,'CWidget',0,'main','p3pages','default','page','3',''),(4,'TbCarousel',0,'top','p3pages','default','page','4',''),(5,'CWidget',0,'main','p3pages','default','page','4','');
/*!40000 ALTER TABLE `_p3_widget_v0_16` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authassignment`
--

DROP TABLE IF EXISTS `authassignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authassignment` (
  `itemname` varchar(64) NOT NULL,
  `userid` varchar(64) NOT NULL,
  `bizrule` text,
  `data` text,
  KEY `fk_authitem_itemname` (`itemname`),
  CONSTRAINT `fk_authitem_itemname` FOREIGN KEY (`itemname`) REFERENCES `authitem` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authassignment`
--

LOCK TABLES `authassignment` WRITE;
/*!40000 ALTER TABLE `authassignment` DISABLE KEYS */;
INSERT INTO `authassignment` VALUES ('Editor','1',NULL,'N;'),('Admin','1',NULL,'N;');
/*!40000 ALTER TABLE `authassignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authitem`
--

DROP TABLE IF EXISTS `authitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authitem` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authitem`
--

LOCK TABLES `authitem` WRITE;
/*!40000 ALTER TABLE `authitem` DISABLE KEYS */;
INSERT INTO `authitem` VALUES ('Admin',2,NULL,NULL,'N;'),('Authenticated',2,'All user accounts','return !Yii::app()->user->isGuest;','N;'),('Editor',2,'Content Editor (Widgets, Media Files)',NULL,'N;'),('Guest',2,NULL,'return Yii::app()->user->isGuest;','N;'),('P3admin.Default.*',1,NULL,NULL,'N;'),('P3admin.Default.Index',0,NULL,NULL,'N;'),('P3admin.Default.Settings',0,NULL,NULL,'N;'),('P3admin.Module.*',1,NULL,NULL,'N;'),('P3media.Ckeditor.*',1,NULL,NULL,'N;'),('P3media.Default.*',1,NULL,NULL,'N;'),('P3media.File.*',1,NULL,NULL,'N;'),('P3media.Import.*',1,NULL,NULL,'N;'),('P3media.P3Media.*',1,NULL,NULL,'N;'),('P3media.P3Media.Create',0,NULL,NULL,'N;'),('P3media.P3Media.Delete',0,NULL,NULL,'N;'),('P3media.P3Media.Update',0,NULL,NULL,'N;'),('P3media.P3Media.View',0,NULL,NULL,'N;'),('P3media.P3MediaMeta.*',1,NULL,NULL,'N;'),('P3media.P3MediaTranslation.Create',0,NULL,NULL,'N;'),('P3media.P3MediaTranslation.Delete',0,NULL,NULL,'N;'),('P3media.P3MediaTranslation.Update',0,NULL,NULL,'N;'),('P3media.P3MediaTranslation.View',0,NULL,NULL,'N;'),('P3pages.Default.*',1,NULL,NULL,'N;'),('P3pages.P3Page.*',1,NULL,NULL,'N;'),('P3pages.P3Page.Create',0,NULL,NULL,'N;'),('P3pages.P3Page.Delete',0,NULL,NULL,'N;'),('P3pages.P3Page.Update',0,NULL,NULL,'N;'),('P3pages.P3Page.View',0,NULL,NULL,'N;'),('P3pages.P3PageMeta.*',1,NULL,NULL,'N;'),('P3pages.P3PageTranslation.*',1,NULL,NULL,'N;'),('P3pages.P3PageTranslation.Create',0,NULL,NULL,'N;'),('P3pages.P3PageTranslation.Delete',0,NULL,NULL,'N;'),('P3pages.P3PageTranslation.Update',0,NULL,NULL,'N;'),('P3pages.P3PageTranslation.View',0,NULL,NULL,'N;'),('P3widgets.Default.*',1,NULL,NULL,'N;'),('P3widgets.P3Widget.*',1,NULL,NULL,'N;'),('P3widgets.P3Widget.Create',0,NULL,NULL,'N;'),('P3widgets.P3Widget.Delete',0,NULL,NULL,'N;'),('P3widgets.P3Widget.Update',0,NULL,NULL,'N;'),('P3widgets.P3Widget.View',0,NULL,NULL,'N;'),('P3widgets.P3WidgetMeta.*',1,NULL,NULL,'N;'),('P3widgets.P3WidgetTranslation.*',1,NULL,NULL,'N;'),('P3widgets.P3WidgetTranslation.Create',0,NULL,NULL,'N;'),('P3widgets.P3WidgetTranslation.Delete',0,NULL,NULL,'N;'),('P3widgets.P3WidgetTranslation.Update',0,NULL,NULL,'N;'),('P3widgets.P3WidgetTranslation.View',0,NULL,NULL,'N;'),('P3widgets.Widget.*',1,'Frontend Editor',NULL,'N;');
/*!40000 ALTER TABLE `authitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authitemchild`
--

DROP TABLE IF EXISTS `authitemchild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authitemchild` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  KEY `fk_authitem_parent` (`parent`),
  KEY `fk_authitem_child` (`child`),
  CONSTRAINT `fk_authitem_child` FOREIGN KEY (`child`) REFERENCES `authitem` (`name`),
  CONSTRAINT `fk_authitem_parent` FOREIGN KEY (`parent`) REFERENCES `authitem` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authitemchild`
--

LOCK TABLES `authitemchild` WRITE;
/*!40000 ALTER TABLE `authitemchild` DISABLE KEYS */;
INSERT INTO `authitemchild` VALUES ('Editor','P3media.Ckeditor.*'),('Editor','P3media.Default.*'),('Editor','P3media.Import.*'),('Editor','P3media.P3Media.*'),('Editor','P3media.P3MediaMeta.*'),('Editor','P3widgets.Default.*'),('Editor','P3widgets.Widget.*'),('Editor','P3widgets.P3Widget.*'),('Editor','P3widgets.P3WidgetMeta.*'),('Editor','P3widgets.P3WidgetTranslation.*'),('Editor','P3pages.Default.*'),('Editor','P3pages.P3Page.*'),('Editor','P3pages.P3PageMeta.*'),('Editor','P3pages.P3PageTranslation.*'),('Editor','P3admin.Default.Index'),('Editor','P3widgets.P3Widget.Create'),('Editor','P3widgets.P3Widget.View'),('Editor','P3widgets.P3Widget.Update'),('Editor','P3widgets.P3Widget.Delete'),('Editor','P3widgets.P3WidgetTranslation.Create'),('Editor','P3widgets.P3WidgetTranslation.View'),('Editor','P3widgets.P3WidgetTranslation.Update'),('Editor','P3widgets.P3WidgetTranslation.Delete'),('Editor','P3pages.P3Page.Create'),('Editor','P3pages.P3Page.View'),('Editor','P3pages.P3Page.Update'),('Editor','P3pages.P3Page.Delete'),('Editor','P3pages.P3PageTranslation.Create'),('Editor','P3pages.P3PageTranslation.View'),('Editor','P3pages.P3PageTranslation.Update'),('Editor','P3pages.P3PageTranslation.Delete'),('Editor','P3media.P3Media.Create'),('Editor','P3media.P3Media.View'),('Editor','P3media.P3Media.Update'),('Editor','P3media.P3Media.Delete'),('Editor','P3media.P3MediaTranslation.Create'),('Editor','P3media.P3MediaTranslation.View'),('Editor','P3media.P3MediaTranslation.Update'),('Editor','P3media.P3MediaTranslation.Delete');
/*!40000 ALTER TABLE `authitemchild` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ckeditor_style`
--

DROP TABLE IF EXISTS `ckeditor_style`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ckeditor_style` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `element` varchar(128) DEFAULT NULL,
  `class` varchar(128) DEFAULT NULL,
  `attributes_json` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ckeditor_style`
--

LOCK TABLES `ckeditor_style` WRITE;
/*!40000 ALTER TABLE `ckeditor_style` DISABLE KEYS */;
/*!40000 ALTER TABLE `ckeditor_style` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ckeditor_template`
--

DROP TABLE IF EXISTS `ckeditor_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ckeditor_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL,
  `image` varchar(128) DEFAULT NULL,
  `description` text,
  `html` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ckeditor_template`
--

LOCK TABLES `ckeditor_template` WRITE;
/*!40000 ALTER TABLE `ckeditor_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `ckeditor_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(16) NOT NULL DEFAULT '',
  `translation` text,
  PRIMARY KEY (`id`,`language`),
  CONSTRAINT `FK_Message_SourceMessage` FOREIGN KEY (`id`) REFERENCES `sourcemessage` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration`
--

DROP TABLE IF EXISTS `migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration` (
  `version` varchar(255) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  `module` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration`
--

LOCK TABLES `migration` WRITE;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` VALUES ('m000000_000000_base_app-demo-data',1396273754,'app-demo-data'),('m000000_000000_base_auditrail2',1396273740,'auditrail2'),('m000000_000000_base_ckeditor-configurator',1396273760,'ckeditor-configurator'),('m000000_000000_base_p3media',1396273741,'p3media'),('m000000_000000_base_p3pages',1396273752,'p3pages'),('m000000_000000_base_p3widgets',1396273741,'p3widgets'),('m000000_000000_base_rights',1396273739,'rights'),('m000000_000000_base_translate',1396273739,'translate'),('m000000_000000_base_user',1396273741,'user'),('m110000_000000_initial_yii_translate_tables',1396273739,'translate'),('m110402_195158_init',1396273740,'rights'),('m110517_155003_create_tables_audit_trail',1396273740,'auditrail2'),('m110518_000000_init',1396273741,'p3widgets'),('m110719_000000_init',1396273741,'p3media'),('m110805_153437_installYiiUser',1396273750,'user'),('m110810_162301_userTimestampFix',1396273750,'user'),('m111013_235001_p3items',1396273751,'rights'),('m111028_000000_meta',1396273751,'p3widgets'),('m120309_021733_translation',1396273752,'p3widgets'),('m120312_182502_init',1396273752,'p3pages'),('m121011_160518_fk_delete_cascade',1396273753,'p3pages'),('m121011_170518_fk_delete_cascade',1396273753,'p3media'),('m121011_180518_fk_delete_cascade',1396273754,'p3widgets'),('m130322_014700_authItems',1396273754,'rights'),('m130411_104109_demo_data',1396273758,'app-demo-data'),('m130512_183711_add_nameId_column',1396273758,'p3pages'),('m130515_002115_replace_p3_data',1396273759,'app-demo-data'),('m130709_114518_update_meta_data_language',1396273759,'p3media'),('m130709_114519_update_meta_data_language',1396273759,'p3pages'),('m130709_114520_update_meta_data_language',1396273759,'p3widgets'),('m130716_134508_init_tables',1396273760,'ckeditor-configurator'),('m130717_101010_add_nameId_column',1396273760,'p3media'),('m130820_161100_add_translation_timestamps',1396273761,'p3widgets'),('m130820_161101_add_translation_timestamps',1396273761,'p3pages'),('m131006_014700_p3widgets_authItems',1396273762,'rights'),('m131006_014701_p3pages_authItems',1396273763,'rights'),('m131006_014702_p3media_authItems',1396273763,'rights'),('m131009_161804_unification',1396273765,'p3pages'),('m131009_182400_unification',1396273766,'p3media'),('m131009_201804_unification',1396273767,'p3widgets');
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p3_media`
--

DROP TABLE IF EXISTS `p3_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p3_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(32) NOT NULL,
  `type` varchar(64) NOT NULL DEFAULT 'file',
  `name_id` varchar(64) DEFAULT NULL,
  `default_title` varchar(255) NOT NULL,
  `default_description` text,
  `tree_parent_id` int(11) DEFAULT NULL,
  `tree_position` int(11) DEFAULT NULL,
  `custom_data_json` text,
  `original_name` varchar(128) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `hash` varchar(64) DEFAULT NULL,
  `mime_type` varchar(128) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `info_php_json` text,
  `info_image_magick_json` text,
  `access_owner` varchar(64) NOT NULL,
  `access_domain` varchar(8) NOT NULL,
  `access_read` varchar(256) DEFAULT NULL,
  `access_update` varchar(256) DEFAULT NULL,
  `access_delete` varchar(256) DEFAULT NULL,
  `access_append` varchar(256) DEFAULT NULL,
  `copied_from_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `p3_media_name_id_unique` (`name_id`),
  KEY `tree_parent_id` (`tree_parent_id`),
  CONSTRAINT `p3_media_ibfk_1` FOREIGN KEY (`tree_parent_id`) REFERENCES `p3_media` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p3_media`
--

LOCK TABLES `p3_media` WRITE;
/*!40000 ALTER TABLE `p3_media` DISABLE KEYS */;
INSERT INTO `p3_media` VALUES (1,'published','file',NULL,'bleach-final-getsuga-tensho-naruto-chakra-mode-crossover.jpg',NULL,NULL,NULL,NULL,'bleach-final-getsuga-tensho-naruto-chakra-mode-crossover.jpg','1\\bleach-final-getsuga-tensho-naruto-chakra-mode-crossover.jpg','dfccf1ae83dedc1907cd61601869b3cd','image/jpeg',548000,'{\"0\":1101,\"1\":800,\"2\":2,\"3\":\"width=\\\"1101\\\" height=\\\"800\\\"\",\"bits\":8,\"channels\":3,\"mime\":\"image\\/jpeg\"}',NULL,'1','*',NULL,NULL,NULL,NULL,NULL,'2014-03-31 17:18:06','2014-03-31 17:18:06'),(2,'published','file',NULL,'bleach-final-getsuga-tensho-naruto-chakra-mode-crossover.jpg',NULL,NULL,NULL,NULL,'bleach-final-getsuga-tensho-naruto-chakra-mode-crossover.jpg','1\\bleach-final-getsuga-tensho-naruto-chakra-mode-crossover.jpg','dfccf1ae83dedc1907cd61601869b3cd','image/jpeg',548000,'{\"0\":1101,\"1\":800,\"2\":2,\"3\":\"width=\\\"1101\\\" height=\\\"800\\\"\",\"bits\":8,\"channels\":3,\"mime\":\"image\\/jpeg\"}',NULL,'1','*',NULL,NULL,NULL,NULL,NULL,'2014-03-31 17:18:31','2014-03-31 17:18:31');
/*!40000 ALTER TABLE `p3_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p3_media_translation`
--

DROP TABLE IF EXISTS `p3_media_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p3_media_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p3_media_id` int(11) NOT NULL,
  `status` varchar(32) NOT NULL,
  `language` varchar(8) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `access_owner` varchar(64) NOT NULL,
  `access_read` varchar(256) DEFAULT NULL,
  `access_update` varchar(256) DEFAULT NULL,
  `access_delete` varchar(256) DEFAULT NULL,
  `copied_from_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `p3_media_translation_id_language_unique` (`p3_media_id`,`language`),
  CONSTRAINT `p3_media_translation_ibfk_1` FOREIGN KEY (`p3_media_id`) REFERENCES `p3_media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p3_media_translation`
--

LOCK TABLES `p3_media_translation` WRITE;
/*!40000 ALTER TABLE `p3_media_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `p3_media_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p3_page`
--

DROP TABLE IF EXISTS `p3_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p3_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `default_menu_name` varchar(128) NOT NULL,
  `status` varchar(32) NOT NULL,
  `name_id` varchar(64) DEFAULT NULL,
  `tree_parent_id` int(11) DEFAULT NULL,
  `tree_position` int(11) DEFAULT NULL,
  `default_page_title` varchar(255) DEFAULT NULL,
  `layout` varchar(128) DEFAULT NULL,
  `view` varchar(128) DEFAULT NULL,
  `url_json` text,
  `default_url_param` varchar(255) DEFAULT NULL,
  `default_keywords` text,
  `default_description` text,
  `custom_data_json` text,
  `access_owner` varchar(64) NOT NULL,
  `access_domain` varchar(8) NOT NULL,
  `access_read` varchar(256) DEFAULT NULL,
  `access_update` varchar(256) DEFAULT NULL,
  `access_delete` varchar(256) DEFAULT NULL,
  `access_append` varchar(256) DEFAULT NULL,
  `copied_from_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `p3_page_name_id_unique` (`name_id`),
  KEY `tree_parent_id` (`tree_parent_id`),
  CONSTRAINT `p3_page_ibfk_1` FOREIGN KEY (`tree_parent_id`) REFERENCES `p3_page` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p3_page`
--

LOCK TABLES `p3_page` WRITE;
/*!40000 ALTER TABLE `p3_page` DISABLE KEYS */;
INSERT INTO `p3_page` VALUES (1,'Page','published','Navbar',NULL,NULL,NULL,NULL,NULL,'{\"route\":\"/site/index\"}',NULL,NULL,NULL,NULL,'1','*',NULL,NULL,NULL,NULL,NULL,'2014-03-31 09:19:28','2013-05-14 21:40:04'),(2,'Examples','published',NULL,1,NULL,'Examples',NULL,NULL,NULL,'examples',NULL,NULL,NULL,'1','*',NULL,NULL,NULL,NULL,NULL,'2014-03-31 09:19:28',NULL),(3,'Basic HTML','published',NULL,2,NULL,NULL,'//layouts/main','//p3pages/column1','{}',NULL,NULL,NULL,NULL,'1','*',NULL,NULL,NULL,NULL,NULL,'2014-03-31 09:19:28','2013-05-14 21:44:57'),(4,'Carousel','published',NULL,2,NULL,NULL,'//layouts/main','//p3pages/column1','{}',NULL,NULL,NULL,NULL,'1','*',NULL,NULL,NULL,NULL,NULL,'2014-03-31 09:19:28','2013-05-14 21:58:04'),(5,'Fancybox','published',NULL,2,NULL,NULL,'//layouts/main','//p3pages/column1','{}',NULL,NULL,NULL,NULL,'1','*',NULL,NULL,NULL,NULL,NULL,'2014-03-31 09:19:28','2013-05-14 21:59:24'),(7,'index','published',NULL,NULL,NULL,NULL,'//layouts/main','//p3pages/column1','{}',NULL,NULL,NULL,'{}','1','*',NULL,NULL,NULL,NULL,NULL,'2014-03-31 17:14:34','2014-03-31 17:16:48');
/*!40000 ALTER TABLE `p3_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p3_page_translation`
--

DROP TABLE IF EXISTS `p3_page_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p3_page_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p3_page_id` int(11) NOT NULL,
  `language` varchar(8) NOT NULL,
  `menu_name` varchar(128) NOT NULL,
  `status` varchar(32) NOT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `url_param` varchar(255) DEFAULT NULL,
  `keywords` text,
  `description` text,
  `access_owner` varchar(64) NOT NULL,
  `access_read` varchar(256) DEFAULT NULL,
  `access_update` varchar(256) DEFAULT NULL,
  `access_delete` varchar(256) DEFAULT NULL,
  `copied_from_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `p3_page_translation_id_language_unique` (`p3_page_id`,`language`),
  CONSTRAINT `p3_page_translation_ibfk_1` FOREIGN KEY (`p3_page_id`) REFERENCES `p3_page` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p3_page_translation`
--

LOCK TABLES `p3_page_translation` WRITE;
/*!40000 ALTER TABLE `p3_page_translation` DISABLE KEYS */;
INSERT INTO `p3_page_translation` VALUES (1,2,'en','Examples','published','Examples','examples',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL),(2,3,'en','Basic HTML','published',NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL),(3,4,'en','Carousel','published',NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL),(4,5,'en','Fancybox','published',NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `p3_page_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p3_widget`
--

DROP TABLE IF EXISTS `p3_widget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p3_widget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(32) NOT NULL,
  `alias` varchar(128) NOT NULL,
  `default_properties_json` text,
  `default_content_html` text,
  `name_id` varchar(64) DEFAULT NULL,
  `container_id` varchar(128) NOT NULL,
  `rank` int(11) NOT NULL DEFAULT '0',
  `request_param` varchar(128) DEFAULT '*',
  `action_name` varchar(128) NOT NULL DEFAULT '*',
  `controller_id` varchar(128) NOT NULL DEFAULT '*',
  `module_id` varchar(128) DEFAULT '*',
  `session_param` varchar(128) DEFAULT '*',
  `access_owner` varchar(64) NOT NULL,
  `access_domain` varchar(8) NOT NULL,
  `access_read` varchar(256) DEFAULT NULL,
  `access_update` varchar(256) DEFAULT NULL,
  `access_delete` varchar(256) DEFAULT NULL,
  `copied_from_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `p3_widget_name_id_unique` (`name_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p3_widget`
--

LOCK TABLES `p3_widget` WRITE;
/*!40000 ALTER TABLE `p3_widget` DISABLE KEYS */;
INSERT INTO `p3_widget` VALUES (1,'published','CWidget','{\"actionPrefix\":\"NULL\",\"skin\":\"default\"}','<div data-intro=\"Hello step one!\" data-step=\"1\" id=\"login\" style=\"background:#f3f3f3;border-radius:5px;padding:20px;margin-bottom:20px;\">\n\n	<img src=\"https://raw.github.com/waalzer/app-demo-data/f8379e8e4bd4a5150f08c0666d75ca91212a8f9a/images/phundament.png\" style=\"float:left;margin-right:20px;margin-bottom:10px;\" />\n\n	<h1>\n\n		Welcome to Phundament 3!</h1>\n\n	<h3>\n\n		You will like it.</h3>\n\n	<p>\n\n		<a href=\"https://github.com/phundament/\" target=\"_blank\">View on GitHub</a> | <a href=\"https://github.com/phundament/app/wiki\" target=\"_blank\">The Definitive Guide</a> |&nbsp;<a href=\"http://phundament.com/\" target=\"_blank\">Phundament Homepage</a></p>\n\n</div>\n\n<div class=\"row\">\n\n	<div class=\"span4\" data-intro=\"Hello step one!\" data-step=\"2\" id=\"login\" style=\"background:#f3f3f3;border-radius:5px;margin-bottom:20px;\">\n\n		<div style=\"padding:10px;\">\n\n			<h1>\n\n				Login</h1>\n\n			<p>\n\n				Login with&nbsp;<code>admin/admin</code></p>\n\n			<p>\n\n				<img alt=\"\" src=\"https://raw.github.com/waalzer/app-demo-data/f8379e8e4bd4a5150f08c0666d75ca91212a8f9a/images/login.png\" /></p>\n\n		</div>\n\n	</div>\n\n	<div class=\"span4\" data-intro=\"Hello step one!\" data-step=\"3\" id=\"login\" style=\"background:#f3f3f3;border-radius:5px;margin-bottom:20px;\">\n\n		<div style=\"padding:10px;\">\n\n			<h1>\n\n				Create Pages</h1>\n\n			<p>\n\n				<strong>Create index</strong></p>\n\n			<p>\n\n				Log in and go to Sitemap in the top menu. Click <span class=\"label label-error\">Create</span>&nbsp;then&nbsp;<span class=\"label label-error\">Text input</span> and paste <code>{&quot;route&quot;:&quot;/site/index&quot;}</code>&nbsp;in the text box to add this page as index.</p>\n\n			<p>\n\n				Select Layout <span class=\"label label-error\">_TbNavbar</span> and save the page.</p>\n\n			<p>\n\n				<strong>Create Child Page</strong></p>\n\n			<p>\n\n				Go to your index page. Click <span class=\"label label-error\">Append Child Page</span> in the top menu. Select&nbsp;<span class=\"label label-error\">Main Layout</span> and save.</p>\n\n			<p>\n\n				<strong>Add translation</strong></p>\n\n			<p>\n\n				You will see * after the pages name in the top menu because there isn&#39;t any translation for it. Add one by clicking <span class=\"label label-error\">+ Add Translation</span>. Choose language, menu name and page title.</p>\n\n			<p>\n\n				<strong>Create Sibling Pages</strong></p>\n\n			<p>\n\n				To add more pages at same level in the top menu click <span class=\"label label-error\">Append Sibling Page</span>.</p>\n\n		</div>\n\n	</div>\n\n	<div class=\"span4\" data-intro=\"Hello step one!\" data-step=\"4\" id=\"login\" style=\"background:#f3f3f3;border-radius:5px;margin-bottom:20px;\">\n\n		<div style=\"padding:10px;\">\n\n			<h1>\n\n				Create Widgets</h1>\n\n			<p>\n\n				<strong>Switch to edit mode</strong></p>\n\n			<p>\n\n				Go to a page and switch to the edit mode by clicking the edit icon at the top.</p>\n\n			<p>\n\n				<img alt=\"\" src=\"https://raw.github.com/waalzer/app-demo-data/f8379e8e4bd4a5150f08c0666d75ca91212a8f9a/images/topmenubar.png\" style=\"width: 299px; height: 35px;\" /></p>\n\n			<p>\n\n				<strong>Create a widget</strong></p>\n\n			<p>\n\n				Hover over container top or main and add <span class=\"label label-error\">Basic HTML Widget</span>.</p>\n\n			<p>\n\n				<strong>Add translation and content</strong></p>\n\n			<p>\n\n				Then add a translation, type some text in the editor, try to style it and add some media.</p>\n\n			<p>\n\n				<strong>See the guide</strong></p>\n\n			<p>\n\n				<a href=\"https://github.com/phundament/app/wiki/Pages\" target=\"_blank\">Pages</a>,&nbsp;<a href=\"https://github.com/phundament/app/wiki/Widgets\" target=\"_blank\">Widgets</a>, <a href=\"https://github.com/phundament/app/wiki/Ckeditor\" target=\"_blank\">CKEditor</a> and <a href=\"https://github.com/phundament/app/wiki/Media\" target=\"_blank\">Media</a>.</p>\n\n		</div>\n\n	</div>\n\n</div>\n\n<div style=\"background:#f3f3f3;border-radius:5px;padding:20px;margin-bottom:20px;\">\n\n	<h1>\n\n		Give us some Feedback</h1>\n\n	<p>\n\n		<a href=\"https://groups.google.com/forum/?fromgroups#!forum/phundament-dev\" target=\"_blank\">Google Groups</a>&nbsp;| <a href=\"https://plus.google.com/u/0/114873431066202526630/posts\" target=\"_blank\">Google+</a> | <a href=\"https://www.facebook.com/phundament\" target=\"_blank\">Facebook</a>&nbsp;| <a href=\"https://twitter.com/phundament\" target=\"_blank\">Twitter</a>&nbsp;| <a href=\"http://www.yiiframework.com/forum/index.php/topic/24696-extension-phundament\" target=\"_blank\">Yii Forum</a></p>\n\n</div>\n\n',NULL,'top',10,NULL,'index','site','*','*','1','*',NULL,NULL,NULL,NULL,'2014-03-31 09:19:28','2014-03-31 17:10:25'),(2,'published','CWidget','{\"actionPrefix\":\"NULL\",\"skin\":\"default\"}','<div>\r\n	<h2>\r\n		Ex feugait processus</h2>\r\n	<div class=\"row\">\r\n		<div class=\"span4\">\r\n			<p>\r\n				<a href=\"http://placehold.it/1200x900.jpg\"><img alt=\"\" src=\"http://placehold.it/400x300.jpg\" /></a></p>\r\n			<p>\r\n				Ex feugait processus Est veniam sit, Qui ut typi con. Sequat nobis elit. Liber facer elit delenit nunc consequat. Parum augue in minim vero amet. Te qui ut per molestie notare.</p>\r\n		</div>\r\n		<div class=\"span4\">\r\n			<p>\r\n				<a href=\"http://placehold.it/1200x900.jpg\"><img alt=\"\" src=\"http://placehold.it/400x300.jpg\" /></a></p>\r\n			<p>\r\n				Ex feugait processus Est veniam sit, Qui ut typi con. Sequat nobis elit. Liber facer elit delenit nunc consequat. Parum augue in minim vero amet. Te qui ut per molestie notare.</p>\r\n		</div>\r\n		<div class=\"span4\">\r\n			<p>\r\n				<a href=\"http://placehold.it/1200x900.jpg\"><img alt=\"\" src=\"http://placehold.it/400x300.jpg\" /></a></p>\r\n			<p>\r\n				Ex feugait processus Est veniam sit, Qui ut typi con. Sequat nobis elit. Liber facer elit delenit nunc consequat. Parum augue in minim vero amet. Te qui ut per molestie notare.</p>\r\n		</div>\r\n	</div>\r\n</div>\r\n<div>\r\n</div>\r\n',NULL,'top',0,'3','page','default','p3pages','*','1','*',NULL,NULL,NULL,NULL,'2014-03-31 09:19:28','2014-03-31 09:19:27'),(3,'published','CWidget','{\"actionPrefix\":\"NULL\",\"skin\":\"default\"}','<h2>\r\n	Properties</h2>\r\n<pre>\r\n{\r\n    &quot;actionPrefix&quot;: &quot;NULL&quot;,\r\n    &quot;skin&quot;: &quot;default&quot;\r\n}</pre>\r\n<h2>\r\n	HTML Source-Code</h2>\r\n<pre>\r\n&lt;div&gt;\r\n&nbsp;&nbsp;&nbsp; &lt;h2&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ex feugait processus&lt;/h2&gt;\r\n\r\n&nbsp;&nbsp;&nbsp; &lt;div class=&quot;row&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;span4&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;p&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;a href=&quot;http://placehold.it/1200x900.jpg&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http://placehold.it/400x300.jpg&quot;/&gt;&lt;/a&gt;&lt;/p&gt;\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;p&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ex feugait processus Est veniam sit, Qui ut typi con. Sequat nobis elit. Liber facer elit delenit nunc\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; consequat. Parum augue in minim vero amet. Te qui ut per molestie notare.&lt;/p&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;span4&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;p&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;a href=&quot;http://placehold.it/1200x900.jpg&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http://placehold.it/400x300.jpg&quot;/&gt;&lt;/a&gt;&lt;/p&gt;\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;p&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ex feugait processus Est veniam sit, Qui ut typi con. Sequat nobis elit. Liber facer elit delenit nunc\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; consequat. Parum augue in minim vero amet. Te qui ut per molestie notare.&lt;/p&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;span4&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;p&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;a href=&quot;http://placehold.it/1200x900.jpg&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http://placehold.it/400x300.jpg&quot;/&gt;&lt;/a&gt;&lt;/p&gt;\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;p&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ex feugait processus Est veniam sit, Qui ut typi con. Sequat nobis elit. Liber facer elit delenit nunc\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; consequat. Parum augue in minim vero amet. Te qui ut per molestie notare.&lt;/p&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp; &lt;/div&gt;\r\n&lt;/div&gt;</pre>\r\n',NULL,'main',0,'3','page','default','p3pages','*','1','*',NULL,NULL,NULL,NULL,'2014-03-31 09:19:28','2014-03-31 09:19:27'),(4,'published','TbCarousel','{\r\n  \"prevLabel\":\"‹\",\r\n  \"nextLabel\":\"›\",\r\n  \"slide\":\"1\",\r\n  \"displayPrevAndNext\":\"1\",\r\n  \"items\":{\r\n    \"0\":{\r\n      \"image\":\"http://placehold.it/1400x800&text=This+stuff\",\r\n      \"label\":\"It\'s foo bar!\",\r\n      \"caption\":\"Lorem ipsum dolor sit amet, est te labitur tincidunt consequuntur, mutat consul dicunt id sed. Et mei quando aliquid, sed ad graece audiam ornatus. Vel id adhuc consul perfecto. Decore ignota euismod eos ex.\"\r\n    },\r\n    \"1\":{\r\n      \"image\":\"http://placehold.it/1400x800&text=rockz!\",\r\n      \"label\":\"Sup?\",\r\n      \"caption\":\"Lorem ipsum dolor sit amet, est te labitur tincidunt consequuntur, mutat consul dicunt id sed. Et mei quando aliquid, sed ad graece audiam ornatus. Vel id adhuc consul perfecto. Decore ignota euismod eos ex.\"\r\n    }\r\n  },      \r\n  \"actionPrefix\":\"NULL\",\r\n  \"skin\":\"default\"\r\n}','<div>\r\n	<div class=\"row\">\r\n		<div class=\"span6\">\r\n			{WIDGET_CONTENT}</div>\r\n		<div class=\"span6\">\r\n			<h2>\r\n				Ex feugait processus</h2>\r\n			<p>\r\n				Ex feugait processus Est veniam sit, Qui ut typi con. Sequat nobis elit. Liber facer elit delenit nunc consequat. Parum augue in minim vero amet. Te qui ut per molestie notare.</p>\r\n			<p>\r\n				Ex feugait processus Est veniam sit, Qui ut typi con. Sequat nobis elit. Liber facer elit delenit nunc consequat. Parum augue in minim vero amet. Te qui ut per molestie notare.Ex feugait processus Est veniam sit, Qui ut typi con. Sequat nobis elit. Liber facer elit delenit nunc consequat. Parum augue in minim vero amet. Te qui ut per molestie notare.</p>\r\n		</div>\r\n	</div>\r\n</div>\r\n<div>\r\n</div>\r\n',NULL,'top',0,'4','page','default','p3pages','*','1','*',NULL,NULL,NULL,NULL,'2014-03-31 09:19:28','2014-03-31 09:19:27'),(5,'published','CWidget','{\"actionPrefix\":\"NULL\",\"skin\":\"default\"}','<div>\r\n	<h2>\r\n		Properties</h2>\r\n	<pre>\r\n{\r\n    &quot;prevLabel&quot;: &quot;&lsaquo;&quot;,\r\n    &quot;nextLabel&quot;: &quot;&rsaquo;&quot;,\r\n    &quot;slide&quot;: &quot;1&quot;,\r\n    &quot;displayPrevAndNext&quot;: &quot;1&quot;,\r\n    &quot;items&quot;: {\r\n        &quot;0&quot;: {\r\n            &quot;image&quot;: &quot;http://placehold.it/1400x800&amp;text=This+stuff&quot;,\r\n            &quot;label&quot;: &quot;It&#39;s foo bar!&quot;,\r\n            &quot;caption&quot;: &quot;Lorem ipsum dolor sit amet, est te labitur tincidunt consequuntur, mutat consul dicunt id sed. Et mei quando aliquid, sed ad graece audiam ornatus. Vel id adhuc consul perfecto. Decore ignota euismod eos ex.&quot;\r\n        },\r\n        &quot;1&quot;: {\r\n            &quot;image&quot;: &quot;http://placehold.it/1400x800&amp;text=rockz!&quot;,\r\n            &quot;label&quot;: &quot;Sup?&quot;,\r\n            &quot;caption&quot;: &quot;Lorem ipsum dolor sit amet, est te labitur tincidunt consequuntur, mutat consul dicunt id sed. Et mei quando aliquid, sed ad graece audiam ornatus. Vel id adhuc consul perfecto. Decore ignota euismod eos ex.&quot;\r\n        }\r\n    },\r\n    &quot;actionPrefix&quot;: &quot;NULL&quot;,\r\n    &quot;skin&quot;: &quot;default&quot;\r\n}</pre>\r\n	<h2>\r\n		HTML Source-Code</h2>\r\n	<pre>\r\n&lt;div&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n  &lt;div class=&quot;span6&quot;&gt;\r\n   {WIDGET_CONTENT}&lt;/div&gt;\r\n  &lt;div class=&quot;span6&quot;&gt;\r\n   &lt;h2&gt;\r\n    Ex feugait processus&lt;/h2&gt;\r\n   &lt;p&gt;\r\n    Ex feugait processus Est veniam sit, Qui ut typi con. Sequat nobis elit. Liber facer elit delenit nunc consequat. Parum augue in minim vero amet. Te qui ut per molestie notare.&lt;/p&gt;\r\n   &lt;p&gt;\r\n    Ex feugait processus Est veniam sit, Qui ut typi con. Sequat nobis elit. Liber facer elit delenit nunc consequat. Parum augue in minim vero amet. Te qui ut per molestie notare.Ex feugait processus Est veniam sit, Qui ut typi con. Sequat nobis elit. Liber facer elit delenit nunc consequat. Parum augue in minim vero amet. Te qui ut per molestie notare.&lt;/p&gt;\r\n  &lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;</pre>\r\n	<div class=\"row-fluid\">\r\n	</div>\r\n</div>\r\n<div>\r\n</div>\r\n',NULL,'main',0,'4','page','default','p3pages','*','1','*',NULL,NULL,NULL,NULL,'2014-03-31 09:19:28','2014-03-31 09:19:27'),(6,'published','TbCarousel','{\"prevLabel\":\"‹\",\"nextLabel\":\"›\",\"slide\":\"1\",\"displayPrevAndNext\":\"1\",\"items\":{\"0\":{\"image\":\"http://placehold.it/1400x800&text=This+stuff\",\"label\":\"It\'s foo bar!\",\"caption\":\"Lorem ipsum dolor sit amet, est te labitur tincidunt consequuntur, mutat consul dicunt id sed. Et mei quando aliquid, sed ad graece audiam ornatus. Vel id adhuc consul perfecto. Decore ignota euismod eos ex.\"},\"1\":{\"image\":\"http://placehold.it/1400x800&text=rockz!\",\"label\":\"Sup?\",\"caption\":\"Lorem ipsum dolor sit amet, est te labitur tincidunt consequuntur, mutat consul dicunt id sed. Et mei quando aliquid, sed ad graece audiam ornatus. Vel id adhuc consul perfecto. Decore ignota euismod eos ex.\"}},\"options\":{},\"events\":{},\"htmlOptions\":{\"id\":\"yw0\",\"class\":\"carousel slide\"},\"actionPrefix\":\"NULL\",\"skin\":\"default\"}',NULL,NULL,'top',0,'7','page','default','p3pages','*','1','*',NULL,NULL,NULL,NULL,'2014-03-31 17:19:17','2014-03-31 17:36:54');
/*!40000 ALTER TABLE `p3_widget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p3_widget_translation`
--

DROP TABLE IF EXISTS `p3_widget_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p3_widget_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p3_widget_id` int(11) NOT NULL,
  `status` varchar(32) NOT NULL,
  `language` varchar(8) NOT NULL,
  `properties_json` text,
  `content_html` text,
  `access_owner` varchar(64) NOT NULL,
  `access_read` varchar(256) DEFAULT NULL,
  `access_update` varchar(256) DEFAULT NULL,
  `access_delete` varchar(256) DEFAULT NULL,
  `copied_from_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `p3_widget_translation_id_language_unique` (`p3_widget_id`,`language`),
  CONSTRAINT `p3_widget_translation_ibfk_1` FOREIGN KEY (`p3_widget_id`) REFERENCES `p3_widget` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p3_widget_translation`
--

LOCK TABLES `p3_widget_translation` WRITE;
/*!40000 ALTER TABLE `p3_widget_translation` DISABLE KEYS */;
INSERT INTO `p3_widget_translation` VALUES (1,1,'published','en','{\"actionPrefix\":\"NULL\",\"skin\":\"default\"}','<div data-intro=\"Hello step one!\" data-step=\"1\" id=\"login\" style=\"background:#f3f3f3;border-radius:5px;padding:20px;margin-bottom:20px;\">\n\n	<img src=\"https://raw.github.com/waalzer/app-demo-data/f8379e8e4bd4a5150f08c0666d75ca91212a8f9a/images/phundament.png\" style=\"float:left;margin-right:20px;margin-bottom:10px;\" />\n\n	<h1>\n\n		Welcome to Phundament 3!</h1>\n\n	<h3>\n\n		You will like it.</h3>\n\n	<p>\n\n		<a href=\"https://github.com/phundament/\" target=\"_blank\">View on GitHub</a> | <a href=\"https://github.com/phundament/app/wiki\" target=\"_blank\">The Definitive Guide</a> |&nbsp;<a href=\"http://phundament.com/\" target=\"_blank\">Phundament Homepage</a></p>\n\n</div>\n\n<div class=\"row\">\n\n	<div class=\"span4\" data-intro=\"Hello step one!\" data-step=\"2\" id=\"login\" style=\"background:#f3f3f3;border-radius:5px;margin-bottom:20px;\">\n\n		<div style=\"padding:10px;\">\n\n			<h1>\n\n				Login</h1>\n\n			<p>\n\n				Login with&nbsp;<code>admin/admin</code></p>\n\n			<p>\n\n				<img alt=\"\" src=\"https://raw.github.com/waalzer/app-demo-data/f8379e8e4bd4a5150f08c0666d75ca91212a8f9a/images/login.png\" /></p>\n\n		</div>\n\n	</div>\n\n	<div class=\"span4\" data-intro=\"Hello step one!\" data-step=\"3\" id=\"login\" style=\"background:#f3f3f3;border-radius:5px;margin-bottom:20px;\">\n\n		<div style=\"padding:10px;\">\n\n			<h1>\n\n				Create Pages</h1>\n\n			<p>\n\n				<strong>Create index</strong></p>\n\n			<p>\n\n				Log in and go to Sitemap in the top menu. Click <span class=\"label label-error\">Create</span>&nbsp;then&nbsp;<span class=\"label label-error\">Text input</span> and paste <code>{&quot;route&quot;:&quot;/site/index&quot;}</code>&nbsp;in the text box to add this page as index.</p>\n\n			<p>\n\n				Select Layout <span class=\"label label-error\">_TbNavbar</span> and save the page.</p>\n\n			<p>\n\n				<strong>Create Child Page</strong></p>\n\n			<p>\n\n				Go to your index page. Click <span class=\"label label-error\">Append Child Page</span> in the top menu. Select&nbsp;<span class=\"label label-error\">Main Layout</span> and save.</p>\n\n			<p>\n\n				<strong>Add translation</strong></p>\n\n			<p>\n\n				You will see * after the pages name in the top menu because there isn&#39;t any translation for it. Add one by clicking <span class=\"label label-error\">+ Add Translation</span>. Choose language, menu name and page title.</p>\n\n			<p>\n\n				<strong>Create Sibling Pages</strong></p>\n\n			<p>\n\n				To add more pages at same level in the top menu click <span class=\"label label-error\">Append Sibling Page</span>.</p>\n\n		</div>\n\n	</div>\n\n	<div class=\"span4\" data-intro=\"Hello step one!\" data-step=\"4\" id=\"login\" style=\"background:#f3f3f3;border-radius:5px;margin-bottom:20px;\">\n\n		<div style=\"padding:10px;\">\n\n			<h1>\n\n				Create Widgets</h1>\n\n			<p>\n\n				<strong>Switch to edit mode</strong></p>\n\n			<p>\n\n				Go to a page and switch to the edit mode by clicking the edit icon at the top.</p>\n\n			<p>\n\n				<img alt=\"\" src=\"https://raw.github.com/waalzer/app-demo-data/f8379e8e4bd4a5150f08c0666d75ca91212a8f9a/images/topmenubar.png\" style=\"width: 299px; height: 35px;\" /></p>\n\n			<p>\n\n				<strong>Create a widget</strong></p>\n\n			<p>\n\n				Hover over container top or main and add <span class=\"label label-error\">Basic HTML Widget</span>.</p>\n\n			<p>\n\n				<strong>Add translation and content</strong></p>\n\n			<p>\n\n				Then add a translation, type some text in the editor, try to style it and add some media.</p>\n\n			<p>\n\n				<strong>See the guide</strong></p>\n\n			<p>\n\n				<a href=\"https://github.com/phundament/app/wiki/Pages\" target=\"_blank\">Pages</a>,&nbsp;<a href=\"https://github.com/phundament/app/wiki/Widgets\" target=\"_blank\">Widgets</a>, <a href=\"https://github.com/phundament/app/wiki/Ckeditor\" target=\"_blank\">CKEditor</a> and <a href=\"https://github.com/phundament/app/wiki/Media\" target=\"_blank\">Media</a>.</p>\n\n		</div>\n\n	</div>\n\n</div>\n\n<div style=\"background:#f3f3f3;border-radius:5px;padding:20px;margin-bottom:20px;\">\n\n	<h1>\n\n		Give us some Feedback</h1>\n\n	<p>\n\n		<a href=\"https://groups.google.com/forum/?fromgroups#!forum/phundament-dev\" target=\"_blank\">Google Groups</a>&nbsp;| <a href=\"https://plus.google.com/u/0/114873431066202526630/posts\" target=\"_blank\">Google+</a> | <a href=\"https://www.facebook.com/phundament\" target=\"_blank\">Facebook</a>&nbsp;| <a href=\"https://twitter.com/phundament\" target=\"_blank\">Twitter</a>&nbsp;| <a href=\"http://www.yiiframework.com/forum/index.php/topic/24696-extension-phundament\" target=\"_blank\">Yii Forum</a></p>\n\n</div>\n\n','1',NULL,NULL,NULL,NULL,NULL,'2014-03-31 17:10:25'),(2,2,'published','en','{\"actionPrefix\":\"NULL\",\"skin\":\"default\"}','<div>\r\n	<h2>\r\n		Ex feugait processus</h2>\r\n	<div class=\"row\">\r\n		<div class=\"span4\">\r\n			<p>\r\n				<a href=\"http://placehold.it/1200x900.jpg\"><img alt=\"\" src=\"http://placehold.it/400x300.jpg\" /></a></p>\r\n			<p>\r\n				Ex feugait processus Est veniam sit, Qui ut typi con. Sequat nobis elit. Liber facer elit delenit nunc consequat. Parum augue in minim vero amet. Te qui ut per molestie notare.</p>\r\n		</div>\r\n		<div class=\"span4\">\r\n			<p>\r\n				<a href=\"http://placehold.it/1200x900.jpg\"><img alt=\"\" src=\"http://placehold.it/400x300.jpg\" /></a></p>\r\n			<p>\r\n				Ex feugait processus Est veniam sit, Qui ut typi con. Sequat nobis elit. Liber facer elit delenit nunc consequat. Parum augue in minim vero amet. Te qui ut per molestie notare.</p>\r\n		</div>\r\n		<div class=\"span4\">\r\n			<p>\r\n				<a href=\"http://placehold.it/1200x900.jpg\"><img alt=\"\" src=\"http://placehold.it/400x300.jpg\" /></a></p>\r\n			<p>\r\n				Ex feugait processus Est veniam sit, Qui ut typi con. Sequat nobis elit. Liber facer elit delenit nunc consequat. Parum augue in minim vero amet. Te qui ut per molestie notare.</p>\r\n		</div>\r\n	</div>\r\n</div>\r\n<div>\r\n</div>\r\n','1',NULL,NULL,NULL,NULL,NULL,NULL),(3,3,'published','en','{\"actionPrefix\":\"NULL\",\"skin\":\"default\"}','<h2>\r\n	Properties</h2>\r\n<pre>\r\n{\r\n    &quot;actionPrefix&quot;: &quot;NULL&quot;,\r\n    &quot;skin&quot;: &quot;default&quot;\r\n}</pre>\r\n<h2>\r\n	HTML Source-Code</h2>\r\n<pre>\r\n&lt;div&gt;\r\n&nbsp;&nbsp;&nbsp; &lt;h2&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ex feugait processus&lt;/h2&gt;\r\n\r\n&nbsp;&nbsp;&nbsp; &lt;div class=&quot;row&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;span4&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;p&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;a href=&quot;http://placehold.it/1200x900.jpg&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http://placehold.it/400x300.jpg&quot;/&gt;&lt;/a&gt;&lt;/p&gt;\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;p&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ex feugait processus Est veniam sit, Qui ut typi con. Sequat nobis elit. Liber facer elit delenit nunc\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; consequat. Parum augue in minim vero amet. Te qui ut per molestie notare.&lt;/p&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;span4&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;p&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;a href=&quot;http://placehold.it/1200x900.jpg&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http://placehold.it/400x300.jpg&quot;/&gt;&lt;/a&gt;&lt;/p&gt;\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;p&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ex feugait processus Est veniam sit, Qui ut typi con. Sequat nobis elit. Liber facer elit delenit nunc\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; consequat. Parum augue in minim vero amet. Te qui ut per molestie notare.&lt;/p&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;span4&quot;&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;p&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;a href=&quot;http://placehold.it/1200x900.jpg&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http://placehold.it/400x300.jpg&quot;/&gt;&lt;/a&gt;&lt;/p&gt;\r\n\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;p&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ex feugait processus Est veniam sit, Qui ut typi con. Sequat nobis elit. Liber facer elit delenit nunc\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; consequat. Parum augue in minim vero amet. Te qui ut per molestie notare.&lt;/p&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/div&gt;\r\n&nbsp;&nbsp;&nbsp; &lt;/div&gt;\r\n&lt;/div&gt;</pre>\r\n','1',NULL,NULL,NULL,NULL,NULL,NULL),(4,4,'published','en','{\r\n  \"prevLabel\":\"‹\",\r\n  \"nextLabel\":\"›\",\r\n  \"slide\":\"1\",\r\n  \"displayPrevAndNext\":\"1\",\r\n  \"items\":{\r\n    \"0\":{\r\n      \"image\":\"http://placehold.it/1400x800&text=This+stuff\",\r\n      \"label\":\"It\'s foo bar!\",\r\n      \"caption\":\"Lorem ipsum dolor sit amet, est te labitur tincidunt consequuntur, mutat consul dicunt id sed. Et mei quando aliquid, sed ad graece audiam ornatus. Vel id adhuc consul perfecto. Decore ignota euismod eos ex.\"\r\n    },\r\n    \"1\":{\r\n      \"image\":\"http://placehold.it/1400x800&text=rockz!\",\r\n      \"label\":\"Sup?\",\r\n      \"caption\":\"Lorem ipsum dolor sit amet, est te labitur tincidunt consequuntur, mutat consul dicunt id sed. Et mei quando aliquid, sed ad graece audiam ornatus. Vel id adhuc consul perfecto. Decore ignota euismod eos ex.\"\r\n    }\r\n  },      \r\n  \"actionPrefix\":\"NULL\",\r\n  \"skin\":\"default\"\r\n}','<div>\r\n	<div class=\"row\">\r\n		<div class=\"span6\">\r\n			{WIDGET_CONTENT}</div>\r\n		<div class=\"span6\">\r\n			<h2>\r\n				Ex feugait processus</h2>\r\n			<p>\r\n				Ex feugait processus Est veniam sit, Qui ut typi con. Sequat nobis elit. Liber facer elit delenit nunc consequat. Parum augue in minim vero amet. Te qui ut per molestie notare.</p>\r\n			<p>\r\n				Ex feugait processus Est veniam sit, Qui ut typi con. Sequat nobis elit. Liber facer elit delenit nunc consequat. Parum augue in minim vero amet. Te qui ut per molestie notare.Ex feugait processus Est veniam sit, Qui ut typi con. Sequat nobis elit. Liber facer elit delenit nunc consequat. Parum augue in minim vero amet. Te qui ut per molestie notare.</p>\r\n		</div>\r\n	</div>\r\n</div>\r\n<div>\r\n</div>\r\n','1',NULL,NULL,NULL,NULL,NULL,NULL),(5,5,'published','en','{\"actionPrefix\":\"NULL\",\"skin\":\"default\"}','<div>\r\n	<h2>\r\n		Properties</h2>\r\n	<pre>\r\n{\r\n    &quot;prevLabel&quot;: &quot;&lsaquo;&quot;,\r\n    &quot;nextLabel&quot;: &quot;&rsaquo;&quot;,\r\n    &quot;slide&quot;: &quot;1&quot;,\r\n    &quot;displayPrevAndNext&quot;: &quot;1&quot;,\r\n    &quot;items&quot;: {\r\n        &quot;0&quot;: {\r\n            &quot;image&quot;: &quot;http://placehold.it/1400x800&amp;text=This+stuff&quot;,\r\n            &quot;label&quot;: &quot;It&#39;s foo bar!&quot;,\r\n            &quot;caption&quot;: &quot;Lorem ipsum dolor sit amet, est te labitur tincidunt consequuntur, mutat consul dicunt id sed. Et mei quando aliquid, sed ad graece audiam ornatus. Vel id adhuc consul perfecto. Decore ignota euismod eos ex.&quot;\r\n        },\r\n        &quot;1&quot;: {\r\n            &quot;image&quot;: &quot;http://placehold.it/1400x800&amp;text=rockz!&quot;,\r\n            &quot;label&quot;: &quot;Sup?&quot;,\r\n            &quot;caption&quot;: &quot;Lorem ipsum dolor sit amet, est te labitur tincidunt consequuntur, mutat consul dicunt id sed. Et mei quando aliquid, sed ad graece audiam ornatus. Vel id adhuc consul perfecto. Decore ignota euismod eos ex.&quot;\r\n        }\r\n    },\r\n    &quot;actionPrefix&quot;: &quot;NULL&quot;,\r\n    &quot;skin&quot;: &quot;default&quot;\r\n}</pre>\r\n	<h2>\r\n		HTML Source-Code</h2>\r\n	<pre>\r\n&lt;div&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n  &lt;div class=&quot;span6&quot;&gt;\r\n   {WIDGET_CONTENT}&lt;/div&gt;\r\n  &lt;div class=&quot;span6&quot;&gt;\r\n   &lt;h2&gt;\r\n    Ex feugait processus&lt;/h2&gt;\r\n   &lt;p&gt;\r\n    Ex feugait processus Est veniam sit, Qui ut typi con. Sequat nobis elit. Liber facer elit delenit nunc consequat. Parum augue in minim vero amet. Te qui ut per molestie notare.&lt;/p&gt;\r\n   &lt;p&gt;\r\n    Ex feugait processus Est veniam sit, Qui ut typi con. Sequat nobis elit. Liber facer elit delenit nunc consequat. Parum augue in minim vero amet. Te qui ut per molestie notare.Ex feugait processus Est veniam sit, Qui ut typi con. Sequat nobis elit. Liber facer elit delenit nunc consequat. Parum augue in minim vero amet. Te qui ut per molestie notare.&lt;/p&gt;\r\n  &lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;</pre>\r\n	<div class=\"row-fluid\">\r\n	</div>\r\n</div>\r\n<div>\r\n</div>\r\n','1',NULL,NULL,NULL,NULL,NULL,NULL),(7,6,'draft','en',NULL,NULL,'1',NULL,NULL,NULL,NULL,'2014-03-31 17:23:54','2014-03-31 17:36:54');
/*!40000 ALTER TABLE `p3_widget_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `user_profile_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'Administrator','Admin');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles_fields`
--

DROP TABLE IF EXISTS `profiles_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `varname` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `field_type` varchar(50) NOT NULL DEFAULT '',
  `field_size` int(3) NOT NULL DEFAULT '0',
  `field_size_min` int(3) NOT NULL DEFAULT '0',
  `required` int(1) NOT NULL DEFAULT '0',
  `match` varchar(255) NOT NULL DEFAULT '',
  `range` varchar(255) NOT NULL DEFAULT '',
  `error_message` varchar(255) NOT NULL DEFAULT '',
  `other_validator` text,
  `default` varchar(255) NOT NULL DEFAULT '',
  `widget` varchar(255) NOT NULL DEFAULT '',
  `widgetparams` text,
  `position` int(3) NOT NULL DEFAULT '0',
  `visible` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_fields`
--

LOCK TABLES `profiles_fields` WRITE;
/*!40000 ALTER TABLE `profiles_fields` DISABLE KEYS */;
INSERT INTO `profiles_fields` VALUES (1,'first_name','First Name','VARCHAR',255,3,2,'','','Incorrect First Name (length between 3 and 50 characters).','','','','',1,3),(2,'last_name','Last Name','VARCHAR',255,3,2,'','','Incorrect Last Name (length between 3 and 50 characters).','','','','',2,3);
/*!40000 ALTER TABLE `profiles_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rights`
--

DROP TABLE IF EXISTS `rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rights` (
  `itemname` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  KEY `fk_rights_authitem_itemname` (`itemname`),
  CONSTRAINT `fk_rights_authitem_itemname` FOREIGN KEY (`itemname`) REFERENCES `authitem` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rights`
--

LOCK TABLES `rights` WRITE;
/*!40000 ALTER TABLE `rights` DISABLE KEYS */;
/*!40000 ALTER TABLE `rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sourcemessage`
--

DROP TABLE IF EXISTS `sourcemessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sourcemessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(32) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=289 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sourcemessage`
--

LOCK TABLES `sourcemessage` WRITE;
/*!40000 ALTER TABLE `sourcemessage` DISABLE KEYS */;
INSERT INTO `sourcemessage` VALUES (1,'UserModule.user','Incorrect username (length between 3 and 20 characters).'),(2,'UserModule.user','Incorrect password (minimal length 4 symbols).'),(3,'UserModule.user','This user\'s name already exists.'),(4,'UserModule.user','This user\'s email address already exists.'),(5,'UserModule.user','Incorrect symbols (A-z0-9).'),(6,'P3PagesModule.module','Page not found'),(7,'app','Error'),(8,'app','User'),(9,'app','Profile'),(10,'app','List'),(11,'app','Logout'),(12,'app','Login'),(13,'app','User List'),(14,'app','Accounts'),(15,'app','Media'),(16,'app','Upload'),(17,'app','Browse'),(18,'app','Pages'),(19,'app','Sitemap'),(20,'app','Append Sibling'),(21,'app','Append Child'),(22,'app','Update Translation'),(23,'app','Create Translation'),(24,'app','Update'),(25,'app','Application'),(26,'app','Overview'),(27,'app','Dashboard'),(28,'YiiDebug.yii-debug-toolbar','TOOLBAR'),(29,'YiiDebug.yii-debug-toolbar','Request'),(30,'YiiDebug.yii-debug-toolbar','ON'),(31,'YiiDebug.yii-debug-toolbar','Settings'),(32,'YiiDebug.yii-debug-toolbar','Views Rendering'),(33,'YiiDebug.yii-debug-toolbar','SQL'),(34,'YiiDebug.yii-debug-toolbar','Logging'),(35,'YiiDebug.yii-debug-toolbar','Request Server Parameters'),(36,'YiiDebug.yii-debug-toolbar','Request Cookies'),(37,'YiiDebug.yii-debug-toolbar','Session Attributes'),(38,'YiiDebug.yii-debug-toolbar','Request GET Parameters'),(39,'YiiDebug.yii-debug-toolbar','Request POST Parameters'),(40,'YiiDebug.yii-debug-toolbar','Request FILES'),(41,'YiiDebug.yii-debug-toolbar','Application Settings'),(42,'YiiDebug.yii-debug-toolbar','Application Properties'),(43,'YiiDebug.yii-debug-toolbar','Modules'),(44,'YiiDebug.yii-debug-toolbar','Application Params'),(45,'YiiDebug.yii-debug-toolbar','Components'),(46,'YiiDebug.yii-debug-toolbar','Context'),(47,'YiiDebug.yii-debug-toolbar','SQL Queries from {n} connection|SQL Queries from {n} connections'),(48,'yii-debug-toolbar','Summary'),(49,'yii-debug-toolbar','Callstack'),(50,'yii-debug-toolbar','Servers'),(51,'yii-debug-toolbar','Connection ID'),(52,'YiiDebug.yii-debug-toolbar','Driver'),(53,'YiiDebug.yii-debug-toolbar','Server Version'),(54,'YiiDebug.yii-debug-toolbar','Uptime'),(55,'YiiDebug.yii-debug-toolbar','Threads'),(56,'YiiDebug.yii-debug-toolbar','Questions'),(57,'YiiDebug.yii-debug-toolbar','Slow queries'),(58,'YiiDebug.yii-debug-toolbar','Opens'),(59,'YiiDebug.yii-debug-toolbar','Flush tables'),(60,'YiiDebug.yii-debug-toolbar','Open tables'),(61,'YiiDebug.yii-debug-toolbar','Queries per second avg'),(62,'yii-debug-toolbar','No SQL queries were recorded during this request or profiling the SQL is DISABLED.'),(63,'YiiDebug.yii-debug-toolbar','Log Messages'),(64,'YiiDebug.yii-debug-toolbar','Message (details)'),(65,'YiiDebug.yii-debug-toolbar','Level'),(66,'YiiDebug.yii-debug-toolbar','Category'),(67,'YiiDebug.yii-debug-toolbar','Time'),(68,'P3PagesModule.module','Pages'),(69,'P3PagesModule.module','Sitemap'),(70,'P3PagesModule.crud','Create'),(71,'P3PagesModule.crud','Copy'),(72,'P3PagesModule.crud','Manage'),(73,'crud','Delete'),(74,'crud','Do you want to delete this item?'),(75,'crud','Layout & View'),(76,'TbEditableField.editable','Enter'),(77,'P3PagesModule.model','ID'),(78,'P3PagesModule.model','Default Menu Name'),(79,'P3PagesModule.model','Status'),(80,'P3PagesModule.model','Tree Parent'),(81,'P3PagesModule.model','Tree Position'),(82,'P3PagesModule.model','Name'),(83,'P3PagesModule.model','Default Url Param'),(84,'P3PagesModule.model','Default Page Title'),(85,'P3PagesModule.model','Layout'),(86,'P3PagesModule.model','View'),(87,'P3PagesModule.model','Url Json'),(88,'P3PagesModule.model','Default Keywords'),(89,'P3PagesModule.model','Default Description'),(90,'P3PagesModule.model','Custom Data Json'),(91,'P3PagesModule.model','Access Owner'),(92,'P3PagesModule.model','Access Domain'),(93,'P3PagesModule.model','Access Read'),(94,'P3PagesModule.model','Access Update'),(95,'P3PagesModule.model','Access Delete'),(96,'P3PagesModule.model','Access Append'),(97,'P3PagesModule.model','Copied From'),(98,'P3PagesModule.model','Created At'),(99,'P3PagesModule.model','Updated At'),(100,'app','Home'),(101,'app','Browser'),(102,'app','Local File Scan'),(103,'app','Widgets'),(104,'app','Registry'),(105,'app','Translations'),(106,'app','Dictionaries'),(107,'app','Translate Missing'),(108,'app','Users'),(109,'app','Rights'),(110,'app','Assignments'),(111,'app','Permissions'),(112,'app','Roles'),(113,'P3PagesModule.model','P3 Page'),(114,'P3PagesModule.model','P3 Pages'),(115,'P3PagesModule.model','relation.P3PageTranslations'),(116,'P3PagesModule.crud','Cancel'),(117,'P3PagesModule.crud','Delete'),(118,'P3PagesModule.crud','Do you want to delete this item?'),(119,'P3PagesModule.crud','View Mode'),(120,'P3PagesModule.crud','Save'),(121,'P3PagesModule.crud','Data'),(122,'P3PagesModule.model','tooltip.id'),(123,'P3PagesModule.model','tooltip.default_menu_name'),(124,'P3PagesModule.model','tooltip.status'),(125,'P3PagesModule.model','tooltip.name_id'),(126,'P3PagesModule.model','tooltip.tree_parent_id'),(127,'app','None'),(128,'P3PagesModule.model','tooltip.tree_position'),(129,'P3PagesModule.model','tooltip.default_page_title'),(130,'P3PagesModule.model','tooltip.layout'),(131,'P3PagesModule.model','tooltip.view'),(132,'P3PagesModule.model','tooltip.url_json'),(133,'P3PagesModule.model','tooltip.default_url_param'),(134,'P3PagesModule.model','tooltip.default_keywords'),(135,'P3PagesModule.model','tooltip.default_description'),(136,'P3PagesModule.model','tooltip.custom_data_json'),(137,'P3PagesModule.model','tooltip.access_owner'),(138,'P3PagesModule.model','tooltip.access_domain'),(139,'P3PagesModule.model','tooltip.access_read'),(140,'P3PagesModule.model','tooltip.access_update'),(141,'P3PagesModule.model','tooltip.access_delete'),(142,'P3PagesModule.model','tooltip.access_append'),(143,'P3PagesModule.model','tooltip.copied_from_id'),(144,'P3PagesModule.model','tooltip.created_at'),(145,'P3PagesModule.model','tooltip.updated_at'),(146,'P3PagesModule.crud','Relations'),(147,'P3PagesModule.model','relation.P3Pages'),(148,'P3PagesModule.crud','Switch to view mode to edit related records.'),(149,'P3PagesModule.crud','Fields with <span class=\"required\">*</span> are required.'),(150,'UserModule.user','Login'),(151,'UserModule.user','Please fill out the following form with your login credentials:'),(152,'UserModule.user','Fields with <span class=\"required\">*</span> are required.'),(153,'UserModule.user','Remember me next time'),(154,'UserModule.user','username or email'),(155,'UserModule.user','password'),(156,'UserModule.user','Register'),(157,'UserModule.user','Lost Password?'),(158,'P3PagesModule.module','No view file in database'),(159,'P3PagesModule.model','Language'),(160,'P3PagesModule.model','Menu Name'),(161,'P3PagesModule.model','Page Title'),(162,'P3PagesModule.model','Url Param'),(163,'P3PagesModule.model','Keywords'),(164,'P3PagesModule.model','Description'),(165,'P3PagesModule.crud','View'),(166,'TbEditableField.editable','Select'),(167,'P3PagesModule.crud','Advanced Search'),(168,'P3PagesModule.crud','Clear Search'),(169,'P3PagesModule.crud','Search'),(170,'P3PagesModule.crud','Update'),(171,'P3WidgetsModule.model','P3 Widget'),(172,'P3WidgetsModule.crud','View'),(173,'P3WidgetsModule.model','P3 Widgets'),(174,'P3WidgetsModule.model','relation.P3WidgetTranslations'),(175,'P3WidgetsModule.crud','Manage'),(176,'P3WidgetsModule.crud','Cancel'),(177,'P3WidgetsModule.crud','Create'),(178,'P3WidgetsModule.crud','Delete'),(179,'P3WidgetsModule.crud','Do you want to delete this item?'),(180,'P3WidgetsModule.crud','View Mode'),(181,'P3WidgetsModule.crud','Save'),(182,'P3WidgetsModule.crud','Data'),(183,'P3WidgetsModule.model','ID'),(184,'P3WidgetsModule.model','Name'),(185,'P3WidgetsModule.model','Status'),(186,'P3WidgetsModule.model','Default Properties Json'),(187,'P3WidgetsModule.model','Default Content Html'),(188,'P3WidgetsModule.model','Module'),(189,'P3WidgetsModule.model','Controller'),(190,'P3WidgetsModule.model','Action Name'),(191,'P3WidgetsModule.model','Request Param'),(192,'P3WidgetsModule.model','Session Param'),(193,'P3WidgetsModule.model','Container'),(194,'P3WidgetsModule.model','Rank'),(195,'P3WidgetsModule.model','Alias'),(196,'P3WidgetsModule.model','Access Owner'),(197,'P3WidgetsModule.model','Access Domain'),(198,'P3WidgetsModule.model','Access Read'),(199,'P3WidgetsModule.model','Access Update'),(200,'P3WidgetsModule.model','Access Delete'),(201,'P3WidgetsModule.model','Copied From'),(202,'P3WidgetsModule.model','Created At'),(203,'P3WidgetsModule.model','Updated At'),(204,'P3WidgetsModule.crud','Relations'),(205,'P3WidgetsModule.crud','Update'),(206,'P3WidgetsModule.model','tooltip.id'),(207,'P3WidgetsModule.model','tooltip.status'),(208,'P3WidgetsModule.model','tooltip.alias'),(209,'P3WidgetsModule.model','tooltip.default_properties_json'),(210,'P3WidgetsModule.crud','Reset'),(211,'P3WidgetsModule.crud','Reset all Properties?'),(212,'p3WidgetsModule.model','help.default_properties_json'),(213,'P3WidgetsModule.crud','Do not use double quotes (\") for keys and/or values!'),(214,'P3WidgetsModule.model','tooltip.default_content_html'),(215,'P3WidgetsModule.model','tooltip.name_id'),(216,'P3WidgetsModule.model','tooltip.container_id'),(217,'P3WidgetsModule.model','tooltip.rank'),(218,'P3WidgetsModule.model','tooltip.request_param'),(219,'P3WidgetsModule.model','tooltip.action_name'),(220,'P3WidgetsModule.model','tooltip.controller_id'),(221,'P3WidgetsModule.model','tooltip.module_id'),(222,'P3WidgetsModule.model','tooltip.session_param'),(223,'P3WidgetsModule.model','tooltip.access_owner'),(224,'P3WidgetsModule.model','tooltip.access_domain'),(225,'P3WidgetsModule.model','tooltip.access_read'),(226,'P3WidgetsModule.model','tooltip.access_update'),(227,'P3WidgetsModule.model','tooltip.access_delete'),(228,'P3WidgetsModule.model','tooltip.copied_from_id'),(229,'P3WidgetsModule.model','tooltip.created_at'),(230,'P3WidgetsModule.model','tooltip.updated_at'),(231,'P3WidgetsModule.crud','Switch to view mode to edit related records.'),(232,'P3WidgetsModule.crud','Fields with <span class=\"required\">*</span> are required.'),(233,'P3MediaModule.module','Media'),(234,'P3MediaModule.module','CKEditor Browser'),(235,'P3MediaModule.module','1. Choose Format'),(236,'P3MediaModule.module','Upload'),(237,'P3MediaModule.module','Reload'),(238,'P3MediaModule.model','ID'),(239,'P3MediaModule.model','Status'),(240,'P3MediaModule.model','Type'),(241,'P3MediaModule.model','Name'),(242,'P3MediaModule.model','Default Title'),(243,'P3MediaModule.model','Default Description'),(244,'P3MediaModule.model','Tree Parent'),(245,'P3MediaModule.model','Tree Position'),(246,'P3MediaModule.model','Custom Data Json'),(247,'P3MediaModule.model','Original Name'),(248,'P3MediaModule.model','Path'),(249,'P3MediaModule.model','Hash'),(250,'P3MediaModule.model','Mime Type'),(251,'P3MediaModule.model','Size'),(252,'P3MediaModule.model','Info Php Json'),(253,'P3MediaModule.model','Info Image Magick Json'),(254,'P3MediaModule.model','Access Owner'),(255,'P3MediaModule.model','Access Domain'),(256,'P3MediaModule.model','Access Read'),(257,'P3MediaModule.model','Access Update'),(258,'P3MediaModule.model','Access Delete'),(259,'P3MediaModule.model','Access Append'),(260,'P3MediaModule.model','Copied From'),(261,'P3MediaModule.model','Created At'),(262,'P3MediaModule.model','Updated At'),(263,'P3MediaModule.module','Search'),(264,'P3MediaModule.module','2. Choose File'),(265,'P3MediaModule.module','Please choose an image preset.'),(266,'P3MediaModule.module','Upload Session'),(267,'P3MediaModule.module','Browse'),(268,'P3MediaModule.module','Add files by drag & drop or by clicking the select button below'),(269,'P3MediaModule.module','Click Start upload'),(270,'P3MediaModule.module','When upload has been completed, manage your files with'),(271,'P3MediaModule.module','File Browser'),(272,'P3MediaModule.model','P3 Media'),(273,'P3MediaModule.model','Language'),(274,'P3MediaModule.model','Title'),(275,'P3MediaModule.model','Description'),(276,'P3WidgetsModule.model','P3 Widget Translation'),(277,'P3WidgetsModule.model','P3 Widget Translations'),(278,'P3WidgetsModule.model','relation.P3Widget'),(279,'P3WidgetsModule.model','Language'),(280,'P3WidgetsModule.model','Properties Json'),(281,'P3WidgetsModule.model','Content Html'),(282,'P3WidgetsModule.model','tooltip.p3_widget_id'),(283,'P3WidgetsModule.model','tooltip.language'),(284,'P3WidgetsModule.model','tooltip.properties_json'),(285,'P3WidgetsModule.model','tooltip.content_html'),(286,'P3WidgetsModule.crud','Advanced Search'),(287,'P3WidgetsModule.crud','Clear Search'),(288,'P3WidgetsModule.crud','Search');
/*!40000 ALTER TABLE `sourcemessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_audit_trail`
--

DROP TABLE IF EXISTS `tbl_audit_trail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_audit_trail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_value` text,
  `new_value` text,
  `action` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `field` varchar(255) DEFAULT NULL,
  `stamp` datetime NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `model_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_audit_trail_user_id` (`user_id`),
  KEY `idx_audit_trail_model_id` (`model_id`),
  KEY `idx_audit_trail_model` (`model`),
  KEY `idx_audit_trail_field` (`field`),
  KEY `idx_audit_trail_action` (`action`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_audit_trail`
--

LOCK TABLES `tbl_audit_trail` WRITE;
/*!40000 ALTER TABLE `tbl_audit_trail` DISABLE KEYS */;
INSERT INTO `tbl_audit_trail` VALUES (1,NULL,NULL,'CREATE','P3Page',NULL,'2014-03-31 16:58:40','1','6'),(2,'','aa','SET','P3Page','default_menu_name','2014-03-31 16:58:40','1','6'),(3,'','aa','SET','P3Page','default_page_title','2014-03-31 16:58:40','1','6'),(4,'','//layouts/main','SET','P3Page','layout','2014-03-31 16:58:40','1','6'),(5,'','//p3pages/column1','SET','P3Page','view','2014-03-31 16:58:40','1','6'),(6,'','{}','SET','P3Page','url_json','2014-03-31 16:58:40','1','6'),(7,'','{}','SET','P3Page','custom_data_json','2014-03-31 16:58:40','1','6'),(8,'','*','SET','P3Page','access_domain','2014-03-31 16:58:40','1','6'),(9,'','1','SET','P3Page','access_owner','2014-03-31 16:58:40','1','6'),(10,'','6','SET','P3Page','id','2014-03-31 16:58:40','1','6'),(11,'','archived','SET','P3Page','status','2014-03-31 16:58:40','1','6'),(12,'archived','published','CHANGE','P3Page','status','2014-03-31 16:59:12','1','6'),(13,'0','10','CHANGE','P3Widget','rank','2014-03-31 17:01:06','1','1'),(14,NULL,NULL,'CREATE','P3Page',NULL,'2014-03-31 17:14:34','1','7'),(15,'','index','SET','P3Page','default_menu_name','2014-03-31 17:14:34','1','7'),(16,'','{}','SET','P3Page','url_json','2014-03-31 17:14:34','1','7'),(17,'','{}','SET','P3Page','custom_data_json','2014-03-31 17:14:34','1','7'),(18,'','*','SET','P3Page','access_domain','2014-03-31 17:14:34','1','7'),(19,'','1','SET','P3Page','access_owner','2014-03-31 17:14:34','1','7'),(20,'','7','SET','P3Page','id','2014-03-31 17:14:34','1','7'),(21,'','published','SET','P3Page','status','2014-03-31 17:14:34','1','7'),(22,NULL,NULL,'DELETE','P3Page',NULL,'2014-03-31 17:14:48','1','6'),(23,'','//layouts/main','CHANGE','P3Page','layout','2014-03-31 17:16:48','1','7'),(24,'','//p3pages/column1','CHANGE','P3Page','view','2014-03-31 17:16:48','1','7'),(25,NULL,NULL,'CREATE','P3Media',NULL,'2014-03-31 17:18:06','1','1'),(26,'','file','SET','P3Media','type','2014-03-31 17:18:06','1','1'),(27,'','bleach-final-getsuga-tensho-naruto-chakra-mode-crossover.jpg','SET','P3Media','default_title','2014-03-31 17:18:06','1','1'),(28,'','bleach-final-getsuga-tensho-naruto-chakra-mode-crossover.jpg','SET','P3Media','original_name','2014-03-31 17:18:06','1','1'),(29,'','1\\bleach-final-getsuga-tensho-naruto-chakra-mode-crossover.jpg','SET','P3Media','path','2014-03-31 17:18:06','1','1'),(30,'','dfccf1ae83dedc1907cd61601869b3cd','SET','P3Media','hash','2014-03-31 17:18:06','1','1'),(31,'','*','SET','P3Media','access_domain','2014-03-31 17:18:06','1','1'),(32,'','image/jpeg','SET','P3Media','mime_type','2014-03-31 17:18:06','1','1'),(33,'','{\"0\":1101,\"1\":800,\"2\":2,\"3\":\"width=\\\"1101\\\" height=\\\"800\\\"\",\"bits\":8,\"channels\":3,\"mime\":\"image\\/jpeg\"}','SET','P3Media','info_php_json','2014-03-31 17:18:06','1','1'),(34,'','548000','SET','P3Media','size','2014-03-31 17:18:06','1','1'),(35,'','1','SET','P3Media','access_owner','2014-03-31 17:18:06','1','1'),(36,'','1','SET','P3Media','id','2014-03-31 17:18:06','1','1'),(37,'','published','SET','P3Media','status','2014-03-31 17:18:06','1','1'),(38,NULL,NULL,'CREATE','P3Media',NULL,'2014-03-31 17:18:31','1','2'),(39,'','file','SET','P3Media','type','2014-03-31 17:18:31','1','2'),(40,'','bleach-final-getsuga-tensho-naruto-chakra-mode-crossover.jpg','SET','P3Media','default_title','2014-03-31 17:18:31','1','2'),(41,'','bleach-final-getsuga-tensho-naruto-chakra-mode-crossover.jpg','SET','P3Media','original_name','2014-03-31 17:18:31','1','2'),(42,'','1\\bleach-final-getsuga-tensho-naruto-chakra-mode-crossover.jpg','SET','P3Media','path','2014-03-31 17:18:31','1','2'),(43,'','dfccf1ae83dedc1907cd61601869b3cd','SET','P3Media','hash','2014-03-31 17:18:31','1','2'),(44,'','*','SET','P3Media','access_domain','2014-03-31 17:18:31','1','2'),(45,'','image/jpeg','SET','P3Media','mime_type','2014-03-31 17:18:31','1','2'),(46,'','{\"0\":1101,\"1\":800,\"2\":2,\"3\":\"width=\\\"1101\\\" height=\\\"800\\\"\",\"bits\":8,\"channels\":3,\"mime\":\"image\\/jpeg\"}','SET','P3Media','info_php_json','2014-03-31 17:18:31','1','2'),(47,'','548000','SET','P3Media','size','2014-03-31 17:18:31','1','2'),(48,'','1','SET','P3Media','access_owner','2014-03-31 17:18:31','1','2'),(49,'','2','SET','P3Media','id','2014-03-31 17:18:31','1','2'),(50,'','published','SET','P3Media','status','2014-03-31 17:18:31','1','2'),(51,NULL,NULL,'CREATE','P3Widget',NULL,'2014-03-31 17:19:17','1','6'),(52,'','7','SET','P3Widget','request_param','2014-03-31 17:19:17','1','6'),(53,'','page','SET','P3Widget','action_name','2014-03-31 17:19:17','1','6'),(54,'','default','SET','P3Widget','controller_id','2014-03-31 17:19:18','1','6'),(55,'','p3pages','SET','P3Widget','module_id','2014-03-31 17:19:18','1','6'),(56,'','*','SET','P3Widget','session_param','2014-03-31 17:19:18','1','6'),(57,'','TbCarousel','SET','P3Widget','alias','2014-03-31 17:19:18','1','6'),(58,'','{\"prevLabel\":\"‹\",\"nextLabel\":\"›\",\"slide\":\"1\",\"displayPrevAndNext\":\"1\",\"items\":{},\"options\":{},\"events\":{},\"htmlOptions\":{\"id\":\"yw0\",\"class\":\"carousel slide\"},\"actionPrefix\":\"NULL\",\"skin\":\"default\"}','SET','P3Widget','default_properties_json','2014-03-31 17:19:18','1','6'),(59,'','<div style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"/en/img/large/bleach-final-getsuga-tensho-naruto-chakra-mode-crossover.jpg_2.jpg\" style=\"width: 300px; height: 363px;\" /></div>\r\n','SET','P3Widget','default_content_html','2014-03-31 17:19:18','1','6'),(60,'','top','SET','P3Widget','container_id','2014-03-31 17:19:18','1','6'),(61,'','*','SET','P3Widget','access_domain','2014-03-31 17:19:18','1','6'),(62,'','1','SET','P3Widget','access_owner','2014-03-31 17:19:18','1','6'),(63,'','6','SET','P3Widget','id','2014-03-31 17:19:18','1','6'),(64,'','draft','SET','P3Widget','status','2014-03-31 17:19:18','1','6'),(65,NULL,NULL,'CREATE','P3WidgetTranslation',NULL,'2014-03-31 17:19:18','1','6'),(66,'','en','SET','P3WidgetTranslation','language','2014-03-31 17:19:18','1','6'),(67,'','6','SET','P3WidgetTranslation','p3_widget_id','2014-03-31 17:19:18','1','6'),(68,'','1','SET','P3WidgetTranslation','access_owner','2014-03-31 17:19:18','1','6'),(69,'','6','SET','P3WidgetTranslation','id','2014-03-31 17:19:18','1','6'),(70,'','draft','SET','P3WidgetTranslation','status','2014-03-31 17:19:18','1','6'),(71,'<div style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"/en/img/large/bleach-final-getsuga-tensho-naruto-chakra-mode-crossover.jpg_2.jpg\" style=\"width: 300px; height: 363px;\" /></div>\r\n','<div style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"/en/img/large/bleach-final-getsuga-tensho-naruto-chakra-mode-crossover.jpg_2.jpg\" style=\"width: 300px; height: 363px;\" /></div>\r\n<div style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"/en/img/large/bleach-final-getsuga-tensho-naruto-chakra-mode-crossover.jpg_2.jpg\" style=\"width: 300px; height: 363px;\" /></div>\r\n','CHANGE','P3Widget','default_content_html','2014-03-31 17:21:19','1','6'),(72,'draft','published','CHANGE','P3Widget','status','2014-03-31 17:21:19','1','6'),(73,'{\"prevLabel\":\"‹\",\"nextLabel\":\"›\",\"slide\":\"1\",\"displayPrevAndNext\":\"1\",\"items\":{},\"options\":{},\"events\":{},\"htmlOptions\":{\"id\":\"yw0\",\"class\":\"carousel slide\"},\"actionPrefix\":\"NULL\",\"skin\":\"default\"}','{\"prevLabel\":\"‹\",\"nextLabel\":\"›\",\"slide\":\"2\",\"displayPrevAndNext\":\"1\",\"items\":{},\"options\":{},\"events\":{},\"htmlOptions\":{\"id\":\"yw0\",\"class\":\"carousel slide\"},\"actionPrefix\":\"NULL\",\"skin\":\"default\"}','CHANGE','P3Widget','default_properties_json','2014-03-31 17:21:52','1','6'),(74,'<div style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"/en/img/large/bleach-final-getsuga-tensho-naruto-chakra-mode-crossover.jpg_2.jpg\" style=\"width: 300px; height: 363px;\" /></div>\r\n<div style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"/en/img/large/bleach-final-getsuga-tensho-naruto-chakra-mode-crossover.jpg_2.jpg\" style=\"width: 300px; height: 363px;\" /></div>\r\n','<div style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"/en/img/large/bleach-final-getsuga-tensho-naruto-chakra-mode-crossover.jpg_2.jpg\" style=\"width: 300px; height: 363px;\" /></div>\r\n','CHANGE','P3Widget','default_content_html','2014-03-31 17:21:52','1','6'),(75,'','{}','CHANGE','P3WidgetTranslation','properties_json','2014-03-31 17:22:10','1','6'),(76,'','<div>\r\n	dfdfdfdf</div>\r\n','CHANGE','P3WidgetTranslation','content_html','2014-03-31 17:22:10','1','6'),(77,'{\"prevLabel\":\"‹\",\"nextLabel\":\"›\",\"slide\":\"2\",\"displayPrevAndNext\":\"1\",\"items\":{},\"options\":{},\"events\":{},\"htmlOptions\":{\"id\":\"yw0\",\"class\":\"carousel slide\"},\"actionPrefix\":\"NULL\",\"skin\":\"default\"}','{\"prevLabel\":\"‹\",\"nextLabel\":\"›\",\"slide\":\"1\",\"displayPrevAndNext\":\"1\",\"items\":{},\"options\":{},\"events\":{},\"htmlOptions\":{\"id\":\"yw0\",\"class\":\"carousel slide\"},\"actionPrefix\":\"NULL\",\"skin\":\"default\"}','CHANGE','P3Widget','default_properties_json','2014-03-31 17:22:34','1','6'),(78,NULL,NULL,'DELETE','P3WidgetTranslation',NULL,'2014-03-31 17:22:43','1','6'),(79,NULL,NULL,'CREATE','P3WidgetTranslation',NULL,'2014-03-31 17:23:54','1','7'),(80,'','en','SET','P3WidgetTranslation','language','2014-03-31 17:23:54','1','7'),(81,'','6','SET','P3WidgetTranslation','p3_widget_id','2014-03-31 17:23:54','1','7'),(82,'','1','SET','P3WidgetTranslation','access_owner','2014-03-31 17:23:54','1','7'),(83,'','7','SET','P3WidgetTranslation','id','2014-03-31 17:23:54','1','7'),(84,'','draft','SET','P3WidgetTranslation','status','2014-03-31 17:23:54','1','7'),(85,'7','index','CHANGE','P3Widget','request_param','2014-03-31 17:24:59','1','6'),(86,'index','7','CHANGE','P3Widget','request_param','2014-03-31 17:25:16','1','6'),(87,'<div style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"/en/img/large/bleach-final-getsuga-tensho-naruto-chakra-mode-crossover.jpg_2.jpg\" style=\"width: 300px; height: 363px;\" /></div>\r\n','<div>\r\n	<div style=\"text-align: center;\">\r\n		<img alt=\"\" src=\"/en/img/large/bleach-final-getsuga-tensho-naruto-chakra-mode-crossover.jpg_2.jpg\" style=\"width: 300px; height: 363px;\" /></div>\r\n</div>\r\n<div>\r\n	145</div>\r\n','CHANGE','P3Widget','default_content_html','2014-03-31 17:26:21','1','6'),(88,'0','2','CHANGE','P3Widget','rank','2014-03-31 17:26:21','1','6'),(89,'{\"prevLabel\":\"‹\",\"nextLabel\":\"›\",\"slide\":\"1\",\"displayPrevAndNext\":\"1\",\"items\":{},\"options\":{},\"events\":{},\"htmlOptions\":{\"id\":\"yw0\",\"class\":\"carousel slide\"},\"actionPrefix\":\"NULL\",\"skin\":\"default\"}','{\"prevLabel\":\"‹\",\"nextLabel\":\"›\",\"slide\":\"1\",\"displayPrevAndNext\":\"1\",\"items\":{\"1\":{},\"2\":{}},\"options\":{},\"events\":{},\"htmlOptions\":{\"id\":\"yw0\",\"class\":\"carousel slide\"},\"actionPrefix\":\"NULL\",\"skin\":\"default\"}','CHANGE','P3Widget','default_properties_json','2014-03-31 17:28:19','1','6'),(90,'<div>\r\n	<div style=\"text-align: center;\">\r\n		<img alt=\"\" src=\"/en/img/large/bleach-final-getsuga-tensho-naruto-chakra-mode-crossover.jpg_2.jpg\" style=\"width: 300px; height: 363px;\" /></div>\r\n</div>\r\n<div>\r\n	145</div>\r\n','<div style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"/en/img/large/bleach-final-getsuga-tensho-naruto-chakra-mode-crossover.jpg_2.jpg\" style=\"width: 300px; height: 363px;\" /></div>\r\n','CHANGE','P3Widget','default_content_html','2014-03-31 17:28:19','1','6'),(91,'2','0','CHANGE','P3Widget','rank','2014-03-31 17:28:19','1','6'),(92,'{\"prevLabel\":\"‹\",\"nextLabel\":\"›\",\"slide\":\"1\",\"displayPrevAndNext\":\"1\",\"items\":{\"1\":{},\"2\":{}},\"options\":{},\"events\":{},\"htmlOptions\":{\"id\":\"yw0\",\"class\":\"carousel slide\"},\"actionPrefix\":\"NULL\",\"skin\":\"default\"}','{\"prevLabel\":\"‹\",\"nextLabel\":\"›\",\"slide\":\"1\",\"displayPrevAndNext\":\"1\",\"items\":{},\"options\":{},\"events\":{},\"htmlOptions\":{\"id\":\"yw0\",\"class\":\"carousel slide\"},\"actionPrefix\":\"NULL\",\"skin\":\"default\"}','CHANGE','P3Widget','default_properties_json','2014-03-31 17:28:41','1','6'),(93,'{\"prevLabel\":\"‹\",\"nextLabel\":\"›\",\"slide\":\"1\",\"displayPrevAndNext\":\"1\",\"items\":{},\"options\":{},\"events\":{},\"htmlOptions\":{\"id\":\"yw0\",\"class\":\"carousel slide\"},\"actionPrefix\":\"NULL\",\"skin\":\"default\"}','{\"prevLabel\":\"‹\",\"nextLabel\":\"›\",\"slide\":\"1\",\"displayPrevAndNext\":\"1\",\"items\":{\"0\":{\r\n      \"image\":\"http://placehold.it/1400x800&text=This+stuff\",\r\n      \"label\":\"It\'s foo bar!\",\r\n      \"caption\":\"Lorem ipsum dolor sit amet, est te labitur tincidunt consequuntur, mutat consul dicunt id sed. Et mei quando aliquid, sed ad graece audiam ornatus. Vel id adhuc consul perfecto. Decore ignota euismod eos ex.\"\r\n    },\r\n    \"1\":{\r\n      \"image\":\"http://placehold.it/1400x800&text=rockz!\",\r\n      \"label\":\"Sup?\",\r\n      \"caption\":\"Lorem ipsum dolor sit amet, est te labitur tincidunt consequuntur, mutat consul dicunt id sed. Et mei quando aliquid, sed ad graece audiam ornatus. Vel id adhuc consul perfecto. Decore ignota euismod eos ex.\"\r\n    }\r\n},\"options\":{},\"events\":{},\"htmlOptions\":{\"id\":\"yw0\",\"class\":\"carousel slide\"},\"actionPrefix\":\"NULL\",\"skin\":\"default\"}','CHANGE','P3Widget','default_properties_json','2014-03-31 17:33:15','1','6'),(94,'{\"prevLabel\":\"‹\",\"nextLabel\":\"›\",\"slide\":\"1\",\"displayPrevAndNext\":\"1\",\"items\":{\"0\":{\r\n      \"image\":\"http://placehold.it/1400x800&text=This+stuff\",\r\n      \"label\":\"It\'s foo bar!\",\r\n      \"caption\":\"Lorem ipsum dolor sit amet, est te labitur tincidunt consequuntur, mutat consul dicunt id sed. Et mei quando aliquid, sed ad graece audiam ornatus. Vel id adhuc consul perfecto. Decore ignota euismod eos ex.\"\r\n    },\r\n    \"1\":{\r\n      \"image\":\"http://placehold.it/1400x800&text=rockz!\",\r\n      \"label\":\"Sup?\",\r\n      \"caption\":\"Lorem ipsum dolor sit amet, est te labitur tincidunt consequuntur, mutat consul dicunt id sed. Et mei quando aliquid, sed ad graece audiam ornatus. Vel id adhuc consul perfecto. Decore ignota euismod eos ex.\"\r\n    }\r\n},\"options\":{},\"events\":{},\"htmlOptions\":{\"id\":\"yw0\",\"class\":\"carousel slide\"},\"actionPrefix\":\"NULL\",\"skin\":\"default\"}','{\"prevLabel\":\"‹\",\"nextLabel\":\"›\",\"slide\":\"1\",\"displayPrevAndNext\":\"1\",\"items\":{\"0\":{\"image\":\"http://placehold.it/1400x800&text=This+stuff\",\"label\":\"It\'s foo bar!\",\"caption\":\"Lorem ipsum dolor sit amet, est te labitur tincidunt consequuntur, mutat consul dicunt id sed. Et mei quando aliquid, sed ad graece audiam ornatus. Vel id adhuc consul perfecto. Decore ignota euismod eos ex.\"},\"1\":{\"image\":\"http://placehold.it/1400x800&text=rockz!\",\"label\":\"Sup?\",\"caption\":\"Lorem ipsum dolor sit amet, est te labitur tincidunt consequuntur, mutat consul dicunt id sed. Et mei quando aliquid, sed ad graece audiam ornatus. Vel id adhuc consul perfecto. Decore ignota euismod eos ex.\"}},\"options\":{},\"events\":{},\"htmlOptions\":{\"id\":\"yw0\",\"class\":\"carousel slide\"},\"actionPrefix\":\"NULL\",\"skin\":\"default\"}','CHANGE','P3Widget','default_properties_json','2014-03-31 17:36:54','1','6'),(95,'<div style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"/en/img/large/bleach-final-getsuga-tensho-naruto-chakra-mode-crossover.jpg_2.jpg\" style=\"width: 300px; height: 363px;\" /></div>\r\n',NULL,'CHANGE','P3Widget','default_content_html','2014-03-31 17:36:54','1','6');
/*!40000 ALTER TABLE `tbl_audit_trail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(128) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `activkey` varchar(128) NOT NULL DEFAULT '',
  `superuser` int(1) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastvisit_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_username` (`username`),
  UNIQUE KEY `user_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','21232f297a57a5a743894a0e4a801fc3','webmaster@example.com','dcd8c6ea0db49278cf4a5b5f235c5dd0',1,1,'2014-03-31 13:49:09','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'etelix_web'
--

--
-- Dumping routines for database 'etelix_web'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-03-31 11:08:47
