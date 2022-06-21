-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: neros
-- ------------------------------------------------------
-- Server version	8.0.24

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `neuros`
--

LOCK TABLES `neuros` WRITE;
/*!40000 ALTER TABLE `neuros` DISABLE KEYS */;
INSERT INTO `neuros` VALUES (1,'Birth','birth.xml'),(2,'Human','facesH.xml');
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
  KEY `results_sources_idx` (`src`),
  CONSTRAINT `results_sources` FOREIGN KEY (`src`) REFERENCES `source` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=702 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `results`
--

LOCK TABLES `results` WRITE;
/*!40000 ALTER TABLE `results` DISABLE KEYS */;
INSERT INTO `results` VALUES (88,411,64,58,58,1,1),(89,406,56,65,65,1,5),(90,410,63,61,61,1,6),(91,410,63,60,60,1,7),(92,411,64,58,58,1,1),(93,406,56,65,65,1,5),(94,410,63,61,61,1,6),(95,410,63,60,60,1,7),(96,411,63,59,59,1,8),(97,410,63,60,60,1,9),(98,65,15,59,59,2,1),(99,47,108,102,102,2,1),(100,52,69,185,185,2,1),(101,23,300,40,40,2,2),(102,67,14,56,56,2,2),(103,56,114,95,95,2,2),(104,72,103,132,132,2,2),(105,22,301,40,40,2,3),(106,70,106,132,132,2,3),(107,22,301,40,40,2,4),(108,70,15,54,54,2,4),(109,65,108,139,139,2,4),(110,52,105,90,90,2,4),(111,22,301,40,40,2,5),(112,63,17,60,60,2,5),(113,80,25,35,35,2,5),(114,69,90,150,150,2,5),(115,65,15,59,59,2,1),(116,47,108,102,102,2,1),(117,52,69,185,185,2,1),(118,23,300,40,40,2,2),(119,67,14,56,56,2,2),(120,56,114,95,95,2,2),(121,72,103,132,132,2,2),(122,22,301,40,40,2,3),(123,70,106,132,132,2,3),(124,22,301,40,40,2,4),(125,70,15,54,54,2,4),(126,52,105,90,90,2,4),(127,65,108,139,139,2,4),(128,22,301,40,40,2,5),(129,63,17,60,60,2,5),(130,69,90,150,150,2,5),(131,80,25,35,35,2,5),(132,64,20,59,59,2,6),(133,60,81,162,162,2,6),(134,48,94,85,85,2,7),(135,55,117,91,91,2,7),(136,56,91,157,157,2,7),(137,23,300,40,40,2,8),(138,69,14,57,57,2,8),(139,57,94,158,158,2,8),(140,23,300,40,40,2,9),(141,68,17,54,54,2,9),(142,62,96,148,148,2,9),(143,22,300,40,40,2,10),(144,68,17,54,54,2,10),(145,58,96,150,150,2,10),(146,22,300,40,40,2,11),(147,68,18,54,54,2,11),(148,59,97,151,151,2,11),(149,68,17,54,54,2,12),(150,59,98,151,151,2,12),(151,22,300,40,40,2,13),(152,65,15,57,57,2,13),(153,60,100,149,149,2,13),(154,22,300,40,40,2,14),(155,67,14,57,57,2,14),(156,53,83,164,164,2,14),(157,66,17,57,57,2,15),(158,55,99,140,140,2,15),(159,22,300,41,41,2,16),(160,64,17,59,59,2,16),(161,57,95,152,152,2,16),(162,22,300,41,41,2,17),(163,64,17,59,59,2,17),(164,53,89,158,158,2,17),(165,71,17,53,53,2,18),(166,53,95,156,156,2,18),(167,70,16,54,54,2,19),(168,51,82,171,171,2,19),(169,56,103,126,126,2,20),(170,58,105,125,125,2,21),(171,64,18,58,58,2,22),(172,79,22,40,40,2,22),(173,53,76,173,173,2,22),(174,64,18,58,58,2,23),(175,56,97,154,154,2,23),(176,79,22,40,40,2,23),(177,65,20,58,58,2,24),(178,54,99,151,151,2,24),(179,67,21,55,55,2,25),(180,59,96,137,137,2,25),(181,65,21,56,56,2,26),(182,56,95,136,136,2,26),(183,19,293,43,43,2,27),(184,65,18,58,58,2,27),(185,57,88,159,159,2,27),(186,411,64,58,58,1,1),(187,406,56,65,65,1,5),(188,410,63,61,61,1,6),(189,410,63,60,60,1,7),(190,411,63,59,59,1,8),(191,410,63,60,60,1,9),(192,410,61,61,61,1,10),(193,408,62,63,63,1,11),(194,407,60,64,64,1,12),(195,406,58,65,65,1,13),(196,411,64,57,57,1,14),(197,182,156,72,72,1,14),(198,411,64,57,57,1,15),(199,182,156,72,72,1,15),(200,411,64,57,57,1,16),(201,183,155,68,68,1,16),(202,411,64,58,58,1,17),(203,183,155,68,68,1,17),(204,400,52,71,71,1,18),(205,180,155,73,73,1,18),(206,402,52,68,68,1,19),(207,181,157,69,69,1,19),(208,397,49,74,74,1,20),(209,186,157,62,62,1,20),(210,411,62,59,59,1,21),(211,400,49,70,70,1,22),(212,182,156,65,65,1,22),(213,401,50,69,69,1,23),(214,179,155,72,72,1,23),(215,402,52,69,69,1,24),(216,402,55,69,69,1,25),(217,172,150,79,79,1,25),(218,401,52,69,69,1,26),(219,179,155,75,75,1,26),(220,205,158,27,27,1,27),(221,402,53,69,69,1,27),(222,402,53,69,69,1,28),(223,179,156,76,76,1,28),(224,401,53,69,69,1,29),(225,179,156,78,78,1,29),(226,401,49,68,68,1,30),(227,180,154,66,66,1,30),(228,403,52,68,68,1,31),(229,184,157,60,60,1,31),(230,398,49,74,74,1,32),(231,404,54,67,67,1,33),(232,186,158,58,58,1,33),(233,392,42,79,79,1,34),(234,390,41,81,81,1,35),(235,393,41,74,74,1,36),(236,396,46,72,72,1,37),(237,389,41,79,79,1,38),(238,399,51,71,71,1,39),(239,392,43,80,80,1,40),(240,400,51,71,71,1,41),(241,203,159,27,27,1,41),(242,399,49,71,71,1,42),(243,397,46,73,73,1,43),(244,189,181,49,49,1,43),(245,398,49,72,72,1,44),(246,397,48,73,73,1,45),(247,410,63,57,57,1,46),(248,395,41,76,76,1,46),(249,397,51,73,73,1,47),(250,398,50,72,72,1,48),(251,399,52,71,71,1,49),(252,401,52,69,69,1,50),(253,180,155,61,61,1,50),(254,399,51,71,71,1,51),(255,401,52,68,68,1,52),(256,201,158,30,30,1,53),(257,391,42,80,80,1,53),(258,203,158,27,27,1,54),(259,398,51,70,70,1,54),(260,398,50,71,71,1,55),(261,400,51,69,69,1,56),(262,402,52,66,66,1,57),(263,188,180,51,51,1,57),(264,399,50,72,72,1,58),(265,187,179,51,51,1,58),(266,397,51,73,73,1,59),(267,203,157,28,28,1,60),(268,404,53,64,64,1,60),(269,403,52,65,65,1,61),(270,404,54,65,65,1,62),(271,400,51,70,70,1,63),(272,400,51,69,69,1,64),(273,407,58,62,62,1,65),(274,398,51,72,72,1,66),(275,189,182,48,48,1,66),(276,399,51,71,71,1,67),(277,189,182,48,48,1,67),(278,399,51,72,72,1,68),(279,189,180,50,50,1,68),(280,398,51,73,73,1,69),(281,188,180,49,49,1,69),(282,188,181,49,49,1,70),(283,393,43,76,76,1,70),(284,400,52,70,70,1,71),(285,395,44,77,77,1,72),(286,395,42,75,75,1,73),(287,389,42,83,83,1,74),(288,403,55,67,67,1,75),(289,403,53,67,67,1,76),(290,398,50,74,74,1,77),(291,402,54,69,69,1,78),(292,180,154,68,68,1,78),(293,401,53,69,69,1,79),(294,181,156,64,64,1,79),(295,461,377,34,34,3,NULL),(296,394,424,29,29,3,NULL),(297,669,82,32,32,3,NULL),(298,610,347,32,32,3,NULL),(299,285,75,63,63,3,NULL),(300,756,33,25,25,3,NULL),(301,669,54,41,41,3,NULL),(302,500,426,34,34,3,NULL),(303,394,424,29,29,3,NULL),(304,669,82,32,32,3,NULL),(305,610,347,32,32,3,NULL),(306,461,377,34,34,3,NULL),(307,285,75,63,63,3,NULL),(308,756,33,25,25,3,NULL),(309,500,426,34,34,3,NULL),(310,669,54,41,41,3,NULL),(311,534,92,87,87,1,1),(312,251,273,56,56,1,1),(313,250,271,59,59,1,2),(314,534,92,86,86,1,2),(315,533,92,87,87,1,3),(316,251,272,57,57,1,3),(317,534,92,85,85,1,4),(318,251,272,57,57,1,4),(319,534,92,86,86,1,5),(320,251,272,57,57,1,5),(321,272,202,32,32,1,6),(322,535,93,85,85,1,6),(323,250,272,58,58,1,6),(324,272,202,32,32,1,7),(325,535,93,86,86,1,7),(326,498,60,125,125,1,7),(327,251,272,56,56,1,7),(328,272,202,32,32,1,8),(329,532,93,88,88,1,8),(330,250,272,58,58,1,8),(331,272,202,32,32,1,9),(332,529,91,90,90,1,9),(333,251,272,59,59,1,9),(334,522,82,101,101,1,10),(335,251,272,58,58,1,10),(336,533,92,88,88,1,11),(337,251,272,58,58,1,11),(338,534,92,86,86,1,12),(339,251,272,57,57,1,12),(340,532,92,87,87,1,13),(341,251,272,57,57,1,13),(342,272,201,32,32,1,14),(343,507,62,122,122,1,14),(344,251,272,56,56,1,14),(345,272,201,32,32,1,15),(346,251,272,56,56,1,15),(347,505,62,122,122,1,15),(348,233,227,88,88,1,15),(349,272,201,32,32,1,16),(350,500,62,123,123,1,16),(351,251,272,56,56,1,16),(352,272,202,32,32,1,17),(353,532,92,86,86,1,17),(354,493,62,128,128,1,17),(355,251,272,56,56,1,17),(356,272,201,32,32,1,18),(357,251,273,56,56,1,18),(358,500,62,123,123,1,18),(359,273,202,31,31,1,19),(360,529,90,86,86,1,19),(361,253,275,55,55,1,19),(362,499,62,126,126,1,19),(363,499,62,125,125,1,20),(364,250,272,59,59,1,20),(365,513,73,109,109,1,21),(366,251,272,57,57,1,21),(367,515,74,108,108,1,22),(368,514,76,106,106,1,23),(369,519,77,98,98,1,24),(370,497,62,124,124,1,25),(371,228,226,101,101,1,25),(372,514,77,107,107,1,26),(373,506,62,115,115,1,27),(374,508,62,113,113,1,28),(375,249,272,59,59,1,29),(376,504,60,122,122,1,29),(377,232,227,97,97,1,29),(378,493,62,132,132,1,30),(379,250,273,58,58,1,30),(380,529,91,88,88,1,31),(381,499,62,123,123,1,31),(382,249,270,60,60,1,31),(383,530,92,88,88,1,32),(384,492,62,136,136,1,32),(385,232,226,99,99,1,32),(386,532,91,90,90,1,33),(387,494,59,130,130,1,33),(388,250,271,60,60,1,33),(389,528,89,92,92,1,34),(390,250,272,59,59,1,34),(391,233,227,99,99,1,34),(392,530,91,89,89,1,35),(393,250,271,59,59,1,35),(394,518,74,100,100,1,36),(395,247,267,64,64,1,36),(396,520,79,101,101,1,37),(397,248,269,62,62,1,37),(398,302,118,212,212,31,NULL),(399,364,62,119,119,24,1),(400,363,60,118,118,24,2),(401,465,472,22,22,24,2),(402,362,59,116,116,24,3),(403,358,58,116,116,24,4),(404,417,469,21,21,24,5),(405,353,58,118,118,24,5),(406,287,217,21,21,24,6),(407,404,345,22,22,24,6),(408,352,62,116,116,24,6),(409,350,67,115,115,24,7),(410,347,72,115,115,24,8),(411,490,316,48,48,24,8),(412,343,79,114,114,24,9),(413,454,426,26,26,24,9),(414,277,238,23,23,24,9),(415,338,84,114,114,24,10),(416,488,316,51,51,24,10),(417,273,246,23,23,24,10),(418,268,250,23,23,24,11),(419,332,86,114,114,24,11),(420,456,344,22,22,24,12),(421,326,84,113,113,24,12),(422,263,249,22,22,24,12),(423,319,78,116,116,24,13),(424,314,73,115,115,24,14),(425,253,242,22,22,24,14),(426,312,67,113,113,24,15),(427,273,315,47,47,24,15),(428,302,472,22,22,24,16),(429,357,471,23,23,24,16),(430,311,62,112,112,24,16),(431,282,307,52,52,24,16),(432,301,468,22,22,24,17),(433,357,464,27,27,24,17),(434,311,56,112,112,24,17),(435,281,307,55,55,24,17),(436,311,52,115,115,24,18),(437,312,51,115,115,24,19),(438,314,51,112,112,24,20),(439,313,51,116,116,24,21),(440,305,298,51,51,24,21),(441,316,56,116,116,24,22),(442,319,63,116,116,24,23),(443,318,318,47,47,24,23),(444,325,71,114,114,24,24),(445,332,330,32,32,24,25),(446,330,76,115,115,24,25),(447,338,79,116,116,24,26),(448,345,79,117,117,24,27),(449,354,75,116,116,24,28),(450,362,72,114,114,24,29),(451,366,67,116,116,24,30),(452,370,63,114,114,24,31),(453,372,59,114,114,24,32),(454,374,57,112,112,24,33),(455,372,53,116,116,24,34),(456,375,53,116,116,24,35),(457,379,56,113,113,24,36),(458,379,58,116,116,24,37),(459,380,62,117,117,24,38),(460,379,68,120,120,24,39),(461,378,75,119,119,24,40),(462,375,83,117,117,24,41),(463,373,88,114,114,24,42),(464,367,86,115,115,24,43),(465,363,83,113,113,24,44),(466,359,79,110,110,24,45),(467,357,77,109,109,24,46),(468,354,71,113,113,24,47),(469,358,70,109,109,24,48),(470,355,64,115,115,24,49),(471,357,62,113,113,24,50),(472,432,301,61,61,24,50),(473,355,60,119,119,24,51),(474,362,67,111,111,24,52),(475,363,72,113,113,24,53),(476,365,78,113,113,24,54),(477,369,85,113,113,24,55),(478,373,92,111,111,24,56),(479,379,93,111,111,24,57),(480,384,90,115,115,24,58),(481,389,85,114,114,24,59),(482,395,82,110,110,24,60),(483,395,73,117,117,24,61),(484,396,69,115,115,24,62),(485,394,64,115,115,24,63),(486,392,60,113,113,24,64),(487,387,56,118,118,24,65),(488,384,55,118,118,24,66),(489,383,57,117,117,24,67),(490,378,61,120,120,24,68),(491,376,67,118,118,24,69),(492,372,74,118,118,24,70),(493,366,81,118,118,24,71),(494,359,82,120,120,24,72),(495,354,83,117,117,24,73),(496,348,79,116,116,24,74),(497,342,75,114,114,24,75),(498,337,69,115,115,24,76),(499,332,64,120,120,24,77),(500,332,60,119,119,24,78),(501,333,59,116,116,24,79),(502,335,57,115,115,24,80),(503,336,58,113,113,24,81),(504,337,58,116,116,24,82),(505,341,64,113,113,24,83),(506,344,71,113,113,24,84),(507,346,78,115,115,24,85),(508,348,83,120,120,24,86),(509,355,89,116,116,24,87),(510,358,88,120,120,24,88),(511,365,86,118,118,24,89),(512,372,86,111,111,24,90),(513,375,82,109,109,24,91),(514,373,77,112,112,24,92),(515,374,73,109,109,24,93),(516,371,66,112,112,24,94),(517,371,64,109,109,24,95),(518,368,62,113,113,24,96),(519,368,62,111,111,24,97),(520,368,67,109,109,24,98),(521,366,71,111,111,24,99),(522,435,317,49,49,24,99),(523,364,78,112,112,24,100),(524,361,84,114,114,24,101),(525,357,89,114,114,24,102),(526,352,92,116,116,24,103),(527,346,90,116,116,24,104),(528,342,85,113,113,24,105),(529,335,79,116,116,24,106),(530,334,76,111,111,24,107),(531,331,71,114,114,24,108),(532,333,71,110,110,24,109),(533,333,71,108,108,24,110),(534,333,67,110,110,24,111),(535,335,68,106,106,24,112),(536,335,66,110,110,24,113),(537,338,72,107,107,24,114),(538,337,74,114,114,24,115),(539,340,80,115,115,24,116),(540,342,85,119,119,24,117),(541,346,90,118,118,24,118),(542,351,89,119,119,24,119),(543,355,86,118,118,24,120),(544,360,84,114,114,24,121),(545,359,80,114,114,24,122),(546,357,76,114,114,24,123),(547,356,71,113,113,24,124),(548,355,67,110,110,24,125),(549,352,62,112,112,24,126),(550,348,59,116,116,24,127),(551,346,61,116,116,24,128),(552,343,65,118,118,24,129),(553,343,74,113,113,24,130),(554,338,79,116,116,24,131),(555,333,87,114,114,24,132),(556,326,89,118,118,24,133),(557,320,87,120,120,24,134),(558,317,84,117,117,24,135),(559,314,80,115,115,24,136),(560,312,74,116,116,24,137),(561,312,69,116,116,24,138),(562,313,61,120,120,24,139),(563,317,60,116,116,24,140),(564,317,54,123,123,24,141),(565,320,57,120,120,24,142),(566,323,58,122,122,24,143),(567,327,67,117,117,24,144),(568,330,74,118,118,24,145),(569,335,81,117,117,24,146),(570,336,84,124,124,24,147),(571,345,90,115,115,24,148),(572,350,91,117,117,24,149),(573,360,86,112,112,24,150),(574,366,82,110,110,24,151),(575,364,74,118,118,24,152),(576,365,68,118,118,24,153),(577,364,64,116,116,24,154),(578,364,63,110,110,24,155),(579,358,58,116,116,24,156),(580,356,60,115,115,24,157),(581,357,64,111,111,24,158),(582,348,62,122,122,24,159),(583,349,73,114,114,24,160),(584,346,81,112,112,24,161),(585,340,86,114,114,24,162),(586,336,93,113,113,24,163),(587,329,94,113,113,24,164),(588,323,90,112,112,24,165),(589,317,85,112,112,24,166),(590,313,79,113,113,24,167),(591,311,73,113,113,24,168),(592,311,65,113,113,24,169),(593,316,62,110,110,24,170),(594,318,61,109,109,24,171),(595,318,56,116,116,24,172),(596,316,54,123,123,24,173),(597,318,58,122,122,24,174),(598,323,67,116,116,24,175),(599,324,72,119,119,24,176),(600,329,80,116,116,24,177),(601,333,86,120,120,24,178),(602,341,91,115,115,24,179),(603,350,89,114,114,24,180),(604,358,87,110,110,24,181),(605,365,84,105,105,24,182),(606,365,75,112,112,24,183),(607,365,71,114,114,24,184),(608,364,66,115,115,24,185),(609,363,61,115,115,24,186),(610,362,60,115,115,24,187),(611,362,60,113,113,24,188),(612,357,60,119,119,24,189),(613,356,65,117,117,24,190),(614,356,73,114,114,24,191),(615,352,80,115,115,24,192),(616,350,88,112,112,24,193),(617,342,91,118,118,24,194),(618,339,97,111,111,24,195),(619,329,91,118,118,24,196),(620,324,85,116,116,24,197),(621,320,80,115,115,24,198),(622,317,72,117,117,24,199),(623,317,68,115,115,24,200),(624,316,61,119,119,24,201),(625,320,59,115,115,24,202),(626,324,60,112,112,24,203),(627,325,60,113,113,24,204),(628,324,62,122,122,24,205),(629,326,67,125,125,24,206),(630,330,72,127,127,24,207),(631,337,79,119,119,24,208),(632,344,86,116,116,24,209),(633,352,93,112,112,24,210),(634,358,90,113,113,24,211),(635,362,83,118,118,24,212),(636,370,79,114,114,24,213),(637,374,75,114,114,24,214),(638,376,70,111,111,24,215),(639,375,65,113,113,24,216),(640,371,57,119,119,24,217),(641,371,57,114,114,24,218),(642,368,55,117,117,24,219),(643,368,57,116,116,24,220),(644,366,60,116,116,24,221),(645,365,66,115,115,24,222),(646,364,75,114,114,24,223),(647,358,80,117,117,24,224),(648,353,85,117,117,24,225),(649,349,87,117,117,24,226),(650,344,84,116,116,24,227),(651,337,80,116,116,24,228),(652,335,74,115,115,24,229),(653,329,66,119,119,24,230),(654,325,58,126,126,24,231),(655,332,58,117,117,24,232),(656,331,56,117,117,24,233),(657,332,53,117,117,24,234),(658,333,52,117,117,24,235),(659,333,53,119,119,24,236),(660,331,55,125,125,24,237),(661,342,68,112,112,24,238),(662,344,72,116,116,24,239),(663,350,79,122,122,24,240),(664,358,84,118,118,24,241),(665,367,85,115,115,24,242),(666,376,82,116,116,24,243),(667,385,81,111,111,24,244),(668,388,79,114,114,24,245),(669,391,82,112,112,24,246),(670,395,83,109,109,24,247),(671,395,80,112,112,24,248),(672,397,79,111,111,24,249),(673,258,303,45,45,24,249),(674,394,77,112,112,24,250),(675,395,79,110,110,24,251),(676,390,81,114,114,24,252),(677,392,90,106,106,24,253),(678,388,95,108,108,24,254),(679,383,101,109,109,24,255),(680,378,107,108,108,24,256),(681,373,106,110,110,24,257),(682,369,102,107,107,24,258),(683,364,96,108,108,24,259),(684,360,92,107,107,24,260),(685,358,88,107,107,24,261),(686,360,84,106,106,24,262),(687,361,81,105,105,24,263),(688,363,79,103,103,24,264),(689,363,76,109,109,24,265),(690,363,80,108,108,24,266),(691,367,84,107,107,24,267),(692,368,91,108,108,24,268),(693,370,98,107,107,24,269),(694,372,103,112,112,24,270),(695,379,110,105,105,24,271),(696,383,111,107,107,24,272),(697,388,105,109,109,24,273),(698,395,99,107,107,24,274),(699,398,92,110,110,24,275),(700,396,83,114,114,24,276),(701,397,80,110,110,24,277);
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `source`
--

LOCK TABLES `source` WRITE;
/*!40000 ALTER TABLE `source` DISABLE KEYS */;
INSERT INTO `source` VALUES (1,'v2.mp4','Птички 1',1,1),(2,'v3.mp4','Birth 2',1,1),(3,'b1.jpg','BirthI',1,0),(15,'v1.mp4','Flying birth',1,1),(16,'v4.mp4','birth on stick',1,1),(17,'b5.mp4','b5',1,1),(18,'b6.mp4','b6',1,1),(19,'b7.mp4','b7',1,1),(20,'b8.mp4','b8',1,1),(21,'b9.mp4','b9',1,1),(22,'b10.mp4','b10',1,1),(23,'b11.mp4','b11',1,1),(24,'h1.mp4','human',2,1),(25,'b2.jpg','b2',1,0),(26,'b3.jpg','b3',1,0),(27,'b4.jpg','b4',1,0),(28,'b5.jpg','b5',1,0),(29,'b6.jpeg','b6',1,0),(30,'b7.jpg','b7',1,0),(31,'h1.jpg','h1',2,0),(32,'h2.jpg','h2',2,0),(33,'h3.jpg','h3',2,0);
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

-- Dump completed on 2022-06-21 12:46:44
