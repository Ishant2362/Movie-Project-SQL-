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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-01 22:27:16
