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
-- Table structure for table `pregunta`
--

DROP TABLE IF EXISTS `pregunta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pregunta` (
  `Id_Pregunta` int(11) NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(20) DEFAULT NULL,
  `Question` varchar(20) DEFAULT NULL,
  `Descripcion` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id_Pregunta`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pregunta`
--

LOCK TABLES `pregunta` WRITE;
/*!40000 ALTER TABLE `pregunta` DISABLE KEYS */;
INSERT INTO `pregunta` VALUES (1,'¿Prueba?','¿prueba?','desc1'),(2,'Describa Brevemente','¿Cuanto es 2+3?','desc1'),(3,'Mate','Cuanto es 5+8?','suma'),(4,'4','Cuanto es 10+8?','Mat'),(5,'5','Cuanto es 16+8?','Mat'),(6,'6','Cuanto es 1+9?','Mat'),(7,'7','Cuanto es 45+8?','Mat'),(8,'7','Cuanto es 560-8?','Mat'),(9,'8','Cuanto es 16-9?','Mat'),(10,'9','Cuanto es 78+8?','Mat'),(11,'8','¿Cuanto es 2+2?','Mat'),(12,'9','¿Cuanto es 5+5?','10'),(13,'¿2+3?','¿2+3?','¿2+3?'),(14,'3+3?','3+3?','3+3?'),(15,'4+4?','4+4?','4+4?'),(16,'5+5?','5+5?','5+5?'),(17,'6+6?','6+6?','6+6?'),(18,'7+7?','7+7?','7+7?'),(19,'¿Prueba?','¿10+1?','¿10+1?'),(20,'7','Cuanto es 5+8?','asdasd'),(21,'7','Cuanto es 16+8?','asdasd'),(22,'7','Cuanto es 10+8?','desc1'),(23,'7','2+5','3'),(24,'Trivias Editar','Cuanto es 5+8?','asdasd'),(26,'Describa Brevemente','Cuanto es 16+8?','desc1'),(27,'Describa Brevemente','¿prueba?','asdasd'),(28,'¿Prueba?','sadda','sadas'),(29,'¿Prueba?','¿2x1?','asdasd'),(30,'2','¿3+2?','Mat'),(32,'¿Prueba?','¿8+5?','ew'),(33,'7','¿7x7?','a'),(34,'s','¿8x8?','aw'),(35,'Describa Brevemente','¿9x3?','asdasd'),(36,'sad','¿2x2?','asd'),(37,'Describa Brevemente','¿5x9?','Mat'),(38,'as','2+4','sad');
/*!40000 ALTER TABLE `pregunta` ENABLE KEYS */;
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
