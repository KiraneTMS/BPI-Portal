-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Nov 2022 pada 09.55
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bankdatatoba`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akses_menu`
--

CREATE TABLE `akses_menu` (
  `IDAksesMenu` int(11) NOT NULL,
  `IDRole` int(11) NOT NULL,
  `IDMenu` int(11) NOT NULL,
  `is_read` int(1) NOT NULL,
  `is_create` int(1) NOT NULL,
  `is_update` int(1) NOT NULL,
  `is_delete` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `articles`
--

CREATE TABLE `articles` (
  `id_articles` int(11) NOT NULL,
  `title_articles` varchar(64) NOT NULL,
  `content_articles` longtext NOT NULL,
  `image_articles` varchar(128) NOT NULL,
  `aktif_articles` int(1) NOT NULL,
  `tanggal_articles` varchar(128) DEFAULT NULL,
  `keyword_articles` varchar(64) NOT NULL,
  `created_at_articles` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at_articles` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `articles`
--

INSERT INTO `articles` (`id_articles`, `title_articles`, `content_articles`, `image_articles`, `aktif_articles`, `tanggal_articles`, `keyword_articles`, `created_at_articles`, `updated_at_articles`) VALUES
(1, 'Pengecatan pada deck Kapal MT Ivani', '<div class=\"field field-name-body field-type-text-with-summary field-label-hidden\"><div class=\"field-items\"><div class=\"field-item even\"><div class=\"field field-name-body field-type-text-with-summary field-label-hidden\"><div class=\"field-items\"><div class=\"field-item even\"><p>Toolbox meeting perawatan kapal MT Ivani pada 2 Desember 2020 yaitu:</p>\r\n<p>a.&nbsp;Repainting stair boat deck and main deck with black and yellow colours.</p>\r\n<p>b.&nbsp;epainting water tide door and engsel bosun store forward , \r\nrepainting pipe drawing line and eye washer poop deck with white and \r\nblue colours</p>\r\n</div></div></div></div></div></div>', 'WhatsApp_Image_2020-12-02_at_17_01_04_(1).jpeg', 1, '2022-10-20', 'baker', '2022-10-09 08:30:28', '2022-11-02 05:15:24'),
(3, 'New Project dengan PT PHKT', '<p>Kapal yang digunakan yaitu kapal MT Tameda Maru No.3</p>\r\n<p>Tentunya, pihak PT Global Total Lubrindo tetap menjaga keselamatan dan mengikuti protokol kesehatan.</p><p></p>', 'WhatsApp_Image_2020-11-26_at_10_14_29.jpeg', 1, '2022-11-02', 'shipgo', '2022-11-02 05:16:10', NULL),
(4, 'Kegiatan Bunker Kapal MT Tameda Maru ', '<p>Gambar diatas merupakan&nbsp;Kegiatan Bunker Kapal MT Tameda Maru No.3 pada 23 November 2020.</p>', 'WhatsApp_Image_2020-11-23_at_16_13_55.jpeg', 1, '2022-11-02', 'shipgo', '2022-11-02 05:17:00', NULL),
(5, 'Pembersihan Strainer dan Cargo Pump Kapal MT Tameda Maru', 'Pembersihan Strainer dan Cargo Pump Kapal MT Tameda Maru No.3 pada 19 November 2020', 'IMG-20180313-WA0105.jpg', 1, '2022-11-02', 'shipgo', '2022-11-02 05:18:11', '2022-11-02 09:45:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bankdata_customer`
--

CREATE TABLE `bankdata_customer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
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
  `Action` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ReportDate` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PTPDate` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PTPAmount` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PaidDate` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PaidAmount` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bankdata_customer`
--

INSERT INTO `bankdata_customer` (`id`, `created_at`, `updated_at`, `NumberCard`, `Bank`, `TypeCard`, `NameCustomer`, `PIC`, `AssignmentDate`, `ExpireDate`, `DateOfBirth`, `OpenDate`, `WODate`, `LastPayDate`, `LastTransactionDate`, `LastPayment`, `LastTransactionNominal`, `Limit`, `Principal`, `MinPay`, `OSBalance`, `Address1`, `Address2`, `Address3`, `Address4`, `City`, `OfficeName`, `OfficeAddress1`, `OfficeAddress2`, `OfficeAddress3`, `OfficeAddress4`, `Phone1`, `Phone2`, `HomePhone1`, `HomePhone2`, `OfficePhone1`, `OfficePhone2`, `ECPhone1`, `ECPhone2`, `OtherNumber`, `ECName`, `ECName2`, `StatusEC`, `StatusEC2`, `MotherName`, `Sex`, `Email`, `VirtualAccount`, `VirtualAccountName`, `Komoditi`, `KomoditiType`, `Produsen`, `Model`, `LoanTerm`, `InstallmentAlreadyPaid`, `MonthlyPaymentNominal`, `DPD`, `Bucket`, `BillingNoPenalty`, `DendaBelumDibayar`, `LastVisitDate`, `LastVisitResult`, `LastReport`, `LastVisitAddress`, `OTSOffer`, `OtherData1`, `OtherData2`, `OtherData3`, `OtherData4`, `OtherData5`, `PermanentMessage`, `Deskcoll_id`, `IsDeletedByAdmin`, `Report`, `Action`, `ReportDate`, `PTPDate`, `PTPAmount`, `PaidDate`, `PaidAmount`) VALUES
(17, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(18, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(19, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(20, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(21, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(22, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(23, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(24, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(25, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(26, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(27, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(28, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(29, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(30, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(31, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(32, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(33, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(34, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(35, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(36, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(37, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(38, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(39, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(40, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(41, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(42, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(43, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(44, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(45, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(46, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(47, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(48, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(49, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(50, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317');
INSERT INTO `bankdata_customer` (`id`, `created_at`, `updated_at`, `NumberCard`, `Bank`, `TypeCard`, `NameCustomer`, `PIC`, `AssignmentDate`, `ExpireDate`, `DateOfBirth`, `OpenDate`, `WODate`, `LastPayDate`, `LastTransactionDate`, `LastPayment`, `LastTransactionNominal`, `Limit`, `Principal`, `MinPay`, `OSBalance`, `Address1`, `Address2`, `Address3`, `Address4`, `City`, `OfficeName`, `OfficeAddress1`, `OfficeAddress2`, `OfficeAddress3`, `OfficeAddress4`, `Phone1`, `Phone2`, `HomePhone1`, `HomePhone2`, `OfficePhone1`, `OfficePhone2`, `ECPhone1`, `ECPhone2`, `OtherNumber`, `ECName`, `ECName2`, `StatusEC`, `StatusEC2`, `MotherName`, `Sex`, `Email`, `VirtualAccount`, `VirtualAccountName`, `Komoditi`, `KomoditiType`, `Produsen`, `Model`, `LoanTerm`, `InstallmentAlreadyPaid`, `MonthlyPaymentNominal`, `DPD`, `Bucket`, `BillingNoPenalty`, `DendaBelumDibayar`, `LastVisitDate`, `LastVisitResult`, `LastReport`, `LastVisitAddress`, `OTSOffer`, `OtherData1`, `OtherData2`, `OtherData3`, `OtherData4`, `OtherData5`, `PermanentMessage`, `Deskcoll_id`, `IsDeletedByAdmin`, `Report`, `Action`, `ReportDate`, `PTPDate`, `PTPAmount`, `PaidDate`, `PaidAmount`) VALUES
(51, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(52, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(53, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(54, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(55, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(56, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(57, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(58, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(59, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(60, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(61, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(62, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(63, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(64, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(65, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(66, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(67, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(68, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(69, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(70, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(71, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(72, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(73, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(74, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(75, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(76, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(77, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(78, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(79, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(80, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(81, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(82, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(83, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(84, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111');
INSERT INTO `bankdata_customer` (`id`, `created_at`, `updated_at`, `NumberCard`, `Bank`, `TypeCard`, `NameCustomer`, `PIC`, `AssignmentDate`, `ExpireDate`, `DateOfBirth`, `OpenDate`, `WODate`, `LastPayDate`, `LastTransactionDate`, `LastPayment`, `LastTransactionNominal`, `Limit`, `Principal`, `MinPay`, `OSBalance`, `Address1`, `Address2`, `Address3`, `Address4`, `City`, `OfficeName`, `OfficeAddress1`, `OfficeAddress2`, `OfficeAddress3`, `OfficeAddress4`, `Phone1`, `Phone2`, `HomePhone1`, `HomePhone2`, `OfficePhone1`, `OfficePhone2`, `ECPhone1`, `ECPhone2`, `OtherNumber`, `ECName`, `ECName2`, `StatusEC`, `StatusEC2`, `MotherName`, `Sex`, `Email`, `VirtualAccount`, `VirtualAccountName`, `Komoditi`, `KomoditiType`, `Produsen`, `Model`, `LoanTerm`, `InstallmentAlreadyPaid`, `MonthlyPaymentNominal`, `DPD`, `Bucket`, `BillingNoPenalty`, `DendaBelumDibayar`, `LastVisitDate`, `LastVisitResult`, `LastReport`, `LastVisitAddress`, `OTSOffer`, `OtherData1`, `OtherData2`, `OtherData3`, `OtherData4`, `OtherData5`, `PermanentMessage`, `Deskcoll_id`, `IsDeletedByAdmin`, `Report`, `Action`, `ReportDate`, `PTPDate`, `PTPAmount`, `PaidDate`, `PaidAmount`) VALUES
(85, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(86, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(87, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(88, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(89, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(90, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(91, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(92, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(93, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(94, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(95, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(96, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(97, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(98, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(99, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(100, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(101, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(102, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(103, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(104, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(105, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(106, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(107, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(108, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(109, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(110, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(111, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(112, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(113, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(114, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(115, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(116, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(117, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(118, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317');
INSERT INTO `bankdata_customer` (`id`, `created_at`, `updated_at`, `NumberCard`, `Bank`, `TypeCard`, `NameCustomer`, `PIC`, `AssignmentDate`, `ExpireDate`, `DateOfBirth`, `OpenDate`, `WODate`, `LastPayDate`, `LastTransactionDate`, `LastPayment`, `LastTransactionNominal`, `Limit`, `Principal`, `MinPay`, `OSBalance`, `Address1`, `Address2`, `Address3`, `Address4`, `City`, `OfficeName`, `OfficeAddress1`, `OfficeAddress2`, `OfficeAddress3`, `OfficeAddress4`, `Phone1`, `Phone2`, `HomePhone1`, `HomePhone2`, `OfficePhone1`, `OfficePhone2`, `ECPhone1`, `ECPhone2`, `OtherNumber`, `ECName`, `ECName2`, `StatusEC`, `StatusEC2`, `MotherName`, `Sex`, `Email`, `VirtualAccount`, `VirtualAccountName`, `Komoditi`, `KomoditiType`, `Produsen`, `Model`, `LoanTerm`, `InstallmentAlreadyPaid`, `MonthlyPaymentNominal`, `DPD`, `Bucket`, `BillingNoPenalty`, `DendaBelumDibayar`, `LastVisitDate`, `LastVisitResult`, `LastReport`, `LastVisitAddress`, `OTSOffer`, `OtherData1`, `OtherData2`, `OtherData3`, `OtherData4`, `OtherData5`, `PermanentMessage`, `Deskcoll_id`, `IsDeletedByAdmin`, `Report`, `Action`, `ReportDate`, `PTPDate`, `PTPAmount`, `PaidDate`, `PaidAmount`) VALUES
(119, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(120, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(121, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(122, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(123, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(124, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(125, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(126, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(127, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(128, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(129, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(130, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(131, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(132, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(133, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(134, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(135, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(136, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(137, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(138, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(139, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(140, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(141, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(142, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(143, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(144, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(145, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(146, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(147, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(148, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(149, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(150, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(151, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(152, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111');
INSERT INTO `bankdata_customer` (`id`, `created_at`, `updated_at`, `NumberCard`, `Bank`, `TypeCard`, `NameCustomer`, `PIC`, `AssignmentDate`, `ExpireDate`, `DateOfBirth`, `OpenDate`, `WODate`, `LastPayDate`, `LastTransactionDate`, `LastPayment`, `LastTransactionNominal`, `Limit`, `Principal`, `MinPay`, `OSBalance`, `Address1`, `Address2`, `Address3`, `Address4`, `City`, `OfficeName`, `OfficeAddress1`, `OfficeAddress2`, `OfficeAddress3`, `OfficeAddress4`, `Phone1`, `Phone2`, `HomePhone1`, `HomePhone2`, `OfficePhone1`, `OfficePhone2`, `ECPhone1`, `ECPhone2`, `OtherNumber`, `ECName`, `ECName2`, `StatusEC`, `StatusEC2`, `MotherName`, `Sex`, `Email`, `VirtualAccount`, `VirtualAccountName`, `Komoditi`, `KomoditiType`, `Produsen`, `Model`, `LoanTerm`, `InstallmentAlreadyPaid`, `MonthlyPaymentNominal`, `DPD`, `Bucket`, `BillingNoPenalty`, `DendaBelumDibayar`, `LastVisitDate`, `LastVisitResult`, `LastReport`, `LastVisitAddress`, `OTSOffer`, `OtherData1`, `OtherData2`, `OtherData3`, `OtherData4`, `OtherData5`, `PermanentMessage`, `Deskcoll_id`, `IsDeletedByAdmin`, `Report`, `Action`, `ReportDate`, `PTPDate`, `PTPAmount`, `PaidDate`, `PaidAmount`) VALUES
(153, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(154, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(155, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(156, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(157, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(158, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(159, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(160, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(161, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(162, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(163, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(164, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(165, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(166, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(167, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(168, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(169, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(170, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(171, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(172, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(173, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(174, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(175, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(176, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(177, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(178, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(179, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(180, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(181, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(182, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(183, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(184, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(185, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(186, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317');
INSERT INTO `bankdata_customer` (`id`, `created_at`, `updated_at`, `NumberCard`, `Bank`, `TypeCard`, `NameCustomer`, `PIC`, `AssignmentDate`, `ExpireDate`, `DateOfBirth`, `OpenDate`, `WODate`, `LastPayDate`, `LastTransactionDate`, `LastPayment`, `LastTransactionNominal`, `Limit`, `Principal`, `MinPay`, `OSBalance`, `Address1`, `Address2`, `Address3`, `Address4`, `City`, `OfficeName`, `OfficeAddress1`, `OfficeAddress2`, `OfficeAddress3`, `OfficeAddress4`, `Phone1`, `Phone2`, `HomePhone1`, `HomePhone2`, `OfficePhone1`, `OfficePhone2`, `ECPhone1`, `ECPhone2`, `OtherNumber`, `ECName`, `ECName2`, `StatusEC`, `StatusEC2`, `MotherName`, `Sex`, `Email`, `VirtualAccount`, `VirtualAccountName`, `Komoditi`, `KomoditiType`, `Produsen`, `Model`, `LoanTerm`, `InstallmentAlreadyPaid`, `MonthlyPaymentNominal`, `DPD`, `Bucket`, `BillingNoPenalty`, `DendaBelumDibayar`, `LastVisitDate`, `LastVisitResult`, `LastReport`, `LastVisitAddress`, `OTSOffer`, `OtherData1`, `OtherData2`, `OtherData3`, `OtherData4`, `OtherData5`, `PermanentMessage`, `Deskcoll_id`, `IsDeletedByAdmin`, `Report`, `Action`, `ReportDate`, `PTPDate`, `PTPAmount`, `PaidDate`, `PaidAmount`) VALUES
(187, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(188, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(189, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(190, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(191, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(192, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(193, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(194, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(195, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(196, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(197, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(198, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(199, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(200, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(201, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(202, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(203, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(204, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(205, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(206, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(207, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(208, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(209, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(210, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(211, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(212, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(213, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(214, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(215, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(216, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(217, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(218, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(219, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(220, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111');
INSERT INTO `bankdata_customer` (`id`, `created_at`, `updated_at`, `NumberCard`, `Bank`, `TypeCard`, `NameCustomer`, `PIC`, `AssignmentDate`, `ExpireDate`, `DateOfBirth`, `OpenDate`, `WODate`, `LastPayDate`, `LastTransactionDate`, `LastPayment`, `LastTransactionNominal`, `Limit`, `Principal`, `MinPay`, `OSBalance`, `Address1`, `Address2`, `Address3`, `Address4`, `City`, `OfficeName`, `OfficeAddress1`, `OfficeAddress2`, `OfficeAddress3`, `OfficeAddress4`, `Phone1`, `Phone2`, `HomePhone1`, `HomePhone2`, `OfficePhone1`, `OfficePhone2`, `ECPhone1`, `ECPhone2`, `OtherNumber`, `ECName`, `ECName2`, `StatusEC`, `StatusEC2`, `MotherName`, `Sex`, `Email`, `VirtualAccount`, `VirtualAccountName`, `Komoditi`, `KomoditiType`, `Produsen`, `Model`, `LoanTerm`, `InstallmentAlreadyPaid`, `MonthlyPaymentNominal`, `DPD`, `Bucket`, `BillingNoPenalty`, `DendaBelumDibayar`, `LastVisitDate`, `LastVisitResult`, `LastReport`, `LastVisitAddress`, `OTSOffer`, `OtherData1`, `OtherData2`, `OtherData3`, `OtherData4`, `OtherData5`, `PermanentMessage`, `Deskcoll_id`, `IsDeletedByAdmin`, `Report`, `Action`, `ReportDate`, `PTPDate`, `PTPAmount`, `PaidDate`, `PaidAmount`) VALUES
(221, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(222, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(223, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(224, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(225, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(226, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(227, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(228, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(229, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(230, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(231, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(232, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(233, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(234, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(235, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(236, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(237, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(238, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(239, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(240, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(241, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(242, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(243, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(244, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(245, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(246, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(247, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(248, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(249, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(250, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(251, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(252, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(253, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(254, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317');
INSERT INTO `bankdata_customer` (`id`, `created_at`, `updated_at`, `NumberCard`, `Bank`, `TypeCard`, `NameCustomer`, `PIC`, `AssignmentDate`, `ExpireDate`, `DateOfBirth`, `OpenDate`, `WODate`, `LastPayDate`, `LastTransactionDate`, `LastPayment`, `LastTransactionNominal`, `Limit`, `Principal`, `MinPay`, `OSBalance`, `Address1`, `Address2`, `Address3`, `Address4`, `City`, `OfficeName`, `OfficeAddress1`, `OfficeAddress2`, `OfficeAddress3`, `OfficeAddress4`, `Phone1`, `Phone2`, `HomePhone1`, `HomePhone2`, `OfficePhone1`, `OfficePhone2`, `ECPhone1`, `ECPhone2`, `OtherNumber`, `ECName`, `ECName2`, `StatusEC`, `StatusEC2`, `MotherName`, `Sex`, `Email`, `VirtualAccount`, `VirtualAccountName`, `Komoditi`, `KomoditiType`, `Produsen`, `Model`, `LoanTerm`, `InstallmentAlreadyPaid`, `MonthlyPaymentNominal`, `DPD`, `Bucket`, `BillingNoPenalty`, `DendaBelumDibayar`, `LastVisitDate`, `LastVisitResult`, `LastReport`, `LastVisitAddress`, `OTSOffer`, `OtherData1`, `OtherData2`, `OtherData3`, `OtherData4`, `OtherData5`, `PermanentMessage`, `Deskcoll_id`, `IsDeletedByAdmin`, `Report`, `Action`, `ReportDate`, `PTPDate`, `PTPAmount`, `PaidDate`, `PaidAmount`) VALUES
(255, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(256, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(257, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(258, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(259, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(260, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(261, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(262, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(263, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(264, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(265, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(266, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(267, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(268, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(269, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(270, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(271, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(272, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(273, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(274, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(275, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(276, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(277, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(278, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(279, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(280, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(281, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(282, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(283, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(284, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(285, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(286, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(287, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(288, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111');
INSERT INTO `bankdata_customer` (`id`, `created_at`, `updated_at`, `NumberCard`, `Bank`, `TypeCard`, `NameCustomer`, `PIC`, `AssignmentDate`, `ExpireDate`, `DateOfBirth`, `OpenDate`, `WODate`, `LastPayDate`, `LastTransactionDate`, `LastPayment`, `LastTransactionNominal`, `Limit`, `Principal`, `MinPay`, `OSBalance`, `Address1`, `Address2`, `Address3`, `Address4`, `City`, `OfficeName`, `OfficeAddress1`, `OfficeAddress2`, `OfficeAddress3`, `OfficeAddress4`, `Phone1`, `Phone2`, `HomePhone1`, `HomePhone2`, `OfficePhone1`, `OfficePhone2`, `ECPhone1`, `ECPhone2`, `OtherNumber`, `ECName`, `ECName2`, `StatusEC`, `StatusEC2`, `MotherName`, `Sex`, `Email`, `VirtualAccount`, `VirtualAccountName`, `Komoditi`, `KomoditiType`, `Produsen`, `Model`, `LoanTerm`, `InstallmentAlreadyPaid`, `MonthlyPaymentNominal`, `DPD`, `Bucket`, `BillingNoPenalty`, `DendaBelumDibayar`, `LastVisitDate`, `LastVisitResult`, `LastReport`, `LastVisitAddress`, `OTSOffer`, `OtherData1`, `OtherData2`, `OtherData3`, `OtherData4`, `OtherData5`, `PermanentMessage`, `Deskcoll_id`, `IsDeletedByAdmin`, `Report`, `Action`, `ReportDate`, `PTPDate`, `PTPAmount`, `PaidDate`, `PaidAmount`) VALUES
(289, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(290, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(291, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(292, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(293, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(294, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(295, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(296, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(297, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(298, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Nizar Colok', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(299, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(300, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(301, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(302, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(303, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(304, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(305, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(306, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(307, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(308, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(309, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(310, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(311, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(312, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(313, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Febrian', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(314, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(315, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(316, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(317, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(318, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(319, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(320, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(321, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(322, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317');
INSERT INTO `bankdata_customer` (`id`, `created_at`, `updated_at`, `NumberCard`, `Bank`, `TypeCard`, `NameCustomer`, `PIC`, `AssignmentDate`, `ExpireDate`, `DateOfBirth`, `OpenDate`, `WODate`, `LastPayDate`, `LastTransactionDate`, `LastPayment`, `LastTransactionNominal`, `Limit`, `Principal`, `MinPay`, `OSBalance`, `Address1`, `Address2`, `Address3`, `Address4`, `City`, `OfficeName`, `OfficeAddress1`, `OfficeAddress2`, `OfficeAddress3`, `OfficeAddress4`, `Phone1`, `Phone2`, `HomePhone1`, `HomePhone2`, `OfficePhone1`, `OfficePhone2`, `ECPhone1`, `ECPhone2`, `OtherNumber`, `ECName`, `ECName2`, `StatusEC`, `StatusEC2`, `MotherName`, `Sex`, `Email`, `VirtualAccount`, `VirtualAccountName`, `Komoditi`, `KomoditiType`, `Produsen`, `Model`, `LoanTerm`, `InstallmentAlreadyPaid`, `MonthlyPaymentNominal`, `DPD`, `Bucket`, `BillingNoPenalty`, `DendaBelumDibayar`, `LastVisitDate`, `LastVisitResult`, `LastReport`, `LastVisitAddress`, `OTSOffer`, `OtherData1`, `OtherData2`, `OtherData3`, `OtherData4`, `OtherData5`, `PermanentMessage`, `Deskcoll_id`, `IsDeletedByAdmin`, `Report`, `Action`, `ReportDate`, `PTPDate`, `PTPAmount`, `PaidDate`, `PaidAmount`) VALUES
(323, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(324, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(325, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(326, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(327, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(328, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(329, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(330, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(331, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(332, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111'),
(333, NULL, NULL, '1225 8453 38278', 'OCBC NISP', 'GOLD MASTER CARD', 'Asep', 'User Toba', '2015-07-01', '1972-01-24', '2016-12-16', '1990-05-30', '2019-02-27', '1998-05-10', '2014-02-09', 'Rp.1.168.105', 'Rp.0.706.179', 'Rp.8.289.389', 'Rp.1.987.901', 'Rp.1.379.841', 'Rp.1.085.919', 'Ki. Ikan No. 933, Tual 37479, Gorontalo', 'Psr. Kebangkitan Nasional No. 5, Langsa 76132, Kalsel', 'Ki. Badak No. 672, Tual 34365, Sumut', 'Gg. Raya Ujungberung No. 39, Kendari 27657, Kaltara', 'Magelang', 'Office 2', 'Ki. Elang No. 683, Sibolga 39761, Banten', 'Ds. Gajah Mada No. 508, Administrasi Jakarta Barat 82092, Lampung', 'Jln. Bakhita No. 142, Kupang 69569, Jabar', 'Ds. Taman No. 24, Administrasi Jakarta Selatan 63596, Sumbar', '0824-6543-5029', '0842-8265-6618', '022714-66-96', '022138-72-38', '022988-21-89', '022634-69-46', '0867-0538-3034', '0813-5715-8980', '0865-6142-9107', 'Among Kusumo', 'Kambali Kusumo', 'SISTER', 'OTHER RELATIVE', 'Wulan Namaga', 'MALE', 'bakianto42@maryati.name', '1015472676', 'Imam Firgantoro', 'Audio / Video Player', 'CAT_MP', 'APPLE', 'Model 2', '12', 'Rp.7.985.075', 'Rp.3.400.583', '759', 'M5', 'Rp.9.337.343', 'Rp.2.580.301', '2009-01-04 00:00:00', 'LFCleftMessage', 'No', 'Ds. Ters. Jakarta No. 981, Bengkulu 79758, Papua', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '89', 'No', 'HP : CH pernah bayar 1 juta ', 'Sembunyi', '1994-09-25', '2018-04-23', 'Rp.8.553.148', '2015-06-12', 'Rp.8.101.554'),
(334, NULL, NULL, '2617 4125 61019', 'Maybank', 'PLATINUM MASTER', 'Martana Marbun', 'User Toba', '2005-01-11', '2004-01-19', '2021-04-28', '1979-11-12', '1993-01-11', '1985-11-12', '1983-09-05', 'Rp.6.559.332', 'Rp.6.362.841', 'Rp.8.251.942', 'Rp.8.569.433', 'Rp.4.324.636', 'Rp.3.748.684', 'Psr. Banda No. 584, Surabaya 25092, Malut', 'Jln. Babadan No. 640, Dumai 61146, Sultra', 'Jr. Ujung No. 456, Bima 45900, Jatim', 'Psr. Abang No. 288, Langsa 26306, Kalsel', 'Tangerang Selatan', 'Office 4', 'Kpg. Diponegoro No. 854, Samarinda 30086, Sumbar', 'Jln. Arifin No. 370, Magelang 57704, Sulbar', 'Gg. Bagis Utama No. 634, Dumai 58015, Maluku', 'Ds. Ters. Kiaracondong No. 596, Batu 58075, Sumut', '0864-8991-7662', '0871-9722-6972', '022745-28-25', '022086-77-74', '022282-21-75', '022562-44-70', '0870-8396-6589', '0823-8818-2546', '0886-7196-7004', 'Ella Ade Maryati S.IP', 'Rizki Haryanto', 'MOTHER', 'SON', 'Salwa Rahimah', 'FEMALE', 'eka24@yahoo.com', '392773386', 'Paulin Fujiati', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 3', '12', 'Rp.6.222.093', 'Rp.0.669.746', '157', 'M6', 'Rp.4.660.317', 'Rp.8.165.055', '1998-06-03 00:00:00', 'LFCRefuseToPay', 'No', 'Jln. Merdeka No. 690, Palangka Raya 46320, Sumbar', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '89', 'No', 'CH Komplain ', 'Bayar', '1998-11-15', '2018-09-24', 'Rp.8.356.289', '1985-04-30', 'Rp.0.860.317'),
(335, NULL, NULL, '0984 2179 23985', 'DBS', 'GOLD VISA', 'Ana Pertiwi', 'User Toba', '2004-05-07', '1992-08-13', '2010-10-26', '2011-04-27', '1982-07-28', '1977-05-05', '2005-06-28', 'Rp.6.590.434', 'Rp.9.721.154', 'Rp.9.164.535', 'Rp.0.779.390', 'Rp.7.289.384', 'Rp.2.298.333', 'Psr. Kartini No. 467, Samarinda 98543, Banten', 'Jln. Flora No. 521, Mojokerto 48277, NTB', 'Gg. Ki Hajar Dewantara No. 773, Singkawang 89684, Sulbar', 'Kpg. Hang No. 138, Jayapura 79050, Pabar', 'Lhokseumawe', 'Office 3', 'Dk. Umalas No. 269, Sibolga 53324, Riau', 'Psr. Nangka No. 11, Subulussalam 43393, Sulsel', 'Ds. Babah No. 92, Padangsidempuan 73028, DIY', 'Kpg. Panjaitan No. 809, Tidore Kepulauan 56096, Lampung', '0839-8698-9336', '0860-8621-6639', '022045-53-98', '022292-06-44', '022590-32-07', '022347-64-62', '0846-0653-6827', '0845-7190-9820', '0845-6190-2190', 'Juli Uyainah', 'Dono Nababan', 'OTHER RELATIVE', 'BROTHER', 'Aslijan Maheswara', 'FEMALE', 'rusman.riyanti@gmail.com', '0329212313', 'Fitriani Ophelia Mayasari', 'LEISURE', 'CAT_CD', 'XIAOMI', 'Model 1', '9', 'Rp.6.923.176', 'Rp.8.565.138', '692', 'M5', 'Rp.2.534.585', 'Rp.5.226.295', '1994-03-06 00:00:00', 'LFChouseLocked', 'No', 'Gg. PHH. Mustofa No. 461, Bontang 27980, Maluku', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', '89', 'No', 'CH BP', 'Sembunyi', '1979-01-21', '2022-06-27', 'Rp.3.033.624', '1988-01-12', 'Rp.6.964.002'),
(336, NULL, NULL, '2231 3238 86864', 'Maybank', 'PLATINUM', 'Asmadi Winarno S.Sos', 'User Toba', '2018-02-09', '2001-11-16', '2011-09-02', '1973-11-20', '2007-02-17', '2006-09-19', '1993-02-02', 'Rp.1.429.597', 'Rp.9.178.316', 'Rp.7.800.666', 'Rp.2.655.141', 'Rp.7.571.796', 'Rp.8.578.035', 'Jr. Mahakam No. 86, Pematangsiantar 48130, Jambi', 'Ds. Sadang Serang No. 236, Administrasi Jakarta Utara 21066, Kepri', 'Jr. Bahagia No. 385, Sukabumi 57957, Sulteng', 'Jln. Cikutra Barat No. 888, Depok 70179, Sulbar', 'Subulussalam', 'Office 3', 'Psr. Kyai Mojo No. 617, Jayapura 87318, Bali', 'Ds. Achmad No. 579, Tual 53324, Riau', 'Jr. Taman No. 93, Probolinggo 16981, Lampung', 'Ds. Bawal No. 383, Sawahlunto 55805, Jatim', '0881-1717-9999', '0845-4920-1124', '022343-53-95', '022950-28-30', '022952-96-17', '022308-04-78', '0841-5668-7608', '0838-9380-2982', '0893-7245-9949', 'Eman Prasasta', 'Ellis Lili Safitri S.H.', 'FRIEND', 'MOTHER', 'Perkasa Gatra Napitupulu', 'MALE', 'jelita.handayani@yahoo.com', '1050383620', 'Ozy Mandala M.Pd', 'Handphone / Smart Phone', 'CAT_MP', 'APPLE', 'Model 2', '3', 'Rp.2.809.311', 'Rp.7.904.516', '907', 'M4', 'Rp.6.832.417', 'Rp.5.356.415', '2014-05-15 00:00:00', 'LFCRefuseToPay', 'Yes', 'Jln. Ters. Jakarta No. 228, Singkawang 22486, Kepri', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '89', 'No', 'CH hard kontak ', 'Menolak', '1997-04-01', '2017-08-31', 'Rp.6.858.768', '1986-03-10', 'Rp.0.345.111');

-- --------------------------------------------------------

--
-- Struktur dari tabel `carousel`
--

CREATE TABLE `carousel` (
  `id_carousel` int(11) NOT NULL,
  `subtitle_carousel` text NOT NULL,
  `title_carousel` text NOT NULL,
  `image_carousel` text NOT NULL,
  `aktif_carousel` int(1) NOT NULL,
  `created_at_carousel` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at_carousel` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `carousel`
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
-- Struktur dari tabel `company_profile`
--

CREATE TABLE `company_profile` (
  `id` int(11) NOT NULL,
  `alamat` varchar(500) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nomor_telepon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `company_profile`
--

INSERT INTO `company_profile` (`id`, `alamat`, `email`, `nomor_telepon`) VALUES
(1, 'MT Haryono Square\r\nJl. MT. Haryono Kav.10, Blok B8b\r\nKel. Bidara Cina, Kec. Jatinegara\r\nJakarta Timur', 'info@gendehgroup.com', '021-29067354');

-- --------------------------------------------------------

--
-- Struktur dari tabel `devsetting`
--

CREATE TABLE `devsetting` (
  `id` int(11) NOT NULL,
  `devkey` varchar(256) NOT NULL,
  `devvalue` varchar(256) NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `devsetting`
--

INSERT INTO `devsetting` (`id`, `devkey`, `devvalue`, `ket`) VALUES
(3, 'TITLE', 'Bankdata toba', 'title web'),
(4, 'COLOR_WEB', '#e6051b', 'biru = #2879c1,hijau = #1fa12e'),
(5, 'LANDING', 'false', 'true atau false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `faqs`
--

CREATE TABLE `faqs` (
  `id_faqs` int(11) NOT NULL,
  `text_faqs` text NOT NULL,
  `answer_faqs` text NOT NULL,
  `sort_faqs` int(11) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `faqs`
--

INSERT INTO `faqs` (`id_faqs`, `text_faqs`, `answer_faqs`, `sort_faqs`, `is_active`) VALUES
(12, 'Apa Itu Shipgo?', 'ShipGo adalah Platform yang bergerak di Jasa Pengiriman Pengiriman Bahan Bakar serta Jasa Handling Pengurusan Kontrak Kontrak Pengiriman Bahan Bakar.  Kami bekerja secara yang Profesional dengan pengiriman tepat waktu, minimum Losses dengan Safety yang Maksimal', 1, 1),
(13, 'Barang Apa Saya yang bisa diangkut?', 'Saat ini kami masih berfokus mengangkut Solar milik PT. Pertamina dan Perusahaan MIGAS lainnya', 2, 1),
(14, 'Bagaimana Cara Menghubungi Shipgo', 'Silahkan Menghubungi Bagian Sales kami di Alamat: MT Haryono Square Jl. MT. Haryono Kav.10, Blok B8b Kel. Bidara Cina, Kec. Jatinegara Jakarta Timur, Phone: 021-29067354', 3, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `halaman`
--

CREATE TABLE `halaman` (
  `id_halaman` int(11) NOT NULL,
  `title_halaman` varchar(128) NOT NULL,
  `image_halaman` varchar(64) NOT NULL,
  `short_halaman` varchar(128) NOT NULL,
  `content_halaman` longtext NOT NULL,
  `meta_keyword_halaman` varchar(128) NOT NULL,
  `meta_desc_halaman` varchar(128) NOT NULL,
  `aktif_halaman` int(1) NOT NULL DEFAULT 1,
  `created_at_halaman` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at_halaman` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `halaman`
--

INSERT INTO `halaman` (`id_halaman`, `title_halaman`, `image_halaman`, `short_halaman`, `content_halaman`, `meta_keyword_halaman`, `meta_desc_halaman`, `aktif_halaman`, `created_at_halaman`, `updated_at_halaman`) VALUES
(1, 'Our Services', 'IMG-20131108-032371.jpg', '1', '<p><b>ShipGo </b>adalah Platform yang bergerak di Jasa Pengiriman Bahan \r\nBakar serta Jasa Handling Pengurusan Kontrak Kontral Pengiriman Bahan \r\nBakar.  Kami bekerja secara yang Profesional dengan pengiriman tepat \r\nwaktu, minimum Losses dengan Safety yang Maksimal</p><h3><b>Nilai Perusahaan</b></h3><p><b>Clean & Integrity</b><br>Dikelola\r\n secara profesional, menghindari benturan kepentingan, tidak toleransi \r\nterhadap suap, menjunjung tinggi kepercayaan dan integritas, serta \r\nberpedoman kepada asas-asas tata kelola korporasi yang baik.<br><b><br>Competitive</b><br>Mampu\r\n berkompetisi dalam skala regional maupun internasional, mendorong \r\npertumbuhan melalui investasi, membangun budaya sadar biaya dan \r\nmenghargai.<br><b><br>Customer Focused</b><br>Berorientasi pada kepentingan pelanggan, dan berkomitmen untuk memberikan pelayanan terbaik kepada pelanggan.<br><br><br></p>', 'Shipgo', 'pengiriman cargo solar', 1, '2022-10-09 10:14:15', '2022-11-02 09:49:38'),
(2, 'Our Strenght', 'WhatsApp_Image_2022-02-15_at_10_32_09_(1).jpeg', '2', '<h2>Menciptakan Nilai Tambah<br></h2><b>Commercial (Komersial)</b><br>Menciptakan nilai tambah dengan orientasi komersial, mengambil keputusan berdasarkan prinsip-prinsip bisnis yang sehat.<br><b><br>Capable (Berkemampuan)</b><br>Dikelola oleh pemimpin dan pekerja yang profesional dan memiliki talenta dan penguasaan teknis tinggi, berkomitmen dalam membangun kemampuan riset dan pengembangan.<br><b><br>Service Excellence (Pelayanan Prima)</b><br>Berorientasi pada kepentingan dan berkomitmen untuk memberikan layanan terbaik kepada customer, vendor dan transportir<br><br>', 'kework', 'desc', 1, '2022-10-09 10:14:15', '2022-11-02 09:52:27'),
(4, 'Layanan Angkutan BBM', 'tengah21.jpg', '4', '<h1>Fuel Transportation</h1><p>Sebagai perusahaan transportasi BBM \r\nIndustri, kami memberikan layanan kepada para pelanggan kami dengan \r\njaminan kualitas, jumlah, tempat dan ketepatan waktu.</p>', 'kework', 'desc', 1, '2022-10-09 10:14:15', '2022-11-02 02:21:04'),
(5, 'Layanan Fuel Handling ', 'tengah5.jpg', '5', '<h1>Fuel Management</h1><p>Merupakan jasa yang disediakan oleh PT. \r\nHema Shipping Indonesia  Niaga untuk menangani pengelolaan BBM Industri \r\nhingga sampai di lokasi pelanggan dan juga merupakan layanan harian \r\nterkait penyaluran BBM Industri di lokasi tersebut, yang dilakukan baik \r\nuntuk BBM kepemilikan sendiri atau pihak kepemilikan niaga lainnya.</p>', 'kework', 'desc', 1, '2022-10-09 10:14:15', '2022-11-02 02:25:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontrak_customer`
--

CREATE TABLE `kontrak_customer` (
  `id_kontrak_customer` int(11) NOT NULL,
  `nomor_kontrak_customer` varchar(255) NOT NULL,
  `tanggal_kontrak_customer` date NOT NULL,
  `id_customer` int(11) NOT NULL,
  `IDUser` int(11) NOT NULL,
  `id_user_update_kontrak_customer` int(11) NOT NULL,
  `id_perusahaan` int(11) NOT NULL,
  `keterangan_kontrak_customer` text NOT NULL,
  `status_kontrak_customer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kontrak_customer`
--

INSERT INTO `kontrak_customer` (`id_kontrak_customer`, `nomor_kontrak_customer`, `tanggal_kontrak_customer`, `id_customer`, `IDUser`, `id_user_update_kontrak_customer`, `id_perusahaan`, `keterangan_kontrak_customer`, `status_kontrak_customer`) VALUES
(1, '24424', '2022-11-25', 2, 2, 0, 1, '<p><b>asaafsdfbb sfsfsf</b></p><h4><b>sfsfsfs</b></h4><h4>fsdfsfsfsdfsfs</h4><p><br></p><p>asdada<br></p>', 1),
(2, '0706000', '2022-11-25', 2, 8, 0, 1, '<p>Kontrak untuk menaungi seluruh permintaan&nbsp;</p>', 1),
(3, 'ASDAD', '2022-11-29', 2, 2, 0, 1, '<p>DASDADDASD<br></p>', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `leavemsg`
--

CREATE TABLE `leavemsg` (
  `id_leavemsg` int(11) NOT NULL,
  `nama_leavemsg` varchar(128) NOT NULL,
  `email_leavemsg` varchar(128) NOT NULL,
  `no_leavemsg` varchar(16) NOT NULL,
  `msg_leavemsg` text NOT NULL,
  `approve_leavemsg` int(1) NOT NULL DEFAULT 1,
  `created_at_leavemsg` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at_leavemsg` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `leavemsg`
--

INSERT INTO `leavemsg` (`id_leavemsg`, `nama_leavemsg`, `email_leavemsg`, `no_leavemsg`, `msg_leavemsg`, `approve_leavemsg`, `created_at_leavemsg`, `updated_at_leavemsg`) VALUES
(1, 'Agus', 'agus@gmail.com', '2147483647', 'Halo...Pelayanan Sangat Bagus Sekali', 1, '2022-10-09 08:54:46', '2022-10-24 03:36:18'),
(2, 'Asep', 'asep@gmail.com', '2147483647', 'Pelayanan Dari CS Nya Ramah', 1, '2022-10-09 09:06:49', '2022-10-24 03:36:20'),
(4, 'Caya', 'muhammadbintangcahyaputra@gmail.com', '08989843214', 'Mantap', 1, '2022-10-09 09:09:11', '2022-10-24 03:36:22'),
(5, 'dasdad', 'dasd@ada.com', '2131312312', 'adasdada', 1, '2022-10-18 02:29:24', '2022-10-18 02:30:06'),
(6, 'Pertamina', 'pertamina@gmail.com', '085220022884', 'Pelayanan sangat cepat dan teliti serta ramah', 2, '2022-10-24 03:37:53', '2022-10-24 03:37:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `link`
--

CREATE TABLE `link` (
  `id_link` int(11) NOT NULL,
  `nama_link` varchar(100) NOT NULL,
  `url_link` text NOT NULL,
  `sort_link` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `link`
--

INSERT INTO `link` (`id_link`, `nama_link`, `url_link`, `sort_link`) VALUES
(1, 'BPH Migas', 'https://www.bphmigas.go.id', 3),
(2, 'Pertamina', 'https://www.pertamina.com/', 4),
(3, 'Peduli Lindungi Covid19', 'https://www.pedulilindungi.id/', 1),
(11, 'Kementrian ESDM', 'https://www.esdm.go.id', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `IDMenu` int(11) NOT NULL,
  `namamenu` varchar(50) NOT NULL,
  `url_menu` varchar(100) NOT NULL,
  `icon_menu` varchar(100) NOT NULL,
  `is_head` int(11) NOT NULL,
  `level_menu` int(11) NOT NULL,
  `menu_head` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`IDMenu`, `namamenu`, `url_menu`, `icon_menu`, `is_head`, `level_menu`, `menu_head`, `sort`, `is_active`) VALUES
(1, 'Dashboard', 'dashboard', 'fas fa-fw fa-tachometer-alt', 0, 1, 0, 1, 1),
(4, 'Web Control', '#', 'fas fa-fw fa-cogs', 1, 1, 0, 20, 1),
(6, 'Menu', 'menu', 'fas fa-fw fa-folder-minus', 0, 2, 4, 3, 1),
(24, 'Role', 'role', 'fas fa-fw fa-users', 0, 2, 4, 2, 1),
(25, 'Users', 'user', 'fas fa-fw fa-user', 0, 2, 4, 1, 1),
(30, 'Dev Setting', 'devsetting', 'fas fa-fw fa-cogs', 0, 2, 4, 4, 1),
(88, 'Bayar Invoice Vendor', 'pembayaraninvoicevendor', 'fa fa-play', 0, 2, 82, 2, 1),
(89, 'Modul Piutang', '#', 'fa fa-play', 1, 1, 0, 4, 0),
(91, 'Pengurusan Dokumen', 'PengurusanDokumen', 'fa fa-play', 0, 2, 92, 2, 1),
(56, 'Tabel Parameter', '#', 'fa fa-id-card', 1, 1, 0, 1, 1),
(119, 'Kontrak Customer', 'kontrak_customer', 'fa fa-play', 0, 2, 65, 2, 1),
(64, 'Provinsi', 'provinsi', 'fa fa-table', 0, 2, 56, 2, 1),
(85, 'Pemeliharaan Armada', 'pemeliharaanarmada', 'fa fa-play', 0, 2, 92, 3, 1),
(66, 'Jabatan Karyawan', 'jabatan', 'fa fa-table', 0, 2, 56, 4, 1),
(65, 'Modul Penjualan', '#', 'fa fa-play', 1, 1, 0, 2, 1),
(67, 'Divisi Organisasi', 'divisi_organisasi', 'fa fa-table', 0, 2, 56, 3, 1),
(68, 'Nama Perusahaan', 'perusahaan', 'fa fa-table', 0, 2, 56, 4, 1),
(69, 'Karyawan', 'karyawan', 'fa fa-table', 0, 2, 56, 5, 1),
(70, 'Armada Kapal', 'armada_kapal', 'fa fa-table', 0, 2, 56, 6, 1),
(71, 'Armada Truck', 'armada_truck', 'fa fa-table', 0, 2, 56, 7, 1),
(72, 'Pelabuhan Laut', 'pelabuhan_laut', 'fa fa-table', 0, 2, 56, 8, 1),
(73, 'Customer/Pelanggan', 'customer', 'fa fa-table', 0, 2, 56, 9, 1),
(74, 'Supplier/Vendor', 'supplier', 'fa fa-table', 0, 2, 56, 10, 1),
(120, 'Modul Pengiriman', '#', 'fa fa-play', 1, 1, 0, 3, 1),
(112, 'Sosial Media', 'sosmed', 'fa fa-table', 0, 2, 94, 10, 1),
(118, 'Kab/Kota', 'kabkota', 'fa fa-table', 0, 2, 56, 3, 1),
(78, 'Penjualan', 'penjualan', 'fa fa-play', 0, 2, 65, 2, 1),
(80, 'Invoice Customer', 'invoicingcustomer', 'fa fa-play', 0, 2, 89, 1, 1),
(124, 'Pengiriman Barang', 'pengiriman_barang', 'fa fa-play', 0, 2, 120, 3, 1),
(82, 'Modul Hutang', '#', 'fa fa-play', 1, 1, 0, 5, 0),
(87, 'Invoice Jasa Vendor', 'invoicesuppliervendor', 'fa fa-play', 0, 2, 82, 1, 1),
(94, 'Web Profile', '#', 'fas fa-fw fa-tachometer-alt', 1, 1, 0, 20, 1),
(96, 'Menu Landing', 'menulanding', 'fas fa-fw fa-tachometer-alt', 0, 2, 94, 3, 1),
(97, 'Carousel', 'carousel', 'fas fa-fw fa-tachometer-alt', 0, 2, 94, 5, 1),
(103, 'Link Footer', 'link', 'fas fa-fw fa-table', 0, 2, 94, 15, 1),
(98, 'Faqs', 'faqs', 'fas fa-fw fa-table', 0, 2, 94, 6, 1),
(99, 'Articles', 'articles', 'fas fa-fw fa-table', 0, 2, 94, 7, 1),
(100, 'Leave Message', 'leavemsg', 'fas fa-fw fa-table', 0, 2, 94, 10, 1),
(101, 'Menu Bawah', 'menubawah', 'fas fa-fw fa-table', 0, 2, 94, 13, 1),
(102, 'Our Client', 'ourclient', 'fas fa-fw fa-table', 0, 2, 94, 12, 1),
(104, 'Halaman', 'halaman', 'fas fa-fw fa-table', 0, 2, 94, 20, 1),
(105, 'Menu Tengah', 'menutengah', 'fas fa-fw fa-table', 0, 2, 94, 19, 1),
(106, 'Testimonial', 'Testimonial', 'fa fa-table', 0, 2, 94, 20, 1),
(123, 'Informasi Pembelian', '#', 'fa fa-table', 1, 1, 0, 8, 1),
(117, 'Penawaran Harga', 'penawaran_harga', 'fa fa-play', 0, 2, 65, 1, 1),
(128, 'Bank Data', 'bankdata_customer', 'fas fa-fw fa-box', 0, 1, 0, 2, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menubawah`
--

CREATE TABLE `menubawah` (
  `id_menubawah` int(11) NOT NULL,
  `name_menubawah` varchar(128) NOT NULL,
  `id_halaman` int(11) NOT NULL,
  `posisi` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `menubawah`
--

INSERT INTO `menubawah` (`id_menubawah`, `name_menubawah`, `id_halaman`, `posisi`) VALUES
(1, 'About Us', 1, 1),
(2, 'Why Us', 2, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menudepan`
--

CREATE TABLE `menudepan` (
  `id_menudepan` int(11) NOT NULL,
  `title_menudepan` varchar(64) NOT NULL,
  `href_menudepan` text NOT NULL,
  `parent_menudepan` int(11) NOT NULL,
  `aktif_menudepan` int(1) NOT NULL,
  `created_at_menudepan` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at_menudepan` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `menulanding`
--

CREATE TABLE `menulanding` (
  `id_menulanding` int(11) NOT NULL,
  `href_menulanding` varchar(64) NOT NULL,
  `id_halaman` int(11) NOT NULL,
  `jenis_menulanding` int(1) NOT NULL DEFAULT 1 COMMENT '1 = href, 2 = halaman',
  `level_menulanding` int(1) NOT NULL DEFAULT 1,
  `head_menulanding` int(1) NOT NULL DEFAULT 0,
  `name_menulanding` varchar(64) NOT NULL,
  `parent_menulanding` int(11) DEFAULT NULL,
  `sort_menulanding` int(11) NOT NULL DEFAULT 100,
  `status_menulanding` int(1) NOT NULL DEFAULT 1 COMMENT '1 = aktif, 2 = mati'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `menulanding`
--

INSERT INTO `menulanding` (`id_menulanding`, `href_menulanding`, `id_halaman`, `jenis_menulanding`, `level_menulanding`, `head_menulanding`, `name_menulanding`, `parent_menulanding`, `sort_menulanding`, `status_menulanding`) VALUES
(1, '#about', 0, 1, 1, 0, 'About', NULL, 10, 1),
(2, '#services', 0, 1, 1, 0, 'Services', NULL, 20, 1),
(3, '#contact', 0, 1, 1, 0, 'Contact Us', NULL, 50, 1),
(12, '#news', 0, 1, 1, 0, 'News', NULL, 40, 1),
(13, '#ourships', 0, 1, 1, 0, 'Our Ships', NULL, 30, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menutengah`
--

CREATE TABLE `menutengah` (
  `id_menutengah` int(11) NOT NULL,
  `id_halaman` int(11) NOT NULL,
  `posisi` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `menutengah`
--

INSERT INTO `menutengah` (`id_menutengah`, `id_halaman`, `posisi`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_landing`
--

CREATE TABLE `menu_landing` (
  `id_menu_landing` int(11) NOT NULL,
  `href` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '1 = aktif, 2 = mati'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `menu_landing`
--

INSERT INTO `menu_landing` (`id_menu_landing`, `href`, `name`, `status`) VALUES
(1, '#about', 'About', 1),
(2, '#services', 'Services', 1),
(3, '#contact', 'Contact', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_utama`
--

CREATE TABLE `menu_utama` (
  `id_menu_utama` int(11) NOT NULL,
  `nama_menu_utama` varchar(200) NOT NULL,
  `url_menu_utama` varchar(200) NOT NULL,
  `sort_menu_utama` int(11) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `menu_utama`
--

INSERT INTO `menu_utama` (`id_menu_utama`, `nama_menu_utama`, `url_menu_utama`, `sort_menu_utama`, `is_active`) VALUES
(2, 'Beranda', '#landing', 1, 1),
(3, 'Tentang Kami', '#faq', 2, 1),
(4, 'Informasi & Media', '#projects', 3, 1),
(5, 'Ruang Anggota', 'auth/register', 4, 1),
(6, 'Hubungi Kami', '#footer', 5, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ourclient`
--

CREATE TABLE `ourclient` (
  `id_ourclient` int(11) NOT NULL,
  `image_ourclient` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ourclient`
--

INSERT INTO `ourclient` (`id_ourclient`, `image_ourclient`) VALUES
(8, 'pertamina.jpg'),
(9, 'elnusa.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penawaran_harga`
--

CREATE TABLE `penawaran_harga` (
  `id_penawaran_harga` int(11) NOT NULL,
  `id_fungsi_aplikasi` int(1) NOT NULL DEFAULT 1,
  `no_tx_penawaran_harga` varchar(255) NOT NULL,
  `tanggal_transaksi_penawaran_harga` date NOT NULL,
  `no_refrensi_penawaran_harga` varchar(255) NOT NULL,
  `IDUser` int(11) NOT NULL,
  `id_user_update_penawaran_harga` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_termin_pembayaran` int(11) NOT NULL,
  `id_perusahaan` int(11) NOT NULL,
  `id_mata_uang` int(11) NOT NULL,
  `keterangan_penawaran_harga` varchar(500) NOT NULL,
  `total_penawaran_harga` float NOT NULL,
  `total_ppn_penawaran_harga` float NOT NULL,
  `grand_total_penawaran_harga` float NOT NULL,
  `status_pajak_penawaran_harga` int(1) NOT NULL COMMENT 'nilai 1=centang\r\nnilai 0 = tidak centang',
  `id_status_penawaran` mediumint(1) NOT NULL,
  `created_at_penawaran_harga` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at_penawaran_harga` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penawaran_harga`
--

INSERT INTO `penawaran_harga` (`id_penawaran_harga`, `id_fungsi_aplikasi`, `no_tx_penawaran_harga`, `tanggal_transaksi_penawaran_harga`, `no_refrensi_penawaran_harga`, `IDUser`, `id_user_update_penawaran_harga`, `id_customer`, `id_termin_pembayaran`, `id_perusahaan`, `id_mata_uang`, `keterangan_penawaran_harga`, `total_penawaran_harga`, `total_ppn_penawaran_harga`, `grand_total_penawaran_harga`, `status_pajak_penawaran_harga`, `id_status_penawaran`, `created_at_penawaran_harga`, `updated_at_penawaran_harga`) VALUES
(1, 1, 'PH-GTL#0005', '2022-11-29', '9371293879', 2, 0, 2, 0, 1, 1, 'pENAWARAN INI DENGAN HARGA TERMASUK PPN\r\n1.DASD\r\n2. DASD\r\n3. DASDA\r\n4. DASD\r\n\r\n', 5000, 550, 5550, 1, 1, '2022-11-29 02:37:52', '2022-11-29 02:39:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penawaran_harga_arsip_dokumen`
--

CREATE TABLE `penawaran_harga_arsip_dokumen` (
  `id_penawaran_harga_arsip_dokumen` int(11) NOT NULL,
  `id_penawaran_harga` int(11) NOT NULL,
  `file_penawaran_harga_arsip_dokumen` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penawaran_harga_arsip_dokumen`
--

INSERT INTO `penawaran_harga_arsip_dokumen` (`id_penawaran_harga_arsip_dokumen`, `id_penawaran_harga`, `file_penawaran_harga_arsip_dokumen`) VALUES
(1, 1, '01SURAT_PENAWARAN_HARGA.pdf'),
(2, 1, 'kemenko.jpeg'),
(3, 1, '11.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penawaran_harga_item`
--

CREATE TABLE `penawaran_harga_item` (
  `id_penawaran_harga_item` int(11) NOT NULL,
  `id_penawaran_harga` int(11) NOT NULL,
  `id_master_item_penjualan` int(11) NOT NULL,
  `id_satuan_master_item` int(11) NOT NULL,
  `jumlah_item_penawaran_harga_item` float NOT NULL,
  `harga_item_penawaran_harga_item` float NOT NULL,
  `total_ppn_penawaran_harga_item` float NOT NULL,
  `total_penawaran_harga_item` float NOT NULL,
  `grand_total_penawaran_harga_item` float NOT NULL,
  `keterangan_penawaran_harga_item` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penawaran_harga_item`
--

INSERT INTO `penawaran_harga_item` (`id_penawaran_harga_item`, `id_penawaran_harga`, `id_master_item_penjualan`, `id_satuan_master_item`, `jumlah_item_penawaran_harga_item`, `harga_item_penawaran_harga_item`, `total_ppn_penawaran_harga_item`, `total_penawaran_harga_item`, `grand_total_penawaran_harga_item`, `keterangan_penawaran_harga_item`) VALUES
(1, 1, 1, 1, 100, 10, 110, 1000, 1110, 'DSADADAD'),
(2, 1, 2, 2, 20, 200, 440, 4000, 4440, 'ASD');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengiriman_barang`
--

CREATE TABLE `pengiriman_barang` (
  `id_pengiriman_barang` int(11) NOT NULL,
  `nomor_po_pengiriman_barang` varchar(255) NOT NULL,
  `nomor_so_pengiriman_barang` varchar(255) NOT NULL,
  `no_tx_pengiriman_barang` varchar(255) NOT NULL,
  `nomor_delivery_order_customer` varchar(255) NOT NULL,
  `tanggal_transaksi_pengiriman_barang` date NOT NULL,
  `tanggal_loading` date NOT NULL,
  `tanggal_request` date NOT NULL,
  `tanggal_tiba_pengiriman_barang` date NOT NULL,
  `tanggal_last_discharge` date NOT NULL,
  `IDUser` int(11) NOT NULL,
  `id_user_update_pengiriman_barang` int(11) NOT NULL,
  `jenis_armada_pengiriman_barang` int(11) NOT NULL COMMENT '0=kapal\r\n1=truck',
  `id_armada_kapal` int(11) NOT NULL,
  `id_armada_truck` int(11) NOT NULL,
  `id_perusahaan` int(11) NOT NULL,
  `id_penjualan` int(11) NOT NULL,
  `id_customer_pengiriman_barang` int(11) NOT NULL,
  `id_status_pengiriman` int(11) NOT NULL,
  `keterangan_pengiriman_barang` varchar(255) NOT NULL,
  `created_at_pengiriman_barang` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at_pengiriman_barang` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengiriman_barang`
--

INSERT INTO `pengiriman_barang` (`id_pengiriman_barang`, `nomor_po_pengiriman_barang`, `nomor_so_pengiriman_barang`, `no_tx_pengiriman_barang`, `nomor_delivery_order_customer`, `tanggal_transaksi_pengiriman_barang`, `tanggal_loading`, `tanggal_request`, `tanggal_tiba_pengiriman_barang`, `tanggal_last_discharge`, `IDUser`, `id_user_update_pengiriman_barang`, `jenis_armada_pengiriman_barang`, `id_armada_kapal`, `id_armada_truck`, `id_perusahaan`, `id_penjualan`, `id_customer_pengiriman_barang`, `id_status_pengiriman`, `keterangan_pengiriman_barang`, `created_at_pengiriman_barang`, `updated_at_pengiriman_barang`) VALUES
(1, 'PO', 'SO', 'DO-GTL#0008', 'DO', '2022-11-27', '2022-11-27', '2022-11-27', '2022-11-27', '2022-11-27', 2, 0, 0, 1, 0, 1, 0, 2, 1, '<p>ASDA<br></p>', '2022-11-27 04:30:36', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengiriman_barang_arsip_dokumen`
--

CREATE TABLE `pengiriman_barang_arsip_dokumen` (
  `id_pengiriman_barang_arsip_dokumen` int(11) NOT NULL,
  `id_pengiriman_barang` int(11) NOT NULL,
  `file_pengiriman_barang_arsip_dokumen` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengiriman_barang_arsip_dokumen_safety`
--

CREATE TABLE `pengiriman_barang_arsip_dokumen_safety` (
  `id_pengiriman_barang_arsip_dokumen_safety` int(11) NOT NULL,
  `id_pengiriman_barang` int(11) NOT NULL,
  `file_pengiriman_barang_arsip_dokumen_safety` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengiriman_barang_item`
--

CREATE TABLE `pengiriman_barang_item` (
  `id_pengiriman_barang_item` int(11) NOT NULL,
  `id_pengiriman_barang` int(11) NOT NULL,
  `id_master_item_penjualan` int(11) NOT NULL,
  `id_satuan_master_item` int(11) NOT NULL,
  `qty_from_sales_order` mediumint(11) NOT NULL,
  `bill_of_loading_qty_po` int(11) NOT NULL,
  `Keterangan` text NOT NULL,
  `after_loading_qty_r1_ship_figure` int(11) NOT NULL,
  `after_loading_qty_r1_selisih_muat` int(11) NOT NULL,
  `after_loading_qty_r1_prosentasi_losses` float NOT NULL,
  `before_discharge_qty_r2_ship_figure` int(11) NOT NULL,
  `before_discharge_qty_r2_selisih_bongkar` int(11) NOT NULL,
  `before_discharge_qty_r2_prosentasi_losses` float NOT NULL,
  `before_discharge_qty_r2_fm1_comparator` int(11) NOT NULL,
  `before_discharge_qty_r2_fm1a_comparator` int(11) NOT NULL,
  `after_receive_qty_r3_shore_tank` int(11) NOT NULL,
  `after_receive_qty_r3_selisih_bongkar` int(11) NOT NULL,
  `after_receive_qty_r3_prosentasi_losses` int(11) NOT NULL,
  `after_receive_qty_r3_fm2a_ar` int(11) NOT NULL,
  `after_receive_qty_r3_fm2_custody_ar` int(11) NOT NULL,
  `kalkulasi_qty_r4_selisih_fm2_to_quantity_po` int(11) NOT NULL,
  `kalkulasi_qty_r4_prosentasi_losses` float NOT NULL,
  `kalkulasi_qty_r4_selisih_shore_tank_dan_bill_of_loading` int(11) NOT NULL,
  `kalkulasi_qty_r4_prosentasi_losses_shore_tank_dan_bill_of_loadin` float NOT NULL,
  `material_receiving_report_total` int(11) NOT NULL,
  `material_receiving_report_selisih_loading_order_dan_mrr` int(11) NOT NULL,
  `material_receiving_report_selisih_losses_beban_ha` float NOT NULL,
  `material_receiving_report_acceptable_actual_receive_losses` float NOT NULL,
  `material_receiving_report_toleransi_lossses` float NOT NULL,
  `material_receiving_report_toleransi_mimimum_qty_sesuai_kontrak` int(11) NOT NULL,
  `material_receiving_report_nama_petugas_fuel_management` int(11) NOT NULL,
  `material_receiving_report_keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengiriman_barang_item`
--

INSERT INTO `pengiriman_barang_item` (`id_pengiriman_barang_item`, `id_pengiriman_barang`, `id_master_item_penjualan`, `id_satuan_master_item`, `qty_from_sales_order`, `bill_of_loading_qty_po`, `Keterangan`, `after_loading_qty_r1_ship_figure`, `after_loading_qty_r1_selisih_muat`, `after_loading_qty_r1_prosentasi_losses`, `before_discharge_qty_r2_ship_figure`, `before_discharge_qty_r2_selisih_bongkar`, `before_discharge_qty_r2_prosentasi_losses`, `before_discharge_qty_r2_fm1_comparator`, `before_discharge_qty_r2_fm1a_comparator`, `after_receive_qty_r3_shore_tank`, `after_receive_qty_r3_selisih_bongkar`, `after_receive_qty_r3_prosentasi_losses`, `after_receive_qty_r3_fm2a_ar`, `after_receive_qty_r3_fm2_custody_ar`, `kalkulasi_qty_r4_selisih_fm2_to_quantity_po`, `kalkulasi_qty_r4_prosentasi_losses`, `kalkulasi_qty_r4_selisih_shore_tank_dan_bill_of_loading`, `kalkulasi_qty_r4_prosentasi_losses_shore_tank_dan_bill_of_loadin`, `material_receiving_report_total`, `material_receiving_report_selisih_loading_order_dan_mrr`, `material_receiving_report_selisih_losses_beban_ha`, `material_receiving_report_acceptable_actual_receive_losses`, `material_receiving_report_toleransi_lossses`, `material_receiving_report_toleransi_mimimum_qty_sesuai_kontrak`, `material_receiving_report_nama_petugas_fuel_management`, `material_receiving_report_keterangan`) VALUES
(1, 1, 1, 1, 650000, 650000, '<p>DASDSAD<br></p>', 648414, 1586, -0.244, 648283, -131, -0.0202031, 1, 1, 648148, -135, 0, 1, 1, -649999, -99.9998, -1852, -0.284923, 1, -649999, -99.9998, 0.01, 1, 1, 11, '<p>ASD<br></p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_penawaran_harga` int(11) NOT NULL,
  `id_fungsi_aplikasi` int(1) NOT NULL DEFAULT 1,
  `no_tx_penjualan` varchar(500) NOT NULL,
  `tanggal_transaksi_penjualan` date NOT NULL,
  `id_kontrak_customer` int(11) NOT NULL,
  `IDUser` int(11) NOT NULL,
  `id_user_update_penjualan` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_perusahaan` int(11) NOT NULL,
  `id_mata_uang` int(11) NOT NULL,
  `keterangan_penjualan` varchar(500) NOT NULL,
  `total_penjualan` float NOT NULL,
  `total_ppn_penjualan` float NOT NULL,
  `grand_total_penjualan` float NOT NULL,
  `status_pajak_penjualan` int(1) NOT NULL COMMENT 'nilai 1=centang\r\nnilai 0 = tidak centang',
  `id_status_penjualan` int(1) NOT NULL,
  `created_at_penjualan` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at_penjualan` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_penawaran_harga`, `id_fungsi_aplikasi`, `no_tx_penjualan`, `tanggal_transaksi_penjualan`, `id_kontrak_customer`, `IDUser`, `id_user_update_penjualan`, `id_customer`, `id_perusahaan`, `id_mata_uang`, `keterangan_penjualan`, `total_penjualan`, `total_ppn_penjualan`, `grand_total_penjualan`, `status_pajak_penjualan`, `id_status_penjualan`, `created_at_penjualan`, `updated_at_penjualan`) VALUES
(1, 2, 2, 'SO-GTL#00001', '2022-11-25', 1, 2, 8, 0, 1, 1, '<p>sadadaddsadad asasdad<br></p>', 1000, 110, 1110, 1, 1, '2022-11-25 07:06:35', '2022-11-25 07:21:53'),
(2, 2, 2, 'SO-GTL#00002', '2022-11-23', 1, 8, 0, 0, 1, 1, '<p><b style=\"background-color: rgb(255, 0, 0);\"><font color=\"#424242\">ALD 24-26 *SESUAI DENGAN KONDISI DI LAPANGAN*</font></b></p><p><b style=\"background-color: rgb(255, 0, 0);\"><font color=\"#424242\"><br></font></b></p><p><b style=\"background-color: rgb(255, 0, 0);\"><font color=\"#424242\"><br></font></b></p><table class=\"table table-bordered\"><tbody><tr><td><br></td><td><br></td><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td><td><br></td><td><br></td></tr><tr><td><br></td><td><br></', 0, 0, 0, 1, 2, '2022-11-25 07:21:24', NULL),
(3, 1, 2, 'SO-GTL#0003', '2022-11-29', 1, 2, 0, 0, 1, 1, '<p>DASD BEBAS</p><p>DASDA<br></p>', 650000, 71500, 721500, 1, 1, '2022-11-29 02:45:09', '2022-11-29 02:46:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan_arsip_dokumen`
--

CREATE TABLE `penjualan_arsip_dokumen` (
  `id_penjualan_arsip_dokumen` int(11) NOT NULL,
  `id_penjualan` int(11) NOT NULL,
  `file_penjualan_arsip_dokumen` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penjualan_arsip_dokumen`
--

INSERT INTO `penjualan_arsip_dokumen` (`id_penjualan_arsip_dokumen`, `id_penjualan`, `file_penjualan_arsip_dokumen`) VALUES
(1, 3, '01SURAT_PENAWARAN_HARGA1.pdf'),
(2, 3, '112.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan_item`
--

CREATE TABLE `penjualan_item` (
  `id_penjualan_item` int(11) NOT NULL,
  `id_penjualan` int(11) NOT NULL,
  `id_master_item_penjualan` int(11) NOT NULL,
  `id_satuan_master_item` int(11) NOT NULL,
  `jumlah_item_penjualan_item` float NOT NULL,
  `harga_item_penjualan_item` float NOT NULL,
  `total_ppn_penjualan_item` float NOT NULL,
  `total_penjualan_item` float NOT NULL,
  `grand_total_penjualan_item` float NOT NULL,
  `keterangan_penjualan_item` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penjualan_item`
--

INSERT INTO `penjualan_item` (`id_penjualan_item`, `id_penjualan`, `id_master_item_penjualan`, `id_satuan_master_item`, `jumlah_item_penjualan_item`, `harga_item_penjualan_item`, `total_ppn_penjualan_item`, `total_penjualan_item`, `grand_total_penjualan_item`, `keterangan_penjualan_item`) VALUES
(1, 1, 1, 1, 100, 10, 110, 1000, 1110, 'asad'),
(2, 3, 1, 3, 650000, 1, 71500, 650000, 721500, 'ASDA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `IDRole` int(11) NOT NULL,
  `NamaRole` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`IDRole`, `NamaRole`) VALUES
(1, 'Administrator'),
(15, 'User'),
(16, 'Supervisor'),
(17, 'Admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_access_menu`
--

CREATE TABLE `role_access_menu` (
  `IDRoleAccessMenu` int(11) NOT NULL,
  `IDRole` int(11) NOT NULL,
  `IDMenu` int(11) NOT NULL,
  `is_read` int(11) NOT NULL DEFAULT 0,
  `is_create` int(11) NOT NULL DEFAULT 0,
  `is_update` int(11) NOT NULL DEFAULT 0,
  `is_delete` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `role_access_menu`
--

INSERT INTO `role_access_menu` (`IDRoleAccessMenu`, `IDRole`, `IDMenu`, `is_read`, `is_create`, `is_update`, `is_delete`) VALUES
(4672, 1, 1, 1, 1, 1, 1),
(4673, 1, 56, 0, 0, 0, 0),
(4674, 1, 64, 0, 0, 0, 0),
(4675, 1, 118, 0, 0, 0, 0),
(4676, 1, 67, 0, 0, 0, 0),
(4677, 1, 68, 0, 0, 0, 0),
(4678, 1, 66, 0, 0, 0, 0),
(4679, 1, 69, 0, 0, 0, 0),
(4680, 1, 70, 0, 0, 0, 0),
(4681, 1, 71, 0, 0, 0, 0),
(4682, 1, 72, 0, 0, 0, 0),
(4683, 1, 73, 0, 0, 0, 0),
(4684, 1, 74, 0, 0, 0, 0),
(4685, 1, 65, 0, 0, 0, 0),
(4686, 1, 117, 0, 0, 0, 0),
(4687, 1, 119, 0, 0, 0, 0),
(4688, 1, 78, 0, 0, 0, 0),
(4689, 1, 128, 1, 1, 1, 1),
(4690, 1, 120, 0, 0, 0, 0),
(4691, 1, 124, 0, 0, 0, 0),
(4692, 1, 123, 0, 0, 0, 0),
(4693, 1, 4, 1, 0, 0, 0),
(4694, 1, 25, 1, 1, 1, 1),
(4695, 1, 24, 1, 1, 1, 1),
(4696, 1, 6, 1, 1, 1, 1),
(4697, 1, 30, 1, 1, 1, 1),
(4698, 1, 94, 0, 0, 0, 0),
(4699, 1, 96, 0, 0, 0, 0),
(4700, 1, 97, 0, 0, 0, 0),
(4701, 1, 98, 0, 0, 0, 0),
(4702, 1, 99, 0, 0, 0, 0),
(4703, 1, 112, 0, 0, 0, 0),
(4704, 1, 100, 0, 0, 0, 0),
(4705, 1, 102, 0, 0, 0, 0),
(4706, 1, 101, 0, 0, 0, 0),
(4707, 1, 103, 0, 0, 0, 0),
(4708, 1, 105, 0, 0, 0, 0),
(4709, 1, 104, 0, 0, 0, 0),
(4710, 1, 106, 0, 0, 0, 0),
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
(4789, 17, 1, 1, 1, 1, 1),
(4790, 17, 56, 0, 0, 0, 0),
(4791, 17, 64, 0, 0, 0, 0),
(4792, 17, 118, 0, 0, 0, 0),
(4793, 17, 67, 0, 0, 0, 0),
(4794, 17, 68, 0, 0, 0, 0),
(4795, 17, 66, 0, 0, 0, 0),
(4796, 17, 69, 0, 0, 0, 0),
(4797, 17, 70, 0, 0, 0, 0),
(4798, 17, 71, 0, 0, 0, 0),
(4799, 17, 72, 0, 0, 0, 0),
(4800, 17, 73, 0, 0, 0, 0),
(4801, 17, 74, 0, 0, 0, 0),
(4802, 17, 65, 0, 0, 0, 0),
(4803, 17, 117, 0, 0, 0, 0),
(4804, 17, 119, 0, 0, 0, 0),
(4805, 17, 78, 0, 0, 0, 0),
(4806, 17, 128, 1, 1, 1, 1),
(4807, 17, 120, 0, 0, 0, 0),
(4808, 17, 124, 0, 0, 0, 0),
(4809, 17, 123, 0, 0, 0, 0),
(4810, 17, 4, 0, 0, 0, 0),
(4811, 17, 25, 0, 0, 0, 0),
(4812, 17, 24, 0, 0, 0, 0),
(4813, 17, 6, 0, 0, 0, 0),
(4814, 17, 30, 0, 0, 0, 0),
(4815, 17, 94, 0, 0, 0, 0),
(4816, 17, 96, 0, 0, 0, 0),
(4817, 17, 97, 0, 0, 0, 0),
(4818, 17, 98, 0, 0, 0, 0),
(4819, 17, 99, 0, 0, 0, 0),
(4820, 17, 112, 0, 0, 0, 0),
(4821, 17, 100, 0, 0, 0, 0),
(4822, 17, 102, 0, 0, 0, 0),
(4823, 17, 101, 0, 0, 0, 0),
(4824, 17, 103, 0, 0, 0, 0),
(4825, 17, 105, 0, 0, 0, 0),
(4826, 17, 104, 0, 0, 0, 0),
(4827, 17, 106, 0, 0, 0, 0),
(4828, 16, 1, 1, 1, 1, 1),
(4829, 16, 56, 0, 0, 0, 0),
(4830, 16, 64, 0, 0, 0, 0),
(4831, 16, 118, 0, 0, 0, 0),
(4832, 16, 67, 0, 0, 0, 0),
(4833, 16, 68, 0, 0, 0, 0),
(4834, 16, 66, 0, 0, 0, 0),
(4835, 16, 69, 0, 0, 0, 0),
(4836, 16, 70, 0, 0, 0, 0),
(4837, 16, 71, 0, 0, 0, 0),
(4838, 16, 72, 0, 0, 0, 0),
(4839, 16, 73, 0, 0, 0, 0),
(4840, 16, 74, 0, 0, 0, 0),
(4841, 16, 65, 0, 0, 0, 0),
(4842, 16, 117, 0, 0, 0, 0),
(4843, 16, 119, 0, 0, 0, 0),
(4844, 16, 78, 0, 0, 0, 0),
(4845, 16, 128, 1, 1, 1, 0),
(4846, 16, 120, 0, 0, 0, 0),
(4847, 16, 124, 0, 0, 0, 0),
(4848, 16, 123, 0, 0, 0, 0),
(4849, 16, 4, 0, 0, 0, 0),
(4850, 16, 25, 0, 0, 0, 0),
(4851, 16, 24, 0, 0, 0, 0),
(4852, 16, 6, 0, 0, 0, 0),
(4853, 16, 30, 0, 0, 0, 0),
(4854, 16, 94, 0, 0, 0, 0),
(4855, 16, 96, 0, 0, 0, 0),
(4856, 16, 97, 0, 0, 0, 0),
(4857, 16, 98, 0, 0, 0, 0),
(4858, 16, 99, 0, 0, 0, 0),
(4859, 16, 112, 0, 0, 0, 0),
(4860, 16, 100, 0, 0, 0, 0),
(4861, 16, 102, 0, 0, 0, 0),
(4862, 16, 101, 0, 0, 0, 0),
(4863, 16, 103, 0, 0, 0, 0),
(4864, 16, 105, 0, 0, 0, 0),
(4865, 16, 104, 0, 0, 0, 0),
(4866, 16, 106, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sosmed`
--

CREATE TABLE `sosmed` (
  `id_sosmed` int(11) NOT NULL,
  `nama_sosmed` varchar(128) NOT NULL,
  `logo_sosmed` varchar(128) NOT NULL,
  `link_sosmed` varchar(128) NOT NULL,
  `sort_sosmed` int(11) NOT NULL DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sosmed`
--

INSERT INTO `sosmed` (`id_sosmed`, `nama_sosmed`, `logo_sosmed`, `link_sosmed`, `sort_sosmed`) VALUES
(1, 'Facebook', 'fab fa-facebook fw-normal', 'https://www.facebook.com/', 100),
(2, 'Twitter', 'fab fa-twitter fw-normal', 'https://twitter.com', 100),
(3, 'Youtube Channel', 'fab fa-linkedin fw-normal', 'https://www.youtube.com/', 100),
(4, 'Instagram', 'fab fa-instagram fw-normal', 'https://www.instagram.com/', 100);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_alat_ukur_losses`
--

CREATE TABLE `tb_alat_ukur_losses` (
  `id_alat_ukur_losses` int(11) NOT NULL,
  `nama_alat_ukur_losses` varchar(255) NOT NULL,
  `status_alat_ukur_losses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_alat_ukur_losses`
--

INSERT INTO `tb_alat_ukur_losses` (`id_alat_ukur_losses`, `nama_alat_ukur_losses`, `status_alat_ukur_losses`) VALUES
(1, 'R-1', 1),
(2, 'R-2', 1),
(3, 'R-3', 1),
(4, 'R-4', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_armada_kapal`
--

CREATE TABLE `tb_armada_kapal` (
  `id_armada_kapal` int(11) NOT NULL,
  `id_kepemilikan_armada` int(11) NOT NULL,
  `nama_armada_kapal` varchar(500) NOT NULL,
  `nomor_kapal` varchar(500) NOT NULL,
  `panjang_kapal` varchar(500) NOT NULL,
  `lebar_kapal` varchar(500) NOT NULL,
  `tinggi_kapal` varchar(500) NOT NULL,
  `total_berat_kapal` varchar(500) NOT NULL,
  `kapasitas_muatan_kapal` varchar(500) NOT NULL,
  `jumlah_tangki_kapal` varchar(500) NOT NULL,
  `jenis_muatan_kapal` varchar(500) NOT NULL,
  `status_armada_kapal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_armada_kapal`
--

INSERT INTO `tb_armada_kapal` (`id_armada_kapal`, `id_kepemilikan_armada`, `nama_armada_kapal`, `nomor_kapal`, `panjang_kapal`, `lebar_kapal`, `tinggi_kapal`, `total_berat_kapal`, `kapasitas_muatan_kapal`, `jumlah_tangki_kapal`, `jenis_muatan_kapal`, `status_armada_kapal`) VALUES
(1, 1, 'MT. IVANI ', '0', '59,19 M', '9,6 M', '4,3 M', '998,33 TON', '677 TON', '6', 'B30', 1),
(3, 1, 'MT. TAMEDA MARU NO. 3', '0', '64,80 M', '10 M', '4,50 M', '1198 TON', '1235 TON', '8', 'SF05, B30', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_armada_truck`
--

CREATE TABLE `tb_armada_truck` (
  `id_armada_truck` bigint(20) NOT NULL,
  `id_kepemilikan_armada` int(11) NOT NULL,
  `nama_armada_truck` varchar(255) NOT NULL,
  `nomor_plat_truck` varchar(255) NOT NULL,
  `kapasitas_muatan_truck` varchar(255) NOT NULL,
  `jumlah_tangki_truck` varchar(255) NOT NULL,
  `jenis_muatan_truck` varchar(255) NOT NULL,
  `status_armada_truck` mediumint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_armada_truck`
--

INSERT INTO `tb_armada_truck` (`id_armada_truck`, `id_kepemilikan_armada`, `nama_armada_truck`, `nomor_plat_truck`, `kapasitas_muatan_truck`, `jumlah_tangki_truck`, `jenis_muatan_truck`, `status_armada_truck`) VALUES
(1, 1, 'Truk Tangki - B 9041 TMY', 'B 9041 TMY', '16.000 L', '1', 'B30', 1),
(2, 1, 'Truk Tangki - B 9045 TMY', 'B 9045 TMY', '16.000 L', '1', 'B30', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_customer`
--

CREATE TABLE `tb_customer` (
  `id_customer` int(11) NOT NULL,
  `nama_customer` varchar(255) NOT NULL,
  `email_customer` varchar(255) NOT NULL,
  `telepon_customer` varchar(255) NOT NULL,
  `fax_customer` varchar(255) NOT NULL,
  `alamat_customer` varchar(255) NOT NULL,
  `id_provinsi` int(11) NOT NULL,
  `id_kabkota` int(11) NOT NULL,
  `kode_pos_customer` varchar(255) NOT NULL,
  `id_negara` int(11) NOT NULL,
  `website_customer` varchar(255) NOT NULL,
  `npwp_customer` varchar(255) NOT NULL,
  `status_customer` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_customer`
--

INSERT INTO `tb_customer` (`id_customer`, `nama_customer`, `email_customer`, `telepon_customer`, `fax_customer`, `alamat_customer`, `id_provinsi`, `id_kabkota`, `kode_pos_customer`, `id_negara`, `website_customer`, `npwp_customer`, `status_customer`) VALUES
(2, 'PT. ELNUSA TBK', '3', '4', '4', '5', 31, 3171, '6', 1, '7', '8', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_customer_pic`
--

CREATE TABLE `tb_customer_pic` (
  `id_customer_pic` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `nama_customer_pic` varchar(255) NOT NULL,
  `nomor_mobile_customer_pic` varchar(255) NOT NULL,
  `email_customer_pic` varchar(255) NOT NULL,
  `jabatan_customer_pic` varchar(255) NOT NULL,
  `status_customer_pic` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_customer_pic`
--

INSERT INTO `tb_customer_pic` (`id_customer_pic`, `id_customer`, `nama_customer_pic`, `nomor_mobile_customer_pic`, `email_customer_pic`, `jabatan_customer_pic`, `status_customer_pic`) VALUES
(7, 2, 'TUKUL', '085220022884', 'TUKUL@GMAIL.COM', 'CEO', 1),
(8, 2, 'ASD', 'DASD', 'DASD', 'DASD', 1),
(9, 2, 'DASD', 'DASDDAS', 'DASD', 'ASDAD', 1),
(10, 2, 'SDAD', 'dasd', 'DASD', 'DSAD', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_default_nilai`
--

CREATE TABLE `tb_default_nilai` (
  `id_default_nilai` int(11) NOT NULL,
  `nama_default_nilai` varchar(255) NOT NULL,
  `value_default_nilai` float NOT NULL,
  `status_default_nilai` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_default_nilai`
--

INSERT INTO `tb_default_nilai` (`id_default_nilai`, `nama_default_nilai`, `value_default_nilai`, `status_default_nilai`) VALUES
(1, 'PPN', 0.11, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_divisi_organisasi`
--

CREATE TABLE `tb_divisi_organisasi` (
  `id_divisi_organisasi` int(11) NOT NULL,
  `nama_divisi_organisasi` varchar(255) NOT NULL,
  `status_divisi_organisasi` mediumint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_divisi_organisasi`
--

INSERT INTO `tb_divisi_organisasi` (`id_divisi_organisasi`, `nama_divisi_organisasi`, `status_divisi_organisasi`) VALUES
(1, 'Divisi Komisaris', 1),
(2, 'Divisi Direksi', 1),
(3, 'Divisi Operasional', 1),
(4, 'Divisi Sales & Marketing', 1),
(5, 'Divisi Finance & Accounting', 1),
(6, 'Divisi Procurement', 1),
(7, 'Divisi Umum/General Affair', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_fungsi_aplikasi`
--

CREATE TABLE `tb_fungsi_aplikasi` (
  `id_fungsi_aplikasi` int(11) NOT NULL,
  `nama_fungsi_aplikasi` varchar(255) NOT NULL,
  `status_fungsi_aplikasi` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_fungsi_aplikasi`
--

INSERT INTO `tb_fungsi_aplikasi` (`id_fungsi_aplikasi`, `nama_fungsi_aplikasi`, `status_fungsi_aplikasi`) VALUES
(1, 'penawaran_harga', 1),
(2, 'penjualan', 1),
(3, 'load_bongkar_muatan', 1),
(4, 'invoice_customer', 1),
(5, 'lunas_invoice_customer', 1),
(6, 'pembelian_barang', 1),
(7, 'pengurusan_dokumen', 1),
(8, 'pemeliharaan_armada', 1),
(9, 'invoice_jasa_supplier', 1),
(10, 'lunas_invoice_supplier', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jabatan`
--

CREATE TABLE `tb_jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(500) NOT NULL,
  `status_jabatan` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_jabatan`
--

INSERT INTO `tb_jabatan` (`id_jabatan`, `nama_jabatan`, `status_jabatan`) VALUES
(1, 'Komisaris Utama', 1),
(2, 'Komisaris', 1),
(3, 'Direktur Utama', 1),
(4, 'Direktur Operasional', 1),
(5, 'Direktur Keuangan & Akuntansi', 1),
(6, 'Direktur Marketing & Sales', 1),
(7, 'Direktur SDM', 1),
(8, 'General Manager', 1),
(9, 'Manager', 1),
(11, 'Supervisor', 1),
(12, 'Staff', 1),
(14, 'Office Boy', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jenis_kelamin`
--

CREATE TABLE `tb_jenis_kelamin` (
  `id_jenis_kelamin` int(11) NOT NULL,
  `nama_jenis_kelamin` varchar(500) NOT NULL,
  `status_jenis_kelamin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_jenis_kelamin`
--

INSERT INTO `tb_jenis_kelamin` (`id_jenis_kelamin`, `nama_jenis_kelamin`, `status_jenis_kelamin`) VALUES
(1, 'Laki Laki', 1),
(2, 'Perempuan', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kabkota`
--

CREATE TABLE `tb_kabkota` (
  `id_kabkota` int(11) NOT NULL,
  `id_provinsi` int(11) NOT NULL,
  `nama_kabkota` varchar(255) NOT NULL,
  `status_kabkota` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kabkota`
--

INSERT INTO `tb_kabkota` (`id_kabkota`, `id_provinsi`, `nama_kabkota`, `status_kabkota`) VALUES
(1101, 11, 'Kab. Simeulue', 1),
(1102, 11, 'Kab. Aceh Singkil', 1),
(1103, 11, 'Kab. Aceh Selatan', 1),
(1104, 11, 'Kab. Aceh Tenggara', 1),
(1105, 11, 'Kab. Aceh Timur', 1),
(1106, 11, 'Kab. Aceh Tengah', 1),
(1107, 11, 'Kab. Aceh Barat', 1),
(1108, 11, 'Kab. Aceh Besar', 1),
(1109, 11, 'Kab. Pidie', 1),
(1110, 11, 'Kab. Bireuen', 1),
(1111, 11, 'Kab. Aceh Utara', 1),
(1112, 11, 'Kab. Aceh Barat Daya', 1),
(1113, 11, 'Kab. Gayo Lues', 1),
(1114, 11, 'Kab. Aceh Tamiang', 1),
(1115, 11, 'Kab. Nagan Raya', 1),
(1116, 11, 'Kab. Aceh Jaya', 1),
(1117, 11, 'Kab. Bener Meriah', 1),
(1118, 11, 'Kab. Pidie Jaya', 1),
(1171, 11, 'Kota Banda Aceh', 1),
(1172, 11, 'Kota Sabang', 1),
(1173, 11, 'Kota Langsa', 1),
(1174, 11, 'Kota Lhokseumawe', 1),
(1175, 11, 'Kota Subulussalam', 1),
(1201, 12, 'Kab. Nias', 1),
(1202, 12, 'Kab. Mandailing Natal', 1),
(1203, 12, 'Kab. Tapanuli Selatan', 1),
(1204, 12, 'Kab. Tapanuli Tengah', 1),
(1205, 12, 'Kab. Tapanuli Utara', 1),
(1206, 12, 'Kab. Toba Samosir', 1),
(1207, 12, 'Kab. Labuhan Batu', 1),
(1208, 12, 'Kab. Asahan', 1),
(1209, 12, 'Kab. Simalungun', 1),
(1210, 12, 'Kab. Dairi', 1),
(1211, 12, 'Kab. Karo', 1),
(1212, 12, 'Kab. Deli Serdang', 1),
(1213, 12, 'Kab. Langkat', 1),
(1214, 12, 'Kab. Nias Selatan', 1),
(1215, 12, 'Kab. Humbang Hasundutan', 1),
(1216, 12, 'Kab. Pakpak Bharat', 1),
(1217, 12, 'Kab. Samosir', 1),
(1218, 12, 'Kab. Serdang Bedagai', 1),
(1219, 12, 'Kab. Batu Bara', 1),
(1220, 12, 'Kab. Padang Lawas Utara', 1),
(1221, 12, 'Kab. Padang Lawas', 1),
(1222, 12, 'Kab. Labuhan Batu Selatan', 1),
(1223, 12, 'Kab. Labuhan Batu Utara', 1),
(1224, 12, 'Kab. Nias Utara', 1),
(1225, 12, 'Kab. Nias Barat', 1),
(1271, 12, 'Kota Sibolga', 1),
(1272, 12, 'Kota Tanjung Balai', 1),
(1273, 12, 'Kota Pematang Siantar', 1),
(1274, 12, 'Kota Tebing Tinggi', 1),
(1275, 12, 'Kota Medan', 1),
(1276, 12, 'Kota Binjai', 1),
(1277, 12, 'Kota Padangsidimpuan', 1),
(1278, 12, 'Kota Gunungsitoli', 1),
(1301, 13, 'Kab. Kepulauan Mentawai', 1),
(1302, 13, 'Kab. Pesisir Selatan', 1),
(1303, 13, 'Kab. Solok', 1),
(1304, 13, 'Kab. Sijunjung', 1),
(1305, 13, 'Kab. Tanah Datar', 1),
(1306, 13, 'Kab. Padang Pariaman', 1),
(1307, 13, 'Kab. Agam', 1),
(1308, 13, 'Kab. Lima Puluh Kota', 1),
(1309, 13, 'Kab. Pasaman', 1),
(1310, 13, 'Kab. Solok Selatan', 1),
(1311, 13, 'Kab. Dharmasraya', 1),
(1312, 13, 'Kab. Pasaman Barat', 1),
(1371, 13, 'Kota Padang', 1),
(1372, 13, 'Kota Solok', 1),
(1373, 13, 'Kota Sawah Lunto', 1),
(1374, 13, 'Kota Padang Panjang', 1),
(1375, 13, 'Kota Bukittinggi', 1),
(1376, 13, 'Kota Payakumbuh', 1),
(1377, 13, 'Kota Pariaman', 1),
(1401, 14, 'Kab. Kuantan Singingi', 1),
(1402, 14, 'Kab. Indragiri Hulu', 1),
(1403, 14, 'Kab. Indragiri Hilir', 1),
(1404, 14, 'Kab. Pelalawan', 1),
(1405, 14, 'Kab. S I A K', 1),
(1406, 14, 'Kab. Kampar', 1),
(1407, 14, 'Kab. Rokan Hulu', 1),
(1408, 14, 'Kab. Bengkalis', 1),
(1409, 14, 'Kab. Rokan Hilir', 1),
(1410, 14, 'Kab. Kepulauan Meranti', 1),
(1471, 14, 'Kota Pekanbaru', 1),
(1473, 14, 'Kota D U M A I', 1),
(1501, 15, 'Kab. Kerinci', 1),
(1502, 15, 'Kab. Merangin', 1),
(1503, 15, 'Kab. Sarolangun', 1),
(1504, 15, 'Kab. Batang Hari', 1),
(1505, 15, 'Kab. Muaro Jambi', 1),
(1506, 15, 'Kab. Tanjung Jabung Timur', 1),
(1507, 15, 'Kab. Tanjung Jabung Barat', 1),
(1508, 15, 'Kab. Tebo', 1),
(1509, 15, 'Kab. Bungo', 1),
(1571, 15, 'Kota Jambi', 1),
(1572, 15, 'Kota Sungai Penuh', 1),
(1601, 16, 'Kab. Ogan Komering Ulu', 1),
(1602, 16, 'Kab. Ogan Komering Ilir', 1),
(1603, 16, 'Kab. Muara Enim', 1),
(1604, 16, 'Kab. Lahat', 1),
(1605, 16, 'Kab. Musi Rawas', 1),
(1606, 16, 'Kab. Musi Banyuasin', 1),
(1607, 16, 'Kab. Banyu Asin', 1),
(1608, 16, 'Kab. Ogan Komering Ulu Selatan', 1),
(1609, 16, 'Kab. Ogan Komering Ulu Timur', 1),
(1610, 16, 'Kab. Ogan Ilir', 1),
(1611, 16, 'Kab. Empat Lawang', 1),
(1671, 16, 'Kota Palembang', 1),
(1672, 16, 'Kota Prabumulih', 1),
(1673, 16, 'Kota Pagar Alam', 1),
(1674, 16, 'Kota Lubuklinggau', 1),
(1701, 17, 'Kab. Bengkulu Selatan', 1),
(1702, 17, 'Kab. Rejang Lebong', 1),
(1703, 17, 'Kab. Bengkulu Utara', 1),
(1704, 17, 'Kab. Kaur', 1),
(1705, 17, 'Kab. Seluma', 1),
(1706, 17, 'Kab. Mukomuko', 1),
(1707, 17, 'Kab. Lebong', 1),
(1708, 17, 'Kab. Kepahiang', 1),
(1709, 17, 'Kab. Bengkulu Tengah', 1),
(1771, 17, 'Kota Bengkulu', 1),
(1801, 18, 'Kab. Lampung Barat', 1),
(1802, 18, 'Kab. Tanggamus', 1),
(1803, 18, 'Kab. Lampung Selatan', 1),
(1804, 18, 'Kab. Lampung Timur', 1),
(1805, 18, 'Kab. Lampung Tengah', 1),
(1806, 18, 'Kab. Lampung Utara', 1),
(1807, 18, 'Kab. Way Kanan', 1),
(1808, 18, 'Kab. Tulangbawang', 1),
(1809, 18, 'Kab. Pesawaran', 1),
(1810, 18, 'Kab. Pringsewu', 1),
(1811, 18, 'Kab. Mesuji', 1),
(1812, 18, 'Kab. Tulang Bawang Barat', 1),
(1813, 18, 'Kab. Pesisir Barat', 1),
(1871, 18, 'Kota Bandar Lampung', 1),
(1872, 18, 'Kota Metro', 1),
(1901, 19, 'Kab. Bangka', 1),
(1902, 19, 'Kab. Belitung', 1),
(1903, 19, 'Kab. Bangka Barat', 1),
(1904, 19, 'Kab. Bangka Tengah', 1),
(1905, 19, 'Kab. Bangka Selatan', 1),
(1906, 19, 'Kab. Belitung Timur', 1),
(1971, 19, 'Kota Pangkal Pinang', 1),
(2101, 21, 'Kab. Karimun', 1),
(2102, 21, 'Kab. Bintan', 1),
(2103, 21, 'Kab. Natuna', 1),
(2104, 21, 'Kab. Lingga', 1),
(2105, 21, 'Kab. Kepulauan Anambas', 1),
(2171, 21, 'Kota B A T A M', 1),
(2172, 21, 'Kota Tanjung Pinang', 1),
(3101, 31, 'Kab. Kepulauan Seribu', 1),
(3171, 31, 'Kota Jakarta Selatan', 1),
(3172, 31, 'Kota Jakarta Timur', 1),
(3173, 31, 'Kota Jakarta Pusat', 1),
(3174, 31, 'Kota Jakarta Barat', 1),
(3175, 31, 'Kota Jakarta Utara', 1),
(3201, 32, 'Kab. Bogor', 1),
(3202, 32, 'Kab. Sukabumi', 1),
(3203, 32, 'Kab. Cianjur', 1),
(3204, 32, 'Kab. Bandung', 1),
(3205, 32, 'Kab. Garut', 1),
(3206, 32, 'Kab. Tasikmalaya', 1),
(3207, 32, 'Kab. Ciamis', 1),
(3208, 32, 'Kab. Kuningan', 1),
(3209, 32, 'Kab. Cirebon', 1),
(3210, 32, 'Kab. Majalengka', 1),
(3211, 32, 'Kab. Sumedang', 1),
(3212, 32, 'Kab. Indramayu', 1),
(3213, 32, 'Kab. Subang', 1),
(3214, 32, 'Kab. Purwakarta', 1),
(3215, 32, 'Kab. Karawang', 1),
(3216, 32, 'Kab. Bekasi', 1),
(3217, 32, 'Kab. Bandung Barat', 1),
(3218, 32, 'Kab. Pangandaran', 1),
(3271, 32, 'Kota Bogor', 1),
(3272, 32, 'Kota Sukabumi', 1),
(3273, 32, 'Kota Bandung', 1),
(3274, 32, 'Kota Cirebon', 1),
(3275, 32, 'Kota Bekasi', 1),
(3276, 32, 'Kota Depok', 1),
(3277, 32, 'Kota Cimahi', 1),
(3278, 32, 'Kota Tasikmalaya', 1),
(3279, 32, 'Kota Banjar', 1),
(3301, 33, 'Kab. Cilacap', 1),
(3302, 33, 'Kab. Banyumas', 1),
(3303, 33, 'Kab. Purbalingga', 1),
(3304, 33, 'Kab. Banjarnegara', 1),
(3305, 33, 'Kab. Kebumen', 1),
(3306, 33, 'Kab. Purworejo', 1),
(3307, 33, 'Kab. Wonosobo', 1),
(3308, 33, 'Kab. Magelang', 1),
(3309, 33, 'Kab. Boyolali', 1),
(3310, 33, 'Kab. Klaten', 1),
(3311, 33, 'Kab. Sukoharjo', 1),
(3312, 33, 'Kab. Wonogiri', 1),
(3313, 33, 'Kab. Karanganyar', 1),
(3314, 33, 'Kab. Sragen', 1),
(3315, 33, 'Kab. Grobogan', 1),
(3316, 33, 'Kab. Blora', 1),
(3317, 33, 'Kab. Rembang', 1),
(3318, 33, 'Kab. Pati', 1),
(3319, 33, 'Kab. Kudus', 1),
(3320, 33, 'Kab. Jepara', 1),
(3321, 33, 'Kab. Demak', 1),
(3322, 33, 'Kab. Semarang', 1),
(3323, 33, 'Kab. Temanggung', 1),
(3324, 33, 'Kab. Kendal', 1),
(3325, 33, 'Kab. Batang', 1),
(3326, 33, 'Kab. Pekalongan', 1),
(3327, 33, 'Kab. Pemalang', 1),
(3328, 33, 'Kab. Tegal', 1),
(3329, 33, 'Kab. Brebes', 1),
(3371, 33, 'Kota Magelang', 1),
(3372, 33, 'Kota Surakarta', 1),
(3373, 33, 'Kota Salatiga', 1),
(3374, 33, 'Kota Semarang', 1),
(3375, 33, 'Kota Pekalongan', 1),
(3376, 33, 'Kota Tegal', 1),
(3401, 34, 'Kab. Kulon Progo', 1),
(3402, 34, 'Kab. Bantul', 1),
(3403, 34, 'Kab. Gunung Kidul', 1),
(3404, 34, 'Kab. Sleman', 1),
(3471, 34, 'Kota Yogyakarta', 1),
(3501, 35, 'Kab. Pacitan', 1),
(3502, 35, 'Kab. Ponorogo', 1),
(3503, 35, 'Kab. Trenggalek', 1),
(3504, 35, 'Kab. Tulungagung', 1),
(3505, 35, 'Kab. Blitar', 1),
(3506, 35, 'Kab. Kediri', 1),
(3507, 35, 'Kab. Malang', 1),
(3508, 35, 'Kab. Lumajang', 1),
(3509, 35, 'Kab. Jember', 1),
(3510, 35, 'Kab. Banyuwangi', 1),
(3511, 35, 'Kab. Bondowoso', 1),
(3512, 35, 'Kab. Situbondo', 1),
(3513, 35, 'Kab. Probolinggo', 1),
(3514, 35, 'Kab. Pasuruan', 1),
(3515, 35, 'Kab. Sidoarjo', 1),
(3516, 35, 'Kab. Mojokerto', 1),
(3517, 35, 'Kab. Jombang', 1),
(3518, 35, 'Kab. Nganjuk', 1),
(3519, 35, 'Kab. Madiun', 1),
(3520, 35, 'Kab. Magetan', 1),
(3521, 35, 'Kab. Ngawi', 1),
(3522, 35, 'Kab. Bojonegoro', 1),
(3523, 35, 'Kab. Tuban', 1),
(3524, 35, 'Kab. Lamongan', 1),
(3525, 35, 'Kab. Gresik', 1),
(3526, 35, 'Kab. Bangkalan', 1),
(3527, 35, 'Kab. Sampang', 1),
(3528, 35, 'Kab. Pamekasan', 1),
(3529, 35, 'Kab. Sumenep', 1),
(3571, 35, 'Kota Kediri', 1),
(3572, 35, 'Kota Blitar', 1),
(3573, 35, 'Kota Malang', 1),
(3574, 35, 'Kota Probolinggo', 1),
(3575, 35, 'Kota Pasuruan', 1),
(3576, 35, 'Kota Mojokerto', 1),
(3577, 35, 'Kota Madiun', 1),
(3578, 35, 'Kota Surabaya', 1),
(3579, 35, 'Kota Batu', 1),
(3601, 36, 'Kab. Pandeglang', 1),
(3602, 36, 'Kab. Lebak', 1),
(3603, 36, 'Kab. Tangerang', 1),
(3604, 36, 'Kab. Serang', 1),
(3671, 36, 'Kota Tangerang', 1),
(3672, 36, 'Kota Cilegon', 1),
(3673, 36, 'Kota Serang', 1),
(3674, 36, 'Kota Tangerang Selatan', 1),
(5101, 51, 'Kab. Jembrana', 1),
(5102, 51, 'Kab. Tabanan', 1),
(5103, 51, 'Kab. Badung', 1),
(5104, 51, 'Kab. Gianyar', 1),
(5105, 51, 'Kab. Klungkung', 1),
(5106, 51, 'Kab. Bangli', 1),
(5107, 51, 'Kab. Karang Asem', 1),
(5108, 51, 'Kab. Buleleng', 1),
(5171, 51, 'Kota Denpasar', 1),
(5201, 52, 'Kab. Lombok Barat', 1),
(5202, 52, 'Kab. Lombok Tengah', 1),
(5203, 52, 'Kab. Lombok Timur', 1),
(5204, 52, 'Kab. Sumbawa', 1),
(5205, 52, 'Kab. Dompu', 1),
(5206, 52, 'Kab. Bima', 1),
(5207, 52, 'Kab. Sumbawa Barat', 1),
(5208, 52, 'Kab. Lombok Utara', 1),
(5271, 52, 'Kota Mataram', 1),
(5272, 52, 'Kota Bima', 1),
(5301, 53, 'Kab. Sumba Barat', 1),
(5302, 53, 'Kab. Sumba Timur', 1),
(5303, 53, 'Kab. Kupang', 1),
(5304, 53, 'Kab. Timor Tengah Selatan', 1),
(5305, 53, 'Kab. Timor Tengah Utara', 1),
(5306, 53, 'Kab. Belu', 1),
(5307, 53, 'Kab. Alor', 1),
(5308, 53, 'Kab. Lembata', 1),
(5309, 53, 'Kab. Flores Timur', 1),
(5310, 53, 'Kab. Sikka', 1),
(5311, 53, 'Kab. Ende', 1),
(5312, 53, 'Kab. Ngada', 1),
(5313, 53, 'Kab. Manggarai', 1),
(5314, 53, 'Kab. Rote Ndao', 1),
(5315, 53, 'Kab. Manggarai Barat', 1),
(5316, 53, 'Kab. Sumba Tengah', 1),
(5317, 53, 'Kab. Sumba Barat Daya', 1),
(5318, 53, 'Kab. Nagekeo', 1),
(5319, 53, 'Kab. Manggarai Timur', 1),
(5320, 53, 'Kab. Sabu Raijua', 1),
(5371, 53, 'Kota Kupang', 1),
(6101, 61, 'Kab. Sambas', 1),
(6102, 61, 'Kab. Bengkayang', 1),
(6103, 61, 'Kab. Landak', 1),
(6104, 61, 'Kab. Pontianak', 1),
(6105, 61, 'Kab. Sanggau', 1),
(6106, 61, 'Kab. Ketapang', 1),
(6107, 61, 'Kab. Sintang', 1),
(6108, 61, 'Kab. Kapuas Hulu', 1),
(6109, 61, 'Kab. Sekadau', 1),
(6110, 61, 'Kab. Melawi', 1),
(6111, 61, 'Kab. Kayong Utara', 1),
(6112, 61, 'Kab. Kubu Raya', 1),
(6171, 61, 'Kota Pontianak', 1),
(6172, 61, 'Kota Singkawang', 1),
(6201, 62, 'Kab. Kotawaringin Barat', 1),
(6202, 62, 'Kab. Kotawaringin Timur', 1),
(6203, 62, 'Kab. Kapuas', 1),
(6204, 62, 'Kab. Barito Selatan', 1),
(6205, 62, 'Kab. Barito Utara', 1),
(6206, 62, 'Kab. Sukamara', 1),
(6207, 62, 'Kab. Lamandau', 1),
(6208, 62, 'Kab. Seruyan', 1),
(6209, 62, 'Kab. Katingan', 1),
(6210, 62, 'Kab. Pulang Pisau', 1),
(6211, 62, 'Kab. Gunung Mas', 1),
(6212, 62, 'Kab. Barito Timur', 1),
(6213, 62, 'Kab. Murung Raya', 1),
(6271, 62, 'Kota Palangka Raya', 1),
(6301, 63, 'Kab. Tanah Laut', 1),
(6302, 63, 'Kab. Kota Baru', 1),
(6303, 63, 'Kab. Banjar', 1),
(6304, 63, 'Kab. Barito Kuala', 1),
(6305, 63, 'Kab. Tapin', 1),
(6306, 63, 'Kab. Hulu Sungai Selatan', 1),
(6307, 63, 'Kab. Hulu Sungai Tengah', 1),
(6308, 63, 'Kab. Hulu Sungai Utara', 1),
(6309, 63, 'Kab. Tabalong', 1),
(6310, 63, 'Kab. Tanah Bumbu', 1),
(6311, 63, 'Kab. Balangan', 1),
(6371, 63, 'Kota Banjarmasin', 1),
(6372, 63, 'Kota Banjar Baru', 1),
(6401, 64, 'Kab. Paser', 1),
(6402, 64, 'Kab. Kutai Barat', 1),
(6403, 64, 'Kab. Kutai Kartanegara', 1),
(6404, 64, 'Kab. Kutai Timur', 1),
(6405, 64, 'Kab. Berau', 1),
(6409, 64, 'Kab. Penajam Paser Utara', 1),
(6471, 64, 'Kota Balikpapan', 1),
(6472, 64, 'Kota Samarinda', 1),
(6474, 64, 'Kota Bontang', 1),
(6501, 65, 'Kab. Malinau', 1),
(6502, 65, 'Kab. Bulungan', 1),
(6503, 65, 'Kab. Tana Tidung', 1),
(6504, 65, 'Kab. Nunukan', 1),
(6571, 65, 'Kota Tarakan', 1),
(7101, 71, 'Kab. Bolaang Mongondow', 1),
(7102, 71, 'Kab. Minahasa', 1),
(7103, 71, 'Kab. Kepulauan Sangihe', 1),
(7104, 71, 'Kab. Kepulauan Talaud', 1),
(7105, 71, 'Kab. Minahasa Selatan', 1),
(7106, 71, 'Kab. Minahasa Utara', 1),
(7107, 71, 'Kab. Bolaang Mongondow Utara', 1),
(7108, 71, 'Kab. Siau Tagulandang Biaro', 1),
(7109, 71, 'Kab. Minahasa Tenggara', 1),
(7110, 71, 'Kab. Bolaang Mongondow Selatan', 1),
(7111, 71, 'Kab. Bolaang Mongondow Timur', 1),
(7171, 71, 'Kota Manado', 1),
(7172, 71, 'Kota Bitung', 1),
(7173, 71, 'Kota Tomohon', 1),
(7174, 71, 'Kota Kotamobagu', 1),
(7201, 72, 'Kab. Banggai Kepulauan', 1),
(7202, 72, 'Kab. Banggai', 1),
(7203, 72, 'Kab. Morowali', 1),
(7204, 72, 'Kab. Poso', 1),
(7205, 72, 'Kab. Donggala', 1),
(7206, 72, 'Kab. Toli-toli', 1),
(7207, 72, 'Kab. Buol', 1),
(7208, 72, 'Kab. Parigi Moutong', 1),
(7209, 72, 'Kab. Tojo Una-una', 1),
(7210, 72, 'Kab. Sigi', 1),
(7271, 72, 'Kota Palu', 1),
(7301, 73, 'Kab. Kepulauan Selayar', 1),
(7302, 73, 'Kab. Bulukumba', 1),
(7303, 73, 'Kab. Bantaeng', 1),
(7304, 73, 'Kab. Jeneponto', 1),
(7305, 73, 'Kab. Takalar', 1),
(7306, 73, 'Kab. Gowa', 1),
(7307, 73, 'Kab. Sinjai', 1),
(7308, 73, 'Kab. Maros', 1),
(7309, 73, 'Kab. Pangkajene Dan Kepulauan', 1),
(7310, 73, 'Kab. Barru', 1),
(7311, 73, 'Kab. Bone', 1),
(7312, 73, 'Kab. Soppeng', 1),
(7313, 73, 'Kab. Wajo', 1),
(7314, 73, 'Kab. Sidenreng Rappang', 1),
(7315, 73, 'Kab. Pinrang', 1),
(7316, 73, 'Kab. Enrekang', 1),
(7317, 73, 'Kab. Luwu', 1),
(7318, 73, 'Kab. Tana Toraja', 1),
(7322, 73, 'Kab. Luwu Utara', 1),
(7325, 73, 'Kab. Luwu Timur', 1),
(7326, 73, 'Kab. Toraja Utara', 1),
(7371, 73, 'Kota Makassar', 1),
(7372, 73, 'Kota Parepare', 1),
(7373, 73, 'Kota Palopo', 1),
(7401, 74, 'Kab. Buton', 1),
(7402, 74, 'Kab. Muna', 1),
(7403, 74, 'Kab. Konawe', 1),
(7404, 74, 'Kab. Kolaka', 1),
(7405, 74, 'Kab. Konawe Selatan', 1),
(7406, 74, 'Kab. Bombana', 1),
(7407, 74, 'Kab. Wakatobi', 1),
(7408, 74, 'Kab. Kolaka Utara', 1),
(7409, 74, 'Kab. Buton Utara', 1),
(7410, 74, 'Kab. Konawe Utara', 1),
(7471, 74, 'Kota Kendari', 1),
(7472, 74, 'Kota Baubau', 1),
(7501, 75, 'Kab. Boalemo', 1),
(7502, 75, 'Kab. Gorontalo', 1),
(7503, 75, 'Kab. Pohuwato', 1),
(7504, 75, 'Kab. Bone Bolango', 1),
(7505, 75, 'Kab. Gorontalo Utara', 1),
(7571, 75, 'Kota Gorontalo', 1),
(7601, 76, 'Kab. Majene', 1),
(7602, 76, 'Kab. Polewali Mandar', 1),
(7603, 76, 'Kab. Mamasa', 1),
(7604, 76, 'Kab. Mamuju', 1),
(7605, 76, 'Kab. Mamuju Utara', 1),
(8101, 81, 'Kab. Maluku Tenggara Barat', 1),
(8102, 81, 'Kab. Maluku Tenggara', 1),
(8103, 81, 'Kab. Maluku Tengah', 1),
(8104, 81, 'Kab. Buru', 1),
(8105, 81, 'Kab. Kepulauan Aru', 1),
(8106, 81, 'Kab. Seram Bagian Barat', 1),
(8107, 81, 'Kab. Seram Bagian Timur', 1),
(8108, 81, 'Kab. Maluku Barat Daya', 1),
(8109, 81, 'Kab. Buru Selatan', 1),
(8171, 81, 'Kota Ambon', 1),
(8172, 81, 'Kota Tual', 1),
(8201, 82, 'Kab. Halmahera Barat', 1),
(8202, 82, 'Kab. Halmahera Tengah', 1),
(8203, 82, 'Kab. Kepulauan Sula', 1),
(8204, 82, 'Kab. Halmahera Selatan', 1),
(8205, 82, 'Kab. Halmahera Utara', 1),
(8206, 82, 'Kab. Halmahera Timur', 1),
(8207, 82, 'Kab. Pulau Morotai', 1),
(8271, 82, 'Kota Ternate', 1),
(8272, 82, 'Kota Tidore Kepulauan', 1),
(9101, 91, 'Kab. Fakfak', 1),
(9102, 91, 'Kab. Kaimana', 1),
(9103, 91, 'Kab. Teluk Wondama', 1),
(9104, 91, 'Kab. Teluk Bintuni', 1),
(9105, 91, 'Kab. Manokwari', 1),
(9106, 91, 'Kab. Sorong Selatan', 1),
(9107, 91, 'Kab. Sorong', 1),
(9108, 91, 'Kab. Raja Ampat', 1),
(9109, 91, 'Kab. Tambrauw', 1),
(9110, 91, 'Kab. Maybrat', 1),
(9171, 91, 'Kota Sorong', 1),
(9401, 94, 'Kab. Merauke', 1),
(9402, 94, 'Kab. Jayawijaya', 1),
(9403, 94, 'Kab. Jayapura', 1),
(9404, 94, 'Kab. Nabire', 1),
(9408, 94, 'Kab. Kepulauan Yapen', 1),
(9409, 94, 'Kab. Biak Numfor', 1),
(9410, 94, 'Kab. Paniai', 1),
(9411, 94, 'Kab. Puncak Jaya', 1),
(9412, 94, 'Kab. Mimika', 1),
(9413, 94, 'Kab. Boven Digoel', 1),
(9414, 94, 'Kab. Mappi', 1),
(9415, 94, 'Kab. Asmat', 1),
(9416, 94, 'Kab. Yahukimo', 1),
(9417, 94, 'Kab. Pegunungan Bintang', 1),
(9418, 94, 'Kab. Tolikara', 1),
(9419, 94, 'Kab. Sarmi', 1),
(9420, 94, 'Kab. Keerom', 1),
(9426, 94, 'Kab. Waropen', 1),
(9427, 94, 'Kab. Supiori', 1),
(9428, 94, 'Kab. Mamberamo Raya', 1),
(9429, 94, 'Kab. Nduga', 1),
(9430, 94, 'Kab. Lanny Jaya', 1),
(9431, 94, 'Kab. Mamberamo Tengah', 1),
(9432, 94, 'Kab. Yalimo', 1),
(9433, 94, 'Kab. Puncak', 1),
(9434, 94, 'Kab. Dogiyai', 1),
(9435, 94, 'Kab. Intan Jaya', 1),
(9436, 94, 'Kab. Deiyai', 1),
(9471, 94, 'Kota Jayapura', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_karyawan`
--

CREATE TABLE `tb_karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `nama_karyawan` varchar(500) NOT NULL,
  `id_divisi_organisasi` int(11) NOT NULL,
  `id_jabatan` int(11) NOT NULL,
  `email_karyawan` char(255) NOT NULL,
  `nomor_handphone_karyawan` varchar(500) NOT NULL,
  `id_jenis_kelamin` int(11) NOT NULL,
  `status_karyawan` mediumint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_karyawan`
--

INSERT INTO `tb_karyawan` (`id_karyawan`, `nama_karyawan`, `id_divisi_organisasi`, `id_jabatan`, `email_karyawan`, `nomor_handphone_karyawan`, `id_jenis_kelamin`, `status_karyawan`) VALUES
(1, 'Administrator', 1, 2, 'admin@gmail.com', '085220022884', 1, 1),
(2, 'Triyana', 3, 12, 'triyana.tri@gendehgroup.com', '089630523150', 2, 1),
(3, 'Evira Devi', 4, 12, 'eviradevi@gendehgroup.com', '081388752861', 2, 1),
(4, 'Nurul Annisa', 3, 12, 'nurulannisa@gendehgroup.com', '081311425592', 2, 1),
(5, 'Julian Bimo ', 3, 12, 'julianbimo@gendehgroup.com', '085269664771', 1, 1),
(6, 'Noverina ITS Nainggolan ', 3, 9, 'noverinanainggolan@gendehgroup.com', '087776095661', 2, 1),
(7, 'Josefita Regina ', 6, 12, 'josefita.regina@gendehgroup.com', '081802299789', 2, 1),
(8, 'Salma Huriyah', 5, 12, 'salma@gendehgroup.com', '895323374730', 2, 1),
(9, 'Dita Pujiastuti Sekarini', 5, 12, 'dita.pujiastuti@gendehgroup.com', '085694496577', 2, 1),
(10, 'Maria Christy Veronika', 5, 12, 'veronika.bangun@gmail.com', '085601126280', 2, 1),
(11, 'Dini Mugabe', 5, 12, 'dini.mugabe@gendehgroup.com', '082125424767', 2, 1),
(12, 'Andi Riswanto ', 3, 12, 'andi.riswanto@gendehgroup.com', '081210694567', 1, 1),
(13, 'Wiska Wildia', 5, 9, 'wiska.wildia@gendehgroup.com', '085311944643', 2, 1),
(14, 'Awang kaka Berma SK', 3, 12, 'awangkaka@gendehgroup.com', '081362285057', 1, 1),
(15, 'Firdaus Raskita ', 3, 12, 'firdausraskitasembiring@gendehgroup.com', '08977846426', 1, 1),
(16, 'Herman Turnip', 3, 12, 'hermanturnip@gendehgroup.com', '081279120341', 1, 1),
(17, 'Fajar Kurniawan', 3, 12, 'fajarkurniawan@gendehgroup.com', '082228678928', 1, 1),
(18, 'Tito Sugiharto', 3, 12, 'titosugiharto@gendehgroup.com', '082257786261', 1, 1),
(19, 'Suyono Ahmad Sarkawi', 7, 12, 'n/a', '087881157397', 1, 1),
(20, 'Phadvie Vanduary', 7, 12, 'n/a', '081381282152', 1, 1),
(21, 'Nurseha', 7, 12, 'n/a', '089522580142', 2, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kepemilikan_armada`
--

CREATE TABLE `tb_kepemilikan_armada` (
  `id_kepemilikan_armada` int(11) NOT NULL,
  `nama_kepemilikan_armada` varchar(255) NOT NULL,
  `status_kepemilikan_armada` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_kepemilikan_armada`
--

INSERT INTO `tb_kepemilikan_armada` (`id_kepemilikan_armada`, `nama_kepemilikan_armada`, `status_kepemilikan_armada`) VALUES
(1, 'Milik Sendiri', 1),
(2, 'Milik Pihak Ketiga', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_master_item_pembelian`
--

CREATE TABLE `tb_master_item_pembelian` (
  `id_master_item_pembelian` int(11) NOT NULL,
  `id_kelompok_master_item_pembelian` mediumint(11) NOT NULL,
  `nama_master_item_pembelian` varchar(255) NOT NULL,
  `status_master_item_pembelian` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_master_item_pembelian`
--

INSERT INTO `tb_master_item_pembelian` (`id_master_item_pembelian`, `id_kelompok_master_item_pembelian`, `nama_master_item_pembelian`, `status_master_item_pembelian`) VALUES
(1, 1, 'Solar B30', 1),
(2, 1, 'Solar B50', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_master_item_penjualan`
--

CREATE TABLE `tb_master_item_penjualan` (
  `id_master_item_penjualan` int(11) NOT NULL,
  `nama_master_item_penjualan` varchar(255) NOT NULL,
  `status_master_item_penjualan` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_master_item_penjualan`
--

INSERT INTO `tb_master_item_penjualan` (`id_master_item_penjualan`, `nama_master_item_penjualan`, `status_master_item_penjualan`) VALUES
(1, 'Solar B30', 1),
(2, 'Jasa Angkutan Solar', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mata_uang`
--

CREATE TABLE `tb_mata_uang` (
  `id_mata_uang` bigint(20) NOT NULL,
  `simbol_mata_uang` varchar(500) NOT NULL,
  `nama_mata_uang` varchar(500) NOT NULL,
  `status_mata_uang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_mata_uang`
--

INSERT INTO `tb_mata_uang` (`id_mata_uang`, `simbol_mata_uang`, `nama_mata_uang`, `status_mata_uang`) VALUES
(1, 'Rp.', 'Rupiah', 1),
(2, 'US$.', 'Dollar Amerika', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_negara`
--

CREATE TABLE `tb_negara` (
  `id_negara` bigint(20) NOT NULL,
  `nama_negara` varchar(500) NOT NULL,
  `status_negara` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_negara`
--

INSERT INTO `tb_negara` (`id_negara`, `nama_negara`, `status_negara`) VALUES
(1, 'Indonesia', 1),
(2, 'Singapura', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_nomor_dokumen_transaksi`
--

CREATE TABLE `tb_nomor_dokumen_transaksi` (
  `id_nomor_dokumen_transaksi` int(11) NOT NULL,
  `id_perusahaan` int(11) NOT NULL,
  `nama_nomor_dokumen_transaksi` varchar(255) NOT NULL,
  `id_fungsi_aplikasi` int(1) NOT NULL,
  `awalan_nomor_dokumen_transaksi` varchar(255) NOT NULL,
  `counter_nomor_dokumen_transaksi` int(4) UNSIGNED ZEROFILL NOT NULL,
  `status_nomor_dokumen_transaksi` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_nomor_dokumen_transaksi`
--

INSERT INTO `tb_nomor_dokumen_transaksi` (`id_nomor_dokumen_transaksi`, `id_perusahaan`, `nama_nomor_dokumen_transaksi`, `id_fungsi_aplikasi`, `awalan_nomor_dokumen_transaksi`, `counter_nomor_dokumen_transaksi`, `status_nomor_dokumen_transaksi`) VALUES
(1, 1, 'penawaran_harga', 1, 'PH-GTL#', 0006, 1),
(2, 2, 'penawaran_harga', 1, 'PH-HSI#', 0001, 1),
(3, 3, 'penawaran_harga', 1, 'PH-SPS#', 0001, 1),
(4, 4, 'penawaran_harga', 1, 'PH-BPE#', 0001, 1),
(5, 1, 'penjualan', 2, 'SO-GTL#', 0004, 1),
(6, 2, 'penjualan', 2, 'SO-HSI#', 0001, 1),
(7, 3, 'penjualan', 2, 'SO-SPS#', 0001, 1),
(8, 4, 'penjualan', 2, 'SO-BPE#', 0001, 1),
(9, 1, 'pengiriman_barang', 3, 'DO-GTL#', 0010, 1),
(10, 2, 'pengiriman_barang', 3, 'DO-HSI#', 0001, 1),
(11, 3, 'pengiriman_barang', 3, 'DO-SPS#', 0001, 1),
(17, 4, 'pengiriman_barang', 3, 'DO-BPE#', 0001, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pelabuhan_laut`
--

CREATE TABLE `tb_pelabuhan_laut` (
  `id_pelabuhan_laut` int(11) NOT NULL,
  `nama_pelabuhan_laut` varchar(255) NOT NULL,
  `id_kabkota` int(11) NOT NULL,
  `status_pelabuhan_laut` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_pelabuhan_laut`
--

INSERT INTO `tb_pelabuhan_laut` (`id_pelabuhan_laut`, `nama_pelabuhan_laut`, `id_kabkota`, `status_pelabuhan_laut`) VALUES
(1, 'Pelabuhan Merak', 3672, 1),
(2, 'Pelabuhan Sunda Kelapa', 3175, 1),
(3, 'Pelabuhan Tanjung Priok ', 3175, 1),
(4, 'Pelabuhan Cirebon', 3274, 1),
(5, 'Pelabuhan Pertiwi Pamanukan', 3213, 1),
(6, 'Pelabuhan Pramuka ', 3205, 1),
(7, 'Pelabuhan Tanjung Emas ', 1101, 1),
(8, 'Pelabuhan Tanjung Intan ', 1101, 1),
(9, 'Pelabuhan Batu Guluk', 1101, 1),
(10, 'Pelabuhan Kalianget', 1101, 1),
(11, 'Pelabuhan Kalimas', 1101, 1),
(12, 'Pelabuhan Kamal', 1101, 1),
(13, 'Pelabuhan Ketapang', 1101, 1),
(14, 'Pelabuhan Ujung ', 1101, 1),
(15, 'Pelabuhan Tanjung Perak ', 1101, 1),
(16, 'Pelabuhan Tanjung Tembaga', 1101, 1),
(17, 'Pelabuhan Tanjung Wangi', 1101, 1),
(18, 'Pelabuhan Surindo Supjarso', 1101, 1),
(19, 'Pelabuhan Krueng Geukeh', 1101, 1),
(20, 'Pelabuhan Yosep iskandar', 1101, 1),
(21, 'Pelabuhan Malahayati', 1101, 1),
(22, 'Pelabuhan Pangkal Balam', 1101, 1),
(23, 'Pelabuhan Penawar Rindu ', 1101, 1),
(24, 'Pelabuhan Bengkulu', 1101, 1),
(25, 'Pelabuhan Jambi ', 1101, 1),
(26, 'Pelabuhan Putih ', 1101, 1),
(27, 'Pelabuhan ASDP Dompak', 1101, 1),
(28, 'Pealabuhan ASDP Parit Rempak', 1101, 1),
(29, 'Pelabuhan ASDP tanjung Uban', 1101, 1),
(30, 'Pelabuhan Batu Ampar', 1101, 1),
(31, 'Pelabuhan Pulau Subi ', 1101, 1),
(32, 'Pelabuhan Tanjung Balai Karimun', 1101, 1),
(33, 'Pelabuhan Bakauheni', 1101, 1),
(34, 'Pelabuhan Muara', 1101, 1),
(35, 'Pelabuhan Teluk Bayur', 1101, 1),
(36, 'Pelabuhan Tanjung Api- api', 1101, 1),
(37, 'Pelabuhan Belawan ', 1101, 1),
(38, 'Pelabuhan Kuala Tanjung ', 1101, 1),
(39, 'Pelabuhan Tanjung Balai ', 1101, 1),
(40, 'Dwikora ', 1101, 1),
(41, 'Pelabuhan Trisakti', 1101, 1),
(42, 'Pelabuhan Samudera ', 1101, 1),
(43, 'Semayang', 1101, 1),
(44, 'Malundung', 1101, 1),
(45, 'Soekarno Hatta', 1101, 1),
(46, 'Tanjung Ringgit', 1101, 1),
(47, 'Administrasi Pelabuhan Biak', 1101, 1),
(48, 'Administrasi Pelabuhan Mearauke', 1101, 1),
(49, 'Administrator Pelabuhan Fak - fak', 1101, 1),
(50, 'Administrator Pelabuhan Manokwari', 1101, 1),
(51, 'Administrasi Pelabuhan Sorong', 1101, 1),
(52, 'Barru ', 1101, 1),
(53, 'Beloppa', 1101, 1),
(54, 'Buton', 1101, 1),
(55, 'Kendari ', 1101, 1),
(56, 'Malili', 1101, 1),
(57, 'Malundung', 1101, 1),
(58, 'Pare Pare ', 1101, 1),
(59, 'Pelabuhan Anggrek ', 1101, 1),
(60, 'Polewali                ', 1101, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_perusahaan`
--

CREATE TABLE `tb_perusahaan` (
  `id_perusahaan` bigint(20) NOT NULL,
  `nama_perusahaan` varchar(500) NOT NULL,
  `email_perusahaan` varchar(500) NOT NULL,
  `telepon_perusahaan` varchar(500) NOT NULL,
  `fax_perusahaan` varchar(500) NOT NULL,
  `alamat_perusahaan` varchar(500) NOT NULL,
  `kodepos_perusahaan` int(11) NOT NULL,
  `web_perusahaan` varchar(500) NOT NULL,
  `npwp_perusahaan` varchar(500) NOT NULL,
  `norekening_tagihan_perusahaan` bigint(20) NOT NULL,
  `status_perusahaan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_perusahaan`
--

INSERT INTO `tb_perusahaan` (`id_perusahaan`, `nama_perusahaan`, `email_perusahaan`, `telepon_perusahaan`, `fax_perusahaan`, `alamat_perusahaan`, `kodepos_perusahaan`, `web_perusahaan`, `npwp_perusahaan`, `norekening_tagihan_perusahaan`, `status_perusahaan`) VALUES
(1, 'PT. Global Total Lubrindo', 'info@gendehgroup.com', '021-29067354', '021-29067356', 'MT Haryono Square Jl. MT. Haryono Kav.10, Blok B8b Kel. Bidara Cina, Kec. Jatinegara Jakarta Timur', 13630, 'https://shipgo.id/', '02.741.791.4-077.000', 0, 1),
(2, 'PT. Hema Shipping Indonesia', 'info@gendehgroup.com', '021-29067354', '021-29067356', 'MT Haryono Square Jl. MT. Haryono Kav.10, Blok B8b Kel. Bidara Cina, Kec. Jatinegara Jakarta Timur', 13630, 'https://shipgo.id/', '03.063.532.0-002.000', 0, 1),
(3, 'PT. Synergy Perkasa Sejahtera', 'info@gendehgroup.com', '021-29067354', '021-29067356', 'MT Haryono Square Jl. MT. Haryono Kav.10, Blok B8b Kel. Bidara Cina, Kec. Jatinegara Jakarta Timur', 13630, 'https://shipgo.id/', '02.817.084.3-077.000', 0, 1),
(4, 'PT. Berkah Prabu Energi', 'info@gendehgroup.com', '021-21381419', '021-21381419', 'Gedung MTH Square Lt. 3A No. 10, Jl. MT. Haryono Kav. 10 RT/RW. 006/012, Kel. Bidara Cina, Kec. Jatinegara, Kota Administrasi Jakarta Timur', 13330, 'https://shipgo.id/', '75.512.867.5-002.000', 0, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_provinsi`
--

CREATE TABLE `tb_provinsi` (
  `id_provinsi` int(11) NOT NULL,
  `nama_provinsi` varchar(255) NOT NULL,
  `status_provinsi` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_provinsi`
--

INSERT INTO `tb_provinsi` (`id_provinsi`, `nama_provinsi`, `status_provinsi`) VALUES
(11, 'Naggroe Aceh Darussalam', 1),
(12, 'Sumatera Utara', 1),
(13, 'Sumatera Barat', 1),
(14, 'Riau', 1),
(15, 'Jambi', 1),
(16, 'Sumatera Selatan', 1),
(17, 'Bengkulu', 1),
(18, 'Lampung', 1),
(19, 'Kepulauan Bangka Belitung', 1),
(21, 'Kepulauan Riau', 1),
(31, 'DKI Jakarta', 1),
(32, 'Jawa Barat', 1),
(33, 'Jawa Tengah', 1),
(34, 'Di Yogyakarta', 1),
(35, 'Jawa Timur', 1),
(36, 'Banten', 1),
(51, 'Bali', 1),
(52, 'Nusa Tenggara Barat', 1),
(53, 'Nusa Tenggara Timur', 1),
(61, 'Kalimantan Barat', 1),
(62, 'Kalimantan Tengah', 1),
(63, 'Kalimantan Selatan', 1),
(64, 'Kalimantan Timur', 1),
(65, 'Kalimantan Utara', 1),
(71, 'Sulawesi Utara', 1),
(72, 'Sulawesi Tengah', 1),
(73, 'Sulawesi Selatan', 1),
(74, 'Sulawesi Tenggara', 1),
(75, 'Gorontalo', 1),
(76, 'Sulawesi Barat', 1),
(81, 'Maluku', 1),
(82, 'Maluku Utara', 1),
(91, 'Papua Barat', 1),
(94, 'Papua', 1),
(96, 'Papua Selatan', 1),
(97, 'Papua Tengah', 1),
(98, 'Papua Pegunungan', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_satuan_master_item`
--

CREATE TABLE `tb_satuan_master_item` (
  `id_satuan_master_item` int(11) NOT NULL,
  `nama_satuan_master_item` varchar(255) NOT NULL,
  `status_satuan_master_item` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_satuan_master_item`
--

INSERT INTO `tb_satuan_master_item` (`id_satuan_master_item`, `nama_satuan_master_item`, `status_satuan_master_item`) VALUES
(1, 'Liter (Ltr)', 1),
(2, 'Barel (Bbl)', 1),
(3, 'Kilo Litter (KL)', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_status_invoice`
--

CREATE TABLE `tb_status_invoice` (
  `id_status_invoice` int(11) NOT NULL,
  `nama_status_invoice` varchar(255) NOT NULL,
  `status_status_invoice` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_status_invoice`
--

INSERT INTO `tb_status_invoice` (`id_status_invoice`, `nama_status_invoice`, `status_status_invoice`) VALUES
(1, 'Draft Invoice', 1),
(2, 'Invoice Dibayar Sebagian', 1),
(3, 'Invoice Lunas', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_status_penawaran`
--

CREATE TABLE `tb_status_penawaran` (
  `id_status_penawaran` int(11) NOT NULL,
  `nama_status_penawaran` varchar(255) NOT NULL,
  `status_status_penawaran` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_status_penawaran`
--

INSERT INTO `tb_status_penawaran` (`id_status_penawaran`, `nama_status_penawaran`, `status_status_penawaran`) VALUES
(1, 'Draft Penawaran', 1),
(2, 'Proses Penjualan', 1),
(3, 'Proses Pengiriman', 1),
(4, 'Proses Penagihan', 1),
(5, 'Proses Pembayaran', 1),
(6, 'Closed', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_status_pengiriman`
--

CREATE TABLE `tb_status_pengiriman` (
  `id_status_pengiriman` int(11) NOT NULL,
  `nama_status_pengiriman` varchar(255) NOT NULL,
  `status_status_pengiriman` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_status_pengiriman`
--

INSERT INTO `tb_status_pengiriman` (`id_status_pengiriman`, `nama_status_pengiriman`, `status_status_pengiriman`) VALUES
(1, 'Draft Pengiriman', 1),
(2, 'Proses Penagihan', 1),
(3, 'Proses Pembayaran', 1),
(4, 'Closed', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_status_penjualan`
--

CREATE TABLE `tb_status_penjualan` (
  `id_status_penjualan` int(11) NOT NULL,
  `nama_status_penjualan` varchar(255) NOT NULL,
  `status_status_penjualan` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_status_penjualan`
--

INSERT INTO `tb_status_penjualan` (`id_status_penjualan`, `nama_status_penjualan`, `status_status_penjualan`) VALUES
(1, 'Draft Penjualan', 1),
(2, 'Proses Pengiriman', 1),
(3, 'Proses Penagihan', 1),
(4, 'Proses Pembayaran', 1),
(5, 'Closed', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_supplier`
--

CREATE TABLE `tb_supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supplier` varchar(255) NOT NULL,
  `email_supplier` varchar(255) NOT NULL,
  `telepon_supplier` varchar(255) NOT NULL,
  `fax_supplier` varchar(255) NOT NULL,
  `alamat_supplier` varchar(255) NOT NULL,
  `id_provinsi` int(11) NOT NULL,
  `id_kabkota` int(11) NOT NULL,
  `kode_pos_supplier` varchar(255) NOT NULL,
  `id_negara` int(11) NOT NULL,
  `website_supplier` varchar(500) NOT NULL,
  `npwp_supplier` varchar(500) NOT NULL,
  `status_supplier` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_supplier`
--

INSERT INTO `tb_supplier` (`id_supplier`, `nama_supplier`, `email_supplier`, `telepon_supplier`, `fax_supplier`, `alamat_supplier`, `id_provinsi`, `id_kabkota`, `kode_pos_supplier`, `id_negara`, `website_supplier`, `npwp_supplier`, `status_supplier`) VALUES
(3, 'Bintang', 'asd@asd.asd', '312312312', '4123213', 'jl 123', 18, 1109, '6', 1, '7', '8', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_supplier_pic`
--

CREATE TABLE `tb_supplier_pic` (
  `id_supplier_pic` int(11) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `nama_supplier_pic` varchar(255) NOT NULL,
  `nomor_mobile_supplier_pic` varchar(255) NOT NULL,
  `email_supplier_pic` varchar(255) NOT NULL,
  `jabatan_supplier_pic` varchar(255) NOT NULL,
  `status_supplier_pic` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_supplier_pic`
--

INSERT INTO `tb_supplier_pic` (`id_supplier_pic`, `id_supplier`, `nama_supplier_pic`, `nomor_mobile_supplier_pic`, `email_supplier_pic`, `jabatan_supplier_pic`, `status_supplier_pic`) VALUES
(1, 3, '1', '2', 'sad', 'sads', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_termin_pembayaran`
--

CREATE TABLE `tb_termin_pembayaran` (
  `id_termin_pembayaran` int(11) NOT NULL,
  `nama_termin_pembayaran` varchar(255) NOT NULL,
  `status_termin_pembayaran` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_termin_pembayaran`
--

INSERT INTO `tb_termin_pembayaran` (`id_termin_pembayaran`, `nama_termin_pembayaran`, `status_termin_pembayaran`) VALUES
(1, 'Cash/Tunai', 1),
(2, 'Jatuh Tempo 30 Hari', 1),
(3, 'Jatuh Tempo 45 Hari', 1),
(4, 'Jatuh Tempo 60 Hari', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimonial`
--

CREATE TABLE `testimonial` (
  `id_testimonial` int(11) NOT NULL,
  `nama_testimonial` varchar(64) NOT NULL,
  `job_testimonial` varchar(64) NOT NULL,
  `text_testimonial` varchar(256) NOT NULL,
  `image_testimonial` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `testimonial`
--

INSERT INTO `testimonial` (`id_testimonial`, `nama_testimonial`, `job_testimonial`, `text_testimonial`, `image_testimonial`) VALUES
(5, 'Divisi Marketing', 'Sales Engineer', 'Kami puas dengan pelayanan dari Shipgo dan Gendeh Grup', 'ELSA.jpg'),
(6, 'Divisi Logistik', 'Engineer', 'Pelayanan memuaskan', 'petamina.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `upload_kegiatan_awak_kapal`
--

CREATE TABLE `upload_kegiatan_awak_kapal` (
  `id_upload_kegiatan_awak_kapal` int(11) NOT NULL,
  `IDUser` int(11) NOT NULL,
  `id_perusahaan` int(11) NOT NULL,
  `tanggal_kegiatan_awak_kapal` date NOT NULL,
  `keterangan_kegiatan_awak_kapal` varchar(500) NOT NULL,
  `nama_file` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `IDUser` int(11) NOT NULL,
  `id_perusahaan` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `Name` varchar(128) NOT NULL,
  `Email` varchar(256) NOT NULL,
  `Password` varchar(64) NOT NULL,
  `IDRole` int(11) NOT NULL,
  `IsAktifUser` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`IDUser`, `id_perusahaan`, `id_karyawan`, `Name`, `Email`, `Password`, `IDRole`, `IsAktifUser`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 'Administrator', 'admin@gmail.com', '$2y$10$S5nlilM3d.4diXw4Dx70BesqgzP11RtdkHaQImYStO6uujIaEOAxC', 1, 1, '2022-01-11 00:59:07', '2022-11-13 03:06:48'),
(10, 0, 0, 'Admin Biasa', 'adminbiasa@gmail.com', '$2y$10$fuh6OujJgd1YPWWgxsADP.8p5p.6bq5.bw6BAfcx2Er/DRbQqtpZy', 17, 1, '2022-11-29 08:42:16', NULL),
(11, 0, 0, 'Supervisor', 'supervisor@gmail.com', '$2y$10$7KWMesZ6.Dl2S.VEFukVmOLdQ1HVp7M8hiWAmT8LiE86y5fG/JCku', 16, 1, '2022-11-29 08:42:44', NULL),
(12, 0, 0, 'User Toba', 'usertoba@gmail.com', '$2y$10$NHTfD6JrJi0RMabnjjQjWOIIaXe7c3dboK6MSfdffDYXmixy9QPAG', 15, 1, '2022-11-29 08:43:11', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akses_menu`
--
ALTER TABLE `akses_menu`
  ADD PRIMARY KEY (`IDAksesMenu`);

--
-- Indeks untuk tabel `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id_articles`);

--
-- Indeks untuk tabel `bankdata_customer`
--
ALTER TABLE `bankdata_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`id_carousel`);

--
-- Indeks untuk tabel `company_profile`
--
ALTER TABLE `company_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `devsetting`
--
ALTER TABLE `devsetting`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id_faqs`);

--
-- Indeks untuk tabel `halaman`
--
ALTER TABLE `halaman`
  ADD PRIMARY KEY (`id_halaman`);

--
-- Indeks untuk tabel `kontrak_customer`
--
ALTER TABLE `kontrak_customer`
  ADD PRIMARY KEY (`id_kontrak_customer`);

--
-- Indeks untuk tabel `leavemsg`
--
ALTER TABLE `leavemsg`
  ADD PRIMARY KEY (`id_leavemsg`);

--
-- Indeks untuk tabel `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`id_link`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`IDMenu`);

--
-- Indeks untuk tabel `menubawah`
--
ALTER TABLE `menubawah`
  ADD PRIMARY KEY (`id_menubawah`),
  ADD UNIQUE KEY `posisi` (`posisi`),
  ADD UNIQUE KEY `id_halaman` (`id_halaman`);

--
-- Indeks untuk tabel `menudepan`
--
ALTER TABLE `menudepan`
  ADD PRIMARY KEY (`id_menudepan`);

--
-- Indeks untuk tabel `menulanding`
--
ALTER TABLE `menulanding`
  ADD PRIMARY KEY (`id_menulanding`);

--
-- Indeks untuk tabel `menutengah`
--
ALTER TABLE `menutengah`
  ADD PRIMARY KEY (`id_menutengah`),
  ADD UNIQUE KEY `posisi` (`posisi`),
  ADD UNIQUE KEY `id_halaman` (`id_halaman`);

--
-- Indeks untuk tabel `menu_landing`
--
ALTER TABLE `menu_landing`
  ADD PRIMARY KEY (`id_menu_landing`);

--
-- Indeks untuk tabel `menu_utama`
--
ALTER TABLE `menu_utama`
  ADD PRIMARY KEY (`id_menu_utama`);

--
-- Indeks untuk tabel `ourclient`
--
ALTER TABLE `ourclient`
  ADD PRIMARY KEY (`id_ourclient`);

--
-- Indeks untuk tabel `penawaran_harga`
--
ALTER TABLE `penawaran_harga`
  ADD PRIMARY KEY (`id_penawaran_harga`);

--
-- Indeks untuk tabel `penawaran_harga_arsip_dokumen`
--
ALTER TABLE `penawaran_harga_arsip_dokumen`
  ADD PRIMARY KEY (`id_penawaran_harga_arsip_dokumen`);

--
-- Indeks untuk tabel `penawaran_harga_item`
--
ALTER TABLE `penawaran_harga_item`
  ADD PRIMARY KEY (`id_penawaran_harga_item`);

--
-- Indeks untuk tabel `pengiriman_barang`
--
ALTER TABLE `pengiriman_barang`
  ADD PRIMARY KEY (`id_pengiriman_barang`);

--
-- Indeks untuk tabel `pengiriman_barang_arsip_dokumen`
--
ALTER TABLE `pengiriman_barang_arsip_dokumen`
  ADD PRIMARY KEY (`id_pengiriman_barang_arsip_dokumen`);

--
-- Indeks untuk tabel `pengiriman_barang_arsip_dokumen_safety`
--
ALTER TABLE `pengiriman_barang_arsip_dokumen_safety`
  ADD PRIMARY KEY (`id_pengiriman_barang_arsip_dokumen_safety`);

--
-- Indeks untuk tabel `pengiriman_barang_item`
--
ALTER TABLE `pengiriman_barang_item`
  ADD PRIMARY KEY (`id_pengiriman_barang_item`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indeks untuk tabel `penjualan_arsip_dokumen`
--
ALTER TABLE `penjualan_arsip_dokumen`
  ADD PRIMARY KEY (`id_penjualan_arsip_dokumen`);

--
-- Indeks untuk tabel `penjualan_item`
--
ALTER TABLE `penjualan_item`
  ADD PRIMARY KEY (`id_penjualan_item`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`IDRole`);

--
-- Indeks untuk tabel `role_access_menu`
--
ALTER TABLE `role_access_menu`
  ADD PRIMARY KEY (`IDRoleAccessMenu`);

--
-- Indeks untuk tabel `sosmed`
--
ALTER TABLE `sosmed`
  ADD PRIMARY KEY (`id_sosmed`);

--
-- Indeks untuk tabel `tb_alat_ukur_losses`
--
ALTER TABLE `tb_alat_ukur_losses`
  ADD PRIMARY KEY (`id_alat_ukur_losses`);

--
-- Indeks untuk tabel `tb_armada_kapal`
--
ALTER TABLE `tb_armada_kapal`
  ADD PRIMARY KEY (`id_armada_kapal`);

--
-- Indeks untuk tabel `tb_armada_truck`
--
ALTER TABLE `tb_armada_truck`
  ADD PRIMARY KEY (`id_armada_truck`);

--
-- Indeks untuk tabel `tb_customer`
--
ALTER TABLE `tb_customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indeks untuk tabel `tb_customer_pic`
--
ALTER TABLE `tb_customer_pic`
  ADD PRIMARY KEY (`id_customer_pic`);

--
-- Indeks untuk tabel `tb_default_nilai`
--
ALTER TABLE `tb_default_nilai`
  ADD PRIMARY KEY (`id_default_nilai`);

--
-- Indeks untuk tabel `tb_divisi_organisasi`
--
ALTER TABLE `tb_divisi_organisasi`
  ADD PRIMARY KEY (`id_divisi_organisasi`);

--
-- Indeks untuk tabel `tb_fungsi_aplikasi`
--
ALTER TABLE `tb_fungsi_aplikasi`
  ADD PRIMARY KEY (`id_fungsi_aplikasi`);

--
-- Indeks untuk tabel `tb_jabatan`
--
ALTER TABLE `tb_jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indeks untuk tabel `tb_jenis_kelamin`
--
ALTER TABLE `tb_jenis_kelamin`
  ADD PRIMARY KEY (`id_jenis_kelamin`);

--
-- Indeks untuk tabel `tb_kabkota`
--
ALTER TABLE `tb_kabkota`
  ADD PRIMARY KEY (`id_kabkota`),
  ADD UNIQUE KEY `id_kabkota` (`id_kabkota`);

--
-- Indeks untuk tabel `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indeks untuk tabel `tb_kepemilikan_armada`
--
ALTER TABLE `tb_kepemilikan_armada`
  ADD PRIMARY KEY (`id_kepemilikan_armada`);

--
-- Indeks untuk tabel `tb_master_item_pembelian`
--
ALTER TABLE `tb_master_item_pembelian`
  ADD PRIMARY KEY (`id_master_item_pembelian`);

--
-- Indeks untuk tabel `tb_master_item_penjualan`
--
ALTER TABLE `tb_master_item_penjualan`
  ADD PRIMARY KEY (`id_master_item_penjualan`);

--
-- Indeks untuk tabel `tb_mata_uang`
--
ALTER TABLE `tb_mata_uang`
  ADD PRIMARY KEY (`id_mata_uang`);

--
-- Indeks untuk tabel `tb_negara`
--
ALTER TABLE `tb_negara`
  ADD PRIMARY KEY (`id_negara`);

--
-- Indeks untuk tabel `tb_nomor_dokumen_transaksi`
--
ALTER TABLE `tb_nomor_dokumen_transaksi`
  ADD PRIMARY KEY (`id_nomor_dokumen_transaksi`);

--
-- Indeks untuk tabel `tb_pelabuhan_laut`
--
ALTER TABLE `tb_pelabuhan_laut`
  ADD PRIMARY KEY (`id_pelabuhan_laut`);

--
-- Indeks untuk tabel `tb_perusahaan`
--
ALTER TABLE `tb_perusahaan`
  ADD PRIMARY KEY (`id_perusahaan`);

--
-- Indeks untuk tabel `tb_provinsi`
--
ALTER TABLE `tb_provinsi`
  ADD PRIMARY KEY (`id_provinsi`),
  ADD UNIQUE KEY `id_provinsi` (`id_provinsi`);

--
-- Indeks untuk tabel `tb_satuan_master_item`
--
ALTER TABLE `tb_satuan_master_item`
  ADD PRIMARY KEY (`id_satuan_master_item`);

--
-- Indeks untuk tabel `tb_status_invoice`
--
ALTER TABLE `tb_status_invoice`
  ADD PRIMARY KEY (`id_status_invoice`);

--
-- Indeks untuk tabel `tb_status_penawaran`
--
ALTER TABLE `tb_status_penawaran`
  ADD PRIMARY KEY (`id_status_penawaran`);

--
-- Indeks untuk tabel `tb_status_pengiriman`
--
ALTER TABLE `tb_status_pengiriman`
  ADD PRIMARY KEY (`id_status_pengiriman`);

--
-- Indeks untuk tabel `tb_status_penjualan`
--
ALTER TABLE `tb_status_penjualan`
  ADD PRIMARY KEY (`id_status_penjualan`);

--
-- Indeks untuk tabel `tb_supplier`
--
ALTER TABLE `tb_supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indeks untuk tabel `tb_supplier_pic`
--
ALTER TABLE `tb_supplier_pic`
  ADD PRIMARY KEY (`id_supplier_pic`);

--
-- Indeks untuk tabel `tb_termin_pembayaran`
--
ALTER TABLE `tb_termin_pembayaran`
  ADD PRIMARY KEY (`id_termin_pembayaran`);

--
-- Indeks untuk tabel `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id_testimonial`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`IDUser`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `IDRole` (`IDRole`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akses_menu`
--
ALTER TABLE `akses_menu`
  MODIFY `IDAksesMenu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `articles`
--
ALTER TABLE `articles`
  MODIFY `id_articles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `bankdata_customer`
--
ALTER TABLE `bankdata_customer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;

--
-- AUTO_INCREMENT untuk tabel `carousel`
--
ALTER TABLE `carousel`
  MODIFY `id_carousel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `company_profile`
--
ALTER TABLE `company_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `devsetting`
--
ALTER TABLE `devsetting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id_faqs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `halaman`
--
ALTER TABLE `halaman`
  MODIFY `id_halaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kontrak_customer`
--
ALTER TABLE `kontrak_customer`
  MODIFY `id_kontrak_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `leavemsg`
--
ALTER TABLE `leavemsg`
  MODIFY `id_leavemsg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `link`
--
ALTER TABLE `link`
  MODIFY `id_link` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `IDMenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT untuk tabel `menubawah`
--
ALTER TABLE `menubawah`
  MODIFY `id_menubawah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `menudepan`
--
ALTER TABLE `menudepan`
  MODIFY `id_menudepan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `menulanding`
--
ALTER TABLE `menulanding`
  MODIFY `id_menulanding` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `menutengah`
--
ALTER TABLE `menutengah`
  MODIFY `id_menutengah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `menu_landing`
--
ALTER TABLE `menu_landing`
  MODIFY `id_menu_landing` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `menu_utama`
--
ALTER TABLE `menu_utama`
  MODIFY `id_menu_utama` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `ourclient`
--
ALTER TABLE `ourclient`
  MODIFY `id_ourclient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `penawaran_harga`
--
ALTER TABLE `penawaran_harga`
  MODIFY `id_penawaran_harga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `penawaran_harga_arsip_dokumen`
--
ALTER TABLE `penawaran_harga_arsip_dokumen`
  MODIFY `id_penawaran_harga_arsip_dokumen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `penawaran_harga_item`
--
ALTER TABLE `penawaran_harga_item`
  MODIFY `id_penawaran_harga_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pengiriman_barang`
--
ALTER TABLE `pengiriman_barang`
  MODIFY `id_pengiriman_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pengiriman_barang_arsip_dokumen`
--
ALTER TABLE `pengiriman_barang_arsip_dokumen`
  MODIFY `id_pengiriman_barang_arsip_dokumen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pengiriman_barang_arsip_dokumen_safety`
--
ALTER TABLE `pengiriman_barang_arsip_dokumen_safety`
  MODIFY `id_pengiriman_barang_arsip_dokumen_safety` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pengiriman_barang_item`
--
ALTER TABLE `pengiriman_barang_item`
  MODIFY `id_pengiriman_barang_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `penjualan_arsip_dokumen`
--
ALTER TABLE `penjualan_arsip_dokumen`
  MODIFY `id_penjualan_arsip_dokumen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `penjualan_item`
--
ALTER TABLE `penjualan_item`
  MODIFY `id_penjualan_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `IDRole` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `role_access_menu`
--
ALTER TABLE `role_access_menu`
  MODIFY `IDRoleAccessMenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4867;

--
-- AUTO_INCREMENT untuk tabel `sosmed`
--
ALTER TABLE `sosmed`
  MODIFY `id_sosmed` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_alat_ukur_losses`
--
ALTER TABLE `tb_alat_ukur_losses`
  MODIFY `id_alat_ukur_losses` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_armada_kapal`
--
ALTER TABLE `tb_armada_kapal`
  MODIFY `id_armada_kapal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_armada_truck`
--
ALTER TABLE `tb_armada_truck`
  MODIFY `id_armada_truck` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_customer`
--
ALTER TABLE `tb_customer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_customer_pic`
--
ALTER TABLE `tb_customer_pic`
  MODIFY `id_customer_pic` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_default_nilai`
--
ALTER TABLE `tb_default_nilai`
  MODIFY `id_default_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_divisi_organisasi`
--
ALTER TABLE `tb_divisi_organisasi`
  MODIFY `id_divisi_organisasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tb_fungsi_aplikasi`
--
ALTER TABLE `tb_fungsi_aplikasi`
  MODIFY `id_fungsi_aplikasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_jabatan`
--
ALTER TABLE `tb_jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tb_jenis_kelamin`
--
ALTER TABLE `tb_jenis_kelamin`
  MODIFY `id_jenis_kelamin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_kabkota`
--
ALTER TABLE `tb_kabkota`
  MODIFY `id_kabkota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9472;

--
-- AUTO_INCREMENT untuk tabel `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tb_kepemilikan_armada`
--
ALTER TABLE `tb_kepemilikan_armada`
  MODIFY `id_kepemilikan_armada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_master_item_pembelian`
--
ALTER TABLE `tb_master_item_pembelian`
  MODIFY `id_master_item_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_master_item_penjualan`
--
ALTER TABLE `tb_master_item_penjualan`
  MODIFY `id_master_item_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_mata_uang`
--
ALTER TABLE `tb_mata_uang`
  MODIFY `id_mata_uang` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_negara`
--
ALTER TABLE `tb_negara`
  MODIFY `id_negara` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_nomor_dokumen_transaksi`
--
ALTER TABLE `tb_nomor_dokumen_transaksi`
  MODIFY `id_nomor_dokumen_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `tb_pelabuhan_laut`
--
ALTER TABLE `tb_pelabuhan_laut`
  MODIFY `id_pelabuhan_laut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT untuk tabel `tb_perusahaan`
--
ALTER TABLE `tb_perusahaan`
  MODIFY `id_perusahaan` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_provinsi`
--
ALTER TABLE `tb_provinsi`
  MODIFY `id_provinsi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT untuk tabel `tb_satuan_master_item`
--
ALTER TABLE `tb_satuan_master_item`
  MODIFY `id_satuan_master_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_status_invoice`
--
ALTER TABLE `tb_status_invoice`
  MODIFY `id_status_invoice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_status_penawaran`
--
ALTER TABLE `tb_status_penawaran`
  MODIFY `id_status_penawaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_status_pengiriman`
--
ALTER TABLE `tb_status_pengiriman`
  MODIFY `id_status_pengiriman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_status_penjualan`
--
ALTER TABLE `tb_status_penjualan`
  MODIFY `id_status_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_supplier`
--
ALTER TABLE `tb_supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_supplier_pic`
--
ALTER TABLE `tb_supplier_pic`
  MODIFY `id_supplier_pic` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_termin_pembayaran`
--
ALTER TABLE `tb_termin_pembayaran`
  MODIFY `id_termin_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id_testimonial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `IDUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
