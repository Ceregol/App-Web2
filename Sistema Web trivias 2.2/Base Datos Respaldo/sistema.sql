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

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `idUsuario` int(11) NOT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `resultado`
--

DROP TABLE IF EXISTS `resultado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resultado` (
  `Id_Usuario` int(11) NOT NULL,
  `Id_Trivia` int(11) NOT NULL,
  `Puntaje` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_Usuario`,`Id_Trivia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resultado`
--

LOCK TABLES `resultado` WRITE;
/*!40000 ALTER TABLE `resultado` DISABLE KEYS */;
/*!40000 ALTER TABLE `resultado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `idRoles` int(11) NOT NULL,
  `nombreRoles` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idRoles`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrador'),(2,'Profesor'),(3,'Estudiante');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `trivia_pregunta`
--

DROP TABLE IF EXISTS `trivia_pregunta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trivia_pregunta` (
  `Id_trivia` int(11) NOT NULL,
  `Id_Pregunta` int(11) NOT NULL,
  PRIMARY KEY (`Id_trivia`,`Id_Pregunta`),
  KEY `id_pregunta_idx` (`Id_Pregunta`),
  CONSTRAINT `id_trivia` FOREIGN KEY (`Id_trivia`) REFERENCES `trivia` (`Id_trivia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trivia_pregunta`
--

LOCK TABLES `trivia_pregunta` WRITE;
/*!40000 ALTER TABLE `trivia_pregunta` DISABLE KEYS */;
INSERT INTO `trivia_pregunta` VALUES (3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7),(3,8),(3,9),(3,10),(3,11),(3,12),(4,13),(4,14),(4,15),(4,16),(4,17),(4,18),(5,19),(2,20),(2,21),(2,22),(6,23),(8,24),(8,25),(8,26),(8,27),(8,28),(11,29),(11,30),(11,32),(11,33),(11,34),(11,35),(11,36),(11,37),(12,38);
/*!40000 ALTER TABLE `trivia_pregunta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT,
  `Email` varchar(20) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `RolUsuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'fmeza@gmail.com','12344321',2),(2,'ceregol@gmail.com','123321',1),(3,'sebastian@gmail.com','567765',3),(4,'pedrito@gmail.com','456654',3),(5,'estudiante@gmail.com','67899876',3),(7,'profesor@gmail.com','1234554321',2);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-20 23:25:15
