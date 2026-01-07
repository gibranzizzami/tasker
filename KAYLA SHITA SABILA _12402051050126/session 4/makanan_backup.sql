/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.13-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: MakananHarian
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
-- Table structure for table `makanan`
--

DROP TABLE IF EXISTS `makanan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `makanan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `nama_makanan` varchar(100) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `makanan`
--

LOCK TABLES `makanan` WRITE;
/*!40000 ALTER TABLE `makanan` DISABLE KEYS */;
INSERT INTO `makanan` VALUES
(1,'2025-10-06','Nasi uduk',15000),
(2,'2025-10-06','Nasi warteg',15000),
(3,'2025-10-06','Matchamu',15000),
(4,'2025-10-06','Buah buahan',10000),
(5,'2025-10-07','Nasi warteg',18000),
(6,'2025-10-07','Buah buahan',10000),
(7,'2025-10-07','Basreng',5000),
(8,'2025-10-08','Ayam geprek nasi',15000),
(9,'2025-10-08','Batagor',5000),
(10,'2025-10-08','Haus',10000),
(11,'2025-10-08','Buah buahan',10000),
(12,'2025-10-09','Nasi warteg',15000),
(13,'2025-10-09','Kopi sejuta jiwa',10000),
(14,'2025-10-09','Buah buahan',10000),
(15,'2025-10-09','Seblak',13000),
(16,'2025-10-10','Nasi ayam geprek',15000),
(17,'2025-10-10','Tahu bulat + sotong',5000),
(18,'2025-10-10','Buah buahan',10000);
/*!40000 ALTER TABLE `makanan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `makanan_backup`
--

DROP TABLE IF EXISTS `makanan_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `makanan_backup` (
  `id` int(11) NOT NULL DEFAULT 0,
  `tanggal` date DEFAULT NULL,
  `nama_makanan` varchar(100) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `makanan_backup`
--

LOCK TABLES `makanan_backup` WRITE;
/*!40000 ALTER TABLE `makanan_backup` DISABLE KEYS */;
INSERT INTO `makanan_backup` VALUES
(1,'2025-10-06','Nasi uduk',15000),
(2,'2025-10-06','Nasi warteg',15000),
(3,'2025-10-06','Matchamu',15000),
(4,'2025-10-06','Buah buahan',10000),
(5,'2025-10-07','Nasi warteg',18000),
(6,'2025-10-07','Buah buahan',10000),
(7,'2025-10-07','Basreng',5000),
(8,'2025-10-08','Ayam geprek nasi',15000),
(9,'2025-10-08','Batagor',5000),
(10,'2025-10-08','Haus',10000),
(11,'2025-10-08','Buah buahan',10000),
(12,'2025-10-09','Nasi warteg',15000),
(13,'2025-10-09','Kopi sejuta jiwa',10000),
(14,'2025-10-09','Buah buahan',10000),
(15,'2025-10-09','Seblak',13000),
(16,'2025-10-10','Nasi ayam geprek',15000),
(17,'2025-10-10','Tahu bulat + sotong',5000),
(18,'2025-10-10','Buah buahan',10000);
/*!40000 ALTER TABLE `makanan_backup` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-12 15:30:17
