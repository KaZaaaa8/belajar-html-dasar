-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2023 at 06:01 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penggajian`
--

-- --------------------------------------------------------

--
-- Table structure for table `bagian`
--

CREATE TABLE `bagian` (
  `ID` int(11) NOT NULL,
  `Nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bagian`
--

INSERT INTO `bagian` (`ID`, `Nama`) VALUES
(1, 'Marketing'),
(2, 'HRD'),
(3, 'Manager');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `NIK` varchar(20) NOT NULL,
  `Nama` varchar(50) DEFAULT NULL,
  `Tanggal_Mulai` date DEFAULT NULL,
  `Gaji_Pokok` int(11) DEFAULT NULL,
  `Status_Karyawan` enum('TETAP','KONTRAK','MAGANG') DEFAULT NULL,
  `BagianID` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`NIK`, `Nama`, `Tanggal_Mulai`, `Gaji_Pokok`, `Status_Karyawan`, `BagianID`) VALUES
('0001', 'WACHID', '2023-10-23', 3100000, 'TETAP', 3),
('0002', 'DWI', '2023-10-23', 3100000, 'TETAP', 2),
('0003', 'TRIO', '2011-10-23', 2900000, 'TETAP', 1),
('0004', 'ARBA', '2023-10-23', 2400000, 'KONTRAK', 1),
('0005', 'PANCA', '2019-05-05', 2700000, 'KONTRAK', 1),
('0006', 'SITI', '2011-10-23', 1500000, 'MAGANG', 1),
('0007', 'WINDU', '2023-10-23', 1300000, 'KONTRAK', 1),
('0008', 'NINO', '2023-10-23', 1000000, 'TETAP', 1),
('0009', 'TENTEN', '2011-10-23', 1000000, 'KONTRAK', 1),
('0010', 'EVAN', '2023-10-23', 1000000, 'MAGANG', 1),
('0011', 'MUHAMMAD FAZA HUSNAN', '2023-10-23', 31000000, 'TETAP', 1);

-- --------------------------------------------------------

--
-- Table structure for table `penggajian`
--

CREATE TABLE `penggajian` (
  `ID` int(11) NOT NULL,
  `NIK_Karyawan` varchar(11) DEFAULT NULL,
  `Tahun` varchar(11) DEFAULT NULL,
  `Bulan` varchar(11) DEFAULT NULL,
  `Gaji_Bayar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penggajian`
--

INSERT INTO `penggajian` (`ID`, `NIK_Karyawan`, `Tahun`, `Bulan`, `Gaji_Bayar`) VALUES
(1, '0001', '2015', '07', '1000000'),
(2, '0002', '2015', '07', '1100000'),
(3, '0001', '2015', '08', '1150000'),
(4, '0002', '2015', '08', '1000000'),
(5, '0001', '2015', '09', '1200000'),
(6, '0002', '2015', '09', '1200000'),
(7, '0003', '2015', '09', '1000000'),
(8, '0004', '2015', '07', '1000000'),
(9, '0005', '2015', '07', '1000000'),
(10, '0006', '2015', '07', '1000000'),
(11, '0007', '2015', '07', '1000000'),
(12, '0004', '2015', '08', '1200000'),
(13, '0005', '2015', '08', '1200000'),
(14, '0006', '2015', '08', '1200000'),
(15, '0007', '2015', '08', '1200000'),
(16, '0008', '2015', '07', '1100000'),
(17, '0009', '2015', '07', '1000000'),
(18, '0007', '2015', '08', '1150000'),
(19, '0008', '2015', '09', '1200000'),
(20, '00010', '2015', '10', '1100000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bagian`
--
ALTER TABLE `bagian`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `penggajian`
--
ALTER TABLE `penggajian`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bagian`
--
ALTER TABLE `bagian`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `penggajian`
--
ALTER TABLE `penggajian`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
