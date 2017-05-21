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
-- Table structure for table `alternativacorrecta`
--

DROP TABLE IF EXISTS `alternativacorrecta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alternativacorrecta` (
  `Id_Trivia` int(11) NOT NULL,
  `Id_Pregunta` int(11) NOT NULL,
  `alternativa` varchar(45) NOT NULL,
  PRIMARY KEY (`Id_Trivia`,`Id_Pregunta`,`alternativa`),
  UNIQUE KEY `Id_Pregunta_UNIQUE` (`Id_Pregunta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alternativacorrecta`
--

LOCK TABLES `alternativacorrecta` WRITE;
/*!40000 ALTER TABLE `alternativacorrecta` DISABLE KEYS */;
INSERT INTO `alternativacorrecta` VALUES (3,1,'A'),(3,2,'5'),(3,3,'13'),(3,4,'18'),(3,5,'24'),(3,6,'10'),(3,7,'53'),(3,8,'552'),(3,9,'7'),(3,10,'86'),(3,11,'4'),(3,12,'10'),(4,13,'5'),(4,14,'6'),(4,15,'8'),(4,16,'10'),(4,17,'12'),(4,18,'14'),(5,19,'11'),(6,23,'7'),(8,24,'13'),(11,29,'2'),(11,30,'5'),(11,32,'13'),(11,33,'49'),(11,34,'64'),(11,35,'27'),(11,36,'4'),(11,37,'45'),(12,38,'6');
/*!40000 ALTER TABLE `alternativacorrecta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-21  0:01:58
