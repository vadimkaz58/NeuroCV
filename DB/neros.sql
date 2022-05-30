-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: neros
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `neuros`
--

DROP TABLE IF EXISTS `neuros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `neuros` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `path` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `neuros`
--

LOCK TABLES `neuros` WRITE;
/*!40000 ALTER TABLE `neuros` DISABLE KEYS */;
INSERT INTO `neuros` VALUES (1,'Birth','birth.xml');
/*!40000 ALTER TABLE `neuros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `results`
--

DROP TABLE IF EXISTS `results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `results` (
  `id` int NOT NULL AUTO_INCREMENT,
  `x` int NOT NULL,
  `y` int NOT NULL,
  `h` int NOT NULL,
  `w` int NOT NULL,
  `src` int NOT NULL,
  `shot` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `img_idx` (`src`)
) ENGINE=InnoDB AUTO_INCREMENT=303 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `results`
--

LOCK TABLES `results` WRITE;
/*!40000 ALTER TABLE `results` DISABLE KEYS */;
INSERT INTO `results` VALUES (88,411,64,58,58,1,1),(89,406,56,65,65,1,5),(90,410,63,61,61,1,6),(91,410,63,60,60,1,7),(92,411,64,58,58,1,1),(93,406,56,65,65,1,5),(94,410,63,61,61,1,6),(95,410,63,60,60,1,7),(96,411,63,59,59,1,8),(97,410,63,60,60,1,9),(98,65,15,59,59,2,1),(99,47,108,102,102,2,1),(100,52,69,185,185,2,1),(101,23,300,40,40,2,2),(102,67,14,56,56,2,2),(103,56,114,95,95,2,2),(104,72,103,132,132,2,2),(105,22,301,40,40,2,3),(106,70,106,132,132,2,3),(107,22,301,40,40,2,4),(108,70,15,54,54,2,4),(109,65,108,139,139,2,4),(110,52,105,90,90,2,4),(111,22,301,40,40,2,5),(112,63,17,60,60,2,5),(113,80,25,35,35,2,5),(114,69,90,150,150,2,5),(115,65,15,59,59,2,1),(116,47,108,102,102,2,1),(117,52,69,185,185,2,1),(118,23,300,40,40,2,2),(119,67,14,56,56,2,2),(120,56,114,95,95,2,2),(121,72,103,132,132,2,2),(122,22,301,40,40,2,3),(123,70,106,132,132,2,3),(124,22,301,40,40,2,4),(125,70,15,54,54,2,4),(126,52,105,90,90,2,4),(127,65,108,139,139,2,4),(128,22,301,40,40,2,5),(129,63,17,60,60,2,5),(130,69,90,150,150,2,5),(131,80,25,35,35,2,5),(132,64,20,59,59,2,6),(133,60,81,162,162,2,6),(134,48,94,85,85,2,7),(135,55,117,91,91,2,7),(136,56,91,157,157,2,7),(137,23,300,40,40,2,8),(138,69,14,57,57,2,8),(139,57,94,158,158,2,8),(140,23,300,40,40,2,9),(141,68,17,54,54,2,9),(142,62,96,148,148,2,9),(143,22,300,40,40,2,10),(144,68,17,54,54,2,10),(145,58,96,150,150,2,10),(146,22,300,40,40,2,11),(147,68,18,54,54,2,11),(148,59,97,151,151,2,11),(149,68,17,54,54,2,12),(150,59,98,151,151,2,12),(151,22,300,40,40,2,13),(152,65,15,57,57,2,13),(153,60,100,149,149,2,13),(154,22,300,40,40,2,14),(155,67,14,57,57,2,14),(156,53,83,164,164,2,14),(157,66,17,57,57,2,15),(158,55,99,140,140,2,15),(159,22,300,41,41,2,16),(160,64,17,59,59,2,16),(161,57,95,152,152,2,16),(162,22,300,41,41,2,17),(163,64,17,59,59,2,17),(164,53,89,158,158,2,17),(165,71,17,53,53,2,18),(166,53,95,156,156,2,18),(167,70,16,54,54,2,19),(168,51,82,171,171,2,19),(169,56,103,126,126,2,20),(170,58,105,125,125,2,21),(171,64,18,58,58,2,22),(172,79,22,40,40,2,22),(173,53,76,173,173,2,22),(174,64,18,58,58,2,23),(175,56,97,154,154,2,23),(176,79,22,40,40,2,23),(177,65,20,58,58,2,24),(178,54,99,151,151,2,24),(179,67,21,55,55,2,25),(180,59,96,137,137,2,25),(181,65,21,56,56,2,26),(182,56,95,136,136,2,26),(183,19,293,43,43,2,27),(184,65,18,58,58,2,27),(185,57,88,159,159,2,27),(186,411,64,58,58,1,1),(187,406,56,65,65,1,5),(188,410,63,61,61,1,6),(189,410,63,60,60,1,7),(190,411,63,59,59,1,8),(191,410,63,60,60,1,9),(192,410,61,61,61,1,10),(193,408,62,63,63,1,11),(194,407,60,64,64,1,12),(195,406,58,65,65,1,13),(196,411,64,57,57,1,14),(197,182,156,72,72,1,14),(198,411,64,57,57,1,15),(199,182,156,72,72,1,15),(200,411,64,57,57,1,16),(201,183,155,68,68,1,16),(202,411,64,58,58,1,17),(203,183,155,68,68,1,17),(204,400,52,71,71,1,18),(205,180,155,73,73,1,18),(206,402,52,68,68,1,19),(207,181,157,69,69,1,19),(208,397,49,74,74,1,20),(209,186,157,62,62,1,20),(210,411,62,59,59,1,21),(211,400,49,70,70,1,22),(212,182,156,65,65,1,22),(213,401,50,69,69,1,23),(214,179,155,72,72,1,23),(215,402,52,69,69,1,24),(216,402,55,69,69,1,25),(217,172,150,79,79,1,25),(218,401,52,69,69,1,26),(219,179,155,75,75,1,26),(220,205,158,27,27,1,27),(221,402,53,69,69,1,27),(222,402,53,69,69,1,28),(223,179,156,76,76,1,28),(224,401,53,69,69,1,29),(225,179,156,78,78,1,29),(226,401,49,68,68,1,30),(227,180,154,66,66,1,30),(228,403,52,68,68,1,31),(229,184,157,60,60,1,31),(230,398,49,74,74,1,32),(231,404,54,67,67,1,33),(232,186,158,58,58,1,33),(233,392,42,79,79,1,34),(234,390,41,81,81,1,35),(235,393,41,74,74,1,36),(236,396,46,72,72,1,37),(237,389,41,79,79,1,38),(238,399,51,71,71,1,39),(239,392,43,80,80,1,40),(240,400,51,71,71,1,41),(241,203,159,27,27,1,41),(242,399,49,71,71,1,42),(243,397,46,73,73,1,43),(244,189,181,49,49,1,43),(245,398,49,72,72,1,44),(246,397,48,73,73,1,45),(247,410,63,57,57,1,46),(248,395,41,76,76,1,46),(249,397,51,73,73,1,47),(250,398,50,72,72,1,48),(251,399,52,71,71,1,49),(252,401,52,69,69,1,50),(253,180,155,61,61,1,50),(254,399,51,71,71,1,51),(255,401,52,68,68,1,52),(256,201,158,30,30,1,53),(257,391,42,80,80,1,53),(258,203,158,27,27,1,54),(259,398,51,70,70,1,54),(260,398,50,71,71,1,55),(261,400,51,69,69,1,56),(262,402,52,66,66,1,57),(263,188,180,51,51,1,57),(264,399,50,72,72,1,58),(265,187,179,51,51,1,58),(266,397,51,73,73,1,59),(267,203,157,28,28,1,60),(268,404,53,64,64,1,60),(269,403,52,65,65,1,61),(270,404,54,65,65,1,62),(271,400,51,70,70,1,63),(272,400,51,69,69,1,64),(273,407,58,62,62,1,65),(274,398,51,72,72,1,66),(275,189,182,48,48,1,66),(276,399,51,71,71,1,67),(277,189,182,48,48,1,67),(278,399,51,72,72,1,68),(279,189,180,50,50,1,68),(280,398,51,73,73,1,69),(281,188,180,49,49,1,69),(282,188,181,49,49,1,70),(283,393,43,76,76,1,70),(284,400,52,70,70,1,71),(285,395,44,77,77,1,72),(286,395,42,75,75,1,73),(287,389,42,83,83,1,74),(288,403,55,67,67,1,75),(289,403,53,67,67,1,76),(290,398,50,74,74,1,77),(291,402,54,69,69,1,78),(292,180,154,68,68,1,78),(293,401,53,69,69,1,79),(294,181,156,64,64,1,79),(295,461,377,34,34,3,NULL),(296,394,424,29,29,3,NULL),(297,669,82,32,32,3,NULL),(298,610,347,32,32,3,NULL),(299,285,75,63,63,3,NULL),(300,756,33,25,25,3,NULL),(301,669,54,41,41,3,NULL),(302,500,426,34,34,3,NULL);
/*!40000 ALTER TABLE `results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `source`
--

DROP TABLE IF EXISTS `source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `source` (
  `id` int NOT NULL AUTO_INCREMENT,
  `path` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `forNeuros` int DEFAULT NULL,
  `isVideo` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Ners_idx` (`forNeuros`),
  CONSTRAINT `Ners` FOREIGN KEY (`forNeuros`) REFERENCES `neuros` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `source`
--

LOCK TABLES `source` WRITE;
/*!40000 ALTER TABLE `source` DISABLE KEYS */;
INSERT INTO `source` VALUES (1,'v2.mp4','Птички 1',1,1),(2,'v3.mp4','Birth 2',1,1),(3,'b1.jpg','BirthI',1,0),(4,'test','test1',1,1),(5,'test2','test2',1,1),(6,'test3','test3',1,1),(7,'test4','test4',1,1),(8,'test5','test5',1,1),(9,'test6','test6',1,1),(10,'test7','test7',1,1),(11,'test8','test8',1,1),(12,'test9','test9',1,1),(13,'test10','test10',1,1),(14,'test11','test11',1,1);
/*!40000 ALTER TABLE `source` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-30 18:35:45
