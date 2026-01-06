/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.13-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: kdramas
-- ------------------------------------------------------
-- Server version	10.11.13-MariaDB-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `kdrama`
--

DROP TABLE IF EXISTS `kdrama`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `kdrama` (
  `id_kdrama` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) NOT NULL,
  `tahun_rilis` year(4) DEFAULT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `rating_pribadi` decimal(3,1) DEFAULT NULL,
  PRIMARY KEY (`id_kdrama`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kdrama`
--

LOCK TABLES `kdrama` WRITE;
/*!40000 ALTER TABLE `kdrama` DISABLE KEYS */;
INSERT INTO `kdrama` VALUES
(1,'Bon Appetit Your Majesty',2025,'Romance Comedy',10.0),
(2,'Moon Lovers',2016,'Saeguk',10.0),
(3,'Sweet Home',2020,'Horor',10.0),
(4,'The K2',2016,'Action',10.0),
(5,'All of Us Are Dead',2022,'Horor',10.0),
(6,'Taxi Driver',2021,'Action',10.0),
(7,'Healer',2016,'Action',10.0),
(8,'Whats Wrong With Secretary Kim',2018,'Romance',9.0),
(9,'True Beauty',2020,'Romance',9.0),
(10,'The First Responders',2022,'Action',8.0),
(11,'Newtopia',2025,'Romance Comedy',8.0);
/*!40000 ALTER TABLE `kdrama` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-10 11:04:45
