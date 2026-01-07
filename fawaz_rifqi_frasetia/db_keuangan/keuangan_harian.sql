/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-12.0.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: keuangan_harian
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
-- Table structure for table `pemasukan`
--

DROP TABLE IF EXISTS `pemasukan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pemasukan` (
  `id_pemasukan` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `deskripsi` varchar(100) DEFAULT NULL,
  `jumlah` decimal(12,2) NOT NULL,
  PRIMARY KEY (`id_pemasukan`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pemasukan`
--

LOCK TABLES `pemasukan` WRITE;
/*!40000 ALTER TABLE `pemasukan` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `pemasukan` VALUES
(1,'2025-10-09','sisa uang',212237.00);
/*!40000 ALTER TABLE `pemasukan` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `pengeluaran`
--

DROP TABLE IF EXISTS `pengeluaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pengeluaran` (
  `id_pengeluaran` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `deskripsi` varchar(100) DEFAULT NULL,
  `jumlah` decimal(12,2) NOT NULL,
  PRIMARY KEY (`id_pengeluaran`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengeluaran`
--

LOCK TABLES `pengeluaran` WRITE;
/*!40000 ALTER TABLE `pengeluaran` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `pengeluaran` VALUES
(1,'2025-10-09','mie ayam',12000.00),
(2,'2025-10-09','jajan mommy',34400.00),
(3,'2025-10-10','Takoyaki',20000.00),
(4,'2025-10-10','jajan warung',9500.00),
(5,'2025-10-10','Family Mart',36500.00),
(6,'2025-10-10','bensin',39000.00);
/*!40000 ALTER TABLE `pengeluaran` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `rekap_pemasukan`
--

DROP TABLE IF EXISTS `rekap_pemasukan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `rekap_pemasukan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `total_pemasukan` decimal(12,2) DEFAULT 0.00,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rekap_pemasukan`
--

LOCK TABLES `rekap_pemasukan` WRITE;
/*!40000 ALTER TABLE `rekap_pemasukan` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `rekap_pemasukan` VALUES
(1,'2025-10-09',212237.00);
/*!40000 ALTER TABLE `rekap_pemasukan` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `rekap_pengeluaran`
--

DROP TABLE IF EXISTS `rekap_pengeluaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `rekap_pengeluaran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `total_pengeluaran` decimal(12,2) DEFAULT 0.00,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tanggal` (`tanggal`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rekap_pengeluaran`
--

LOCK TABLES `rekap_pengeluaran` WRITE;
/*!40000 ALTER TABLE `rekap_pengeluaran` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `rekap_pengeluaran` VALUES
(1,'2025-10-09',46400.00),
(2,'2025-10-10',105000.00),
(4,'2025-10-12',46000.00);
/*!40000 ALTER TABLE `rekap_pengeluaran` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Temporary table structure for view `rekap_total_harian`
--

DROP TABLE IF EXISTS `rekap_total_harian`;
/*!50001 DROP VIEW IF EXISTS `rekap_total_harian`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `rekap_total_harian` AS SELECT
 1 AS `tanggal`,
  1 AS `total_pemasukan`,
  1 AS `total_pengeluaran` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `sisa_saldo`
--

DROP TABLE IF EXISTS `sisa_saldo`;
/*!50001 DROP VIEW IF EXISTS `sisa_saldo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `sisa_saldo` AS SELECT
 1 AS `tanggal`,
  1 AS `total_pemasukan`,
  1 AS `total_pengeluaran`,
  1 AS `saldo_akhir` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `transaksi`
--

DROP TABLE IF EXISTS `transaksi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `kategori` enum('Pemasukan','Pengeluaran') NOT NULL,
  `jumlah` decimal(12,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksi`
--

LOCK TABLES `transaksi` WRITE;
/*!40000 ALTER TABLE `transaksi` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `transaksi` VALUES
(1,'2025-10-09','sisa uang','Pemasukan',212237.00),
(2,'2025-10-09','mie ayam','Pengeluaran',12000.00),
(3,'2025-10-09','jajan mommy','Pengeluaran',34400.00),
(4,'2025-10-10','Takoyaki','Pengeluaran',20000.00),
(5,'2025-10-10','jajan warung','Pengeluaran',9500.00),
(6,'2025-10-10','Family Mart','Pengeluaran',36500.00),
(7,'2025-10-10','bensin','Pengeluaran',39000.00),
(8,'2025-10-12','Familymart','Pengeluaran',16000.00),
(9,'2025-10-12','IT Galeri','Pengeluaran',30000.00);
/*!40000 ALTER TABLE `transaksi` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER after_insert_transaksi_pengeluaran
AFTER INSERT ON transaksi
FOR EACH ROW
BEGIN
    IF NEW.kategori = 'Pengeluaran' THEN
        INSERT INTO rekap_pengeluaran (tanggal, total_pengeluaran)
        VALUES (NEW.tanggal, NEW.jumlah)
        ON DUPLICATE KEY UPDATE total_pengeluaran = total_pengeluaran + NEW.jumlah;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `rekap_total_harian`
--

/*!50001 DROP VIEW IF EXISTS `rekap_total_harian`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_uca1400_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `rekap_total_harian` AS select `transaksi`.`tanggal` AS `tanggal`,coalesce(sum(case when `transaksi`.`kategori` = 'Pemasukan' then `transaksi`.`jumlah` end),0) AS `total_pemasukan`,coalesce(sum(case when `transaksi`.`kategori` = 'Pengeluaran' then `transaksi`.`jumlah` end),0) AS `total_pengeluaran` from `transaksi` group by `transaksi`.`tanggal` order by `transaksi`.`tanggal` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sisa_saldo`
--

/*!50001 DROP VIEW IF EXISTS `sisa_saldo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_uca1400_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sisa_saldo` AS select `rekap_total_harian`.`tanggal` AS `tanggal`,`rekap_total_harian`.`total_pemasukan` AS `total_pemasukan`,`rekap_total_harian`.`total_pengeluaran` AS `total_pengeluaran`,sum(`rekap_total_harian`.`total_pemasukan` - `rekap_total_harian`.`total_pengeluaran`) over ( order by `rekap_total_harian`.`tanggal` rows between  unbounded  preceding  and  current row ) AS `saldo_akhir` from `rekap_total_harian` order by `rekap_total_harian`.`tanggal` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-10-12 16:42:09
