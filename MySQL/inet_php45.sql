-- phpMyAdmin SQL Dump
-- version 4.2.0
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 06, 2015 at 01:33 PM
-- Server version: 5.6.24
-- PHP Version: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `inet_php45`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ChiTietHoaDon`
--

CREATE TABLE IF NOT EXISTS `tbl_ChiTietHoaDon` (
  `MaHD` int(11) DEFAULT NULL,
  `MaHang` int(11) DEFAULT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `DonGia` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_DMHang`
--

CREATE TABLE IF NOT EXISTS `tbl_DMHang` (
`MaHang` int(11) NOT NULL,
  `TenHang` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `HinhAnh` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `DVT` varchar(15) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `DonGia` float DEFAULT NULL,
  `MaNhaCungCap` int(11) DEFAULT NULL,
  `MaLoaiHang` int(11) DEFAULT NULL,
  `MoTa` text COLLATE utf8_vietnamese_ci
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_DMHang`
--

INSERT INTO `tbl_DMHang` (`MaHang`, `TenHang`, `HinhAnh`, `DVT`, `DonGia`, `MaNhaCungCap`, `MaLoaiHang`, `MoTa`) VALUES
(3, 'Quần Dài màu xanh', '2 (2).jpg', 'Cái', 100, 2, 9, 'Đây là quần\r\nkaki\r\nmade china			'),
(4, '1111', '2 (1).jpg', 'Cái', 4444, 1, 2, 'aaaaaaaaaaaaaaaaaaaaa'),
(5, '999', 'default.png', 'Cái', 4444, 2, 3, 'xxxxxxxxxxxxxxxxxx');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_DMKhach`
--

CREATE TABLE IF NOT EXISTS `tbl_DMKhach` (
  `MaKhach` int(11) NOT NULL,
  `HoTen` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `DiaChi` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `DienThoai` varchar(15) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `Email` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `tbl_DMKhach`
--

INSERT INTO `tbl_DMKhach` (`MaKhach`, `HoTen`, `DiaChi`, `DienThoai`, `Email`) VALUES
(1, 'Nguyễn Văn A', 'Đà Nẵng', '0905666777', 'abc@gmail.com'),
(2, 'Nguyễn Thị  C', 'Hà Nội', '0978999000', 'def@gmail.com'),
(3, 'Nguyễn Văn D', 'HCM', '0978999123', 'xyzz@yahoo.com'),
(4, 'Nguyễn Thị E', 'Hải Phòng', '0978999666', 'ebd@vnn.vn'),
(5, 'Nguyễn Thị F', 'Đà Nẵng', '0978000001', 'edc@gmail.com'),
(6, 'Nguyen Thi Demo', 'Hoa Khanh', '01227481746', 'sdfhg@hotmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_HoaDonBan`
--

CREATE TABLE IF NOT EXISTS `tbl_HoaDonBan` (
  `MaHD` int(11) NOT NULL,
  `MaKhach` int(11) NOT NULL,
  `NgHD` datetime DEFAULT NULL,
  `DienGiai` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `Duyet` bit(2) DEFAULT NULL,
  `NgDuyet` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_LoaiHang`
--

CREATE TABLE IF NOT EXISTS `tbl_LoaiHang` (
`MaLoaiHang` int(11) NOT NULL,
  `TenLoaiHang` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `tbl_LoaiHang`
--

INSERT INTO `tbl_LoaiHang` (`MaLoaiHang`, `TenLoaiHang`) VALUES
(2, 'Quần Jean'),
(3, 'Quần kaki'),
(4, 'Quần Lửng'),
(8, 'Áo thun'),
(9, 'Quần Kaki'),
(11, 'demo'),
(12, '6666666666666'),
(14, 'Quần Áo');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_NguoiDung`
--

CREATE TABLE IF NOT EXISTS `tbl_NguoiDung` (
`MaNguoiDung` int(11) NOT NULL,
  `TenTruyCap` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `MatKhau` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `HoTen` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_NguoiDung`
--

INSERT INTO `tbl_NguoiDung` (`MaNguoiDung`, `TenTruyCap`, `MatKhau`, `HoTen`) VALUES
(2, 'tinhabc', '1111111', '22222'),
(3, 'sadasd', '1111111', '22222');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_NhaCungCap`
--

CREATE TABLE IF NOT EXISTS `tbl_NhaCungCap` (
`MaNhaCungCap` int(11) NOT NULL,
  `TenNhaCungCap` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `DiaChi` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `DienThoai` varchar(15) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `Email` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tbl_NhaCungCap`
--

INSERT INTO `tbl_NhaCungCap` (`MaNhaCungCap`, `TenNhaCungCap`, `DiaChi`, `DienThoai`, `Email`) VALUES
(1, 'ngô quang tính', 'Nguyễn Văn Linh', '0902222222', 'fpt@gmail.com'),
(2, 'tính', 'Nguyễn Văn Linh', '09888888', 'fpt@gmail.com'),
(7, 'Lam', 'hà nội', '213124124', 'sssaa'),
(8, 'Huệ', 'HCM', '23124', 'fpt@gmail.com'),
(9, '333', '444', '555', '666'),
(10, '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_DMHang`
--
ALTER TABLE `tbl_DMHang`
 ADD PRIMARY KEY (`MaHang`);

--
-- Indexes for table `tbl_DMKhach`
--
ALTER TABLE `tbl_DMKhach`
 ADD PRIMARY KEY (`MaKhach`);

--
-- Indexes for table `tbl_HoaDonBan`
--
ALTER TABLE `tbl_HoaDonBan`
 ADD PRIMARY KEY (`MaHD`);

--
-- Indexes for table `tbl_LoaiHang`
--
ALTER TABLE `tbl_LoaiHang`
 ADD PRIMARY KEY (`MaLoaiHang`);

--
-- Indexes for table `tbl_NguoiDung`
--
ALTER TABLE `tbl_NguoiDung`
 ADD PRIMARY KEY (`MaNguoiDung`);

--
-- Indexes for table `tbl_NhaCungCap`
--
ALTER TABLE `tbl_NhaCungCap`
 ADD PRIMARY KEY (`MaNhaCungCap`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_DMHang`
--
ALTER TABLE `tbl_DMHang`
MODIFY `MaHang` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_LoaiHang`
--
ALTER TABLE `tbl_LoaiHang`
MODIFY `MaLoaiHang` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tbl_NguoiDung`
--
ALTER TABLE `tbl_NguoiDung`
MODIFY `MaNguoiDung` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_NhaCungCap`
--
ALTER TABLE `tbl_NhaCungCap`
MODIFY `MaNhaCungCap` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
