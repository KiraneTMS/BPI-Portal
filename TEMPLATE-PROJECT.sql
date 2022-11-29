-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2022 at 12:38 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crypto-trade`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id_address` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `address` varchar(128) NOT NULL,
  `private_key` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id_address`, `id_user`, `name`, `address`, `private_key`) VALUES
(1, 1, 'Sell Wallet', '0x4BF14Cd81Ef32F08bd42cb4D249d7dfeC2A134e4', 'f2dc949c51090c049e2e49d75d27fe417faa33a03366f94516a70f106279b4c2'),
(2, 2, 'Presale', '0x4BF14Cd81Ef32F08bd42cb4D249d7dfeC2A134e4', 'f2dc949c51090c049e2e49d75d27fe417faa33a03366f94516a70f106279b4c2'),
(3, 10, 'My Wallet Key', '0x4BF14Cd81Ef32F08bd42cb4D249d7dfeC2A134e2', 'f2dc949c51090c049e2e49d75d27fe417faa33a03366f94516a70f106279b454'),
(4, 11, 'bintang', '0x5BF14Cd81Ef32F08bd42cb4D249d7dfeC2A134e4', 'f2dc949c51090c049e2e49d75d27fe417faa33a03366f94516a70f106279b454');

-- --------------------------------------------------------

--
-- Table structure for table `akses_menu`
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
-- Table structure for table `config_order`
--

CREATE TABLE `config_order` (
  `id_config_order` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_wallet` int(11) NOT NULL,
  `state` int(1) NOT NULL COMMENT '1=buy, 2=sell',
  `reserve_read` int(1) NOT NULL,
  `token_address` varchar(128) NOT NULL,
  `trigger_value` float NOT NULL,
  `reward_low` float NOT NULL,
  `reward_high` float NOT NULL,
  `gas_price` int(10) NOT NULL,
  `gas_limit` int(32) NOT NULL,
  `slipage` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `config_order`
--

INSERT INTO `config_order` (`id_config_order`, `id_user`, `id_wallet`, `state`, `reserve_read`, `token_address`, `trigger_value`, `reward_low`, `reward_high`, `gas_price`, `gas_limit`, `slipage`) VALUES
(2, 2, 2, 0, 0, '0x4BF14Cd81Ef32F08bd42cb4D249d7dfeC2A134e4', 0.005, 6000, 10000, 9, 500000, 30);

-- --------------------------------------------------------

--
-- Table structure for table `devsetting`
--

CREATE TABLE `devsetting` (
  `id` int(11) NOT NULL,
  `devkey` varchar(256) NOT NULL,
  `devvalue` varchar(256) NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `devsetting`
--

INSERT INTO `devsetting` (`id`, `devkey`, `devvalue`, `ket`) VALUES
(3, 'TITLE', 'UAS Web', 'title web'),
(4, 'COLOR_WEB', '#242424', 'biru = #2879c1,hijau = #1fa12e');

-- --------------------------------------------------------

--
-- Table structure for table `master_barang`
--

CREATE TABLE `master_barang` (
  `BarangID` int(11) NOT NULL,
  `NamaBarang` varchar(255) NOT NULL,
  `SatuanBarang` int(11) NOT NULL,
  `StokBarang` int(11) DEFAULT 0,
  `KategoriBarang` varchar(20) DEFAULT '0',
  `StatusBarang` varchar(20) DEFAULT '1',
  `IsAktifBarang` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_barang`
--

INSERT INTO `master_barang` (`BarangID`, `NamaBarang`, `SatuanBarang`, `StokBarang`, `KategoriBarang`, `StatusBarang`, `IsAktifBarang`) VALUES
(161, 'Kohe Ayam Batre', 4, 0, '0', '1', 1),
(162, 'Kohe Sapi', 4, 0, '0', '1', 1),
(163, 'Kapur', 4, 0, '0', '1', 1),
(164, 'Aktivator', 8, 0, '0', '1', 1),
(165, 'Log Jamur', 4, 0, '0', '1', 1),
(166, 'Sampah Pasar', 4, 0, '0', '1', 1),
(167, 'Pupuk Kompos', 4, 0, '0', '1', 1),
(168, 'Bokasi', 4, 0, '0', '1', 1),
(169, 'Tepung Udang', 4, 0, '0', '1', 1),
(170, 'Dedak', 4, 0, '0', '1', 1),
(171, 'Air', 8, 0, '0', '1', 1),
(172, 'Bahan Kompos Kering', 4, 0, '0', '1', 1),
(173, 'Molase', 4, 0, '0', '1', 1),
(174, 'Limbah Panen', 4, 0, '0', '1', 1),
(175, 'Hijauan', 4, 0, '0', '1', 1),
(176, 'Cabe Rawit', 4, 0, '0', '1', 1),
(177, 'Tembakau', 4, 0, '0', '1', 1),
(178, 'Daun Sirih', 4, 0, '0', '1', 1),
(179, 'Jahe', 4, 0, '0', '1', 1),
(180, 'Bawang Putih', 4, 0, '0', '1', 1),
(181, 'Umbi Gadung', 4, 0, '0', '1', 1),
(182, 'Sampah Sayur', 4, 0, '0', '1', 1),
(183, 'Bonggol Pisang', 4, 0, '0', '1', 1),
(184, 'Rebung Bambu', 4, 0, '0', '1', 1),
(185, 'POC', 8, 0, '0', '1', 1),
(186, 'Ramor', 8, 0, '0', '1', 1),
(187, 'Pesor', 8, 0, '0', '1', 1),
(188, 'Kohe Domba', 4, 0, '0', '1', 1),
(189, 'Asam Humit', 4, 0, '0', '1', 1),
(190, 'Bubur Bordeaux', 8, 0, '0', '1', 1),
(191, 'Urine Sapi', 8, 0, '0', '1', 1),
(192, 'Air Lindi', 8, 0, '0', '1', 1),
(193, 'Air Kelapa', 8, 0, '0', '1', 1),
(194, 'Buah Buahan', 4, 0, '0', '1', 1),
(195, 'Kohe Ayam Postal', 4, 0, '0', '1', 1),
(196, 'Pesor Gadung', 8, 0, '0', '1', 1),
(197, 'Kapur Pertanian', 4, 0, '0', '1', 1),
(198, 'Daun Sirsak', 4, 0, '0', '1', 1),
(199, 'Daun Suren', 4, 0, '0', '1', 1),
(200, 'Daun Arpuse', 4, 0, '0', '1', 1),
(201, 'Sereh', 4, 0, '0', '1', 1),
(202, 'Terusi', 4, 0, '0', '1', 1),
(203, 'Kapur Tohor', 4, 0, '0', '1', 1),
(204, 'Belerang', 4, 0, '0', '1', 1),
(205, 'Air Mendidih', 8, 0, '0', '1', 1),
(206, 'MOL Buah', 8, 0, '0', '1', 1),
(207, 'MOL', 8, 0, '0', '1', 1),
(208, 'Bubur Kalifornia', 8, 0, '0', '1', 1),
(209, 'Daun Kacang Babi', 4, 0, '0', '1', 1),
(210, 'Daun Sirsak', 4, 0, '0', '1', 1),
(211, 'Ampas Sayur', 4, 0, '0', '1', 1),
(212, 'Arang Sekam', 9, 0, '0', '1', 1),
(217, 'KACANG PANJANG ORGANIC', 4, 0, '0', '1', 1),
(218, 'DILL ORGANIC PAK', 5, 0, '195', '1', 1),
(219, 'ROSEMARY ORGANIC PACK', 5, 0, '0', '1', 1),
(220, 'PAKCHOY ORGANIK PACK', 5, 0, '0', '1', 1),
(221, 'PARSLEY ORGANIC PACK', 5, 0, '264', '1', 1),
(222, 'KALE ORGANIC', 4, 0, '0', '1', 1),
(223, 'LOBAK MERAH ORGANIC', 4, 0, '89', '1', 1),
(224, 'LEEK ORGANIC', 4, 0, '85', '1', 1),
(225, 'GOLDEN BEET ORGANIC', 4, 0, '177', '1', 1),
(226, 'BUNCIS ORGANIC', 4, 0, '0', '1', 1),
(227, 'KANGKUNG BABY ORGANIC PACK', 5, 0, '260', '1', 1),
(228, 'BAYAM HIJAU BABY ORGANIK PACK', 5, 0, '0', '1', 1),
(229, 'DAUN BAWANG ORGANIC PACK', 5, 0, '0', '1', 1),
(230, 'BAYAM MERAH BABY ORGANIC PACK', 5, 0, '0', '1', 1),
(231, 'BROCOLI ORGANIC LOKAL', 4, 0, '20', '1', 1),
(232, 'SAWI PUTIH ORGANIC', 4, 0, '113', '1', 1),
(233, 'PAKCHOY BABY ORGANIC ', 4, 0, '99', '1', 1),
(234, 'DAUN BASIL ORGANIK PAK', 5, 0, '0', '1', 1),
(235, 'HORINSO ORGANIC PACK', 5, 0, '13', '1', 1),
(236, 'SWISS CHARD ORGANIC', 4, 0, '215', '1', 1),
(237, 'KEMBANG KOL ORGANIC', 4, 0, '23', '1', 1),
(238, 'CARROT / ORGANIC', 4, 0, '0', '1', 1),
(239, 'ASIAN CUCUMBER / ORGANIC', 4, 0, '0', '1', 1),
(240, 'RED BEET / ORGANIC', 4, 0, '178', '1', 1),
(241, 'NERO KALE / ORGANIC', 4, 0, '63', '1', 1),
(242, 'ARAGULA REGULER ORGANIK', 4, 0, '2', '1', 1),
(243, 'ARAGULA SILVETTA ORGANIK', 4, 0, '3', '1', 1),
(244, 'DAUN BASIL ORGANIK', 4, 0, '0', '1', 1),
(245, 'BAYAM BATIK ORGANIK', 4, 0, '10', '1', 1),
(246, 'BAYAM HIJAU ORGANIK', 4, 0, '12', '1', 1),
(247, 'BAYAM MERAH ORGANIK', 4, 0, '15', '1', 1),
(248, 'BAYAM SHARF LEAF', 4, 0, '16', '1', 1),
(249, 'BROKOLI ORGANIK', 4, 0, '20', '1', 1),
(250, 'BULB FENNEL ORGANIK', 4, 0, '179', '1', 1),
(251, 'BUNCIS ORGANIK', 4, 0, '0', '1', 1),
(252, 'BUNCIS BABY ORGANIK', 4, 0, '0', '1', 1),
(253, 'CABE HIJAU BESAR ORGANIK', 4, 0, '26', '1', 1),
(254, 'CABE HIJAU KERITING ORGANIK', 4, 0, '27', '1', 1),
(255, 'CABE MERAH KERITING ORGANIK', 4, 0, '28', '1', 1),
(256, 'CABE RAWIT MERAH ORGANIK', 4, 0, '0', '1', 1),
(257, 'CHAISIM ORGANIK', 4, 0, '32', '1', 1),
(258, 'CHAISIM BABY ORGANIK', 4, 0, '0', '1', 1),
(259, 'SELEDRI ORGANIK', 4, 0, '130', '1', 1),
(260, 'CILANTRO ORGANIK', 4, 0, '0', '1', 1),
(261, 'DAUN BAWANG ORGANIK', 4, 0, '0', '1', 1),
(262, 'DAUN DILL ORGANIK', 4, 0, '0', '1', 1),
(263, 'ENDIVE ORGANIK', 4, 0, '46', '1', 1),
(264, 'GOLDEN BEET ORGANIK', 4, 0, '177', '1', 1),
(265, 'HORENSO ORGANIK', 4, 0, '13', '1', 1),
(266, 'JABUNG / SAWI PAHIT ORGANIK', 4, 0, '112', '1', 1),
(267, 'JAGUNG MANIS KULIT', 4, 0, '49', '1', 1),
(268, 'JERUK LEMON ORGANIK', 4, 0, '166', '1', 1),
(269, 'KACANG PANJANG ORGANIK', 4, 0, '0', '1', 1),
(270, 'KAPRI MANIS ORGANIK', 4, 0, '0', '1', 1),
(271, 'KAILAN ORGANIK', 4, 0, '60', '1', 1),
(272, 'KALE CURLY ORGANIK', 4, 0, '0', '1', 1),
(273, 'KALE NERO ORGANIK', 4, 0, '63', '1', 1),
(274, 'KALE RED RUSSIAN ORGANIK', 4, 0, '64', '1', 1),
(275, 'KANGKUNG ORGANIK', 4, 0, '67', '1', 1),
(276, 'KECOMBRANG ORGANIK', 4, 0, '71', '1', 1),
(277, 'KEMBANG KOL ORGANIK', 4, 0, '23', '1', 1),
(278, 'KOL PUTIH ORGANIK', 4, 0, '77', '1', 1),
(279, 'KUCAI / CHIVES ORGANIK', 4, 0, '8', '1', 1),
(280, 'KUNYIT ORGANIK', 4, 0, '199', '1', 1),
(281, 'LABU SIAM ORGANIK', 4, 0, '82', '1', 1),
(282, 'LABU SIAM BABY ORGANIK', 4, 0, '83', '1', 1),
(283, 'LEEK ORGANIK', 4, 0, '85', '1', 1),
(284, 'GREEN BUTTER HEAD ORGANIK', 4, 0, '115', '1', 1),
(285, 'GREEN RAPID ORGANIK', 4, 0, '116', '1', 1),
(286, 'GREEN ROMAINE ORGANIK', 4, 0, '118', '1', 1),
(287, 'ICE BERG ORGANIK', 4, 0, '213', '1', 1),
(288, 'RED BUTTER HEAD ORGANIK', 4, 0, '123', '1', 1),
(289, 'RED RAPID ORGANIK', 4, 0, '125', '1', 1),
(290, 'RED ROMAINE ORGANIK', 4, 0, '126', '1', 1),
(291, 'LEUNCA ORGANIK', 4, 0, '86', '1', 1),
(292, 'LOBAK MERAH ORGANIK', 4, 0, '89', '1', 1),
(293, 'LOBAK PUTIH ORGANIK', 4, 0, '0', '1', 1),
(294, 'LOLLOROSA ORGANIK', 4, 0, '122', '1', 1),
(295, 'DAUN MINT ORGANIK', 4, 0, '194', '1', 1),
(296, 'NAI BAY ORGANIK', 4, 0, '94', '1', 1),
(297, 'PAKCHOY HIJAU ORGANIK', 4, 0, '98', '1', 1),
(298, 'PAKCHOY HIJAU BABY ORGANIK', 4, 0, '0', '1', 1),
(299, 'PAGODA TATSOI ORGANIK', 4, 0, '97', '1', 1),
(300, 'PAKCHOY PUTIH ORGANIK', 4, 0, '100', '1', 1),
(301, 'PARE ORGANIK', 4, 0, '104', '1', 1),
(302, 'PARSLEY GIANT ORGANIK', 4, 0, '107', '1', 1),
(303, 'PARSLEY KERITING ORGANIK', 4, 0, '106', '1', 1),
(304, 'RED BEET ORGANIK', 4, 0, '178', '1', 1),
(305, 'ROSEMARY ORGANIK', 4, 0, '0', '1', 1),
(306, 'SAWI KERITING ORGANIK', 4, 0, '0', '1', 1),
(307, 'SAWI PUTIH ORGANIK', 4, 0, '113', '1', 1),
(308, 'SEREH ORGANIK', 4, 0, '134', '1', 1),
(309, 'SINGKONG ORGANIK', 4, 0, '182', '1', 1),
(310, 'SIOMAK ORGANIK', 4, 0, '129', '1', 1),
(311, 'SWISS CHARD ORGANIK', 4, 0, '0', '1', 1),
(312, 'TANG OH ORGANIK', 4, 0, '0', '1', 1),
(313, 'TERONG BULAT ORGANIK', 4, 0, '0', '1', 1),
(314, 'TERONG PANJANG ORGANIK', 4, 0, '0', '1', 1),
(315, 'THYME ORGANIK', 4, 0, '0', '1', 1),
(316, 'TIMUN LOKAL ORGANIK', 4, 0, '0', '1', 1),
(317, 'TIMUN KYURI ORGANIK', 4, 0, '0', '1', 1),
(318, 'TOMAT BEEF ORGANIK', 4, 0, '0', '1', 1),
(319, 'TOMAT CHERRY ORGANIK', 4, 0, '0', '1', 1),
(320, 'TOMAT LOKAL ORGANIK', 4, 0, '0', '1', 1),
(321, 'WORTEL ORGANIK', 4, 0, '0', '1', 1),
(322, 'WORTEL BABY ORGANIK', 4, 0, '0', '1', 1),
(323, 'ZUCCHINI ORGANIK', 4, 0, '0', '1', 1),
(324, 'NANGKA MUDA ORGANIK', 4, 0, '243', '1', 1),
(325, 'JAGUNG BABY ORGANIK', 4, 0, '0', '1', 1),
(326, 'BUNCIS ORGANIC /RM ', 4, 0, '0', '1', 1),
(327, 'HORENZO ORGANIC ', 4, 0, '13', '1', 1),
(328, 'BROKOLI ORGANIK PACK', 5, 0, '20', '1', 1),
(329, 'SELDA HIJAU ORGANIC PACK', 5, 0, '0', '1', 1),
(330, 'WORTEL BABY ORGANIC PACK', 5, 0, '0', '1', 1),
(331, 'WORTEL ORGANIC PACK', 5, 0, '0', '1', 1),
(332, 'BAYAM HIJAU ORGANIC', 4, 0, '12', '1', 1),
(333, 'BAYAM BATIK ORGANIC ', 4, 0, '10', '1', 1),
(334, 'BAYAM MERAH ORGANIC', 4, 0, '15', '1', 1),
(335, 'BUNCIS ORGANIC', 4, 0, '0', '1', 1),
(336, 'PAKCOY HIJAU ORGANIC', 4, 0, '98', '1', 1),
(337, 'KANGKUNG ORGANIC ', 4, 0, '67', '1', 1),
(338, 'KAILAN ORGANIC', 4, 0, '60', '1', 1),
(339, 'SIOMAK ORGANIC', 4, 0, '129', '1', 1),
(340, 'SELADA ROMAINE ORGANIC', 4, 0, '0', '1', 1),
(341, 'SELADA KERITING ORGANIC', 4, 0, '0', '1', 1),
(342, 'KALE NERO ORGANIC', 4, 0, '63', '1', 1),
(343, 'WORTEL ORGANIC', 4, 0, '0', '1', 1),
(344, 'HORENSO ORGANIC', 4, 0, '13', '1', 1),
(345, 'DAUN BAWANG ORGANIC', 4, 0, '0', '1', 1),
(346, 'LOBAK ORGANIC', 4, 0, '0', '1', 1),
(347, 'KACANG PANJANG ORGANIC', 4, 0, '0', '1', 1),
(348, 'BROKOLI ORGANIC', 4, 0, '20', '1', 1),
(349, 'DAUN PUCUK LABU ORGANIC', 4, 0, '0', '1', 1),
(350, 'BUNCIS LOKAL ORGANIC/ PACK', 5, 0, '0', '1', 1),
(351, 'KALE CURLY ORGANIC / PACK', 5, 0, '0', '1', 1),
(352, 'PAKCHOY HIJAU ORGANIC / PACK', 5, 0, '98', '1', 1),
(353, 'TOMAT TW ORGANIC / PACK', 5, 0, '0', '1', 1),
(354, 'TIMUN ORGANIC/ PACK ', 5, 0, '0', '1', 1),
(355, 'ROSEMARY ORGANIC / PACK', 5, 0, '0', '1', 1),
(356, 'SAGE ORGANIC/ PACK ', 5, 0, '204', '1', 1),
(357, 'KECOMBRANG ORGANIC/ PACK', 1, 0, '71', '1', 1),
(358, 'MINT ORGANIC / PACK', 5, 0, '0', '1', 1),
(359, 'SALAD MIX ORGANIK / PACK', 5, 0, '0', '1', 1),
(360, 'SELADA HIJAU ORGANIK / PACK', 5, 0, '0', '1', 1),
(361, 'SELADA MERAH ORGANIK / PACK', 5, 0, '0', '1', 1),
(362, 'CAISIM ORGANIK', 4, 0, '32', '1', 1),
(363, 'KAILAN BABY ORGANIC ', 4, 0, '0', '1', 1),
(364, 'BAYAM HIJAU ORGANIC PACK', 5, 0, '12', '1', 1),
(365, 'NAI BAY ORGANIK / PACK', 5, 0, '94', '1', 1),
(366, 'PAKCHOY PUTIH ORGANIK / PACK', 5, 0, '100', '1', 1),
(367, 'RED ROMAINE ORGANIK / PACK', 5, 0, '214', '1', 1),
(368, 'SWISS CHARD ORGANIK / PACK', 5, 0, '0', '1', 1),
(369, 'KALE CURLY ORGANIC', 4, 0, '62', '1', 1),
(370, 'KEMBANG KOL ORGANIK', 4, 0, '23', '1', 1),
(371, 'BAYAM HIJAU ORGANIK', 4, 0, '12', '1', 1),
(372, 'BAYAM BATIK ORGANIK ', 4, 0, '10', '1', 1),
(373, 'BROKOLI ORGANIK', 4, 0, '20', '1', 1),
(374, 'CAISIM ORGANIK', 4, 0, '32', '1', 1),
(375, 'DAUN BAWANG ORGANIK', 4, 0, '0', '1', 1),
(376, 'DAUN PEPAYA ORGANIK', 4, 0, '38', '1', 1),
(377, 'EDAMAME ORGANIK', 4, 0, '45', '1', 1),
(378, 'JAGUNG MANIS ORGANIK', 4, 0, '49', '1', 1),
(379, 'KALE CURLY ORGANIC', 4, 0, '62', '1', 1),
(380, 'KALE NERO ORGANIK', 4, 0, '63', '1', 1),
(381, 'KANGKUNG ORGANIK', 4, 0, '67', '1', 1),
(382, 'PAKCHOY ORGANIK', 4, 0, '0', '1', 1),
(383, 'PEPAYA MUDA ORGANIK', 4, 0, '259', '1', 1),
(384, 'SAWI PAHIT ORGANIK', 4, 0, '112', '1', 1),
(385, 'SELADA ROAMINE ORGANIK', 4, 0, '0', '1', 1),
(386, 'SELEDRI ORGANIK', 4, 0, '130', '1', 1),
(387, 'WORTEL ORGANIK', 4, 0, '0', '1', 1),
(388, 'SIOMAK ORGANIK', 4, 0, '129', '1', 1),
(389, 'KAPRI MUDA ORGANIK', 4, 0, '68', '1', 1),
(390, 'BAYAM HIJAU ORGANIK', 4, 0, '12', '1', 1),
(391, 'BAYAM JEPANG ORGANIK', 4, 0, '13', '1', 1),
(392, 'BROKOLI ORGANIK', 4, 0, '20', '1', 1),
(393, 'BUNCIS ORGANIK', 4, 0, '0', '1', 1),
(394, 'CAISIM ORGANIK', 4, 0, '32', '1', 1),
(395, 'DAUN BAWANG ORGANIK', 4, 0, '0', '1', 1),
(396, 'LEMON LOKAL ORGANIK', 4, 0, '0', '1', 1),
(397, 'KACANG PANJANG ORGANIK', 4, 0, '0', '1', 1),
(398, 'KALE NERO ORGANIK', 4, 0, '63', '1', 1),
(399, 'KALE RED RUSSIAN ORGANIK', 4, 0, '64', '1', 1),
(400, 'KANGKUNG ORGANIK', 4, 0, '67', '1', 1),
(401, 'PAGODA ORGANIK', 4, 0, '97', '1', 1),
(402, 'PAKCHOY HIJAU ORGANIK', 4, 0, '98', '1', 1),
(403, 'SELADA HIJAU ROMAINE ORGANIK ', 4, 0, '118', '1', 1),
(404, 'WORTEL ORGANIK', 4, 0, '0', '1', 1),
(405, 'SEREH ORGANIK', 4, 0, '134', '1', 1),
(406, 'SELEDRI ORGANIK', 4, 0, '130', '1', 1),
(407, 'NAI BAY ORGANIK', 4, 0, '94', '1', 1),
(408, 'DAUN KETUMBAR ORGANIK', 4, 0, '37', '1', 1),
(409, 'TERONG UNGU ORGANIK ', 4, 0, '0', '1', 1),
(410, 'CABE RAWIT PUTIH ORGANIK ', 4, 0, '31', '1', 1),
(411, 'CABE RAWIT HIJAU ORGANIK ', 4, 0, '30', '1', 1),
(412, 'KACANG TANAH LURIK ORGANIK PACK', 5, 0, '59', '1', 1),
(413, 'KACANG TANAH LAURIK ORGANIK PACK', 5, 0, '59', '1', 1),
(414, 'ALPUKAT ORGANIK ', 4, 0, '162', '1', 1),
(415, 'BAYAM BATIK ORGANIK ', 4, 0, '10', '1', 1),
(416, 'BAYAM MERAH ORGANIK', 4, 0, '15', '1', 1),
(417, 'KAILAN ORGANIK ', 4, 0, '60', '1', 1),
(418, 'KAILAN ORGANIK ', 4, 0, '60', '1', 1),
(419, 'LOBAK ORGANIK ', 4, 0, '0', '1', 1),
(420, 'SELADA ICE BRAG ORGANIK ', 4, 0, '119', '1', 1),
(421, 'KUNYIT ORGANIK PACK', 5, 0, '199', '1', 1),
(422, 'JAGUNG ACAR ORGANIK', 4, 0, '48', '1', 1),
(423, 'PAGODA ORGANIK', 5, 0, '97', '1', 1),
(424, 'CAISIM ORGANIK', 4, 0, '32', '1', 1),
(425, 'KAPRI ORGANIK', 4, 0, '0', '1', 1),
(426, 'OYONG ORGANIK', 4, 0, '96', '1', 1),
(427, 'RED BEET ORGANIK', 4, 0, '178', '1', 1),
(428, 'BUNCIS ORGANIK', 4, 0, '0', '1', 1),
(429, 'RED BEET ORGANIK', 4, 0, '178', '1', 1),
(430, 'JAGUNG MANIS ORGANIK', 4, 0, '49', '1', 1),
(431, 'RED BEET ORGANIK', 4, 0, '178', '1', 1),
(432, 'KECIPIR ORGANIK', 4, 0, '70', '1', 1),
(433, 'NANGKA MUDA ORGANIK', 4, 0, '243', '1', 1),
(434, 'GREEN RAPID ORGANIK', 4, 0, '116', '1', 1),
(435, 'DAUN MINT ORGANIK ', 4, 0, '194', '1', 1),
(436, 'TIMUN LOKAL ORGANIK ', 4, 0, '148', '1', 1),
(437, 'GOLDEN BEET ORGANIK', 5, 0, '177', '1', 1),
(438, 'GOLDEN BEET ORGANIK', 5, 0, '177', '1', 1),
(439, 'KALE MIX ORGANIK / PACK', 5, 0, '271', '1', 1),
(440, 'KALE RED RUSSIAN ORGANIK / PACK', 5, 0, '64', '1', 1),
(441, 'Drum', 16, 0, '0', '1', 1),
(442, 'KAILAN ORGANIK 200GR/ PACK', 5, 0, '60', '1', 1),
(443, 'PAGODA TATSOI ORGANIK / PACK', 5, 0, '97', '1', 1),
(444, 'DIL ORGANIK / PACK', 5, 0, '195', '1', 1),
(445, 'KECIPIR ORGANIK', 4, 0, '70', '1', 1),
(446, 'EDAMAME ORGANIK', 4, 0, '45', '1', 1),
(447, 'HORENSO ORGANIC', 4, 0, '13', '1', 1),
(448, 'SELADA GREEN RAPID', 4, 0, '116', '1', 1),
(449, 'SELADA MERAH ROMAINE ORGANIK', 4, 0, '126', '1', 1),
(450, 'HORENSO ORGANIC', 4, 0, '13', '1', 1),
(451, 'BAYAM MERAH ORGANIK', 4, 0, '15', '1', 1),
(452, 'ZUKINI ORGANIK', 4, 0, '0', '1', 1),
(453, 'TERONG NASUBI ORGANIK', 4, 0, '0', '1', 1),
(454, 'PUCUK LABU ORGANIK ', 4, 0, '40', '1', 1),
(455, 'DAUN GINSENG ORGANIK', 4, 0, '36', '1', 1),
(456, 'KAILAN ORGANIK ', 4, 0, '60', '1', 1),
(457, 'KEMBANG KOL ORGANIK', 4, 0, '23', '1', 1),
(458, 'OYONG ORGANIK', 4, 0, '96', '1', 1),
(459, 'TOMAT CHERY ORGANIK ', 4, 0, '0', '1', 1),
(460, 'JAGUNG MUDA ORGANIK', 4, 0, '0', '1', 1),
(461, 'SAWI PUTIH ORGANIK', 4, 0, '113', '1', 1),
(462, 'SELADA KERITING ORGANIK', 4, 0, '0', '1', 1),
(463, 'RED BEET ORGANIK', 5, 0, '178', '1', 1),
(464, 'SAWI PUTIH ORGANIK', 4, 0, '113', '1', 1),
(465, 'KOL PUTIH ORGANIK', 4, 0, '77', '1', 1),
(466, 'BUTTER HEAD ORGANIK', 4, 0, '0', '1', 1),
(467, 'DAUN PUCUK LABU ORGANIC', 4, 0, '40', '1', 1),
(468, 'LABU SIAM ORGANIK', 4, 0, '82', '1', 1),
(471, 'SAWI PAHIT ORGANIK', 4, 0, '0', '1', 1),
(472, 'DAUN SINGKONG ORGANIK ', 4, 0, '0', '1', 1),
(473, 'BUTTER HEAD ORGANIK', 4, 0, '119', '1', 1),
(474, 'KOL PUTIH ORGANIK', 4, 0, '0', '1', 1),
(475, 'DAUN SINGKONG ORGANIK ', 4, 0, '0', '1', 1),
(476, 'DAUN UBI JALAR ORGANIK', 4, 0, '0', '1', 1),
(477, 'TIMUN LOKAL ORGANIK ', 4, 0, '0', '1', 1),
(478, 'SEREH ORGANIK', 4, 0, '0', '1', 1),
(479, 'KOL PUTIH ORGANIK', 4, 0, '0', '1', 1),
(480, 'KACANG MERAH ORGANIK', 4, 0, '0', '1', 1),
(481, 'KOL PUTIH ORGANIK', 4, 0, '0', '1', 1),
(482, 'WORTEL LOKAL ORGANIK', 4, 0, '0', '1', 1),
(483, 'WORTEL BABY ORGANIK', 4, 0, '0', '1', 1),
(484, 'PAKCHOY HIJAU BABY ORGANIK', 4, 0, '98', '1', 1),
(485, 'BAYAM BATIK ORGANIK', 4, 0, '0', '1', 1),
(486, 'BAYAM HIJAU ORGANIK', 4, 0, '0', '1', 1),
(487, 'REED BEET ORGANIK', 4, 0, '0', '1', 1),
(488, 'BROKOLI ORGANIK', 4, 0, '0', '1', 1),
(489, 'GREEN BUTTER HEAD ORGANIK', 4, 0, '0', '1', 1),
(490, 'CAISIM ORGANIK', 4, 0, '0', '1', 1),
(491, 'DAUN CILANTRO ORGANIK', 4, 0, '0', '1', 1),
(492, 'DAUN PUCUK LABU ORGANIC', 4, 0, '0', '1', 1),
(493, 'DAUN SINGKONG ORGANIK ', 4, 0, '0', '1', 1),
(494, 'ENDIVE LETTUCE ORGANIK', 4, 0, '0', '1', 1),
(495, 'HORENSO ORGANIC', 4, 0, '0', '1', 1),
(496, 'JAGUNG ACAR ORGANIK', 4, 0, '0', '1', 1),
(497, 'JAGUNG MANIS ORGANIK', 4, 0, '0', '1', 1),
(498, 'JERUK LEMON ORGANIK', 4, 0, '0', '1', 1),
(499, 'KAILAN ORGANIK ', 4, 0, '0', '1', 1),
(500, 'KALE NERO ORGANIK', 4, 0, '0', '1', 1),
(501, 'KANGKUNG ORGANIK', 4, 0, '0', '1', 1),
(502, 'KECIPIR ORGANIK', 4, 0, '0', '1', 1),
(503, 'KEMBANG KOL ORGANIK', 4, 0, '0', '1', 1),
(504, 'KOL PUTIH ORGANIK', 4, 0, '0', '1', 1),
(505, 'LOBAK PUTIH ORGANIK', 4, 0, '0', '1', 1),
(506, 'NAI BAY ORGANIK', 4, 0, '0', '1', 1),
(507, 'PAGODA ORGANIK', 4, 0, '0', '1', 1),
(508, 'PAKCHOY HIJAU ORGANIK', 4, 0, '0', '1', 1),
(509, 'PAKCHOY PUTIH ORGANIK', 4, 0, '0', '1', 1),
(510, 'SAWI FUNJEN ORGANIK', 4, 0, '0', '1', 1),
(511, 'SAWI PUTIH ORGANIK', 4, 0, '0', '1', 1),
(512, 'GREEN ROMAINE ORGANIK', 4, 0, '0', '1', 1),
(513, 'GREEN RAPID ORGANIK', 4, 0, '0', '1', 1),
(514, 'SELEDRI ORGANIK', 4, 0, '0', '1', 1),
(515, 'TIMUN LOKAL ORGANIK ', 4, 0, '0', '1', 1),
(516, 'DAUN BAWANG ORGANIK', 4, 0, '0', '1', 1),
(517, 'BUNCIS ORGANIK', 4, 0, '0', '1', 1),
(518, 'OYONG ORGANIK', 4, 0, '0', '1', 1),
(519, 'KACANG MERAH ORGANIK', 4, 0, '0', '1', 1),
(520, 'PARSLEY ORGANIK', 4, 0, '0', '1', 1),
(521, 'TIMUN LOKAL ORGANIK', 4, 0, '0', '1', 1),
(522, 'KALE NERO ORGANIK 200GR/PACK', 5, 0, '0', '1', 1),
(523, 'KACANG MERAH ORGANIK', 4, 0, '56', '1', 1),
(524, 'LOBAK PUTIH ORGANIK', 4, 0, '0', '1', 1),
(525, 'PAKCHOY HIJAU ORGANIK PACK', 5, 0, '0', '1', 1),
(526, 'WORTEL ORGANIK PACK', 5, 0, '0', '1', 1),
(527, 'CAISIM ORGANIK PACK', 5, 0, '0', '1', 1),
(528, 'KALE NERO ORGANIK PACK', 5, 0, '0', '1', 1),
(529, 'PAKCHOY HIJAU ORGANIK PACK', 5, 0, '0', '1', 1),
(530, 'WORTEL ORGANIK PACK', 5, 0, '159', '1', 1),
(531, 'BAYAM HIJAU ORGANIK PACK', 5, 0, '0', '1', 1),
(532, 'CAISIM ORGANIK PACK', 5, 0, '0', '1', 1),
(533, 'HORENSO ORGANIK PACK', 5, 0, '0', '1', 1),
(534, 'KAILAN ORGANIK PACK', 5, 0, '0', '1', 1),
(535, 'PAKCHOY HIJAU BABY ORGANIK PACK', 5, 0, '0', '1', 1),
(536, 'PAKCHOY PUTIH BABY ORGANIK PACK', 5, 0, '0', '1', 1),
(537, 'GREEN ROMAINE ORGANIK PACK', 5, 0, '0', '1', 1),
(538, 'KALE CURLY ORGANIK PACK', 5, 0, '0', '1', 1),
(539, 'KANGKUNG ORGANIK PACK', 5, 0, '0', '1', 1),
(540, 'BAYAM MERAH ORGANIK PACK', 5, 0, '0', '1', 1),
(541, 'CAISIM BABY ORGANIK PACK', 5, 0, '0', '1', 1),
(542, 'PAKCHOY HIJAU ORGANIK PACK', 5, 0, '0', '1', 1),
(543, 'WORTEL ORGANIK PACK', 5, 0, '0', '1', 1),
(544, 'KACANG MERAH ORGANIK', 4, 0, '0', '1', 1),
(545, 'SELADA ICE BRAG ORGANIK', 4, 0, '0', '1', 1),
(546, 'BUNCIS BABY ORGANIK ', 4, 0, '0', '1', 1),
(547, 'KEMBANG KOL ORGANIK', 4, 0, '0', '1', 1),
(548, 'SAWI PUTIH ORGANIK ', 4, 0, '0', '1', 1),
(549, 'BAYAM BATIK ORGANIK PACK', 5, 0, '0', '1', 1),
(550, 'DAUN BAWANG ORGANIK PACK', 5, 0, '0', '1', 1),
(551, 'LOLOROSA ORGANIK PACK', 5, 0, '0', '1', 1),
(552, 'CELERY ORGANIK PACK', 5, 0, '0', '1', 1),
(553, 'BAYAM MERAH BABY ORGANIK PACK', 5, 0, '0', '1', 1),
(554, 'PAKCHOY PUTIH ORGANIK PACK', 5, 0, '0', '1', 1),
(555, 'KECIPIR ORGANIK ', 4, 0, '0', '1', 1),
(556, 'KALE NERO ORGANIK PACK', 5, 0, '0', '1', 1),
(557, 'ARAGULA SILVETTA ORGANIK ', 5, 0, '0', '1', 1),
(560, 'Aragula Sylvetta', 1000, 20, '1000', '1', 1),
(561, 'Baby pakcoy hijau', 1000, 1, '1000', '1', 1),
(562, 'Baby pakcoy hijau', 1000, 1, '1000', '1', 1),
(563, 'Baby pakcoy hijau', 1000, 10, '1000', '1', 1),
(564, 'Baby pakcoy hijau', 1000, 1, '1000', '1', 1),
(565, 'Baby pakcoy hijau', 1000, 1, '1000', '1', 1),
(566, 'Aragula Sylvetta', 1000, 20, '1000', '1', 0),
(567, 'Baby pakcoy hijau', 1000, 10, '1000', '1', 1),
(568, 'Baby bayam merah', 1000, 30, '1000', '1', 1),
(569, 'Pakcoy Hijau', 1000, 6, '1000', '1', 1),
(570, 'Horenso', 1000, 26, '1000', '1', 1),
(571, 'Bayam Hijau', 1000, 5, '1000', '1', 1),
(572, 'Bayam Hijau', 1000, 15, '1000', '1', 1),
(573, 'Bayam Hijau', 1000, 19, '1000', '1', 1),
(574, 'Kangkung', 1000, 59, '1000', '1', 1),
(575, 'Kangkung', 1000, 14, '1000', '1', 1),
(576, 'Bit Merah', 1000, 3, '1000', '1', 1),
(577, 'Kale Curly', 1000, 3, '1000', '1', 1),
(578, 'Bayam merah', 1000, 3, '1000', '1', 1),
(579, 'Kangkung', 1000, 23, '1000', '1', 1),
(580, 'Kangkung', 1000, 10, '1000', '1', 1),
(581, 'Brokoli', 1000, 2, '1000', '1', 1),
(582, 'Brokoli', 1000, 1, '1000', '1', 1),
(583, 'Brokoli', 1000, 20, '1000', '1', 1),
(584, 'Bunga Kol', 1000, 18, '1000', '1', 1),
(585, 'Kangkung', 1000, 1, '1000', '1', 1),
(586, 'Bunga Kol', 1000, 1, '1000', '1', 1),
(587, 'Horenso', 1000, 6, '1000', '1', 1),
(588, 'Pakcoy Hijau', 1000, 19, '1000', '1', 1),
(589, 'Pakcoy Hijau', 1000, 62, '1000', '1', 1),
(590, 'Bayam merah', 1000, 35, '1000', '1', 1),
(591, 'Bayam Hijau', 1000, 21, '1000', '1', 1),
(592, 'Pakcoy Hijau', 1000, 59, '1000', '1', 1),
(593, 'Kangkung', 1000, 6, '1000', '1', 1),
(594, 'Kangkung', 1000, 1, '1000', '1', 1),
(595, 'Horenso', 1000, 21, '1000', '1', 1),
(596, 'Kale nero', 1000, 1, '1000', '1', 1),
(597, 'Brokoli', 1000, 4, '1000', '1', 1),
(598, 'Horenso', 1000, 51, '1000', '1', 1),
(599, 'Pakcoy Hijau', 1000, 30, '1000', '1', 1),
(600, 'Bayam Hijau', 1000, 12, '1000', '1', 1),
(601, 'Horenso', 1000, 153, '1000', '1', 1),
(602, 'Horenso', 1000, 5, '1000', '1', 1),
(603, 'Bit Merah', 1000, 7, '1000', '1', 1),
(604, 'Baby bayam hijau', 1000, 2, '1000', '1', 1),
(605, 'Pakcoy Hijau', 1000, 20, '1000', '1', 1),
(606, 'Horenso', 1000, 28, '1000', '1', 1),
(607, 'Bayam Hijau', 1000, 10, '1000', '1', 1),
(608, 'Horenso', 1000, 8, '1000', '1', 1),
(609, 'Bayam Hijau', 1000, 1, '1000', '1', 1),
(610, 'Pakcoy Hijau', 1000, 11, '1000', '1', 1),
(611, 'Kangkung', 1000, 9, '1000', '1', 1),
(612, 'Bunga Kol', 1000, 1, '1000', '1', 1),
(613, 'Pakcoy Hijau', 1000, 52, '1000', '1', 1),
(614, 'Baby pakcoy hijau', 1000, 29, '1000', '1', 1),
(615, 'Kangkung', 1000, 3, '1000', '1', 1),
(616, 'Pakcoy Hijau', 1000, 43, '1000', '1', 1),
(617, 'Bayam Hijau', 1000, 15, '1000', '1', 1),
(618, 'Kangkung', 1000, 3, '1000', '1', 1),
(619, 'Horenso', 1000, 40, '1000', '1', 1),
(620, 'Horenso', 1000, 28, '1000', '1', 1),
(621, 'Caisim', 1000, 21, '1000', '1', 1),
(622, 'Pakcoy Hijau', 1000, 2, '1000', '1', 1),
(623, 'Baby pakcoy hijau', 1000, 9, '1000', '1', 1),
(624, 'Baby bayam merah', 1000, 1, '1000', '1', 1),
(625, 'Kangkung', 1000, 8, '1000', '1', 1),
(626, 'Baby pakcoy hijau', 1000, 17, '1000', '1', 1),
(627, 'Bayam merah', 1000, 4, '1000', '1', 1),
(628, 'Baby bayam hijau', 1000, 5, '1000', '1', 1),
(629, 'Caisim', 1000, 12, '1000', '1', 1),
(630, 'Pakcoy Hijau', 1000, 47, '1000', '1', 1),
(631, 'Bayam merah', 1000, 4, '1000', '1', 1),
(632, 'Horenso', 1000, 16, '1000', '1', 1),
(633, 'Baby pakcoy hijau', 1000, 10, '1000', '1', 1),
(634, 'Horenso', 1000, 20, '1000', '1', 1),
(635, 'Baby bayam hijau', 1000, 1, '1000', '1', 1),
(636, 'Bayam Hijau', 1000, 1, '1000', '1', 1),
(637, 'Caisim', 1000, 7, '1000', '1', 1),
(638, 'Caisim', 1000, 1, '1000', '1', 1),
(639, 'Kangkung', 1000, 1, '1000', '1', 1),
(640, 'Baby pakcoy hijau', 1000, 18, '1000', '1', 1),
(641, 'Caisim', 1000, 1, '1000', '1', 1),
(642, 'Bayam Hijau', 1000, 1, '1000', '1', 1),
(643, 'Caisim', 1000, 61, '1000', '1', 1),
(644, 'Caisim', 1000, 50, '1000', '1', 1),
(645, 'Bit Merah', 1000, 50, '1000', '1', 1),
(646, 'Selada Keriting Hijau', 1000, 20, '1000', '1', 1),
(647, 'Pakcoy Hijau', 1000, 20, '1000', '1', 1),
(648, 'Bayam Hijau', 1000, 40, '1000', '1', 1),
(649, 'Bayam Hijau', 1000, 14, '1000', '1', 1),
(650, 'Bayam Hijau', 1000, 10, '1000', '1', 1),
(651, 'Selada Keriting Hijau', 1000, 110, '1000', '1', 1),
(652, 'Horenso', 1000, 160, '1000', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
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
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`IDMenu`, `namamenu`, `url_menu`, `icon_menu`, `is_head`, `level_menu`, `menu_head`, `sort`, `is_active`) VALUES
(1, 'Dashboard', 'dashboard', 'fas fa-fw fa-tachometer-alt', 0, 1, 0, 1, 1),
(39, 'Limit Order', '#', 'fas fa-sort-amount-up-alt', 1, 1, 0, 2, 1),
(4, 'Web Control', '#', 'fas fa-fw fa-cogs', 1, 1, 0, 5, 1),
(6, 'Menu', 'menu', 'fas fa-fw fa-folder-minus', 0, 2, 4, 3, 1),
(24, 'Role', 'role', 'fas fa-fw fa-users', 0, 2, 4, 2, 1),
(25, 'Users', 'user', 'fas fa-fw fa-user', 0, 2, 4, 1, 1),
(30, 'Dev Setting', 'devsetting', 'fas fa-fw fa-cogs', 0, 2, 4, 4, 1),
(42, 'My Wallet', 'address', 'fas fa-fw fa-wallet', 0, 1, 0, 5, 1),
(43, 'Count Price', 'home/count', 'fas fa-fw fa-calculator', 0, 1, 0, 3, 1),
(44, 'Contract Snipper', 'snipper', 'fas fa-fw fa-bullseye', 0, 1, 0, 2, 0),
(41, 'Config', 'jsonconfig', 'fas fa-clipboard-check', 0, 2, 39, 2, 1),
(40, 'Worker', 'worker', 'fas fa-cogs', 0, 2, 39, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `IDRole` int(11) NOT NULL,
  `NamaRole` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`IDRole`, `NamaRole`) VALUES
(1, 'Superadmin'),
(10, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `role_access_menu`
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
-- Dumping data for table `role_access_menu`
--

INSERT INTO `role_access_menu` (`IDRoleAccessMenu`, `IDRole`, `IDMenu`, `is_read`, `is_create`, `is_update`, `is_delete`) VALUES
(389, 1, 1, 1, 1, 1, 1),
(390, 1, 39, 1, 0, 0, 0),
(391, 1, 41, 1, 1, 1, 1),
(392, 1, 40, 1, 1, 1, 1),
(393, 1, 44, 1, 1, 1, 1),
(394, 1, 43, 1, 1, 1, 1),
(395, 1, 4, 1, 0, 0, 0),
(396, 1, 25, 1, 1, 1, 1),
(397, 1, 24, 1, 1, 1, 1),
(398, 1, 6, 1, 1, 1, 1),
(399, 1, 30, 1, 1, 1, 1),
(400, 1, 42, 1, 1, 1, 1),
(401, 10, 1, 1, 1, 1, 1),
(402, 10, 39, 0, 0, 0, 0),
(403, 10, 41, 1, 1, 1, 1),
(404, 10, 40, 1, 1, 1, 1),
(405, 10, 44, 1, 1, 1, 1),
(406, 10, 43, 1, 1, 1, 1),
(407, 10, 4, 0, 0, 0, 0),
(408, 10, 25, 0, 0, 0, 0),
(409, 10, 24, 0, 0, 0, 0),
(410, 10, 6, 0, 0, 0, 0),
(411, 10, 30, 0, 0, 0, 0),
(412, 10, 42, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `swap_exact`
--

CREATE TABLE `swap_exact` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tx_hash` varchar(256) NOT NULL,
  `addr_from` varchar(256) NOT NULL,
  `addr_to` varchar(256) NOT NULL,
  `value_from` int(64) NOT NULL,
  `value_to` int(64) NOT NULL,
  `method` varchar(64) NOT NULL,
  `status` int(1) NOT NULL,
  `state` int(1) NOT NULL,
  `token` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `IDUser` int(11) NOT NULL,
  `Name` varchar(128) NOT NULL,
  `Email` varchar(256) NOT NULL,
  `Password` varchar(64) NOT NULL,
  `IDRole` int(11) NOT NULL,
  `IsAktifUser` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`IDUser`, `Name`, `Email`, `Password`, `IDRole`, `IsAktifUser`, `created_at`, `updated_at`) VALUES
(2, 'Muhammad Bintang Cahya Putra', 'muhammadbintangcahyaputra@gmail.com', '$2y$10$S5nlilM3d.4diXw4Dx70BesqgzP11RtdkHaQImYStO6uujIaEOAxC', 1, 1, '2022-01-11 00:59:07', NULL),
(9, 'strongpapazola strongpapazola', 'strongpapazola@gmail.com', '$2y$10$aTFBTns38r3VXj6bQN3m.OkaVSOgVcDGUtfz/Nrccxqg6P5nSOzYy', 10, 1, '2022-01-11 01:02:36', NULL),
(10, 'bintang', 'admin@gmail.com', '$2y$10$eCXneuzDcrkAMZnk2P4hvujs13NBbH2f/C.MMlDu1sDcYp3khtek.', 10, 1, '2022-01-15 13:24:14', NULL),
(11, 'bintang', 'bintang@gmail.com', '$2y$10$yjWeM3s0g6asPgTPhI2kX.03OynzFOY6X27D2kVXmN91A5uHcl5Re', 10, 1, '2022-01-15 22:20:41', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id_address`);

--
-- Indexes for table `akses_menu`
--
ALTER TABLE `akses_menu`
  ADD PRIMARY KEY (`IDAksesMenu`);

--
-- Indexes for table `config_order`
--
ALTER TABLE `config_order`
  ADD PRIMARY KEY (`id_config_order`);

--
-- Indexes for table `devsetting`
--
ALTER TABLE `devsetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_barang`
--
ALTER TABLE `master_barang`
  ADD PRIMARY KEY (`BarangID`) USING BTREE;

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`IDMenu`);

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
-- Indexes for table `swap_exact`
--
ALTER TABLE `swap_exact`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id_address` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `akses_menu`
--
ALTER TABLE `akses_menu`
  MODIFY `IDAksesMenu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `config_order`
--
ALTER TABLE `config_order`
  MODIFY `id_config_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `devsetting`
--
ALTER TABLE `devsetting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `master_barang`
--
ALTER TABLE `master_barang`
  MODIFY `BarangID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=653;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `IDMenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `IDRole` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `role_access_menu`
--
ALTER TABLE `role_access_menu`
  MODIFY `IDRoleAccessMenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=413;

--
-- AUTO_INCREMENT for table `swap_exact`
--
ALTER TABLE `swap_exact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `IDUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `IDRole` FOREIGN KEY (`IDRole`) REFERENCES `role` (`IDRole`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
