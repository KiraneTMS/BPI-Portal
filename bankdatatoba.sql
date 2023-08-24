-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql:3306
-- Generation Time: Aug 24, 2023 at 08:45 AM
-- Server version: 8.1.0
-- PHP Version: 8.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bankdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `akses_menu`
--

CREATE TABLE `akses_menu` (
  `IDAksesMenu` int NOT NULL,
  `IDRole` int NOT NULL,
  `IDMenu` int NOT NULL,
  `is_read` int NOT NULL,
  `is_create` int NOT NULL,
  `is_update` int NOT NULL,
  `is_delete` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id_articles` int NOT NULL,
  `title_articles` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `content_articles` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `image_articles` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `aktif_articles` int NOT NULL,
  `tanggal_articles` varchar(128) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `keyword_articles` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at_articles` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at_articles` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id_articles`, `title_articles`, `content_articles`, `image_articles`, `aktif_articles`, `tanggal_articles`, `keyword_articles`, `created_at_articles`, `updated_at_articles`) VALUES
(1, 'Pengecatan pada deck Kapal MT Ivani', '<div class=\"field field-name-body field-type-text-with-summary field-label-hidden\"><div class=\"field-items\"><div class=\"field-item even\"><div class=\"field field-name-body field-type-text-with-summary field-label-hidden\"><div class=\"field-items\"><div class=\"field-item even\"><p>Toolbox meeting perawatan kapal MT Ivani pada 2 Desember 2020 yaitu:</p>\r\n<p>a.&nbsp;Repainting stair boat deck and main deck with black and yellow colours.</p>\r\n<p>b.&nbsp;epainting water tide door and engsel bosun store forward , \r\nrepainting pipe drawing line and eye washer poop deck with white and \r\nblue colours</p>\r\n</div></div></div></div></div></div>', 'WhatsApp_Image_2020-12-02_at_17_01_04_(1).jpeg', 1, '2022-10-20', 'baker', '2022-10-09 08:30:28', '2022-11-02 05:15:24'),
(3, 'New Project dengan PT PHKT', '<p>Kapal yang digunakan yaitu kapal MT Tameda Maru No.3</p>\r\n<p>Tentunya, pihak PT Global Total Lubrindo tetap menjaga keselamatan dan mengikuti protokol kesehatan.</p><p></p>', 'WhatsApp_Image_2020-11-26_at_10_14_29.jpeg', 1, '2022-11-02', 'shipgo', '2022-11-02 05:16:10', NULL),
(4, 'Kegiatan Bunker Kapal MT Tameda Maru ', '<p>Gambar diatas merupakan&nbsp;Kegiatan Bunker Kapal MT Tameda Maru No.3 pada 23 November 2020.</p>', 'WhatsApp_Image_2020-11-23_at_16_13_55.jpeg', 1, '2022-11-02', 'shipgo', '2022-11-02 05:17:00', NULL),
(5, 'Pembersihan Strainer dan Cargo Pump Kapal MT Tameda Maru', 'Pembersihan Strainer dan Cargo Pump Kapal MT Tameda Maru No.3 pada 19 November 2020', 'IMG-20180313-WA0105.jpg', 1, '2022-11-02', 'shipgo', '2022-11-02 05:18:11', '2022-11-02 09:45:35');

-- --------------------------------------------------------

--
-- Table structure for table `bankdata_customer`
--

CREATE TABLE `bankdata_customer` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `NumberCard` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Bank` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TypeCard` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NameCustomer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PIC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AssignmentDate` date NOT NULL,
  `ExpireDate` date NOT NULL,
  `DateOfBirth` date NOT NULL,
  `OpenDate` date NOT NULL,
  `WODate` date NOT NULL,
  `LastPayDate` date NOT NULL,
  `LastTransactionDate` date NOT NULL,
  `LastPayment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LastTransactionNominal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Limit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Principal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MinPay` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OSBalance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `City` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OfficeName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OfficeAddress1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OfficeAddress2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OfficeAddress3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OfficeAddress4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `HomePhone1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `HomePhone2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OfficePhone1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OfficePhone2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ECPhone1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ECPhone2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OtherNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ECName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ECName2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `StatusEC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `StatusEC2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MotherName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sex` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `VirtualAccount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `VirtualAccountName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Komoditi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `KomoditiType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Produsen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LoanTerm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `InstallmentAlreadyPaid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MonthlyPaymentNominal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DPD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Bucket` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BillingNoPenalty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DendaBelumDibayar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LastVisitDate` datetime NOT NULL,
  `LastVisitResult` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LastReport` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LastVisitAddress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OTSOffer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OtherData1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OtherData2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OtherData3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OtherData4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OtherData5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PermanentMessage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Deskcoll_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IsDeletedByAdmin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Report` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Action` text COLLATE utf8mb4_unicode_ci,
  `ReportDate` text COLLATE utf8mb4_unicode_ci,
  `PTPDate` text COLLATE utf8mb4_unicode_ci,
  `PTPAmount` text COLLATE utf8mb4_unicode_ci,
  `PaidDate` text COLLATE utf8mb4_unicode_ci,
  `PaidAmount` text COLLATE utf8mb4_unicode_ci,
  `created_at_bankdata_customer` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at_bankdata_customer` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_user_bankdata_customer` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `id_carousel` int NOT NULL,
  `subtitle_carousel` text COLLATE utf8mb4_general_ci NOT NULL,
  `title_carousel` text COLLATE utf8mb4_general_ci NOT NULL,
  `image_carousel` text COLLATE utf8mb4_general_ci NOT NULL,
  `aktif_carousel` int NOT NULL,
  `created_at_carousel` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at_carousel` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`id_carousel`, `subtitle_carousel`, `title_carousel`, `image_carousel`, `aktif_carousel`, `created_at_carousel`, `updated_at_carousel`) VALUES
(19, 'Dikelola secara profesional, menghindari benturan kepentingan, tidak toleransi terhadap suap, menjunjung tinggi integritas', 'Clean & Integrity', '3.jpg', 1, '2022-11-02 01:23:51', '2022-11-02 02:48:39'),
(22, 'Mampu berkompetisi dalam skala regional maupun internasional, mendorong pertumbuhan melalui investasi', 'Competitive ', 'carusol2.jpg', 1, '2022-11-02 02:04:04', '2022-11-02 02:48:20'),
(23, 'Berorientasi pada kepentingan pelanggan, dan berkomitmen untuk memberikan pelayanan terbaik kepada pelanggan', 'Customer Focused', 'carusol3.jpg', 1, '2022-11-02 02:09:57', NULL),
(24, 'Menciptakan nilai tambah dengan orientasi komersial, mengambil keputusan berdasarkan prinsip-prinsip bisnis yang sehat', 'Commercial', 'WhatsApp_Image_2022-02-15_at_10_32_09_(1)1.jpeg', 1, '2022-11-02 02:11:45', '2022-11-02 09:52:44'),
(25, 'Dikelola secara profesional dan memiliki talenta dan penguasaan teknis tinggi, berkomitmen dalam inovasi riset', 'Capable ', 'IMG-20131108-03237.jpg', 1, '2022-11-02 02:12:56', '2022-11-02 09:42:38'),
(26, 'Berorientasi pada kepentingan dan berkomitmen untuk memberikan layanan terbaik kepada customer dan stakeholder', 'Service Excellence', 'WhatsApp_Image_2022-01-03_at_11_33_05_(1).jpeg', 1, '2022-11-02 02:14:40', '2022-11-02 09:54:01');

-- --------------------------------------------------------

--
-- Table structure for table `company_profile`
--

CREATE TABLE `company_profile` (
  `id` int NOT NULL,
  `alamat` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `nomor_telepon` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company_profile`
--

INSERT INTO `company_profile` (`id`, `alamat`, `email`, `nomor_telepon`) VALUES
(1, 'MT Haryono Square\r\nJl. MT. Haryono Kav.10, Blok B8b\r\nKel. Bidara Cina, Kec. Jatinegara\r\nJakarta Timur', 'info@gendehgroup.com', '021-29067354');

-- --------------------------------------------------------

--
-- Table structure for table `devsetting`
--

CREATE TABLE `devsetting` (
  `id` int NOT NULL,
  `devkey` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `devvalue` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `ket` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `devsetting`
--

INSERT INTO `devsetting` (`id`, `devkey`, `devvalue`, `ket`) VALUES
(3, 'TITLE', 'Bank Data Tobadihon', 'title web'),
(4, 'COLOR_WEB', '#e6051b', 'biru = #2879c1,hijau = #1fa12e'),
(5, 'LANDING', 'true', 'true atau false');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id_faqs` int NOT NULL,
  `text_faqs` text COLLATE utf8mb4_general_ci NOT NULL,
  `answer_faqs` text COLLATE utf8mb4_general_ci NOT NULL,
  `sort_faqs` int NOT NULL,
  `is_active` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id_faqs`, `text_faqs`, `answer_faqs`, `sort_faqs`, `is_active`) VALUES
(12, 'Apa Itu Shipgo?', 'ShipGo adalah Platform yang bergerak di Jasa Pengiriman Pengiriman Bahan Bakar serta Jasa Handling Pengurusan Kontrak Kontrak Pengiriman Bahan Bakar.  Kami bekerja secara yang Profesional dengan pengiriman tepat waktu, minimum Losses dengan Safety yang Maksimal', 1, 1),
(13, 'Barang Apa Saya yang bisa diangkut?', 'Saat ini kami masih berfokus mengangkut Solar milik PT. Pertamina dan Perusahaan MIGAS lainnya', 2, 1),
(14, 'Bagaimana Cara Menghubungi Shipgo', 'Silahkan Menghubungi Bagian Sales kami di Alamat: MT Haryono Square Jl. MT. Haryono Kav.10, Blok B8b Kel. Bidara Cina, Kec. Jatinegara Jakarta Timur, Phone: 021-29067354', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `halaman`
--

CREATE TABLE `halaman` (
  `id_halaman` int NOT NULL,
  `title_halaman` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `image_halaman` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `short_halaman` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `content_halaman` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `meta_keyword_halaman` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `meta_desc_halaman` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `aktif_halaman` int NOT NULL DEFAULT '1',
  `created_at_halaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at_halaman` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `halaman`
--

INSERT INTO `halaman` (`id_halaman`, `title_halaman`, `image_halaman`, `short_halaman`, `content_halaman`, `meta_keyword_halaman`, `meta_desc_halaman`, `aktif_halaman`, `created_at_halaman`, `updated_at_halaman`) VALUES
(1, 'Our Services', 'IMG-20131108-032371.jpg', '1', '<p><b>ShipGo </b>adalah Platform yang bergerak di Jasa Pengiriman Bahan \r\nBakar serta Jasa Handling Pengurusan Kontrak Kontral Pengiriman Bahan \r\nBakar.  Kami bekerja secara yang Profesional dengan pengiriman tepat \r\nwaktu, minimum Losses dengan Safety yang Maksimal</p><h3><b>Nilai Perusahaan</b></h3><p><b>Clean & Integrity</b><br>Dikelola\r\n secara profesional, menghindari benturan kepentingan, tidak toleransi \r\nterhadap suap, menjunjung tinggi kepercayaan dan integritas, serta \r\nberpedoman kepada asas-asas tata kelola korporasi yang baik.<br><b><br>Competitive</b><br>Mampu\r\n berkompetisi dalam skala regional maupun internasional, mendorong \r\npertumbuhan melalui investasi, membangun budaya sadar biaya dan \r\nmenghargai.<br><b><br>Customer Focused</b><br>Berorientasi pada kepentingan pelanggan, dan berkomitmen untuk memberikan pelayanan terbaik kepada pelanggan.<br><br><br></p>', 'Shipgo', 'pengiriman cargo solar', 1, '2022-10-09 10:14:15', '2022-11-02 09:49:38'),
(2, 'Our Strenght', 'WhatsApp_Image_2022-02-15_at_10_32_09_(1).jpeg', '2', '<h2>Menciptakan Nilai Tambah<br></h2><b>Commercial (Komersial)</b><br>Menciptakan nilai tambah dengan orientasi komersial, mengambil keputusan berdasarkan prinsip-prinsip bisnis yang sehat.<br><b><br>Capable (Berkemampuan)</b><br>Dikelola oleh pemimpin dan pekerja yang profesional dan memiliki talenta dan penguasaan teknis tinggi, berkomitmen dalam membangun kemampuan riset dan pengembangan.<br><b><br>Service Excellence (Pelayanan Prima)</b><br>Berorientasi pada kepentingan dan berkomitmen untuk memberikan layanan terbaik kepada customer, vendor dan transportir<br><br>', 'kework', 'desc', 1, '2022-10-09 10:14:15', '2022-11-02 09:52:27'),
(4, 'Layanan Angkutan BBM', 'tengah21.jpg', '4', '<h1>Fuel Transportation</h1><p>Sebagai perusahaan transportasi BBM \r\nIndustri, kami memberikan layanan kepada para pelanggan kami dengan \r\njaminan kualitas, jumlah, tempat dan ketepatan waktu.</p>', 'kework', 'desc', 1, '2022-10-09 10:14:15', '2022-11-02 02:21:04'),
(5, 'Layanan Fuel Handling ', 'tengah5.jpg', '5', '<h1>Fuel Management</h1><p>Merupakan jasa yang disediakan oleh PT. \r\nHema Shipping Indonesia  Niaga untuk menangani pengelolaan BBM Industri \r\nhingga sampai di lokasi pelanggan dan juga merupakan layanan harian \r\nterkait penyaluran BBM Industri di lokasi tersebut, yang dilakukan baik \r\nuntuk BBM kepemilikan sendiri atau pihak kepemilikan niaga lainnya.</p>', 'kework', 'desc', 1, '2022-10-09 10:14:15', '2022-11-02 02:25:36');

-- --------------------------------------------------------

--
-- Table structure for table `leavemsg`
--

CREATE TABLE `leavemsg` (
  `id_leavemsg` int NOT NULL,
  `nama_leavemsg` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `email_leavemsg` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `no_leavemsg` varchar(16) COLLATE utf8mb4_general_ci NOT NULL,
  `msg_leavemsg` text COLLATE utf8mb4_general_ci NOT NULL,
  `approve_leavemsg` int NOT NULL DEFAULT '1',
  `created_at_leavemsg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at_leavemsg` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leavemsg`
--

INSERT INTO `leavemsg` (`id_leavemsg`, `nama_leavemsg`, `email_leavemsg`, `no_leavemsg`, `msg_leavemsg`, `approve_leavemsg`, `created_at_leavemsg`, `updated_at_leavemsg`) VALUES
(1, 'Agus', 'agus@gmail.com', '2147483647', 'Halo...Pelayanan Sangat Bagus Sekali', 1, '2022-10-09 08:54:46', '2022-10-24 03:36:18'),
(2, 'Asep', 'asep@gmail.com', '2147483647', 'Pelayanan Dari CS Nya Ramah', 1, '2022-10-09 09:06:49', '2022-10-24 03:36:20'),
(4, 'Caya', 'muhammadbintangcahyaputra@gmail.com', '08989843214', 'Mantap', 1, '2022-10-09 09:09:11', '2022-10-24 03:36:22'),
(5, 'dasdad', 'dasd@ada.com', '2131312312', 'adasdada', 1, '2022-10-18 02:29:24', '2022-10-18 02:30:06'),
(6, 'Pertamina', 'pertamina@gmail.com', '085220022884', 'Pelayanan sangat cepat dan teliti serta ramah', 2, '2022-10-24 03:37:53', '2022-10-24 03:37:59');

-- --------------------------------------------------------

--
-- Table structure for table `link`
--

CREATE TABLE `link` (
  `id_link` int NOT NULL,
  `nama_link` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `url_link` text COLLATE utf8mb4_general_ci NOT NULL,
  `sort_link` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `link`
--

INSERT INTO `link` (`id_link`, `nama_link`, `url_link`, `sort_link`) VALUES
(1, 'BPH Migas', 'https://www.bphmigas.go.id', 3),
(2, 'Pertamina', 'https://www.pertamina.com/', 4),
(3, 'Peduli Lindungi Covid19', 'https://www.pedulilindungi.id/', 1),
(11, 'Kementrian ESDM', 'https://www.esdm.go.id', 2);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `IDMenu` int NOT NULL,
  `namamenu` varchar(50) NOT NULL,
  `url_menu` varchar(100) NOT NULL,
  `icon_menu` varchar(100) NOT NULL,
  `is_head` int NOT NULL,
  `level_menu` int NOT NULL,
  `menu_head` int NOT NULL DEFAULT '0',
  `sort` int NOT NULL,
  `is_active` int NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`IDMenu`, `namamenu`, `url_menu`, `icon_menu`, `is_head`, `level_menu`, `menu_head`, `sort`, `is_active`) VALUES
(1, 'Dashboard', 'dashboard', 'fas fa-fw fa-tachometer-alt', 0, 1, 0, 1, 1),
(4, 'Web Control', '#', 'fas fa-fw fa-cogs', 1, 1, 0, 20, 1),
(6, 'Menu', 'menu', 'fas fa-fw fa-folder-minus', 0, 2, 4, 3, 1),
(24, 'Role', 'role', 'fas fa-fw fa-users', 0, 2, 4, 2, 1),
(25, 'Users', 'user', 'fas fa-fw fa-user', 0, 2, 4, 1, 1),
(30, 'Dev Setting', 'devsetting', 'fas fa-fw fa-cogs', 0, 2, 4, 4, 1),
(128, 'Bank Data', 'bankdata_customer', 'fas fa-fw fa-box', 0, 1, 0, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `menubawah`
--

CREATE TABLE `menubawah` (
  `id_menubawah` int NOT NULL,
  `name_menubawah` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `id_halaman` int NOT NULL,
  `posisi` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menubawah`
--

INSERT INTO `menubawah` (`id_menubawah`, `name_menubawah`, `id_halaman`, `posisi`) VALUES
(1, 'About Us', 1, 1),
(2, 'Why Us', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `menudepan`
--

CREATE TABLE `menudepan` (
  `id_menudepan` int NOT NULL,
  `title_menudepan` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `href_menudepan` text COLLATE utf8mb4_general_ci NOT NULL,
  `parent_menudepan` int NOT NULL,
  `aktif_menudepan` int NOT NULL,
  `created_at_menudepan` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at_menudepan` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menulanding`
--

CREATE TABLE `menulanding` (
  `id_menulanding` int NOT NULL,
  `href_menulanding` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `id_halaman` int NOT NULL,
  `jenis_menulanding` int NOT NULL DEFAULT '1' COMMENT '1 = href, 2 = halaman',
  `level_menulanding` int NOT NULL DEFAULT '1',
  `head_menulanding` int NOT NULL DEFAULT '0',
  `name_menulanding` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `parent_menulanding` int DEFAULT NULL,
  `sort_menulanding` int NOT NULL DEFAULT '100',
  `status_menulanding` int NOT NULL DEFAULT '1' COMMENT '1 = aktif, 2 = mati'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menulanding`
--

INSERT INTO `menulanding` (`id_menulanding`, `href_menulanding`, `id_halaman`, `jenis_menulanding`, `level_menulanding`, `head_menulanding`, `name_menulanding`, `parent_menulanding`, `sort_menulanding`, `status_menulanding`) VALUES
(1, '#about', 0, 1, 1, 0, 'About', NULL, 10, 1),
(2, '#services', 0, 1, 1, 0, 'Services', NULL, 20, 1),
(3, '#contact', 0, 1, 1, 0, 'Contact Us', NULL, 50, 1),
(12, '#news', 0, 1, 1, 0, 'News', NULL, 40, 1),
(13, '#ourships', 0, 1, 1, 0, 'Our Ships', NULL, 30, 1);

-- --------------------------------------------------------

--
-- Table structure for table `menutengah`
--

CREATE TABLE `menutengah` (
  `id_menutengah` int NOT NULL,
  `id_halaman` int NOT NULL,
  `posisi` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menutengah`
--

INSERT INTO `menutengah` (`id_menutengah`, `id_halaman`, `posisi`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `menu_landing`
--

CREATE TABLE `menu_landing` (
  `id_menu_landing` int NOT NULL,
  `href` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1' COMMENT '1 = aktif, 2 = mati'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu_landing`
--

INSERT INTO `menu_landing` (`id_menu_landing`, `href`, `name`, `status`) VALUES
(1, '#about', 'About', 1),
(2, '#services', 'Services', 1),
(3, '#contact', 'Contact', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu_utama`
--

CREATE TABLE `menu_utama` (
  `id_menu_utama` int NOT NULL,
  `nama_menu_utama` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `url_menu_utama` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `sort_menu_utama` int NOT NULL,
  `is_active` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu_utama`
--

INSERT INTO `menu_utama` (`id_menu_utama`, `nama_menu_utama`, `url_menu_utama`, `sort_menu_utama`, `is_active`) VALUES
(2, 'Beranda', '#landing', 1, 1),
(3, 'Tentang Kami', '#faq', 2, 1),
(4, 'Informasi & Media', '#projects', 3, 1),
(5, 'Ruang Anggota', 'auth/register', 4, 1),
(6, 'Hubungi Kami', '#footer', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ourclient`
--

CREATE TABLE `ourclient` (
  `id_ourclient` int NOT NULL,
  `image_ourclient` varchar(128) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ourclient`
--

INSERT INTO `ourclient` (`id_ourclient`, `image_ourclient`) VALUES
(8, 'pertamina.jpg'),
(9, 'elnusa.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `IDRole` int NOT NULL,
  `NamaRole` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`IDRole`, `NamaRole`) VALUES
(1, 'Administrator'),
(2, 'Admin'),
(3, 'Supervisor'),
(4, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `role_access_menu`
--

CREATE TABLE `role_access_menu` (
  `IDRoleAccessMenu` int NOT NULL,
  `IDRole` int NOT NULL,
  `IDMenu` int NOT NULL,
  `is_read` int NOT NULL DEFAULT '0',
  `is_create` int NOT NULL DEFAULT '0',
  `is_update` int NOT NULL DEFAULT '0',
  `is_delete` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role_access_menu`
--

INSERT INTO `role_access_menu` (`IDRoleAccessMenu`, `IDRole`, `IDMenu`, `is_read`, `is_create`, `is_update`, `is_delete`) VALUES
(4711, 15, 1, 1, 1, 1, 1),
(4712, 15, 56, 0, 0, 0, 0),
(4713, 15, 64, 0, 0, 0, 0),
(4714, 15, 118, 0, 0, 0, 0),
(4715, 15, 67, 0, 0, 0, 0),
(4716, 15, 68, 0, 0, 0, 0),
(4717, 15, 66, 0, 0, 0, 0),
(4718, 15, 69, 0, 0, 0, 0),
(4719, 15, 70, 0, 0, 0, 0),
(4720, 15, 71, 0, 0, 0, 0),
(4721, 15, 72, 0, 0, 0, 0),
(4722, 15, 73, 0, 0, 0, 0),
(4723, 15, 74, 0, 0, 0, 0),
(4724, 15, 65, 0, 0, 0, 0),
(4725, 15, 117, 0, 0, 0, 0),
(4726, 15, 119, 0, 0, 0, 0),
(4727, 15, 78, 0, 0, 0, 0),
(4728, 15, 128, 1, 0, 0, 0),
(4729, 15, 120, 0, 0, 0, 0),
(4730, 15, 124, 0, 0, 0, 0),
(4731, 15, 123, 0, 0, 0, 0),
(4732, 15, 4, 0, 0, 0, 0),
(4733, 15, 25, 0, 0, 0, 0),
(4734, 15, 24, 0, 0, 0, 0),
(4735, 15, 6, 0, 0, 0, 0),
(4736, 15, 30, 0, 0, 0, 0),
(4737, 15, 94, 0, 0, 0, 0),
(4738, 15, 96, 0, 0, 0, 0),
(4739, 15, 97, 0, 0, 0, 0),
(4740, 15, 98, 0, 0, 0, 0),
(4741, 15, 99, 0, 0, 0, 0),
(4742, 15, 112, 0, 0, 0, 0),
(4743, 15, 100, 0, 0, 0, 0),
(4744, 15, 102, 0, 0, 0, 0),
(4745, 15, 101, 0, 0, 0, 0),
(4746, 15, 103, 0, 0, 0, 0),
(4747, 15, 105, 0, 0, 0, 0),
(4748, 15, 104, 0, 0, 0, 0),
(4749, 15, 106, 0, 0, 0, 0),
(4867, 16, 1, 1, 1, 1, 1),
(4868, 16, 56, 0, 0, 0, 0),
(4869, 16, 64, 0, 0, 0, 0),
(4870, 16, 118, 0, 0, 0, 0),
(4871, 16, 67, 0, 0, 0, 0),
(4872, 16, 68, 0, 0, 0, 0),
(4873, 16, 66, 0, 0, 0, 0),
(4874, 16, 69, 0, 0, 0, 0),
(4875, 16, 70, 0, 0, 0, 0),
(4876, 16, 71, 0, 0, 0, 0),
(4877, 16, 72, 0, 0, 0, 0),
(4878, 16, 73, 0, 0, 0, 0),
(4879, 16, 74, 0, 0, 0, 0),
(4880, 16, 65, 0, 0, 0, 0),
(4881, 16, 117, 0, 0, 0, 0),
(4882, 16, 119, 0, 0, 0, 0),
(4883, 16, 78, 0, 0, 0, 0),
(4884, 16, 128, 1, 1, 1, 1),
(4885, 16, 120, 0, 0, 0, 0),
(4886, 16, 124, 0, 0, 0, 0),
(4887, 16, 123, 0, 0, 0, 0),
(4888, 16, 4, 0, 0, 0, 0),
(4889, 16, 25, 0, 0, 0, 0),
(4890, 16, 24, 0, 0, 0, 0),
(4891, 16, 6, 0, 0, 0, 0),
(4892, 16, 30, 0, 0, 0, 0),
(4893, 16, 94, 0, 0, 0, 0),
(4894, 16, 96, 0, 0, 0, 0),
(4895, 16, 97, 0, 0, 0, 0),
(4896, 16, 98, 0, 0, 0, 0),
(4897, 16, 99, 0, 0, 0, 0),
(4898, 16, 112, 0, 0, 0, 0),
(4899, 16, 100, 0, 0, 0, 0),
(4900, 16, 102, 0, 0, 0, 0),
(4901, 16, 101, 0, 0, 0, 0),
(4902, 16, 103, 0, 0, 0, 0),
(4903, 16, 105, 0, 0, 0, 0),
(4904, 16, 104, 0, 0, 0, 0),
(4905, 16, 106, 0, 0, 0, 0),
(4906, 17, 1, 1, 1, 1, 1),
(4907, 17, 56, 0, 0, 0, 0),
(4908, 17, 64, 0, 0, 0, 0),
(4909, 17, 118, 0, 0, 0, 0),
(4910, 17, 67, 0, 0, 0, 0),
(4911, 17, 68, 0, 0, 0, 0),
(4912, 17, 66, 0, 0, 0, 0),
(4913, 17, 69, 0, 0, 0, 0),
(4914, 17, 70, 0, 0, 0, 0),
(4915, 17, 71, 0, 0, 0, 0),
(4916, 17, 72, 0, 0, 0, 0),
(4917, 17, 73, 0, 0, 0, 0),
(4918, 17, 74, 0, 0, 0, 0),
(4919, 17, 65, 0, 0, 0, 0),
(4920, 17, 117, 0, 0, 0, 0),
(4921, 17, 119, 0, 0, 0, 0),
(4922, 17, 78, 0, 0, 0, 0),
(4923, 17, 128, 1, 1, 1, 1),
(4924, 17, 120, 0, 0, 0, 0),
(4925, 17, 124, 0, 0, 0, 0),
(4926, 17, 123, 0, 0, 0, 0),
(4927, 17, 4, 0, 0, 0, 0),
(4928, 17, 25, 0, 0, 0, 0),
(4929, 17, 24, 0, 0, 0, 0),
(4930, 17, 6, 0, 0, 0, 0),
(4931, 17, 30, 0, 0, 0, 0),
(4932, 17, 94, 0, 0, 0, 0),
(4933, 17, 96, 0, 0, 0, 0),
(4934, 17, 97, 0, 0, 0, 0),
(4935, 17, 98, 0, 0, 0, 0),
(4936, 17, 99, 0, 0, 0, 0),
(4937, 17, 112, 0, 0, 0, 0),
(4938, 17, 100, 0, 0, 0, 0),
(4939, 17, 102, 0, 0, 0, 0),
(4940, 17, 101, 0, 0, 0, 0),
(4941, 17, 103, 0, 0, 0, 0),
(4942, 17, 105, 0, 0, 0, 0),
(4943, 17, 104, 0, 0, 0, 0),
(4944, 17, 106, 0, 0, 0, 0),
(4945, 2, 1, 1, 1, 1, 1),
(4946, 2, 56, 0, 0, 0, 0),
(4947, 2, 64, 0, 0, 0, 0),
(4948, 2, 118, 0, 0, 0, 0),
(4949, 2, 67, 0, 0, 0, 0),
(4950, 2, 68, 0, 0, 0, 0),
(4951, 2, 66, 0, 0, 0, 0),
(4952, 2, 69, 0, 0, 0, 0),
(4953, 2, 70, 0, 0, 0, 0),
(4954, 2, 71, 0, 0, 0, 0),
(4955, 2, 72, 0, 0, 0, 0),
(4956, 2, 73, 0, 0, 0, 0),
(4957, 2, 74, 0, 0, 0, 0),
(4958, 2, 65, 0, 0, 0, 0),
(4959, 2, 117, 0, 0, 0, 0),
(4960, 2, 119, 0, 0, 0, 0),
(4961, 2, 78, 0, 0, 0, 0),
(4962, 2, 128, 1, 1, 1, 1),
(4963, 2, 120, 0, 0, 0, 0),
(4964, 2, 124, 0, 0, 0, 0),
(4965, 2, 123, 0, 0, 0, 0),
(4966, 2, 4, 0, 0, 0, 0),
(4967, 2, 25, 0, 0, 0, 0),
(4968, 2, 24, 0, 0, 0, 0),
(4969, 2, 6, 0, 0, 0, 0),
(4970, 2, 30, 0, 0, 0, 0),
(4971, 2, 94, 0, 0, 0, 0),
(4972, 2, 96, 0, 0, 0, 0),
(4973, 2, 97, 0, 0, 0, 0),
(4974, 2, 98, 0, 0, 0, 0),
(4975, 2, 99, 0, 0, 0, 0),
(4976, 2, 112, 0, 0, 0, 0),
(4977, 2, 100, 0, 0, 0, 0),
(4978, 2, 102, 0, 0, 0, 0),
(4979, 2, 101, 0, 0, 0, 0),
(4980, 2, 103, 0, 0, 0, 0),
(4981, 2, 105, 0, 0, 0, 0),
(4982, 2, 104, 0, 0, 0, 0),
(4983, 2, 106, 0, 0, 0, 0),
(4984, 3, 1, 1, 1, 1, 1),
(4985, 3, 56, 0, 0, 0, 0),
(4986, 3, 64, 0, 0, 0, 0),
(4987, 3, 118, 0, 0, 0, 0),
(4988, 3, 67, 0, 0, 0, 0),
(4989, 3, 68, 0, 0, 0, 0),
(4990, 3, 66, 0, 0, 0, 0),
(4991, 3, 69, 0, 0, 0, 0),
(4992, 3, 70, 0, 0, 0, 0),
(4993, 3, 71, 0, 0, 0, 0),
(4994, 3, 72, 0, 0, 0, 0),
(4995, 3, 73, 0, 0, 0, 0),
(4996, 3, 74, 0, 0, 0, 0),
(4997, 3, 65, 0, 0, 0, 0),
(4998, 3, 117, 0, 0, 0, 0),
(4999, 3, 119, 0, 0, 0, 0),
(5000, 3, 78, 0, 0, 0, 0),
(5001, 3, 128, 1, 1, 1, 1),
(5002, 3, 120, 0, 0, 0, 0),
(5003, 3, 124, 0, 0, 0, 0),
(5004, 3, 123, 0, 0, 0, 0),
(5005, 3, 4, 0, 0, 0, 0),
(5006, 3, 25, 0, 0, 0, 0),
(5007, 3, 24, 0, 0, 0, 0),
(5008, 3, 6, 0, 0, 0, 0),
(5009, 3, 30, 0, 0, 0, 0),
(5010, 3, 94, 0, 0, 0, 0),
(5011, 3, 96, 0, 0, 0, 0),
(5012, 3, 97, 0, 0, 0, 0),
(5013, 3, 98, 0, 0, 0, 0),
(5014, 3, 99, 0, 0, 0, 0),
(5015, 3, 112, 0, 0, 0, 0),
(5016, 3, 100, 0, 0, 0, 0),
(5017, 3, 102, 0, 0, 0, 0),
(5018, 3, 101, 0, 0, 0, 0),
(5019, 3, 103, 0, 0, 0, 0),
(5020, 3, 105, 0, 0, 0, 0),
(5021, 3, 104, 0, 0, 0, 0),
(5022, 3, 106, 0, 0, 0, 0),
(5023, 4, 1, 1, 1, 1, 1),
(5024, 4, 56, 0, 0, 0, 0),
(5025, 4, 64, 0, 0, 0, 0),
(5026, 4, 118, 0, 0, 0, 0),
(5027, 4, 67, 0, 0, 0, 0),
(5028, 4, 68, 0, 0, 0, 0),
(5029, 4, 66, 0, 0, 0, 0),
(5030, 4, 69, 0, 0, 0, 0),
(5031, 4, 70, 0, 0, 0, 0),
(5032, 4, 71, 0, 0, 0, 0),
(5033, 4, 72, 0, 0, 0, 0),
(5034, 4, 73, 0, 0, 0, 0),
(5035, 4, 74, 0, 0, 0, 0),
(5036, 4, 65, 0, 0, 0, 0),
(5037, 4, 117, 0, 0, 0, 0),
(5038, 4, 119, 0, 0, 0, 0),
(5039, 4, 78, 0, 0, 0, 0),
(5040, 4, 128, 1, 0, 0, 0),
(5041, 4, 120, 0, 0, 0, 0),
(5042, 4, 124, 0, 0, 0, 0),
(5043, 4, 123, 0, 0, 0, 0),
(5044, 4, 4, 0, 0, 0, 0),
(5045, 4, 25, 0, 0, 0, 0),
(5046, 4, 24, 0, 0, 0, 0),
(5047, 4, 6, 0, 0, 0, 0),
(5048, 4, 30, 0, 0, 0, 0),
(5049, 4, 94, 0, 0, 0, 0),
(5050, 4, 96, 0, 0, 0, 0),
(5051, 4, 97, 0, 0, 0, 0),
(5052, 4, 98, 0, 0, 0, 0),
(5053, 4, 99, 0, 0, 0, 0),
(5054, 4, 112, 0, 0, 0, 0),
(5055, 4, 100, 0, 0, 0, 0),
(5056, 4, 102, 0, 0, 0, 0),
(5057, 4, 101, 0, 0, 0, 0),
(5058, 4, 103, 0, 0, 0, 0),
(5059, 4, 105, 0, 0, 0, 0),
(5060, 4, 104, 0, 0, 0, 0),
(5061, 4, 106, 0, 0, 0, 0),
(5062, 1, 1, 1, 1, 1, 1),
(5063, 1, 128, 1, 1, 1, 1),
(5064, 1, 4, 1, 0, 0, 0),
(5065, 1, 25, 1, 1, 1, 1),
(5066, 1, 24, 1, 1, 1, 1),
(5067, 1, 6, 1, 1, 1, 1),
(5068, 1, 30, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sosmed`
--

CREATE TABLE `sosmed` (
  `id_sosmed` int NOT NULL,
  `nama_sosmed` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `logo_sosmed` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `link_sosmed` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `sort_sosmed` int NOT NULL DEFAULT '100'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sosmed`
--

INSERT INTO `sosmed` (`id_sosmed`, `nama_sosmed`, `logo_sosmed`, `link_sosmed`, `sort_sosmed`) VALUES
(1, 'Facebook', 'fab fa-facebook fw-normal', 'https://www.facebook.com/', 100),
(2, 'Twitter', 'fab fa-twitter fw-normal', 'https://twitter.com', 100),
(3, 'Youtube Channel', 'fab fa-linkedin fw-normal', 'https://www.youtube.com/', 100),
(4, 'Instagram', 'fab fa-instagram fw-normal', 'https://www.instagram.com/', 100);

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id_testimonial` int NOT NULL,
  `nama_testimonial` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `job_testimonial` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `text_testimonial` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `image_testimonial` varchar(128) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id_testimonial`, `nama_testimonial`, `job_testimonial`, `text_testimonial`, `image_testimonial`) VALUES
(5, 'Divisi Marketing', 'Sales Engineer', 'Kami puas dengan pelayanan dari Shipgo dan Gendeh Grup', 'ELSA.jpg'),
(6, 'Divisi Logistik', 'Engineer', 'Pelayanan memuaskan', 'petamina.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `IDUser` int NOT NULL,
  `id_perusahaan` int NOT NULL,
  `id_karyawan` int NOT NULL,
  `Name` varchar(128) NOT NULL,
  `Email` varchar(256) NOT NULL,
  `Password` varchar(64) NOT NULL,
  `IDRole` int NOT NULL,
  `IsAktifUser` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`IDUser`, `id_perusahaan`, `id_karyawan`, `Name`, `Email`, `Password`, `IDRole`, `IsAktifUser`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 'SuperAdmin', 'admin@gmail.com', '$2y$10$S5nlilM3d.4diXw4Dx70BesqgzP11RtdkHaQImYStO6uujIaEOAxC', 1, 1, '2022-01-11 00:59:07', '2023-08-23 07:12:50'),
(10, 0, 0, 'Admin Biasa', 'adminbiasa@gmail.com', '$2y$10$fuh6OujJgd1YPWWgxsADP.8p5p.6bq5.bw6BAfcx2Er/DRbQqtpZy', 2, 1, '2022-11-29 08:42:16', '2022-11-30 07:12:32'),
(11, 0, 0, 'Team Leader', 'supervisor@gmail.com', '$2y$10$7KWMesZ6.Dl2S.VEFukVmOLdQ1HVp7M8hiWAmT8LiE86y5fG/JCku', 3, 1, '2022-11-29 08:42:44', '2023-08-23 07:13:01'),
(12, 0, 0, 'Deskcoll', 'usertoba@gmail.com', '$2y$10$NHTfD6JrJi0RMabnjjQjWOIIaXe7c3dboK6MSfdffDYXmixy9QPAG', 4, 1, '2022-11-29 08:43:11', '2023-08-23 07:13:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akses_menu`
--
ALTER TABLE `akses_menu`
  ADD PRIMARY KEY (`IDAksesMenu`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id_articles`);

--
-- Indexes for table `bankdata_customer`
--
ALTER TABLE `bankdata_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`id_carousel`);

--
-- Indexes for table `company_profile`
--
ALTER TABLE `company_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devsetting`
--
ALTER TABLE `devsetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id_faqs`);

--
-- Indexes for table `halaman`
--
ALTER TABLE `halaman`
  ADD PRIMARY KEY (`id_halaman`);

--
-- Indexes for table `leavemsg`
--
ALTER TABLE `leavemsg`
  ADD PRIMARY KEY (`id_leavemsg`);

--
-- Indexes for table `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`id_link`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`IDMenu`);

--
-- Indexes for table `menubawah`
--
ALTER TABLE `menubawah`
  ADD PRIMARY KEY (`id_menubawah`),
  ADD UNIQUE KEY `posisi` (`posisi`),
  ADD UNIQUE KEY `id_halaman` (`id_halaman`);

--
-- Indexes for table `menudepan`
--
ALTER TABLE `menudepan`
  ADD PRIMARY KEY (`id_menudepan`);

--
-- Indexes for table `menulanding`
--
ALTER TABLE `menulanding`
  ADD PRIMARY KEY (`id_menulanding`);

--
-- Indexes for table `menutengah`
--
ALTER TABLE `menutengah`
  ADD PRIMARY KEY (`id_menutengah`),
  ADD UNIQUE KEY `posisi` (`posisi`),
  ADD UNIQUE KEY `id_halaman` (`id_halaman`);

--
-- Indexes for table `menu_landing`
--
ALTER TABLE `menu_landing`
  ADD PRIMARY KEY (`id_menu_landing`);

--
-- Indexes for table `menu_utama`
--
ALTER TABLE `menu_utama`
  ADD PRIMARY KEY (`id_menu_utama`);

--
-- Indexes for table `ourclient`
--
ALTER TABLE `ourclient`
  ADD PRIMARY KEY (`id_ourclient`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`IDRole`);

--
-- Indexes for table `role_access_menu`
--
ALTER TABLE `role_access_menu`
  ADD PRIMARY KEY (`IDRoleAccessMenu`);

--
-- Indexes for table `sosmed`
--
ALTER TABLE `sosmed`
  ADD PRIMARY KEY (`id_sosmed`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id_testimonial`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`IDUser`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `IDRole` (`IDRole`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akses_menu`
--
ALTER TABLE `akses_menu`
  MODIFY `IDAksesMenu` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id_articles` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bankdata_customer`
--
ALTER TABLE `bankdata_customer`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=776;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `id_carousel` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `company_profile`
--
ALTER TABLE `company_profile`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `devsetting`
--
ALTER TABLE `devsetting`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id_faqs` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `halaman`
--
ALTER TABLE `halaman`
  MODIFY `id_halaman` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `leavemsg`
--
ALTER TABLE `leavemsg`
  MODIFY `id_leavemsg` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `link`
--
ALTER TABLE `link`
  MODIFY `id_link` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `IDMenu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `menubawah`
--
ALTER TABLE `menubawah`
  MODIFY `id_menubawah` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menudepan`
--
ALTER TABLE `menudepan`
  MODIFY `id_menudepan` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menulanding`
--
ALTER TABLE `menulanding`
  MODIFY `id_menulanding` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `menutengah`
--
ALTER TABLE `menutengah`
  MODIFY `id_menutengah` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menu_landing`
--
ALTER TABLE `menu_landing`
  MODIFY `id_menu_landing` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu_utama`
--
ALTER TABLE `menu_utama`
  MODIFY `id_menu_utama` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ourclient`
--
ALTER TABLE `ourclient`
  MODIFY `id_ourclient` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `IDRole` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `role_access_menu`
--
ALTER TABLE `role_access_menu`
  MODIFY `IDRoleAccessMenu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5069;

--
-- AUTO_INCREMENT for table `sosmed`
--
ALTER TABLE `sosmed`
  MODIFY `id_sosmed` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id_testimonial` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `IDUser` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
