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
-- Table structure for table `resp_movil`
--

DROP TABLE IF EXISTS `resp_movil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resp_movil` (
  `Id_RespMovil` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Unico` varchar(11) NOT NULL,
  `Id_Usuario` int(11) NOT NULL,
  `Id_Trivia` int(11) NOT NULL,
  `Id_Pregunta` int(11) NOT NULL,
  `Id_Alternativa` int(11) NOT NULL,
  `Puntaje` int(11) NOT NULL,
  PRIMARY KEY (`Id_RespMovil`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resp_movil`
--

LOCK TABLES `resp_movil` WRITE;
/*!40000 ALTER TABLE `resp_movil` DISABLE KEYS */;
INSERT INTO `resp_movil` VALUES (55,'1153514',3,4,13,39,0),(56,'1153514',3,4,16,48,1),(57,'1153514',3,4,17,51,1),(58,'1153514',3,4,14,42,0),(59,'1153514',3,4,15,44,1),(60,'8231214',1,4,14,43,1),(61,'8231214',1,4,15,44,1),(62,'8231214',1,4,16,48,1),(63,'8231214',1,4,17,51,1),(64,'8231214',1,4,13,40,1),(65,'9114314',1,4,14,43,1),(66,'9114314',1,4,17,51,1),(67,'9114314',1,4,16,48,1),(68,'9114314',1,4,13,40,1),(69,'9114314',1,4,15,44,1),(70,'9152414',1,4,14,43,1),(71,'9152414',1,4,17,50,0),(72,'9152414',1,4,13,40,1),(73,'9152414',1,4,15,45,0),(74,'9152414',1,4,16,48,1),(75,'4181314',1,4,15,44,1),(76,'4181314',1,4,13,40,1),(77,'4181314',1,4,17,51,1),(78,'4181314',1,4,16,48,1),(79,'4181314',1,4,14,43,1),(80,'10142614',1,4,17,51,1),(81,'10185014',1,4,15,44,1),(82,'10185014',1,4,16,48,1),(83,'10185014',1,4,14,43,1),(84,'10185014',1,4,17,51,1),(85,'10185014',1,4,13,40,1),(86,'10185214',1,4,16,48,1),(87,'10185214',1,4,13,40,1),(88,'10185214',1,4,15,44,1),(89,'10185214',1,4,17,51,1),(90,'10185214',1,4,17,52,0),(91,'10185714',1,4,17,50,0),(92,'10185714',1,4,15,45,0),(93,'10185714',1,4,16,49,0),(94,'10185714',1,4,14,42,0),(95,'1231243254',1,4,10,2,10),(96,'29178581',1,4,15,45,0),(97,'29178581',1,4,14,43,1),(98,'29178581',1,4,16,48,1),(99,'29178581',1,4,17,51,1),(100,'29178581',1,4,13,40,1),(101,'30151051',1,4,13,39,0),(102,'30151051',1,4,15,44,1),(103,'30151051',1,4,16,49,0),(104,'30151051',1,4,17,52,0),(105,'30151051',1,4,14,42,0),(106,'30184121',1,4,15,44,1),(107,'30184121',1,4,13,40,1),(108,'30184121',1,4,14,42,0),(109,'30184121',1,4,16,48,1),(110,'30184121',1,4,17,51,1),(111,'1118713',1,4,14,43,1),(112,'1118713',1,4,15,44,1),(113,'1118713',1,4,17,51,1),(114,'1118713',1,4,13,40,1),(115,'1118713',1,4,16,48,1),(116,'11194893',3,4,13,40,1),(117,'11194893',3,4,17,51,1),(118,'11194893',3,4,15,44,1),(119,'11194893',3,4,16,48,1),(120,'11194893',3,4,14,43,1),(122,'12125665',5,11,33,75,0),(123,'12125665',5,11,29,66,1),(124,'12125665',5,11,35,84,1),(125,'12125665',5,11,32,78,1),(126,'12125665',5,11,30,69,1),(127,'12126095',5,11,34,80,1),(128,'12126095',5,11,30,69,1),(129,'12126095',5,11,33,75,0),(130,'12126095',5,11,29,66,1),(131,'12126095',5,11,36,87,0);
/*!40000 ALTER TABLE `resp_movil` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-20 23:22:46
