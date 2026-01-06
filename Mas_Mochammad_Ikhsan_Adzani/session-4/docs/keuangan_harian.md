# Database: keuangan_harian

Dump ini berisi struktur tabel dan data awal untuk pencatatan keuangan harian menggunakan **MariaDB**.

---

## Struktur Database & Data Awal

```sql
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
-- Table structure for table `kategori`
--

DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(100) NOT NULL,
  `tipe` enum('pemasukan','pengeluaran') NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `kategori` VALUES
(1,'Uang Mingguan','pemasukan'),
(2,'Makan','pengeluaran'),
(3,'Rokok','pengeluaran');

--
-- Table structure for table `transaksi`
--

DROP TABLE IF EXISTS `transaksi`;
CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `jumlah` decimal(12,2) NOT NULL,
  `metode_pembayaran` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_transaksi`),
  KEY `id_kategori` (`id_kategori`),
  CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `transaksi` VALUES
(4,'2025-10-17',1,'uang dari mamah',200000.00,'cash'),
(5,'2025-10-17',1,'uang dari mamah',100000.00,'e-wallet'),
(6,'2025-10-17',2,'warjok',10000.00,'e-wallet'),
(7,'2025-10-17',3,'dji-sam-soe',21000.00,'e-wallet'),
(8,'2025-10-17',2,'warjok',10000.00,'e-wallet');
