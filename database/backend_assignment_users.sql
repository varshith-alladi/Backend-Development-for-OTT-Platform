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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `Username` varchar(25) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (101,'varshith_alladi','varshith.alladi@example.com','2022-08-01 10:00:00'),(102,'michael_corner','michael@example.com','2022-07-02 11:30:00'),(103,'angelina_johnson','angelina@example.com','2021-06-03 10:00:00'),(104,'michael_thomas','thomas@example.com','2021-05-04 11:30:00'),(105,'angelina_longbottom','longbottom@example.com','2020-04-05 10:00:00'),(106,'oliver_wood','oliver@example.com','2020-03-06 11:30:00'),(107,'katie_bell','katie@example.com','2019-02-07 10:00:00'),(108,'padma_patil','padma@example.com','2019-01-08 11:30:00'),(109,'lavender_brown','lavender@example.com','2018-12-09 10:00:00'),(110,'theodore_nott','theodore@example.com','2018-11-10 11:30:00'),(111,'lee_jordan','lee@example.com','2017-10-11 10:00:00'),(112,'thomas_riddle','thomas@example.com','2017-09-12 11:30:00'),(113,'harry_potter','harry@example.com','2016-08-13 10:00:00'),(114,'ron_weasley','ron@example.com','2016-07-14 11:30:00'),(115,'hermoine_granger','hermoine@example.com','2015-06-15 10:00:00'),(116,'walter_white','walter@example.com','2015-05-16 11:30:00'),(117,'skyler_white','skyler@example.com','2014-04-17 10:00:00'),(118,'jesse_pinkman','jesse@example.com','2014-03-18 11:30:00'),(119,'gustavo_fring','gustavo@example.com','2013-02-19 10:00:00'),(120,'hank_schrader','hank@example.com','2013-01-20 11:30:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-05 18:58:41
