/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-12.0.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: jadwal_kuliah
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
-- Table structure for table `informasi_matakuliah`
--

DROP TABLE IF EXISTS `informasi_matakuliah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `informasi_matakuliah` (
  `id_jadwal` int(11) NOT NULL AUTO_INCREMENT,
  `nama_matakuliah` varchar(100) DEFAULT NULL,
  `hari` varchar(15) DEFAULT NULL,
  `jam_mulai` varchar(10) DEFAULT NULL,
  `jam_selesai` varchar(10) DEFAULT NULL,
  `no_ruangan` varchar(10) DEFAULT NULL,
  `dosen` varchar(50) DEFAULT NULL,
  `sks` varchar(1) DEFAULT NULL,
  `kode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_jadwal`),
  UNIQUE KEY `unik_kode` (`kode`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informasi_matakuliah`
--

LOCK TABLES `informasi_matakuliah` WRITE;
/*!40000 ALTER TABLE `informasi_matakuliah` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `informasi_matakuliah` VALUES
(1,'Teknologi Basis Data dan Jaringan','Senin','10:05','12:35','201','Al Muhdil Karim, S.IP, M.Hum.','3','FAH6025109'),
(2,'Bahasa Inggris','Selasa','10:05','12:05','407','Pita Merdeka, M.A','3','UIN6014203'),
(3,'Deskripsi Bibliografi Buku dan Non Buku','Selasa','13:00','16:20','105','Nurul Hayati, M.HUm.','4','FAH6025107'),
(4,'Sarana dan Tata Ruang Perpustakaan dan Kearsipan','Kamis','08:20','11:40','201','Lili Sudria Wenny, S.IP, M.Hum.','4','FAH6025110'),
(5,'Komunikasi untuk Perpustakaan dan Kearsipan','Kamis','13:00','14:40','104','Nurul Hayati, M.Hum','2','FAH6025111'),
(6,'Literasi Informasi','Jumat','13:00','16:30','103','Dr.Ade Abdul Hak S.Ag., S.S., M.Hum.','4','FAH6025108');
/*!40000 ALTER TABLE `informasi_matakuliah` ENABLE KEYS */;
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

-- Dump completed on 2025-10-13  8:08:44
