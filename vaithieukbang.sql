-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2022 at 10:03 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vaithieukbang`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_category`
--

CREATE TABLE `db_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `level` int(2) NOT NULL,
  `parentid` int(11) NOT NULL,
  `orders` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_config`
--

CREATE TABLE `db_config` (
  `id` int(11) NOT NULL,
  `mail_smtp` varchar(68) CHARACTER SET utf8 NOT NULL,
  `mail_smtp_password` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Password mail shop',
  `mail_noreply` varchar(68) CHARACTER SET utf8 NOT NULL,
  `priceShip` mediumtext CHARACTER SET utf8 NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_config`
--

INSERT INTO `db_config` (`id`, `mail_smtp`, `mail_smtp_password`, `mail_noreply`, `priceShip`, `title`, `description`) VALUES
(1, 'ocopchupuhgl@gmail.com', 'tutanbcasaqjhxql', 'thanhwilshere96@gmail.com', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `db_contact`
--

CREATE TABLE `db_contact` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `trash` int(11) NOT NULL DEFAULT 1,
  `fullname` varchar(80) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_content`
--

CREATE TABLE `db_content` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `introtext` mediumtext CHARACTER SET utf8 NOT NULL,
  `fulltext` mediumtext CHARACTER SET utf8 NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) CHARACTER SET utf8 NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) CHARACTER SET utf8 NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_content`
--

INSERT INTO `db_content` (`id`, `title`, `alias`, `introtext`, `fulltext`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(10, 'Lục Ngạn mùa Vải Thiều', 'luc-ngan-mua-vai-thieu', '', '<p>Vượt qu&atilde;ng đường gần 100km, nh&oacute;m ch&uacute;ng t&ocirc;i c&oacute; mặt tại Lục Ngạn &ndash; Bắc Giang l&uacute;c 7h s&aacute;ng. Dọc con đường từ Thị trấn Đồi Ng&ocirc; đến Thị trấn Chũ tấp nập xe m&aacute;y chở vải thiều hối hả ngược xu&ocirc;i. Đến trung t&acirc;m thị trấn Chũ mọi người kh&ocirc;ng khỏi cho&aacute;ng ngợp bởi tr&ecirc;n l&agrave; trời, dưới l&agrave; vải thiều, vải nhuộm đỏ dọc con phố. H&agrave;ng trăm xe m&aacute;y chở những sọt vải cao qu&aacute; đầu chen ch&uacute;c nhau đến c&aacute;c điểm thu mua, con đường trung t&acirc;m thị trấn tắc nghẽn, xe &ocirc; t&ocirc; nối d&agrave;i h&agrave;ng km chờ đi qua khu vực n&agrave;y, nhiều xe tải, xe lạnh c&oacute; trọng tải cả chục tấn k&eacute;o về đ&acirc;y để vận chuyển vải đi ti&ecirc;u thụ, thị trấn nhỏ trở n&ecirc;n đ&ocirc;ng đ&uacute;c, n&aacute;o nhiệt. Một tổ cảnh s&aacute;t giao th&ocirc;ng c&ugrave;ng h&agrave;ng chục thanh ni&ecirc;n t&igrave;nh nguyện tham gia đảm bảo an to&agrave;n giao th&ocirc;ng đ&ocirc; thị cũng kh&ocirc;ng giải quyết nổi cho c&aacute;c phương tiện lưu th&ocirc;ng.</p>\r\n\r\n<p><img alt=\"Hình ảnh Lục Ngạn mùa Vải Thiều\" src=\"https://vaithieu.net/wp-content/uploads/2018/06/luc-ngan-mua-vai-thieu-1.jpg\" style=\"height:540px; width:960px\" /></p>\r\n\r\n<p>Phố Kim &ndash; TT Chũ m&ugrave;a thu hoạch vải thiều</p>\r\n\r\n<p>Xe ch&uacute;ng t&ocirc;i đ&agrave;nh rẽ v&agrave;o một ng&otilde; nhỏ thị trấn Chũ rồi thả bộ đi dọc đoạn phố nơi c&oacute; h&agrave;ng chục điểm thu mua vải thiều của b&agrave; con n&ocirc;ng d&acirc;n trong huyện Lục Ngạn. Trời nắng n&oacute;ng, những gương mặt n&ocirc;ng d&acirc;n xạm đen b&oacute;ng nhẫy mồ h&ocirc;i chở theo sau xe m&aacute;y l&agrave; giỏ vải nặng từ 120 &ndash; 150kg. Gh&eacute; v&agrave;o một điểm thu mua tr&ecirc;n d&atilde;y phố t&ocirc;i gặp anh Th&agrave;nh, một trong những chủ thu mua vải lớn nhất nơi đ&acirc;y, anh đang kiểm tra chất lượng vải cho nh&acirc;n vi&ecirc;n thu mua, h&agrave;ng chục xe đang xếp h&agrave;ng chờ c&acirc;n.</p>\r\n\r\n<p><img alt=\"Hình ảnh Lục Ngạn mùa Vải Thiều\" src=\"https://vaithieu.net/wp-content/uploads/2018/06/luc-ngan-mua-vai-thieu-2.jpg\" style=\"height:580px; width:960px\" /></p>\r\n\r\n<p>Trao đổi c&ugrave;ng anh đ&ocirc;i điều, anh cho biết: Lục Ngạn đang thời kỳ cao điểm thu hoạch vải thiều, điểm của t&ocirc;i đang thu gom vải chở sang b&aacute;n cho thương l&aacute;i Trung Quốc , mỗi ng&agrave;y thu mua v&agrave; chuyển đi một xe 14 tấn. Ch&uacute;ng t&ocirc;i thanh to&aacute;n ngay tiền cho n&ocirc;ng d&acirc;n sau khi c&acirc;n, gi&aacute; thu mua dao động từ 19 &ndash; 22 ng&agrave;n đồng/ kg. Vải từ đ&acirc;y kh&ocirc;ng chỉ b&aacute;n sang Trung Quốc m&agrave; c&ograve;n đi khắp đất nước .T&ocirc;i hỏi th&ecirc;m anh về việc n&ocirc;ng d&acirc;n hay c&aacute;c chủ thu mua vải c&oacute; sử dụng h&oacute;a chất bảo quản kh&ocirc;ng anh chia sẻ : Vải Lục Ngạn đều l&agrave; vải sạch, ch&uacute;ng t&ocirc;i ở đ&acirc;y thường bảo quản bằng c&aacute;ch ng&acirc;m vải &iacute;t ph&uacute;t v&agrave;o nước đ&aacute; lạnh xong xếp l&ecirc;n xe đi lu&ocirc;n, nếu c&oacute; xe lạnh th&igrave; ch&uacute;ng t&ocirc;i kh&ocirc;ng phải l&agrave;m c&ocirc;ng đoạn n&agrave;y.</p>\r\n\r\n<p><img alt=\"Hình ảnh Lục Ngạn mùa Vải Thiều\" src=\"https://vaithieu.net/wp-content/uploads/2018/06/luc-ngan-mua-vai-thieu-3.jpg\" style=\"height:601px; width:960px\" /></p>\r\n\r\n<p>Anh Th&agrave;nh (mặc &aacute;o đỏ) đang kiểm tra chất lượng vải thu mua</p>\r\n\r\n<p>Khảo s&aacute;t th&ecirc;m mấy điểm thu mua vải mới thấy lượng ti&ecirc;u thụ vải nơi đ&acirc;y rất lớn đến gần trăm tấn mỗi ng&agrave;y. Sức h&uacute;t từ thị trường vải đ&atilde; gi&uacute;p cho nhiều người d&acirc;n nơi đ&acirc;y v&agrave; v&ugrave;ng phụ cận c&oacute; th&ecirc;m việc l&agrave;m, h&agrave;ng ng&agrave;n th&ugrave;ng xốp, h&agrave;ng trăm tấn nước đ&aacute; từ c&aacute;c cơ sở trong v&ugrave;ng được ti&ecirc;u thụ h&agrave;ng ng&agrave;y. Sau hơn hai giờ lang thang tr&ecirc;n Phố Kim &ndash; Thị trấn Chũ, phải hỏi đường đi tắt trong ng&otilde; phố xe ch&uacute;ng t&ocirc;i mới qua được nơi đ&acirc;y. Ở chiều đường ngược lại, đo&agrave;n xe &ocirc; t&ocirc; c&aacute;c loại đang c&ograve;n tắc chưa đi được đỗ k&eacute;o d&agrave;i h&agrave;ng km giữa c&aacute;i nắng ch&oacute;i chang.</p>\r\n\r\n<p><img alt=\"Hình ảnh Lục Ngạn mùa Vải Thiều\" src=\"https://vaithieu.net/wp-content/uploads/2018/06/luc-ngan-mua-vai-thieu-4.jpg\" style=\"height:590px; width:960px\" /></p>\r\n\r\n<p>Một điểm thu mua vải tr&ecirc;n phố Kim</p>\r\n\r\n<p>Tr&ecirc;n đường trở về H&agrave; Nội, nh&oacute;m ch&uacute;ng t&ocirc;i gh&eacute; v&agrave;o Vườn quả B&aacute;c Hồ tại th&ocirc;n trại 3, x&atilde; Qu&yacute; Sơn, Lục Ngạn tham quan đồng thời mua vải về l&agrave;m qu&agrave;. Đưa ch&uacute;ng t&ocirc;i đi thăm vườn l&agrave; vợ chồng anh Sơn, chị Thủy. Hơn bẩy mươi gốc vải đang m&ugrave;a thu hoạch c&ugrave;ng nhiều c&acirc;y ăn quả kh&aacute;c được trồng tr&ecirc;n ba s&agrave;o đất đồi của gia đ&igrave;nh anh chị. Những ch&ugrave;m vải ch&iacute;n mọng nặng trĩu c&agrave;nh l&agrave;m thỏa m&atilde;n cơn kh&aacute;t cho nh&oacute;m ch&uacute;ng t&ocirc;i giữa c&aacute;i nắng h&egrave; gay gắt, c&aacute;i cảm gi&aacute;c khoan kho&aacute;i l&agrave;m sao khi được tự tay h&aacute;i, ăn những quả vải tươi, ngon ngọt ngay dưới những t&aacute;n l&aacute; sum su&ecirc; v&agrave; những ch&ugrave;m vải ch&iacute;n mọng đỏ.</p>\r\n\r\n<p><img alt=\"Hình ảnh Lục Ngạn mùa Vải Thiều\" src=\"https://vaithieu.net/wp-content/uploads/2018/06/luc-ngan-mua-vai-thieu-5.jpg\" style=\"height:593px; width:960px\" /></p>\r\n\r\n<p>Điểm thu mua vải tại TT Chũ</p>\r\n\r\n<p>Chia sẻ c&ugrave;ng ch&uacute;ng t&ocirc;i chị cho biết: &ldquo;Mỗi c&acirc;y vải thu hoạch được từ năm mươi đến ng&oacute;t một tạ quả, mỗi năm thu nhập của gia đ&igrave;nh cũng được hơn năm mươi triệu từ vải. Nh&agrave; em &iacute;t đất n&ecirc;n vậy c&ograve;n nhiều nh&agrave; thu h&agrave;ng trăm thậm ch&iacute; cả tỷ đồng mỗi năm nhờ c&acirc;y vải. N&ocirc;ng d&acirc;n Lục Ngạn ch&uacute;ng em may mắn sống nhờ c&acirc;y vải &ldquo;</p>\r\n\r\n<p><img alt=\"Hình ảnh Lục Ngạn mùa Vải Thiều\" src=\"https://vaithieu.net/wp-content/uploads/2018/06/luc-ngan-mua-vai-thieu-6.jpg\" style=\"height:623px; width:960px\" /></p>\r\n\r\n<p>Chị Thủy &ndash; Chủ một vườn vải ở Lục Ngạn</p>\r\n\r\n<p>Chia tay vợ chồng chủ vườn vải Lục Ngạn mang theo nửa tạ vải mua về l&agrave;m qu&agrave; c&ugrave;ng niềm vui về một v&ugrave;ng qu&ecirc; đang gi&agrave;u l&ecirc;n từ b&agrave;n tay, khối &oacute;c của những người n&ocirc;ng d&acirc;n nơi đ&acirc;y, l&agrave; kết quả từ &ldquo;Dự &aacute;n X&acirc;y dựng chỉ dẫn địa l&yacute; cho vải thiều Lục Ngạn&rdquo; đ&atilde; được ch&iacute;nh quyền địa phương nỗ lực thực hiện để sản phẩm vải thiều Lục Ngạn h&ocirc;m nay đ&atilde; c&oacute; mặt tại nhiều si&ecirc;u thị trong v&agrave; ngo&agrave;i nước.</p>\r\n', 'luc-ngan-mua-vai-thieu-2.jpg', '2022-08-16 13:59:07', '1', '2022-08-16 13:59:07', '1', 1, 1),
(11, 'GIÁ VẢI U Hồng HÔM NAY', 'gia-vai-u-hong-hom-nay', '', '<h1>GI&Aacute; VẢI U Hồng&nbsp;H&Ocirc;M NAY</h1>\r\n\r\n<p>Xem&nbsp;<strong>gi&aacute; vải </strong>U Hồng<strong> h&ocirc;m nay</strong>&nbsp;ng&agrave;y 16/08/2022<strong>&nbsp;</strong>mới nhất ch&iacute;nh x&aacute;c nhất. Gi&aacute; vải được khảo s&aacute;t tại c&aacute;c c&ocirc;ng ty, doanh nghiệp, đại l&yacute; thu mua vải thiều tr&ecirc;n địa b&agrave;n</p>\r\n\r\n<p>Đ&acirc;y l&agrave; gi&aacute; thu mua số lượng lớn tại c&aacute;c điểm c&acirc;n tr&ecirc;n địa b&agrave;n gi&aacute; b&aacute;n tại c&aacute;c nơi b&aacute;n lẻ sẽ cao hơn nhiều do mất th&ecirc;m chi ph&iacute; vận chuyển.</p>\r\n\r\n<p><strong>VẢI THIỀU TƯƠI</strong></p>\r\n\r\n<p>10-15k</p>\r\n\r\n<p>Đ&acirc;y l&agrave; loại vải ngon nhất ch&iacute;n muộn.</p>\r\n\r\n<p><strong>VẢI THIỀU SẤY</strong></p>\r\n\r\n<p>100k</p>\r\n\r\n<p>Vải thiều sấy kh&ocirc; từ vải thiều tươi.</p>\r\n\r\n<p><strong>VẢI U HỒNG</strong></p>\r\n\r\n<p>25 - 35k</p>\r\n\r\n<p>Vải U Hồng ch&iacute;n sớm quả to, ăn ngon thứ 2.</p>\r\n\r\n<p><strong>VẢI LAI THANH H&Agrave;</strong></p>\r\n\r\n<p>13-15k</p>\r\n\r\n<p>Đơn vị: VNĐ/kg</p>\r\n\r\n<p>Lưu &yacute;: Gi&aacute; vải được cập nhật tr&ecirc;n web c&oacute; thể chậm hơn so với thực tế, để biết gi&aacute; ch&iacute;nh x&aacute;c vui l&ograve;ng li&ecirc;n hệ trực tiếp với ch&uacute;ng t&ocirc;i qua hotline: 0376695104</p>\r\n', 'vai-u-hong-dak-lak-02.jpg', '2022-08-16 14:01:08', '1', '2022-08-16 14:02:00', '1', 1, 1),
(12, 'Tập trung phòng trừ sâu đục cuống quả vải', 'tap-trung-phong-tru-sau-duc-cuong-qua-vai', '', '<h1>Tập trung ph&ograve;ng trừ s&acirc;u đục cuống quả vải</h1>\r\n\r\n<p>Lục Ngạn hiện c&oacute; khoảng 15.200 ha&nbsp;<a href=\"https://vaithieu.net/\">vải thiều</a>, với điều kiện thời tiết thuận lợi năm nay, vải thiều ra hoa v&agrave; đậu quả sai hơn năm trước. Hiện tr&agrave; vải ch&iacute;nh vụ đang ph&aacute;t triển c&ugrave;i v&agrave; hạt; tr&agrave; vải sớm ở giai đoạn k&iacute;n c&ugrave;i &ndash; đỏ cuống. V&agrave;o đầu th&aacute;ng 5, thời tiết c&oacute; mưa r&agrave;o xen kẽ nắng n&oacute;ng, độ ẩm kh&ocirc;ng kh&iacute; cao thuận lợi cho c&acirc;y trồng sinh trưởng v&agrave; ph&aacute;t triển. Tuy nhi&ecirc;n đ&acirc;y cũng l&agrave; điều kiện thuận lợi để c&aacute;c đối tượng s&acirc;u bệnh g&acirc;y hại tr&ecirc;n c&acirc;y vải, trong đ&oacute; đặc biệt s&acirc;u đục cuống quả l&agrave; đối tượng g&acirc;y hại nguy hiểm, c&oacute; thể l&agrave;m giảm năng suất v&agrave; chất lượng quả vải.</p>\r\n\r\n<p>Theo kết quả điều tra của Trạm Trồng trọt v&agrave; Bảo vệ thực vật huyện, hiện nay s&acirc;u đục cuống quả tiếp tục ph&aacute;t triển g&acirc;y hại tr&ecirc;n c&aacute;c tr&agrave; vải, nhất l&agrave; ở những vườn rậm rạp, hại nặng tr&ecirc;n tr&agrave; vải sớm v&agrave; c&oacute; hiện tượng s&acirc;u gối lứa. Diện t&iacute;ch g&acirc;y hại ở tất cả c&aacute;c x&atilde;, thị trấn trong huyện. Mật độ trung b&igrave;nh 0,2 con/c&agrave;nh, cao từ 3 &ndash; 5 con/c&agrave;nh; tỷ lệ g&acirc;y hại trung b&igrave;nh 0,2%, cao từ 5 &ndash; 10%. Nếu kh&ocirc;ng ph&ograve;ng trừ kịp thời s&acirc;u non sẽ g&acirc;y hại nặng trong thời gian tới l&agrave;m ảnh hưởng lớn đến năng suất, chất lượng vải đặc biệt l&agrave; giai đoạn thu hoạch quả.</p>\r\n\r\n<p>Giai đoạn s&acirc;u non của s&acirc;u đục cuống quả l&agrave; giai đoạn hại mạnh nhất trực tiếp l&agrave;m ảnh hưởng đến năng suất v&agrave; chất lượng quả vải. Do đặc điểm s&acirc;u non khi nở l&agrave; trực tiếp từ mặt vỏ trứng đục v&agrave;o hạt quả v&agrave; suốt đời sống của s&acirc;u non ở trong hạt cho đến khi s&acirc;u đẫy sức h&oacute;a nhộng mới ra ngo&agrave;i, v&igrave; vậy diệt trừ s&acirc;u ở giai đoạn trứng v&agrave; s&acirc;u non đạt hiệu quả kh&ocirc;ng cao n&ecirc;n chủ yếu người d&acirc;n phải diệt trừ con trưởng th&agrave;nh ở giai đoạn ch&uacute;ng đẻ trứng.</p>\r\n\r\n<p><img alt=\"Sâu đục cuống quả vải thiều Lục Ngạn\" src=\"https://vaithieu.net/wp-content/uploads/2018/05/sau-duc-cuong-qua-vai.jpg\" style=\"height:600px; width:800px\" /></p>\r\n\r\n<p>S&acirc;u đục cuống g&acirc;y hại đối với tr&agrave; vải sớm</p>\r\n\r\n<p>Để ph&ograve;ng trừ s&acirc;u đục cuống quả đạt hiệu quả cao, theo đồng ch&iacute; Gi&aacute;p Thị Quy&ecirc;n, c&aacute;n bộ Trạm Trồng trọt v&agrave; Bảo vệ thực vật huyện người d&acirc;n cần thực hiện tốt c&aacute;c biện ph&aacute;p như: Tiếp tục l&agrave;m tốt c&ocirc;ng t&aacute;c tạo t&aacute;n, tỉa c&agrave;nh cho c&acirc;y vải thiều th&ocirc;ng tho&aacute;ng, kết hợp vệ sinh vườn, thường xuy&ecirc;n thu gom ti&ecirc;u hủy c&aacute;c quả bị s&acirc;u hại.</p>\r\n\r\n<p>Tập trung phun thuốc bảo vệ thực vật ph&ograve;ng trừ s&acirc;u đục cuống quả vải từ nay cho đến hết ng&agrave;y 20/5 bởi s&acirc;u trưởng th&agrave;nh lứa 3 đang ra rộ (c&oacute; hiện tượng gối lứa) bằng thuốc c&oacute; chứa một trong c&aacute;c hoạt chất sau: Emamectin, Abamectin, Matrine, Rotenone&hellip; Phun đ&uacute;ng nồng độ v&agrave; liều lượng theo hướng dẫn tr&ecirc;n nh&atilde;n m&aacute;c. Thời điểm phun v&agrave;o chiều m&aacute;t v&agrave; phun kỹ v&agrave;o t&aacute;n l&aacute;, trong t&aacute;n c&acirc;y, c&agrave;nh cấp 2, 3. Đối với những vườn c&oacute; mật độ s&acirc;u cao cần phun k&eacute;p 2 lần, c&aacute;ch nhau 3 ng&agrave;y để diệt trừ con trưởng th&agrave;nh hiệu quả./.</p>\r\n\r\n<p><img alt=\"Kiểm tra sâu đục cuống quả vải\" src=\"https://vaithieu.net/wp-content/uploads/2018/05/kiem-tra-vai.jpg\" style=\"height:600px; width:800px\" /></p>\r\n\r\n<p>C&aacute;n bộ Trạm Trồng trọt v&agrave; BVTV huyện Lục Ngạn kiểm tra đối tượng s&acirc;u đục cuống g&acirc;y hại quả vải</p>\r\n', 'luc-ngan-mua-vai-thieu-71.jpg', '2022-08-16 14:01:45', '1', '2022-08-16 14:01:45', '1', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_customer`
--

CREATE TABLE `db_customer` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(13) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_customer`
--

INSERT INTO `db_customer` (`id`, `fullname`, `username`, `password`, `address`, `phone`, `email`, `created`, `trash`, `status`) VALUES
(72, 'tấn thành', 'thanh1996', 'e10adc3949ba59abbe56e057f20f883e', '', '0969124456', 'thanhwilshere96@gmail.com', '2022-06-13 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_discount`
--

CREATE TABLE `db_discount` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mã giảm giá',
  `discount` int(11) NOT NULL COMMENT 'Số tiền',
  `limit_number` int(11) NOT NULL COMMENT 'giới hạn lượt mua',
  `number_used` int(11) NOT NULL COMMENT 'Số lượng đã nhập',
  `expiration_date` date NOT NULL COMMENT 'Ngày hết hạn',
  `payment_limit` int(11) NOT NULL COMMENT 'giới hạn đơn hàng tối thiểu',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mô tả',
  `created` date NOT NULL,
  `orders` int(11) NOT NULL,
  `trash` int(1) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_district`
--

CREATE TABLE `db_district` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL,
  `provinceid` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_order`
--

CREATE TABLE `db_order` (
  `id` int(11) NOT NULL,
  `orderCode` varchar(8) CHARACTER SET utf8 NOT NULL,
  `customerid` int(11) NOT NULL,
  `orderdate` datetime NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `money` int(12) NOT NULL,
  `price_ship` int(11) NOT NULL,
  `coupon` int(11) NOT NULL,
  `province` int(5) NOT NULL,
  `district` int(5) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_orderdetail`
--

CREATE TABLE `db_orderdetail` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `count` int(10) NOT NULL,
  `price` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_producer`
--

CREATE TABLE `db_producer` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `trash` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_product`
--

CREATE TABLE `db_product` (
  `id` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `sortDesc` text CHARACTER SET utf8 NOT NULL,
  `detail` text CHARACTER SET utf8 NOT NULL,
  `producer` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `number_buy` int(11) NOT NULL,
  `sale` int(3) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `price_sale` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'HDL',
  `modified` datetime NOT NULL,
  `modified_by` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'HDL',
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_province`
--

CREATE TABLE `db_province` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `db_slider`
--

CREATE TABLE `db_slider` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img` varchar(100) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Supper Admin',
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Supper Admin',
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `type` int(2) DEFAULT 0,
  `detail` text CHARACTER SET utf8 NOT NULL,
  `spname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `price` int(11) NOT NULL,
  `img1` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `img2` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `img3` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_slider`
--

INSERT INTO `db_slider` (`id`, `name`, `link`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`, `type`, `detail`, `spname`, `price`, `img1`, `img2`, `img3`) VALUES
(28, 'Vải Thiều Sấy', 'vai-thieu-say', 'vai-say-kho-600x600.jpg', '2022-08-16 13:46:23', '1', '2022-08-16 13:46:23', '1', 1, 1, 0, '<ul>\r\n	<li>Vải thiều sấy kh&ocirc; được chế biến từ vải thiều tươi loại 1 ch&iacute;nh gốc Lục Ngạn &ndash; Bắc Giang với hương vị thơm ngon đặc trưng kh&ocirc;ng một sản phẩm vải sấy ở đ&acirc;u c&oacute; thể s&aacute;nh được.</li>\r\n	<li>Chất lượng sản phẩm được kiểm so&aacute;t chặt chẽ từ kh&acirc;u lựa chọn vải tươi để sấy, chế biến, đ&oacute;ng g&oacute;i v&agrave; giao h&agrave;ng.</li>\r\n	<li>&nbsp;Miễn ph&iacute; ship h&agrave;ng to&agrave;n quốc, gi&aacute; chỉ 100.000đ/1 kg (đ&atilde; bao gồm ph&iacute; ship), nhận h&agrave;ng xem thử v&agrave; thanh to&aacute;n tiền tại nh&agrave;.</li>\r\n</ul>\r\n', 'Vải Thiều Sấy', 150000, NULL, NULL, NULL),
(29, 'Vải Thiều Tươi', 'vai-thieu-tuoi', 'vai-thieu-tuoi-luc-ngan.jpg', '2022-08-16 13:47:23', '1', '2022-08-16 13:47:23', '1', 1, 1, 0, '<p>Ch&uacute;ng t&ocirc;i cung cấp vải thiều Lục Ngạn tươi loại 1 gi&aacute; b&aacute;n bu&ocirc;n b&aacute;n sỉ tốt nhất cho c&aacute;c đại l&yacute; tr&ecirc;n to&agrave;n quốc. Qu&iacute; kh&aacute;ch đặt mua vải thiều Lục Ngạn lu&ocirc;n được ch&uacute;ng t&ocirc;i đảm bảo vệ sinh an to&agrave;n thực phẩm, cam kết chỉ giao h&agrave;ng vải thiều tươi loại 1</p>\r\n', 'Vải Thiều Tươi', 50000, NULL, NULL, NULL),
(30, 'Vải U Hồng', 'vai-u-hong', 'vai-u-hong-dak-lak-02.jpg', '2022-08-16 13:50:42', '1', '2022-08-16 13:50:42', '1', 1, 1, 0, '<p>Giống vải <strong>U Hồng</strong> khi ch&iacute;n, quả vải c&oacute; m&agrave;u đỏ sẫm, củi d&agrave;y mọng nước, quả to, vị ngọt đậm v&agrave; hạt to. Vải U Hồng thơm ngon kh&ocirc;ng hề thua vải thiều, thời gian thu hoạch lại sớm hơn 1 th&aacute;ng n&ecirc;n rất được gi&aacute;.</p>\r\n\r\n<p>Gi&aacute; b&aacute;n vải <strong>U Hồng</strong> buổi s&aacute;ng sớm rơi v&agrave;o khoảng 80,000 VND. Nếu vải b&aacute;n v&agrave;o chiều hoặc h&ocirc;m sau c&oacute; thể rơi xuống khoảng 70,000 VNĐ/ kg. Nhiều tiểu thưởng&nbsp; ch&agrave;o b&aacute;n vải u hồng với gi&aacute; lẻ khoảng 75,000 VNĐ/ kg. C&ograve;n nếu mua tr&ecirc;n mạng,&nbsp;<strong>gi&aacute; vải U Hồng&nbsp;b&aacute;n lẻ&nbsp;</strong>sẽ từ 65,000 &ndash; 80,000 VNĐ/ kg t&ugrave;y theo từng loại.</p>\r\n', 'Vải U Hồng', 70000, NULL, NULL, NULL),
(31, 'Chôm Chôm', 'chom-chom', '19-06-2022_16_21_16_qua-chom-chom-co-gia-tri-dinh-duong-nao-0.jpg', '2022-08-16 13:57:12', '1', '2022-08-19 14:36:49', '', 1, 1, 0, '<p><strong>Ch&ocirc;m ch&ocirc;m</strong> l&agrave; loại quả phổ biến v&agrave; bổ dưỡng, đem lại nhiều gi&aacute; trị cho sức khỏe của bạn từ giảm c&acirc;n, ti&ecirc;u h&oacute;a đến tăng khả năng chống nhiễm tr&ugrave;ng.</p>\r\n\r\n<p><strong>Ch&ocirc;m ch&ocirc;m</strong> l&agrave; nguồn thực phẩm cung cấp mangan, đồng, vitamin C, canxi, magie, kali v&agrave; vitamin A tốt cho cơ thể. 150g ch&ocirc;m ch&ocirc;m c&oacute; thể&nbsp;<strong>cung cấp 22% lượng mangan</strong>&nbsp;được khuyến nghị h&agrave;ng ng&agrave;y v&agrave; 11% lượng đồng 9 (dựa tr&ecirc;n khẩu phần ăn 2.000 calo/ ng&agrave;y).</p>\r\n', 'Chôm Chôm', 0, '71b1c3694fd4e143b32e52d138531bfc.jpg', 'b5e50e73373194435aaee5d6f155a4ff.jpg', 'e51a5c92ee8bb5c0c1e9a09de241be5f.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `db_user`
--

CREATE TABLE `db_user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `username` varchar(225) CHARACTER SET utf8 NOT NULL,
  `password` varchar(64) CHARACTER SET utf8 NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `gender` int(1) NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_user`
--

INSERT INTO `db_user` (`id`, `fullname`, `username`, `password`, `role`, `email`, `gender`, `phone`, `address`, `img`, `created`, `trash`, `status`) VALUES
(1, 'ADMIN', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 'admin@gmail.com', 1, '0167892615', 'Pleiku', 'user-group.png', '2019-04-23 09:16:16', 1, 1),
(2, 'Quản lý', 'quanly', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 'quanly@gmail.com', 1, '0985657410', 'Pleiku', 'bc0d4c186522764fc9457b7bacb635e4.png', '2019-04-25 22:08:18', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_usergroup`
--

CREATE TABLE `db_usergroup` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_usergroup`
--

INSERT INTO `db_usergroup` (`id`, `name`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`) VALUES
(1, 'Toàn quyền', '2019-05-14 23:29:15', 1, '2019-05-14 23:29:15', 4, 1, 1, 1),
(2, 'Nhân viên', '2019-05-14 23:29:21', 1, '2019-05-14 23:29:21', 4, 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_category`
--
ALTER TABLE `db_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_config`
--
ALTER TABLE `db_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_contact`
--
ALTER TABLE `db_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_content`
--
ALTER TABLE `db_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_customer`
--
ALTER TABLE `db_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_discount`
--
ALTER TABLE `db_discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_district`
--
ALTER TABLE `db_district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matp` (`provinceid`);

--
-- Indexes for table `db_order`
--
ALTER TABLE `db_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customerid` (`customerid`),
  ADD KEY `province` (`province`),
  ADD KEY `district` (`district`),
  ADD KEY `province_2` (`province`),
  ADD KEY `district_2` (`district`),
  ADD KEY `province_3` (`province`),
  ADD KEY `district_3` (`district`);

--
-- Indexes for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productid` (`productid`),
  ADD KEY `orderid` (`orderid`);

--
-- Indexes for table `db_producer`
--
ALTER TABLE `db_producer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_product`
--
ALTER TABLE `db_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer` (`producer`),
  ADD KEY `catid` (`catid`);

--
-- Indexes for table `db_province`
--
ALTER TABLE `db_province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_slider`
--
ALTER TABLE `db_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`);

--
-- Indexes for table `db_usergroup`
--
ALTER TABLE `db_usergroup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_category`
--
ALTER TABLE `db_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `db_config`
--
ALTER TABLE `db_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `db_contact`
--
ALTER TABLE `db_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `db_content`
--
ALTER TABLE `db_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `db_customer`
--
ALTER TABLE `db_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `db_discount`
--
ALTER TABLE `db_discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `db_order`
--
ALTER TABLE `db_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `db_producer`
--
ALTER TABLE `db_producer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `db_product`
--
ALTER TABLE `db_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `db_slider`
--
ALTER TABLE `db_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `db_usergroup`
--
ALTER TABLE `db_usergroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `db_district`
--
ALTER TABLE `db_district`
  ADD CONSTRAINT `db_district_ibfk_1` FOREIGN KEY (`provinceid`) REFERENCES `db_province` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_order`
--
ALTER TABLE `db_order`
  ADD CONSTRAINT `db_order_ibfk_2` FOREIGN KEY (`province`) REFERENCES `db_province` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_order_ibfk_3` FOREIGN KEY (`district`) REFERENCES `db_district` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_order_ibfk_4` FOREIGN KEY (`customerid`) REFERENCES `db_customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD CONSTRAINT `db_orderdetail_ibfk_2` FOREIGN KEY (`productid`) REFERENCES `db_product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_orderdetail_ibfk_3` FOREIGN KEY (`orderid`) REFERENCES `db_order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_product`
--
ALTER TABLE `db_product`
  ADD CONSTRAINT `db_product_ibfk_1` FOREIGN KEY (`catid`) REFERENCES `db_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_product_ibfk_2` FOREIGN KEY (`producer`) REFERENCES `db_producer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_user`
--
ALTER TABLE `db_user`
  ADD CONSTRAINT `db_user_ibfk_1` FOREIGN KEY (`role`) REFERENCES `db_usergroup` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
