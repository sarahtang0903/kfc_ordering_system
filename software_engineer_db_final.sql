-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-12-13 16:28:41
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `software_engineer_db`
--

-- --------------------------------------------------------

--
-- 資料表結構 `branch`
--

CREATE TABLE `branch` (
  `branch_id` int(10) NOT NULL,
  `branch_name` char(50) NOT NULL,
  `branch_time` char(50) NOT NULL,
  `branch_note` char(50) DEFAULT NULL,
  `pickuparea_id` int(10) NOT NULL,
  `branch_address` char(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `branch`
--

INSERT INTO `branch` (`branch_id`, `branch_name`, `branch_time`, `branch_note`, `pickuparea_id`, `branch_address`) VALUES
(1, '台北台大餐廳(台灣大學對面)', '每日07:00-23:00', '早餐供應', 1, '台北市大安區新生南路三段96-1號'),
(2, '台北中山餐廳 (南京復興捷運站3號)', '每日07:00~23:00', '早餐供應', 2, '台北市中山區南京東路三段222號(兄弟飯店斜對面)'),
(3, '台北光復餐廳', '台北光復餐廳', NULL, 3, '台北市信義區光復南路465號1F'),
(4, '林口文化餐廳', '每日07:00~24:00', '早餐供應', 4, '新北市林口區文化一路一段78號'),
(5, '板橋忠孝餐廳', '每日10:00~23:00', NULL, 5, '新北市板橋區忠孝路21號'),
(6, '新莊輔大餐廳 (近輔仁大學)', '每日10:00~23:00', NULL, 6, '新北市新莊區中正路516-3號'),
(7, '桃園八德餐廳 (大潤發1樓)', '每日10:00-22:00', NULL, 7, '桃園市八德區介壽路2段148號'),
(8, '桃園南平餐廳', '每日11:00-23:00', NULL, 8, '桃園市桃園區南平路330號1樓'),
(9, '林口復興餐廳 (林口長庚醫院對面)', '每日07:00~24:00', '早餐供應', 9, '桃園市龜山區復興一路110-112號');

-- --------------------------------------------------------

--
-- 資料表結構 `cartetype`
--

CREATE TABLE `cartetype` (
  `cartetype_id` int(10) NOT NULL,
  `cartetype_name` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `cartetype`
--

INSERT INTO `cartetype` (`cartetype_id`, `cartetype_name`) VALUES
(1, '炸雞'),
(2, '蛋塔'),
(3, '飲料'),
(4, '脆薯');

-- --------------------------------------------------------

--
-- 資料表結構 `combination`
--

CREATE TABLE `combination` (
  `combo_id` int(10) NOT NULL,
  `cartetype_id` int(10) NOT NULL,
  `meals_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `combination`
--

INSERT INTO `combination` (`combo_id`, `cartetype_id`, `meals_id`) VALUES
(1, 1, 2),
(2, 1, 2),
(5, 1, 2),
(17, 1, 2),
(25, 1, 2),
(26, 1, 2),
(27, 1, 1),
(28, 1, 1),
(29, 1, 1),
(29, 1, 2),
(30, 1, 2),
(31, 1, 2),
(32, 1, 2),
(33, 1, 2),
(34, 1, 2),
(1, 2, 4),
(2, 2, 4),
(3, 2, 4),
(4, 2, 4),
(5, 2, 4),
(6, 2, 4),
(7, 2, 4),
(8, 2, 4),
(9, 2, 4),
(10, 2, 4),
(25, 2, 5),
(26, 2, 4),
(27, 2, 4),
(29, 2, 4),
(30, 2, 4),
(32, 2, 4),
(33, 2, 4),
(34, 2, 4),
(51, 2, 4),
(51, 2, 5),
(52, 2, 4),
(52, 2, 5),
(53, 2, 4),
(54, 2, 4),
(1, 3, 7),
(2, 3, 7),
(3, 3, 7),
(4, 3, 7),
(5, 3, 7),
(6, 3, 7),
(7, 3, 7),
(8, 3, 7),
(9, 3, 7),
(10, 3, 7),
(11, 3, 7),
(12, 3, 7),
(13, 3, 7),
(14, 3, 7),
(15, 3, 7),
(16, 3, 7),
(17, 3, 7),
(18, 3, 7),
(19, 3, 7),
(20, 3, 7),
(21, 3, 7),
(22, 3, 7),
(23, 3, 7),
(24, 3, 7),
(25, 3, 7),
(26, 3, 7),
(27, 3, 8),
(28, 3, 7),
(29, 3, 7),
(30, 3, 7),
(32, 3, 7),
(33, 3, 7),
(34, 3, 7),
(35, 3, 7),
(36, 3, 7),
(37, 3, 7),
(38, 3, 7),
(39, 3, 7),
(40, 3, 7),
(41, 3, 7),
(42, 3, 7),
(43, 3, 7),
(44, 3, 7),
(45, 3, 7),
(46, 3, 7),
(47, 3, 7),
(48, 3, 7),
(49, 3, 7),
(50, 3, 7),
(52, 3, 9),
(55, 3, 7),
(56, 3, 7),
(57, 3, 7),
(58, 3, 7),
(59, 3, 7),
(60, 3, 7),
(61, 3, 7),
(62, 3, 7),
(63, 3, 7),
(64, 3, 7),
(66, 3, 7),
(1, 4, 19),
(2, 4, 19),
(4, 4, 19),
(5, 4, 19),
(6, 4, 19),
(7, 4, 19),
(9, 4, 19),
(10, 4, 19),
(11, 4, 19),
(12, 4, 19),
(14, 4, 19),
(15, 4, 19),
(25, 4, 19),
(28, 4, 19),
(29, 4, 3),
(31, 4, 19),
(34, 4, 19),
(65, 3, 7);

-- --------------------------------------------------------

--
-- 資料表結構 `combo`
--

CREATE TABLE `combo` (
  `combo_id` int(10) NOT NULL,
  `combo_name` char(50) NOT NULL,
  `combo_price` int(10) NOT NULL,
  `combo_picture` char(200) NOT NULL,
  `combo_en_name` char(70) NOT NULL,
  `combo_content` char(150) NOT NULL,
  `subdivision_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `combo`
--

INSERT INTO `combo` (`combo_id`, `combo_name`, `combo_price`, `combo_picture`, `combo_en_name`, `combo_content`, `subdivision_id`) VALUES
(1, '雙層咔啦雞腿堡 XL餐', 260, 'https://kfcoosfs.kfcclub.com.tw/%e9%9b%99%e5%b1%a4%e5%92%94%e5%95%a6%e9%9b%9e%e8%85%bf%e5%a0%a1XL-20230721-pc.jpg', 'Zinger stacker XL combo', '雙層咔啦雞腿堡x1咔啦脆雞x1香酥脆薯(中)x1原味蛋撻x1可樂(中)x1', 1),
(2, '海陸咔啦脆雞Q蝦堡 XL餐', 245, 'https://kfcoosfs.kfcclub.com.tw/%e6%b5%b7%e9%99%b8%e5%a0%a1XL%e9%a4%9020230417-pc.jpg', 'Surf and Turf Shrimp Burger XL Combo', '海陸咔啦脆雞Q蝦堡x1咔啦脆雞x1脆薯(中)x1原味蛋撻x1可樂(中)x1', 1),
(3, '剝皮辣椒紙包雞 XL套餐', 239, 'https://kfcoosfs.kfcclub.com.tw/%e5%89%9d%e7%9a%ae%e8%be%a3%e6%a4%92%e7%b4%99%e5%8c%85%e9%9b%9e-XL-20231019-pc.jpg', 'Peeled chili pepper Foilicious XL Combo', '剝皮辣椒紙包雞x1雞汁風味飯x1上校雞塊x4原味蛋撻x1百事可樂(中)x1', 1),
(4, '青花椒香麻脆雞XL餐', 235, 'https://kfcoosfs.kfcclub.com.tw/OLO%e9%a4%90%e5%9c%96-XL%e9%a4%90-%e9%9d%92%e8%8a%b1%e6%a4%92%e9%ba%bb%e9%9b%9e20221215-pc.jpg', 'Green Pepper Fried Chicken XL Combo', '青花椒香麻脆雞x2上校雞塊x4香酥脆薯(中)x1原味蛋撻x1百事可樂(中)x1', 1),
(5, '青花椒香麻咔啦雞腿堡XL套餐', 220, 'https://kfcoosfs.kfcclub.com.tw/%e9%9d%92%e8%8a%b1%e6%a4%92%e5%8d%a1%e5%95%a6%e9%9b%9e%e8%85%bf%e5%a0%a1XL%e9%a4%9020220518-pc.jpg', 'Green Pepper Zinger XL combo', '青花椒香麻咔啦雞腿堡x1咔啦脆雞x1原味蛋撻x1香酥脆薯(中)x1百事可樂(中)x1', 1),
(6, '雙層咔啦雞腿堡 L絕配餐', 230, 'https://kfcoosfs.kfcclub.com.tw/%e9%9b%99%e5%b1%a4%e5%92%94%e5%95%a6%e9%9b%9e%e8%85%bf%e5%a0%a1L%e7%b5%95%e9%85%8d%e9%a4%90-20230721-pc.jpg', 'Zinger stacker L combo', '雙層咔啦雞腿堡x1脆薯(小)x1蛋撻x1可樂(中)x1', 2),
(7, '海陸咔啦脆雞Q蝦堡 L絕配餐', 215, 'https://kfcoosfs.kfcclub.com.tw/%e6%b5%b7%e9%99%b8%e5%a0%a1L%e7%b5%95%e9%85%8d%e9%a4%9020320417-pc.jpg', 'Surf and Turf Shrimp Burger L Combo', '海陸咔啦脆雞Q蝦堡x1脆薯(小)x1蛋撻x1可樂(中)x1', 2),
(8, '剝皮辣椒紙包雞 L絕配餐', 205, 'https://kfcoosfs.kfcclub.com.tw/%e5%89%9d%e7%9a%ae%e8%be%a3%e6%a4%92%e7%b4%99%e5%8c%85%e9%9b%9e-L-20231019-pc.jpg', 'Peeled chili pepper Foilicious L Combo', '剝皮辣椒紙包雞x1雞汁風味飯x1原味蛋撻x1百事可樂(中)x1', 2),
(9, '青花椒咔啦雞腿堡 絕配餐', 195, 'https://kfcoosfs.kfcclub.com.tw/OLO%e9%a4%90%e5%9c%96-L%e9%a4%90-%e9%9d%92%e8%8a%b1%e6%a4%92%e9%ba%bb%e9%9b%9e20221214-pc.jpg', 'Green pepper fried chicken L combo', '青花椒香麻脆雞x2香酥脆薯(小)x1百事可樂(中)x1原味蛋撻x1', 2),
(10, '青花椒咔啦雞腿堡 絕配餐', 170, 'https://kfcoosfs.kfcclub.com.tw/OLO%e9%a4%90%e5%9c%96-L%e9%a4%90-%e9%9d%92%e8%8a%b1%e6%a4%92%e5%92%94%e5%95%a6%e9%9b%9e%e8%85%bf%e5%a0%a120221214-pc.jpg', 'Green pepper Zinger L combo', '青花椒咔啦雞腿堡x1香酥脆薯(小)x1百事可樂(中)x1原味蛋撻x1', 2),
(11, '雙層咔啦雞腿堡 M經典餐', 205, 'https://kfcoosfs.kfcclub.com.tw/%e9%9b%99%e5%b1%a4%e5%92%94%e5%95%a6%e9%9b%9e%e8%85%bf%e5%a0%a1M%e7%b6%93%e5%85%b8%e9%a4%90-20230721-pc.jpg', 'Zinger stacker M combo', '雙層咔啦雞腿堡x1脆薯(中)x1可樂(中)x1', 3),
(12, '海陸咔啦脆雞Q蝦堡 M經典餐', 195, 'https://kfcoosfs.kfcclub.com.tw/%e6%b5%b7%e9%99%b8%e5%a0%a1M%e7%b6%93%e5%85%b8%e9%a4%9020230417-pc.jpg', 'Surf and Turf Shrimp Burger M Combo', '海陸咔啦脆雞Q蝦堡x1脆薯(中)x1可樂(中)x1', 3),
(13, '剝皮辣椒紙包雞 M經典餐', 185, 'https://kfcoosfs.kfcclub.com.tw/%e5%89%9d%e7%9a%ae%e8%be%a3%e6%a4%92%e7%b4%99%e5%8c%85%e9%9b%9e-M-20231019-pc.jpg', 'Peeled chili pepper Foilicious M Combo', '剝皮辣椒紙包雞x1雞汁風味飯x1百事可樂(中)x1', 3),
(14, '青花椒香麻脆雞 經典餐', 181, 'https://kfcoosfs.kfcclub.com.tw/%e9%9d%92%e8%8a%b1%e6%a4%92%e9%a6%99%e9%ba%bb%e8%84%86%e9%9b%9e%e5%80%8b%e4%ba%ba%e9%a4%9020220901-pc.jpg', 'Green Pepper Fried Chicken Combo', '青花椒香麻脆雞(辣)*2中薯*1中可*1', 3),
(15, '青花椒香麻咔啦雞腿堡 經典餐', 157, 'https://kfcoosfs.kfcclub.com.tw/%e9%9d%92%e8%8a%b1%e6%a4%92%e5%8d%a1%e5%95%a6%e9%9b%9e%e8%85%bf%e5%a0%a1%e9%a4%9020220518-pc.jpg', 'Green Pepper Zinger combo', '青花椒香麻咔啦雞腿堡x1香酥脆薯(中)x1百事可樂(中)x1', 3),
(16, '美式煙燻咔脆雞堡 雞勵餐', 109, 'https://kfcoosfs.kfcclub.com.tw/%e7%be%8e%e5%bc%8f%e7%85%99%e7%87%bb%e5%92%94%e7%be%8e%e5%bc%8f%e7%85%99%e7%87%bb%e5%92%94%e8%84%86%e9%9b%9e%e5%a0%a1-%e9%9b%9e%e5%8b%b5%e9%a4%9020230208-pc.jpg', 'Smoked Crispy Chincken Burger S Combo', '美式煙燻咔脆雞堡*1小可x1', 4),
(17, '咔啦酥脆 雞勵餐', 109, 'https://kfcoosfs.kfcclub.com.tw/OLO%e9%a4%90%e5%9c%96-%e5%92%94%e5%95%a6%e9%85%a5%e8%84%86%e9%a4%9020221214-pc.jpg', 'Chrisy S combo', '咔啦脆雞x1上校雞塊x2百事可樂(小)x1', 4),
(18, '8塊上校雞塊 雞勵餐', 99, 'https://kfcoosfs.kfcclub.com.tw/OLO%e9%a4%90%e5%9c%96-8%e5%a1%8a%e4%b8%8a%e6%a0%a1%e9%9b%9e%e5%a1%8a%e9%a4%90%e9%9b%9e%e5%8b%b5%e9%a4%9020221215-pc.jpg', '8pcs Nuggets S combo', '上校雞塊x8百事可樂(小)x1', 4),
(19, '原味起司燻雞捲 雞勵餐', 99, 'https://kfcoosfs.kfcclub.com.tw/OLO%e9%a4%90%e5%9c%96-%e5%8e%9f%e5%91%b3%e8%b5%b7%e5%8f%b8%e7%87%bb%e9%9b%9e%e6%8d%b2%e9%9b%9e%e5%8b%b5%e9%a4%9020221215-pc.jpg', 'Original cheese & smoked chicken twister S combo', '原味起司燻雞捲x1百事可樂(小)x1', 4),
(20, '花生起司雞柳捲 雞勵餐', 99, 'https://kfcoosfs.kfcclub.com.tw/OLO%e9%a4%90%e5%9c%96-%e8%8a%b1%e7%94%9f%e8%b5%b7%e5%8f%b8%e9%9b%9e%e6%9f%b3%e6%8d%b2%e9%9b%9e%e5%8b%b5%e9%a4%9020221215-pc.jpg', 'Peanut & cheese chicken Twister S combo', '花生起司雞柳捲x1百事可樂(小)x1', 4),
(21, '上校私廚烤雞腿溫沙拉套餐', 178, 'https://kfcoosfs.kfcclub.com.tw/%e7%83%a4%e9%9b%9e%e6%ba%ab%e6%b2%99%e6%8b%89%e5%a5%97%e9%a4%90(%e4%b8%8d%e9%81%a9%e7%94%a8%e5%a4%96%e9%80%81)-210927-pc.jpg', 'Margherita Warm Salad Combo', '上校私廚烤雞腿溫沙拉X1玉米濃湯(小)X1', 5),
(22, '凱薩烤地瓜沙拉套餐', 164, 'https://kfcoosfs.kfcclub.com.tw/%e5%87%b1%e8%96%a9%e7%83%a4%e5%9c%b0%e7%93%9c%e6%b2%99%e6%8b%89%e5%a5%97%e9%a4%9020220519-pc.jpg', 'Caesar Sweet Potato Salad Combo', '凱薩烤地瓜沙拉x1經典玉米x1無糖茉莉綠茶(中)x1', 5),
(23, '上校私廚烤雞腿溫沙拉', 135, 'https://kfcoosfs.kfcclub.com.tw/%e7%83%a4%e9%9b%9e%e6%ba%ab%e6%b2%99%e6%8b%89-%e5%96%ae%e9%bb%9e-211004-pc.jpg', 'Margherita Warm Salad ALC', '上校私廚烤雞腿溫沙拉X1', 5),
(24, '凱薩烤地瓜沙拉', 129, 'https://kfcoosfs.kfcclub.com.tw/%e5%87%b1%e8%96%a9%e7%83%a4%e5%9c%b0%e7%93%9c%e6%b2%99%e6%8b%8920220518-pc.jpg', 'Caesar Sweet Potato Salad', '凱薩烤地瓜沙拉x1', 5),
(25, '剝皮辣椒紙包雞 雙人餐', 380, 'https://kfcoosfs.kfcclub.com.tw/%e5%89%9d%e7%9a%ae%e8%be%a3%e6%a4%92%e7%b4%99%e5%8c%85%e9%9b%9e-%e9%9b%99%e4%ba%ba%e9%a4%9020231019-pc.jpg', 'Peeled chili pepper Foilicious Buddy Combo', '剝皮辣椒紙包雞x1雞汁風味飯x1咔啦脆雞x2香酥脆薯(中)x1原味蛋撻x2百事可樂(中)x2', 6),
(26, '剝皮辣椒紙包雞 雙拼餐', 389, 'https://kfcoosfs.kfcclub.com.tw/%e5%89%9d%e7%9a%ae%e8%be%a3%e6%a4%92%e7%b4%99%e5%8c%85%e9%9b%9e-%e9%9b%99%e6%8b%bc%e9%a4%9020231019-pc.jpg', 'Peeled chili pepper Foilicious Double main Combo', '剝皮辣椒紙包雞x2雞汁風味飯x2咔啦脆雞x4原味蛋撻禮盒x1瓶裝百事可樂x1', 6),
(27, '青花椒狂嗑桶', 389, 'https://kfcoosfs.kfcclub.com.tw/OLO%e9%a4%90%e5%9c%96-%e9%9d%92%e8%8a%b1%e6%a4%92%e7%8b%82%e5%97%91%e6%a1%b6_20220928-pc.jpg', 'Green Pepper Fried Chicken Crunchy bucket combo', '青花椒香麻脆雞x5雙色轉轉QQ球x1原味蛋撻x2冰檸檬紅茶(小)x2', 6),
(28, '青花椒香麻咔啦雞腿堡雙人餐', 380, 'https://kfcoosfs.kfcclub.com.tw/%e9%9d%92%e8%8a%b1%e6%a4%92%e9%a6%99%e9%ba%bb%e5%92%94%e5%95%a6%e9%9b%9e%e8%85%bf%e5%a0%a1%e9%9b%99%e4%ba%ba%e9%a4%9020220518-pc.jpg', 'Green Pepper Zinger Buddy combo', '青花椒香麻咔啦雞腿堡x1青花椒香麻脆雞x2香酥脆薯(中)x14塊上校雞塊x1雙色轉轉QQ球X1百事可樂(中)x2', 6),
(29, '青花椒香麻脆雞雙人餐', 380, 'https://kfcoosfs.kfcclub.com.tw/%e9%9d%92%e8%8a%b1%e6%a4%92%e9%a6%99%e9%ba%bb%e8%84%86%e9%9b%9e%e9%9b%99%e4%ba%ba%e9%a4%9020220901-pc.jpg', 'Green Pepper Fried Chicken Buddy Combo', '青花椒香麻脆雞(辣)*2咔啦脆雞(辣)*2中薯*1上校雞塊*4原味蛋撻*2中可*2', 6),
(30, '剝皮辣椒紙包雞 同樂餐', 920, 'https://kfcoosfs.kfcclub.com.tw/%e5%89%9d%e7%9a%ae%e8%be%a3%e6%a4%92%e7%b4%99%e5%8c%85%e9%9b%9e-%e5%90%8c%e6%a8%82%e9%a4%9020231019-pc.jpg', 'Peeled chili pepper Foilicious Sharing Combo', '剝皮辣椒紙包雞x3雞汁風味飯x3咔啦脆雞x6原味蛋撻禮盒*1瓶裝百事可樂x1', 7),
(31, '經典A餐-10塊雞桶', 579, 'https://kfcoosfs.kfcclub.com.tw/%e7%b6%93%e5%85%b8A%e9%a4%90-10%e5%a1%8a%e9%9b%9e%e6%a1%b6-210726-pc.jpg', 'Classic A Bucket Combo 10pcs', '咔啦脆雞(辣)X10香酥脆薯(中)X2', 7),
(32, '歡聚B餐-10塊雞', 795, 'https://kfcoosfs.kfcclub.com.tw/OLO%e9%a4%90%e5%9c%96-%e6%ad%a1%e8%81%9aB%e9%a4%90-10%e5%a1%8a%e9%9b%9e20221215-pc.jpg', 'Party B Bucket Combo 10pcs', '咔啦脆雞x10上校雞塊x8雙色轉轉QQ球x1原味蛋撻x6,1.25L百事可樂(瓶)x1', 7),
(33, '超人氣同樂餐', 924, 'https://kfcoosfs.kfcclub.com.tw/%e8%b6%85%e4%ba%ba%e6%b0%a3%e5%90%8c%e6%a8%82%e9%a4%9020220518-pc.jpg', 'Popular Sharing Combo', '咔啦脆雞(辣)X6咔啦雞腿堡(辣)X3香酥脆薯(小)X3原味蛋撻x6,1.25L百事可樂(瓶)X1', 7),
(34, '好食雞同樂餐', 1207, 'https://kfcoosfs.kfcclub.com.tw/%e5%a5%bd%e9%a3%9f%e9%9b%9e%e5%90%8c%e6%a8%82%e9%a4%90-210726-pc.jpg', 'Crispy Fried Chicken Sharing Combo', '咔啦脆雞(辣)X16香酥脆薯(小)X3原味蛋撻X6,1.25L百事可樂(瓶)X1', 7),
(35, '花生吮指嫩雞蛋堡套餐', 79, 'https://kfcoosfs.kfcclub.com.tw/%e8%8a%b1%e7%94%9f%e5%90%ae%e6%8c%87%e5%ab%a9%e9%9b%9e%e8%9b%8b%e5%a0%a1-%e5%a5%97%e9%a4%9020221115-pc.jpg', 'Peanut Chicken Egg Burger Individual Combo', '花生吮指嫩雞蛋堡x1經典熱奶茶(小)x1', 8),
(36, '花生肉鬆嫩雞蛋堡套餐', 79, 'https://kfcoosfs.kfcclub.com.tw/%e8%8a%b1%e7%94%9f%e8%82%89%e9%ac%86%e5%ab%a9%e9%9b%9e%e8%9b%8b%e5%a0%a1-%e5%a5%97%e9%a4%9020221115-pc.jpg', 'Peanut Chicken & Meat Floss Burger Individual Combo', '花生肉鬆嫩雞蛋堡x1經典熱奶茶(小)x1', 8),
(37, '吮指嫩雞蛋堡套餐', 69, 'https://kfcoosfs.kfcclub.com.tw/%e5%90%ae%e6%8c%87%e5%ab%a9%e9%9b%9e%e8%9b%8b%e5%a0%a1%e5%a5%97%e9%a4%900724-pc.jpg', 'Chicken Fillet Egg Burger Combo', '吮指嫩雞蛋堡X1經典熱奶茶(小)X1', 8),
(38, '花生起司蛋堡套餐', 49, 'https://kfcoosfs.kfcclub.com.tw/%e8%8a%b1%e7%94%9f%e8%b5%b7%e5%8f%b8%e8%9b%8b%e5%a0%a1-%e5%a5%97%e9%a4%9020221115-pc.jpg', 'Peanut Butter Cheese Egg Burger Individual Combo', '花生起司蛋堡x1經典熱奶茶(小)x1', 8),
(39, '吮指嫩雞蛋捲餅套餐', 85, 'https://kfcoosfs.kfcclub.com.tw/%e5%90%ae%e6%8c%87%e5%ab%a9%e9%9b%9e%e8%9b%8b%e6%8d%b2%e9%a4%85-%e5%a5%97%e9%a4%9020221115-pc.jpg', 'Chicken & Egg Twister Individual Combo', '吮指嫩雞蛋捲餅x1經典熱奶茶(小)x1)', 8),
(40, '花生吮指嫩雞蛋堡', 60, 'https://kfcoosfs.kfcclub.com.tw/%e8%8a%b1%e7%94%9f%e5%90%ae%e6%8c%87%e5%ab%a9%e9%9b%9e%e8%9b%8b%e5%a0%a120221115-pc.jpg', 'Peanut Chicken Egg Burger', '花生吮指嫩雞蛋堡x1', 9),
(41, '花生肉鬆嫩雞蛋堡', 60, 'https://kfcoosfs.kfcclub.com.tw/%e8%8a%b1%e7%94%9f%e8%82%89%e9%ac%86%e5%ab%a9%e9%9b%9e%e8%9b%8b%e5%a0%a120221115-pc.jpg', 'Peanut Chicken & Meat Floss Burger', '花生肉鬆嫩雞蛋堡x1', 9),
(42, '吮指嫩雞蛋堡', 50, 'https://kfcoosfs.kfcclub.com.tw/%e5%90%ae%e6%8c%87%e5%ab%a9%e9%9b%9e%e8%9b%8b%e5%a0%a1-pc.jpg', 'Chicken Fillet & Egg Burger Combo', '吮指嫩雞蛋堡X1', 9),
(43, '花生起司蛋堡', 35, 'https://kfcoosfs.kfcclub.com.tw/%e8%8a%b1%e7%94%9f%e8%b5%b7%e5%8f%b8%e8%9b%8b%e5%a0%a120221115-pc.jpg', 'Peanut Butter Cheese Egg Burger', '花生起司蛋堡x1', 9),
(44, '吮指嫩雞蛋捲餅', 66, 'https://kfcoosfs.kfcclub.com.tw/%e5%90%ae%e6%8c%87%e5%ab%a9%e9%9b%9e%e8%9b%8b%e6%8d%b2%e9%a4%8520221115-pc.jpg', 'Chicken & Egg Twister', '吮指嫩雞蛋捲餅x1', 9),
(45, '雙層咔啦雞腿堡', 99, 'https://kfcoosfs.kfcclub.com.tw/%e9%9b%99%e5%b1%a4%e5%92%94%e5%95%a6%e9%9b%9e%e8%85%bf%e5%a0%a1-20230721-pc.jpg', 'Zinger stacker burger', '雙層咔啦雞腿堡 *1', 10),
(46, '海陸咔啦脆雞Q蝦堡', 89, 'https://kfcoosfs.kfcclub.com.tw/%e6%b5%b7%e9%99%b8%e5%a0%a1%e5%96%ae%e9%bb%9e20230417-pc.jpg', 'Surf and Turf Shrimp Burger', '海陸咔啦脆雞Q蝦堡X1', 10),
(47, '剝皮辣椒紙包雞', 148, 'https://kfcoosfs.kfcclub.com.tw/%e5%89%9d%e7%9a%ae%e8%be%a3%e6%a4%92%e7%b4%99%e5%8c%85%e9%9b%9e-%e5%96%ae%e9%bb%9e-20231019-pc.jpg', 'Peeled chili pepper Foilicious ALC', '剝皮辣椒紙包雞', 10),
(48, '美式煙燻咔脆雞堡', 99, 'https://kfcoosfs.kfcclub.com.tw/%e7%be%8e%e5%bc%8f%e7%85%99%e7%87%bb%e5%92%94%e8%84%86%e9%9b%9e%e5%a0%a120230208-pc.jpg', 'Smoked Crispy Chincken Burger', '美式煙燻咔脆雞堡*1', 10),
(49, '青花椒香麻咔啦雞腿堡', 125, 'https://kfcoosfs.kfcclub.com.tw/%e9%9d%92%e8%8a%b1%e6%a4%92%e5%8d%a1%e5%95%a6%e9%9b%9e%e8%85%bf%e5%a0%a12022051801-pc.jpg', 'Green Pepper Zinger', '青花椒香麻咔啦雞腿堡x1', 10),
(50, '調皮搗蛋蛋撻禮盒', 288, 'https://kfcoosfs.kfcclub.com.tw/%e8%aa%bf%e7%9a%ae%e6%90%97%e8%9b%8b%e7%a6%ae%e7%9b%9220231023-pc.jpg', 'Century egg tart box', '調皮搗蛋蛋撻x6', 11),
(51, '調皮搗蛋蛋撻雙色禮盒', 264, 'https://kfcoosfs.kfcclub.com.tw/%e8%aa%bf%e7%9a%ae%e6%90%97%e8%9b%8b%e7%a6%ae%e7%9b%92-%e9%9b%99%e8%89%b220231023-pc.jpg', 'Century egg tart mixed box', '原味蛋撻x3調皮搗蛋蛋撻x3', 11),
(52, '調皮搗蛋好時光套餐', 139, 'https://kfcoosfs.kfcclub.com.tw/%e8%aa%bf%e7%9a%ae%e6%90%97%e8%9b%8b-%e5%a5%bd%e6%99%82%e5%85%8920231023-pc.jpg', 'Century egg tart afternoon set', '原味蛋撻x1調皮搗蛋蛋撻x1無糖綠茶(中)x1', 11),
(53, '調皮搗蛋蛋撻', 53, 'https://kfcoosfs.kfcclub.com.tw/%e8%aa%bf%e7%9a%ae%e6%90%97%e8%9b%8b-%e5%96%ae%e9%a1%8620231023-pc.jpg', 'Century egg tart', '調皮搗蛋蛋撻x1', 11),
(54, '原味蛋撻', 45, 'https://kfcoosfs.kfcclub.com.tw/%e5%8e%9f%e5%91%b3%e8%9b%8b%e6%92%bb-pc.jpg', 'Original Egg Tart', '原味蛋撻X1顆', 11),
(55, '芒果百香果冰淇淋大福禮盒8入', 399, 'https://kfcoosfs.kfcclub.com.tw/%e8%8a%92%e6%9e%9c%e7%99%be%e9%a6%99%e6%9e%9c%e5%86%b0%e6%b7%87%e6%b7%8b%e5%a4%a7%e7%a6%8f%e7%a6%ae%e7%9b%928%e5%85%a520230517-pc.jpg', 'Mango & Passion Fruit Ice Cream Mochi Box', '芒果百香果冰淇淋大福x8', 12),
(56, '雙色冰淇淋大福禮盒8入', 375, 'https://kfcoosfs.kfcclub.com.tw/%e9%9b%99%e8%89%b2%e5%86%b0%e6%b7%87%e6%b7%8b%e5%a4%a7%e7%a6%8f%e7%a6%ae%e7%9b%928%e5%85%a520230517-pc.jpg', 'Ice Cream Mochi Mixed Box', '芒果百香果冰淇淋大福x4草莓起司冰淇淋大福x4', 12),
(57, '芒果百香果冰淇淋大福', 50, 'https://kfcoosfs.kfcclub.com.tw/%e8%8a%92%e6%9e%9c%e7%99%be%e9%a6%99%e6%9e%9c%e5%86%b0%e6%b7%87%e6%b7%8b%e5%a4%a7%e7%a6%8f20230517-pc.jpg', 'Mango & Passion Fruit Ice Cream Mochi', '芒果百香果冰淇淋大福x1', 12),
(58, '草苺起司冰淇淋大福禮盒', 399, 'https://kfcoosfs.kfcclub.com.tw/%e8%8d%89%e8%8b%ba%e8%b5%b7%e5%8f%b8%e5%86%b0%e6%b7%87%e6%b7%8b%e5%a4%a7%e7%a6%8f%e7%a6%ae%e7%9b%92%ef%bc%9a%e4%b8%ad%e7%93%a6%e6%a5%9e%e7%9b%9220220518-pc.jpg', 'Strawberry cheese ice cream mochi box', '草苺起司冰淇淋大福8入禮盒組', 12),
(59, '草苺起司冰淇淋大福', 50, 'https://kfcoosfs.kfcclub.com.tw/%e8%8d%89%e8%8e%93%e8%b5%b7%e5%8f%b8%e5%86%b0%e6%b7%87%e6%b7%8b%e5%a4%a7%e7%a6%8f-%e5%96%ae%e9%bb%9e-20221024-pc.jpg', 'Strawberry cheese ice cream mochi', '草苺起司冰淇淋大福X1', 12),
(60, '金黃比司吉', 59, 'https://kfcoosfs.kfcclub.com.tw/%e6%af%94%e5%8f%b8%e5%90%89%2b%e7%99%bd%e7%9b%a420231127-pc.jpg', 'Japanese Biscuit', '比司吉x1', 12),
(61, '經典玉米', 33, 'https://kfcoosfs.kfcclub.com.tw/%e7%b6%93%e5%85%b8%e7%8e%89%e7%b1%b3-pc.jpg', 'Classic Corn', '經典玉米X1', 12),
(62, '玉米濃湯(小)', 40, 'https://kfcoosfs.kfcclub.com.tw/%e7%8e%89%e7%b1%b3%e6%bf%83%e6%b9%af(%e5%b0%8f)20220421-pc.jpg', 'Corn Soup(247g)', '玉米濃湯(小)X1', 13),
(63, '玉米濃湯(大)', 52, 'https://kfcoosfs.kfcclub.com.tw/%e7%8e%89%e7%b1%b3%e6%bf%83%e6%b9%af(%e5%a4%a7)20220421-pc.jpg', 'Corn Soup(325g)', '玉米濃湯(大)X1', 13),
(64, '冰義式咖啡', 69, 'https://kfcoosfs.kfcclub.com.tw/%e5%86%b0%e7%be%a9%e5%bc%8f%e5%92%96%e5%95%a1-pc.jpg', 'Iced Coffee', '冰義式咖啡X1', 13),
(65, '冰義式拿鐵', 80, 'https://kfcoosfs.kfcclub.com.tw/%e5%86%b0%e7%be%a9%e5%bc%8f%e6%8b%bf%e9%90%b5-pc.jpg', 'Cafe Latte(290g)', '冰義式拿鐵X1', 13),
(66, '熱義式咖啡(小)', 36, 'https://kfcoosfs.kfcclub.com.tw/%e7%86%b1%e7%be%a9%e5%bc%8f%e5%92%96%e5%95%a1(%e5%b0%8f)-pc.jpg', 'Hot Coffee(S)', '熱義式咖啡(小)X1', 13);

-- --------------------------------------------------------

--
-- 資料表結構 `date`
--

CREATE TABLE `date` (
  `date_id` int(10) NOT NULL,
  `date` char(20) NOT NULL,
  `time` char(20) NOT NULL,
  `member_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `date`
--

INSERT INTO `date` (`date_id`, `date`, `time`, `member_id`) VALUES
(3, '2023-12-20', '19:30', 1),
(4, '2023-12-18', '17:20', 1),
(5, '2023-12-27', '15:00', 1),
(6, '2023-12-17', '22:00', 6),
(7, '2023-12-19', '21:20', 6),
(8, '2023-12-27', '08:00', 3),
(9, '2023-12-21', '09:00', 2),
(10, '2023-12-25', '09:00', 3),
(11, '2023-12-20', '12:00', 3),
(12, '2023-12-27', '20:00', 3);

-- --------------------------------------------------------

--
-- 資料表結構 `delivery`
--

CREATE TABLE `delivery` (
  `delivery_id` int(10) NOT NULL,
  `address` char(50) NOT NULL,
  `ways_id` int(10) NOT NULL,
  `member_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `delivery`
--

INSERT INTO `delivery` (`delivery_id`, `address`, `ways_id`, `member_id`) VALUES
(1, '桃園市1', 2, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `meals`
--

CREATE TABLE `meals` (
  `meals_id` int(10) NOT NULL,
  `meals_name` char(50) NOT NULL,
  `meals_price` int(50) NOT NULL,
  `meals_picture` char(200) NOT NULL,
  `cartetype_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `meals`
--

INSERT INTO `meals` (`meals_id`, `meals_name`, `meals_price`, `meals_picture`, `cartetype_id`) VALUES
(1, '青花椒香麻脆雞(辣)', 69, 'https://kfcoosfs.kfcclub.com.tw/%e9%9d%92%e8%8a%b1%e6%a4%92%e9%a6%99%e9%ba%bb%e8%84%86%e9%9b%9e%e5%96%ae%e9%bb%9e20220901-pc.jpg', 1),
(2, '咔啦脆雞(辣)', 69, 'https://kfcoosfs.kfcclub.com.tw/%e5%92%94%e5%95%a6%e8%84%86%e9%9b%9e-(%e4%b8%ad%e8%be%a3)-pc.jpg', 1),
(3, '上校薄脆雞(不辣)', 69, 'https://kfcoosfs.kfcclub.com.tw/%e4%b8%8a%e6%a0%a1%e8%96%84%e8%84%86%e9%9b%9e-pc.jpg', 1),
(4, '原味蛋撻', 45, 'https://kfcoosfs.kfcclub.com.tw/%e5%8e%9f%e5%91%b3%e8%9b%8b%e6%92%bb-pc.jpg', 2),
(5, '調皮搗蛋蛋撻', 53, 'https://kfcoosfs.kfcclub.com.tw/%e8%aa%bf%e7%9a%ae%e6%90%97%e8%9b%8b-%e5%96%ae%e9%a1%8620231023-pc.jpg', 2),
(6, '七喜(中)', 37, 'https://kfcoosfs.kfcclub.com.tw/%e4%b8%83%e5%96%9c(%e4%b8%ad)20220106-pc.jpg', 3),
(7, '百事可樂(中)', 37, 'https://kfcoosfs.kfcclub.com.tw/%e7%99%be%e4%ba%8b%e5%8f%af%e6%a8%8220220105-pc.jpg', 3),
(8, '立頓檸檬風味紅茶(中)', 37, 'https://kfcoosfs.kfcclub.com.tw/%e7%b4%85%e8%8c%b6-20230425-pc.jpg', 3),
(9, '冰無糖綠茶(中)', 37, 'https://kfcoosfs.kfcclub.com.tw/%e5%86%b0%e7%84%a1%e7%b3%96%e8%8c%89%e8%8e%89%e7%b6%a0%e8%8c%b6(%e4%b8%ad)-pc.jpg', 3),
(10, '熱紅茶', 35, 'https://kfcoosfs.kfcclub.com.tw/%e7%86%b1%e7%b4%85%e8%8c%b6-pc.jpg', 3),
(11, '經典熱奶茶(小)', 35, 'https://kfcoosfs.kfcclub.com.tw/%e7%b6%93%e5%85%b8%e7%86%b1%e5%a5%b6%e8%8c%b6(%e5%b0%8f)-pc.jpg', 3),
(12, '熱義式咖啡(小)', 36, 'https://kfcoosfs.kfcclub.com.tw/%e7%86%b1%e7%be%a9%e5%bc%8f%e5%92%96%e5%95%a1(%e5%b0%8f)-pc.jpg', 3),
(13, '經典冰奶茶', 38, 'https://kfcoosfs.kfcclub.com.tw/%e7%b6%93%e5%85%b8%e5%86%b0%e5%a5%b6%e8%8c%b6(%e4%b8%ad)-pc.jpg', 3),
(14, '經典熱奶茶(中)', 38, 'https://kfcoosfs.kfcclub.com.tw/%e7%b6%93%e5%85%b8%e7%86%b1%e5%a5%b6%e8%8c%b6(%e4%b8%ad)-pc.jpg', 3),
(15, '玉米濃湯(小)', 40, 'https://kfcoosfs.kfcclub.com.tw/%e7%8e%89%e7%b1%b3%e6%bf%83%e6%b9%af(%e5%b0%8f)20220421-pc.jpg', 3),
(16, '熱義式咖啡(大)', 49, 'https://kfcoosfs.kfcclub.com.tw/%e7%86%b1%e7%be%a9%e5%bc%8f%e5%92%96%e5%95%a1(%e5%a4%a7)-pc.jpg', 3),
(17, '玉米濃湯(大)', 52, 'https://kfcoosfs.kfcclub.com.tw/%e7%8e%89%e7%b1%b3%e6%bf%83%e6%b9%af(%e5%a4%a7)20220421-pc.jpg', 3),
(18, '冰義式咖啡', 69, 'https://kfcoosfs.kfcclub.com.tw/%e5%86%b0%e7%be%a9%e5%bc%8f%e5%92%96%e5%95%a1-pc.jpg', 3),
(19, '脆薯(中)', 49, 'https://kfcoosfs.kfcclub.com.tw/%e9%a6%99%e9%85%a5%e8%84%86%e8%96%af(%e4%b8%ad)-210726-pc.jpg', 4),
(20, '脆薯(大)', 60, 'https://kfcoosfs.kfcclub.com.tw/%e9%a6%99%e9%85%a5%e8%84%86%e8%96%af(%e5%a4%a7)-210726-pc.jpg', 4);

-- --------------------------------------------------------

--
-- 資料表結構 `mealstype`
--

CREATE TABLE `mealstype` (
  `mealstype_id` int(10) NOT NULL,
  `mealstype_name` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `mealstype`
--

INSERT INTO `mealstype` (`mealstype_id`, `mealstype_name`) VALUES
(1, '個人餐'),
(2, '多人餐'),
(3, '早餐'),
(4, '單點');

-- --------------------------------------------------------

--
-- 資料表結構 `member`
--

CREATE TABLE `member` (
  `member_id` int(10) NOT NULL,
  `member_name` char(50) NOT NULL,
  `member_pwd` char(50) NOT NULL,
  `member_email` char(50) NOT NULL,
  `member_phone` char(20) NOT NULL,
  `gender` char(10) NOT NULL,
  `birthday` date NOT NULL,
  `vpwd` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `member`
--

INSERT INTO `member` (`member_id`, `member_name`, `member_pwd`, `member_email`, `member_phone`, `gender`, `birthday`, `vpwd`) VALUES
(1, 'b1029039', 'b1029039', 'b1029039@cgu.edu.tw', '09xxxxxxxx', '先生', '2003-06-01', NULL),
(2, 'b1029069', 'b1029069', 'b0129069@cgu.edu.tw', '09xxxxxxxx', '先生', '2003-06-02', NULL),
(3, 'b1029006', 'b1029006', 'b1029006@cgu.edu.tw', '09xxxxxxxx', '小姐', '2003-06-03', NULL),
(4, 'b1029029', 'b1029029', 'b1029029@cgu.edu.tw', '09xxxxxxxx', '小姐', '2003-06-04', NULL),
(5, '許', '666666666', 'ray61688@gmail.com', '0966666666', 'male', '2005-09-19', NULL),
(6, 'aef', 'b1029006', 'efe@gmail.com', '0911111111', '小姐', '2009-10-18', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `pickuparea`
--

CREATE TABLE `pickuparea` (
  `pickuparea_id` int(10) NOT NULL,
  `pickuparea_name` char(50) NOT NULL,
  `pickupcity_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `pickuparea`
--

INSERT INTO `pickuparea` (`pickuparea_id`, `pickuparea_name`, `pickupcity_id`) VALUES
(1, '大安區', 1),
(2, '中山區', 1),
(3, '信義區', 1),
(4, '林口區', 2),
(5, '板橋區', 2),
(6, '新莊區', 2),
(7, '八德區', 3),
(8, '桃園區', 3),
(9, '龜山區', 3);

-- --------------------------------------------------------

--
-- 資料表結構 `pickupcity`
--

CREATE TABLE `pickupcity` (
  `pickupcity_id` int(10) NOT NULL,
  `pickupcity_name` char(50) NOT NULL,
  `ways_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `pickupcity`
--

INSERT INTO `pickupcity` (`pickupcity_id`, `pickupcity_name`, `ways_id`) VALUES
(1, '台北市', 1),
(2, '新北市', 1),
(3, '桃園市', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `shoppingcart_id` int(10) NOT NULL,
  `shoppingcart_meals_name` char(50) DEFAULT NULL,
  `shoppingcart_meals_content` char(150) DEFAULT NULL,
  `shoppingcart_meals_price` int(10) NOT NULL,
  `shoppingbag` int(4) DEFAULT NULL,
  `member_id` int(10) NOT NULL,
  `ways_id` int(10) NOT NULL,
  `delivery_id` int(10) DEFAULT NULL,
  `branch_id` int(10) DEFAULT NULL,
  `date_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `shoppingcart`
--

INSERT INTO `shoppingcart` (`shoppingcart_id`, `shoppingcart_meals_name`, `shoppingcart_meals_content`, `shoppingcart_meals_price`, `shoppingbag`, `member_id`, `ways_id`, `delivery_id`, `branch_id`, `date_id`) VALUES
(116, '雙層咔啦雞腿堡 XL餐', '雙層咔啦雞腿堡 x 1', 260, 1, 3, 1, NULL, 4, 12),
(117, '雙層咔啦雞腿堡 XL餐', '咔啦脆雞 x 1', 260, 1, 3, 1, NULL, 4, 12),
(118, '雙層咔啦雞腿堡 XL餐', '香酥脆薯(中) x 1', 260, 1, 3, 1, NULL, 4, 12),
(119, '雙層咔啦雞腿堡 XL餐', '原味蛋撻 x 1', 260, 1, 3, 1, NULL, 4, 12),
(120, '雙層咔啦雞腿堡 XL餐', '可樂(中) x 1', 260, 1, 3, 1, NULL, 4, 12),
(121, '雙層咔啦雞腿堡 XL餐', '', 260, 1, 3, 1, NULL, 4, 12);

-- --------------------------------------------------------

--
-- 資料表結構 `subdivision`
--

CREATE TABLE `subdivision` (
  `subdivision_id` int(10) NOT NULL,
  `subdivision_name` char(10) NOT NULL,
  `mealstype_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `subdivision`
--

INSERT INTO `subdivision` (`subdivision_id`, `subdivision_name`, `mealstype_id`) VALUES
(1, 'XL超豪肯! 餐', 1),
(2, 'L絕配餐', 1),
(3, 'M經典餐', 1),
(4, 'S雞勵餐', 1),
(5, '上校私廚沙拉', 1),
(6, '2-4人歡聚餐', 2),
(7, '5-7人歡聚餐', 2),
(8, '早餐套餐', 3),
(9, '早餐單點', 3),
(10, '單點主餐', 4),
(11, '蛋塔', 4),
(12, '附餐/點心', 4),
(13, '飲料/湯品', 4);

-- --------------------------------------------------------

--
-- 資料表結構 `supervisor`
--

CREATE TABLE `supervisor` (
  `supervisor_id` char(10) NOT NULL,
  `supervisor_account` char(50) NOT NULL,
  `supervisor_pwd` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `ways`
--

CREATE TABLE `ways` (
  `ways_id` int(10) NOT NULL,
  `ways_name` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `ways`
--

INSERT INTO `ways` (`ways_id`, `ways_name`) VALUES
(1, '預定快取'),
(2, '專業外送');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_id`),
  ADD KEY `pickuparea_id` (`pickuparea_id`);

--
-- 資料表索引 `cartetype`
--
ALTER TABLE `cartetype`
  ADD PRIMARY KEY (`cartetype_id`);

--
-- 資料表索引 `combination`
--
ALTER TABLE `combination`
  ADD PRIMARY KEY (`combo_id`,`meals_id`),
  ADD KEY `cartetype_id` (`cartetype_id`),
  ADD KEY `meals_id` (`meals_id`);

--
-- 資料表索引 `combo`
--
ALTER TABLE `combo`
  ADD PRIMARY KEY (`combo_id`),
  ADD KEY `subdivision_id` (`subdivision_id`);

--
-- 資料表索引 `date`
--
ALTER TABLE `date`
  ADD PRIMARY KEY (`date_id`);

--
-- 資料表索引 `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`delivery_id`),
  ADD KEY `ways_id` (`ways_id`);

--
-- 資料表索引 `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`meals_id`),
  ADD KEY `cartetype_id` (`cartetype_id`);

--
-- 資料表索引 `mealstype`
--
ALTER TABLE `mealstype`
  ADD PRIMARY KEY (`mealstype_id`);

--
-- 資料表索引 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- 資料表索引 `pickuparea`
--
ALTER TABLE `pickuparea`
  ADD PRIMARY KEY (`pickuparea_id`),
  ADD KEY `pickupcity_id` (`pickupcity_id`);

--
-- 資料表索引 `pickupcity`
--
ALTER TABLE `pickupcity`
  ADD PRIMARY KEY (`pickupcity_id`),
  ADD KEY `ways_id` (`ways_id`);

--
-- 資料表索引 `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`shoppingcart_id`),
  ADD KEY `delivery_id` (`delivery_id`),
  ADD KEY `branch_id` (`branch_id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `ways_id` (`ways_id`),
  ADD KEY `shoppingcart_ibfk_2` (`date_id`);

--
-- 資料表索引 `subdivision`
--
ALTER TABLE `subdivision`
  ADD PRIMARY KEY (`subdivision_id`),
  ADD KEY `mealstype_id` (`mealstype_id`);

--
-- 資料表索引 `ways`
--
ALTER TABLE `ways`
  ADD PRIMARY KEY (`ways_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `branch`
--
ALTER TABLE `branch`
  MODIFY `branch_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cartetype`
--
ALTER TABLE `cartetype`
  MODIFY `cartetype_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `combo`
--
ALTER TABLE `combo`
  MODIFY `combo_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `date`
--
ALTER TABLE `date`
  MODIFY `date_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `delivery`
--
ALTER TABLE `delivery`
  MODIFY `delivery_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `meals`
--
ALTER TABLE `meals`
  MODIFY `meals_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `mealstype`
--
ALTER TABLE `mealstype`
  MODIFY `mealstype_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pickuparea`
--
ALTER TABLE `pickuparea`
  MODIFY `pickuparea_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pickupcity`
--
ALTER TABLE `pickupcity`
  MODIFY `pickupcity_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `shoppingcart`
--
ALTER TABLE `shoppingcart`
  MODIFY `shoppingcart_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `subdivision`
--
ALTER TABLE `subdivision`
  MODIFY `subdivision_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `ways`
--
ALTER TABLE `ways`
  MODIFY `ways_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `branch`
--
ALTER TABLE `branch`
  ADD CONSTRAINT `branch_ibfk_1` FOREIGN KEY (`pickuparea_id`) REFERENCES `pickuparea` (`pickuparea_id`);

--
-- 資料表的限制式 `combination`
--
ALTER TABLE `combination`
  ADD CONSTRAINT `combination_ibfk_1` FOREIGN KEY (`cartetype_id`) REFERENCES `cartetype` (`cartetype_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `combination_ibfk_3` FOREIGN KEY (`meals_id`) REFERENCES `meals` (`meals_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `combination_ibfk_4` FOREIGN KEY (`combo_id`) REFERENCES `combo` (`combo_id`);

--
-- 資料表的限制式 `combo`
--
ALTER TABLE `combo`
  ADD CONSTRAINT `combo_ibfk_1` FOREIGN KEY (`subdivision_id`) REFERENCES `subdivision` (`subdivision_id`);

--
-- 資料表的限制式 `delivery`
--
ALTER TABLE `delivery`
  ADD CONSTRAINT `delivery_ibfk_1` FOREIGN KEY (`ways_id`) REFERENCES `ways` (`ways_id`);

--
-- 資料表的限制式 `meals`
--
ALTER TABLE `meals`
  ADD CONSTRAINT `meals_ibfk_1` FOREIGN KEY (`cartetype_id`) REFERENCES `cartetype` (`cartetype_id`);

--
-- 資料表的限制式 `pickuparea`
--
ALTER TABLE `pickuparea`
  ADD CONSTRAINT `pickuparea_ibfk_1` FOREIGN KEY (`pickupcity_id`) REFERENCES `pickupcity` (`pickupcity_id`);

--
-- 資料表的限制式 `pickupcity`
--
ALTER TABLE `pickupcity`
  ADD CONSTRAINT `pickupcity_ibfk_1` FOREIGN KEY (`ways_id`) REFERENCES `ways` (`ways_id`);

--
-- 資料表的限制式 `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD CONSTRAINT `shoppingcart_ibfk_1` FOREIGN KEY (`delivery_id`) REFERENCES `delivery` (`delivery_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `shoppingcart_ibfk_2` FOREIGN KEY (`date_id`) REFERENCES `date` (`date_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `shoppingcart_ibfk_3` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`branch_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `shoppingcart_ibfk_4` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`),
  ADD CONSTRAINT `shoppingcart_ibfk_5` FOREIGN KEY (`ways_id`) REFERENCES `ways` (`ways_id`),
  ADD CONSTRAINT `shoppingcart_ibfk_6` FOREIGN KEY (`date_id`) REFERENCES `date` (`date_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `subdivision`
--
ALTER TABLE `subdivision`
  ADD CONSTRAINT `subdivision_ibfk_1` FOREIGN KEY (`mealstype_id`) REFERENCES `mealstype` (`mealstype_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
