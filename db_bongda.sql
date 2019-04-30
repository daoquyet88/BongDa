-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2019 at 11:11 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bongda`
--

-- --------------------------------------------------------

--
-- Table structure for table `cauthu`
--

CREATE TABLE `cauthu` (
  `MaCauThu` int(11) NOT NULL,
  `TenCauThu` varchar(200) NOT NULL,
  `ViTri` varchar(200) NOT NULL,
  `SoAo` int(11) NOT NULL,
  `NgaySinh` varchar(200) NOT NULL,
  `BanThang` int(11) NOT NULL,
  `TheVang` int(11) NOT NULL,
  `TheDo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doibong`
--

CREATE TABLE `doibong` (
  `MaDoiBong` int(11) NOT NULL,
  `TenDoiBong` varchar(200) NOT NULL,
  `HinhAnh` varchar(200) NOT NULL,
  `HuanLuanVien` varchar(200) NOT NULL,
  `NgaySinh` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `giaidau`
--

CREATE TABLE `giaidau` (
  `MaGiai` int(11) NOT NULL,
  `ThoiGian` varchar(200) NOT NULL,
  `Vong` int(11) NOT NULL,
  `ChuNha` int(11) NOT NULL,
  `TySo` int(11) NOT NULL,
  `Khach` int(11) NOT NULL,
  `San` int(11) NOT NULL,
  `MaTrongTai` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `MaNguoiDung` varchar(200) NOT NULL,
  `TenNguoiDung` varchar(200) NOT NULL,
  `UseName` varchar(50) NOT NULL,
  `PassWord` varchar(50) NOT NULL,
  `Quyen` int(11) NOT NULL,
  `NgayLap` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nhataitro`
--

CREATE TABLE `nhataitro` (
  `MaNhaTaiTro` int(11) NOT NULL,
  `TenNhaTaiTro` varchar(200) NOT NULL,
  `HinhThuc` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trongtai`
--

CREATE TABLE `trongtai` (
  `MaTrongTai` varchar(200) NOT NULL,
  `TenTrongTai` varchar(200) NOT NULL,
  `NgaySinh` varchar(200) NOT NULL,
  `SoTranBat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trongtai`
--

INSERT INTO `trongtai` (`MaTrongTai`, `TenTrongTai`, `NgaySinh`, `SoTranBat`) VALUES
('1', 'aaa', '12', 1),
('sadsa', 'dsadas', 'sad12', 12);

-- --------------------------------------------------------

--
-- Table structure for table `xemhang`
--

CREATE TABLE `xemhang` (
  `MaDoiBong` int(11) NOT NULL,
  `TranThang` int(11) NOT NULL,
  `TranHoa` int(11) NOT NULL,
  `TranBai` int(11) NOT NULL,
  `BanThang` int(11) NOT NULL,
  `BanBai` int(11) NOT NULL,
  `HieuSo` int(11) NOT NULL,
  `Diem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cauthu`
--
ALTER TABLE `cauthu`
  ADD PRIMARY KEY (`MaCauThu`);

--
-- Indexes for table `doibong`
--
ALTER TABLE `doibong`
  ADD PRIMARY KEY (`MaDoiBong`);

--
-- Indexes for table `giaidau`
--
ALTER TABLE `giaidau`
  ADD PRIMARY KEY (`MaGiai`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`MaNguoiDung`);

--
-- Indexes for table `nhataitro`
--
ALTER TABLE `nhataitro`
  ADD PRIMARY KEY (`MaNhaTaiTro`);

--
-- Indexes for table `trongtai`
--
ALTER TABLE `trongtai`
  ADD PRIMARY KEY (`MaTrongTai`);

--
-- Indexes for table `xemhang`
--
ALTER TABLE `xemhang`
  ADD PRIMARY KEY (`MaDoiBong`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
