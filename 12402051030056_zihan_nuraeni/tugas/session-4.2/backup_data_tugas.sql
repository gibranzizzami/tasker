/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.13-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: READING_LOG
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
-- Table structure for table `Buku`
--

DROP TABLE IF EXISTS `Buku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Buku` (
  `id_Buku` int(11) NOT NULL AUTO_INCREMENT,
  `Judul` varchar(300) NOT NULL,
  `Penulis` varchar(100) DEFAULT NULL,
  `Tahun_Terbit` year(4) DEFAULT NULL,
  `Media` varchar(50) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_Buku`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Buku`
--

LOCK TABLES `Buku` WRITE;
/*!40000 ALTER TABLE `Buku` DISABLE KEYS */;
INSERT INTO `Buku` VALUES
(1,'No Longer Human','Osamu Dazai',1958,'Volume (Perpustakaan)','Selesai'),
(2,'The Alchemist','Paulo Coelho',1988,'Volume (Perpustakaan)','Selesai'),
(3,'The Broken Ring: This Marriage Will Fail Anyway','CHOKAM, Cheong-gwa',2021,'Manhwa','Baca'),
(4,'The Picture of Dorian Gray','Oscar Wilde',2021,'Volume (Perpustakaan)','Selesai'),
(5,'Ficciones','Jorge Luis Borges',1993,'Volume (Perpustakaan)','Selesai'),
(6,'WOrld War I & II','Dwi Adi WIcaksono',2024,'Volume (Perpustakaan)','Baca'),
(7,'Purple Hyacinth','Ephmerys, Sophism',2019,'Komik (Webtoon)','Baca');
/*!40000 ALTER TABLE `Buku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Status`
--

DROP TABLE IF EXISTS `Status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Status` (
  `id_status` int(11) NOT NULL AUTO_INCREMENT,
  `id_Buku` int(11) NOT NULL,
  `Tanggal_mulai` date NOT NULL,
  `Tanggal_selesai` date DEFAULT NULL,
  PRIMARY KEY (`id_status`),
  KEY `id_Buku` (`id_Buku`),
  CONSTRAINT `Status_ibfk_1` FOREIGN KEY (`id_Buku`) REFERENCES `Buku` (`id_Buku`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Status`
--

LOCK TABLES `Status` WRITE;
/*!40000 ALTER TABLE `Status` DISABLE KEYS */;
INSERT INTO `Status` VALUES
(1,1,'2024-10-29','2024-11-10'),
(6,2,'2024-11-10','2024-12-30'),
(7,3,'2022-12-07','2025-10-10');
/*!40000 ALTER TABLE `Status` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-12 20:56:04
