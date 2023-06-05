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
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `movie_id` int NOT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `duration` time DEFAULT NULL,
  `release_year` int DEFAULT NULL,
  PRIMARY KEY (`movie_id`),
  KEY `idx_title` (`Title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (201,'My Little Pony: A New Generation','Equestrias divided. But a bright-eyed hero believes Earth Ponies, Pegasi and Unicorns should be pals â€” and, hoof to heart, sheâ€™s determined to prove it.','01:31:00',2021),(202,'Sankofa','On a photo shoot in Ghana, an American model slips back in time, becomes enslaved on a plantation and bears witness to the agony of her ancestral past.','02:05:00',1993),(203,'The Starling','A woman adjusting to life after a loss contends with a feisty bird thats taken over her garden â€” and a husband whos struggling to find a way forward.','01:44:00',2021),(204,'Je Suis Karl','After most of her family is murdered in a terrorist bombing, a young woman is unknowingly lured into joining the very group that killed them.','02:07:00',2021),(205,'Confessions of an Invisible Girl','When the clever but socially-awkward TetÃª joins a new school, she wll do anything to fit in. But the queen bee among her classmates has other ideas.','01:31:00',2021),(206,'Europes Most Dangerous Man: Otto Skorzeny in Spain','Declassified documents reveal the post-WWII life of Otto Skorzeny, a close Hitler ally who escaped to Spain and became an adviser to world presidents.','01:07:00',2020),(207,'Intrusion','After a deadly home invasion at a coupleâ€™s new dream house, the traumatized wife searches for answers â€” and learns the real danger is just beginning.','01:34:00',2021),(208,'Avvai Shanmughi','Newly divorced and denied visitation rights with his daughter, a doting father disguises himself as a gray-haired nanny in order to spend time with her.','02:41:00',1996),(209,'Go! Go! Cory Carson: Chrissy Takes the Wheel','From arcade games to sled days and hiccup cures, Cory Carsonâ€™s curious little sister Chrissy speeds off on her own for fun and adventure all over town!','01:01:00',2021),(210,'Jeans','When the father of the man she loves insists that his twin sons marry twin sisters, a woman creates an alter ego that might be a bit too convincing.','02:46:00',1998),(211,'Minsara Kanavu','A tangled love triangle ensues when a man falls for a woman studying to become a nun â€” and she falls for the friend he enlists to help him pursue her.','02:27:00',1997),(212,'Grown Ups','Mourning the loss of their beloved junior high basketball coach, five middle-aged pals reunite at a lake house and rediscover the joys of being a kid.','01:43:00',2010),(213,'Dark Skies','A familyâ€™s idyllic suburban life shatters when an alien force invades their home, and as they struggle to convince others of the deadly threat.','01:37:00',2013),(214,'Paranoia','Blackmailed by his companys CEO, a low-level employee finds himself forced to spy on the boss rival and former mentor.','01:46:00',2013),(215,'Ankahi Kahaniya','As big city life buzzes around them, lonely souls discover surprising sources of connection and companionship in three tales of love, loss and longing.','01:51:00',2021),(216,'The Father Who Moves Mountains','When his son goes missing during a snowy hike in the mountains, a retired intelligence officer will stop at nothing â€” and risk everything â€” to find him.','01:50:00',2021),(217,'The Stronghold','Tired of the small-time grind, three Marseille cops get a chance to bust a major drug network. But lines blur when a key informant makes a big ask.','01:45:00',2021),(218,'Birth of the Dragon','A young Bruce Lee angers kung fu traditionalists by teaching outsiders, leading to a showdown with a Shaolin master in this film based on real events.','01:36:00',2017),(219,'Jaws','When an insatiable great white shark terrorizes Amity Island, a police chief, an oceanographer and a grizzled shark hunter seek to destroy the beast.','02:04:00',1975),(220,'Jaws 2','Four years after the last deadly shark attacks, police chief Martin Brody fights to protect Amity Island from another killer great white.','01:56:00',1978),(221,'Jaws 3','After the staff of a marine theme park try to capture a young great white shark, they discover its mother has invaded the enclosure and is out for blood.','01:48:00',1983),(222,'Jaws: The Revenge','After another deadly shark attack, Ellen Brody has had enough of Amity Island and moves to the Caribbean â€“ but a great white shark follows her there.','01:31:00',1987),(223,'My Heroes Were Cowboys','Robin Wiltshires painful childhood was rescued by Westerns. Now he lives on the frontier of his dreams, training the horses he loves for the big screen.','00:23:00',2021),(224,'Safe House','Young CIA operative Matt Weston must get a dangerous criminal out of an agency safe house thats come under attack and get him to a securer location.','01:55:00',2012),(225,'Training Day','A rookie cop with one day to prove himself to a veteran LAPD narcotics officer receives a crash course in his mentors questionable brand of justice.','02:02:00',2001),(226,'King of Boys','When a powerful businesswomanâ€™s political ambitions are threatened by her underworld connections, the ensuing power struggle could cost her everything.','03:02:00',2018),(227,'You vs. Wild: Out Cold','After a plane crash leaves Bear with amnesia, he must make choices to save the missing pilot and survive in this high-stakes interactive adventure.','01:46:00',2021),(228,'Little Singham - Black Shadow','Kid cop Little Singham loses all his superpowers while trying to stop the demon Kaalâ€™s new evil plans! Can his inner strength help him defeat the enemy?','00:48:00',2021),(229,'Show Dogs','A rough and tough police dog must go undercover with an FBI agent as a prim and proper pet at a dog show to save a baby panda from an illegal sale.','01:30:00',2018),(230,'Shikara','A couple must strive to remain resilient after regional hostilities drive them from their beloved home into a refugee camp.','01:55:00',2020);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-05 18:58:39
