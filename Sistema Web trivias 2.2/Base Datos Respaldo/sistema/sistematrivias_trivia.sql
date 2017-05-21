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
-- Table structure for table `trivia`
--

DROP TABLE IF EXISTS `trivia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trivia` (
  `Id_trivia` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(200) DEFAULT NULL,
  `Descripcion` varchar(200) DEFAULT NULL,
  `FechaDeCreacion` varchar(200) DEFAULT NULL,
  `Nombre_Categoria` varchar(200) DEFAULT NULL,
  `Email` varchar(200) NOT NULL,
  PRIMARY KEY (`Id_trivia`),
  KEY `Id_Usuario_idx` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trivia`
--

LOCK TABLES `trivia` WRITE;
/*!40000 ALTER TABLE `trivia` DISABLE KEYS */;
INSERT INTO `trivia` VALUES (2,'Prueba de dia','desc1','20/30/2018','Lenguaje','0'),(3,'Trivia app movil','Prueba Movil','19/10/2016','Biologia','0'),(4,'Nivelate Matematicas','2 basico','13/11/2016','Matematicas','ceregol@gmail.com'),(5,'Prueba de matematica','1 basico','21-11-2016','Matematicas','0'),(6,'Prueba de Rodrigo','a','25/11/2016','Matematicas','0'),(8,'Trivia Calculo 1','Universidad','20/30/2018','Matematicas','ceregol@gmail.com'),(9,'a','1 basico','12-04-2017','Matematicas','fmeza@gmail.com'),(11,'Trivia de matematicas','Mat','12/05/2017','Matematicas','profesor@gmail.com'),(12,'Trivia metodologia','asd','15/05/2017','Matematicas','ceregol@gmail.com');
/*!40000 ALTER TABLE `trivia` ENABLE KEYS */;
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
