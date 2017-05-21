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
-- Table structure for table `pregunta_alternativa`
--

DROP TABLE IF EXISTS `pregunta_alternativa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pregunta_alternativa` (
  `Id_Pregunta` int(11) NOT NULL,
  `Id_Alternativa` int(11) NOT NULL,
  PRIMARY KEY (`Id_Pregunta`,`Id_Alternativa`),
  KEY `id_alternativa_idx` (`Id_Alternativa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pregunta_alternativa`
--

LOCK TABLES `pregunta_alternativa` WRITE;
/*!40000 ALTER TABLE `pregunta_alternativa` DISABLE KEYS */;
INSERT INTO `pregunta_alternativa` VALUES (1,1),(1,2),(1,3),(2,4),(2,5),(2,6),(3,7),(3,8),(3,9),(4,11),(4,12),(5,13),(5,14),(6,15),(7,17),(7,18),(8,19),(8,20),(9,21),(9,22),(10,23),(10,24),(11,25),(11,26),(12,27),(12,28),(4,29),(5,30),(6,31),(7,32),(8,33),(9,34),(10,35),(11,36),(12,37),(13,38),(13,39),(13,40),(14,41),(14,42),(14,43),(15,44),(15,45),(15,46),(16,47),(16,48),(16,49),(17,50),(17,51),(17,52),(18,53),(18,54),(18,55),(6,56),(19,57),(19,58),(19,59),(20,60),(23,61),(24,62),(24,63),(24,64),(24,65),(29,66),(29,67),(29,68),(30,69),(30,70),(30,71),(33,72),(32,73),(32,74),(33,75),(33,76),(33,77),(32,78),(34,79),(34,80),(34,81),(35,82),(35,83),(35,84),(36,85),(36,86),(36,87),(37,88),(37,89),(37,90),(38,91),(38,92),(38,93);
/*!40000 ALTER TABLE `pregunta_alternativa` ENABLE KEYS */;
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
