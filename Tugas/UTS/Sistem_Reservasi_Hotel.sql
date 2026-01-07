/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-12.0.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: Sistem_Reservasi_Hotel
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
-- Table structure for table `data_kamar`
--

DROP TABLE IF EXISTS `data_kamar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_kamar` (
  `id_kamar` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_kamar` int(10) DEFAULT NULL,
  `tipe_kamar` varchar(10) DEFAULT NULL,
  `harga_per_malam` int(10) DEFAULT NULL,
  `status_kamar` enum('Tersedia','Dipesan','Dibersihkan','Dibatalkan') DEFAULT 'Tersedia',
  PRIMARY KEY (`id_kamar`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_kamar`
--

LOCK TABLES `data_kamar` WRITE;
/*!40000 ALTER TABLE `data_kamar` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `data_kamar` VALUES
(1,101,'Standar',300000,'Tersedia'),
(2,102,'Standar',300000,'Tersedia'),
(3,103,'Standar',300000,'Dipesan'),
(4,104,'Standar',300000,'Tersedia'),
(5,105,'Standar',300000,'Dibersihkan');
/*!40000 ALTER TABLE `data_kamar` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `data_pembayaran`
--

DROP TABLE IF EXISTS `data_pembayaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_pembayaran` (
  `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT,
  `id_reservasi` int(11) DEFAULT NULL,
  `metode_pembayaran` enum('Tunai','Kartu','Transfer') DEFAULT NULL,
  `tanggal_pembayaran` date DEFAULT NULL,
  `jumlah_bayar` int(10) DEFAULT NULL,
  `status_pembayaran` enum('lunas','belum lunas') DEFAULT NULL,
  PRIMARY KEY (`id_pembayaran`),
  KEY `id_reservasi` (`id_reservasi`),
  CONSTRAINT `data_pembayaran_ibfk_1` FOREIGN KEY (`id_reservasi`) REFERENCES `data_reservasi` (`id_reservasi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_pembayaran`
--

LOCK TABLES `data_pembayaran` WRITE;
/*!40000 ALTER TABLE `data_pembayaran` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `data_pembayaran` VALUES
(1,1,'Kartu','2025-10-10',300000,'lunas'),
(2,2,'Transfer','2025-10-28',600000,'lunas');
/*!40000 ALTER TABLE `data_pembayaran` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `data_reservasi`
--

DROP TABLE IF EXISTS `data_reservasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_reservasi` (
  `id_reservasi` int(11) NOT NULL AUTO_INCREMENT,
  `id_tamu` int(11) DEFAULT NULL,
  `id_kamar` int(11) DEFAULT NULL,
  `tanggal_checkin` date DEFAULT NULL,
  `tanggal_checkout` date DEFAULT NULL,
  `jumlah_malam` int(11) DEFAULT NULL,
  `total_biaya` int(11) DEFAULT NULL,
  `status_reservasi` enum('Aktif','Selesai','Dibatalkan') DEFAULT 'Aktif',
  PRIMARY KEY (`id_reservasi`),
  KEY `id_tamu` (`id_tamu`),
  KEY `id_kamar` (`id_kamar`),
  CONSTRAINT `data_reservasi_ibfk_1` FOREIGN KEY (`id_tamu`) REFERENCES `data_tamu` (`id_tamu`),
  CONSTRAINT `data_reservasi_ibfk_2` FOREIGN KEY (`id_kamar`) REFERENCES `data_kamar` (`id_kamar`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_reservasi`
--

LOCK TABLES `data_reservasi` WRITE;
/*!40000 ALTER TABLE `data_reservasi` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `data_reservasi` VALUES
(1,1,1,'2025-10-10','2025-10-11',1,300000,'Selesai'),
(2,2,3,'2025-10-28','2025-10-30',2,600000,'Aktif');
/*!40000 ALTER TABLE `data_reservasi` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `data_tamu`
--

DROP TABLE IF EXISTS `data_tamu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_tamu` (
  `id_tamu` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT NULL,
  `no_identitas` varchar(30) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `no_telepon` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_tamu`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_tamu`
--

LOCK TABLES `data_tamu` WRITE;
/*!40000 ALTER TABLE `data_tamu` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `data_tamu` VALUES
(1,'Rehan','1234567890','Jl. Bahlul No.11 , Jakarta','08765432109','ardggfh@gyu.com'),
(2,'abur','2764874214','Jl. Menuju surga No.10','08423764198','abur9352@sydjs.com');
/*!40000 ALTER TABLE `data_tamu` ENABLE KEYS */;
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

-- Dump completed on 2025-10-28 17:14:17
