CREATE DATABASE  IF NOT EXISTS `strongloop` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `strongloop`;
-- MySQL dump 10.13  Distrib 5.5.24, for osx10.5 (i386)
--
-- Host: 192.237.213.245    Database: strongloop
-- ------------------------------------------------------
-- Server version	5.1.67

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `militaryAgency` varchar(255) DEFAULT NULL,
  `realm` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `emailVerified` tinyint(1) DEFAULT NULL,
  `verificationToken` varchar(255) DEFAULT NULL,
  `credentials` varchar(255) DEFAULT NULL,
  `challenges` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `lastUpdated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,NULL,NULL,NULL,'foo','$2a$10$sQ6/CEKSQpEc3hVrY8kb8ug/Spy80rlUYJ3fQ/33w3.kpq5SD4zqG','foo@bar.com',NULL,NULL,'[]','[]',NULL,NULL,NULL),(2,NULL,NULL,NULL,'bar','$2a$10$IdlCSes8/BsNbZAaV2xhwOtRp5722Uexbdo1VpITidk8VFBaaw2sW','bar@bar.com',NULL,NULL,'[]','[]',NULL,NULL,NULL),(3,NULL,NULL,NULL,'bat','$2a$10$PEOrqotDnWRhYYU9ungKM.gTuAvvRTT70y0Be8/Wm4VdCCecm38tW','bat@bar.com',NULL,NULL,'[]','[]',NULL,NULL,NULL),(4,NULL,NULL,NULL,'baz','$2a$10$MWchndR.QMPEIvyBpIJT3.2CRKNpSmPkhWfTIDiSpBnAn2iN/lH42','baz@bar.com',NULL,NULL,'[]','[]',NULL,NULL,NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` varchar(255) DEFAULT NULL,
  `locationId` varchar(255) DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=518 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,'1','5',43,56),(2,'2','5',43,56),(3,'3','5',27,85),(4,'4','5',18,30),(5,'5','5',3,38),(6,'6','5',10,21),(7,'7','5',43,58),(8,'8','5',6,12),(9,'9','5',0,3),(10,'10','5',0,31),(11,'11','5',73,93),(12,'12','5',22,25),(13,'13','5',44,70),(14,'14','5',26,50),(15,'15','5',36,83),(16,'16','5',20,59),(17,'17','5',28,44),(18,'18','5',5,50),(19,'19','5',2,29),(20,'20','5',38,54),(21,'21','5',4,29),(22,'22','5',1,59),(23,'23','5',20,36),(24,'24','5',10,10),(25,'25','5',58,60),(26,'26','5',0,18),(27,'27','5',29,50),(28,'28','5',24,34),(29,'29','5',36,43),(30,'30','5',43,64),(31,'31','5',79,90),(32,'32','5',13,13),(33,'33','5',9,60),(34,'34','5',7,13),(35,'35','5',43,54),(36,'36','5',67,69),(37,'37','5',1,15),(38,'38','5',36,44),(39,'39','5',1,17),(40,'40','5',13,16),(41,'41','5',24,64),(42,'42','5',87,99),(43,'43','5',27,99),(44,'44','5',71,71),(45,'45','5',9,20),(46,'46','5',9,67),(47,'47','5',19,21),(48,'48','5',5,5),(49,'49','5',82,91),(50,'50','5',27,42),(51,'51','5',51,60),(52,'52','5',8,72),(53,'53','5',5,13),(54,'54','5',3,71),(55,'55','5',55,56),(56,'56','5',9,90),(57,'57','5',3,18),(58,'58','5',2,14),(59,'59','5',54,95),(60,'60','5',62,70),(61,'61','5',18,50),(62,'62','5',60,78),(63,'63','5',23,59),(64,'64','5',14,23),(65,'65','5',2,97),(66,'66','5',49,50),(67,'67','5',47,93),(68,'68','5',34,42),(69,'69','5',3,18),(70,'70','5',37,84),(71,'71','5',22,40),(72,'72','5',8,61),(73,'73','5',2,3),(74,'74','5',10,16),(75,'75','5',53,89),(76,'76','5',35,60),(77,'77','5',57,80),(78,'78','5',53,81),(79,'79','5',32,54),(80,'80','5',1,4),(81,'81','5',78,86),(82,'82','5',11,21),(83,'83','5',28,81),(84,'84','5',2,57),(85,'85','5',30,37),(86,'86','5',17,80),(87,'5','5',1,9),(88,'2','88',10,10),(89,'3','88',1,1),(90,'4','88',8,27),(91,'5','88',3,38),(92,'6','88',28,76),(93,'7','88',40,83),(94,'8','88',1,4),(95,'9','88',87,95),(96,'10','88',29,35),(97,'11','88',10,69),(98,'12','88',32,86),(99,'13','88',27,28),(100,'14','88',59,66),(101,'15','88',59,70),(102,'16','88',43,70),(103,'17','88',50,63),(104,'18','88',8,20),(105,'19','88',20,29),(106,'20','88',36,50),(107,'21','88',40,63),(108,'22','88',4,96),(109,'23','88',70,98),(110,'24','88',1,1),(111,'25','88',17,45),(112,'26','88',52,97),(113,'27','88',0,0),(114,'28','88',97,98),(115,'29','88',26,80),(116,'30','88',11,33),(117,'31','88',10,21),(118,'32','88',14,36),(119,'33','88',71,86),(120,'34','88',85,100),(121,'35','88',3,45),(122,'36','88',0,3),(123,'37','88',17,71),(124,'38','88',41,75),(125,'39','88',37,41),(126,'40','88',37,49),(127,'41','88',1,2),(128,'42','88',49,72),(129,'43','88',24,38),(130,'44','88',6,66),(131,'45','88',31,49),(132,'46','88',9,10),(133,'47','88',57,72),(134,'48','88',17,24),(135,'49','88',41,61),(136,'50','88',33,87),(137,'51','88',11,25),(138,'52','88',1,8),(139,'53','88',14,64),(140,'54','88',50,89),(141,'55','88',16,66),(142,'56','88',0,6),(143,'57','88',18,32),(144,'58','88',6,6),(145,'59','88',68,84),(146,'60','88',50,74),(147,'61','88',7,18),(148,'62','88',14,49),(149,'63','88',3,3),(150,'64','88',21,83),(151,'65','88',48,90),(152,'66','88',11,65),(153,'67','88',29,90),(154,'68','88',44,45),(155,'69','88',23,30),(156,'70','88',53,71),(157,'71','88',50,76),(158,'72','88',13,20),(159,'73','88',6,8),(160,'74','88',7,11),(161,'75','88',0,3),(162,'76','88',49,51),(163,'77','88',37,61),(164,'78','88',4,78),(165,'79','88',1,5),(166,'80','88',23,29),(167,'81','88',3,52),(168,'82','88',1,2),(169,'83','88',65,67),(170,'84','88',41,87),(171,'85','88',20,21),(172,'86','88',46,94),(173,'5','88',64,68),(174,'2','89',5,78),(175,'3','89',29,41),(176,'4','89',2,39),(177,'5','89',57,67),(178,'6','89',1,2),(179,'7','89',68,80),(180,'8','89',22,81),(181,'9','89',9,52),(182,'10','89',26,42),(183,'11','89',42,91),(184,'12','89',23,35),(185,'13','89',38,59),(186,'14','89',43,51),(187,'15','89',19,29),(188,'16','89',21,29),(189,'17','89',18,47),(190,'18','89',26,52),(191,'19','89',18,61),(192,'20','89',33,97),(193,'21','89',1,35),(194,'22','89',41,65),(195,'23','89',16,41),(196,'24','89',26,32),(197,'25','89',0,11),(198,'26','89',30,52),(199,'27','89',29,73),(200,'28','89',26,86),(201,'29','89',48,48),(202,'30','89',0,68),(203,'31','89',25,32),(204,'32','89',37,80),(205,'33','89',12,43),(206,'34','89',34,89),(207,'35','89',54,97),(208,'36','89',2,18),(209,'37','89',13,16),(210,'38','89',19,54),(211,'39','89',16,40),(212,'40','89',10,93),(213,'41','89',35,39),(214,'42','89',24,25),(215,'43','89',5,55),(216,'44','89',9,43),(217,'45','89',36,82),(218,'46','89',5,8),(219,'47','89',18,20),(220,'48','89',2,9),(221,'49','89',34,91),(222,'50','89',27,55),(223,'51','89',11,72),(224,'52','89',8,13),(225,'53','89',4,31),(226,'54','89',1,1),(227,'55','89',7,19),(228,'56','89',3,35),(229,'57','89',58,73),(230,'58','89',2,32),(231,'59','89',51,64),(232,'60','89',34,79),(233,'61','89',44,66),(234,'62','89',37,46),(235,'63','89',10,11),(236,'64','89',15,74),(237,'65','89',8,19),(238,'66','89',13,26),(239,'67','89',0,1),(240,'68','89',5,17),(241,'69','89',0,0),(242,'70','89',1,48),(243,'71','89',13,70),(244,'72','89',24,68),(245,'73','89',21,48),(246,'74','89',17,68),(247,'75','89',72,72),(248,'76','89',6,24),(249,'77','89',18,22),(250,'78','89',8,24),(251,'79','89',26,31),(252,'80','89',14,19),(253,'81','89',10,31),(254,'82','89',88,92),(255,'83','89',5,11),(256,'84','89',13,72),(257,'85','89',18,37),(258,'86','89',6,12),(259,'5','89',79,99),(260,'2','90',10,19),(261,'3','90',3,6),(262,'4','90',8,38),(263,'5','90',26,54),(264,'6','90',20,73),(265,'7','90',30,95),(266,'8','90',32,93),(267,'9','90',4,18),(268,'10','90',32,94),(269,'11','90',57,80),(270,'12','90',3,6),(271,'13','90',40,58),(272,'14','90',54,91),(273,'15','90',10,11),(274,'16','90',34,58),(275,'17','90',34,99),(276,'18','90',72,90),(277,'19','90',13,76),(278,'20','90',37,71),(279,'21','90',21,39),(280,'22','90',4,20),(281,'23','90',11,73),(282,'24','90',18,100),(283,'25','90',26,62),(284,'26','90',0,1),(285,'27','90',10,28),(286,'28','90',68,78),(287,'29','90',10,73),(288,'30','90',73,96),(289,'31','90',35,75),(290,'32','90',58,88),(291,'33','90',14,26),(292,'34','90',22,24),(293,'35','90',23,72),(294,'36','90',23,59),(295,'37','90',3,6),(296,'38','90',51,71),(297,'39','90',48,60),(298,'40','90',44,56),(299,'41','90',25,36),(300,'42','90',32,83),(301,'43','90',77,92),(302,'44','90',30,38),(303,'45','90',43,49),(304,'46','90',23,27),(305,'47','90',78,84),(306,'48','90',26,48),(307,'49','90',15,52),(308,'50','90',4,45),(309,'51','90',53,77),(310,'52','90',5,6),(311,'53','90',17,30),(312,'54','90',4,44),(313,'55','90',12,20),(314,'56','90',15,25),(315,'57','90',1,33),(316,'58','90',22,34),(317,'59','90',6,12),(318,'60','90',3,9),(319,'61','90',41,59),(320,'62','90',16,32),(321,'63','90',7,15),(322,'64','90',49,95),(323,'65','90',41,45),(324,'66','90',18,45),(325,'67','90',11,39),(326,'68','90',26,84),(327,'69','90',3,4),(328,'70','90',72,98),(329,'71','90',26,28),(330,'72','90',2,2),(331,'73','90',57,90),(332,'74','90',12,75),(333,'75','90',23,37),(334,'76','90',22,22),(335,'77','90',30,86),(336,'78','90',44,82),(337,'79','90',13,17),(338,'80','90',38,45),(339,'81','90',26,91),(340,'82','90',34,41),(341,'83','90',19,43),(342,'84','90',43,43),(343,'85','90',34,69),(344,'86','90',10,25),(345,'5','90',18,34),(346,'2','91',25,98),(347,'3','91',15,28),(348,'4','91',56,97),(349,'5','91',20,30),(350,'6','91',8,19),(351,'7','91',21,23),(352,'8','91',35,63),(353,'9','91',0,7),(354,'10','91',0,2),(355,'11','91',1,6),(356,'12','91',67,77),(357,'13','91',7,51),(358,'14','91',39,96),(359,'15','91',36,74),(360,'16','91',15,73),(361,'17','91',36,63),(362,'18','91',0,19),(363,'19','91',24,94),(364,'20','91',8,38),(365,'21','91',41,58),(366,'22','91',18,22),(367,'23','91',25,37),(368,'24','91',39,60),(369,'25','91',30,55),(370,'26','91',4,4),(371,'27','91',6,17),(372,'28','91',63,82),(373,'29','91',30,76),(374,'30','91',13,31),(375,'31','91',10,59),(376,'32','91',39,80),(377,'33','91',69,89),(378,'34','91',62,93),(379,'35','91',13,27),(380,'36','91',8,22),(381,'37','91',0,31),(382,'38','91',9,79),(383,'39','91',6,49),(384,'40','91',39,40),(385,'41','91',1,22),(386,'42','91',12,82),(387,'43','91',1,7),(388,'44','91',15,26),(389,'45','91',22,31),(390,'46','91',64,65),(391,'47','91',10,99),(392,'48','91',26,56),(393,'49','91',14,19),(394,'50','91',51,55),(395,'51','91',25,29),(396,'52','91',31,37),(397,'53','91',35,71),(398,'54','91',5,61),(399,'55','91',4,26),(400,'56','91',29,50),(401,'57','91',15,34),(402,'58','91',30,38),(403,'59','91',54,71),(404,'60','91',6,43),(405,'61','91',40,80),(406,'62','91',32,33),(407,'63','91',44,53),(408,'64','91',10,68),(409,'65','91',11,13),(410,'66','91',7,40),(411,'67','91',5,20),(412,'68','91',30,40),(413,'69','91',6,48),(414,'70','91',7,53),(415,'71','91',2,21),(416,'72','91',25,56),(417,'73','91',13,85),(418,'74','91',63,67),(419,'75','91',9,11),(420,'76','91',18,46),(421,'77','91',7,88),(422,'78','91',36,55),(423,'79','91',8,33),(424,'80','91',63,73),(425,'81','91',36,71),(426,'82','91',2,5),(427,'83','91',11,11),(428,'84','91',21,39),(429,'85','91',90,91),(430,'86','91',1,2),(431,'5','91',36,47),(432,'2','92',6,7),(433,'3','92',15,23),(434,'4','92',1,1),(435,'5','92',37,42),(436,'6','92',22,24),(437,'7','92',12,13),(438,'8','92',4,25),(439,'9','92',32,87),(440,'10','92',9,31),(441,'11','92',2,38),(442,'12','92',66,88),(443,'13','92',4,15),(444,'14','92',9,88),(445,'15','92',18,72),(446,'16','92',13,26),(447,'17','92',20,55),(448,'18','92',17,76),(449,'19','92',28,58),(450,'20','92',78,99),(451,'21','92',7,12),(452,'22','92',4,13),(453,'23','92',12,96),(454,'24','92',82,84),(455,'25','92',29,64),(456,'26','92',5,7),(457,'27','92',3,35),(458,'28','92',23,46),(459,'29','92',21,39),(460,'30','92',19,21),(461,'31','92',24,73),(462,'32','92',51,89),(463,'33','92',22,32),(464,'34','92',56,95),(465,'35','92',47,95),(466,'36','92',17,24),(467,'37','92',0,0),(468,'38','92',14,53),(469,'39','92',65,67),(470,'40','92',64,95),(471,'41','92',5,5),(472,'42','92',7,10),(473,'43','92',34,45),(474,'44','92',0,3),(475,'45','92',20,67),(476,'46','92',58,92),(477,'47','92',21,70),(478,'48','92',56,62),(479,'49','92',0,5),(480,'50','92',16,97),(481,'51','92',6,46),(482,'52','92',58,84),(483,'53','92',25,42),(484,'54','92',13,40),(485,'55','92',18,34),(486,'56','92',44,92),(487,'57','92',0,19),(488,'58','92',13,67),(489,'59','92',18,38),(490,'60','92',7,7),(491,'61','92',6,53),(492,'62','92',4,25),(493,'63','92',31,59),(494,'64','92',25,40),(495,'65','92',2,81),(496,'66','92',23,81),(497,'67','92',9,33),(498,'68','92',2,37),(499,'69','92',53,64),(500,'70','92',21,22),(501,'71','92',7,45),(502,'72','92',9,25),(503,'73','92',0,40),(504,'74','92',21,34),(505,'75','92',33,87),(506,'76','92',44,48),(507,'77','92',64,69),(508,'78','92',31,56),(509,'79','92',11,12),(510,'80','92',3,7),(511,'81','92',26,74),(512,'82','92',29,46),(513,'83','92',1,5),(514,'84','92',35,37),(515,'85','92',12,100),(516,'86','92',9,18),(517,'5','92',49,64);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zipcode` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `geo` point DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (2,'390 Lang Road','Burlingame',94010,'Bay Area Firearms','\0\0\0\0\0\0\0\"rU41�B@M6y%��^�'),(1,'7153 East Thomas Road','Scottsdale',85251,'Phoenix Equipment Rentals','\0\0\0\0\0\0\0Իx?n�@@�0X�[�'),(4,'Tolstraat 200','Amsterdam',1074,'Munitions Shopmore','\0\0\0\0\0\0\0d3�11-J@\\��AA�@'),(5,'2799 Broadway','New York',10025,'Cascabel Armory','\0\0\0\0\0\0\0��R�fD@	�L��}R�'),(3,'1850 El Camino Real','Menlo Park',94027,'Military Weaponry','\0\0\0\0\0\0\0�X�ѺB@��\"�n�^�'),(6,'32/66-70 Marine Parade','Coolangatta',4225,'Marine Parade','\0\0\0\0\0\0\0�س�*<��[��.1c@');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) DEFAULT NULL,
  `ttl` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weapon`
--

DROP TABLE IF EXISTS `weapon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weapon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `audibleRange` int(11) DEFAULT NULL,
  `effectiveRange` int(11) DEFAULT NULL,
  `rounds` int(11) DEFAULT NULL,
  `extras` varchar(255) DEFAULT NULL,
  `fireModes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weapon`
--

LOCK TABLES `weapon` WRITE;
/*!40000 ALTER TABLE `weapon` DISABLE KEYS */;
INSERT INTO `weapon` VALUES (1,'G17',53,75,15,'Flashlight','Single'),(2,'M1911',53,50,7,NULL,'Single'),(3,'M9',53,75,15,NULL,'Single'),(4,'M9 SD',0,75,15,'Silenced','Single'),(5,'Makarov SD',0,50,8,NULL,'Single'),(6,'PDW',53,75,30,NULL,'[\"Single\",\"Full auto\"]'),(7,'Makarov PM',53,50,8,NULL,'Single'),(9,'Saiga 12K',90,250,8,NULL,'Single'),(11,'Revolver',53,100,6,NULL,'Single'),(12,'Winchester 1866',125,150,15,NULL,'Single'),(13,'Bizon PP-19 SD',0,100,64,'Silenced','[\"Single\",\"Full auto\"]'),(14,'MP5SD6',0,100,30,'Silenced','[\"Single\",\"Burst\",\"Full auto\"]'),(15,'MP5A5',53,100,30,NULL,'[\"Single\",\"Burst\",\"Full auto\"]'),(16,'AK-107',80,400,30,'Kobra sight','[\"Single\",\"Burst\",\"Full auto\"]'),(18,'AK-107 GL PSO',80,400,30,'[\"Scope\",\"GP-25 launcher\"]','[\"Single\",\"Burst\",\"Full auto\"]'),(19,'AK-107 PSO',80,600,30,'Scope','[\"Single\",\"Burst\",\"Full auto\"]'),(20,'AK-74',80,300,30,NULL,'[\"Single\",\"Full auto\"]'),(21,'AKM',149,400,30,NULL,'[\"Single\",\"Full auto\"]'),(22,'AKS',149,200,30,NULL,'[\"Single\",\"Full auto\"]'),(23,'AKS (gold)',149,200,30,NULL,'[\"Single\",\"Full auto\"]'),(25,'AKS-74 Kobra',80,300,30,'Kobra sight','[\"Single\",\"Full auto\"]'),(26,'AKS-74 PSO',80,400,30,'Scope','[\"Single\",\"Full auto\"]'),(27,'AKS-74U',80,200,30,NULL,'[\"Single\",\"Full auto\"]'),(28,'AKS-74UN Kobra',0,300,30,'[\"Kobra sight\",\"Silenced\"]','[\"Single\",\"Full auto\"]'),(29,'AK-74 GP-25',80,300,30,'GP-25 launcher','[\"Single\",\"Full auto\"]'),(30,'FN FAL AN/PVS-4',180,400,20,'NV scope','[\"Single\",\"Burst\"]'),(31,'G36',80,400,30,'[\"Scope\",\"Aimpoint sight\"]','[\"Single\",\"Burst\",\"Full auto\"]'),(32,'FN FAL',180,400,20,NULL,'[\"Single\",\"Burst\"]'),(33,'G36 C',80,300,30,NULL,'[\"Single\",\"Burst\",\"Full auto\"]'),(34,'G36-C SD (camo)',0,300,30,'[\"Aimpoint sight\",\"Silenced\"]','[\"Single\",\"Burst\",\"Full auto\"]'),(35,'G36A (camo)',80,400,30,'[\"Scope\",\"Aimpoint sight\"]','[\"Single\",\"Burst\",\"Full auto\"]'),(36,'G36C (camo)',80,300,30,NULL,'[\"Single\",\"Burst\",\"Full auto\"]'),(37,'G36 K',80,400,30,'[\"Scope\",\"Aimpoint sight\"]','[\"Single\",\"Burst\",\"Full auto\"]'),(38,'G36C-SD',0,300,30,'Aimpoint sight','[\"Single\",\"Burst\",\"Full auto\"]'),(39,'G36K (camo)',80,400,30,'[\"Scope\",\"Aimpoint sight\"]','[\"Single\",\"Burst\",\"Full auto\"]'),(40,'L85A2 ACOG GL',80,600,30,'[\"ACOG scope\",\"M203 launcher\"]','[\"Single\",\"Full auto\"]'),(41,'L85A2 SUSAT',80,300,30,'SUSAT optical scope','[\"Single\",\"Full auto\"]'),(42,'M16A2',80,400,30,NULL,'[\"Single\",\"Burst\"]'),(43,'L85A2 AWS',80,300,30,'[\"Thermal scope\",\"NV scope\",\"Laser sight\",\"Variable zoom\"]','[\"Single\",\"Full auto\"]'),(44,'L85A2 Holo',80,300,30,'Holographic sight','[\"Single\",\"Full auto\"]'),(45,'Lee Enfield',162,400,10,NULL,'Single'),(46,'M16A4 ACOG',80,600,30,'ACOG scope','[\"Single\",\"Burst\"]'),(47,'M4A1',80,300,30,NULL,'[\"Single\",\"Full auto\"]'),(48,'M16A2 M203',80,400,30,'M203 launcher','[\"Single\",\"Burst\"]'),(49,'M4A1 Holo',80,300,30,'[\"Holographic sight\",\"M203 launcher\"]','[\"Single\",\"Full auto\"]'),(50,'M4A1 CCO',80,300,30,'Aimpoint sight','[\"Single\",\"Full auto\"]'),(51,'M4A1 CCO SD',0,200,30,'[\"Aimpoint sight\",\"Silenced\"]','[\"Single\",\"Full auto\"]'),(52,'M4A1 M203 RCO',80,600,30,'[\"ACOG sight\",\"M203 launcher\"]','[\"Single\",\"Full auto\"]'),(53,'M4A3 CCO',80,300,30,'[\"Aimpoint sight\",\"Flashlight\"]','[\"Single\",\"Full auto\"]'),(54,'RPK',80,400,30,NULL,'[\"Single\",\"Full auto\"]'),(55,'Sa-58 CCO',149,300,30,'Aimpoint sight','[\"Single\",\"Full auto\"]'),(56,'Sa-58P',149,400,30,NULL,'[\"Single\",\"Full auto\"]'),(57,'Sa-58V',149,200,30,NULL,'[\"Single\",\"Full auto\"]'),(58,'Sa-58V ACOG',149,400,30,'ACOG sight','[\"Single\",\"Full auto\"]'),(59,'ER7 RFW',180,2000,25,'[\"Scope\",\"Aimpoint sight\"]','Single'),(60,'AS50',455,1600,5,'Scope','Single'),(61,'KSVK',455,800,5,'Scope','Single'),(62,'CZ550',180,800,5,'Scope','Single'),(63,'DMR',180,800,20,'Scope','Single'),(64,'M107',455,1200,10,'Scope','Single'),(65,'M24',180,800,5,'Scope','Single'),(66,'M40A3',180,800,5,'[\"Scope\",\"Camo\"]','Single'),(67,'M14 AIM',180,500,20,'Aimpoint sight','Single'),(68,'M240',180,400,100,NULL,'Full auto'),(69,'MG36',80,400,100,'Aimpoint sight','[\"Single\",\"Burst\",\"Full auto\"]'),(70,'SVD Camo',180,1200,10,'[\"Scope\",\"Camo\"]','Single'),(71,'PKM',180,400,100,NULL,'Full auto'),(72,'Mk 48 Mod 0',180,400,100,'Aimpoint sight','Full auto'),(73,'M249 SAW',80,300,200,NULL,'Full auto'),(74,'Crowbar',2,1,NULL,NULL,'Single'),(75,'Hatchet',2,1,NULL,NULL,'Single'),(76,'PKP',180,600,100,'Scope','Full auto'),(77,'Machete',2,1,NULL,NULL,'Single'),(78,'M67 Frag Grenade',NULL,NULL,NULL,NULL,NULL),(79,'Compound Crossbow',3,30,1,NULL,'Single'),(80,'Smoke Grenade',NULL,NULL,NULL,NULL,NULL),(81,'M136 Launcher',160,1000,1,NULL,'Single'),(82,'30Rnd. AK SD',0,NULL,30,NULL,NULL),(83,'30rnd G36 SD',0,NULL,30,NULL,NULL),(84,'G36 Mag.',80,NULL,30,NULL,NULL),(85,'Flashlight',NULL,NULL,NULL,NULL,NULL),(86,'NV Goggles',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `weapon` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-08 10:51:21