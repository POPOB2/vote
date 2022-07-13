-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-07-13 17:44:26
-- 伺服器版本： 10.4.24-MariaDB
-- PHP 版本： 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `vote`
--

-- --------------------------------------------------------

--
-- 資料表結構 `admins`
--

CREATE TABLE `admins` (
  `id` int(11) UNSIGNED NOT NULL,
  `acc` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pw` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `gender` tinyint(1) UNSIGNED NOT NULL,
  `addr` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `education` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reg_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `logs`
--

CREATE TABLE `logs` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `subject_id` int(11) UNSIGNED NOT NULL,
  `option_id` int(11) UNSIGNED NOT NULL,
  `vote_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `logs`
--

INSERT INTO `logs` (`id`, `user_id`, `subject_id`, `option_id`, `vote_time`) VALUES
(1, 0, 2, 8, '2022-06-23 10:46:56'),
(2, 0, 2, 10, '2022-06-23 10:46:56'),
(3, 0, 6, 28, '2022-06-23 10:47:14'),
(4, 0, 6, 29, '2022-06-23 10:47:14'),
(5, 0, 1, 6, '2022-06-23 10:50:56'),
(6, 0, 1, 3, '2022-06-23 10:51:03'),
(7, 0, 1, 3, '2022-06-23 10:51:30'),
(8, 0, 1, 2, '2022-06-23 12:06:02'),
(9, 0, 1, 4, '2022-06-25 06:37:05'),
(10, 0, 4, 18, '2022-06-25 13:42:35'),
(11, 0, 6, 27, '2022-06-25 13:43:30'),
(12, 0, 1, 1, '2022-06-26 05:37:00'),
(13, 0, 2, 8, '2022-07-02 08:50:20'),
(14, 0, 2, 9, '2022-07-02 08:50:20'),
(15, 0, 2, 10, '2022-07-02 08:50:20'),
(16, 0, 2, 9, '2022-07-02 08:50:35'),
(17, 0, 2, 10, '2022-07-02 08:50:35'),
(18, 0, 2, 11, '2022-07-02 08:50:35'),
(19, 0, 1, 2, '2022-07-03 11:51:51'),
(20, 0, 1, 6, '2022-07-03 11:51:56'),
(21, 0, 12, 51, '2022-07-07 12:47:31'),
(22, 0, 1, 5, '2022-07-08 15:17:30'),
(23, 0, 1, 4, '2022-07-09 07:14:33'),
(24, 0, 1, 6, '2022-07-09 07:14:37'),
(25, 0, 1, 3, '2022-07-09 07:25:21'),
(26, 0, 2, 11, '2022-07-09 07:57:59'),
(27, 0, 2, 11, '2022-07-09 07:58:02'),
(28, 0, 2, 11, '2022-07-09 10:54:54'),
(29, 0, 1, 6, '2022-07-09 11:37:09'),
(30, 0, 1, 3, '2022-07-09 11:41:05'),
(31, 2, 0, 0, '2022-07-09 11:48:20'),
(32, 0, 2, 10, '2022-07-09 11:48:20'),
(33, 0, 1, 5, '2022-07-09 13:09:04'),
(34, 2, 0, 0, '2022-07-09 13:09:33'),
(35, 0, 1, 5, '2022-07-09 13:09:33'),
(36, 2, 0, 0, '2022-07-09 13:09:35'),
(37, 0, 1, 5, '2022-07-09 13:09:35'),
(38, 2, 0, 0, '2022-07-09 13:09:38'),
(39, 0, 1, 6, '2022-07-09 13:09:38'),
(40, 2, 0, 0, '2022-07-09 13:12:31'),
(41, 0, 4, 19, '2022-07-09 13:12:31'),
(42, 2, 0, 0, '2022-07-09 13:19:34'),
(43, 0, 2, 11, '2022-07-09 13:19:34'),
(44, 2, 0, 0, '2022-07-09 14:02:37'),
(45, 0, 4, 19, '2022-07-09 14:02:37'),
(46, 2, 0, 0, '2022-07-09 14:02:40'),
(47, 0, 4, 19, '2022-07-09 14:02:41'),
(48, 2, 0, 0, '2022-07-09 14:02:43'),
(49, 0, 4, 19, '2022-07-09 14:02:43'),
(50, 2, 2, 7, '2022-07-09 14:17:02'),
(51, 0, 4, 19, '2022-07-09 14:17:13'),
(52, 0, 4, 18, '2022-07-09 14:17:16'),
(53, 2, 1, 5, '2022-07-09 14:17:54'),
(54, 2, 10, 41, '2022-07-10 02:22:59'),
(55, 5, 1, 3, '2022-07-10 04:09:33'),
(56, 5, 4, 19, '2022-07-10 04:14:10'),
(57, 5, 10, 42, '2022-07-10 04:14:17'),
(58, 5, 2, 11, '2022-07-10 04:28:31'),
(59, 9, 15, 60, '2022-07-10 07:35:15'),
(60, 9, 17, 64, '2022-07-10 07:40:16'),
(61, 9, 17, 65, '2022-07-10 07:40:16'),
(62, 9, 17, 66, '2022-07-10 07:40:16'),
(63, 9, 17, 67, '2022-07-10 07:40:16'),
(64, 9, 17, 68, '2022-07-10 07:40:16'),
(65, 9, 1, 1, '2022-07-10 07:41:21');

-- --------------------------------------------------------

--
-- 資料表結構 `options`
--

CREATE TABLE `options` (
  `id` int(11) UNSIGNED NOT NULL,
  `option` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int(11) NOT NULL,
  `total` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `options`
--

INSERT INTO `options` (`id`, `option`, `subject_id`, `total`) VALUES
(1, '假洨洨', 1, 2),
(2, '綠咖哩', 1, 2),
(3, '炸蝦烏龍麵', 1, 5),
(4, '牛雜湯', 1, 3),
(5, '壽喜燒', 1, 5),
(6, '老四川', 1, 7),
(7, '蘆洲', 2, 1),
(8, '泰山', 2, 2),
(9, '納美克星球', 2, 2),
(10, '木衛二_歐羅巴', 2, 4),
(11, '於是卡茲停止了思考', 2, 6),
(16, '可是我不會唱歌', 4, 0),
(17, '桃園下交流道', 4, 0),
(18, '左轉半套', 4, 2),
(19, '右轉全套', 4, 6),
(20, '睡死了', 5, 0),
(21, '進入彌留狀態', 5, 0),
(22, '迴光返照', 5, 0),
(23, '聽說有大地震', 5, 0),
(24, '但我沒有感覺', 5, 0),
(25, '睡得好爽喔', 5, 0),
(26, '彬彬', 6, 0),
(27, '阿傑', 6, 1),
(28, '阿偉', 6, 1),
(29, '我家很大', 6, 1),
(30, '舒潔', 7, 0),
(31, '倍潔雅', 7, 0),
(32, '生活市集', 7, 0),
(33, '用水取代石油', 8, 0),
(34, '美江五倍鑽石', 8, 0),
(35, '水晶躍傳', 8, 0),
(36, '習維尼持續騷擾', 9, 0),
(37, '安倍表示頭痛', 9, 0),
(38, '美國爸爸表示軍費好高', 9, 0),
(39, '俄羅斯也想來玩玩', 9, 0),
(40, '船長', 10, 0),
(41, '醫生', 10, 1),
(42, '安全官', 10, 1),
(43, '工程師', 10, 0),
(44, '機修工', 10, 0),
(45, '助手', 10, 0),
(46, '基輔', 11, 0),
(47, '伊拉克', 11, 0),
(48, '緬甸', 11, 0),
(49, '北韓', 11, 0),
(50, '西藏', 11, 0),
(51, '奶油派', 12, 1),
(52, '生煎', 12, 0),
(53, '親子丼', 12, 0),
(54, '想', 13, 0),
(55, '不想', 13, 0),
(56, '我討厭大象1', 14, 0),
(57, '我討厭大象1', 14, 0),
(58, '我討厭大象2', 14, 0),
(59, '我討厭大象3', 14, 0),
(60, '開心', 15, 1),
(61, '不開心', 15, 0),
(62, '無言', 15, 0),
(63, '怎麼第一波回去的人沒有確診', 15, 0),
(64, 'qwe', 17, 1),
(65, 'qwe', 17, 1),
(66, 'ewq', 17, 1),
(67, 'qweqwe', 17, 1),
(68, 'qwe', 17, 1),
(69, 'qweq', 17, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) UNSIGNED NOT NULL,
  `subject` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `multiple` tinyint(1) NOT NULL DEFAULT 0,
  `mulit_limit` tinyint(2) NOT NULL DEFAULT 1,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `total` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `subjects`
--

INSERT INTO `subjects` (`id`, `subject`, `type_id`, `multiple`, `mulit_limit`, `start`, `end`, `total`) VALUES
(1, '金眠甲沙小', 2, 0, 1, '2022-06-19', '2022-06-29', 24),
(2, '我是誰我在哪', 6, 1, 1, '2022-06-19', '2022-06-29', 11),
(4, '今晚去哪嗨', 1, 0, 1, '2022-06-19', '2022-06-29', 8),
(5, '睡到11點的你有發現什麼', 2, 1, 1, '2022-06-20', '2022-06-08', 0),
(6, '台北市長候選人你會選誰', 3, 1, 1, '2022-06-20', '2022-06-30', 3),
(7, '抽取式衛生紙', 2, 1, 1, '2022-07-07', '2022-07-17', 0),
(8, '未來科技', 5, 0, 1, '2022-07-07', '2022-07-17', 0),
(9, '台海危機', 3, 0, 1, '2022-07-07', '2022-07-17', 0),
(10, '潛淵症', 1, 0, 1, '2022-07-07', '2022-07-17', 2),
(11, '想出國去哪嗨', 6, 0, 1, '2022-07-07', '2022-07-17', 0),
(12, '配菜', 1, 0, 1, '2022-07-07', '2022-07-17', 1),
(13, '想不想回去上實體課', 2, 0, 1, '2022-07-07', '2022-07-17', 0),
(14, '嗚嗚PHP', 1, 0, 1, '2022-07-09', '2022-07-19', 0),
(15, '明天就要回泰山惹', 1, 0, 1, '2022-07-10', '2022-07-20', 1),
(16, 'qwe', 1, 0, 1, '2022-07-10', '2022-07-20', 0),
(17, 'qweeee', 1, 1, 1, '2022-07-10', '2022-07-20', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `types`
--

CREATE TABLE `types` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `types`
--

INSERT INTO `types` (`id`, `name`) VALUES
(1, '素人'),
(2, '生活'),
(3, '政治'),
(4, '經濟'),
(5, '科技'),
(6, '旅遊'),
(7, '');

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `acc` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '帳號',
  `pw` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密碼',
  `name` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名稱',
  `birthday` date NOT NULL COMMENT '生日',
  `addr` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '住址',
  `email` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '電子信箱',
  `passnote` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密碼提示'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`id`, `acc`, `pw`, `name`, `birthday`, `addr`, `email`, `passnote`) VALUES
(9, 'q', '7694f4a66316e53c8cdd9d9954bd611d', 'q', '2022-07-02', 'q', 'q@q.q', 'q');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
