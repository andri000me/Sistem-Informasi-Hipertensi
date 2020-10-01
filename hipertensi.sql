-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 07, 2019 at 04:04 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hipertensi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE IF NOT EXISTS `tb_admin` (
  `user` varchar(16) NOT NULL,
  `pass` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`user`, `pass`) VALUES
('admin', 'admin'),
('user', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `tb_diagnosa`
--

CREATE TABLE IF NOT EXISTS `tb_diagnosa` (
  `kode_diagnosa` varchar(16) NOT NULL,
  `nama_diagnosa` varchar(255) DEFAULT NULL,
  `keterangan` text,
  PRIMARY KEY (`kode_diagnosa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_diagnosa`
--

INSERT INTO `tb_diagnosa` (`kode_diagnosa`, `nama_diagnosa`, `keterangan`) VALUES
('P01', 'Hipertensi Primer', 'Istirahat yang cukup, berhenti merokok dan konsumsi alkohol, menurunkan berat badan, memperbanyak makan buah-buahan dan sayur, relaksasi, dan mengosumsi obat seperti (diuretik, angiotensin, beta-blocker, dll).'),
('P02', 'Hipertensi Sekunder', 'Mengatur pola makan, mengontrol berat badan, hindari merokok dan mengosumsi alkohol, hindari stres berlebih, mengosumsi obat seperti (diuretik golong thiazide, penghambat saluran kalsium, penghambat enzim angiotensin, penghambat renin, penghambat alfa, dll).');

-- --------------------------------------------------------

--
-- Table structure for table `tb_gejala`
--

CREATE TABLE IF NOT EXISTS `tb_gejala` (
  `kode_gejala` varchar(16) NOT NULL,
  `nama_gejala` varchar(255) DEFAULT NULL,
  `keterangan` text,
  PRIMARY KEY (`kode_gejala`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_gejala`
--

INSERT INTO `tb_gejala` (`kode_gejala`, `nama_gejala`, `keterangan`) VALUES
('G01', 'Kelelahan', ''),
('G02', 'Pingsan', ''),
('G03', 'Stress', ''),
('G04', 'Kejang', ''),
('G05', 'Kebas', ''),
('G06', 'Pengelihatan Kabur', ''),
('G07', 'Gugup	', ''),
('G08', 'Mual', ''),
('G09', 'Telinga Berdengung', ''),
('G10', 'Detak Jantung Tak Teratur', ''),
('G11', 'Mimisan', ''),
('G12', 'Sakit Kepala', ''),
('G13', 'Kebingungan', ''),
('G14', 'Nyeri Dada', ''),
('G15', 'Darah di Urin', ''),
('G16', 'Sulit Bernapas', ''),
('G17', 'Diabetes', ''),
('G18', 'Merokok', ''),
('G19', 'Konsumsi Obat', ''),
('G20', 'Konsumsi Alkohol', ''),
('G21', 'Berdasarkan Gen', ''),
('G22', 'Asam Urat', ''),
('G23', 'Diabetes', ''),
('G24', 'Kolestrol Tinggi', ''),
('G25', 'Penyakit Ginjal', ''),
('G26', 'Konsumsi Garam Berlebihan', ''),
('G27', 'Tekanan Darah 140-159 (Sistolik)', ''),
('G28', 'Tekanan Darah >=160 (Sistolik)', ''),
('G29', 'IndeksMassa Tubuh 25-29,9', ''),
('G30', 'Indeks Massa Tubuh 30-34,9', ''),
('G31', 'Indeks Massa Tubuh 35-39,9', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_konsultasi`
--

CREATE TABLE IF NOT EXISTS `tb_konsultasi` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `kode_gejala` varchar(16) DEFAULT NULL,
  `jawaban` varchar(6) DEFAULT 'Tidak',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tb_konsultasi`
--

INSERT INTO `tb_konsultasi` (`ID`, `kode_gejala`, `jawaban`) VALUES
(1, 'G01', 'Ya'),
(2, 'G03', 'Ya'),
(3, 'G06', 'Ya'),
(4, 'G07', 'Tidak'),
(5, 'G12', 'Tidak');

-- --------------------------------------------------------

--
-- Table structure for table `tb_relasi`
--

CREATE TABLE IF NOT EXISTS `tb_relasi` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `kode_diagnosa` varchar(16) DEFAULT NULL,
  `kode_gejala` varchar(16) DEFAULT NULL,
  `mb` double DEFAULT NULL,
  `md` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=116 ;

--
-- Dumping data for table `tb_relasi`
--

INSERT INTO `tb_relasi` (`ID`, `kode_diagnosa`, `kode_gejala`, `mb`, `md`) VALUES
(73, 'P01', 'G01', 0.8, 0.4),
(74, 'P02', 'G01', 0.7, 0.5),
(75, 'P02', 'G02', 0.7, 0.3),
(76, 'P01', 'G03', 0.7, 0.2),
(77, 'P02', 'G03', 0.8, 0.3),
(78, 'P02', 'G04', 0.7, 0.2),
(79, 'P02', 'G05', 0.7, 0.4),
(80, 'P01', 'G06', 0.7, 0.4),
(81, 'P02', 'G06', 0.8, 0.5),
(82, 'P01', 'G07', 0.7, 0.5),
(83, 'P02', 'G07', 0.8, 0.5),
(84, 'P02', 'G08', 0.8, 0.2),
(85, 'P02', 'G09', 0.8, 0.4),
(86, 'P02', 'G10', 0.7, 0.2),
(87, 'P02', 'G11', 0.7, 0.3),
(88, 'P01', 'G12', 0.9, 0.2),
(89, 'P02', 'G12', 0.8, 0.2),
(90, 'P01', 'G13', 0.7, 0.3),
(91, 'P02', 'G13', 0.7, 0.4),
(92, 'P02', 'G14', 0.7, 0.2),
(93, 'P01', 'G15', 0.8, 0.1),
(94, 'P02', 'G15', 0.7, 0.4),
(95, 'P02', 'G16', 0.8, 0.3),
(96, 'P02', 'G17', 0.6, 0.2),
(97, 'P02', 'G18', 0.8, 0.4),
(98, 'P02', 'G19', 0.8, 0.5),
(99, 'P02', 'G20', 0.6, 0.2),
(100, 'P01', 'G21', 0.8, 0.2),
(101, 'P02', 'G21', 0.7, 0.5),
(102, 'P02', 'G22', 0.7, 0.4),
(103, 'P01', 'G23', 0.8, 0.5),
(104, 'P02', 'G23', 0.7, 0.5),
(105, 'P01', 'G24', 0.8, 0.7),
(106, 'P02', 'G24', 0.6, 0.2),
(107, 'P02', 'G25', 0.8, 0.3),
(108, 'P02', 'G26', 0.7, 0.1),
(109, 'P01', 'G27', 0.8, 0.3),
(110, 'P02', 'G28', 0.7, 0.4),
(111, 'P01', 'G29', 0.8, 0.3),
(112, 'P02', 'G29', 0.8, 0.4),
(113, 'P01', 'G30', 0.7, 0.4),
(114, 'P02', 'G30', 0.7, 0.2),
(115, 'P02', 'G31', 0.8, 0.5);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
