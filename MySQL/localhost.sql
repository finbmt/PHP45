-- phpMyAdmin SQL Dump
-- version 4.2.0
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 06, 2015 at 01:24 PM
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
MODIFY `MaNhaCungCap` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;--
-- Database: `mupnet_phim`
--

-- --------------------------------------------------------

--
-- Table structure for table `ipos_adv`
--

CREATE TABLE IF NOT EXISTS `ipos_adv` (
`adv_id` int(10) NOT NULL,
  `adv_name` varchar(30) NOT NULL,
  `adv_vitri` varchar(30) NOT NULL,
  `adv_img` varchar(300) NOT NULL,
  `adv_url` varchar(300) NOT NULL,
  `adv_phanloai` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-img;1-Flash',
  `adv_stt` int(10) NOT NULL,
  `adv_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0- Yes; 1- No'
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `ipos_category`
--

CREATE TABLE IF NOT EXISTS `ipos_category` (
`danhmucid` int(10) NOT NULL,
  `danhmucten` varchar(120) NOT NULL,
  `danhmucten_kd` varchar(120) NOT NULL,
  `danhmucstt` int(10) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `ipos_category`
--

INSERT INTO `ipos_category` (`danhmucid`, `danhmucten`, `danhmucten_kd`, `danhmucstt`) VALUES
(1, 'HÃ nh Äá»™ng', 'hanh-dong', 1),
(2, 'PhiÃªu LÆ°u', 'phieu-luu', 2),
(3, 'Kinh Dá»‹', 'kinh-di', 3),
(4, 'TÃ¬nh Cáº£m', 'tinh-cam', 4),
(5, 'Hoáº¡t HÃ¬nh', 'hoat-hinh', 5),
(6, 'VÃµ Thuáº­t', 'vo-thuat', 6),
(7, 'HÃ i HÆ°á»›c', 'hai-huoc', 7),
(9, 'TÃ¢m LÃ½', 'tam-ly', 9),
(10, 'Viá»…n TÆ°á»Ÿng', 'vien-tuong', 10),
(11, 'Tháº§n Thoáº¡i', 'than-thoai', 11),
(12, 'Cá»• Trang', 'co-trang', 12);

-- --------------------------------------------------------

--
-- Table structure for table `ipos_comment`
--

CREATE TABLE IF NOT EXISTS `ipos_comment` (
`camnhanid` int(10) NOT NULL,
  `phimid` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `camnhantime` int(10) NOT NULL,
  `camnhantxt` text NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

-- --------------------------------------------------------

--
-- Table structure for table `ipos_config`
--

CREATE TABLE IF NOT EXISTS `ipos_config` (
`cf_id` int(10) NOT NULL,
  `cf_name` varchar(255) NOT NULL,
  `cf_value` text NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `ipos_config`
--

INSERT INTO `ipos_config` (`cf_id`, `cf_name`, `cf_value`) VALUES
(1, 'Footer', 'Copyright @ 2012 XemPhim-HD.net. All Rights Reserved.\r\nSkin design by PhimBmt\r\nMá»i ná»™i dung trÃªn Ä‘á»u do website sÆ°u táº§m.\r\nChi tiáº¿t liÃªn há»‡: nuocmatdoibantay@gmail.com'),
(3, 'Text link', '<a href="http://XemPhim-HD.net/" title="phimbmt, xem phim online, phim nhanh" target="_blank">Xem Phim</a>, <a href="http://forumtruyen.net/forums/truyen-teen.70/" title="truyen teen">truyen teen</a>, <a href="http://web.XemPhim-HD.net/" target="_blank">ChÃ©p Phim HD</a>, <a href="http://sellhost24h.com" target="_blank">Thiáº¿t Káº¿ Website</a>, <a href="http://dangcapbmt.net" target="_blank">Blog TÃ¢m Há»“n</a><br/>\r\n<script id="_waud9b">var _wau = _wau || []; _wau.push(["small", "w2pfvnqz2h0x", "d9b"]);\r\n(function() {var s=document.createElement("script"); s.async=true;\r\ns.src="http://widgets.amung.us/small.js";\r\ndocument.getElementsByTagName("head")[0].appendChild(s);\r\n})();</script>\r\n<a title="Vietnam Backlinks" href="http://www.backlinks.vn/" target="_blank"><img src="http://www.autohits.vn/ads/VNbacklinks.png" alt="Vietnam Backlinks" width="80" height="15" border="0" /></a>\r\n<a href="http://www.allseotools.net/free-auto-backlinks-exchange-service/" target="_blank" title="Free Backlink Exchange For Seo" ><img src="http://www.autohits.vn/ads/s-backlink.png" alt="Free Backlink Exchange For Seo" width="80" height="15" border="0" /></a>\r\n<a href="http://www.autohits.vn/auto-backlinks.php" target="_blank" title="Free Auto Backlink Exchange Service" ><img src="http://www.autohits.vn/ads/backlinks.png" alt="Free Auto Backlink Exchange Service" width="80" height="15" border="0" /></a><br />\r\n<a href="http://www.checkinvietnam.com/travelbacklinks.html" target="_blank" title="Travel Backlinks" ><img src="http://www.checkinvietnam.com/ads/travelbacklinks.png" alt="Travel Backlinks" width="80" height="15" border="0" /></a>\r\n<a target="_blank" href="http://LuotTruyCap.Com/backlink.php" rel="dofollow" title="autohits,autosurf,luottruycap,Backlinks"><img border="0" width="100" alt="Auto Backlinks,autohits,autosurf, luottruycap" src="http://LuotTruyCap.Com/backlink.png" height="15" /></a>'),
(4, 'Tag', 'Fashion King,Fashion King HD'),
(2, 'ThÃ´ng bÃ¡o', 'none'),
(5, 'current_day', '13'),
(6, 'server_url_1', ''),
(7, 'server_folder_1', ''),
(8, 'total_server_media', '1'),
(9, 'server_url_2', 'http://domain2.com'),
(10, 'server_folder_2', 'thu-muc-2');

-- --------------------------------------------------------

--
-- Table structure for table `ipos_country`
--

CREATE TABLE IF NOT EXISTS `ipos_country` (
`quocgiaid` int(10) NOT NULL,
  `quocgiaten` varchar(120) NOT NULL,
  `quocgiaten_kd` varchar(120) NOT NULL,
  `quocgiastt` int(10) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `ipos_country`
--

INSERT INTO `ipos_country` (`quocgiaid`, `quocgiaten`, `quocgiaten_kd`, `quocgiastt`) VALUES
(1, 'Viá»‡t Nam', 'viet-nam', 1),
(2, 'Trung Quá»‘c', 'trung-quoc', 2),
(3, 'HÃ n Quá»‘c', 'han-quoc', 3),
(4, 'ÄÃ i Loan', 'dai-loan', 4),
(5, 'Há»“ng KÃ´ng', 'hong-kong', 5),
(6, 'Nháº­t Báº£n', 'nhat-ban', 6),
(7, 'Phim Má»¹', 'phim-my', 7),
(8, 'ThÃ¡i Lan', 'thai-lan', 8),
(9, 'Phim áº¤n Ä‘á»™', 'phim-an-do', 9),
(10, 'Phim PhÃ¡p', 'phim-phap', 10);

-- --------------------------------------------------------

--
-- Table structure for table `ipos_ep`
--

CREATE TABLE IF NOT EXISTS `ipos_ep` (
`epid` int(1) NOT NULL,
  `epname` varchar(120) NOT NULL,
  `epurl` varchar(255) NOT NULL,
  `error` tinyint(1) NOT NULL,
  `phimid` int(10) NOT NULL,
  `epsub` varchar(255) NOT NULL,
  `server` int(10) NOT NULL,
  `epdemo` varchar(255) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3388 ;

--
-- Dumping data for table `ipos_ep`
--

INSERT INTO `ipos_ep` (`epid`, `epname`, `epurl`, `error`, `phimid`, `epsub`, `server`, `epdemo`) VALUES
(38, '10', 'http://tv.zing.vn/video/Magic-Kaito-Tap-10/IWZ9ACOW.html', 0, 9, '', 0, ''),
(36, '8', 'http://tv.zing.vn/video/Magic-Kaito-Tap-8-Bi-Mat-Cua-Vien-Ngoc-Giot-Le-Do/IWZ98DOW.html', 0, 9, '', 0, ''),
(37, '9', 'http://tv.zing.vn/video/Magic-Kaito-Tap-9-Ma-Nu-Tham-Tu-Va-Sieu-Dao-Chich/IWZ98DOO.html', 0, 9, '', 0, ''),
(35, '7', 'http://tv.zing.vn/video/Magic-Kaito-Tap-7-Doi-Thu-Nguy-Hiem-Nhat/IWZ98DOI.html', 0, 9, '', 0, ''),
(1030, '8', 'http://clip.vn/embed/OHu5', 0, 63, '', 0, ''),
(19, '1', 'http://tv.zing.vn/video/Magic-Kaito-Tap-1/IWZ98DWO.html', 0, 9, '', 0, ''),
(30, '2', 'http://tv.zing.vn/video/Magic-Kaito-Tap-2-Ngay-Hen-Ban-Ron-Cua-Kaitou-Kid/IWZ98DWB.html', 0, 9, '', 0, ''),
(31, '3', 'http://tv.zing.vn/video/Magic-Kaito-Tap-3-Cong-Chua-Thich-Ao-Thuat/IWZ98DWD.html', 0, 9, '', 0, ''),
(32, '4', 'http://tv.zing.vn/video/Magic-Kaito-Tap-4-Phu-Thuy-Vo-Le/IWZ98DWE.html', 0, 9, '', 0, ''),
(33, '5', 'http://tv.zing.vn/video/Magic-Kaito-Tap-5-Blue-Birthday-Dinh-Menh/IWZ98DWF.html', 0, 9, '', 0, ''),
(34, '6', 'http://tv.zing.vn/video/Magic-Kaito-Tap-6-Le-Giang-Sinh-Thu-Vi-O-Khu-Truot-Tuyet/IWZ98DO0.html', 0, 9, '', 0, ''),
(1031, '9', 'http://clip.vn/embed/OHu6', 0, 63, '', 0, ''),
(39, 'Äáº§y Äá»§', 'http://www.youtube.com/watch?v=IkKgxiRIZuo', 0, 10, '', 0, ''),
(41, '1', 'http://www.youtube.com/watch?v=WPGoO_aJKJM', 0, 11, '', 0, ''),
(42, '1', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-1-Tap-1-Noc-Doc-Cua-Bo-Cap/IWZ96CEE.html', 0, 12, '', 0, ''),
(43, '2', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-1-Tap-2-Cong-Chua-Va-Po/IWZ96CEF.html', 0, 12, '', 0, ''),
(44, '3', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-1-Tap-3-Tinh-Huong-Rac-Roi/IWZ96CF0.html', 0, 12, '', 0, ''),
(45, '4', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-1-Tap-4-Phan-Ung-Day-Chuyen/IWZ96CFI.html', 0, 12, '', 0, ''),
(46, '5', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-1-Tap-5-Ngon-Nghe-Xao-Dong-Long-Nguoi/IWZ96CFW.html', 0, 12, '', 0, ''),
(47, '1', 'http://clip.vn/embed/OTxd', 0, 15, 'upload/2013/03/30/subtitle/47.srt', 0, ''),
(261, '1', 'http://clip.vn/embed/OYbp', 0, 38, '', 0, ''),
(262, '2', 'http://clip.vn/embed/OYbi', 0, 38, '', 0, ''),
(263, '3', 'http://clip.vn/embed/OYb0', 0, 38, '', 0, ''),
(264, '1', 'http://clip.vn/embed/OYA3', 0, 39, '', 0, ''),
(265, '2', 'http://clip.vn/embed/OYAg', 0, 39, '', 0, ''),
(266, '3', 'http://clip.vn/embed/OYAp', 0, 39, '', 0, ''),
(267, '1', 'http://clip.vn/embed/OPuP', 0, 40, '', 0, ''),
(268, '1', 'http://clip.vn/embed/OUEP', 0, 41, '', 0, ''),
(269, '2', 'http://clip.vn/embed/OUEC', 0, 41, '', 0, ''),
(270, '3', 'http://clip.vn/embed/OUE7', 0, 41, '', 0, ''),
(271, '4', 'http://clip.vn/embed/OUEH', 0, 41, '', 0, ''),
(272, '5', 'http://clip.vn/embed/OUjW', 0, 41, '', 0, ''),
(273, '6', 'http://clip.vn/embed/OUjD', 0, 41, '', 0, ''),
(274, '7', 'http://clip.vn/embed/OUjO', 0, 41, '', 0, ''),
(275, '8', 'http://clip.vn/embed/OUjR', 0, 41, '', 0, ''),
(56, '6', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-1-Tap-6-Ca-Sau-Tot-Hay-Xau/IWZ96CFO.html', 0, 12, '', 0, ''),
(57, '7', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-1-Tap-7-Que-Huong-Anh-Hung/IWZ96CFU.html', 0, 12, '', 0, ''),
(58, '8', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-1-Tap-8-Gau-Truc-Kham-Pha-Nha-Tu/IWZ96CFZ.html', 0, 12, '', 0, ''),
(59, '9', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-1-Tap-9-Nguy-Hiem-Rinh-Rap/IWZ96CF6.html', 0, 12, '', 0, ''),
(60, '10', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-1-Tap-10-Po-Dang-Trach/IWZ96CF7.html', 0, 12, '', 0, ''),
(61, '11', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-1-Tap-11-Anh-Mat-Phan-No/IWZ96CF8.html', 0, 12, '', 0, ''),
(62, '12', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-1-Tap-12-Su-Tra-Thu-Cua-Rhino/IWZ96CF9.html', 0, 12, '', 0, ''),
(63, '13', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-1-Tap-13-Su-Phu-Ping/IWZ96CFA.html', 0, 12, '', 0, ''),
(64, '14', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-1-Tap-14-Hon-Ma-O-Oogway/IWZ96CFB.html', 0, 12, '', 0, ''),
(65, '15', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-1-Tap-15-Cau-Be-Vo-Thuat/IWZ96CFC.html', 0, 12, '', 0, ''),
(66, '16', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-1-Tap-16-Nhung-Quy-Ba-Mo-Am/IWZ96CFD.html', 0, 12, '', 0, ''),
(67, '17', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-1-Tap-17-Po-Tai-Nang/IWZ96CFE.html', 0, 12, '', 0, ''),
(68, '18', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-1-Tap-18-Nguoi-Ham-Mo-Bo-Roi/IWZ96CFF.html', 0, 12, '', 0, ''),
(69, '19', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-1-Tap-19-Ngay-Thu-Thach/IWZ96D00.html', 0, 12, '', 0, ''),
(70, '20', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-1-Tap-20-So-Thich-Cua-Yao/IWZ96D0I.html', 0, 12, '', 0, ''),
(71, '21', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-1-Tap-21-Voi-Nguoi-Gia/IWZ978ZO.html', 0, 12, '', 0, ''),
(72, '22', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-1-Tap-22-Da-La-Anh-Hung/IWZ978ZU.html', 0, 12, '', 0, ''),
(73, '23', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-1-Tap-23-Vet-Can-Tinh-Yeu/IWZ978ZZ.html', 0, 12, '', 0, ''),
(74, '24', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-1-Tap-24-Dai-Sanh-Cua-Lame/IWZ978Z6.html', 0, 12, '', 0, ''),
(75, '25', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-1-Tap-25-Ke-Chu-Muu/IWZ9798B.html', 0, 12, '', 0, ''),
(76, '26', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-1-Tap-26-End-Choi-Voi-Nha-Khi/IWZ9798C.html', 0, 12, '', 0, ''),
(79, '1', 'http://www.youtube.com/watch?v=T1x9VnyrlZM', 0, 18, '', 0, ''),
(78, 'Äáº§y Ä‘á»§', 'http://www.youtube.com/watch?v=NXjtH6OI35o', 0, 17, '', 0, ''),
(80, '1', 'https://picasaweb.google.com/lh/photo/dZY_8Cs2shcXOh5DVuuOAdMTjNZETYmyPJy0liipFm0', 0, 19, 'upload/2013/03/29/subtitle/80.srt', 0, ''),
(81, '1', 'http://www.youtube.com/watch?v=_E4xNk68Fe8', 0, 20, '', 0, ''),
(82, '2', 'http://www.youtube.com/watch?v=xmVRDykG_Yk', 0, 20, '', 0, ''),
(83, '3', 'http://www.youtube.com/watch?v=vJUZrgBcmiQ', 0, 20, '', 0, ''),
(84, '1', 'http://tv.zing.vn/video/Tuyen-Tap-Phim-Ngan-Cua-Pixar-Tap-1-The-Adventures-of-Andre-and-Wally-B/IWZ987IE.html', 0, 21, '', 0, ''),
(85, '2', 'http://tv.zing.vn/video/Tuyen-Tap-Phim-Ngan-Cua-Pixar-Tap-2-Luxo-Jr/IWZ987IF.html', 0, 21, '', 0, ''),
(86, '3', 'http://tv.zing.vn/video/Tuyen-Tap-Phim-Ngan-Cua-Pixar-Tap-3-Red-s-Dream/IWZ987W0.html', 0, 21, '', 0, ''),
(87, '4', 'http://tv.zing.vn/video/Tuyen-Tap-Phim-Ngan-Cua-Pixar-Tap-4-Tin-Toy/IWZ987WI.html', 0, 21, '', 0, ''),
(88, '5', 'http://tv.zing.vn/video/Tuyen-Tap-Phim-Ngan-Cua-Pixar-Tap-5-Knick-Knack/IWZ987WW.html', 0, 21, '', 0, ''),
(89, '6', 'http://tv.zing.vn/video/Tuyen-Tap-Phim-Ngan-Cua-Pixar-Tap-6-Geri-s-Game/IWZ987WO.html', 0, 21, '', 0, ''),
(90, '7', 'http://tv.zing.vn/video/Tuyen-Tap-Phim-Ngan-Cua-Pixar-Tap-7-For-the-Birds/IWZ987WU.html', 0, 21, '', 0, ''),
(91, '8', 'http://tv.zing.vn/video/Tuyen-Tap-Phim-Ngan-Cua-Pixar-Tap-8-Mike-s-New-Car/IWZ987WZ.html', 0, 21, '', 0, ''),
(92, '9', 'http://tv.zing.vn/video/Tuyen-Tap-Phim-Ngan-Cua-Pixar-Tap-9-Boundin/IWZ987W6.html', 0, 21, '', 0, ''),
(93, '10', 'http://tv.zing.vn/video/Tuyen-Tap-Phim-Ngan-Cua-Pixar-Tap-10-JackJack-Attack/IWZ987W7.html', 0, 21, '', 0, ''),
(94, '11', 'http://tv.zing.vn/video/Tuyen-Tap-Phim-Ngan-Cua-Pixar-Tap-11-Mater-and-the-Ghostlight/IWZ987W8.html', 0, 21, '', 0, ''),
(95, '12', 'http://tv.zing.vn/video/Tuyen-Tap-Phim-Ngan-Cua-Pixar-Tap-12-Lifted/IWZ987W9.html', 0, 21, '', 0, ''),
(96, '13', 'http://tv.zing.vn/video/Tuyen-Tap-Phim-Ngan-Cua-Pixar-Tap-13-BURNE/IWZ987WA.html', 0, 21, '', 0, ''),
(97, '14', 'http://tv.zing.vn/video/Tuyen-Tap-Phim-Ngan-Cua-Pixar-Tap-14-Presto/IWZ987WB.html', 0, 21, '', 0, ''),
(98, '15', 'http://tv.zing.vn/video/Tuyen-Tap-Phim-Ngan-Cua-Pixar-Tap-15-Dug-s-Special-Mission/IWZ987WC.html', 0, 21, '', 0, ''),
(99, '16', 'http://tv.zing.vn/video/Tuyen-Tap-Phim-Ngan-Cua-Pixar-Tap-16-Partly-Cloudy/IWZ987WD.html', 0, 21, '', 0, ''),
(100, '17', 'http://tv.zing.vn/video/Tuyen-Tap-Phim-Ngan-Cua-Pixar-Tap-17-Day-Night/IWZ987WF.html', 0, 21, '', 0, ''),
(101, '18', 'http://tv.zing.vn/video/Tuyen-Tap-Phim-Ngan-Cua-Pixar-Tap-18-La-Luna/IWZ9976O.html', 0, 21, '', 0, ''),
(102, '19', 'http://tv.zing.vn/video/Tuyen-Tap-Phim-Ngan-Cua-Pixar-Tap-19-Your-Friend-The-Rat/IWZ9978A.html', 0, 21, '', 0, ''),
(103, '20', 'http://tv.zing.vn/video/Tuyen-Tap-Phim-Ngan-Cua-Pixar-Tangled-Ever-After/IWZ9AA9Z.html', 0, 21, '', 0, ''),
(104, '21', 'http://tv.zing.vn/video/Tuyen-Tap-Phim-Ngan-Cua-Pixar-The-Legend-of-Mor-du/IWZ9B60C.html', 0, 21, '', 0, ''),
(105, '1', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-2-Tap-1-Ngay-Trong-Tre/IWZ9AU88.html', 0, 22, '', 0, ''),
(106, '2', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-2-Tap-2-Noi-Dau-Hoang-Toc/IWZ9AU89.html', 0, 22, '', 0, ''),
(107, '3', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-2-Tap-3-Po-Nguy-Hiem-Nhat/IWZ9AU8A.html', 0, 22, '', 0, ''),
(108, '4', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-2-Tap-4-Ma-Po/IWZ9AU9C.html', 0, 22, '', 0, ''),
(109, '5', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-2-Tap-5-Vo-Giay/IWZ9AU9D.html', 0, 22, '', 0, ''),
(110, '6', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-2-Tap-6-Tam-Tu-Ke-Thu/IWZ9AU9E.html', 0, 22, '', 0, ''),
(111, '7', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-2-Tap-7-Nhap-Hoi-Rong/IWZ9AZ9B.html', 0, 22, '', 0, ''),
(112, '8', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-2-Tap-8-Su-Phu-va-Gau-Truc/IWZ9AZUB.html', 0, 22, '', 0, ''),
(113, '9', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-2-Tap-9-Shifus-Tro-Lai/IWZ9AZUC.html', 0, 22, '', 0, ''),
(114, '10', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-2-Tap-10-Hien-Tai/IWZ9AEBE.html', 0, 22, '', 0, ''),
(115, '11', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-2-Tap-11-Ke-Khung-Bo-Gom/IWZ9AEBF.html', 0, 22, '', 0, ''),
(116, '12', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-2-Tap-12-Qua-cau-than-linh-cua-Su-phu-Ding/IWZ9AFWE.html', 0, 22, '', 0, ''),
(117, '13', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-2-Tap-13-Maltese-Mantis/IWZ9AFBI.html', 0, 22, '', 0, ''),
(118, '14', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-2-Tap-14-Danh-Cho-Khach-Moi/IWZ9AFWF.html', 0, 22, '', 0, ''),
(119, '15', 'http://tv.zing.vn/video/Kung-Fu-Panda-Legends-of-Awesomeness-Season-2-Tap-15-Ke-La-Mat-Luc-Nua-Dem/IWZ9AEC0.html', 0, 22, '', 0, ''),
(521, '75', 'http://clip.vn/embed/OUlj', 0, 41, '', 0, ''),
(520, '74', 'http://clip.vn/embed/OUlg', 0, 41, '', 0, ''),
(519, '73', 'http://clip.vn/embed/OUl3', 0, 41, '', 0, ''),
(518, '72', 'http://clip.vn/embed/OUlF', 0, 41, '', 0, ''),
(517, '71', 'http://clip.vn/embed/OUlV', 0, 41, '', 0, ''),
(516, '70', 'http://clip.vn/embed/OUlz', 0, 41, '', 0, ''),
(515, '69', 'http://clip.vn/embed/OUl_', 0, 41, '', 0, ''),
(514, '68', 'http://clip.vn/embed/OUYr', 0, 41, '', 0, ''),
(513, '67', 'http://clip.vn/embed/OUY4', 0, 41, '', 0, ''),
(512, '66', 'http://clip.vn/embed/OUYq', 0, 41, '', 0, ''),
(511, '65', 'http://clip.vn/embed/OUYc', 0, 41, '', 0, ''),
(510, '64', 'http://clip.vn/embed/OUYb', 0, 41, '', 0, ''),
(509, '63', 'http://clip.vn/embed/OUYN', 0, 41, '', 0, ''),
(508, '62', 'http://clip.vn/embed/OUYo', 0, 41, '', 0, ''),
(507, '61', 'http://clip.vn/embed/OUYf', 0, 41, '', 0, ''),
(506, '60', 'http://clip.vn/embed/OUYw', 0, 41, '', 0, ''),
(505, '59', 'http://clip.vn/embed/OUYn', 0, 41, '', 0, ''),
(504, '58', 'http://clip.vn/embed/OUYQ', 0, 41, '', 0, ''),
(503, '57', 'http://clip.vn/embed/OUY9', 0, 41, '', 0, ''),
(1003, '9', 'http://clip.vn/embed/OHfj', 0, 44, '', 0, ''),
(1001, '7', 'http://clip.vn/embed/OHfy', 0, 44, '', 0, ''),
(1002, '8', 'http://clip.vn/embed/OHfI', 0, 44, '', 0, ''),
(1000, '6', 'http://clip.vn/embed/OHf2', 0, 44, '', 0, ''),
(998, '4', 'http://clip.vn/embed/OrM2', 0, 44, '', 0, ''),
(999, '5', 'http://clip.vn/embed/OrMR', 0, 44, '', 0, ''),
(997, '3', 'http://clip.vn/embed/OrMD', 0, 44, '', 0, ''),
(995, '1', 'http://clip.vn/embed/OHMA', 0, 44, '', 0, ''),
(996, '2', 'http://clip.vn/embed/OrMO', 0, 44, '', 0, ''),
(145, '1', 'http://www.youtube.com/watch?v=rC8N2-XSu5s', 0, 25, '', 0, ''),
(146, '2', 'http://www.youtube.com/watch?v=i7wD3-C2Q5I', 0, 25, '', 0, ''),
(147, '3', 'http://www.youtube.com/watch?v=sHXEB-JT1rs', 0, 25, '', 0, ''),
(148, '4', 'http://www.youtube.com/watch?v=HN9YG-Q9Vhg', 0, 25, '', 0, ''),
(149, '5', 'http://www.youtube.com/watch?v=YPBz_XBU6MI', 0, 25, '', 0, ''),
(150, '6', 'http://www.youtube.com/watch?v=K47yMUPOiRI', 0, 25, '', 0, ''),
(151, '7', 'http://www.youtube.com/watch?v=kSG2UoY3n50', 0, 25, '', 0, ''),
(153, '1', 'http://video.zing.vn/video/clip/Giai-Cuu-Binh-Nhi-Ryan-01.220156.html', 0, 26, '', 0, ''),
(154, '2', 'http://video.zing.vn/video/clip/Giai-Cuu-Binh-Nhi-Ryan-02.220157.html', 0, 26, '', 0, ''),
(155, '3', 'http://video.zing.vn/video/clip/Giai-Cuu-Binh-Nhi-Ryan-03.220158.html', 0, 26, '', 0, ''),
(156, '4', 'http://video.zing.vn/video/clip/Giai-Cuu-Binh-Nhi-Ryan-04.220160.html', 0, 26, '', 0, ''),
(157, '5', 'http://video.zing.vn/video/clip/Giai-Cuu-Binh-Nhi-Ryan-05.220161.html', 0, 26, '', 0, ''),
(158, '6', 'http://video.zing.vn/video/clip/Giai-Cuu-Binh-Nhi-Ryan-06.220162.html', 0, 26, '', 0, ''),
(159, '7', 'http://video.zing.vn/video/clip/Giai-Cuu-Binh-Nhi-Ryan-07.220163.html', 0, 26, '', 0, ''),
(160, '8', 'http://video.zing.vn/video/clip/Giai-Cuu-Binh-Nhi-Ryan-08.220164.html', 0, 26, '', 0, ''),
(161, '9', 'http://video.zing.vn/video/clip/Giai-Cuu-Binh-Nhi-Ryan-09.220165.html', 0, 26, '', 0, ''),
(162, '10', 'http://video.zing.vn/video/clip/Giai-Cuu-Binh-Nhi-Ryan-10.220166.html', 0, 26, '', 0, ''),
(163, '11', 'http://video.zing.vn/video/clip/Giai-Cuu-Binh-Nhi-Ryan-11.220167.html', 0, 26, '', 0, ''),
(164, '12', 'http://video.zing.vn/video/clip/Giai-Cuu-Binh-Nhi-Ryan-12.220168.html', 0, 26, '', 0, ''),
(165, '13', 'http://video.zing.vn/video/clip/Giai-Cuu-Binh-Nhi-Ryan-13.220169.html', 0, 26, '', 0, ''),
(166, '14', 'http://video.zing.vn/video/clip/Giai-Cuu-Binh-Nhi-Ryan-14.220170.html', 0, 26, '', 0, ''),
(167, '15', 'http://video.zing.vn/video/clip/Giai-Cuu-Binh-Nhi-Ryan-15.220171.html', 0, 26, '', 0, ''),
(168, '16', 'http://video.zing.vn/video/clip/Giai-Cuu-Binh-Nhi-Ryan-16.220172.html', 0, 26, '', 0, ''),
(169, '17', 'http://video.zing.vn/video/clip/Giai-Cuu-Binh-Nhi-Ryan-17--Het.220173.html', 0, 26, '', 0, ''),
(170, '1', 'http://tv.zing.vn/video/Huong-Mua-He-/IWZ9AA8B.html', 0, 27, '', 0, ''),
(171, '2', 'http://tv.zing.vn/video/Huong-Mua-He-Tap-2/IWZ9AA8C.html', 0, 27, '', 0, ''),
(172, '3', 'http://tv.zing.vn/video/Huong-Mua-He-Tap-3/IWZ9AA9W.html', 0, 27, '', 0, ''),
(173, '4', 'http://tv.zing.vn/video/Huong-Mua-He-Tap-4/IWZ9AA9O.html', 0, 27, '', 0, ''),
(174, '5', 'http://tv.zing.vn/video/Huong-Mua-He-Tap-5/IWZ9BIU0.html', 0, 27, '', 0, ''),
(175, '6', 'http://tv.zing.vn/video/Huong-Mua-He-Tap-6/IWZ9BIOF.html', 0, 27, '', 0, ''),
(176, '7', 'http://tv.zing.vn/video/Huong-Mua-He-Tap-7/IWZ9BID8.html', 0, 27, '', 0, ''),
(177, '8', 'http://tv.zing.vn/video/Huong-Mua-He-Tap-8/IWZ9BOB9.html', 0, 27, '', 0, ''),
(178, '9', 'http://tv.zing.vn/video/Huong-Mua-He-Tap-9/IWZ9BIUI.html', 0, 27, '', 0, ''),
(179, '10', 'http://tv.zing.vn/video/Huong-Mua-He-Tap-10/IWZ9BIUW.html', 0, 27, '', 0, ''),
(180, '11', 'http://tv.zing.vn/video/Huong-Mua-He-Tap-11/IWZ9BIUO.html', 0, 27, '', 0, ''),
(181, '12', 'http://tv.zing.vn/video/Huong-Mua-He-Tap-12/IWZ9BIUU.html', 0, 27, '', 0, ''),
(182, '13', 'http://tv.zing.vn/video/Huong-Mua-He-Tap-13/IWZ9BIUZ.html', 0, 27, '', 0, ''),
(183, '14', 'http://tv.zing.vn/video/Huong-Mua-He-Tap-14/IWZ9BIU6.html', 0, 27, '', 0, ''),
(184, '15', 'http://tv.zing.vn/video/Huong-Mua-He-Tap-15/IWZ9BIU7.html', 0, 27, '', 0, ''),
(185, '16', 'http://tv.zing.vn/video/Huong-Mua-He-Tap-16/IWZ9BIU8.html', 0, 27, '', 0, ''),
(186, '1', 'http://tv.zing.vn/video/Akkanee-s-Heart-/IWZ96FFD.html', 0, 28, '', 0, ''),
(187, '2', 'http://tv.zing.vn/video/Akkanee-s-Heart-Tap-2/IWZ96FFE.html', 0, 28, '', 0, ''),
(188, '3', 'http://tv.zing.vn/video/Akkanee-s-Heart-Tap-3/IWZ97007.html', 0, 28, '', 0, ''),
(189, '4', 'http://tv.zing.vn/video/Akkanee-s-Heart-Tap-4/IWZ97008.html', 0, 28, '', 0, ''),
(190, '5', 'http://tv.zing.vn/video/Akkanee-s-Heart-Tap-5/IWZ9700A.html', 0, 28, '', 0, ''),
(191, '6', 'http://tv.zing.vn/video/Akkanee-s-Heart-Tap-6/IWZ9700B.html', 0, 28, '', 0, ''),
(192, '7', 'http://tv.zing.vn/video/Akkanee-s-Heart-Tap-7/IWZ9700F.html', 0, 28, '', 0, ''),
(193, '8', 'http://tv.zing.vn/video/Akkanee-s-Heart-Tap-8/IWZ9700C.html', 0, 28, '', 0, ''),
(194, '9', 'http://tv.zing.vn/video/Akkanee-s-Heart-Tap-9/IWZ9700D.html', 0, 28, '', 0, ''),
(195, '10', 'http://tv.zing.vn/video/Akkanee-s-Heart-Tap-10-End/IWZ9700E.html', 0, 28, '', 0, ''),
(196, '1', 'http://tv.zing.vn/video/Chien-Tranh-Giua-Cac-Vi-Sao-/IWZ9AUI8.html', 0, 29, '', 0, ''),
(197, '2', 'http://tv.zing.vn/video/Chien-Tranh-Giua-Cac-Vi-Sao-Tap-2/IWZ9AUI9.html', 0, 29, '', 0, ''),
(198, '3', 'http://tv.zing.vn/video/Chien-Tranh-Giua-Cac-Vi-Sao-Tap-3/IWZ9AUIA.html', 0, 29, '', 0, ''),
(199, '4', 'http://tv.zing.vn/video/Chien-Tranh-Giua-Cac-Vi-Sao-Tap-4/IWZ9AUIB.html', 0, 29, '', 0, ''),
(200, '5', 'http://tv.zing.vn/video/Chien-Tranh-Giua-Cac-Vi-Sao-Tap-5/IWZ9AUAU.html', 0, 29, '', 0, ''),
(201, '6', 'http://tv.zing.vn/video/Chien-Tranh-Giua-Cac-Vi-Sao-Tap-6/IWZ9AUAZ.html', 0, 29, '', 0, ''),
(202, '7', 'http://tv.zing.vn/video/Chien-Tranh-Giua-Cac-Vi-Sao-Tap-7/IWZ9AUA6.html', 0, 29, '', 0, ''),
(203, '8', 'http://tv.zing.vn/video/Chien-Tranh-Giua-Cac-Vi-Sao-Tap-8/IWZ9AUA7.html', 0, 29, '', 0, ''),
(204, '9', 'http://tv.zing.vn/video/Chien-Tranh-Giua-Cac-Vi-Sao-Tap-9/IWZ9AUA8.html', 0, 29, '', 0, ''),
(205, '10', 'http://tv.zing.vn/video/Chien-Tranh-Giua-Cac-Vi-Sao-Tap-10/IWZ9AUA9.html', 0, 29, '', 0, ''),
(206, '11', 'http://tv.zing.vn/video/Chien-Tranh-Giua-Cac-Vi-Sao-Tap-11/IWZ9A997.html', 0, 29, '', 0, ''),
(207, '12', 'http://tv.zing.vn/video/Chien-Tranh-Giua-Cac-Vi-Sao-Tap-12/IWZ9A999.html', 0, 29, '', 0, ''),
(208, '13', 'http://tv.zing.vn/video/Chien-Tranh-Giua-Cac-Vi-Sao-Tap-13/IWZ9ADWO.html', 0, 29, '', 0, ''),
(209, '14', 'http://tv.zing.vn/video/Chien-Tranh-Giua-Cac-Vi-Sao-Tap-14/IWZ9A99C.html', 0, 29, '', 0, ''),
(210, '15', 'http://tv.zing.vn/video/Chien-Tranh-Giua-Cac-Vi-Sao-Tap-15/IWZ9A99D.html', 0, 29, '', 0, ''),
(211, '16', 'http://tv.zing.vn/video/Chien-Tranh-Giua-Cac-Vi-Sao-Tap-16/IWZ9B670.html', 0, 29, '', 0, ''),
(212, '17', 'http://tv.zing.vn/video/Chien-Tranh-Giua-Cac-Vi-Sao-Tap-17/IWZ9B67I.html', 0, 29, '', 0, ''),
(213, '1', 'http://tv.zing.vn/video/Goong-Hoang-Cung-/IWZ9ACEI.html', 0, 30, '', 0, ''),
(214, '2', 'http://tv.zing.vn/video/Goong-Hoang-Cung-Tap-2/IWZ9ADBA.html', 0, 30, '', 0, ''),
(215, '3', 'http://tv.zing.vn/video/Goong-Hoang-Cung-Tap-3/IWZ9AEUU.html', 0, 30, '', 0, ''),
(216, '4', 'http://tv.zing.vn/video/Goong-Hoang-Cung-Tap-4/IWZ9AFU8.html', 0, 30, '', 0, ''),
(217, '5', 'http://tv.zing.vn/video/Goong-Hoang-Cung-Tap-5/IWZ9B0ID.html', 0, 30, '', 0, ''),
(218, '6', 'http://tv.zing.vn/video/Goong-Hoang-Cung-Tap-6/IWZ9BIW8.html', 0, 30, '', 0, ''),
(219, '7', 'http://tv.zing.vn/video/Goong-Hoang-Cung-Tap-7/IWZ9BIU9.html', 0, 30, '', 0, ''),
(220, '8', 'http://tv.zing.vn/video/Goong-Hoang-Cung-Tap-8/IWZ9BIUA.html', 0, 30, '', 0, ''),
(221, '9', 'http://tv.zing.vn/video/Goong-Hoang-Cung-Tap-9/IWZ9BIUB.html', 0, 30, '', 0, ''),
(222, '10', 'http://tv.zing.vn/video/Goong-Hoang-Cung-Tap-10/IWZ9BIUC.html', 0, 30, '', 0, ''),
(223, '11', 'http://tv.zing.vn/video/Goong-Hoang-Cung-Tap-11/IWZ9BIUD.html', 0, 30, '', 0, ''),
(224, '12', 'http://tv.zing.vn/video/Goong-Hoang-Cung-Tap-12/IWZ9BIUE.html', 0, 30, '', 0, ''),
(225, '13', 'http://tv.zing.vn/video/Goong-Hoang-Cung-Tap-13/IWZ9BIUF.html', 0, 30, '', 0, ''),
(226, '14', 'http://tv.zing.vn/video/Goong-Hoang-Cung-Tap-14/IWZ9BIZ0.html', 0, 30, '', 0, ''),
(227, '15', 'http://tv.zing.vn/video/Goong-Hoang-Cung-Tap-15/IWZ9BIZI.html', 0, 30, '', 0, ''),
(228, '16', 'http://tv.zing.vn/video/Goong-Hoang-Cung-Tap-16/IWZ9BOC0.html', 0, 30, '', 0, ''),
(229, '17', 'http://tv.zing.vn/video/Goong-Hoang-Cung-Tap-17/IWZ9BOC8.html', 0, 30, '', 0, ''),
(230, '1', 'http://clip.vn/embed/Or7F', 0, 31, '', 0, ''),
(231, '2', 'http://clip.vn/embed/Or7t', 0, 31, '', 0, ''),
(232, '3', 'http://clip.vn/embed/Or7u', 0, 31, '', 0, ''),
(233, '1', 'http://clip.vn/embed/O4pv', 0, 32, '', 0, ''),
(234, '2', 'http://clip.vn/embed/O4pS', 0, 32, '', 0, ''),
(235, '3', 'http://clip.vn/embed/O4pN', 0, 32, '', 0, ''),
(236, '1', 'http://www.youtube.com/watch?v=oZn0vy4mzNk', 0, 14, '', 0, ''),
(237, '1', 'http://clip.vn/embed/OHtU', 0, 33, '', 0, ''),
(238, '2', 'http://clip.vn/embed/OHtJ', 0, 33, '', 0, ''),
(239, '3', 'http://clip.vn/embed/OHtM', 0, 33, '', 0, ''),
(240, '1', 'http://clip.vn/embed/Os6f', 0, 34, '', 0, ''),
(241, '2', 'http://clip.vn/embed/OtWp', 0, 34, '', 0, ''),
(242, '3', 'http://clip.vn/embed/OXyn', 0, 34, '', 0, ''),
(243, '4', 'http://clip.vn/embed/OXyw', 0, 34, '', 0, ''),
(244, '5', 'http://clip.vn/embed/OwzS', 0, 34, '', 0, ''),
(245, '6', 'http://clip.vn/embed/OKzD', 0, 34, '', 0, ''),
(246, '7', 'http://clip.vn/embed/O8Gx', 0, 34, '', 0, ''),
(247, '8', 'http://clip.vn/embed/O8Gk', 0, 34, '', 0, ''),
(248, '9', 'http://clip.vn/embed/O8G-', 0, 34, '', 0, ''),
(249, '10', 'http://clip.vn/embed/O8pW', 0, 34, '', 0, ''),
(250, '11', 'http://clip.vn/embed/O4hL', 0, 34, '', 0, ''),
(251, '1', 'http://clip.vn/embed/OoJF', 0, 35, '', 0, ''),
(252, '2', 'http://clip.vn/embed/OoJg', 0, 35, '', 0, ''),
(253, '3', 'http://clip.vn/embed/OoJj', 0, 35, '', 0, ''),
(254, '4', 'http://clip.vn/embed/OoJp', 0, 35, '', 0, ''),
(255, '1', 'http://clip.vn/embed/OY40', 0, 36, '', 0, ''),
(256, '2', 'http://clip.vn/embed/OY4m', 0, 36, '', 0, ''),
(257, '3', 'http://clip.vn/embed/OY4i', 0, 36, '', 0, ''),
(258, '1', 'http://clip.vn/embed/OOBs', 0, 37, 'upload/2013/03/30/subtitle/258.srt', 0, ''),
(277, '10', 'http://clip.vn/embed/OUj1', 0, 41, '', 0, ''),
(276, '9', 'http://clip.vn/embed/OUje', 0, 41, '', 0, ''),
(1032, '10', 'http://clip.vn/embed/OHun', 0, 63, '', 0, ''),
(1029, '7', 'http://clip.vn/embed/OHu1', 0, 63, '', 0, ''),
(1028, '6', 'http://clip.vn/embed/OHTx', 0, 63, '', 0, ''),
(1027, '5', 'http://clip.vn/embed/OHTk', 0, 63, '', 0, ''),
(1026, '4', 'http://clip.vn/embed/OHTq', 0, 63, '', 0, ''),
(1025, '3', 'http://clip.vn/embed/OHTb', 0, 63, '', 0, ''),
(1024, '2', 'http://clip.vn/embed/OHTu', 0, 63, '', 0, ''),
(1023, '1', 'http://clip.vn/embed/OHax', 0, 63, '', 0, ''),
(1022, '11', 'http://clip.vn/embed/OHBI', 0, 62, '', 0, ''),
(1021, '10', 'http://clip.vn/embed/OHB1', 0, 62, '', 0, ''),
(1020, '9', 'http://clip.vn/embed/OHxB', 0, 62, '', 0, ''),
(1019, '8', 'http://clip.vn/embed/OHxY', 0, 62, '', 0, ''),
(1018, '7', 'http://clip.vn/embed/OHxc', 0, 62, '', 0, ''),
(1017, '6', 'http://clip.vn/embed/OHxb', 0, 62, '', 0, ''),
(1016, '5', 'http://clip.vn/embed/OHx8', 0, 62, '', 0, ''),
(1015, '4', 'http://clip.vn/embed/OHxK', 0, 62, '', 0, ''),
(1014, '3', 'http://clip.vn/embed/OHx6', 0, 62, '', 0, ''),
(1013, '2', 'http://clip.vn/embed/OHxQ', 0, 62, '', 0, ''),
(1012, '1', 'http://clip.vn/embed/OHxa', 0, 62, '', 0, ''),
(1011, '3', 'http://clip.vn/embed/O7x9', 0, 61, '', 0, ''),
(1010, '2', 'http://clip.vn/embed/O7xI', 0, 61, '', 0, ''),
(1009, '1', 'http://clip.vn/embed/O7xZ', 0, 61, '', 0, ''),
(1008, '14', 'http://clip.vn/embed/O4Dt', 0, 44, '', 0, ''),
(1007, '13', 'http://clip.vn/embed/OHfn', 0, 44, '', 0, ''),
(1006, '12', 'http://clip.vn/embed/OHft', 0, 44, '', 0, ''),
(1005, '11', 'http://clip.vn/embed/OHfs', 0, 44, '', 0, ''),
(1004, '10', 'http://clip.vn/embed/OHfQ', 0, 44, '', 0, ''),
(994, '22', 'http://clip.vn/embed/OrUQ', 0, 60, '', 0, ''),
(993, '21', 'http://clip.vn/embed/OrUa', 0, 60, '', 0, ''),
(992, '20', 'http://clip.vn/embed/Or6P', 0, 60, '', 0, ''),
(991, '19', 'http://clip.vn/embed/Or6E', 0, 60, '', 0, ''),
(990, '18', 'http://clip.vn/embed/Or6I', 0, 60, '', 0, ''),
(989, '17', 'http://clip.vn/embed/Or6R', 0, 60, '', 0, ''),
(988, '16', 'http://clip.vn/embed/Or6O', 0, 60, '', 0, ''),
(987, '15', 'http://clip.vn/embed/Or6D', 0, 60, '', 0, ''),
(986, '14', 'http://clip.vn/embed/Orfx', 0, 60, '', 0, ''),
(985, '13', 'http://clip.vn/embed/Or6W', 0, 60, '', 0, ''),
(984, '12', 'http://clip.vn/embed/OruQ', 0, 60, '', 0, ''),
(983, '11', 'http://clip.vn/embed/OrTr', 0, 60, '', 0, ''),
(982, '10', 'http://clip.vn/embed/O79R', 0, 60, '', 0, ''),
(981, '9', 'http://clip.vn/embed/O79g', 0, 60, '', 0, ''),
(980, '8', 'http://clip.vn/embed/O79t', 0, 60, '', 0, ''),
(979, '7', 'http://clip.vn/embed/O79f', 0, 60, '', 0, ''),
(978, '6', 'http://clip.vn/embed/O79S', 0, 60, '', 0, ''),
(977, '5', 'http://clip.vn/embed/O7CO', 0, 60, '', 0, ''),
(976, '4', 'http://clip.vn/embed/Orag', 0, 60, '', 0, ''),
(975, '3', 'http://clip.vn/embed/O7CD', 0, 60, '', 0, ''),
(974, '2', 'http://clip.vn/embed/O7CW', 0, 60, '', 0, ''),
(973, '1', 'http://clip.vn/embed/O70k', 0, 60, '', 0, ''),
(328, '1', 'http://clip.vn/embed/Oo5X', 0, 42, '', 0, ''),
(329, '2', 'http://clip.vn/embed/Oo5U', 0, 42, '', 0, ''),
(330, '3', 'http://clip.vn/embed/Oo5K', 0, 42, '', 0, ''),
(331, '4', 'http://clip.vn/embed/Oo5M', 0, 42, '', 0, ''),
(332, '1', 'http://clip.vn/embed/OrMQ', 0, 43, '', 0, ''),
(333, '2', 'http://clip.vn/embed/OrM6', 0, 43, '', 0, ''),
(334, '3', 'http://clip.vn/embed/OrMX', 0, 43, '', 0, ''),
(335, '1', 'http://clip.vn/embed/OHMA', 0, 44, '', 0, ''),
(336, '2', 'http://clip.vn/embed/OrMO', 0, 44, '', 0, ''),
(337, '3', 'http://clip.vn/embed/OrMD', 0, 44, '', 0, ''),
(338, '4', 'http://clip.vn/embed/OrM2', 0, 44, '', 0, ''),
(339, '5', 'http://clip.vn/embed/OrMR', 0, 44, '', 0, ''),
(340, '6', 'http://clip.vn/embed/OHf2', 0, 44, '', 0, ''),
(341, '7', 'http://clip.vn/embed/OHfy', 0, 44, '', 0, ''),
(342, '8', 'http://clip.vn/embed/OHfI', 0, 44, '', 0, ''),
(343, '9', 'http://clip.vn/embed/OHfj', 0, 44, '', 0, ''),
(344, '10', 'http://clip.vn/embed/OHfQ', 0, 44, '', 0, ''),
(345, '11', 'http://clip.vn/embed/OHfs', 0, 44, '', 0, ''),
(346, '12', 'http://clip.vn/embed/OHft', 0, 44, '', 0, ''),
(347, '13', 'http://clip.vn/embed/OHfn', 0, 44, '', 0, ''),
(348, '14', 'http://clip.vn/embed/O4Dt', 0, 44, '', 0, ''),
(349, '1', 'http://clip.vn/embed/h0It', 0, 45, '', 0, ''),
(350, '1', 'http://clip.vn/embed/OHyN', 0, 46, '', 0, ''),
(351, '2', 'http://clip.vn/embed/OHy8', 0, 46, '', 0, ''),
(352, '3', 'http://clip.vn/embed/OHyJ', 0, 46, '', 0, ''),
(353, '1', 'http://clip.vn/embed/OcTF', 0, 47, '', 0, ''),
(354, '2', 'http://clip.vn/embed/OcT3', 0, 47, '', 0, ''),
(355, '3', 'http://clip.vn/embed/OcTg', 0, 47, '', 0, ''),
(356, '1', 'http://clip.vn/embed/O7sx', 0, 48, '', 0, ''),
(357, '2', 'http://clip.vn/embed/O7sH', 0, 48, '', 0, ''),
(358, '3', 'http://clip.vn/embed/O7sB', 0, 48, '', 0, ''),
(359, '1', 'http://clip.vn/embed/O41y', 0, 49, '', 0, ''),
(360, '2', 'http://clip.vn/embed/O411', 0, 49, '', 0, ''),
(361, '3', 'http://clip.vn/embed/O41E', 0, 49, '', 0, ''),
(362, '4', 'http://clip.vn/embed/O41Z', 0, 49, '', 0, ''),
(363, '5', 'http://clip.vn/embed/O41i', 0, 49, '', 0, ''),
(364, '6', 'http://clip.vn/embed/O410', 0, 49, '', 0, ''),
(365, '7', 'http://clip.vn/embed/O41C', 0, 49, '', 0, ''),
(366, '8', 'http://clip.vn/embed/O41m', 0, 49, '', 0, ''),
(367, '11', 'http://www.youtube.com/watch?v=GjoU4-YETHA', 0, 9, '', 0, ''),
(368, '12', 'http://www.youtube.com/watch?v=1kBGSvl279Q', 0, 9, '', 0, ''),
(369, '1', 'http://clip.vn/embed/OrNZ', 0, 50, '', 0, ''),
(370, '2', 'http://clip.vn/embed/OrN9', 0, 50, '', 0, ''),
(371, '3', 'http://clip.vn/embed/OrNa', 0, 50, '', 0, ''),
(372, '4', 'http://clip.vn/embed/OrNu', 0, 50, '', 0, ''),
(373, '1', 'http://www.youtube.com/watch?v=IXKaQnHAMjU', 0, 51, '', 0, ''),
(374, '2', 'http://www.youtube.com/watch?v=QfWqR_MYVSQ', 0, 51, '', 0, ''),
(375, '3', 'http://www.youtube.com/watch?v=AjzOZUv3_30', 0, 51, '', 0, ''),
(376, '4', 'http://www.youtube.com/watch?v=AF1NVYXbeTk', 0, 51, '', 0, ''),
(377, '5', 'http://www.youtube.com/watch?v=rB5gEQvsjNA', 0, 51, '', 0, ''),
(378, '1', 'http://clip.vn/embed/OrNc', 0, 52, '', 0, ''),
(379, '2', 'http://clip.vn/embed/OrNq', 0, 52, '', 0, ''),
(380, '3', 'http://clip.vn/embed/OrNB', 0, 52, '', 0, ''),
(381, '18', 'http://tv.zing.vn/video/Chien-Tranh-Giua-Cac-Vi-Sao-Tap-18/IWZ9B67W.html', 0, 29, '', 0, ''),
(382, '19', 'http://tv.zing.vn/video/Chien-Tranh-Giua-Cac-Vi-Sao-Tap-19/IWZ9B67O.html', 0, 29, '', 0, ''),
(383, '1', 'http://tv.zing.vn/video/Scooby-Doo-13-Bong-Ma-Tap-1-Nhung-Con-Ma-Ca-Rong-Toi-Tung-Yeu/IWZ9AUCU.html', 0, 53, '', 0, ''),
(384, '2', 'http://tv.zing.vn/video/Scooby-Doo-13-Bong-Ma-Tap-2-Scoobra-Kadoobra/IWZ9AZ9C.html', 0, 53, '', 0, ''),
(385, '3', 'http://tv.zing.vn/video/Scooby-Doo-13-Bong-Ma-Tap-3-Toi-va-Bong-ma-cua-Toi/IWZ9AZ9D.html', 0, 53, '', 0, ''),
(386, '4', 'http://tv.zing.vn/video/Scooby-Doo-13-Bong-Ma-Tap-4-Bong-Ma-Trong-Guong/IWZ9A6UE.html', 0, 53, '', 0, ''),
(387, '5', 'http://tv.zing.vn/video/Scooby-Doo-13-Bong-Ma-Tap-5-Bo-phim-ma-quai/IWZ9A6UF.html', 0, 53, '', 0, ''),
(388, '6', 'http://tv.zing.vn/video/Scooby-Doo-13-Bong-Ma-Tap-6-Chuyen-Tau-Ma/IWZ9A6Z0.html', 0, 53, '', 0, ''),
(389, '7', 'http://tv.zing.vn/video/Scooby-Doo-13-Bong-Ma-Tap-7-Phap-Su-Ma-Thuat/IWZ9A6ZI.html', 0, 53, '', 0, ''),
(390, '8', 'http://tv.zing.vn/video/Scooby-Doo-13-Bong-Ma-Tap-8-Bo-3-phu-thuy/IWZ9A6ZW.html', 0, 53, '', 0, ''),
(391, '9', 'http://tv.zing.vn/video/Scooby-Doo-13-Bong-Ma-Tap-9-Ngoi-sao-ScoobyDoo/IWZ9A6F8.html', 0, 53, '', 0, ''),
(392, '10', 'http://tv.zing.vn/video/Scooby-Doo-13-Bong-Ma-Tap-10-But-than/IWZ9A6F6.html', 0, 53, '', 0, ''),
(393, '11', 'http://tv.zing.vn/video/Scooby-Doo-13-Bong-Ma-Tap-11-Nhung-Con-Ma-Tot-Bung/IWZ9AAUO.html', 0, 53, '', 0, ''),
(394, '12', 'http://tv.zing.vn/video/Scooby-Doo-13-Bong-Ma-Tap-12-Ganh-Xiec-Ma-Quai/IWZ9AAUI.html', 0, 53, '', 0, ''),
(395, '13', 'http://tv.zing.vn/video/Scooby-Doo-13-Bong-Ma-Tap-13-End-Chiec-Ruong-Ma-Quy/IWZ9AAUW.html', 0, 53, '', 0, ''),
(502, '56', 'http://clip.vn/embed/OUYC', 0, 41, '', 0, ''),
(500, '54', 'http://clip.vn/embed/OUYZ', 0, 41, '', 0, ''),
(501, '55', 'http://clip.vn/embed/OUYP', 0, 41, '', 0, ''),
(499, '53', 'http://clip.vn/embed/OUYG', 0, 41, '', 0, ''),
(497, '51', 'http://clip.vn/embed/OUYg', 0, 41, '', 0, ''),
(498, '52', 'http://clip.vn/embed/OUYE', 0, 41, '', 0, ''),
(496, '50', 'http://clip.vn/embed/OUnN', 0, 41, '', 0, ''),
(494, '48', 'http://clip.vn/embed/OUnM', 0, 41, '', 0, ''),
(495, '49', 'http://clip.vn/embed/OUnJ', 0, 41, '', 0, ''),
(492, '46', 'http://clip.vn/embed/OUnK', 0, 41, '', 0, ''),
(493, '47', 'http://clip.vn/embed/OUno', 0, 41, '', 0, ''),
(490, '44', 'http://clip.vn/embed/OUn6', 0, 41, '', 0, ''),
(491, '45', 'http://clip.vn/embed/OUnX', 0, 41, '', 0, ''),
(489, '43', 'http://clip.vn/embed/OUnQ', 0, 41, '', 0, ''),
(487, '41', 'http://clip.vn/embed/OUna', 0, 41, '', 0, ''),
(488, '42', 'http://clip.vn/embed/OUnu', 0, 41, '', 0, ''),
(486, '40', 'http://clip.vn/embed/OUn0', 0, 41, '', 0, ''),
(484, '38', 'http://clip.vn/embed/OUnL', 0, 41, '', 0, ''),
(485, '39', 'http://clip.vn/embed/OUni', 0, 41, '', 0, ''),
(483, '37', 'http://clip.vn/embed/OUnm', 0, 41, '', 0, ''),
(481, '35', 'http://clip.vn/embed/OUng', 0, 41, '', 0, ''),
(482, '36', 'http://clip.vn/embed/OUnp', 0, 41, '', 0, ''),
(444, '1', 'http://clip.vn/embed/OHwC', 0, 58, '', 0, ''),
(445, '2', 'http://clip.vn/embed/OHwP', 0, 58, '', 0, ''),
(446, '3', 'http://clip.vn/embed/OHwZ', 0, 58, '', 0, ''),
(447, '1', 'http://clip.vn/embed/OUEP', 0, 41, '', 0, ''),
(448, '2', 'http://clip.vn/embed/OUEC', 0, 41, '', 0, ''),
(449, '3', 'http://clip.vn/embed/OUE7', 0, 41, '', 0, ''),
(450, '4', 'http://clip.vn/embed/OUEH', 0, 41, '', 0, ''),
(451, '5', 'http://clip.vn/embed/OUjW', 0, 41, '', 0, ''),
(452, '6', 'http://clip.vn/embed/OUjD', 0, 41, '', 0, ''),
(453, '7', 'http://clip.vn/embed/OUjO', 0, 41, '', 0, ''),
(454, '8', 'http://clip.vn/embed/OUjR', 0, 41, '', 0, ''),
(455, '9', 'http://clip.vn/embed/OUje', 0, 41, '', 0, ''),
(456, '10', 'http://clip.vn/embed/OUj1', 0, 41, '', 0, ''),
(457, '11', 'http://clip.vn/embed/OUjy', 0, 41, '', 0, ''),
(458, '12', 'http://clip.vn/embed/OUjI', 0, 41, '', 0, ''),
(459, '13', 'http://clip.vn/embed/OUjE', 0, 41, '', 0, ''),
(460, '14', 'http://clip.vn/embed/OUj0', 0, 41, '', 0, ''),
(461, '15', 'http://clip.vn/embed/OUjp', 0, 41, '', 0, ''),
(462, '16', 'http://clip.vn/embed/OUji', 0, 41, '', 0, ''),
(463, '17', 'http://clip.vn/embed/OUjm', 0, 41, '', 0, ''),
(464, '18', 'http://clip.vn/embed/OUjL', 0, 41, '', 0, ''),
(465, '19', 'http://clip.vn/embed/OUjT', 0, 41, '', 0, ''),
(466, '20', 'http://clip.vn/embed/OUj5', 0, 41, '', 0, ''),
(467, '21', 'http://clip.vn/embed/OUXK', 0, 41, '', 0, ''),
(468, '22', 'http://clip.vn/embed/OUXM', 0, 41, '', 0, ''),
(469, '23', 'http://clip.vn/embed/OUXJ', 0, 41, '', 0, ''),
(470, '24', 'http://clip.vn/embed/OUX8', 0, 41, '', 0, ''),
(471, '25', 'http://clip.vn/embed/OUXb', 0, 41, '', 0, ''),
(472, '26', 'http://clip.vn/embed/OUXc', 0, 41, '', 0, ''),
(473, '27', 'http://clip.vn/embed/OUXx', 0, 41, '', 0, ''),
(474, '28', 'http://clip.vn/embed/OUX7', 0, 41, '', 0, ''),
(475, '29', 'http://clip.vn/embed/OUXH', 0, 41, '', 0, ''),
(476, '30', 'http://clip.vn/embed/OUXY', 0, 41, '', 0, ''),
(477, '31', 'http://clip.vn/embed/OUnR', 0, 41, '', 0, ''),
(478, '32', 'http://clip.vn/embed/OUnV', 0, 41, '', 0, ''),
(479, '33', 'http://clip.vn/embed/OUnF', 0, 41, '', 0, ''),
(480, '34', 'http://clip.vn/embed/OUn3', 0, 41, '', 0, ''),
(522, '76', 'http://clip.vn/embed/OUlu', 0, 41, '', 0, ''),
(523, '77', 'http://clip.vn/embed/OUlC', 0, 41, '', 0, ''),
(524, '78', 'http://clip.vn/embed/OUl9', 0, 41, '', 0, ''),
(525, '79', 'http://clip.vn/embed/OUla', 0, 41, '', 0, ''),
(526, '80', 'http://clip.vn/embed/OUlQ', 0, 41, '', 0, ''),
(527, '81', 'http://clip.vn/embed/OUld', 0, 41, '', 0, ''),
(528, '82', 'http://clip.vn/embed/OUlf', 0, 41, '', 0, ''),
(529, '83', 'http://clip.vn/embed/OUlB', 0, 41, '', 0, ''),
(530, '84', 'http://clip.vn/embed/OUlA', 0, 41, '', 0, ''),
(531, '85', 'http://clip.vn/embed/OUq_', 0, 41, '', 0, ''),
(532, '86', 'http://clip.vn/embed/OUqI', 0, 41, '', 0, ''),
(533, '87', 'http://clip.vn/embed/OUq1', 0, 41, '', 0, ''),
(534, '88', 'http://clip.vn/embed/OUqE', 0, 41, '', 0, ''),
(535, '89', 'http://clip.vn/embed/OUqG', 0, 41, '', 0, ''),
(536, '90', 'http://clip.vn/embed/OUqZ', 0, 41, '', 0, ''),
(537, '91', 'http://clip.vn/embed/OUqf', 0, 41, '', 0, ''),
(538, '92', 'http://clip.vn/embed/OUqK', 0, 41, '', 0, ''),
(539, '93', 'http://clip.vn/embed/OUqo', 0, 41, '', 0, ''),
(540, '94', 'http://clip.vn/embed/OUqN', 0, 41, '', 0, ''),
(541, '95', 'http://clip.vn/embed/OUqS', 0, 41, '', 0, ''),
(542, '96', 'http://clip.vn/embed/OUqx', 0, 41, '', 0, ''),
(543, '97', 'http://clip.vn/embed/OUqk', 0, 41, '', 0, ''),
(544, '98', 'http://clip.vn/embed/OUq4', 0, 41, '', 0, ''),
(545, '99', 'http://clip.vn/embed/OUq-', 0, 41, '', 0, ''),
(546, '100', 'http://clip.vn/embed/OU7W', 0, 41, '', 0, ''),
(547, '101', 'http://clip.vn/embed/OUrb', 0, 41, '', 0, ''),
(548, '102', 'http://clip.vn/embed/OUrc', 0, 41, '', 0, ''),
(549, '103', 'http://clip.vn/embed/OUrq', 0, 41, '', 0, ''),
(550, '104', 'http://clip.vn/embed/OUrY', 0, 41, '', 0, ''),
(551, '105', 'http://clip.vn/embed/OUrr', 0, 41, '', 0, ''),
(552, '106', 'http://clip.vn/embed/OUH_', 0, 41, '', 0, ''),
(553, '107', 'http://clip.vn/embed/OUHe', 0, 41, '', 0, ''),
(554, '108', 'http://clip.vn/embed/OUHz', 0, 41, '', 0, ''),
(555, '109', 'http://clip.vn/embed/OUHh', 0, 41, '', 0, ''),
(556, '110', 'http://clip.vn/embed/OUH2', 0, 41, '', 0, ''),
(557, '111', 'http://clip.vn/embed/OUHF', 0, 41, '', 0, ''),
(558, '112', 'http://clip.vn/embed/OUHI', 0, 41, '', 0, ''),
(559, '113', 'http://clip.vn/embed/OUHy', 0, 41, '', 0, ''),
(560, '114', 'http://clip.vn/embed/OUHE', 0, 41, '', 0, ''),
(561, '115', 'http://clip.vn/embed/OUHG', 0, 41, '', 0, ''),
(562, '116', 'http://clip.vn/embed/OUHP', 0, 41, '', 0, ''),
(563, '117', 'http://clip.vn/embed/OUHC', 0, 41, '', 0, ''),
(564, '118', 'http://clip.vn/embed/OUH9', 0, 41, '', 0, ''),
(565, '119', 'http://clip.vn/embed/OUHa', 0, 41, '', 0, ''),
(566, '120', 'http://clip.vn/embed/OUHu', 0, 41, '', 0, ''),
(567, '121', 'http://clip.vn/embed/OUHn', 0, 41, '', 0, ''),
(568, '122', 'http://clip.vn/embed/OUHw', 0, 41, '', 0, ''),
(569, '123', 'http://clip.vn/embed/OUHd', 0, 41, '', 0, ''),
(570, '124', 'http://clip.vn/embed/OUHf', 0, 41, '', 0, ''),
(571, '125', 'http://clip.vn/embed/OUHo', 0, 41, '', 0, ''),
(572, '126', 'http://clip.vn/embed/OUHb', 0, 41, '', 0, ''),
(573, '127', 'http://clip.vn/embed/OUHc', 0, 41, '', 0, ''),
(574, '128', 'http://clip.vn/embed/OUHq', 0, 41, '', 0, ''),
(575, '129', 'http://clip.vn/embed/OUHY', 0, 41, '', 0, ''),
(576, '130', 'http://clip.vn/embed/OUHr', 0, 41, '', 0, ''),
(577, '131', 'http://clip.vn/embed/OUBd', 0, 41, '', 0, ''),
(578, '132', 'http://clip.vn/embed/OUBf', 0, 41, '', 0, ''),
(579, '133', 'http://clip.vn/embed/OUBo', 0, 41, '', 0, ''),
(580, '134', 'http://clip.vn/embed/OUBN', 0, 41, '', 0, ''),
(581, '135', 'http://clip.vn/embed/OUBS', 0, 41, '', 0, ''),
(582, '136', 'http://clip.vn/embed/Ow70', 0, 41, '', 0, ''),
(583, '137', 'http://clip.vn/embed/OUBY', 0, 41, '', 0, ''),
(584, '138', 'http://clip.vn/embed/OUBq', 0, 41, '', 0, ''),
(585, '139', 'http://clip.vn/embed/OUBr', 0, 41, '', 0, ''),
(586, '140', 'http://clip.vn/embed/OUB4', 0, 41, '', 0, ''),
(587, '141', 'http://clip.vn/embed/OUBk', 0, 41, '', 0, ''),
(588, '142', 'http://clip.vn/embed/OUB-', 0, 41, '', 0, ''),
(589, '143', 'http://clip.vn/embed/OUkW', 0, 41, '', 0, ''),
(590, '144', 'http://clip.vn/embed/OUkD', 0, 41, '', 0, ''),
(591, '145', 'http://clip.vn/embed/OUkh', 0, 41, '', 0, ''),
(592, '146', 'http://clip.vn/embed/OUkO', 0, 41, '', 0, ''),
(593, '147', 'http://clip.vn/embed/OUkV', 0, 41, '', 0, ''),
(594, '148', 'http://clip.vn/embed/OUkR', 0, 41, '', 0, ''),
(595, '149', 'http://clip.vn/embed/OUkF', 0, 41, '', 0, ''),
(596, '150', 'http://clip.vn/embed/OUk3', 0, 41, '', 0, ''),
(597, '151', 'http://clip.vn/embed/OUkg', 0, 41, '', 0, ''),
(598, '152', 'http://clip.vn/embed/OUkj', 0, 41, '', 0, ''),
(599, '153', 'http://clip.vn/embed/OUkp', 0, 41, '', 0, ''),
(600, '154', 'http://clip.vn/embed/OUki', 0, 41, '', 0, ''),
(601, '155', 'http://clip.vn/embed/OUk0', 0, 41, '', 0, ''),
(602, '156', 'http://clip.vn/embed/OUkn', 0, 41, '', 0, ''),
(603, '157', 'http://clip.vn/embed/OUkw', 0, 41, '', 0, ''),
(604, '158', 'http://clip.vn/embed/OUkf', 0, 41, '', 0, ''),
(605, '159', 'http://clip.vn/embed/OUkd', 0, 41, '', 0, ''),
(606, '160', 'http://clip.vn/embed/OUko', 0, 41, '', 0, ''),
(607, '161', 'http://clip.vn/embed/OUkr', 0, 41, '', 0, ''),
(608, '162', 'http://clip.vn/embed/OUkB', 0, 41, '', 0, ''),
(609, '163', 'http://clip.vn/embed/OUk4', 0, 41, '', 0, ''),
(610, '164', 'http://clip.vn/embed/OUkA', 0, 41, '', 0, ''),
(611, '165', 'http://clip.vn/embed/OUA_', 0, 41, '', 0, ''),
(612, '166', 'http://clip.vn/embed/OUAy', 0, 41, '', 0, ''),
(613, '167', 'http://clip.vn/embed/OUAI', 0, 41, '', 0, ''),
(614, '168', 'http://clip.vn/embed/OUAZ', 0, 41, '', 0, ''),
(615, '169', 'http://clip.vn/embed/OUAE', 0, 41, '', 0, ''),
(616, '170', 'http://clip.vn/embed/OUAG', 0, 41, '', 0, ''),
(617, '171', 'http://clip.vn/embed/OUAn', 0, 41, '', 0, ''),
(618, '172', 'http://clip.vn/embed/OUAw', 0, 41, '', 0, ''),
(619, '173', 'http://clip.vn/embed/OUAd', 0, 41, '', 0, ''),
(620, '174', 'http://clip.vn/embed/OUAf', 0, 41, '', 0, ''),
(621, '175', 'http://clip.vn/embed/OUAo', 0, 41, '', 0, ''),
(622, '176', 'http://clip.vn/embed/OU-3', 0, 41, '', 0, ''),
(623, '177', 'http://clip.vn/embed/OU-g', 0, 41, '', 0, ''),
(624, '178', 'http://clip.vn/embed/OU-j', 0, 41, '', 0, ''),
(625, '179', 'http://clip.vn/embed/OU-p', 0, 41, '', 0, ''),
(626, '180', 'http://clip.vn/embed/OU-i', 0, 41, '', 0, ''),
(627, '181', 'http://clip.vn/embed/OU-m', 0, 41, '', 0, ''),
(628, '182', 'http://clip.vn/embed/OU-L', 0, 41, '', 0, ''),
(629, '183', 'http://clip.vn/embed/OU-T', 0, 41, '', 0, ''),
(630, '184', 'http://clip.vn/embed/OU-s', 0, 41, '', 0, ''),
(631, '185', 'http://clip.vn/embed/OU-5', 0, 41, '', 0, ''),
(632, '186', 'http://clip.vn/embed/OU-w', 0, 41, '', 0, ''),
(633, '187', 'http://clip.vn/embed/OU-d', 0, 41, '', 0, ''),
(634, '188', 'http://clip.vn/embed/OU-f', 0, 41, '', 0, ''),
(635, '189', 'http://clip.vn/embed/OU-S', 0, 41, '', 0, ''),
(636, '190', 'http://clip.vn/embed/OU-o', 0, 41, '', 0, ''),
(637, '191', 'http://clip.vn/embed/OU-v', 0, 41, '', 0, ''),
(638, '192', 'http://clip.vn/embed/OU-l', 0, 41, '', 0, ''),
(639, '193', 'http://clip.vn/embed/OU-7', 0, 41, '', 0, ''),
(640, '194', 'http://clip.vn/embed/OU-c', 0, 41, '', 0, ''),
(641, '195', 'http://clip.vn/embed/OU-H', 0, 41, '', 0, ''),
(642, '196', 'http://clip.vn/embed/OU-k', 0, 41, '', 0, ''),
(643, '197', 'http://clip.vn/embed/OU-x', 0, 41, '', 0, ''),
(644, '198', 'http://clip.vn/embed/Ow_W', 0, 41, '', 0, ''),
(645, '199', 'http://clip.vn/embed/OU--', 0, 41, '', 0, ''),
(646, '200', 'http://clip.vn/embed/Ow_D', 0, 41, '', 0, ''),
(647, '201', 'http://clip.vn/embed/Ow7m', 0, 41, '', 0, ''),
(648, '202', 'http://clip.vn/embed/Ow7L', 0, 41, '', 0, ''),
(649, '203', 'http://clip.vn/embed/Ow7T', 0, 41, '', 0, ''),
(650, '204', 'http://clip.vn/embed/Ow75', 0, 41, '', 0, ''),
(651, '205', 'http://clip.vn/embed/Ow76', 0, 41, '', 0, ''),
(652, '206', 'http://clip.vn/embed/Ow7U', 0, 41, '', 0, ''),
(653, '207', 'http://clip.vn/embed/Ow7X', 0, 41, '', 0, ''),
(654, '208', 'http://clip.vn/embed/Ow7K', 0, 41, '', 0, ''),
(655, '209', 'http://clip.vn/embed/Ow7M', 0, 41, '', 0, ''),
(656, '210', 'http://clip.vn/embed/Owk3', 0, 41, '', 0, ''),
(657, '211', 'http://clip.vn/embed/Owkg', 0, 41, '', 0, ''),
(658, '212', 'http://clip.vn/embed/Owkj', 0, 41, '', 0, ''),
(659, '213', 'http://clip.vn/embed/Owkp', 0, 41, '', 0, ''),
(660, '214', 'http://clip.vn/embed/Owki', 0, 41, '', 0, ''),
(661, '215', 'http://clip.vn/embed/OwkP', 0, 41, '', 0, ''),
(662, '216', 'http://clip.vn/embed/Owkm', 0, 41, '', 0, ''),
(663, '217', 'http://clip.vn/embed/OwkL', 0, 41, '', 0, ''),
(664, '218', 'http://clip.vn/embed/OwkT', 0, 41, '', 0, ''),
(665, '219', 'http://clip.vn/embed/Owk5', 0, 41, '', 0, ''),
(666, '220', 'http://clip.vn/embed/Owk0', 0, 41, '', 0, ''),
(667, '221', 'http://clip.vn/embed/Owks', 0, 41, '', 0, ''),
(668, '222', 'http://clip.vn/embed/Owkt', 0, 41, '', 0, ''),
(669, '223', 'http://clip.vn/embed/Owkn', 0, 41, '', 0, ''),
(670, '224', 'http://clip.vn/embed/Owkw', 0, 41, '', 0, ''),
(671, '225', 'http://clip.vn/embed/Owkd', 0, 41, '', 0, ''),
(672, '226', 'http://clip.vn/embed/Owkf', 0, 41, '', 0, ''),
(673, '227', 'http://clip.vn/embed/Owko', 0, 41, '', 0, ''),
(674, '228', 'http://clip.vn/embed/OwkN', 0, 41, '', 0, ''),
(675, '229', 'http://clip.vn/embed/OwkS', 0, 41, '', 0, ''),
(676, '230', 'http://clip.vn/embed/Owkv', 0, 41, '', 0, ''),
(677, '231', 'http://clip.vn/embed/Owk7', 0, 41, '', 0, ''),
(678, '232', 'http://clip.vn/embed/Owkr', 0, 41, '', 0, ''),
(679, '233', 'http://clip.vn/embed/OwkB', 0, 41, '', 0, ''),
(680, '234', 'http://clip.vn/embed/Owk4', 0, 41, '', 0, ''),
(681, '235', 'http://clip.vn/embed/OwkA', 0, 41, '', 0, ''),
(682, '236', 'http://clip.vn/embed/Owk-', 0, 41, '', 0, ''),
(683, '237', 'http://clip.vn/embed/OwA_', 0, 41, '', 0, ''),
(684, '238', 'http://clip.vn/embed/OwAR', 0, 41, '', 0, ''),
(685, '239', 'http://clip.vn/embed/OwAh', 0, 41, '', 0, ''),
(686, '240', 'http://clip.vn/embed/OwA2', 0, 41, '', 0, ''),
(687, '241', 'http://clip.vn/embed/OwAF', 0, 41, '', 0, ''),
(688, '242', 'http://clip.vn/embed/OwA3', 0, 41, '', 0, ''),
(689, '243', 'http://clip.vn/embed/OwAg', 0, 41, '', 0, ''),
(690, '244', 'http://clip.vn/embed/OwAj', 0, 41, '', 0, ''),
(691, '245', 'http://clip.vn/embed/OwAp', 0, 41, '', 0, ''),
(692, '246', 'http://clip.vn/embed/OwAi', 0, 41, '', 0, ''),
(693, '247', 'http://clip.vn/embed/OwA0', 0, 41, '', 0, ''),
(694, '248', 'http://clip.vn/embed/OwAC', 0, 41, '', 0, ''),
(695, '249', 'http://clip.vn/embed/OwA9', 0, 41, '', 0, ''),
(696, '250', 'http://clip.vn/embed/OwAa', 0, 41, '', 0, ''),
(697, '251', 'http://clip.vn/embed/OwAT', 0, 41, '', 0, ''),
(698, '252', 'http://clip.vn/embed/OwAn', 0, 41, '', 0, ''),
(699, '253', 'http://clip.vn/embed/OwA5', 0, 41, '', 0, ''),
(700, '254', 'http://clip.vn/embed/OwAs', 0, 41, '', 0, ''),
(701, '255', 'http://clip.vn/embed/OwAt', 0, 41, '', 0, ''),
(702, '256', 'http://clip.vn/embed/Ow-y', 0, 41, '', 0, ''),
(703, '257', 'http://clip.vn/embed/Ow-I', 0, 41, '', 0, ''),
(704, '258', 'http://clip.vn/embed/Ow-s', 0, 41, '', 0, ''),
(705, '259', 'http://clip.vn/embed/Ow-G', 0, 41, '', 0, ''),
(706, '260', 'http://clip.vn/embed/Ow-Z', 0, 41, '', 0, ''),
(707, '261', 'http://clip.vn/embed/Ow-P', 0, 41, '', 0, ''),
(708, '262', 'http://clip.vn/embed/Ow-a', 0, 41, '', 0, ''),
(709, '263', 'http://clip.vn/embed/Ow-u', 0, 41, '', 0, ''),
(710, '264', 'http://clip.vn/embed/Ow-Q', 0, 41, '', 0, ''),
(711, '265', 'http://clip.vn/embed/Ow-9', 0, 41, '', 0, ''),
(712, '266', 'http://clip.vn/embed/Ow-t', 0, 41, '', 0, ''),
(713, '267', 'http://clip.vn/embed/Ow-n', 0, 41, '', 0, ''),
(714, '268', 'http://clip.vn/embed/Ow-w', 0, 41, '', 0, ''),
(715, '269', 'http://clip.vn/embed/Ow-d', 0, 41, '', 0, ''),
(716, '270', 'http://clip.vn/embed/Ow-f', 0, 41, '', 0, ''),
(717, '271', 'http://clip.vn/embed/Ow-N', 0, 41, '', 0, ''),
(718, '272', 'http://clip.vn/embed/Ow-S', 0, 41, '', 0, ''),
(719, '273', 'http://clip.vn/embed/Ow-v', 0, 41, '', 0, ''),
(720, '274', 'http://clip.vn/embed/Ow-l', 0, 41, '', 0, ''),
(721, '275', 'http://clip.vn/embed/Ow-7', 0, 41, '', 0, ''),
(722, '276', 'http://clip.vn/embed/OX8-', 0, 41, '', 0, ''),
(723, '277', 'http://clip.vn/embed/OXNW', 0, 41, '', 0, ''),
(724, '278', 'http://clip.vn/embed/OXNF', 0, 41, '', 0, ''),
(725, '279', 'http://clip.vn/embed/OXN3', 0, 41, '', 0, ''),
(726, '280', 'http://clip.vn/embed/OXNV', 0, 41, '', 0, ''),
(727, '281', 'http://clip.vn/embed/OXNG', 0, 41, '', 0, ''),
(728, '282', 'http://clip.vn/embed/OdF2', 0, 41, '', 0, ''),
(729, '283', 'http://clip.vn/embed/OdFh', 0, 41, '', 0, ''),
(730, '284', 'http://clip.vn/embed/OUnq', 0, 41, '', 0, ''),
(731, '285', 'http://clip.vn/embed/Ow0F', 0, 41, '', 0, ''),
(732, '286', 'http://clip.vn/embed/OKRJ', 0, 41, '', 0, ''),
(733, '287', 'http://clip.vn/embed/OKR8', 0, 41, '', 0, ''),
(734, '288', 'http://clip.vn/embed/OdWd', 0, 41, '', 0, ''),
(735, '289', 'http://clip.vn/embed/OMVy', 0, 41, '', 0, ''),
(736, '290', 'http://clip.vn/embed/OMAU', 0, 41, '', 0, ''),
(737, '291', 'http://clip.vn/embed/OJTf', 0, 41, '', 0, ''),
(738, '292', 'http://clip.vn/embed/OoCm', 0, 41, '', 0, ''),
(739, '293', 'http://clip.vn/embed/Ooc-', 0, 41, '', 0, ''),
(740, '294', 'http://clip.vn/embed/ONIR', 0, 41, '', 0, ''),
(741, '295', 'http://clip.vn/embed/OSsj', 0, 41, '', 0, ''),
(742, '296', 'http://clip.vn/embed/OcKT', 0, 41, '', 0, ''),
(743, '297', 'http://clip.vn/embed/OvQf', 0, 41, '', 0, ''),
(744, '298', 'http://clip.vn/embed/OlCL', 0, 41, '', 0, ''),
(745, '299', 'http://clip.vn/embed/OlCT', 0, 41, '', 0, ''),
(746, '300', 'http://clip.vn/embed/OlUm', 0, 41, '', 0, ''),
(747, '301', 'http://clip.vn/embed/OqIr', 0, 41, '', 0, ''),
(748, '302', 'http://clip.vn/embed/O7_P', 0, 41, '', 0, ''),
(749, '303', 'http://clip.vn/embed/O78z', 0, 41, '', 0, ''),
(750, '304', 'http://clip.vn/embed/Or6Z', 0, 41, '', 0, ''),
(751, '305', 'http://clip.vn/embed/OH5v', 0, 41, '', 0, ''),
(752, '306', 'http://clip.vn/embed/O4p4', 0, 41, '', 0, ''),
(753, '1', 'http://clip.vn/embed/OtGN', 0, 59, '', 0, ''),
(754, '2', 'http://clip.vn/embed/OtKr', 0, 59, '', 0, ''),
(755, '3', 'http://clip.vn/embed/OtK4', 0, 59, '', 0, ''),
(756, '4', 'http://clip.vn/embed/OtKB', 0, 59, '', 0, ''),
(757, '5', 'http://clip.vn/embed/OtKA', 0, 59, '', 0, ''),
(758, '6', 'http://clip.vn/embed/OtdD', 0, 59, '', 0, ''),
(759, '7', 'http://clip.vn/embed/OtdO', 0, 59, '', 0, ''),
(760, '8', 'http://clip.vn/embed/OtdV', 0, 59, '', 0, ''),
(761, '9', 'http://clip.vn/embed/OtdR', 0, 59, '', 0, ''),
(762, '10', 'http://clip.vn/embed/OtdF', 0, 59, '', 0, ''),
(763, '11', 'http://clip.vn/embed/Otd3', 0, 59, '', 0, ''),
(764, '12', 'http://clip.vn/embed/Otdg', 0, 59, '', 0, ''),
(765, '13', 'http://clip.vn/embed/Otdj', 0, 59, '', 0, ''),
(766, '14', 'http://clip.vn/embed/Otdp', 0, 59, '', 0, ''),
(767, '15', 'http://clip.vn/embed/Otdi', 0, 59, '', 0, ''),
(768, '16', 'http://clip.vn/embed/OtdC', 0, 59, '', 0, ''),
(769, '17', 'http://clip.vn/embed/Otd9', 0, 59, '', 0, ''),
(770, '18', 'http://clip.vn/embed/Otda', 0, 59, '', 0, ''),
(771, '19', 'http://clip.vn/embed/OtdQ', 0, 59, '', 0, ''),
(772, '20', 'http://clip.vn/embed/Otdu', 0, 59, '', 0, ''),
(773, '21', 'http://clip.vn/embed/Otdn', 0, 59, '', 0, ''),
(774, '22', 'http://clip.vn/embed/Otdw', 0, 59, '', 0, ''),
(775, '23', 'http://clip.vn/embed/Otdd', 0, 59, '', 0, ''),
(776, '24', 'http://clip.vn/embed/Otdf', 0, 59, '', 0, ''),
(777, '25', 'http://clip.vn/embed/Otdo', 0, 59, '', 0, ''),
(778, '26', 'http://clip.vn/embed/OX55', 0, 59, '', 0, ''),
(779, '27', 'http://clip.vn/embed/OX5s', 0, 59, '', 0, ''),
(780, '28', 'http://clip.vn/embed/Otdc', 0, 59, '', 0, ''),
(781, '29', 'http://clip.vn/embed/OtdY', 0, 59, '', 0, ''),
(782, '30', 'http://clip.vn/embed/Otdq', 0, 59, '', 0, ''),
(783, '31', 'http://clip.vn/embed/Otd7', 0, 59, '', 0, ''),
(784, '32', 'http://clip.vn/embed/OtdH', 0, 59, '', 0, ''),
(785, '33', 'http://clip.vn/embed/Otdx', 0, 59, '', 0, ''),
(786, '34', 'http://clip.vn/embed/Otd-', 0, 59, '', 0, ''),
(787, '35', 'http://clip.vn/embed/Otdk', 0, 59, '', 0, ''),
(788, '36', 'http://clip.vn/embed/OtMz', 0, 59, '', 0, ''),
(789, '37', 'http://clip.vn/embed/OtMe', 0, 59, '', 0, ''),
(790, '38', 'http://clip.vn/embed/OtMh', 0, 59, '', 0, ''),
(791, '39', 'http://clip.vn/embed/OtM1', 0, 59, '', 0, ''),
(792, '40', 'http://clip.vn/embed/OtM2', 0, 59, '', 0, ''),
(793, '41', 'http://clip.vn/embed/OtMv', 0, 59, '', 0, ''),
(794, '42', 'http://clip.vn/embed/OtMl', 0, 59, '', 0, ''),
(795, '43', 'http://clip.vn/embed/OtM4', 0, 59, '', 0, ''),
(796, '44', 'http://clip.vn/embed/OtMr', 0, 59, '', 0, ''),
(797, '45', 'http://clip.vn/embed/OtMB', 0, 59, '', 0, ''),
(798, '46', 'http://clip.vn/embed/Otf_', 0, 59, '', 0, ''),
(799, '47', 'http://clip.vn/embed/Otfz', 0, 59, '', 0, ''),
(800, '48', 'http://clip.vn/embed/Otfh', 0, 59, '', 0, '');
INSERT INTO `ipos_ep` (`epid`, `epname`, `epurl`, `error`, `phimid`, `epsub`, `server`, `epdemo`) VALUES
(801, '49', 'http://clip.vn/embed/Otf2', 0, 59, '', 0, ''),
(802, '50', 'http://clip.vn/embed/Otfe', 0, 59, '', 0, ''),
(803, '51', 'http://clip.vn/embed/OXLT', 0, 59, '', 0, ''),
(804, '52', 'http://clip.vn/embed/OXL5', 0, 59, '', 0, ''),
(805, '53', 'http://clip.vn/embed/OXLs', 0, 59, '', 0, ''),
(806, '54', 'http://clip.vn/embed/OXLt', 0, 59, '', 0, ''),
(807, '55', 'http://clip.vn/embed/OXLn', 0, 59, '', 0, ''),
(808, '56', 'http://clip.vn/embed/OXLd', 0, 59, '', 0, ''),
(809, '57', 'http://clip.vn/embed/OXLf', 0, 59, '', 0, ''),
(810, '58', 'http://clip.vn/embed/OXat', 0, 59, '', 0, ''),
(811, '59', 'http://clip.vn/embed/OXaU', 0, 59, '', 0, ''),
(812, '60', 'http://clip.vn/embed/OXLN', 0, 59, '', 0, ''),
(813, '61', 'http://clip.vn/embed/OXa_', 0, 59, '', 0, ''),
(814, '62', 'http://clip.vn/embed/OXaz', 0, 59, '', 0, ''),
(815, '63', 'http://clip.vn/embed/OXah', 0, 59, '', 0, ''),
(816, '64', 'http://clip.vn/embed/OXa2', 0, 59, '', 0, ''),
(817, '65', 'http://clip.vn/embed/OXay', 0, 59, '', 0, ''),
(818, '66', 'http://clip.vn/embed/OXaI', 0, 59, '', 0, ''),
(819, '67', 'http://clip.vn/embed/OXaE', 0, 59, '', 0, ''),
(820, '68', 'http://clip.vn/embed/OXaG', 0, 59, '', 0, ''),
(821, '69', 'http://clip.vn/embed/OXaZ', 0, 59, '', 0, ''),
(822, '70', 'http://clip.vn/embed/OXa0', 0, 59, '', 0, ''),
(823, '71', 'http://clip.vn/embed/OXam', 0, 59, '', 0, ''),
(824, '72', 'http://clip.vn/embed/OXaL', 0, 59, '', 0, ''),
(825, '73', 'http://clip.vn/embed/OXaT', 0, 59, '', 0, ''),
(826, '74', 'http://clip.vn/embed/OXa5', 0, 59, '', 0, ''),
(827, '75', 'http://clip.vn/embed/OXas', 0, 59, '', 0, ''),
(828, '76', 'http://clip.vn/embed/OXa7', 0, 59, '', 0, ''),
(829, '77', 'http://clip.vn/embed/OXav', 0, 59, '', 0, ''),
(830, '78', 'http://clip.vn/embed/OXao', 0, 59, '', 0, ''),
(831, '79', 'http://clip.vn/embed/OXaN', 0, 59, '', 0, ''),
(832, '80', 'http://clip.vn/embed/OXaS', 0, 59, '', 0, ''),
(833, '81', 'http://clip.vn/embed/OXaH', 0, 59, '', 0, ''),
(834, '82', 'http://clip.vn/embed/OXax', 0, 59, '', 0, ''),
(835, '83', 'http://clip.vn/embed/OXak', 0, 59, '', 0, ''),
(836, '84', 'http://clip.vn/embed/OXT_', 0, 59, '', 0, ''),
(837, '85', 'http://clip.vn/embed/OXTz', 0, 59, '', 0, ''),
(838, '86', 'http://clip.vn/embed/OXTD', 0, 59, '', 0, ''),
(839, '87', 'http://clip.vn/embed/OXTO', 0, 59, '', 0, ''),
(840, '88', 'http://clip.vn/embed/OXT1', 0, 59, '', 0, ''),
(841, '89', 'http://clip.vn/embed/OXTe', 0, 59, '', 0, ''),
(842, '90', 'http://clip.vn/embed/OXTy', 0, 59, '', 0, ''),
(843, '91', 'http://clip.vn/embed/OXTG', 0, 59, '', 0, ''),
(844, '92', 'http://clip.vn/embed/OXTZ', 0, 59, '', 0, ''),
(845, '93', 'http://clip.vn/embed/OXTP', 0, 59, '', 0, ''),
(846, '94', 'http://clip.vn/embed/OXTC', 0, 59, '', 0, ''),
(847, '95', 'http://clip.vn/embed/OXT9', 0, 59, '', 0, ''),
(848, '96', 'http://clip.vn/embed/OXT6', 0, 59, '', 0, ''),
(849, '97', 'http://clip.vn/embed/OXTQ', 0, 59, '', 0, ''),
(850, '98', 'http://clip.vn/embed/OXTX', 0, 59, '', 0, ''),
(851, '99', 'http://clip.vn/embed/OXTK', 0, 59, '', 0, ''),
(852, '100', 'http://clip.vn/embed/OXTU', 0, 59, '', 0, ''),
(853, '101', 'http://clip.vn/embed/On3K', 0, 59, '', 0, ''),
(854, '102', 'http://clip.vn/embed/On3M', 0, 59, '', 0, ''),
(855, '103', 'http://clip.vn/embed/On38', 0, 59, '', 0, ''),
(856, '104', 'http://clip.vn/embed/On3J', 0, 59, '', 0, ''),
(857, '105', 'http://clip.vn/embed/On3b', 0, 59, '', 0, ''),
(858, '106', 'http://clip.vn/embed/On3v', 0, 59, '', 0, ''),
(859, '107', 'http://clip.vn/embed/On3l', 0, 59, '', 0, ''),
(860, '108', 'http://clip.vn/embed/On3H', 0, 59, '', 0, ''),
(861, '109', 'http://clip.vn/embed/On37', 0, 59, '', 0, ''),
(862, '110', 'http://clip.vn/embed/On3x', 0, 59, '', 0, ''),
(863, '111', 'http://clip.vn/embed/OnI_', 0, 59, '', 0, ''),
(864, '112', 'http://clip.vn/embed/OnIz', 0, 59, '', 0, ''),
(865, '113', 'http://clip.vn/embed/OnIh', 0, 59, '', 0, ''),
(866, '114', 'http://clip.vn/embed/OnI2', 0, 59, '', 0, ''),
(867, '115', 'http://clip.vn/embed/OnIe', 0, 59, '', 0, ''),
(868, '116', 'http://clip.vn/embed/OnIF', 0, 59, '', 0, ''),
(869, '117', 'http://clip.vn/embed/OnI3', 0, 59, '', 0, ''),
(870, '118', 'http://clip.vn/embed/On3k', 0, 59, '', 0, ''),
(871, '119', 'http://clip.vn/embed/OnIj', 0, 59, '', 0, ''),
(872, '120', 'http://clip.vn/embed/OnIg', 0, 59, '', 0, ''),
(873, '121', 'http://clip.vn/embed/OnIm', 0, 59, '', 0, ''),
(874, '122', 'http://clip.vn/embed/OnIL', 0, 59, '', 0, ''),
(875, '123', 'http://clip.vn/embed/OnIT', 0, 59, '', 0, ''),
(876, '124', 'http://clip.vn/embed/OnI5', 0, 59, '', 0, ''),
(877, '125', 'http://clip.vn/embed/OnIs', 0, 59, '', 0, ''),
(878, '126', 'http://clip.vn/embed/OnIK', 0, 59, '', 0, ''),
(879, '127', 'http://clip.vn/embed/OnId', 0, 59, '', 0, ''),
(880, '128', 'http://clip.vn/embed/OnIf', 0, 59, '', 0, ''),
(881, '129', 'http://clip.vn/embed/OnIo', 0, 59, '', 0, ''),
(882, '130', 'http://clip.vn/embed/OnIN', 0, 59, '', 0, ''),
(883, '131', 'http://clip.vn/embed/OnIc', 0, 59, '', 0, ''),
(884, '132', 'http://clip.vn/embed/OnIb', 0, 59, '', 0, ''),
(885, '133', 'http://clip.vn/embed/OnIq', 0, 59, '', 0, ''),
(886, '134', 'http://clip.vn/embed/OnIY', 0, 59, '', 0, ''),
(887, '135', 'http://clip.vn/embed/OnIr', 0, 59, '', 0, ''),
(888, '136', 'http://clip.vn/embed/OnI4', 0, 59, '', 0, ''),
(889, '137', 'http://clip.vn/embed/OnIk', 0, 59, '', 0, ''),
(890, '138', 'http://clip.vn/embed/OnIB', 0, 59, '', 0, ''),
(891, '139', 'http://clip.vn/embed/OnI-', 0, 59, '', 0, ''),
(892, '140', 'http://clip.vn/embed/OngW', 0, 59, '', 0, ''),
(893, '141', 'http://clip.vn/embed/Ong2', 0, 59, '', 0, ''),
(894, '142', 'http://clip.vn/embed/Onge', 0, 59, '', 0, ''),
(895, '143', 'http://clip.vn/embed/Ong1', 0, 59, '', 0, ''),
(896, '144', 'http://clip.vn/embed/Ongy', 0, 59, '', 0, ''),
(897, '145', 'http://clip.vn/embed/OngI', 0, 59, '', 0, ''),
(898, '146', 'http://clip.vn/embed/OngE', 0, 59, '', 0, ''),
(899, '147', 'http://clip.vn/embed/OngG', 0, 59, '', 0, ''),
(900, '148', 'http://clip.vn/embed/OngZ', 0, 59, '', 0, ''),
(901, '149', 'http://clip.vn/embed/OngP', 0, 59, '', 0, ''),
(902, '150', 'http://clip.vn/embed/OngC', 0, 59, '', 0, ''),
(903, '151', 'http://clip.vn/embed/OnZF', 0, 59, '', 0, ''),
(904, '152', 'http://clip.vn/embed/OnZg', 0, 59, '', 0, ''),
(905, '153', 'http://clip.vn/embed/OnZ3', 0, 59, '', 0, ''),
(906, '154', 'http://clip.vn/embed/OnZ2', 0, 59, '', 0, ''),
(907, '155', 'http://clip.vn/embed/OnZj', 0, 59, '', 0, ''),
(908, '156', 'http://clip.vn/embed/OnZC', 0, 59, '', 0, ''),
(909, '157', 'http://clip.vn/embed/OnZ9', 0, 59, '', 0, ''),
(910, '158', 'http://clip.vn/embed/OnZa', 0, 59, '', 0, ''),
(911, '159', 'http://clip.vn/embed/OnZu', 0, 59, '', 0, ''),
(912, '160', 'http://clip.vn/embed/OnZQ', 0, 59, '', 0, ''),
(913, '161', 'http://clip.vn/embed/OnKb', 0, 59, '', 0, ''),
(914, '162', 'http://clip.vn/embed/OnKc', 0, 59, '', 0, ''),
(915, '163', 'http://clip.vn/embed/OnKY', 0, 59, '', 0, ''),
(916, '164', 'http://clip.vn/embed/OnJ6', 0, 59, '', 0, ''),
(917, '165', 'http://clip.vn/embed/OnKq', 0, 59, '', 0, ''),
(918, '166', 'http://clip.vn/embed/OnKH', 0, 59, '', 0, ''),
(919, '167', 'http://clip.vn/embed/OnKx', 0, 59, '', 0, ''),
(920, '168', 'http://clip.vn/embed/OnKk', 0, 59, '', 0, ''),
(921, '169', 'http://clip.vn/embed/OnK-', 0, 59, '', 0, ''),
(922, '170', 'http://clip.vn/embed/OndW', 0, 59, '', 0, ''),
(923, '171', 'http://clip.vn/embed/Ondv', 0, 59, '', 0, ''),
(924, '172', 'http://clip.vn/embed/Ondl', 0, 59, '', 0, ''),
(925, '173', 'http://clip.vn/embed/Ond7', 0, 59, '', 0, ''),
(926, '174', 'http://clip.vn/embed/OndH', 0, 59, '', 0, ''),
(927, '175', 'http://clip.vn/embed/Ondx', 0, 59, '', 0, ''),
(928, '176', 'http://clip.vn/embed/OnM_', 0, 59, '', 0, ''),
(929, '177', 'http://clip.vn/embed/OnMz', 0, 59, '', 0, ''),
(930, '178', 'http://clip.vn/embed/OnMh', 0, 59, '', 0, ''),
(931, '179', 'http://clip.vn/embed/OnM2', 0, 59, '', 0, ''),
(932, '180', 'http://clip.vn/embed/OnMe', 0, 59, '', 0, ''),
(933, '181', 'http://clip.vn/embed/OnMj', 0, 59, '', 0, ''),
(934, '182', 'http://clip.vn/embed/OnMp', 0, 59, '', 0, ''),
(935, '183', 'http://clip.vn/embed/OnMi', 0, 59, '', 0, ''),
(936, '184', 'http://clip.vn/embed/OnM0', 0, 59, '', 0, ''),
(937, '185', 'http://clip.vn/embed/OnMm', 0, 59, '', 0, ''),
(938, '186', 'http://clip.vn/embed/OnMf', 0, 59, '', 0, ''),
(939, '187', 'http://clip.vn/embed/OnMd', 0, 59, '', 0, ''),
(940, '188', 'http://clip.vn/embed/OnMN', 0, 59, '', 0, ''),
(941, '189', 'http://clip.vn/embed/OnMo', 0, 59, '', 0, ''),
(942, '190', 'http://clip.vn/embed/OnMS', 0, 59, '', 0, ''),
(943, '191', 'http://clip.vn/embed/OnMY', 0, 59, '', 0, ''),
(944, '192', 'http://clip.vn/embed/OnMq', 0, 59, '', 0, ''),
(945, '193', 'http://clip.vn/embed/OnM4', 0, 59, '', 0, ''),
(946, '194', 'http://clip.vn/embed/OnMr', 0, 59, '', 0, ''),
(947, '195', 'http://clip.vn/embed/OnMB', 0, 59, '', 0, ''),
(948, '196', 'http://clip.vn/embed/Onf0', 0, 59, '', 0, ''),
(949, '197', 'http://clip.vn/embed/Onfm', 0, 59, '', 0, ''),
(950, '198', 'http://clip.vn/embed/OnNl', 0, 59, '', 0, ''),
(951, '199', 'http://clip.vn/embed/OnfL', 0, 59, '', 0, ''),
(952, '200', 'http://clip.vn/embed/Onfa', 0, 59, '', 0, ''),
(953, '201', 'http://clip.vn/embed/OnfX', 0, 59, '', 0, ''),
(954, '202', 'http://clip.vn/embed/OnfU', 0, 59, '', 0, ''),
(955, '203', 'http://clip.vn/embed/OnfK', 0, 59, '', 0, ''),
(956, '204', 'http://clip.vn/embed/OnfM', 0, 59, '', 0, ''),
(957, '205', 'http://clip.vn/embed/Onf8', 0, 59, '', 0, ''),
(958, '206', 'http://clip.vn/embed/OnfY', 0, 59, '', 0, ''),
(959, '207', 'http://clip.vn/embed/Onfq', 0, 59, '', 0, ''),
(960, '208', 'http://clip.vn/embed/Onfr', 0, 59, '', 0, ''),
(961, '209', 'http://clip.vn/embed/Onf4', 0, 59, '', 0, ''),
(962, '210', 'http://clip.vn/embed/OnfB', 0, 59, '', 0, ''),
(963, '211', 'http://clip.vn/embed/OnJz', 0, 59, '', 0, ''),
(964, '212', 'http://clip.vn/embed/OnJV', 0, 59, '', 0, ''),
(965, '213', 'http://clip.vn/embed/OnJF', 0, 59, '', 0, ''),
(966, '214', 'http://clip.vn/embed/OnJ3', 0, 59, '', 0, ''),
(967, '215', 'http://clip.vn/embed/OnJj', 0, 59, '', 0, ''),
(968, '216', 'http://clip.vn/embed/OnJg', 0, 59, '', 0, ''),
(969, '217', 'http://clip.vn/embed/OnJZ', 0, 59, '', 0, ''),
(970, '218', 'http://clip.vn/embed/OnJP', 0, 59, '', 0, ''),
(971, '219', 'http://clip.vn/embed/OnJC', 0, 59, '', 0, ''),
(972, '220', 'http://clip.vn/embed/OnJ9', 0, 59, '', 0, ''),
(1033, '11', 'http://clip.vn/embed/OHud', 0, 63, '', 0, ''),
(1034, '12', 'http://clip.vn/embed/OHuo', 0, 63, '', 0, ''),
(1035, '13', 'http://clip.vn/embed/OHul', 0, 63, '', 0, ''),
(1036, '1', 'http://clip.vn/embed/Obxx', 0, 64, '', 0, ''),
(1037, '2', 'http://clip.vn/embed/ObBV', 0, 64, '', 0, ''),
(1038, '3', 'http://clip.vn/embed/ObBS', 0, 64, '', 0, ''),
(1039, '4', 'http://clip.vn/embed/ObBH', 0, 64, '', 0, ''),
(1040, '5', 'http://clip.vn/embed/ObkD', 0, 64, '', 0, ''),
(1041, '6', 'http://clip.vn/embed/ObkO', 0, 64, '', 0, ''),
(1042, '7', 'http://clip.vn/embed/Obk3', 0, 64, '', 0, ''),
(1043, '8', 'http://clip.vn/embed/Obkj', 0, 64, '', 0, ''),
(1044, '9', 'http://clip.vn/embed/Obko', 0, 64, '', 0, ''),
(1045, '10', 'http://clip.vn/embed/Obk7', 0, 64, '', 0, ''),
(1046, '11', 'http://clip.vn/embed/ObkH', 0, 64, '', 0, ''),
(1047, '12', 'http://clip.vn/embed/OvXf', 0, 64, '', 0, ''),
(1048, '13', 'http://clip.vn/embed/OYXk', 0, 64, '', 0, ''),
(1049, '14', 'http://clip.vn/embed/O79n', 0, 64, '', 0, ''),
(1050, '15', 'http://clip.vn/embed/OvKi', 0, 64, '', 0, ''),
(1051, '16', 'http://clip.vn/embed/OvKs', 0, 64, '', 0, ''),
(1052, '17', 'http://clip.vn/embed/Ovdk', 0, 64, '', 0, ''),
(1053, '18', 'http://clip.vn/embed/Ovdx', 0, 64, '', 0, ''),
(1054, '19', 'http://clip.vn/embed/Ovd-', 0, 64, '', 0, ''),
(1055, '20', 'http://clip.vn/embed/OvMO', 0, 64, '', 0, ''),
(1056, '21', 'http://clip.vn/embed/OqAz', 0, 64, '', 0, ''),
(1057, '22', 'http://clip.vn/embed/OqAh', 0, 64, '', 0, ''),
(1058, '23', 'http://clip.vn/embed/Oq-U', 0, 64, '', 0, ''),
(1059, '24', 'http://clip.vn/embed/Oq-6', 0, 64, '', 0, ''),
(1060, '25', 'http://clip.vn/embed/Oq-X', 0, 64, '', 0, ''),
(1061, '26', 'http://clip.vn/embed/O7D9', 0, 64, '', 0, ''),
(1062, '27', 'http://clip.vn/embed/O7hh', 0, 64, '', 0, ''),
(1063, '28', 'http://clip.vn/embed/O7DM', 0, 64, '', 0, ''),
(1064, '29', 'http://clip.vn/embed/O7hC', 0, 64, '', 0, ''),
(1065, '30', 'http://clip.vn/embed/O7hX', 0, 64, '', 0, ''),
(1066, '31', 'http://clip.vn/embed/O7hq', 0, 64, '', 0, ''),
(1067, '32', 'http://clip.vn/embed/O7Oh', 0, 64, '', 0, ''),
(1068, '33', 'http://clip.vn/embed/O7OE', 0, 64, '', 0, ''),
(1069, '1', 'http://clip.vn/embed/OHtA', 0, 65, '', 0, ''),
(1070, '2', 'http://clip.vn/embed/OHX3', 0, 65, '', 0, ''),
(1071, '3', 'http://clip.vn/embed/OHXZ', 0, 65, '', 0, ''),
(1072, '4', 'http://clip.vn/embed/OHXT', 0, 65, '', 0, ''),
(1073, '5', 'http://clip.vn/embed/OHXn', 0, 65, '', 0, ''),
(1074, '6', 'http://clip.vn/embed/OHXJ', 0, 65, '', 0, ''),
(1075, '7', 'http://clip.vn/embed/OHXY', 0, 65, '', 0, ''),
(1076, '8', 'http://clip.vn/embed/OHX7', 0, 65, '', 0, ''),
(1077, '9', 'http://clip.vn/embed/OHnF', 0, 65, '', 0, ''),
(1078, '10', 'http://clip.vn/embed/OHng', 0, 65, '', 0, ''),
(1079, '1', 'http://clip.vn/embed/Oqhf', 0, 66, '', 0, ''),
(1080, '2', 'http://clip.vn/embed/OqXX', 0, 66, '', 0, ''),
(1081, '3', 'http://clip.vn/embed/OqyU', 0, 66, '', 0, ''),
(1082, '4', 'http://clip.vn/embed/OqCL', 0, 66, '', 0, ''),
(1083, '5', 'http://clip.vn/embed/OqIY', 0, 66, '', 0, ''),
(1084, '6', 'http://clip.vn/embed/OqIH', 0, 66, '', 0, ''),
(1085, '7', 'http://clip.vn/embed/Oqgg', 0, 66, '', 0, ''),
(1086, '8', 'http://clip.vn/embed/OqgX', 0, 66, '', 0, ''),
(1087, '9', 'http://clip.vn/embed/OqgA', 0, 66, '', 0, ''),
(1088, '10', 'http://clip.vn/embed/OqEj', 0, 66, '', 0, ''),
(1089, '11', 'http://clip.vn/embed/OqoM', 0, 66, '', 0, ''),
(1090, '12', 'http://clip.vn/embed/Oqou', 0, 66, '', 0, ''),
(1091, '1', 'http://clip.vn/embed/Olat', 0, 67, '', 0, ''),
(1092, '2', 'http://clip.vn/embed/Olmp', 0, 67, '', 0, ''),
(1093, '3', 'http://clip.vn/embed/Ol0v', 0, 67, '', 0, ''),
(1094, '4', 'http://clip.vn/embed/Ol07', 0, 67, '', 0, ''),
(1095, '5', 'http://clip.vn/embed/Ol0H', 0, 67, '', 0, ''),
(1096, '6', 'http://clip.vn/embed/Ol0x', 0, 67, '', 0, ''),
(1097, '7', 'http://clip.vn/embed/Ol0k', 0, 67, '', 0, ''),
(1098, '8', 'http://clip.vn/embed/OlCD', 0, 67, '', 0, ''),
(1099, '9', 'http://clip.vn/embed/OlCR', 0, 67, '', 0, ''),
(1100, '10', 'http://clip.vn/embed/OlCV', 0, 67, '', 0, ''),
(1101, '11', 'http://clip.vn/embed/OlHO', 0, 67, '', 0, ''),
(1102, '12', 'http://clip.vn/embed/OlHF', 0, 67, '', 0, ''),
(1103, '13', 'http://clip.vn/embed/OlHm', 0, 67, '', 0, ''),
(1104, '14', 'http://clip.vn/embed/OlH5', 0, 67, '', 0, ''),
(1105, '15', 'http://clip.vn/embed/Ol4g', 0, 67, '', 0, ''),
(1106, '16', 'http://clip.vn/embed/Ol4j', 0, 67, '', 0, ''),
(1107, '17', 'http://clip.vn/embed/Ol4L', 0, 67, '', 0, ''),
(1108, '18', 'http://clip.vn/embed/Olxk', 0, 67, '', 0, ''),
(1109, '19', 'http://clip.vn/embed/OlAx', 0, 67, '', 0, ''),
(1110, '20', 'http://clip.vn/embed/Ol-W', 0, 67, '', 0, ''),
(1111, '21', 'http://clip.vn/embed/Ol-V', 0, 67, '', 0, ''),
(1112, '22', 'http://clip.vn/embed/Ol-p', 0, 67, '', 0, ''),
(1113, '1', 'http://clip.vn/embed/OcDV', 0, 68, '', 0, ''),
(1114, '2', 'http://clip.vn/embed/OcDF', 0, 68, '', 0, ''),
(1115, '3', 'http://clip.vn/embed/OcD3', 0, 68, '', 0, ''),
(1116, '4', 'http://clip.vn/embed/OcDg', 0, 68, '', 0, ''),
(1117, '5', 'http://clip.vn/embed/OcDj', 0, 68, '', 0, ''),
(1118, '6', 'http://clip.vn/embed/OcDp', 0, 68, '', 0, ''),
(1119, '7', 'http://clip.vn/embed/OcDT', 0, 68, '', 0, ''),
(1120, '8', 'http://clip.vn/embed/OcD5', 0, 68, '', 0, ''),
(1121, '9', 'http://clip.vn/embed/OcDm', 0, 68, '', 0, ''),
(1122, '10', 'http://clip.vn/embed/OcDL', 0, 68, '', 0, ''),
(1123, '11', 'http://clip.vn/embed/OcDs', 0, 68, '', 0, ''),
(1124, '12', 'http://clip.vn/embed/OcDt', 0, 68, '', 0, ''),
(1125, '13', 'http://clip.vn/embed/OcDn', 0, 68, '', 0, ''),
(1126, '14', 'http://clip.vn/embed/OcDw', 0, 68, '', 0, ''),
(1127, '15', 'http://clip.vn/embed/OcDd', 0, 68, '', 0, ''),
(1128, '16', 'http://clip.vn/embed/OcDf', 0, 68, '', 0, ''),
(1129, '17', 'http://clip.vn/embed/OcDo', 0, 68, '', 0, ''),
(1130, '18', 'http://clip.vn/embed/OcDN', 0, 68, '', 0, ''),
(1131, '19', 'http://clip.vn/embed/OcDS', 0, 68, '', 0, ''),
(1132, '20', 'http://clip.vn/embed/OcDv', 0, 68, '', 0, ''),
(1133, '21', 'http://clip.vn/embed/OcDl', 0, 68, '', 0, ''),
(1134, '22', 'http://clip.vn/embed/OcD7', 0, 68, '', 0, ''),
(1135, '23', 'http://clip.vn/embed/OcDH', 0, 68, '', 0, ''),
(1136, '24', 'http://clip.vn/embed/OcDx', 0, 68, '', 0, ''),
(1137, '25', 'http://clip.vn/embed/OcDk', 0, 68, '', 0, ''),
(1138, '26', 'http://clip.vn/embed/OcD-', 0, 68, '', 0, ''),
(1139, '27', 'http://clip.vn/embed/OchD', 0, 68, '', 0, ''),
(1140, '28', 'http://clip.vn/embed/OchR', 0, 68, '', 0, ''),
(1141, '29', 'http://clip.vn/embed/OchV', 0, 68, '', 0, ''),
(1142, '30', 'http://clip.vn/embed/Och3', 0, 68, '', 0, ''),
(1143, '1', 'http://clip.vn/embed/OYug', 0, 69, '', 0, ''),
(1144, '2', 'http://clip.vn/embed/OY5R', 0, 69, '', 0, ''),
(1145, '3', 'http://clip.vn/embed/OY5p', 0, 69, '', 0, ''),
(1146, '4', 'http://clip.vn/embed/OY5T', 0, 69, '', 0, ''),
(1147, '5', 'http://clip.vn/embed/OY5s', 0, 69, '', 0, ''),
(1148, '6', 'http://clip.vn/embed/OY5t', 0, 69, '', 0, ''),
(1149, '7', 'http://clip.vn/embed/OY5w', 0, 69, '', 0, ''),
(1150, '8', 'http://clip.vn/embed/OY5k', 0, 69, '', 0, ''),
(1151, '9', 'http://clip.vn/embed/OYQW', 0, 69, '', 0, ''),
(1152, '10', 'http://clip.vn/embed/OYQV', 0, 69, '', 0, ''),
(1153, '11', 'http://clip.vn/embed/OlIR', 0, 69, '', 0, ''),
(1154, '12', 'http://clip.vn/embed/OlIm', 0, 69, '', 0, ''),
(1155, '13', 'http://clip.vn/embed/Olmo', 0, 69, '', 0, ''),
(1156, '14', 'http://clip.vn/embed/Olgf', 0, 69, '', 0, ''),
(1157, '15', 'http://clip.vn/embed/Oljj', 0, 69, '', 0, ''),
(1158, '16', 'http://clip.vn/embed/OlEv', 0, 69, '', 0, ''),
(1159, '17', 'http://clip.vn/embed/OlE7', 0, 69, '', 0, ''),
(1160, '18', 'http://clip.vn/embed/OljW', 0, 69, '', 0, ''),
(1161, '19', 'http://clip.vn/embed/OljR', 0, 69, '', 0, ''),
(1162, '20', 'http://clip.vn/embed/OljV', 0, 69, '', 0, ''),
(1163, '1', 'http://clip.vn/embed/OtmB', 0, 70, '', 0, ''),
(1164, '2', 'http://clip.vn/embed/OXys', 0, 70, '', 0, ''),
(1165, '3', 'http://clip.vn/embed/OwK0', 0, 70, '', 0, ''),
(1166, '4', 'http://clip.vn/embed/OKzE', 0, 70, '', 0, ''),
(1167, '5', 'http://clip.vn/embed/OKtd', 0, 70, '', 0, ''),
(1168, '6', 'http://clip.vn/embed/OJUs', 0, 70, '', 0, ''),
(1169, '7', 'http://clip.vn/embed/OfXn', 0, 70, '', 0, ''),
(1170, '8', 'http://clip.vn/embed/O8GS', 0, 70, '', 0, ''),
(1171, '9', 'http://clip.vn/embed/O8Gv', 0, 70, '', 0, ''),
(1172, '10', 'http://clip.vn/embed/Ob6D', 0, 70, '', 0, ''),
(1173, '11', 'http://clip.vn/embed/OYQs', 0, 70, '', 0, ''),
(1174, '12', 'http://clip.vn/embed/OYQt', 0, 70, '', 0, ''),
(1175, '13', 'http://clip.vn/embed/OYsm', 0, 70, '', 0, ''),
(1176, '1', 'http://clip.vn/embed/O8xo', 0, 71, '', 0, ''),
(1177, '2', 'http://clip.vn/embed/O8Bj', 0, 71, '', 0, ''),
(1178, '3', 'http://clip.vn/embed/O8BL', 0, 71, '', 0, ''),
(1179, '4', 'http://clip.vn/embed/O8Bd', 0, 71, '', 0, ''),
(1180, '5', 'http://clip.vn/embed/O8BS', 0, 71, '', 0, ''),
(1181, '6', 'http://clip.vn/embed/O8kV', 0, 71, '', 0, ''),
(1182, '7', 'http://clip.vn/embed/O8k5', 0, 71, '', 0, ''),
(1183, '8', 'http://clip.vn/embed/O8kf', 0, 71, '', 0, ''),
(1184, '9', 'http://clip.vn/embed/O8kN', 0, 71, '', 0, ''),
(1185, '10', 'http://clip.vn/embed/O8k7', 0, 71, '', 0, ''),
(1186, '11', 'http://clip.vn/embed/O8kH', 0, 71, '', 0, ''),
(1187, '12', 'http://clip.vn/embed/O8AR', 0, 71, '', 0, ''),
(1188, '13', 'http://clip.vn/embed/O8AV', 0, 71, '', 0, ''),
(1189, '14', 'http://clip.vn/embed/O8Ag', 0, 71, '', 0, ''),
(1190, '15', 'http://clip.vn/embed/O8A0', 0, 71, '', 0, ''),
(1191, '16', 'http://clip.vn/embed/O8AL', 0, 71, '', 0, ''),
(1192, '17', 'http://clip.vn/embed/O8AT', 0, 71, '', 0, ''),
(1193, '18', 'http://clip.vn/embed/O8A5', 0, 71, '', 0, ''),
(1194, '19', 'http://clip.vn/embed/O8-k', 0, 71, '', 0, ''),
(1195, '20', 'http://clip.vn/embed/ON_W', 0, 71, '', 0, ''),
(1196, '21', 'http://clip.vn/embed/O8--', 0, 71, '', 0, ''),
(1197, '22', 'http://clip.vn/embed/ON_R', 0, 71, '', 0, ''),
(1198, '23', 'http://clip.vn/embed/ON_V', 0, 71, '', 0, ''),
(1199, '24', 'http://clip.vn/embed/ON_D', 0, 71, '', 0, ''),
(1200, '25', 'http://clip.vn/embed/ON_O', 0, 71, '', 0, ''),
(1201, '26', 'http://clip.vn/embed/ON_F', 0, 71, '', 0, ''),
(1202, '27', 'http://clip.vn/embed/ON_3', 0, 71, '', 0, ''),
(1203, '28', 'http://clip.vn/embed/ON_g', 0, 71, '', 0, ''),
(1204, '29', 'http://clip.vn/embed/ON_i', 0, 71, '', 0, ''),
(1205, '30', 'http://clip.vn/embed/ON_0', 0, 71, '', 0, ''),
(1206, '31', 'http://clip.vn/embed/ON_n', 0, 71, '', 0, ''),
(1207, '32', 'http://clip.vn/embed/ON_L', 0, 71, '', 0, ''),
(1208, '33', 'http://clip.vn/embed/ON_m', 0, 71, '', 0, ''),
(1209, '34', 'http://clip.vn/embed/ON_t', 0, 71, '', 0, ''),
(1210, '35', 'http://clip.vn/embed/ON_w', 0, 71, '', 0, ''),
(1211, '36', 'http://clip.vn/embed/ON_d', 0, 71, '', 0, ''),
(1212, '37', 'http://clip.vn/embed/ON_S', 0, 71, '', 0, ''),
(1213, '38', 'http://clip.vn/embed/ON_v', 0, 71, '', 0, ''),
(1214, '39', 'http://clip.vn/embed/ON_7', 0, 71, '', 0, ''),
(1215, '40', 'http://clip.vn/embed/ON_N', 0, 71, '', 0, ''),
(1216, '41', 'http://clip.vn/embed/ON_l', 0, 71, '', 0, ''),
(1217, '42', 'http://clip.vn/embed/ONav', 0, 71, '', 0, ''),
(1218, '43', 'http://clip.vn/embed/ONal', 0, 71, '', 0, ''),
(1219, '1', 'http://clip.vn/embed/OMYR', 0, 72, '', 0, ''),
(1220, '2', 'http://clip.vn/embed/OMYV', 0, 72, '', 0, ''),
(1221, '3', 'http://clip.vn/embed/OMYs', 0, 72, '', 0, ''),
(1222, '4', 'http://clip.vn/embed/OMYT', 0, 72, '', 0, ''),
(1223, '5', 'http://clip.vn/embed/OMYw', 0, 72, '', 0, ''),
(1224, '6', 'http://clip.vn/embed/OMYn', 0, 72, '', 0, ''),
(1225, '7', 'http://clip.vn/embed/OMrB', 0, 72, '', 0, ''),
(1226, '8', 'http://clip.vn/embed/OMrx', 0, 72, '', 0, ''),
(1227, '9', 'http://clip.vn/embed/OMYA', 0, 72, '', 0, ''),
(1228, '10', 'http://clip.vn/embed/OMH_', 0, 72, '', 0, ''),
(1229, '11', 'http://clip.vn/embed/OMHu', 0, 72, '', 0, ''),
(1230, '12', 'http://clip.vn/embed/OMHQ', 0, 72, '', 0, ''),
(1231, '13', 'http://clip.vn/embed/OMHJ', 0, 72, '', 0, ''),
(1232, '14', 'http://clip.vn/embed/OMHk', 0, 72, '', 0, ''),
(1233, '15', 'http://clip.vn/embed/OM4e', 0, 72, '', 0, ''),
(1234, '16', 'http://clip.vn/embed/OM4n', 0, 72, '', 0, ''),
(1235, '17', 'http://clip.vn/embed/OMAe', 0, 72, '', 0, ''),
(1236, '18', 'http://clip.vn/embed/OMAI', 0, 72, '', 0, ''),
(1237, '19', 'http://clip.vn/embed/OfOA', 0, 72, '', 0, ''),
(1238, '20', 'http://clip.vn/embed/OMAy', 0, 72, '', 0, ''),
(1239, '21', 'http://clip.vn/embed/OMA1', 0, 72, '', 0, ''),
(1240, '22', 'http://clip.vn/embed/OJWj', 0, 72, '', 0, ''),
(1241, '23', 'http://clip.vn/embed/OJW5', 0, 72, '', 0, ''),
(1242, '24', 'http://clip.vn/embed/OJWp', 0, 72, '', 0, ''),
(1243, '25', 'http://clip.vn/embed/OJW0', 0, 72, '', 0, ''),
(1244, '26', 'http://clip.vn/embed/OJWm', 0, 72, '', 0, ''),
(1245, '27', 'http://clip.vn/embed/OJWT', 0, 72, '', 0, ''),
(1246, '28', 'http://clip.vn/embed/OJWw', 0, 72, '', 0, ''),
(1247, '29', 'http://clip.vn/embed/OJWn', 0, 72, '', 0, ''),
(1248, '30', 'http://clip.vn/embed/OJWd', 0, 72, '', 0, ''),
(1249, '31', 'http://clip.vn/embed/OJWf', 0, 72, '', 0, ''),
(1250, '32', 'http://clip.vn/embed/OJWN', 0, 72, '', 0, ''),
(1251, '33', 'http://clip.vn/embed/OJWo', 0, 72, '', 0, ''),
(1252, '34', 'http://clip.vn/embed/OJWl', 0, 72, '', 0, ''),
(1253, '35', 'http://clip.vn/embed/OJWv', 0, 72, '', 0, ''),
(1254, '36', 'http://clip.vn/embed/OJW7', 0, 72, '', 0, ''),
(1255, '37', 'http://clip.vn/embed/OJWk', 0, 72, '', 0, ''),
(1256, '38', 'http://clip.vn/embed/OJW-', 0, 72, '', 0, ''),
(1257, '39', 'http://clip.vn/embed/OJzW', 0, 72, '', 0, ''),
(1258, '40', 'http://clip.vn/embed/OJzD', 0, 72, '', 0, ''),
(1259, '41', 'http://clip.vn/embed/OJzO', 0, 72, '', 0, ''),
(1260, '1', 'http://clip.vn/embed/OX2v', 0, 73, '', 0, ''),
(1261, '2', 'http://clip.vn/embed/OX2l', 0, 73, '', 0, ''),
(1262, '3', 'http://clip.vn/embed/OX2r', 0, 73, '', 0, ''),
(1263, '4', 'http://clip.vn/embed/OX27', 0, 73, '', 0, ''),
(1264, '5', 'http://clip.vn/embed/OXRD', 0, 73, '', 0, ''),
(1265, '6', 'http://clip.vn/embed/OXRO', 0, 73, '', 0, ''),
(1266, '7', 'http://clip.vn/embed/OXR2', 0, 73, '', 0, ''),
(1267, '8', 'http://clip.vn/embed/OXRR', 0, 73, '', 0, ''),
(1268, '9', 'http://clip.vn/embed/OXRF', 0, 73, '', 0, ''),
(1269, '10', 'http://clip.vn/embed/OXRI', 0, 73, '', 0, ''),
(1270, '11', 'http://clip.vn/embed/OXRj', 0, 73, '', 0, ''),
(1271, '12', 'http://clip.vn/embed/OXRp', 0, 73, '', 0, ''),
(1272, '13', 'http://clip.vn/embed/OXRP', 0, 73, '', 0, ''),
(1273, '14', 'http://clip.vn/embed/OXRC', 0, 73, '', 0, ''),
(1274, '15', 'http://clip.vn/embed/OXR9', 0, 73, '', 0, ''),
(1275, '16', 'http://clip.vn/embed/OXRa', 0, 73, '', 0, ''),
(1276, '17', 'http://clip.vn/embed/OXRu', 0, 73, '', 0, ''),
(1277, '18', 'http://clip.vn/embed/OXRQ', 0, 73, '', 0, ''),
(1278, '19', 'http://clip.vn/embed/OXR6', 0, 73, '', 0, ''),
(1279, '20', 'http://clip.vn/embed/OXRX', 0, 73, '', 0, ''),
(1280, '21', 'http://clip.vn/embed/OXRw', 0, 73, '', 0, ''),
(1281, '22', 'http://clip.vn/embed/OXRd', 0, 73, '', 0, ''),
(1282, '23', 'http://clip.vn/embed/Onbj', 0, 73, '', 0, ''),
(1283, '24', 'http://clip.vn/embed/Onbp', 0, 73, '', 0, ''),
(1284, '25', 'http://clip.vn/embed/Onbi', 0, 73, '', 0, ''),
(1285, '26', 'http://clip.vn/embed/Onbm', 0, 73, '', 0, ''),
(1286, '27', 'http://clip.vn/embed/Onb0', 0, 73, '', 0, ''),
(1287, '28', 'http://clip.vn/embed/Onbf', 0, 73, '', 0, ''),
(1288, '29', 'http://clip.vn/embed/Onbv', 0, 73, '', 0, ''),
(1289, '30', 'http://clip.vn/embed/Onbl', 0, 73, '', 0, ''),
(1290, '31', 'http://clip.vn/embed/Onbo', 0, 73, '', 0, ''),
(1291, '32', 'http://clip.vn/embed/OnbS', 0, 73, '', 0, ''),
(1292, '33', 'http://clip.vn/embed/OnSL', 0, 73, '', 0, ''),
(1293, '34', 'http://clip.vn/embed/OnS5', 0, 73, '', 0, ''),
(1294, '35', 'http://clip.vn/embed/OnST', 0, 73, '', 0, ''),
(1295, '36', 'http://clip.vn/embed/OnSs', 0, 73, '', 0, ''),
(1296, '37', 'http://clip.vn/embed/OnSt', 0, 73, '', 0, ''),
(1297, '38', 'http://clip.vn/embed/OnSb', 0, 73, '', 0, ''),
(1298, '39', 'http://clip.vn/embed/OnSo', 0, 73, '', 0, ''),
(1299, '40', 'http://clip.vn/embed/OnSc', 0, 73, '', 0, ''),
(1300, '41', 'http://clip.vn/embed/OnYE', 0, 73, '', 0, ''),
(1301, '42', 'http://clip.vn/embed/OnSN', 0, 73, '', 0, ''),
(1302, '43', 'http://clip.vn/embed/OnSY', 0, 73, '', 0, ''),
(1303, '44', 'http://clip.vn/embed/OnSA', 0, 73, '', 0, ''),
(1304, '45', 'http://clip.vn/embed/Onc_', 0, 73, '', 0, ''),
(1305, '1', 'http://clip.vn/embed/WYbP', 0, 74, '', 0, ''),
(1306, '2', 'http://clip.vn/embed/WYbC', 0, 74, '', 0, ''),
(1307, '3', 'http://clip.vn/embed/WYbm', 0, 74, '', 0, ''),
(1308, '4', 'http://clip.vn/embed/WYbL', 0, 74, '', 0, ''),
(1309, '5', 'http://clip.vn/embed/WYb5', 0, 74, '', 0, ''),
(1310, '1', 'http://clip.vn/embed/z_8G', 0, 20, '', 0, ''),
(1311, '2', 'http://clip.vn/embed/z_ol', 0, 20, '', 0, ''),
(1312, '3', 'http://clip.vn/embed/z_or', 0, 20, '', 0, ''),
(1313, '4', 'http://clip.vn/embed/z_o4', 0, 20, '', 0, ''),
(1314, '5', 'http://clip.vn/embed/z_ox', 0, 20, '', 0, ''),
(1315, '6', 'http://clip.vn/embed/z_oH', 0, 20, '', 0, ''),
(1316, '7', 'http://clip.vn/embed/z_oB', 0, 20, '', 0, ''),
(1317, '8', 'http://clip.vn/embed/z_oA', 0, 20, '', 0, ''),
(1318, '9', 'http://clip.vn/embed/z_o-', 0, 20, '', 0, ''),
(1319, '10', 'http://clip.vn/embed/z_ok', 0, 20, '', 0, ''),
(1320, '11', 'http://clip.vn/embed/z_8_', 0, 20, '', 0, ''),
(1321, '12', 'http://clip.vn/embed/z_8W', 0, 20, '', 0, ''),
(1322, '13', 'http://clip.vn/embed/z_8z', 0, 20, '', 0, ''),
(1323, '14', 'http://clip.vn/embed/z_8D', 0, 20, '', 0, ''),
(1324, '15', 'http://clip.vn/embed/z_8h', 0, 20, '', 0, ''),
(1325, '16', 'http://clip.vn/embed/z_8O', 0, 20, '', 0, ''),
(1326, '17', 'http://clip.vn/embed/z_cw', 0, 20, '', 0, ''),
(1327, '18', 'http://clip.vn/embed/z_cK', 0, 20, '', 0, ''),
(1328, '19', 'http://clip.vn/embed/z_Hn', 0, 20, '', 0, ''),
(1329, '20', 'http://clip.vn/embed/z_Ht', 0, 20, '', 0, ''),
(1330, '21', 'http://clip.vn/embed/zWWz', 0, 20, '', 0, ''),
(1331, '22', 'http://clip.vn/embed/zWWD', 0, 20, '', 0, ''),
(1332, '23', 'http://clip.vn/embed/zWWO', 0, 20, '', 0, ''),
(1333, '24', 'http://clip.vn/embed/zWW2', 0, 20, '', 0, ''),
(1334, '25', 'http://clip.vn/embed/zWWR', 0, 20, '', 0, ''),
(1335, '26', 'http://clip.vn/embed/zWWe', 0, 20, '', 0, ''),
(1336, '27', 'http://clip.vn/embed/zWWg', 0, 20, '', 0, ''),
(1337, '28', 'http://clip.vn/embed/zWWE', 0, 20, '', 0, ''),
(1338, '29', 'http://clip.vn/embed/zWzt', 0, 20, '', 0, ''),
(1339, '30', 'http://clip.vn/embed/zWzX', 0, 20, '', 0, ''),
(1340, '31', 'http://clip.vn/embed/zWE5', 0, 20, '', 0, ''),
(1341, '32', 'http://clip.vn/embed/zWEu', 0, 20, '', 0, ''),
(1342, '33', 'http://clip.vn/embed/zWEK', 0, 20, '', 0, ''),
(1343, '34', 'http://clip.vn/embed/zWEd', 0, 20, '', 0, ''),
(1344, '35', 'http://clip.vn/embed/zWfs', 0, 20, '', 0, ''),
(1345, '36', 'http://clip.vn/embed/zWfQ', 0, 20, '', 0, ''),
(1346, '37', 'http://clip.vn/embed/zWJW', 0, 20, '', 0, ''),
(1347, '38', 'http://clip.vn/embed/zWJ_', 0, 20, '', 0, ''),
(1348, '39', 'http://clip.vn/embed/zWNJ', 0, 20, '', 0, ''),
(1349, '40', 'http://clip.vn/embed/zWNo', 0, 20, '', 0, ''),
(1350, '41', 'http://clip.vn/embed/zWb6', 0, 20, '', 0, ''),
(1351, '42', 'http://clip.vn/embed/zWbt', 0, 20, '', 0, ''),
(1352, '43', 'http://clip.vn/embed/zWr7', 0, 20, '', 0, ''),
(1353, '44', 'http://clip.vn/embed/zWrq', 0, 20, '', 0, ''),
(1354, '45', 'http://clip.vn/embed/zWBp', 0, 20, '', 0, ''),
(1355, '46', 'http://clip.vn/embed/zWBZ', 0, 20, '', 0, ''),
(1356, '47', 'http://clip.vn/embed/zWAi', 0, 20, '', 0, ''),
(1357, '48', 'http://clip.vn/embed/zWAp', 0, 20, '', 0, ''),
(1358, '49', 'http://clip.vn/embed/zWAf', 0, 20, '', 0, ''),
(1359, '50', 'http://clip.vn/embed/zWAJ', 0, 20, '', 0, ''),
(1360, '51', 'http://clip.vn/embed/zzzm', 0, 20, '', 0, ''),
(1361, '52', 'http://clip.vn/embed/zzz9', 0, 20, '', 0, ''),
(1362, '53', 'http://clip.vn/embed/zzef', 0, 20, '', 0, ''),
(1363, '54', 'http://clip.vn/embed/zzeM', 0, 20, '', 0, ''),
(1364, '55', 'http://clip.vn/embed/zz1g', 0, 20, '', 0, ''),
(1365, '56', 'http://clip.vn/embed/zz1I', 0, 20, '', 0, ''),
(1366, '57', 'http://clip.vn/embed/zzEH', 0, 20, '', 0, ''),
(1367, '58', 'http://clip.vn/embed/zzE4', 0, 20, '', 0, ''),
(1368, '59', 'http://clip.vn/embed/zzLy', 0, 20, '', 0, ''),
(1369, '60', 'http://clip.vn/embed/zzL3', 0, 20, '', 0, ''),
(1370, '61', 'http://clip.vn/embed/zzQO', 0, 20, '', 0, ''),
(1371, '62', 'http://clip.vn/embed/zzQ2', 0, 20, '', 0, ''),
(1372, '63', 'http://clip.vn/embed/zzQg', 0, 20, '', 0, ''),
(1373, '64', 'http://clip.vn/embed/zzQE', 0, 20, '', 0, ''),
(1374, '65', 'http://clip.vn/embed/zznE', 0, 20, '', 0, ''),
(1375, '66', 'http://clip.vn/embed/zznj', 0, 20, '', 0, ''),
(1376, '67', 'http://clip.vn/embed/zzMG', 0, 20, '', 0, ''),
(1377, '68', 'http://clip.vn/embed/zzMP', 0, 20, '', 0, ''),
(1378, '69', 'http://clip.vn/embed/zzoN', 0, 20, '', 0, ''),
(1379, '70', 'http://clip.vn/embed/zzob', 0, 20, '', 0, ''),
(1380, '71', 'http://clip.vn/embed/zzvP', 0, 20, '', 0, ''),
(1381, '72', 'http://clip.vn/embed/zzvi', 0, 20, '', 0, ''),
(1382, '73', 'http://clip.vn/embed/zzHz', 0, 20, '', 0, ''),
(1383, '74', 'http://clip.vn/embed/zzHW', 0, 20, '', 0, ''),
(1384, '1', 'http://clip.vn/embed/Or2t', 0, 75, '', 0, ''),
(1385, '2', 'http://clip.vn/embed/Or2X', 0, 75, '', 0, ''),
(1386, '3', 'http://clip.vn/embed/Or2n', 0, 75, '', 0, ''),
(1387, '1', 'http://clip.vn/embed/O4D-', 0, 76, '', 0, ''),
(1388, '1', 'http://clip.vn/embed/O4C7', 0, 77, '', 0, ''),
(1389, '2', 'http://clip.vn/embed/O4CH', 0, 77, '', 0, ''),
(1390, '1', 'http://clip.vn/embed/OHwu', 0, 78, '', 0, ''),
(1391, '2', 'http://clip.vn/embed/OHwa', 0, 78, '', 0, ''),
(1392, '3', 'http://clip.vn/embed/OHwL', 0, 78, '', 0, ''),
(1393, '4', 'http://clip.vn/embed/OHwm', 0, 78, '', 0, ''),
(1394, '1', 'http://clip.vn/embed/O4WO', 0, 79, '', 0, ''),
(1395, '2', 'http://clip.vn/embed/O4Wh', 0, 79, '', 0, ''),
(1396, '3', 'http://clip.vn/embed/O4_k', 0, 79, '', 0, ''),
(1397, '4', 'http://clip.vn/embed/O4_S', 0, 79, '', 0, ''),
(1398, '1', 'http://clip.vn/embed/OJlv', 0, 80, '', 0, ''),
(1399, '2', 'http://clip.vn/embed/OJll', 0, 80, '', 0, ''),
(1400, '3', 'http://clip.vn/embed/OJlH', 0, 80, '', 0, ''),
(1401, '1', 'http://clip.vn/embed/OOBi', 0, 81, 'upload/2013/04/10/subtitle/1401.srt', 0, ''),
(1402, '1', 'http://clip.vn/embed/O2LF', 0, 82, '', 0, ''),
(1403, '1', 'http://clip.vn/embed/OlzW', 0, 83, '', 0, ''),
(1404, '2', 'http://clip.vn/embed/OlzD', 0, 83, '', 0, ''),
(1405, '3', 'http://clip.vn/embed/OlzR', 0, 83, '', 0, ''),
(1406, '1', 'http://clip.vn/embed/OdCw', 0, 84, '', 0, ''),
(1407, '2', 'http://clip.vn/embed/OdCo', 0, 84, '', 0, ''),
(1408, '3', 'http://clip.vn/embed/OdCN', 0, 84, '', 0, ''),
(1409, '4', 'http://clip.vn/embed/OdCb', 0, 84, '', 0, ''),
(1410, '5', 'http://clip.vn/embed/OdCc', 0, 84, '', 0, ''),
(1411, '6', 'http://clip.vn/embed/OdCv', 0, 84, '', 0, ''),
(1412, '7', 'http://clip.vn/embed/OdCq', 0, 84, '', 0, ''),
(1413, '8', 'http://clip.vn/embed/OdCr', 0, 84, '', 0, ''),
(1414, '9', 'http://clip.vn/embed/OdCH', 0, 84, '', 0, ''),
(1415, '10', 'http://clip.vn/embed/OdCZ', 0, 84, '', 0, ''),
(1416, '11', 'http://clip.vn/embed/OdCP', 0, 84, '', 0, ''),
(1417, '12', 'http://clip.vn/embed/OdCC', 0, 84, '', 0, ''),
(1418, '13', 'http://clip.vn/embed/OdCu', 0, 84, '', 0, ''),
(1419, '14', 'http://clip.vn/embed/OdCQ', 0, 84, '', 0, ''),
(1420, '15', 'http://clip.vn/embed/OdC6', 0, 84, '', 0, ''),
(1421, '16', 'http://clip.vn/embed/OdaR', 0, 84, '', 0, ''),
(1422, '17', 'http://clip.vn/embed/Oda1', 0, 84, '', 0, ''),
(1423, '18', 'http://clip.vn/embed/Oday', 0, 84, '', 0, ''),
(1424, '19', 'http://clip.vn/embed/OdaV', 0, 84, '', 0, ''),
(1425, '20', 'http://clip.vn/embed/OdLA', 0, 84, '', 0, ''),
(1426, '21', 'http://clip.vn/embed/OdaH', 0, 84, '', 0, ''),
(1427, '22', 'http://clip.vn/embed/Odax', 0, 84, '', 0, ''),
(1428, '23', 'http://clip.vn/embed/Oda7', 0, 84, '', 0, ''),
(1429, '24', 'http://clip.vn/embed/Odak', 0, 84, '', 0, ''),
(1430, '25', 'http://clip.vn/embed/Oda-', 0, 84, '', 0, ''),
(1431, '26', 'http://clip.vn/embed/OdTP', 0, 84, '', 0, ''),
(1432, '27', 'http://clip.vn/embed/OdJb', 0, 84, '', 0, ''),
(1433, '28', 'http://clip.vn/embed/OdJS', 0, 84, '', 0, ''),
(1434, '29', 'http://clip.vn/embed/OdJl', 0, 84, '', 0, ''),
(1435, '30', 'http://clip.vn/embed/OdJv', 0, 84, '', 0, ''),
(1436, '31', 'http://clip.vn/embed/Od8w', 0, 84, '', 0, ''),
(1437, '32', 'http://clip.vn/embed/Od8M', 0, 84, '', 0, ''),
(1438, '33', 'http://clip.vn/embed/Od8Q', 0, 84, '', 0, ''),
(1439, '34', 'http://clip.vn/embed/Od8o', 0, 84, '', 0, ''),
(1440, '35', 'http://clip.vn/embed/Od88', 0, 84, '', 0, ''),
(1441, '36', 'http://clip.vn/embed/Od8N', 0, 84, '', 0, ''),
(1442, '37', 'http://clip.vn/embed/Od8S', 0, 84, '', 0, ''),
(1443, '38', 'http://clip.vn/embed/Odba', 0, 84, '', 0, ''),
(1444, '39', 'http://clip.vn/embed/Odbw', 0, 84, '', 0, ''),
(1445, '40', 'http://clip.vn/embed/Odb6', 0, 84, '', 0, ''),
(1446, '41', 'http://clip.vn/embed/OdbJ', 0, 84, '', 0, ''),
(1447, '42', 'http://clip.vn/embed/OdbH', 0, 84, '', 0, ''),
(1448, '43', 'http://clip.vn/embed/OfR2', 0, 84, '', 0, ''),
(1449, '44', 'http://clip.vn/embed/Odbx', 0, 84, '', 0, ''),
(1450, '45', 'http://clip.vn/embed/OfRQ', 0, 84, '', 0, ''),
(1451, '46', 'http://clip.vn/embed/OfRT', 0, 84, '', 0, ''),
(1452, '1', 'http://clip.vn/embed/OQtl', 0, 85, 'upload/2013/04/06/subtitle/1452.srt', 0, ''),
(1453, '1', 'http://clip.vn/embed/O4L5', 0, 86, '', 0, ''),
(1454, '2', 'http://clip.vn/embed/O4LL', 0, 86, '', 0, ''),
(1455, '3', 'http://clip.vn/embed/O4Lm', 0, 86, '', 0, ''),
(1456, '4', 'http://clip.vn/embed/O4L0', 0, 86, '', 0, ''),
(1457, '1', 'http://clip.vn/embed/OqrM', 0, 87, '', 0, ''),
(1458, '2', 'http://clip.vn/embed/OqrJ', 0, 87, '', 0, ''),
(1459, '3', 'http://clip.vn/embed/Oqr8', 0, 87, '', 0, ''),
(1460, '4', 'http://clip.vn/embed/Oqrb', 0, 87, '', 0, ''),
(1461, '1', 'http://clip.vn/embed/hiep', 0, 88, '', 0, ''),
(1462, '1', 'http://clip.vn/embed/OrDb', 0, 89, '', 0, ''),
(1463, '2', 'http://clip.vn/embed/OrDr', 0, 89, '', 0, ''),
(1464, '3', 'http://clip.vn/embed/Orhz', 0, 89, '', 0, ''),
(1465, '1', 'http://clip.vn/embed/OYbD', 0, 90, '', 0, ''),
(1466, '2', 'http://clip.vn/embed/OYbO', 0, 90, '', 0, ''),
(1467, '3', 'http://clip.vn/embed/OYbR', 0, 90, '', 0, ''),
(1468, '1', 'http://clip.vn/embed/O4d5', 0, 91, '', 0, ''),
(1469, '1', 'http://clip.vn/embed/OHos', 0, 92, '', 0, ''),
(1470, '2', 'http://clip.vn/embed/OHoQ', 0, 92, '', 0, ''),
(1471, '3', 'http://clip.vn/embed/OHo5', 0, 92, '', 0, ''),
(1472, '1', 'http://clip.vn/embed/OH8C', 0, 93, '', 0, ''),
(1473, '2', 'http://clip.vn/embed/OH8i', 0, 93, '', 0, ''),
(1474, '3', 'http://clip.vn/embed/OH8p', 0, 93, '', 0, ''),
(1475, '1', 'http://clip.vn/embed/h0g4', 0, 94, '', 0, ''),
(1476, '1', 'http://clip.vn/embed/OJdV', 0, 95, '', 0, ''),
(1477, '2', 'http://clip.vn/embed/OJdF', 0, 95, '', 0, ''),
(1478, '3', 'http://clip.vn/embed/OJKH', 0, 95, '', 0, ''),
(1479, '4', 'http://clip.vn/embed/OJdW', 0, 95, '', 0, ''),
(1480, '1', 'http://clip.vn/embed/O4NX', 0, 96, '', 0, ''),
(1481, '2', 'http://clip.vn/embed/O4NZ', 0, 96, '', 0, ''),
(1482, '3', 'http://clip.vn/embed/O4Ny', 0, 96, '', 0, ''),
(1483, '1', 'http://clip.vn/embed/OQDs', 0, 97, '', 0, ''),
(1484, '2', 'http://clip.vn/embed/OQDn', 0, 97, '', 0, ''),
(1485, '3', 'http://clip.vn/embed/OQDt', 0, 97, '', 0, ''),
(1486, '4', 'http://clip.vn/embed/OQDw', 0, 97, '', 0, ''),
(1487, '5', 'http://clip.vn/embed/OQDd', 0, 97, '', 0, ''),
(1488, '6', 'http://clip.vn/embed/OQDf', 0, 97, '', 0, ''),
(1489, '7', 'http://clip.vn/embed/OQDo', 0, 97, '', 0, ''),
(1490, '8', 'http://clip.vn/embed/OQDN', 0, 97, '', 0, ''),
(1491, '9', 'http://clip.vn/embed/OQDS', 0, 97, '', 0, ''),
(1492, '10', 'http://clip.vn/embed/OQDv', 0, 97, '', 0, ''),
(1493, '11', 'http://clip.vn/embed/OQ2P', 0, 97, '', 0, ''),
(1494, '12', 'http://clip.vn/embed/OQ29', 0, 97, '', 0, ''),
(1495, '13', 'http://clip.vn/embed/OQ-b', 0, 97, '', 0, ''),
(1496, '14', 'http://clip.vn/embed/OQ2a', 0, 97, '', 0, ''),
(1497, '15', 'http://clip.vn/embed/OQ2u', 0, 97, '', 0, ''),
(1498, '16', 'http://clip.vn/embed/OQ2Q', 0, 97, '', 0, ''),
(1499, '17', 'http://clip.vn/embed/OQ26', 0, 97, '', 0, ''),
(1500, '18', 'http://clip.vn/embed/OQ2X', 0, 97, '', 0, ''),
(1501, '19', 'http://clip.vn/embed/OQ2U', 0, 97, '', 0, ''),
(1502, '20', 'http://clip.vn/embed/OQ2K', 0, 97, '', 0, ''),
(1503, '21', 'http://clip.vn/embed/OQRR', 0, 97, '', 0, ''),
(1504, '22', 'http://clip.vn/embed/OQRV', 0, 97, '', 0, ''),
(1505, '23', 'http://clip.vn/embed/OQRF', 0, 97, '', 0, ''),
(1506, '24', 'http://clip.vn/embed/OQR3', 0, 97, '', 0, ''),
(1507, '25', 'http://clip.vn/embed/OQRg', 0, 97, '', 0, ''),
(1508, '26', 'http://clip.vn/embed/OQRG', 0, 97, '', 0, ''),
(1509, '27', 'http://clip.vn/embed/OQRE', 0, 97, '', 0, ''),
(1510, '28', 'http://clip.vn/embed/OQRZ', 0, 97, '', 0, ''),
(1511, '29', 'http://clip.vn/embed/OQRP', 0, 97, '', 0, ''),
(1512, '30', 'http://clip.vn/embed/OQRC', 0, 97, '', 0, ''),
(1513, '31', 'http://clip.vn/embed/OQe4', 0, 97, '', 0, ''),
(1514, '32', 'http://clip.vn/embed/OQeB', 0, 97, '', 0, ''),
(1515, '33', 'http://clip.vn/embed/OQV_', 0, 97, '', 0, ''),
(1516, '34', 'http://clip.vn/embed/OQeA', 0, 97, '', 0, ''),
(1517, '35', 'http://clip.vn/embed/OQVz', 0, 97, '', 0, ''),
(1518, '36', 'http://clip.vn/embed/OQVh', 0, 97, '', 0, ''),
(1519, '37', 'http://clip.vn/embed/OQV2', 0, 97, '', 0, ''),
(1520, '38', 'http://clip.vn/embed/OQVe', 0, 97, '', 0, ''),
(1521, '39', 'http://clip.vn/embed/OQV1', 0, 97, '', 0, ''),
(1522, '40', 'http://clip.vn/embed/OQVy', 0, 97, '', 0, ''),
(1523, '41', 'http://clip.vn/embed/OQV3', 0, 97, '', 0, ''),
(1524, '42', 'http://clip.vn/embed/OQVg', 0, 97, '', 0, ''),
(1525, '43', 'http://clip.vn/embed/OQVp', 0, 97, '', 0, ''),
(1526, '44', 'http://clip.vn/embed/OQVj', 0, 97, '', 0, ''),
(1527, '45', 'http://clip.vn/embed/OQVi', 0, 97, '', 0, ''),
(1528, '46', 'http://clip.vn/embed/OQVP', 0, 97, '', 0, ''),
(1529, '47', 'http://clip.vn/embed/OQVC', 0, 97, '', 0, ''),
(1530, '48', 'http://clip.vn/embed/OQV9', 0, 97, '', 0, ''),
(1531, '49', 'http://clip.vn/embed/OQVu', 0, 97, '', 0, ''),
(1532, '50', 'http://clip.vn/embed/OQVa', 0, 97, '', 0, ''),
(1533, '51', 'http://clip.vn/embed/OQci', 0, 97, '', 0, ''),
(1534, '52', 'http://clip.vn/embed/OQcm', 0, 97, '', 0, ''),
(1535, '53', 'http://clip.vn/embed/OQc0', 0, 97, '', 0, ''),
(1536, '54', 'http://clip.vn/embed/OQcT', 0, 97, '', 0, ''),
(1537, '55', 'http://clip.vn/embed/OQcL', 0, 97, '', 0, ''),
(1538, '56', 'http://clip.vn/embed/OQc5', 0, 97, '', 0, ''),
(1539, '57', 'http://clip.vn/embed/OQcs', 0, 97, '', 0, ''),
(1540, '58', 'http://clip.vn/embed/OQcU', 0, 97, '', 0, ''),
(1541, '59', 'http://clip.vn/embed/OQcK', 0, 97, '', 0, ''),
(1542, '60', 'http://clip.vn/embed/OQcM', 0, 97, '', 0, ''),
(1543, '61', 'http://clip.vn/embed/OQcJ', 0, 97, '', 0, ''),
(1544, '62', 'http://clip.vn/embed/OQc8', 0, 97, '', 0, ''),
(1545, '63', 'http://clip.vn/embed/OQcb', 0, 97, '', 0, ''),
(1546, '64', 'http://clip.vn/embed/OQcc', 0, 97, '', 0, ''),
(1547, '65', 'http://clip.vn/embed/OQcx', 0, 97, '', 0, ''),
(1548, '66', 'http://clip.vn/embed/OQck', 0, 97, '', 0, ''),
(1549, '67', 'http://clip.vn/embed/OQc-', 0, 97, '', 0, ''),
(1550, '68', 'http://clip.vn/embed/OQvW', 0, 97, '', 0, ''),
(1551, '69', 'http://clip.vn/embed/OQvD', 0, 97, '', 0, ''),
(1552, '70', 'http://clip.vn/embed/OQcl', 0, 97, '', 0, ''),
(1553, '71', 'http://clip.vn/embed/OQcv', 0, 97, '', 0, ''),
(1554, '72', 'http://clip.vn/embed/OQc7', 0, 97, '', 0, ''),
(1555, '73', 'http://clip.vn/embed/OQcH', 0, 97, '', 0, ''),
(1556, '74', 'http://clip.vn/embed/OQv2', 0, 97, '', 0, ''),
(1557, '75', 'http://clip.vn/embed/OQve', 0, 97, '', 0, ''),
(1558, '76', 'http://clip.vn/embed/OQv1', 0, 97, '', 0, ''),
(1559, '77', 'http://clip.vn/embed/OQvy', 0, 97, '', 0, ''),
(1560, '78', 'http://clip.vn/embed/OQvI', 0, 97, '', 0, ''),
(1561, '79', 'http://clip.vn/embed/OQvE', 0, 97, '', 0, ''),
(1562, '80', 'http://clip.vn/embed/OQvG', 0, 97, '', 0, ''),
(1563, '81', 'http://clip.vn/embed/OQv9', 0, 97, '', 0, ''),
(1564, '82', 'http://clip.vn/embed/OQva', 0, 97, '', 0, ''),
(1565, '83', 'http://clip.vn/embed/OQvZ', 0, 97, '', 0, ''),
(1566, '84', 'http://clip.vn/embed/OQvP', 0, 97, '', 0, ''),
(1567, '85', 'http://clip.vn/embed/OQvC', 0, 97, '', 0, ''),
(1568, '86', 'http://clip.vn/embed/OQvQ', 0, 97, '', 0, ''),
(1569, '87', 'http://clip.vn/embed/OQvJ', 0, 97, '', 0, ''),
(1570, '88', 'http://clip.vn/embed/OQvb', 0, 97, '', 0, ''),
(1571, '89', 'http://clip.vn/embed/OQv8', 0, 97, '', 0, ''),
(1572, '90', 'http://clip.vn/embed/OQvc', 0, 97, '', 0, ''),
(1573, '91', 'http://clip.vn/embed/OQv6', 0, 97, '', 0, ''),
(1574, '92', 'http://clip.vn/embed/OQvX', 0, 97, '', 0, ''),
(1575, '93', 'http://clip.vn/embed/OQvU', 0, 97, '', 0, ''),
(1576, '94', 'http://clip.vn/embed/OQvK', 0, 97, '', 0, ''),
(1577, '95', 'http://clip.vn/embed/OQvM', 0, 97, '', 0, ''),
(1578, '96', 'http://clip.vn/embed/OQvY', 0, 97, '', 0, ''),
(1579, '97', 'http://clip.vn/embed/OQvq', 0, 97, '', 0, ''),
(1580, '98', 'http://clip.vn/embed/OQvr', 0, 97, '', 0, ''),
(1581, '99', 'http://clip.vn/embed/OQv4', 0, 97, '', 0, ''),
(1582, '100', 'http://clip.vn/embed/OQvB', 0, 97, '', 0, ''),
(1583, '101', 'http://clip.vn/embed/OQv-', 0, 97, '', 0, ''),
(1584, '102', 'http://clip.vn/embed/OQYW', 0, 97, '', 0, ''),
(1585, '103', 'http://clip.vn/embed/OQYD', 0, 97, '', 0, ''),
(1586, '104', 'http://clip.vn/embed/OQYV', 0, 97, '', 0, ''),
(1587, '105', 'http://clip.vn/embed/OQYF', 0, 97, '', 0, ''),
(1588, '106', 'http://clip.vn/embed/OQYR', 0, 97, '', 0, ''),
(1589, '107', 'http://clip.vn/embed/OQYO', 0, 97, '', 0, ''),
(1590, '108', 'http://clip.vn/embed/OQY3', 0, 97, '', 0, ''),
(1591, '109', 'http://clip.vn/embed/OQYg', 0, 97, '', 0, ''),
(1592, '110', 'http://clip.vn/embed/OQYj', 0, 97, '', 0, ''),
(1593, '111', 'http://clip.vn/embed/OQYp', 0, 97, '', 0, ''),
(1594, '112', 'http://clip.vn/embed/OQYm', 0, 97, '', 0, ''),
(1595, '113', 'http://clip.vn/embed/OQYL', 0, 97, '', 0, ''),
(1596, '114', 'http://clip.vn/embed/OQYi', 0, 97, '', 0, ''),
(1597, '115', 'http://clip.vn/embed/OQY0', 0, 97, '', 0, ''),
(1598, '116', 'http://clip.vn/embed/OQYT', 0, 97, '', 0, ''),
(1599, '117', 'http://clip.vn/embed/OQYQ', 0, 97, '', 0, ''),
(1600, '118', 'http://clip.vn/embed/OQY6', 0, 97, '', 0, ''),
(1601, '119', 'http://clip.vn/embed/OQYX', 0, 97, '', 0, ''),
(1602, '120', 'http://clip.vn/embed/OQYU', 0, 97, '', 0, ''),
(1603, '121', 'http://clip.vn/embed/OQYK', 0, 97, '', 0, ''),
(1604, '122', 'http://clip.vn/embed/OQYf', 0, 97, '', 0, ''),
(1605, '123', 'http://clip.vn/embed/OQYo', 0, 97, '', 0, ''),
(1606, '124', 'http://clip.vn/embed/OQYN', 0, 97, '', 0, ''),
(1607, '125', 'http://clip.vn/embed/OQYv', 0, 97, '', 0, ''),
(1608, '126', 'http://clip.vn/embed/OQYS', 0, 97, '', 0, ''),
(1609, '127', 'http://clip.vn/embed/OQYl', 0, 97, '', 0, ''),
(1610, '128', 'http://clip.vn/embed/OQY7', 0, 97, '', 0, ''),
(1611, '129', 'http://clip.vn/embed/OQYx', 0, 97, '', 0, ''),
(1612, '130', 'http://clip.vn/embed/OQYk', 0, 97, '', 0, ''),
(1613, '131', 'http://clip.vn/embed/OQYH', 0, 97, '', 0, ''),
(1614, '132', 'http://clip.vn/embed/OQY-', 0, 97, '', 0, ''),
(1615, '133', 'http://clip.vn/embed/OQlW', 0, 97, '', 0, ''),
(1616, '134', 'http://clip.vn/embed/OQlD', 0, 97, '', 0, ''),
(1617, '135', 'http://clip.vn/embed/OQlO', 0, 97, '', 0, ''),
(1618, '136', 'http://clip.vn/embed/OQlR', 0, 97, '', 0, ''),
(1619, '137', 'http://clip.vn/embed/OQlV', 0, 97, '', 0, ''),
(1620, '138', 'http://clip.vn/embed/OQl3', 0, 97, '', 0, ''),
(1621, '139', 'http://clip.vn/embed/OQlg', 0, 97, '', 0, ''),
(1622, '140', 'http://clip.vn/embed/OQlj', 0, 97, '', 0, ''),
(1623, '141', 'http://clip.vn/embed/OQlp', 0, 97, '', 0, ''),
(1624, '142', 'http://clip.vn/embed/OQli', 0, 97, '', 0, ''),
(1625, '143', 'http://clip.vn/embed/OQlF', 0, 97, '', 0, ''),
(1626, '144', 'http://clip.vn/embed/OQl9', 0, 97, '', 0, ''),
(1627, '145', 'http://clip.vn/embed/OQla', 0, 97, '', 0, ''),
(1628, '146', 'http://clip.vn/embed/OQlu', 0, 97, '', 0, ''),
(1629, '147', 'http://clip.vn/embed/OQlQ', 0, 97, '', 0, ''),
(1630, '148', 'http://clip.vn/embed/OQl6', 0, 97, '', 0, ''),
(1631, '149', 'http://clip.vn/embed/OQlX', 0, 97, '', 0, ''),
(1632, '150', 'http://clip.vn/embed/OQlU', 0, 97, '', 0, ''),
(1633, '151', 'http://clip.vn/embed/OsKI', 0, 97, '', 0, ''),
(1634, '152', 'http://clip.vn/embed/OsK0', 0, 97, '', 0, ''),
(1635, '153', 'http://clip.vn/embed/OsNi', 0, 97, '', 0, ''),
(1636, '154', 'http://clip.vn/embed/OsKj', 0, 97, '', 0, ''),
(1637, '155', 'http://clip.vn/embed/OsKp', 0, 97, '', 0, ''),
(1638, '156', 'http://clip.vn/embed/OsKm', 0, 97, '', 0, ''),
(1639, '157', 'http://clip.vn/embed/OsN0', 0, 97, '', 0, ''),
(1640, '158', 'http://clip.vn/embed/OsKs', 0, 97, '', 0, ''),
(1641, '159', 'http://clip.vn/embed/OsNm', 0, 97, '', 0, ''),
(1642, '160', 'http://clip.vn/embed/OsNL', 0, 97, '', 0, ''),
(1643, '161', 'http://clip.vn/embed/OsKw', 0, 97, '', 0, ''),
(1644, '162', 'http://clip.vn/embed/Osdk', 0, 97, '', 0, ''),
(1645, '163', 'http://clip.vn/embed/OsK8', 0, 97, '', 0, ''),
(1646, '164', 'http://clip.vn/embed/OsKb', 0, 97, '', 0, ''),
(1647, '165', 'http://clip.vn/embed/OsKc', 0, 97, '', 0, ''),
(1648, '166', 'http://clip.vn/embed/OsKY', 0, 97, '', 0, ''),
(1649, '167', 'http://clip.vn/embed/OsKq', 0, 97, '', 0, ''),
(1650, '168', 'http://clip.vn/embed/OsKH', 0, 97, '', 0, ''),
(1651, '169', 'http://clip.vn/embed/OsKx', 0, 97, '', 0, ''),
(1652, '170', 'http://clip.vn/embed/OsKk', 0, 97, '', 0, ''),
(1653, '171', 'http://clip.vn/embed/Osdz', 0, 97, '', 0, ''),
(1654, '172', 'http://clip.vn/embed/OsNT', 0, 97, '', 0, ''),
(1655, '173', 'http://clip.vn/embed/OsN5', 0, 97, '', 0, ''),
(1656, '174', 'http://clip.vn/embed/Osde', 0, 97, '', 0, ''),
(1657, '175', 'http://clip.vn/embed/Osd1', 0, 97, '', 0, ''),
(1658, '176', 'http://clip.vn/embed/Osdy', 0, 97, '', 0, ''),
(1659, '177', 'http://clip.vn/embed/OsdZ', 0, 97, '', 0, ''),
(1660, '178', 'http://clip.vn/embed/OsdI', 0, 97, '', 0, ''),
(1661, '179', 'http://clip.vn/embed/OsdE', 0, 97, '', 0, ''),
(1662, '180', 'http://clip.vn/embed/OsdG', 0, 97, '', 0, ''),
(1663, '181', 'http://clip.vn/embed/OsdP', 0, 97, '', 0, ''),
(1664, '182', 'http://clip.vn/embed/OsdC', 0, 97, '', 0, ''),
(1665, '183', 'http://clip.vn/embed/OsNs', 0, 97, '', 0, ''),
(1666, '184', 'http://clip.vn/embed/Osda', 0, 97, '', 0, ''),
(1667, '185', 'http://clip.vn/embed/OsNt', 0, 97, '', 0, ''),
(1668, '186', 'http://clip.vn/embed/Osd5', 0, 97, '', 0, ''),
(1669, '187', 'http://clip.vn/embed/Osds', 0, 97, '', 0, ''),
(1670, '188', 'http://clip.vn/embed/Osdt', 0, 97, '', 0, ''),
(1671, '189', 'http://clip.vn/embed/Osdn', 0, 97, '', 0, ''),
(1672, '190', 'http://clip.vn/embed/OsNw', 0, 97, '', 0, ''),
(1673, '191', 'http://clip.vn/embed/Osdw', 0, 97, '', 0, ''),
(1674, '192', 'http://clip.vn/embed/Osdd', 0, 97, '', 0, ''),
(1675, '193', 'http://clip.vn/embed/Osdf', 0, 97, '', 0, ''),
(1676, '194', 'http://clip.vn/embed/OsNd', 0, 97, '', 0, ''),
(1677, '195', 'http://clip.vn/embed/Osd-', 0, 97, '', 0, ''),
(1678, '196', 'http://clip.vn/embed/Osdb', 0, 97, '', 0, ''),
(1679, '197', 'http://clip.vn/embed/Osdc', 0, 97, '', 0, ''),
(1680, '198', 'http://clip.vn/embed/OsNf', 0, 97, '', 0, ''),
(1681, '199', 'http://clip.vn/embed/OsdH', 0, 97, '', 0, ''),
(1682, '200', 'http://clip.vn/embed/Osdx', 0, 97, '', 0, ''),
(1683, '201', 'http://clip.vn/embed/Osou', 0, 97, '', 0, ''),
(1684, '202', 'http://clip.vn/embed/Osoa', 0, 97, '', 0, ''),
(1685, '203', 'http://clip.vn/embed/Oso9', 0, 97, '', 0, ''),
(1686, '204', 'http://clip.vn/embed/Oso0', 0, 97, '', 0, ''),
(1687, '205', 'http://clip.vn/embed/Osoi', 0, 97, '', 0, ''),
(1688, '206', 'http://clip.vn/embed/Osop', 0, 97, '', 0, ''),
(1689, '207', 'http://clip.vn/embed/Osoj', 0, 97, '', 0, ''),
(1690, '208', 'http://clip.vn/embed/Osoy', 0, 97, '', 0, ''),
(1691, '209', 'http://clip.vn/embed/Osom', 0, 97, '', 0, ''),
(1692, '210', 'http://clip.vn/embed/OsoI', 0, 97, '', 0, ''),
(1693, '211', 'http://clip.vn/embed/Oso1', 0, 97, '', 0, ''),
(1694, '212', 'http://clip.vn/embed/Oso2', 0, 97, '', 0, ''),
(1695, '213', 'http://clip.vn/embed/Osoh', 0, 97, '', 0, ''),
(1696, '214', 'http://clip.vn/embed/Oso_', 0, 97, '', 0, ''),
(1697, '215', 'http://clip.vn/embed/OsJx', 0, 97, '', 0, ''),
(1698, '216', 'http://clip.vn/embed/OsJH', 0, 97, '', 0, ''),
(1699, '217', 'http://clip.vn/embed/OsJ7', 0, 97, '', 0, ''),
(1700, '218', 'http://clip.vn/embed/OsJk', 0, 97, '', 0, ''),
(1701, '219', 'http://clip.vn/embed/Osoe', 0, 97, '', 0, ''),
(1702, '220', 'http://clip.vn/embed/OsJN', 0, 97, '', 0, ''),
(1703, '221', 'http://clip.vn/embed/OsJS', 0, 97, '', 0, ''),
(1704, '222', 'http://clip.vn/embed/OsJM', 0, 97, '', 0, ''),
(1705, '223', 'http://clip.vn/embed/OsJK', 0, 97, '', 0, ''),
(1706, '224', 'http://clip.vn/embed/Osoz', 0, 97, '', 0, '');
INSERT INTO `ipos_ep` (`epid`, `epname`, `epurl`, `error`, `phimid`, `epsub`, `server`, `epdemo`) VALUES
(1707, '225', 'http://clip.vn/embed/OsJU', 0, 97, '', 0, ''),
(1708, '226', 'http://clip.vn/embed/OsJ5', 0, 97, '', 0, ''),
(1709, '227', 'http://clip.vn/embed/OsJT', 0, 97, '', 0, ''),
(1710, '228', 'http://clip.vn/embed/OsJs', 0, 97, '', 0, ''),
(1711, '229', 'http://clip.vn/embed/OsJm', 0, 97, '', 0, ''),
(1712, '230', 'http://clip.vn/embed/OsJ0', 0, 97, '', 0, ''),
(1713, '231', 'http://clip.vn/embed/OsJi', 0, 97, '', 0, ''),
(1714, '232', 'http://clip.vn/embed/OsJL', 0, 97, '', 0, ''),
(1715, '233', 'http://clip.vn/embed/OsJI', 0, 97, '', 0, ''),
(1716, '234', 'http://clip.vn/embed/OsNo', 0, 97, '', 0, ''),
(1717, '235', 'http://clip.vn/embed/OsJ1', 0, 97, '', 0, ''),
(1718, '236', 'http://clip.vn/embed/OsJR', 0, 97, '', 0, ''),
(1719, '237', 'http://clip.vn/embed/OsJO', 0, 97, '', 0, ''),
(1720, '238', 'http://clip.vn/embed/OsJD', 0, 97, '', 0, ''),
(1721, '239', 'http://clip.vn/embed/OsfH', 0, 97, '', 0, ''),
(1722, '240', 'http://clip.vn/embed/OsJW', 0, 97, '', 0, ''),
(1723, '241', 'http://clip.vn/embed/Osf-', 0, 97, '', 0, ''),
(1724, '242', 'http://clip.vn/embed/Osfk', 0, 97, '', 0, ''),
(1725, '243', 'http://clip.vn/embed/Osfx', 0, 97, '', 0, ''),
(1726, '244', 'http://clip.vn/embed/OsfY', 0, 97, '', 0, ''),
(1727, '245', 'http://clip.vn/embed/OsJE', 0, 97, '', 0, ''),
(1728, '246', 'http://clip.vn/embed/Osfb', 0, 97, '', 0, ''),
(1729, '247', 'http://clip.vn/embed/Osf8', 0, 97, '', 0, ''),
(1730, '248', 'http://clip.vn/embed/OsfJ', 0, 97, '', 0, ''),
(1731, '249', 'http://clip.vn/embed/OsfM', 0, 97, '', 0, ''),
(1732, '250', 'http://clip.vn/embed/OsNn', 0, 97, '', 0, ''),
(1733, '251', 'http://clip.vn/embed/O61z', 0, 97, '', 0, ''),
(1734, '252', 'http://clip.vn/embed/O61_', 0, 97, '', 0, ''),
(1735, '253', 'http://clip.vn/embed/O61e', 0, 97, '', 0, ''),
(1736, '254', 'http://clip.vn/embed/O61q', 0, 97, '', 0, ''),
(1737, '255', 'http://clip.vn/embed/O612', 0, 97, '', 0, ''),
(1738, '256', 'http://clip.vn/embed/O611', 0, 97, '', 0, ''),
(1739, '257', 'http://clip.vn/embed/O61r', 0, 97, '', 0, ''),
(1740, '258', 'http://clip.vn/embed/O613', 0, 97, '', 0, ''),
(1741, '259', 'http://clip.vn/embed/O61g', 0, 97, '', 0, ''),
(1742, '260', 'http://clip.vn/embed/O61j', 0, 97, '', 0, ''),
(1743, '261', 'http://clip.vn/embed/O61p', 0, 97, '', 0, ''),
(1744, '262', 'http://clip.vn/embed/O61c', 0, 97, '', 0, ''),
(1745, '263', 'http://clip.vn/embed/O610', 0, 97, '', 0, ''),
(1746, '264', 'http://clip.vn/embed/O61L', 0, 97, '', 0, ''),
(1747, '265', 'http://clip.vn/embed/O61T', 0, 97, '', 0, ''),
(1748, '266', 'http://clip.vn/embed/O615', 0, 97, '', 0, ''),
(1749, '267', 'http://clip.vn/embed/O61s', 0, 97, '', 0, ''),
(1750, '268', 'http://clip.vn/embed/O61n', 0, 97, '', 0, ''),
(1751, '269', 'http://clip.vn/embed/O61w', 0, 97, '', 0, ''),
(1752, '270', 'http://clip.vn/embed/O61d', 0, 97, '', 0, ''),
(1753, '271', 'http://clip.vn/embed/O61f', 0, 97, '', 0, ''),
(1754, '272', 'http://clip.vn/embed/O614', 0, 97, '', 0, ''),
(1755, '273', 'http://clip.vn/embed/O61o', 0, 97, '', 0, ''),
(1756, '274', 'http://clip.vn/embed/O61B', 0, 97, '', 0, ''),
(1757, '275', 'http://clip.vn/embed/O6F6', 0, 97, '', 0, ''),
(1758, '276', 'http://clip.vn/embed/O61A', 0, 97, '', 0, ''),
(1759, '277', 'http://clip.vn/embed/O6F2', 0, 97, '', 0, ''),
(1760, '278', 'http://clip.vn/embed/O6F1', 0, 97, '', 0, ''),
(1761, '279', 'http://clip.vn/embed/O6Fe', 0, 97, '', 0, ''),
(1762, '280', 'http://clip.vn/embed/O6Fy', 0, 97, '', 0, ''),
(1763, '281', 'http://clip.vn/embed/O6Fz', 0, 97, '', 0, ''),
(1764, '282', 'http://clip.vn/embed/O6Fh', 0, 97, '', 0, ''),
(1765, '283', 'http://clip.vn/embed/O6Fi', 0, 97, '', 0, ''),
(1766, '284', 'http://clip.vn/embed/O6F0', 0, 97, '', 0, ''),
(1767, '285', 'http://clip.vn/embed/O6Fm', 0, 97, '', 0, ''),
(1768, '286', 'http://clip.vn/embed/O6Fg', 0, 97, '', 0, ''),
(1769, '287', 'http://clip.vn/embed/O6Fj', 0, 97, '', 0, ''),
(1770, '288', 'http://clip.vn/embed/O6Fp', 0, 97, '', 0, ''),
(1771, '289', 'http://clip.vn/embed/O6Fa', 0, 97, '', 0, ''),
(1772, '290', 'http://clip.vn/embed/O6Fu', 0, 97, '', 0, ''),
(1773, '291', 'http://clip.vn/embed/O6FQ', 0, 97, '', 0, ''),
(1774, '1', 'http://clip.vn/embed/Ou2S', 0, 98, '', 0, ''),
(1775, '2', 'http://clip.vn/embed/Ou2v', 0, 98, '', 0, ''),
(1776, '3', 'http://clip.vn/embed/Ou27', 0, 98, '', 0, ''),
(1777, '4', 'http://clip.vn/embed/Ou2l', 0, 98, '', 0, ''),
(1778, '5', 'http://clip.vn/embed/Ou2H', 0, 98, '', 0, ''),
(1779, '6', 'http://clip.vn/embed/Ou2x', 0, 98, '', 0, ''),
(1780, '7', 'http://clip.vn/embed/OueW', 0, 98, '', 0, ''),
(1781, '8', 'http://clip.vn/embed/Ou2-', 0, 98, '', 0, ''),
(1782, '9', 'http://clip.vn/embed/OuRW', 0, 98, '', 0, ''),
(1783, '10', 'http://clip.vn/embed/OuRD', 0, 98, '', 0, ''),
(1784, '11', 'http://clip.vn/embed/OuRo', 0, 98, '', 0, ''),
(1785, '12', 'http://clip.vn/embed/OuRS', 0, 98, '', 0, ''),
(1786, '13', 'http://clip.vn/embed/OuRN', 0, 98, '', 0, ''),
(1787, '14', 'http://clip.vn/embed/OuRv', 0, 98, '', 0, ''),
(1788, '15', 'http://clip.vn/embed/OuRl', 0, 98, '', 0, ''),
(1789, '16', 'http://clip.vn/embed/OuR7', 0, 98, '', 0, ''),
(1790, '17', 'http://clip.vn/embed/OuRH', 0, 98, '', 0, ''),
(1791, '18', 'http://clip.vn/embed/OuRx', 0, 98, '', 0, ''),
(1792, '19', 'http://clip.vn/embed/OuRk', 0, 98, '', 0, ''),
(1793, '20', 'http://clip.vn/embed/OuR-', 0, 98, '', 0, ''),
(1794, '21', 'http://clip.vn/embed/Ouel', 0, 98, '', 0, ''),
(1795, '22', 'http://clip.vn/embed/Oue7', 0, 98, '', 0, ''),
(1796, '23', 'http://clip.vn/embed/OueH', 0, 98, '', 0, ''),
(1797, '24', 'http://clip.vn/embed/Ouex', 0, 98, '', 0, ''),
(1798, '25', 'http://clip.vn/embed/Ouek', 0, 98, '', 0, ''),
(1799, '26', 'http://clip.vn/embed/Oue-', 0, 98, '', 0, ''),
(1800, '27', 'http://clip.vn/embed/OuVW', 0, 98, '', 0, ''),
(1801, '28', 'http://clip.vn/embed/OuVO', 0, 98, '', 0, ''),
(1802, '29', 'http://clip.vn/embed/OuVR', 0, 98, '', 0, ''),
(1803, '30', 'http://clip.vn/embed/OuVV', 0, 98, '', 0, ''),
(1804, '31', 'http://clip.vn/embed/Ou1n', 0, 98, '', 0, ''),
(1805, '32', 'http://clip.vn/embed/Ou1d', 0, 98, '', 0, ''),
(1806, '33', 'http://clip.vn/embed/Ou1o', 0, 98, '', 0, ''),
(1807, '34', 'http://clip.vn/embed/Ou1f', 0, 98, '', 0, ''),
(1808, '35', 'http://clip.vn/embed/Ou1N', 0, 98, '', 0, ''),
(1809, '36', 'http://clip.vn/embed/Ou1S', 0, 98, '', 0, ''),
(1810, '37', 'http://clip.vn/embed/Ou1v', 0, 98, '', 0, ''),
(1811, '38', 'http://clip.vn/embed/Ou1l', 0, 98, '', 0, ''),
(1812, '39', 'http://clip.vn/embed/Ou17', 0, 98, '', 0, ''),
(1813, '40', 'http://clip.vn/embed/Ou1H', 0, 98, '', 0, ''),
(1814, '41', 'http://clip.vn/embed/OuF5', 0, 98, '', 0, ''),
(1815, '42', 'http://clip.vn/embed/OuFs', 0, 98, '', 0, ''),
(1816, '43', 'http://clip.vn/embed/OuFt', 0, 98, '', 0, ''),
(1817, '44', 'http://clip.vn/embed/OuFw', 0, 98, '', 0, ''),
(1818, '45', 'http://clip.vn/embed/OuFd', 0, 98, '', 0, ''),
(1819, '46', 'http://clip.vn/embed/OuFf', 0, 98, '', 0, ''),
(1820, '47', 'http://clip.vn/embed/OuFo', 0, 98, '', 0, ''),
(1821, '48', 'http://clip.vn/embed/OuFN', 0, 98, '', 0, ''),
(1822, '49', 'http://clip.vn/embed/OuFS', 0, 98, '', 0, ''),
(1823, '50', 'http://clip.vn/embed/OuFv', 0, 98, '', 0, ''),
(1824, '51', 'http://clip.vn/embed/OuZp', 0, 98, '', 0, ''),
(1825, '52', 'http://clip.vn/embed/OuZi', 0, 98, '', 0, ''),
(1826, '53', 'http://clip.vn/embed/OuZ0', 0, 98, '', 0, ''),
(1827, '54', 'http://clip.vn/embed/OuZm', 0, 98, '', 0, ''),
(1828, '55', 'http://clip.vn/embed/OuCH', 0, 98, '', 0, ''),
(1829, '56', 'http://clip.vn/embed/OuZT', 0, 98, '', 0, ''),
(1830, '57', 'http://clip.vn/embed/OuZ5', 0, 98, '', 0, ''),
(1831, '58', 'http://clip.vn/embed/OuZs', 0, 98, '', 0, ''),
(1832, '59', 'http://clip.vn/embed/OuZt', 0, 98, '', 0, ''),
(1833, '60', 'http://clip.vn/embed/OuZn', 0, 98, '', 0, ''),
(1834, '61', 'http://clip.vn/embed/OuCx', 0, 98, '', 0, ''),
(1835, '62', 'http://clip.vn/embed/Ou0D', 0, 98, '', 0, ''),
(1836, '63', 'http://clip.vn/embed/Ou0O', 0, 98, '', 0, ''),
(1837, '64', 'http://clip.vn/embed/Ou0R', 0, 98, '', 0, ''),
(1838, '65', 'http://clip.vn/embed/Ou0V', 0, 98, '', 0, ''),
(1839, '66', 'http://clip.vn/embed/Ou0F', 0, 98, '', 0, ''),
(1840, '67', 'http://clip.vn/embed/Ou03', 0, 98, '', 0, ''),
(1841, '68', 'http://clip.vn/embed/Ou0g', 0, 98, '', 0, ''),
(1842, '69', 'http://clip.vn/embed/Ou0j', 0, 98, '', 0, ''),
(1843, '70', 'http://clip.vn/embed/Ou0p', 0, 98, '', 0, ''),
(1844, '71', 'http://clip.vn/embed/OuC-', 0, 98, '', 0, ''),
(1845, '72', 'http://clip.vn/embed/OuCk', 0, 98, '', 0, ''),
(1846, '73', 'http://clip.vn/embed/OumW', 0, 98, '', 0, ''),
(1847, '74', 'http://clip.vn/embed/OumD', 0, 98, '', 0, ''),
(1848, '75', 'http://clip.vn/embed/OumO', 0, 98, '', 0, ''),
(1849, '76', 'http://clip.vn/embed/OumR', 0, 98, '', 0, ''),
(1850, '77', 'http://clip.vn/embed/OumV', 0, 98, '', 0, ''),
(1851, '78', 'http://clip.vn/embed/OumF', 0, 98, '', 0, ''),
(1852, '79', 'http://clip.vn/embed/Oum3', 0, 98, '', 0, ''),
(1853, '80', 'http://clip.vn/embed/Oumg', 0, 98, '', 0, ''),
(1854, '81', 'http://clip.vn/embed/OuUR', 0, 98, '', 0, ''),
(1855, '82', 'http://clip.vn/embed/OuUV', 0, 98, '', 0, ''),
(1856, '83', 'http://clip.vn/embed/OuUF', 0, 98, '', 0, ''),
(1857, '84', 'http://clip.vn/embed/OuU3', 0, 98, '', 0, ''),
(1858, '85', 'http://clip.vn/embed/OuUg', 0, 98, '', 0, ''),
(1859, '86', 'http://clip.vn/embed/OuUj', 0, 98, '', 0, ''),
(1860, '87', 'http://clip.vn/embed/OuUi', 0, 98, '', 0, ''),
(1861, '88', 'http://clip.vn/embed/OuUp', 0, 98, '', 0, ''),
(1862, '89', 'http://clip.vn/embed/OuU0', 0, 98, '', 0, ''),
(1863, '90', 'http://clip.vn/embed/OuUm', 0, 98, '', 0, ''),
(1864, '91', 'http://clip.vn/embed/OuwL', 0, 98, '', 0, ''),
(1865, '92', 'http://clip.vn/embed/Ouw5', 0, 98, '', 0, ''),
(1866, '93', 'http://clip.vn/embed/Ouws', 0, 98, '', 0, ''),
(1867, '94', 'http://clip.vn/embed/OuwT', 0, 98, '', 0, ''),
(1868, '95', 'http://clip.vn/embed/Ouwt', 0, 98, '', 0, ''),
(1869, '96', 'http://clip.vn/embed/Ouwn', 0, 98, '', 0, ''),
(1870, '97', 'http://clip.vn/embed/Ouww', 0, 98, '', 0, ''),
(1871, '98', 'http://clip.vn/embed/Ouwd', 0, 98, '', 0, ''),
(1872, '99', 'http://clip.vn/embed/Ouwf', 0, 98, '', 0, ''),
(1873, '100', 'http://clip.vn/embed/Ouwo', 0, 98, '', 0, ''),
(1874, '101', 'http://clip.vn/embed/O5CF', 0, 98, '', 0, ''),
(1875, '102', 'http://clip.vn/embed/O5C3', 0, 98, '', 0, ''),
(1876, '103', 'http://clip.vn/embed/O5Cj', 0, 98, '', 0, ''),
(1877, '104', 'http://clip.vn/embed/O5Cg', 0, 98, '', 0, ''),
(1878, '105', 'http://clip.vn/embed/O5Cp', 0, 98, '', 0, ''),
(1879, '106', 'http://clip.vn/embed/O5Ci', 0, 98, '', 0, ''),
(1880, '107', 'http://clip.vn/embed/O5C0', 0, 98, '', 0, ''),
(1881, '108', 'http://clip.vn/embed/O5Cm', 0, 98, '', 0, ''),
(1882, '109', 'http://clip.vn/embed/O5CL', 0, 98, '', 0, ''),
(1883, '110', 'http://clip.vn/embed/O5CT', 0, 98, '', 0, ''),
(1884, '111', 'http://clip.vn/embed/O5mx', 0, 98, '', 0, ''),
(1885, '112', 'http://clip.vn/embed/O5mk', 0, 98, '', 0, ''),
(1886, '113', 'http://clip.vn/embed/O59W', 0, 98, '', 0, ''),
(1887, '114', 'http://clip.vn/embed/O5m-', 0, 98, '', 0, ''),
(1888, '115', 'http://clip.vn/embed/O59D', 0, 98, '', 0, ''),
(1889, '116', 'http://clip.vn/embed/O59R', 0, 98, '', 0, ''),
(1890, '117', 'http://clip.vn/embed/O59V', 0, 98, '', 0, ''),
(1891, '118', 'http://clip.vn/embed/O59F', 0, 98, '', 0, ''),
(1892, '119', 'http://clip.vn/embed/O593', 0, 98, '', 0, ''),
(1893, '120', 'http://clip.vn/embed/O59g', 0, 98, '', 0, ''),
(1894, '121', 'http://clip.vn/embed/O59i', 0, 98, '', 0, ''),
(1895, '122', 'http://clip.vn/embed/O590', 0, 98, '', 0, ''),
(1896, '123', 'http://clip.vn/embed/O59m', 0, 98, '', 0, ''),
(1897, '124', 'http://clip.vn/embed/O59L', 0, 98, '', 0, ''),
(1898, '125', 'http://clip.vn/embed/O59T', 0, 98, '', 0, ''),
(1899, '126', 'http://clip.vn/embed/O59s', 0, 98, '', 0, ''),
(1900, '127', 'http://clip.vn/embed/O59t', 0, 98, '', 0, ''),
(1901, '128', 'http://clip.vn/embed/O59n', 0, 98, '', 0, ''),
(1902, '129', 'http://clip.vn/embed/O59w', 0, 98, '', 0, ''),
(1903, '130', 'http://clip.vn/embed/O59d', 0, 98, '', 0, ''),
(1904, '131', 'http://clip.vn/embed/O5Tg', 0, 98, '', 0, ''),
(1905, '132', 'http://clip.vn/embed/O5Tj', 0, 98, '', 0, ''),
(1906, '133', 'http://clip.vn/embed/O5Tp', 0, 98, '', 0, ''),
(1907, '134', 'http://clip.vn/embed/O5T0', 0, 98, '', 0, ''),
(1908, '135', 'http://clip.vn/embed/O5Ti', 0, 98, '', 0, ''),
(1909, '136', 'http://clip.vn/embed/O55-', 0, 98, '', 0, ''),
(1910, '137', 'http://clip.vn/embed/O5TT', 0, 98, '', 0, ''),
(1911, '138', 'http://clip.vn/embed/O5T5', 0, 98, '', 0, ''),
(1912, '139', 'http://clip.vn/embed/O5Ts', 0, 98, '', 0, ''),
(1913, '140', 'http://clip.vn/embed/O5Tt', 0, 98, '', 0, ''),
(1914, '141', 'http://clip.vn/embed/O5Tn', 0, 98, '', 0, ''),
(1915, '142', 'http://clip.vn/embed/O5Td', 0, 98, '', 0, ''),
(1916, '143', 'http://clip.vn/embed/O5Tw', 0, 98, '', 0, ''),
(1917, '144', 'http://clip.vn/embed/O5Tf', 0, 98, '', 0, ''),
(1918, '145', 'http://clip.vn/embed/O5Tv', 0, 98, '', 0, ''),
(1919, '146', 'http://clip.vn/embed/O5To', 0, 98, '', 0, ''),
(1920, '147', 'http://clip.vn/embed/O5TS', 0, 98, '', 0, ''),
(1921, '148', 'http://clip.vn/embed/O5TN', 0, 98, '', 0, ''),
(1922, '149', 'http://clip.vn/embed/O5Tl', 0, 98, '', 0, ''),
(1923, '150', 'http://clip.vn/embed/O5T7', 0, 98, '', 0, ''),
(1924, '151', 'http://clip.vn/embed/O5TH', 0, 98, '', 0, ''),
(1925, '152', 'http://clip.vn/embed/O5Tx', 0, 98, '', 0, ''),
(1926, '153', 'http://clip.vn/embed/O5Tk', 0, 98, '', 0, ''),
(1927, '1', 'http://clip.vn/embed/OKGC', 0, 99, '', 0, ''),
(1928, '2', 'http://clip.vn/embed/OKG9', 0, 99, '', 0, ''),
(1929, '1', 'http://clip.vn/embed/O4r8', 0, 100, '', 0, ''),
(1930, '1', 'http://clip.vn/embed/OxzV', 0, 101, '', 0, ''),
(1931, '2', 'http://clip.vn/embed/Oxz1', 0, 101, '', 0, ''),
(1932, '3', 'http://clip.vn/embed/OxzF', 0, 101, '', 0, ''),
(1933, '1', 'http://clip.vn/embed/OHKZ', 0, 102, '', 0, ''),
(1934, '2', 'http://clip.vn/embed/OHKG', 0, 102, '', 0, ''),
(1935, '3', 'http://clip.vn/embed/OHKE', 0, 102, '', 0, ''),
(1936, '1', 'http://clip.vn/embed/OH8s', 0, 103, '', 0, ''),
(1937, '2', 'http://clip.vn/embed/OH8u', 0, 103, '', 0, ''),
(1938, '3', 'http://clip.vn/embed/OH8a', 0, 103, '', 0, ''),
(1939, '4', 'http://clip.vn/embed/OH89', 0, 103, '', 0, ''),
(1940, '1', 'http://clip.vn/embed/OxgW', 0, 104, '', 0, ''),
(1941, '2', 'http://clip.vn/embed/OxIk', 0, 104, '', 0, ''),
(1942, '1', 'http://clip.vn/embed/OHNO', 0, 105, '', 0, ''),
(1943, '2', 'http://clip.vn/embed/OHNh', 0, 105, '', 0, ''),
(1944, '3', 'http://clip.vn/embed/OHND', 0, 105, '', 0, ''),
(1945, '1', 'http://clip.vn/embed/O7bU', 0, 106, '', 0, ''),
(1946, '2', 'http://clip.vn/embed/O7bM', 0, 106, '', 0, ''),
(1947, '3', 'http://clip.vn/embed/O7bc', 0, 106, '', 0, ''),
(1948, '1', 'http://clip.vn/embed/OHN_', 0, 107, '', 0, ''),
(1949, '2', 'http://clip.vn/embed/OH8A', 0, 107, '', 0, ''),
(1950, '3', 'http://clip.vn/embed/OH8B', 0, 107, '', 0, ''),
(1951, '1', 'http://clip.vn/embed/OHKM', 0, 108, '', 0, ''),
(1952, '2', 'http://clip.vn/embed/OHKd', 0, 108, '', 0, ''),
(1953, '3', 'http://clip.vn/embed/OHKw', 0, 108, '', 0, ''),
(1954, '1', 'http://clip.vn/embed/Oqpt', 0, 109, '', 0, ''),
(1955, '2', 'http://clip.vn/embed/Oqpf', 0, 109, '', 0, ''),
(1956, '3', 'http://clip.vn/embed/OqTc', 0, 109, '', 0, ''),
(1957, '1', 'http://clip.vn/embed/OTg0', 0, 110, '', 0, ''),
(1958, '2', 'http://clip.vn/embed/OuZw', 0, 110, '', 0, ''),
(1959, '3', 'http://clip.vn/embed/O5ZW', 0, 110, '', 0, ''),
(1960, '4', 'http://clip.vn/embed/OQGq', 0, 110, '', 0, ''),
(1961, '5', 'http://clip.vn/embed/OnuS', 0, 110, '', 0, ''),
(1962, '6', 'http://clip.vn/embed/OnLc', 0, 110, '', 0, ''),
(1963, '7', 'http://clip.vn/embed/OwKI', 0, 110, '', 0, ''),
(1964, '8', 'http://clip.vn/embed/OJap', 0, 110, '', 0, ''),
(1965, '9', 'http://clip.vn/embed/OJai', 0, 110, '', 0, ''),
(1966, '10', 'http://clip.vn/embed/OJa0', 0, 110, '', 0, ''),
(1967, '11', 'http://clip.vn/embed/OJad', 0, 110, '', 0, ''),
(1968, '12', 'http://clip.vn/embed/OJaf', 0, 110, '', 0, ''),
(1969, '13', 'http://clip.vn/embed/Ory7', 0, 110, '', 0, ''),
(1970, '14', 'http://clip.vn/embed/OrSy', 0, 110, '', 0, ''),
(1971, '15', 'http://clip.vn/embed/OHfH', 0, 110, '', 0, ''),
(1972, '16', 'http://clip.vn/embed/O4uN', 0, 110, '', 0, ''),
(1973, '1', 'http://clip.vn/embed/O4qJ', 0, 111, '', 0, ''),
(1974, '2', 'http://clip.vn/embed/O4qd', 0, 111, '', 0, ''),
(1975, '3', 'http://clip.vn/embed/O4qU', 0, 111, '', 0, ''),
(1976, '4', 'http://clip.vn/embed/O4qQ', 0, 111, '', 0, ''),
(1977, '1', 'http://clip.vn/embed/OY9N', 0, 112, '', 0, ''),
(1978, '2', 'http://clip.vn/embed/OY9S', 0, 112, '', 0, ''),
(1979, '3', 'http://clip.vn/embed/OY9v', 0, 112, '', 0, ''),
(1980, '1', 'http://clip.vn/embed/OYUD', 0, 113, '', 0, ''),
(1981, '2', 'http://clip.vn/embed/OYUO', 0, 113, '', 0, ''),
(1982, '3', 'http://clip.vn/embed/OYUR', 0, 113, '', 0, ''),
(1983, '1', 'http://clip.vn/embed/O44Y', 0, 114, '', 0, ''),
(1984, '1', 'http://clip.vn/embed/O746', 0, 115, '', 0, ''),
(1985, '2', 'http://clip.vn/embed/O74X', 0, 115, '', 0, ''),
(1986, '3', 'http://clip.vn/embed/O748', 0, 115, '', 0, ''),
(1987, '4', 'http://clip.vn/embed/O74q', 0, 115, '', 0, ''),
(1988, '1', 'http://clip.vn/embed/OIGT', 0, 116, 'upload/2013/04/07/subtitle/1988.srt', 0, ''),
(1989, '1', 'http://clip.vn/embed/O7Sa', 0, 117, '', 0, ''),
(1990, '2', 'http://clip.vn/embed/O7SM', 0, 117, '', 0, ''),
(1991, '3', 'http://clip.vn/embed/O7SJ', 0, 117, '', 0, ''),
(1992, '307', 'http://clip.vn/embed/Oxp1', 0, 41, '', 0, ''),
(1993, '1', 'http://clip.vn/embed/OZmk', 0, 118, 'upload/2013/04/07/subtitle/1993.srt', 0, ''),
(1994, '1', 'http://clip.vn/embed/O431', 0, 119, '', 0, ''),
(1995, '2', 'http://clip.vn/embed/O43F', 0, 119, '', 0, ''),
(1996, '3', 'http://clip.vn/embed/O43E', 0, 119, '', 0, ''),
(1997, '4', 'http://clip.vn/embed/O43G', 0, 119, '', 0, ''),
(1998, '5', 'http://clip.vn/embed/O4zd', 0, 119, '', 0, ''),
(1999, '6', 'http://clip.vn/embed/O4zf', 0, 119, '', 0, ''),
(2000, '7', 'http://clip.vn/embed/O43Z', 0, 119, '', 0, ''),
(2001, '8', 'http://clip.vn/embed/O4rM', 0, 119, '', 0, ''),
(2002, '9', 'http://clip.vn/embed/O4rn', 0, 119, '', 0, ''),
(2003, '1', 'http://clip.vn/embed/hiem', 0, 120, '', 0, ''),
(2004, '1', 'http://clip.vn/embed/OrIw', 0, 121, '', 0, ''),
(2005, '2', 'http://clip.vn/embed/OrIl', 0, 121, '', 0, ''),
(2006, '3', 'http://clip.vn/embed/OrIx', 0, 121, '', 0, ''),
(2007, '1', 'http://clip.vn/embed/O7HA', 0, 122, '', 0, ''),
(2008, '2', 'http://clip.vn/embed/O74G', 0, 122, '', 0, ''),
(2009, '3', 'http://clip.vn/embed/O74y', 0, 122, '', 0, ''),
(2010, '1', 'http://clip.vn/embed/O7-h', 0, 123, '', 0, ''),
(2011, '2', 'http://clip.vn/embed/O7-2', 0, 123, '', 0, ''),
(2012, '3', 'http://clip.vn/embed/O7-e', 0, 123, '', 0, ''),
(2013, '1', 'http://clip.vn/embed/Olyo', 0, 124, '', 0, ''),
(2014, '2', 'http://clip.vn/embed/Oly-', 0, 124, '', 0, ''),
(2015, '3', 'http://clip.vn/embed/OlZD', 0, 124, '', 0, ''),
(2016, '4', 'http://clip.vn/embed/OliV', 0, 124, '', 0, ''),
(2017, '5', 'http://clip.vn/embed/OlZF', 0, 124, '', 0, ''),
(2018, '6', 'http://clip.vn/embed/OlZL', 0, 124, '', 0, ''),
(2019, '7', 'http://clip.vn/embed/OlZt', 0, 124, '', 0, ''),
(2020, '8', 'http://clip.vn/embed/OlZd', 0, 124, '', 0, ''),
(2021, '9', 'http://clip.vn/embed/OlPD', 0, 124, '', 0, ''),
(2022, '10', 'http://clip.vn/embed/OlZv', 0, 124, '', 0, ''),
(2023, '11', 'http://clip.vn/embed/OlZ7', 0, 124, '', 0, ''),
(2024, '12', 'http://clip.vn/embed/OliD', 0, 124, '', 0, ''),
(2025, '13', 'http://clip.vn/embed/OlL7', 0, 124, '', 0, ''),
(2026, '14', 'http://clip.vn/embed/Ol6w', 0, 124, '', 0, ''),
(2027, '15', 'http://clip.vn/embed/OlBO', 0, 124, '', 0, ''),
(2028, '16', 'http://clip.vn/embed/OqHc', 0, 124, '', 0, ''),
(2029, '17', 'http://clip.vn/embed/OHTL', 0, 124, '', 0, ''),
(2030, '18', 'http://clip.vn/embed/OH-7', 0, 124, '', 0, ''),
(2031, '19', 'http://clip.vn/embed/O4bJ', 0, 124, '', 0, ''),
(2032, '1', 'http://clip.vn/embed/Ov5v', 0, 125, '', 0, ''),
(2033, '2', 'http://clip.vn/embed/Ov5l', 0, 125, '', 0, ''),
(2034, '3', 'http://clip.vn/embed/OvQD', 0, 125, '', 0, ''),
(2035, '4', 'http://clip.vn/embed/OvQV', 0, 125, '', 0, ''),
(2036, '5', 'http://clip.vn/embed/OvQs', 0, 125, '', 0, ''),
(2037, '6', 'http://clip.vn/embed/OvQ0', 0, 125, '', 0, ''),
(2038, '7', 'http://clip.vn/embed/OvQm', 0, 125, '', 0, ''),
(2039, '8', 'http://clip.vn/embed/OvQL', 0, 125, '', 0, ''),
(2040, '9', 'http://clip.vn/embed/OvQ5', 0, 125, '', 0, ''),
(2041, '10', 'http://clip.vn/embed/OvSV', 0, 125, '', 0, ''),
(2042, '11', 'http://clip.vn/embed/OvB-', 0, 125, '', 0, ''),
(2043, '12', 'http://clip.vn/embed/OYcx', 0, 125, '', 0, ''),
(2044, '13', 'http://clip.vn/embed/OYvW', 0, 125, '', 0, ''),
(2045, '14', 'http://clip.vn/embed/OYvD', 0, 125, '', 0, ''),
(2046, '15', 'http://clip.vn/embed/OYvO', 0, 125, '', 0, ''),
(2047, '16', 'http://clip.vn/embed/Olmw', 0, 125, '', 0, ''),
(2048, '17', 'http://clip.vn/embed/Ol53', 0, 125, '', 0, ''),
(2049, '18', 'http://clip.vn/embed/Olmd', 0, 125, '', 0, ''),
(2050, '19', 'http://clip.vn/embed/OlTm', 0, 125, '', 0, ''),
(2051, '20', 'http://clip.vn/embed/OlTT', 0, 125, '', 0, ''),
(2052, '21', 'http://clip.vn/embed/OlK3', 0, 125, '', 0, ''),
(2053, '22', 'http://clip.vn/embed/OlKg', 0, 125, '', 0, ''),
(2054, '23', 'http://clip.vn/embed/OlU-', 0, 125, '', 0, ''),
(2055, '24', 'http://clip.vn/embed/OlKm', 0, 125, '', 0, ''),
(2056, '25', 'http://clip.vn/embed/OlKL', 0, 125, '', 0, ''),
(2057, '26', 'http://clip.vn/embed/Olks', 0, 125, '', 0, ''),
(2058, '27', 'http://clip.vn/embed/Oq2P', 0, 125, '', 0, ''),
(2059, '28', 'http://clip.vn/embed/OqyQ', 0, 125, '', 0, ''),
(2060, '29', 'http://clip.vn/embed/OqZT', 0, 125, '', 0, ''),
(2061, '30', 'http://clip.vn/embed/OqN9', 0, 125, '', 0, ''),
(2062, '31', 'http://clip.vn/embed/OqNa', 0, 125, '', 0, ''),
(2063, '32', 'http://clip.vn/embed/Oq46', 0, 125, '', 0, ''),
(2064, '33', 'http://clip.vn/embed/O7_Q', 0, 125, '', 0, ''),
(2065, '34', 'http://clip.vn/embed/O7Vj', 0, 125, '', 0, ''),
(2066, '35', 'http://clip.vn/embed/O7Vp', 0, 125, '', 0, ''),
(2067, '36', 'http://clip.vn/embed/O7Ta', 0, 125, '', 0, ''),
(2068, '37', 'http://clip.vn/embed/O7Kg', 0, 125, '', 0, ''),
(2069, '38', 'http://clip.vn/embed/O7Kj', 0, 125, '', 0, ''),
(2070, '39', 'http://clip.vn/embed/O7l4', 0, 125, '', 0, ''),
(2071, '40', 'http://clip.vn/embed/O7A1', 0, 125, '', 0, ''),
(2072, '41', 'http://clip.vn/embed/Orjw', 0, 125, '', 0, ''),
(2073, '42', 'http://clip.vn/embed/OrLi', 0, 125, '', 0, ''),
(2074, '43', 'http://clip.vn/embed/OrXf', 0, 125, '', 0, ''),
(2075, '44', 'http://clip.vn/embed/Orfs', 0, 125, '', 0, ''),
(2076, '45', 'http://clip.vn/embed/OrYh', 0, 125, '', 0, ''),
(2077, '46', 'http://clip.vn/embed/OHIA', 0, 125, '', 0, ''),
(2078, '47', 'http://clip.vn/embed/OHX5', 0, 125, '', 0, ''),
(2079, '48', 'http://clip.vn/embed/OHXQ', 0, 125, '', 0, ''),
(2080, '49', 'http://clip.vn/embed/OHMz', 0, 125, '', 0, ''),
(2081, '50', 'http://clip.vn/embed/OHcR', 0, 125, '', 0, ''),
(2082, '51', 'http://clip.vn/embed/O4W-', 0, 125, '', 0, ''),
(2083, '52', 'http://clip.vn/embed/O4yq', 0, 125, '', 0, ''),
(2084, '53', 'http://clip.vn/embed/O4ZI', 0, 125, '', 0, ''),
(2085, '54', 'http://clip.vn/embed/O4aa', 0, 125, '', 0, ''),
(2086, '55', 'http://clip.vn/embed/O4qk', 0, 125, '', 0, ''),
(2087, '56', 'http://clip.vn/embed/O4qS', 0, 125, '', 0, ''),
(2088, '1', 'http://clip.vn/embed/O4XN', 0, 126, '', 0, ''),
(2089, '2', 'http://clip.vn/embed/O4XS', 0, 126, '', 0, ''),
(2090, '3', 'http://clip.vn/embed/O4X7', 0, 126, '', 0, ''),
(2091, '4', 'http://clip.vn/embed/O4XH', 0, 126, '', 0, ''),
(2092, '5', 'http://clip.vn/embed/O4X4', 0, 126, '', 0, ''),
(2093, '6', 'http://clip.vn/embed/O4n2', 0, 126, '', 0, ''),
(2094, '7', 'http://clip.vn/embed/O4nR', 0, 126, '', 0, ''),
(2095, '8', 'http://clip.vn/embed/O4ne', 0, 126, '', 0, ''),
(2096, '9', 'http://clip.vn/embed/O4n1', 0, 126, '', 0, ''),
(2097, '10', 'http://clip.vn/embed/O4ng', 0, 126, '', 0, ''),
(2098, '11', 'http://clip.vn/embed/O4nI', 0, 126, '', 0, ''),
(2099, '12', 'http://clip.vn/embed/O4nE', 0, 126, '', 0, ''),
(2100, '1', 'http://clip.vn/embed/OrVb', 0, 127, '', 0, ''),
(2101, '2', 'http://clip.vn/embed/OrVc', 0, 127, '', 0, ''),
(2102, '3', 'http://clip.vn/embed/OrGF', 0, 127, '', 0, ''),
(2103, '4', 'http://clip.vn/embed/OrLL', 0, 127, '', 0, ''),
(2104, '5', 'http://clip.vn/embed/OHLF', 0, 127, '', 0, ''),
(2105, '6', 'http://clip.vn/embed/OHMG', 0, 127, '', 0, ''),
(2106, '7', 'http://clip.vn/embed/OHMi', 0, 127, '', 0, ''),
(2107, '8', 'http://clip.vn/embed/O4OV', 0, 127, '', 0, ''),
(2108, '9', 'http://clip.vn/embed/O4OO', 0, 127, '', 0, ''),
(2109, '10', 'http://clip.vn/embed/O4Ep', 0, 127, '', 0, ''),
(2110, '11', 'http://clip.vn/embed/O4qY', 0, 127, '', 0, ''),
(2111, '12', 'http://clip.vn/embed/O4rs', 0, 127, '', 0, ''),
(2112, '1', 'http://clip.vn/embed/Ol5i', 0, 128, '', 0, ''),
(2113, '1', 'http://clip.vn/embed/OHLi', 0, 129, '', 0, ''),
(2114, '1', 'http://clip.vn/embed/O4Su', 0, 130, '', 0, ''),
(2115, '2', 'http://clip.vn/embed/O4S5', 0, 130, '', 0, ''),
(2116, '3', 'http://clip.vn/embed/O4q-', 0, 130, '', 0, ''),
(2117, '1', 'http://clip.vn/embed/Or16', 0, 131, '', 0, ''),
(2118, '2', 'http://clip.vn/embed/Or1s', 0, 131, '', 0, ''),
(2119, '3', 'http://clip.vn/embed/Oran', 0, 131, '', 0, ''),
(2120, '4', 'http://clip.vn/embed/OHRu', 0, 131, '', 0, ''),
(2121, '5', 'http://clip.vn/embed/O4M4', 0, 131, '', 0, ''),
(2122, '1', 'http://clip.vn/embed/OSD-', 0, 132, '', 0, ''),
(2123, '2', 'http://clip.vn/embed/OSmt', 0, 132, '', 0, ''),
(2124, '3', 'http://clip.vn/embed/OSqf', 0, 132, '', 0, ''),
(2125, '4', 'http://clip.vn/embed/OcFV', 0, 132, '', 0, ''),
(2126, '5', 'http://clip.vn/embed/Oci7', 0, 132, '', 0, ''),
(2127, '6', 'http://clip.vn/embed/OvVV', 0, 132, '', 0, ''),
(2128, '7', 'http://clip.vn/embed/OvV3', 0, 132, '', 0, ''),
(2129, '8', 'http://clip.vn/embed/OvVg', 0, 132, '', 0, ''),
(2130, '9', 'http://clip.vn/embed/Ovjx', 0, 132, '', 0, ''),
(2131, '10', 'http://clip.vn/embed/OYjT', 0, 132, '', 0, ''),
(2132, '11', 'http://clip.vn/embed/OYj5', 0, 132, '', 0, ''),
(2133, '12', 'http://clip.vn/embed/OYjs', 0, 132, '', 0, ''),
(2134, '13', 'http://clip.vn/embed/OlKx', 0, 132, '', 0, ''),
(2135, '14', 'http://clip.vn/embed/Olkn', 0, 132, '', 0, ''),
(2136, '15', 'http://clip.vn/embed/Olkw', 0, 132, '', 0, ''),
(2137, '16', 'http://clip.vn/embed/Olkf', 0, 132, '', 0, ''),
(2138, '17', 'http://clip.vn/embed/OqNU', 0, 132, '', 0, ''),
(2139, '18', 'http://clip.vn/embed/Oqc4', 0, 132, '', 0, ''),
(2140, '19', 'http://clip.vn/embed/O7mT', 0, 132, '', 0, ''),
(2141, '20', 'http://clip.vn/embed/O7ms', 0, 132, '', 0, ''),
(2142, '21', 'http://clip.vn/embed/O7K2', 0, 132, '', 0, ''),
(2143, '22', 'http://clip.vn/embed/O7Kh', 0, 132, '', 0, ''),
(2144, '23', 'http://clip.vn/embed/O7Ke', 0, 132, '', 0, ''),
(2145, '24', 'http://clip.vn/embed/OrGW', 0, 132, '', 0, ''),
(2146, '25', 'http://clip.vn/embed/Orx_', 0, 132, '', 0, ''),
(2147, '26', 'http://clip.vn/embed/Orxz', 0, 132, '', 0, ''),
(2148, '27', 'http://clip.vn/embed/OHvh', 0, 132, '', 0, ''),
(2149, '28', 'http://clip.vn/embed/OHv2', 0, 132, '', 0, ''),
(2150, '29', 'http://clip.vn/embed/OH4T', 0, 132, '', 0, ''),
(2151, '30', 'http://clip.vn/embed/O4y4', 0, 132, '', 0, ''),
(2152, '31', 'http://clip.vn/embed/O4yB', 0, 132, '', 0, ''),
(2153, '32', 'http://clip.vn/embed/O4yk', 0, 132, '', 0, ''),
(2154, '1', 'http://clip.vn/embed/OqvX', 0, 133, '', 0, ''),
(2155, '2', 'http://clip.vn/embed/OqvU', 0, 133, '', 0, ''),
(2156, '3', 'http://clip.vn/embed/OqvK', 0, 133, '', 0, ''),
(2157, '1', 'http://clip.vn/embed/OHH6', 0, 134, '', 0, ''),
(2158, '2', 'http://clip.vn/embed/OHHs', 0, 134, '', 0, ''),
(2159, '3', 'http://clip.vn/embed/OHHQ', 0, 134, '', 0, ''),
(2160, '1', 'http://clip.vn/embed/OrU8', 0, 135, '', 0, ''),
(2161, '2', 'http://clip.vn/embed/OrUc', 0, 135, '', 0, ''),
(2162, '3', 'http://clip.vn/embed/OrUq', 0, 135, '', 0, ''),
(2163, '1', 'http://clip.vn/embed/OHle', 0, 136, '', 0, ''),
(2164, '2', 'http://clip.vn/embed/OHYc', 0, 136, '', 0, ''),
(2165, '3', 'http://clip.vn/embed/OHYa', 0, 136, '', 0, ''),
(2166, '1', 'http://clip.vn/embed/OrOo', 0, 137, '', 0, ''),
(2167, '2', 'http://clip.vn/embed/OrOx', 0, 137, '', 0, ''),
(2168, '3', 'http://clip.vn/embed/OrO-', 0, 137, '', 0, ''),
(2169, '1', 'http://clip.vn/embed/O7xh', 0, 138, '', 0, ''),
(2170, '2', 'http://clip.vn/embed/O7xE', 0, 138, '', 0, ''),
(2171, '3', 'http://clip.vn/embed/O7x1', 0, 138, '', 0, ''),
(2172, '1', 'http://clip.vn/embed/OvmD', 0, 139, '', 0, ''),
(2173, '2', 'http://clip.vn/embed/OvmO', 0, 139, '', 0, ''),
(2174, '3', 'http://clip.vn/embed/OvmW', 0, 139, '', 0, ''),
(2175, '1', 'http://clip.vn/embed/Oorx', 0, 140, '', 0, ''),
(2176, '2', 'http://clip.vn/embed/Oork', 0, 140, '', 0, ''),
(2177, '3', 'http://clip.vn/embed/Oor-', 0, 140, '', 0, ''),
(2178, '4', 'http://clip.vn/embed/OoHW', 0, 140, '', 0, ''),
(2179, '1', 'http://clip.vn/embed/O74B', 0, 141, '', 0, ''),
(2180, '2', 'http://clip.vn/embed/O74c', 0, 141, '', 0, ''),
(2181, '3', 'http://clip.vn/embed/O74r', 0, 141, '', 0, ''),
(2182, '1', 'http://clip.vn/embed/O7ux', 0, 142, '', 0, ''),
(2183, '2', 'http://clip.vn/embed/O7uq', 0, 142, '', 0, ''),
(2184, '3', 'http://clip.vn/embed/O7ur', 0, 142, '', 0, ''),
(2185, '1', 'http://clip.vn/embed/Oq5D', 0, 143, '', 0, ''),
(2186, '2', 'http://clip.vn/embed/Oq5W', 0, 143, '', 0, ''),
(2187, '3', 'http://clip.vn/embed/Oq5z', 0, 143, '', 0, ''),
(2188, '1', 'http://clip.vn/embed/OvRk', 0, 144, '', 0, ''),
(2189, '2', 'http://clip.vn/embed/OvVD', 0, 144, '', 0, ''),
(2190, '3', 'http://clip.vn/embed/OvOR', 0, 144, '', 0, ''),
(2191, '4', 'http://clip.vn/embed/OvOV', 0, 144, '', 0, ''),
(2192, '5', 'http://clip.vn/embed/OvVp', 0, 144, '', 0, ''),
(2193, '6', 'http://clip.vn/embed/Ov1j', 0, 144, '', 0, ''),
(2194, '7', 'http://clip.vn/embed/Ov1n', 0, 144, '', 0, ''),
(2195, '8', 'http://clip.vn/embed/OvFj', 0, 144, '', 0, ''),
(2196, '9', 'http://clip.vn/embed/OvFL', 0, 144, '', 0, ''),
(2197, '10', 'http://clip.vn/embed/OvFT', 0, 144, '', 0, ''),
(2198, '11', 'http://clip.vn/embed/OvFt', 0, 144, '', 0, ''),
(2199, '12', 'http://clip.vn/embed/Ov0w', 0, 144, '', 0, ''),
(2200, '13', 'http://clip.vn/embed/Ov0x', 0, 144, '', 0, ''),
(2201, '14', 'http://clip.vn/embed/Ov0k', 0, 144, '', 0, ''),
(2202, '15', 'http://clip.vn/embed/OvCW', 0, 144, '', 0, ''),
(2203, '16', 'http://clip.vn/embed/OvC3', 0, 144, '', 0, ''),
(2204, '17', 'http://clip.vn/embed/OvC0', 0, 144, '', 0, ''),
(2205, '18', 'http://clip.vn/embed/OvCp', 0, 144, '', 0, ''),
(2206, '19', 'http://clip.vn/embed/OvCi', 0, 144, '', 0, ''),
(2207, '1', 'http://clip.vn/embed/ObOo', 0, 145, '', 0, ''),
(2208, '2', 'http://clip.vn/embed/ObOS', 0, 145, '', 0, ''),
(2209, '3', 'http://clip.vn/embed/ObOv', 0, 145, '', 0, ''),
(2210, '1', 'http://www.youtube.com/watch?v=LZE9XyKhENg', 0, 146, '', 0, ''),
(2211, '1', 'http://clip.vn/embed/WPYp', 0, 147, '', 0, ''),
(2212, '2', 'http://clip.vn/embed/W5I', 0, 147, '', 0, ''),
(2213, '3', 'http://clip.vn/embed/WKd', 0, 147, '', 0, ''),
(2214, '4', 'http://clip.vn/embed/Ww-', 0, 147, '', 0, ''),
(2215, '5', 'http://clip.vn/embed/W39a', 0, 147, '', 0, ''),
(2216, '6', 'http://clip.vn/embed/WKS', 0, 147, '', 0, ''),
(2217, '7', 'http://clip.vn/embed/WKl', 0, 147, '', 0, ''),
(2218, '8', 'http://clip.vn/embed/WoQ', 0, 147, '', 0, ''),
(2219, '9', 'http://clip.vn/embed/Wdy', 0, 147, '', 0, ''),
(2220, '10', 'http://clip.vn/embed/WdG', 0, 147, '', 0, ''),
(2221, '11', 'http://clip.vn/embed/W3UB', 0, 147, '', 0, ''),
(2222, '12', 'http://clip.vn/embed/WoX', 0, 147, '', 0, ''),
(2223, '13', 'http://clip.vn/embed/Wow', 0, 147, '', 0, ''),
(2224, '14', 'http://clip.vn/embed/Wov', 0, 147, '', 0, ''),
(2225, '15', 'http://clip.vn/embed/W8W', 0, 147, '', 0, ''),
(2226, '16', 'http://clip.vn/embed/W8O', 0, 147, '', 0, ''),
(2227, '17', 'http://clip.vn/embed/W8I', 0, 147, '', 0, ''),
(2228, '18', 'http://clip.vn/embed/W8m', 0, 147, '', 0, ''),
(2229, '19', 'http://clip.vn/embed/WN9', 0, 147, '', 0, ''),
(2230, '20', 'http://clip.vn/embed/W8U', 0, 147, '', 0, ''),
(2231, '21', 'http://clip.vn/embed/WNz', 0, 147, '', 0, ''),
(2232, '22', 'http://clip.vn/embed/WNg', 0, 147, '', 0, ''),
(2233, '23', 'http://clip.vn/embed/WNZ', 0, 147, '', 0, ''),
(2234, '24', 'http://clip.vn/embed/zZjm', 0, 147, '', 0, ''),
(2235, '25', 'http://clip.vn/embed/zZj5', 0, 147, '', 0, ''),
(2236, '26', 'http://clip.vn/embed/Wvk', 0, 147, '', 0, ''),
(2237, '27', 'http://clip.vn/embed/WYO', 0, 147, '', 0, ''),
(2238, '28', 'http://clip.vn/embed/zZjK', 0, 147, '', 0, ''),
(2239, '29', 'http://clip.vn/embed/WY1', 0, 147, '', 0, ''),
(2240, '30', 'http://clip.vn/embed/WYI', 0, 147, '', 0, ''),
(2241, '31', 'http://clip.vn/embed/WYp', 0, 147, '', 0, ''),
(2242, '32', 'http://clip.vn/embed/WYm', 0, 147, '', 0, ''),
(2243, '33', 'http://clip.vn/embed/WYL', 0, 147, '', 0, ''),
(2244, '34', 'http://clip.vn/embed/WYQ', 0, 147, '', 0, ''),
(2245, '35', 'http://clip.vn/embed/WYf', 0, 147, '', 0, ''),
(2246, '36', 'http://clip.vn/embed/WlC', 0, 147, '', 0, ''),
(2247, '37', 'http://clip.vn/embed/Wla', 0, 147, '', 0, ''),
(2248, '38', 'http://clip.vn/embed/Wl5', 0, 147, '', 0, ''),
(2249, '39', 'http://clip.vn/embed/Wln', 0, 147, '', 0, ''),
(2250, '40', 'http://clip.vn/embed/WlM', 0, 147, '', 0, ''),
(2251, '1', 'http://clip.vn/embed/OWsn', 0, 148, '', 0, ''),
(2252, '2', 'http://clip.vn/embed/OWsK', 0, 148, '', 0, ''),
(2253, '3', 'http://clip.vn/embed/OWs7', 0, 148, '', 0, ''),
(2254, '4', 'http://clip.vn/embed/OW6_', 0, 148, '', 0, ''),
(2255, '5', 'http://clip.vn/embed/OW62', 0, 148, '', 0, ''),
(2256, '6', 'http://clip.vn/embed/OW6g', 0, 148, '', 0, ''),
(2257, '7', 'http://clip.vn/embed/OWtz', 0, 148, '', 0, ''),
(2258, '8', 'http://clip.vn/embed/OWtO', 0, 148, '', 0, ''),
(2259, '9', 'http://clip.vn/embed/OWte', 0, 148, '', 0, ''),
(2260, '10', 'http://clip.vn/embed/OWtF', 0, 148, '', 0, ''),
(2261, '11', 'http://clip.vn/embed/OD64', 0, 148, '', 0, ''),
(2262, '12', 'http://clip.vn/embed/ODtD', 0, 148, '', 0, ''),
(2263, '13', 'http://clip.vn/embed/ODtg', 0, 148, '', 0, ''),
(2264, '14', 'http://clip.vn/embed/ODtC', 0, 148, '', 0, ''),
(2265, '15', 'http://clip.vn/embed/ODtL', 0, 148, '', 0, ''),
(2266, '16', 'http://clip.vn/embed/ODtu', 0, 148, '', 0, ''),
(2267, '17', 'http://clip.vn/embed/ODto', 0, 148, '', 0, ''),
(2268, '18', 'http://clip.vn/embed/ODtb', 0, 148, '', 0, ''),
(2269, '19', 'http://clip.vn/embed/ODtq', 0, 148, '', 0, ''),
(2270, '20', 'http://clip.vn/embed/ODtH', 0, 148, '', 0, ''),
(2271, '21', 'http://clip.vn/embed/OfTM', 0, 148, '', 0, ''),
(2272, '22', 'http://clip.vn/embed/OfTJ', 0, 148, '', 0, ''),
(2273, '23', 'http://clip.vn/embed/OfTv', 0, 148, '', 0, ''),
(2274, '24', 'http://clip.vn/embed/OfTl', 0, 148, '', 0, ''),
(2275, '25', 'http://clip.vn/embed/Of5L', 0, 148, '', 0, ''),
(2276, '26', 'http://clip.vn/embed/Of5R', 0, 148, '', 0, ''),
(2277, '27', 'http://clip.vn/embed/Of5y', 0, 148, '', 0, ''),
(2278, '28', 'http://clip.vn/embed/Of51', 0, 148, '', 0, ''),
(2279, '29', 'http://clip.vn/embed/Of5Z', 0, 148, '', 0, ''),
(2280, '30', 'http://clip.vn/embed/OfnK', 0, 148, '', 0, ''),
(2281, '31', 'http://clip.vn/embed/OfnU', 0, 148, '', 0, ''),
(2282, '32', 'http://clip.vn/embed/OJeH', 0, 148, '', 0, ''),
(2283, '33', 'http://clip.vn/embed/OfnJ', 0, 148, '', 0, ''),
(2284, '34', 'http://clip.vn/embed/Ofn8', 0, 148, '', 0, ''),
(2285, '35', 'http://clip.vn/embed/OfnN', 0, 148, '', 0, ''),
(2286, '36', 'http://clip.vn/embed/OfnS', 0, 148, '', 0, ''),
(2287, '37', 'http://clip.vn/embed/Ofnk', 0, 148, '', 0, ''),
(2288, '38', 'http://clip.vn/embed/OfUh', 0, 148, '', 0, ''),
(2289, '39', 'http://clip.vn/embed/Ofnq', 0, 148, '', 0, ''),
(2290, '40', 'http://clip.vn/embed/Ofnr', 0, 148, '', 0, ''),
(2291, '41', 'http://clip.vn/embed/OfU3', 0, 148, '', 0, ''),
(2292, '42', 'http://clip.vn/embed/OfUI', 0, 148, '', 0, ''),
(2293, '43', 'http://clip.vn/embed/OfUm', 0, 148, '', 0, ''),
(2294, '44', 'http://clip.vn/embed/OfUL', 0, 148, '', 0, ''),
(2295, '45', 'http://clip.vn/embed/OfUX', 0, 148, '', 0, ''),
(2296, '46', 'http://clip.vn/embed/OfUU', 0, 148, '', 0, ''),
(2297, '47', 'http://clip.vn/embed/OfUf', 0, 148, '', 0, ''),
(2298, '48', 'http://clip.vn/embed/OfUJ', 0, 148, '', 0, ''),
(2299, '49', 'http://clip.vn/embed/OJep', 0, 148, '', 0, ''),
(2300, '50', 'http://clip.vn/embed/OJ7v', 0, 148, '', 0, ''),
(2301, '51', 'http://clip.vn/embed/OJ7l', 0, 148, '', 0, ''),
(2302, '52', 'http://clip.vn/embed/OJ77', 0, 148, '', 0, ''),
(2303, '53', 'http://clip.vn/embed/OJ7H', 0, 148, '', 0, ''),
(2304, '54', 'http://clip.vn/embed/OJ7x', 0, 148, '', 0, ''),
(2305, '55', 'http://clip.vn/embed/OoiS', 0, 148, '', 0, ''),
(2306, '56', 'http://clip.vn/embed/OJrR', 0, 148, '', 0, ''),
(2307, '57', 'http://clip.vn/embed/OJrV', 0, 148, '', 0, ''),
(2308, '58', 'http://clip.vn/embed/OJrF', 0, 148, '', 0, ''),
(2309, '59', 'http://clip.vn/embed/OJr3', 0, 148, '', 0, ''),
(2310, '60', 'http://clip.vn/embed/OJrg', 0, 148, '', 0, ''),
(2311, '61', 'http://clip.vn/embed/OJrj', 0, 148, '', 0, ''),
(2312, '62', 'http://clip.vn/embed/OJrp', 0, 148, '', 0, ''),
(2313, '63', 'http://clip.vn/embed/OJr0', 0, 148, '', 0, ''),
(2314, '64', 'http://clip.vn/embed/OJri', 0, 148, '', 0, ''),
(2315, '65', 'http://clip.vn/embed/OJrL', 0, 148, '', 0, ''),
(2316, '66', 'http://clip.vn/embed/OJr5', 0, 148, '', 0, ''),
(2317, '67', 'http://clip.vn/embed/OoDF', 0, 148, '', 0, ''),
(2318, '68', 'http://clip.vn/embed/OJrm', 0, 148, '', 0, ''),
(2319, '69', 'http://clip.vn/embed/OJrs', 0, 148, '', 0, ''),
(2320, '70', 'http://clip.vn/embed/OoDV', 0, 148, '', 0, ''),
(2321, '71', 'http://clip.vn/embed/OJrt', 0, 148, '', 0, ''),
(2322, '72', 'http://clip.vn/embed/OJrn', 0, 148, '', 0, ''),
(2323, '73', 'http://clip.vn/embed/OJrd', 0, 148, '', 0, ''),
(2324, '74', 'http://clip.vn/embed/OJrf', 0, 148, '', 0, ''),
(2325, '75', 'http://clip.vn/embed/OJro', 0, 148, '', 0, ''),
(2326, '76', 'http://clip.vn/embed/OJrN', 0, 148, '', 0, ''),
(2327, '77', 'http://clip.vn/embed/OJrS', 0, 148, '', 0, ''),
(2328, '78', 'http://clip.vn/embed/OJrv', 0, 148, '', 0, ''),
(2329, '79', 'http://clip.vn/embed/OJrl', 0, 148, '', 0, ''),
(2330, '80', 'http://clip.vn/embed/OJr7', 0, 148, '', 0, ''),
(2331, '81', 'http://clip.vn/embed/OoJV', 0, 148, '', 0, ''),
(2332, '82', 'http://clip.vn/embed/O8Ww', 0, 148, '', 0, ''),
(2333, '83', 'http://clip.vn/embed/O8Wd', 0, 148, '', 0, ''),
(2334, '84', 'http://clip.vn/embed/O8Wf', 0, 148, '', 0, ''),
(2335, '85', 'http://clip.vn/embed/O8Wo', 0, 148, '', 0, ''),
(2336, '86', 'http://clip.vn/embed/O8WN', 0, 148, '', 0, ''),
(2337, '87', 'http://clip.vn/embed/O8WS', 0, 148, '', 0, ''),
(2338, '88', 'http://clip.vn/embed/O8Wv', 0, 148, '', 0, ''),
(2339, '89', 'http://clip.vn/embed/O8Wl', 0, 148, '', 0, ''),
(2340, '90', 'http://clip.vn/embed/O8W7', 0, 148, '', 0, ''),
(2341, '91', 'http://clip.vn/embed/O8zD', 0, 148, '', 0, ''),
(2342, '92', 'http://clip.vn/embed/OoDl', 0, 148, '', 0, ''),
(2343, '93', 'http://clip.vn/embed/O8zV', 0, 148, '', 0, ''),
(2344, '94', 'http://clip.vn/embed/OohW', 0, 148, '', 0, ''),
(2345, '95', 'http://clip.vn/embed/O8zF', 0, 148, '', 0, ''),
(2346, '1', 'http://clip.vn/embed/OHN6', 0, 149, '', 0, ''),
(2347, '2', 'http://clip.vn/embed/OHNQ', 0, 149, '', 0, ''),
(2348, '3', 'http://clip.vn/embed/OHNa', 0, 149, '', 0, ''),
(2349, '1', 'http://clip.vn/embed/OxRs', 0, 150, '', 0, ''),
(2350, '2', 'http://clip.vn/embed/OxRm', 0, 150, '', 0, ''),
(2351, '3', 'http://clip.vn/embed/OxR0', 0, 150, '', 0, ''),
(2352, '1', 'http://clip.vn/embed/h0zU', 0, 151, '', 0, ''),
(2353, '1', 'http://clip.vn/embed/O7Da', 0, 152, '', 0, ''),
(2354, '2', 'http://clip.vn/embed/O7Du', 0, 152, '', 0, ''),
(2355, '3', 'http://clip.vn/embed/O7DQ', 0, 152, '', 0, ''),
(2356, '1', 'http://clip.vn/embed/O7sn', 0, 153, '', 0, ''),
(2357, '2', 'http://clip.vn/embed/O7sw', 0, 153, '', 0, ''),
(2358, '3', 'http://clip.vn/embed/O7so', 0, 153, '', 0, ''),
(2359, '1', 'http://clip.vn/embed/Obo2', 0, 154, '', 0, ''),
(2360, '2', 'http://clip.vn/embed/Oboe', 0, 154, '', 0, ''),
(2361, '3', 'http://clip.vn/embed/Obo1', 0, 154, '', 0, ''),
(2362, '1', 'http://clip.vn/embed/OaZF', 0, 155, 'upload/2013/04/07/subtitle/2362.srt', 0, ''),
(2363, '1', 'http://clip.vn/embed/OpeP', 0, 156, 'upload/2013/04/07/subtitle/2363.srt', 0, ''),
(2364, '1', 'http://clip.vn/embed/O7xa', 0, 157, '', 0, ''),
(2365, '2', 'http://clip.vn/embed/O7xK', 0, 157, '', 0, ''),
(2366, '3', 'http://clip.vn/embed/O7x6', 0, 157, '', 0, ''),
(2367, '1', 'http://clip.vn/embed/OrhH', 0, 158, '', 0, ''),
(2368, '2', 'http://clip.vn/embed/Orh-', 0, 158, '', 0, ''),
(2369, '3', 'http://clip.vn/embed/OrhA', 0, 158, '', 0, ''),
(2370, '1', 'http://clip.vn/embed/O4e8', 0, 159, '', 0, ''),
(2371, '1', 'http://clip.vn/embed/OHwq', 0, 160, '', 0, ''),
(2372, '2', 'http://clip.vn/embed/OHwY', 0, 160, '', 0, ''),
(2373, '3', 'http://clip.vn/embed/OHwc', 0, 160, '', 0, ''),
(2374, '1', 'http://clip.vn/embed/On_U', 0, 161, '', 0, ''),
(2375, '2', 'http://clip.vn/embed/On6I', 0, 161, '', 0, ''),
(2376, '3', 'http://clip.vn/embed/OUlc', 0, 161, '', 0, ''),
(2377, '4', 'http://clip.vn/embed/OKWt', 0, 161, '', 0, ''),
(2378, '5', 'http://clip.vn/embed/OKvS', 0, 161, '', 0, ''),
(2379, '6', 'http://clip.vn/embed/OdYH', 0, 161, '', 0, ''),
(2380, '7', 'http://clip.vn/embed/OfvT', 0, 161, '', 0, ''),
(2381, '8', 'http://clip.vn/embed/OJcj', 0, 161, '', 0, ''),
(2382, '9', 'http://clip.vn/embed/OoxV', 0, 161, '', 0, ''),
(2383, '10', 'http://clip.vn/embed/OcaH', 0, 161, '', 0, ''),
(2384, '11', 'http://clip.vn/embed/Ov0d', 0, 161, '', 0, ''),
(2385, '12', 'http://clip.vn/embed/OY0W', 0, 161, '', 0, ''),
(2386, '13', 'http://clip.vn/embed/OlT0', 0, 161, '', 0, ''),
(2387, '14', 'http://clip.vn/embed/Ol67', 0, 161, '', 0, ''),
(2388, '15', 'http://clip.vn/embed/Oqeu', 0, 161, '', 0, ''),
(2389, '16', 'http://clip.vn/embed/Oqka', 0, 161, '', 0, ''),
(2390, '17', 'http://clip.vn/embed/OH9_', 0, 161, '', 0, ''),
(2391, '18', 'http://clip.vn/embed/O4yc', 0, 161, '', 0, ''),
(2392, '19', 'http://clip.vn/embed/OxDN', 0, 161, '', 0, ''),
(2393, '1', 'http://clip.vn/embed/OrFo', 0, 162, '', 0, ''),
(2394, '2', 'http://clip.vn/embed/OrFl', 0, 162, '', 0, ''),
(2395, '3', 'http://clip.vn/embed/OryD', 0, 162, '', 0, ''),
(2396, '4', 'http://clip.vn/embed/OryV', 0, 162, '', 0, ''),
(2397, '1', 'http://clip.vn/embed/O4bj', 0, 91, '', 0, ''),
(2398, '2', 'http://clip.vn/embed/OxUF', 0, 91, '', 0, ''),
(2399, '1', 'http://clip.vn/embed/OqS1', 0, 163, '', 0, ''),
(2400, '2', 'http://clip.vn/embed/OqSe', 0, 163, '', 0, ''),
(2401, '3', 'http://clip.vn/embed/OqSy', 0, 163, '', 0, ''),
(2402, '1', 'http://clip.vn/embed/OHoU', 0, 164, '', 0, ''),
(2403, '2', 'http://clip.vn/embed/OHoX', 0, 164, '', 0, ''),
(2404, '3', 'http://clip.vn/embed/OHo6', 0, 164, '', 0, ''),
(2405, '1', 'http://clip.vn/embed/OHHM', 0, 165, '', 0, ''),
(2406, '2', 'http://clip.vn/embed/OHHK', 0, 165, '', 0, ''),
(2407, '3', 'http://clip.vn/embed/OHHX', 0, 165, '', 0, ''),
(2408, '1', 'http://clip.vn/embed/O460', 0, 166, '', 0, ''),
(2409, '2', 'http://clip.vn/embed/O46i', 0, 166, '', 0, ''),
(2410, '3', 'http://clip.vn/embed/O46p', 0, 166, '', 0, ''),
(2411, '1', 'http://clip.vn/embed/O7Sh', 0, 167, '', 0, ''),
(2412, '2', 'http://clip.vn/embed/O7SC', 0, 167, '', 0, ''),
(2413, '3', 'http://clip.vn/embed/O7SX', 0, 167, '', 0, ''),
(2414, '1', 'http://clip.vn/embed/Oqd_', 0, 168, '', 0, ''),
(2415, '2', 'http://clip.vn/embed/Oqdz', 0, 168, '', 0, ''),
(2416, '3', 'http://clip.vn/embed/OqKA', 0, 168, '', 0, ''),
(2417, '1', 'http://clip.vn/embed/O0B7', 0, 169, 'upload/2013/04/10/subtitle/2417.srt', 0, ''),
(2418, '1', 'http://clip.vn/embed/hPit', 0, 170, '', 0, ''),
(2419, '1', 'http://clip.vn/embed/W9Eb', 0, 171, '', 0, ''),
(2420, '1', 'http://clip.vn/embed/OrNc', 0, 172, '', 0, ''),
(2421, '2', 'http://clip.vn/embed/OrNq', 0, 172, '', 0, ''),
(2422, '3', 'http://clip.vn/embed/OrNB', 0, 172, '', 0, ''),
(2423, '1', 'http://clip.vn/embed/OY4o', 0, 173, '', 0, ''),
(2424, '2', 'http://clip.vn/embed/OY4N', 0, 173, '', 0, ''),
(2425, '3', 'http://clip.vn/embed/OY4S', 0, 173, '', 0, ''),
(2426, '1', 'http://clip.vn/embed/OYOD', 0, 174, '', 0, ''),
(2427, '2', 'http://clip.vn/embed/OYOO', 0, 174, '', 0, ''),
(2428, '3', 'http://clip.vn/embed/OYOR', 0, 174, '', 0, ''),
(2429, '1', 'http://clip.vn/embed/Olyw', 0, 175, '', 0, ''),
(2430, '2', 'http://clip.vn/embed/Olyd', 0, 175, '', 0, ''),
(2431, '3', 'http://clip.vn/embed/Olyf', 0, 175, '', 0, ''),
(2432, '1', 'http://clip.vn/embed/OYN0', 0, 176, '', 0, ''),
(2433, '2', 'http://clip.vn/embed/OYNm', 0, 176, '', 0, ''),
(2434, '3', 'http://clip.vn/embed/OYNL', 0, 176, '', 0, ''),
(2435, '1', 'http://clip.vn/embed/O4SO', 0, 177, '', 0, ''),
(2436, '2', 'http://clip.vn/embed/O4S2', 0, 177, '', 0, ''),
(2437, '3', 'http://clip.vn/embed/O4S1', 0, 177, '', 0, ''),
(2438, '4', 'http://clip.vn/embed/O4SI', 0, 177, '', 0, ''),
(2439, '5', 'http://clip.vn/embed/O4S6', 0, 177, '', 0, ''),
(2440, '6', 'http://clip.vn/embed/O4St', 0, 177, '', 0, ''),
(2441, '7', 'http://clip.vn/embed/O4c_', 0, 177, '', 0, ''),
(2442, '8', 'http://clip.vn/embed/O4cz', 0, 177, '', 0, ''),
(2443, '9', 'http://clip.vn/embed/O4vP', 0, 177, '', 0, ''),
(2444, '10', 'http://clip.vn/embed/O4vo', 0, 177, '', 0, ''),
(2445, '11', 'http://clip.vn/embed/O4vl', 0, 177, '', 0, ''),
(2446, '12', 'http://clip.vn/embed/OxP1', 0, 177, '', 0, ''),
(2447, '13', 'http://clip.vn/embed/OxP6', 0, 177, '', 0, ''),
(2448, '14', 'http://clip.vn/embed/OxPA', 0, 177, '', 0, ''),
(2449, '15', 'http://clip.vn/embed/Ox0L', 0, 177, '', 0, ''),
(2450, '16', 'http://clip.vn/embed/Ox0J', 0, 177, '', 0, ''),
(2451, '17', 'http://clip.vn/embed/Ox0l', 0, 177, '', 0, ''),
(2452, '18', 'http://clip.vn/embed/Ox0k', 0, 177, '', 0, ''),
(2453, '1', 'http://clip.vn/embed/OrXS', 0, 178, '', 0, ''),
(2454, '2', 'http://clip.vn/embed/OrYy', 0, 178, '', 0, ''),
(2455, '3', 'http://clip.vn/embed/OHQS', 0, 178, '', 0, ''),
(2456, '4', 'http://clip.vn/embed/OHdf', 0, 178, '', 0, ''),
(2457, '5', 'http://clip.vn/embed/O4ZK', 0, 178, '', 0, ''),
(2458, '6', 'http://clip.vn/embed/O4ac', 0, 178, '', 0, ''),
(2459, '7', 'http://clip.vn/embed/OxEj', 0, 178, '', 0, ''),
(2460, '8', 'http://clip.vn/embed/Oxsv', 0, 178, '', 0, ''),
(2461, '1', 'http://clip.vn/embed/O4gJ', 0, 179, '', 0, ''),
(2462, '2', 'http://clip.vn/embed/O4gw', 0, 179, '', 0, ''),
(2463, '3', 'http://clip.vn/embed/O4gM', 0, 179, '', 0, ''),
(2464, '4', 'http://clip.vn/embed/O4go', 0, 179, '', 0, ''),
(2465, '5', 'http://clip.vn/embed/O4gN', 0, 179, '', 0, ''),
(2466, '6', 'http://clip.vn/embed/O4gv', 0, 179, '', 0, ''),
(2467, '7', 'http://clip.vn/embed/O4gY', 0, 179, '', 0, ''),
(2468, '8', 'http://clip.vn/embed/O4gl', 0, 179, '', 0, ''),
(2469, '9', 'http://clip.vn/embed/O4gb', 0, 179, '', 0, ''),
(2470, '10', 'http://clip.vn/embed/O4gq', 0, 179, '', 0, ''),
(2471, '11', 'http://clip.vn/embed/O4EF', 0, 179, '', 0, ''),
(2472, '12', 'http://clip.vn/embed/O4E3', 0, 179, '', 0, ''),
(2473, '13', 'http://clip.vn/embed/O4EI', 0, 179, '', 0, ''),
(2474, '14', 'http://clip.vn/embed/O4Ei', 0, 179, '', 0, ''),
(2475, '15', 'http://clip.vn/embed/O4E0', 0, 179, '', 0, ''),
(2476, '16', 'http://clip.vn/embed/O4EC', 0, 179, '', 0, ''),
(2477, '17', 'http://clip.vn/embed/O4jU', 0, 179, '', 0, ''),
(2478, '18', 'http://clip.vn/embed/O4jK', 0, 179, '', 0, ''),
(2479, '19', 'http://clip.vn/embed/O4jM', 0, 179, '', 0, ''),
(2480, '20', 'http://clip.vn/embed/O4jo', 0, 179, '', 0, ''),
(2481, '21', 'http://clip.vn/embed/O4jJ', 0, 179, '', 0, ''),
(2482, '22', 'http://clip.vn/embed/O4j8', 0, 179, '', 0, ''),
(2483, '23', 'http://clip.vn/embed/O4jc', 0, 179, '', 0, ''),
(2484, '24', 'http://clip.vn/embed/O4jb', 0, 179, '', 0, ''),
(2485, '25', 'http://clip.vn/embed/O4jY', 0, 179, '', 0, ''),
(2486, '26', 'http://clip.vn/embed/O4jq', 0, 179, '', 0, ''),
(2487, '27', 'http://clip.vn/embed/O4jH', 0, 179, '', 0, ''),
(2488, '28', 'http://clip.vn/embed/O4jx', 0, 179, '', 0, ''),
(2489, '29', 'http://clip.vn/embed/O4j4', 0, 179, '', 0, ''),
(2490, '30', 'http://clip.vn/embed/O4jA', 0, 179, '', 0, ''),
(2491, '31', 'http://clip.vn/embed/O4Er', 0, 179, '', 0, ''),
(2492, '32', 'http://clip.vn/embed/O4El', 0, 179, '', 0, ''),
(2493, '33', 'http://clip.vn/embed/O4Eq', 0, 179, '', 0, ''),
(2494, '34', 'http://clip.vn/embed/O4E4', 0, 179, '', 0, ''),
(2495, '35', 'http://clip.vn/embed/O4EB', 0, 179, '', 0, ''),
(2496, '36', 'http://clip.vn/embed/O4j_', 0, 179, '', 0, ''),
(2497, '37', 'http://clip.vn/embed/O4jz', 0, 179, '', 0, ''),
(2498, '38', 'http://clip.vn/embed/O4jh', 0, 179, '', 0, ''),
(2499, '39', 'http://clip.vn/embed/O4je', 0, 179, '', 0, ''),
(2500, '40', 'http://clip.vn/embed/O4jB', 0, 179, '', 0, ''),
(2501, '41', 'http://clip.vn/embed/O4G8', 0, 179, '', 0, ''),
(2502, '42', 'http://clip.vn/embed/O4Gb', 0, 179, '', 0, ''),
(2503, '43', 'http://clip.vn/embed/O4GS', 0, 179, '', 0, ''),
(2504, '44', 'http://clip.vn/embed/O4Gv', 0, 179, '', 0, ''),
(2505, '45', 'http://clip.vn/embed/O4Gq', 0, 179, '', 0, ''),
(2506, '46', 'http://clip.vn/embed/O4G7', 0, 179, '', 0, ''),
(2507, '47', 'http://clip.vn/embed/O4Gl', 0, 179, '', 0, ''),
(2508, '48', 'http://clip.vn/embed/O4GH', 0, 179, '', 0, ''),
(2509, '49', 'http://clip.vn/embed/O4Gx', 0, 179, '', 0, ''),
(2510, '50', 'http://clip.vn/embed/O4GA', 0, 179, '', 0, ''),
(2511, '51', 'http://clip.vn/embed/O4pw', 0, 179, '', 0, ''),
(2512, '52', 'http://clip.vn/embed/O4pX', 0, 179, '', 0, ''),
(2513, '53', 'http://clip.vn/embed/O4pt', 0, 179, '', 0, ''),
(2514, '54', 'http://clip.vn/embed/O4pn', 0, 179, '', 0, ''),
(2515, '55', 'http://clip.vn/embed/O4pK', 0, 179, '', 0, ''),
(2516, '56', 'http://clip.vn/embed/O4pf', 0, 179, '', 0, ''),
(2517, '57', 'http://clip.vn/embed/O4pd', 0, 179, '', 0, ''),
(2518, '58', 'http://clip.vn/embed/O4pJ', 0, 179, '', 0, ''),
(2519, '59', 'http://clip.vn/embed/O4po', 0, 179, '', 0, ''),
(2520, '60', 'http://clip.vn/embed/O4p2', 0, 179, '', 0, ''),
(2521, '61', 'http://clip.vn/embed/O4pR', 0, 179, '', 0, ''),
(2522, '62', 'http://clip.vn/embed/O4pV', 0, 179, '', 0, ''),
(2523, '63', 'http://clip.vn/embed/O4pF', 0, 179, '', 0, ''),
(2524, '64', 'http://clip.vn/embed/O4GB', 0, 179, '', 0, ''),
(2525, '65', 'http://clip.vn/embed/O4Gk', 0, 179, '', 0, ''),
(2526, '66', 'http://clip.vn/embed/O45J', 0, 179, '', 0, ''),
(2527, '67', 'http://clip.vn/embed/O4pO', 0, 179, '', 0, ''),
(2528, '68', 'http://clip.vn/embed/O4pW', 0, 179, '', 0, ''),
(2529, '69', 'http://clip.vn/embed/O4p3', 0, 179, '', 0, ''),
(2530, '70', 'http://clip.vn/embed/O45K', 0, 179, '', 0, ''),
(2531, '71', 'http://clip.vn/embed/O4p0', 0, 179, '', 0, ''),
(2532, '72', 'http://clip.vn/embed/O45U', 0, 179, '', 0, ''),
(2533, '73', 'http://clip.vn/embed/O4pi', 0, 179, '', 0, ''),
(2534, '74', 'http://clip.vn/embed/O4pp', 0, 179, '', 0, ''),
(2535, '75', 'http://clip.vn/embed/O4pQ', 0, 179, '', 0, ''),
(2536, '76', 'http://clip.vn/embed/O4pm', 0, 179, '', 0, ''),
(2537, '77', 'http://clip.vn/embed/O4p9', 0, 179, '', 0, ''),
(2538, '78', 'http://clip.vn/embed/O4pL', 0, 179, '', 0, ''),
(2539, '79', 'http://clip.vn/embed/O4pT', 0, 179, '', 0, ''),
(2540, '80', 'http://clip.vn/embed/O4p5', 0, 179, '', 0, ''),
(2541, '1', 'http://clip.vn/embed/OlUT', 0, 181, '', 0, '');
INSERT INTO `ipos_ep` (`epid`, `epname`, `epurl`, `error`, `phimid`, `epsub`, `server`, `epdemo`) VALUES
(2542, '2', 'http://clip.vn/embed/OlUW', 0, 181, '', 0, ''),
(2543, '3', 'http://clip.vn/embed/Oq0H', 0, 181, '', 0, ''),
(2544, '4', 'http://clip.vn/embed/Oqul', 0, 181, '', 0, ''),
(2545, '5', 'http://clip.vn/embed/OH5W', 0, 181, '', 0, ''),
(2546, '6', 'http://clip.vn/embed/OH5O', 0, 181, '', 0, ''),
(2547, '7', 'http://clip.vn/embed/OH5R', 0, 181, '', 0, ''),
(2548, '8', 'http://clip.vn/embed/OH5V', 0, 181, '', 0, ''),
(2549, '9', 'http://clip.vn/embed/OH5g', 0, 181, '', 0, ''),
(2550, '10', 'http://clip.vn/embed/OH5P', 0, 181, '', 0, ''),
(2551, '11', 'http://clip.vn/embed/O4Gd', 0, 181, '', 0, ''),
(2552, '12', 'http://clip.vn/embed/O4GN', 0, 181, '', 0, ''),
(2553, '13', 'http://clip.vn/embed/O4nL', 0, 181, '', 0, ''),
(2554, '14', 'http://clip.vn/embed/O4Nf', 0, 181, '', 0, ''),
(2555, '15', 'http://clip.vn/embed/Oxsg', 0, 181, '', 0, ''),
(2556, '16', 'http://clip.vn/embed/Oxs9', 0, 181, '', 0, ''),
(2557, '1', 'http://clip.vn/embed/Onxp', 0, 182, '', 0, ''),
(2558, '2', 'http://clip.vn/embed/Onx1', 0, 182, '', 0, ''),
(2559, '3', 'http://clip.vn/embed/Onxn', 0, 182, '', 0, ''),
(2560, '1', 'http://clip.vn/embed/WvYg', 0, 183, '', 0, ''),
(2561, '2', 'http://clip.vn/embed/WvYE', 0, 183, '', 0, ''),
(2562, '3', 'http://clip.vn/embed/WvYC', 0, 183, '', 0, ''),
(2563, '4', 'http://clip.vn/embed/Wv7P', 0, 183, '', 0, ''),
(2564, '5', 'http://clip.vn/embed/Wv70', 0, 183, '', 0, ''),
(2565, '1', 'http://clip.vn/embed/Ono6', 0, 184, '', 0, ''),
(2566, '2', 'http://clip.vn/embed/OnoQ', 0, 184, '', 0, ''),
(2567, '3', 'http://clip.vn/embed/Onou', 0, 184, '', 0, ''),
(2568, '4', 'http://clip.vn/embed/Onoa', 0, 184, '', 0, ''),
(2569, '5', 'http://clip.vn/embed/Ono9', 0, 184, '', 0, ''),
(2570, '6', 'http://clip.vn/embed/OnoK', 0, 184, '', 0, ''),
(2571, '7', 'http://clip.vn/embed/OnoM', 0, 184, '', 0, ''),
(2572, '8', 'http://clip.vn/embed/OnoU', 0, 184, '', 0, ''),
(2573, '9', 'http://clip.vn/embed/Ono8', 0, 184, '', 0, ''),
(2574, '10', 'http://clip.vn/embed/OnoJ', 0, 184, '', 0, ''),
(2575, '11', 'http://clip.vn/embed/OnoS', 0, 184, '', 0, ''),
(2576, '12', 'http://clip.vn/embed/Onov', 0, 184, '', 0, ''),
(2577, '13', 'http://clip.vn/embed/OnoH', 0, 184, '', 0, ''),
(2578, '14', 'http://clip.vn/embed/Ono7', 0, 184, '', 0, ''),
(2579, '15', 'http://clip.vn/embed/OnNp', 0, 184, '', 0, ''),
(2580, '16', 'http://clip.vn/embed/On8_', 0, 184, '', 0, ''),
(2581, '17', 'http://clip.vn/embed/On8z', 0, 184, '', 0, ''),
(2582, '18', 'http://clip.vn/embed/On8O', 0, 184, '', 0, ''),
(2583, '19', 'http://clip.vn/embed/On8V', 0, 184, '', 0, ''),
(2584, '20', 'http://clip.vn/embed/On83', 0, 184, '', 0, ''),
(2585, '21', 'http://clip.vn/embed/OnNC', 0, 184, '', 0, ''),
(2586, '22', 'http://clip.vn/embed/OnNi', 0, 184, '', 0, ''),
(2587, '23', 'http://clip.vn/embed/OnN0', 0, 184, '', 0, ''),
(2588, '24', 'http://clip.vn/embed/OnN9', 0, 184, '', 0, ''),
(2589, '25', 'http://clip.vn/embed/OnNa', 0, 184, '', 0, ''),
(2590, '26', 'http://clip.vn/embed/OnNu', 0, 184, '', 0, ''),
(2591, '27', 'http://clip.vn/embed/OnNQ', 0, 184, '', 0, ''),
(2592, '28', 'http://clip.vn/embed/OwyV', 0, 184, '', 0, ''),
(2593, '29', 'http://clip.vn/embed/OwyR', 0, 184, '', 0, ''),
(2594, '30', 'http://clip.vn/embed/OwyF', 0, 184, '', 0, ''),
(2595, '31', 'http://clip.vn/embed/OdWw', 0, 184, '', 0, ''),
(2596, '32', 'http://clip.vn/embed/Ob8F', 0, 184, '', 0, ''),
(2597, '33', 'http://clip.vn/embed/Ob8j', 0, 184, '', 0, ''),
(2598, '34', 'http://clip.vn/embed/Ob83', 0, 184, '', 0, ''),
(2599, '35', 'http://clip.vn/embed/Ob8g', 0, 184, '', 0, ''),
(2600, '36', 'http://clip.vn/embed/Ob8p', 0, 184, '', 0, ''),
(2601, '37', 'http://clip.vn/embed/Ob8i', 0, 184, '', 0, ''),
(2602, '38', 'http://clip.vn/embed/Ob8T', 0, 184, '', 0, ''),
(2603, '39', 'http://clip.vn/embed/Ob8L', 0, 184, '', 0, ''),
(2604, '40', 'http://clip.vn/embed/Ov0F', 0, 184, '', 0, ''),
(2605, '41', 'http://clip.vn/embed/Ov03', 0, 184, '', 0, ''),
(2606, '1', 'http://clip.vn/embed/OHSM', 0, 185, '', 0, ''),
(2607, '2', 'http://clip.vn/embed/OHSq', 0, 185, '', 0, ''),
(2608, '3', 'http://clip.vn/embed/OHSk', 0, 185, '', 0, ''),
(2609, '4', 'http://clip.vn/embed/OHc_', 0, 185, '', 0, ''),
(2610, '5', 'http://clip.vn/embed/OHcz', 0, 185, '', 0, ''),
(2611, '6', 'http://clip.vn/embed/OHch', 0, 185, '', 0, ''),
(2612, '7', 'http://clip.vn/embed/O4hT', 0, 185, '', 0, ''),
(2613, '8', 'http://clip.vn/embed/O4iE', 0, 185, '', 0, ''),
(2614, '9', 'http://clip.vn/embed/O4i0', 0, 185, '', 0, ''),
(2615, '10', 'http://clip.vn/embed/O4is', 0, 185, '', 0, ''),
(2616, '11', 'http://clip.vn/embed/O4iU', 0, 185, '', 0, ''),
(2617, '1', 'http://clip.vn/embed/OHKz', 0, 186, '', 0, ''),
(2618, '2', 'http://clip.vn/embed/OHK_', 0, 186, '', 0, ''),
(2619, '3', 'http://clip.vn/embed/OHwA', 0, 186, '', 0, ''),
(2620, '1', 'http://clip.vn/embed/O4N1', 0, 187, '', 0, ''),
(2621, '2', 'http://clip.vn/embed/O4Nz', 0, 187, '', 0, ''),
(2622, '3', 'http://clip.vn/embed/O48r', 0, 187, '', 0, ''),
(3385, '1', 'https://www.youtube.com/watch?v=qrOeGCJdZe4', 0, 322, '', 1, 'https://www.youtube.com/watch?v=qrOeGCJdZe4'),
(3386, '2', 'https://www.youtube.com/watch?v=hT_nvWreIhg', 0, 322, '', 1, 'https://www.youtube.com/watch?v=hT_nvWreIhg'),
(3387, '3', 'https://www.youtube.com/watch?v=OpQFFLBMEPI', 0, 322, '', 1, 'https://www.youtube.com/watch?v=OpQFFLBMEPI'),
(2986, '308', 'http://clip.vn/embed/OBFR', 0, 41, '', 0, ''),
(2987, '17', 'http://clip.vn/embed/OB3S', 0, 181, '', 0, ''),
(2988, '18', 'http://clip.vn/embed/OBgp', 0, 181, '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `ipos_film`
--

CREATE TABLE IF NOT EXISTS `ipos_film` (
`phimid` int(10) NOT NULL,
  `tenphim` text NOT NULL,
  `tentienganh` text NOT NULL,
  `daodien` text NOT NULL,
  `dienvien` text NOT NULL,
  `theloai` varchar(255) NOT NULL,
  `quocgia` int(10) NOT NULL,
  `thoiluong` varchar(50) NOT NULL,
  `nhasanxuat` text NOT NULL,
  `namsanxuat` varchar(4) NOT NULL,
  `phimimg` text NOT NULL,
  `phimbo` tinyint(1) NOT NULL DEFAULT '0',
  `phimtime` int(10) NOT NULL,
  `chatluong` varchar(50) NOT NULL DEFAULT '0',
  `phimhot` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(10) NOT NULL DEFAULT '0',
  `viewed_day` int(10) NOT NULL DEFAULT '0',
  `phimchieurap` tinyint(1) NOT NULL DEFAULT '0',
  `phimerror` tinyint(1) NOT NULL DEFAULT '0',
  `phimdecu` tinyint(1) NOT NULL DEFAULT '0',
  `trailer` varchar(255) NOT NULL,
  `server` int(10) NOT NULL DEFAULT '0',
  `poster` tinyint(1) NOT NULL DEFAULT '0',
  `likephim` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=323 ;

--
-- Dumping data for table `ipos_film`
--

INSERT INTO `ipos_film` (`phimid`, `tenphim`, `tentienganh`, `daodien`, `dienvien`, `theloai`, `quocgia`, `thoiluong`, `nhasanxuat`, `namsanxuat`, `phimimg`, `phimbo`, `phimtime`, `chatluong`, `phimhot`, `viewed`, `viewed_day`, `phimchieurap`, `phimerror`, `phimdecu`, `trailer`, `server`, `poster`, `likephim`) VALUES
(10, 'NgÆ°á»i Nhá»‡n 2', 'Spider Man 2', 'Sam Raimi', 'Tobey Maguire, Kirsten Dunst, J.K. Simmons, Alfred Molina, Rosemary Harris, James Franco', ',1,10,', 7, '110 phÃºt', '', '2004', 'upload/2013/03/23/film/nguoi-nhen-2.jpg', 0, 1364049104, 'SD', 0, 172, 0, 0, 0, 0, 'http://www.youtube.com/watch?v=enmFqm_N_ZE', 0, 8, 0),
(9, 'SiÃªu Trá»™m Kid', 'Magic Kaito', '', '', ',1,5,', 6, '24 phÃºt', '', '2012', 'upload/2013/03/23/film/sieu-trom-kid.jpg', 2, 1364043323, 'SD', 0, 253, 0, 0, 0, 0, 'http://www.youtube.com/watch?v=RHOFMc22zmc', 0, 8, 0),
(11, 'TÃ¡o QuÃ¢n 2013', 'Gáº·p Nhau Cuá»‘i NÄƒm 2013', 'Äá»— Thanh Háº£i', 'XuÃ¢n Báº¯c,Tá»± Long,Quá»‘c KhÃ¡nh,Quá»‘c Trung,VÃ¢n Dung', ',7,9,', 1, '3 giá»', '', '2013', 'upload/2013/03/24/film/tao-quan-2013.jpg', 0, 1364291135, 'SD', 0, 192, 0, 0, 0, 0, 'http://www.youtube.com/watch?v=pl6hr0ZUonw', 0, 8, 0),
(12, 'Huyá»n thoáº¡i Chiáº¿n binh', 'Legends of Awesomeness', '', '', ',5,7,', 7, '26 táº­p', '', '2011', 'upload/2013/03/24/film/legends-of-awesomeness-season-1.jpg', 1, 1364547737, 'SD', 0, 284, 0, 0, 0, 0, '', 0, 8, 0),
(14, 'YÃªu Anh, Em DÃ¡m KhÃ´ng', 'Yeu Anh, Em DÃ¡m KhÃ´ng', 'Nguyá»…n Quang Minh', 'Äan TrÆ°á»ng, Miu LÃª, Hiáº¿u Hiá»n, Nháº­t CÆ°á»ng, Tráº¥n ThÃ nh', ',4,7,', 1, '90 phÃºt', '', '2013', 'upload/2013/03/24/film/yeu-anh-em-dam-khong.jpg', 0, 1364551158, 'SD', 0, 18, 0, 1, 0, 1, 'http://www.youtube.com/watch?v=ZcLeXn2Xcjk', 0, 8, 0),
(18, 'BÃ³ng ma há»c Ä‘Æ°á»ng', 'Ghost school', 'LÃª Báº£o Trung', 'HoÃ i Linh, HoÃ ng SÆ¡n, TrÆ°Æ¡ng Quá»³nh Anh', ',3,', 1, '90 phÃºt', '', '2011', 'upload/2013/03/29/film/bong-ma-hoc-duong.jpg', 0, 1364541051, 'SD', 0, 8, 0, 0, 0, 0, '', 0, 8, 0),
(15, 'Biá»‡t Äá»™i SiÃªu Anh HÃ¹ng', 'The Avengers', 'Joss Whedon', 'Scarlett johansson, Samuel l. jackson, Jeremy renner, Chris evans, Mark ruffalo, Chris hem', ',1,10,', 7, '142 phÃºt', 'Marvel Enterprises, Marvel Studios', '2012', 'upload/2013/03/24/film/biet-doi-sieu-anh-hung.jpeg', 0, 1364566327, 'HD', 0, 69, 0, 0, 0, 1, 'http://www.youtube.com/watch?v=oifD6CJniL0', 0, 8, 0),
(19, 'HÃ€NH TRÃŒNH VÃ” Äá»ŠNH', 'AN UNEXPECTED JOURNEY', 'Peter Jackson', 'Martin Freeman, Ian McKellen vÃ  Richard Armitage', ',2,', 7, '170 phÃºt', '', '2012', 'upload/2013/03/29/film/nguoi-hobbit-hanh-trinh-vo-dinh.jpg', 0, 1364541450, 'HD', 0, 26, 0, 0, 0, 0, '', 0, 8, 0),
(17, '12 Con GiÃ¡p', 'Chinese Zodiac', 'ThÃ nh Long', 'ThÃ nh Long, Oliver Platt, Laura Weissbecker', ',1,', 7, '90 phÃºt', '', '2012', 'upload/2013/03/26/film/12-con-giap.jpg', 0, 1364291342, 'HD', 0, 39, 0, 1, 0, 1, 'http://www.youtube.com/watch?v=BD3GFWbwXsA', 0, 8, 0),
(42, 'Tay Äáº¥m ThÃ©p', 'Real Steel', 'Shawn Levy', 'Hugh jackman, Hope davis, Anthony mackie, Dakota goyo, Evangeline lilly, Kevin durand, Ja', ',1,10,', 7, '127 phÃºt', 'Touchstone Pictures, DreamWorks Pictures', '011', 'upload/2013/03/30/film/tay-dam-thep.jpg', 0, 1364620446, 'HD', 0, 19, 0, 0, 0, 0, '', 0, 8, 0),
(20, 'TiÃªn kiáº¿m ká»³ hiá»‡p 3', 'XiÄn JiÃ n QÃ­ XiÃ¡ ZhuÃ n SÄn', 'LÃ½ Quá»‘c Láº­p', 'Há»“ Ca, DÆ°Æ¡ng Má»‹ch, Hoáº¯c Kiáº¿n Hoa', ',2,12,', 2, '37 táº­p', 'ÄÆ°á»ng NhÃ¢n', '2008', 'upload/2013/03/29/film/tien-kiem-ky-hiep-3.jpg', 1, 1364803629, 'SD', 0, 208, 0, 0, 0, 0, '', 0, 8, 0),
(21, 'Phim Ngáº¯n Cá»§a Pixar', 'Pixar Movies', '', 'Disney', ',5,7,', 7, '5 PhÃºt', 'Pixar', '2012', 'upload/2013/03/29/film/phim-ngan-cua-pixar.jpg', 2, 1364543509, 'HD', 0, 143, 0, 0, 0, 0, '', 0, 8, 0),
(22, 'Huyá»n Thoáº¡i Chiáº¿n Binh 2', 'Legends of Awesomeness 2', '', '', ',5,6,', 7, '30 PhÃºt', '2012', '2012', 'upload/2013/03/29/film/huyen-thoai-chien-binh-2.jpg', 2, 1364544044, 'HD', 0, 89, 0, 0, 0, 0, '', 0, 8, 0),
(61, 'Cháº¿t Hai Láº§n', 'Double Jeopardy', 'Bruce Beresford', 'Ashley Judd, Tommy Lee Jones, Bruce Greenwood', ',1,9,10,', 7, '105 PhÃºt', 'Paramount Pictures ,  MFP Munich Film Partners GmbH &amp; Company I. Produktions KG ,  Provin', '1999', 'upload/2013/04/01/film/chet-hai-lan.jpg', 0, 1364801391, 'HD', 0, 12, 0, 0, 0, 0, '', 0, 8, 0),
(25, 'QuÃ¡i hiá»‡p Nháº¥t Chi Mai', 'GuÃ ixiÃ¡ YÃ¬zhÄ«mÃ©i', 'LÃ½ Quá»‘c Láº­p', 'Hoáº¯c Kiáº¿n Hoa, LÆ°u Thi Thi, MÃ£ ThiÃªn VÅ©, ThÃ­ch HÃ nh VÅ©', ',6,12,', 2, '30 táº­p', 'ÄÆ°á»ng NhÃ¢n', '2011', 'upload/2013/03/29/film/quai-hiep-nhat-chi-mai.jpg', 2, 1364545398, 'SD', 0, 45, 0, 0, 0, 0, '', 0, 8, 0),
(26, 'Giáº£i Cá»©u Binh NhÃ¬ Ryan', 'Saving Private Ryan', 'Steven Spielberg', 'Tom Hanks, Tom Sizemore, Edward Burns, Barry Pepper, Adam Goldberg', ',1,', 7, '169 PhÃºt', 'Amblin Entertainment', '1998', 'upload/2013/03/29/film/giai-cuu-binh-nhi-ryan.jpg', 0, 1364545904, 'HD', 0, 67, 0, 0, 0, 0, '', 0, 8, 0),
(27, 'HÆ°Æ¡ng MÃ¹a HÃ¨', 'ì—¬ë¦„ í–¥ê¸°', 'Yoon Suk-ho', 'Song Seung-heon, Son Ye Jin, Ryu Jin, Han Ji Hye, Shin Ae', ',4,', 3, '20 táº­p', '', '2006', 'upload/2013/03/29/film/huong-mua-he.jpg', 2, 1364547369, 'SD', 0, 26, 0, 0, 0, 0, '', 0, 8, 0),
(28, 'Akkanee&#39s Heart', 'Akkanee&#39s Heart', '', '', ',4,9,', 8, '10 táº­p', '', '2011', 'upload/2013/03/29/film/akkanee39s-heart.jpg', 1, 1364547716, 'SD', 0, 27, 0, 0, 0, 0, '', 0, 8, 0),
(29, 'Chiáº¿n Tranh Giá»¯a CÃ¡c VÃ¬ Sao', 'Star Wars The Clone Wars', '', '', ',5,10,', 7, '45 PhÃºt', '', '2005', 'upload/2013/03/29/film/chien-tranh-giua-cac-vi-sao.jpg', 2, 1364548039, 'HD', 0, 36, 0, 0, 0, 0, '', 0, 8, 0),
(30, 'HoÃ ng Cung', 'Goong', '', '', ',10,', 3, '22 táº­p', 'Yen Press', '2002', 'upload/2013/03/29/film/hoang-cung.jpg', 2, 1364549021, 'HD', 0, 42, 0, 0, 0, 0, '', 0, 8, 0),
(31, 'VÃ²ng LuÃ¢n Há»“i', 'Re-Cycle', 'Oxide Pang Chun, Danny Pang', 'Trá»‹nh Y Kiá»‡n, Angelica Lee,Pou-Soi Cheang', ',3,11,', 5, '108 phÃºt', 'Magic Heart Film Production, Matching Motion Pictures', '2006', 'upload/2013/03/29/film/vong-luan-hoi.jpg', 0, 1364550629, 'HD', 0, 23, 0, 0, 0, 0, '', 0, 8, 0),
(32, 'Cuá»™c Chiáº¿n Bang Há»™i', 'Beyond the Trophy', 'Daniel J. Gillin', 'Michael Madsen, Stephen Cloud, Eric Roberts', ',1,9,', 7, '98 phÃºt', 'Paradise Entertainment', '2012', 'upload/2013/03/29/film/cuoc-chien-bang-hoi.jpg', 0, 1364550960, 'HD', 0, 9, 0, 0, 0, 0, '', 0, 8, 0),
(33, 'Giáº¿t Sáº¡ch', 'Kill &#39em All', 'Raimund Huber', 'Johnny Messner, Chia Hui Liu, Ammara Siripong', ',1,3,', 7, '86 phÃºt', 'Epic Pictures Group', '2012', 'upload/2013/03/29/film/giet-sach.jpg', 0, 1364563763, 'HD', 0, 14, 0, 0, 0, 0, '', 0, 8, 0),
(34, 'Cuá»™c Chiáº¿n TÆ°Æ¡ng Lai', 'Revolution', 'Jon Favreau', 'Billy burke, Tracy spiridakos, Zak orth', ',2,10,', 7, '12 Táº­p', 'Bad Robot, Warner Bros. Television', '2012', 'upload/2013/03/29/film/cuoc-chien-tuong-lai.jpg', 0, 1364621770, 'HD', 0, 11, 0, 0, 0, 0, '', 0, 8, 0),
(35, 'Vua Tá»‘c Äá»™', 'Speed Racer', 'Andy Wachowski, Larry Wachowski', 'Emile hirsch, Christina ricci, Susan sarandon, Bi rain', ',1,', 7, '100 phÃºt', 'Warner Bros. Pictures, Village Roadshow Pictures, Silver Pictures', '2008', 'upload/2013/03/29/film/vua-toc-do.jpg', 0, 1364564844, 'HD', 0, 30, 0, 0, 0, 0, '', 0, 8, 0),
(36, 'Äáº¥u Sá»¹ Lá»“ng Sáº¯t', 'The Philly Kid', 'Jason Connery', 'Devon sawa, Sarah butler, wes chatham', ',1,9,', 7, '100 phÃºt', 'After Dark Films, After Dark Films, Fourth Floor Productions', '2012', 'upload/2013/03/29/film/dau-sy-long-sat.jpg', 0, 1364565212, 'HD', 0, 16, 0, 0, 0, 0, '', 0, 8, 0),
(37, 'NgÆ°á»i HÃ¹ng NÆ°á»›c Má»¹', 'Captain America', 'Joe Johnston', 'Samuel l. jackson, Chris evans, Tommy lee jones, Hugo weaving, Toby jones', ',1,10,', 7, '124 phÃºt', 'Marvel Enterprises, Marvel Entertainment, Marvel Studios', '2011', 'upload/2013/03/29/film/nguoi-hung-nuoc-my.jpg', 0, 1364565573, 'HD', 0, 13, 0, 0, 0, 0, '', 0, 8, 0),
(38, 'NgÆ°á»i Sáº¯t', 'Iron Man', 'Jon Favreau', 'Terrence howard, Robert downey jr, Jeff bridges, Gwyneth paltrow, Clark gregg', ',1,10,', 7, '126 phÃºt', 'Paramount Pictures, Marvel Enterprises, Marvel Studios', '2008', 'upload/2013/03/29/film/nguoi-sat.jpg', 0, 1364566989, 'HD', 0, 13, 0, 0, 0, 0, '', 0, 8, 0),
(62, 'Tá»™i Ãc Bá»‹ LÃ£ng QuÃªn', 'Zettai Reido', 'Murakami Masanori, Iwata Kazuyuki', 'Ueto Aya,Kitaoji Kinya,Yamaguchi Sayaka', ',4,', 5, '11 Táº­p', 'Fuji TV', '2010', 'upload/2013/04/01/film/toi-ac-bi-lang-quen.jpg', 1, 1364801455, 'HD', 0, 18, 0, 0, 0, 0, '', 0, 13, 0),
(39, 'NgÆ°á»i Sáº¯t 2', 'Iron Man 2', 'Jon Favreau', 'Samuel l. jackson, Robert downey jr, Don cheadle, Mickey rourke, Gwyneth paltrow, Clark gr', ',1,10,', 7, '124 phÃºt', 'Paramount Pictures, Marvel Entertainment, Marvel Studios', '2010', 'upload/2013/03/29/film/nguoi-sat-2.jpg', 0, 1364567137, 'HD', 0, 11, 0, 0, 0, 0, '', 0, 8, 0),
(40, 'Thiáº¿t Quyá»n', 'Tekken', 'Dwight H. Little', 'Kelly overton, Jon foo, Cary-hiroyuki tagawa, Cung lÃª', ',1,3,9,10,', 7, '84 phÃºt', 'CST Productions, Crystal Sky Pictures, Crystal Sky', '2010', 'upload/2013/03/29/film/thiet-quyen.jpg', 0, 1364567302, 'HD', 0, 10, 0, 0, 0, 0, '', 0, 8, 0),
(41, 'Naruto: Sá»©c Máº¡nh VÄ© ThÃº', 'Naruto Shippuuden', 'Hayato Date', 'Junko takeuchi, Noriaki sugiyama , Chie nakamura', ',1,5,6,7,', 6, 'DÃ i táº­p', 'TV Tokyo', '2012', 'upload/2013/03/29/film/naruto-suc-manh-vi-thu.jpg', 2, 1365341266, 'HD', 0, 352, 0, 0, 0, 0, '', 0, 8, 0),
(43, 'TrÃ² ChÆ¡i Chiáº¿n Binh: Cáº¥p Äá»™ Má»›i', 'Na igre 2: Novyy uroven', 'Pavel Sanaev', 'Sergey Chirkov, Marina Petrenko,Pavel Priluchnyy', ',1,10,', 7, '90 phÃºt', 'Ivan, Karoprokat', '2010', 'upload/2013/03/30/film/tro-choi-chien-binh-cap-do-moi.jpg', 0, 1364620877, 'HD', 0, 12, 0, 0, 0, 0, '', 0, 8, 0),
(44, 'Phi Thuyá»n Äom ÄÃ³m', 'Firefly', 'Joss Whedon', 'Nathan Fillion, Gina Torres, Alan Tudyk', ',1,2,10,', 7, '14 Táº­p', 'Mutant Enemy Productions', '2002', 'upload/2013/03/30/film/phi-thuyen-dom-dom.jpg', 1, 1364621303, 'HD', 0, 81, 0, 0, 0, 0, '', 0, 8, 0),
(45, 'Ká»· BÄƒng HÃ ', 'Ice Age', 'Chris Wedge, Carlos Saldanha', 'Ray romano, John leguizamo, Denis leary', ',2,5,7,', 7, '81 phÃºt', '20th Century Fox', '2002', 'upload/2013/03/30/film/ky-bang-ha.jpg', 0, 1364621780, 'HD', 0, 3, 0, 0, 0, 0, '', 0, 8, 0),
(46, 'TÃ¬nh Báº¡n QuÃ¡i Láº¡', 'Mary And Max', 'Adam Elliot', 'Toni Collette, Philip Seymour Hoffman, Eric Bana', ',5,', 7, '92 phÃºt', 'Melodrama Pictures', '2009', 'upload/2013/03/30/film/tinh-ban-quai-la.jpg', 0, 1364621746, 'HD', 0, 10, 0, 0, 0, 0, '', 0, 8, 0),
(153, 'SÃ¡t NhÃ¢n BÃªn SÃ´ng', 'The River Murders', 'Rich Cowan', 'Ray Liotta, Christian Slater, Ving Rhames, Gisele Fraga', ',1,3,', 7, '92 phÃºt', 'March On Productions ,  Mudflap Films ,  North by Northwest Productions', '2011', 'upload/2013/04/07/film/sat-nhan-ben-song.jpg', 0, 1365345906, 'HD', 0, 9, 0, 0, 0, 0, '', 0, 8, 0),
(47, 'Conan: BÃ³ng Ma Cáº§u TrÆ°á»ng', 'Conan: The Eleventh Strike', 'Kobun Shizuno', 'Minami Takayama, Wakana Yamazaki, Rikiya Koyama', ',1,5,', 6, '111 phÃºt', 'Toho Studio', '2012', 'upload/2013/03/30/film/conan-bong-ma-cau-truong.jpg', 0, 1364621998, 'HD', 0, 10, 0, 0, 0, 0, '', 0, 8, 0),
(48, 'Hang Cáº¥m', 'The Cave', 'Bruce Hunt', 'Piper Perabo, Morris Chestnut, Cole Hauser', ',1,2,3,', 7, '97 phÃºt', 'Screen Gems , Cinerenta Medienbeteiligungs KG , Lakeshore Entertainment', '2002', 'upload/2013/03/30/film/hang-cam.jpg', 0, 1364622134, 'HD', 0, 16, 0, 0, 0, 0, '', 0, 8, 0),
(49, 'ChÃ ng Äiá»‡p ViÃªn Tay MÆ¡: Pháº§n 2', 'Chuck: Season 2', 'Chris Fedak, Josh Schwartz', 'Zachary Levi, Yvonne Strahovski, Joshua Gomez', ',1,7,10,', 7, '22 Táº­p', 'College Hill Pictures Inc., Fake Empire, Wonderland Sound and Vision', '2008', 'upload/2013/03/30/film/chang-diep-vien-tay-mo-phan-2.jpg', 2, 1364622361, 'HD', 0, 30, 0, 0, 0, 0, '', 0, 8, 0),
(50, 'KÃ½ á»¨c áº¢o GiÃ¡c', 'DÃ©jÃ  Vu', 'Tony Scott', 'Denzel Washington, Paula Patton, Jim Caviezel', ',1,3,10,', 7, '126 phÃºt', 'Touchstone Pictures, Jerry Bruckheimer Films, Scott Free Productions', '2006', 'upload/2013/03/30/film/ky-uc-ao-giac.jpg', 0, 1364622851, 'HD', 0, 13, 0, 0, 0, 0, '', 0, 8, 0),
(51, 'NhÃ  CÃ³ 5 NÃ ng TiÃªn', 'Nha Co 5 Nang Tien', 'Tráº§n Ngá»c GiÃ u', 'HoÃ i Linh, Viá»‡t HÆ°Æ¡ng, Báº£o Anh The Voice, NgÃ¢n KhÃ¡nh, Minh Tháº£o, Miu LÃª, TrÆ°Æ¡ng Nhi', ',7,', 1, '90 phÃºt', '', '2012', 'upload/2013/03/30/film/nha-co-5-nang-tien.jpg', 0, 1364623428, 'SD', 0, 36, 0, 1, 0, 0, 'http://www.youtube.com/watch?v=ZbAP8StS4I0', 0, 8, 0),
(52, 'Káº» CÆ°á»›p Má»™', 'Grave robbers', 'Siu-Tung Ching', 'Rosamund Kwan, Takeshi Kaneshiro, LÃ½ LiÃªn Kiá»‡t', ',1,6,', 5, '87 phÃºt', 'Win&#39s Entertainment Ltd., Eastern Productions, China Film Co-Production Corporation', '1996', 'upload/2013/03/30/film/ke-cuop-mo.jpg', 0, 1364628669, 'HD', 0, 28, 0, 0, 0, 0, '', 0, 8, 0),
(53, 'Scooby Doo - 13 BÃ³ng Ma', 'Scooby Doo - 13 Ghosts', '', '', ',3,5,', 7, '22 phÃºt', '', '2011', 'upload/2013/03/30/film/scooby-doo-13-bong-ma.jpg', 1, 1364629432, 'SD', 0, 43, 0, 0, 0, 0, '', 0, 8, 0),
(60, 'SÄƒn LÃ¹ng QuÃ¡i Váº­t: Pháº§n 1', 'Grimm: Season 1', 'Stephen Carpenter, David Greenwalt, Jim Kouf', 'david giuntoli, Bitsie tulloch, Silas weir mitchell', ',1,3,', 7, '22 Táº­p', 'GK Productions, Hazy Mills Productions, Universal TV', '2011', 'upload/2013/04/01/film/san-lung-quai-vat-phan-1.jpg', 1, 1364800006, 'HD', 0, 55, 0, 0, 0, 0, '', 0, 8, 0),
(58, 'Kho BÃ¡u Äáº¡i DÆ°Æ¡ng', 'Into the Blue 2: The ReefÂ 2009', 'Into the Blue 2: The Reef', 'Chris Carmack, Laura Vandervoort,Marsha Thomason', ',1,2,3,', 7, '92 phÃºt', 'Brookwell-McNamara Entertainment, MGM Home Entertainment, Mandalay Pictures', '2009', 'upload/2013/04/01/film/kho-bau-dai-duong.jpg', 0, 1364799428, 'HD', 0, 4, 0, 0, 0, 0, '', 0, 8, 0),
(59, 'Naruto: Ninja LÃ ng Má»™c Diá»‡p', 'Naruto Dattebayo', 'Hayato Date', '', ',1,2,5,', 6, '220 Táº­p', 'Madman Entertainment, Manga Entertainment', '2002', 'upload/2013/04/01/film/naruto-ninja-lang-moc-diep.jpg', 1, 1364799768, 'HD', 0, 17, 0, 0, 0, 0, '', 0, 8, 0),
(63, 'Phi Há»•', 'Tiger Cubs', 'LÃ¢m ChÃ­ Hoa', 'TuyÃªn HuyÃªn, MÃ£ Äá»©c Chung, LÃ¢m Gia Hoa', ',1,', 5, '13 Táº­p', 'TVB', '2013', 'upload/2013/04/01/film/phi-ho.jpg', 1, 1364801633, 'HD', 0, 34, 0, 0, 0, 0, '', 0, 13, 0),
(64, 'Äáº¡i ThÃ¡i GiÃ¡m', 'The Confidant', 'ThÃ­ch Ká»³ NghÄ©a', 'LÃª Diá»‡u TÆ°á»ng, Má»… Tuyáº¿t, Thiá»‡u Má»¹ Ká»³, HÃ¹ynh Háº¡o NhiÃªn', ',1,', 2, '33 Táº­p', 'TVB', '2012', 'upload/2013/04/01/film/dai-thai-giam.jpg', 1, 1364801882, 'HD', 0, 36, 0, 0, 0, 0, '', 0, 13, 0),
(65, 'Cuá»™c Gá»i 36 Giá»', 'The Hippocratic Crush', 'Phan Gia Äá»©c', 'MÃ£ Quá»‘c Minh, DÆ°Æ¡ng Di, Dung Tá»• Nhi', ',1,4,', 1, '10/25 Táº­p', 'TVB', '2012', 'upload/2013/04/01/film/cuoc-goi-36-gio.jpg', 1, 1364802188, 'HD', 0, 6, 0, 0, 0, 0, '', 0, 13, 0),
(66, 'NgÆ°á»i Váº­n Chuyá»ƒn', 'Transporter: The Series', 'Luc Besson', 'Chris Vance,FranÃ§ois BerlÃ©and  ,Andrea OsvÃ¡rt', ',1,', 1, '12 Táº­p', 'Brad Turner, Fred Fuchs', '2012', 'upload/2013/04/01/film/nguoi-van-chuyen.jpg', 0, 1364802264, 'HD', 0, 28, 0, 0, 0, 0, '', 0, 13, 0),
(67, 'Táº§m Thá»§ Huyá»n Thoáº¡i: Pháº§n 1', 'Legend Of The Seeker: Season 1', 'Mark Beesley', 'Craig horner, Bridget regan, Bruce spence', ',1,4,', 1, '22 Táº­p', 'ABC Studios', '2008', 'upload/2013/04/01/film/tam-thu-huyen-thoai-phan-1.jpg', 1, 1364802354, 'HD', 0, 51, 0, 0, 0, 0, '', 0, 13, 0),
(68, 'VÅ© Äiá»‡u TÃ¬nh YÃªu', 'VÅ© Äiá»‡u TÃ¬nh YÃªu', 'Äáº·ng LÆ°u Viá»‡t Báº£o', 'PhÆ°Æ¡ng Trinh, Thanh Ngá»c, PhÃ¹ng Ngá»c Huy, Minh BÃ©o', ',4,', 1, '30 táº­p', '', '2010', 'upload/2013/04/01/film/vu-dieu-tinh-yeu.jpg', 1, 1364802446, 'HD', 0, 59, 0, 0, 0, 0, '', 0, 13, 0),
(69, 'LÆ°u Tinh Há»“ Äiá»‡p Kiáº¿m', 'Meteor, Butterfly, Sword', 'LÃ½ Huá»‡ DÃ¢n', 'Tráº§n Sá»Ÿ HÃ ,VÆ°Æ¡ng Diá»…m, Tráº§n Ã HÃ m', ',1,', 5, '20/ 30 Táº­p', 'CÃ´ng ty TNHH Hoa SÃ¡ch Triáº¿t Giang', '2010', 'upload/2013/04/01/film/luu-tinh-ho-diep-kiem.jpg', 1, 1364802516, 'HD', 0, 25, 0, 0, 0, 0, '', 0, 13, 0),
(70, 'Káº» TÃ¬nh Nghi: Pháº§n 2', 'Person of Interest: Season 2', 'Richard J. Lewis', 'Jim caviezel, Taraji p. henson, Kevin chapman', ',1,', 7, '12/16 Táº­p', 'Kilter Films, Bad Robot, Warner Bros. Television', '2012', 'upload/2013/04/01/film/ke-tinh-nghi-phan-2.jpg', 1, 1364802606, 'HD', 0, 3, 0, 0, 0, 0, '', 0, 13, 0),
(71, 'ThiÃªn Nhai Minh Nguyá»‡t Äao', 'The Magic Blade', 'Láº¡i Thá»§y Thanh', 'Chung hÃ¡n lÆ°Æ¡ng, Tráº§n sá»Ÿ hÃ , TrÆ°Æ¡ng mÃ´ng, TrÆ°Æ¡ng Ä‘á»‹nh hÃ m', ',1,', 5, '43 Táº­p', 'Há»“ Nam', '2012', 'upload/2013/04/01/film/thien-nhai-minh-nguyet-dao.jpg', 1, 1364802725, 'HD', 0, 95, 0, 0, 0, 0, '', 0, 13, 1),
(72, 'TÃ¢n Báº¡ch PhÃ¡t Ma Ná»¯ Truyá»‡n', 'The Bride with White Hair', 'HoÃ ng Vá»¹ Kiá»‡t', 'NgÃ´ ká»³ long, PhÃ n thiáº¿u hoÃ ng, MÃ£ tÃ´', ',1,4,6,', 5, '43 Táº­p', 'LÆ°u Tiá»ƒu Phong, NgÃ´ Ká»³ Long', '2012', 'upload/2013/04/01/film/tan-bach-phat-ma-nu-truyen.jpg', 1, 1364802854, 'HD', 0, 88, 0, 0, 0, 0, '', 0, 13, 0),
(73, 'Ma Kiáº¿m Sinh Tá»­ Ká»³', 'The Sword and the Chess of Death', 'LÃ½ Truyá»n Phong', 'LÆ°u Ä‘Ã o, Ä‘Æ°á»ng quá»‘c cÆ°á»ng, Lá»¯ lÆ°Æ¡ng vá»¹', ',1,', 5, '45 Táº­p', 'Táº­p Ä‘oÃ n Ä‘iá»‡n áº£nh Nga Mi, Tá»•ng cÃ´ng ty Ä‘iá»‡n áº£nh Trung Quá»‘c', '2006', 'upload/2013/04/01/film/ma-kiem-sinh-tu-ky.jpg', 1, 1364803060, 'HD', 0, 53, 0, 0, 0, 0, '', 0, 13, 0),
(74, 'Cháº¡ng Váº¡ng', 'The Twilight Saga 1: Twilight', 'Catherine Hardwicke', 'Kristen Stewart, Robert Pattinson, Justin Chon', ',3,4,10,', 7, '90 phÃºt', 'Summit Entertainment, Temple Hill Entertainment, Maverick Films', '2008', 'upload/2013/04/01/film/chang-vang.jpg', 0, 1364803358, 'HD', 0, 8, 0, 0, 0, 0, '', 0, 8, 0),
(75, 'ThÃ¢y Ma Nhiá»…m Xáº¡', 'Zombie 108', 'Joe Chein', 'Morris Rong,Yvonne Yao,Sona Eyambe', ',3,', 2, '88 phÃºt', 'Heyshine International Co.', '2012', 'upload/2013/04/01/film/thay-ma-nhiem-xa.jpg', 0, 1364805139, 'HD', 0, 14, 0, 0, 0, 0, '', 0, 8, 0),
(76, 'Bá»¯a Tiá»‡c Trong PhÃ²ng Táº¯m', 'Partysaurus Rex', 'Mark A. Walsh', 'Tom Hanks , Tim Allen , Wallace Shawn', ',5,', 7, '7 phÃºt', 'Pixar Animation Studios', '2013', 'upload/2013/04/01/film/bua-tiec-trong-phong-tam.jpg', 0, 1364805208, 'HD', 0, 3, 0, 0, 0, 0, '', 0, 8, 0),
(77, 'Biá»‡t Äá»™i Diá»‡t Khá»§ng Long', 'Jurassic Attack', 'Anthony Fankhauser', 'Gary Stretch, Corin Nemec, Vernon Wells', ',1,10,', 7, '83 phÃºt', 'Little Dragon Productions', '2013', 'upload/2013/04/01/film/biet-doi-diet-khung-long.jpg', 0, 1364805322, 'HD', 0, 9, 0, 0, 0, 0, '', 0, 8, 0),
(78, 'Shake speare Äang YÃªu', 'Shake speare in Love', 'John Madden', 'Gwyneth Paltrow, Joseph Fiennes, Geoffrey Rush', ',4,7,9,', 7, '123 phÃºt', 'Universal Pictures, Miramax Films, Bedford Falls Productions', '1998', 'upload/2013/04/01/film/shakespeare-dang-yeu.jpg', 0, 1364915915, 'HD', 0, 15, 0, 0, 0, 0, '', 0, 8, 0),
(79, 'ThÃ¡p Lá»­a', 'The Tower', 'Ji-hoon Kim', 'Sang-kyung Kim,Sul Kyung-gu,  Ye-jin Son', ',1,9,', 3, '121 phÃºt', 'CJ Entertainment', '2012', 'upload/2013/04/01/film/thap-lua.jpg', 0, 1364805518, 'HD', 0, 21, 0, 0, 0, 0, '', 0, 8, 0),
(80, 'Gia ÄÃ¬nh TÆ°Æ¡ng Lai', 'Meet the Robinsons', 'Stephen J. Anderson', 'Angela bassett, Daniel hansen, Wesley singerman', ',5,10,', 7, '95 phÃºt', 'Walt Disney Animation Studios, Walt Disney Pictures', '2007', 'upload/2013/04/01/film/gia-dinh-tuong-lai.jpg', 0, 1364805594, 'HD', 0, 7, 0, 0, 0, 0, '', 0, 8, 0),
(81, 'Tháº§n Sáº¥m SÃ©t', 'Thor', 'Kenneth Branagh', 'Anthony hopkins, Natalie portman, Chris hemsworth, Tom hiddleston', ',1,10,', 7, '115 phÃºt', 'Paramount Pictures, Marvel Entertainment, Marvel Studios', '2011', 'upload/2013/04/01/film/than-sam-set.jpg', 0, 1364805638, 'HD', 0, 16, 0, 0, 0, 0, '', 0, 8, 0),
(82, 'PhÃ²ng Chá»©a BÃ­ Máº­t', 'Chamber of Secrets', 'Chris Columbus', 'Daniel radcliffe, Rupert grint, Emma watson, Toby jones', ',1,2,10,11,', 7, '161 phÃºt', '1492 Pictures, Heyday Films, MIRACLE Productions GmbH &amp; Co. KG', '2002', 'upload/2013/04/01/film/phong-chua-bi-mat.jpg', 0, 1364806669, 'HD', 0, 12, 0, 0, 0, 0, '', 0, 8, 0),
(83, 'Äá»™i BÃ³ng Thiáº¿u LÃ¢m', 'Shaolin Soccer', 'ChÃ¢u Tinh TrÃ¬', 'ChÃ¢u tinh trÃ¬, Triá»‡u vy, NgÃ´ máº«n Ä‘áº¡t, Vicky zhao, Stephen chow', ',6,7,', 5, '113 phÃºt', 'Star Overseas, Universe Entertainment', '2001', 'upload/2013/04/01/film/doi-bong-thieu-lam.jpg', 0, 1364806581, 'HD', 0, 14, 0, 0, 0, 0, '', 0, 8, 0),
(84, 'SiÃªu NhÃ¢n Khá»§ng Long: Pháº§n 2', 'Power Rangers: Season 2', 'Ronnie Hadar', 'Amy jo johnson, ThÃ¹y trang, Austin st. john, Walter emanuel jones , David yost', ',1,10,', 7, '47/ 52 Táº­p', 'Saban Entertainmentm Renaissance Atlantic Entertainment', '1993', 'upload/2013/04/01/film/sieu-nhan-khung-long-phan-2.jpg', 1, 1364806772, 'HD', 0, 63, 0, 0, 0, 0, '', 0, 8, 0),
(85, 'TÃ´i, NgÆ°á»i MÃ¡y', 'I, Robot', 'Alex Proyas', 'Will Smith, Bridget Moynahan, Alan Tudyk', ',1,2,10,', 7, '115 phÃºt', 'Twentieth Century Fox Film Corporation, Davis Entertainment, Laurence Mark Productions', '2004', 'upload/2013/04/01/film/toi-nguoi-may.jpg', 0, 1364806811, 'HD', 0, 16, 0, 0, 0, 0, '', 0, 8, 0),
(86, 'ÄÆ°á»ng Äua MÃ¡u', 'Race 2', 'Abbas Alibhai Burmawalla, Mastan Alibhai Bur', 'Saif Ali Khan, Anil Kapoor,  John Abraham', ',1,3,', 9, '150 phÃºt', 'UTV Motion Pictures, Tips Films Pvt. Ltd., Illuminati Films', '2013', 'upload/2013/04/02/film/duong-dua-mau.jpg', 0, 1364885153, 'HD', 0, 18, 0, 0, 0, 0, '', 0, 8, 0),
(87, 'NgÆ°á»i HÃ¹ng VÅ© Trá»¥', 'Green Lantern', 'Martin Campbell', 'Ryan reynolds, Blake lively, Peter sarsgaard, Mark strong', ',1,10,', 7, '114 phÃºt', 'Warner Bros. Pictures, De Line Pictures, DC Entertainment', '2011', 'upload/2013/04/02/film/nguoi-hung-vu-tru.jpg', 0, 1364885248, 'HD', 0, 20, 0, 0, 0, 0, '', 0, 8, 0),
(88, 'SiÃªu NhÃ­ Atom', 'Astro Boy', 'David Bowers', 'Nicolas cage, Freddie highmore, Kristen bell', ',5,10,', 7, '94 phÃºt', 'Endgame Entertainment', '2009', 'upload/2013/04/02/film/sieu-nhi-atom.jpg', 0, 1364885295, 'HD', 0, 14, 0, 0, 0, 0, '', 0, 8, 0),
(89, 'MÆ°a Thá»‹t ViÃªn', 'Cloudy With A Chance Of Meatballs', 'Phil Lord, Chris Miller', 'Bill Hader, Anna Faris, James Caan, Andy Samberg, Bruce Campbell', ',5,', 7, '90 phÃºt', 'Columbia Pictures, Sony Pictures Animation', '2009', 'upload/2013/04/02/film/mua-thit-vien.jpg', 0, 1364885372, 'HD', 0, 4, 0, 0, 0, 0, '', 0, 8, 0),
(90, 'Cuá»™c Äua Tá»­ Tháº§n', 'Dead End Adventure', 'KÃ´nosuke Uda', 'Hiroaki Hirata,ShÃ»ichi Ikeda, TarÃ´ Ishida', ',5,', 6, '95 phÃºt', '', '2003', 'upload/2013/04/02/film/cuoc-dua-tu-than.jpg', 0, 1364904687, 'HD', 0, 11, 0, 0, 0, 0, '', 0, 8, 0),
(91, 'Cuá»™c Chiáº¿n VÆ°Æ¡ng Quyá»n: Pháº§n 3', 'Game of Thrones: Season 3', 'Daniel Minahan, Alex Graves', 'Lena Headey, Peter Dinklage, Michelle Fairley', ',1,', 7, '1/10 Táº­p', 'HBO', '2013', 'upload/2013/04/02/film/cuoc-chien-vuong-quyen-phan-3.jpg', 2, 1364915614, 'HD', 0, 20, 0, 0, 0, 0, '', 0, 8, 1),
(92, 'Ná»¥ HÃ´n DÃ i Tá»« Biá»‡t', 'The Long Kiss Goodnight', 'Renny Harlin', 'Geena Davis, Samuel L. Jackson, Yvonne Zima', ',1,9,', 7, '121 phÃºt', 'Forge, New Line Cinema', '1996', 'upload/2013/04/02/film/nu-hon-dai-tu-biet.jpg', 0, 1364915607, 'HD', 0, 15, 0, 0, 0, 0, '', 0, 8, 0),
(93, 'NgÆ°á»i MÃ¡y Ná»•i Dáº­y', 'Appleseed Saga', 'Shinji Aramaki', 'Ai Kobayashi,KÃ´ichi Yamadera,YÃ»ji Kishi', ',5,', 6, '105 PhÃºt', 'Digital Frontier, Ex Machina Film Partners, Micott &amp; Basara K.K.', '2007', 'upload/2013/04/02/film/nguoi-may-noi-day.jpg', 0, 1364915804, 'HD', 0, 14, 0, 0, 0, 0, '', 0, 8, 0),
(94, 'Ká»· BÄƒng HÃ  - Pháº§n 2', 'Ice Age: The Meltdown', 'Carlos Saldanha', 'Ray romano, John leguizamo, Denis leary', ',5,7,', 7, '91 phÃºt', '20th Century Fox', '2006', 'upload/2013/04/02/film/ky-bang-ha-phan-2.jpg', 0, 1364916016, 'HD', 0, 37, 0, 0, 0, 0, '', 0, 8, 0),
(95, 'NgÃ y Táº­n Tháº¿', 'The Day After Tomorrow', 'Roland Emmerich', 'Emmy rossum, Jake gyllenhaal, dennis quaid', ',2,9,10,', 7, '123 phÃºt', 'Twentieth Century Fox Film Corporation, Centropolis Entertainment, Lions Gate Films', '2004', 'upload/2013/04/02/film/ngay-tan-the.jpg', 0, 1364916152, 'HD', 0, 46, 0, 0, 0, 0, '', 0, 8, 0),
(104, 'Cuá»™c Chiáº¿n NhÃ¢n Loáº¡i', 'Planzet', 'Jun Awazu', 'Kaori Ishihara,Masami Iwasaki, Mamoru Miyano', ',5,', 6, '53 phÃºt', 'CoMix Wave, Media Factory', '2010', 'upload/2013/04/07/film/cuoc-chien-nhan-loai.jpg', 0, 1365340258, 'HD', 0, 4, 0, 0, 0, 0, '', 0, 8, 0),
(96, 'ÄÃ o ThoÃ¡t', 'Flukt', 'Roar Uthaug', 'Isabel Christine Andreasen, Ingrid BolsÃ¸ Berdal, Kristian Espedal', ',1,3,', 7, '90 phÃºt', 'Film Fund FUZZ, Fantefilm', '2012', 'upload/2013/04/03/film/dao-thoat.jpg', 0, 1364991596, 'HD', 0, 29, 0, 0, 0, 0, '', 0, 8, 0),
(97, 'Báº£y ViÃªn Ngá»c Rá»“ng: Chiáº¿n Binh Saiyan', 'Dragon Ball Z', 'Daisuke Nishio', 'Masako nozawa, Hiromi tsuru, Daisuke gouri', ',2,5,7,', 6, '291 Táº­p', 'Toei Animation', '1989', 'upload/2013/04/06/film/bay-vien-ngoc-rong-chien-binh-saiyan.jpg', 1, 1365257421, 'HD', 0, 574, 0, 0, 0, 0, '', 0, 8, 0),
(98, 'Báº£y ViÃªn Ngá»c Rá»“ng: LÃªn ÄÆ°á»ng TÃ¬m ngá»c', 'Dragon Ball', 'Minoru Okazaki', 'Masako nozawa, Hiromi tsuru, Daisuke gouri', ',2,5,6,7,', 6, '153 Táº­p', 'Toei Animation', '1986', 'upload/2013/04/06/film/bay-vien-ngoc-rong-len-duong-tim-ngoc.jpg', 1, 1365257979, 'SD', 0, 4, 0, 0, 0, 0, '', 0, 8, 0),
(99, '7 ViÃªn Ngá»c Rá»“ng: Chiáº¿n Binh Báº¥t Tá»­', 'DBZ: Dead Zone', 'Daisuke Nishio', 'Sean schemmel, Stephanie nadolny , Christopher sabat', ',2,5,6,', 6, '41 phÃºt', 'Bird Studios, FUNimation Entertainment, Ocean Group', '1989', 'upload/2013/04/06/film/7-vien-ngoc-rong-chien-binh-bat-tu.jpg', 0, 1365258027, 'HD', 0, 7, 0, 0, 0, 0, '', 0, 8, 0),
(100, 'Äiá»‡p Vá»¥ PhÃ¡t QuÃ ', 'Prep &amp; Landing', 'Kevin Deters, Stevie Wermers', 'Dave Foley, Sarah Chalke,Mason Vale Cotton', ',5,', 7, '22 phÃºt', 'Walt Disney Animation Studios, Walt Disney Pictures', '2009', 'upload/2013/04/06/film/diep-vu-phat-qua.jpg', 0, 1365258184, 'HD', 0, 5, 0, 0, 0, 0, '', 0, 8, 0),
(101, 'BÃ¡t QuÃ¡i ChÆ°á»Ÿng', 'The Kungfu Master', 'Chen Shukai', 'DÆ°Æ¡ng Thá»«a LÃ¢m, Tiá»ƒu HuÃ¢n,LÆ°u TÃ­ch Minh', ',1,6,', 2, '110 phÃºt', 'Film Bureau State', '2012', 'upload/2013/04/06/film/bat-quai-chuong.jpg', 0, 1365260546, 'HD', 0, 11, 0, 0, 0, 0, '', 0, 8, 0),
(102, 'CÃ¡ Sáº¥u SÃ¡t Thá»§', 'Rogue', 'Greg Mclean', 'Radha mitchel, Sam worthington, Michael vartan', ',1,3,', 7, '92 phÃºt', 'Dimension Films, Village Roadshow Pictures, Emu Creek Pictures', '2008', 'upload/2013/04/06/film/ca-sau-sat-thu.jpg', 0, 1365260597, 'HD', 0, 7, 0, 0, 0, 0, '', 0, 8, 0),
(103, 'TÃ¡c NhÃ¢n Báº¥t Ngá»', 'Dirty Harry 4: Sudden Impact', 'Clint Eastwood', 'Clint Eastwood, Sondra Locke,Pat Hingle', ',1,2,', 7, '117 phÃºt', 'Warner Bros, Malpaso Company', '1983', 'upload/2013/04/06/film/tac-nhan-bat-ngo.jpg', 0, 1365260645, 'HD', 0, 18, 0, 0, 0, 0, '', 0, 8, 0),
(105, 'Biá»‡t Äá»™i Trá»«ng Pháº¡t', 'Sinners And Saints', 'William Kaufman', 'Costas mandylor, Johnny strong, Kevin phillips', ',1,', 7, '104 phÃºt', 'Throttle Films, Carolina Film Works, Noir Blanc Films', '2010', 'upload/2013/04/07/film/biet-doi-trung-phat.jpg', 0, 1365340307, 'HD', 0, 6, 0, 0, 0, 0, '', 0, 8, 0),
(106, 'CÃ´ GÃ  MÃ¡i ThÃ­ch PhiÃªu LÆ°u', 'Leafie, A Hen Into The Wild', 'Oh Sung Yoon', 'Moon so ri, Yoo seung ho, Choi min sik, Park cheol min', ',5,', 3, '93 phÃºt', 'Myung Films, Lotte Entertainment', '2011', 'upload/2013/04/07/film/co-ga-mai-thich-phieu-luu.jpg', 0, 1365340363, 'HD', 0, 4, 0, 0, 0, 0, '', 0, 8, 0),
(107, 'Cáº­u BÃ© Khá»•ng Lá»“', 'Honey I Blew Up The Kid', 'Randal Kleiser', 'Rick Moranis,, Marcia Strassman,Robert Oliveri', ',2,7,10,', 7, '89 phÃºt', 'Touchwood Pacific Partners 1, Walt Disney Pictures', '1992', 'upload/2013/04/07/film/cau-be-khong-lo.jpg', 0, 1365340457, 'HD', 0, 5, 0, 0, 0, 0, '', 0, 8, 0),
(108, 'ThÃ nh Phá»‘ Robot', 'Robots', 'Chris Wedge, Carlos Saldanha', 'Ewan McGregor, Halle Berry,Mel Brooks', ',5,', 7, '91 phÃºt', 'Twentieth Century Fox Animation, Blue Sky Studios', '2005', 'upload/2013/04/07/film/thanh-pho-robot.jpg', 0, 1365340512, 'HD', 0, 9, 0, 0, 0, 0, '', 0, 8, 0),
(109, 'Ong VÃ ng PhiÃªu LÆ°u KÃ½', 'Bee Movie', 'Simon J. Smith, Steve Hickner', 'Jerry Seinfeld, RenÃ©e Zellweger  , Matthew Broderick', ',2,5,', 7, '92 phÃºt', 'DreamWorks Animation ,  Columbus 81 Productions ,  Pacific Data Images (PDI)', '2007', 'upload/2013/04/07/film/ong-vang-phieu-luu-ky.jpg', 0, 1365340545, 'HD', 0, 11, 0, 0, 0, 0, '', 0, 8, 0),
(110, 'SÄƒn LÃ¹ng QuÃ¡i Váº­t: Pháº§n 2', 'Grimm: Season 2', 'Norberto Barba', 'david giuntoli, Bitsie tulloch, Russell hornsby', ',1,3,', 7, '16/ 22 Táº­p', 'GK Productions, Hazy Mills Productions, Universal TV', '2012', 'upload/2013/04/07/film/san-lung-quai-vat-phan-2.jpg', 2, 1365340614, 'HD', 0, 77, 0, 0, 0, 0, '', 0, 8, 0),
(111, 'Káº¿t Ná»‘i BÃ­ áº¨n', 'Talaash', 'Reema Kagti', 'Aamir Khan, Kareena Kapoor,Rani Mukerji', ',1,3,', 9, '131 phÃºt', 'Aamir Khan Productions, Excel Entertainment', '2012', 'upload/2013/04/07/film/ket-noi-bi-an.jpg', 0, 1365340667, 'HD', 0, 17, 0, 0, 0, 0, '', 0, 8, 0),
(112, 'ThÆ°á»£ng Äáº¿ CÅ©ng Pháº£i CÆ°á»i', 'The Gods Must Be Crazy', 'Jamie Uys', 'n!xau, Marius weyers, Sandra prinsloo', ',2,7,', 7, '109 phÃºt', 'CAT Films, Mimosa', '1980', 'upload/2013/04/07/film/thuong-de-cung-phai-cuoi.jpg', 0, 1365340752, 'HD', 0, 5, 0, 0, 0, 0, '', 0, 8, 0),
(113, 'ThÆ°á»£ng Äáº¿ CÅ©ng Pháº£i CÆ°á»i 2', 'The Gods Must Be Crazy 2', 'Jamie Uys', 'N!xau,Lena Farugia,Hans Strydom', ',2,7,', 7, '97 PhÃºt', 'Elrina Investment, Weintraub Entertainment Group', '1989', 'upload/2013/04/07/film/thuong-de-cung-phai-cuoi-2.jpg', 0, 1365340785, 'HD', 0, 6, 0, 0, 0, 0, '', 0, 8, 0),
(114, 'ThÆ°á»£ng Äáº¿ CÅ©ng Pháº£i CÆ°á»i: Pháº§n 3', 'The Gods Must Be Crazy 3 AKA Crazy Safari', 'Billy Chan', 'Ching-ying lam, Sam christopher chow,  n!xau', ',2,7,', 7, '96 phÃºt', 'Win&#39s Movie Productions Ltd., Samico Films Production Company Ltd.', '1991', 'upload/2013/04/07/film/thuong-de-cung-phai-cuoi-phan-3.jpg', 0, 1365340873, 'SD', 0, 4, 0, 0, 0, 0, '', 0, 8, 0),
(115, 'Äiá»‡p ViÃªn 007: RiÃªng ÄÃ´i Máº¯t Em', 'For Your Eyes Only', 'John Glen', 'Roger Moore,Carole Bouquet,Topol', ',1,2,', 7, '127 phÃºt', 'Eon Productions', '1981', 'upload/2013/04/07/film/diep-vien-007-rieng-doi-mat-em.jpg', 0, 1365340963, 'HD', 0, 15, 0, 0, 0, 0, '', 0, 8, 0),
(116, 'Chiáº¿n Binh Sao Há»a', 'John Carter', 'Andrew Stanton', 'Willem dafoe, Taylor kitsch, Lynn collins, Willem dafoe', ',1,10,', 7, '132 phÃºt', 'Walt Disney Pictures', '2012', 'upload/2013/04/07/film/chien-binh-sao-hoa.jpg', 0, 1365341011, 'HD', 0, 8, 0, 0, 0, 0, '', 0, 8, 0),
(117, 'Biá»‡t Äá»™i Tinh Nhuá»‡', 'Elite Squad', 'JosÃ© Padilha', 'Wagner Moura, AndrÃ© Ramiro,Caio Junqueira', ',1,9,', 7, '115 phÃºt', 'Zazen ProduÃ§Ãµes, Posto 9, FeijÃ£o Filmes', '2007', 'upload/2013/04/07/film/biet-doi-tinh-nhue.jpg', 0, 1365341220, 'HD', 0, 8, 0, 0, 0, 0, '', 0, 8, 0),
(118, 'NgÆ°á»i Nhá»‡n', 'Spider-Man', 'Sam Raimi', 'Tobey maguire, Kirsten dunst, James franco', ',1,10,', 7, '121 phÃºt', 'Columbia Pictures Corporation, Marvel Enterprises, Laura Ziskin Productions', '2002', 'upload/2013/04/07/film/nguoi-nhen.jpg', 0, 1365341325, 'HD', 0, 7, 0, 0, 0, 0, '', 0, 8, 0),
(119, 'HÆ°Æ¡ng Ngá»c Lan', 'HÆ°Æ¡ng Ngá»c Lan', 'Nguyá»…n Äá»©c Hiáº¿n', 'Thu Quá»³nh, Minh TrÃ­', ',4,', 1, '10/20 táº­p', 'HÃ£ng Phim Truyá»‡n Viá»‡t Nam', '2013', 'upload/2013/04/07/film/huong-ngoc-lan.jpg', 2, 1365341901, 'HD', 0, 23, 0, 0, 0, 0, '', 0, 8, 0),
(120, 'ChÃº Chuá»™t Äáº§u Báº¿p', 'Ratatouille', 'Brad Bird, Jan Pinkava', 'Brad garrett, Patton oswalt, John ratzenberger', ',5,7,', 7, '96 phÃºt', 'Pixar Animation Studios, Walt Disney Pictures', '2007', 'upload/2013/04/07/film/chu-chuot-dau-bep.jpg', 0, 1365341949, 'HD', 0, 4, 0, 0, 0, 0, '', 0, 8, 0),
(121, 'NgÆ°á»i MÃ¡y Äáº¡i Chiáº¿n', 'Ultramarines: A Warhammer 40000 Movie', 'Martyn Pick', 'Terence Stamp, John Hurt, Sean Pertwee', ',5,10,', 7, '76 phÃºt', 'Good Story Productions, Codex Pictures, POP6', '2010', 'upload/2013/04/07/film/nguoi-may-dai-chien.jpg', 0, 1365342012, 'HD', 0, 12, 0, 0, 0, 0, '', 0, 8, 0),
(122, 'Sá»‘ ChÃ³', 'Doghouse', 'Jake West', 'Danny Dyer, Stephen Graham, Noel Clarke, Terry Stone', ',1,3,7,', 7, '82 phÃºt', 'Carnaby International, Carnaby Film Productions, Hanover Films', '2009', 'upload/2013/04/07/film/so-cho.jpg', 0, 1365342077, 'HD', 0, 14, 0, 0, 0, 0, '', 0, 8, 0),
(123, 'SÃ¡t Thá»§ Aeon', 'Ã†on Flux', 'Karyn Kusama', 'Charlize theron, Frances mcdormand, Sophie okonedo', ',1,2,10,', 7, '93 phÃºt', 'Paramount Pictures, Lakeshore Entertainment, Valhalla Motion Pictures', '2005', 'upload/2013/04/07/film/sat-thu-aeon.jpg', 0, 1365342150, 'HD', 0, 16, 0, 0, 0, 0, '', 0, 8, 0),
(124, 'NhÃ  VÄƒn PhÃ¡ Ãn: Pháº§n 5', 'Castle: Season 5', 'Rob Bowman', 'Nathan Fillion, Stana Katic, Susan Sullivan', ',1,', 7, '19/22 Táº­p', 'Beacon Pictures, Experimental Pictures, ABC Studios', '2012', 'upload/2013/04/07/film/nha-van-pha-an-phan-5.jpg', 2, 1365342205, 'HD', 0, 43, 0, 0, 0, 0, '', 0, 8, 0),
(125, 'Tiá»‡m BÃ¡nh HoÃ ng Tá»­ BÃ©', 'Tiá»‡m BÃ¡nh HoÃ ng Tá»­ BÃ©', 'VÄƒn CÃ´ng Viá»…n', 'Äáº¡i NghÄ©a,PhÆ°Æ¡ng Bella,Diá»…m ChÃ¢u , XuÃ¢n Lan', ',4,9,', 1, '56/260 táº­p', 'Smart Media', '2013', 'upload/2013/04/07/film/tiem-banh-hoang-tu-be.jpg', 2, 1365342291, 'HD', 0, 116, 0, 0, 0, 0, '', 0, 8, 0),
(126, 'VÃ´ LiÃªm Sá»‰: Pháº§n 2', 'Shameless: Season 2', 'Paul Abbott', 'Emmy Rossum, William H. Macy, Justin Chatwin', ',7,', 7, '12 Táº­p', 'Showtime', '2012', 'upload/2013/04/07/film/vo-liem-si-phan-2.jpg', 1, 1365342381, 'HD', 0, 4, 0, 0, 0, 0, '', 0, 8, 0),
(127, 'KhÃ´ng Thá»ƒ Gá»¥c NgÃ£', 'KhÃ´ng Thá»ƒ Gá»¥c NgÃ£', 'NSÆ¯T BÃ¹i CÆ°á»ng', 'Phan ChÃ¡nh NghÄ©a,ThiÃªn Thanh  ,Trá»ng NhÃ¢n', ',4,9,', 1, '32 táº­p', '', '2012', 'upload/2013/04/07/film/khong-the-guc-nga.jpg', 2, 1365342428, 'HD', 0, 29, 0, 0, 0, 0, '', 0, 8, 0),
(157, 'Má»™ng Du', 'Sleepwalker', 'BÃ nh Thuáº­n', 'LÃ½ tÃ¢m khiáº¿t, Hoáº¯c tÆ° yáº¿n, DÆ°Æ¡ng thá»ƒ ni', ',3,', 2, '104 phÃºt', 'Shaw Organisation', '2011', 'upload/2013/04/08/film/mong-du.jpg', 0, 1365400175, 'HD', 0, 9, 0, 0, 0, 0, '', 0, 8, 0),
(128, 'KhÃ´ng Há» Biáº¿t Giáº­n', 'KhÃ´ng Há» Biáº¿t Giáº­n', 'Pháº¡m ÄÃ´ng Há»“ng', 'XuÃ¢n Báº¯c, Tá»± Long, CÃ´ng LÃ½, Quá»‘c Anh,ca sÄ© Ngá»c Anh', ',7,9,', 1, '1 táº­p', 'ThÄƒng Long Audio', '2013', 'upload/2013/04/07/film/khong-he-biet-gian.jpg', 0, 1365342551, 'SD', 0, 6, 0, 0, 0, 0, '', 0, 8, 0),
(129, 'Giang Há»“ Tháº¥t QuÃ¡i', 'Princess and Seven Kung Fu Masters', 'VÆ°Æ¡ng Tinh', 'Há»“ng Kim Báº£o, TÄƒng ChÃ­ Vá»¹, NgÃ´ QuÃ¢n NhÆ°', ',6,7,12,', 2, '90 phÃºt', 'A Wong Jing Film', '2013', 'upload/2013/04/07/film/giang-ho-that-quai.jpg', 0, 1365342658, 'HD', 0, 5, 0, 0, 0, 0, '', 0, 8, 0),
(130, 'G.I. Joe: BÃ¡o ThÃ¹', 'G.I. Joe: Retaliation', 'Jon M. Chu', 'Dwayne Johnson,D.J. Cotrona, Channing Tatum, Lee Byung Hun', ',1,2,', 7, '110 phÃºt', 'Paramount Pictures, Metro-Goldwyn-Mayer (MGM), Skydance Productions', '2013', 'upload/2013/04/07/film/gi-joe-bao-thu.jpg', 0, 1365342732, 'HD', 0, 15, 0, 0, 0, 0, '', 0, 8, 0),
(131, 'Huyá»n Thoáº¡i Vikings', 'Vikings', 'Michael Hirst', 'Travis Fimmel, Clive Standen, Katheryn Winnick', ',1,2,11,', 7, '5/ 9 Táº­p', 'History', '2013', 'upload/2013/04/07/film/huyen-thoai-vikings.jpg', 2, 1365343177, 'HD', 0, 34, 0, 0, 0, 0, '', 0, 8, 0),
(132, 'Äi Qua DÄ© VÃ£ng', 'Äi Qua DÄ© VÃ£ng', 'Nguyá»…n Duy VÃµ Ngá»c', 'NSÆ¯T Nguyá»…n ChÃ¡nh TÃ­n, Thanh Thá»©c, Ngá»c TÆ°á»Ÿng,ÄÃ o Anh Tuáº¥n, PhÃºc An,Oanh Kiá»u, HoÃ ng Ny', ',9,', 1, '33/38 Táº­p', 'HÃ£ng Phim HÃ nh Tinh Xanh', '2013', 'upload/2013/04/07/film/di-qua-di-vang.jpg', 2, 1365343235, 'HD', 0, 44, 0, 0, 0, 0, '', 0, 8, 0),
(133, 'NgÆ°á»i Äáº¹p BÃ¡o ThÃ¹', 'Sympathy for Lady Vengeance', 'Park Chan-wook', 'Choi min sik, Lee young ah, Shi-hoo Kim', ',1,3,', 3, '112 phÃºt', 'CJ Entertainment', '2005', 'upload/2013/04/07/film/nguoi-dep-bao-thu.jpg', 0, 1365343331, 'HD', 0, 15, 0, 0, 0, 0, '', 0, 8, 0),
(134, 'Phá»¥c TÃ¹ng', 'Compliance', 'Craig Zobel', 'Ann Dowd, Dreama Walker,Pat Healy', ',1,3,', 7, '90 phÃºt', 'Bad Cop Bad Cop Film Productions, Dogfish Pictures, Muskat Filmed Properties', '2012', 'upload/2013/04/07/film/phuc-tung.jpg', 0, 1365343370, 'HD', 0, 16, 0, 0, 0, 0, '', 0, 8, 0),
(135, 'Vá»‹nh Háº£i Táº·c áº¢o', 'TPB AFK: The Pirate Bay Away from Keyboard', 'Simon Klose', 'Gottfrid Svartholm, Peter Sunde,Fredrik Neij', ',1,', 7, '85 phÃºt', 'Nonami, Anagram Produktion, Final Cut for Real', '2013', 'upload/2013/04/07/film/vinh-hai-tac-ao.jpg', 0, 1365343433, 'HD', 0, 9, 0, 0, 0, 0, '', 0, 8, 0),
(136, 'Cá»— MÃ¡y Giáº¿t NgÆ°á»i', 'Icarus/ The Killing Machine', 'Dolph Lundgren', 'Dolph Lundgren, Stefanie von Pfetten,Samantha Ferris', ',1,9,', 7, '88 phÃºt', 'Cinetel Films, Icarus BC Productions, Insight Film Studios', '2010', 'upload/2013/04/07/film/co-may-giet-nguoi.jpg', 0, 1365343515, 'HD', 0, 8, 0, 0, 0, 0, '', 0, 8, 0),
(137, 'Victini VÃ  NgÆ°á»i HÃ¹ng Ãnh SÃ¡ng Zekrom', 'Pokemon Movie 14: Victini And The Dark Hero', 'Michael Haigney', 'Leah Clark,Jason Griffith,Khristine Hvam', ',5,', 7, '85 phÃºt', 'Creatures, GAME FREAK Inc., Holm Inc.', '2011', 'upload/2013/04/07/film/victini-va-nguoi-hung-anh-sang-zekrom.jpg', 0, 1365343649, 'HD', 0, 8, 0, 0, 0, 0, '', 0, 8, 0),
(138, 'BÃ¡ Chá»§ áº¢o áº¢nh', 'Pokemon Movie 13: Zoroark Master of Illusions', 'Kunihiko Yuyama', 'Ikue ÅŒtani , Sean Schemmel,Sarah Natochenny', ',5,', 6, '96 phÃºt', 'East Japan Marketing &amp; Communications Inc. , GAME FREAK Inc. , Nintendo', '2010', 'upload/2013/04/07/film/ba-chu-ao-anh.jpg', 0, 1365343698, 'HD', 0, 2, 0, 0, 0, 0, '', 0, 8, 0),
(139, 'Kiáº¿m SÄ© Äen: Sinh Tá»­ Chiáº¿n', 'Berserk: The Golden Age Arc 2 - The Battle for Doldrey', 'Toshiyuki Kubooka, Michael Sinterniklaas', 'Takahiro Sakurai,Hiroaki Iwanaga,Yuuki Kaji', ',5,', 6, '80 PhÃºt', 'Lucent Pictures Entertainment, Studio 4Â°C', '2012', 'upload/2013/04/07/film/kiem-si-den-sinh-tu-chien.jpg', 0, 1365343730, 'HD', 0, 8, 0, 0, 0, 0, '', 0, 8, 0),
(140, 'PhÃ¡o ÄÃ i Cuá»‘i CÃ¹ng', 'The Last Castle', 'Rod Lurie', 'Mark ruffalo , Robert redford, james gandolfini', ',1,9,', 7, '131 phÃºt', 'DreamWorks SKG, Robert Lawrence Productions', '2001', 'upload/2013/04/07/film/phao-dai-cuoi-cung.jpg', 0, 1365343815, 'HD', 0, 15, 0, 0, 0, 0, '', 0, 8, 0),
(141, 'Sá»‘ 9 Tá»­ Tháº§n', 'Nine Dead', 'Chris Shadley', 'Melissa Joan Hart,William Lee Scott,John Terry', ',3,', 7, '98 phÃºt', 'Hartbreak Films , Louisiana Media Productions', '2010', 'upload/2013/04/07/film/so-9-tu-than.jpg', 0, 1365343876, 'HD', 0, 3, 0, 0, 0, 0, '', 0, 8, 0),
(142, 'Tháº£m Há»a SÃ³ng Tháº§n', 'The Impossible', 'Juan Antonio Bayona', 'Naomi Watts, Ewan McGregor, Tom Hollander', ',3,9,', 7, '114 phÃºt', 'Apaches Entertainment , Telecinco Cinema , Mediaset EspaÃ±a', '2012', 'upload/2013/04/07/film/tham-hoa-song-than.jpg', 0, 1365344027, 'HD', 0, 9, 0, 0, 0, 0, '', 0, 8, 0),
(143, 'Dá»¥c XÃ¡c', 'Deadgirl', 'Marcel Sarmiento, Gadi Harel', 'shiloh fernandez, Noah segan , Candice accola', ',3,', 7, '101 phÃºt', 'Hollywoodmade', '2008', 'upload/2013/04/07/film/duc-xac.jpg', 0, 1365344089, 'HD', 0, 6, 0, 0, 0, 0, '', 0, 8, 0),
(144, 'Giáº£i Cá»©u Tháº¿ Giá»›i: Pháº§n 4', 'Heroes: Season 4', 'David Straiton', 'Ali larter, Masi oka, Zachary quinto, Hayden panettiere', ',3,9,10,', 7, '19 Táº­p', 'Tailwind Productions, Universal Media Studios', '2009', 'upload/2013/04/07/film/giai-cuu-the-gioi-phan-4.jpg', 1, 1365344139, 'HD', 0, 25, 0, 0, 0, 0, '', 0, 8, 0),
(145, 'NgÆ°á»i ÄiÃªn YÃªu', 'I&#39m a Cyborg but That&#39s OK', 'Park Chan-wook', 'Bi Rain,Lim Su-jeong,Choi Hie-jin', ',4,7,9,', 3, '105 phÃºt', 'Joy Fund, Moho Films', '2006', 'upload/2013/04/07/film/nguoi-dien-yeu.jpg', 0, 1365344230, 'HD', 0, 4, 0, 0, 0, 0, '', 0, 8, 0),
(146, 'Xin lá»—i, anh chá»‰ lÃ  tháº±ng bÃ¡n bÃ¡nh giÃ²', 'Sorry, I&#39m just a guy selling bread rolls', 'Pham Loc', 'Nha Phuong, Vo Dinh Hieu, Kim Khanh, Nam Yen, Vu Trung Hieu, Nguyen Ngoc Cuong, Bim Bim.', ',4,9,', 1, '25 PhÃºt', 'Hong Minh', '2012', 'upload/2013/04/07/film/xin-loi-anh-chi-la-thang-ban-banh-gio.jpg', 0, 1365344535, 'HD', 0, 5, 0, 0, 0, 0, '', 0, 8, 0),
(147, 'ThiÃªn Long BÃ¡t Bá»™', 'Tian Long Ba Bu', 'Chu Hiá»ƒu VÄƒn', 'LÃ¢m ChÃ­ DÄ©nh, LÆ°u Diá»‡c Phi, Há»“ QuÃ¢n, Cao Há»•, Tráº§n Háº£o', ',6,12,', 2, '40 Táº­p', 'CCTV', '2003', 'upload/2013/04/07/film/thien-long-bat-bo.jpg', 1, 1365344618, 'SD', 0, 52, 0, 0, 0, 0, '', 0, 8, 0),
(148, 'TÃ¢n Tam Quá»‘c Diá»…n NghÄ©a', 'Three Kingdoms', 'Cao Hy Hy', 'LÃ¢m tÃ¢m nhÆ°, HÃ  nhuáº­n Ä‘Ã´ng, Lá»¥c nghá»‹, Tráº§n kiáº¿n bÃ¢n', ',6,12,', 2, '95 Táº­p', 'ÄÃ´ng PhÆ°Æ¡ng Háº±ng HÃ²a Báº¯c Kinh', '2010', 'upload/2013/04/07/film/tan-tam-quoc-dien-nghia.jpg', 1, 1365345010, 'SD', 0, 248, 0, 0, 0, 0, '', 0, 8, 0),
(149, 'Tráº­n Chiáº¿n NgoÃ i Dá»± Kiáº¿n', 'Spartan', 'David Mamet', 'Val Kilmer, Derek Luke, William H. Macy', ',1,', 7, '106 phÃºt', 'ApolloMedia, ApolloProMedia GmbH &amp; Co. 1. Filmproduktion KG (I), Art Linson Productions', '2004', 'upload/2013/04/07/film/tran-chien-ngoai-du-kien.jpg', 0, 1365345232, 'HD', 0, 6, 0, 0, 0, 0, '', 0, 8, 0),
(150, 'Tá»­ Chiáº¿n', 'Fighting Fish', 'Julaluck Ismalone', 'Jawed El Berni,David Ismalone,Jakkrit Kanokpodjananon', ',1,6,', 8, '90 phÃºt', 'Saga Studio', '2012', 'upload/2013/04/07/film/tu-chien.jpg', 0, 1365345327, 'HD', 0, 8, 0, 0, 0, 0, '', 0, 8, 0),
(151, 'CÃ´ng Ty QuÃ¡i Váº­t', 'Monsters, Inc.', 'Pete Docter, David Silverman', 'John goodman,  billy crystal, Mary gibbs', ',5,7,', 7, '92 phÃºt', 'Pixar Animation Studios, Walt Disney Pictures', '2001', 'upload/2013/04/07/film/cong-ty-quai-vat.jpg', 0, 1365345560, 'HD', 0, 7, 0, 0, 0, 0, '', 0, 8, 0),
(152, 'Há»“ SÆ¡ Cháº¿t', 'The X-files: I Want To Believe', 'Chris Carter', 'Gillian Anderson, Amanda Peet, David Duchovny', ',1,3,10,', 7, '104 phÃºt', 'Twentieth Century Fox Film Corporation ,  Ten Thirteen Productions ,  Dune Entertainment I', '2008', 'upload/2013/04/07/film/ho-so-chet.jpg', 0, 1365345723, 'HD', 0, 10, 0, 0, 0, 0, '', 0, 8, 0),
(154, 'Ká»³ Nghá»‰ Cá»§a NgÃ i Bean', 'Mr. Bean&#39s Holiday', 'Steve Bendelack', 'Rowan Atkinson, Steve Pemberton, Mr Bean, Lily Atkinson, Preston Nyman', ',2,7,', 7, '90 phÃºt', 'Universal Pictures, Studio Canal, Motion Picture Alpha Produktionsgesellschaft', '2007', 'upload/2013/04/07/film/ky-nghi-cua-ngai-bean.jpg', 0, 1365345986, 'HD', 0, 8, 0, 0, 0, 0, '', 0, 8, 0),
(155, 'CÃ´ng ChÃºa SÃ³i', 'Princess Mononoke', 'Hayao Miyazaki', 'YÃ´ji matsuda, Yuriko ishida, YÃ»ko tanaka', ',1,5,', 6, '134 phÃºt', 'DENTSU Music And Entertainment, Nibariki, Nippon Television Network Corporation', '1997', 'upload/2013/04/07/film/cong-chua-soi.jpg', 0, 1365346043, 'HD', 0, 13, 0, 0, 0, 0, '', 0, 8, 0),
(156, 'NgÆ°á»i SÃ³i', 'The Wolfman', 'Joe Johnston', 'Anthony hopkins, Benicio del toro, Emily blunt', ',1,3,11,', 7, '103 phÃºt', 'Universal Pictures, Relativity Media, Stuber Productions', '2010', 'upload/2013/04/07/film/nguoi-soi.jpg', 0, 1365346498, 'HD', 0, 9, 0, 0, 0, 0, '', 0, 8, 0),
(158, 'Tháº±ng Há» SÃ¡t Thá»§', 'Stitches', 'Conor McMahon', 'Ross Noble,Tommy Knight, Eoghan McQuinn', ',3,', 7, '86 phÃºt', 'Fantastic Films, Irish Film Board, MPI Media Group', '2012', 'upload/2013/04/08/film/thang-he-sat-thu.jpg', 0, 1365400236, 'HD', 0, 9, 0, 0, 0, 0, '', 0, 8, 0),
(159, 'CÆ°Æ¡ng Thi Váº­t CÆ°Æ¡ng Thi', 'Spooky Encounters', 'Há»“ng Kim Báº£o', 'Há»“ng Kim Báº£o', ',3,6,7,', 5, '102 phÃºt', 'Bo Ho Film Company Ltd., Golden Harvest Company', '1980', 'upload/2013/04/08/film/cuong-thi-vat-cuong-thi.jpg', 0, 1365400288, 'SD', 0, 11, 0, 0, 0, 0, '', 0, 8, 0),
(160, 'Casper: Con Ma Vui Váº»', 'Casper', 'Brad Silberling', 'Bill Pullman, Christina Ricci,Cathy Moriarty', ',7,11,', 7, '100 phÃºt', 'Universal Pictures, Amblin Entertainment, Harvey Entertainment Company', '1995', 'upload/2013/04/08/film/casper-con-ma-vui-ve.jpg', 0, 1365400456, 'HD', 0, 19, 0, 0, 0, 0, '', 0, 8, 0),
(161, 'MÅ©i TÃªn Xanh', 'Arrow', 'David Nutter', 'Katie cassidy, Paul blackthorne, Colin donnell, Susanna thompson, Emily bett rickards', ',1,6,', 7, '23 Táº­p', 'Berlanti Productions, Berlanti Television, DC Entertainment', '2012', 'upload/2013/04/08/film/mui-ten-xanh.jpg', 2, 1365400528, 'HD', 0, 52, 0, 0, 0, 0, '', 0, 8, 0),
(162, 'Káº» Cáº¯p Tia Chá»›p', 'Percy Jackson &amp; the Olympians: The Lightning Thief', 'Chris Columbus', 'Rosario dawson, Steve coogan, Kevin mckidd, Logan lerman, Alexandra daddario', ',1,2,3,11,', 7, '118 phÃºt', 'Fox 2000 Pictures, 1492 Pictures, Big Screen Productions', '2010', 'upload/2013/04/09/film/ke-cap-tia-chop.jpg', 0, 1365472459, 'HD', 0, 14, 0, 0, 0, 0, '', 0, 8, 0),
(163, 'Äáº·c Vá»¥ Cáº¯t TÃ³c', 'You Don&#39t Mess With The Zohan', 'Dennis Dugan', 'Adam Sandler, Emmanuelle Chriqui  , John Turturro', ',1,7,', 7, '113 phÃºt', 'Columbia Pictures, Relativity Media, Happy Madison Productions', '2008', 'upload/2013/04/09/film/dac-vu-cat-toc.jpg', 0, 1365472610, 'HD', 0, 14, 0, 0, 0, 0, '', 0, 8, 0),
(164, 'Nhá»¯ng Káº» LÃ m Báº¡c Giáº£', 'The Counterfeiters', 'Stefan Ruzowitzky', 'Karl Markovics, August Diehl,Devid Striesow', ',1,9,', 7, '98 phÃºt', 'Magnolia Filmproduktion, Babelsberg Film, Beta Cinema', '2007', 'upload/2013/04/09/film/nhung-ke-lam-bac-gia.jpg', 0, 1365472685, 'HD', 0, 10, 0, 0, 0, 0, '', 0, 8, 0),
(165, 'Äá»™i Cá»©u Há»™ Anh HÃ¹ng', 'Brave Hearts: Umizaru', 'Eiichiro Hasumi', 'Hideaki ItÃ´,Ai KatÃ´,RyÃ»ta SatÃ´', ',1,', 6, '116 phÃºt', 'A-Team, Fuji Television Network, Pony Canyon', '2012', 'upload/2013/04/09/film/doi-cuu-ho-anh-hung.jpg', 0, 1365472747, 'HD', 0, 20, 0, 0, 0, 0, '', 0, 8, 0),
(166, 'Cá»— MÃ¡y Geisha', 'RoboGeisha', 'Noboru Iguchi', 'Yoshihiro Nishimura , Imajuku Asami, Naoto Takenaka', ',1,7,10,', 6, '102 phÃºt', 'Kadokawa Eiga K.K., Movie Gate Co., Pony Canyon', '2009', 'upload/2013/04/10/film/co-may-geisha.jpg', 0, 1365581307, 'HD', 0, 13, 0, 0, 0, 0, '', 0, 8, 0),
(167, 'Äáº·c Khu Tá»­ Tháº§n', 'The Ward', 'John Carpenter', 'Amber Heard, Mamie Gummer, Danielle Panabaker, Laura-Leigh, Jared Harris,', ',3,', 7, '86 phÃºt', 'FilmNation Entertainment, Premiere Picture, Echo Lake Productions (I)', '2010', 'upload/2013/04/10/film/dac-khu-tu-than.jpg', 0, 1365581341, 'HD', 0, 4, 0, 0, 0, 0, '', 0, 8, 0),
(168, 'ThÃ nh Phá»‘ Cháº¿t', 'I am Legend', 'Francis Lawrence', 'Will smith, Alice braga, Charlie tahan', ',9,10,', 7, '101 phÃºt', 'Warner Bros. Pictures, Village Roadshow Pictures, Weed Road Pictures', '2007', 'upload/2013/04/10/film/thanh-pho-chet.jpg', 0, 1365581449, 'HD', 0, 10, 0, 0, 0, 0, '', 0, 8, 0),
(169, 'Báº¡n QuÃ¡i Váº­t LÃ¡ng Giá»ng', 'My Neighbor Totoro', 'Hayao Miyazaki', 'Hitoshi takagi, Noriko hidaka, Toshiyuki amagasa', ',2,7,9,10,', 6, '86 phÃºt', 'Tokuma Japan Communications Co. Ltd., Studio Ghibli, Nibariki', '1988', 'upload/2013/04/10/film/ban-quai-vat-lang-gieng.jpg', 0, 1365581508, 'HD', 0, 5, 0, 0, 0, 0, '', 0, 8, 0),
(170, 'Cáº­u BÃ© Rá»«ng Xanh', 'The Jungle Book 2', 'Steve Trenbirth', 'John goodman, Haley joel osment , Tony jay', ',5,7,', 7, '72 phÃºt', 'Walt Disney Pictures', '2003', 'upload/2013/04/10/film/cau-be-rung-xanh.jpg', 0, 1365581939, 'HD', 0, 3, 0, 0, 0, 0, '', 0, 8, 0),
(171, 'ChÃºa Tá»ƒ Rá»«ng Xanh', 'Tarzan', 'Chris Buck, Kevin Lima', 'Tony goldwyn,  minnie driver , Brian blessed', ',5,', 7, '88 phÃºt', 'Walt Disney Pictures, Edgar Rice Burroughs Inc., Walt Disney Feature Animation', '1999', 'upload/2013/04/10/film/chua-te-rung-xanh.jpg', 0, 1365582019, 'SD', 0, 6, 0, 0, 0, 0, '', 0, 8, 0);
INSERT INTO `ipos_film` (`phimid`, `tenphim`, `tentienganh`, `daodien`, `dienvien`, `theloai`, `quocgia`, `thoiluong`, `nhasanxuat`, `namsanxuat`, `phimimg`, `phimbo`, `phimtime`, `chatluong`, `phimhot`, `viewed`, `viewed_day`, `phimchieurap`, `phimerror`, `phimdecu`, `trailer`, `server`, `poster`, `likephim`) VALUES
(172, 'Máº¡o Hiá»ƒm VÆ°Æ¡ng', 'Dr.Wai in the Scriptures with No Words', 'Siu-Tung Ching', 'Takeshi Kaneshiro, LÃ½ LiÃªn Kiá»‡t, Quan Chi LÃ¢m', ',1,2,6,', 5, '87 phÃºt', 'Win&#39s Entertainment Ltd., Eastern Productions, China Film Co-Production Corporation', '1996', 'upload/2013/04/10/film/mao-hiem-vuong.jpg', 0, 1365582085, 'HD', 0, 8, 0, 0, 0, 0, '', 0, 8, 0),
(173, 'TÃºy Quyá»n: Pháº§n 2', 'Drunken Master 2', 'Chia-Liang Liu', 'Lung Ti', ',6,', 5, '100 phÃºt', 'Golden Harvest Company, Hong Kong Stuntman Association, Paragon Films Ltd.', '1994', 'upload/2013/04/10/film/tuy-quyen-phan-2.jpg', 0, 1365582138, 'HD', 0, 9, 0, 0, 0, 0, '', 0, 8, 0),
(174, 'Huyá»n Thoáº¡i ÄÃ¡ Gelel', 'Naruto the Movie 2: Legend of the Stone of Gelel', 'Hirotsugu Kawasaki', 'Junko Takeuchi, Chie Nakamura, Shotaro Morikubo', ',1,2,5,', 6, '96 phÃºt', 'Studio Pierrot', '2005', 'upload/2013/04/10/film/huyen-thoai-da-gelel.jpg', 0, 1365582178, 'HD', 0, 10, 0, 0, 0, 0, '', 0, 8, 0),
(175, 'Nhiá»‡m Vá»¥ BÃ­ Máº­t', 'Naruto Shippuuden Movie 2: Bonds', 'Hajime Kamegaki', 'Junko Takeuchi,Kazuhiko Inoue, Unsho Ishizuka', ',1,2,5,', 6, '93 phÃºt', 'GekijÃ´ ban Naruto Seisaku Iinkai, Bandai Co. Ltd., Aniplex', '2003', 'upload/2013/04/10/film/nhiem-vu-bi-mat.jpg', 0, 1365582226, 'HD', 0, 17, 0, 0, 0, 0, '', 0, 8, 0),
(176, 'Naruto: CÃ¡i Cháº¿t TiÃªn ÄoÃ¡n', 'Naruto Shippuden Movie 1: Naruto Hurricane Chronicles', 'Hajime Kamegaki', 'Junko Takeuchi ,Chie Nakamura ,KÅichi TÅchika', ',5,', 6, '95 phÃºt', '', '2007', 'upload/2013/04/10/film/naruto-cai-chet-tien-doan.jpg', 0, 1365582442, 'HD', 0, 25, 0, 0, 0, 0, '', 0, 8, 0),
(177, 'Äáº·c Vá»¥ Cáº¥p 7', '7th Grade Civil Servant', 'Kim Sang Hyeop', 'Ko Joo Won, Choi Kang Hee,Hwang Chan Sung', ',1,4,7,', 3, '20 Táº­p', 'Apple Pictures, Curtain Call Inc', '2013', 'upload/2013/04/10/film/dac-vu-cap-7.jpg', 2, 1365582565, 'HD', 0, 27, 0, 0, 0, 0, '', 0, 8, 0),
(178, 'TÃ¬nh YÃªu KhÃ´ng Háº¹n TrÆ°á»›c', 'TÃ¬nh YÃªu KhÃ´ng Háº¹n TrÆ°á»›c', 'Trá»ng Trinh, BÃ¹i Tiáº¿n Huy', 'LÃ£ Thanh Huyá»n, Viá»‡t Anh,Minh HÆ°Æ¡ng', ',4,9,', 1, '34 táº­p', 'VFC', '2012', 'upload/2013/04/10/film/tinh-yeu-khong-hen-truoc.jpg', 2, 1365582609, 'HD', 0, 13, 0, 0, 0, 0, '', 0, 8, 0),
(179, 'Thá»£ SÄƒn Má»¹ Vá»‹', 'Toriko', 'Akifumi Zako', 'Romi Park, Ryotaro Okiayu, Akio Ohtsuka', ',2,6,7,', 6, 'DÃ i táº­p', 'Toei Animation Company', '2011', 'upload/2013/04/10/film/tho-san-my-vi.jpg', 0, 1365582676, 'SD', 0, 244, 0, 0, 0, 0, '', 0, 8, 0),
(181, 'Máº­t Danh Iris 2', 'Iris 2', 'Pyo Min Soo, Kim Tae Hoon', 'Lee Da Hae, Jang Hyuk, Lee Bum Soo', ',1,4,', 3, '16/20 Táº­p', 'KBS', '2013', 'upload/2013/04/10/film/mat-danh-iris-2.jpg', 2, 1365582954, 'HD', 0, 46, 0, 0, 0, 0, '', 0, 8, 0),
(182, 'QuÃ¡i Xáº¿ Taxi', 'Taxi Driver', 'Martin Scorsese', 'robert de niro, Jodie foster , Cybill shepherd', ',9,', 7, '113 phÃºt', 'Columbia Pictures Corporation, Bill/Phillips, Italo/Judeo Productions', '1976', 'upload/2013/04/10/film/quai-xe-taxi.jpg', 0, 1365583001, 'HD', 0, 10, 0, 0, 0, 0, '', 0, 8, 0),
(183, 'Nhá»¯ng ChÃº Khá»§ng Long', 'The Land Before Time - The Wisdom Of Friends', 'Jamie Mitchell, Charles Grosvenor', 'Cody Arens, Logan Arens, Anndi McAfee, Aria Noelle Curzon', ',5,', 7, '76 phÃºt', '', '2007', 'upload/2013/04/10/film/nhung-chu-khung-long.jpg', 0, 1365583070, 'HD', 0, 12, 0, 0, 0, 0, '', 0, 8, 0),
(184, 'Naruto Ngoáº¡i Truyá»‡n: Rock Lee', 'Rock Lee no Seishun Full-Power Ninden', 'Gorou Sessha', 'Yukari tamura, Kouichi toochika, Masashi ebara, Yoichi masukawa', ',5,7,', 6, 'DÃ i táº­p', 'Studio Pierrot', '2012', 'upload/2013/04/10/film/naruto-ngoai-truyen-rock-lee.jpg', 2, 1365583149, 'HD', 0, 90, 0, 0, 0, 0, '', 0, 8, 0),
(185, 'VÃ¹ng Äáº¥t SiÃªu NhiÃªn', 'Haven', 'T.W. Peacocke, Lee Rose', 'Emily Rose,Lucas Bryant, Eric Balfour', ',1,3,', 7, '11/13 Táº­p', 'Syfy', '2010', 'upload/2013/04/10/film/vung-dat-sieu-nhien.jpg', 2, 1365583205, 'HD', 0, 15, 0, 0, 0, 0, '', 0, 8, 0),
(186, 'Anh HÃ¹ng ThoÃ¡t XÃ¡c', 'John Dies at the End', 'Don Coscarelli', 'Rob Mayes, Paul Giamatti, Chase Williamson', ',1,3,7,', 7, '99 phÃºt', 'M3 Alliance, M3 Creative, Midnight Alliance', '2012', 'upload/2013/04/10/film/anh-hung-thoat-xac.jpg', 0, 1365583253, 'HD', 0, 1, 0, 0, 0, 0, '', 0, 8, 0),
(187, 'Ãc Quá»· Há»“i Sinh', 'Dracula', 'Dario Argento', 'Asia Argento, Thomas Kretschmann,  Rutger Hauer', ',1,3,10,', 7, '100 phÃºt', 'Enrique Cerezo Producciones CinematogrÃ¡ficas S.A., Film Export Group, Les Films de l&#39Astre', '2012', 'upload/2013/04/10/film/ac-quy-hoi-sinh.jpg', 0, 1365583316, 'HD', 0, 5, 0, 0, 0, 0, '', 0, 8, 0),
(322, 'abc', 'abc', 'abc', '', ',2,6,11,', 1, '', '', '', 'upload/2015/09/13/film/abc.jpg', 0, 1442122536, 'HD', 0, 85, 85, 0, 0, 0, '', 0, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ipos_film_info`
--

CREATE TABLE IF NOT EXISTS `ipos_film_info` (
  `phimid` int(10) NOT NULL,
  `phimtxt` text NOT NULL,
  `phiminfo` text NOT NULL,
  `phimtag` text NOT NULL,
  `timkiem` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ipos_film_info`
--

INSERT INTO `ipos_film_info` (`phimid`, `phimtxt`, `phiminfo`, `phimtag`, `timkiem`) VALUES
(9, 'SiÃªu trá»™m 1412 káº» bá»‹ cáº£nh sÃ¡t quá»‘c táº¿ truy nÃ£ bá»—ng biáº¿n máº¥t , 8 nÄƒm sau láº¡i xuáº¥t hiá»‡n.Kuroba Kaito má»™t há»c sinh cÃ³ biá»‡t tÃ i áº£o thuáº­t tÃ¬nh cá» phÃ¡t hiá»‡n ra ngÆ°á»i cha quÃ¡ cá»‘ cá»§a mÃ¬nh chÃ­nh lÃ  siÃªu trá»™m Kid lá»«ng danh cÃ¹ng vá»›i viá»‡c cha mÃ¬nh bá»‹ Ã¡m sÃ¡t chá»© khÃ´ng pháº£i do tai náº¡n . Kaito quyáº¿t Ä‘á»‹nh trá»Ÿ thÃ nh Kid Ä‘á»i thá»© 2 vá»›i quyáº¿t tÃ¢m tÃ¬m káº» Ä‘Ã£ giáº¿t cha cÃ¹ng vá»›i viÃªn ngá»c Pandora (viÃªn ngá»c mang láº¡i sá»± báº¥t tá»­). Báº£n dá»‹ch Viá»‡t ngá»¯ tá»« GenX Fansub.', '', ',,,Hoáº¡t HÃ¬nh,Anime', 'Sieu Trom Kid,Magic Kaito,'),
(60, 'Thanh tra Nick Burkhardt cÃ¹ng cÃ¡c Ä‘á»“ng nhiá»‡m tiáº¿n hÃ nh Ä‘iá»u tra cÃ¡c vá»¥ Ã¡n máº¡ng bÃ­ áº©n á»Ÿ Portland, Oregon. Cho Ä‘áº¿n má»™t ngÃ y anh ta báº¯t Ä‘áº§u tháº¥y nhá»¯ng chuyá»‡nâ€¦ nhá»¯ng chuyá»‡n mÃ  anh khÃ´ng thá»ƒ giáº£i thÃ­ch Ä‘Æ°á»£c. Má»™t ngÆ°á»i phá»¥ ná»¯ xinh Ä‘áº¹p bá»—ng chá»‘c biáº¿n thÃ nh má»™t má»¥ phÃ¹ thá»§y vá»›i hÃ¬nh thÃ¹ gá»›m guá»‘c, má»™t anh chÃ ng Joe bÃ¬nh thÆ°á»ng biáº¿n thÃ nh má»™t con quÃ¡i váº­t khá»•ng lá»“ nguy hiá»ƒm.', '', 'San Lung Quai Vat: Phan 1, Grimm: Season 1', 'San Lung Quai Vat: Phan 1,Grimm: Season 1,Stephen Carpenter, David Greenwalt, Jim Kouf,david giuntoli, Bitsie tulloch, Silas weir mitchell,GK Productions, Hazy Mills Productions, Universal TV'),
(10, 'Hai nÄƒm trÃ´i qua ká»ƒ tá»« khi Peter phÃ¡t hiá»‡n ra kháº£ nÄƒng kÃ¬ láº¡ cá»§a mÃ¬nh. Cáº­u pháº£i luÃ´n cá»‘ gáº¯ng cÃ¢n báº±ng hai sá»‘ pháº­n khÃ¡c nhau trong cÃ¹ng con ngÆ°á»i mÃ¬nh: NgÆ°á»i nhá»‡n trá»« gian diá»‡t báº¡o vÃ  má»™t cáº­u sinh viÃªn bÃ¬nh thÆ°á»ng.\r\nPeter quyáº¿t Ä‘á»‹nh nÃ³i sá»± tháº­t vá»›i Mary Jane. TÃ¬nh báº¡n thÃ¢n thiáº¿t giá»¯a Peter vÃ  Harry ngÃ y cÃ ng phá»©c táº¡p bá»Ÿi sau cÃ¡i cháº¿t cá»§a cha mÃ¬nh, Harry nuÃ´i má»‘i thÃ¹ vá»›i NgÆ°á»i Nhá»‡n.\r\nCÃ¹ng lÃºc, táº­p Ä‘oÃ n Oscorp láº¡i lÃ  nÆ¡i má»™t quÃ¡i nhÃ¢n khÃ¡c xuáº¥t hiá»‡n - GiÃ¡o sÆ° Báº¡ch tuá»™c.', '', ',,ngÆ°á»i nhá»‡n 2,Spider Man 2', 'Nguoi Nhen 2,Spider Man 2,Sam Raimi,Tobey Maguire, Kirsten Dunst, J.K. Simmons, Alfred Molina, Rosemary Harris, James Franco,'),
(11, 'TÃ¡o QuÃ¢n 2013 Full - Gáº·p nhau cuá»‘i nÄƒm 2013 [Báº£n Full]. ChÆ°Æ¡ng trÃ¬nh TÃ¡o quÃ¢n nÄƒm nay chá»‰ cÃ³ bá»‘n TÃ¡o lÃ  Giao thÃ´ng (ChÃ­ Trung), VÄƒn thá»ƒ (Minh Háº±ng), DÃ¢n sinh (VÃ¢n Dung) vÃ  Kinh táº¿ (Quang Tháº¯ng). Bá»‘n TÃ¡o Ä‘Æ°á»£c ngá»“i trÃªn gháº¿ &quot;chÃ­nh chá»§&quot;, mÃ´ phá»ng theo chÆ°Æ¡ng trÃ¬nh truyá»n hÃ¬nh thá»±c táº¿ Ä‘Æ°á»£c chÃ½ Ã½ nhiá»u nháº¥t trong nÄƒm qua The Voice. KhÃ¡n giáº£ cÆ°á»i á»“ khi nghá»‡ sÄ© ChÃ­ Trung minh há»a hÃ¬nh áº£nh Mr ÄÃ m: GiÆ¡ tay cÃ³ chiáº¿c nháº«n kim cÆ°Æ¡ng sÃ¡ng loÃ© vÃ  nÃ³i: &quot;HÃ£y vá» vá»›i anh&quot;. CÃ²n nghá»‡ sÄ© VÃ¢n Dung thÃ¬ cÆ°á»i: &quot;CÆ°á»ng thÃ¬ pháº£i Ä‘á»ƒ cho HÃ  Há»“&quot;.\r\n\r\nCÃ¡c TÃ¡o láº§n lÆ°á»£t lÃªn bÃ¡o cÃ¡o. Nhiá»u váº¥n Ä‘á» &quot;nÃ³ng&quot; Ä‘Æ°á»£c Ä‘á» cáº­p Ä‘áº¿n nhÆ° chuyá»‡n ná»£ xáº¥u; giao thÃ´ng thÃ¬ váº«n táº¯c Ä‘Æ°á»ng; báº¥t Ä‘á»™ng sáº£n Ä‘Ã³ng bÄƒng, bong bÃ³ng báº¥t Ä‘á»™ng sáº£n; giÃ¡o dá»¥c thÃ¬ cáº£i cÃ¡ch liÃªn tá»¥c khiáº¿n há»c sinh, phá»¥ huynh vÃ  cáº£ giÃ¡o viÃªn khÃ´ng xoay ká»‹p; bá»‘ máº¹ chen nhau, xáº¿p hÃ ng cáº£ Ä‘Ãªm ná»™p Ä‘Æ¡n xin há»c cho con; hiá»‡n tÆ°á»£ng &quot;phong bÃ¬&quot; trong ngÃ nh y táº¿... Vá» bÃ³ng Ä‘Ã¡, cÃ³ cÃ¡c váº¥n Ä‘á» Viá»‡t Nam vá»›i nhá»¯ng ná»—i lo vá» tÆ°Æ¡ng lai cá»§a ná»n bÃ³ng Ä‘Ã¡ chuyÃªn nghiá»‡p; tÃ¬nh tráº¡ng má»™t Ã´ng báº§u quáº£n lÃ½ nhiá»u Ä‘á»™i bÃ³ng, dÃ n xáº¿p tá»· sá»‘; giÃ¡ cáº§u thá»§ áº£o, lá»‘i sá»‘ng cá»§a cáº§u thá»§... Vá» vÄƒn hÃ³a, tá»« viá»‡c trÃ¹ng tu di tÃ­ch vÄƒn hÃ³a thiáº¿u hiá»ƒu biáº¿t dáº«n Ä‘áº¿n Ä‘áº¿n phÃ¡ vá»¡ tÃ­nh cháº¥t lá»‹ch sá»­ cá»§a cÃ¡c di tÃ­ch, Ä‘áº¿n váº¥n Ä‘á» quáº£n lÃ½ nghá»‡ thuáº­t, biá»ƒu diá»…n, Ã½ thá»©c cá»§a nghá»‡ sÄ©, vÄƒn hÃ³a tháº§n tÆ°á»£ng...\r\n\r\nTÃ¡o Kinh táº¿ gÃ¢y áº¥n tÆ°á»£ng vá»›i mÃ n bÃ¡o cÃ¡o báº±ng Ä‘iá»‡u nháº£y flashmosh Hoang Mang Style (cháº¿ tá»« nháº¡c Gangnam Style) trong khi TÃ¡o Giao thÃ´ng thÃ¬ láº¡i bÃ¡o cÃ¡o báº±ng thÆ¡. TÃ¡o DÃ¢n sinh bá»‹ Ngá»c HoÃ ng Ä‘Æ°a vÃ o tÃ¬nh huá»‘ng dá»Ÿ khÃ³c cÆ°á»i: trá»Ÿ thÃ nh bá»‡nh nhÃ¢n báº¥t Ä‘áº¯c dÄ© vÃ  cáº£m nháº­n ná»—i khá»• sá»Ÿ cá»§a há» khi ngÆ°á»i tháº§y thuá»‘c thiáº¿u y Ä‘á»©c. CÃ²n TÃ¡o VÄƒn thá»ƒ Ä‘Æ°a cáº£ Ä‘á»™i bÃ³ng lÃªn cháº§u, cáº§u thá»§ (nghá»‡ sÄ© ThÃ nh Chung) thÃ¬ than khá»•...\r\n\r\nMá»™t nhÃ¢n váº­t má»›i xuáº¥t hiá»‡n trÃªn ThiÃªn Ä‘Ã¬nh lÃ  Thá»• Äá»‹a (Tá»± Long). Thá»• Äá»‹a ká»ƒ chuyá»‡n buá»“n cá»§a ngÆ°á»i nÃ´ng dÃ¢n bá»‹ lá»«a bÃ¡n Ä‘áº¥t...\r\n\r\nVáº«n lÃ  hÃ¡t, nháº£y, cÃ³ thÃªm pháº§n Ä‘á»c thÆ¡ nhÆ°ng cÃ¢u chuyá»‡n cá»§a cÃ¡c TÃ¡o nÄƒm nay Ä‘Æ°á»£c thá»ƒ hiá»‡n khÃ¡ hÃ i hÆ°á»›c, thÃº vá»‹ cho ngÆ°á»i xem.\r\n\r\nLáº§n Ä‘áº§u tiÃªn ca sÄ© Minh QuÃ¢n tham gia TÃ¡o QuÃ¢n vá»›i vai ThiÃªn LÃ´i. Nhá»¯ng gÆ°Æ¡ng máº·t thÃ¢n quen Ä‘Ã£ tham gia TÃ¡o quÃ¢n tá»« nhá»¯ng nÄƒm Ä‘áº§u tiÃªn 2003 cÃ³ nghá»‡ sÄ© Quá»‘c KhÃ¡nh (Ngá»c HoÃ ng), XuÃ¢n Báº¯c (Nam TÃ o), CÃ´ng LÃ½ (Báº¯c Äáº©u)...', '', 'TÃ¡o quÃ¢n 2013', 'Tao Quan 2013,Gap Nhau Cuoi Nam 2013,Do Thanh Hai,Xuan Bac,Tu Long,Quoc Khanh,Quoc Trung,Van Dung,'),
(12, 'ChÃº gáº¥u trÃºc Po Ä‘Ã£ quÃ¡ quen thuá»™c vá»›i khÃ¡n giáº£ Viá»‡t Nam qua cÃ¡c pháº§n cá»§a movie KungFu Panda. VÃ  giá» chÃºng ta sáº½ láº¡i Ä‘Æ°á»£c xem nhá»¯ng pha lÃ m trÃ² ngá»™ nghÄ©nh vÃ  ráº¥t hÃ i hÆ°á»›c cá»§a Po qua má»™t series phim hoáº¡t hÃ¬nh dÃ i táº­p HOÃ€N TOÃ€N Má»šI vá»›i tÃªn gá»i KungFu Panda - Legends of Awesomeness [Táº¡m dá»‹ch: KungFu Panda - Huyá»n thoáº¡i Chiáº¿n binh]. Credit: tvbfilm', '', 'kungfu panda', 'Huyen thoai Chien binh,Legends of Awesomeness,'),
(14, 'Bá»™ phim &quot;YÃªu anh, em dÃ¡m khÃ´ng&quot; cá»§a Ä‘áº¡o diá»…n Nguyá»…n Quang Minh thá»±c hiá»‡n bá»Ÿi hÃ£ng phim PhÆ°á»›c Sang - Ã´ng báº§u Ä‘ang dÃ­nh lÃ¹m xÃ¹m quá»µt ná»£ sáº½ Ä‘Æ°á»£c cÃ´ng chiáº¿u Ä‘Ãºng dá»‹p Táº¿t 2013. Vá»›i sá»± tham gia cá»§a dÃ n diá»…n viÃªn ná»•i tiáº¿ng Ä‘Æ°á»£c yÃªu thÃ­ch nhÆ° Äan TrÆ°á»ng, Miu LÃª, Hiáº¿u Hiá»n, Nam CÆ°á»ng, Tráº¥n ThÃ nh, YÃªu anh, em dÃ¡m khÃ´ng há»©a háº¹n sáº½ Ä‘em láº¡i sá»± thÃ­ch thÃº vÃ  tiáº¿ng cÆ°á»i sáº£ng khoÃ¡i cho khÃ¡n giáº£.\r\n\r\nChÃ­nh Ä‘á»©c tÃ­nh chá»‹u thÆ°Æ¡ng chá»‹u khÃ³ áº¥y cá»§a Äan TrÆ°á»ng Ä‘Ã£ chinh phá»¥c Ä‘Æ°á»£c trÃ¡i tim cÃ´ báº¡n cÃ¹ng lá»›p xinh xáº¯n(Miu LÃª thá»§ vai). TÃ¬nh yÃªu cá»§a hai báº¡n tráº» pháº£i vÆ°á»£t qua nhiá»u rÃ o cáº£n, khÃ³ khÄƒn vÃ  nhá»¯ng tÃ¬nh huá»‘ng dá»Ÿ khÃ³c, dá»Ÿ cÆ°á»i. Cuá»‘i cÃ¹ng liá»‡u hai ngÆ°á»i cÃ³ Ä‘áº¿n Ä‘Æ°á»£c vá»›i nhau hay khÃ´ng, cÃ¡c báº¡n cÃ¹ng Ä‘Ã³n xem Ä‘á»ƒ biáº¿t káº¿t quáº£.', '', 'yeu anh em dam khong', 'Yeu Anh, Em Dam Khong,Yeu Anh, Em Dam Khong,Nguyen Quang Minh,Dan Truong, Miu Le, Hieu Hien, Nhat Cuong, Tran Thanh,'),
(15, 'Nick Fury, giÃ¡m Ä‘á»‘c tá»• chá»©c an ninh máº­t S.H.I.E.L.D Ä‘Ã£ táº­p há»£p cÃ¡c siÃªu anh hÃ¹ng Ä‘á»ƒ láº­p nÃªn biá»‡t Ä‘á»™i siÃªu anh hÃ¹ng The Avengers Ä‘á»ƒ giáº£i cá»©u TrÃ¡i Äáº¥t khá»i Loki vÃ  Ä‘á»™i quÃ¢n cá»§a háº¯n. The Avengers lÃ  má»™t táº­p há»£p gá»“m nhá»¯ng siÃªu anh hÃ¹ng bao gá»“m: Captain America, Iron Man, Thor, Hulkâ€¦\r\n\r\nVÃ¬ lÃ  táº­p há»£p cá»§a má»™t loáº¡t siÃªu anh hÃ¹ng trÃªn nÃªn viá»‡c Ä‘á»“ng nháº¥t vá» nhÃ¢n váº­t cÅ©ng nhÆ° cá»‘t truyá»‡n, cÃ¡ch xÃ¢y dá»±ng lÃ  ráº¥t khÃ³, Ä‘iá»u Ä‘Ã³ nÃ¢ng The Avengers trá»Ÿ thÃ nh má»™t siÃªu pháº©m há»©a háº¹n sáº½ thu hÃºt báº¥t ká»³ tÃ­n Ä‘á»“ nÃ o cá»§a dÃ²ng phim nÃ y.', '', ',xem phim biet doi sieu anh hung, sieu anh hung bao thu, the avengers', 'Biet Doi Sieu Anh Hung,The Avengers,Joss Whedon,Scarlett johansson, Samuel l. jackson, Jeremy renner, Chris evans, Mark ruffalo, Chris hem,Marvel Enterprises, Marvel Studios'),
(18, 'BÃ³ng ma há»c Ä‘Æ°á»ng lÃ  má»™t bá»™ phim Viá»‡t Nam cá»§a Ä‘áº¡o diá»…n LÃª Báº£o Trung, thuá»™c thá»ƒ loáº¡i kinh dá»‹, viá»…n tÆ°á»Ÿng, tÃ¢m lÃ½ vÃ  hÃ i hÆ°á»›c. Phim Ä‘Æ°á»£c khá»Ÿi chiáº¿u vÃ o ngÃ y 26 thÃ¡ng 1 Ä‘áº¿n qua Táº¿t nÄƒm 2011 dÆ°á»›i dáº¡ng 3D, Ä‘Ã¢y cÅ©ng chÃ­nh lÃ  phim 3D Ä‘áº§u tiÃªn cá»§a Viá»‡t Nam sáº£n xuáº¥t, nÃ³ Ä‘Ã¡nh dáº¥u sá»± phÃ¡t triá»ƒn cá»§a ná»n Ä‘iá»‡n áº£nh Viá»‡t Nam', '', '', 'Bong ma hoc duong,Ghost school,Le Bao Trung,Hoai Linh, Hoang Son, Truong Quynh Anh,'),
(19, 'Phim The Hobbit HÃ nh TrÃ¬nh VÃ´ Äá»‹nh nÃ³i vá» Bilbo Baggins - má»™t chÃ ng lÃ¹n cÃ³ tÃ¬nh tÃ² mÃ² Ä‘Ã£ cÃ¹ng vá»›i ngÆ°á»i báº¡n thÃ¢n vÃ  má»™t nhÃ³m ngÆ°á»i lÃ¹n khÃ¡c Ä‘Ã­ Ä‘áº¿n nÃºi cÃ´ Ä‘Æ¡n. Há» báº¯t Ä‘áº§u hÃ nh trÃ¬nh tÃ¬m khÃ³ kho bÃ¡u bá»‹ Ä‘Ã¡nh cáº¯p, há» pháº£i Ä‘i Ä‘áº¿n nÆ¡i cÃ³ loÃ i rá»“ng khá»•ng lá»“ Ä‘ang ngá»§. VÃ  tá»« Ä‘Ã³ phim The Hobbit HÃ nh TrÃ¬nh VÃ´ Äá»‹nh báº¯t Ä‘áº§u nhá»¯ng nguy hiá»ƒm.\r\n\r\nMá»™t ngÆ°á»i thuá»™c tá»™c ngÆ°á»i lÃ¹n Hobbit, Ä‘á»™t nhiÃªn rÆ¡i vÃ o má»™t cuá»™c phiÃªu lÆ°u máº¡o hiá»ƒm vá»›i ngÆ°á»i báº¡n thÃ¢n, phÃ¹ thá»§y Gandalf vÃ  má»™t nhÃ³m ngÆ°á»i lÃ¹n Dwarf (má»™t tá»™c ngÆ°á»i khÃ¡c vá»›i ngÆ°á»i Hobbit). ÄoÃ n ngÆ°á»i tÃ¬m Ä‘áº¿n Lonely Mountain, nÆ¡i cÃ³ con rá»“ng khá»•ng lá»“ Smaug Ä‘ang ngá»§. PhÃ­a dÆ°á»›i chÃ­nh lÃ  má»™t vÃ¹ng Ä‘áº¥t rá»™ng lá»›n, nÆ¡i tá»«ng cÃ³ má»™t vÆ°Æ¡ng quá»‘c ngÆ°á»i lÃ¹n hÃ¹ng máº¡nh. Tá»« Ä‘áº¥y, má»™t cuá»™c hÃ nh trÃ¬nh vá»›i nhá»¯ng hiá»ƒm nguy báº¯t Ä‘áº§u', '', '', 'HANH TRINH VO DINH,AN UNEXPECTED JOURNEY,Peter Jackson,Martin Freeman, Ian McKellen va Richard Armitage,'),
(17, 'Thá»i chiáº¿n tranh, 12 Ä‘áº§u cá»§a 12 con giÃ¡p á»Ÿ Trung Quá»‘c bá»‹ cÆ°á»›p máº¥t vÃ¬ Ä‘Ã³ lÃ  hiá»‡n váº­t tháº§n bÃ­ cá»§a Ä‘áº¥t nÆ°á»›c nÃªn má»™t ngÆ°á»i Ä‘Ã n Ã´ng Ä‘Ã£ Ä‘i kháº¯p tháº¿ giá»›i tÃ¬m kiáº¿m nÃ³. Phim 12 Con GiÃ¡p chÃ­nh lÃ  nÃ³i vá» hÃ nh trÃ¬nh tÃ¬m kiáº¿m gian khá»• vÃ  nguy hiá»ƒm cá»§a ngÆ°á»i Ä‘Ã n Ã´ng nÃ y.', '', '12 con giap, Chinese Zodiac', '12 Con Giap,Chinese Zodiac,Thanh Long,Thanh Long, Oliver Platt, Laura Weissbecker,'),
(20, 'CÃ¢u chuyá»‡n báº¯t Ä‘áº§u vÃ o 50 nÄƒm trÆ°á»›c cá»§a TiÃªn kiáº¿m ká»³ hiá»‡p 1. LÃ½ Tam TÆ° lÃºc nÃ y vá»«a má»›i chÃ o Ä‘á»i, Kiáº¿m ThÃ¡nh cÅ©ng chÆ°a gia nháº­p Thá»¥c SÆ¡n. Tá»a YÃªu ThÃ¡p bá»‹ phÃ¡ há»§y, ráº¥t nhiá»u yÃªu ma thoÃ¡t ra ngoÃ i nhÃ¢n gian .....\r\n2000 nÄƒm trÆ°á»›c .... Tháº§n TÆ°á»›ng Tráº¥n YÃªu tÃªn lÃ  Phi Bá»“ng trÃªn tháº§n giá»›i,Phi Bá»“ng lÃ  tháº§n vá»›i sá»©c máº¡nh vÃ´ Ä‘á»‹ch khÃ´ng cÃ³ Ä‘á»‘i thá»§ nÃªn ráº¥t buá»“n chÃ¡n. lÃºc nÃ y á»Ÿ Ma giá»›i suáº¥t hiá»‡n Ma TÃ´n TrÃ¹ng LÃ¢u. hai ngÆ°á»i cÃ³ sá»©c máº¡nh ngang ngá»­a nhau nÃªn ráº¥t kÃ­nh trá»ng láº«n nhau vÃ¬ Ä‘á»ƒ thá»a mÃ£n tÃ¢m nguyá»‡n báº¥y lÃ¢u nÃ y Phi Bá»“ng CÃ¹ng ma tÃ´n TrÃ¹ng LÃ¢u ÄÃ£ rá»i khá»i cá»•ng tiÃªn giá»›i Ä‘Ã¡nh 1 tráº­n vs Ma TÃ´n , cho nÃªn Tháº§n Giá»›i phÃ¡i binh tá»›i báº¯t Phi Bá»“ng, Kiáº¿m Phi Bá»“ng bá»‹ rá»›t xuá»‘ng nhÃ¢n gian, biáº¿n thÃ nh Thá»¥c SÆ¡n Tráº¥n YÃªu Kiáº¿m, rá»“i tráº£i qua nhiá»u kiáº¿p luÃ¢n há»“i. NgÆ°á»i quáº£n lÃ½ Tháº§n Thá»¥ (cÃ¢y tháº§n) lÃ  Tá»‹ch Dao vá»‘n yÃªu tháº§m Phi Bá»“ng, sau khi Phi Bá»“ng xuá»‘ng nhÃ¢n gian, nÃ ng liá»n dÃ¹ng quáº£ cá»§a Tháº§n Thá»¥ cháº¿ thÃ nh ná»¯ tá»­ lÃ  Tuyáº¿t Kiáº¿n Ä‘áº§u nháº­p nhÃ¢n gian. Phi Bá»“ng qua nhiá»u láº§n luÃ¢n há»“i, láº§n nÃ y Ä‘áº§u thai thÃ nh ThÃ¡i Tá»­ KhÆ°Æ¡ng Quá»‘c Long DÆ°Æ¡ng, KhÆ°Æ¡ng quá»‘c vÃ  DÆ°Æ¡ng Quá»‘c chiáº¿n tranh, lÃºc Long DÆ°Æ¡ng Ä‘ang cháº¿ táº¡o Ma Kiáº¿m thÃ¬ quÃ¢n DÆ°Æ¡ng Quá»‘c Ä‘Ã¡nh vÃ o, Long DÆ°Æ¡ng cháº¿t trong loáº¡n quÃ¢n, cÃ²n cÃ´ng chÃºa Long Quá»³ - muá»™i muá»™i Long DÆ°Æ¡ng cÅ©ng tá»± sÃ¡t, chá»‰ cÃ²n láº¡i Ma Kiáº¿m lÆ°u truyá»n .\r\nSau nhiá»u kiáº¿p luÃ¢n há»“i, Phi Bá»“ng hiá»‡n nay trá»Ÿ thÃ nh Cáº£nh ThiÃªn, má»™t chÃ ng trai lÃ m chá»©c quáº£n lÃ½ Ä‘á»“ cá»• á»Ÿ VÄ©nh An, thÃ nh Du ChÃ¢u. Anh cÃ³ tÃ i nháº­n biáº¿t Ä‘á»“ cá»•, ráº¥t mÃª tiá»n, tham vá»ng trá»Ÿ thÃ nh ngÆ°á»i giÃ u nháº¥t thiÃªn háº¡ hoáº·c lÃ  Thá»¥c SÆ¡n kiáº¿m tiÃªn\r\nSau khi Cáº£nh ThiÃªn quen biáº¿t Tuyáº¿t Kiáº¿n thÃ¬ tÃ¬m Ä‘Æ°á»£c Ma Kiáº¿m, tá»« Ä‘Ã³ cuá»™c sá»‘ng cá»§a Cáº£nh ThiÃªn cÅ©ng Ä‘á»•i thay. Cáº£nh ThiÃªn bá»‹ cuá»‘n vÃ o cuá»™c tranh cháº¥p trong ná»™i bá»™ ÄÆ°á»ng Gia , vÃ  cáº£ cuá»™c chiáº¿n giá»¯a ÄÆ°á»ng MÃ´n vá»›i PhÃ­ch Lá»‹ch ÄÆ°á»ng. Rá»“i sau nÃ y gáº·p Ä‘á»‡ tá»­ Thá»¥c SÆ¡n lÃ  TrÆ°á»ng Khanh vÃ  ngÆ°á»i yÃªu Tá»­ HuyÃªn, cho Ä‘áº¿n viá»‡c giÃºp Thá»¥c SÆ¡n tÃ¬m kiáº¿m NgÅ© Linh ChÃ¢u, cÃ¹ng Ä‘á»‘i phÃ³ vá»›i TÃ  Kiáº¿m TiÃªn ...', '', '', 'Tien kiem ky hiep 3,XiÄn Jian Qi Xia Zhuan SÄn,Ly Quoc Lap,Ho Ca, Duong Mich, Hoac Kien Hoa,Duong Nhan'),
(21, 'Cháº¯c háº³n ai trong chÃºng ta cÅ©ng Ä‘Ã£ tá»«ng má»™t láº§n xem qua phim hoáº¡t hÃ¬nh cá»§a Pixar vÃ  thÃ¡n phá»¥c tÃ i nÄƒng cá»§a há», Ä‘Ã³ Ä‘á»u lÃ  nhá»¯ng siÃªu pháº©m Ä‘á»ƒ láº¡i dáº¥u áº¥n khÃ³ quÃªn trong lÃ²ng ngÆ°á»i xem bá»Ÿi hÃ¬nh áº£nh Ä‘á»“ há»a sá»‘ng Ä‘á»™ng tuyá»‡t Ä‘áº¹p cÅ©ng nhÆ° ná»™i dung giÃ u tÃ­nh nhÃ¢n vÄƒn. TrÆ°á»›c khi chiáº¿u chÃ­nh thá»©c má»™t bá»™ phim hoáº¡t hÃ¬nh má»›i, Pixar sáº½ chiáº¿u kÃ¨m má»™t bá»™ phim hoáº¡t hÃ¬nh ngáº¯n. Nhá»¯ng bá»™ phim hoáº¡t hÃ¬nh ngáº¯n nÃ y Ä‘á»u lÃ m cho khÃ¡n giáº£ vÃ´ cÃ¹ng thÃ­ch thÃº bá»Ÿi tÃ­nh sÃ¡ng táº¡o cá»§a nÃ³. ChÃ­nh vÃ¬ tháº¿, Pixar Ä‘Ã£ giÃ nh Ä‘Æ°á»£c 3 giáº£i Oscar cho phim hoáº¡t hÃ¬nh ngáº¯n xuáº¥t sáº¯c nháº¥t. KhÃ¡n giáº£ sáº½ khÃ´ng quÃªn sá»± Ä‘Ã¡ng ghÃ©t cá»§a Ä‘Ã n chim bÃ©o trong For The Birds Ä‘Æ°á»£c trÃ¬nh chiáº¿u trÃªn mÃ n áº£nh cÃ¹ng vá»›i Monsters, Inc., hay cÃ¢u chuyá»‡n giÃ u tÃ­nh nhÃ¢n vÄƒn trong bá»™ phim ngáº¯n Partly Cloudy Ä‘Æ°á»£c cÃ´ng chiáº¿u ngay trÆ°á»›c bá»™ phim hoáº¡t hÃ¬nh Up. Xin giá»›i thiá»‡u Ä‘áº¿n cÃ¡c báº¡n tuyá»ƒn táº­p cÃ¡c phim ngáº¯n cá»§a Pixar qua cÃ¡c thá»i ká»³ tá»« lÃºc má»›i thÃ nh láº­p nÄƒm 1985 cho Ä‘áº¿n nay Ä‘á»ƒ tháº¥y Ä‘Æ°á»£c sá»± tiáº¿n bá»™ vÆ°á»£t báº­c trong cÃ´ng nghá»‡ lÃ m phim hoáº¡t hÃ¬nh cá»§a há» nhÃ©!', '', '', 'Phim Ngan Cua Pixar,Pixar Movies,Disney,Pixar'),
(22, 'Pháº§n 2 cá»§a series Kung Fu Panda: Legends of Awesomeness.', '', '', 'Huyen Thoai Chien Binh 2,Legends of Awesomeness 2,2012'),
(61, 'Travis Lehman tá»«ng giáº£ng dáº¡y mÃ´n luáº­t á»Ÿ má»™t trÆ°á»ng Ä‘áº¡i há»c. Sau má»™t biáº¿n cá»‘ lá»›n trong Ä‘á»i khiáº¿n cáº£ gia Ä‘Ã¬nh ly tÃ¡n, vá»‹ giÃ¡o sÆ° bá» nghá» dáº¡y há»c vÃ  vÃ o ngÃ nh cáº£nh sÃ¡t, trá»Ÿ thÃ nh ngÆ°á»i quáº£n lÃ½ khu quáº£n cháº¿ cá»§a bang Washington - nÆ¡i mÃ  nhá»¯ng pháº¡m nhÃ¢n giáº¿t ngÆ°á»i buá»™c pháº£i sá»‘ng má»™t thá»i gian sau khi mÃ£n háº¡n tÃ¹.', '', 'Chet Hai Lan, Double Jeopardy', 'Chet Hai Lan,Double Jeopardy,Bruce Beresford,Ashley Judd, Tommy Lee Jones, Bruce Greenwood,Paramount Pictures ,  MFP Munich Film Partners GmbH &amp; Company I. Produktions KG ,  Provin'),
(62, 'Sakuragi Izumi lÃ  má»™t cáº£nh sÃ¡t tráº» Ä‘Æ°á»£c chuyá»ƒn Ä‘áº¿n cÃ´ng tÃ¡c táº¡i tá»• chuyÃªn Ã¡n Ä‘á»ƒ giáº£i quyáº¿t nhá»¯ng vá»¥ Ã¡n bá»‹ &quot;Ä‘Ã³ng bÄƒng&quot;, tá»©c lÃ  nhá»¯ng vá»¥ chÆ°a thá»ƒ tÃ¬m ra chÃ¢n tÆ°á»›ng. Tuy váº«n cÃ²n non ná»›t vÃ  thiáº¿u kinh nghiá»‡m, nhÆ°ng nhá» trá»±c giÃ¡c nháº¡y bÃ©n cá»§a mÃ¬nh cÃ´ Ä‘Ã£ cÃ¹ng vá»›i cÃ¡c Ä‘á»“ng nghiá»‡p phÃ¡ giáº£i nhiá»u vá»¥ Ã¡n tÆ°á»Ÿng chá»«ng Ä‘Ã£ bá»‹ lÃ£ng quÃªn theo thá»i gian...', '', ',Toi Ac Bi Lang Quen, Zettai Reido', 'Toi Ac Bi Lang Quen,Zettai Reido,Murakami Masanori, Iwata Kazuyuki,Ueto Aya,Kitaoji Kinya,Yamaguchi Sayaka,Fuji TV'),
(25, 'QuÃ¡i hiá»‡p Nháº¥t Chi Mai lÃ  má»™t bá»™ phim Trung Quá»‘c Ä‘Æ°á»£c hÃ£ng phim truyá»n hÃ¬nh thá»‹ ThÆ°á»£ng Háº£i sáº£n xuáº¥t nÄƒm 2010. Bá»™ phim Ä‘Æ°á»£c chuyá»ƒn thá»ƒ tá»« nhá»¯ng truyá»n thuyáº¿t vá» Nháº¥t Chi Mai, má»™t Ä‘áº¡o táº·c lá»«ng danh Ä‘á»i nhÃ  Minh', '', '', 'Quai hiep Nhat Chi Mai,Guaixia YizhÄ«mei,Ly Quoc Lap,Hoac Kien Hoa, Luu Thi Thi, Ma Thien Vu, Thich Hanh Vu,Duong Nhan'),
(26, 'Phim láº¥y bá»‘i cáº£nh chiáº¿n tranh trong tháº¿ giá»›i thá»© 2 ká»ƒ vá» 1 Ä‘á»™i biá»‡t kÃ­ch Má»¹ do Ä‘áº¡i Ãºy John H. Miller (Tom Hanks thá»§ vai) dáº«n Ä‘áº§u Ä‘ang cá»‘ gáº¯ng giáº£i cá»©u 1 chiáº¿n há»¯u cá»§a mÃ¬nh lÃ  binh nhÃ¬ James Francis Ryan (Matt Damon thá»§ vai) thuá»™c Ä‘á»™i nháº£y dÃ¹ Ä‘ang bá»‹ káº¹t trong cÄƒn cá»© Ä‘á»‹ch. NgoÃ i ra, há» cÃ²n Ä‘Æ°á»£c biáº¿t Ryan lÃ  con cá»§a 1 gia Ä‘Ã¬nh cÃ³ 4 anh em Ä‘á»u Ä‘i lÃ­nh mÃ  háº¿t 3 ngÆ°á»i Ä‘Ã£ hy sinh, chá»‰ cÃ²n láº¡i duy nháº¥t Ryan cÃ²n sá»‘ng xÃ³t nÃªn cáº£ Ä‘á»™i quyáº¿t tÃ¢m cá»©u cho Ä‘Æ°á»£c Ryan Ä‘á»ƒ anh vá» Ä‘oÃ n tá»¥ vá»›i gia Ä‘Ã¬nh.', '', '', 'Giai Cuu Binh Nhi Ryan,Saving Private Ryan,Steven Spielberg,Tom Hanks, Tom Sizemore, Edward Burns, Barry Pepper, Adam Goldberg,Amblin Entertainment'),
(27, 'HÆ°Æ¡ng MÃ¹a HÃ¨ (ì—¬ë¦„ í–¥ê¸°) lÃ  bá»™ phim truyá»n hÃ¬nh thá»© 3 trong series phim TÃ¬nh yÃªu bá»‘n mÃ¹a cá»§a Ä‘Ã i truyá»n hÃ¬nh KBS, HÃ n Quá»‘c, Ä‘Æ°á»£c cÃ´ng chiáº¿u láº§n Ä‘áº§u tiÃªn vÃ o mÃ¹a hÃ¨ nÄƒm 2003. MÃ u sáº¯c chá»§ Ä‘áº¡o cá»§a phim lÃ  mÃ u xanh trong váº¯t cá»§a mÃ¹a hÃ¨, mÃ¹a hÃ¨ khÃ´ng chá»‰ trÃ n ngáº­p Ã¡nh náº¯ng mÃ  cÃ²n vÆ°Æ¡ng váº¥n nhá»¯ng cÆ¡n mÆ°a, tÃ¬nh yÃªu cá»§a nhá»¯ng nhÃ¢n váº­t trong phim khÃ´ng u Ã¡m buá»“n tráº¯ng xoÃ¡ nhÆ° tuyáº¿t mÃ¹a Ä‘Ã´ng, khÃ´ng Ä‘áº«m nÆ°á»›c máº¯t hoÃ  vá»›i tiáº¿ng sÃ³ng vÃ  káº¿t thÃºc nhÆ° chiáº¿c lÃ¡ cuá»‘i thu mÃ  tÆ°Æ¡i sÃ¡ng trong tráº»o nhÆ° nhá»¯ng háº¡t mÆ°a mÃ¹a háº¡...', '', 'Phim HÃ n Quá»‘c,Summer Scent,HÆ°Æ¡ng MÃ¹a HÃ¨,Son Ye Jin,Song Seung Hun', 'Huong Mua He,ì—¬ë¦„ í–¥ê¸°,Yoon Suk-ho,Song Seung-heon, Son Ye Jin, Ryu Jin, Han Ji Hye, Shin Ae,'),
(28, 'Duangjai Akkanee lÃ  má»™t trong 4 cÃ¢u chuyá»‡n cá»§a lakorn &quot;4 Hua Jai Haeng Khun Khao&quot;. Lakorn nÃ y Ä‘Æ°á»£c quay Ä‘á»ƒ chÃºc má»«ng 40 nÄƒm thÃ nh láº­p CH3. 4 cÃ¢u chuyá»‡n nÃ³i vá» 4 anh em Din-Lom-Fai-Nam. &quot;Duangjai Akkanee&quot; Ä‘Ã£ Ä‘Æ°a tÃªn tuá»•i cá»§a hai diá»…n viÃªn lÃ  Nadech Kukimiya &amp; Yaya Urassaya trá»Ÿ thÃ nh hai diá»…n viÃªn tráº» triá»ƒn vá»ng cá»§a lÃ ng giáº£i trÃ­ ThÃ¡i. Há» giá» Ä‘ang lÃ  couple Ä‘Æ°á»£c yÃªu thÃ­ch trÃªn mÃ n áº£nh nhá».', '', 'Nadech Kukimiya,Urassaya Sperbund', 'Akkanee&#39s Heart,Akkanee&#39s Heart,'),
(29, 'Chiáº¿n tranh giá»¯a cÃ¡c VÃ¬ sao: Chiáº¿n tranh vÃ´ tÃ­nh (The Clone Wars) lÃ  má»™t chÆ°Æ¡ng má»¥c truyá»n hÃ¬nh sá»‘ng Ä‘á»™ng, bá»‘i cáº£nh lÃ  cÃ¡c cuá»™c chiáº¿n trong thiÃªn hÃ . ÄÆ°á»£c chiáº¿u láº§n Ä‘áº§u trÃªn Cartoon Network vÃ o ngÃ y 3, thÃ¡ng 10, nÄƒm 2008. Ná»™i dung xen giá»¯a nhá»¯ng sá»± kiá»‡n cá»§a pháº§n II vÃ  III . Season 2 sáº½ Ä‘Æ°á»£c ra máº¯t vÃ o mÃ¹a thu nÄƒm 2009. DÃ¹ dá»±a theo ná»™i dung cá»§a &quot;Star War &quot; ,nhÆ°ng má»—i táº­p phim nÃ y Ä‘á»™c láº­p vá»›i nhau tá»« má»Ÿ Ä‘áº§u káº¿t thÃºc má»™t táº­p .(cÃ³ má»™t vÃ i táº­p thÃ¬ dÃ­nh vá»›i nhau). Do báº¡n báº¡n cÃ³ thá»ƒ yÃªn tÃ¢m mÃ  down tá»«ng táº­p vá» coi, coi táº­p Ä‘áº§u vÃ  ... táº­p cuá»‘i thÃ´i cÅ©ng váº«n hiá»ƒu. Xoay quanh cuá»™c chiáº¿n khá»‘c liá»‡t giá»¯a nhá»¯ng ngÆ°á»i ly khai Separatists vÃ  ná»n cá»™ng hÃ²a thiÃªn hÃ  Galactic Republic. Khi con trai cá»§a Jabba the Hutt bá»‹ báº¯t Ä‘i bá»Ÿi má»™t nhÃ³m nhá»¯ng ngÆ°á»i ná»•i loáº¡n, 2 Jedi lÃ  Anakin Skywalker vÃ  Obi-Wan Kenobi Ä‘Ã£ Ä‘Æ°á»£c triá»‡u táº­p Ä‘á»ƒ thá»±c hiá»‡n cuá»™c Ä‘iá»u tra tÃ¬m hiá»ƒu sá»± tháº­t Ä‘áº±ng sau vá»¥ báº¯t cÃ³c: con trai cá»§a Hutt Ä‘ang á»Ÿ Ä‘Ã¢u vÃ  ai lÃ  ngÆ°á»i Ä‘á»©ng Ä‘áº±ng sau chá»‰ Ä‘áº¡o cuá»™c báº¯t cÃ³c', '', 'Star Wars The Clone Wars,Chiáº¿n Tranh Giá»¯a CÃ¡c VÃ¬ Sao', 'Chien Tranh Giua Cac Vi Sao,Star Wars The Clone Wars,'),
(30, 'Hiá»‡n nay, má»™t sá»‘ nÆ°á»›c Anh, Nháº­tâ€¦ váº«n theo cháº¿ Ä‘á»™ quÃ¢n chá»§ láº­p hiáº¿n. Nhá»¯ng ngÆ°á»i cá»§a HoÃ ng tá»™c sá»‘ng trong nhá»¯ng cung Ä‘iá»‡n nguy nga, lá»™ng láº«y vÃ  há» ráº¥t Ä‘Æ°á»£c dÃ¢n chÃºng kÃ­nh trá»ng. NhÆ°ng cung Ä‘iá»‡n cá»§a HÃ n Quá»‘c thÃ¬ bá»‹ rÆ¡i vÃ o lÃ£ng quÃªn. Triá»u Ä‘áº¡i cá»§a vua vÃ  hoÃ ng tá»™c Ä‘Ã£ sá»¥p Ä‘á»• trong cuá»™c chiáº¿n vá»›i Nháº­t Báº£n. VÃ¬ tháº¿ tÃ¡c giáº£ Park So Hee Ä‘Ã£ thá»­ quay ngÆ°á»£c thá»i gian. Giáº£ sá»­ HÃ n Quá»‘c váº«n tá»“n táº¡i má»™t hoÃ ng gia vá»›i cháº¿ Ä‘á»™ quÃ¢n chá»§ nhÆ° Anh vÃ  Nháº­t bÃ¢y giá». Náº¿u váº­y nhá»¯ng vá»‹ khÃ¡ch du lá»‹ch váº«n thÆ°á»ng tháº¥y á»Ÿ cung GyeongBok vÃ  Changdeok nhÆ° hiá»‡n nay sáº½ Ä‘Æ°á»£c thay báº±ng nhá»¯ng ngÆ°á»i lÃ­nh gÃ¡c cá»•ng, cÃ¡c quan láº¡i vÃ  ná»¯ tÃ¬â€¦ ngÃ y ngÃ y ra vÃ o cung. Háº¯ng nÄƒm trong cung sáº½ tá»• chá»©c nhá»¯ng ngÃ y lá»… lá»›n. CÃ¡c Ä‘Ã i truyá»n hÃ¬nh sáº½ táº¥t báº­t lÃ m viá»‡c Ä‘á»ƒ Ä‘Æ°a tin hay tÆ°á»ng thuáº­t trá»±c tiáº¿p nhá»¯ng buá»•i lá»… Ä‘Ã³. â€¦ Cung Ä‘iá»‡n hoang váº¯ng, láº¡nh láº½o cá»§a HÃ n Quá»‘c giá» lÃ  nÆ¡i á»Ÿ cá»§a cÃ¡c thÃ nh viÃªn trong hoÃ ng tá»™c.', '', 'Goong,Phim HÃ n Quá»‘c,Yoon Eun Hye,Song Ji Hyo', 'Hoang Cung,Goong,Yen Press'),
(31, 'Sau khi hoÃ n thÃ nh 3 tÃ¡c pháº©m thuá»™c hÃ ng best-sellers dá»±a trÃªn nhá»¯ng tráº£i nghiá»‡m vá» tÃ¬nh yÃªu cuá»™c sá»‘ng cá»§a báº£n thÃ¢n, ná»¯ nhÃ  vÄƒn Tá»« TÃ¢m bá»—ng máº¥t háº¿t Ã½ tÆ°á»Ÿng Ä‘á»ƒ tiáº¿p tá»¥c sÃ¡ng táº¡o, vÃ  cÃ´ gáº·p nhiá»u khÃ³ khÄƒn khi viáº¿t tiáº¿p má»™t tiá»ƒu thuyáº¿t thuá»™c dáº¡ng kinh dá»‹ &quot;Re-cycle&quot;.\r\n\r\nTrong quÃ¡ trÃ¬nh biÃªn soáº¡n, nhá»¯ng Ä‘iá»u quÃ¡i dá»‹ bá»—ng xuáº¥t hiá»‡n táº¡i vÄƒn phÃ²ng cá»§a cÃ´ Ä‘á»“ng thá»i ngÆ°á»i báº¡n trai cÅ© bá»—ng dÆ°ng xuáº¥t hiá»‡n sau khi cÃ´ ly hÃ´n. Má»™t ngÃ y cÃ´ gáº·p Ä‘Ãºng nhÃ¢n váº­t siÃªu nhiÃªn cá»§a mÃ¬nh á»Ÿ ngoÃ i Ä‘á»i vÃ  cÃ´ láº§n theo Ä‘á»ƒ rá»“i bá»‹ láº¡c vÃ o tháº¿ giá»›i cá»§a anh ta, má»™t tháº¿ giá»›i khá»§ng khiáº¿p....', '', '', 'Vong Luan Hoi,Re-Cycle,Oxide Pang Chun, Danny Pang,Trinh Y Kien, Angelica Lee,Pou-Soi Cheang,Magic Heart Film Production, Matching Motion Pictures'),
(32, 'Bá»™ phim dá»±a theo cÃ¢u chuyá»‡n cÃ³ tháº­t vá» chiáº¿n tÃ­ch má»™t viÃªn cáº£nh sÃ¡t Ä‘Ã£ triá»‡t phÃ¡ Ä‘Æ°á»ng dÃ¢y buÃ´n bÃ¡n ma tÃºy vÃ  sá»± tranh giÃ nh quyá»n lá»±c cá»§a 2 bÄƒng nhÃ³m xÃ£ há»™i Ä‘en Los Angeles - Las Vegas.', '', 'Beyond the Trophy, Cuá»™c Chiáº¿n Bang Há»™i', 'Cuoc Chien Bang Hoi,Beyond the Trophy,Daniel J. Gillin,Michael Madsen, Stephen Cloud, Eric Roberts,Paradise Entertainment'),
(33, 'Má»™t ná»¯ sÃ¡t thá»§ Ä‘Ã£ thÃ¢m nháº­p vÃ o má»™t tá»• chá»©c tá»™i pháº¡m chuyÃªn truy báº¯t cÃ¡c sÃ¡t thá»§ chuyÃªn nghiá»‡p á»Ÿ kháº¯p má»i nÆ¡i vá» tá»• chá»©c cá»§a háº¯n. Trong &quot;cÄƒn phÃ²ng giáº¿t chÃ³c&quot; cÃ¡c sÃ¡t thá»§ pháº£i chÆ¡i theo luáº­t chÆ¡i cá»§a háº¯n Ä‘áº·t ra ... chá»‰ má»™t ngÆ°á»i duy nháº¥t cÃ³ thá»ƒ sá»‘ng sÃ³t trá»Ÿ ra ngoÃ i khi láº§n lÆ°á»£t giáº¿t cÃ¡c Ä‘á»‘i thá»§ cá»§a mÃ¬nh.', '', 'Kill &#39em All,Giáº¿t Sáº¡ch', 'Giet Sach,Kill &#39em All,Raimund Huber,Johnny Messner, Chia Hui Liu, Ammara Siripong,Epic Pictures Group'),
(34, 'Trong má»™t tÆ°Æ¡ng lai khÃ´ng xa, táº¥t cáº£ cÃ¡c cÃ´ng nghá»‡ tiÃªn tiáº¿n trÃªn TrÃ¡i Äáº¥t bá»‹ má»™t hiá»‡n tÆ°á»£ng ká»³ láº¡ vÃ´ hiá»‡u hÃ³a. KhÃ´ng cÃ²n má»™t cÃ´ng nghá»‡ hiá»‡n Ä‘áº¡i nÃ o hiá»‡n há»¯u trong cuá»™c sá»‘ng cá»§a con ngÆ°á»i. Tháº¿ giá»›i nhÆ° tráº£i qua thá»i ká»³ Ä‘á»“ Ä‘Ã¡ láº§n thá»© hai.\r\n\r\nSá»± sá»¥p Ä‘á»• cá»§a cÃ¡c bá»™ mÃ¡y nhÃ  nÆ°á»›c dáº«n Ä‘áº¿n sá»± cai trá»‹ cá»§a cÃ¡c lÃ£nh chÃºa vÃ  lá»±c lÆ°á»£ng vÅ© trang. Gia Ä‘Ã¬nh Matheson sá»Ÿ há»¯u thÃ´ng tin liÃªn quan Ä‘áº¿n cuá»™c sá»¥p Ä‘á»• vÃ  chÃ¬a khÃ³a giÃºp Ä‘áº£o ngÆ°á»£c hiá»‡n tÆ°á»£ng nÃ y. Tuy nhiÃªn, bÃ­ máº­t Ä‘Ã³ cÅ©ng vÃ´ tÃ¬nh kÃ©o há» vÃ o má»™t cuá»™c sÄƒn Ä‘uá»•i...', '', '', 'Cuoc Chien Tuong Lai,Revolution,Jon Favreau,Billy burke, Tracy spiridakos, Zak orth,Bad Robot, Warner Bros. Television'),
(35, 'Tay Ä‘ua tráº» tuá»•i Speed luÃ´n cá»‘ gáº¯ng pháº¥n Ä‘áº¥u Ä‘á»ƒ trá»Ÿ thÃ nh tay Ä‘ua huyá»n thoáº¡i nhÆ° anh mÃ¬nh, Racer X. Anh trai cá»§a Speed Ä‘Ã£ thiá»‡t máº¡ng bÃ­ áº©n trong má»™t láº§n thi Ä‘áº¥u.\r\n\r\nCÃ¹ng nhiá»‡t huyáº¿t cá»§a tuá»•i tráº» vá»›i chiáº¿c xe Mach 5 do chÃ­nh cha anh thiáº¿t káº¿, Speed báº¯t Ä‘áº§u thá»±c hiá»‡n Æ°á»›c mÆ¡ cá»§a mÃ¬nh.\r\n\r\nSpeed khiáº¿n tay tÃ i phiá»‡t Royalton ná»•i Ä‘iÃªn khi tá»« chá»‘i vá» thi Ä‘áº¥u dÆ°á»›i mÃ u Ã¡o cá»§a hÃ£ng nÃ y. Anh cÃ²n phÃ¡t hiá»‡n ra chÃ­nh Royalton Ä‘ang chi phá»‘i tháº¿ giá»›i Ä‘ua xe báº±ng bÃ n tay báº©n thá»‰u giáº¥u sau háº­u trÆ°á»ng.\r\n\r\nCÆ¡ há»™i Ä‘á»ƒ anh báº£o vá»‡ Ä‘Æ°á»£c gia Ä‘Ã¬nh vÃ  mÃ´n thá»ƒ thao mÃ¬nh yÃªu thÃ­ch chÃ­nh lÃ  Ä‘Ã¡nh báº¡i Royalton  vá»›i sá»± há»— trá»£ cá»§a ngÆ°á»i thÃ¢n, báº¡n bÃ¨ vÃ  cÃ´ báº¡n gÃ¡i Trixie.', '', '', 'Vua Toc Do,Speed Racer,Andy Wachowski, Larry Wachowski,Emile hirsch, Christina ricci, Susan sarandon, Bi rain,Warner Bros. Pictures, Village Roadshow Pictures, Silver Pictures'),
(36, 'ChÃ­nh trong Ä‘Ãªm Ä‘Äƒng quang ngÃ´i vÃ´ Ä‘á»‹ch giáº£i quyá»n anh NCAA, Dillon Ä‘Ã£ vÃ´ tÃ¬nh bá»‹ liÃªn quan Ä‘áº¿n má»™t vá»¥ sÃ¡t háº¡i cáº£nh sÃ¡t vÃ  Ä‘Ã£ pháº£i lÄ©nh Ã¡n 10 nÄƒm tÃ¹. Sau khi Ä‘Æ°á»£c Ã¢n xÃ¡, anh láº¡i buá»™c pháº£i tham gia vÃ o nhá»¯ng tráº­n chiáº¿n trong lá»“ng sáº¯t Ä‘á»ƒ kiáº¿m tiá»n giáº£i thoÃ¡t cho ngÆ°á»i báº¡n thÃ¢n.\r\n\r\nNgÃ y cÃ ng lÃºn sÃ¢u vÃ o nhá»¯ng cuá»™c chÆ¡i khÃ´ng cÃ³ lá»‘i thoÃ¡t, Dillon nháº­n ra ráº±ng anh Ä‘ang pháº£i Ä‘á»‘i máº·t vá»›i cáº£ má»™t há»‡ thá»‘ng lÅ©ng Ä‘oáº¡n Ä‘áº±ng sau má»—i tráº­n so gÄƒng...', '', '', 'Dau Sy Long Sat,The Philly Kid,Jason Connery,Devon sawa, Sarah butler, wes chatham,After Dark Films, After Dark Films, Fourth Floor Productions'),
(37, 'Láº¥y bá»‘i cáº£nh nÆ°á»›c Má»¹ trong tháº¿ chiáº¿n thá»© 2, chÃ ng thanh niÃªn gÃ y gÃ² Steve Roger nhiá»u láº§n xung phong quÃ¢n ngÅ© nhÆ°ng bá»‹ tá»« chá»‘i. Sá»± quyáº¿t tÃ¢m cá»§a anh Ä‘Æ°á»£c giÃ¡o sÆ° Erksine ghi nháº­n. Anh Ä‘Æ°á»£c tham gia vÃ o dá»± Ã¡n Phá»¥c sinh, nÆ¡i cÃ´ng nghá»‡ cÃ³ thá»ƒ cáº£i thiá»‡n tiá»m nÄƒng cá»§a con ngÆ°á»i tá»›i má»©c tá»‘i Ä‘a Ä‘á»ƒ táº¡o ra cÃ¡c chiáº¿n sá»¹ hoÃ n háº£o.\r\n\r\nTrá»Ÿ thÃ nh ngÆ°á»i máº¡nh máº½ nhÆ° mong muá»‘n, Steve láº¡i bá»‹ cuá»‘n vÃ o vá»Ÿ ká»‹ch tuyÃªn truyá»n cá»§a nhá»¯ng nhÃ  tÆ° báº£n. Anh khoÃ¡c lÃªn mÃ¬nh bá»™ trang phá»¥c Captain America, Ä‘i rao bÃ¡n... trÃ¡i phiáº¿u.\r\n\r\nCÃ¹ng lÃºc Ä‘Ã³, Johann Schmidt, tÃªn sá»¹ quan phÃ¡t xÃ­t Ä‘áº§y tham vá»ng Ä‘ang Ã¢m tháº§m tiáº¿n hÃ nh dá»± Ã¡n HYDRA. Thá»© vÅ© khÃ­ há»§y diá»‡t nÃ y cÃ³ thá»ƒ giÃºp háº¯n khÃ´ng chá»‰ láº­t Ä‘á»• Hitler, mÃ  cÃ²n trá»Ÿ thÃ nh bÃ¡ chá»§ tháº¿ giá»›i.\r\n\r\nKhi chÃ¡n ngÃ¡n vá»›i vai trÃ² cá»§a má»™t con rá»‘i, vÃ  lÃ²ng yÃªu nÆ°á»›c thÃ´i thÃºc, Steve lao vÃ o chiáº¿n tráº­n... NgÆ°á»i hÃ¹ng Ä‘áº§u tiÃªn trong biá»‡t Ä‘á»™i siÃªu nhÃ¢n Avenger Ä‘Ã£ xuáº¥t tráº­n!', '', '', 'Nguoi Hung Nuoc My,Captain America,Joe Johnston,Samuel l. jackson, Chris evans, Tommy lee jones, Hugo weaving, Toby jones,Marvel Enterprises, Marvel Entertainment, Marvel Studios'),
(38, 'Tony Stark vá»«a lÃ  chá»§ táº­p Ä‘oÃ n cÃ´ng nghá»‡, vá»«a lÃ  má»™t tay chÆ¡i ká»³ dá»‹. Trong chuyáº¿n thá»‹ sÃ¡t Afghanistan, Ã´ng bá»‹ nhÃ³m khá»§ng bá»‘ báº¯t cÃ³c. ChÃºng Ä‘Ã²i Tony cháº¿ táº¡o thá»© vÅ© khÃ­ há»§y diá»‡t Ä‘á»ƒ táº¥n cÃ´ng nÆ°á»›c Má»¹.\r\n\r\n\r\n\r\nNháº­n ra sá»± tháº­t phÅ© phÃ ng ráº±ng, nhá»¯ng vÅ© khÃ­ do mÃ¬nh cháº¿ táº¡o Ä‘ang quay ngÆ°á»£c láº¡i táº¥n cÃ´ng chÃ­nh mÃ¬nh, Tony báº¯t tay cháº¿ táº¡o bá»™ giÃ¡p cÃ´ng nghá»‡ cao. Táº©u thoÃ¡t khá»i nÆ¡i giam cáº§m, Tony trá»Ÿ thÃ nh Ä‘áº¡i diá»‡n cÃ´ng lÃ½ dÆ°á»›i biá»‡t danh NgÆ°á»i sáº¯t. Trong khi Ä‘Ã³, ngÆ°á»i Ä‘á»“ng sá»± trong táº­p Ä‘oÃ n Stark Ã¢m mÆ°u láº­t Ä‘á»• Tony.\r\n\r\n\r\n\r\nBá»™ phim má»Ÿ ra cÃ¢u chuyá»‡n trong tÆ°Æ¡ng lai vá» nhÃ³m siÃªu anh hÃ¹ng Avenger khi tá»• chá»©c bÃ­ máº­t SHIELD báº¯t Ä‘áº§u lá»™ diá»‡n.', '', '', 'Nguoi Sat,Iron Man,Jon Favreau,Terrence howard, Robert downey jr, Jeff bridges, Gwyneth paltrow, Clark gregg,Paramount Pictures, Marvel Enterprises, Marvel Studios'),
(39, 'Tony Stark tá»± hÃ© lá»™ thÃ¢n pháº­n NgÆ°á»i sáº¯t cá»§a mÃ¬nh cho cÃ´ng chÃºng vÃ  chÃ¬m trong hÃ o quang danh vá»ng. Má»™t káº» láº¡ máº·t xuáº¥t hiá»‡n táº¥n cÃ´ng anh trÃªn Ä‘Æ°á»ng Ä‘ua Monte Carlo. Tony bá»‹ hiá»‡n tÆ°á»£ng nhiá»…m trÃ¹ng mÃ¡u Ä‘e dá»a máº¡ng sá»‘ng, cÃ²n tÃªn sÃ¡t thá»§ kia báº¯t tay vá»›i Ä‘á»‘i thá»§ cá»§a táº­p Ä‘oÃ n Stark hÃ²ng thÃ´n tÃ­nh Tony.\r\n\r\nPháº§n 2 cá»§a NgÆ°á»i sáº¯t lÃ  láº§n Ä‘áº§u tiÃªn trá»£ thá»§ Warmachine xuáº¥t hiá»‡n. Phim cÅ©ng tiáº¿t lá»™ nhá»¯ng bÃ­ máº­t vá» cha cá»§a Tony, Howard Stark, trÆ°á»›c khi dáº«n dáº¯t cÃ¢u chuyá»‡n sang nhÃ¢n váº­t Captain America, Ä‘á»“ng Ä‘á»™i tÆ°Æ¡ng lai cá»§a NgÆ°á»i sáº¯t táº¡i tá»• chá»©c SHIELD.', '', '', 'Nguoi Sat 2,Iron Man 2,Jon Favreau,Samuel l. jackson, Robert downey jr, Don cheadle, Mickey rourke, Gwyneth paltrow, Clark gr,Paramount Pictures, Marvel Entertainment, Marvel Studios'),
(40, 'Dá»±a trÃªn series game Ä‘á»‘i khÃ¡ng cÃ¹ng tÃªn, phim xoay quanh giáº£i Ä‘áº¥u Iron Fist vÃ  cuá»™c tranh giÃ nh quyá»n lá»±c giá»¯a 3 tháº¿ há»‡ nhÃ  Mishima. Jin Kazama, nhÃ¢n váº­t trung tÃ¢m, tham gia giáº£i Ä‘áº¥u Ä‘á»ƒ tráº£ thÃ¹ cho máº¹, ngÆ°á»i bá»‹ táº­p Ä‘oÃ n Tekken hÃ£m háº¡i.', '', 'Thiáº¿t Quyá»n, Tekken', 'Thiet Quyen,Tekken,Dwight H. Little,Kelly overton, Jon foo, Cary-hiroyuki tagawa, Cung le,CST Productions, Crystal Sky Pictures, Crystal Sky'),
(41, 'Sau khi huáº¥n luyá»‡n 2 nÄƒm rÆ°á»¡i vá»›i Jiraiya, Naruto trá»Ÿ vá» lÃ ng LÃ¡, Ä‘oÃ n tá»¥ vá»›i nhá»¯ng ngÆ°á»i báº¡n cáº­u Ä‘Ã£ chia tay, vÃ  láº­p láº¡i NhÃ³m 7, giá» Ä‘Æ°á»£c gá»i lÃ  NhÃ³m Kakashi, vá»›i Sai tháº¿ chá»— Sasuke.\r\n\r\nLÃ²ng ngáº­p trÃ n thÃ¹ háº­n, Uchiha Sasuke nÆ°Æ¡ng nhá» sá»©c máº¡nh cá»§a Orochimaru Ä‘á»ƒ mong má»™t ngÃ y tráº£ mÃ³n ná»£ mÃ¡u vá»›i anh trai mÃ¬nh - Itachi.\r\n\r\nKhÃ´ng giá»‘ng nhÆ° pháº§n Ä‘áº§u khi chÃºng chá»‰ Ä‘Ã³ng vai trÃ² phá»¥, tá»• chá»©c tháº§n bÃ­ Akatsuki liÃªn tiáº¿p báº¯t giá»¯ cÃ¡c Jinchuuriki Ä‘á»ƒ chiáº¿m láº¥y sá»©c máº¡nh cá»§a vÄ© thÃº, hÃ²ng tham vá»ng thá»‘ng trá»‹ tháº¿ giá»›i.', '', 'Naruto Shippuuden, Naruto ss2', 'Naruto: Suc Manh Vi Thu,Naruto Shippuuden,Hayato Date,Junko takeuchi, Noriaki sugiyama , Chie nakamura,TV Tokyo'),
(42, 'Charlie Kenton  xuáº¥t thÃ¢n lÃ  má»™t tay Ä‘áº¥m cÃ³ nhiá»u tiá»m nÄƒng, nhÆ°ng sau khi tráº£i qua bao sÃ³ng giÃ³, con ngÆ°á»i Charlie giá» Ä‘Ã¢y hoÃ n toÃ n thay Ä‘á»•i. Tinh tháº§n suy sá»¥p, sá»‘ng bÃª tha, anh rong ruá»•i trÃªn kháº¯p nÆ°á»›c Má»¹ kiáº¿m tiá»n báº±ng nghá» Ä‘iá»u khiá»ƒn robot chiáº¿n Ä‘áº¥u.\r\n\r\nNá»£ náº§n chá»“ng cháº¥t khiáº¿n Charlie nháº­n má»i há»£p Ä‘á»“ng Ä‘áº¥m bá»‘c, Ä‘á»‘i thá»§ cÃ³ thá»ƒ lÃ  robot, tháº­m chÃ­ cÃ³ thá»ƒ lÃ  chÃº bÃ² tÃ³t hung dá»¯. NhÆ°ng thÃ³i kiÃªu ngáº¡o, hÃ¡o tháº¯ng, báº¥t cáº§n cá»§a anh Ä‘Ã£ khiáº¿n 2 tay Ä‘áº¥m Ä‘i tong.\r\n\r\nCho Ä‘áº¿n má»™t ngÃ y, ngÆ°á»i vá»£ cÅ© cá»§a anh qua Ä‘á»i. Theo luáº­t phÃ¡p, Ä‘á»©a con trai duy nháº¥t sáº½ do anh nuÃ´i dÆ°á»¡ng. Sá»± thÃ´ng minh, nhanh nháº¡y vÃ  cÃ³ pháº§n Æ°Æ¡ng ngáº¡nh cá»§a cáº­u bÃ© Max nhÆ° má»™t luá»“ng giÃ³ má»›i lÃ m thay Ä‘á»•i cuá»™c sá»‘ng cá»§a Charlie.\r\n\r\nTrong má»™t láº§n tÃ¬nh cá», hai bá»‘ con tÃ¬m tháº¥y Atom, má»™t chÃº robot Ä‘áº·c biá»‡t táº¡i bÃ£i rÃ¡c pháº¿ liá»‡u. ÄÆ°á»£c sá»± giÃºp Ä‘á»¡ cá»§a ngÆ°á»i báº¡n gÃ¡i Bailey Tallet, Charlie vÃ  Max cáº£i tiáº¿n Atom Ä‘á»ƒ thi Ä‘áº¥u quyá»n anh.\r\n\r\nHá» tham gia tá»« nhá»¯ng tráº­n chiáº¿n khÃ´ng luáº­t lá»‡ cá»§a tháº¿ giá»›i ngáº§m cho tá»›i Ä‘áº¥u trÆ°á»ng hoÃ nh trÃ¡ng cá»§a cuá»™c thi vÃ´ Ä‘á»‹ch tháº¿ giá»›i.', '', 'Real Steel, tay dam thep, cu dam thep', 'Tay Dam Thep,Real Steel,Shawn Levy,Hugh jackman, Hope davis, Anthony mackie, Dakota goyo, Evangeline lilly, Kevin durand, Ja,Touchstone Pictures, DreamWorks Pictures'),
(43, 'Tiáº¿p ná»‘i pháº§n 1, pháº§n 2 cá»§a bá»™ phim Ä‘em Ä‘áº¿n cho ngÆ°á»i xem nhá»¯ng pha báº¯n sÃºng ngháº¹t thá»Ÿ. Sau má»™t chiáº¿n tháº¯ng á»Ÿ má»™t giáº£i Ä‘áº¥u thá»ƒ thao khÃ´ng gian máº¡ng, cÃ¡c game thá»§ chiáº¿n tháº¯ng Ä‘Æ°á»£c trao giáº£i thÆ°á»Ÿng Ä‘Ä©a CD trÃ² chÆ¡i má»›i. Sau khi chÆ¡i trÃ² chÆ¡i nÃ y, má»—i ngÆ°á»i trong sá»‘ há» bá»‹ áº£nh hÆ°á»Ÿng , biáº¿n nhá»¯ng kháº£ nÄƒng chÆ¡i game cá»§a há» thÃ nh thá»±c sá»±. Há» cÃ³ kháº£ nÄƒng báº¯n sÃºng Ä‘ua xe nhÆ° trong game á»Ÿ cuá»™c sá»‘ng thá»±c.\r\n\r\nMá»™t tá»• chá»©c nháº­n tháº¥y Ä‘Æ°á»£c kháº£ nÄƒng cá»§a há» nÃªn Ä‘Ã£ tÃ¬m má»i cÃ¡ch lÃ´i kÃ©o há» sá»­ dá»¥ng kháº£ nÄƒng Ä‘Ã³ cho nhá»¯ng má»¥c Ä‘Ã­ch Ä‘en tá»‘i cá»§a mÃ¬nh. Tuá»•i tráº», hÃ¡o tháº¯ng, cÃ¡c chÃ ng trai Ä‘Ã£ xa vÃ o vÅ©ng láº§y tá»™i Ã¡c. VÃ  giá» Ä‘Ã¢y, lÆ°Æ¡ng tri thá»©c tá»‰nh, há» Ä‘ang muá»‘n sá»­a chá»¯a sai láº§m cá»§a mÃ¬nh. TÃ¬nh yÃªu, tÃ¬nh báº¡n, niá»m tin, gian trÃ¡â€¦ Cuá»™c chÆ¡i tiáº¿p tá»¥c...', '', 'Novyy uroven', 'Tro Choi Chien Binh: Cap Do Moi,Na igre 2: Novyy uroven,Pavel Sanaev,Sergey Chirkov, Marina Petrenko,Pavel Priluchnyy,Ivan, Karoprokat'),
(44, 'Phim láº¥y bá»‘i cáº£nh á»Ÿ tháº¿ giá»›i tÆ°Æ¡ng lai 500 nÄƒm sau, nÄƒm 2517 má»™t nhÃ³m nhá»¯ng ngÆ°á»i sá»‘ng ngoÃ i vÃ²ng phÃ¡p luáº­t sá»‘ng trÃªn má»™t phi thuyá»n ngoÃ i khÃ´ng gian nhá», cá»‘ gáº¯ng sinh tá»“n khi há» du hÃ nh tá»›i nhá»¯ng pháº§n chÆ°a tá»«ng Ä‘Æ°á»£c biáº¿t Ä‘áº¿n cá»§a dáº£i ngÃ¢n hÃ  vÃ  láº©n trÃ¡nh nhá»¯ng bÃªn Ä‘ang cÃ³ chiáº¿n tranh cÅ©ng nhÆ° nhá»¯ng Ä‘áº·c vá»¥ uy quyá»n tá»›i báº¯t há». Thuyá»n trÆ°á»Ÿng lÃ£nh Ä‘áº¡o lÃ  Malcolm &#39Mal&#39 Reynolds - má»™t ngÆ°á»i hÃ i hÆ°á»›c, luÃ´n háº¿t lÃ²ng báº£o vá»‡ Ä‘á»“ng Ä‘á»™i cá»§a mÃ¬nh, cÃ¹ng vá»›i há» Mal tráº£i qua nhiá»u cuá»™c hÃ nh trÃ¬nh thÃº vá»‹ qua nhiá»u miá»n Ä‘áº¥t.', '', '', 'Phi Thuyen Dom Dom,Firefly,Joss Whedon,Nathan Fillion, Gina Torres, Alan Tudyk,Mutant Enemy Productions'),
(45, 'Giá»¯a thá»i Ä‘iá»ƒm sáº¯p chuyá»ƒn sang ká»· bÄƒng giÃ¡, má»i con váº­t Ä‘á»u Ä‘i kiáº¿m nÆ¡i áº¥m Ã¡p Ä‘á»ƒ sá»‘ng. Manny - anh chÃ ng voi ma mÃºt Ä‘á»™c thÃ¢n káº¿t báº¡n vá»›i Sid chÃ ng LÆ°á»i vÃ  tay há»• rÄƒng kiáº¿m Diego trong chuyáº¿n hÃ nh trÃ¬nh Ä‘Æ°a má»™t Ä‘á»©a bÃ© loÃ i ngÆ°á»i vá» vá»›i bá»™ tá»™c.\r\n\r\nMá»¥c Ä‘Ã­ch cá»§a Diego lÃ  Ä‘em cáº­u bÃ© vá» cho thá»§ lÄ©nh cá»§a háº¯n Äƒn thá»‹t, tuy nhiÃªn suá»‘t cuá»™c hÃ nh trÃ¬nh, Diego Ä‘Ã£ há»c Ä‘Æ°á»£c tá»« nhá»¯ng ngÆ°á»i báº¡n tinh tháº§n Ä‘oÃ n káº¿t vÃ  biáº¿t hÆ°á»›ng theo láº½ pháº£i...', '', 'Ice Age, ky bang ha', 'Ky Bang Ha,Ice Age,Chris Wedge, Carlos Saldanha,Ray romano, John leguizamo, Denis leary,20th Century Fox'),
(46, 'Bá»™ phim lÃ  cÃ¢u chuyá»‡n cáº£m Ä‘á»™ng vá» tÃ¬nh báº¡n giá»¯a hai ngÆ°á»i lá»‡ch tuá»•i: Ä‘Ã³ lÃ  cÃ´ bÃ© Mary 8 tuá»•i sá»‘ng cÃ´ Ä‘Æ¡n táº¡i vÃ¹ng ngoáº¡i Ã´ Melbourne vÃ  Max, má»™t ngÆ°á»i Ä‘Ã n Ã´ng Ä‘Ã£ 44 tuá»•i, sá»‘ng táº¡i New York vÃ  Ã´ng ráº¥t bÃ©o. Há» chia sáº» cuá»™c sá»‘ng vÃ  nhá»¯ng tÃ¢m sá»± qua nhá»¯ng cÃ¡nh thÆ° vÃ  bÆ°u pháº©m Ä‘i kÃ¨m. Cuá»™c sá»‘ng cá»§a há» cá»© hiá»‡n lÃªn tháº­t bÃ¬nh dá»‹ qua nhá»¯ng dÃ²ng ká»ƒ tháº­t má»™c máº¡c vÃ  chÃ¢n thÃ nh.\r\n\r\nMá»™t ai Ä‘Ã³ cÃ³ thá»ƒ tháº¥y Max hay Mary tháº­t láº­p dá»‹, tháº­t khÃ¡c ngÆ°á»i thÆ°á»ng. NhÆ°ng khi xem vÃ  Ä‘á»c nhá»¯ng dÃ²ng thÆ° cá»§a há», báº¡n má»›i tháº¥y, há» khÃ¡c ngÆ°á»i vÃ¬ há» quÃ¡ tá»‘t, quÃ¡ tháº­t thÃ .', '', '', 'Tinh Ban Quai La,Mary And Max,Adam Elliot,Toni Collette, Philip Seymour Hoffman, Eric Bana,Melodrama Pictures'),
(47, 'Má»™t lÃ¡ thÆ° náº·c danh Ä‘Æ°á»£c gá»­i tá»›i vÄƒn phÃ²ng thÃ¡m tá»­ Mori vá»›i ná»™i dung khÃ¡ bÃ­ áº©n, dÆ°á»›i dáº¡ng máº­t mÃ£ &quot;Cáº­u bÃ© máº·c Ã¡o Xanh vÃ  Xanh sá»c ... mÆ°a tá»« trá»i cao Ä‘á»• xuá»‘ng ...&quot; vá»›i áº©n Ã½ Ä‘e dá»a sáº½ cÃ³ má»™t vá»¥ Ä‘Ã¡nh bom khá»§ng khiáº¿p táº¡i Tokyo.\r\n\r\nVá»›i kháº£ nÄƒng suy luáº­n sáº¯c bÃ©n, Conan nhanh chÃ³ng nháº­n ra má»¥c tiÃªu hÆ°á»›ng Ä‘áº¿n cá»§a tÃªn tá»™i pháº¡m lÃ  tráº­n cáº§u khá»‘c liá»‡t giá»¯a 2 Ä‘á»™i bÃ³ng Tokyo Spirit vá»›i siÃªu sao Hide vÃ  Big Osaka, nÆ¡i mÃ  Conan vÃ  nhÃ³m thÃ¡m tá»­ nhÃ­ Ä‘ang cÃ³ máº·t.', '', '', 'Conan: Bong Ma Cau Truong,Conan: The Eleventh Strike,Kobun Shizuno,Minami Takayama, Wakana Yamazaki, Rikiya Koyama,Toho Studio'),
(48, 'Má»™t nhÃ³m ngÆ°á»i Ä‘Æ°á»£c phÃ¡i xuá»‘ng má»™t há»‡ thá»‘ng hang Ä‘á»™ng ngáº§m lá»›n nháº¥t tháº¿ giá»›i Ä‘á»ƒ tÃ¬m ngÆ°á»i Ä‘Ã£ khÃ¡m phÃ¡ ra Ä‘á»™ sÃ¢u cá»§a nÃ³. NhÆ°ng trÃªn Ä‘Æ°á»ng thoÃ¡t hiá»ƒm, bá»n há» Ä‘Ã£ pháº£i Ä‘á»‘i Ä‘áº¥u vá»›i nhá»¯ng con quÃ¡i váº­t khÃ¡t mÃ¡u sá»‘ng trong nhá»¯ng con Ä‘Æ°á»ng ngáº§m Ä‘Ã³...', '', 'Hang Cáº¥m, The Cave', 'Hang Cam,The Cave,Bruce Hunt,Piper Perabo, Morris Chestnut, Cole Hauser,Screen Gems , Cinerenta Medienbeteiligungs KG , Lakeshore Entertainment'),
(49, 'Pháº§n 2 tiáº¿p tá»¥c táº­p trung vÃ o cuá»™c Ä‘áº¥u tranh cá»§a Chuck Ä‘á»ƒ giá»¯ kÃ­n cuá»™c sá»‘ng giÃ¡n Ä‘iá»‡p cá»§a mÃ¬nh vÃ  cuá»™c sá»‘ng thá»±c ngoÃ i Ä‘á»i anh chÃ ng báº¯t Ä‘áº§u quen vá»›i viá»‡c lÃ m Ä‘iá»‡p viÃªn. BÃªn cáº¡nh Ä‘Ã³, nhá»¯ng thÃ´ng tin cÆ¡ báº£n vá» dá»± Ã¡n Intersect Ä‘Æ°á»£c tiáº¿t lá»™. Fulcrum, má»™t tá»• chá»©c hoáº¡t Ä‘á»™ng lÃ  káº» thÃ¹ cá»§a Intersect báº¯t Ä‘áº§u nhÃºng tay vÃ o. NgoÃ i ra, má»‘i quan há»‡ giá»¯a Chuck vÃ  Sarah tiáº¿p tá»¥c phÃ¡t triá»ƒn gáº§n gÅ©i hÆ¡n. Chuck cuá»‘i cÃ¹ng cÅ©ng má»Ÿ lá»i háº¹n hÃ² vá»›i Sarah.', '', 'Chuck 2', 'Chang Diep Vien Tay Mo: Phan 2,Chuck: Season 2,Chris Fedak, Josh Schwartz,Zachary Levi, Yvonne Strahovski, Joshua Gomez,College Hill Pictures Inc., Fake Empire, Wonderland Sound and Vision');
INSERT INTO `ipos_film_info` (`phimid`, `phimtxt`, `phiminfo`, `phimtag`, `timkiem`) VALUES
(50, 'Trong quÃ¡ trÃ¬nh tÃ¬m kiáº¿m báº±ng chá»©ng sau vá»¥ ná»• phÃ , Doug Carlin tÃ¬m tháº¥y xÃ¡c cháº¿t cá»§a má»™t cÃ´ gÃ¡i tráº» cÃ³ nhiá»u dáº¥u hiá»‡u báº¥t thÆ°á»ng vÃ  cÃ´ cÃ³ thá»ƒ Ä‘Ã£ liÃªn láº¡c vá»›i káº» Ä‘Ã¡nh bom. HÆ¡n ná»¯a, Doug cÃ²n nháº­n tháº¥y láº½ ra anh cÃ³ thá»ƒ thay Ä‘á»•i Ä‘Æ°á»£c táº¥t cáº£: Cá»©u Ä‘Æ°á»£c cÃ´ gÃ¡i, cá»©u hÃ ng trÄƒm ngÆ°á»i trÃªn chuyáº¿n phÃ  Ä‘á»‹nh má»‡nh á»Ÿ New Orlean.\r\n\r\nLinh cáº£m vÃ  sá»± nhanh nháº¡y giÃºp anh hiá»ƒu ra sá»± tháº­t Ä‘áº±ng sau chiáº¿c mÃ¡y tá»‘i tÃ¢n tÃ¡i táº¡o hÃ¬nh áº£nh trong quÃ¡ khá»© cá»§a chÃ­nh phá»§ liÃªn bang - Ä‘Ã³ lÃ  anh thá»±c sá»± nhÃ¬n tháº¥y quÃ¡ khá»©, khiáº¿n ngÆ°á»i bá»‹ quan sÃ¡t cÃ³ cáº£m giÃ¡c Ä‘ang bá»‹ theo dÃµi. \r\n\r\nKhÃ¡n giáº£ há»“i há»™p theo dÃµi cuá»™c phiÃªu lÆ°u cá»§a viÃªn thanh tra, tá»« viá»‡c gá»­i má»™t thÃ´ng Ä‘iá»‡p cáº£nh bÃ¡o vá» quÃ¡ khá»© tá»›i chuyá»‡n anh thÃ¢n chinh giÃ£ biá»‡t hiá»‡n táº¡i Ä‘á»ƒ trá»Ÿ vá» thá»i Ä‘iá»ƒm trÆ°á»›c khi xáº£y ra vá»¥ ná»•. HÃ nh Ä‘á»™ng cá»§a Doug khiáº¿n tÆ°Æ¡ng lai bá»‹ &quot;báº» lÃ¡i&quot; sang má»™t hÆ°á»›ng khÃ¡c, dÃ¹ má»i chuyá»‡n váº«n xáº£y ra tÆ°Æ¡ng tá»±.', '', 'DÃ©jÃ  Vu, KÃ½ á»¨c áº¢o GiÃ¡c', 'Ky Uc Ao Giac,Deja Vu,Tony Scott,Denzel Washington, Paula Patton, Jim Caviezel,Touchstone Pictures, Jerry Bruckheimer Films, Scott Free Productions'),
(51, 'HÃ i táº¿t 2013 Ä‘ang nÃ³ng dáº§n lÃªn má»—i ngÃ y khi cÃ³ ráº¥t nhiá»u danh hÃ i Ä‘ua tÃ i. HÃ i táº¿t HoÃ i Linh nÄƒm 2013 cÃ³ gÃ¬ má»›i, theo thÃ´ng tin má»›i nháº¥t thÃ¬ HoÃ i Linh chá»‰ Ä‘Ã³ng duy nháº¥t HÃ i Táº¿t 2013 vá»›i phim hÃ i táº¿t: NhÃ  cÃ³ 5 nÃ ng tiÃªn.\r\n\r\nâ€œNhÃ  cÃ³ 5 nÃ ng TiÃªnâ€ tiÃªu biá»ƒu cho má»™t bá»™ phim hÃ i chiáº¿u Táº¿t. Váº«n nhá»¯ng cÃ´ng thá»©c Ä‘Ã£ cÅ©. DÃ n sao Ä‘Ã¬nh Ä‘Ã¡m   chiÃªu trÃ² gÃ¢y cÆ°á»i = hÃºt khÃ¡ch. â€œNhÃ  cÃ³ 5 nÃ ng tiÃªnâ€ cÃ³ sá»± tham gia cá»§a nghá»‡ sá»¹ hÃ i HoÃ i Linh, Viá»‡t HÆ°Æ¡ng, vÃ  dÃ n â€œsaoâ€ tráº» Ä‘áº¹p nhÆ° NgÃ¢n KhÃ¡nh, Báº£o Anh â€œThe Voiceâ€â€¦ Phim xoay quanh cÃ¢u chuyá»‡n cá»§a má»™t gia Ä‘Ã¬nh cÃ³ 5 cÃ´ con gÃ¡i. Má»—i ngÆ°á»i má»™t tÃ­nh cÃ¡ch, má»—i ngÆ°á»i má»™t sá»‘ pháº­nâ€¦ Ä‘Ã£ lÃ m nÃªn nhá»¯ng tÃ¬nh huá»‘ng hÃ i vá»›i hy vá»ng sáº½ kÃ©o Ä‘Æ°á»£c khÃ¡n giáº£ tá»›i ráº¡p.\r\n\r\nâ€œNhÃ  cÃ³ 5 nÃ ng tiÃªnâ€- lÃ  má»™t trong nhá»¯ng phim khÆ¡i mÃ o Ä‘á»ƒ dÃ²ng phim giáº£i trÃ­ chiáº¿u Táº¿t chuáº©n bá»‹ â€œbungâ€ ra trÃ n ngáº­p cÃ¡c ráº¡p. Nhá»¯ng cÃ¡i tÃªn phim khÃ¡c Ä‘ang Ä‘Æ°á»£c nháº¯c Ä‘áº¿n lÃ  Má»¹ nhÃ¢n káº¿, YÃªu anh em dÃ¡m khÃ´ng, Hiá»‡p sÄ© guá»‘c vuÃ´ng, Bay vÃ o cÃµi má»™ngâ€¦ Háº§u háº¿t cÃ¡c phim Ä‘á»u Ä‘ang chuáº©n bá»‹ nhá»¯ng chiáº¿n dá»‹ch PR, quáº£ng cÃ¡o ráº§m rá»™ trÆ°á»›c khi chÃ­nh thá»©c ra ráº¡p.  \r\n\r\nDiá»…n viÃªn trong phim &quot;NhÃ  cÃ³ 5 nÃ ng tiÃªn&quot;\r\nXÆ°a nay, cÃ¡c Ä‘áº¡o diá»…n vÃ  cÃ¡c nhÃ  sáº£n xuáº¥t luÃ´n quan niá»‡m, thá»‹ trÆ°á»ng Táº¿t lÃ  thá»‹ trÆ°á»ng cá»§a nhá»¯ng phim giáº£i trÃ­. Nhá»¯ng nhÃ  lÃ m phim â€œmáº·c Ä‘á»‹nhâ€, nhá»¯ng ngÃ y Táº¿t khÃ¡n giáº£ sáº½ chá»‰ thÃ­ch xem nhá»¯ng bá»™ phim hÃ i hÆ°á»›c, vui váº», nháº¹ nhÃ ng Ä‘á»ƒâ€¦ thoáº£i mÃ¡i. NÃªn, vá»›i dÃ²ng phim chiáº¿u Táº¿t, tÃ­nh giáº£i trÃ­, gÃ¢y cÆ°á»i, luÃ´n Ä‘Æ°á»£c Ä‘áº·t lÃªn hÃ ng Ä‘áº§u. Tuy nhiÃªn, cÃ³ nhiá»u phim, vÃ¬ máº£i mÃª â€œgÃ¢y cÆ°á»iâ€, â€œtáº¡o hÃ iâ€ Ä‘Ã£ trá»Ÿ thÃ nhâ€¦ tháº£m há»a vÃ¬ sá»± nháº£m nhÃ­, nháº¡t nháº½o.\r\n\r\nDáº«u váº­y, Táº¿t váº«n lÃ  thá»‹ trÆ°á»ng lÃ m Äƒn lá»›n nháº¥t trong nÄƒm cá»§a phim Viá»‡t. Nhá»¯ng bá»™ phim giáº£i trÃ­ váº«n tÃ¬m Ä‘Æ°á»£c Ä‘á»‘i tÆ°á»£ng khÃ¡n giáº£ riÃªng. Miáº¿ng bÃ¡nh thá»‹ pháº§n ngÃ y cÃ ng bá»‹ chia nhá». â€œNhÃ  cÃ³ 5 nÃ ng tiÃªnâ€ Ä‘Ã£ chÃ­nh thá»©c lÃªn tiáº¿ng khÆ¡i mÃ o Ä‘á»ƒ loáº¡t phim giáº£i trÃ­ khÃ¡c á»“ áº¡t chuáº©n bá»‹â€¦ â€œtung hoÃ nhâ€.', '', 'Nha Co 5 Nang Tien', 'Nha Co 5 Nang Tien,Nha Co 5 Nang Tien,Tran Ngoc Giau,Hoai Linh, Viet Huong, Bao Anh The Voice, Ngan Khanh, Minh Thao, Miu Le, Truong Nhi,'),
(52, 'GiÃ¡o SÆ° Wai, má»™t nhÃ  thÃ¡m hiá»ƒm Ä‘á»“ng thá»i cÅ©ng lÃ  má»™t tÃªn cÆ°á»›p má»™ du hÃ nh vÃ²ng quanh tháº¿ giá»›i Ä‘á»ƒ tÃ¬m kiáº¿m nhá»¯ng báº£o váº­t vÃ´ giÃ¡.  Äáº¿n má»™t ngÃ y, anh pháº£i Ä‘á»‘i Ä‘áº§u vá»›i má»™t nhÃ³m ngÆ°á»i Nháº­t Báº£n vÃ¬ kho bÃ¡u anh Ä‘ang tÃ¬m kiáº¿m láº¡i lÃ  linh váº­t cá»§a há»...', '', '', 'Ke Cuop Mo,Grave robbers,Siu-Tung Ching,Rosamund Kwan, Takeshi Kaneshiro, Ly Lien Kiet,Win&#39s Entertainment Ltd., Eastern Productions, China Film Co-Production Corporation'),
(53, 'Trong 1 láº§n tá»›i Honolulu, Hawaii, mÃ¡y bay cá»§a nhÃ³m Scooby-Doo bá»‹ há»ng vÃ  báº¥t Ä‘áº¯c dÄ© pháº£i háº¡ cÃ¡nh táº¡i thá»‹ tráº¥n Tibet. Táº¡i Ä‘Ã¢y Scooby vÃ  Shaggy Ä‘Ã£ bá»‹ 2 con ma vá»¥ng vá» tÃªn Bogel vÃ  Weerd lá»«a vÃ  Ä‘Ã£ giáº£i thoÃ¡t cho 13 con ma nguy hiá»ƒm nháº¥t tháº¿ giá»›i. DÄ© nhiÃªn, chá»‰ cÃ³ ai giáº£i thoÃ¡t chÃºng má»›i cÃ³ thá»ƒ báº¯t chÃºng láº¡i láº§n ná»¯a. Váº­y lÃ  nhÃ³m báº¡n bá»‹ cuá»‘n vÃ o cuá»™c phiÃªu lÆ°u má»›i - truy báº¯t 13 con ma trÆ°á»›c khi chÃºng phÃ¡ háº¡i TrÃ¡i Ä‘áº¥t. Vá»›i sá»± giÃºp Ä‘á»¡ cá»§a 1 cáº­u bÃ© tÃªn Flim Flam vÃ  1 nhÃ  tháº§n bÃ­ vá»›i quáº£ cáº§u tiÃªn tri mÃ u nhiá»‡m, liá»‡u nhÃ³m Scooby-Doo cÃ³ hoÃ n thÃ nh nhiá»‡m vá»¥? By: Itfriend Subbing Team', '', 'The 13 Ghosts of Scooby-Doo', 'Scooby Doo - 13 Bong Ma,Scooby Doo - 13 Ghosts,'),
(58, 'Bá»™ phim lÃ  cuá»™c phiÃªu lÆ°u trÃªn biá»ƒn cá»§a hai thá»£ láº·n chuyÃªn nghiá»‡p Sebastion vÃ  Dani. Há» Ä‘Æ°á»£c thuÃª Ä‘á»ƒ láº·n xuá»‘ng vÃ¹ng biá»ƒn nguy hiá»ƒm Ä‘á»ƒ tÃ¬m kiáº¿m kho bÃ¡u bÃ­ áº©n cá»§a Columbus vá»›i tiá»n cÃ´ng háº­u hÄ©nh. NhÆ°ng khi dáº¥n thÃ¢n vÃ o hÃ nh trÃ¬nh, há» Ä‘Ã£ bá»‹ Ä‘áº©y vÃ o nhá»¯ng tÃ¬nh tháº¿ nguy hiá»ƒm, thá»­ thÃ¡ch Ã½ chÃ­ sá»‘ng cÃ²n...', '', 'Kho Bau Dai Duong, Into the Blue 2: The ReefÂ 2009', 'Kho Bau Dai Duong,Into the Blue 2: The ReefÂ 2009,Into the Blue 2: The Reef,Chris Carmack, Laura Vandervoort,Marsha Thomason,Brookwell-McNamara Entertainment, MGM Home Entertainment, Mandalay Pictures'),
(59, 'MÆ°á»i hai nÄƒm trÆ°á»›c, Cá»­u VÄ© Há»“ Ly ChÃ­n ÄuÃ´i bá»—ng dÆ°ng thoÃ¡t khá»i phong áº¥n vÃ  tÃ n phÃ¡ ngÃ´i lÃ ng ninja Má»™c Diá»‡p.', '', 'Naruto: Ninja Lang Moc Diep, Naruto Dattebayo', 'Naruto: Ninja Lang Moc Diep,Naruto Dattebayo,Hayato Date,Madman Entertainment, Manga Entertainment'),
(63, 'Phim ká»ƒ vá» Ä‘á»™i phÃ¡ Ã¡n Ä‘áº·c biá»‡t Phi Há»• cá»§a lá»±c lÆ°á»£ng cáº£nh sÃ¡t Há»“ng KÃ´ng, há» cÃ³ nhiá»‡m vá»¥ chá»‘ng khá»§ng bá»‘, giáº£i cá»©u con tin, vÃ  cÃ¡c tá»™i pháº¡m Ä‘Æ°á»£c coi lÃ  nguy hiá»ƒm mÃ  cáº£nh sÃ¡t bÃ¬nh thÆ°á»ng khÃ´ng thá»ƒ giáº£i quyáº¿t ná»•i. Nhá»¯ng thÃ nh viÃªn Ä‘á»u cÃ³ nÄƒng lá»±c xuáº¥t sáº¯c riÃªng, bÃªn cáº¡nh Ä‘Ã³ lÃ  nhá»¯ng tÃ¢m tÆ° tÃ¬nh cáº£m, chuyá»‡n tÃ¬nh tay ba phá»©c táº¡p. Phim cÃ³ sá»± tham gia cá»§a nhiá»u diá»…n viÃªn ná»•i tiáº¿ng cá»§a Ä‘Ã i TVB nhÆ° TuyÃªn HuyÃªn, MÃ£ Äá»©c Chung,...', '', 'Phi Ho, Tiger Cubs', 'Phi Ho,Tiger Cubs,Lam Chi Hoa,Tuyen Huyen, Ma Duc Chung, Lam Gia Hoa,TVB'),
(64, 'VÃ o thá»i HÃ m Phong nhÃ  Thanh giá»¯a tháº¿ ká»· 19, tÃªn thÃ¡i giÃ¡m LÃ½ LiÃªn Anh nháº­p cung vÃ  trá»Ÿ thÃ nh ngÆ°á»i háº§u cáº©n bÃªn cáº¡nh Ã QuÃ½ phi, Ã QuÃ½ phi sinh háº¡ thÃ¡i tá»­ nhÆ°ng HÃ m Phong sá»£ bÃ  lÃ  Ä‘áº¡i hoáº¡, ra lá»‡nh muá»‘n giáº¿t bÃ , may máº¯n LÃ½ LiÃªn Anh biáº¿t Ä‘Æ°á»£c nÃªn Ä‘Ã£ giÃºp Ã QuÃ½ phi diá»…n ká»‹ch trÆ°á»›c máº·t hoÃ ng Ä‘áº¿ mÃ  thoÃ¡t tá»™i cháº¿t, tá»« Ä‘Ã³ lÃ  káº» tÃ­n cáº©n cá»§a Ã QuÃ½ phi.', '', 'Dai Thai Giam, The Confidant', 'Dai Thai Giam,The Confidant,Thich Ky Nghia,Le Dieu Tuong, Me Tuyet, Thieu My Ky, Huynh Hao Nhien,TVB'),
(65, 'Bá»‡nh viá»‡n Mercy á»Ÿ Há»“ng KÃ´ng lÃ  nÆ¡i nhá»¯ng bÃ¡c sÄ© tráº» táº­n tá»¥y Ä‘ang ngÃ y Ä‘Ãªm cá»‘ng hiáº¿n Ä‘á»ƒ giÃ nh giáº­t sá»± sá»‘ng cho bá»‡nh nhÃ¢n. Xoay quanh há» lÃ  nhá»¯ng cÃ¢u chuyá»‡n tÃ¬nh cáº£m ráº¯c rá»‘i mÃ  khÃ´ng thá»ƒ nÃ o &quot;pháº«u thuáº­t&quot; Ä‘Æ°á»£c. Phim cÃ³ sá»± tham gia cá»§a diva Há»“ng KÃ´ng Dung Tá»• Nhi.', '', 'Cuoc Goi 36 Gio, The Hippocratic Crush', 'Cuoc Goi 36 Gio,The Hippocratic Crush,Phan Gia Duc,Ma Quoc Minh, Duong Di, Dung To Nhi,TVB'),
(66, 'Transporter: The Series sáº½ Ä‘Æ°a khÃ¡n giáº£ trá»Ÿ láº¡i vá»›i â€œngÆ°á»i váº­n chuyá»ƒnâ€ chuyÃªn nghiá»‡p Frank Martin ná»•i tiáº¿ng vá»›i quy táº¯c thÃ©p vÃ  nhá»¯ng chuyáº¿n phiÃªu lÆ°u há»“i há»™p. Trong phiÃªn báº£n truyá»n hÃ¬nh, nhÃ¢n váº­t Frank do nam diá»…n viÃªn Chris Vance thá»ƒ hiá»‡n.', '', 'Nguoi Van Chuyen, Transporter: The Series', 'Nguoi Van Chuyen,Transporter: The Series,Luc Besson,Chris Vance,FranÃ§ois Berleand  ,Andrea Osvart,Brad Turner, Fred Fuchs'),
(67, 'Qua hÃ ng ngÃ n nÄƒm, má»™t káº¿t giá»›i vá»¯ng chÃ£i ngÄƒn cÃ¡ch giá»¯a Westland hiá»n hÃ²a vÃ  vÃ¹ng Ä‘áº¥t cá»§a phÃ¡p thuáº­t - Midlands. NgoÃ i ra cÃ²n cÃ³ vÃ¹ng Ä‘áº¥t bÃ­ áº©n D&#39Hara Ä‘ang náº±m dÆ°á»›i sá»± thá»‘ng trá»‹ cá»§a Darken Rahl.', '', ',,,Tam Thu Huyen Thoai: Phan 1, Legend Of The Seeker: Season 1', 'Tam Thu Huyen Thoai: Phan 1,Legend Of The Seeker: Season 1,Mark Beesley,Craig horner, Bridget regan, Bruce spence,ABC Studios'),
(68, 'Phim xoay quanh nhá»¯ng cÃ¢u chuyá»‡n vá» khiÃªu vÅ© vÃ  tÃ¬nh yÃªu Ä‘Ã´i lá»©a.HoÃ ng QuÃ¢n lÃ  má»™t thanh niÃªn á»Ÿ tá»‰nh láº½,anh ta pháº£i lÃªn nhÃ  cáº­u á»Ÿ thÃ nh phá»‘ Ä‘á»ƒ sinh sá»‘ng vÃ¬ HoÃ ng QuÃ¢n bá»‹ má»“ cÃ´i máº¹, khÃ´ng nÆ¡i nÆ°Æ¡ng nhá».CÃ²n Thu DuyÃªn lÃ  tiá»ƒu thÆ° giÃ u cÃ³ nhÆ°ng cÃ³ niá»m Ä‘am mÃª há»c nháº£y chÃ¡y bá»ng, nhÆ°ng gia Ä‘Ã¬nh cÃ´ muá»‘n cÃ´ pháº£i theo nghiá»‡p kinh doanh,báº¯t Thu DuyÃªn pháº£i bÃµ niá»m Ä‘am mÃª cá»§a mÃ¬nhâ€¦.', '', ',,Vu Dieu Tinh Yeu, Vu Dieu Tinh Yeu', 'Vu Dieu Tinh Yeu,Vu Dieu Tinh Yeu,Dang Luu Viet Bao,Phuong Trinh, Thanh Ngoc, Phung Ngoc Huy, Minh Beo,'),
(69, 'ÄÆ°á»£c chuyá»ƒn thá»ƒ tá»« tiá»ƒu thuyáº¿t cÃ¹ng tÃªn cá»§a Cá»• Long, nÃ³ vá» 4 ngÆ°á»i huynh Ä‘á»‡ tÃ¬nh nhÆ° thá»§ tÃºc Máº¡nh Tinh Há»“n, Diá»‡p TÆ°á»ng, Tháº¡ch QuÃ¢n, Tiá»ƒu HÃ . Tá»« nhá» há» Ä‘Ã£ Ä‘Æ°á»£c Cao LÃ£o Äáº¡i - Cao Äáº¡i Táº©u nuÃ´i náº¥ng vÃ  Ä‘Ã o táº¡o thÃ nh nhá»¯ng sÃ¡t thá»§.', '', 'Luu Tinh Ho Diep Kiem, Meteor, Butterfly, Sword', 'Luu Tinh Ho Diep Kiem,Meteor, Butterfly, Sword,Ly Hue Dan,Tran So Ha,Vuong Diem, Tran Y Ham,Cong ty TNHH Hoa Sach Triet Giang'),
(70, 'MÃ¡y tÃ­nh phÃ¢n tÃ­ch Ä‘Æ°á»£c danh tÃ­nh cá»§a &quot;Káº» TÃ¬nh Nghi&quot; lÃ  Caroline Turing hay cÃ²n Ä‘Æ°á»£c gá»i lÃ  Root. Tuy nhiÃªn chÃ­nh cÃ´ ta Ä‘Ã£ láº¡i dá»¥ng ngÆ°á»£c láº¡i há»‡ thá»‘ng mÃ¡y tÃ­nh nÃ y Ä‘á»ƒ tÃ¬m ra vá»‹ trÃ­ cá»§a Finch. Finch bá»‹ Root tÃ³m gá»n sau khi Ä‘á»ƒ láº¡i cho Reese má»™t dÃ£y sá»‘ bÃ­ máº­t.', '', 'Ke Tinh Nghi: Phan 2, Person of Interest: Season 2', 'Ke Tinh Nghi: Phan 2,Person of Interest: Season 2,Richard J. Lewis,Jim caviezel, Taraji p. henson, Kevin chapman,Kilter Films, Bad Robot, Warner Bros. Television'),
(71, '24 nÄƒm trÆ°á»›c, minh chá»§ vÃµ lÃ¢m DÆ°Æ¡ng ThÆ°á»ng Phong bá»‹ giáº¿t má»™t cÃ¡ch tháº§n bÃ­, trá»Ÿ thÃ nh huyá»n Ã¡n trong vÃµ lÃ¢m. 24 nÄƒm sau, PhÃ³ Há»“ng Tuyáº¿t - hiá»‡u xÆ°ng con trai duy nháº¥t cá»§a DÆ°Æ¡ng ThÆ°á»ng Phong xuáº¥t hiá»‡n Ä‘á»ƒ bÃ¡o thÃ¹.', '', ',Thien Nhai Minh Nguyet Dao, The Magic Blade', 'Thien Nhai Minh Nguyet Dao,The Magic Blade,Lai Thuy Thanh,Chung han luong, Tran so ha, Truong mong, Truong dinh ham,Ho Nam'),
(72, 'Äáº¡i Ä‘á»‡ tá»­ VÃµ Äang TrÃ¡c Nháº¥t HÃ ng trÃªn Ä‘Æ°á»ng Ä‘i cá»©u cha Ä‘Ã£ gáº·p thÃ nh chá»§ Minh Nguyá»‡t Hiá»‡p lÃ  nÃ ng Luyá»‡n NghÃª ThÆ°á»ng.', '', 'Tan Bach Phat Ma Nu Truyen, The Bride with White Hair', 'Tan Bach Phat Ma Nu Truyen,The Bride with White Hair,Hoang Vy Kiet,Ngo ky long, Phan thieu hoang, Ma to,Luu Tieu Phong, Ngo Ky Long'),
(73, '500 nÄƒm trÆ°á»›c, má»™t vá»‹ tÆ°á»›ng quÃ¢n Ä‘Ã£ dáº¥u má»™t kho bÃ¡u bÃªn trong quÃ¢n cá» tá»­ tháº§n - The Chess of Death. Truyá»n ráº±ng ai cÃ³ thá»ƒ chiáº¿m Ä‘Æ°á»£c kho bÃ¡u nÃ y sáº½ cÃ³ thá»ƒ lÃ m bÃ¡ chá»§ vÃµ lÃ¢m. Ráº¥t nhiá»u mÃ´n phÃ¡i trong vÃµ lÃ¢m Ä‘ang tÃ¬m kiáº¿m 2 báº£o váº­t, trong Ä‘Ã³ cÃ³ Sinh Tá»­ Kiáº¿m - the Sword of Life and Death cÃ³ thá»ƒ má»Ÿ Ä‘Æ°á»£c cá»­a kho bÃ¡u.', '', 'Ma Kiem Sinh Tu Ky, The Sword and the Chess of Death', 'Ma Kiem Sinh Tu Ky,The Sword and the Chess of Death,Ly Truyen Phong,Luu dao, duong quoc cuong, Lu luong vy,Tap doan dien anh Nga Mi, Tong cong ty dien anh Trung Quoc'),
(74, 'Isabella Swan, 17 tuá»•i, thÆ°á»ng gá»i lÃ  Bella, tá»« Phoenix chuyá»ƒn Ä‘áº¿n thá»‹ tráº¥n nhá» Forks, Washington sinh sá»‘ng cÃ¹ng cha Charlie Swan. Sá»± cÃ³ máº·t cá»§a cÃ´ á»Ÿ Ä‘Ã¢y Ä‘Ã£ lÃ m cÃ¡c há»c sinh nam Ä‘iÃªu Ä‘á»©ng.', '', ',Chang Vang, The Twilight Saga 1: Twilight', 'Chang Vang,The Twilight Saga 1: Twilight,Catherine Hardwicke,Kristen Stewart, Robert Pattinson, Justin Chon,Summit Entertainment, Temple Hill Entertainment, Maverick Films'),
(75, 'Vá»¥ viá»‡c báº¯t Ä‘áº§u tá»« cÃ´ng trÃ¬nh nghiÃªn cá»©u cá»§a tiáº¿n sá»¹ Ä‘iÃªn loáº¡n Yenyen lÃ m phÃ¡t tÃ¡n má»™t loáº¡i virus khiáº¿n cho nhá»¯ng thÃ¢y ma bá»‹ nhiá»…m xáº¡ vÃ  má»c má»¥n kháº¯p ngÆ°á»i. LÅ© thÃ¢y ma trá»Ÿ nÃªn hung hÄƒng vÃ  khÃ¡t mÃ¡u di chuyá»ƒn vÃ o thÃ nh phá»‘ táº¥n cÃ´ng dÃ¢n thÆ°á»ng...', '', 'Thay Ma Nhiem Xa, Zombie 108', 'Thay Ma Nhiem Xa,Zombie 108,Joe Chein,Morris Rong,Yvonne Yao,Sona Eyambe,Heyshine International Co.'),
(76, 'Nhá»¯ng mÃ³n Ä‘á»“ chÆ¡i trong phÃ²ng táº¯m chÆ°a bao giá» Ä‘Æ°á»£c khÃ¡m phÃ¡ trong cÃ¡c phim Toy Story, vÃ  vá»›i Partysaurus Rex chÃºng sáº½ Ä‘Æ°á»£c giá»›i thiá»‡u theo má»™t phong cÃ¡ch ráº¥t... Pixar vá»›i mÃ u sáº¯c, sá»± hÃ i hÆ°á»›c vÃ  dÄ© nhiÃªn lÃ  chá»— nÃ o cÅ©ng ngáº­p ngá»¥a bong bÃ³ng xÃ  bÃ´ng.', '', 'Bua Tiec Trong Phong Tam, Partysaurus Rex', 'Bua Tiec Trong Phong Tam,Partysaurus Rex,Mark A. Walsh,Tom Hanks , Tim Allen , Wallace Shawn,Pixar Animation Studios'),
(77, 'Má»™t biá»‡t Ä‘á»™i tinh nhuá»‡ Ä‘Ã£ Ä‘Æ°á»£c cá»­ Ä‘áº¿n vÃ¹ng Amazon hoang sÆ¡ Ä‘á»ƒ giáº£i cá»©u nhÃ  sinh há»c bá»‹ nhÃ³m quÃ¢n ná»•i loáº¡n báº¯t cÃ³c. TrÃªn Ä‘Æ°á»ng trá»Ÿ vá» há» Ä‘Ã£ trá»Ÿ thÃ nh Ä‘á»‘i tÆ°á»£ng sÄƒn má»“i cá»§a má»™t sinh váº­t Ä‘áº¿n tá»« thá»i tiá»n sá»­ sÄƒn Ä‘uá»•i ...', '', 'Biet Doi Diet Khung Long, Jurassic Attack', 'Biet Doi Diet Khung Long,Jurassic Attack,Anthony Fankhauser,Gary Stretch, Corin Nemec, Vernon Wells,Little Dragon Productions'),
(78, 'CÃ¢u chuyá»‡n tÃ¬nh lÃ£ng máº¡n xáº£y ra táº¡i London vÃ o mÃ¹a hÃ¨ nÄƒm 1593. NhÃ  soáº¡n ká»‹ch tráº» tuá»•i Will Shakespeare Ä‘ang cá»‘ gáº¯ng hoÃ n thÃ nh vá»Ÿ ká»‹ch cuá»‘i cÃ¹ng cá»§a mÃ¬nh mang tÃªn Romeo and Ethel, the Pirateâ€™s Daughter (Romeo vÃ  Ethel, con gÃ¡i káº» cÆ°á»›p biá»ƒn). Anh gáº·p nhiá»u khÃ³ khÄƒn do khÃ´ng cÃ³ cáº£m há»©ng sÃ¡ng tÃ¡c thá»±c sá»± vÃ  vá»Ÿ ká»‹ch rÆ¡i vÃ o báº¿ táº¯c.', '', 'Shakespeare Dang Yeu, Shakespeare in Love', 'Shake speare Dang Yeu,Shake speare in Love,John Madden,Gwyneth Paltrow, Joseph Fiennes, Geoffrey Rush,Universal Pictures, Miramax Films, Bedford Falls Productions'),
(79, 'Cáº£ tÃ²a thÃ¡p chÃ¬m trong biá»ƒn lá»­a, chÃ´n vÃ¹i nhá»¯ng hoáº£ng loáº¡n cá»§a con ngÆ°á»i vÃ o mÃ u Ä‘á» hung báº¡o, Ä‘Ãªm GiÃ¡ng sinh trá»Ÿ thÃ nh Ä‘Ãªm cá»§a Ä‘á»‹a ngá»¥c. Má»™t ngÆ°á»i lÃ­nh cá»©u há»a Kang Young-gi, má»™t quáº£n lÃ½ nhÃ  hÃ ng Yoon-hee, má»™t báº£o vá»‡ tÃ²a nhÃ  Lee Dae-ho, cÃ¹ng nhá»¯ng ngÆ°á»i khÃ¡c káº¹t láº¡i trong Ä‘Ã¡m chÃ¡y. Há» sáº½ lÃ m gÃ¬ Ä‘á»ƒ thoÃ¡t khá»i bÃ n tay tá»­ tháº§n?Â ', '', 'Thap Lua, The Tower', 'Thap Lua,The Tower,Ji-hoon Kim,Sang-kyung Kim,Sul Kyung-gu,  Ye-jin Son,CJ Entertainment'),
(80, 'LÃ  má»™t cáº­u bÃ© tÃ i nÄƒng, Lewis sá»Ÿ há»¯u trong tay hÃ ng chá»¥c phÃ¡t minh, trong Ä‘Ã³ cÃ³ má»™t cÃ´ng cá»¥ giÃºp con ngÆ°á»i tÃ¬m láº¡i kÃ½ á»©c Ä‘Ã£ máº¥t. Dá»± Ä‘á»‹nh tÃ¬m láº¡i ngÆ°á»i máº¹ tháº¥t láº¡c nÄƒm xÆ°a cá»§a Lewis dá»±a vÃ o phÃ¡t minh nÃ y chÆ°a ká»‹p thá»±c hiá»‡n thÃ¬ nÃ³ Ä‘Ã£ bá»‹ Ä‘Ã¡nh cáº¯p.', '', 'Gia Dinh Tuong Lai, Meet the Robinsons', 'Gia Dinh Tuong Lai,Meet the Robinsons,Stephen J. Anderson,Angela bassett, Daniel hansen, Wesley singerman,Walt Disney Animation Studios, Walt Disney Pictures'),
(81, 'VÆ°Æ¡ng quá»‘c tháº§n linh Asgard lÃ  nÆ¡i hoÃ ng Ä‘áº¿ Odin vÃ  cÃ¡c vá»‹ tháº§n cÆ° ngá»¥. Vá»‹ tháº§n tráº» Thor Ä‘áº§y sá»©c máº¡nh nhÆ°ng cÅ©ng khÃ´ng kÃ©m ngáº¡o máº¡n. VÃ¬ má»™t láº§n báº¥t tuÃ¢n lá»‡nh Odin, Thor bá»‹ vua cha tÆ°á»›c Ä‘i sá»©c máº¡nh vÃ  Ä‘Ã y xuá»‘ng háº¡ giá»›i.\r\n	\r\nTáº¡i Ä‘Ã¢y, anh náº£y sinh tÃ¬nh cáº£m vá»›i ná»¯ bÃ¡c há»c Jane, ngÆ°á»i Ä‘Ã£ giÃºp Ä‘á»¡ anh hiá»ƒu vá» tháº¿ giá»›i loÃ i ngÆ°á»i láº«n nhá»¯ng bÃ i há»c cuá»™c sá»‘ng. Khi má»™t káº» tá»« Asgard Ã¢m mÆ°u Ä‘e dá»a TrÃ¡i Ä‘áº¥t, Thor pháº£i tÃ¬m láº¡i sá»©c máº¡nh trÆ°á»›c kia cá»§a mÃ¬nh Ä‘á»ƒ cá»©u giÃºp nhÃ¢n loáº¡i.', '', ',Than Sam Set, Thor', 'Than Sam Set,Thor,Kenneth Branagh,Anthony hopkins, Natalie portman, Chris hemsworth, Tom hiddleston,Paramount Pictures, Marvel Entertainment, Marvel Studios'),
(82, 'Bá»‹ báº¯t quay láº¡i nhÃ  dÃ¬ dÆ°á»£ng trong ká»³ nghá»‰ hÃ¨, Harry Potter nhá»› ngÃ´i trÆ°á»ng phÃ¹ thá»§y vÃ  cÃ¡c báº¡n tá»›i phÃ¡t bá»‡nh. Cáº­u Ä‘Ã³n má»™t vá»‹ khÃ¡ch báº¥t ngá»: Con gia tinh Dobby, kÃ¨m lá»i cáº£nh bÃ¡o khÃ´ng quay láº¡i trÆ°á»ng Hogwarst náº¿u khÃ´ng muá»‘n tÃ­nh máº¡ng bá»‹ Ä‘e dá»a.\r\n	\r\nPhá»t lá» lá»i Ä‘e dá»a cá»§a Dobby, Harry quay láº¡i Hogwarst. ÄÃºng nhÆ° lá»i cáº£nh bÃ¡o, hÃ ng loáº¡t sá»± kiá»‡n ká»³ láº¡ diá»…n ra. VÃ  bÃ­ máº­t lá»›n nháº¥t lÃ  thÃ´ng Ä‘iá»‡p viáº¿t báº±ng mÃ¡u trÃªn tÆ°á»ng ngÃ´i trÆ°á»ng: &quot;PhÃ²ng chá»©a bÃ­ máº­t Ä‘Ã£ má»Ÿ...&quot;', '', ',Phong Chua Bi Mat, Harry Potter and the Chamber of Secrets', 'Phong Chua Bi Mat,Chamber of Secrets,Chris Columbus,Daniel radcliffe, Rupert grint, Emma watson, Toby jones,1492 Pictures, Heyday Films, MIRACLE Productions GmbH &amp; Co. KG'),
(83, 'VÃ¬ bÃ¡n ráº» tÃ i nÄƒng mÃ  Thiáº¿t CÆ°á»›c, cáº§u thá»§ danh tiáº¿ng má»™t thá»i, trá»Ÿ thÃ nh lÃ£o huáº¥n luyá»‡n viÃªn nÃ¡t rÆ°á»£u. Ã”ng gáº·p Tinh, chÃ ng vÃµ sÆ° muá»‘n truyá»n bÃ¡ kungfu ra toÃ n tháº¿ giá»›i. Cáº£ hai báº¯t tay láº­p Ä‘á»™i bÃ³ng vÃ  kÃªu gá»i cÃ¡c huynh Ä‘á»‡ Thiáº¿u lÃ¢m xÆ°a gia nháº­p. Äá»™i bÃ³ng ká»³ láº¡ báº¯t Ä‘áº§u gia nháº­p lÃ ng tÃºc cáº§u.', '', 'Doi Bong Thieu Lam, Shaolin Soccer', 'Doi Bong Thieu Lam,Shaolin Soccer,Chau Tinh Tri,Chau tinh tri, Trieu vy, Ngo man dat, Vicky zhao, Stephen chow,Star Overseas, Universe Entertainment'),
(84, 'Pháº§n 2 cá»§a series ná»•i tiáº¿ng Power rangers. Sau nhá»¯ng tháº¥t báº¡i cá»§a phÃ¹ thá»§y Rita, ChÃºa quá»· Zedd Ä‘Ã£ Ä‘áº¿n TrÃ¡i Äáº¥t Ä‘á»ƒ trá»«ng pháº¡t má»¥ vÃ  tiáº¿p tá»¥c cuá»™c chiáº¿n vá»›i cÃ¡c siÃªu nhÃ¢n.', '', ',,,,,Sieu Nhan Khung Long: Phan 2, Power Rangers: Mighty Morphin: Season 2', 'Sieu Nhan Khung Long: Phan 2,Power Rangers: Season 2,Ronnie Hadar,Amy jo johnson, Thuy trang, Austin st. john, Walter emanuel jones , David yost,Saban Entertainmentm Renaissance Atlantic Entertainment'),
(85, 'NÄƒm 2035, sá»± lá»‡ thuá»™c vÃ o ngÆ°á»i mÃ¡y cá»§a nhÃ¢n loáº¡i Ä‘Ã£ trá»Ÿ nÃªn quÃ¡ Ä‘Ã . Robot ngÃ y cÃ ng tá»‘i tÃ¢n, nhÆ°ng váº«n tuÃ¢n theo 3 nguyÃªn táº¯c cÄƒn báº£n lÃ  phá»¥c tÃ¹ng, vÃ  hÆ¡n háº¿t, khÃ´ng Ä‘Æ°á»£c xÃ¢m háº¡i con ngÆ°á»i.', '', 'Toi, Nguoi May, I, Robot', 'Toi, Nguoi May,I, Robot,Alex Proyas,Will Smith, Bridget Moynahan, Alan Tudyk,Twentieth Century Fox Film Corporation, Davis Entertainment, Laurence Mark Productions'),
(86, 'Äá»ƒ tráº£ thÃ¹ cho cÃ¡i cháº¿t cá»§a ngÆ°á»i tÃ¬nh cÅ©, Ranveer buá»™c pháº£i Ä‘á»‘i máº·t vá»›i Armaan Mallik, Ã´ng trÃ¹m khÃ©t tiáº¿ng cá»§a bÄƒng Ä‘áº£ng mafia ngÆ°á»i áº¤n táº¡i chÃ¢u Ã‚u. Äá»ƒ tiáº¿p cáº­n vá»›i káº» thÃ¹, Ranveer Ä‘Ã£ tÃ¡n tá»‰nh Aleena, em gÃ¡i nuÃ´i cá»§a Mallik láº«n cáº£ cÃ´ nÃ ng Omisha - hÃ´n thÃª cá»§a káº» thÃ¹. Khi káº¿ hoáº¡ch tráº£ thÃ¹ Ä‘ang diá»…n ra trÃ´i cháº£y, Ranveer phÃ¡t hiá»‡n ra mÃ¬nh Ä‘Ã£ máº¯c pháº£i má»™t sai láº§m cháº¿t ngÆ°á»i: anh Ä‘Ã£ Ä‘em lÃ²ng yÃªu Omisha. Liá»‡u cáº¡m báº«y nÃ o Ä‘Ã³ Ä‘ang chá» Ä‘Ã³n Ranveer trong cuá»™c chÆ¡i Ä‘áº§y oan nghiá»‡t nÃ y?', '', 'Duong Dua Mau, Race 2', 'Duong Dua Mau,Race 2,Abbas Alibhai Burmawalla, Mastan Alibhai Bur,Saif Ali Khan, Anil Kapoor,  John Abraham,UTV Motion Pictures, Tips Films Pvt. Ltd., Illuminati Films'),
(87, 'Trong vÅ© trá»¥ cÃ³ má»™t lá»±c lÆ°á»£ng nhá» nhÆ°ng Ä‘áº§y quyá»n nÄƒng Ä‘Ã£ tá»“n táº¡i hÃ ng tháº¿ ká»· Ä‘Æ°á»£c gá»i lÃ  â€˜Green Lantern Corpsâ€™ - nhá»¯ng ngÆ°á»i cÃ³ sá»© má»‡nh báº£o vá»‡ hÃ²a bÃ¬nh vÃ  cÃ´ng lÃ½. CÃ¡c chiáº¿n binh thá» giá»¯ Ä‘Ãºng vá»‹ trÃ­ giá»¯a cÃ¡c thiÃªn hÃ  vÃ  má»—i Green Lantern Ä‘eo má»™t chiáº¿c nháº«n chá»©a nhá»¯ng sá»©c máº¡nh phi thÆ°á»ng.', '', 'Nguoi Hung Vu Tru, Green Lantern', 'Nguoi Hung Vu Tru,Green Lantern,Martin Campbell,Ryan reynolds, Blake lively, Peter sarsgaard, Mark strong,Warner Bros. Pictures, De Line Pictures, DC Entertainment'),
(88, 'Toby lÃ  con trai cá»§a Tiáº¿n SÄ© Tenma - má»™t thiÃªn tÃ i cháº¿ táº¡o vÅ© khÃ­ cho quÃ¢n Ä‘á»™i cá»§a thÃ nh phá»‘ Metro, nÆ¡i xa hoa cá»§a loÃ i ngÆ°á»i trong tÆ°Æ¡ng lai. Do sai láº§m cá»§a Tenma , Toby qua Ä‘á»i nhÆ°ng Ä‘Æ°á»£c tÃ¡i táº¡o dÆ°á»›i hÃ¬nh hÃ i má»™t siÃªu robo cÃ³ tÃªn Astro Boy.', '', 'Sieu Nhi Atom, Astro Boy', 'Sieu Nhi Atom,Astro Boy,David Bowers,Nicolas cage, Freddie highmore, Kristen bell,Endgame Entertainment'),
(89, 'Flint Lockwood, má»™t nhÃ  sÃ¡ng cháº¿ tráº» vÃ´ cÃ¹ng dá»… thÆ°Æ¡ng, sá»‘ng Ä‘á»™c thÃ¢n cÃ¹ng chÃº khá»‰ lÃ©m lá»‰nh Steve. Anh Ä‘Ã£ quyáº¿t Ä‘á»‹nh khÃ´ng theo nghá» bÃ¡n cÃ  mÃ²i truyá»n thá»‘ng máº¥y Ä‘á»i cá»§a gia Ä‘Ã¬nh Lockwood mÃ  láº¡i Ä‘Ã¢m Ä‘áº§u vÃ o phÃ²ng thÃ­ nghiá»‡m vá»›i nhá»¯ng phÃ¡t mÃ¬nh vÃ´ cÃ¹ng â€œtai háº¡iâ€.', '', 'Mua Thit Vien, Cloudy With A Chance Of Meatballs', 'Mua Thit Vien,Cloudy With A Chance Of Meatballs,Phil Lord, Chris Miller,Bill Hader, Anna Faris, James Caan, Andy Samberg, Bruce Campbell,Columbia Pictures, Sony Pictures Animation'),
(90, 'NhÃ³m Luffy cÃ³ cuá»™c hÃ nh trÃ­nh tá»›i báº¿n cáº£ng Anabaru. Táº¡i Ä‘Ã¢y Ä‘ang tá»• chá»©c má»™t cuá»™c thi mÃ  ngÆ°á»i chiáº¿n tháº¯ng sáº½ cÃ³ Ä‘Æ°á»£c má»™t mÃ³n tiá»n thÆ°á»Ÿng ráº¥t lá»›n náº¿u nhÆ° giÃ nh vá»‹ trÃ­ quÃ¡n quÃ¢n. Nami vÃ´ cÃ¹ng pháº¥n khÃ­ch vÃ  Ä‘Ã£ quyáº¿t Ä‘á»‹nh tham gia cuá»™c thi nÃ y.', '', ',,Cuoc Dua Tu Than, One Piece Movie 4: Dead End Adventure', 'Cuoc Dua Tu Than,Dead End Adventure,Konosuke Uda,Hiroaki Hirata,ShÃ»ichi Ikeda, Taro Ishida,'),
(91, 'Pháº§n 3 cá»§a phim dá»±a theo cuá»‘n tiá»ƒu thuyáº¿t A Storm of Swords â€“ tÃ¡c pháº©m thá»© ba náº±m trong series A Song of Ice and Fire cá»§a nhÃ  vÄƒn George R.R. Martin.', '', 'Cuoc Chien Vuong Quyen: Phan 3, Game of Thrones: Season 3', 'Cuoc Chien Vuong Quyen: Phan 3,Game of Thrones: Season 3,Daniel Minahan, Alex Graves,Lena Headey, Peter Dinklage, Michelle Fairley,HBO'),
(92, 'Samantha Caine sá»‘ng cÃ¹ng chá»“ng vÃ  con gÃ¡i táº¡i má»™t thá»‹ tráº¥n nhá» á»Ÿ New England. Samantha cÃ³ cÃ´ng viá»‡c lÃ m á»•n Ä‘á»‹nh vÃ  cuá»™c sá»‘ng cá»§a gia Ä‘Ã¬nh cÃ´ hiá»‡n Ä‘ang ráº¥t Ä‘áº§m áº¥m. Äiá»u duy nháº¥t cÃ³ váº» khÃ´ng á»•n lÃ  má»™t sá»‘ kháº£ nÄƒng cá»§a cÃ´ ráº¥t khÃ´ng phÃ¹ há»£p vá»›i cÃ´ng viá»‡c cá»§a má»™t ngÆ°á»i giÃ¡o viÃªn...', '', 'Nu Hon Dai Tu Biet, The Long Kiss Goodnight', 'Nu Hon Dai Tu Biet,The Long Kiss Goodnight,Renny Harlin,Geena Davis, Samuel L. Jackson, Yvonne Zima,Forge, New Line Cinema'),
(93, 'Trong má»™t láº§n tham gia nhiá»‡m vá»¥, Briareos vÃ¬ cá»©u Deunan Ä‘Ã£ bá»‹ trá»ng thÆ°Æ¡ng. Nhiá»u nÄƒm cÃ¹ng thi hÃ nh chung nhiá»‡m vá»¥, giá» Ä‘Ã¢y Deunan pháº£i há»£p tÃ¡c vá»›i thÃ nh viÃªn má»›i Tereus. Äiá»u Ä‘áº·c biá»‡t lÃ  khuÃ´n máº·t cá»§a Tereous láº¡i giá»‘ng y chang Briareos trÆ°á»›c khi anh trá»Ÿ thÃ nh ngÆ°á»i mÃ¡y...', '', 'Nguoi May Noi Day: Ban Sao Cua Briareos, Appleseed Saga: Ex Machina', 'Nguoi May Noi Day,Appleseed Saga,Shinji Aramaki,Ai Kobayashi,Koichi Yamadera,YÃ»ji Kishi,Digital Frontier, Ex Machina Film Partners, Micott &amp; Basara K.K.'),
(94, 'NhÃ³m báº¡n Diego, Manny vÃ  Sid láº¡i tÃ¡i ngá»™ vá»›i khÃ¡n giáº£ khi khá»‘i bÄƒng nÆ¡i cáº£ bá»n sinh sá»‘ng Ä‘ang tan cháº£y vÃ  Ä‘e dá»a sáº½ tÃ n phÃ¡ cáº£ thung lÅ©ng. Ba ngÆ°á»i báº¡n cá»§a chÃºng ta pháº£i há»£p sá»©c vá»›i nhau Ä‘á»ƒ giÃºp má»i ngÆ°á»i trÃ¡nh khá»i tháº£m há»a nÃ y.', '', 'Ky Bang Ha - Phan 2: Bang Tan, Ice Age: The Meltdown', 'Ky Bang Ha - Phan 2,Ice Age: The Meltdown,Carlos Saldanha,Ray romano, John leguizamo, Denis leary,20th Century Fox'),
(95, 'Jack, má»™t nhÃ  nghiÃªn cá»©u khÃ­ tÆ°á»£ng há»c, phÃ¡t hiá»‡n ra nguy cÆ¡ ká»· bÄƒng hÃ  sáº½ tÃ¡i diá»…n nhÆ°ng Ã´ng khÃ´ng ngá» nÃ³ láº¡i xáº£y ra quÃ¡ nhanh nhÆ° tháº¿. Jack thuyáº¿t phá»¥c nhá»¯ng ngÆ°á»i cÃ³ trÃ¡ch nhiá»‡m vá» mÃ´i trÆ°á»ng hÃ£y ná»• lá»±c hÆ¡n ná»¯a trong viá»‡c báº£o vá»‡ mÃ´i trÆ°á»ng khi Ã´ng phÃ¡t hiá»‡n táº§ng ozon á»Ÿ Báº¯c cá»±c bá»‹ thá»§ng vÃ  bÄƒng á»Ÿ Ä‘Ã³ Ä‘Ã£ ná»©t khiáº¿n khÃ­ láº¡nh trÃ n ra.', '', 'Ngay Tan The, The Day After Tomorrow', 'Ngay Tan The,The Day After Tomorrow,Roland Emmerich,Emmy rossum, Jake gyllenhaal, dennis quaid,Twentieth Century Fox Film Corporation, Centropolis Entertainment, Lions Gate Films'),
(96, 'ÄÃ£Â  mÆ°á»i nÄƒm ká»ƒ tá»« khi dá»‹ch háº¡ch Ä‘en tÃ n phÃ¡ cÃ¡c vÃ¹ng Ä‘áº¥t. Má»™t gia Ä‘Ã¬nh nghÃ¨o báº¯t Ä‘áº§u má»™t cuá»™c hÃ nh trÃ¬nh Ä‘á»ƒ tÃ¬m vÃ¹ng Ä‘áº¥t há»©a khÃ¡c. TrÃªn Ä‘Æ°á»ng Ä‘i, há» bá»‹ táº¥n cÃ´ng bá»Ÿi má»™t nhÃ³m káº» giáº¿t ngÆ°á»i tÃ n nháº«n ...', '', ',Dao Thoat, Flukt', 'Dao Thoat,Flukt,Roar Uthaug,Isabel Christine Andreasen, Ingrid BolsÃ¸ Berdal, Kristian Espedal,Film Fund FUZZ, Fantefilm'),
(97, 'Sau khi chiáº¿n tháº¯ng Piccolo táº¡i Ä‘áº¡i há»™i vÃµ thuáº­t, Goku káº¿t hÃ´n vá»›i Chichi vÃ  sinh ra cáº­u nhÃ³c Gohan. Khi tá»›i thÄƒm Quy LÃ£o, Goku cháº¡m trÃ¡n má»™t Ä‘á»‘i thá»§ cá»±c máº¡nh Ä‘áº¿n tá»« ngoÃ i hÃ nh tinh vÃ  tiáº¿t lá»™ nguá»“n gá»‘c cá»§a Khá»‰ Con.', '', 'Bay Vien Ngoc Rong: Chien Binh Saiyan, Dragon Ball Z', 'Bay Vien Ngoc Rong: Chien Binh Saiyan,Dragon Ball Z,Daisuke Nishio,Masako nozawa, Hiromi tsuru, Daisuke gouri,Toei Animation'),
(98, 'Bulma - Con gÃ¡i cá»§a chá»§ tá»‹ch táº­p Ä‘oÃ n Capsule lÃ  má»™t ngÆ°á»i cÃ³ mÃ¡u phiÃªu lÆ°u vÃ  Æ°a máº¡o hiá»ƒm. Náº¯m trong tay thiáº¿t bá»‹ dÃ² tÃ¬m, Bulma lÃªn Ä‘Æ°á»ng tÃ¬m kiáº¿m &quot;Báº£y viÃªn ngá»c rá»“ng&quot; huyá»n thoáº¡i, nháº±m thá»a mÃ£n mong Æ°á»›c cÃ³ má»™t ngÆ°á»i báº¡n trai hoÃ n háº£o.', '', ',Bay Vien Ngoc Rong: Len Duong Tim ngoc, Dragon Ball', 'Bay Vien Ngoc Rong: Len Duong Tim ngoc,Dragon Ball,Minoru Okazaki,Masako nozawa, Hiromi tsuru, Daisuke gouri,Toei Animation'),
(99, 'Goku vÃ  Picclo cÃ¹ng Kami (ThÆ°á»£ng Ä‘áº¿) láº¡i tiáº¿p tá»¥c bÆ°á»›c vÃ o cuá»™c chiáº¿n Ä‘áº¥u vá»›i 1 tÃªn cÅ©ng lÃ  ngÆ°á»i Namek, nhÆ°ng Ä‘iá»u khÃ´ng ngá» lÃ  háº¯n Ä‘Ã£ trá»Ÿ nÃªn báº¥t tá»­ nhá» Ä‘iá»u Æ°á»›c cá»§a Rá»“ng tháº§n...', '', '7 Vien Ngoc Rong: Chien Binh Bat Tu, DBZ: Dead Zone', '7 Vien Ngoc Rong: Chien Binh Bat Tu,DBZ: Dead Zone,Daisuke Nishio,Sean schemmel, Stephanie nadolny , Christopher sabat,Bird Studios, FUNimation Entertainment, Ocean Group'),
(100, 'Wayne cÃ³ má»™t báº¡n Ä‘á»“ng nghiá»‡p má»›i sau khi Lanny, ngÆ°á»i Ä‘á»“ng hÃ nh trÆ°á»›c Ä‘Ã³ Ä‘Æ°á»£c thÄƒng chá»©c. Lanny pháº£i nháº¯c nhá»Ÿ Wayne vá» kÃ¬ lá»… GiÃ¡ng sinh sáº¯p Ä‘áº¿n cÅ©ng nhÆ° táº§m quan trá»ng cá»§a viá»‡c trá»Ÿ thÃ nh má»™t chÃº yÃªu tinh phÃ¡t quÃ  trong Ä‘Ãªm noel.', '', 'Diep Vu Phat Qua, Prep &amp; Landing', 'Diep Vu Phat Qua,Prep &amp; Landing,Kevin Deters, Stevie Wermers,Dave Foley, Sarah Chalke,Mason Vale Cotton,Walt Disney Animation Studios, Walt Disney Pictures'),
(101, 'VÃ o Ä‘á»i nhÃ  Thanh, vua Gia HÆ°ng thá»© 4 nÄƒm 1799 sau cÃ´ng nguyÃªn, xuáº¥t hiá»‡n má»™t ngÆ°á»i anh hÃ¹ng Äá»•ng Háº£i XuyÃªn lÃ  truyá»n nhÃ¢n cá»§a BÃ¡t QuÃ¡i ChÆ°á»Ÿng, Ã´ng Ä‘Ã£ chiáº¿n tháº¯ng cuá»™c thÃ¡ch Ä‘áº¥u cá»§a ngÆ°á»i phÆ°Æ¡ng TÃ¢y vÃ  sÃ¡ng láº­p ra Minh DÆ°Æ¡ng VÃµ QuÃ¡n.', '', ',Bat Quai Chuong, The Kungfu Master', 'Bat Quai Chuong,The Kungfu Master,Chen Shukai,Duong Thua Lam, Tieu Huan,Luu Tich Minh,Film Bureau State'),
(102, 'Pete McKell, má»™t phÃ³ng viÃªn ngÆ°á»i Má»¹, tá»›i Ãšc Ä‘á»ƒ viáº¿t vá» tráº£i nghiá»‡m du lá»‹ch á»Ÿ vÃ¹ng Ä‘áº§m láº§y báº¯c Australia. Anh Ä‘Äƒng kÃ½ má»™t tour du lá»‹ch Ä‘áº§m láº§y, nÆ¡i ná»•i tiáº¿ng lÃ  chá»‘n cÆ° ngá»¥ cá»§a loÃ i cÃ¡ sáº¥u Ãšc.', '', 'Ca Sau Sat Thu, Rogue', 'Ca Sau Sat Thu,Rogue,Greg Mclean,Radha mitchel, Sam worthington, Michael vartan,Dimension Films, Village Roadshow Pictures, Emu Creek Pictures'),
(103, 'Má»™t loáº¡t nhá»¯ng vá»¥ giáº¿t Ã¡n ngÆ°á»i xáº£y ra do cÃ¹ng má»™t hung thá»§ gÃ¢y ra. Má»i Ä‘áº§u má»‘i Ä‘á»u dáº«n Ä‘áº¿n má»™t ngÃ´i lÃ ng nhá» cáº¡nh bá» biá»ƒn. Thanh tra Harry Ä‘ang trong thá»i gian bá»‹ Ä‘Ã¬nh chá»‰ cÃ´ng tÃ¡c, má»™t láº§n ná»¯a Ä‘Æ°á»£c triá»‡u táº­p vá» Ä‘á»ƒ tÃ¬m ra thá»§ pháº¡m...', '', 'Tac Nhan Bat Ngo, Dirty Harry 4: Sudden Impact', 'Tac Nhan Bat Ngo,Dirty Harry 4: Sudden Impact,Clint Eastwood,Clint Eastwood, Sondra Locke,Pat Hingle,Warner Bros, Malpaso Company'),
(104, 'NÄƒm 2047, sinh váº­t ngoÃ i hÃ nh tinh cÃ³ tÃªn mÃ£ lÃ  FOS Ä‘Ã£ xÃ¢m nháº­p trÃ¡i Ä‘áº¥t vÃ  san báº±ng cÃ¡c thÃ nh phá»‘ lá»›n. NhÃ¢n loáº¡i Ä‘Ã£ há»£p sá»©c Ä‘áº·t má»™t khuáº¿ch tÃ¡n Ä‘á»ƒ ngÄƒn cháº·n thiá»‡t háº¡i. NÄƒm 2053, má»™t cuá»™c tÃ¡i xÃ¢m lÆ°á»£c nháº±m vÃ´ hiá»‡u hÃ³a cÃ¡c kháº¿ch tÃ¡n Ä‘Æ°á»£c thá»±c hiá»‡n. Akeshima Taishi - ngÆ°á»i Ä‘ang lÃªn káº¿ hoáº¡ch bÃ¡o thÃ¹ cho cha cáº­u Ä‘Ã£ thiá»‡t máº¡ng trong cuá»™c xÃ¢m lÆ°á»£c Ä‘áº§u tiÃªn.', '', 'Cuoc Chien Nhan Loai, Planzet', 'Cuoc Chien Nhan Loai,Planzet,Jun Awazu,Kaori Ishihara,Masami Iwasaki, Mamoru Miyano,CoMix Wave, Media Factory'),
(105, 'ThÃ¡m tá»­ Sean Riley vá»«a bá»‹ máº¥t Ä‘á»©a con trai nhá» vÃ  ly hÃ´n vá»›i vá»£. Äá»‘i máº·t vá»›i nguy cÆ¡ bá»‹ Ä‘uá»•i viá»‡c, Riley há»£p tÃ¡c vá»›i thÃ¡m tá»­ tráº» Ganz Ä‘á»ƒ Ä‘iá»u tra má»™t loáº¡t cÃ¡c vá»¥ giáº¿t ngÆ°á»i Ä‘ang Ä‘áº©y thÃ nh phá»‘ vÃ o má»™t cuá»™c chiáº¿n bÄƒng Ä‘áº£ng lá»›n nháº¥t. NhÆ°ng cáº£ hai nhanh chÃ³ng phÃ¡t hiá»‡n ra sá»± viá»‡c ngoÃ i sá»©c tÆ°á»Ÿng tÆ°á»£ng cá»§a há».', '', ',Biet Doi Trung Phat, Sinners And Saints', 'Biet Doi Trung Phat,Sinners And Saints,William Kaufman,Costas mandylor, Johnny strong, Kevin phillips,Throttle Films, Carolina Film Works, Noir Blanc Films'),
(106, 'CÃ´ gÃ  mÃ¡i Leafie sá»‘ng trong má»™t trang tráº¡i nhÆ°ng váº«n mÆ¡ Æ°á»›c Ä‘Æ°á»£c bay ra khoáº£ng sÃ¢n bÃªn ngoÃ i nÃ´ng tráº¡i Ä‘á»ƒ cÃ³ thá»ƒ tá»± do Ä‘áº» trá»©ng. Leafie cá»‘ tÃ­nh nhá»‹n Ä‘Ã³i, vá» nhÆ° khÃ´ng thá»ƒ Ä‘áº» trá»©ng Ä‘Æ°á»£c ná»¯a. CÃ´ bá»‹ nÃ©m ra vÅ©ng bÃ¹n vÃ  suÃ½t bá»‹ tÃªn chá»“n má»™t máº¯t Äƒn thá»‹t nhÆ°ng may sao thoÃ¡t náº¡n nhá» sá»± giÃºp Ä‘á»¡ cá»§a má»™t chÃº vá»‹t.', '', 'Co Ga Mai Thich Phieu Luu, Leafie, A Hen Into The Wild', 'Co Ga Mai Thich Phieu Luu,Leafie, A Hen Into The Wild,Oh Sung Yoon,Moon so ri, Yoo seung ho, Choi min sik, Park cheol min,Myung Films, Lotte Entertainment'),
(107, 'Sau khi vÃ´ tÃ¬nh thu nhá» máº¥y Ä‘á»©a tráº» thÃ¬ giá» Ä‘Ã¢y Wayne Szalinski tÃ¬m cÃ¡ch phÃ³ng to. CÃ´ng trÃ¬nh nghiÃªn cá»©u nÃ y Ä‘Æ°á»£c cáº£ má»™t Ä‘oÃ n thá»ƒ cÃ¡c nhÃ  khoa há»c cÃ¹ng tham gia nhÆ°ng váº«n khÃ´ng thÃ nh cÃ´ng.', '', ',,Cau Be Khong Lo, Honey I Blew Up The Kid', 'Cau Be Khong Lo,Honey I Blew Up The Kid,Randal Kleiser,Rick Moranis, Marcia Strassman,Robert Oliveri,Touchwood Pacific Partners 1, Walt Disney Pictures'),
(108, 'Bá»‘ Rodney lÃ  ngÆ°á»i rá»­a bÃ¡t Ä‘Ä©a trong má»™t quÃ¡n Äƒn, anh cÅ©ng lÃ  ngÆ°á»i phá»¥c vá»¥. Cho Ä‘áº¿n má»™t ngÃ y anh quyáº¿t Ä‘á»‹nh Ä‘áº¿n thÃ nh phá»‘ robot Ä‘á»ƒ thá»±c hiá»‡n 2 Æ°á»›c mÆ¡ lÃ  trá»Ÿ thÃ nh nhÃ  phÃ¡t minh vÄ© Ä‘áº¡i vÃ  gáº·p tháº§n tÆ°á»£ng Bigweld nhÃ  phÃ¡t minh lá»›n vÃ  lÃ  chá»§ cá»§a táº­p Ä‘oÃ n Bigweld Industries chuyÃªn sáº£n xuáº¥t phá»¥ tÃ¹ng thay tháº¿ cho cáº£ tháº¿ giá»›i robot. Trong hÃ nh trÃ¬nh, Rodney Ä‘Ã£ lÃ m quen Ä‘Æ°á»£c nhiá»u ngÆ°á»i báº¡n tá»‘t nhÆ° Fender, Piper vÃ  Cappy.', '', 'Thanh Pho Robot, Robots', 'Thanh Pho Robot,Robots,Chris Wedge, Carlos Saldanha,Ewan McGregor, Halle Berry,Mel Brooks,Twentieth Century Fox Animation, Blue Sky Studios'),
(109, 'Barry B. Benson lÃ  má»™t chÃº ong thá»£ má»›i tá»‘t nghiá»‡p TrÆ°á»ng Ong vá»›i nghá» chuyÃªn vá» Máº­t. Trong má»™t láº§n thá»±c táº¿, chÃº cháº³ng may bá»‹ má»™t ngÆ°á»i nuÃ´i ong á»Ÿ táº­n New York vÃ´ tÃ¬nh báº¯t mang Ä‘i.', '', 'Ong Vang Phieu Luu Ky, Bee Movie', 'Ong Vang Phieu Luu Ky,Bee Movie,Simon J. Smith, Steve Hickner,Jerry Seinfeld, Renee Zellweger  , Matthew Broderick,DreamWorks Animation ,  Columbus 81 Productions ,  Pacific Data Images (PDI)'),
(110, 'Nick cáº£m tháº¥y bá»‘i rá»“i khi gáº·p láº¡i máº¹ Ä‘áº» cá»§a mÃ¬nh nhÆ°ng Ä‘Ã¡p láº¡i sá»± hoÃ i nghi, bÃ  luÃ´n tÃ¬m cÃ¡ch Ä‘á»ƒ giÃºp Ä‘á»¡ anh. Nick cÃ¹ng cÃ¡c Ä‘á»“ng sá»± vÃ  Monroe tham gia vÃ o má»™t vá»¥ Ã¡n phá»©c táº¡p, khi káº» sÃ¡t nhÃ¢n tÃ¬m cÃ¡ch biáº¿n chÃ­nh Nick thÃ nh con má»“i.', '', 'San Lung Quai Vat: Phan 2, Grimm: Season 2', 'San Lung Quai Vat: Phan 2,Grimm: Season 2,Norberto Barba,david giuntoli, Bitsie tulloch, Russell hornsby,GK Productions, Hazy Mills Productions, Universal TV'),
(111, 'Thanh tra SurjanÂ  trong khi Ä‘iá»u tra má»™t vá»¥ giáº¿t háº¡i ngÃ´i sao Ä‘iá»‡n áº£nh Ä‘Ã£ tÃ¬nh cá» gáº·p gá»¡ Rosie, cÃ´ gÃ¡i hÃ nh nghá» máº¡i dÃ¢m. Ká»ƒ tá»« cuá»™c gáº·p Ä‘á»‹nh má»‡nh Ä‘Ã³, cuá»™c sá»‘ng cá»§a há» Ä‘Ã£ cÃ³ nhá»¯ng bÆ°á»›c ngoáº·t lá»›n...', '', 'Ket Noi Bi An, Talaash', 'Ket Noi Bi An,Talaash,Reema Kagti,Aamir Khan, Kareena Kapoor,Rani Mukerji,Aamir Khan Productions, Excel Entertainment'),
(112, 'Cuá»™c sá»‘ng cá»§a nhá»¯ng ngÆ°á»i thá»• dÃ¢n táº¡i hoang máº¡c Kalahari trá»Ÿ nÃªn há»—n loáº¡n vÃ¬ má»™t chai Cola tá»« trÃªn trá»i rÆ¡i xuá»‘ng. Xi, má»™t thÃ nh viÃªn trong bá»™ tá»™c quyáº¿t Ä‘á»‹nh ra Ä‘i tráº£ láº¡i váº­t thá»ƒ láº¡ cho ChÃºa trá»i...', '', 'Thuong De Cung Phai Cuoi, The Gods Must Be Crazy', 'Thuong De Cung Phai Cuoi,The Gods Must Be Crazy,Jamie Uys,n!xau, Marius weyers, Sandra prinsloo,CAT Films, Mimosa'),
(113, 'Trá»Ÿ vá» sau chuyáº¿n hÃ nh trÃ¬nh vá»›i chiáº¿c vá» chai Coca Cola, chÃ ng Xixo láº¡i gáº·p ráº¯c rá»‘i khi trong má»™t láº§n thá»­ khÃ¡m phÃ¡ &quot;con thÃº láº¡&quot; - chiáº¿c xe hÆ¡i, hai Ä‘á»©a con trai cá»§a anh Ä‘Ã£ bá»‹ láº¡c máº¥t.', '', 'Thuong De Cung Phai Cuoi 2, The Gods Must Be Crazy 2', 'Thuong De Cung Phai Cuoi 2,The Gods Must Be Crazy 2,Jamie Uys,N!xau,Lena Farugia,Hans Strydom,Elrina Investment, Weintraub Entertainment Group'),
(114, 'Anh chÃ ng Leo cÃ¹ng phÃ¡p sÆ° tÃ¬m cÃ¡ch chuyá»ƒn xÃ¡c Æ°á»›p tá»• tiÃªn vá» Trung Quá»‘c. TrÃªn Ä‘Æ°á»ng khi Ä‘ang bay qua chÃ¢u Phi, mÃ¡y bay cá»§a há» gáº·p trá»¥c tráº·c. Cáº£ bá»n pháº£i tÃ¡ tÃºc láº¡i má»™t ngÃ´i lÃ ng giá»¯a sa máº¡c háº»o lÃ¡nh...', '', 'Thuong De Cung Phai Cuoi: Phan 3, The Gods Must Be Crazy 3 AKA Crazy Safari', 'Thuong De Cung Phai Cuoi: Phan 3,The Gods Must Be Crazy 3 AKA Crazy Safari,Billy Chan,Ching-ying lam, Sam christopher chow,  n!xau,Win&#39s Movie Productions Ltd., Samico Films Production Company Ltd.'),
(115, 'Má»™t chiáº¿c tÃ u Ä‘Ã¡nh cÃ¡ trÃ¡ hÃ¬nh cá»§a Anh Ä‘Ã£ bá»‹ tai náº¡n. TrÃªn tÃ u cÃ³ má»™t thiáº¿t bá»‹ giáº£i mÃ£ tiÃªn tiáº¿n Ä‘Æ°á»£c gá»i lÃ  ATAC, cÃ¡i mÃ  ngÆ°á»i Anh sá»­ dá»¥ng Ä‘á»ƒ truyá»n tÃ­n hiá»‡u cho háº¡m Ä‘á»™i Polaris cá»§a há».', '', 'Diep Vien 007: Rieng Doi Mat Em, For Your Eyes Only', 'Diep Vien 007: Rieng Doi Mat Em,For Your Eyes Only,John Glen,Roger Moore,Carole Bouquet,Topol,Eon Productions'),
(116, 'ChÃ ng chiáº¿n binh TrÃ¡i Ä‘áº¥t John Carter bá»‹ Ä‘Æ°a Ä‘áº¿n sao Há»a vÃ  bá»‹ nhá»¯ng giá»‘ng ngÆ°á»i khá»•ng lá»“ á»Ÿ Ä‘Ã¢y báº¯t lÃ m tÃ¹ binh. ÄÃ o thoÃ¡t khá»i nhÃ  tÃ¹, John láº¡i gáº·p cÃ´ng chÃºa xá»© Hellium - Dejah Thoris - ngÆ°á»i Ä‘ang tÃ¬m kiáº¿m má»™t vá»‹ cá»©u tinh cho quÃª hÆ°Æ¡ng mÃ¬nh.', '', 'Chien Binh Sao Hoa , John Carter', 'Chien Binh Sao Hoa,John Carter,Andrew Stanton,Willem dafoe, Taylor kitsch, Lynn collins, Willem dafoe,Walt Disney Pictures'),
(117, 'Tropa de Elite tÃ¡i hiá»‡n sá»± tháº­t vá» nhá»¯ng viÃªn cáº£nh sÃ¡t thiáº¿u nhÃ¢n cÃ¡ch, dÃ¹ng báº¡o lá»±c Ä‘á»ƒ hÃ nh xá»­, Ä‘Ã£ tá»«ng xáº£y ra trong thá»i ká»³ Ä‘en tá»‘i cá»§a xÃ£ há»™i Brazil. The Elite Squad váº½ nÃªn má»™t bá»©c chÃ¢n dung vá» sá»± má»¥c nÃ¡t, báº¡o lá»±c, giáº¿t ngÆ°á»i cá»§a cÃ¡c cáº£nh sÃ¡t bá»‹ tha hÃ³a á»Ÿ Rio de Janeiro (Brazil).', '', 'Biet Doi Tinh Nhue, Elite Squad', 'Biet Doi Tinh Nhue,Elite Squad,Jose Padilha,Wagner Moura, Andre Ramiro,Caio Junqueira,Zazen ProduÃ§oes, Posto 9, Feijao Filmes'),
(118, 'Peter Parker- cáº­u há»c sinh nhÃºt nhÃ¡t, e dÃ¨ cÃ³ tÃ¬nh cáº£m vá»›i cÃ´ báº¡n há»c cÃ¹ng lá»›p Mary Jane nhÆ°ng khÃ´ng dÃ¡m nÃ³i. Peter cÃ³ ngÆ°á»i báº¡n thÃ¢n lÃ  cáº­u trai nhÃ  giÃ u Harry trÃ¡i ngÆ°á»£c hoÃ n toÃ n vá»›i Peter. Má»™t ngÃ y báº¥t ngá» Peter bá»‹ má»™t con nhá»‡n cáº¯n, cÆ¡ thá»ƒ cáº­u thay Ä‘á»•i, trá»Ÿ nÃªn dáº»o dai nhanh nháº¹n hÆ¡n...', '', ',Nguoi Nhen, Spider-Man', 'Nguoi Nhen,Spider-Man,Sam Raimi,Tobey maguire, Kirsten dunst, James franco,Columbia Pictures Corporation, Marvel Enterprises, Laura Ziskin Productions'),
(119, 'HÆ°Æ¡ng Ngá»c Lan ká»ƒ vá» cuá»™c sá»‘ng Ä‘áº§y nghá»‹ lá»±c cá»§a cÃ´ gÃ¡i 20 tuá»•i PhÆ°Æ¡ng Vy. LÃ  má»™t cÃ´ gÃ¡i mÆ¡ Æ°á»›c trá»Ÿ thÃ nh PhÃ¡t thanh viÃªn, tuy nhiÃªn cÃ´ há»c ngÃ nh kiá»ƒm toÃ¡n vÃ¬ chiá»u theo nguyá»‡n vá»ng lÃ m giÃ u cá»§a gia Ä‘Ã¬nh.', '', 'Huong Ngoc Lan, Huong Ngoc Lan', 'Huong Ngoc Lan,Huong Ngoc Lan,Nguyen Duc Hien,Thu Quynh, Minh Tri,Hang Phim Truyen Viet Nam'),
(120, 'Remy lÃ  má»™t chÃº chuá»™t cÃ³ lÃ²ng yÃªu thÃ­ch áº©m thá»±c vÃ  mong muá»‘n Ä‘Æ°á»£c Ä‘áº¿n Paris Ä‘á»ƒ thá»±c hiá»‡n Æ°á»›c mÆ¡ trá»Ÿ thÃ nh Ä‘áº§u báº¿p ná»•i tiáº¿ng. Tuy bá»‹ gia Ä‘Ã¬nh ngÄƒn cáº£n nhÆ°ng cuá»‘i cÃ¹ng Remy cÅ©ng Ä‘áº·t chÃ¢n Ä‘Æ°á»£c Ä‘áº¿n kinh Ä‘Ã´ Ã¡nh sÃ¡ng.', '', 'Chu Chuot Dau Bep, Ratatouille', 'Chu Chuot Dau Bep,Ratatouille,Brad Bird, Jan Pinkava,Brad garrett, Patton oswalt, John ratzenberger,Pixar Animation Studios, Walt Disney Pictures'),
(121, 'Äá»™i quÃ¢n ngÆ°á»i mÃ¡y Ultramarines nháº­n Ä‘Æ°á»£c cuá»™c gá»i cáº§u cá»©u tá»« Ä‘á»n thá» hoÃ ng Ä‘áº¿. Há» khÃ´ng thá»ƒ liÃªn láº¡c Ä‘Æ°á»£c vá»›i Ä‘á»™i quÃ¢n ThÃ©p Ä‘Ã³ng táº¡i Ä‘Ã¢y. Chuyá»‡n gÃ¬ Ä‘Ã£ xáº£y ra, Ultramarines Ä‘Æ°á»£c cá»­ xuá»‘ng Ä‘á»ƒ Ä‘iá»u tra chÃ¢n tÆ°á»›ng sá»± viá»‡c...', '', 'Nguoi May Dai Chien, Ultramarines: A Warhammer 40000 Movie', 'Nguoi May Dai Chien,Ultramarines: A Warhammer 40000 Movie,Martyn Pick,Terence Stamp, John Hurt, Sean Pertwee,Good Story Productions, Codex Pictures, POP6'),
(122, 'Neil vá»«a má»›i ly dá»‹ vá»£, gÃ£ tá» ra suy sá»¥p. Tá»¥i báº¡n ná»‘i khá»‘ gá»“m Vince, Mikey, Matt, Matt, Graham vÃ  Banksy Ä‘á»©ng ra thuyáº¿t phá»¥c Neil cÃ¹ng Ä‘i nghá»‰ cuá»‘i tuáº§n Ä‘á»ƒ xáº£ stress. NÆ¡i cáº£ bá»n chá»n Ä‘á»ƒ &quot;giáº£i sáº§u&quot; lÃ  thá»‹ tráº¥n Moodley - nÆ¡i mÃ  tá»‰ lá»‡ phá»¥ ná»¯ vÃ  Ä‘Ã n Ã´ng lÃ  3:1.', '', ',So Cho, Doghouse', 'So Cho,Doghouse,Jake West,Danny Dyer, Stephen Graham, Noel Clarke, Terry Stone,Carnaby International, Carnaby Film Productions, Hanover Films'),
(123, 'NÄƒm 2415, 400 nÄƒm sau Ä‘áº¡i dá»‹ch tiÃªu diá»‡t gáº§n háº¿t nhÃ¢n loáº¡i. Ná»¯ sÃ¡t thá»§ Aeon Flux nháº­n nhiá»‡m vá»¥ Ã¡m sÃ¡t Ä‘á»™c tÃ i Trevor Goodchild. CÃ ng dáº¥n thÃ¢n vÃ o nhiá»‡m vá»¥, nhá»¯ng thÃ´ng tin mÃ  Aeon tÃ¬m Ä‘Æ°á»£c cÃ ng khiáº¿n cÃ´ bá»‘i rá»‘i.', '', 'Sat Thu Aeon, Ã†on Flux', 'Sat Thu Aeon,Ã†on Flux,Karyn Kusama,Charlize theron, Frances mcdormand, Sophie okonedo,Paramount Pictures, Lakeshore Entertainment, Valhalla Motion Pictures');
INSERT INTO `ipos_film_info` (`phimid`, `phimtxt`, `phiminfo`, `phimtag`, `timkiem`) VALUES
(124, 'Pháº§n 5 báº¯t Ä‘áº§u báº±ng buá»•i sÃ¡ng Catsle vÃ  Beckett thá»©c dáº­y cÃ¹ng nhau trÃªn giÆ°á»ng. Sau khi thá»«a nháº­n tÃ¬nh cáº£m cá»§a mÃ¬nh vá»›i Ä‘á»‘i phÆ°Æ¡ng, cáº·p Ä‘Ã´i cáº£nh sÃ¡t - nhÃ  vÄƒn tiáº¿p tá»¥c báº¯t tay vÃ o nhá»¯ng vá»¥ Ã¡n vÃ  Ä‘iá»u tra tiáº¿p vá» cÃ¡i cháº¿t cá»§a máº¹ Beckett. CÃ´ tÃ¬m Ä‘áº¿n ThÆ°á»£ng nghá»‹ sÄ© William Bracken cÃ¡o buá»™c Ã´ng pháº£i chá»‹u trÃ¡ch nhiá»‡m cho cÃ¡i cháº¿t cá»§a máº¹ mÃ¬nh. Äá»“ng thá»i sáº¿p Gates cÅ©ng cho phÃ©p Beckett quay trá»Ÿ vá» vá»‹ trÃ­ cá»§a mÃ¬nh.', '', 'Nha Van Pha An: Phan 5, Castle: Season 5', 'Nha Van Pha An: Phan 5,Castle: Season 5,Rob Bowman,Nathan Fillion, Stana Katic, Susan Sullivan,Beacon Pictures, Experimental Pictures, ABC Studios'),
(125, 'Táº¡i má»™t khu chung cÆ° hiá»‡n Ä‘áº¡i mang tÃªn NgÃ´i Sao náº±m ven sÃ´ng SÃ i GÃ²n, tiá»‡m bÃ¡nh HoÃ ng tá»­ bÃ© náº±m á»Ÿ táº§ng trá»‡t cá»§a khu chung cÆ° lÃ  nÆ¡i nhÃ³m cÃ¡c báº¡n tráº» tÃ i nÄƒng hoáº¡t Ä‘á»™ng.', '', 'Tiem Banh Hoang Tu Be, Tiem Banh Hoang Tu Be', 'Tiem Banh Hoang Tu Be,Tiem Banh Hoang Tu Be,Van Cong Vien,Dai Nghia,Phuong Bella,Diem Chau , Xuan Lan,Smart Media'),
(126, 'Má»™t mÃ¹a hÃ¨ láº¡i Ä‘áº¿n vá»›i nhÃ  Gallagher, nhá»¯ng trÃ² lá»«a Ä‘áº£o Ä‘á»ƒ kiáº¿m sá»‘ng cá»§a há» váº«n tiáº¿p tá»¥c xoay trÃ²n. Pháº§n phim nÃ y sáº½ cÃ³ nhiá»u sá»± thay Ä‘á»•i vá»›i cÃ¡c thÃ nh viÃªn trong gia Ä‘Ã¬nh Gallagher.', '', 'Vo Liem Si: Phan 2, Shameless: Season 2', 'Vo Liem Si: Phan 2,Shameless: Season 2,Paul Abbott,Emmy Rossum, William H. Macy, Justin Chatwin,Showtime'),
(127, 'Phim nÃ³i vá» cÃ¢u chuyá»‡n cá»§a nhá»¯ng vá» nhá»¯ng cáº£m giá»— cá»§a cuá»™c sá»‘ng Ä‘Ã£ lÃ m cho chÃ ng trai tráº» tuá»•i vá»›i tÆ°Æ¡ng lai ngá»i sÃ¡ng láº¡i vÆ°á»›ng vÃ o nhá»¯ng há»‡ lá»¥y cá»§a cuá»™c sá»‘ng , khi mÃ  anh lÃ  má»™t nhÃ  kinh doanh thÃ nh cÃ´ng vÃ¬ ham mÃª chÃºt sáº¯c Ä‘áº¹p mÃ  pháº£i sa ngÃ£ máº¥t háº¿t tÃ i sáº£n vÃ  pháº£i ngá»“i tÃ¹ ,. ngÆ°á»i yÃªu cá»§a cÃ´ cÅ©ng tá»« Ä‘Ã³ mÃ  lÃªn xe hoa bá» láº¡i anh . Sau khi ra tÃ¹ vá»›i nhá»¯ng quyáº¿t tÃ¢m cá»§a mÃ¬nh anh Ä‘Ã£ thay Ä‘á»•i vÃ  trá»Ÿ láº¡i lÃ  má»™t ngÆ°á»i thÃ nh cÃ´ng nhÆ° ngÃ y xÆ°a â€¦', '', 'Khong The Guc Nga, Khong The Guc Nga', 'Khong The Guc Nga,Khong The Guc Nga,NSUT Bui Cuong,Phan Chanh Nghia,Thien Thanh  ,Trong Nhan,'),
(128, 'Phim xoay quanh nhÃ¢n váº­t lÃ£o phÃº Ã´ng ná»•i tiáº¿ng giÃ u cÃ³ vÃ  keo kiá»‡t muá»‘n má»Ÿ há»™i kÃ©n chá»“ng cho con gÃ¡i. Äiá»u kiá»‡n mÃ  phÃº Ã´ng Ä‘Æ°a ra ráº¥t oÃ¡i oÄƒm - náº¿u ai lÃ m cho lÃ£o tá»©c giáº­n thÃ¬ lÃ£o sáº½ gáº£ con gÃ¡i cho ngÆ°á»i Ä‘áº¥y. Nhiá»u chÃ ng trai tá»›i nháº­n thá»­ thÃ¡ch nhÆ°ng Ä‘á»u ra vá» tráº¯ng tayâ€¦', '', 'Khong He Biet Gian, Khong He Biet Gian', 'Khong He Biet Gian,Khong He Biet Gian,Pham Dong Hong,Xuan Bac, Tu Long, Cong Ly, Quoc Anh,ca si Ngoc Anh,Thang Long Audio'),
(129, 'Phim láº¥y bá»‘i cáº£nh á»Ÿ tráº¥n PhÃºc Tinh yÃªn bÃ¬nh, nÆ¡i 7 vá»‹ cao thá»§ vÃµ lÃ¢m á»Ÿ áº©n vÃ  lÃ m nhá»¯ng cÃ´ng viá»‡c bÃ¬nh thÆ°á»ng nhÆ° hai chi em quÃ¡n tÃ­nh tÃ¬nh cÃ³ chÃºt khÃ¹ng khÃ¹ng, bÃ  chá»§ láº§u xanh, anh thá»£ may, phÃ¡p sÆ°, ngÆ°á»i trÃ´ng giá»¯ tráº», ngÆ°á»i bÃ¡n son pháº¥n... nhÆ°ng cuá»™c sá»‘ng cá»§a há» láº¡i ná»•i sÃ³ng giÃ³ khi xuáº¥t hiá»‡n má»™t nhÃ³m ngÆ°á»i láº¡ vÃ o thÃ´n.', '', 'Giang Ho That Quai, Princess and Seven Kung Fu Masters', 'Giang Ho That Quai,Princess and Seven Kung Fu Masters,Vuong Tinh,Hong Kim Bao, Tang Chi Vy, Ngo Quan Nhu,A Wong Jing Film'),
(130, 'Káº¿t thÃºc pháº§n 1, háº§u háº¿t nhá»¯ng thÃ nh viÃªn cá»§a nhÃ³m Joe Ä‘Ã£ bá»‹ Ã¡m sÃ¡t bá»Ÿi Ä‘iá»‡p viÃªn Zartan cá»§a Cobra, nhá»¯ng ngÆ°á»i cÃ²n láº¡i Ä‘Ã£ táº­p há»£p vÃ  tiáº¿n hÃ nh má»™t cuá»™c tráº£ thÃ¹. Giá» Ä‘Ã¢y, cÃ¡c G.I. Joes khÃ´ng chá»‰ chiáº¿n Ä‘áº¥u vá»›i Cobra káº» tá»­ thÃ¹ cá»§a há», há» cÃ²n bá»‹ buá»™c pháº£i Ä‘áº¥u tranh vá»›i cÃ¡c má»‘i Ä‘e dá»a nguy hiá»ƒm cho sá»± tá»“n táº¡i cá»§a mÃ¬nh Ä‘áº¿n tá»« bÃªn trong chÃ­nh phá»§.', '', 'G.I. Joe: Bao Thu, G.I. Joe: Retaliation', 'G.I. Joe: Bao Thu,G.I. Joe: Retaliation,Jon M. Chu,Dwayne Johnson,D.J. Cotrona, Channing Tatum, Lee Byung Hun,Paramount Pictures, Metro-Goldwyn-Mayer (MGM), Skydance Productions'),
(131, 'Vikings lÃ  series phim lá»‹ch sá»­ má»›i Ä‘Æ°á»£c phÃ¡t sÃ³ng tá»« ngÃ y 03/03/2013, phim Ä‘Æ°á»£c láº¥y cáº£m há»©ng tá»« nhá»¯ng cÃ¢u chuyá»‡n sá»­ thi Báº¯c Ã‚u, xoay quanh cuá»™c phiÃªu lÆ°u cá»§a huyá»n thoáº¡i thá»§ lÄ©nh Ragnar LodbrokÂ  cÃ¹ng gia Ä‘Ã¬nh vÃ  Ä‘á»™i quÃ¢n cá»§a anh. Tá»« má»™t chiáº¿n binh tráº» tuá»•i, Ragnar vÃ  nhá»¯ng ngÆ°á»i báº¡n cá»§a mÃ¬nh Ä‘Ã£ khÃ¡m phÃ¡ cÃ¡c ná»n vÄƒn minh trÃªn biá»ƒn má»›i, trá»Ÿ thÃ nh vua cá»§a bá»™ bá»™c Viking.', '', 'Huyen Thoai Vikings, Vikings', 'Huyen Thoai Vikings,Vikings,Michael Hirst,Travis Fimmel, Clive Standen, Katheryn Winnick,History'),
(132, 'Ã”ng HÆ°ng, giÃ¡m Ä‘á»‘c má»™t cÃ´ng ty chuyÃªn kinh doanh báº¥t Ä‘á»™ng sáº£n, nhÃ  hÃ ng khÃ¡ch sáº¡n lá»›n vÃ o báº­c nháº¥t thÃ nh phá»‘. Má»™t gia Ä‘Ã¬nh giÃ u cÃ³, sá»‘ng trong xa hoa trong Ã¡nh hÃ o quang cá»§a tiá»n báº¡c.', '', 'Di Qua Di Vang, Di Qua Di Vang', 'Di Qua Di Vang,Di Qua Di Vang,Nguyen Duy Vo Ngoc,NSUT Nguyen Chanh Tin, Thanh Thuc, Ngoc Tuong,Dao Anh Tuan, Phuc An,Oanh Kieu, Hoang Ny,Hang Phim Hanh Tinh Xanh'),
(133, 'Nháº­n Ã¡n tÃ¹ do tá»™i Ã¡c cá»§a má»™t káº» khÃ¡c sáº¯p Ä‘áº·t, Geum-Ja sáº¯p Ä‘áº·t káº¿ hoáº¡ch bÃ¡o thÃ¹ trong nhá»¯ng ngÃ y chá»‹u Ã¡n. ÄÆ°á»£c tráº£ tá»± do, ngÆ°á»i phá»¥ ná»¯ báº¯t Ä‘áº§u hÃ nh trÃ¬nh Ä‘áº«m mÃ¡u Ä‘Ã²i láº¡i cÃ´ng báº±ng. Bá»™ phim lÃ  pháº§n cuá»‘i bá»™ ba phim &quot;BÃ¡o thÃ¹&quot; danh tiáº¿ng cá»§a Ä‘áº¡o diá»…n Park Chan-Wook.', '', 'Nguoi Dep Bao Thu, Sympathy for Lady Vengeance', 'Nguoi Dep Bao Thu,Sympathy for Lady Vengeance,Park Chan-wook,Choi min sik, Lee young ah, Shi-hoo Kim,CJ Entertainment'),
(134, 'Dá»±a trÃªn má»™t cÃ¢u chuyá»‡n cÃ³ tháº­t, bá»™ phim ká»ƒ vá» má»™t vá»¥ Ã¡n bÃ­ áº©n mÃ  trong Ä‘Ã³ Becky - má»™t nhÃ¢n viÃªn bÃ¡n hÃ ng bá»‹ cho lÃ  ngÆ°á»i Ä‘Ã£ láº¥y cáº¯p má»™t sá»‘ tiá»n lá»›n cá»§a cá»­a hÃ ng. Má»i chuyá»‡n báº¯t Ä‘áº§u tá»« khi ngÆ°á»i Ä‘iá»u hÃ nh cá»§a má»™t chi nhÃ¡nh cá»­a hÃ ng thá»©c Äƒn nhanh tÃªn lÃ  Sandra nháº­n Ä‘Æ°á»£c má»™t cuá»™c gá»i tá»« má»™t ngÆ°á»i Ä‘Ã n Ã´ng bÃ­ áº©n tá»± nháº­n mÃ¬nh lÃ  cáº£nh sÃ¡t, ngÆ°á»i Ä‘Ã n Ã´ng bÃ­ áº©n buá»™c tá»™i Becky báº±ng má»™t manh má»‘i khÃ´ng rÃµ rÃ ng, cÃ´ bÃ© vÃ  ngÆ°á»i quáº£n lÃ­ Ä‘á»u báº¥t ngá» khi nghe tin Ä‘Ã³.', '', 'Phuc Tung, Compliance', 'Phuc Tung,Compliance,Craig Zobel,Ann Dowd, Dreama Walker,Pat Healy,Bad Cop Bad Cop Film Productions, Dogfish Pictures, Muskat Filmed Properties'),
(135, 'The Pirate Bay Away From Keyboard lÃ  má»™t bá»™ phim tÃ i liá»‡u vá» ba káº» nghiá»‡n mÃ¡y tÃ­nh Ä‘Ã£ táº¡o ra má»™t cuá»™c cÃ¡ch máº¡ng trong viá»‡c chia sáº» ná»™i dung sá»‘ tá»« chÃ­nh website yÃªu thÃ­ch cá»§a há». LÃ m cÃ¡ch nÃ o mÃ  Tiamo, Brokep vÃ  Anakata khiáº¿n cho NhÃ  Tráº¯ng pháº£i Ä‘e doáº¡ ChÃ­nh phá»§ Thuá»µ Äiá»ƒn báº±ng má»™t lá»‡nh trá»«ng pháº¡t thÆ°Æ¡ng máº¡i?', '', 'Vinh Hai Tac Ao, TPB AFK: The Pirate Bay Away from Keyboard', 'Vinh Hai Tac Ao,TPB AFK: The Pirate Bay Away from Keyboard,Simon Klose,Gottfrid Svartholm, Peter Sunde,Fredrik Neij,Nonami, Anagram Produktion, Final Cut for Real'),
(136, 'SÃ¡t thá»§ mÃ¡u láº¡nh Icarus Ä‘Æ°á»£c ngá»¥y trang bá»Ÿi vá» bá»c má»™t nhÃ¢n viÃªn vÄƒn phÃ²ng Ä‘áº¡i diá»‡n ChÃ­nh phá»§ táº¡i Má»¹. Khi LiÃªn XÃ´ sá»¥p Ä‘á»•, Icarus tháº¥y mÃ¬nh láº¡c lÃµng táº¡i má»™t Ä‘áº¥t nÆ°á»›c xa láº¡.', '', 'Co May Giet Nguoi, Icarus/ The Killing Machine', 'Co May Giet Nguoi,Icarus/ The Killing Machine,Dolph Lundgren,Dolph Lundgren, Stefanie von Pfetten,Samantha Ferris,Cinetel Films, Icarus BC Productions, Insight Film Studios'),
(137, 'Ash, Pikachu, Iris, Cilan Ä‘áº·t chÃ¢n Aind Oak, má»™t thá»‹ tráº­n thuá»™c vÃ¹ng Unova. Aind Oak sá»Ÿ há»¯u má»™t lÃ¢u Ä‘Ã i rá»±c rá»¡ mÃ u sáº¯c, tá»a láº¡ ngay giá»¯a trung tÃ¢m thá»‹ tráº¥n. LÃ¢u Ä‘Ã i Ä‘Æ°á»£c gá»i vá»›i cÃ¡i tÃªn má»¹ miá»u &quot;Thanh kiáº¿m TrÃ¡i Ä‘áº¥t&quot;. TrÆ°á»›c Ä‘Ã¢y, thá»‹ tráº­n Aind Oak ráº¥t phÃ¡t triá»ƒn. NÃ³ tá»«ng Ä‘Æ°á»£c biáº¿t Ä‘áº¿n vá»›i cÃ¡i tÃªn &quot;VÆ°Æ¡ng quá»‘c cá»§a cÆ° dÃ¢n trÃ¡i Ä‘áº¥t&quot;. Tuy nhiÃªn, vÆ°Æ¡ng quá»‘c Ä‘Ã£ dáº§n tÃ n lá»¥i vÃ  Ä‘i vÃ o quÃ¡ khá»©.', '', 'Victini Va Nguoi Hung Anh Sang Zekrom, Pokemon Movie 14: Victini And The Dark Hero', 'Victini Va Nguoi Hung Anh Sang Zekrom,Pokemon Movie 14: Victini And The Dark Hero,Michael Haigney,Leah Clark,Jason Griffith,Khristine Hvam,Creatures, GAME FREAK Inc., Holm Inc.'),
(138, 'VÃ o má»™t Ä‘Ãªm trÄƒng trÃ²n tuyá»‡t Ä‘áº¹p, nhÃ³m cá»§a Ash Ä‘ang Ä‘i Ä‘Æ°á»ng táº¯t trong rá»«ng Ä‘á»ƒ Ä‘áº¿n thÃ nh phá»‘ Crown â€“ nÆ¡i cuá»™c thi Ä‘áº¥u Pokemon Boccer Ä‘Æ°á»£c tá»• chá»©c. NhÆ°ng vá»›i sá»± hÆ°á»›ng dáº«n cá»§a Brock thÃ¬ cáº£ nhÃ³m Ä‘Ã£ Ä‘i láº¡c, nhÆ°ng nhá» Ä‘Ã³ há» Ä‘Ã£ gáº·p Ä‘Æ°á»£c cáº£nh tuyá»‡t Ä‘áº¹p lÃ  má»™t Ä‘Ã n Beautifly Ä‘ang bay trÃªn trá»i.', '', 'Ba Chu Ao Anh, Pokemon Movie 13: Zoroark Master of Illusions', 'Ba Chu Ao Anh,Pokemon Movie 13: Zoroark Master of Illusions,Kunihiko Yuyama,Ikue ÅŒtani , Sean Schemmel,Sarah Natochenny,East Japan Marketing &amp; Communications Inc. , GAME FREAK Inc. , Nintendo'),
(139, 'VÆ°Æ¡ng quá»‘c Mitdorando cho quyá»n cho Griffith dáº«n Ä‘áº§u lá»±c lÆ°á»£ng &quot;Band of the Hawk&quot; tham gia vÃ o tráº­n chiáº¿n tranh giÃ nh phÃ¡o Ä‘Ã i Dorudorei. CÃ¹ng kinh nghiá»‡m tráº­n máº¡c vÃ  tÃ i nÄƒng sá»­ dá»¥ng kiáº¿m phi phÃ m, Guts cÃ¹ng cÃ¡c chiáº¿n há»¯u cuá»‘i cÃ¹ng cÅ©ng giÃ nh Ä‘Æ°á»£c tháº¯ng lá»£i vá» tay cá»§a Band of the Hawk.', '', 'Kiem Si Den: Sinh Tu Chien, Berserk: The Golden Age Arc 2 - The Battle for Doldrey', 'Kiem Si Den: Sinh Tu Chien,Berserk: The Golden Age Arc 2 - The Battle for Doldrey,Toshiyuki Kubooka, Michael Sinterniklaas,Takahiro Sakurai,Hiroaki Iwanaga,Yuuki Kaji,Lucent Pictures Entertainment, Studio 4Â°C'),
(140, 'Äáº¡i tÆ°á»›ng Irwin Ä‘Æ°á»£c Ä‘iá»u chuyá»ƒn Ä‘áº¿n nhÃ  tÃ¹ biá»‡t láº­p vá»›i hÃ ng rÃ o canh giá»¯ cáº©n máº­t do tÆ°á»Ÿng Winter phá»¥ trÃ¡ch.', '', 'Phao Dai Cuoi Cung, The Last Castle', 'Phao Dai Cuoi Cung,The Last Castle,Rod Lurie,Mark ruffalo , Robert redford, james gandolfini,DreamWorks SKG, Robert Lawrence Productions'),
(141, '9 ngÆ°á»i vÃ´ tá»™i bá»‹ báº¯t bá»Ÿi má»™t tÃªn Ä‘eo máº·t náº¡, táº¥t cáº£ bá»‹ Ä‘Æ°aÂ  Ä‘áº¿n má»™t cÄƒn phÃ²ng vÃ  bá»‹ xÃ­ch vÃ o cá»™t. TÃªn sÃ¡t nhÃ¢n ra Ä‘iá»uÂ  luáº­t: Náº¿u muá»‘n sá»‘ng sÃ³t raÂ  khá»i cÄƒn phÃ²ng thÃ¬ pháº£i tÃ¬m ra Ä‘Æ°á»£c lÃ­ do táº¡i sao bá»n há» bá»‹ báº¯t tá»›iÂ  Ä‘Ã¢y, náº¿u khÃ´ng cá»© má»—i 10 phÃºt, háº¯n sáº½ báº¯n cháº¿t 1 ngÆ°á»i...', '', 'So 9 Tu Than, Nine Dead', 'So 9 Tu Than,Nine Dead,Chris Shadley,Melissa Joan Hart,William Lee Scott,John Terry,Hartbreak Films , Louisiana Media Productions'),
(142, 'Maria vÃ  Henry cÃ¹ng ba cáº­u con trai báº¯t Ä‘áº§u ká»³ nghá»‰ á»Ÿ ThÃ¡i Lan, tÃ¬m kiáº¿m vÃ i ngÃ y yÃªn bÃ¬nh táº¡i nÆ¡i thiÃªn Ä‘Æ°á»ng miá»n nhiá»‡t Ä‘á»›i nÃ y. NhÆ°ng vÃ o buá»•i sÃ¡ng ngÃ y 26/12, khi cáº£ gia Ä‘Ã¬nh há» Ä‘ang vui chÆ¡i quanh má»™t bá»ƒ bÆ¡i sau lá»… GiÃ¡ng Sinh vÃ o Ä‘Ãªm hÃ´m trÆ°á»›c, má»™t tiáº¿ng gáº§m khá»§ng khiáº¿p rá»n vang tá»« trung tÃ¢m cá»§a trÃ¡i Ä‘áº¥t.', '', 'Tham Hoa Song Than, The Impossible', 'Tham Hoa Song Than,The Impossible,Juan Antonio Bayona,Naomi Watts, Ewan McGregor, Tom Hollander,Apaches Entertainment , Telecinco Cinema , Mediaset EspaÃ±a'),
(143, 'Hai thanh niÃªn trong má»™t láº§n trá»‘n há»c Ä‘Ã£ Â tÃ¬nh cá» tÃ¬m Ä‘Æ°á»£c má»™t cÄƒn phÃ²ng cÅ© kÄ© hÃ´i hÃ¡m á»Ÿ má»™t bá»‡nh viá»‡n háº»o lÃ¡nh. Táº¡i cÄƒn phÃ²ng Ä‘Ã³, há» phÃ¡t hiá»‡n má»™t cÃ´ gÃ¡i vá»›i khuÃ´n máº·t ngÃ¢y dáº¡i Ä‘ang bá»‹ xiá»ng xÃ­ch, thay vÃ¬ bÃ¡o cáº£nh sÃ¡t, há» láº¡i do dá»±, vÃ  chuá»—i bi-tháº£m-ká»‹ch báº¯t Ä‘áº§u tá»« Ä‘Ã¢y....', '', 'Duc Xac, Deadgirl', 'Duc Xac,Deadgirl,Marcel Sarmiento, Gadi Harel,shiloh fernandez, Noah segan , Candice accola,Hollywoodmade'),
(144, 'Claire báº¯t Ä‘áº§u nÄƒm thá»© nháº¥t táº¡i trÆ°á»ng Ä‘áº¡i há»c, tuy nhiÃªn cÃ´ khÃ´ng thá»ƒ hoÃ n toÃ n bá» láº¡i nhá»¯ng kÃ­ á»©c trÆ°á»›c kia cá»§a mÃ¬nh Ä‘á»ƒ báº¯t Ä‘áº§u cuá»™c sá»‘ng bÃ¬nh thÆ°á»ng. Peter trá»Ÿ láº¡i cÃ´ng viá»‡c cá»§a mÃ¬nh, cá»©u giÃºp máº¡ng sá»‘ng cá»§a má»i ngÆ°á»i vÃ  anh Ä‘Æ°á»£c sá»± giÃºp Ä‘á»¡ báº±ng kháº£ nÄƒng cá»§a Mohinder.', '', 'Giai Cuu The Gioi: Phan 4, Heroes: Season 4', 'Giai Cuu The Gioi: Phan 4,Heroes: Season 4,David Straiton,Ali larter, Masi oka, Zachary quinto, Hayden panettiere,Tailwind Productions, Universal Media Studios'),
(145, 'Young Goon lÃ  má»™t cÃ´ng nhÃ¢n bÃ¬nh thÆ°á»ng Ä‘ang lÃ m viá»‡c táº¡i má»™t xÆ°á»Ÿng láº¯p rÃ¡p radio. Tháº¿ nhÆ°ng nhá»¯ng gÃ¬ Ä‘ang diá»…n ra trong Ä‘áº§u cÃ´ láº¡i cháº³ng bÃ¬nh thÆ°á»ng chÃºt nÃ o. Young Goon nghe theo má»™t lá»i chá»‰ dáº«n tÆ°á»Ÿng tÆ°á»£ng, tá»± ná»‘i cá»• tay mÃ¬nh vá»›i má»™t Ä‘áº§u dÃ¢y Ä‘iá»‡n, Ä‘áº§u cÃ²n láº¡i cáº¯m vÃ o á»• Ä‘iá»‡n. Káº¿t quáº£ lÃ  cÃ´ náº±m tháº³ng Ä‘Æ¡ trÃªn bÄƒng ca vÃ  Ä‘Æ°á»£c Ä‘Æ°a vÃ o bá»‡nh viá»‡n tÃ¢m tháº§n.', '', 'Nguoi Dien Yeu, I&#39m a Cyborg but That&#39s OK', 'Nguoi Dien Yeu,I&#39m a Cyborg but That&#39s OK,Park Chan-wook,Bi Rain,Lim Su-jeong,Choi Hie-jin,Joy Fund, Moho Films'),
(146, 'Má»™t cuá»™c tÃ¬nh cáº£m Ä‘á»™ng Ä‘Æ°á»£c diá»…n ra váº»n váº¹n trong 25 phÃºt. Chá»‰ ngáº§n áº¥y thá»i gian, ngÆ°á»i xem Ä‘i qua cÃ¡c cung báº­c há»‰, lá»™, Ã¡i, á»‘ khÃ¡c nhau Ä‘á»ƒ rá»“i tim nhÆ° ngháº¹n láº¡i trÆ°á»›c káº¿t thÃºc cá»§a má»™t tÃ¬nh yÃªu Ä‘áº¹p nhÆ°ng buá»“n. CÃ¢u chuyá»‡n tÃ¬nh cá»§a Ä‘Ã´i báº¡n tráº» tuá»•i 20 Ä‘Ã£ khiáº¿n hÃ ng váº¡n trÃ¡i tim xÃºc Ä‘á»™ng vÃ  nháº­n ra Ã½ nghÄ©a cá»§a tÃ¬nh yÃªu: &quot;TÃ¬nh yÃªu lÃ  sá»± cho Ä‘i mÃ  khÃ´ng cáº§n nháº­n láº¡i&quot;. \r\n\r\n&quot;Xin lá»—i anh chá»‰ lÃ  tháº±ng bÃ¡n bÃ¡nh giÃ²&quot; lÃ  bá»™ phim ngáº¯n cá»§a sinh viÃªn má»™t trÆ°á»ng Ä‘iá»‡n áº£nh TP Há»“ ChÃ­ Minh lÃ m tá»‘t nghiá»‡p. Bá»™ phim ká»ƒ vá» má»‘i tÃ¬nh há»“n nhiÃªn, trong sÃ¡ng nhÆ°ng cÅ©ng Ä‘áº§y sá»± máº¡nh máº½ cá»§a anh chÃ ng tÃªn Nam, 21 tuá»•i vÃ  Vy, cÃ´ gÃ¡i há»“n nhiÃªn á»Ÿ tuá»•i 19. Nam má»“ cÃ´i cha máº¹, lÃªn thÃ nh phá»‘ láº­p nghiá»‡p báº±ng nghá» bÃ¡n bÃ¡nh giÃ². CÃ²n Vy lÃ  cÃ´ gÃ¡i nhÃ­ nháº£nh, dá»… thÆ°Æ¡ng. HÃ ng ngÃ y, cÃ´ phá»¥ giÃºp cha máº¹ bÃ¡n hÃ ng Äƒn váº·t á»Ÿ vá»‰a hÃ¨.\r\n\r\nCuá»™c gáº·p gá»¡ diá»…n ra má»—i tá»‘i cá»§a Ä‘Ã´i báº¡n tráº» táº¡o thÃ nh má»™t má»‘i tÃ¬nh tháº­t lÃ£ng máº¡n, ngá»t ngÃ o. Nhá»¯ng cung báº­c cáº£m xÃºc, nhá»¯ng rung Ä‘á»™ng Ä‘áº§y ngÃ´ nghÃª cá»§a Ä‘Ã´i báº¡n tráº» khiáº¿n ngÆ°á»i xem khÃ´ng khá»i kháº½ cÆ°á»i vÃ¬ thÃ­ch thÃº. TÃ¬nh cáº£m Ä‘áº¿n tháº­t tá»± nhiÃªn, nháº¹ nhÃ ng trong trÃ¡i tim Nam vÃ  Vy. Má»™t chiáº¿c mÅ© Ä‘á»™i Ä‘áº§u, vÃ i dÃ²ng thÆ° viáº¿t vá»™i, má»™t sá»± ngÆ°á»£ng ngÃ¹ng trao lÃ¡ thÆ° rá»“i vá»™i Ä‘áº¡p xe Ä‘i...Táº¥t cáº£ nhá»¯ng Ä‘iá»u nhá» nháº·t Ä‘Ã³ láº¡i lÃ m nÃªn má»™t tÃ¬nh yÃªu thiÃªng liÃªng vÃ  sÃ¢u Ä‘áº­m trong trÃ¡i tim Nam. \r\n\r\nChi tiáº¿t khiáº¿n ngÆ°á»i xem cáº£m Ä‘á»™ng nháº¥t cÃ³ láº½ lÃ  mÃ n tá» tÃ¬nh dÆ°á»›i mÆ°a. NgÆ°á»i ta báº¯t gáº·p hÃ¬nh áº£nh má»™t cÃ´ gÃ¡i bÄƒng mÃ¬nh trong lÃ n mÆ°a Ä‘á»ƒ gáº·p ngÆ°á»i con trai mÃ  mÃ¬nh tháº§m thÆ°Æ¡ng trá»™m nhá»›. CÃ¢u nÃ³i: &quot;...nhÆ°ng em hÃ´m nay nhá»› anh, anh cÃ³ nhá»› em khÃ´ng?&quot;, khiáº¿n ngÆ°á»i xem nhÆ° vá»¡ Ã²a vÃ¬ cÃ´ gÃ¡i nÃ³i lÃªn Ä‘Æ°á»£c tÃ¬nh cáº£m cá»§a mÃ¬nh. Khi chÃ ng trai xÃ³a bá» sá»± ngÆ°á»£ng ngÃ¹ng Ä‘á»ƒ bÃ y tá» tÃ¬nh yÃªu, Ä‘Ã´i bÃ n tay náº¯m cháº·t nhau dÆ°á»›i mÆ°a cÅ©ng lÃ  lÃºc máº¯t ngÆ°á»i xem nhÃ²a lá»‡ vÃ¬ xÃºc Ä‘á»™ng.\r\n\r\nNhÆ°ng tÃ¬nh yÃªu Ä‘áº¹p Ä‘Ã³ cá»§a Ä‘Ã´i báº¡n tráº» láº¡i váº¥p pháº£i sá»± ngÄƒn cáº£n cá»§a máº¹ Vy. NguyÃªn nhÃ¢n cÅ©ng chá»‰ vÃ¬ Nam lÃ  chÃ ng trai nghÃ¨o. Máº·c dÃ¹ bá»‹ cáº¥m Ä‘oÃ¡n, nhÆ°ng khi biáº¿t cha Vy bá»‹ bá»‡nh náº·ng cáº§n tiá»n chá»¯a trá»‹, Nam Ä‘Ã£ mang toÃ n bá»™ sá»‘ tiá»n Ä‘Ã£ tÃ­ch gÃ³p bao nÄƒm qua Ä‘á»ƒ cha Vy lÃ m pháº«u thuáº­t. CÃ¢u chuyá»‡n háº³n sáº½ nhanh chÃ³ng nhÃ²a Ä‘i trong tÃ¢m trÃ­ ngÆ°á»i xem náº¿u nhÆ° khÃ´ng cÃ³ má»™t cÃ¡i káº¿t bi ká»‹ch nhÆ°ng cÅ©ng Ä‘áº§y tÃ­nh nhÃ¢n vÄƒn. Nam cháº¿t bá»Ÿi má»™t láº½ anh cÅ©ng mang trong mÃ¬nh má»™t khá»‘i u vÃ  vÃ¬ khÃ´ng cÃ³ tiá»n lÃ m pháº«u thuáº­t mÃ  Nam Ä‘Ã£ ra Ä‘i nhÆ°ng tÃ¬nh yÃªu cá»§a anh thÃ¬ cÃ²n láº¡i mÃ£i.', '', 'xin loi, anh chi la, thang ban banh gio', 'Xin loi, anh chi la thang ban banh gio,Sorry, I&#39m just a guy selling bread rolls,Pham Loc,Nha Phuong, Vo Dinh Hieu, Kim Khanh, Nam Yen, Vu Trung Hieu, Nguyen Ngoc Cuong, Bim Bim.,Hong Minh'),
(147, 'CÃ¢u chuyá»‡n xoay quanh má»‘i quan há»‡ phá»©c táº¡p giá»¯a nhiá»u nhÃ¢n váº­t Ä‘áº¿n tá»« nhiá»u nÆ°á»›c khÃ¡c nhau: Kiá»u Phong, ÄoÃ n Dá»±, HÆ° TrÃºc. ÄÃ¢y lÃ  báº£n phim cá»§a Trung Quá»‘c do Há»“ QuÃ¢n , LÃ¢m ChÃ­ DÄ©nh vÃ  Cao Há»• Ä‘Ã³ng vai chÃ­nh, Ä‘Æ°á»£c Ä‘Ã¡nh giÃ¡ lÃ  báº£n phim hoÃ n háº£o nháº¥t.', '', 'Thien Long Bat Bo, Tian Long Ba Bu', 'Thien Long Bat Bo,Tian Long Ba Bu,Chu Hieu Van,Lam Chi Dinh, Luu Diec Phi, Ho Quan, Cao Ho, Tran Hao,CCTV'),
(148, 'Bá»™ phim dá»±a trÃªn tiá»ƒu thuyáº¿t ná»•i tiáº¿ng Tam Quá»‘c diá»…n nghÄ©a cá»§a La QuÃ¡n Trung viáº¿t vÃ o tháº¿ ká»‰ 14 ká»ƒ vá» thá»i kÃ¬ há»—n loáº¡n cá»§a Trung Quá»‘c.', '', 'Tan Tam Quoc Dien Nghia, Three Kingdoms', 'Tan Tam Quoc Dien Nghia,Three Kingdoms,Cao Hy Hy,Lam tam nhu, Ha nhuan dong, Luc nghi, Tran kien ban,Dong Phuong Hang Hoa Bac Kinh'),
(149, 'Robert Scott Ã  má»™t trong nhá»¯ng chuyÃªn gia huáº¥n luyá»‡n giá»i nháº¥t cá»§a lá»±c lÆ°á»£ng Ä‘áº·c nhiá»‡m Delta Force thuá»™c quÃ¢n Ä‘á»™i Má»¹. Anh chÆ¡i thÃ¢n vá»›i Jackie Black, ná»¯ vÃµ sÆ° phá»¥ trÃ¡ch huáº¥n luyá»‡n sá»­ dá»¥ng dao. Khi Laura Newton, con gÃ¡i cá»§a tá»•ng thá»‘ng Má»¹ vÃ  sinh viÃªn Ä‘áº¡i há»c Harvard, bá»‹ báº¯t cÃ³c, cÆ¡ quan máº­t vá»¥ khÃ´ng muá»‘n Ä‘á»ƒ lá»™ tin tá»©c ra ngoÃ i vÃ¬ lo ngáº¡i ráº±ng sá»± nghiá»‡p chÃ­nh trá»‹ cá»§a tá»•ng thá»‘ng cÃ³ thá»ƒ bá»‹ áº£nh hÆ°á»Ÿng.', '', 'Tran Chien Ngoai Du Kien, Spartan', 'Tran Chien Ngoai Du Kien,Spartan,David Mamet,Val Kilmer, Derek Luke, William H. Macy,ApolloMedia, ApolloProMedia GmbH &amp; Co. 1. Filmproduktion KG (I), Art Linson Productions'),
(150, 'Trong chuyáº¿n du lá»‹ch Ä‘áº¿n ThÃ¡i Lan, Mike Ä‘Ã£ bá»‹ bá»n xáº¥u lá»«a gáº¡t háº¿t tiá»n báº¡c, anh Ä‘Ã£ vÃ´ tÃ¬nh káº¿t báº¡n vá»›i Yo má»™t tay Ä‘áº¥u quyá»n chuyÃªn nghiá»‡p. VÃ¬ muá»‘n cÃ³ tiá»n chá»¯a trá»‹ cho cÃ´ báº¡n gÃ¡i cá»§a mÃ¬nh bá»‹ tai náº¡n, anh vÃ  Mike Ä‘Ã£ lÃ m phÃ¡ vá»¡ káº¿ hoáº¡ch cá»§a má»™t Ã´ng trÃ¹m chuyÃªn tá»• chá»©c cÃ¡c giáº£i Ä‘áº¥u quyá»n ThÃ¡i dáº«n Ä‘áº¿n cáº£ 3 ngÆ°á»i bá»‹ truy sÃ¡t ...', '', 'Tu Chien, Fighting Fish', 'Tu Chien,Fighting Fish,Julaluck Ismalone,Jawed El Berni,David Ismalone,Jakkrit Kanokpodjananon,Saga Studio'),
(151, 'á»ž tháº¿ giá»›i quÃ¡i váº­t, chÃºng dÃ¹ng nÄƒng lÆ°á»£ng tá»« má»™t nguá»“n Ä‘áº·c biá»‡t - tiáº¿ng hÃ©t kinh sá»£ cá»§a tráº» em á»Ÿ tháº¿ giá»›i loÃ i ngÆ°á»i. Sulley vÃ  Randall lÃ  hai hÃ¹ dá»a viÃªn xuáº¥t sáº¯c nháº¥t, vÃ  há» hanh Ä‘ua vá»›i nhau tá»«ng giÃ¢y tá»«ng phÃºt. Tháº¿ nhÆ°ng dÃ¹ tiáº¿ng hÃ©t cá»§a tráº» em lÃ  nÄƒng lÆ°á»£ng, cÃ¡c quÃ¡i váº­t váº«n coi nhá»¯ng Ä‘á»©a bÃ© lÃ  sinh váº­t cháº¿t ngÆ°á»i cáº§n pháº£i trÃ¡nh xa.', '', 'Cong Ty Quai Vat, Monsters, Inc.', 'Cong Ty Quai Vat,Monsters, Inc.,Pete Docter, David Silverman,John goodman,  billy crystal, Mary gibbs,Pixar Animation Studios, Walt Disney Pictures'),
(152, 'Äáº·c vá»¥ FBI Fox Mulder, do muá»‘n tÃ¬m láº¡i ngÆ°á»i em gÃ¡i máº¥t tÃ­ch cá»§a mÃ¬nh, dáº¥n thÃ¢n vÃ o Ä‘iá»u tra X-files vá»›i niá»m tin ráº±ng em gÃ¡i cá»§a anh bá»‹ ngÆ°á»i ngoÃ i TrÃ¡i Äáº¥t báº¯t cÃ³c. Mulder ráº¥t tin tÆ°á»Ÿng vÃ o sá»± tá»“n táº¡i cá»§a ngÆ°á»i ngoÃ i TrÃ¡i Äáº¥t.', '', 'Ho So Chet, The X-files: I Want To Believe', 'Ho So Chet,The X-files: I Want To Believe,Chris Carter,Gillian Anderson, Amanda Peet, David Duchovny,Twentieth Century Fox Film Corporation ,  Ten Thirteen Productions ,  Dune Entertainment I'),
(153, 'Thanh tra Jack Verdon Ä‘ang Ä‘iá»u tra má»™t vá»¥ giáº¿t ngÆ°á»i hÃ ng loáº¡t thÃ¬ chá»£t phÃ¡t hiá»‡n ra má»™t Ä‘iá»ƒm máº¥u chá»‘t: táº¥t cáº£ cÃ¡c phá»¥ ná»¯ bá»‹ giáº¿t Ä‘á»u Ä‘Ã£ tá»«ng quan há»‡ vá»›i anh hoáº·c tá»«ng cÃ³ má»™t má»‘i liÃªn há»‡ nÃ o Ä‘Ã³ vá»›i anh trong quÃ¡ khá»©.', '', 'Sat Nhan Ben Song, The River Murders', 'Sat Nhan Ben Song,The River Murders,Rich Cowan,Ray Liotta, Christian Slater, Ving Rhames, Gisele Fraga,March On Productions ,  Mudflap Films ,  North by Northwest Productions'),
(154, 'TrÃºng thÆ°á»Ÿng má»™t chuyáº¿n du lá»‹ch tá»›i miá»n Nam nÆ°á»›c PhÃ¡p, ngÃ i Bean cÃ³ cÆ¡ há»™i trá»‘n khá»i thá»i tiáº¿t áº©m Æ°á»›t cá»§a London. Vá»›i chiáº¿c mÃ¡y quay du lá»‹ch, cÅ©ng lÃ  pháº§n thÆ°á»Ÿng Ä‘i kÃ¨m, ngÃ i Bean hÃ o há»©ng lÃªn Ä‘Æ°á»ng. NhÆ°ng sá»± háº­u Ä‘áº­u cá»§a Bean Ä‘Ã£ khiáº¿n chuyáº¿n du lá»‹ch biáº¿n thÃ nh má»™t cuá»™c phiÃªu lÆ°u (báº¥t Ä‘áº¯c dÄ©) Ä‘áº§y báº¥t ngá».', '', 'Ky Nghi Cua Ngai Bean, Mr. Bean&#39s Holiday', 'Ky Nghi Cua Ngai Bean,Mr. Bean&#39s Holiday,Steve Bendelack,Rowan Atkinson, Steve Pemberton, Mr Bean, Lily Atkinson, Preston Nyman,Universal Pictures, Studio Canal, Motion Picture Alpha Produktionsgesellschaft'),
(155, 'Phim láº¥y bá»‘i cáº£nh nhá»¯ng cÃ¡nh rá»«ng báº¡t ngÃ n vÃ  bÃ­ áº©n xen láº«n nhiá»u yáº¿u tá»‘ ká»³ áº£o vÃ o cuá»‘i thá»i Muromachi (1392 - 1572), nÆ¡i mÃ  sÃºng Ä‘áº¡n dáº§n thay tháº¿ cho Ä‘ao kiáº¿m, sá»± thá»‘ng trá»‹ cá»§a cÃ¡c samurai suy yáº¿u Ä‘áº¿n má»©c biáº¿n há» thÃ nh nhá»¯ng tÃªn cÆ°á»›p bÃ³c. VÃ o thá»i Ä‘iá»ƒm nÃ y, ngÆ°á»i Nháº­t Báº£n nÃ³i riÃªng vÃ  loÃ i ngÆ°á»i nÃ³i chung Ä‘Ã£ cÃ³ Ã½ thá»©c chinh phá»¥c, khai phÃ¡ thiÃªn nhiÃªn báº±ng sá»©c lá»±c, trÃ­ tuá»‡ cá»§a mÃ¬nh.', '', 'Cong Chua Soi, Princess Mononoke', 'Cong Chua Soi,Princess Mononoke,Hayao Miyazaki,Yoji matsuda, Yuriko ishida, YÃ»ko tanaka,DENTSU Music And Entertainment, Nibariki, Nippon Television Network Corporation'),
(156, 'Lawrence Talbot rá»i khá»i quÃª hÆ°Æ¡ng tá»« nhá» sau cÃ¡i cháº¿t cá»§a máº¹. Trá»Ÿ vá» quÃª hÆ°Æ¡ng vÃ¬ vá»¥ máº¥t tÃ­ch bÃ­ áº¥n cá»§a em trai, anh má»›i Ä‘Æ°á»£c gáº·p ngÆ°á»i cha xa láº¡. Äáº±ng sau vá»¥ Ã¡n kia lÃ  bÃ­ máº­t cháº¿t chÃ³c vá» ngÆ°á»i sÃ³i mÃ  Lawrence khÃ´ng ngá» tá»›i.', '', 'Nguoi Soi, The Wolfman', 'Nguoi Soi,The Wolfman,Joe Johnston,Anthony hopkins, Benicio del toro, Emily blunt,Universal Pictures, Relativity Media, Stuber Productions'),
(157, 'Nhiá»u nÄƒm qua, Yi luÃ´n gáº·p pháº£i má»™t giáº¥c mÆ¡ cá»© láº·p Ä‘i láº·p láº¡i, trong giáº¥c mÆ¡ Ä‘Ã³, cÃ´ Ä‘á»©ng má»™t mÃ¬nh trÃªn vÃ¹ng Ä‘áº¥t hoang vá»›i má»™t bÃ­ máº­t Ä‘ang chÃ´n vÃ¹i dÆ°á»›i lÃ²ng Ä‘áº¥t. Trong khi Ä‘Ã³, táº¡i má»™t nÆ¡i khÃ¡c, trung sÄ© Au Ä‘ang tuyá»‡t vá»ng vÃ¬ chÃ¡u trai bá»‹ báº¯t cÃ³c. Liá»‡u giáº¥c mÆ¡ cá»§a Yi cÃ³ liÃªn quan tá»›i vá»¥ Ã¡n nÃ y?', '', 'Mong Du, Sleepwalker', 'Mong Du,Sleepwalker,Banh Thuan,Ly tam khiet, Hoac tu yen, Duong the ni,Shaw Organisation'),
(158, 'Má»™t gÃ£ há» vÃ´ danh vá»‘n ráº¥t yÃªu quÃ½ tráº» thÆ¡ vÃ´ tÃ¬nh bá»‹ cháº¿t khi cá»‘ gáº¯ng mang láº¡i tiáº¿ng cÆ°á»i cho má»i ngÆ°á»i. VÃ´ cÃ¹ng oÃ¡n háº­n, trong buá»•i tá»‘i u Ã¡m háº¯n há»“i sinh vÃ  quay trá»Ÿ láº¡i tráº£ thÃ¹ nhá»¯ng ngÆ°á»i Ä‘ang tham dá»± buá»•i tiá»‡c gáº§n Ä‘Ã³...', '', 'Thang He Sat Thu, Stitches', 'Thang He Sat Thu,Stitches,Conor McMahon,Ross Noble,Tommy Knight, Eoghan McQuinn,Fantastic Films, Irish Film Board, MPI Media Group'),
(159, 'Anh chÃ nh TrÆ°Æ¡ng bÃ©o bá»‹ báº¡n thÃ¡ch Ä‘á»‘ ngá»§ trong ngÃ´i miáº¿u hoang vÃ  gá»t tÃ¡o trÆ°á»›c gÆ°Æ¡ng, Ä‘iá»u tÆ°Æ¡ng truyá»n lÃ  sáº½ triá»‡u há»“i ma quá»· vá» cÃµi dÆ°Æ¡ng. DÃ¹ cÃ³ gan thá»±c hiá»‡n lá»i thÃ¡ch thá»©c trÃªn, báº¡n cá»§a TrÆ°Æ¡ng bÃ©o bá»‹ ma báº¯t, chá»‰ cÃ³ anh chÃ ng cháº¡y thoÃ¡t sau khi cháº·t cá»¥t má»™t tay cá»§a con quÃ¡i.', '', 'Cuong Thi Vat Cuong Thi, Spooky Encounters', 'Cuong Thi Vat Cuong Thi,Spooky Encounters,Hong Kim Bao,Hong Kim Bao,Bo Ho Film Company Ltd., Golden Harvest Company'),
(160, 'Lo láº¯ng vÃ¬ ngÆ°á»i cha quÃ¡ cá»‘ chá»‰ Ä‘á»ƒ láº¡i cho mÃ¬nh ngÃ´i nhÃ  tÄƒm tá»‘i Ä‘á»• nÃ¡t chá»© khÃ´ng pháº£i lÃ  hÃ ng triá»‡u Ä‘Ã´ la, Carrigan Crittenden Ä‘Ã£ sáºµn sÃ ng Ä‘á»‘t bá» ngÃ´i nhÃ  náº¿u khÃ´ng phÃ¡t hiá»‡n ra má»™t táº¥m báº£n Ä‘á»“ kho bÃ¡u. NhÆ°ng khi Â vÃ o trong ngÃ´i nhÃ  Ä‘á»ƒ tÃ¬m kho bÃ¡u, bÃ  ta Ä‘Ã£ bá»‹ má»™t Ä‘Ã n ma lÃ m cho khiáº¿p sá»£ bá» cháº¡y. KiÃªn quyáº¿t pháº£i tim kho bÃ¡u cho báº±ng Ä‘Æ°á»£c, bÃ  ta Ä‘Ã£ thuÃª GiÃ¡o sÆ° Harvey chuyÃªn vá» cuá»™c sá»‘ng sau cÃ¡i cháº¿t vÃ  cÃ´ con gÃ¡i Kat Ä‘áº¿n á»Ÿ ngÃ´i nhÃ  má»›i Ä‘á»ƒ Ä‘uá»•i ma.', '', 'Casper: Con Ma Vui Ve, Casper', 'Casper: Con Ma Vui Ve,Casper,Brad Silberling,Bill Pullman, Christina Ricci,Cathy Moriarty,Universal Pictures, Amblin Entertainment, Harvey Entertainment Company'),
(161, 'Sau má»™t vá»¥ Ä‘áº¯m tÃ u nghiÃªm trá»ng, chÃ ng tá»‰ phÃº Äƒn chÆ¡i cÃ³ tiáº¿ng cá»§a thÃ nh phá»‘ Starling - Oliver Queen máº¥t tÃ­ch vÃ  khÃ´ng cÃ³ hy vá»ng sá»‘ng sÃ³t. NÄƒm nÄƒm sau, anh báº¥t ngá» xuáº¥t hiá»‡n trÃªn má»™t hÃ²n Ä‘áº£o xa xÃ´i á»Ÿ ThÃ¡i BÃ¬nh DÆ°Æ¡ng. Trá»Ÿ vá» nhÃ , táº¥t cáº£ ngÆ°á»i thÃ¢n khÃ´ng nháº­n ra Ä‘Æ°á»£c bÃªn trong Oliver Ä‘Ã£ cÃ³ má»™t sá»± Ä‘á»•i thay máº¡nh máº½, trá»« má»™t ngÆ°á»i lÃ  máº¹ cá»§a anh - Moira.', '', 'Mui Ten Xanh, Arrow', 'Mui Ten Xanh,Arrow,David Nutter,Katie cassidy, Paul blackthorne, Colin donnell, Susanna thompson, Emily bett rickards,Berlanti Productions, Berlanti Television, DC Entertainment'),
(162, 'Percy khÃ¡m phÃ¡ ra ráº±ng cha Ä‘áº» mÃ¬nh lÃ  Poseidon, vá»‹ tháº§n biá»ƒn cáº£! CÃ¹ng lÃºc Ä‘Ã³, tháº§n Zeus Ä‘Ã£ buá»™c tá»™i Percy Äƒn cáº¯p vÅ© khÃ­ tá»‘i thÆ°á»£ng cá»§a Ã´ng - tia sÃ©t quyá»n nÄƒng.', '', 'Ke Cap Tia Chop, Percy Jackson &amp; the Olympians: The Lightning Thief', 'Ke Cap Tia Chop,Percy Jackson &amp; the Olympians: The Lightning Thief,Chris Columbus,Rosario dawson, Steve coogan, Kevin mckidd, Logan lerman, Alexandra daddario,Fox 2000 Pictures, 1492 Pictures, Big Screen Productions'),
(163, 'QuÃ¡ chÃ¡n náº£n vá»›i cuá»™c ná»™i chiáº¿n dai dáº³ng á»Ÿ quÃª hÆ°Æ¡ng, anh chÃ ng Ä‘áº·c vá»¥ Zohan quyáº¿t Ä‘á»‹nh bá» trá»‘n sang New York Ä‘á»ƒ thá»±c hiá»‡n Æ°á»›c mÆ¡ cá»§a mÃ¬nh: trá»Ÿ thÃ nh má»™t thá»£ há»›t tÃ³c. TrÃªn quÃª hÆ°Æ¡ng má»›i, nhá»¯ng sá»± cá»‘ dá»“n dáº­p xáº£y Ä‘áº¿n khiáº¿n Zohan pháº£i váº­n dá»¥ng nhá»¯ng ká»¹ nÄƒng Ä‘áº·c vá»¥ cá»§a mÃ¬nh Ä‘á»ƒ tá»“n táº¡i, gÃ¢y ra nhá»¯ng tÃ¬nh huá»‘ng cÆ°á»i cháº£y ra nÆ°á»›c máº¯t.', '', 'Dac Vu Cat Toc, You Don&#39t Mess With The Zohan', 'Dac Vu Cat Toc,You Don&#39t Mess With The Zohan,Dennis Dugan,Adam Sandler, Emmanuelle Chriqui  , John Turturro,Columbia Pictures, Relativity Media, Happy Madison Productions'),
(164, 'Bá»™ phim láº¥y bá»‘i cáº£nh nhá»¯ng nÄƒm 40 Â á»Ÿ tráº¡i táº­p trung cá»§a Äá»©c Quá»‘c XÃ£, nÆ¡i chá»§ yáº¿u giam cáº§m nhá»¯ng ngÆ°á»i Do ThÃ¡i. ÄÃ¢y cÅ©ng thá»i Ä‘iá»ƒm Ä‘i Ä‘áº¿n há»“i káº¿t cá»§a cuá»™c Tháº¿ chiáº¿n thá»© 2 khi mÃ  quÃ¢n Äá»©c Ä‘ang dáº§n Ä‘i Ä‘áº¿n phÃ¡ sáº£n. Äá»ƒ chu cáº¥p cho chiáº¿n tranh, má»™t nhÃ³m ngÆ°á»i Äá»©c Ä‘Ã£ lÃ m tiá»n giáº£ vÃ  Ä‘á»“ng thá»i cÅ©ng lÃ  Ä‘á»ƒ phÃ¡ hoáº¡i ná»n kinh táº¿ cá»§a hai nÆ°á»›c lá»›n thá»i Ä‘Ã³, lÃ  Má»¹ vÃ  Anh thÃ´ng qua viá»‡c lÃ m giáº£ Ä‘á»“ng ÄÃ´ la vÃ  Ä‘á»“ng Báº£ng.', '', 'Nhung Ke Lam Bac Gia, The Counterfeiters', 'Nhung Ke Lam Bac Gia,The Counterfeiters,Stefan Ruzowitzky,Karl Markovics, August Diehl,Devid Striesow,Magnolia Filmproduktion, Babelsberg Film, Beta Cinema'),
(165, 'Mika lÃ  tiáº¿p viÃªn trÃªn chiáº¿c mÃ¡y bay sáº¯p sá»­a háº¡ cÃ¡nh xuá»‘ng sÃ¢n bay Haneda theo Ä‘Ãºng lá»‹ch trÃ¬nh. Äá»™t nhiÃªn, Ä‘á»™ng cÆ¡ mÃ¡y bay bá»‘c chÃ¡y. Äá»ƒ cá»©u 346 ngÆ°á»i trÃªn mÃ¡y bay, Senzaki Daisuke vÃ  Ä‘á»™i cá»©u há»™ Ä‘Æ°á»£c gá»i Ä‘áº¿n thá»±c thi nhiá»‡m vá»¥...', '', 'Doi Cuu Ho Anh Hung, Brave Hearts: Umizaru', 'Doi Cuu Ho Anh Hung,Brave Hearts: Umizaru,Eiichiro Hasumi,Hideaki Ito,Ai Kato,RyÃ»ta Sato,A-Team, Fuji Television Network, Pony Canyon'),
(166, 'Yoshie, em gÃ¡i cá»§a má»™t Geisha ná»•i tiáº¿ng luÃ´n bá»‹ Ã¡p bá»©c hÃ nh háº¡ cho Ä‘áº¿n má»™t ngÃ y, Yoshie nháº­n ra mÃ¬nh cÃ³ kháº£ nÄƒng chiáº¿n Ä‘áº¥u Ä‘áº·c biá»‡t. CÃ´ Ä‘Æ°á»£c tuyá»ƒn dá»¥ng vÃ o má»™t Ä‘Ã´i quÃ¢n sÃ¡t thá»§ dÆ°á»›i vá» bá»c Geisha do Kegeno, má»™t tÃªn trÃ¹m giÃ u cÃ³ vÃ  tham vá»ng lÃ m chá»§. Trong suá»‘t quÃ¡ trÃ¬nh rÃ¨n luyá»‡n, Yoshie Ä‘Æ°á»£c dáº¡y cÃ¡ch sá»­ dá»¥ng táº¥t cáº£ cÃ¡c bá»™ pháº­n trÃªn cÆ¡ thá»ƒ nhÆ° má»™t thá»© vÅ© khÃ­ há»¯u hiá»‡u.Â ', '', 'Co May Geisha, RoboGeisha', 'Co May Geisha,RoboGeisha,Noboru Iguchi,Yoshihiro Nishimura , Imajuku Asami, Naoto Takenaka,Kadokawa Eiga K.K., Movie Gate Co., Pony Canyon'),
(167, 'NÄƒm 1996, táº¡i vÃ¹ng North Bend, Oregon, cáº£nh sÃ¡t Ä‘Ã£ báº¯t giá»¯ Ä‘Æ°á»£c Kristen Ä‘ang thÃ¡o cháº¡y sau khi chÃ¢m lá»­a Ä‘á»‘t má»™t cÄƒn nhÃ . Sau Ä‘Ã³ cÃ´ bá»‹ nhá»‘t táº¡i Bá»‡nh viá»‡n tÃ¢m tháº§n North Bend. Kristen Ä‘Æ°á»£c giá»›i thiá»‡u cho bÃ¡c sÄ© trá»‹ liá»‡u Gerald Stringer. CÃ´ gáº·p cÃ¡c tÃ¹ nhÃ¢n Emily, Sarah, Joey, Iris vÃ  bÃ  y tÃ¡ Ä‘Ã¡ng sá»£ Lundt.', '', ',Dac Khu Tu Than, The Ward', 'Dac Khu Tu Than,The Ward,John Carpenter,Amber Heard, Mamie Gummer, Danielle Panabaker, Laura-Leigh, Jared Harris,FilmNation Entertainment, Premiere Picture, Echo Lake Productions (I)'),
(168, 'BÃ¡c há»c Robert Neville báº¥t lá»±c nhÃ¬n loáº¡i virus biáº¿n con ngÆ°á»i thÃ nh ma cÃ  rá»“ng lÃ¢y lan kháº¯p thÃ nh phá»‘. Anh lÃ  ngÆ°á»i sá»‘ng sÃ³t duy nháº¥t á»Ÿ New York cÃ¹ng chÃº chÃ³ Sam. Giá»¯a thÃ nh phá»‘ cháº¿t, Robert vá»«a chá»‘ng chá»i Ä‘á»ƒ sinh tá»“n, vá»«a gá»­i thÃ´ng Ä‘iá»‡p Ä‘á»ƒ tÃ¬m kiáº¿m nhá»¯ng ngÆ°á»i cÃ²n sá»‘ng sÃ³t nhÆ° anh.', '', 'Thanh Pho Chet , I am Legend', 'Thanh Pho Chet,I am Legend,Francis Lawrence,Will smith, Alice braga, Charlie tahan,Warner Bros. Pictures, Village Roadshow Pictures, Weed Road Pictures'),
(169, 'Gia Ä‘Ã¬nh Ã´ng Kusakabe chuyá»ƒn vá» vÃ¹ng nÃ´ng thÃ´n sinh sá»‘ng. á»ž cÄƒn nhÃ  mÃ³i mÃ  há» sáº¯p chuyá»ƒn tá»›i bá»‹ Ä‘á»“n Ä‘áº¡i lÃ  cÃ³ ma Ã¡m. Hai chá»‹ em Satsuki vÃ  Mei vÃ´ cÃ¹ng tÃ² mÃ² vá» Ä‘iá»u áº¥y.', '', 'Ban Quai Vat Lang Gieng, My Neighbor Totoro', 'Ban Quai Vat Lang Gieng,My Neighbor Totoro,Hayao Miyazaki,Hitoshi takagi, Noriko hidaka, Toshiyuki amagasa,Tokuma Japan Communications Co. Ltd., Studio Ghibli, Nibariki'),
(170, 'Mowgli, dÃ¹ trá»Ÿ vá» vá»›i cuá»™c sá»‘ng vÄƒn minh vá»›i sá»± giÃºp Ä‘á»¡ cá»§a ngÆ°á»i báº¡n Shanti vÃ  ngÆ°á»i em trai má»›i, váº«n cáº£m tháº¥y nhá»› rá»«ng xanh. Do Ä‘Ã³, khi Baloo Ä‘áº¿n thÄƒm, chÃº bÃ© rá»«ng xanh Ä‘Ã£ nhÃ¢n cÆ¡ há»™i nÃ y trá»Ÿ vá» khu rá»«ng hoang dÃ£ cá»§a mÃ¬nh. Tuy nhiÃªn, Shanti Ä‘Ã£ nghÄ© ráº±ng Mowgli bá»‹ báº¯t cÃ³c, do Ä‘Ã³ quyáº¿t Ä‘á»‹nh Ä‘i theo há».', '', 'Cau Be Rung Xanh, The Jungle Book 2', 'Cau Be Rung Xanh,The Jungle Book 2,Steve Trenbirth,John goodman, Haley joel osment , Tony jay,Walt Disney Pictures'),
(171, 'Bá»™ phim báº¯t Ä‘áº§u vá»›i tai náº¡n Ä‘áº¯m tÃ u cá»§a Tarzan vÃ  cha máº¹. Há» dáº¡t vÃ o má»™t hoang Ä‘áº£o á»Ÿ chÃ¢u Phi Ä‘áº§y thÃº dá»¯. Sau khi máº¥t cáº£ hai ngÆ°á»i thÃ¢n vÃ¬ bÃ¡o Sabor, cáº­u bÃ© Ä‘Æ°á»£c khá»‰ máº¹ Karla, con khá»‰ vá»«a máº¥t con vÃ¬ Sabor, cá»©u sá»‘ng.', '', 'Chua Te Rung Xanh, Tarzan', 'Chua Te Rung Xanh,Tarzan,Chris Buck, Kevin Lima,Tony goldwyn,  minnie driver , Brian blessed,Walt Disney Pictures, Edgar Rice Burroughs Inc., Walt Disney Feature Animation'),
(172, 'GiÃ¡o SÆ° Wai, má»™t nhÃ  thÃ¡m hiá»ƒm Ä‘á»“ng thá»i cÅ©ng lÃ  má»™t tÃªn cÆ°á»›p má»™ du hÃ nh vÃ²ng quanh tháº¿ giá»›i Ä‘á»ƒ tÃ¬m kiáº¿m nhá»¯ng báº£o váº­t vÃ´ giÃ¡.Â  Äáº¿n má»™t ngÃ y, anh pháº£i Ä‘á»‘i Ä‘áº§u vá»›i má»™t nhÃ³m ngÆ°á»i Nháº­t Báº£n vÃ¬ kho bÃ¡u anh Ä‘ang tÃ¬m kiáº¿m láº¡i lÃ  linh váº­t cá»§a há»...', '', 'Mao Hiem Vuong, Dr.Wai in the Scriptures with No Words', 'Mao Hiem Vuong,Dr.Wai in the Scriptures with No Words,Siu-Tung Ching,Takeshi Kaneshiro, Ly Lien Kiet, Quan Chi Lam,Win&#39s Entertainment Ltd., Eastern Productions, China Film Co-Production Corporation'),
(173, 'HoÃ ng Phi Há»“ng vÃ¬ quÃ¡ nghá»‹ch ngá»£m nÃªn bá»‹ cha gá»­i tá»›i thá» giÃ¡o cÃ¹ng TÃ´ Kháº¥t Di, vá»‹ sÆ° phá»¥ tÃ­nh tÃ¬nh quÃ¡i gá»Ÿ ná»•i tiáº¿ng hay Ä‘Ã¡nh quÃ¨ Ä‘á»“ Ä‘á»‡. Anh bá»‹ hÃ nh háº¡ Ä‘áº¿n cÃ¹ng cá»±c mÃ  khÃ´ng nháº­n ra lÃ  vá»‹ sÆ° phá»¥ Ä‘ang luyá»‡n cÃ´ng cho mÃ¬nh theo má»™t cÃ¡ch thá»©c riÃªng.', '', 'Tuy Quyen: Phan 2, Drunken Master 2', 'Tuy Quyen: Phan 2,Drunken Master 2,Chia-Liang Liu,Lung Ti,Golden Harvest Company, Hong Kong Stuntman Association, Paragon Films Ltd.'),
(174, 'CÃ¢u chuyá»‡n má»Ÿ Ä‘áº§u vá»›i tráº­n chiáº¿n táº¡i má»™t bá» biá»ƒn hoang váº¯ng vÃ o ban Ä‘Ãªm giá»¯a ninja lÃ ng CÃ¡t vÃ  nhá»¯ng tÃªn khá»•ng lá»“ máº·c chiáº¿c Ã¡o giÃ¡p nÃ¢u. Nhá»¯ng ninja lÃ ng CÃ¡t Ä‘ang hoÃ n toÃ n bá»‹ tháº¥t tháº¿ trÆ°á»›c nhá»¯ng tÃªn to lá»›n nÃ y. ÄÃºng lÃºc Ä‘Ã³ Gaara vÃ  Kankuro xuáº¥t hiá»‡n Ä‘á»ƒ báº£o vá»‡ há».', '', 'Huyen Thoai Da Gelel, Naruto the Movie 2: Legend of the Stone of Gelel', 'Huyen Thoai Da Gelel,Naruto the Movie 2: Legend of the Stone of Gelel,Hirotsugu Kawasaki,Junko Takeuchi, Chie Nakamura, Shotaro Morikubo,Studio Pierrot'),
(175, 'LÃ ng Konoha bá»‹ táº¥n cÃ´ng bá»Ÿi má»™t nhÃ³m ninja bÃ­ áº©n bay lÆ°á»£n trÃªn báº§u trá»i, liá»‡u má»™t cuá»™c Ä‘áº¡i chiáº¿n Ninja thá»© 3 sáº½ ná»• ra. Trong khi Ä‘Ã³, Sasuke Ä‘Ã£ xuáº¥t hiá»‡n trá»Ÿ láº¡i vá»›i má»™t nhiá»‡m vá»¥ bÃ­ máº­t cho Orochimaru. Naruto cÅ©ng nháº­n Ä‘Æ°á»£c nhiá»‡m vá»¥ Ä‘i Ä‘iá»u tra vá»¥ táº¥n cÃ´ng vÃ  hai ngÆ°á»i Ä‘Ã£ gáº·p nhau. Äiá»u gÃ¬ sáº½ xáº£y ra sau bao nhiÃªu nÄƒm thÃ¡ng tÃ¬m kiáº¿m Sasuke cá»§a Naruto?', '', 'Nhiem Vu Bi Mat, Naruto Shippuuden Movie 2: Bonds', 'Nhiem Vu Bi Mat,Naruto Shippuuden Movie 2: Bonds,Hajime Kamegaki,Junko Takeuchi,Kazuhiko Inoue, Unsho Ishizuka,Gekijo ban Naruto Seisaku Iinkai, Bandai Co. Ltd., Aniplex'),
(176, 'Ãc quá»· Mouryou Ä‘Ã£ tá»«ng má»™t thá»i gáº§n nhÆ° há»§y diá»‡t hoÃ n toÃ n tháº¿ giá»›i , nay láº¡i Ä‘Æ°á»£c há»“i sinh má»™t láº§n ná»¯a. Äá»ƒ giáº£i cá»©u tháº¿ giá»›i khá»i bá»‹ há»§y diá»‡t, Ä‘á»ƒ phong áº¥n Ã¡c quá»· Mouryou chá»‰ cÃ³ duy nháº¥t má»™t ngÆ°á»i lÃ m Ä‘Æ°á»£c. ÄÃ³ lÃ  ná»¯ phÃ¡p sÆ° Shion á»Ÿ Quá»· Quá»‘c vá»›i hai sá»©c máº¡nh Ä‘áº·c biá»‡t, má»™t lÃ  phong áº¥n Ã¡c quá»·, hai lÃ  tiÃªn Ä‘oÃ¡n Ä‘Æ°á»£c cÃ¡i cháº¿t cá»§a ngÆ°á»i khÃ¡c.', '', 'Naruto: Cai Chet Tien Doan, Naruto Shippuden Movie 1: Naruto Hurricane Chronicles', 'Naruto: Cai Chet Tien Doan,Naruto Shippuden Movie 1: Naruto Hurricane Chronicles,Hajime Kamegaki,Junko Takeuchi ,Chie Nakamura ,KÅichi TÅchika,'),
(177, 'LÃ  bá»™ phim Ä‘Æ°á»£c chuyá»ƒn thá»ƒ tá»« phim Ä‘iá»‡n áº£nh &quot;NhÃ¢n viÃªn cÃ´ng vá»¥ cáº¥p 7&quot; Äƒn khÃ¡ch. Äáº·c vá»¥ cáº¥p 7 xoay quanh cáº·p Ä‘Ã´i Ä‘áº·c vá»¥ Han Gil Ro vÃ  Kim Seo Won trong Cá»¥c TÃ¬nh BÃ¡o Quá»‘c Gia (NIS) khi mÃ  há» luÃ´n pháº£i che dáº¥u danh tÃ­nh tháº­t sá»± cá»§a mÃ¬nh. NhÆ°ng trÆ°á»›c Ä‘Ã³, há» á»Ÿ hai hoÃ n cáº£nh Ä‘á»‹a vá»‹ xÃ£ há»™i khÃ¡c nhau, tÃ­nh tÃ¬nh kháº¯c kháº©u cÃ¹ng tham gia lÃ m Ä‘áº·c vá»¥ vá»›i nhá»¯ng má»¥c Ä‘Ã­ch khÃ¡c.', '', 'Dac Vu Cap 7, 7th Grade Civil Servant', 'Dac Vu Cap 7,7th Grade Civil Servant,Kim Sang Hyeop,Ko Joo Won, Choi Kang Hee,Hwang Chan Sung,Apple Pictures, Curtain Call Inc'),
(178, 'â€œTÃ¬nh yÃªu khÃ´ng háº¹n trÆ°á»›câ€ ká»ƒ vá» cuá»™c hÃ nh trÃ¬nh Ä‘i tÃ¬m háº¡nh phÃºc cá»§a ba nhÃ¢n váº­t chÃ­nh: Huy, Mai vÃ  Minh. Huy lÃ  con trai chá»§ tá»‹ch cá»§a má»™t táº­p Ä‘oÃ n lá»›n. Anh cÃ³ trÃ¬nh Ä‘á»™ nhÆ°ng kiÃªu ngáº¡o, Ä‘Ã´i khi tá» ra ngang ngÆ°á»£c. Äá»‘i vá»›i Huy, tÃ¬nh yÃªu luÃ´n lÃ  má»™t trÃ² chÆ¡i, vÃ  anh luÃ´n lÃ  ngÆ°á»i náº¯m tháº¿ chá»§ Ä‘á»™ng bá»Ÿi vá»›i gia tháº¿, ngoáº¡i hÃ¬nh, anh cÃ³ thá»ƒ lÃ m siÃªu lÃ²ng báº¥t cá»© cÃ´ gÃ¡i nÃ o. Má»i chuyá»‡n thay Ä‘á»•i khi anh vÃ´ tÃ¬nh gÃ¢y tai náº¡n cho gia Ä‘Ã¬nh cÃ´ sinh viÃªn tÃªn Mai. Tá»« Ä‘Ã³, Huy luÃ´n bá»‹ Ã¡m áº£nh vá» vá»¥ tai náº¡n vÃ  dÃ¹ cá»‘ cháº¡y chá»‘n, anh váº«n khÃ´ng thá»ƒ sá»‘ng nhÆ° trÆ°á»›câ€¦.', '', ',Tinh Yeu Khong Hen Truoc, Tinh Yeu Khong Hen Truoc', 'Tinh Yeu Khong Hen Truoc,Tinh Yeu Khong Hen Truoc,Trong Trinh, Bui Tien Huy,La Thanh Huyen, Viet Anh,Minh Huong,VFC'),
(179, 'Toriko - anh chÃ ng thá»£ sÄƒn cÃ¡c loÃ i thÃº quÃ½ hiáº¿m trÃªn kháº¯p tháº¿ giá»›i Ä‘á»ƒ phá»¥c vá»¥ thá»±c pháº©m cho cÃ¡c nhÃ  hÃ ng. Má»¥c tiÃªu cá»§a Toriko lÃ  Ä‘Æ°á»£c náº¿m táº¥t cáº£ cÃ¡c mÃ³n ngon trÃªn tráº§n Ä‘á»i vÃ  nÃ¢ng cao thá»±c lá»±c cá»§a báº£n thÃ¢n.', '', 'Tho San My Vi, Toriko', 'Tho San My Vi,Toriko,Akifumi Zako,Romi Park, Ryotaro Okiayu, Akio Ohtsuka,Toei Animation Company'),
(181, 'CÃ¢u chuyá»‡n xáº£y ra ba nÄƒm sau cÃ¡i cháº¿t cá»§a Hyun Joon sáº½ tiáº¿t lá»™ bÃ­ áº©n xung quanh cÃ¡i cháº¿t cá»§a anh vÃ  Baek San, ngÆ°á»i Ä‘Ã£ bá»‹ báº¯t vÃ¬ hoáº¡t Ä‘á»™ng trong tá»• chá»©c bÃ­ máº­t IRIS. Pháº§n 2 Ä‘á»“ng thá»i sáº½ hÃ© lá»™ vá» ngÆ°á»i Ä‘Ã n Ã´ng giáº¥u máº·t - Mister Black, thá»§ lÄ©nh Ä‘iá»u khiá»ƒn táº¥t cáº£ má»i thá»© thÃ´ng qua Baek San. CÃ¡c diá»…n viÃªn trong pháº§n phim thá»© 2 lÃ  nhá»¯ng gÆ°Æ¡ng máº·t ná»•i tiáº¿ng nhÆ° Jang Hyuk, Lee Bum Soo, Ä‘áº·c biá»‡t lÃ  &quot;má»¹ nhÃ¢n dao kÃ©o&quot; Lee Da Hae Â &quot;lá»™t xÃ¡c&quot; thÃ nh Ä‘áº£ ná»¯.', '', 'Mat Danh Iris 2, Iris 2', 'Mat Danh Iris 2,Iris 2,Pyo Min Soo, Kim Tae Hoon,Lee Da Hae, Jang Hyuk, Lee Bum Soo,KBS'),
(182, 'Travis Bickle tá»«ng lÃ  má»™t trong nhá»¯ng lÃ­nh thá»§y Ä‘Ã¡nh bá»™ Má»¹ tham chiáº¿n táº¡i Viá»‡t Nam. Sau khi rá»i quÃ¢n ngÅ© trong danh dá»±, gÃ£ trá»Ÿ thÃ nh má»™t káº» cÃ´ Ä‘á»™c vÃ  chÃ¡n náº£n. Travis sá»‘ng á»Ÿ quáº­n Manhattan vÃ  kiáº¿m sá»‘ng báº±ng nghá» lÃ¡i taxi. Do máº¯c chá»©ng máº¥t ngá»§ kinh niÃªn nÃªn gÃ£ chá»‰ hÃ nh nghá» vÃ o ban Ä‘Ãªm. LÃ m viá»‡c 14 tiáº¿ng má»—i ngÃ y, Travis sáºµn sÃ ng chá»Ÿ khÃ¡ch Ä‘i kháº¯p 5 quáº­n cá»§a New York.', '', 'Quai Xe Taxi, Taxi Driver', 'Quai Xe Taxi,Taxi Driver,Martin Scorsese,robert de niro, Jodie foster , Cybill shepherd,Columbia Pictures Corporation, Bill/Phillips, Italo/Judeo Productions'),
(183, '', '', 'Nhung Chu Khung Long, The Land Before Time - The Wisdom Of Friends', 'Nhung Chu Khung Long,The Land Before Time - The Wisdom Of Friends,Jamie Mitchell, Charles Grosvenor,Cody Arens, Logan Arens, Anndi McAfee, Aria Noelle Curzon,'),
(184, 'ÄÆ°á»£c phÃ³ng tÃ¡c dá»±a theo bá»™ manga cÃ¹ng tÃªn, phim xoay quanh Rock Lee - má»™t ninja khÃ´ng thá»ƒ sá»­ dá»¥ng nháº«n thuáº­t cá»§a lÃ ng lÃ¡ vÃ  cÃ¡c Ä‘á»“ng Ä‘á»™i trong Ä‘á»™i cá»§a Might Guy.', '', 'Naruto Ngoai Truyen: Rock Lee, Rock Lee no Seishun Full-Power Ninden', 'Naruto Ngoai Truyen: Rock Lee,Rock Lee no Seishun Full-Power Ninden,Gorou Sessha,Yukari tamura, Kouichi toochika, Masashi ebara, Yoichi masukawa,Studio Pierrot');
INSERT INTO `ipos_film_info` (`phimid`, `phimtxt`, `phiminfo`, `phimtag`, `timkiem`) VALUES
(185, 'Audrey Parker - má»™t ná»¯ Ä‘áº·c vá»¥ cá»§a FBI cÃ³ quÃ¡ khá»© má» má»‹t tá»›i thá»‹ tráº¥n nhá» á»Ÿ Haven Ä‘á»ƒÂ  giáº£i quyáº¿t cÃ¡c vá»¥ giáº¿t ngÆ°á»i. Táº¡i Ä‘Ã¢y, cÃ´ phÃ¡t hiá»‡n ra vÃ¹ng Ä‘áº¥t nÃ y chÃ­nhÂ  nÆ¡i áº©n nÃ¡u tá»« lÃ¢u cá»§a nhá»¯ng ngÆ°á»i mang trong mÃ¬nh quyá»n lá»±c siÃªu nhiÃªn. Báº£n thÃ¢n há» cÃ²n chá»©a Ä‘á»±ng nhá»¯ng bÃ­ máº­t riÃªng, trong Ä‘Ã³ cÃ³ cáº£ quÃ¡ khá»© cá»§a Audrey.', '', 'Vung Dat Sieu Nhien, Haven', 'Vung Dat Sieu Nhien,Haven,T.W. Peacocke, Lee Rose,Emily Rose,Lucas Bryant, Eric Balfour,Syfy'),
(186, 'Má»™t cháº¥t gÃ¢y nghiá»‡n mang tÃªn Soy Sauce cÃ¹ng vá»›i lá»i quáº£ng cÃ¡o Ä‘áº£m báº£o giÃºp ngÆ°á»i dÃ¹ng &quot;thoÃ¡t xÃ¡c&quot; Ä‘Ã£ khiáº¿n táº¥t cáº£ má»i ngÆ°á»i nhanh chÃ³ng trá»Ÿ nÃªn Ä‘áº¯m chÃ¬m trong má»™t tháº¿ giá»›i áº£o. Sau khi tráº£i qua nhá»¯ng giÃ¢y phÃºt sung sÆ°á»›ng vÆ°á»£t khÃ´ng gian vÃ  thá»i gian... ngÆ°á»i dÃ¹ng trá»Ÿ thÃ nh má»™t sinh váº­t im láº·ng nhÆ°ng nguy hiá»ƒm á»Ÿ cÃ¡i thá»ƒ giá»›i há» du hÃ nh Ä‘áº¿n khi dÃ¹ng thuá»‘c.', '', 'Anh Hung Thoat Xac, John Dies at the End', 'Anh Hung Thoat Xac,John Dies at the End,Don Coscarelli,Rob Mayes, Paul Giamatti, Chase Williamson,M3 Alliance, M3 Creative, Midnight Alliance'),
(187, 'DÃ²ng tá»™c Dracula vá»›i nhá»¯ng truyá»n thuyáº¿t vá» cuá»™c sá»‘ng báº¥t tá»­ nhá» hÃºt mÃ¡u khiáº¿n nhiá»u ngÆ°á»i vÃ´ cÃ¹ng tÃ² mÃ² vÃ  Jonathan Harker cÅ©ng lÃ  má»™t trong sá»‘ Ä‘Ã³. Äá»ƒ khÃ¡m phÃ¡ háº¿t bÃ­ áº©n cá»§a giá»‘ng loÃ i báº¥t tá»­ vá»›i tÃªn gá»i ma cÃ  rá»“ng nÃ y nÃªn Harker quyáº¿t Ä‘á»‹nh lÃ m má»™t chuyáº¿n Ä‘i Ä‘áº¿n lÃ¢u Ä‘Ã i cá»§a bÃ¡ tÆ°á»›c Dracula toáº¡ láº¡c táº¡i Ä‘á»‰nh Carpathian gáº§n biÃªn giá»›i Transylvania. Nhá»¯ng khÃ¡m phÃ¡ cá»§a Harker náº±m ngoÃ i sá»©c tÆ°á»Ÿng tÆ°á»£ng vÃ  tháº­m chÃ­ Ä‘e doáº¡ tÃ­nh máº¡ng cá»§a anh.', '', 'Ac Quy Hoi Sinh, Dracula', 'Ac Quy Hoi Sinh,Dracula,Dario Argento,Asia Argento, Thomas Kretschmann,  Rutger Hauer,Enrique Cerezo Producciones Cinematograficas S.A., Film Export Group, Les Films de l&#39Astre'),
(322, 'cccc', '', 'Phim , Phim ,  vietsub,  vietsub', 'abc,abc,abc,');

-- --------------------------------------------------------

--
-- Table structure for table `ipos_like`
--

CREATE TABLE IF NOT EXISTS `ipos_like` (
  `phimlike` text NOT NULL,
  `userid` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ipos_like`
--

INSERT INTO `ipos_like` (`phimlike`, `userid`) VALUES
('91,214,213,223,315,317,311', '8'),
('71', '28'),
('274', '18'),
('274,192', '19'),
('274', '21'),
('274,148', '23'),
('180,274', '20'),
('176', ''),
('296', '29'),
('305', '31'),
('320,224', '32');

-- --------------------------------------------------------

--
-- Table structure for table `ipos_log`
--

CREATE TABLE IF NOT EXISTS `ipos_log` (
`log_id` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `gold` int(10) NOT NULL,
  `log_txt` text NOT NULL,
  `log_time` int(10) NOT NULL,
  `log_type` tinyint(1) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `ipos_log`
--

INSERT INTO `ipos_log` (`log_id`, `userid`, `gold`, `log_txt`, `log_time`, `log_type`) VALUES
(7, 9, 1, 'Äá»•i 1 Gold thÃ nh  ngÃ y kÃ­ch hoáº¡t', 1364051874, 0),
(6, 9, 500, 'Tráº£ 500 Gold Ä‘á»ƒ xem phim', 1364049648, 0),
(5, 8, 32000, 'Äá»•i 32,000 Gold thÃ nh 20 ngÃ y kÃ­ch hoáº¡t', 1364020532, 0),
(8, 8, 500000, 'Äá»•i 500,000 Gold thÃ nh 540 ngÃ y kÃ­ch hoáº¡t', 1364108547, 0),
(9, 12, 50000, 'Äá»•i 50,000 Gold thÃ nh 35 ngÃ y kÃ­ch hoáº¡t', 1364141501, 0),
(10, 13, 50000, 'Äá»•i 50,000 Gold thÃ nh 35 ngÃ y kÃ­ch hoáº¡t', 1364172687, 0),
(11, 9, 500, 'Tráº£ 500 Gold Ä‘á»ƒ xem phim', 1364385841, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ipos_pages`
--

CREATE TABLE IF NOT EXISTS `ipos_pages` (
`p_id` int(10) NOT NULL,
  `p_title` varchar(255) NOT NULL,
  `p_contents` text NOT NULL,
  `p_status` tinyint(1) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `ipos_pages`
--

INSERT INTO `ipos_pages` (`p_id`, `p_title`, `p_contents`, `p_status`) VALUES
(7, 'Quy Ä‘á»‹nh', '[b]1. Quy Ä‘á»‹nh khi Ä‘Äƒng kÃ½[/b]\r\n \r\n   KhÃ´ng chá»­i bá»›i, kÃ­ch Ä‘á»™ng, lÃ´i kÃ©o, bÃ´i nhá» cÃ¡c thÃ nh viÃªn khÃ¡c.\r\n   KhÃ´ng nÃ³i tá»¥c chá»­i báº­y khi bÃ¬nh luáº­n.\r\n   Nhá»¯ng thÃ nh viÃªn cá»‘ tÃ¬nh vi pháº¡m hoáº·c vi pháº¡m nhiá»u láº§n quy Ä‘á»‹nh sáº½ bá»‹ loáº¡i ra khá»i website.\r\n   KhÃ´ng cháº¥p nháº­n báº¥t cá»© thÃ´ng tin nÃ o Ä‘i ngÆ°á»£c láº¡i vá»›i thuáº§n phong má»¹ tá»¥c vÃ  truyá»n thá»‘ng vÄƒn hoÃ¡ cá»§a nÆ°á»›c Viá»‡t Nam.\r\n   Má»i bÃ i viáº¿t cÃ³ ná»™i dung hoáº·c chá»©a liÃªn káº¿t Ä‘áº¿n cÃ¡c trang web cÃ³ ná»™i dung vi pháº¡m nhá»¯ng Ä‘iá»u trÃªn Ä‘á»u sáº½ Ä‘Æ°á»£c xÃ³a mÃ  khÃ´ng cáº§n thÃ´ng bÃ¡o trÆ°á»›c.\r\n \r\n \r\n[b]2. Rá»§i ro cÃ¡ nhÃ¢n khi truy cáº­p[/b]\r\n \r\nKhi truy cáº­p vÃ o trang web nÃ y báº¡n cháº¥p thuáº­n vÃ  Ä‘á»“ng Ã½ vá»›i viá»‡c cÃ³ thá»ƒ gáº·p má»™t sá»‘ rá»§i ro vÃ  Ä‘á»“ng Ã½ ráº±ng XemPhim-HD.net cÅ©ng nhÆ° cÃ¡c bÃªn liÃªn káº¿t chá»‹u trÃ¡ch nhiá»‡m xÃ¢y dá»±ng trang web nÃ y sáº½ khÃ´ng chá»‹u trÃ¡ch nhiá»‡m phÃ¡p lÃ½ cho báº¥t cá»© thiá»‡t háº¡i nÃ o Ä‘á»‘i vá»›i vá»›i báº¡n dÃ¹ lÃ  trá»±c tiáº¿p, Ä‘áº·c biá»‡t, ngáº«u nhiÃªn, háº­u quáº£ Ä‘á»ƒ láº¡i, bá»‹ pháº¡t hay báº¥t ká»³ máº¥t mÃ¡t, phÃ­ tá»•n hoáº·c chi phÃ­ cÃ³ thá»ƒ phÃ¡t sinh trá»±c tiáº¿p hay giÃ¡n tiáº¿p qua viá»‡c sá»­ dá»¥ng hoáº·c chuyá»ƒn táº£i dá»¯ liá»‡u tá»« trang web nÃ y, bao gá»“m nhÆ°ng khÃ´ng giá»›i háº¡n bá»Ÿi táº¥t cáº£ nhá»¯ng áº£nh hÆ°á»Ÿng do virus, tÃ¡c Ä‘á»™ng hoáº·c khÃ´ng tÃ¡c Ä‘á»™ng Ä‘áº¿n há»‡ thá»‘ng mÃ¡y vi tÃ­nh, Ä‘Æ°á»ng dÃ¢y Ä‘iá»‡n thoáº¡i, phÃ¡ há»ng á»• cá»©ng hay cÃ¡c pháº§n má»m chÆ°Æ¡ng trÃ¬nh, cÃ¡c lá»—i ká»¹ thuáº­t khÃ¡c gÃ¢y cáº£n trá»Ÿ hoáº·c trÃ¬ hoÃ£n viá»‡c truyá»n táº£i qua mÃ¡y vi tÃ­nh hoáº·c káº¿t ná»‘i máº¡ng.\r\n \r\n[b]3. Ná»™i dung[/b]\r\n \r\nCÃ¡c thÃ´ng tin trong trang web nÃ y Ä‘Æ°á»£c cung cáº¥p "nhÆ° Ä‘Ã£ Ä‘Äƒng táº£i" vÃ  khÃ´ng kÃ¨m theo báº¥t ká»³ cam káº¿t nÃ o. Ban quáº£n trá»‹ XemPhim-HD.net khÃ´ng báº£o Ä‘áº£m hay kháº³ng Ä‘á»‹nh sá»± Ä‘Ãºng Ä‘áº¯n, tÃ­nh chÃ­nh xÃ¡c, Ä‘á»™ tin cáº­y hay báº¥t cá»© chuáº©n má»±c nÃ o trong viá»‡c sá»­ dá»¥ng dá»¯ liá»‡u hay káº¿t qá»§a cá»§a viá»‡c sá»­ dá»¥ng dá»¯ liá»‡u trÃªn trang web nÃ y.\r\n \r\nMáº·c dÃ¹ XemPhim-HD.net luÃ´n cá»‘ gáº¯ng Ä‘áº£m báº£o ráº±ng táº¥t cáº£ ná»™i dung trong trang web nÃ y Ä‘á»u Ä‘Æ°á»£c cáº­p nháº­t, chÃºng tÃ´i khÃ´ng cam káº¿t ráº±ng nhá»¯ng thÃ´ng tin Ä‘Æ°á»£c Ä‘á» cáº­p cÃ²n Ä‘ang hiá»‡n hÃ nh, chÃ­nh xÃ¡c vÃ  hoÃ n chá»‰nh.\r\n \r\nMá»i thÃ nh viÃªn, khi sá»­ dá»¥ng má»™t trong cÃ¡c chá»©c nÄƒng sau cá»§a XemPhim-HD.net, cáº§n Ã½ thá»©c ráº±ng nhá»¯ng hÃ nh Ä‘á»™ng cá»§a mÃ¬nh cáº§n pháº£i hoÃ n toÃ n phÃ¹ há»£p vá»›i luáº­t dÃ¢n sá»± vÃ  luáº­t báº£n quyá»n hiá»‡n hÃ nh vÃ  chá»‹u trÃ¡ch nhiá»‡m trÆ°á»›c phÃ¡p luáº­t Ä‘á»‘i vá»›i ná»™i dung mÃ¬nh Ä‘Æ°a lÃªn.\r\n \r\nSá»­ dá»¥ng trÃ¬nh duyá»‡t Firefox hoáº·c Chrome Ä‘á»ƒ xem phim vÃ  chia sáº» vá»›i má»i ngÆ°á»i.\r\nÄÄƒng táº£i nhá»¯ng ná»™i dung , hÃ¬nh áº£nh Ä‘i kÃ¨m vá»›i bÃ¬nh luáº­n cá»§a mÃ¬nh.\r\nÄÄƒng táº£i nhá»¯ng ná»™i dung trÃªn trang cÃ¡ nhÃ¢n cá»§a mÃ¬nh.\r\n \r\n[b]4. Sá»Ÿ há»¯u trÃ­ tuá»‡[/b]\r\n \r\nMá»i ná»™i dung Ä‘Æ°á»£c Ä‘Äƒng táº£i trÃªn XemPhim-HD.net, bao gá»“m thiáº¿t káº¿, logo, cÃ¡c pháº§n má»m, chá»©c nÄƒng ká»¹ thuáº­t, cÃ¡c , hÃ¬nh áº£nh, cáº¥u trÃºc trang Ä‘á»u thuá»™c báº£n quyá»n cá»§a XemPhim-HD.net vÃ  cÃ´ng ty sá»Ÿ há»¯u trang web nÃ y. NghiÃªm cáº¥m má»i sao chÃ©p, sá»­a Ä‘á»•i, trÆ°ng bÃ y, phÃ¢n phÃ¡t, chuyá»ƒn táº£i, tÃ¡i sá»­ dá»¥ng thÃ´ng qua cÃ´ng nghá»‡ "Ä‘Ã³ng khung", xuáº¥t báº£n, bÃ¡n, cáº¥p phÃ©p, tÃ¡i táº¡o hay sá»­ dá»¥ng báº¥t cá»© ná»™i dung nÃ o cá»§a trang web cho báº¥t ká»³ má»¥c Ä‘Ã­ch nÃ o mÃ  khÃ´ng cÃ³ sá»± xÃ¡c nháº­n báº±ng vÄƒn báº£n cá»§a Ban quáº£n trá»‹ XemPhim-HD.net hoáº·c/vÃ  cÃ´ng ty sá»Ÿ há»¯u.\r\n \r\n[b]5. Sá»­a Ä‘á»•i[/b]\r\n \r\nXemPhim-HD.net cÃ³ quyá»n thay Ä‘á»•i, bá»• sung, thÃªm hoáº·c bá»›t ná»™i dung trang web cÅ©ng nhÆ° cÃ¡c Ä‘iá»u khoáº£n sá»­ dá»¥ng vÃ o báº¥t cá»© lÃºc nÃ o mÃ  khÃ´ng cáº§n pháº£i bÃ¡o trÆ°á»›c hay thÃ´ng bÃ¡o Ä‘áº¿n thÃ nh viÃªn.\r\n \r\nMáº·c dÃ¹ trang web nÃ y cÃ³ thá»ƒ káº¿t ná»‘i vá»›i cÃ¡c trang web khÃ¡c, Ä‘iá»u Ä‘Ã³ khÃ´ng cÃ³ nghÄ©a lÃ  XemPhim-HD.net trá»±c tiáº¿p hay giÃ¡n tiáº¿p tham gia vÃ o viá»‡c phÃª chuáº©n, há»£p tÃ¡c, tÃ i trá»£, chá»©ng thá»±c hay káº¿t náº¡p cÃ¡c trang web Ä‘Ã³, trá»« khi Ä‘Æ°á»£c cÃ´ng bá»‘ chÃ­nh thá»©c. Khi truy cáº­p vÃ o trang web nÃ y lÃ  báº¡n Ä‘Ã£ thá»«a nháº­n vÃ  Ä‘á»“ng Ã½ ráº±ng XemPhim-HD.net khÃ´ng kiá»ƒm soÃ¡t táº¥t cáº£ cÃ¡c trang web liÃªn káº¿t, vÃ  XemPhim-HD.net khÃ´ng chá»‹u trÃ¡ch nhiá»‡m vá» ná»™i dung cá»§a báº¥t ká»³ trang web ngoáº¡i lai nÃ o, hay báº¥t ká»³ trang web nÃ o cÃ³ liÃªn káº¿t vá»›i trang web nÃ y.', 0),
(6, 'Giá»›i Thiá»‡u', '[b]1. Giá»›i thiá»‡u vá» XemPhim-HD.net[/b]\r\n \r\nInternet ngÃ y cÃ ng phÃ¡t triá»ƒn, nhu cáº§u giáº£i trÃ­ cÃ ng ngÃ y cÃ ng tÄƒng máº¡nh. á»ž Viá»‡t Nam cÃ³ khÃ¡ nhiá»u website phim má»Ÿ ra vá»›i hÃ¬nh thá»©c xem miá»…n phÃ­, nhÆ° cÃ¡c báº¡n cÅ©ng biáº¿t xem miá»…n phÃ­ Ä‘Ã´i khi chÃºng ta pháº£i khÃ³ chá»‹u nhá»¯ng quáº£ng cÃ¡o popup phiá»n hÃ , gÃ¢y bá»©c xÃºc, khÃ³ chá»‹u khi xem phim.\r\n \r\nCÅ©ng cÃ³ thá»ƒ nÃ³i hÃ ng trÄƒm phim do bá»‹ cháº¿t link vÃ  dáº«n Ä‘áº¿n khÃ´ng xem Ä‘Æ°á»£c phim nhÆ° cÃ¡c báº¡n muá»‘n. Äá»ƒ Ä‘Ã¡p á»©ng nhu cáº§u xem phim cá»§a cÃ¡c báº¡n, sá»± ra Ä‘á»i cá»§a XemPhim-HD.net giÃºp cÃ¡c báº¡n xem phim cháº¥t lÆ°á»£ng cao - load nhanh khÃ´ng pháº£i chá» Ä‘á»£i báº¥t cá»© Ä‘iá»u gÃ¬?. Vá»›i kho phim khá»•ng lá»“ vÃ  cáº­p nháº­t liÃªn tá»¥c nhanh nháº¥t, XemPhim-HD.net báº£o Ä‘áº£m cÃ¡c báº¡n 100% sáº½ xem Ä‘Æ°á»£c cÃ¡c phim mÃ  báº¡n thÃ­ch.\r\n \r\n[b]2. Táº¡i sao báº¡n Ä‘áº¿n vá»›i XemPhim-HD.net ?[/b]\r\n \r\n   Xem phim HD 720p, 1080p vÃ  há»— trá»£ cáº£ SD 360p vÃ  480p háº§u háº¿t cÃ¡c bá»™ phim.\r\n   Tá»‘c Ä‘á»™ xem phim nhanh, khÃ´ng cáº§n pháº£i chá» Ä‘á»£i ngay cáº£ vá»›i phim HD cÃ³ Ä‘á»™ nÃ©t cao vÃ  dung lÆ°á»£ng lá»›n.\r\n   ThÆ° viá»‡n phim lá»›n vÃ  Ä‘Æ°á»£c cáº­p nháº­t phim má»›i liÃªn tá»¥c.\r\n   Chi phÃ­ kÃ­ch hoáº¡t tháº¥p.\r\n \r\n[b]3. Báº¡n giÃºp Ä‘Æ°á»£c gÃ¬ cho XemPhim-HD.net ?[/b]\r\n \r\n -  HÃ£y gá»­i link cho báº¡n bÃ¨ qua cÃ¡c trang máº¡ng xÃ£ há»™i: Facebook, Twitter vÃ  Yahoo nhá»¯ng bá»™ phim hay báº¡n yÃªu thÃ­ch.\r\n -  KhÃ´ng Äƒn nÃ³i thÃ´ tá»¥c, bÃ¬nh luáº­n thiáº¿u vÄƒn hÃ³a.\r\n \r\nMá»™t láº§n ná»¯a chÃºng tÃ´i cam káº¿t vá»›i cÃ¡c báº¡n ráº±ng 100% phim trÃªn website Ä‘á»u xem Ä‘Æ°á»£c vá»›i cháº¥t lÆ°á»£ng cao vÃ  tá»‘c Ä‘á»™ load phim nhanh. ChÃºc cÃ¡c báº¡n xem phim vui váº».', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ipos_request`
--

CREATE TABLE IF NOT EXISTS `ipos_request` (
`r_id` int(10) NOT NULL,
  `r_email` varchar(120) NOT NULL,
  `r_contents` text NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `ipos_request`
--

INSERT INTO `ipos_request` (`r_id`, `r_email`, `r_contents`) VALUES
(7, 'aaa@aaa.com', 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `ipos_server`
--

CREATE TABLE IF NOT EXISTS `ipos_server` (
`server_id` int(10) NOT NULL,
  `server_url` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ipos_user`
--

CREATE TABLE IF NOT EXISTS `ipos_user` (
`userid` int(10) NOT NULL,
  `usergroup` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(130) NOT NULL,
  `usercode` varchar(120) NOT NULL,
  `sex` int(1) NOT NULL,
  `fullname` varchar(120) NOT NULL,
  `regdate` int(10) NOT NULL,
  `birthday` varchar(10) NOT NULL,
  `forgot` varchar(50) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `gold` int(10) NOT NULL,
  `timelimit` int(10) NOT NULL,
  `facebookid` varchar(250) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `ipos_user`
--

INSERT INTO `ipos_user` (`userid`, `usergroup`, `username`, `password`, `email`, `usercode`, `sex`, `fullname`, `regdate`, `birthday`, `forgot`, `avatar`, `gold`, `timelimit`, `facebookid`) VALUES
(8, 3, 'admin', 'c7aacbd2f7763f0fffbe624c57460aeb', 'nuocmatdoibantay@gmail.com', '5564', 0, 'ÄoÃ n VÄƒn ToÃ n', 1364012981, '25-2-1995', '', 'upload/avatar/vantoan-8.jpg', 2146951647, 0, '0'),
(9, 0, 'testmod', 'c7aacbd2f7763f0fffbe624c57460aeb', 'pr0_hacker_n0.1_9x@yahoo.com', '6954', 0, 'Thá»­ Nghiá»‡m', 1364049193, '1-1-1990', '', '', 0, 0, '0'),
(11, 0, 'tester', 'c7aacbd2f7763f0fffbe624c57460aeb', 'langtu_teekey@yahoo.com.vn', '1763', 0, 'Huá»³nh Láº¡c PhÆ°Æ¡ng', 1364130486, '10-10-1995', '', 'upload/avatar/teekeykid-11.JPG', 50000, 0, '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ipos_adv`
--
ALTER TABLE `ipos_adv`
 ADD PRIMARY KEY (`adv_id`);

--
-- Indexes for table `ipos_category`
--
ALTER TABLE `ipos_category`
 ADD PRIMARY KEY (`danhmucid`);

--
-- Indexes for table `ipos_comment`
--
ALTER TABLE `ipos_comment`
 ADD PRIMARY KEY (`camnhanid`);

--
-- Indexes for table `ipos_config`
--
ALTER TABLE `ipos_config`
 ADD PRIMARY KEY (`cf_id`);

--
-- Indexes for table `ipos_country`
--
ALTER TABLE `ipos_country`
 ADD PRIMARY KEY (`quocgiaid`);

--
-- Indexes for table `ipos_ep`
--
ALTER TABLE `ipos_ep`
 ADD PRIMARY KEY (`epid`), ADD KEY `epname` (`epname`);

--
-- Indexes for table `ipos_film`
--
ALTER TABLE `ipos_film`
 ADD PRIMARY KEY (`phimid`);

--
-- Indexes for table `ipos_film_info`
--
ALTER TABLE `ipos_film_info`
 ADD PRIMARY KEY (`phimid`);

--
-- Indexes for table `ipos_log`
--
ALTER TABLE `ipos_log`
 ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `ipos_pages`
--
ALTER TABLE `ipos_pages`
 ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `ipos_request`
--
ALTER TABLE `ipos_request`
 ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `ipos_server`
--
ALTER TABLE `ipos_server`
 ADD PRIMARY KEY (`server_id`);

--
-- Indexes for table `ipos_user`
--
ALTER TABLE `ipos_user`
 ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ipos_adv`
--
ALTER TABLE `ipos_adv`
MODIFY `adv_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ipos_category`
--
ALTER TABLE `ipos_category`
MODIFY `danhmucid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `ipos_comment`
--
ALTER TABLE `ipos_comment`
MODIFY `camnhanid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `ipos_config`
--
ALTER TABLE `ipos_config`
MODIFY `cf_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `ipos_country`
--
ALTER TABLE `ipos_country`
MODIFY `quocgiaid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `ipos_ep`
--
ALTER TABLE `ipos_ep`
MODIFY `epid` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3388;
--
-- AUTO_INCREMENT for table `ipos_film`
--
ALTER TABLE `ipos_film`
MODIFY `phimid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=323;
--
-- AUTO_INCREMENT for table `ipos_log`
--
ALTER TABLE `ipos_log`
MODIFY `log_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `ipos_pages`
--
ALTER TABLE `ipos_pages`
MODIFY `p_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `ipos_request`
--
ALTER TABLE `ipos_request`
MODIFY `r_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `ipos_server`
--
ALTER TABLE `ipos_server`
MODIFY `server_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ipos_user`
--
ALTER TABLE `ipos_user`
MODIFY `userid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;--
-- Database: `test`
--
--
-- Database: `webshopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `ChiTietHoaDon`
--

CREATE TABLE IF NOT EXISTS `ChiTietHoaDon` (
  `MaHD` int(11) NOT NULL DEFAULT '0',
  `MaHang` int(11) NOT NULL DEFAULT '0',
  `SoLuong` int(11) DEFAULT NULL,
  `DonGia` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ChiTietHoaDon`
--

INSERT INTO `ChiTietHoaDon` (`MaHD`, `MaHang`, `SoLuong`, `DonGia`) VALUES
(1, 14, 1, 154000),
(2, 13, 1, 169000),
(2, 14, 2, 154000),
(3, 13, 1, 169000),
(3, 14, 2, 154000),
(4, 13, 1, 169000),
(4, 14, 1, 154000),
(5, 10, 1, 175000),
(5, 12, 3, 185000),
(5, 14, 1, 154000);

-- --------------------------------------------------------

--
-- Table structure for table `DMHang`
--

CREATE TABLE IF NOT EXISTS `DMHang` (
`MaHang` int(11) NOT NULL,
  `TenHang` varchar(255) DEFAULT NULL,
  `HinhAnh` varchar(255) DEFAULT NULL,
  `DVT` varchar(15) DEFAULT NULL,
  `DonGia` float DEFAULT NULL,
  `MaNhaCungCap` int(11) DEFAULT NULL,
  `MaLoaiHang` int(11) DEFAULT NULL,
  `MoTa` text
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `DMHang`
--

INSERT INTO `DMHang` (`MaHang`, `TenHang`, `HinhAnh`, `DVT`, `DonGia`, `MaNhaCungCap`, `MaLoaiHang`, `MoTa`) VALUES
(1, 'Ão Vest ná»¯ HÃ n Quá»‘c Gb', '6_66_1.jpg', 'CÃ¡i', 182000, 2, 3, 'Nhá»¯ng chiáº¿c Ã¡o vest ná»¯ Ä‘Æ°á»£c thiáº¿t xoÃ¨ nháº¹ pháº§n cuá»‘i thÃ¢n kiá»ƒu dÃ¡ng vÃ¡y sáº½ cho báº¡n gÃ¡i má»m máº¡i, ná»¯ tÃ­nh hÆ¡n trong bá»™ Ä‘á»“ Ä‘áº¿n cÃ´ng sá»Ÿ nhá»¯ng ngÃ y cuá»‘i thu nÃ y. KhÃ´ng Ä‘Æ¡n Ä‘iá»‡u, cá»©ng nháº¯c, nhá»¯ng chiáº¿c Ã¡o vest Ä‘iá»ƒn hÃ¬nh cá»§a phong cÃ¡ch sang trá»ng, thanh lá»‹ch vÃ  hiá»‡n Ä‘áº¡i luÃ´n há»£p má»‘t. Nhá»¯ng kiá»ƒu vest nÃ y báº¡n dá»… dÃ ng káº¿t há»£p vá»›i nhiá»u bá»™ trang phá»¥c khÃ¡c nhau. Tuy nhiÃªn Ä‘á»ƒ chá»n lá»±a Ä‘Æ°á»£c cho mÃ¬nh má»™t sáº£n pháº©m tháº­t sá»± phÃ¹ há»£p lÃ  viá»‡c hoÃ n toÃ n khÃ´ng há» Ä‘Æ¡n giáº£n. Äá»ƒ giÃºp cÃ¡c nÃ ng cÃ³ thÃªm sá»± chá»n lá»±a, trong lÆ°á»£t deal hÃ´m nay SiÃªu Mua sáº½ giá»›i thiá»‡u Ä‘áº¿n sáº£n pháº©m Ão Vest ná»¯ HÃ n Quá»‘c Gb.'),
(2, 'Ão khoÃ¡c ná»¯ sÃ nh Ä‘iá»‡u', '2_187_131.jpg', 'CÃ¡i', 165000, 4, 2, 'Ão khoÃ¡c ná»¯ lÃ  má»™t loáº¡i sáº£n pháº©m thá»i trang khÃ´ng thá»ƒ thiáº¿u trong tá»§ Ä‘á»“ cá»§a báº¥t cá»© ai khÃ´ng chá»‰ cÃ³ tÃ¡c dá»¥ng che cháº¯n hay giá»¯ áº¥m mÃ  cÃ²n Ä‘áº£m nháº­n thÃªm vai trÃ² khÃ¡c Ä‘Ã³ lÃ  táº¡o nÃªn phong cÃ¡ch thá»i trang cho ngÆ°á»i máº·c. Cháº¥t liá»‡u ná»‰ tá»« lÃ¢u Ä‘Ã£ khÃ¡ quen thuá»™c vá»›i cÃ¡c trang phá»¥c Ä‘áº·c biá»‡t lÃ  Ã¡o khoÃ¡c. VÃ¬ lÃ  cháº¥t liá»‡u ná»‰ bá»n, Ä‘áº¹p, má»m máº¡i vÃ  thoÃ¡ng mÃ¡t, Ã¡o khoÃ¡c ná»¯ váº£i ná»‰ giÃºp báº¡n báº£o vá»‡ tá»‘i Ä‘a lÃ n da cá»§a mÃ¬nh trong nhá»¯ng ngÃ y hÃ¨ náº¯ng nÃ³ng vÃ  cÃ²n lÃ  trang phá»¥c giá»¯ áº¥m hiá»‡u quáº£ trong nhá»¯ng ngÃ y mÃ¹a Ä‘Ã´ng. NÃ o, cÃ¹ng SiÃªu Mua Ä‘áº¿n vá»›i máº«u Ã¡o khoÃ¡c ná»¯ sÃ nh Ä‘iá»‡u trong lÆ°á»£t deal hÃ´m nay nhÃ©!'),
(5, 'Ão khoÃ¡c ná»¯ Cardigan phá»‘i nÃºt', '6_36_1.jpg', '22444', 139000, 6, 5, 'Ão khoÃ¡c ná»¯ mang phong cÃ¡ch hÃ n quá»‘c luÃ´n lÃ  trang phá»¥c lá»±a chá»n hÃ ng Ä‘áº§u cho chá»‹ em phá»¥ ná»¯ khi giÃ³ láº¡nh vá» cho cÃ¡c báº¡n gÃ¡i tá»± tin dáº¡o phá»‘ mÃ¹a thu Ä‘Ã´ng 2014-2015 nÃ y. Äá»ƒ Ä‘á»‘i phÃ³ vá»›i giÃ³ rÃ©t cÃ¡c báº¡n gÃ¡i nÃªn máº·c nhÆ°ng chiáº¿c Ã¡o áº¥m Ä‘á»ƒ cho mÃ¹a Ä‘Ã´ng khÃ´ng láº¡nh báº±ng nhÆ°ng chiáº¿c Ã¡o khoÃ¡c dáº¡, Ã¡o phao áº¥m Ã¡p, Ã¡o khoÃ¡c lÃ´ngâ€¦. Ä‘á»§ mÃ u sáº¯c nhiá»u kiá»ƒu dÃ¡ng. Tuy nhiÃªn Ä‘á»ƒ chá»n lá»±a Ä‘Æ°á»£c cho mÃ¬nh má»™t chiáº¿c Ã¡o khoÃ¡c tháº­t phÃ¹ há»£p vá»›i hoÃ n cáº£nh vÃ  báº£n thÃ¢n lÃ  viá»‡c khÃ´ng há» dá»… dÃ ng vá»›i cÃ¡c nÃ ng. Nháº­n biáº¿t Ä‘Æ°á»£c tÃ¢m lÃ­ Ä‘Ã³, trong lÆ°á»£t deal hÃ´m nay SiÃªu Mua sáº½ giá»›i thiá»‡u Ä‘áº¿n sáº£n pháº©m Ão khoÃ¡c ná»¯ Cardigan phá»‘i nÃºt.'),
(6, 'Ão khoÃ¡c ná»¯ Luni cÃ¡ tÃ­nh', '3_18_60.jpg', 'CÃ¡i', 145000, 4, 4, 'Ão khoÃ¡c ná»¯ Luni cÃ¡ tÃ­nh mÃ  SiÃªu Mua giá»›i thiá»‡u Ä‘áº¿n cÃ¡c báº¡n trong lÆ°á»£t deal hÃ´m nay lÃ  sá»± lá»±a chá»n thÃ­ch há»£p cho nhá»¯ng ngÃ y hÃ¨ náº¯ng nÃ³ng. Thiáº¿t káº¿ Ä‘Æ¡n giáº£n, cÃ³ nÃ³n, tay dÃ i giÃºp báº¡n che náº¯ng, báº£o vá»‡ lÃ n da máº©n cáº£m cá»§a báº¡n gÃ¡i. Ná»•i báº­t vá»›i cÃ¡ch may giáº¥u dÃ¢y táº¡o áº¥n tÆ°á»£ng cÃ¡ tÃ­nh cho báº¡n gÃ¡i. Vá»›i 2 gam mÃ u tá»‘i xanh Ä‘en, Ä‘en cho sá»± lá»±a chá»n cá»§a báº¡n. Cháº¥t liá»‡u ná»‰ khÃ´ng nhÃ u, Ã­t Ä‘á»• lÃ´ng táº¡o sá»± thoáº£i mÃ¡i cho ngÆ°á»i máº·c. Báº¡n cÃ³ thá»ƒ máº·c vá»›i quáº§n jeans, kaki, quáº§n short phá»‘i vá»›i nhiá»u phá»¥ kiá»‡n thá»i trang khÃ¡c: giÃ y, dÃ©p, kÃ­nh mÃ¡t, tÃºi xÃ¡ch Ä‘á»ƒ Ä‘i há»c, Ä‘i lÃ m, Ä‘i chÆ¡i.....'),
(7, 'Ão khoÃ¡c ná»¯ sáº¯c mÃ u', '5_152.jpg', 'CÃ¡i', 169000, 2, 1, 'Ão khoÃ¡c ná»¯ sáº¯c mÃ u lÃ  sá»± lá»±a chá»n vÃ´ cÃ¹ng tráº» trung, hiá»‡n Ä‘áº¡i, giÃºp báº¡n gÃ¡i thá»ƒ hiá»‡n gu thá»i trang Ä‘áº§y cÃ¡ tÃ­nh. Thiáº¿t káº¿ cá»• cÃ³ nÃ³n cá»±c ká»³ nÄƒng Ä‘á»™ng, káº¿t há»£p dÃ¢y kÃ©o khoÃ¡ tiá»‡n lá»£i, táº¡o nÃªn form dÃ¡ng khá»e khoáº¯n, khÃ¡ dá»… máº·c. Ão khoÃ¡c vá»›i tay dÃ i, bo thun gáº¥u Ã¡o, Ä‘i cÃ¹ng 2 tÃºi trÆ°á»›c Ä‘Æ°á»£c in logo xinh xáº¯n. Äiá»ƒm nháº¥n cá»§a sáº£n pháº©m chÃ­nh lÃ  pháº§n phá»‘i mÃ u á»Ÿ nÃ³n ráº¥t ná»•i báº­t, Ä‘i cÃ¹ng dÃ¢y rÃºt Ä‘Æ°á»£c thiáº¿t káº¿ áº¥n tÆ°á»£ng vá»›i 3 mÃ u khÃ¡c nhau, táº¡o nÃªn nÃ©t riÃªng biá»‡t cho chiáº¿c Ã¡o cá»§a báº¡n.'),
(8, 'Ão khoÃ¡c len ná»¯ thá»i trang', '4_41_1.jpg', 'CÃ¡i', 154000, 1, 4, 'Äá»‘i vá»›i nhá»¯ng báº¡n ná»¯ theo phong cÃ¡ch thanh lá»‹ch dá»‹u dÃ ng thÃ¬ Ã¡o khoÃ¡c len lÃ  item Æ°a thÃ­ch Ä‘Ãºng khÃ´ng nÃ o? Nháº¥t lÃ  dÆ°á»›i tiáº¿t trá»i mÆ°a se láº¡nh nÃ y thÃ¬ nÃ³ lÃ  trang phá»¥c khÃ´ng thá»ƒ thiáº¿u khi dáº¡o phá»‘ hay tá»¥ táº­p cÃ¹ng Ä‘Ã¡m báº¡n trong nhá»¯ng buá»•i tá»‘i cuá»‘i tuáº§n pháº£i khÃ´ng nÃ o? HÃ£y Ä‘áº¿n vá»›i deal má»›i nÃ y, Zanado sáº½ giá»›i thiá»‡u Ä‘áº¿n báº¡n sáº£n pháº©m Ã¡o khoÃ¡c ná»¯ ráº» Ä‘áº¹p vá»›i thiáº¿t káº¿ Ä‘Æ¡n giáº£n nhÆ°ng tÃ´n váº» ná»¯ tÃ­nh nháº¹ nhÃ ng há»©a háº¹n sáº½ lÃ  sá»± lá»±a chá»n hoÃ n háº£o cho báº¡n. HÃ£y cÃ¹ng xem qua nhÃ©!'),
(9, 'Ão sÆ¡ mi nam S.Boss white lá»‹ch lÃ£m', '2.jpg', 'CÃ¡i', 499000, 5, 3, 'HÃ¬nh áº£nh cÃ¡c chÃ ng trai trong chiáº¿c Ã¡o sÆ¡ mi kiá»ƒu cá»• Ä‘iá»ƒn luÃ´n mang Ä‘áº¿n sá»©c hÃºt mÃ£nh liá»‡t, khiáº¿n cÃ¡c nÃ ng pháº£i Ä‘á»• gá»¥c trÆ°á»›c váº» lá»‹ch lÃ£m sang trá»ng áº¥y cá»§a cÃ¡c chÃ ng. Äáº·c biá»‡t chiáº¿c Ã¡o sÆ¡ mi tráº¯ng Ä‘em Ä‘áº¿n dÃ¡ng váº» tao nhÃ£, cho báº¡n dá»… phá»‘i Ä‘á»“ vÃ  ráº¥t thÃ­ch há»£p cho báº¡n diá»‡n nhá»¯ng dá»‹p quan trá»ng. HÃ£y Ä‘áº¿n vá»›i deal má»›i nÃ y, Zanado sáº½ giá»›i thiá»‡u Ä‘áº¿n báº¡n sáº£n pháº©m Ã¡o sÆ¡ mi nam thá»i trang vá»›i thiáº¿t káº¿ Ä‘Æ¡n giáº£n mÃ  ná»•i báº­t há»©a háº¹n sáº½ lÃ  sá»± lá»±a chá»n hoÃ n háº£o cho báº¡n. HÃ£y cÃ¹ng xem qua nhÃ©!'),
(10, 'Ão sÆ¡ mi nam ZND', '2 (1).jpg', 'CÃ¡i', 175000, 1, 3, 'Má»™t trang phá»¥c khÃ¡ quen thuá»™c cho giá»›i vÄƒn phÃ²ng Ä‘Ã³ chÃ­nh lÃ  nhá»¯ng chiáº¿c Ã¡o sÆ¡ mi. ChÃºng Ä‘em láº¡i cho ngÆ°á»i máº·c sá»± gá»n gÃ ng vÃ  lá»‹ch sá»±, gÃ³p pháº§n lá»›n trong viá»‡c táº¡o nÃªn phong cÃ¡ch riÃªng cho tá»«ng ngÆ°á»i, tá»« sang trá»ng cho tá»›i thá»ƒ thao, tráº» trung. Ão sÆ¡ mi cÃ³ thá»ƒ Ä‘Ã¡p á»©ng Ä‘Æ°á»£c háº¿t nhá»¯ng nhu cáº§u cá»§a ngÆ°á»i dÃ¹ng. ChÃ­nh vÃ¬ tháº¿ mÃ  Zanado giá»›i thiá»‡u tá»›i cÃ¡c báº¡n Ã¡o sÆ¡ mi nam ZND gÃ³p pháº§n lÃ m Ä‘a dáº¡ng hÆ¡n tá»§ Ã¡o sÆ¡ mi cá»§a báº¡n. CÃ¹ng ghÃ© xem vá»›i Zanado nhÃ©!'),
(11, 'AÌo sÆ¡ mi nam phá»‘i tÃºi', '3.jpg', 'CÃ¡i', 184000, 2, 3, 'AÌo sÆ¡ mi nam phá»‘i tÃºi Ä‘Æ°á»£c thiáº¿t káº¿ kiá»ƒu Ã¡o sÆ¡ mi truyá»n thá»‘ng vá»›i cá»• báº», tay dÃ i mang Ä‘áº¿n sá»± lá»‹ch lÃ£m, thanh lá»‹ch cho ngÆ°á»i máº·c khi Ä‘áº¿n cÃ´ng sá»Ÿ lÃ m viá»‡c hay khi gáº·p gá»¡ Ä‘á»‘i tÃ¡c Ä‘á»ƒ thÆ°Æ¡ng tháº£o há»£p Ä‘á»“ng. Ão Ä‘Æ°á»£c phá»‘i tÃºi giáº£ trÆ°á»›c ngá»±c, viá»n náº¯p tÃºi Ä‘Æ°á»£c phá»‘i mÃ u táº¡i sá»± thu hÃºt ná»•i báº­t cho sáº£n pháº©m. Cháº¥t liá»‡u kaki thun dÃ y dáº·n co giÃ£n nháº¹, tháº¥m hÃºt tá»‘t mang Ä‘áº¿n sá»± thoáº£i mÃ¡i khi sá»­ dá»¥ng. ÄÆ°á»ng may tá»‰ má»‰, Ä‘áº¹p cÃ¹ng nÃºt dáº¡ng cÃ i cháº¯c cháº¯n mang Ä‘áº¿n sá»± tá»± tin, an toÃ n khi máº·c cho báº¡n.'),
(12, 'ChÃ¢n vÃ¡y yáº¿m thá»i trang HQ', '2 (2).jpg', 'CÃ¡i', 185000, 4, 1, 'ChÃ¢n vÃ¡y yáº¿m thá»i trang HQ cÃ³ thiáº¿t káº¿ dáº¡ng yáº¿m cÃ³ phá»‘i 2 dÃ¢y táº¡o nÃ©t tráº» trung Ä‘Ã¡ng yÃªu cho báº¡n gÃ¡i. Phá»‘i nÃºt á»Ÿ máº·t trÆ°á»›c thÃªm pháº§n Ä‘áº·c sáº¯c cá»§a sáº£n pháº©m. Cháº¥t liá»‡u kaki thun dÃ y dáº·n táº¡o form dÃ¡ng nhÆ°ng váº«n má»m máº¡i, thoÃ¡ng mÃ¡t, thÃ­ch há»£p máº·c ngÃ y hÃ¨. CÃ³ 2 mÃ u tráº¯ng vÃ  Ä‘á» cho báº¡n lá»±a chá»n, dá»… phá»‘i Ä‘á»“ Ä‘á»ƒ Ä‘i chÆ¡i, du lá»‹ch hay tá»›i cÃ´ng sá»Ÿ, mang láº¡i sá»± tráº» trung cÃ¡ tÃ­nh nhÆ°ng váº«n vÃ´ cÃ¹ng lá»‹ch sá»±. Báº¡n cÃ³ thá»ƒ káº¿t há»£p vá»›i Ã¡o sÆ¡ mi hay Ã¡o thun Ä‘Æ¡n giáº£n táº¡o váº» tráº» trung, cÃ¡ tÃ­nh trong báº¡n.'),
(13, 'ChÃ¢n vÃ¡y xÃ²e Vintage', '1.jpg', 'CÃ¡i', 169000, 2, 1, 'Vá»›i nhá»¯ng ngÃ y nÃ³ng mÃ  báº¡n diá»‡n cho mÃ¬nh Ä‘áº§m body cÃ´ng sá»Ÿ Ä‘áº¿n nÆ¡i lÃ m viá»‡c thÃ¬ tháº­t lÃ  khÃ´ng há»£p xÃ­u nÃ o Ä‘áº¥y nhÃ©, hÆ¡n ná»¯a pháº£i ngá»“i lÃ m viá»‡c trong cáº£ ngÃ y dÃ i thÃ¬ Ä‘Ã´i khi tháº­t lÃ  khÃ³ chá»‹u vÃ  bá»©c bá»‘i. VÃ¬ váº­y hÃ£y xua tan ngay nhá»¯ng suy nghÄ© â€œNgÃ y mai máº·c Ä‘áº§m Ã´m body nÃ o Ä‘áº¿n cÃ´ng sá»Ÿ Ä‘Ã¢y ta?â€ Ä‘i nhÃ©. VÃ  hÃ£y thá»­ cho mÃ¬nh chÃ¢n vÃ¡y xÃ²e ná»¯ thá»i trang cÃ¹ng Ã¡o sÆ¡ mi hay Ã¡o thun Ä‘á»ƒ thay Ä‘á»•i phong cÃ¡ch. HÃ£y ghÃ© zanado Ä‘á»ƒ xem chÃºng tÃ´i giá»›i thiá»‡u sáº£n pháº©m má»›i nÃ y nhÃ©!'),
(14, 'Set Ã¡o croptop sÃ¡t nÃ¡ch vÃ  chÃ¢n vÃ¡y xÃ²e', 'ao-vay-nu-dao-pho.jpg', 'CÃ¡i', 154000, 4, 1, 'CÃ²n gÃ¬ tuyá»‡t vá»i báº±ng viá»‡c sá»Ÿ há»¯u cho mÃ¬nh má»™t set Ä‘á»“ Ä‘a nÄƒng, biáº¿n táº¥u linh hoáº¡t vá»›i Ã¡o vÃ  chÃ¢n vÃ¡y, háº³n tá»« lÃ¢u, má»—i báº¡n gÃ¡i luÃ´n muá»‘n mÃ¬nh trÃ´ng tháº­t ná»•i báº­t vÃ  khÃ¡c láº¡ cho má»—i láº§n xuáº¥t hiá»‡n, váº­y thÃ¬ cÃ²n gÃ¬ báº±ng bá»• sung cho mÃ¬nh má»™t set Ã¡o croptop sÃ¡t nÃ¡ch vÃ  chÃ¢n vÃ¡y xÃ²e xinh xáº¯n mÃ  SiÃªu Mua muá»‘n giá»›i thiá»‡u Ä‘áº¿n cÃ¡c báº¡n trong lÆ°á»£t deal hÃ´m nay. ChÃ¢n vÃ¡y xÃ²e tráº» trung cÃ¹ng crop top  Ä‘ang lÃ  mÃ³n Ä‘á»“ khÃ¡ â€œhotâ€. Má»™t cáº·p Ä‘Ã´i hoÃ n háº£o cho xu hÆ°á»›ng hÃ¨ 2014 nÃ y mÃ  báº¡n khÃ´ng thá»ƒ nÃ o bá» qua Ä‘Æ°á»£c. NÃ o, cÃ¹ng chÃºng tÃ´i xem nhÃ©!');

-- --------------------------------------------------------

--
-- Table structure for table `DMKhach`
--

CREATE TABLE IF NOT EXISTS `DMKhach` (
`MaKhach` int(11) NOT NULL,
  `HoTen` varchar(255) NOT NULL,
  `DiaChi` varchar(255) DEFAULT NULL,
  `DienThoai` varchar(15) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `DMKhach`
--

INSERT INTO `DMKhach` (`MaKhach`, `HoTen`, `DiaChi`, `DienThoai`, `Email`) VALUES
(1, 'Nguyễn Văn A', 'Đà Nẵng', '0905666777', 'abc@gmail.com'),
(2, 'Nguyễn Thị  C', 'Hà Nội', '0978999000', 'def@gmail.com'),
(3, 'Nguyễn Văn D', 'HCM', '0978999123', 'xyzz@yahoo.com'),
(4, 'Nguyễn Thị E', 'Hải Phòng', '0978999666', 'ebd@vnn.vn'),
(5, 'Nguyễn Văn F', 'Đà Nẵng', '0978000001', 'edc@gmail.com'),
(6, '', '', '', ''),
(7, 'tinh', 'ÄÃ  Náºµng', '0905666777', '47vn.fin@gmail.com'),
(8, 'tinh', 'dn', '09000', 'abc@gmail.com'),
(9, 'tinh', 'dn', '0905666777', '47vn.fin@gmail.com'),
(10, 'Quang Tinh', '8 phan boi', '0903498', 'abc@gmail.com'),
(11, 'Quang Tinh 2', '2222', '22222', 'abc@dd.ccc');

-- --------------------------------------------------------

--
-- Table structure for table `HOCSINH`
--

CREATE TABLE IF NOT EXISTS `HOCSINH` (
`ID` int(11) NOT NULL,
  `NAME` varchar(20) NOT NULL,
  `BIRTHDAY` date DEFAULT NULL,
  `CITY` varchar(30) NOT NULL,
  `SEX` varchar(2) NOT NULL,
  `AGE` int(11) DEFAULT NULL,
  `IDLOP` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `HOCSINH`
--

INSERT INTO `HOCSINH` (`ID`, `NAME`, `BIRTHDAY`, `CITY`, `SEX`, `AGE`, `IDLOP`) VALUES
(1, 'NGUYỄN VĂN TUẤN', '2015-07-08', 'HÀ NỘI', 'M', 20, 1),
(2, 'NGUYỄN TRỌNG VINH', '2015-07-08', 'TP HCM', 'M', 22, 2),
(3, 'NGUYỄN THỊ HUYỀN', '2015-07-08', 'ĐÀ NẴNG', 'F', 21, 3),
(4, 'TRẦN VĂN QUANG', '1991-01-31', 'HÀ NỘI', 'M', 22, 1),
(5, 'NGUYÊN GIA THÁI', '2015-07-08', 'TP HCM', 'M', 20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `HoaDonBan`
--

CREATE TABLE IF NOT EXISTS `HoaDonBan` (
`MaHD` int(11) NOT NULL,
  `MaKhach` int(11) NOT NULL,
  `NgHD` datetime DEFAULT NULL,
  `DienGiai` varchar(255) DEFAULT NULL,
  `Duyet` tinyint(8) DEFAULT NULL,
  `NgDuyet` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `HoaDonBan`
--

INSERT INTO `HoaDonBan` (`MaHD`, `MaKhach`, `NgHD`, `DienGiai`, `Duyet`, `NgDuyet`) VALUES
(1, 7, '2015-08-29 02:25:03', 'bkjkjhk', 0, NULL),
(2, 8, '2015-08-29 02:26:01', 'mua no', 0, NULL),
(3, 9, '2015-08-29 02:28:22', 'aaaaaaaaaaaaaa', 0, '2015-08-31 15:07:31'),
(4, 10, '2015-08-31 13:48:34', 'mua no', 1, NULL),
(5, 11, '2015-08-31 14:12:27', '2222222222222222', 1, '2015-08-31 15:06:56');

-- --------------------------------------------------------

--
-- Table structure for table `LOP`
--

CREATE TABLE IF NOT EXISTS `LOP` (
`IDLOP` int(11) NOT NULL,
  `NAME` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `LOP`
--

INSERT INTO `LOP` (`IDLOP`, `NAME`) VALUES
(1, '1A'),
(2, '1B');

-- --------------------------------------------------------

--
-- Table structure for table `LoaiHang`
--

CREATE TABLE IF NOT EXISTS `LoaiHang` (
`MaLoaiHang` int(11) NOT NULL,
  `TenLoaiHang` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `LoaiHang`
--

INSERT INTO `LoaiHang` (`MaLoaiHang`, `TenLoaiHang`) VALUES
(1, 'Äáº§m'),
(2, 'Ão khoÃ¡c kaki'),
(3, 'Ão vest'),
(4, 'Ão len ná»‰'),
(5, 'Ão thun');

-- --------------------------------------------------------

--
-- Table structure for table `NguoiDung`
--

CREATE TABLE IF NOT EXISTS `NguoiDung` (
`MaNguoiDung` int(11) NOT NULL,
  `TenTruyCap` varchar(255) NOT NULL,
  `MatKhau` varchar(255) NOT NULL,
  `HoTen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `NguoiDung`
--

INSERT INTO `NguoiDung` (`MaNguoiDung`, `TenTruyCap`, `MatKhau`, `HoTen`) VALUES
(2, 'tinhabc', 'vbbvifLcdaYMXvLbFScbwn0UZVxS68vgZ6wiWvwVUhE=', 'Tinh ABC'),
(13, 'user', 'user pass', 'ten user'),
(28, 'tinhnq', 'IrVcNOjjE1TXQeshlcMytSuFQywW0tfd7k8td5k8WPk=', 'Quang Tinh'),
(29, 'admin', 'mkoGkmVT8w6ouNYrlO9ltnekNVWYjrAsBVLv/iTjTOo=', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `NhaCungCap`
--

CREATE TABLE IF NOT EXISTS `NhaCungCap` (
`MaNhaCungCap` int(11) NOT NULL,
  `TenNhaCungCap` varchar(255) NOT NULL,
  `DiaChi` varchar(255) DEFAULT NULL,
  `DienThoai` varchar(15) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `NhaCungCap`
--

INSERT INTO `NhaCungCap` (`MaNhaCungCap`, `TenNhaCungCap`, `DiaChi`, `DienThoai`, `Email`) VALUES
(1, 'Polo by Ralph Lauren', 'ÄÃ  Náºµng', '0905666777', 'abc@gmail.com'),
(2, 'Puma Black Label', 'ÄÃ  Náºµng', '0978999000', 'def@gmail.com'),
(3, 'Sperry Top-Sider', 'ÄÃ  Náºµng', '0978999123', 'xyzz@yahoo.com'),
(4, 'Tommy Hilfiger', 'ÄÃ  Náºµng', '0978999666', 'ebd@vnn.vn'),
(5, 'Dr. Schollâ€™s', 'ÄÃ  Náºµng', '0978000001', 'edc@gmail.com'),
(6, 'Florsheim Work', 'ÄÃ  Náºµng', '051183732', 'hptm@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ChiTietHoaDon`
--
ALTER TABLE `ChiTietHoaDon`
 ADD PRIMARY KEY (`MaHD`,`MaHang`), ADD KEY `MaHD` (`MaHD`), ADD KEY `MaHang` (`MaHang`);

--
-- Indexes for table `DMHang`
--
ALTER TABLE `DMHang`
 ADD PRIMARY KEY (`MaHang`), ADD KEY `MaNhaCungCap` (`MaNhaCungCap`), ADD KEY `MaLoaiHang` (`MaLoaiHang`);

--
-- Indexes for table `DMKhach`
--
ALTER TABLE `DMKhach`
 ADD PRIMARY KEY (`MaKhach`);

--
-- Indexes for table `HOCSINH`
--
ALTER TABLE `HOCSINH`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `HoaDonBan`
--
ALTER TABLE `HoaDonBan`
 ADD PRIMARY KEY (`MaHD`), ADD KEY `MaKhach` (`MaKhach`);

--
-- Indexes for table `LOP`
--
ALTER TABLE `LOP`
 ADD PRIMARY KEY (`IDLOP`);

--
-- Indexes for table `LoaiHang`
--
ALTER TABLE `LoaiHang`
 ADD PRIMARY KEY (`MaLoaiHang`);

--
-- Indexes for table `NguoiDung`
--
ALTER TABLE `NguoiDung`
 ADD PRIMARY KEY (`MaNguoiDung`);

--
-- Indexes for table `NhaCungCap`
--
ALTER TABLE `NhaCungCap`
 ADD PRIMARY KEY (`MaNhaCungCap`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `DMHang`
--
ALTER TABLE `DMHang`
MODIFY `MaHang` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `DMKhach`
--
ALTER TABLE `DMKhach`
MODIFY `MaKhach` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `HOCSINH`
--
ALTER TABLE `HOCSINH`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `HoaDonBan`
--
ALTER TABLE `HoaDonBan`
MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `LOP`
--
ALTER TABLE `LOP`
MODIFY `IDLOP` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `LoaiHang`
--
ALTER TABLE `LoaiHang`
MODIFY `MaLoaiHang` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `NguoiDung`
--
ALTER TABLE `NguoiDung`
MODIFY `MaNguoiDung` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `NhaCungCap`
--
ALTER TABLE `NhaCungCap`
MODIFY `MaNhaCungCap` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `DMHang`
--
ALTER TABLE `DMHang`
ADD CONSTRAINT `dmhang_ibfk_1` FOREIGN KEY (`MaNhaCungCap`) REFERENCES `NhaCungCap` (`MaNhaCungCap`),
ADD CONSTRAINT `dmhang_ibfk_2` FOREIGN KEY (`MaLoaiHang`) REFERENCES `LoaiHang` (`MaLoaiHang`);

--
-- Constraints for table `HoaDonBan`
--
ALTER TABLE `HoaDonBan`
ADD CONSTRAINT `hoadonban_ibfk_1` FOREIGN KEY (`MaKhach`) REFERENCES `DMKhach` (`MaKhach`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
