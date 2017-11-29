-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 29, 2017 lúc 05:43 PM
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
-- Cơ sở dữ liệu: `127_0_0_1 (3)`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chucvu`
--

CREATE TABLE `chucvu` (
  `ID` int(10) NOT NULL,
  `TenCV` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chucvu`
--

INSERT INTO `chucvu` (`ID`, `TenCV`) VALUES
(1, 'Giám đốc'),
(2, 'Nhân viên kinh doanh'),
(3, 'Nhân Viên Hành Chính');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `congvande`
--

CREATE TABLE `congvande` (
  `ID` int(10) NOT NULL,
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
  `Noidungvanban` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Filedinhkem` varchar(20000) COLLATE utf8_unicode_ci NOT NULL,
  `Ghichu` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `congvande`
--

INSERT INTO `congvande` (`ID`, `Nguoiky`, `Nguoiduyet`, `Ngaybanhanh`, `Noibanhanh`, `Ngaynhan`, `Nguoinhan`, `Tongtrang`, `Loaivanban`, `Linhvuc`, `Noidungtomtat`, `Noidungvanban`, `Filedinhkem`, `Ghichu`) VALUES
(1, 'Nguyễn Thị Kim Hà', 'Trần Thị Phương Thảo', '2017-11-29', 'Trường Đại học An Giang', '2017-11-29', 'Nguyễn Thị Kim Vàng', 16, 'Công văn đến', 'Quy định', 'Thông báo về công tác văn thư, hành chính của Trường Đại học An Giang', 'cv', '2442-QD-DHAG quy dinh che do lam viec cua GV.pdf', 'Thông báo về công tác văn thư, hành chính của Trường Đại học An Giang'),
(2, 'Trần Thị Phương Thảo', 'Nguyễn Thị Kim Vàng', '2017-11-29', 'Trường Đại học An Giang', '2017-11-29', 'Trần Thị Mỹ Hiền', 10, 'Công văn đến', 'Pháp luật', 'Hướng dẫn xét NGND-NGUT lần thứ 14-2017', '<h1>Hướng dẫn x&eacute;t NGND-NGUT lần thứ 14-2017\\</h1>\r\n\r\n<h1>Hướng dẫn x&eacute;t NGND-NGUT lần thứ 14-2017</h1>\r\n\r\n<h1>Hướng dẫn x&eacute;t NGND-NGUT lần thứ 14-2017</h1>\r\n', 'TB về công tác văn thư, hành chính của Trường Đại học An Giang.pdf', 'Hướng dẫn xét NGND-NGUT lần thứ 14-2017');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `congvandi`
--

CREATE TABLE `congvandi` (
  `ID` int(10) NOT NULL,
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
  `Filedinhkem` varchar(5000) COLLATE utf8_unicode_ci NOT NULL,
  `Ghichu` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `congvandi`
--

INSERT INTO `congvandi` (`ID`, `Nguoiky`, `Nguoiduyet`, `Ngaybanhanh`, `Noibanhanh`, `Ngaygoi`, `Nguoigoi`, `Tongsotrang`, `Loaivanban`, `Linhvuc`, `Noidungtomtat`, `Noidungvanban`, `Filedinhkem`, `Ghichu`) VALUES
(16, 'Nguyễn Thị Kim Hà', 'Nguyễn Thị Kim Vàng', '2017-11-22', 'Trường Đại học An Giang', '2017-11-22', 'Trần Thị Phương Thảo', 10, 'Công văn đi', 'công chức', 'QUYẾT ĐỊNH: Vê việc ban hành “Quy định chế độ làm việc của giảng viên\r\nTrường Đại học An Giang”\r\n', '<div class=\"WordSection1\">\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><a name=\"bo', '2442-QD-DHAG quy dinh che do lam viec cua GV.docx', 'QUYẾT ĐỊNH'),
(17, 'Nguyễn Thị Kim Hà', 'Nguyễn Thị Kim Vàng', '2017-11-29', 'Trường Đại học An Giang', '2017-11-29', 'Trần Thị Mỹ Hiền', 10, 'Công văn đi', 'Quy chế công chức', 'Hướng dẫn xét NGND-NGUT lần thứ 14-2017', '<h1>Hướng dẫn x&eacute;t NGND-NGUT lần thứ 14-2017</h1>\r\n\r\n<h1>Hướng dẫn x&eacute;t NGND-NGUT lần thứ 14-2017</h1>\r\n\r\n<h1>Hướng dẫn x&eacute;t NGND-NGUT lần thứ 14-2017</h1>\r\n\r\n<h1>Hướng dẫn x&eacute;', 'TB về công tác văn thư, hành chính của Trường Đại học An Giang.pdf', 'Hướng dẫn xét NGND-NGUT lần thứ 14-2017');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `ID` int(11) NOT NULL,
  `TenDM` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`ID`, `TenDM`) VALUES
(1, 'Tin tức'),
(2, 'Sự kiện'),
(3, 'Âm nhạc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaivanban`
--

CREATE TABLE `loaivanban` (
  `ID` int(10) NOT NULL,
  `TenVanBan` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `ID` int(11) NOT NULL,
  `Manv` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ID_chucvu` int(10) NOT NULL,
  `HoVaTen` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `QuyenHan` int(10) NOT NULL,
  `Khoa` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`ID`, `Manv`, `ID_chucvu`, `HoVaTen`, `MatKhau`, `QuyenHan`, `Khoa`) VALUES
(1, 'NV01', 1, 'Trần Thị Mỹ Hiền', '47c5580df81fe23f3d201a711cdb6d04bc084dac', 1, 0),
(2, 'NV002', 0, 'Nguyễn Thị Kim vàng', 'vang', 1, 0),
(3, 'NV03', 2, 'Nguyễn Thị Kim Vàng', '02dd9e90713bf24d33ef2ffd3167a33a6a73739e', 1, 0);

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
  `ID` int(10) NOT NULL,
  `Tieude` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ID_danhmuc` int(10) NOT NULL,
  `ID_nguoidung` int(10) NOT NULL,
  `Ngaydang` datetime NOT NULL,
  `Tomtat` text COLLATE utf8_unicode_ci NOT NULL,
  `Noidung` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`ID`, `Tieude`, `ID_danhmuc`, `ID_nguoidung`, `Ngaydang`, `Tomtat`, `Noidung`) VALUES
(1, 'Bộ trưởng Tài chính: Đã truy thu hơn 3.000 tỷ đồng chuyển giá', 1, 1, '2017-11-16 10:22:53', 'Bộ trưởng Tài chính: Đã truy thu hơn 3.000 tỷ đồng chuyển giá', '<p><strong>Năm 2017 truy thu hơn 3.000 tỷ đồng chuyển gi&aacute;</strong></p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Dung-2a-7500-1510802102.jpg\" src=\"https://i-kinhdoanh.vnecdn.net/2017/11/16/Dung-2a-7500-1510802102_600x0.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Bộ trưởng Đinh Tiến Dũng</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Bộ trưởng T&agrave;i ch&iacute;nh thừa nhận chuyển gi&aacute; l&agrave; vấn đề&nbsp;bức x&uacute;c của x&atilde; hội thời gian qua. Về ph&aacute;p l&yacute;, năm 1995 Bộ T&agrave;i ch&iacute;nh đ&atilde; c&oacute; văn bản hướng dẫn kiểm so&aacute;t chuyển gi&aacute;. Thời gian gần đ&acirc;y tiếp tục ho&agrave;n thiện c&aacute;c ch&iacute;nh s&aacute;ch. Năm 2017, Bộ đ&atilde; tr&igrave;nh Ch&iacute;nh phủ ban h&agrave;nh Nghị định 20 về quản l&yacute; thuế với doanh nghiệp ph&aacute;t sinh giao dịch li&ecirc;n kết v&agrave; ban h&agrave;nh th&ocirc;ng tư, dựa tr&ecirc;n kinh nghiệm của OECD.&nbsp;</p>\r\n'),
(2, 'Các siêu sao sân cỏ giữ body như tạc tượng ra sao', 2, 1, '2017-11-16 10:57:53', 'C.Ronaldo và các ngôi sao bóng đá tập gym với cường độ cao cùng bài tập thể lực để sở hữu thân hình chuẩn, theo Health+.', '<p>Từ khi 16 tuổi, m&ocirc;n thể h&igrave;nh đ&atilde; c&oacute; sức h&uacute;t to lớn với Thuận. Ch&agrave;ng trai say m&ecirc; tập luyện bởi y&ecirc;u th&iacute;ch vẻ ngo&agrave;i mạnh mẽ v&agrave; cơ bắp.&nbsp;Ng&agrave;y ấy, cậu thanh ni&ecirc;n 8x kh&aacute; h&agrave;i l&ograve;ng về c&acirc;n nặng 65 kg, cơ thể c&acirc;n đối so với bạn b&egrave; trang lứa đang độ tuổi dậy th&igrave; gầy g&ograve;. Mong ước của Thuận l&agrave; cơ thể cần săn chắc, nhiều cơ bắp hơn th&ocirc;ng qua c&aacute;c b&agrave;i tập thể h&igrave;nh.</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"hon-10-nam-tan-tien-de-tap-the-hinh-cua-chang-trai-phan-thiet\" src=\"https://i-suckhoe.vnecdn.net/2017/11/14/tap-gym-2043-1510633704.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Thuận Trần d&agrave;nh hơn 10 năm tuổi trẻ theo đuổi thể h&igrave;nh chuy&ecirc;n nghiệp. Ảnh:&nbsp;<em>T.T</em></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Những cơn đau mỏi cơ k&eacute;o d&agrave;i hằng tuần thời gian đầu tập luyện rất khiến người mới tập gym nản l&ograve;ng bỏ cuộc. Thuận tự nhủ những cơn đau chứng tỏ m&igrave;nh đ&atilde; đi đ&uacute;ng đường, cơ bắp được &ldquo;k&iacute;ch hoạt&rdquo; để ph&aacute;t triển n&ecirc;n cố gắng vượt qua. B&eacute;n duy&ecirc;n với thể h&igrave;nh v&agrave; t&igrave;m thấy đam m&ecirc;, Thuận d&agrave;nh nhiều thời gian v&agrave; c&ocirc;ng sức để theo thể h&igrave;nh chuy&ecirc;n nghiệp.</p>\r\n');

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
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `congvande`
--
ALTER TABLE `congvande`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `congvandi`
--
ALTER TABLE `congvandi`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `loaivanban`
--
ALTER TABLE `loaivanban`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Manv` (`Manv`),
  ADD UNIQUE KEY `ID_chucvu` (`ID_chucvu`),
  ADD UNIQUE KEY `ID_chucvu_2` (`ID_chucvu`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `vanbancanhan`
--
ALTER TABLE `vanbancanhan`
  ADD PRIMARY KEY (`Sohieu`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chucvu`
--
ALTER TABLE `chucvu`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `congvande`
--
ALTER TABLE `congvande`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `congvandi`
--
ALTER TABLE `congvandi`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `loaivanban`
--
ALTER TABLE `loaivanban`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
