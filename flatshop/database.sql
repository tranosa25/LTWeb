-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 04, 2022 lúc 05:40 AM
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
(1, 'Nike'),
(2, 'Adidas'),
(3, 'Puma'),
(4, 'Kappa'),
(5, 'Fila'),
(6, 'Coolmate');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `unit_price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `item`
--

INSERT INTO `item` (`item_id`, `product_id`, `unit_price`, `quantity`, `order_id`) VALUES
(9, 51, 77, 1, 14),
(10, 88, 50, 1, 14),
(11, 49, 52, 2, 15),
(12, 50, 54, 1, 15),
(13, 88, 50, 3, 15),
(14, 89, 48, 1, 15),
(15, 51, 77, 3, 16),
(16, 47, 60, 1, 16),
(17, 49, 52, 2, 17),
(18, 58, 59, 1, 17),
(19, 49, 52, 2, 21),
(20, 60, 68, 1, 22),
(21, 50, 54, 1, 23),
(22, 88, 49, 3, 23),
(23, 89, 48, 2, 23),
(24, 51, 76, 2, 24),
(25, 52, 64, 1, 24),
(26, 58, 59, 5, 25),
(27, 47, 60, 3, 25),
(28, 50, 54, 1, 26),
(29, 89, 48, 2, 26),
(30, 64, 71, 1, 27),
(31, 51, 76, 4, 27),
(32, 77, 53, 1, 27),
(33, 51, 76, 1, 28),
(34, 47, 60, 3, 28),
(35, 52, 64, 1, 29),
(36, 47, 60, 1, 30),
(37, 81, 42, 2, 31),
(38, 60, 68, 1, 31),
(39, 81, 42, 3, 32),
(40, 98, 42, 1, 33),
(41, 77, 53, 1, 33),
(42, 49, 52, 3, 34),
(43, 95, 44, 2, 34),
(44, 98, 70, 5, 35),
(45, 55, 67, 2, 35),
(46, 72, 70, 3, 35),
(47, 47, 60, 2, 36),
(48, 51, 76, 1, 37),
(49, 51, 76, 1, 38),
(50, 60, 68, 1, 39),
(51, 64, 71, 1, 40);

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
(37, '2021-02-05 00:00:00', 'PENDING', 81, 76),
(38, '2021-02-05 00:00:00', 'PENDING', 81, 70),
(39, '2021-02-05 00:00:00', 'PENDING', 73, 40),
(40, '2022-12-02 00:00:00', 'PENDING', 76, 106);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` float NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sale_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `description`, `image`, `price`, `product_name`, `quantity`, `category_id`, `sale_id`) VALUES
(44, 'Vans Authentic 44 Dx Classic White - Anaheim Factory', '1669986272283.jpg', 65, 'Vans authentic', 150, 1, 's10pc'),
(47, 'Vans Dallas Clayton Authentic Rainbow True -  White', '1608622024114.jpg', 67, 'Vans authentic', 55, 1, 's10pc'),
(48, 'Vans Sk8 - Hi Label Mix', '1608622139500.jpg', 60, 'Vans old skool', 152, 4, 'default'),
(49, 'Sneakers Vans Authentic Black White', '1609034076692.jpg', 65, 'Vans old skool', 150, 4, 's20pc'),
(50, 'Vans old skool classic black/white', '1608622277960.jpg', 60, 'Vans old skool', 199, 4, 's10pc'),
(51, 'Vans Sk8-Hi Deck Club', '1608622647893.jpg', 85, 'Vans SK8', 120, 5, 's10pc'),
(52, 'Vans Sk8 Hi Black White', '1608622710798.png', 80, 'Vans SK8', 345, 5, 's20pc'),
(53, 'Vans Sk8 Hi Navy White\r\n', '1608622786673.jpg', 78, 'Vans SK8', 167, 5, 'default'),
(54, 'Vans Sk8 Hi Navy White\r\n', '1608622841439.png', 89, 'Vans SK8', 313, 5, 's30pc'),
(55, 'Vans Old Skool Flash Skulls', '1608622964916.jpg', 67, 'Vans old skool', 467, 4, 'default'),
(56, 'Vans Style 36 Crew Checkerboard', '1608623182252.jpg', 78, 'Vans old skool', 276, 4, 's10pc'),
(57, 'Vans Old Skool 36 DX Anaheim Factory', '1612540190989.jpg', 65, 'Vans old skool', 198, 4, 's20pc'),
(58, 'Vans Authentic Red White\r\n', '1608623362414.png', 59, 'Vans authentic', 435, 1, 'default'),
(59, 'Vans Sk8-Hi Flame Reissue', '1608623531124.jpg', 70, 'Vans SK8', 365, 5, 's30pc'),
(60, ' Vans Sk8-Hi DIY Tapered White', '1608623614207.png', 85, 'Vans SK8', 423, 5, 's20pc'),
(61, 'Vans Sk8-Hi DIY Tapered Black', '1608623670293.jpg', 59, 'Vans old skool', 531, 4, 's10pc'),
(62, 'Vans Sk8-Hi Flame Reissue', '1608623745484.jpg', 79, 'Vans SK8', 484, 5, 'default'),
(63, '\r\nGiày Vans SK8-Hi Alien Ghosts', '1608623803283.png', 79, 'Vans SK8', 567, 5, 's30pc'),
(64, '\r\nGiày Vans SK8 - Hi 38 DX Anaheim Factory', '1608623863531.jpg', 89, 'Vans SK8', 462, 5, 's20pc'),
(65, 'Vans SK8 - Hi 38 DX Anaheim Factory', '1608624027198.jpg', 69, 'Vans SK8', 352, 5, 's10pc'),
(66, 'Vans Sk8-Hi DIY Tapered White', '1612268137270.jpg', 69, 'Vans old skool', 535, 4, 's40pc'),
(67, 'Vans Old Skool Off The Wall Sidewall True Navy', '1608624884611.png', 59, 'Vans old skool', 215, 4, 's30pc'),
(68, 'Vans Authentic Black White', '1608624944384.jpg', 65, 'Vans old skool', 453, 4, 's20pc'),
(69, 'Vans Authentic 44 Dx Checkerbroad', '1608625004288.jpg', 69, 'Vans old skool', 379, 4, 's40pc'),
(70, 'Vans Old Skool 36 DX Anaheim Factory', '1608625060270.jpg', 60, 'Vans old skool', 265, 4, 's30pc'),
(71, '\r\nVans Vault Authentic Chili Pepper - Ship US', '1608774008706.jpg', 65, 'Vans authentic', 343, 1, 's20pc'),
(72, 'Vans Era Patchwork Multi Color', '1608774152453.jpg', 78, 'Vans authentic', 547, 1, 's10pc'),
(73, 'Vans Authentic Caro Black White', '1608774264295.jpg', 60, 'Vans authentic', 743, 1, 's20pc'),
(74, 'Vans Vault OG Authentic LX Black White - Ship US', '1608774321256.jpg', 65, 'Vans authentic', 296, 1, 'default'),
(75, 'Vans Vault Authentic Chili Pepper - Ship US', '1608774363405.jpg', 60, 'Vans authentic', 343, 1, 's10pc'),
(77, 'Vans Moma Classic Slip On', '1609034545320.png', 59, 'Vans slip-on', 834, 6, 's10pc'),
(78, 'Vans Slip-On Custom Culture Along with the Gods', '1609034608943.png', 56, 'Vans slip-on', 783, 6, 's20pc'),
(79, 'Vans Slip-On Alien Ghosts', '1609034653526.png', 45, 'Vans slip-on', 673, 6, 'default'),
(80, 'Vans Slip-On Anaheim Factory Checkerboard', '1609034696789.jpg', 49, 'Vans slip-on', 348, 6, 's20pc'),
(81, 'Vans Slip-On Mix Checker Chili Pepper', '1609034733814.jpg', 78, 'Vans slip-on', 934, 6, 's10pc'),
(82, 'Vans Slip-On Stickers Mash Up', '1609034816715.jpg', 50, 'Vans slip-on', 582, 6, 's10pc'),
(83, 'Vans Slip-On Anaheim Factory Checkerboard', '1609034871405.jpg', 50, 'Vans slip-on', 563, 6, 's20pc'),
(84, 'Vans Slip-On Label Mix', '1609034923703.jpg', 55, 'Vans slip-on', 328, 6, 's30pc'),
(85, 'Vans Slip-On Mix Checker Chili Pepper', '1609034970946.jpg', 49, 'Vans slip-on', 921, 6, 's10pc'),
(86, 'Vans Slip-on Black Red F196 Checkerboard', '1609035021120.jpg', 59, 'Vans slip-on', 445, 6, 's20pc'),
(87, 'Vans Slip-On Mismatch', '1609035081382.jpg', 60, 'Vans slip-on', 562, 6, 's20pc'),
(88, 'Vans Era Forgotten Bones', '1609035204723.jpg', 78, 'Vans ERA', 765, 3, 's10pc'),
(89, 'Vans Era Lady Vans', '1609035242491.jpg', 60, 'Vans ERA', 452, 3, 's20pc'),
(90, 'Vans Era \"Get The Real\" Racing Red', '1609035287852.jpg', 45, 'Vans ERA', 293, 3, 's20pc'),
(91, 'Vans Era Deboss Checkerboard', '1609035321871.jpg', 50, 'Vans ERA', 546, 3, 's30pc'),
(92, 'Vans Era Comfycush Black', '1609035380193.jpg', 50, 'Vans ERA', 834, 3, 's10pc'),
(93, 'Vans Era Checkerboard Marshmallow', '1609035436770.jpg', 59, 'Vans ERA', 453, 3, 's20pc'),
(94, 'Checkerboard Classic Better Seller', '1609036735269.png', 60, 'Vans classic', 456, 2, 's10pc'),
(95, 'Checkerboard Classic Better Seller', '1609036754525.png', 55, 'Vans classic', 738, 2, 's20pc'),
(96, 'Checkerboard Classic Better Seller', '1609036772150.png', 49, 'Vans classic', 982, 2, 's10pc'),
(97, 'Checkerboard Classic Better Seller', '1609036791385.png', 59, 'Vans classic', 213, 2, 's30pc'),
(98, 'Checkerboard Classic Better Seller', '1609036821201.png', 78, 'Vans classic', 573, 2, 's10pc'),
(99, 'Checkerboard Classic Better Seller', '1609036841790.jpg', 59, 'Vans classic', 837, 2, 's30pc'),
(100, 'Checkerboard Classic Better Seller', '1609036892365.jpg', 60, 'Vans classic', 458, 2, 's30pc'),
(101, 'Checkerboard Classic Better Seller', '1609036918234.png', 49, 'Vans classic', 635, 2, 's10pc'),
(107, 'Checkerboard Classic Better Seller', '1612540248195.jpg', 64, 'Vans classic', 120, 2, 's30pc'),
(108, 'ddddd', '1670074751913.jpg', 20, 'sang', 23, 2, 'default');

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
(31, 'China - Tokyo - Mexico - Horykito', 'Mr. Admin', b'1', NULL, '$2a$10$DdMa52LPog0YrXowd0UpqOragthbJ18jiseJNMh88o.E2T4tDuTau', '0999999999', 1, '1669986667346.jpg', 'admin@gmail.com', b'1'),
(40, 'FPT University - Thach That - Ha Noi', 'Ha Van Quang', b'0', NULL, '$2a$10$d5NAjxsbcz7G251w2undHejUBfdZTvZxu8nrK8rgymoJiIVyUOoBq', '0968904962', 3, '1609219156198.png', 'coosi29@gmail.com', b'1'),
(70, 'Mexico - America - Suner', 'Mr.Alibaba', b'0', NULL, '$2a$10$UoDaMVKoHQUSQPgCh9z4b.z/InnYcI/8fvuTbNzVxn3Qq93SdVYFO', '012-736-9403', 3, '1608541027514.png', 'alibaba@gmail.com', b'1'),
(76, 'Southern California - America', 'Mr. Memory', b'0', NULL, '$2a$10$OEFg0tRbevdcwAp2d8gXW.xNSft55kBsHP6FDc.wOD1pe5/Nn.Dzy', '043-045-3562', 3, '1608484153089.png', 'memory@gmail.com', b'1'),
(78, 'Lai Cach - Xua Giang - Soc Son - Ha Noi', 'Mr. Quang', b'0', NULL, '$2a$10$BCAIKnWcbxUmj.81TxirUOtwlzDL1b2/FflK3xQ/G/NseBL/XdbMC', '0946283645', 3, '1608484153089.png', 'quanghvhe140233@fpt.edu.vn', b'1'),
(79, 'Futura - Tokyo - Japan', 'Mr. Discount', b'0', NULL, '$2a$10$LM7P5.BShyKGQnoXP6CACuEI7pOEQZJ.TA0e6oTdxr6KDXHLTKxPK', '023-423-3826', 3, '1608484153089.png', 'discount@gmail.com', b'1'),
(81, 'Atarakasta - Loberbitoi - Mohades', 'Mr. Suzuki', b'0', NULL, '$2a$10$6qXsuicu7WZmG6np7jQeaOU6zo/w5vDthejVUTVZjRR9wWEKv0DwC', '0526357363', 3, '1608484153089.png', 'suziki@gmail.com', b'1'),
(84, '132 Chu Van An - Cau Giay - Ha Noi', 'Mr. Create', b'1', NULL, '$2a$10$k5tDvXLhGg2a.w2qVi3P2egWtmLQCtGk1xmnjey7Z9UcnlyLOrmoy', '0937352647', 1, '1612349833775.png', 'create@gmail.com', b'0'),
(88, NULL, NULL, b'0', NULL, '$2a$10$Sq1gFN4bhRTmC1WT8c6PJuBs9s0qtIA6Y.aongdJD3pt50c1YFB4K', NULL, 3, '1608484153089.png', 'nguyendinhkhue14102000@gmail.com', b'1'),
(89, NULL, NULL, b'0', NULL, '$2a$10$dgttFgJkC.8ogpd7hjWHyuTSw/loUnu8yKQlthgL678GGH0QP8wH6', NULL, 3, '1608484153089.png', 'sads@gmail.com', b'0'),
(90, NULL, NULL, b'0', NULL, '$2a$10$2pJAHf1spIjeDhm40B.fWuxNi5UxPn6ztXU9wKLH1VL4YdZ4VWdp.', NULL, 3, '1608484153089.png', 'QDSF@gmail.com', b'0'),
(91, NULL, NULL, b'0', NULL, '$2a$10$5.pCxBFFYzMq7056r6TNNODzOfC/FyFuakI8EeywoQmVHUjU61oxa', NULL, 3, '1608484153089.png', 'ass1d@gmail.com', b'0'),
(92, NULL, NULL, b'0', NULL, '$2a$10$A8r57H93QmIikC4gBQwuL.M1L7AnGRXWzByJvzwnQP/PfZhBUxopW', NULL, 3, '1608484153089.png', 'lucurata@gmail.com', b'1'),
(93, NULL, NULL, b'0', NULL, '$2a$10$idBT4HXAlkdaBws8PJBryueDlj1sOApoOb2HEEITPATB1Wkyjlqca', NULL, 3, '1608484153089.png', 'locota@gmail.com', b'0'),
(94, NULL, NULL, b'0', NULL, '$2a$10$CEwil.cgd.N9LyPIx3mIrO5qGCdAiaZlVoNaKVIefsA5vwVh7oQn2', NULL, 3, '1608484153089.png', 'lukuta@gmail.com', b'1'),
(95, 'FPT University - Hoa Lac - Thach That - Ha Noi', 'Mr. Mo Mo', b'0', NULL, '$2a$10$vfbGaiCUzXnAJL5gX5EmmeoKgDfFmuTVzoCUR6QXc.gwDpKj4zuyC', '0973645345', 3, '1608484153089.png', 'amomo@gmail.com', b'1'),
(96, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, b'0'),
(97, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, b'0'),
(98, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, b'0'),
(99, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, b'0'),
(100, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, b'0'),
(101, NULL, NULL, b'0', NULL, NULL, NULL, NULL, NULL, NULL, b'0'),
(106, 'ptit hcm', 'sang tran', b'1', NULL, '$2a$10$4jehps29xLVhv2cZIl4J0.jcjnUOZUdombnl9OAuH/fHkRWUbK5Xm', '0886932222', 3, '1669986160462.jpg', 'sang@gmail.com', b'1'),
(107, NULL, 'sang', b'0', NULL, '$2a$10$/8xYoO78VTgGqC/PZ2NU5OBL43Ihq9e3OVuqbuAp.2HYf5d7sLIHy', '0786756456', 3, '1608484153089.png', 'admi@gmai.com', b'0');

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
  ADD PRIMARY KEY (`item_id`);

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
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `order_user`
--
ALTER TABLE `order_user`
  MODIFY `order_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- Các ràng buộc cho các bảng đã đổ
--

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
-- Các ràng buộc cho bảng `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FKn82ha3ccdebhokx3a8fgdqeyy` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
