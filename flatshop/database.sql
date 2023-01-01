-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 01, 2023 lúc 02:19 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `my_shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Football'),
(2, 'Accessories'),
(3, 'Basketball'),
(4, 'Shoes'),
(6, 'Badminton');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `unit_price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `detail_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `item`
--

INSERT INTO `item` (`item_id`, `product_id`, `unit_price`, `quantity`, `order_id`, `detail_id`) VALUES
(9, 51, 77, 1, 14, 6),
(11, 49, 52, 2, 15, 4),
(12, 50, 54, 1, 15, 5),
(53, 48, 60, 1, 48, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_user`
--

CREATE TABLE `order_user` (
  `order_id` bigint(20) NOT NULL,
  `buy_date` datetime NOT NULL,
  `status` varchar(100) NOT NULL,
  `price_total` float NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `order_user`
--

INSERT INTO `order_user` (`order_id`, `buy_date`, `status`, `price_total`, `user_id`) VALUES
(14, '2021-01-27 00:00:00', 'SUCCESS', 132, 40),
(15, '2021-01-27 00:00:00', 'SUCCESS', 361, 70),
(16, '2021-01-29 00:00:00', 'SUCCESS', 296, 40),
(17, '2021-01-30 00:00:00', 'SUCCESS', 168, 40),
(21, '2021-01-30 00:00:00', 'SUCCESS', 109, 40),
(22, '2021-01-30 00:00:00', 'SUCCESS', 73, 70),
(23, '2021-02-02 00:00:00', 'SUCCESS', 302, 40),
(24, '2021-02-02 00:00:00', 'SUCCESS', 221, 76),
(25, '2021-02-02 00:00:00', 'SUCCESS', 480, 76),
(26, '2021-02-02 00:00:00', 'SUCCESS', 155, 78),
(27, '2021-02-02 00:00:00', 'SUCCESS', 433, 78),
(28, '2021-02-02 00:00:00', 'SUCCESS', 261, 78),
(29, '2021-02-02 00:00:00', 'SUCCESS', 69, 78),
(30, '2021-02-02 00:00:00', 'SUCCESS', 65, 78),
(31, '2021-02-02 00:00:00', 'SUCCESS', 157, 79),
(32, '2021-02-02 00:00:00', 'SUCCESS', 131, 81),
(33, '2021-02-02 00:00:00', 'SUCCESS', 100, 81),
(34, '2021-02-05 00:00:00', 'SUCCESS', 249, 40),
(35, '2021-02-05 00:00:00', 'SUCCESS', 699, 95),
(36, '2021-02-05 00:00:00', 'SUCCESS', 125, 95),
(37, '2021-02-05 00:00:00', 'SUCCESS', 81, 76),
(38, '2021-02-05 00:00:00', 'SUCCESS', 81, 70),
(39, '2021-02-05 00:00:00', 'SUCCESS', 73, 40),
(40, '2022-12-02 00:00:00', 'SUCCESS', 76, 106),
(41, '2022-12-16 00:00:00', 'SUCCESS', 121, 31),
(42, '2022-12-21 00:00:00', 'SUCCESS', 67, 106),
(43, '2022-12-21 00:00:00', 'SUCCESS', 67, 106),
(44, '2022-12-30 00:00:00', 'PENDING', 125, 106),
(45, '2022-12-30 00:00:00', 'PENDING', 125, 106),
(46, '2022-12-30 00:00:00', 'SUCCESS', 65, 106),
(47, '2022-12-30 00:00:00', 'SUCCESS', 65, 106),
(48, '2022-12-30 00:00:00', 'SUCCESS', 65, 106);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` decimal(12,0) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sale_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `description`, `image`, `price`, `product_name`, `quantity`, `category_id`, `sale_id`) VALUES
(44, ' KHÔNG NH&#258;N  KHÔNG XÙ  KHÔNG PHAI\r\n\r\n.Th&#7845;m hút m&#7891; hôi c&#7921;c t&#7889;t', '1672556165892.jpg', '179', 'CLB Tottenham Hotspur BD040', 20, 1, 's10pc'),
(47, ' Th&#7845;m hút m&#7891; hôi c&#7921;c t&#7889;t\r\n. Thi&#7871;t k&#7871; m&#7841;nh m&#7869;, hi&#7879;n &#273;&#7841;i', '1672556506783.png', '179', 'CLB Liverpool BD199', 20, 1, 's10pc'),
(48, ' KHÔNG NH&#258;N  KHÔNG XÙ  KHÔNG PHAI\r\n. Th&#7845;m hút m&#7891; hôi c&#7921;c t&#7889;t', '1672556358617.jpg', '179', 'CLB MU BD739', 152, 1, 's10pc'),
(49, 'ÁO &#272;Á BANH M&#7863;c thoáng, mát, in s&#7855;c nét, không bong tróc theo tiêu chu&#7849;n &#273;&#7891; xu&#7845;t kh&#7849;u', '1672556630651.jpg', '179', 'CLB Juventus BD753', 20, 1, 's10pc'),
(50, 'QU&#7846;N ÁO BÓNG &#272;Á ch&#7845;t li&#7879;u MÈ nh&#7853;p kh&#7849;u tr&#7921;c ti&#7871;p Châu Âu cao c&#7845;p theo tiêu chu&#7849;n &#273;&#7891; bóng &#273;á chuyên nghi&#7879;p', '1672556721639.jpg', '179', 'CLB LIVERPOOL BD755', 20, 1, 's10pc'),
(51, ' Th&#7845;m hút m&#7891; hôi c&#7921;c t&#7889;t\r\n.Thi&#7871;t k&#7871; m&#7841;nh m&#7869;, hi&#7879;n &#273;&#7841;i', '1672556807801.jpg', '179', 'CLB MU BD608', 23, 1, 's10pc'),
(52, 'V&#7843;i mè châu âu\r\nHàng thun l&#7841;nh Vi&#7879;t Nam ch&#7845;t l&#432;&#7907;ng cao, m&#7851;u mã &#273;a d&#7841;ng\r\nCh&#7845;t li&#7879;u mè th&#7875; thao cho ch&#7845;t v&#7843;i s&#7901; m&#7883;n tay, siêu nh&#7865;, co dãn t&#7889;t.', '1672556872777.png', '179', 'CLB Tottenham Hotspur BD055', 25, 1, 's10pc'),
(71, ' KHÔNG NH&#258;N  KHÔNG XÙ  KHÔNG PHAI\r\n.Th&#7845;m hút m&#7891; hôi c&#7921;c t&#7889;t\r\n.Thi&#7871;t k&#7871; m&#7841;nh m&#7869;, hi&#7879;n &#273;&#7841;i', '1672557017737.jpg', '199', 'CLB TD006', 30, 1, 's20pc'),
(72, ' &#272;&#7890; BÓNG R&#7892; M&#7863;c thoáng, mát, in s&#7855;c nét, không bong tróc theo tiêu chu&#7849;n &#273;&#7891; xu&#7845;t kh&#7849;u', '1672557539865.jpg', '279', 'MAKAN BR015', 50, 3, 's10pc'),
(73, ' KHÔNG NH&#258;N  KHÔNG XÙ  KHÔNG PHAI\r\n.Th&#7845;m hút m&#7891; hôi c&#7921;c t&#7889;t', '1672557619748.jpg', '60', 'MAKAN BR127', 50, 3, 's10pc'),
(74, 'Vans Vault OG Authentic LX Black White - Ship US', '1672557674667.jpg', '279', 'MAKAN BR070', 50, 3, 'default'),
(75, ' KHÔNG NH&#258;N  KHÔNG XÙ  KHÔNG PHAI\r\n.Th&#7845;m hút m&#7891; hôi c&#7921;c t&#7889;t', '1672557747406.jpg', '300', 'MAKAN BR064', 50, 3, 's20pc'),
(77, ' KHÔNG NH&#258;N  KHÔNG XÙ  KHÔNG PHAI\r\n.Th&#7845;m hút m&#7891; hôi c&#7921;c t&#7889;t', '1672557799199.jpg', '300', 'MAKAN BR007', 50, 3, 's10pc'),
(78, 'Vans Slip KHÔNG NH&#258;N  KHÔNG XÙ  KHÔNG PHAI\r\n.Th&#7845;m hút m&#7891; hôi c&#7921;c t&#7889;t-On Custom Culture Along with the Gods', '1672557847013.jpg', '350', 'MAKAN BR003', 50, 3, 's30pc'),
(79, ' KHÔNG NH&#258;N  KHÔNG XÙ  KHÔNG PHAI\r\n.Th&#7845;m hút m&#7891; hôi c&#7921;c t&#7889;t', '1672558001158.jpg', '179', 'CL158', 50, 6, 's10pc'),
(80, ' KHÔNG NH&#258;N  KHÔNG XÙ  KHÔNG PHAI\r\n.Th&#7845;m hút m&#7891; hôi c&#7921;c t&#7889;t', '1672558109796.jpg', '189', 'CL 232', 50, 6, 's10pc'),
(81, ' KHÔNG NH&#258;N  KHÔNG XÙ  KHÔNG PHAI\r\n.Th&#7845;m hút m&#7891; hôi c&#7921;c t&#7889;t', '1672558139752.jpg', '199', 'CL 454', 50, 6, 's10pc'),
(90, ' KHÔNG NH&#258;N  KHÔNG XÙ  KHÔNG PHAI\r\n.Th&#7845;m hút m&#7891; hôi c&#7921;c t&#7889;t', '1672558188003.jpg', '189', 'CL 792', 50, 6, 's20pc'),
(91, 'Giày Nike Air Max SC Lea mang nét huy&#7873;n tho&#7841;i c&#7911;a Nike, v&#7899;i b&#7897; &#273;&#7879;m Air Max tr&#7913; danh &#273;ây là m&#7851;u giày có th&#7875; k&#7871;t h&#7907;p v&#7899;i b&#7845;t c&#7913; trang ph&#7909;c nào ', '1672559312507.jpg', '950', 'NIKE AIR MAX SC LEA ', 546, 4, 's10pc'),
(92, 'Giày Nike Precision 5 m&#7897;t m&#7851;u giày sneaker Nike làm b&#7857;ng ch&#7845;t li&#7879;u cao c&#7845;p và công ngh&#7879; &#273;&#7881;nh cao s&#7869; là m&#7897;t l&#7921;a ch&#7885;n tuy&#7879;t v&#7901;i c&#7911;a các tín &#273;&#7891; sneaker.', '1672559386689.jpg', '890', 'NIKE PRECISION 5', 10, 4, 's10pc'),
(93, 'Giày Nike Air Zoom Pegasus 39 là m&#7851;u giày th&#7875; thao phiên b&#7843;n th&#7913; 39 c&#7911;a dòng giày huy&#7873;n tho&#7841;i Nike Pegasus n&#7893;i ti&#7871;ng.', '1672559520548.jpg', '790', 'NIKE AIR ZOOM PEGASUS 39', 10, 4, 's20pc'),
(94, 'Giày Adidas Breaknet  &#273;&#432;&#7907;c thi&#7871;t k&#7871; basic cho các tín &#273;&#7891; yêu th&#7901;i trang. V&#7899;i các ki&#7875;u thi&#7871;t k&#7871; Original .', '1672559646247.jpg', '60', 'ADIDAS BREAKNET', 10, 4, 's10pc'),
(95, 'Giày adidas Advancourt Base &#273;&#432;&#7907;c thi&#7871;t k&#7871; basic cho các tín &#273;&#7891; yêu th&#7901;i trang. V&#7899;i các ki&#7875;u thi&#7871;t k&#7871; Original .', '1672559725432.jpg', '999', 'ADIDAS ADVANCOURT BASE', 10, 4, 's20pc'),
(98, ' &#272;ây là s&#7843;n ph&#7849;m khá phù h&#7907;p &#273;&#7875; b&#7843;o v&#7879; giúp kh&#7899;p g&#7889;i kh&#7887;e m&#7841;nh h&#417;n mà v&#7851;n linh ho&#7841;t khi ch&#7841;y nh&#7843;y.', '1672576047016.jpg', '270', '&#272;ai B&#7843;o v&#7879; Kh&#7899;p G&#7889;i', 15, 2, 's10pc'),
(99, 'Th&#7843;m t&#7853;p yoga 2 l&#7899;p 6mm t&#7863;ng kèm túi Rhino M901 cao su non TPE siêu bám, ch&#7889;ng tr&#432;&#7907;t, t&#7853;p gym, th&#7875; d&#7909;c t&#7841;i nhà - Hàng chính hãng', '1672576164687.jpg', '190', 'Th&#7843;m t&#7853;p yoga 2 l&#7899;p 6mm', 20, 2, 's10pc'),
(114, 'Chi&#7871;c túi có thi&#7871;t k&#7871; tr&#7867; trung và n&#259;ng &#273;&#7897;ng, linh ho&#7841;t trong m&#7885;i nhu c&#7847;u s&#7917; d&#7909;ng', '1672577889840.jpg', '560', 'Ba lô th&#7875; thao s&#7913;c ch&#7913;a l&#7899;n 50L', 30, 2, 'default'),
(115, 'Nh&#7901; &#273;&#432;&#7907;c làm t&#7915; ch&#7845;t li&#7879;u Polyester giúp túi Nike DQ5735-010 có kh&#7843; n&#259;ng gi&#7919; màu t&#7889;t, h&#7841;n ch&#7871; bám b&#7849;n, d&#7877; dàng v&#7879; sinh', '1672577948006.jpg', '1000', 'Balo Du L&#7883;ch &#272;&#7865;p Chi&#7871;n Thu&#7853;t Lính M&#7929; ', 40, 2, 's10pc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_color`
--

CREATE TABLE `product_color` (
  `color_id` int(11) NOT NULL,
  `color` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product_color`
--

INSERT INTO `product_color` (`color_id`, `color`) VALUES
(1, 'Red'),
(2, 'White'),
(3, 'Black'),
(5, 'Green'),
(6, 'Yellow'),
(7, 'Grey'),
(8, 'Violet'),
(9, 'Blue');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_detail`
--

CREATE TABLE `product_detail` (
  `detail_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `size_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product_detail`
--

INSERT INTO `product_detail` (`detail_id`, `date`, `product_id`, `size_id`, `color_id`, `quantity`, `image`) VALUES
(1, '2023-01-01', 44, 2, 9, 10, '1672563853918.jpg'),
(2, '2023-01-01', 47, 2, 2, 10, '1672564524141.png'),
(3, '2023-01-01', 48, 3, 1, 10, '1672564984356.jpg'),
(4, '2022-12-15', 49, 3, 3, 10, ''),
(5, '2022-12-15', 50, 3, 3, 10, ''),
(6, '2022-12-15', 51, 3, 3, 10, ''),
(7, '2022-12-15', 52, 3, 3, 10, ''),
(8, '2022-12-15', 49, 2, 2, 13, ''),
(9, '2023-01-01', 44, 3, 9, 10, '1672563916431.jpg'),
(12, '2023-01-01', 72, 3, 3, 10, '1672565702774.jpg'),
(13, '2023-01-01', 73, 3, 9, 10, '1672565737190.jpg'),
(14, '2023-01-01', 74, 3, 9, 10, '1672565793715.jpg'),
(15, '2023-01-01', 75, 3, 2, 10, '1672565810670.jpg'),
(16, '2023-01-01', 77, 3, 3, 10, '1672565825305.jpg'),
(17, '2023-01-01', 78, 3, 3, 20, '1672565858923.jpg'),
(18, '2023-01-01', 91, 8, 3, 10, '1672565894606.jpg'),
(19, '2023-01-01', 92, 8, 2, 10, '1672565912281.jpg'),
(20, '2023-01-01', 93, 8, 9, 20, '1672565927410.jpg'),
(21, '2023-01-01', 94, 9, 3, 10, '1672565957262.jpg'),
(22, '2023-01-01', 95, 9, 3, 10, '1672565977625.jpg'),
(23, '2023-01-01', 79, 3, 9, 10, '1672566015665.jpg'),
(24, '2023-01-01', 80, 3, 8, 10, '1672566034193.jpg'),
(25, '2023-01-01', 81, 4, 2, 10, '1672566053495.jpg'),
(26, '2023-01-01', 90, 4, 9, 12, '1672566067933.jpg'),
(27, '2023-01-01', 98, 4, 3, 10, '1672577652803.jpg'),
(28, '2023-01-01', 99, 5, 5, 10, '1672577678536.jpg'),
(29, '2023-01-01', 114, 4, 3, 10, '1672577700946.jpg'),
(30, '2023-01-01', 115, 4, 3, 10, '1672577714404.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_size`
--

CREATE TABLE `product_size` (
  `size_id` int(11) NOT NULL,
  `size` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product_size`
--

INSERT INTO `product_size` (`size_id`, `size`) VALUES
(1, 'S'),
(2, 'M'),
(3, 'L'),
(4, 'XL'),
(5, 'XXL'),
(6, '38'),
(7, '39'),
(8, '40'),
(9, '41'),
(10, '42'),
(11, '43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`role_id`, `role_name`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_MEMBER'),
(3, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sale`
--

CREATE TABLE `sale` (
  `sale_id` varchar(255) NOT NULL,
  `sale_percent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sale`
--

INSERT INTO `sale` (`sale_id`, `sale_percent`) VALUES
('default', 0),
('s10pc', 10),
('s20pc', 20),
('s30pc', 30),
('s40pc', 40),
('s50', 50);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `gender` bit(1) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `verify` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `address`, `full_name`, `gender`, `image`, `password`, `phone`, `role_id`, `avatar`, `email`, `verify`) VALUES
(31, 'China - Tokyo - Mexico - Horykito', 'Mr. Admin', b'1', NULL, '$2a$10$DdMa52LPog0YrXowd0UpqOragthbJ18jiseJNMh88o.E2T4tDuTau', '0999999999', 1, '1669986667346.png', 'admin@gmail.com', b'1'),
(40, 'FPT University - Thach That - Ha Noi', 'Ha Van Quang', b'0', NULL, '$2a$10$d5NAjxsbcz7G251w2undHejUBfdZTvZxu8nrK8rgymoJiIVyUOoBq', '0968904962', 3, '1609219156198.png', 'coosi29@gmail.com', b'1'),
(70, 'Mexico - America - Suner', 'Mr.Alibaba', b'0', NULL, '$2a$10$UoDaMVKoHQUSQPgCh9z4b.z/InnYcI/8fvuTbNzVxn3Qq93SdVYFO', '012-736-9403', 3, '1608541027514.png', 'alibaba@gmail.com', b'1'),
(76, 'Southern California - America', 'Mr. Memory', b'0', NULL, '$2a$10$iNeeSYGdHdcjVsdkkCqHheRhMoMWMNnZMJfV4CT7Bvo.TjIS6yZSy', '0430453562', 3, '1670765566921.png', 'memory@gmail.com', b'1'),
(78, 'Lai Cach - Xua Giang - Soc Son - Ha Noi', 'Mr. Quang', b'0', NULL, '$2a$10$BCAIKnWcbxUmj.81TxirUOtwlzDL1b2/FflK3xQ/G/NseBL/XdbMC', '0946283645', 3, '1608484153089.png', 'quanghvhe140233@fpt.edu.vn', b'1'),
(79, 'Futura - Tokyo - Japan', 'Mr. Discount', b'0', NULL, '$2a$10$LM7P5.BShyKGQnoXP6CACuEI7pOEQZJ.TA0e6oTdxr6KDXHLTKxPK', '023-423-3826', 3, '1608484153089.png', 'discount@gmail.com', b'1'),
(81, 'Atarakasta - Loberbitoi - Mohades', 'Mr. Suzuki', b'0', NULL, '$2a$10$6qXsuicu7WZmG6np7jQeaOU6zo/w5vDthejVUTVZjRR9wWEKv0DwC', '0526357363', 3, '1608484153089.png', 'suziki@gmail.com', b'1'),
(95, 'FPT University - Hoa Lac - Thach That - Ha Noi', 'Mr. Mo Mo', b'0', NULL, '$2a$10$vfbGaiCUzXnAJL5gX5EmmeoKgDfFmuTVzoCUR6QXc.gwDpKj4zuyC', '0973645345', 3, '1608484153089.png', 'amomo@gmail.com', b'1'),
(106, 'ptit hcm', 'sang tran', b'1', NULL, '$2a$10$4jehps29xLVhv2cZIl4J0.jcjnUOZUdombnl9OAuH/fHkRWUbK5Xm', '0886932222', 3, '1608484153089.png', 'sang@gmail.com', b'1'),
(109, NULL, 'sang', b'0', NULL, '$2a$10$9G87s5XoI37BFrod28ffLOQ.EieVL3CczqSli5LhTCOEK.BtKpBqa', '0886932511', 3, '1608484153089.png', 'trung@gmail.com', b'1'),
(110, NULL, 'Nam', b'0', NULL, '$2a$10$cXhu3EMxb0QidRUGvh0Or.gW1rEHH8Ntw1gZkfvLruLVnxpLdFWAi', '0886932566', 3, '1608484153089.png', 'nam24@gmail.com', b'1'),
(111, '95 man thien,Tp.Thu Duc', 'sang tran', b'1', NULL, '$2a$10$4jehps29xLVhv2cZIl4J0.jcjnUOZUdombnl9OAuH/fHkRWUbK5Xm', '0886932222', 3, '1608484153089.png', 'sang@gmail.com', b'1'),
(112, NULL, 'Tráº§n Ngá»c Sang', b'1', NULL, '$2a$10$jHgcT9VRN8WQh3ZUodyxK.F4mqdMCpKrFYG3QoGmAN3lqdSqBwSwy', '0886932511', 3, '1608484153089.png', 'tranosa2511@gmail.com', b'0'),
(113, NULL, 'Tráº§n Ngá»c Sang', b'1', NULL, '$2a$10$jHgcT9VRN8WQh3ZUodyxK.F4mqdMCpKrFYG3QoGmAN3lqdSqBwSwy', '0886932511', 3, '1608484153089.png', 'tranosa2511@gmail.com', b'1');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `FK8888888888888` (`order_id`),
  ADD KEY `FK111111111111` (`product_id`) USING BTREE,
  ADD KEY `FKDT` (`detail_id`);

--
-- Chỉ mục cho bảng `order_user`
--
ALTER TABLE `order_user`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id_idx` (`user_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `FK1mtsbur82frn64de7balymq9s` (`category_id`),
  ADD KEY `FKtgpfnkn7etmfumakc3iq75e95` (`sale_id`);

--
-- Chỉ mục cho bảng `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`color_id`);

--
-- Chỉ mục cho bảng `product_detail`
--
ALTER TABLE `product_detail`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `FK2222222` (`product_id`) USING BTREE,
  ADD KEY `FK444444` (`color_id`) USING BTREE,
  ADD KEY `FK33333333` (`size_id`) USING BTREE;

--
-- Chỉ mục cho bảng `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`size_id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Chỉ mục cho bảng `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `FKn82ha3ccdebhokx3a8fgdqeyy` (`role_id`),
  ADD KEY `idx_user_password` (`password`(20));

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `order_user`
--
ALTER TABLE `order_user`
  MODIFY `order_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT cho bảng `product_detail`
--
ALTER TABLE `product_detail`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `order_user` (`order_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `item_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `item_ibfk_4` FOREIGN KEY (`detail_id`) REFERENCES `product_detail` (`detail_id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_user`
--
ALTER TABLE `order_user`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK1mtsbur82frn64de7balymq9s` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `FKtgpfnkn7etmfumakc3iq75e95` FOREIGN KEY (`sale_id`) REFERENCES `sale` (`sale_id`);

--
-- Các ràng buộc cho bảng `product_detail`
--
ALTER TABLE `product_detail`
  ADD CONSTRAINT `product_detail_ibfk_1` FOREIGN KEY (`size_id`) REFERENCES `product_size` (`size_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `product_detail_ibfk_2` FOREIGN KEY (`color_id`) REFERENCES `product_color` (`color_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `product_detail_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FKn82ha3ccdebhokx3a8fgdqeyy` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
