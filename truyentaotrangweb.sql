-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2020 at 04:21 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `truyentaotrangweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_cap_nhat`
--

CREATE TABLE `tb_cap_nhat` (
  `IdCapNhat` int(11) NOT NULL,
  `TieuDe` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NgayCapNhat` datetime NOT NULL,
  `Nguon` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_cap_nhat`
--

INSERT INTO `tb_cap_nhat` (`IdCapNhat`, `TieuDe`, `NgayCapNhat`, `Nguon`, `NoiDung`) VALUES
(1, 'Top tổng tài bá đạo trên từng hạt gạo', '2020-12-08 22:52:10', 'Cỏ thơm', ''),
(2, 'Top truyện đọc nhiều nhất trong tháng\r\n', '2020-12-06 22:52:10', 'hảo mít', ''),
(3, 'Top truyện đọc lấy đi nhiều nước mắt của đọc giả', '2020-12-01 22:53:31', 'khói', ''),
(4, 'Nghi ngờ đạo tác phấm của Tác giả Trương Thái Vi\r\n', '2020-12-20 22:53:55', 'Lá', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_lien_lac`
--

CREATE TABLE `tb_lien_lac` (
  `IdLienLac` int(11) NOT NULL,
  `HoTen` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NoiDungPhanHoi` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_lien_lac`
--

INSERT INTO `tb_lien_lac` (`IdLienLac`, `HoTen`, `Email`, `NoiDungPhanHoi`) VALUES
(1, 'Bạch Thị Trà Hiên', 'hien13248@gmail.com', 'truyện vẫn còn lỗi chính tả'),
(2, 'Phương Anh Thư', 'Phuonganhthu232@gmail.com', 'Truyện hay'),
(3, 'Nguyễn Hải Anh', 'anh1324@gmail.com', 'Tác giả ra truyện nhanh hơn nữa nhé'),
(4, 'Trần Ngọc Anh', 'Ngocanh32@gmail.com', 'Ra sớm thêm chương mới nhé tác giả');

-- --------------------------------------------------------

--
-- Table structure for table `tb_nguoi_doc`
--

CREATE TABLE `tb_nguoi_doc` (
  `IdNguoiDoc` int(11) NOT NULL,
  `TenNguoiDoc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `TenDangNhap` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `SoDienThoai` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_nguoi_doc`
--

INSERT INTO `tb_nguoi_doc` (`IdNguoiDoc`, `TenNguoiDoc`, `TenDangNhap`, `Email`, `SoDienThoai`, `MatKhau`) VALUES
(1, 'Bùi Thị Diệp Hảo', 'haomit2004', 'haomit2004@gmail.com', '0365579381', '132027'),
(2, 'Bùi Phương Thảo', 'ThaoBui', 'Buiphuongthao0204@gmai.com', '0124722256', '123456789'),
(3, 'Vũ Phương Thảo\r\n', 'VuThao', 'Vuphuongthao2404@gmai.com', '0354578255', '123456789'),
(4, 'Nguyễn Thanh Hải\r\n', 'ThanhHai', 'thanhhai2602@gmail.com', '0346762332', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tac_gia`
--

CREATE TABLE `tb_tac_gia` (
  `MaTac Gia` int(11) NOT NULL,
  `TenTacGia` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MaTheLoai` int(11) NOT NULL,
  `GioiThieu` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_tac_gia`
--

INSERT INTO `tb_tac_gia` (`MaTac Gia`, `TenTacGia`, `MaTheLoai`, `GioiThieu`) VALUES
(1, 'Trương Thái Vi', 2, 'Câu chuyện tình thầy trò đặc biệt này đã lôi cuốn người đọc ngay từ những trang sách đầu tiên Bến xe. Chu Ngọc, một thầy giáo trẻ bị mù giảng dạy ở một trường cấp ba, anh xa lánh với tất cả mọi người, luôn tỏ ra lạnh nhạt, xa cách. Liễu Địch, cô học trò nhỏ này là người đầu tiên đã làm Chu Ngọc rung động, được anh cho phép ở bên cạnh giúp đỡ và nhận sự săn sóc từ cô'),
(2, 'Phí Ngã Tư Tồn', 2, 'Phỉ Ngã Tư Tồn chắc hẳn là cái tên không còn xa lạ gì với những cuốn tiểu thuyết buồn, được fan đặt biệt danh \"Mẹ kế\"., '),
(3, 'Thư Nghi', 2, ', Thư nghi có Cuốn tiểu thuyết Từng có người yêu tôi như sinh mệnh đã lấy đi nước mắt của hàng triệu độc giả, '),
(4, 'Lâu Vũ Tình', 2, ', Có tác phầm Thất tịch không mưa là tác phẩm lấy đi rất nhiều nước mắt của độc giả, có chút gì đó buồn xen lẫn cảm giác day dứt');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tac_pham`
--

CREATE TABLE `tb_tac_pham` (
  `MaTacPham` int(11) NOT NULL,
  `TenTacPham` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `GioiThieu` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `SoChuong` int(11) NOT NULL,
  `MaTacGia` int(11) NOT NULL,
  `MoTa` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `Anh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MaTheLoai` int(11) NOT NULL,
  `NgayDang` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_tac_pham`
--

INSERT INTO `tb_tac_pham` (`MaTacPham`, `TenTacPham`, `GioiThieu`, `SoChuong`, `MaTacGia`, `MoTa`, `Anh`, `MaTheLoai`, `NgayDang`) VALUES
(1, 'Hẹn Đẹp Như Mơ', 'Mạnh Hòa Bình là mối tình đầu nhưng Nguyễn Chính Đông có lẽ là mối tình cuối của Giai Kỳ, anh sẽ sống mãi trong lòng cô - một công tử nhà giàu ăn chơi trác táng nhưng trái tim thủy chung và yêu Giai Kỳ hết lòng. Trước khi ra đi, Nguyễn Chính Đông đã nói: \"Anh không cần em phải dũng cảm, anh chỉ muốn em hạnh phúc\", đây là lời hứa mà anh buộc cô phải thực hiện. Một tác phẩm Hẹn đẹp như mơ với cái kết buồn, thực tế nhưng rất sâu sắc và ý nghĩa', 55, 2, 'Phỉ Ngã Tư Tồn chắc hẳn là cái tên không còn xa lạ gì với những cuốn tiểu thuyết buồn, được fan đặt biệt danh \"Mẹ kế\". Một chuyện tình tay ba ngọt ngào, thơ mộng nhưng cũng không kém phần bi thương giữa Giai Kỳ, Nguyễn Chính Đông và Mạnh Hòa Bình', '', 2, '2020-11-16 23:21:39'),
(2, 'Thất Tịch Không Mưa', 'Anh yêu cô, thứ tình cảm cố gắng đè nén nhưng vẫn bộc phát, tình yêu cả hai đều xuất phát từ trái tim nhưng mãi mãi chẳng bao giờ bên cạnh nhau. Anh và cô đều vì mắc căn bệnh di truyền mà qua đời, đây có lẽ là cái kết buồn nhất nhưng đối với nhiều độc giả đây là cái kết tốt nhất cho cả hai, biết đâu ở trên thiên đường hai người sẽ được đoàn tụ với tư cách một người đàn ông và một người phụ nữ', 66, 4, ', Thất tịch không mưa là tác phẩm lấy đi rất nhiều nước mắt của độc giả, có chút gì đó buồn xen lẫn cảm giác day dứt. Chuyện tình yêu cấm kị giữa hai anh em Thẩm Hàn Vũ và Thẩm Thiên Tình, nếu đây chỉ là quan hệ anh em bình thường thì đã không xảy ra bi kịch.   Tự để,   ngày hiện tại', '', 2, '2020-12-08 22:42:17'),
(3, 'Từng có người yêu tôi như sinh mệnh ', 'Anh ra đi với câu nói: \"Cô bé của tôi, chúc em một đời bình an vui vẻ\" để lại trong lòng Triệu Mai một tình yêu kéo dài âm ỉ, cô không thể chấp nhận thêm bất cứ người đàn ông nào nữa. Cuốn truyện đã để lại day dứt, ám ảnh trong lòng độc giả, họ chỉ ước rằng: \"Giá như Tôn Gia Ngộ có thể sống\" nhưng trên đời này không tồn tại giá như', 78, 3, '', '', 2, '2020-11-10 23:27:01'),
(4, 'Bến xe', 'Nhưng thực tế xã hội luôn phức tạp, những lời nói , bàn tán sau lưng, những trò đùa ác ý đôi khi dồn con người ta đến đường cùng. Anh đã tự tử để bảo vệ thanh danh cho cô học trò nhỏ của mình cũng là người anh yêu nhất. \"Liễu Địch, thứ tôi có thể cho em trong cuộc đời này, chỉ là danh dự trong sạch và tương lai tươi đẹp mà thôi. Thế nhưng, nếu chúng ta có kiếp sau, nếu kiếp sau tôi có đôi mắt sáng, tôi sẽ ở bến xe này… đợi em', 44, 1, 'Câu chuyện tình thầy trò đặc biệt này đã lôi cuốn người đọc ngay từ những trang sách đầu tiên Bến xe. Chu Ngọc, một thầy giáo trẻ bị mù giảng dạy ở một trường cấp ba, anh xa lánh với tất cả mọi người, luôn tỏ ra lạnh nhạt, xa cách. Liễu Địch, cô học trò nhỏ này là người đầu tiên đã làm Chu Ngọc rung động, được anh cho phép ở bên cạnh giúp đỡ và nhận sự săn sóc từ cô', '', 2, '2020-12-10 22:42:17');

-- --------------------------------------------------------

--
-- Table structure for table `tb_the_loai`
--

CREATE TABLE `tb_the_loai` (
  `MaTheLoai` int(11) NOT NULL,
  `TenTheLoai` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_the_loai`
--

INSERT INTO `tb_the_loai` (`MaTheLoai`, `TenTheLoai`) VALUES
(1, 'Cổ Đại'),
(2, 'Hiện Đại'),
(3, 'Xuyên Không');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_cap_nhat`
--
ALTER TABLE `tb_cap_nhat`
  ADD PRIMARY KEY (`IdCapNhat`);

--
-- Indexes for table `tb_lien_lac`
--
ALTER TABLE `tb_lien_lac`
  ADD PRIMARY KEY (`IdLienLac`);

--
-- Indexes for table `tb_nguoi_doc`
--
ALTER TABLE `tb_nguoi_doc`
  ADD PRIMARY KEY (`IdNguoiDoc`);

--
-- Indexes for table `tb_tac_gia`
--
ALTER TABLE `tb_tac_gia`
  ADD PRIMARY KEY (`MaTac Gia`);

--
-- Indexes for table `tb_tac_pham`
--
ALTER TABLE `tb_tac_pham`
  ADD PRIMARY KEY (`MaTacPham`);

--
-- Indexes for table `tb_the_loai`
--
ALTER TABLE `tb_the_loai`
  ADD PRIMARY KEY (`MaTheLoai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_cap_nhat`
--
ALTER TABLE `tb_cap_nhat`
  MODIFY `IdCapNhat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_lien_lac`
--
ALTER TABLE `tb_lien_lac`
  MODIFY `IdLienLac` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_nguoi_doc`
--
ALTER TABLE `tb_nguoi_doc`
  MODIFY `IdNguoiDoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_tac_gia`
--
ALTER TABLE `tb_tac_gia`
  MODIFY `MaTac Gia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_tac_pham`
--
ALTER TABLE `tb_tac_pham`
  MODIFY `MaTacPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_the_loai`
--
ALTER TABLE `tb_the_loai`
  MODIFY `MaTheLoai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
