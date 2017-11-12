-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 12, 2017 lúc 10:09 AM
-- Phiên bản máy phục vụ: 10.1.28-MariaDB
-- Phiên bản PHP: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ql_congvan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chucvu`
--

CREATE TABLE `chucvu` (
  `MaCV` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TenCV` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chucvu`
--

INSERT INTO `chucvu` (`MaCV`, `TenCV`) VALUES
('CV01', 'Giám Đốc'),
('CV02', 'Nhân Viên Hành Chính'),
('CV03', 'Nhân Viên Tài Vụ'),
('CV04', 'Nhân Viên Công Nghệ Thông Tin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `congvande`
--

CREATE TABLE `congvande` (
  `SohieuCVDE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Nguoiky` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Nguoiduyet` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ngaybanhanh` date NOT NULL,
  `Noibanhanh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ngaynhan` date NOT NULL,
  `Nguoinhan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Tongtrang` int(11) NOT NULL,
  `Loaivanban` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Linhvuc` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Noidungtomtat` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `Noidungvanban` int(200) NOT NULL,
  `Filedinhkem` bit(32) NOT NULL,
  `Ghichu` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `congvandi`
--

CREATE TABLE `congvandi` (
  `SohieuCVD` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Nguoiky` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Nguoiduyet` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ngaybanhanh` date NOT NULL,
  `Noibanhanh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ngaygoi` date NOT NULL,
  `Nguoigoi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Tongsotrang` int(11) NOT NULL,
  `Loaivanban` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Linhvuc` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Noidungtomtat` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Noidungvanban` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Filedinhkem` bit(32) NOT NULL,
  `Ghichu` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `ID` int(10) NOT NULL,
  `TenDM` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`ID`, `TenDM`) VALUES
(1, 'văn hóa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `ID` int(11) NOT NULL,
  `HoVaTen` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Manv` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `QuyenHan` tinyint(4) NOT NULL,
  `Khoa` tinyint(4) NOT NULL,
  `Chucvu` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`ID`, `HoVaTen`, `Manv`, `MatKhau`, `QuyenHan`, `Khoa`, `Chucvu`) VALUES
(4, 'Trần Thị Phương Phảo', 'NV01', 'thao', 2, 0, ''),
(5, 'Nguyễn Thị Kim Hà', 'NV01', 'ha', 1, 0, ''),
(7, 'Nguyễn Thị Kim Vàng', 'NV01', '02dd9e90713bf24d33ef2ffd3167a33a6a73739e', 2, 0, ''),
(8, 'Nguyễn Thị Kim Vàng', 'NV01', '02dd9e90713bf24d33ef2ffd3167a33a6a73739e', 2, 0, 'q'),
(9, 'd', 'd', '3c363836cf4e16666669a25da280a1865c2d2874', 2, 0, 'd'),
(10, 'vang', 'NV02', '12345', 1, 0, 'p');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phongban`
--

CREATE TABLE `phongban` (
  `Maphong` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Tenphong` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `Tieude` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ngaydang` date NOT NULL,
  `Noidung` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Hinhanh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Nguoidang` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vanbancanhan`
--

CREATE TABLE `vanbancanhan` (
  `Sohieu` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Tenvanban` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Loaivanban` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Noibanhanh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Noidungvanban` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Filedinhkem` bit(32) NOT NULL,
  `Ghichu` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chucvu`
--
ALTER TABLE `chucvu`
  ADD PRIMARY KEY (`MaCV`);

--
-- Chỉ mục cho bảng `congvande`
--
ALTER TABLE `congvande`
  ADD PRIMARY KEY (`SohieuCVDE`);

--
-- Chỉ mục cho bảng `congvandi`
--
ALTER TABLE `congvandi`
  ADD PRIMARY KEY (`SohieuCVD`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`Tieude`);

--
-- Chỉ mục cho bảng `vanbancanhan`
--
ALTER TABLE `vanbancanhan`
  ADD PRIMARY KEY (`Sohieu`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
