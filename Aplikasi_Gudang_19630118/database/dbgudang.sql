-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2022 at 06:15 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbgudang`
--
CREATE DATABASE IF NOT EXISTS `dbgudang` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dbgudang`;

-- --------------------------------------------------------

--
-- Table structure for table `tbaktivitasgudang`
--

CREATE TABLE IF NOT EXISTS `tbaktivitasgudang` (
  `id_aktivitas` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `nama_pemasok` varchar(100) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `tanggal_keluar` date NOT NULL,
  PRIMARY KEY (`id_aktivitas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbaktivitasgudang`
--

INSERT INTO `tbaktivitasgudang` (`id_aktivitas`, `nama_produk`, `nama_pemasok`, `tanggal_masuk`, `tanggal_keluar`) VALUES
(111, 'Samsung J1 Prime', 'PT.Setia Utama Distrindo', '2021-10-01', '2022-01-04'),
(222, 'Xiaomi Redmi 2 Prime', 'PT.V1 Indonesia', '2021-09-08', '2022-01-03'),
(333, 'Samsung S10', 'PT.Prima Elektro Surabaya', '2021-01-01', '2022-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `tbbarang`
--

CREATE TABLE IF NOT EXISTS `tbbarang` (
  `id_barang` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `stok` varchar(100) NOT NULL,
  `total_harga` varchar(100) NOT NULL,
  PRIMARY KEY (`id_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbbarang`
--

INSERT INTO `tbbarang` (`id_barang`, `nama_produk`, `harga`, `stok`, `total_harga`) VALUES
(1, 'Samsung J1 Prime', '1500000', '50', '75000000'),
(2, 'Xiaomi Redmi 2 Prime', '2000000', '4', '8000000'),
(3, 'Xiaomi Redmi 6 A', '2500000', '5', '12500000'),
(4, 'Xiaomi Redmi 5 Prime', '2000000', '4', '8000000');

-- --------------------------------------------------------

--
-- Table structure for table `tbpemasok`
--

CREATE TABLE IF NOT EXISTS `tbpemasok` (
  `id_pemasok` int(11) NOT NULL,
  `nama_pemasok` varchar(100) NOT NULL,
  `no_telepon` varchar(15) NOT NULL,
  `alamat_pemasok` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbpemasok`
--

INSERT INTO `tbpemasok` (`id_pemasok`, `nama_pemasok`, `no_telepon`, `alamat_pemasok`) VALUES
(22, 'PT.V1 Indonesia', '0821 5457 7320', 'Jl.Jendral Sudirman 32 Jakarta Pusat'),
(33, 'PT.Prima Elektro Surabaya', '0822 7335 8799', 'Pahlawan 02 Surabaya'),
(44, 'PT.V1 Indonesia', '0821 5457 7320', 'Jl.Jendral Sudirman 32 Jakarta Pusat');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
