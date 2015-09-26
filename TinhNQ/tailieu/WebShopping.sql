-- phpMyAdmin SQL Dump
-- version 4.3.13.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 26, 2015 at 07:53 AM
-- Server version: 5.6.25
-- PHP Version: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `WebShopping`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_NguoiDung`
--

CREATE TABLE IF NOT EXISTS `tbl_NguoiDung` (
  `MaNguoiDung` int(11) NOT NULL,
  `TenTruyCap` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `MatKhau` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `HoTen` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

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
  MODIFY `MaHang` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_DMKhach`
--
ALTER TABLE `tbl_DMKhach`
  MODIFY `MaKhach` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_HoaDonBan`
--
ALTER TABLE `tbl_HoaDonBan`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_LoaiHang`
--
ALTER TABLE `tbl_LoaiHang`
  MODIFY `MaLoaiHang` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_NguoiDung`
--
ALTER TABLE `tbl_NguoiDung`
  MODIFY `MaNguoiDung` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_NhaCungCap`
--
ALTER TABLE `tbl_NhaCungCap`
  MODIFY `MaNhaCungCap` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
