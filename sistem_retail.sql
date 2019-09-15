-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 15, 2019 at 05:17 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_retail`
--

-- --------------------------------------------------------

--
-- Table structure for table `harga_barang`
--

CREATE TABLE `harga_barang` (
  `kode_barang` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `nama_barang` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `suplier_barang` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `stok_barang` int(20) NOT NULL,
  `harga_barang` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `harga_barang`
--

INSERT INTO `harga_barang` (`kode_barang`, `nama_barang`, `suplier_barang`, `stok_barang`, `harga_barang`) VALUES
('A1111', 'Kacang Garuda', 'Indofud', 50, 5000),
('A2222', 'Ciki Cinta', 'Indofud', 50, 3000),
('A3333', 'Teh Gelas', 'Adijaya', 100, 4000),
('A4444', 'Teh Kotak', 'Adijaya', 80, 4500),
('B1111', 'Teh Botol', 'Sentosa', 40, 3500),
('B2222', 'Teh Sisri', 'Sentosa', 20, 2000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `harga_barang`
--
ALTER TABLE `harga_barang`
  ADD PRIMARY KEY (`kode_barang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
