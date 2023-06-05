-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: backend_assignment
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `webseries_genres`
--

DROP TABLE IF EXISTS `webseries_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webseries_genres` (
  `WebSeries_id` int DEFAULT NULL,
  `genre_id` int DEFAULT NULL,
  KEY `idx_WebSeries_genre` (`WebSeries_id`,`genre_id`),
  KEY `idx_genre_WebSeries` (`genre_id`,`WebSeries_id`),
  CONSTRAINT `webseries_genres_ibfk_1` FOREIGN KEY (`WebSeries_id`) REFERENCES `webseries` (`WebSeries_id`),
  CONSTRAINT `webseries_genres_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webseries_genres`
--

LOCK TABLES `webseries_genres` WRITE;
/*!40000 ALTER TABLE `webseries_genres` DISABLE KEYS */;
INSERT INTO `webseries_genres` VALUES (301,402),(301,403),(302,401),(303,403),(303,405),(303,408),(304,401),(305,403),(305,411),(306,403),(306,411),(306,414),(307,401),(307,407),(307,408),(307,410),(308,408),(309,401),(309,409),(310,412),(310,413),(311,415),(312,415),(313,411),(313,415),(314,405),(314,406),(314,411),(314,412),(314,415),(315,405),(316,406),(317,404),(318,404),(319,404),(319,407),(320,402),(320,404),(321,401),(321,403),(322,411),(323,413),(324,415),(325,413),(326,411),(327,410),(327,412),(328,412),(329,405),(329,414),(330,401),(331,403),(331,413);
/*!40000 ALTER TABLE `webseries_genres` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-05 18:58:40
