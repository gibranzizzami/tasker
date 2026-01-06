/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-12.0.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: pergerakan_saham_TOBA
-- ------------------------------------------------------
-- Server version	12.0.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `persentase_keseluruhan`
--

DROP TABLE IF EXISTS `persentase_keseluruhan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `persentase_keseluruhan` (
  `id_keseluruhan` int(11) NOT NULL AUTO_INCREMENT,
  `harian` varchar(100) DEFAULT NULL,
  `mingguan` varchar(100) DEFAULT NULL,
  `tahunan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_keseluruhan`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persentase_keseluruhan`
--

LOCK TABLES `persentase_keseluruhan` WRITE;
/*!40000 ALTER TABLE `persentase_keseluruhan` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `persentase_keseluruhan` VALUES
(1,'+2,65%','+7,54%','+153,27%');
/*!40000 ALTER TABLE `persentase_keseluruhan` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `tanggal`
--

DROP TABLE IF EXISTS `tanggal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tanggal` (
  `id_tanggal` int(11) NOT NULL AUTO_INCREMENT,
  `hari` varchar(20) DEFAULT NULL,
  `tanggal` varchar(100) DEFAULT NULL,
  `pergerakan` varchar(150) DEFAULT NULL,
  `persentase` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_tanggal`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tanggal`
--

LOCK TABLES `tanggal` WRITE;
/*!40000 ALTER TABLE `tanggal` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `tanggal` VALUES
(1,'jumat','10-Oktber-2025','+35','+2,65%'),
(2,'kamis','09-Oktober-2025','-60','-4,35%'),
(3,'Rabu','08-Oktober-2025','-60','-4,17%'),
(4,'selasa','07-Oktober-2025','+125','+9,51%'),
(5,'senin','06-Oktober-2025','+75','+6,05%');
/*!40000 ALTER TABLE `tanggal` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-10-13  0:20:46
