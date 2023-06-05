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
-- Table structure for table `webseries`
--

DROP TABLE IF EXISTS `webseries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webseries` (
  `WebSeries_id` int NOT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `num_of_seasons` int DEFAULT NULL,
  `release_year` int DEFAULT NULL,
  PRIMARY KEY (`WebSeries_id`),
  KEY `idx_title` (`Title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webseries`
--

LOCK TABLES `webseries` WRITE;
/*!40000 ALTER TABLE `webseries` DISABLE KEYS */;
INSERT INTO `webseries` VALUES (301,'Car Masters: Rust to Riches','The colorful crew at Gotham Garage overhauls an eclectic collection of cars and trucks, trading up to a showstopper they can sell for big bucks',3,2021),(302,'Cocaine Cowboys: The Kings of Miami','Two childhood friends go from high school dropouts to the most powerful drug kingpins in Miami in this true story of a crime saga that spanned decades',1,2021),(303,'Control Z','When a hacker begins releasing students secrets to the entire high school, the socially isolated but observant Sofía works to uncover his/her identity',2,2021),(304,'Cooking With Paris','With an anyone-can-cook attitude, Paris Hilton adds her own flair to every dish. Fun is just one edible glitter bomb away on this unique cooking show',1,2021),(305,'Autumns Concerto','After losing all memories of his past, a wealthy lawyer travels to a rural village where a woman he once loved now lives with her son',1,2009),(306,'Office Girls','A department store mogul has his son work incognito in a menial job to prove his worthiness, while female co-workers teach him how normal people live',1,2011),(307,'The Prince Who Turns into a Frog','Before his wedding, a cold CEO is hit by a car and awakens a changed man. As he and the driver fall in love, more changes appear on the road ahead',1,2005),(308,'Top Secret UFO Projects: Declassified','Though claims of extraterrestrial encounters have long been dismissed, many believe the existence of UFOs is not just likely, but a certainty',1,2021),(309,'Two Fathers','When two single guys learn a woman they both slept with disappeared after giving birth, they decide to raise her baby girl together as a family',1,2013),(310,'You are My Destiny','A young womans romantic cruise ends in a twist when she gets pregnant after a one-night stand with a rich executive, turning their lives upside down',1,2008),(311,'30 Rock','Liz Lemon juggles the demands of running an NBC sketch comedy show with trying to fix her disaster of a personal life and eating her night cheese',7,2012),(312,'44 Cats','Paw-esome tales abound when singing furry friends Lampo, Milady, Pilou and Meatball band together',3,2020),(313,'Darwin’s Game','High schooler Kaname activates a mysterious mobile app and unwittingly joins a game pitting players with supernatural abilities against each other',1,2020),(314,'Friday Night Lights','Eric Taylor faces enormous pressure when he signs on as the new coach of a small-town Texas football team thats poised to win the state championship',5,2010),(315,'Hunter X Hunter (2011)','To fulfill his dreams of becoming a legendary Hunter like his dad, a young boy must pass a rigorous examination and find his missing father',6,2014),(316,'Charmed','After their mothers tragic death, a trio of sisters bond over their newfound powers, vanquish demons and band together to defend their magical legacy',3,2021),(317,'Centaurworld','On a quest to reunite with her trusty rider, a fearless war horse journeys through a whimsical world filled with magic, adventure and singing centaurs',1,2021),(318,'Glow Up','In this competition show, aspiring makeup artists navigate colorful challenges to win a career-making opportunity in the beauty industry',3,2021),(319,'Khawatir','Saudi media personality Ahmad Al Shugairi travels around the world on a quest for knowledge in various cities while offering his personal reflections',1,2009),(320,'Myth & Mogul: John DeLorean','In the automotive world, John DeLorean rose from engineer to executive to icon. But under the hood of his self-created legend lies darkness and deceit',1,2021),(321,'Outer Banks','On an island of haves and have-nots, teen John B enlists his three best friends to hunt for a legendary treasure linked to his fathers disappearance',2,2021),(322,'Transformers: War for Cybertron: Kingdom','The frantic race to locate the Allspark first culminates on a strange planet as the future comes crashing through to the present day',1,2021),(323,'Tattoo Redo','Bad tattoos walk in. Great tattoos walk out. Top artists transform tattoo disasters into stunning cover-ups, with designs chosen by clients loved ones',1,2021),(324,'The Flash','A forensics expert who wakes from a coma with amazing new powers squares off against forces threatening the city in this live-action superhero romp',7,2021),(325,'All American','Culture clashes and brewing rivalries test a teen football player from South Los Angeles when hes recruited to the Beverly Hills High School team',3,2021),(326,'How to Sell Drugs Online (Fast)','To win back his ex-girlfriend, a nerdy teen starts selling ecstasy online out of his bedroom – and becomes one of Europes biggest dealers',3,2021),(327,'Mighty Express','Catch a ride with the Mighty Express — a team of trains and their kid friends who overcome trouble on the tracks with quick thinking and teamwork',4,2021),(328,'Plastic Cup Boyz: Laughing My Mask Off!','Comedy collective The Plastic Cup Boyz pour out the punchlines in Atlanta during a trio of raw and lively stand-up specials',1,2021),(329,'The Walking Dead','In the wake of a zombie apocalypse, survivors hold on to the hope of humanity by banding together to wage a fight for their own survival.',10,2019),(330,'Wynonna Earp','The outcast descendant of lawman Wyatt Earp teams up with an immortal Doc Holliday to rid the world of demonic revenants from the Wild West.',4,2020),(331,'The Snitch Cartel: Origins','Over four decades, two brothers in Cali juggle family duties, multiple romances and illegal businesses, transforming from poor kids to cocaine kingpins',1,2021);
/*!40000 ALTER TABLE `webseries` ENABLE KEYS */;
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
