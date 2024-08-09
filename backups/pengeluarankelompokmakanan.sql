#
# TABLE STRUCTURE FOR: pengeluarankelompokmakanan
#

DROP TABLE IF EXISTS `pengeluarankelompokmakanan`;

CREATE TABLE `pengeluarankelompokmakanan` (
  `id` int NOT NULL,
  `kelompok` varchar(16) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kota` double DEFAULT NULL,
  `desa` double DEFAULT NULL,
  `jumlah` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `pengeluarankelompokmakanan` (`id`, `kelompok`, `kota`, `desa`, `jumlah`) VALUES (0, 'Padi-padian', '62.877', '77.664', '66.331');
INSERT INTO `pengeluarankelompokmakanan` (`id`, `kelompok`, `kota`, `desa`, `jumlah`) VALUES (1, 'Umbi-umbian', '5.666', '4.449', '5.381');
INSERT INTO `pengeluarankelompokmakanan` (`id`, `kelompok`, `kota`, `desa`, `jumlah`) VALUES (2, 'Ikan', '39.863', '30.445', '37.663');
INSERT INTO `pengeluarankelompokmakanan` (`id`, `kelompok`, `kota`, `desa`, `jumlah`) VALUES (3, 'Daging', '34479', '24.09', '32.053');
INSERT INTO `pengeluarankelompokmakanan` (`id`, `kelompok`, `kota`, `desa`, `jumlah`) VALUES (4, 'Telur dan susu', '40.783', '26.601', '37.471');
INSERT INTO `pengeluarankelompokmakanan` (`id`, `kelompok`, `kota`, `desa`, `jumlah`) VALUES (5, 'Sayur-sayuran', '13.177', '12.625', '13.049');
INSERT INTO `pengeluarankelompokmakanan` (`id`, `kelompok`, `kota`, `desa`, `jumlah`) VALUES (6, 'Kacang-kacangan', '13.177', '12.625', '13.049');
INSERT INTO `pengeluarankelompokmakanan` (`id`, `kelompok`, `kota`, `desa`, `jumlah`) VALUES (7, 'Buah-buahan', '32.997', '23.356', '30.746');
INSERT INTO `pengeluarankelompokmakanan` (`id`, `kelompok`, `kota`, `desa`, `jumlah`) VALUES (8, 'Minyak dan lemak', '12.765', '12.02', '12591');
INSERT INTO `pengeluarankelompokmakanan` (`id`, `kelompok`, `kota`, `desa`, `jumlah`) VALUES (9, 'Bahan minuman', '18.573', '19.069', '18.689');
INSERT INTO `pengeluarankelompokmakanan` (`id`, `kelompok`, `kota`, `desa`, `jumlah`) VALUES (10, 'Bumbu-bumbuan', '13.162', '11.591', '12.795');
INSERT INTO `pengeluarankelompokmakanan` (`id`, `kelompok`, `kota`, `desa`, `jumlah`) VALUES (11, 'Konsumsi lainnya', '13.125', '11.791', '12.813');
INSERT INTO `pengeluarankelompokmakanan` (`id`, `kelompok`, `kota`, `desa`, `jumlah`) VALUES (12, 'Makanan dan minu', '269.941', '188.168', '250.843');
INSERT INTO `pengeluarankelompokmakanan` (`id`, `kelompok`, `kota`, `desa`, `jumlah`) VALUES (13, 'Tembakau dan sir', '81.78', '90169', '83.739');


