CREATE DATABASE  IF NOT EXISTS `sistematrivias` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sistematrivias`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: sistematrivias
-- ------------------------------------------------------
-- Server version	5.6.19

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
-- Table structure for table `alternativa`
--

DROP TABLE IF EXISTS `alternativa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alternativa` (
  `Id_Alternativa` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(20) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_Alternativa`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alternativa`
--

LOCK TABLES `alternativa` WRITE;
/*!40000 ALTER TABLE `alternativa` DISABLE KEYS */;
INSERT INTO `alternativa` VALUES (1,'a',1),(2,'b',0),(3,'c',0),(4,'5',1),(5,'7',0),(6,'20',0),(7,'13',1),(8,'3',0),(9,'34',0),(11,'15',0),(12,'183',0),(13,'20',0),(14,'243',0),(15,'11',0),(17,'233',0),(18,'533',0),(19,'553',0),(20,'456',0),(21,'73',0),(22,'8',0),(23,'83',0),(24,'88',0),(25,'5',0),(26,'4',1),(27,'4',0),(28,'10',1),(29,'18',1),(30,'24',1),(31,'3',0),(32,'53',1),(33,'552',1),(34,'7',1),(35,'86',1),(36,'8',0),(37,'18',0),(38,'1',0),(39,'2',0),(40,'5',1),(41,'1',0),(42,'2',0),(43,'6',1),(44,'8',1),(45,'5',0),(46,'9',0),(47,'6',0),(48,'10',1),(49,'12',0),(50,'10',0),(51,'12',1),(52,'9',0),(53,'49',0),(54,'40',0),(55,'14',1),(56,'10',1),(57,'12',0),(58,'11',1),(59,'13',0),(60,'55',0),(61,'7',1),(62,'13',1),(63,'14',0),(65,'45',0),(66,'2',1),(67,'1',0),(68,'3',0),(69,'5',1),(70,'6',0),(71,'1',0),(73,'40',0),(74,'3',0),(75,'14',0),(76,'49',1),(77,'0',0),(78,'13',1),(79,'56',0),(80,'64',1),(81,'16',0),(82,'12',0),(83,'12',0),(84,'27',1),(85,'4',1),(86,'0',0),(87,'8',0),(88,'14',0),(89,'45',1),(90,'40',0),(91,'3',0),(92,'6',1),(93,'7',0);
/*!40000 ALTER TABLE `alternativa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-20 23:22:47
