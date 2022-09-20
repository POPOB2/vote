-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-09-20 05:59:31
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
(65, 9, 1, 1, '2022-07-10 07:41:21'),
(66, 13, 9, 37, '2022-07-14 05:50:46'),
(67, 14, 7, 30, '2022-07-14 15:57:24'),
(68, 14, 7, 31, '2022-07-14 15:57:24'),
(69, 14, 7, 32, '2022-07-14 15:57:24'),
(70, 14, 8, 34, '2022-07-14 15:57:42'),
(71, 14, 9, 36, '2022-07-14 16:00:51'),
(72, 14, 10, 40, '2022-07-14 16:01:25'),
(73, 14, 11, 49, '2022-07-14 16:01:53'),
(74, 14, 12, 51, '2022-07-14 16:04:46'),
(75, 14, 13, 55, '2022-07-14 16:04:55'),
(76, 14, 14, 58, '2022-07-14 16:05:05'),
(77, 14, 15, 63, '2022-07-14 16:05:16'),
(78, 14, 20, 75, '2022-07-14 17:06:30'),
(79, 15, 5, 23, '2022-07-15 00:20:01'),
(80, 13, 2, 11, '2022-07-15 00:31:25'),
(81, 13, 20, 80, '2022-07-15 00:32:10'),
(82, 16, 12, 83, '2022-09-13 12:09:55');

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
(1, '好吃的', 1, 2),
(2, '綠咖哩', 1, 2),
(3, '炸蝦烏龍麵', 1, 5),
(4, '牛雜湯', 1, 3),
(5, '壽喜燒', 1, 5),
(6, '老四川', 1, 7),
(7, '蘆洲', 2, 1),
(8, '泰山', 2, 2),
(9, '納美克星球', 2, 2),
(10, '木衛二_歐羅巴', 2, 4),
(11, '於是卡茲停止了思考', 2, 7),
(20, '睡到翻過去', 5, 0),
(21, '進入無我狀態', 5, 0),
(22, '聽說有大地震', 5, 0),
(23, '貝爾托特的睡姿', 5, 1),
(24, '看來今天是雪天', 5, 0),
(25, '不不今天是晴天', 5, 0),
(26, '彬彬', 6, 0),
(27, '阿傑', 6, 1),
(28, '阿偉', 6, 1),
(29, '我家很大', 6, 1),
(30, '舒潔', 7, 1),
(31, '倍潔雅', 7, 1),
(32, '生活市集', 7, 1),
(33, '水取代石油', 8, 0),
(34, '牛屁炸藥', 8, 1),
(35, '貓咪吐司永動機', 8, 0),
(36, 'Larimichthys polyactis', 9, 1),
(37, 'Cyprinus rubrofuscus', 9, 1),
(38, 'Alaska pollock', 9, 0),
(39, 'Acipenser gueldenstaedtii', 9, 0),
(40, '船長', 10, 1),
(41, '醫生', 10, 1),
(42, '安全官', 10, 1),
(43, '工程師', 10, 0),
(44, '機修工', 10, 0),
(45, '助手', 10, 0),
(46, '基輔', 11, 0),
(47, '伊拉克', 11, 0),
(48, '緬甸', 11, 0),
(49, '北韓', 11, 1),
(50, '西藏', 11, 0),
(51, '奶油派', 12, 2),
(52, '韓式泡菜', 12, 0),
(53, '親子丼', 12, 0),
(54, '想', 13, 0),
(55, '不想', 13, 1),
(56, '我看到大象就笑了', 14, 0),
(57, '我喜歡大象', 14, 0),
(58, '我對大象沒看法', 14, 1),
(59, '我討厭大象', 14, 0),
(60, '開心', 15, 1),
(61, '不開心', 15, 0),
(62, '無感', 15, 0),
(63, '蛤阿', 15, 1),
(75, '貓貓', 20, 1),
(76, '狗狗', 20, 0),
(77, '勞贖', 20, 0),
(78, '會飛的貓', 20, 0),
(79, '我全都要', 20, 0),
(80, '奶油派 ( X', 20, 1),
(81, '台式泡菜', 12, 0),
(82, '生煎', 12, 0),
(83, '瑞典鯡魚罐頭生魚片', 12, 1),
(84, '媽啦樓上的太噁了吧', 12, 0);

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
  `total` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `closure` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `subjects`
--

INSERT INTO `subjects` (`id`, `subject`, `type_id`, `multiple`, `mulit_limit`, `start`, `end`, `total`, `closure`) VALUES
(1, '金眠甲沙小', 2, 0, 1, '2022-06-19', '2022-06-29', 24, 0),
(2, '我是誰我在哪', 6, 1, 1, '2022-06-19', '2022-06-29', 12, 1),
(5, '睡到11點的你有發現什麼', 2, 1, 1, '2022-06-20', '2022-06-08', 1, 1),
(6, '台北市長候選人你會選誰', 3, 1, 1, '2022-06-20', '2022-06-30', 3, 1),
(7, '抽取式衛生紙', 2, 1, 1, '2022-07-07', '2022-07-17', 1, 1),
(8, '未來科技', 5, 0, 1, '2022-07-07', '2022-07-17', 1, 1),
(9, '台海危機看法', 3, 0, 1, '2022-07-07', '2022-07-17', 2, 1),
(10, '潛淵症', 1, 0, 1, '2022-07-07', '2022-07-17', 3, 1),
(11, '想出國去哪嗨', 6, 0, 1, '2022-07-07', '2022-07-17', 1, 1),
(12, '配菜', 1, 0, 1, '2022-07-07', '2022-07-17', 3, 1),
(13, '想不想回去上實體課', 2, 0, 1, '2022-07-07', '2022-07-17', 1, 1),
(14, 'PHP', 1, 0, 1, '2022-07-09', '2022-07-19', 1, 1),
(15, '明天就要恢復實體課惹', 1, 0, 1, '2022-07-10', '2022-07-20', 2, 1),
(20, '選什麼餡料的派', 2, 0, 1, '2022-07-15', '2022-07-25', 2, 1);

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
(2, '生活'),
(3, '政治'),
(4, '經濟'),
(5, '科技'),
(6, '旅遊');

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
(13, 'y', '415290769594460e2e485922904f345d', 'y', '2022-06-30', 'y', 'y@y.y', 'yyyyyyyyyy'),
(14, 'asdcx105', '4d688909f80dc8d1e3b463af98005232', '最棒的黑綸', '1996-09-06', '慶記市', 'asdwx103@gmail.com', '最棒的人的名字'),
(15, 'b', '92eb5ffee6ae2fec3ad71c777531578f', 'b', '2022-07-01', 'b', 'b@b.b', 'b'),
(16, 'q', '7694f4a66316e53c8cdd9d9954bd611d', 'q', '2022-08-12', 'q', 'q@q.q', 'q'),
(17, 'w', 'f1290186a5d0b1ceab27f4e77c0c5d68', 'w', '2022-09-08', 'w', 'w@w.w', 'w');

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
