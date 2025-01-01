CREATE DATABASE  IF NOT EXISTS `movies` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `movies`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: movies
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actor` (
  `Act_id` int DEFAULT NULL,
  `Act_first_name` char(50) DEFAULT NULL,
  `Act_last_name` char(50) DEFAULT NULL,
  `Act_gender` char(10) DEFAULT NULL,
  UNIQUE KEY `Act_id` (`Act_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` VALUES (101,'James','Stewart','M'),(102,'Deborah','Kerr','F'),(103,'Peter','OToole','M'),(104,'Robert','De_Niro','M'),(105,'F. Murray','Abraham','M'),(106,'Harrison','Ford','M'),(107,'Nicole','Kidman','F'),(108,'Stephen','Baldwin','M'),(109,'Jack','Nicholson','M'),(110,'Mark','Wahlberg','M'),(111,'Woody','Allen','M'),(112,'Claire','Danes','F'),(113,'Tim','Robbins','M'),(114,'Kevin','Spacey','M'),(115,'Kate','Winslet','F'),(116,'Robin','Williams','M'),(117,'Jon','Voight','M'),(118,'Ewan','McGregor','M'),(119,'Christian','Bale','M'),(120,'Maggie','Gyllenhaal','F'),(121,'Dev','Patel','M'),(122,'Sigourney','Weaver','F'),(123,'David','Aston','M'),(124,'Ali','Astin','F');
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `director` (
  `Dir_id` int DEFAULT NULL,
  `Dir_first_name` char(50) DEFAULT NULL,
  `Dir_last_name` char(50) DEFAULT NULL,
  UNIQUE KEY `Dir_id` (`Dir_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES (201,'Alfred','Hitchcock'),(202,'Jack','Clayton'),(203,'David','Lean'),(204,'Michael','Cimino'),(205,'Milos','Forman'),(206,'Ridley','Scott'),(207,'Stanley','Kubrick'),(208,'Bryan','Singer'),(209,'Roman','Polanski'),(210,'Paul','Thomas_Anderson'),(211,'Woody','Allen'),(212,'Hayao','Miyazaki'),(213,'Frank','Darabont'),(214,'Sam','Mendes'),(215,'James','Cameron'),(216,'Gus','Van_Sant'),(217,'John','Boorman'),(218,'Danny','Boyle'),(219,'Christopher','Nolan'),(220,'Richard','Kelly'),(221,'Kevin','Spacey'),(222,'Andrei','Tarkovsky'),(223,'Peter','Jackson');
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `Gen_id` int DEFAULT NULL,
  `Gen_title` char(50) DEFAULT NULL,
  UNIQUE KEY `Gen_id` (`Gen_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1001,'Action'),(1002,'Adventure'),(1003,'Animation'),(1004,'Biography'),(1005,'Comedy'),(1006,'Crime'),(1007,'Drama'),(1008,'Horror'),(1009,'Music'),(1010,'Mystery'),(1011,'Romance'),(1012,'Thriller'),(1013,'War');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `mov_id` int DEFAULT NULL,
  `Mov_title` char(50) DEFAULT NULL,
  `Mov_year` int DEFAULT NULL,
  `Mov_time` int DEFAULT NULL,
  `Mov_lang` char(50) DEFAULT NULL,
  `Mov_dt_rel` date DEFAULT NULL,
  `Mov_rel_country` char(50) DEFAULT NULL,
  UNIQUE KEY `mov_id` (`mov_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (901,'Vertigo',1958,128,'English','1958-08-24','UK'),(902,'The_Innocents',1961,100,'English','1962-02-19','SW'),(903,'Lawrence_of_Arabia',1962,216,'English','1962-12-11','UK'),(904,'The_Deer_Hunter',1978,183,'English','1979-03-08','UK'),(905,'Amadeus',1984,160,'English','1985-01-07','UK'),(906,'Blade_Runner',1982,117,'English','1982-09-09','UK'),(907,'Eyes_Wide_Shut',1999,159,'English',NULL,'UK'),(908,'The_Usual_Suspects',1995,106,'English','1995-08-25','UK'),(909,'Chinatown',1974,130,'English','1974-08-09','UK'),(910,'Boogie_Nights',1997,155,'English','1998-02-16','UK'),(911,'Annie_Hall',1977,93,'English','1977-04-20','USA'),(912,'Princess_Mononoke',1997,134,'Japanese','2001-10-19','UK'),(913,'The_Shawshank_Redemption',1994,142,'English','1995-02-17','UK'),(914,'American_Beauty',1999,122,'English',NULL,'UK'),(915,'Titanic',1997,194,'English','1998-01-23','UK'),(916,'Good_Will_Hunting',1997,126,'English','1998-06-03','UK'),(917,'Deliverance',1972,109,'English','1982-10-05','UK'),(918,'Trainspotting',1996,94,'English','1996-02-23','UK'),(919,'The_Prestige',2006,130,'English','2006-11-10','UK'),(920,'Donnie_Darko',2001,113,'English',NULL,'UK'),(921,'Slumdog_Millionaire',2008,120,'English','2009-01-09','UK'),(922,'Aliens',1986,137,'English','1986-08-29','UK'),(923,'Beyond_the_Sea',2004,118,'English','2004-11-26','UK'),(924,'Avatar',2009,162,'English','2009-12-17','UK'),(926,'Seven_Samurai',1954,207,'Japanese','1954-04-26','JP'),(927,'Spirited_Away',2001,125,'Japanese','2003-09-12','UK'),(928,'Back_to_the_Future',1985,116,'English','1985-12-04','UK'),(925,'Braveheart',1995,178,'English','1995-09-08','UK');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_cast`
--

DROP TABLE IF EXISTS `movie_cast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_cast` (
  `Act_id` int NOT NULL,
  `Mov_id` int NOT NULL,
  `Role` char(60) DEFAULT NULL,
  KEY `Act_id` (`Act_id`),
  KEY `Mov_id` (`Mov_id`),
  CONSTRAINT `movie_cast_ibfk_1` FOREIGN KEY (`Act_id`) REFERENCES `actor` (`Act_id`),
  CONSTRAINT `movie_cast_ibfk_2` FOREIGN KEY (`Mov_id`) REFERENCES `movie` (`mov_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_cast`
--

LOCK TABLES `movie_cast` WRITE;
/*!40000 ALTER TABLE `movie_cast` DISABLE KEYS */;
INSERT INTO `movie_cast` VALUES (101,901,'John_Scottie_Ferguson'),(102,902,'Miss_Giddens'),(103,903,'T.E._Lawrence'),(104,904,'Michael'),(105,905,'Antonio_Salieri'),(106,906,'Rick_Deckard'),(107,907,'Alice_Harford'),(108,908,'McManus'),(110,910,'Eddie_Adams'),(111,911,'Alvy_Singer'),(112,912,'San'),(113,913,'Andy_Dufresne'),(114,914,'Lester_Burnham'),(115,915,'Rose_DeWitt_Bukater'),(116,916,'Sean_Maguire'),(117,917,'Ed'),(118,918,'Renton'),(120,920,'Elizabeth_Darko'),(121,921,'Older_Jamal'),(122,922,'Ripley'),(114,923,'Bobby_Darin'),(109,909,'J.J._Gittes'),(119,919,'Alfred_Borden');
/*!40000 ALTER TABLE `movie_cast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_direction`
--

DROP TABLE IF EXISTS `movie_direction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_direction` (
  `Dir_id` int NOT NULL,
  `Mov_id` int NOT NULL,
  KEY `Dir_id` (`Dir_id`),
  KEY `Mov_id` (`Mov_id`),
  CONSTRAINT `movie_direction_ibfk_1` FOREIGN KEY (`Dir_id`) REFERENCES `director` (`Dir_id`),
  CONSTRAINT `movie_direction_ibfk_2` FOREIGN KEY (`Mov_id`) REFERENCES `movie` (`mov_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_direction`
--

LOCK TABLES `movie_direction` WRITE;
/*!40000 ALTER TABLE `movie_direction` DISABLE KEYS */;
INSERT INTO `movie_direction` VALUES (201,901),(202,902),(203,903),(204,904),(205,905),(206,906),(207,907),(208,908),(209,908),(210,910),(211,911),(212,912),(213,913),(214,914),(215,915),(216,916),(217,917),(218,918),(219,919),(220,920),(218,921),(215,922),(221,923);
/*!40000 ALTER TABLE `movie_direction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_genres`
--

DROP TABLE IF EXISTS `movie_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_genres` (
  `Mov_id` int NOT NULL,
  `Gen_id` int NOT NULL,
  KEY `Mov_id` (`Mov_id`),
  KEY `Gen_id` (`Gen_id`),
  CONSTRAINT `movie_genres_ibfk_1` FOREIGN KEY (`Mov_id`) REFERENCES `movie` (`mov_id`),
  CONSTRAINT `movie_genres_ibfk_2` FOREIGN KEY (`Gen_id`) REFERENCES `genres` (`Gen_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_genres`
--

LOCK TABLES `movie_genres` WRITE;
/*!40000 ALTER TABLE `movie_genres` DISABLE KEYS */;
INSERT INTO `movie_genres` VALUES (922,1001),(917,1002),(903,1002),(912,1003),(911,1005),(908,1006),(913,1006),(926,1007),(928,1007),(918,1007),(921,1007),(902,1008),(923,1009),(907,1010),(927,1010),(901,1010),(914,1011),(914,1011),(906,1012),(904,1013);
/*!40000 ALTER TABLE `movie_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `Mov_id` int NOT NULL,
  `Rev_id` int NOT NULL,
  `Rev_stars` int DEFAULT NULL,
  `Num_o_ratings` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` VALUES (901,9001,8,263575),(902,9002,8,20207),(903,9003,8,202778),(906,9005,8,484746),(924,9006,7,NULL),(908,9007,9,779489),(909,9008,NULL,227235),(910,9009,3,195961),(911,9010,8,203875),(912,9011,8,NULL),(914,9013,7,862618),(915,9001,8,830095),(916,9014,4,642132),(925,9015,8,81328),(918,9016,NULL,580301),(920,9017,8,609451),(921,9018,8,667758),(922,9019,8,511613),(923,9020,7,13091);
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewer`
--

DROP TABLE IF EXISTS `reviewer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviewer` (
  `Rev_id` int DEFAULT NULL,
  `Rev_name` char(50) DEFAULT NULL,
  UNIQUE KEY `Rev_id` (`Rev_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewer`
--

LOCK TABLES `reviewer` WRITE;
/*!40000 ALTER TABLE `reviewer` DISABLE KEYS */;
INSERT INTO `reviewer` VALUES (9001,'Righty_Sock'),(9002,'Jack_Malvern'),(9003,'Flagrant_Baronessa'),(9004,'Alec_Shaw'),(9005,NULL),(9006,'Victor_Woeltjen'),(9007,'Simon_Wright'),(9008,'Neal_Wruck'),(9009,'Paul_Monks'),(9010,'Mike_Salvati'),(9011,NULL),(9012,'Wesley_S._Walker'),(9013,'Sasha_Goldshtein'),(9014,'Josh_Cates'),(9015,'Krug_Stillo'),(9016,'Scott_LeBrun'),(9017,'Hannah_Steele'),(9018,'Vincent_Cadena'),(9019,'Brandt_Sponseller'),(9020,'Richard_Adams');
/*!40000 ALTER TABLE `reviewer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-01 21:00:09
