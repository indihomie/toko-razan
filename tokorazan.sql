-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2021 at 06:37 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokorazan`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `idcart` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `userid` int(11) NOT NULL,
  `tglorder` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(10) NOT NULL DEFAULT 'Cart'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`idcart`, `orderid`, `userid`, `tglorder`, `status`) VALUES
(10, '15wKVT0nej25Y', 2, '2021-03-16 12:10:42', 'Selesai'),
(11, '15Swf8Ye0Fm.M', 2, '2021-03-16 12:17:34', 'Cart'),
(12, '15PzF03ejd8W2', 1, '2021-05-13 02:40:48', 'Selesai'),
(13, '16KUZ1wKc7fLY', 3, '2021-08-27 01:53:43', 'Selesai'),
(14, '16VN9fPI71m7w', 1, '2021-08-30 13:08:46', 'Payment'),
(15, '16/Ge60CajxJg', 7, '2021-09-29 02:40:36', 'Confirmed'),
(16, '16b7uW5AoSLZ2', 1, '2021-10-03 11:02:06', 'Cart'),
(17, '16j5/u.1MC3Yg', 8, '2021-10-13 04:15:18', 'Cart');

-- --------------------------------------------------------

--
-- Table structure for table `detailorder`
--

CREATE TABLE `detailorder` (
  `detailid` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `idproduk` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detailorder`
--

INSERT INTO `detailorder` (`detailid`, `orderid`, `idproduk`, `qty`) VALUES
(13, '15wKVT0nej25Y', 1, 100),
(14, '15PzF03ejd8W2', 2, 1),
(15, '16KUZ1wKc7fLY', 2, 2),
(17, '16/Ge60CajxJg', 7, 2),
(18, '16/Ge60CajxJg', 5, 1),
(19, '16/Ge60CajxJg', 6, 1),
(20, '16VN9fPI71m7w', 9, 1),
(21, '16VN9fPI71m7w', 8, 1),
(22, '16b7uW5AoSLZ2', 9, 1),
(23, '16b7uW5AoSLZ2', 8, 1),
(24, '16j5/u.1MC3Yg', 1, 1),
(25, '16j5/u.1MC3Yg', 2, 2),
(26, '16j5/u.1MC3Yg', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `idkategori` int(11) NOT NULL,
  `namakategori` varchar(20) NOT NULL,
  `tgldibuat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`idkategori`, `namakategori`, `tgldibuat`) VALUES
(1, 'Bunga Tangkai', '2021-07-21 07:28:34'),
(2, 'Bunga Papan', '2021-07-17 07:34:17'),
(3, 'Bunga Hidup', '2021-07-16 12:15:40'),
(4, 'Aksesoris', '2021-08-30 13:06:28'),
(5, 'Action Figure', '2021-10-03 09:51:49');

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi`
--

CREATE TABLE `konfirmasi` (
  `idkonfirmasi` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `userid` int(11) NOT NULL,
  `payment` varchar(10) NOT NULL,
  `namarekening` varchar(25) NOT NULL,
  `tglbayar` date NOT NULL,
  `tglsubmit` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `konfirmasi`
--

INSERT INTO `konfirmasi` (`idkonfirmasi`, `orderid`, `userid`, `payment`, `namarekening`, `tglbayar`, `tglsubmit`) VALUES
(3, '16/Ge60CajxJg', 7, 'Bank BCA', 'Muhammad Razan Alfatin', '2021-09-29', '2021-09-29 02:42:26');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `userid` int(11) NOT NULL,
  `namalengkap` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `notelp` varchar(15) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tgljoin` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` varchar(7) NOT NULL DEFAULT 'Member',
  `lastlogin` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`userid`, `namalengkap`, `email`, `password`, `notelp`, `alamat`, `tgljoin`, `role`, `lastlogin`) VALUES
(1, 'Admin', 'admin', '$2y$10$GJVGd4ji3QE8ikTBzNyA0uLQhiGd6MirZeSJV1O6nUpjSVp1eaKzS', '085811485327', 'Indonesia', '2021-06-16 11:31:17', 'Admin', NULL),
(2, 'Guest', 'guest', '$2y$10$xXEMgj5pMT9EE0QAx3QW8uEn155Je.FHH5SuIATxVheOt0Z4rhK6K', '01234567890', 'Indonesia', '2021-06-16 11:30:40', 'Member', NULL),
(3, 'Wiwit Dewi Ramadhany', 'dewi.ramadhany@gmail.com', '$2y$10$dvPwHh9A2TRr2uornQF8J.SYW35m8gxVkNXQJHxddTdMl1OAjHNwq', '081212948899', 'jalan bintara IX no 9 rt 2 rw 5', '2021-08-27 01:53:11', 'Member', NULL),
(6, 'Muhammad Razan Alfatin', 'Razan', '$2y$10$sTRDUX3RdKAX7/eSIUcxae4LXLUvfPG0poFTHCLEEUc/P9hgssLr6', '085811485327', '', '2021-09-29 02:33:39', 'Admin', NULL),
(7, 'Muhammad Razan Alfatin', 'muhammadrazanalfatin@gmail.com', '$2y$10$nk8Ql5bzNvFbRLaarGU3jexi9BncH8MAjtbwqZQfzK6rzqmPVKVVy', '085811485327', 'jalan bintara IX no 9 rt 2 rw 5, Bekasi Barat , Jawa Barat 17134', '2021-09-29 02:36:14', 'Member', NULL),
(8, 'Wulang Dhanadipa', 'bodybodyofficial@gmail.com', '$2y$10$MYMdeUAfDMF4xDupoEpH/uEQJnCZ9aEDhbZN2O1Jk79wGHoZeWAv2', '57868', 'Chfycycyvjdjduf', '2021-10-13 04:14:05', 'Member', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `no` int(11) NOT NULL,
  `metode` varchar(25) NOT NULL,
  `norek` varchar(25) NOT NULL,
  `logo` text DEFAULT NULL,
  `an` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`no`, `metode`, `norek`, `logo`, `an`) VALUES
(1, 'Bank BCA', '6630291541', 'images/bca.jpg', 'Wiwit Dewi Ramadhany'),
(2, 'OVO', '085811485327', 'images/ovo.jpg', 'M Razan Alfatin'),
(3, 'GOPAY', '085811485327', 'images/gopay.jpg', 'M Razan Alfatin'),
(4, 'DANA', '085811485327', 'images/dana.png', 'M Razan Alfatin');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `idproduk` int(11) NOT NULL,
  `idkategori` int(11) NOT NULL,
  `namaproduk` varchar(30) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  `rate` int(11) NOT NULL,
  `hargabefore` int(11) NOT NULL,
  `hargaafter` int(11) NOT NULL,
  `tgldibuat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`idproduk`, `idkategori`, `namaproduk`, `gambar`, `deskripsi`, `rate`, `hargabefore`, `hargaafter`, `tgldibuat`) VALUES
(1, 1, 'Mawar Merah', 'produk/7443a12318c5f4f29059d243fd14f447.png', 'Setangkai mawar merah', 5, 23000, 19000, '2021-07-20 09:10:26'),
(2, 1, 'Mawar Putih', 'produk/15kwuDMbYtraw.png', 'Setangkai mawar putih', 4, 24000, 19500, '2021-08-20 09:24:13'),
(3, 3, 'Bunga Hidup', 'produk/15Ak7lFMfvuJc.jpg', 'Bunga Hidup', 5, 25000, 15000, '2021-07-16 12:16:53'),
(4, 4, 'Brass Knuckle', 'produk/16LBXMvgmM2AM.png', 'Alat untuk bertarung', 5, 200000, 187000, '2021-08-30 13:08:15'),
(5, 4, 'Topeng Anonymous', 'produk/162PRLzPzYtuQ.jpg', 'Topeng hiasan. cocok untung mainan anak dan pesta', 5, 60000, 50000, '2021-09-29 02:10:25'),
(6, 4, 'Topeng Comic 8', 'produk/168LHSYypo6pI.jpg', 'Topeng hiasan. cocok untung mainan anak dan pesta.', 5, 70000, 50000, '2021-09-29 02:11:32'),
(7, 4, 'Topeng Payday Dallas', 'produk/16IR8WzIlEmqA.jpg', 'Topeng hiasan. cocok untung mainan anak dan pesta.', 5, 76000, 55000, '2021-09-29 02:12:19'),
(8, 5, 'Action Figure Saitama', 'produk/16JddoohmP6ac.jpg', 'Action Figure Saitama dari anime OPM', 5, 600000, 500000, '2021-10-03 09:53:29'),
(9, 5, 'Action Figure Tomioka Giyuu', 'produk/16IhgdgLKBvSo.jpg', 'Action Figure Tomioka Giyuu dari anime Demon Slayer', 5, 800000, 750000, '2021-10-03 09:54:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`idcart`),
  ADD UNIQUE KEY `orderid` (`orderid`),
  ADD KEY `orderid_2` (`orderid`);

--
-- Indexes for table `detailorder`
--
ALTER TABLE `detailorder`
  ADD PRIMARY KEY (`detailid`),
  ADD KEY `orderid` (`orderid`),
  ADD KEY `idproduk` (`idproduk`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indexes for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD PRIMARY KEY (`idkonfirmasi`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idproduk`),
  ADD KEY `idkategori` (`idkategori`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `idcart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `detailorder`
--
ALTER TABLE `detailorder`
  MODIFY `detailid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `idkategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  MODIFY `idkonfirmasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `idproduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detailorder`
--
ALTER TABLE `detailorder`
  ADD CONSTRAINT `idproduk` FOREIGN KEY (`idproduk`) REFERENCES `produk` (`idproduk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderid` FOREIGN KEY (`orderid`) REFERENCES `cart` (`orderid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD CONSTRAINT `userid` FOREIGN KEY (`userid`) REFERENCES `login` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `idkategori` FOREIGN KEY (`idkategori`) REFERENCES `kategori` (`idkategori`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
