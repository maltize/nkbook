-- MySQL dump 10.11
--
-- Host: localhost    Database: nkbook_production
-- ------------------------------------------------------
-- Server version	5.0.90-log

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
-- Table structure for table `feedbacks`
--

DROP TABLE IF EXISTS `feedbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedbacks` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(255) default NULL,
  `message` text,
  `status` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedbacks`
--

LOCK TABLES `feedbacks` WRITE;
/*!40000 ALTER TABLE `feedbacks` DISABLE KEYS */;
INSERT INTO `feedbacks` VALUES (1,'maltize@gmail.com','Testuje sobie mailera, ciekawe czy to dojdzie?',1,'2010-10-19 00:38:12','2010-10-19 00:38:12'),(2,'bartekwidlak@gmail.com','ueeeeeeeeeee, a gdzie jqery sprawdzajacy zanim klikniesz?',1,'2010-10-24 12:14:01','2010-10-24 12:14:01');
/*!40000 ALTER TABLE `feedbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `id` int(11) NOT NULL auto_increment,
  `login` varchar(255) default NULL,
  `nk_id` varchar(255) default NULL,
  `url` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `html` text,
  `tos` tinyint(1) default NULL,
  `status` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'maltize','3493910','http://nk.pl/card/3493910/b136e904c8','maltize@gmail.com','<script width=\"180\" id=\"nk_card\" type=\"text/javascript\" charset=\"UTF-8\" src=\"http://nk.pl/card/js/3493910/b136e904c8\"></script>',1,NULL,'2010-10-13 00:44:44','2010-10-13 00:44:44'),(4,NULL,'23122275','http://nk.pl/card/23122275/85f45e5aa6','aaa@aa2.pl','<script width=\"180\" id=\"nk_card\" type=\"text/javascript\" charset=\"UTF-8\" src=\"http://nk.pl/card/js/23122275/85f45e5aa6\"></script>',1,NULL,'2010-10-13 22:24:59','2010-10-13 22:24:59'),(6,NULL,'2323052','http://nk.pl/card/2323052/0019bb20f0','skwarekp@gmail.com','<script width=\"180\" id=\"nk_card\" type=\"text/javascript\" charset=\"UTF-8\" src=\"http://nk.pl/card/js/2323052/0019bb20f0\"></script>',1,1,'2010-10-16 00:11:44','2010-10-16 00:11:44'),(7,NULL,'3175166','http://nk.pl/card/3175166/58b67540fa','gosiax121@wp.pl','<script width=\"180\" id=\"nk_card\" type=\"text/javascript\" charset=\"UTF-8\" src=\"http://nk.pl/card/js/3175166/58b67540fa\"></script>',1,1,'2010-10-19 21:48:19','2010-10-19 21:48:19'),(8,'maltize','3493910','http://nk.pl/card/3493910/b136e904c8','maltize@gmail.com','<script width=\"180\" id=\"nk_card\" type=\"text/javascript\" charset=\"UTF-8\" src=\"http://nk.pl/card/js/3493910/b136e904c8\"></script>',1,1,'2010-10-20 00:02:54','2010-10-20 00:02:54'),(9,NULL,'3844538','http://nk.pl/card/3844538/63118fd59d','apochujwammoj@email.pl','<script width=\"180\" id=\"nk_card\" type=\"text/javascript\" charset=\"UTF-8\" src=\"http://nk.pl/card/js/3844538/63118fd59d\"></script>',1,1,'2010-10-20 22:09:00','2010-10-20 22:09:00'),(12,'maltize','3493910','http://nk.pl/card/3493910/b136e904c8','maltize@gmail.com','<script width=\"180\" id=\"nk_card\" type=\"text/javascript\" charset=\"UTF-8\" src=\"http://nk.pl/card/js/3493910/b136e904c8\"></script>',1,1,'2010-10-22 13:00:12','2010-10-22 13:00:12'),(13,NULL,'2743421','http://nk.pl/card/2743421/0157b7dddf','bealor@gmail.com','<script width=\"180\" id=\"nk_card\" type=\"text/javascript\" charset=\"UTF-8\" src=\"http://nk.pl/card/js/2743421/0157b7dddf\"></script>',1,1,'2010-10-22 19:01:00','2010-10-22 19:01:00'),(14,NULL,'14785007','http://nk.pl/card/14785007/92c549ebd8','paulazajac23@gmail.com','<script width=\"180\" id=\"nk_card\" type=\"text/javascript\" charset=\"UTF-8\" src=\"http://nk.pl/card/js/14785007/92c549ebd8\"></script>',1,1,'2010-10-23 12:25:41','2010-10-23 12:25:41'),(15,NULL,'35942413','http://nk.pl/card/35942413/b207381874','steve115@vp.pl','<script width=\"180\" id=\"nk_card\" type=\"text/javascript\" charset=\"UTF-8\" src=\"http://nk.pl/card/js/35942413/b207381874\"></script>',1,1,'2010-10-23 12:54:29','2010-10-23 12:54:29'),(16,NULL,'7937171','http://nk.pl/card/7937171/29a0029aa5','damian7882@onet.eu','<script width=\"180\" id=\"nk_card\" type=\"text/javascript\" charset=\"UTF-8\" src=\"http://nk.pl/card/js/7937171/29a0029aa5\"></script>',1,1,'2010-10-23 13:17:47','2010-10-23 13:17:47'),(17,'Bart','2602970','http://nk.pl/card/2602970/00426894c8','bartg1@o2.pl','<script width=\"180\" id=\"nk_card\" type=\"text/javascript\" charset=\"UTF-8\" src=\"http://nk.pl/card/js/2602970/00426894c8\"></script>',1,1,'2010-10-23 18:50:29','2010-10-23 18:50:30'),(18,NULL,'20087521','http://nk.pl/card/20087521/b1888a09e5','natalia.wolter@o2.pl','<script width=\"180\" id=\"nk_card\" type=\"text/javascript\" charset=\"UTF-8\" src=\"http://nk.pl/card/js/20087521/b1888a09e5\"></script>',1,1,'2010-10-23 20:43:29','2010-10-23 20:43:29'),(19,NULL,'20087521','http://nk.pl/card/20087521/b1888a09e5','natalia.wolter@o2.pl','<script width=\"180\" id=\"nk_card\" type=\"text/javascript\" charset=\"UTF-8\" src=\"http://nk.pl/card/js/20087521/b1888a09e5\"></script>',1,1,'2010-10-23 20:45:14','2010-10-23 20:45:14'),(20,NULL,'19144649','http://nk.pl/card/19144649/d11c5725a1','HeLs7@wp.pl','<script width=\"180\" id=\"nk_card\" type=\"text/javascript\" charset=\"UTF-8\" src=\"http://nk.pl/card/js/19144649/d11c5725a1\"></script>',1,1,'2010-10-23 21:40:23','2010-10-23 21:40:23'),(21,'pppppadźka, padzia , padzik...','28041817','http://nk.pl/card/28041817/1b459ea2fd','madziunia97@o2.pl','<script width=\"180\" id=\"nk_card\" type=\"text/javascript\" charset=\"UTF-8\" src=\"http://nk.pl/card/js/28041817/1b459ea2fd\"></script>',1,1,'2010-10-27 21:03:50','2010-10-27 21:03:50'),(22,NULL,'2544749','http://nk.pl/card/2544749/6eab7882d4','juzdynna@wp.pl','<script width=\"180\" id=\"nk_card\" type=\"text/javascript\" charset=\"UTF-8\" src=\"http://nk.pl/card/js/2544749/6eab7882d4\"></script>',1,1,'2010-11-08 15:38:38','2010-11-08 15:38:38');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20101004212935'),('20101004213024'),('20101004213055');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spots`
--

DROP TABLE IF EXISTS `spots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spots` (
  `id` int(11) NOT NULL auto_increment,
  `profile_id` int(11) default NULL,
  `duration` int(11) default NULL,
  `position` int(11) default NULL,
  `valid_from` datetime default NULL,
  `valid_to` datetime default NULL,
  `status` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spots`
--

LOCK TABLES `spots` WRITE;
/*!40000 ALTER TABLE `spots` DISABLE KEYS */;
INSERT INTO `spots` VALUES (1,1,7,0,'2010-10-13 00:44:44','2010-10-20 00:44:44',NULL,'2010-10-13 00:44:44','2010-10-13 00:44:44'),(4,4,7,20,'2010-10-13 22:24:59','2010-10-20 22:24:59',NULL,'2010-10-13 22:24:59','2010-10-13 22:24:59'),(6,6,7,69,'2010-10-16 00:11:44','2012-09-15 00:11:44',NULL,'2010-10-16 00:11:44','2010-11-17 19:19:22'),(7,7,7,28,'2010-10-19 21:48:19','2011-10-18 21:48:19',NULL,'2010-10-19 21:48:19','2010-11-17 19:19:22'),(8,8,7,0,'2010-10-20 00:02:54','2011-10-19 00:02:54',NULL,'2010-10-20 00:02:54','2010-11-17 19:19:22'),(9,9,7,44,'2010-10-20 22:09:00','2011-10-19 22:09:00',NULL,'2010-10-20 22:09:00','2010-11-17 19:19:22'),(12,12,30,70,'2010-10-22 13:00:12','2011-10-21 13:00:12',NULL,'2010-10-22 13:00:12','2010-11-17 19:19:22'),(13,13,30,999,'2010-10-22 19:01:00','2011-10-21 19:01:00',NULL,'2010-10-22 19:01:00','2010-11-17 19:19:22'),(14,14,30,129,'2010-10-23 12:25:41','2011-10-22 12:25:41',NULL,'2010-10-23 12:25:41','2010-11-17 19:19:22'),(15,15,30,130,'2010-10-23 12:54:29','2011-10-22 12:54:29',NULL,'2010-10-23 12:54:29','2010-11-17 19:19:22'),(16,16,30,128,'2010-10-23 13:17:47','2011-10-22 13:17:47',NULL,'2010-10-23 13:17:47','2010-11-17 19:19:22'),(17,17,30,84,'2010-10-23 18:50:29','2011-10-22 18:50:29',NULL,'2010-10-23 18:50:29','2010-11-17 19:19:22'),(18,18,30,109,'2010-10-23 20:43:29','2011-10-22 20:43:29',NULL,'2010-10-23 20:43:29','2010-11-17 19:19:22'),(19,19,30,187,'2010-10-23 20:45:14','2011-10-22 20:45:14',NULL,'2010-10-23 20:45:14','2010-11-17 19:19:22'),(20,20,30,2,'2010-10-23 21:40:23','2011-10-22 21:40:23',NULL,'2010-10-23 21:40:23','2010-11-17 19:19:22'),(21,21,30,131,'2010-10-27 21:03:50','2011-10-26 21:03:50',NULL,'2010-10-27 21:03:50','2010-11-17 19:19:22'),(22,22,30,85,'2010-11-08 15:38:38','2011-11-08 15:38:38',NULL,'2010-11-08 15:38:38','2010-11-17 19:19:22');
/*!40000 ALTER TABLE `spots` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-04-29 13:01:30
