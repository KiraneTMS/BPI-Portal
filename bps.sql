-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: bps
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `akses_menu`
--

DROP TABLE IF EXISTS `akses_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `akses_menu` (
  `IDAksesMenu` int NOT NULL AUTO_INCREMENT,
  `IDRole` int NOT NULL,
  `IDMenu` int NOT NULL,
  `is_read` int NOT NULL,
  `is_create` int NOT NULL,
  `is_update` int NOT NULL,
  `is_delete` int NOT NULL,
  PRIMARY KEY (`IDAksesMenu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `akses_menu`
--

LOCK TABLES `akses_menu` WRITE;
/*!40000 ALTER TABLE `akses_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `akses_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articles` (
  `id_articles` int NOT NULL AUTO_INCREMENT,
  `title_articles` varchar(64) NOT NULL,
  `content_articles` longtext NOT NULL,
  `image_articles` varchar(128) NOT NULL,
  `aktif_articles` int NOT NULL,
  `tanggal_articles` varchar(128) DEFAULT NULL,
  `keyword_articles` varchar(64) NOT NULL,
  `created_at_articles` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at_articles` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_articles`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,'Pengecatan pada deck Kapal MT Ivani','<div class=\"field field-name-body field-type-text-with-summary field-label-hidden\"><div class=\"field-items\"><div class=\"field-item even\"><div class=\"field field-name-body field-type-text-with-summary field-label-hidden\"><div class=\"field-items\"><div class=\"field-item even\"><p>Toolbox meeting perawatan kapal MT Ivani pada 2 Desember 2020 yaitu:</p>\r\n<p>a.&nbsp;Repainting stair boat deck and main deck with black and yellow colours.</p>\r\n<p>b.&nbsp;epainting water tide door and engsel bosun store forward , \r\nrepainting pipe drawing line and eye washer poop deck with white and \r\nblue colours</p>\r\n</div></div></div></div></div></div>','WhatsApp_Image_2020-12-02_at_17_01_04_(1).jpeg',1,'2022-10-20','baker','2022-10-09 08:30:28','2022-11-02 05:15:24'),(3,'New Project dengan PT PHKT','<p>Kapal yang digunakan yaitu kapal MT Tameda Maru No.3</p>\r\n<p>Tentunya, pihak PT Global Total Lubrindo tetap menjaga keselamatan dan mengikuti protokol kesehatan.</p><p></p>','WhatsApp_Image_2020-11-26_at_10_14_29.jpeg',1,'2022-11-02','shipgo','2022-11-02 05:16:10',NULL),(4,'Kegiatan Bunker Kapal MT Tameda Maru ','<p>Gambar diatas merupakan&nbsp;Kegiatan Bunker Kapal MT Tameda Maru No.3 pada 23 November 2020.</p>','WhatsApp_Image_2020-11-23_at_16_13_55.jpeg',1,'2022-11-02','shipgo','2022-11-02 05:17:00',NULL),(5,'Pembersihan Strainer dan Cargo Pump Kapal MT Tameda Maru','Pembersihan Strainer dan Cargo Pump Kapal MT Tameda Maru No.3 pada 19 November 2020','IMG-20180313-WA0105.jpg',1,'2022-11-02','shipgo','2022-11-02 05:18:11','2022-11-02 09:45:35');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bankdata_customer`
--

DROP TABLE IF EXISTS `bankdata_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bankdata_customer` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `NumberCard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Bank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TypeCard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `NameCustomer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `PIC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `AssignmentDate` date NOT NULL,
  `ExpireDate` date NOT NULL,
  `DateOfBirth` date NOT NULL,
  `OpenDate` date NOT NULL,
  `WODate` date NOT NULL,
  `LastPayDate` date NOT NULL,
  `LastTransactionDate` date NOT NULL,
  `LastPayment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `LastTransactionNominal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Limit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Principal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `MinPay` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `OSBalance` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `City` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `OfficeName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `OfficeAddress1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `OfficeAddress2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `OfficeAddress3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `OfficeAddress4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `HomePhone1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `HomePhone2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `OfficePhone1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `OfficePhone2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ECPhone1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ECPhone2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `OtherNumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ECName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ECName2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `StatusEC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `StatusEC2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `MotherName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `VirtualAccount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `VirtualAccountName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Komoditi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `KomoditiType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Produsen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `LoanTerm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `InstallmentAlreadyPaid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `MonthlyPaymentNominal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `DPD` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Bucket` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `BillingNoPenalty` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `DendaBelumDibayar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `LastVisitDate` datetime NOT NULL,
  `LastVisitResult` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `LastReport` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `LastVisitAddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `OTSOffer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `OtherData1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `OtherData2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `OtherData3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `OtherData4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `OtherData5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `PermanentMessage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Deskcoll_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `IsDeletedByAdmin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Report` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Action` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ReportDate` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `PTPDate` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `PTPAmount` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `PaidDate` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `PaidAmount` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at_bankdata_customer` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at_bankdata_customer` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_user_bankdata_customer` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bankdata_customer`
--

LOCK TABLES `bankdata_customer` WRITE;
/*!40000 ALTER TABLE `bankdata_customer` DISABLE KEYS */;
INSERT INTO `bankdata_customer` VALUES (1,'2024-08-09 07:05:38',NULL,'5435','4365','43654','3654','365','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','6543','6543','6543654','365','43','6543','6543','543','654','3654','365','436','543','6543','654','3654','365','43','6453','6453','6543','6543','6543','654','3654','3654','36','543','6543','654','365','4365','43654','3','6543','6543','654','3654','3654','36','543','6543','6453','654','3654','0000-00-00 00:00:00','365','436','543','654','3654','3654','365436453','6543','654','36','543','6543','6543','6543','6543','653','65436','6543','6543654','2024-08-09 07:05:38',NULL,2);
/*!40000 ALTER TABLE `bankdata_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carousel`
--

DROP TABLE IF EXISTS `carousel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carousel` (
  `id_carousel` int NOT NULL AUTO_INCREMENT,
  `subtitle_carousel` text NOT NULL,
  `title_carousel` text NOT NULL,
  `image_carousel` text NOT NULL,
  `aktif_carousel` int NOT NULL,
  `created_at_carousel` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at_carousel` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_carousel`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carousel`
--

LOCK TABLES `carousel` WRITE;
/*!40000 ALTER TABLE `carousel` DISABLE KEYS */;
INSERT INTO `carousel` VALUES (19,'Dikelola secara profesional, menghindari benturan kepentingan, tidak toleransi terhadap suap, menjunjung tinggi integritas','Clean & Integrity','3.jpg',1,'2022-11-02 01:23:51','2022-11-02 02:48:39'),(22,'Mampu berkompetisi dalam skala regional maupun internasional, mendorong pertumbuhan melalui investasi','Competitive ','carusol2.jpg',1,'2022-11-02 02:04:04','2022-11-02 02:48:20'),(23,'Berorientasi pada kepentingan pelanggan, dan berkomitmen untuk memberikan pelayanan terbaik kepada pelanggan','Customer Focused','carusol3.jpg',1,'2022-11-02 02:09:57',NULL),(24,'Menciptakan nilai tambah dengan orientasi komersial, mengambil keputusan berdasarkan prinsip-prinsip bisnis yang sehat','Commercial','WhatsApp_Image_2022-02-15_at_10_32_09_(1)1.jpeg',1,'2022-11-02 02:11:45','2022-11-02 09:52:44'),(25,'Dikelola secara profesional dan memiliki talenta dan penguasaan teknis tinggi, berkomitmen dalam inovasi riset','Capable ','IMG-20131108-03237.jpg',1,'2022-11-02 02:12:56','2022-11-02 09:42:38'),(26,'Berorientasi pada kepentingan dan berkomitmen untuk memberikan layanan terbaik kepada customer dan stakeholder','Service Excellence','WhatsApp_Image_2022-01-03_at_11_33_05_(1).jpeg',1,'2022-11-02 02:14:40','2022-11-02 09:54:01');
/*!40000 ALTER TABLE `carousel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_profile`
--

DROP TABLE IF EXISTS `company_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_profile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `alamat` varchar(500) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nomor_telepon` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_profile`
--

LOCK TABLES `company_profile` WRITE;
/*!40000 ALTER TABLE `company_profile` DISABLE KEYS */;
INSERT INTO `company_profile` VALUES (1,'MT Haryono Square\r\nJl. MT. Haryono Kav.10, Blok B8b\r\nKel. Bidara Cina, Kec. Jatinegara\r\nJakarta Timur','info@gendehgroup.com','021-29067354');
/*!40000 ALTER TABLE `company_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devsetting`
--

DROP TABLE IF EXISTS `devsetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `devsetting` (
  `id` int NOT NULL AUTO_INCREMENT,
  `devkey` varchar(256) NOT NULL,
  `devvalue` varchar(256) NOT NULL,
  `ket` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devsetting`
--

LOCK TABLES `devsetting` WRITE;
/*!40000 ALTER TABLE `devsetting` DISABLE KEYS */;
INSERT INTO `devsetting` VALUES (3,'TITLE','Portal Data BPS','title web'),(4,'COLOR_WEB','#2879c1','biru = #2879c1,hijau = #1fa12e'),(5,'LANDING','true','true atau false');
/*!40000 ALTER TABLE `devsetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id_faqs` int NOT NULL AUTO_INCREMENT,
  `text_faqs` text NOT NULL,
  `answer_faqs` text NOT NULL,
  `sort_faqs` int NOT NULL,
  `is_active` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_faqs`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (12,'Apa Itu Shipgo?','ShipGo adalah Platform yang bergerak di Jasa Pengiriman Pengiriman Bahan Bakar serta Jasa Handling Pengurusan Kontrak Kontrak Pengiriman Bahan Bakar.  Kami bekerja secara yang Profesional dengan pengiriman tepat waktu, minimum Losses dengan Safety yang Maksimal',1,1),(13,'Barang Apa Saya yang bisa diangkut?','Saat ini kami masih berfokus mengangkut Solar milik PT. Pertamina dan Perusahaan MIGAS lainnya',2,1),(14,'Bagaimana Cara Menghubungi Shipgo','Silahkan Menghubungi Bagian Sales kami di Alamat: MT Haryono Square Jl. MT. Haryono Kav.10, Blok B8b Kel. Bidara Cina, Kec. Jatinegara Jakarta Timur, Phone: 021-29067354',3,1);
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `halaman`
--

DROP TABLE IF EXISTS `halaman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `halaman` (
  `id_halaman` int NOT NULL AUTO_INCREMENT,
  `title_halaman` varchar(128) NOT NULL,
  `image_halaman` varchar(64) NOT NULL,
  `short_halaman` varchar(128) NOT NULL,
  `content_halaman` longtext NOT NULL,
  `meta_keyword_halaman` varchar(128) NOT NULL,
  `meta_desc_halaman` varchar(128) NOT NULL,
  `aktif_halaman` int NOT NULL DEFAULT '1',
  `created_at_halaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at_halaman` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_halaman`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `halaman`
--

LOCK TABLES `halaman` WRITE;
/*!40000 ALTER TABLE `halaman` DISABLE KEYS */;
INSERT INTO `halaman` VALUES (1,'Our Services','IMG-20131108-032371.jpg','1','<p><b>ShipGo </b>adalah Platform yang bergerak di Jasa Pengiriman Bahan \r\nBakar serta Jasa Handling Pengurusan Kontrak Kontral Pengiriman Bahan \r\nBakar.  Kami bekerja secara yang Profesional dengan pengiriman tepat \r\nwaktu, minimum Losses dengan Safety yang Maksimal</p><h3><b>Nilai Perusahaan</b></h3><p><b>Clean & Integrity</b><br>Dikelola\r\n secara profesional, menghindari benturan kepentingan, tidak toleransi \r\nterhadap suap, menjunjung tinggi kepercayaan dan integritas, serta \r\nberpedoman kepada asas-asas tata kelola korporasi yang baik.<br><b><br>Competitive</b><br>Mampu\r\n berkompetisi dalam skala regional maupun internasional, mendorong \r\npertumbuhan melalui investasi, membangun budaya sadar biaya dan \r\nmenghargai.<br><b><br>Customer Focused</b><br>Berorientasi pada kepentingan pelanggan, dan berkomitmen untuk memberikan pelayanan terbaik kepada pelanggan.<br><br><br></p>','Shipgo','pengiriman cargo solar',1,'2022-10-09 10:14:15','2022-11-02 09:49:38'),(2,'Our Strenght','WhatsApp_Image_2022-02-15_at_10_32_09_(1).jpeg','2','<h2>Menciptakan Nilai Tambah<br></h2><b>Commercial (Komersial)</b><br>Menciptakan nilai tambah dengan orientasi komersial, mengambil keputusan berdasarkan prinsip-prinsip bisnis yang sehat.<br><b><br>Capable (Berkemampuan)</b><br>Dikelola oleh pemimpin dan pekerja yang profesional dan memiliki talenta dan penguasaan teknis tinggi, berkomitmen dalam membangun kemampuan riset dan pengembangan.<br><b><br>Service Excellence (Pelayanan Prima)</b><br>Berorientasi pada kepentingan dan berkomitmen untuk memberikan layanan terbaik kepada customer, vendor dan transportir<br><br>','kework','desc',1,'2022-10-09 10:14:15','2022-11-02 09:52:27'),(4,'Layanan Angkutan BBM','tengah21.jpg','4','<h1>Fuel Transportation</h1><p>Sebagai perusahaan transportasi BBM \r\nIndustri, kami memberikan layanan kepada para pelanggan kami dengan \r\njaminan kualitas, jumlah, tempat dan ketepatan waktu.</p>','kework','desc',1,'2022-10-09 10:14:15','2022-11-02 02:21:04'),(5,'Layanan Fuel Handling ','tengah5.jpg','5','<h1>Fuel Management</h1><p>Merupakan jasa yang disediakan oleh PT. \r\nHema Shipping Indonesia  Niaga untuk menangani pengelolaan BBM Industri \r\nhingga sampai di lokasi pelanggan dan juga merupakan layanan harian \r\nterkait penyaluran BBM Industri di lokasi tersebut, yang dilakukan baik \r\nuntuk BBM kepemilikan sendiri atau pihak kepemilikan niaga lainnya.</p>','kework','desc',1,'2022-10-09 10:14:15','2022-11-02 02:25:36');
/*!40000 ALTER TABLE `halaman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leavemsg`
--

DROP TABLE IF EXISTS `leavemsg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leavemsg` (
  `id_leavemsg` int NOT NULL AUTO_INCREMENT,
  `nama_leavemsg` varchar(128) NOT NULL,
  `email_leavemsg` varchar(128) NOT NULL,
  `no_leavemsg` varchar(16) NOT NULL,
  `msg_leavemsg` text NOT NULL,
  `approve_leavemsg` int NOT NULL DEFAULT '1',
  `created_at_leavemsg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at_leavemsg` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_leavemsg`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leavemsg`
--

LOCK TABLES `leavemsg` WRITE;
/*!40000 ALTER TABLE `leavemsg` DISABLE KEYS */;
INSERT INTO `leavemsg` VALUES (1,'Agus','agus@gmail.com','2147483647','Halo...Pelayanan Sangat Bagus Sekali',1,'2022-10-09 08:54:46','2022-10-24 03:36:18'),(2,'Asep','asep@gmail.com','2147483647','Pelayanan Dari CS Nya Ramah',1,'2022-10-09 09:06:49','2022-10-24 03:36:20'),(4,'Caya','muhammadbintangcahyaputra@gmail.com','08989843214','Mantap',1,'2022-10-09 09:09:11','2022-10-24 03:36:22'),(5,'dasdad','dasd@ada.com','2131312312','adasdada',1,'2022-10-18 02:29:24','2022-10-18 02:30:06'),(6,'Pertamina','pertamina@gmail.com','085220022884','Pelayanan sangat cepat dan teliti serta ramah',2,'2022-10-24 03:37:53','2022-10-24 03:37:59');
/*!40000 ALTER TABLE `leavemsg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link`
--

DROP TABLE IF EXISTS `link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `link` (
  `id_link` int NOT NULL AUTO_INCREMENT,
  `nama_link` varchar(100) NOT NULL,
  `url_link` text NOT NULL,
  `sort_link` int NOT NULL,
  PRIMARY KEY (`id_link`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link`
--

LOCK TABLES `link` WRITE;
/*!40000 ALTER TABLE `link` DISABLE KEYS */;
INSERT INTO `link` VALUES (1,'BPH Migas','https://www.bphmigas.go.id',3),(2,'Pertamina','https://www.pertamina.com/',4),(3,'Peduli Lindungi Covid19','https://www.pedulilindungi.id/',1),(11,'Kementrian ESDM','https://www.esdm.go.id',2);
/*!40000 ALTER TABLE `link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `IDMenu` int NOT NULL AUTO_INCREMENT,
  `namamenu` varchar(50) NOT NULL,
  `url_menu` varchar(100) NOT NULL,
  `icon_menu` varchar(100) NOT NULL,
  `is_head` int NOT NULL,
  `level_menu` int NOT NULL,
  `menu_head` int NOT NULL DEFAULT '0',
  `sort` int NOT NULL,
  `is_active` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`IDMenu`)
) ENGINE=MyISAM AUTO_INCREMENT=130 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'Dashboard','dashboard','fas fa-fw fa-tachometer-alt',0,1,0,1,1),(4,'Web Control','#','fas fa-fw fa-cogs',1,1,0,20,1),(6,'Menu','menu','fas fa-fw fa-folder-minus',0,2,4,3,1),(24,'Role','role','fas fa-fw fa-users',0,2,4,2,1),(25,'Users','user','fas fa-fw fa-user',0,2,4,1,1),(30,'Dev Setting','devsetting','fas fa-fw fa-cogs',0,2,4,4,1),(88,'Bayar Invoice Vendor','pembayaraninvoicevendor','fa fa-play',0,2,82,2,1),(89,'Modul Piutang','#','fa fa-play',1,1,0,4,0),(91,'Pengurusan Dokumen','PengurusanDokumen','fa fa-play',0,2,92,2,1),(56,'Tabel Parameter','#','fa fa-id-card',1,1,0,1,1),(119,'Kontrak Customer','kontrak_customer','fa fa-play',0,2,65,2,1),(64,'Provinsi','provinsi','fa fa-table',0,2,56,2,1),(85,'Pemeliharaan Armada','pemeliharaanarmada','fa fa-play',0,2,92,3,1),(66,'Jabatan Karyawan','jabatan','fa fa-table',0,2,56,4,1),(65,'Modul Penjualan','#','fa fa-play',1,1,0,2,1),(67,'Divisi Organisasi','divisi_organisasi','fa fa-table',0,2,56,3,1),(68,'Nama Perusahaan','perusahaan','fa fa-table',0,2,56,4,1),(69,'Karyawan','karyawan','fa fa-table',0,2,56,5,1),(70,'Armada Kapal','armada_kapal','fa fa-table',0,2,56,6,1),(71,'Armada Truck','armada_truck','fa fa-table',0,2,56,7,1),(72,'Pelabuhan Laut','pelabuhan_laut','fa fa-table',0,2,56,8,1),(73,'Customer/Pelanggan','customer','fa fa-table',0,2,56,9,1),(74,'Supplier/Vendor','supplier','fa fa-table',0,2,56,10,1),(120,'Modul Pengiriman','#','fa fa-play',1,1,0,3,1),(112,'Sosial Media','sosmed','fa fa-table',0,2,94,10,1),(118,'Kab/Kota','kabkota','fa fa-table',0,2,56,3,1),(78,'Penjualan','penjualan','fa fa-play',0,2,65,2,1),(80,'Invoice Customer','invoicingcustomer','fa fa-play',0,2,89,1,1),(124,'Pengiriman Barang','pengiriman_barang','fa fa-play',0,2,120,3,1),(82,'Modul Hutang','#','fa fa-play',1,1,0,5,0),(87,'Invoice Jasa Vendor','invoicesuppliervendor','fa fa-play',0,2,82,1,1),(94,'Web Profile','#','fas fa-fw fa-tachometer-alt',1,1,0,20,1),(96,'Menu Landing','menulanding','fas fa-fw fa-tachometer-alt',0,2,94,3,1),(97,'Carousel','carousel','fas fa-fw fa-tachometer-alt',0,2,94,5,1),(103,'Link Footer','link','fas fa-fw fa-table',0,2,94,15,1),(98,'Faqs','faqs','fas fa-fw fa-table',0,2,94,6,1),(99,'Articles','articles','fas fa-fw fa-table',0,2,94,7,1),(100,'Leave Message','leavemsg','fas fa-fw fa-table',0,2,94,10,1),(101,'Menu Bawah','menubawah','fas fa-fw fa-table',0,2,94,13,1),(102,'Our Client','ourclient','fas fa-fw fa-table',0,2,94,12,1),(104,'Halaman','halaman','fas fa-fw fa-table',0,2,94,20,1),(105,'Menu Tengah','menutengah','fas fa-fw fa-table',0,2,94,19,1),(106,'Testimonial','Testimonial','fa fa-table',0,2,94,20,1),(123,'Informasi Pembelian','#','fa fa-table',1,1,0,8,1),(117,'Penawaran Harga','penawaran_harga','fa fa-play',0,2,65,1,1),(128,'Bank Data','bankdata_customer','fas fa-fw fa-box',0,1,0,2,1),(129,'Pengeluaran Kelompok Makanan','pengeluarankelompokmakanan','fas fa-fw fa-history',0,1,0,10,1);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_landing`
--

DROP TABLE IF EXISTS `menu_landing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_landing` (
  `id_menu_landing` int NOT NULL AUTO_INCREMENT,
  `href` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` int NOT NULL DEFAULT '1' COMMENT '1 = aktif, 2 = mati',
  PRIMARY KEY (`id_menu_landing`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_landing`
--

LOCK TABLES `menu_landing` WRITE;
/*!40000 ALTER TABLE `menu_landing` DISABLE KEYS */;
INSERT INTO `menu_landing` VALUES (1,'#about','About',1),(2,'#services','Services',1),(3,'#contact','Contact',1);
/*!40000 ALTER TABLE `menu_landing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_utama`
--

DROP TABLE IF EXISTS `menu_utama`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_utama` (
  `id_menu_utama` int NOT NULL AUTO_INCREMENT,
  `nama_menu_utama` varchar(200) NOT NULL,
  `url_menu_utama` varchar(200) NOT NULL,
  `sort_menu_utama` int NOT NULL,
  `is_active` int NOT NULL,
  PRIMARY KEY (`id_menu_utama`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_utama`
--

LOCK TABLES `menu_utama` WRITE;
/*!40000 ALTER TABLE `menu_utama` DISABLE KEYS */;
INSERT INTO `menu_utama` VALUES (2,'Beranda','#landing',1,1),(3,'Tentang Kami','#faq',2,1),(4,'Informasi & Media','#projects',3,1),(5,'Ruang Anggota','auth/register',4,1),(6,'Hubungi Kami','#footer',5,1);
/*!40000 ALTER TABLE `menu_utama` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menubawah`
--

DROP TABLE IF EXISTS `menubawah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menubawah` (
  `id_menubawah` int NOT NULL AUTO_INCREMENT,
  `name_menubawah` varchar(128) NOT NULL,
  `id_halaman` int NOT NULL,
  `posisi` int NOT NULL,
  PRIMARY KEY (`id_menubawah`),
  UNIQUE KEY `posisi` (`posisi`),
  UNIQUE KEY `id_halaman` (`id_halaman`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menubawah`
--

LOCK TABLES `menubawah` WRITE;
/*!40000 ALTER TABLE `menubawah` DISABLE KEYS */;
INSERT INTO `menubawah` VALUES (1,'About Us',1,1),(2,'Why Us',2,2);
/*!40000 ALTER TABLE `menubawah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menudepan`
--

DROP TABLE IF EXISTS `menudepan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menudepan` (
  `id_menudepan` int NOT NULL AUTO_INCREMENT,
  `title_menudepan` varchar(64) NOT NULL,
  `href_menudepan` text NOT NULL,
  `parent_menudepan` int NOT NULL,
  `aktif_menudepan` int NOT NULL,
  `created_at_menudepan` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at_menudepan` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_menudepan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menudepan`
--

LOCK TABLES `menudepan` WRITE;
/*!40000 ALTER TABLE `menudepan` DISABLE KEYS */;
/*!40000 ALTER TABLE `menudepan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menulanding`
--

DROP TABLE IF EXISTS `menulanding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menulanding` (
  `id_menulanding` int NOT NULL AUTO_INCREMENT,
  `href_menulanding` varchar(64) NOT NULL,
  `id_halaman` int NOT NULL,
  `jenis_menulanding` int NOT NULL DEFAULT '1' COMMENT '1 = href, 2 = halaman',
  `level_menulanding` int NOT NULL DEFAULT '1',
  `head_menulanding` int NOT NULL DEFAULT '0',
  `name_menulanding` varchar(64) NOT NULL,
  `parent_menulanding` int DEFAULT NULL,
  `sort_menulanding` int NOT NULL DEFAULT '100',
  `status_menulanding` int NOT NULL DEFAULT '1' COMMENT '1 = aktif, 2 = mati',
  PRIMARY KEY (`id_menulanding`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menulanding`
--

LOCK TABLES `menulanding` WRITE;
/*!40000 ALTER TABLE `menulanding` DISABLE KEYS */;
INSERT INTO `menulanding` VALUES (1,'#about',0,1,1,0,'About',NULL,10,1),(2,'#services',0,1,1,0,'Services',NULL,20,1),(3,'#contact',0,1,1,0,'Contact Us',NULL,50,1),(12,'#news',0,1,1,0,'News',NULL,40,1),(13,'#ourships',0,1,1,0,'Our Ships',NULL,30,1);
/*!40000 ALTER TABLE `menulanding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menutengah`
--

DROP TABLE IF EXISTS `menutengah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menutengah` (
  `id_menutengah` int NOT NULL AUTO_INCREMENT,
  `id_halaman` int NOT NULL,
  `posisi` int NOT NULL,
  PRIMARY KEY (`id_menutengah`),
  UNIQUE KEY `posisi` (`posisi`),
  UNIQUE KEY `id_halaman` (`id_halaman`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menutengah`
--

LOCK TABLES `menutengah` WRITE;
/*!40000 ALTER TABLE `menutengah` DISABLE KEYS */;
INSERT INTO `menutengah` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5);
/*!40000 ALTER TABLE `menutengah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ourclient`
--

DROP TABLE IF EXISTS `ourclient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ourclient` (
  `id_ourclient` int NOT NULL AUTO_INCREMENT,
  `image_ourclient` varchar(128) NOT NULL,
  PRIMARY KEY (`id_ourclient`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ourclient`
--

LOCK TABLES `ourclient` WRITE;
/*!40000 ALTER TABLE `ourclient` DISABLE KEYS */;
INSERT INTO `ourclient` VALUES (8,'pertamina.jpg'),(9,'elnusa.jpg');
/*!40000 ALTER TABLE `ourclient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pengeluarankelompokmakanan`
--

DROP TABLE IF EXISTS `pengeluarankelompokmakanan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pengeluarankelompokmakanan` (
  `id` int NOT NULL,
  `kelompok` varchar(16) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kota` double DEFAULT NULL,
  `desa` double DEFAULT NULL,
  `jumlah` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengeluarankelompokmakanan`
--

LOCK TABLES `pengeluarankelompokmakanan` WRITE;
/*!40000 ALTER TABLE `pengeluarankelompokmakanan` DISABLE KEYS */;
INSERT INTO `pengeluarankelompokmakanan` VALUES (0,'Padi-padian',62.877,77.664,66.331),(1,'Umbi-umbian',5.666,4.449,5.381),(2,'Ikan',39.863,30.445,37.663),(3,'Daging',34479,24.09,32.053),(4,'Telur dan susu',40.783,26.601,37.471),(5,'Sayur-sayuran',13.177,12.625,13.049),(6,'Kacang-kacangan',13.177,12.625,13.049),(7,'Buah-buahan',32.997,23.356,30.746),(8,'Minyak dan lemak',12.765,12.02,12591),(9,'Bahan minuman',18.573,19.069,18.689),(10,'Bumbu-bumbuan',13.162,11.591,12.795),(11,'Konsumsi lainnya',13.125,11.791,12.813),(12,'Makanan dan minu',269.941,188.168,250.843),(13,'Tembakau dan sir',81.78,90169,83.739);
/*!40000 ALTER TABLE `pengeluarankelompokmakanan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pengeluarankelompoknonmakanan`
--

DROP TABLE IF EXISTS `pengeluarankelompoknonmakanan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pengeluarankelompoknonmakanan` (
  `id` int NOT NULL,
  `kelompok` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kota` double DEFAULT NULL,
  `desa` double DEFAULT NULL,
  `jumlah` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengeluarankelompoknonmakanan`
--

LOCK TABLES `pengeluarankelompoknonmakanan` WRITE;
/*!40000 ALTER TABLE `pengeluarankelompoknonmakanan` DISABLE KEYS */;
INSERT INTO `pengeluarankelompoknonmakanan` VALUES (1,'Perumahan dan Fasilitas rumah tangga',369.627,206.655,331.566),(2,'Barang dan jasa',193.461,91.296,169.601),(3,'Pakaian, alas kaki dan tutup kepala',40.734,30.579,38.363),(4,'Barang-barang yang tahan lama',68.189,38.615,61.282),(5,'Pajak dan asuransi',45.667,20.937,39.892),(6,'Keperluan pesta dan upacara',30.646,21.108,28.418);
/*!40000 ALTER TABLE `pengeluarankelompoknonmakanan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permintaanakses`
--

DROP TABLE IF EXISTS `permintaanakses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permintaanakses` (
  `id_permintaanakses` int NOT NULL AUTO_INCREMENT,
  `IDUser` int NOT NULL,
  `tabel` text NOT NULL,
  `status` int NOT NULL COMMENT '0=tidak,1=menunggu,2=disetujui',
  PRIMARY KEY (`id_permintaanakses`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permintaanakses`
--

LOCK TABLES `permintaanakses` WRITE;
/*!40000 ALTER TABLE `permintaanakses` DISABLE KEYS */;
/*!40000 ALTER TABLE `permintaanakses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persentasekelompokmakanan`
--

DROP TABLE IF EXISTS `persentasekelompokmakanan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persentasekelompokmakanan` (
  `id` bigint NOT NULL,
  `kelompok` varchar(16) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `persentase` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persentasekelompokmakanan`
--

LOCK TABLES `persentasekelompokmakanan` WRITE;
/*!40000 ALTER TABLE `persentasekelompokmakanan` DISABLE KEYS */;
INSERT INTO `persentasekelompokmakanan` VALUES (0,'Umbi-umbian',0.41),(1,'Padi-padian',5.01),(3,'Ikan',2.84),(4,'Daging',2.42),(5,'Telur dan susu',2.83),(6,'Sayur-sayuran',3.15),(7,'Kacang-kacangan',0.98),(8,'Buah-buahan',3.32),(9,'Minyak dan lemak',0.95),(10,'Bahan minuman',1.41),(11,'Bumbu-bumbuan',0.97),(12,'Konsumsi lainnya',18.93),(13,'Makanan dan minu',6.32),(14,'Tembakau dan sir',49.5);
/*!40000 ALTER TABLE `persentasekelompokmakanan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persentasekelompoknonmakanan`
--

DROP TABLE IF EXISTS `persentasekelompoknonmakanan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persentasekelompoknonmakanan` (
  `id` int NOT NULL,
  `kelompok` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `persentase` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persentasekelompoknonmakanan`
--

LOCK TABLES `persentasekelompoknonmakanan` WRITE;
/*!40000 ALTER TABLE `persentasekelompoknonmakanan` DISABLE KEYS */;
INSERT INTO `persentasekelompoknonmakanan` VALUES (1,'Perumahan dan Fasilitas rumah tangga',25.02),(2,'Barang dan jasa',12.8),(3,'Pakaian, alas kaki dan tutup kepala',2.9),(4,'Barang-barang yang tahan lama',4.63),(5,'Pajak dan asuransi',3.01),(6,'Keperluan pesta dan upacara',2.14);
/*!40000 ALTER TABLE `persentasekelompoknonmakanan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persentasemenurutdaerah`
--

DROP TABLE IF EXISTS `persentasemenurutdaerah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persentasemenurutdaerah` (
  `id` int NOT NULL,
  `namaDaerah` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `daerah` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `makanan` double DEFAULT NULL,
  `nonmakanan` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persentasemenurutdaerah`
--

LOCK TABLES `persentasemenurutdaerah` WRITE;
/*!40000 ALTER TABLE `persentasemenurutdaerah` DISABLE KEYS */;
INSERT INTO `persentasemenurutdaerah` VALUES (1,'Bogor','kabupaten',51.28,48.72),(2,'Sukabumi','kabupaten',59.91,40.09),(3,'Cianjur','kabupaten',55.33,44.67),(4,'Bandung','kabupaten',48.01,51.99),(5,'Garut','kabupaten',58.96,41.04),(6,'Tasikmalaya','kabupaten',59.69,40.31),(7,'Ciamis','kabupaten',55.76,44.24),(8,'Kuningan','kabupaten',53.05,46.95),(9,'Cirebon','kabupaten',57.26,42.74),(10,'Majalengka','kabupaten',55.29,44.71),(11,'Sumedang','kabupaten',50.85,49.15),(12,'Indramayu','kabupaten',57.2,42.8),(13,'Subang','kabupaten',54.63,45.37),(14,'Purwakarta','kabupaten',49.2,50.8),(15,'Karawang','kabupaten',52.99,47.01),(16,'Bekasi','kabupaten',47.21,52.79),(17,'Bandung Barat','kabupaten',53.5,46.5),(18,'Pangandaran','kabupaten',56.2,43.8),(19,'Bogor','kota',42.07,57.93),(20,'Sukabumi','kota',49.98,50.02),(21,'Bandung','kota',42.14,57.86),(22,'Cirebon','kota',44.37,55.63),(23,'Bekasi','kota',42.84,57.16),(24,'Depok','kota',41.84,58.16),(25,'Cimahi','kota',43.48,56.52),(26,'Tasikmalaya','kota',49.84,50.16),(27,'Banjar','kota',54.91,45.09);
/*!40000 ALTER TABLE `persentasemenurutdaerah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `IDRole` int NOT NULL AUTO_INCREMENT,
  `NamaRole` varchar(64) NOT NULL,
  PRIMARY KEY (`IDRole`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Administrator'),(2,'Admin'),(3,'Supervisor'),(4,'User');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_access_menu`
--

DROP TABLE IF EXISTS `role_access_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_access_menu` (
  `IDRoleAccessMenu` int NOT NULL AUTO_INCREMENT,
  `IDRole` int NOT NULL,
  `IDMenu` int NOT NULL,
  `is_read` int NOT NULL DEFAULT '0',
  `is_create` int NOT NULL DEFAULT '0',
  `is_update` int NOT NULL DEFAULT '0',
  `is_delete` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`IDRoleAccessMenu`)
) ENGINE=InnoDB AUTO_INCREMENT=5102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_access_menu`
--

LOCK TABLES `role_access_menu` WRITE;
/*!40000 ALTER TABLE `role_access_menu` DISABLE KEYS */;
INSERT INTO `role_access_menu` VALUES (4711,15,1,1,1,1,1),(4712,15,56,0,0,0,0),(4713,15,64,0,0,0,0),(4714,15,118,0,0,0,0),(4715,15,67,0,0,0,0),(4716,15,68,0,0,0,0),(4717,15,66,0,0,0,0),(4718,15,69,0,0,0,0),(4719,15,70,0,0,0,0),(4720,15,71,0,0,0,0),(4721,15,72,0,0,0,0),(4722,15,73,0,0,0,0),(4723,15,74,0,0,0,0),(4724,15,65,0,0,0,0),(4725,15,117,0,0,0,0),(4726,15,119,0,0,0,0),(4727,15,78,0,0,0,0),(4728,15,128,1,0,0,0),(4729,15,120,0,0,0,0),(4730,15,124,0,0,0,0),(4731,15,123,0,0,0,0),(4732,15,4,0,0,0,0),(4733,15,25,0,0,0,0),(4734,15,24,0,0,0,0),(4735,15,6,0,0,0,0),(4736,15,30,0,0,0,0),(4737,15,94,0,0,0,0),(4738,15,96,0,0,0,0),(4739,15,97,0,0,0,0),(4740,15,98,0,0,0,0),(4741,15,99,0,0,0,0),(4742,15,112,0,0,0,0),(4743,15,100,0,0,0,0),(4744,15,102,0,0,0,0),(4745,15,101,0,0,0,0),(4746,15,103,0,0,0,0),(4747,15,105,0,0,0,0),(4748,15,104,0,0,0,0),(4749,15,106,0,0,0,0),(4867,16,1,1,1,1,1),(4868,16,56,0,0,0,0),(4869,16,64,0,0,0,0),(4870,16,118,0,0,0,0),(4871,16,67,0,0,0,0),(4872,16,68,0,0,0,0),(4873,16,66,0,0,0,0),(4874,16,69,0,0,0,0),(4875,16,70,0,0,0,0),(4876,16,71,0,0,0,0),(4877,16,72,0,0,0,0),(4878,16,73,0,0,0,0),(4879,16,74,0,0,0,0),(4880,16,65,0,0,0,0),(4881,16,117,0,0,0,0),(4882,16,119,0,0,0,0),(4883,16,78,0,0,0,0),(4884,16,128,1,1,1,1),(4885,16,120,0,0,0,0),(4886,16,124,0,0,0,0),(4887,16,123,0,0,0,0),(4888,16,4,0,0,0,0),(4889,16,25,0,0,0,0),(4890,16,24,0,0,0,0),(4891,16,6,0,0,0,0),(4892,16,30,0,0,0,0),(4893,16,94,0,0,0,0),(4894,16,96,0,0,0,0),(4895,16,97,0,0,0,0),(4896,16,98,0,0,0,0),(4897,16,99,0,0,0,0),(4898,16,112,0,0,0,0),(4899,16,100,0,0,0,0),(4900,16,102,0,0,0,0),(4901,16,101,0,0,0,0),(4902,16,103,0,0,0,0),(4903,16,105,0,0,0,0),(4904,16,104,0,0,0,0),(4905,16,106,0,0,0,0),(4906,17,1,1,1,1,1),(4907,17,56,0,0,0,0),(4908,17,64,0,0,0,0),(4909,17,118,0,0,0,0),(4910,17,67,0,0,0,0),(4911,17,68,0,0,0,0),(4912,17,66,0,0,0,0),(4913,17,69,0,0,0,0),(4914,17,70,0,0,0,0),(4915,17,71,0,0,0,0),(4916,17,72,0,0,0,0),(4917,17,73,0,0,0,0),(4918,17,74,0,0,0,0),(4919,17,65,0,0,0,0),(4920,17,117,0,0,0,0),(4921,17,119,0,0,0,0),(4922,17,78,0,0,0,0),(4923,17,128,1,1,1,1),(4924,17,120,0,0,0,0),(4925,17,124,0,0,0,0),(4926,17,123,0,0,0,0),(4927,17,4,0,0,0,0),(4928,17,25,0,0,0,0),(4929,17,24,0,0,0,0),(4930,17,6,0,0,0,0),(4931,17,30,0,0,0,0),(4932,17,94,0,0,0,0),(4933,17,96,0,0,0,0),(4934,17,97,0,0,0,0),(4935,17,98,0,0,0,0),(4936,17,99,0,0,0,0),(4937,17,112,0,0,0,0),(4938,17,100,0,0,0,0),(4939,17,102,0,0,0,0),(4940,17,101,0,0,0,0),(4941,17,103,0,0,0,0),(4942,17,105,0,0,0,0),(4943,17,104,0,0,0,0),(4944,17,106,0,0,0,0),(4945,2,1,1,1,1,1),(4946,2,56,0,0,0,0),(4947,2,64,0,0,0,0),(4948,2,118,0,0,0,0),(4949,2,67,0,0,0,0),(4950,2,68,0,0,0,0),(4951,2,66,0,0,0,0),(4952,2,69,0,0,0,0),(4953,2,70,0,0,0,0),(4954,2,71,0,0,0,0),(4955,2,72,0,0,0,0),(4956,2,73,0,0,0,0),(4957,2,74,0,0,0,0),(4958,2,65,0,0,0,0),(4959,2,117,0,0,0,0),(4960,2,119,0,0,0,0),(4961,2,78,0,0,0,0),(4962,2,128,1,1,1,1),(4963,2,120,0,0,0,0),(4964,2,124,0,0,0,0),(4965,2,123,0,0,0,0),(4966,2,4,0,0,0,0),(4967,2,25,0,0,0,0),(4968,2,24,0,0,0,0),(4969,2,6,0,0,0,0),(4970,2,30,0,0,0,0),(4971,2,94,0,0,0,0),(4972,2,96,0,0,0,0),(4973,2,97,0,0,0,0),(4974,2,98,0,0,0,0),(4975,2,99,0,0,0,0),(4976,2,112,0,0,0,0),(4977,2,100,0,0,0,0),(4978,2,102,0,0,0,0),(4979,2,101,0,0,0,0),(4980,2,103,0,0,0,0),(4981,2,105,0,0,0,0),(4982,2,104,0,0,0,0),(4983,2,106,0,0,0,0),(4984,3,1,1,1,1,1),(4985,3,56,0,0,0,0),(4986,3,64,0,0,0,0),(4987,3,118,0,0,0,0),(4988,3,67,0,0,0,0),(4989,3,68,0,0,0,0),(4990,3,66,0,0,0,0),(4991,3,69,0,0,0,0),(4992,3,70,0,0,0,0),(4993,3,71,0,0,0,0),(4994,3,72,0,0,0,0),(4995,3,73,0,0,0,0),(4996,3,74,0,0,0,0),(4997,3,65,0,0,0,0),(4998,3,117,0,0,0,0),(4999,3,119,0,0,0,0),(5000,3,78,0,0,0,0),(5001,3,128,1,1,1,1),(5002,3,120,0,0,0,0),(5003,3,124,0,0,0,0),(5004,3,123,0,0,0,0),(5005,3,4,0,0,0,0),(5006,3,25,0,0,0,0),(5007,3,24,0,0,0,0),(5008,3,6,0,0,0,0),(5009,3,30,0,0,0,0),(5010,3,94,0,0,0,0),(5011,3,96,0,0,0,0),(5012,3,97,0,0,0,0),(5013,3,98,0,0,0,0),(5014,3,99,0,0,0,0),(5015,3,112,0,0,0,0),(5016,3,100,0,0,0,0),(5017,3,102,0,0,0,0),(5018,3,101,0,0,0,0),(5019,3,103,0,0,0,0),(5020,3,105,0,0,0,0),(5021,3,104,0,0,0,0),(5022,3,106,0,0,0,0),(5023,4,1,1,1,1,1),(5024,4,56,0,0,0,0),(5025,4,64,0,0,0,0),(5026,4,118,0,0,0,0),(5027,4,67,0,0,0,0),(5028,4,68,0,0,0,0),(5029,4,66,0,0,0,0),(5030,4,69,0,0,0,0),(5031,4,70,0,0,0,0),(5032,4,71,0,0,0,0),(5033,4,72,0,0,0,0),(5034,4,73,0,0,0,0),(5035,4,74,0,0,0,0),(5036,4,65,0,0,0,0),(5037,4,117,0,0,0,0),(5038,4,119,0,0,0,0),(5039,4,78,0,0,0,0),(5040,4,128,1,0,0,0),(5041,4,120,0,0,0,0),(5042,4,124,0,0,0,0),(5043,4,123,0,0,0,0),(5044,4,4,0,0,0,0),(5045,4,25,0,0,0,0),(5046,4,24,0,0,0,0),(5047,4,6,0,0,0,0),(5048,4,30,0,0,0,0),(5049,4,94,0,0,0,0),(5050,4,96,0,0,0,0),(5051,4,97,0,0,0,0),(5052,4,98,0,0,0,0),(5053,4,99,0,0,0,0),(5054,4,112,0,0,0,0),(5055,4,100,0,0,0,0),(5056,4,102,0,0,0,0),(5057,4,101,0,0,0,0),(5058,4,103,0,0,0,0),(5059,4,105,0,0,0,0),(5060,4,104,0,0,0,0),(5061,4,106,0,0,0,0),(5062,1,1,1,1,1,1),(5063,1,56,0,0,0,0),(5064,1,64,0,0,0,0),(5065,1,67,0,0,0,0),(5066,1,118,0,0,0,0),(5067,1,66,0,0,0,0),(5068,1,68,0,0,0,0),(5069,1,69,0,0,0,0),(5070,1,70,0,0,0,0),(5071,1,71,0,0,0,0),(5072,1,72,0,0,0,0),(5073,1,73,0,0,0,0),(5074,1,74,0,0,0,0),(5075,1,65,0,0,0,0),(5076,1,117,0,0,0,0),(5077,1,119,0,0,0,0),(5078,1,78,0,0,0,0),(5079,1,128,1,1,1,1),(5080,1,120,0,0,0,0),(5081,1,124,0,0,0,0),(5082,1,123,0,0,0,0),(5083,1,4,1,0,0,0),(5084,1,25,1,1,1,1),(5085,1,24,1,1,1,1),(5086,1,6,1,1,1,1),(5087,1,30,1,1,1,1),(5088,1,94,0,0,0,0),(5089,1,96,0,0,0,0),(5090,1,97,0,0,0,0),(5091,1,98,0,0,0,0),(5092,1,99,0,0,0,0),(5093,1,112,0,0,0,0),(5094,1,100,0,0,0,0),(5095,1,102,0,0,0,0),(5096,1,101,0,0,0,0),(5097,1,103,0,0,0,0),(5098,1,105,0,0,0,0),(5099,1,104,0,0,0,0),(5100,1,106,0,0,0,0),(5101,1,129,1,1,1,1);
/*!40000 ALTER TABLE `role_access_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sosmed`
--

DROP TABLE IF EXISTS `sosmed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sosmed` (
  `id_sosmed` int NOT NULL AUTO_INCREMENT,
  `nama_sosmed` varchar(128) NOT NULL,
  `logo_sosmed` varchar(128) NOT NULL,
  `link_sosmed` varchar(128) NOT NULL,
  `sort_sosmed` int NOT NULL DEFAULT '100',
  PRIMARY KEY (`id_sosmed`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sosmed`
--

LOCK TABLES `sosmed` WRITE;
/*!40000 ALTER TABLE `sosmed` DISABLE KEYS */;
INSERT INTO `sosmed` VALUES (1,'Facebook','fab fa-facebook fw-normal','https://www.facebook.com/',100),(2,'Twitter','fab fa-twitter fw-normal','https://twitter.com',100),(3,'Youtube Channel','fab fa-linkedin fw-normal','https://www.youtube.com/',100),(4,'Instagram','fab fa-instagram fw-normal','https://www.instagram.com/',100);
/*!40000 ALTER TABLE `sosmed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonial`
--

DROP TABLE IF EXISTS `testimonial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonial` (
  `id_testimonial` int NOT NULL AUTO_INCREMENT,
  `nama_testimonial` varchar(64) NOT NULL,
  `job_testimonial` varchar(64) NOT NULL,
  `text_testimonial` varchar(256) NOT NULL,
  `image_testimonial` varchar(128) NOT NULL,
  PRIMARY KEY (`id_testimonial`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonial`
--

LOCK TABLES `testimonial` WRITE;
/*!40000 ALTER TABLE `testimonial` DISABLE KEYS */;
INSERT INTO `testimonial` VALUES (5,'Divisi Marketing','Sales Engineer','Kami puas dengan pelayanan dari Shipgo dan Gendeh Grup','ELSA.jpg'),(6,'Divisi Logistik','Engineer','Pelayanan memuaskan','petamina.jpg');
/*!40000 ALTER TABLE `testimonial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `IDUser` int NOT NULL AUTO_INCREMENT,
  `id_perusahaan` int NOT NULL,
  `id_karyawan` int NOT NULL,
  `Name` varchar(128) NOT NULL,
  `Email` varchar(256) NOT NULL,
  `Password` varchar(64) NOT NULL,
  `IDRole` int NOT NULL,
  `IsAktifUser` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IDUser`),
  UNIQUE KEY `Email` (`Email`),
  KEY `IDRole` (`IDRole`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,1,1,'Administrator','admin@gmail.com','$2y$10$S5nlilM3d.4diXw4Dx70BesqgzP11RtdkHaQImYStO6uujIaEOAxC',1,1,'2022-01-11 00:59:07','2022-11-13 03:06:48'),(10,0,0,'Admin Biasa','adminbiasa@gmail.com','$2y$10$fuh6OujJgd1YPWWgxsADP.8p5p.6bq5.bw6BAfcx2Er/DRbQqtpZy',2,1,'2022-11-29 08:42:16','2022-11-30 07:12:32'),(11,0,0,'Supervisor','supervisor@gmail.com','$2y$10$7KWMesZ6.Dl2S.VEFukVmOLdQ1HVp7M8hiWAmT8LiE86y5fG/JCku',3,1,'2022-11-29 08:42:44','2022-11-30 07:12:38'),(12,0,0,'User Toba','usertoba@gmail.com','$2y$10$NHTfD6JrJi0RMabnjjQjWOIIaXe7c3dboK6MSfdffDYXmixy9QPAG',4,1,'2022-11-29 08:43:11','2022-11-30 07:12:42'),(13,0,0,'kevin','kevin@gmail.com','$2y$10$Tw55SVOTiTf4vWw2xbHbUOTu1.whBULrKxDH/mh1D4xOskyXAAb1e',4,1,'2022-11-30 08:08:49',NULL),(14,0,0,'Nizar','nizar@tobadihon.com','$2y$10$05zSMBC3MA8WbdYNpdJQ2OVmJF2bW6ep8Tb1hKd4kcUYVadz9LPWO',1,1,'2022-11-30 08:13:08',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-09  7:32:37
