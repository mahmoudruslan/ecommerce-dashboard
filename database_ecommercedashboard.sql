-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 16 يناير 2023 الساعة 13:00
-- إصدار الخادم: 10.3.37-MariaDB-log-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `solofzei_ecommercedashboard`
--

-- --------------------------------------------------------

--
-- بنية الجدول `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(191) NOT NULL,
  `target` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `ads`
--

INSERT INTO `ads` (`id`, `photo`, `target`, `created_at`, `updated_at`) VALUES
(1, 'JKd1671919737.jpeg', 'https://github.com/', '2022-12-19 04:22:06', '2022-12-25 03:08:57'),
(3, 'github3.png', 'https://github.com/', '2022-12-19 04:22:06', '2022-12-19 04:22:06');

-- --------------------------------------------------------

--
-- بنية الجدول `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `carts`
--

INSERT INTO `carts` (`id`, `customer_id`, `created_at`, `updated_at`) VALUES
(6, 102, '2022-12-24 22:44:40', '2022-12-24 22:44:40'),
(9, 104, '2023-01-03 21:56:28', '2023-01-03 21:56:28'),
(10, 1, '2023-01-03 22:09:48', '2023-01-03 22:09:48');

-- --------------------------------------------------------

--
-- بنية الجدول `cart_products`
--

CREATE TABLE `cart_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cart_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `cart_products`
--

INSERT INTO `cart_products` (`id`, `cart_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(4, 1, 46, 2, '2022-12-19 04:49:30', '2022-12-19 04:49:31'),
(5, 2, 6, 2, '2022-12-19 08:38:47', '2022-12-19 08:38:47'),
(6, 3, 9, 2, '2022-12-19 08:40:29', '2022-12-19 08:40:29'),
(7, 4, 46, 1, '2022-12-19 23:23:07', '2022-12-19 23:23:07'),
(31, 11, 59, 4, '2023-01-04 01:29:47', '2023-01-04 20:08:30'),
(9, 5, 83, 2, '2022-12-24 22:20:20', '2022-12-24 22:20:55'),
(20, 7, 68, 1, '2022-12-25 03:10:27', '2022-12-25 03:10:27'),
(21, 7, 46, 5, '2022-12-25 03:10:39', '2022-12-25 03:10:40'),
(22, 7, 49, 1, '2022-12-25 03:10:40', '2022-12-25 03:10:40'),
(23, 7, 19, 2, '2022-12-25 03:20:02', '2022-12-25 03:20:03'),
(24, 8, 59, 2, '2022-12-25 15:33:32', '2022-12-25 15:33:34'),
(25, 7, 3, 2, '2023-01-01 22:58:11', '2023-01-01 22:58:11'),
(26, 7, 59, 7, '2023-01-03 21:04:31', '2023-01-03 21:31:20'),
(27, 9, 93, 3, '2023-01-03 21:56:28', '2023-01-03 21:56:36'),
(28, 9, 40, 1, '2023-01-03 21:56:30', '2023-01-03 21:56:30'),
(29, 9, 83, 1, '2023-01-03 21:56:32', '2023-01-03 21:56:32'),
(32, 11, 1, 1, '2023-01-04 02:59:19', '2023-01-04 02:59:19'),
(34, 9, 101, 2, '2023-01-07 00:11:15', '2023-01-07 00:11:16'),
(45, 12, 7, 1, '2023-01-07 00:34:22', '2023-01-07 00:34:22'),
(46, 13, 7, 1, '2023-01-07 00:42:59', '2023-01-07 00:42:59'),
(47, 14, 7, 1, '2023-01-07 00:43:10', '2023-01-07 00:43:10'),
(48, 15, 105, 38, '2023-01-07 01:56:55', '2023-01-07 01:59:00'),
(49, 16, 106, 5, '2023-01-07 02:23:49', '2023-01-07 02:23:51'),
(50, 16, 105, 5, '2023-01-07 02:23:52', '2023-01-07 02:24:07'),
(52, 17, 106, 2, '2023-01-07 02:37:42', '2023-01-07 02:37:42'),
(53, 18, 115, 1, '2023-01-07 02:54:48', '2023-01-07 02:54:48'),
(54, 18, 114, 1, '2023-01-07 02:54:48', '2023-01-07 02:54:48'),
(55, 18, 113, 1, '2023-01-07 02:54:48', '2023-01-07 02:54:48'),
(56, 18, 112, 1, '2023-01-07 02:54:49', '2023-01-07 02:54:49'),
(57, 18, 111, 1, '2023-01-07 02:54:49', '2023-01-07 02:54:49'),
(58, 18, 110, 1, '2023-01-07 02:54:51', '2023-01-07 02:54:51'),
(59, 18, 109, 1, '2023-01-07 02:54:52', '2023-01-07 02:54:52'),
(60, 18, 108, 1, '2023-01-07 02:54:52', '2023-01-07 02:54:52'),
(61, 18, 107, 1, '2023-01-07 02:54:53', '2023-01-07 02:54:53'),
(62, 18, 106, 1, '2023-01-07 02:54:55', '2023-01-07 02:54:55'),
(63, 18, 105, 1, '2023-01-07 02:54:56', '2023-01-07 02:54:56'),
(64, 19, 117, 1, '2023-01-07 04:32:20', '2023-01-07 04:32:20'),
(65, 19, 119, 1, '2023-01-07 04:32:20', '2023-01-07 04:32:20'),
(71, 21, 57, 2, '2023-01-08 04:51:34', '2023-01-08 04:51:35'),
(67, 20, 120, 1, '2023-01-08 03:59:10', '2023-01-08 04:00:09'),
(68, 20, 119, 2, '2023-01-08 03:59:10', '2023-01-08 04:00:13'),
(69, 20, 121, 1, '2023-01-08 03:59:11', '2023-01-08 03:59:11'),
(72, 21, 96, 1, '2023-01-08 04:51:35', '2023-01-08 04:51:35'),
(73, 22, 117, 4, '2023-01-08 04:52:02', '2023-01-08 04:52:02'),
(74, 22, 120, 3, '2023-01-08 04:52:02', '2023-01-08 04:52:02'),
(76, 23, 117, 2, '2023-01-08 05:22:23', '2023-01-08 05:22:38'),
(77, 23, 120, 1, '2023-01-08 05:22:31', '2023-01-08 05:22:31'),
(78, 24, 105, 1, '2023-01-11 06:10:29', '2023-01-11 06:10:29'),
(79, 24, 106, 1, '2023-01-11 06:10:30', '2023-01-11 06:10:30'),
(80, 24, 107, 3, '2023-01-11 06:10:31', '2023-01-11 06:10:53'),
(81, 24, 129, 2, '2023-01-11 06:11:54', '2023-01-11 06:11:55'),
(82, 25, 117, 1, '2023-01-12 18:14:05', '2023-01-12 18:14:05'),
(85, 26, 228, 4, '2023-01-15 20:31:07', '2023-01-15 20:31:47');

-- --------------------------------------------------------

--
-- بنية الجدول `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) NOT NULL,
  `name_en` varchar(191) DEFAULT NULL,
  `photo` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `categories`
--

INSERT INTO `categories` (`id`, `name_ar`, `name_en`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'وصل حديثا', 'vel', 'W0c1672865354.jpeg', '2022-12-19 04:22:05', '2023-01-05 03:49:14'),
(2, 'عدد كهربائية', 'facilis', 'QDs1673090951.jpeg', '2022-12-19 04:22:05', '2023-01-07 18:29:11'),
(3, 'عدد للسيارات', 'Automotive-tools', 'ByM1672857506.jpeg', '2022-12-19 04:22:05', '2023-01-05 01:48:54'),
(4, 'عدد يدوية', 'Hand-tools', 'q6U1672857447.jpeg', '2022-12-19 04:22:05', '2023-01-05 01:41:39'),
(5, 'البراغي', 'screws', '4L91671917489.jpeg', '2022-12-19 04:22:05', '2022-12-25 02:32:16'),
(6, 'جديد', 'new', 'V0a1673128959.png', '2023-01-08 05:02:04', '2023-01-08 05:02:39');

-- --------------------------------------------------------

--
-- بنية الجدول `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `other_phone` varchar(191) DEFAULT NULL,
  `governorate` varchar(191) NOT NULL,
  `district` varchar(191) NOT NULL,
  `activity_type` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `address` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `other_phone`, `governorate`, `district`, `activity_type`, `password`, `address`, `status`, `created_at`, `updated_at`) VALUES
(1, 'customer', '01092199386', '01092199386', 'test', 'test', 'test', '$2y$10$4xZ8AOJhKSpTrW4b77jkGOry12ZySCt5LbCqF0JdYHRyPA2nfFQP6', 'egypt', 'active', '2022-12-19 04:21:59', '2023-01-12 06:09:30'),
(2, 'Jarvis Feeney MD', '01088204398', '01087398407', 'ipsum', 'quae', 'et', '$2y$10$2p8If7UstRBQ.buQLS76VeEgH1XMLIsKDBfknuZ7/ck.yx1xUHAVO', 'Quod quo quia quidem aut eaque error.', 'active', '2022-12-19 04:22:05', '2023-01-09 15:08:47'),
(3, 'Jackie Ledner', '01047184085', '01095997438', 'repellat', 'ipsa', 'expedita', '$2y$10$LWxXkU3TvqMSko91mR0YfeKWBLOS16E4LLlWSRypac1UkHe.dcc0u', 'Quos ad error recusandae eos totam cupiditate aut.', 'active', '2022-12-19 04:22:05', '2023-01-09 15:08:50'),
(4, 'Ignatius Zboncak', '01038401974', '01088947659', 'tempore', 'dolorum', 'dolores', '$2y$10$FYaHvHa7rjtfd8e8sizPR.M.d2oO68E/YPiHCFqUOfquJIPoLMK16', 'Provident accusantium nisi ea unde.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(5, 'Prof. Terrence Barrows III', '01022515177', '01092801300', 'dolorum', 'corporis', 'necessitatibus', '$2y$10$PfneJJD4dAAW4w2Gtvr72u0eeNpERDBvKBh38lp/beFRuZaxcTu1W', 'Amet dicta minima harum qui necessitatibus.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(6, 'Marianne Stamm IV', '01054701202', '01069548175', 'facilis', 'et', 'fuga', '$2y$10$hIUFy/gM25CxH95ghqP0rerfjURQouustp5mYDYmN9rxFU1rJfYXq', 'Quia numquam et ratione velit facere quia qui.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(7, 'Myron Adams Sr.', '01016624052', '01042583908', 'iste', 'illo', 'quam', '$2y$10$OI3uL.GkWqYdNOL5W7x5fe7b27umJyTOoNuzISYSao5Z6JCi8pS5O', 'Sit dolorem velit nulla deleniti.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(8, 'Jeff Goldner', '01085633374', '01038443230', 'iste', 'molestiae', 'omnis', '$2y$10$geZk.0OX/EYiIvPKPsxHueTOrYAzpaUMOCQinilGtfGMY3V/NffsK', 'Et rerum odio quia labore.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(9, 'Ms. Verlie Konopelski', '01052442236', '01026975966', 'ea', 'et', 'alias', '$2y$10$hXPf33up1yGThoKGZ1Ck2.ugSWawH.uu5AjD1w61z9/ZYm5znBbWq', 'Magnam dolorem et porro ut voluptas.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(10, 'Lura Jaskolski', '01066676698', '01014077529', 'iusto', 'iste', 'voluptatem', '$2y$10$/xjqxiv6MrbxSVO7FnAGX.M.3scCv/WVr4EZN0s4qqT9FMwqM4PU6', 'Sint quos et nihil aspernatur vitae hic.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(11, 'Prof. Wiley Rosenbaum', '01083628805', '01039061848', 'non', 'nisi', 'reprehenderit', '$2y$10$LeqVapnE3fMB0jj9SRiqSeZT103S2XfNfI30ssqe43Pi50DHujqRa', 'Quam ea eum commodi consequatur iste commodi rerum.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(12, 'Fabiola Mayer', '01076521775', '01047264591', 'qui', 'doloribus', 'voluptate', '$2y$10$BcB1gQ52txERWhOc6MxqEuX15ii.lPixDdODd1hfhQbek4F2G89y6', 'Et sapiente modi voluptas dolores at possimus ducimus repudiandae.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(13, 'Eloise Fay', '01049412746', '01056880927', 'quas', 'pariatur', 'ullam', '$2y$10$bND2fKiT43tcWT2wS8346uILNENK0fBWfAbnNpx8GFRQTrs8d9Rde', 'Nam aspernatur ipsam suscipit id.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(14, 'Shaniya Hammes II', '01089009615', '01085506313', 'dignissimos', 'ipsa', 'ut', '$2y$10$UD8H3UGwqrpUsLlEeOtBB.spvr1tsupoWzmryoe5sHb95ncIY2jGm', 'Ut ducimus maiores pariatur rerum rerum asperiores mollitia.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(15, 'Brendon Bins', '01098708115', '01057060657', 'natus', 'repellat', 'fuga', '$2y$10$bn0pTz0TsmWQBL6loyu8N.ZvDPsf1/KuUiz2.MdcrDxP2vZL5clU.', 'Similique minus eos non quos.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(16, 'Ms. Rafaela Leffler III', '01071982904', '01061945872', 'totam', 'et', 'porro', '$2y$10$YmKDaTGMF/vkmXoEmw2Az.gdK0mO0R8gQnHyzCgZ/JTOeD1L4zPKe', 'Est minus et quod fugit quas esse aliquid.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(17, 'Johnathan Lindgren', '01021978874', '01097484317', 'facilis', 'fuga', 'praesentium', '$2y$10$B6icNw.St7gxS8mNgAh39OTgE6LoOZH/GE42VXOj/sSyD8.2xcjoK', 'Porro et cumque quam sunt voluptas sed.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(18, 'Mr. Doris Goodwin', '01015451262', '01044063537', 'qui', 'ea', 'ea', '$2y$10$HeQAQ6ATNmH6T9GQcbxC3uWrMiexS4nHEg14iHPCl/OhhqqkcoEGa', 'Quidem provident molestiae quis eos hic esse soluta.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(19, 'Dr. Frederick Bosco DDS', '01090835796', '01010343386', 'vel', 'consequatur', 'quibusdam', '$2y$10$eJs5V9PcYus766TuCc8yAeUN1UGHSRXjqtA1.FvJ6cdRkMkiCHQOm', 'Voluptas eos quo et id distinctio delectus omnis.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(20, 'Marc Hessel', '01046727129', '01073913917', 'accusantium', 'et', 'est', '$2y$10$m8S17cbhUi6CJkbdYMn2.u.83cRqtQrs4bMYB10GqQn2T4zWFry16', 'Tempora non quae consequatur quaerat quo unde.', 'active', '2022-12-19 04:22:05', '2023-01-09 15:08:49'),
(21, 'Lavada Emard', '01046419659', '01024359817', 'est', 'omnis', 'dolor', '$2y$10$6bYvuu2i4qeb6kKHJRSSJ.HjtGwsFTpe30VSOD3x9TWrL2aidPiIy', 'Necessitatibus officia occaecati perferendis quia ut quas.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(22, 'Mr. Diego Wehner', '01070012800', '01080700624', 'exercitationem', 'sed', 'rem', '$2y$10$7UB7Qt4vcd3qxqA9lYmeNe8oyslABV0F1EAo0Ed8DpPeVEIZQ.Oo2', 'Iste est animi dolorum expedita culpa molestiae quos repellendus.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(23, 'Madalyn Hills', '01011046724', '01059880835', 'et', 'aspernatur', 'nesciunt', '$2y$10$g.Wr8STj8v57bHIjSvUgTeg5WOIhkPbgvkKNXuzDwg8s8GlXONQH2', 'Veniam reprehenderit voluptas atque similique eveniet quia.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(24, 'Cielo Berge', '01093596787', '01088326939', 'corporis', 'doloremque', 'dolorem', '$2y$10$zymimODnYCOH0FbD6n2QFOD6HmNi6RgbGbdFfsDp0YKZZpLwS2yqy', 'Eos quia quae sed aut odit exercitationem.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(25, 'Anita Bartoletti', '01037020230', '01034246492', 'consequatur', 'accusamus', 'beatae', '$2y$10$lS41pubMzAsrqKp6oY8x1.wXGNcEjk.3eho8ULnNhtcQetSXyTiL6', 'Aspernatur ut reprehenderit rerum eius molestias ut omnis nam.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(26, 'Tyreek Carter', '01023866725', '01076288378', 'est', 'recusandae', 'soluta', '$2y$10$ITRJ/lthWHlV10qsGsFpFOyE2nU90mSXRXX3vX/j7Wf12Ocqf2KiG', 'Doloremque dicta voluptas ratione quia ut consequuntur ut.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(27, 'Mikayla Simonis', '01067548580', '01046203613', 'commodi', 'ea', 'similique', '$2y$10$jAFcf08NkUnVX3eJKHohieMwgvdU67u6hxEmWuCippvv3824bHc9W', 'Minus nostrum amet qui reiciendis velit ut quam.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(28, 'Yasmine Lang I', '01034531371', '01056748378', 'magnam', 'aut', 'voluptatem', '$2y$10$NmXO7MPPfO0NEYjT/9c1LOSerJGx5xwTwuwutpOHsDBpwr.whLrLG', 'Ut pariatur id voluptatibus voluptatem rerum animi.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(29, 'Elaina Gleichner', '01019912189', '01089484821', 'officia', 'autem', 'corrupti', '$2y$10$fi4LhsZ8I7Cg.JMGFWMtk.ldttBT1qOm0FJgJxs8G5e2XRvtQQrW2', 'Accusantium enim velit iusto mollitia.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(30, 'Hilario Mills', '01083803010', '01071581273', 'suscipit', 'molestiae', 'nihil', '$2y$10$JQCDrtu.BdcK.esIpt/Nnu6hyqrNG8kjOyyB1X5xyfqPQPwVfgkyK', 'Odit dolor dolorum vel incidunt.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(31, 'Elmore Ritchie MD', '01032843796', '01060170393', 'rem', 'provident', 'fuga', '$2y$10$/3cwqiK/hA/YeRvsA/dCoOjANT6pubydwfB6ALaEmxnlGCtdQM0U2', 'Aut vero dolorum harum dolores.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(32, 'Prof. Morris Morar DDS', '01080370991', '01076330866', 'optio', 'eos', 'dolore', '$2y$10$ra5Z4.Rj7ndMraT1.uyLa.vs9Nl2UmhyRgkHoSF0kUoTrD5z2j7FS', 'Nesciunt mollitia excepturi qui molestias aliquid.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(33, 'Elton Lockman', '01058305562', '01043406196', 'consequatur', 'assumenda', 'est', '$2y$10$7zgefjovW5oYdFP54cTiCuCO7UMlvGRFr5xls/h.NZKwg29PBb2bG', 'Placeat aut ipsam qui nostrum quia.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(34, 'Collin Pacocha Sr.', '01023511912', '01035062084', 'soluta', 'libero', 'culpa', '$2y$10$W0Snwt62x2Lhcm1QI4Z5duiSBMZk5J9A9hcuaK5xqff4O9Kn1onWe', 'Perspiciatis voluptas vitae voluptatum ipsum et consectetur autem.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(35, 'Prof. Magnolia Mills DDS', '01034651165', '01058101483', 'fugit', 'dolorem', 'fugiat', '$2y$10$TRZYYixhshX5Ewa6HP1XeuQYyBvotmqhwYRBv/xN9W5FAXitiOz1y', 'Illum dolore sed dolores consequatur et laudantium.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(36, 'Ms. Alaina Kovacek III', '01048363370', '01039532541', 'illum', 'blanditiis', 'saepe', '$2y$10$5bxZTSROVB7DuBWudERtJeAeER7WyeCKveDxufxEzZeF7FNGDSLIy', 'Error sed blanditiis sed quas inventore quo.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(37, 'Roslyn Fay', '01014806309', '01088948729', 'illo', 'alias', 'in', '$2y$10$KokazFtqth8x0y6tr8RHLOb0razm2RR4DAPPACYbbSbR/Lnf47tKq', 'Ut qui nisi necessitatibus voluptatem.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(38, 'Margaret Abbott', '01056668645', '01085411222', 'dignissimos', 'necessitatibus', 'enim', '$2y$10$q6yxy56uiscBsbpG7HctE.DtOrkdNzqthsiV79pj4lim3LxuWkmZa', 'Ut vel et adipisci.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(39, 'Jovany McClure II', '01055735168', '01062021576', 'numquam', 'placeat', 'officia', '$2y$10$nvCnN1kzGXakVBBFT6d7H.WGZLPpVWxv4te.86aYie31AkQKZ7z3u', 'Blanditiis alias et labore cumque.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(40, 'Sasha Botsford', '01034959817', '01015694445', 'aut', 'sed', 'excepturi', '$2y$10$3JxRwvrSbxdWS4B48cskBuJdL70xU4guYuiPbidFNhJZS37gI8VKW', 'Iure autem omnis a maiores.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(41, 'Lola Bayer', '01012895649', '01098800278', 'officia', 'quia', 'porro', '$2y$10$WTctsdyR.DLziYJG1/HacOw/Ix2HAj8I2KwU1I42vfxDXKUwWuKb2', 'Dolores voluptates pariatur eos nisi recusandae ex.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(42, 'Joseph Heaney DVM', '01080570425', '01026393802', 'cum', 'vitae', 'quia', '$2y$10$s9R/F2UDaF2.eRRVFM0cYO9rWKsFzNsbQlLx7dZqluxmvNPB20rxu', 'Voluptatem exercitationem aut culpa ipsum et.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(43, 'Frankie Johnson', '01098876399', '01032199100', 'repellat', 'sint', 'eius', '$2y$10$Ty62DxoLAo9AELP0UfpD8uEViSPrvzNF.KxSBwMLhzm8NECWjp6I.', 'Eius sint doloremque illo provident.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(44, 'Chelsey Simonis', '01011135234', '01047506037', 'nemo', 'maiores', 'sed', '$2y$10$LmNlQqAAzet54vHmSs0TMezfalObiWQBvEtJxvVoj2fnKl.9mwvR2', 'Blanditiis tenetur ipsa eum nostrum alias rem qui.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(45, 'Chris Johnston', '01011584395', '01040273302', 'debitis', 'qui', 'minus', '$2y$10$wEQrre5Y7.7ACCuH0Rxco.lnHpzxYvSQ51JWimpg4Oa74PBlw7.i2', 'Tenetur a ut reiciendis vero molestiae quis.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(46, 'Ewell Jones', '01036092403', '01039402543', 'quos', 'vel', 'et', '$2y$10$j.UX/3J1mXvfYAYC79C5CO7RdLE///fmJT0pUeDQHUjQxtLF.Zkp.', 'Assumenda nulla sint deserunt tenetur.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(47, 'Lucy Cremin', '01064433987', '01075390329', 'distinctio', 'placeat', 'fugiat', '$2y$10$cpa92PeXF.KgAjV7p0/Edu5MWDJ3jUjV4tqNznDV.U7TFYeg43cWO', 'Aut ea doloremque magni corrupti dolores.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(48, 'Anderson Hodkiewicz', '01072746551', '01011667157', 'fuga', 'aliquam', 'quia', '$2y$10$FcpQeD7OJkCvGobBiW7hYO40sMftfSH57dZPhBC0oPhL9GnA/QQJu', 'Velit pariatur atque molestias ut cupiditate laborum minima.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(49, 'Ashtyn Roberts', '01048480896', '01047022251', 'voluptas', 'aut', 'numquam', '$2y$10$PE7XOSeuwdN6t4HhkUiEceG5Ku63IXF2TQIOtFm/U7pHHqqPIeiaG', 'Nobis esse a voluptatem ut excepturi.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(50, 'Miss Janessa Becker IV', '01059103049', '01060871188', 'velit', 'quia', 'harum', '$2y$10$XBN1LB3Ypp4TBAKdoQGEyuCfkQdwA0s3UgOuHMlGtZi1nwx3lZrTS', 'Amet blanditiis veritatis officiis.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(51, 'Javier Mann II', '01080600734', '01059081794', 'officia', 'perferendis', 'et', '$2y$10$sXlZ6upgbepsIoBhw/pI/uO9yzPNRIYcURzmu/HqoWFgZtiiZULhq', 'Dolores vel occaecati et dolores unde tempore.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(52, 'Ms. Cristal Carter', '01036995843', '01074022580', 'totam', 'omnis', 'magni', '$2y$10$IdSoZ1JIDPOhs/NyefoiouUr.kZNThB3NhcFspU7UTiX2NQRfA7kO', 'Nihil velit voluptates ex sed ut.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(53, 'Mr. Geovany Mante III', '01083279854', '01064408089', 'cupiditate', 'corrupti', 'eveniet', '$2y$10$NJZDNdnMXXoTgBFbXcfTWO7bhYS0aLwJo43tzYroEbbXAlNxLAPMC', 'Nisi facere temporibus consequatur veritatis quasi.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(54, 'Jerad Renner', '01062505437', '01034639206', 'et', 'excepturi', 'eum', '$2y$10$2DcVZ115DCFEpijhOX/r1.xGbaTWz/RdOrgjOkHCodNMhuTfdmgDW', 'Magni qui ut id repellat ut.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(55, 'Prof. Llewellyn Hermann MD', '01046727335', '01089434103', 'quo', 'cumque', 'eligendi', '$2y$10$9Ao..oPZ27fbRa80HEgCv.L93JZsHEpKa22NdaiS04sRCxkJVYAue', 'Rerum voluptatem omnis voluptatem facilis consequatur.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(56, 'America Brakus', '01094308155', '01024059395', 'aut', 'qui', 'quaerat', '$2y$10$DxERawxnkMg25G3j8V682uPAog08w47ShSduwsu9TSSTvC662UXxC', 'Doloremque consequatur omnis laborum eum aliquam amet.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(57, 'Ora Torp', '01027758220', '01011110025', 'modi', 'rerum', 'voluptatibus', '$2y$10$isLzIUyeFXPmnemajd8feezrijB/TpEH79SHdqkJXNssRYw3mF3fC', 'Dolorem tempora a et est nisi.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(58, 'Kobe Abbott', '01016244411', '01013015950', 'recusandae', 'quos', 'ut', '$2y$10$Hb.AtaGSwt6RX3W1bB8j4uaPJe2RihMhvvNplufuQUDnTw9lyIa8G', 'Omnis optio vitae nemo molestiae dolorem quos quod.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(59, 'Violette Robel', '01064917480', '01014171150', 'nostrum', 'consequatur', 'cum', '$2y$10$OheaPh/1BFmsgCqQLsQRHe/tCnmB1bhhw1gue5wTqcWrpnifYJb9q', 'Aut totam natus quibusdam pariatur tempora est.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(60, 'Carolanne Monahan', '01018723601', '01099877921', 'et', 'architecto', 'quia', '$2y$10$bx54IsytFg6DpLgtVP6aI.BR8MeDi7jhZcPrrtI522ssGbmu8zJdS', 'Architecto quibusdam ab quos autem nam.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(61, 'Miss Rebecca Mosciski Jr.', '01066474375', '01052100665', 'itaque', 'aut', 'quod', '$2y$10$KjEp5urtI5N.82Q.WGUV9OYvgf6h9pvZdgO7dhJt9YVcfls/luyci', 'Tempore voluptate molestias adipisci enim molestiae rerum iusto inventore.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(62, 'Corene Parker', '01065977057', '01015523261', 'id', 'similique', 'nihil', '$2y$10$v4Z.Ewfe42u5GbqaMLxXsua0yz6lQkALt9a7XoeSTK.FWASJ369t2', 'Inventore recusandae ut minima et.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(63, 'Prof. Rocky Abshire', '01044225297', '01088193240', 'fugiat', 'repellendus', 'optio', '$2y$10$bHKbsiDF9lkrepmah4HWeug2WPUPcnYLdw7AsGO98vkT8l4gCe6cC', 'Voluptas natus consequuntur corrupti.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(64, 'Dr. Adam Schowalter', '01028580385', '01041041846', 'quisquam', 'et', 'qui', '$2y$10$3YP83KdN9MCfKbVUML973uJii.5ddfEWjFD.4G/h5y6s7r7/Myb3G', 'Beatae voluptas id repudiandae dolorem explicabo eum quisquam sunt.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(65, 'Dr. Tiffany Gerlach', '01051860124', '01036694397', 'ipsum', 'quia', 'laboriosam', '$2y$10$/3g1IHpZ3Rw11F3nxqBdQeIpQwiYbLgToJ0NBM5bAD0hd8qTdG21y', 'Pariatur ullam similique distinctio assumenda optio consequatur sapiente.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(66, 'Vivian Luettgen', '01012532206', '01080171251', 'necessitatibus', 'velit', 'distinctio', '$2y$10$AQK5/EOUbKygE6FnpUYr8OzOwZo/BJH39ONGLs5SOoEDZ9CmUlZnu', 'Doloremque dignissimos nihil minima doloribus.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(67, 'Bernard Orn', '01035543543', '01010842561', 'sunt', 'culpa', 'ut', '$2y$10$wG5WUJp/oLm90fPsGg3skeXc28Qz3nus.2ztTPxz3gCqhpPRUuhlS', 'Atque voluptatem atque sit totam commodi voluptas quae.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(68, 'Prof. Paris Lowe IV', '01089901329', '01034751061', 'beatae', 'similique', 'quia', '$2y$10$/XJzKkjUMesO8jk.22.wne4dIHICCrXkR8x7aZYuGIhZ9spU9pu6u', 'Libero iure sed sunt voluptas qui.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(69, 'Lorine Cole Jr.', '01053099289', '01010272299', 'quas', 'mollitia', 'at', '$2y$10$vZKyt1Yn19B.c6fqybrQhe2l8FnIUQqdIA64rVkMoYEtJagwd.w3O', 'Culpa rerum consequatur atque saepe.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(70, 'Jeremy Wisozk I', '01021186555', '01063525426', 'et', 'et', 'nemo', '$2y$10$lJ87Mw08WKwizKw9k2q8yeuj7sNsocOFW4HnrHdgBji43PkhMaIWe', 'Ex tenetur ipsum et at.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(71, 'Raymond Adams MD', '01071175684', '01027053845', 'temporibus', 'vel', 'officia', '$2y$10$HPxa/DaBh3rhsqoH/vzHyevrc5thfyk/lQHLA8VRXZjXWnjpiNPNy', 'Consequatur omnis molestiae sint magni id molestiae at.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(72, 'Mabel Olson', '01089475356', '01081910333', 'expedita', 'expedita', 'qui', '$2y$10$ayuOIeqFpYvuGK3thmz0DO3Ko.kJ58L0ScU6izoJUUK1JPtPZuXqS', 'Consectetur maxime atque explicabo at officia doloribus voluptas occaecati.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(73, 'Miss Nicole Ruecker', '01054424268', '01069973489', 'maiores', 'et', 'dicta', '$2y$10$ZN5iPVPD1Ptq/sWkftHsh.aYqrjrqYoWvgeXYGUhs5IfsNP3Ku5Cu', 'Non eos tempore nulla dignissimos occaecati.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(74, 'Clay Ryan DDS', '01086295751', '01088281721', 'temporibus', 'rerum', 'quia', '$2y$10$xGuifHWos4HjwL2ttc4dtulXKNvOeLtSoVosn6./0.wdnLOkjrj72', 'Quia velit impedit nemo impedit autem consequatur in.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(75, 'Ms. Olga Kautzer', '01038182706', '01090557173', 'aperiam', 'soluta', 'ut', '$2y$10$JvS1YgA5tmogmYmsWtrzS.DRMPD2wIxzMDVgELxK9IvDemGV6Z4X.', 'Ipsa asperiores error voluptas quibusdam consequatur ut magni provident.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(76, 'Bailey Paucek', '01094587126', '01039867515', 'praesentium', 'blanditiis', 'quaerat', '$2y$10$Xtu3fM0V6D6gxBpSvnEVnOah321vKzZliYMm4yhHu9.yREtjNVICC', 'Et nihil facilis quia accusamus ipsa.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(77, 'Diamond Kautzer', '01088668426', '01090822219', 'et', 'dolore', 'beatae', '$2y$10$LkTrms3XVKIsHxLwFfiKrOLmmt98ua1ApWSq4Nj3z1.W.FmORih/W', 'Officia sint quia qui totam fuga.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(78, 'Dr. Maynard Wehner PhD', '01084306102', '01021783439', 'quaerat', 'voluptatum', 'sint', '$2y$10$IpzQdsNtJ496JmGUoFvQ7ubtCvTFbRFQdbtsz2GxEgqv3Zr6zryP.', 'Corrupti aspernatur neque dicta dolore ipsum quia qui.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(79, 'Eli Glover', '01045863273', '01088918680', 'optio', 'quod', 'eveniet', '$2y$10$qjftgM8Eefpyl9AI4Qo9GuF27JCN1NJrsmOTIkmlGPuPxBDXVubxm', 'Atque facere id sit sunt quis.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(80, 'Prof. Noelia Leuschke V', '01046430098', '01082201053', 'rerum', 'ipsam', 'voluptas', '$2y$10$uptMJalVNBUmoFh3cMJJl.y3wv0q/uzuS9M/Aesvy349TsMTv19u2', 'Qui et eum perspiciatis magni.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(81, 'Janelle Beier', '01066612576', '01090509938', 'dolorem', 'nihil', 'architecto', '$2y$10$pq5HPPCeT/oThNbcVnFcru.uxroQ3Xp8UddJD527rKnflH9lDI0B.', 'Et doloribus doloribus a.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(82, 'Fiona Parker', '01043985819', '01097969352', 'iste', 'est', 'culpa', '$2y$10$gmVJ3EdeRtg/ox.OjoIbxeGCiE.eMiYQ2Y2JoD5I1bhMx.H8Bj6tq', 'Vitae voluptatum esse molestiae quod aperiam assumenda.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(83, 'Mr. Freddie Bogan', '01067540686', '01026954524', 'laudantium', 'exercitationem', 'rerum', '$2y$10$3YDGK4RgN2adcLPAFXgSNeMIUrarjbGwyUBT/FzFlfrPhZrTzaaDy', 'Beatae esse molestias excepturi cumque.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(84, 'Evert Pollich', '01046461305', '01041563907', 'in', 'et', 'et', '$2y$10$kkUVknsy/eDZfKFksVl5AukOEjjvhctACcIqlYGxRTyMmPdB6kWOe', 'At omnis est quidem deserunt facere.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(85, 'Juston Mueller IV', '01097300481', '01020261085', 'quaerat', 'dolorum', 'dignissimos', '$2y$10$ZWUWKi42BnQrF0aLl7YwP.0CAILajKNTcbZZ.mdqnJoNVxlIK2Gce', 'Nisi sit asperiores ducimus.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(86, 'Lulu Stiedemann', '01015840227', '01027682318', 'reiciendis', 'sint', 'dignissimos', '$2y$10$jOTHVCXEHLxZa3kUaGXO.Oge0sRwaZhJtZsS9CCo9auE/tEo7m0tO', 'Cupiditate amet architecto enim fuga.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(87, 'Torrey Krajcik', '01057252452', '01038965988', 'voluptas', 'consectetur', 'vel', '$2y$10$PYuIGZynlqk93jxLpYOb4OoZBUylY.3jmTyyfaGjvLckjc7a0.ida', 'Inventore possimus ipsam nisi accusantium excepturi.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(88, 'Johathan Vandervort', '01080154343', '01057542769', 'aut', 'in', 'officiis', '$2y$10$sOR/EqvbS7pv1jMiW8C/H.luZnBxhKpQ/unYKqsJVeCalh.LEcYfq', 'Facere repudiandae veritatis consequuntur perspiciatis officia.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(89, 'Reyes Kihn', '01016263467', '01095108404', 'et', 'nobis', 'voluptas', '$2y$10$APKtq08H358YRq01zLP4B.S4wZBSvka9BliBy/Wdw/u/CNLb9GUPq', 'Laboriosam corporis mollitia et quia dignissimos neque.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(90, 'Mac Parisian', '01031139883', '01037197818', 'voluptatem', 'et', 'ducimus', '$2y$10$4nDXLII3Gaon3r6kTQiSt.7XiQvLPZ8NjuA1KV7S4xm0OLQlJnWRa', 'Rerum aut nemo deleniti.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(91, 'Vicenta Ziemann', '01066724233', '01089818331', 'assumenda', 'et', 'recusandae', '$2y$10$oPdWfVPrWDVoyxchoM91t.iHFPL9wlPTPXSTEcEFVKVRpefPuQgTK', 'Iste facere nam quo reprehenderit rerum blanditiis possimus.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(92, 'Gaylord White', '01020135032', '01022254250', 'enim', 'ea', 'est', '$2y$10$VP8AjgKrvQRfE8QNdPEXouFClZp/yvqykAs5d0KS0kdV/Nnf/zi/a', 'Quis maiores voluptatibus voluptas iste.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(93, 'Stacey Nader', '01075245461', '01052966512', 'omnis', 'nisi', 'sapiente', '$2y$10$E2ocZaetMVt0N8ZCluGzTedzfWGGPV4VWveLid1Bp83opo9o9Kome', 'Aut aut minus rerum debitis doloribus veniam earum.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(94, 'Ms. Graciela Hirthe I', '01094385756', '01088864942', 'consectetur', 'similique', 'expedita', '$2y$10$X4qNR0l8O.CMpb6okUNEwuk.i82s2nMRWv93d9We5TaZa8OmJdMce', 'Repellat ullam consequatur consequuntur.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(95, 'Rafael Boyle', '01097519286', '01023094793', 'quibusdam', 'ea', 'in', '$2y$10$C0fChcHMVZUGnirs2uEjy.XtDniPG.aLI7A8hI8AIpeKuc9jczB7K', 'Ipsum blanditiis quasi cumque est.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(96, 'Lavada Swaniawski', '01057579419', '01070534729', 'quo', 'magnam', 'ipsa', '$2y$10$lPc6H4nHx2VrJZJudpSzSO.sICWaEe31IiYnHZAfXJi45K/uTCYB.', 'Voluptatibus debitis sed vero veritatis.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(97, 'Mr. Micheal Feeney V', '01079419290', '01068335689', 'magnam', 'saepe', 'sint', '$2y$10$hQbsMpqQLFXXfvkoUZhJpe4QqCtIVKuMQ1cjPNYsJko85JK331bY6', 'Aut enim voluptate nihil ratione deserunt quasi ducimus.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(98, 'Lourdes Hudson', '01024209870', '01037732941', 'adipisci', 'esse', 'molestias', '$2y$10$E9a3L7st2V2CVddevlTkIerk/UvJeqSW8vXWmpZUh6jfF6dGGDFyu', 'Eos eum non reiciendis suscipit error debitis enim voluptatum.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(99, 'Mrs. Nicolette Gerhold', '01021783688', '01019415909', 'in', 'modi', 'dolores', '$2y$10$poTLtNDomvUZh6fVqYeXRe8DrTwLZ5AWV/QaRF4ycgqn.UeITYE8i', 'Et ipsa adipisci sed blanditiis accusantium autem iure tempora.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(100, 'Sherman Erdman', '01029215588', '01077891104', 'dolor', 'id', 'recusandae', '$2y$10$HZKsxLBJXcSKlq.g2Z8Phe2pBJlmK06dBUHSoPkzh4JrGhtbLShXq', 'Mollitia aut consequatur sapiente quas.', 'active', '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(101, 'Davin Tremblay IV', '01054218664', '01026198989', 'aperiam', 'non', 'quia', '$2y$10$GZgrtXDAcndHrzwbgTKgv.F2kytH67IuaJSsY1O.q9k4lMezI6496', 'Excepturi aspernatur veniam nostrum inventore tempore quia.', 'active', '2022-12-19 04:22:05', '2023-01-07 04:46:39'),
(102, 'الشاويش لتكنولوجيا المعلومات', '0780997333', NULL, 'عمان', 'بيادر', 'شركه برمجه', '$2y$10$BdfYLjxBkcuG4VD1Aoh1QOm0vwKxu1fT6cSp5qg.KKY6nLtD4zUou', 'بيادر مكتبنا', 'active', '2022-12-24 22:17:40', '2023-01-08 01:51:43'),
(103, 'مصعب', '0799732348', NULL, 'عمان', 'الوحدات', 'بناء', '$2y$10$PMROlgt6JhnqdVemXPpb5..fj38/pe5TbFP9SkXbnbMaegc82pEj6', 'الوحدات', 'active', '2022-12-25 02:28:26', '2023-01-08 01:52:00'),
(104, 'محممد خالد للمفروشات', '0780997330', NULL, 'عمان', 'بيادر', 'محل مفروشات', '$2y$10$dphkmPmmxOfYF15DQDuDN.ejwEImn8SXHAZESLg8w/GMI/8rwZqxi', 'اي اشي', 'active', '2022-12-25 15:32:46', '2023-01-08 01:52:15'),
(105, 'احمد', '079996358', NULL, 'عمان', 'الوحدات', 'اةو', '$2y$10$DrOk//8GDPddE2z9AEMPwu.VShglD41k0omXRH8FCSmOQglTvX3cO', 'ولت', 'active', '2022-12-26 00:15:54', '2023-01-08 01:52:40'),
(106, 'عبدالله ابو شنار', '0796682183', NULL, 'مادبا', 'مادبا', 'عدد يدوية', '$2y$10$MTUPmcS76RwnnQSi1YGvBuYmQhJj.vpVFtzdB8EH8NHxUevADA.nu', 'مادبا', 'active', '2023-01-07 18:16:18', '2023-01-08 01:52:26');

-- --------------------------------------------------------

--
-- بنية الجدول `device_tokens`
--

CREATE TABLE `device_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(191) NOT NULL,
  `device_name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `device_tokens`
--

INSERT INTO `device_tokens` (`id`, `customer_id`, `token`, `device_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'c32PmNBxRM6rraA3oj-6OT:APA91bF5VaQ0XmfD5r3gtJ-BVN_BDBvy0_E43D7LulPUW0f3VD-nuy5G82gmqeiVpJColYCnRGqIAf2sP7oFsaZio_mVEd8xf_eZK56JLfBoJQkLxmoSWiLKTgPF6BN0OvL4KSBXM5sw', 'Dart/2.18 (dart:io)', '2022-12-19 04:39:36', '2022-12-19 04:39:36'),
(2, 1, 'sf5s4f5sdf4s5df4s4df45sd4f87sdffgsdf', 'PostmanRuntime/7.30.0', '2022-12-19 08:38:17', '2022-12-19 08:38:17'),
(3, 102, 'dVGFVvulTl-yoUqcC-vJMs:APA91bEX7gCioztrU7Ajo0LaGu0vTJXyIZJrIiCHAFLzg8QIJHtC0isA35Zin9ble8djUHYNu9DhN-7C-oZqAXvl5WRwElsiAh0Msg8psuJfsLR7oYz23hnz_rGwqVtECl7MIlAS-7Rw', 'Dart/2.18 (dart:io)', '2022-12-24 22:17:40', '2022-12-24 22:17:40'),
(4, 102, 'c32PmNBxRM6rraA3oj-6OT:APA91bF5VaQ0XmfD5r3gtJ-BVN_BDBvy0_E43D7LulPUW0f3VD-nuy5G82gmqeiVpJColYCnRGqIAf2sP7oFsaZio_mVEd8xf_eZK56JLfBoJQkLxmoSWiLKTgPF6BN0OvL4KSBXM5sw', 'Dart/2.18 (dart:io)', '2022-12-24 22:44:00', '2022-12-24 22:44:00'),
(5, 103, 'epRZ32ERSkO1dNs4tbqNiZ:APA91bG9a2FlLoP2hPXqN4Wt2f69NOQwDoN46hQYoZgBQ33A--XRmYU122xtJ93_M29j-6WqKrm9e0lW2vr-oP3EGWeXTkqsNNNSeDoxMdDKpEdNslTxIMe38xD86liQMUk8WcObSGbj', 'Dart/2.18 (dart:io)', '2022-12-25 02:28:26', '2022-12-25 02:28:26'),
(6, 104, 'ea3kvbZQTi2WqH3lAlxkk4:APA91bECVMDEReQ0E4fKuY--0J3tXd5DsUJ0e_d0Pt9ANdajhJba_Cp-o4xoUav_B5VXb-L687OAwaayehP_-gAOlFuEJZN_DrO_E062iYepiFddywC03ue8Cl2NT9STg6l7lLc-kmP-', 'Dart/2.18 (dart:io)', '2022-12-25 15:32:46', '2022-12-25 15:32:46'),
(7, 105, 'epRZ32ERSkO1dNs4tbqNiZ:APA91bG9a2FlLoP2hPXqN4Wt2f69NOQwDoN46hQYoZgBQ33A--XRmYU122xtJ93_M29j-6WqKrm9e0lW2vr-oP3EGWeXTkqsNNNSeDoxMdDKpEdNslTxIMe38xD86liQMUk8WcObSGbj', 'Dart/2.18 (dart:io)', '2022-12-26 00:15:54', '2022-12-26 00:15:54'),
(8, 103, 'epRZ32ERSkO1dNs4tbqNiZ:APA91bHwAeX_Y00hifrdfCDe8p-oHq9N1HSVQdySt9XYOYU6QNAQk-u2dqoifE-vb9QkxWpjyApivNGZbO0LXxB3Lr-NrnLAUcpUWl33oIz_Y-HR6OaCA_q0e8Hqe0_-treckUdUbjaB', 'Dart/2.18 (dart:io)', '2023-01-01 22:57:44', '2023-01-01 22:57:44'),
(9, 103, 'eowsuKYbSS-5BQhLZlUett:APA91bFZnc93NWlpFXd07hbIHvIC-TYMCeVM7_w1qcWuTvhBdrb8NMiUNUj2QcfzPnmCxIm9qTeKqGPh2kplag7H9143oRci0_5GuisuzKzE2raJ23BkMECucTT1mBoZKpQBJE51vEXs', 'Dart/2.18 (dart:io)', '2023-01-03 21:30:57', '2023-01-03 21:30:57'),
(10, 103, 'epRZ32ERSkO1dNs4tbqNiZ:APA91bEwD4IDaQX2Wi42oDQuoRBFntlLx7bcGIr1bIF7lRCiXqwBnXAs6mCFrw87bw3rnGNq_FQzZ_VcjuUSpNc8P7R4LKirmEmWTH2AdVe1pBIUrItVQ53jXn_IcCrQ1KIn1i14xUCe', 'Dart/2.18 (dart:io)', '2023-01-04 01:29:25', '2023-01-04 01:29:25'),
(11, 1, 'fDbpKydxRFaPa7Vei8D0Dp:APA91bErNmiVNrlIKLdDmlhEJ7K1GBOUBXUP-kApODfRFD0W9UvV4Yb7Mc1i_hTvw_W8phBm9RVrs-z_sv9eS5r1Mu5Xd-MU056Yf7P3LGUmrlCbWT8txXLnU8LOYg7-JGFcvhGhVeJt', 'Dart/2.18 (dart:io)', '2023-01-04 04:07:58', '2023-01-04 04:07:58'),
(12, 106, 'ddRELTZYTo6r2nXGEs2553:APA91bHOGdMyWULVLpX8e2ruy1ozvjG202yv_-2H3SXrQ8R3N8uIIZ6PoZDpmfVgsdXQc63Y7Yj-TtjtYOfttj2Z0_bBo9fOnC_0mMb1N3Jmcehz_nCoqDCsHtBvxtXLUlngyA9wZPi9', 'Dart/2.18 (dart:io)', '2023-01-07 18:16:18', '2023-01-07 18:16:18'),
(13, 103, 'epRZ32ERSkO1dNs4tbqNiZ:APA91bEeZ2Vy7GDMjzHgyqHvoSviPhh3JxAs8R9h4rtDA2ZQjL4UClWEQeZaL29pLyDHIlCxPEQ-ZofPcN_MsIBZS8O3GNWpNWol1m1xmiBFrLSrza28ptjPAnYP8Q6pseefv4bHJLAN', 'Dart/2.18 (dart:io)', '2023-01-08 03:21:20', '2023-01-08 03:21:20'),
(14, 1, 'fY_u_PGuROG7ZqRMaCMwuS:APA91bGSrOqivajt4yLZMTXR-3Z02d4xw73IoqZ0dhhEiRynbpFYofa1wbZR2N2qnNTTICA724_aSXzdqu-UTookZZpZ4oRpDy0ObeuudOHDIqSS9E1GtK5btQMgVpV61Khqq1rZlYpc', 'Dart/2.18 (dart:io)', '2023-01-08 04:26:31', '2023-01-08 04:26:31'),
(15, 103, 'evwJOqI0St2P0vetaqj3A6:APA91bFLqn9cw8-b00qhUGHzXb-Jg9X4-dnCgLGtVzKkBIdfyRIjycEEz_hJG1L_Y0yHYuKddmVuT3_K2LMk9R8MNajVKFl-Ug6lH0_2qzUoY5l_LYQuHkJ1EbXAQzyuzMyS4Vcg-zKZ', 'Dart/2.18 (dart:io)', '2023-01-12 18:12:02', '2023-01-12 18:12:02');

-- --------------------------------------------------------

--
-- بنية الجدول `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `inner_categories`
--

CREATE TABLE `inner_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) NOT NULL,
  `name_en` varchar(191) DEFAULT NULL,
  `photo` varchar(191) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `inner_categories`
--

INSERT INTO `inner_categories` (`id`, `name_ar`, `name_en`, `photo`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'quod', 'dolorem', 'example.jpg', 2, '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(2, 'in', 'fuga', 'example.jpg', 2, '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(3, 'necessitatibus', 'maiores', 'example.jpg', 3, '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(4, 'est', 'in', 'example.jpg', 2, '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(5, 'براغي مسدس خشابي', 'Lag Bolts', 'bFE1672866259.png', 1, '2022-12-19 04:22:05', '2023-01-07 00:01:39'),
(6, 'dolores', 'similique', 'example.jpg', 4, '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(7, 'sequi', 'maxime', 'example.jpg', 3, '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(8, 'et', 'porro', 'example.jpg', 2, '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(9, 'براغي مسدس', NULL, 'AJr1671917631.png', 5, '2022-12-19 04:22:05', '2023-01-07 00:22:01'),
(10, 'non', 'at', 'example.jpg', 1, '2022-12-19 04:22:05', '2022-12-19 04:22:05'),
(11, 'داخلي 1', 'ءء', '9m91673129019.jpg', 6, '2023-01-08 05:03:39', '2023-01-08 05:03:39'),
(12, 'براغي الشيبورد', 'Chipboard screws', 'Ndl1673392910.jpg', 5, '2023-01-09 15:13:07', '2023-01-11 06:21:50'),
(13, 'براغي اسود', 'drywall screws', 'qpo1673467561.png', 5, '2023-01-11 06:23:46', '2023-01-12 03:06:01'),
(14, 'براغي هنجر', 'HEX HEAD SELF DRILLING SCREW', 'aJl1673467529.png', 5, '2023-01-11 06:25:55', '2023-01-12 03:05:29'),
(15, 'براغي رول بلاك', 'ROLL BLACK', 'mut1673467511.png', 5, '2023-01-11 06:29:50', '2023-01-12 03:05:11'),
(16, 'براغي هيلتي', 'wedge anchor', 'zrk1673467501.png', 5, '2023-01-11 06:31:12', '2023-01-12 03:05:01'),
(17, 'براغي تكس', 'METER FRAME ANCHOR', 'x2L1673467476.png', 5, '2023-01-11 06:34:42', '2023-01-12 03:04:36'),
(18, 'براغي طول متر', 'THREADED ROD', 'quF1673467458.jpg', 5, '2023-01-11 06:37:28', '2023-01-12 03:04:18'),
(19, 'براغي سن ناعم', 'GI ROOFING BOLT', 'VTH1673467438.png', 5, '2023-01-11 06:39:43', '2023-01-12 03:03:58'),
(21, 'براغي مسدس خشابي', 'lag screw', 'ugN1673467409.png', 5, '2023-01-11 17:30:46', '2023-01-12 03:03:29'),
(22, 'رنديلات', 'washer', 'Uyr1673467389.png', 5, '2023-01-11 17:34:20', '2023-01-12 03:03:09'),
(23, 'صواميل', 'nut', '3Y11673467333.png', 5, '2023-01-11 17:37:19', '2023-01-12 03:02:13'),
(24, 'براغي سلف درل', 'Self Drilling Screws', 'Tsg1673467928.png', 5, '2023-01-11 17:41:15', '2023-01-12 03:12:08');

-- --------------------------------------------------------

--
-- بنية الجدول `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(500) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2022_10_28_000000_create_users_table', 1),
(5, '2022_10_29_101118_create_customers_table', 1),
(6, '2022_10_29_101119_create_messages_table', 1),
(7, '2022_11_01_155236_create_categories_table', 1),
(8, '2022_11_01_155237_create_inner_categories_table', 1),
(9, '2022_11_01_215725_create_products_table', 1),
(10, '2022_11_04_140508_create_orders_table', 1),
(11, '2022_11_06_175757_create_viewed_messages_table', 1),
(12, '2022_11_29_201724_create_notifications_table', 1),
(13, '2022_11_29_214723_create_device_tokens_table', 1),
(14, '2022_12_04_125028_create_order_products_table', 1),
(15, '2022_12_06_182007_create_carts_table', 1),
(16, '2022_12_06_182315_create_cart_products_table', 1),
(17, '2022_12_18_005141_create_ads_table', 1),
(18, '2022_12_27_103822_add__column_unit_to_table_products', 2);

-- --------------------------------------------------------

--
-- بنية الجدول `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(191) NOT NULL,
  `notifiable_type` varchar(191) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `price` int(11) DEFAULT NULL,
  `notes` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `status`, `price`, `notes`, `created_at`, `updated_at`) VALUES
(1, 2, 5, 6336, NULL, '2022-12-19 04:22:05', '2022-12-19 04:22:06'),
(2, 99, 5, 5574, NULL, '2022-12-19 04:22:05', '2022-12-19 04:22:06'),
(3, 1, 5, 5266, NULL, '2022-12-19 04:22:05', '2022-12-19 04:22:06'),
(4, 65, 5, 6564, NULL, '2022-12-19 04:22:05', '2022-12-19 04:22:06'),
(5, 84, 5, 4679, NULL, '2022-12-19 04:22:05', '2022-12-19 04:22:06'),
(6, 101, 5, 327, NULL, '2022-12-19 04:22:05', '2022-12-19 04:22:06'),
(7, 65, 5, 10242, NULL, '2022-12-19 04:22:05', '2022-12-19 04:22:06'),
(8, 32, 5, 5640, NULL, '2022-12-19 04:22:05', '2022-12-19 04:22:06'),
(9, 20, 5, 1530, NULL, '2022-12-19 04:22:05', '2022-12-19 04:22:06'),
(10, 95, 5, 2949, NULL, '2022-12-19 04:22:05', '2022-12-19 04:22:06'),
(11, 85, 5, 1783, NULL, '2022-12-19 04:22:05', '2022-12-19 04:22:06'),
(12, 97, 5, 1630, NULL, '2022-12-19 04:22:05', '2022-12-19 04:22:06'),
(13, 81, 5, 7741, NULL, '2022-12-19 04:22:05', '2022-12-19 04:22:06'),
(14, 8, 5, 6084, NULL, '2022-12-19 04:22:05', '2022-12-19 04:22:06'),
(15, 84, 5, 298, NULL, '2022-12-19 04:22:05', '2022-12-19 04:22:06'),
(16, 69, 5, 3982, NULL, '2022-12-19 04:22:05', '2022-12-19 04:22:06'),
(17, 44, 5, 6325, NULL, '2022-12-19 04:22:05', '2022-12-19 04:22:06'),
(18, 10, 5, 5629, NULL, '2022-12-19 04:22:05', '2022-12-19 04:22:06'),
(19, 67, 5, 6197, NULL, '2022-12-19 04:22:05', '2022-12-19 04:22:06'),
(20, 67, 5, 2442, NULL, '2022-12-19 04:22:05', '2022-12-19 04:22:06'),
(21, 1, 4, 721, NULL, '2022-12-19 04:49:39', '2022-12-19 04:54:32'),
(22, 1, 3, 1103, 'جديد', '2022-12-19 08:39:01', '2022-12-19 08:39:01'),
(23, 1, 3, 550, 'جديد', '2022-12-19 08:40:55', '2022-12-19 08:40:55'),
(24, 1, 3, 361, NULL, '2022-12-19 23:23:13', '2022-12-19 23:23:13'),
(25, 102, 4, 810, NULL, '2022-12-24 22:21:05', '2022-12-24 22:22:05'),
(26, 104, 5, 491, NULL, '2022-12-25 15:33:40', '2022-12-25 15:34:09'),
(27, 103, 1, 12, NULL, '2023-01-07 02:24:13', '2023-01-07 02:24:13');

-- --------------------------------------------------------

--
-- بنية الجدول `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `price` varchar(191) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `total` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `name`, `price`, `quantity`, `total`) VALUES
(1, 16, 12, 'tempore', '923', 3, 2769),
(2, 7, 8, 'eligendi', '378', 3, 1134),
(3, 13, 14, 'nemo', '221', 4, 884),
(4, 14, 88, 'est', '263', 3, 789),
(5, 4, 35, 'enim', '684', 4, 2736),
(6, 19, 1, 'et', '149', 4, 596),
(7, 19, 87, 'ut', '363', 3, 1089),
(8, 5, 65, 'dolore', '849', 1, 849),
(9, 13, 56, 'quibusdam', '193', 3, 579),
(10, 20, 51, 'doloribus', '828', 2, 1656),
(11, 2, 47, 'ut', '704', 4, 2816),
(12, 1, 67, 'dolorem', '835', 4, 3340),
(13, 8, 11, 'odit', '580', 4, 2320),
(14, 14, 74, 'eveniet', '997', 3, 2991),
(15, 17, 34, 'repudiandae', '959', 4, 3836),
(16, 13, 22, 'facere', '749', 4, 2996),
(17, 12, 82, 'repellendus', '815', 2, 1630),
(18, 10, 81, 'consequatur', '431', 3, 1293),
(19, 1, 22, 'facere', '749', 4, 2996),
(20, 5, 65, 'dolore', '849', 1, 849),
(21, 19, 25, 'atque', '765', 4, 3060),
(22, 7, 47, 'ut', '704', 2, 1408),
(23, 18, 5, 'quaerat', '807', 3, 2421),
(24, 9, 25, 'atque', '765', 2, 1530),
(25, 2, 77, 'non', '282', 1, 282),
(26, 16, 81, 'consequatur', '431', 2, 862),
(27, 14, 77, 'non', '282', 4, 1128),
(28, 5, 73, 'perferendis', '151', 2, 302),
(29, 18, 11, 'odit', '580', 1, 580),
(30, 3, 93, 'totam', '910', 3, 2730),
(31, 4, 45, 'voluptas', '351', 1, 351),
(32, 19, 87, 'ut', '363', 4, 1452),
(33, 2, 80, 'possimus', '655', 2, 1310),
(34, 7, 90, 'et', '584', 3, 1752),
(35, 15, 49, 'sapiente', '298', 1, 298),
(36, 7, 34, 'repudiandae', '959', 4, 3836),
(37, 4, 24, 'illo', '679', 4, 2716),
(38, 17, 80, 'possimus', '655', 3, 1965),
(39, 11, 98, 'est', '594', 2, 1188),
(40, 3, 47, 'ut', '704', 2, 1408),
(41, 13, 25, 'atque', '765', 2, 1530),
(42, 6, 89, 'libero', '161', 1, 161),
(43, 17, 19, 'explicabo', '524', 1, 524),
(44, 18, 100, 'nisi', '175', 3, 525),
(45, 11, 31, 'molestiae', '595', 1, 595),
(46, 16, 45, 'voluptas', '351', 1, 351),
(47, 7, 47, 'ut', '704', 3, 2112),
(48, 4, 69, 'aliquam', '761', 1, 761),
(49, 2, 59, 'odit', '289', 1, 289),
(50, 20, 9, 'perspiciatis', '393', 2, 786),
(51, 13, 90, 'et', '584', 3, 1752),
(52, 3, 77, 'non', '282', 4, 1128),
(53, 10, 51, 'doloribus', '828', 2, 1656),
(54, 8, 81, 'consequatur', '431', 4, 1724),
(55, 18, 91, 'quos', '701', 3, 2103),
(56, 2, 85, 'aut', '877', 1, 877),
(57, 8, 44, 'atque', '399', 4, 1596),
(58, 5, 76, 'rerum', '893', 3, 2679),
(59, 6, 55, 'voluptates', '166', 1, 166),
(60, 14, 30, 'eum', '294', 4, 1176),
(61, 21, 46, 'aut', '360.68', 2, 721),
(62, 22, 6, 'quidem', '551.61', 2, 1103),
(63, 23, 9, 'perspiciatis', '275.1', 2, 550),
(64, 24, 46, 'aut', '360.68', 1, 361),
(65, 25, 83, 'sequi', '405', 2, 810),
(66, 26, 59, 'odit', '245.65', 2, 491),
(67, 27, 106, '2 سم ( 172 حبة بالكيلو )', '1.16', 5, 6),
(68, 27, 105, '1.6 سم ( 185 حبة بالكيلو )', '1.2', 5, 6);

-- --------------------------------------------------------

--
-- بنية الجدول `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(3, 'App\\Models\\Customer', 102, 'Dart/2.18 (dart:io)', 'c6c5ff6f74fd5ad24ff19757df3f83e3acb89311f92e13c38bb83d088509e5fb', '[\"*\"]', '2022-12-24 22:22:56', '2022-12-24 22:18:25', '2022-12-24 22:22:56'),
(2, 'App\\Models\\Customer', 1, 'PostmanRuntime/7.30.0', '72bd4816e12acdca91294c0617cba04a6a2f4103553a946fbb3eaef39b112ab2', '[\"*\"]', '2022-12-19 08:40:55', '2022-12-19 08:38:17', '2022-12-19 08:40:55'),
(9, 'App\\Models\\Customer', 103, 'Dart/2.18 (dart:io)', '6d6876b0b85663b66fc2db5dd7750f4878b1dee55d422278f3b5a2526f98d782', '[\"*\"]', NULL, '2022-12-26 00:17:04', '2022-12-26 00:17:04'),
(8, 'App\\Models\\Customer', 104, 'Dart/2.18 (dart:io)', 'aaf7ab332cfa12fb1a795fa7a0d0a40d3afa370b268c0ab67c59510595666374', '[\"*\"]', '2023-01-07 00:18:45', '2022-12-25 15:33:22', '2023-01-07 00:18:45'),
(10, 'App\\Models\\Customer', 1, 'PostmanRuntime/7.30.0', '189dd3fd102c289ce120c1fd1844192ad8b05e4d5848dd211e23f95314c505bb', '[\"*\"]', '2022-12-30 22:12:23', '2022-12-30 22:12:12', '2022-12-30 22:12:23'),
(11, 'App\\Models\\Customer', 103, 'Dart/2.18 (dart:io)', '723def4dcdbede269f7122863bf95923c0c31f20c9277b88bd8599941f077d32', '[\"*\"]', '2023-01-03 21:04:53', '2023-01-01 22:57:44', '2023-01-03 21:04:53'),
(12, 'App\\Models\\Customer', 103, 'Dart/2.18 (dart:io)', '7a8d4061612d2e4723bc06e347689888a24ced74539e8d8797728abff65dbe5d', '[\"*\"]', '2023-01-03 21:35:54', '2023-01-03 21:30:57', '2023-01-03 21:35:54'),
(13, 'App\\Models\\Customer', 1, 'Dart/2.18 (dart:io)', '787981ddc9f90ceb956e3625ff75710a17654b8795a1f6eda8814f8377bc0c88', '[\"*\"]', '2023-01-03 22:26:05', '2023-01-03 22:09:27', '2023-01-03 22:26:05'),
(14, 'App\\Models\\Customer', 1, 'PostmanRuntime/7.30.0', 'fcc3e209064cc221c72166ff7cfd6b5aea1fb5370ca122acba87cd8c87a11602', '[\"*\"]', '2023-01-03 22:11:10', '2023-01-03 22:10:47', '2023-01-03 22:11:10'),
(21, 'App\\Models\\Customer', 103, 'Dart/2.18 (dart:io)', '49f5778e35cd73a3c320256cbd0fe4916f9191b98208531a9ae2bba15dc1341a', '[\"*\"]', '2023-01-12 17:10:05', '2023-01-11 06:46:54', '2023-01-12 17:10:05'),
(16, 'App\\Models\\Customer', 1, 'Dart/2.18 (dart:io)', '44fefc3312ebf94e3f8077dd2742f2bbd391c8f84750b0bd7e22bc1ac8ece7f3', '[\"*\"]', '2023-01-16 21:02:43', '2023-01-04 04:07:58', '2023-01-16 21:02:43'),
(18, 'App\\Models\\Customer', 106, 'Dart/2.18 (dart:io)', '31b6701e9e70ff63771caeab84e28fa22381191db17b54dc51c268635210dfd5', '[\"*\"]', '2023-01-07 18:29:14', '2023-01-07 18:28:10', '2023-01-07 18:29:14'),
(22, 'App\\Models\\Customer', 1, 'PostmanRuntime/7.30.0', '74bd6ae0c01ff5098faec67edbd1ecad7e9f38ba1186dc2d276906f7a08bc862', '[\"*\"]', NULL, '2023-01-11 06:49:38', '2023-01-11 06:49:38'),
(26, 'App\\Models\\Customer', 103, 'Dart/2.18 (dart:io)', '969dec9e913135c3b86517b26bcf46ef59fb567cc88da64434228d7df5326ee1', '[\"*\"]', '2023-01-15 20:48:28', '2023-01-15 19:53:10', '2023-01-15 20:48:28'),
(24, 'App\\Models\\Customer', 1, 'PostmanRuntime/7.30.0', '47bcf74512e1411db08a67992188bb88a6bcc5e06662f168dfc8bf37e58c2798', '[\"*\"]', NULL, '2023-01-11 06:58:38', '2023-01-11 06:58:38');

-- --------------------------------------------------------

--
-- بنية الجدول `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_appearing` bigint(20) UNSIGNED DEFAULT NULL,
  `name_ar` varchar(191) NOT NULL,
  `name_en` varchar(191) DEFAULT NULL,
  `details_ar` varchar(191) NOT NULL,
  `details_en` varchar(191) DEFAULT NULL,
  `amount` varchar(191) NOT NULL DEFAULT '1',
  `photo` varchar(191) NOT NULL,
  `price` varchar(191) NOT NULL,
  `discount_price` varchar(191) DEFAULT NULL,
  `inner_category_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `unit` varchar(191) NOT NULL DEFAULT 'ربطة'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `products`
--

INSERT INTO `products` (`id`, `first_appearing`, `name_ar`, `name_en`, `details_ar`, `details_en`, `amount`, `photo`, `price`, `discount_price`, `inner_category_id`, `product_id`, `created_at`, `updated_at`, `unit`) VALUES
(1, 1, 'et', 'illo', 'Error ea ab ut architecto.', 'Beatae et nisi voluptas ut.', '67', 'example.jpg', '149', '135.59', 10, 7, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(2, 2, 'tenetur', 'repellendus', 'Eligendi et dolore voluptatibus ipsam nisi iusto.', 'Earum fugit harum in ex velit.', '85', 'example.jpg', '629', '528.36', 7, 24, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(116, 116, 'برغي مسدس 8 ملم', 'Hex Bolt 8 MM', 'المنشأ صيني', 'Chinese product', '300', 'iDc1673477114.png', '2', '1.2', 9, NULL, '2023-01-07 03:54:44', '2023-01-12 05:45:14', 'كيلو'),
(117, 117, '8 ملم * 1.6 سم ( 100 حبة بالكيلو )', '8MM * 1.6 CM', 'المنشأ صيني', 'Chinese product', '300', 'uAV1673040315.png', '2', '1.2', 9, 116, '2023-01-07 04:25:15', '2023-01-07 04:25:15', 'كيلو'),
(136, 136, '8 ملم * 15 سم ( 20 حبة بالكيلو )', '8MM *15 CM', 'المنشأ صيني', 'Chinese product', '300', 'FdY1673468423.png', '2', '1.2', 9, 116, '2023-01-12 03:20:23', '2023-01-12 03:20:23', 'كيلو'),
(5, 194, 'home', 'quo', 'Quos sint sint voluptas ab veniam.', 'Enim maxime natus sit et enim recusandae magni veritatis.', '50', 'sMG1673024598.png', '193.7607', '135.63249', 8, 32, '2022-12-19 04:22:05', '2023-01-07 04:45:29', 'كيلو'),
(6, 6, 'quidem', 'hic', 'Consectetur quo rem repellendus rem corrupti expedita ducimus.', 'Aut ducimus nostrum omnis ipsa eos provident recusandae.', '84', 'example.jpg', '681', '551.61', 10, 23, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(7, 1, '1.6 سم (25 حبة بالكيلو)', '1.6 CM', '25 حبة بالكيلو', 'KG', '0', 'lvJ1671919635.png', '1.45', '1.16', 9, 43, '2022-12-19 04:22:05', '2023-01-07 00:42:33', 'كيلو'),
(8, 8, 'eligendi', 'laudantium', 'Culpa doloremque similique autem et voluptatem quidem dicta.', 'Reprehenderit qui esse provident aut eum.', '87', 'example.jpg', '378', '309.96', 8, 11, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(9, 9, 'perspiciatis', 'consectetur', 'Exercitationem dolore voluptate voluptate debitis molestias.', 'Reprehenderit ea est amet et beatae aliquid accusantium nostrum.', '48', 'example.jpg', '393', '275.1', 2, 8, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(135, 135, '8 ملم * 12 سم ( 22 حبة بالكيلو )', '8mm *12 cm', 'المنشأ صيني', 'Chinese product', '300', 'WXy1673468376.png', '2', '1.2', 9, 116, '2023-01-12 03:19:36', '2023-01-12 03:19:36', 'كيلو'),
(11, 11, 'odit', 'in', 'Eum et maxime et perspiciatis nihil id et.', 'Debitis dolores reiciendis ducimus.', '30', 'example.jpg', '580', '522', 5, 29, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(12, 12, 'tempore', 'error', 'Omnis quis totam voluptates esse sit.', 'Ipsa delectus minima corrupti necessitatibus.', '70', 'example.jpg', '923', '867.62', 1, 37, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(13, 13, 'dignissimos', 'quasi', 'Vel eius iste maiores voluptatem quia a enim.', 'Harum impedit voluptas molestias atque expedita.', '80', 'example.jpg', '409', '380.37', 3, 36, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(14, 14, 'nemo', 'iusto', 'Omnis dolores earum nostrum provident quam.', 'Magnam tempora ea est distinctio.', '68', 'example.jpg', '221', '179.01', 5, 42, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(15, 15, 'saepe', 'id', 'Quidem ipsum omnis quo adipisci.', 'Atque id necessitatibus velit consequuntur dolor dolores.', '84', 'example.jpg', '934', '840.6', 3, 36, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(16, 16, 'adipisci', 'iusto', 'Rerum adipisci hic nostrum ut.', 'Et eaque nulla explicabo sapiente eligendi ducimus voluptatem.', '23', 'example.jpg', '703', '520.22', 4, 29, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(17, 17, 'delectus', 'autem', 'Et quia temporibus in quibusdam.', 'Ipsa et doloribus nulla et mollitia unde.', '70', 'example.jpg', '785', '737.9', 7, 9, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(18, 18, 'libero', 'quis', 'Rerum ut vel qui ut doloremque aut.', 'Reiciendis aut aut voluptas molestiae est non.', '84', 'example.jpg', '431', '310.32', 7, 35, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(19, 19, '2 سم (172 برغي )', '2 CM', 'المنشأ صيني', 'Chinese product', '68', 'example.jpg', '1.45', '1.16', 9, 43, '2022-12-19 04:22:05', '2023-01-07 00:54:34', 'كيلو'),
(104, 104, 'برغي مسدس 6 ملم', 'Hex Bolt 6 MM', 'المنشأ صيني', 'Chinese product', '0', '8BC1673477103.png', '1.45', '1.16', 9, NULL, '2023-01-07 01:49:46', '2023-01-12 05:45:03', 'كيلو'),
(20, 20, 'adipisci', 'nihil', 'Animi vero cumque repellat ut saepe atque.', 'Fuga voluptas quisquam tempora est non rem.', '24', 'example.jpg', '200', '156', 5, 7, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(21, 21, 'ipsum', 'quaerat', 'Aut repudiandae quidem velit ipsa fugit iusto.', 'Et facere vel blanditiis perspiciatis quaerat deserunt.', '56', 'example.jpg', '846', '693.72', 9, 38, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(22, 22, 'facere', 'numquam', 'Rerum exercitationem omnis facere.', 'Ut animi eaque debitis voluptas dolorum.', '30', 'example.jpg', '749', '524.3', 1, 26, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(23, 23, 'sed', 'expedita', 'Et assumenda omnis animi quas molestiae et consequatur.', 'Molestiae voluptatem tenetur qui.', '18', 'example.jpg', '757', '605.6', 8, 33, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(24, 24, 'illo', 'ut', 'Corporis optio officiis voluptas dolor qui ab enim.', 'Nesciunt tempore dolor quo animi necessitatibus.', '21', 'example.jpg', '679', '522.83', 7, 19, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(25, 25, 'atque', 'et', 'Dolorem saepe dolor dignissimos voluptatem.', 'Veniam ut et quae ex.', '28', 'example.jpg', '765', '604.35', 2, 20, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(26, 26, 'ducimus', 'facere', 'Qui sapiente non nostrum voluptatum laboriosam tempora illum.', 'Vero ut eveniet ut.', '82', 'example.jpg', '500', '430', 3, 34, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(27, 27, 'unde', 'fuga', 'Adipisci suscipit aliquid dolores nihil quis quae vel.', 'Facere repellendus voluptates nisi.', '94', 'example.jpg', '254', '220.98', 10, 39, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(28, 28, 'sunt', 'rerum', 'Natus asperiores quia atque fugit quasi incidunt harum consequatur.', 'Autem sint aut et et.', '58', 'example.jpg', '454', '335.96', 8, 15, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(29, 29, 'et', 'at', 'Quas incidunt debitis quibusdam sed ipsa.', 'Recusandae molestiae sed consequatur eius repellat et.', '87', 'example.jpg', '857', '634.18', 4, 44, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(30, 30, 'eum', 'et', 'Exercitationem voluptatem iusto velit rerum nisi molestiae.', 'Porro repellendus et aut voluptatem corrupti quis ut.', '22', 'example.jpg', '294', '208.74', 3, 20, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(31, 31, 'molestiae', 'dolores', 'Id odio vitae qui laudantium dolores rerum aut.', 'Illo fugiat impedit blanditiis sapiente.', '15', 'example.jpg', '595', '493.85', 10, 21, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(32, 32, 'quos', 'est', 'Labore voluptas corporis architecto mollitia occaecati consequatur.', 'Facere nesciunt exercitationem sunt et qui sit saepe.', '35', 'example.jpg', '605', '484', 6, 13, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(33, 33, 'quia', 'recusandae', 'Eveniet deleniti nobis labore rerum et quia.', 'Fugit et nisi perferendis dolorem.', '45', 'example.jpg', '297', '234.63', 8, 21, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(34, 34, 'repudiandae', 'ut', 'Quae asperiores corporis quo.', 'Architecto eveniet dolorum et et iure.', '94', 'example.jpg', '959', '748.02', 10, 30, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(35, 35, 'enim', 'ea', 'Incidunt voluptatum totam quis dolor ut et.', 'Est id et animi quis id aspernatur.', '50', 'example.jpg', '684', '506.16', 6, 21, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(36, 36, 'quasi', 'consequatur', 'Rerum ullam repellat culpa animi quibusdam commodi.', 'Sapiente sint esse repellendus qui ducimus.', '14', 'example.jpg', '900', '846', 7, 29, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(37, 37, 'omnis', 'ut', 'At veniam est dolores non.', 'Non eos id aperiam repellendus quia consequuntur consequatur.', '99', 'example.jpg', '296', '251.6', 4, 30, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(38, 38, 'nisi', 'sunt', 'Accusamus est fugiat adipisci aut.', 'Ex culpa illum eum hic qui et error.', '64', 'example.jpg', '656', '459.2', 9, 41, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(39, 39, 'doloribus', 'nostrum', 'Dolorem quia quibusdam ab vel aspernatur neque.', 'Magnam cupiditate qui quo et nobis illum.', '53', 'example.jpg', '372', '334.8', 10, 2, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(41, 41, 'optio', 'repellat', 'Aut reprehenderit rem rerum facere exercitationem dolore et.', 'Aut eveniet quod provident sit voluptatem aut recusandae.', '96', 'example.jpg', '145', '105.85', 3, 14, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(42, 42, 'omnis', 'qui', 'Autem ut voluptatibus ratione ut saepe tempore soluta.', 'Rerum nemo blanditiis error impedit quisquam provident incidunt sed.', '55', 'example.jpg', '531', '483.21', 8, 37, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(43, 1, 'بل', 'Hex Bolt 6 MM', 'منشأ صيني', 'Chinese product', '300', 'EOH1671918081.png', '1.2', '0.96', 9, 34, '2022-12-19 04:22:05', '2023-01-07 01:47:29', 'ربطة'),
(44, 44, 'atque', 'repudiandae', 'Nemo quas non aut dolor consectetur et natus.', 'Vel iste omnis saepe est eos id modi.', '27', 'example.jpg', '399', '355.11', 5, 13, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(45, 45, 'voluptas', 'totam', 'Deleniti ut laudantium amet veniam architecto qui.', 'Praesentium est ea est incidunt ullam hic similique.', '72', 'example.jpg', '351', '312.39', 8, 38, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(46, 46, 'aut', 'et', 'Sed ducimus ipsum non cupiditate aut earum.', 'Ex ratione pariatur commodi ipsam.', '18', 'example.jpg', '508', '360.68', 2, 12, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(47, 47, 'ut', 'qui', 'Perspiciatis rerum architecto odit.', 'Ut facere non ipsum perferendis assumenda eum dolorum.', '60', 'example.jpg', '704', '598.4', 10, 7, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(48, 48, 'maxime', 'quas', 'Non quibusdam ipsa delectus laudantium quis sunt.', 'Magnam sunt eligendi et eveniet id autem ab quaerat.', '74', 'example.jpg', '371', '304.22', 2, 14, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(49, 49, 'sapiente', 'provident', 'Qui ipsum ea et tempore ut.', 'Molestiae sunt qui aut necessitatibus itaque.', '98', 'example.jpg', '298', '271.18', 7, 12, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(50, 50, 'voluptatibus', 'officiis', 'Sed dolorem sint consequatur hic iste dolore aut dolor.', 'Natus pariatur quis ea molestiae necessitatibus excepturi.', '97', 'example.jpg', '629', '509.49', 6, 35, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(51, 51, 'doloribus', 'rerum', 'Ex enim possimus eos rerum explicabo et est.', 'Non sint nisi cupiditate natus aspernatur autem.', '23', 'example.jpg', '828', '579.6', 6, 34, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(52, 52, 'magnam', 'esse', 'Dolor tempora eius ut accusamus voluptatem quisquam vero.', 'Voluptate et velit necessitatibus in commodi qui.', '44', 'example.jpg', '573', '406.83', 8, 47, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(53, 53, 'amet', 'maxime', 'Qui repellendus ad asperiores veritatis optio.', 'Eum aliquid nam enim vitae at amet facilis.', '86', 'example.jpg', '831', '606.63', 8, 42, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(54, 54, 'a', 'nemo', 'Ratione qui quis et commodi quas consequatur.', 'Recusandae ducimus voluptas esse ipsa.', '83', 'example.jpg', '570', '501.6', 2, 36, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(55, 55, 'voluptates', 'est', 'Aliquid sunt accusantium fugiat laudantium modi.', 'Et quisquam blanditiis minus placeat asperiores optio.', '95', 'example.jpg', '166', '151.06', 4, 38, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(56, 56, 'quibusdam', 'animi', 'Mollitia voluptatem et voluptas quod odit tempore.', 'Soluta et et eum sapiente nobis.', '88', 'example.jpg', '193', '173.7', 7, 23, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(57, 57, 'sequi', 'cumque', 'Numquam quos magni ut est voluptatem.', 'Optio consequatur ullam ut ex possimus.', '18', 'example.jpg', '979', '783.2', 3, 6, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(58, 58, 'doloremque', 'voluptatem', 'Minus temporibus eos officiis non animi sed quia nam.', 'Voluptas at voluptatem error architecto et fuga.', '56', 'example.jpg', '516', '366.36', 9, 31, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(59, 59, 'odit', 'nihil', 'Voluptatibus corrupti voluptatem voluptas sint ducimus neque.', 'Aut perspiciatis placeat dolores perspiciatis perferendis.', '35', 'example.jpg', '289', '245.65', 10, 1, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(60, 60, 'rerum', 'tempore', 'Deleniti deleniti itaque dignissimos dolore fugit tempora.', 'Rerum cupiditate ea aut nulla quidem repellat.', '94', 'example.jpg', '252', '196.56', 2, 22, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(131, 131, 'برغي مسدس 12 ملم', 'Hex Bolt 12 MM', 'المنشأ صيني', 'Chinese product', '---', '2Fm1673477135.png', '0', NULL, 9, NULL, '2023-01-11 06:20:29', '2023-01-12 05:45:35', '---'),
(130, 130, 'برغي مسدس 10 ملم', 'Hex Bolt 10 MM', 'المنشأ صيني', 'Chinese product', '---', 'FVL1673477125.png', '0', NULL, 9, NULL, '2023-01-11 06:19:53', '2023-01-12 05:45:25', '---'),
(132, 132, 'صواميل مسدس', 'hex nut', 'المنشأ صيني', 'Chinese product', '---', 'x6S1673467299.png', '0', NULL, 23, NULL, '2023-01-12 03:01:39', '2023-01-12 03:01:39', '---'),
(63, 63, 'sequi', 'consequatur', 'Omnis quisquam est quis et dolores.', 'Hic delectus doloribus ipsa laboriosam ex.', '63', 'example.jpg', '992', '932.48', 2, 20, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(64, 64, 'quas', 'distinctio', 'Sed aut quaerat odit culpa.', 'Ut eveniet quas dicta excepturi doloribus aliquid omnis.', '18', 'example.jpg', '701', '658.94', 8, 14, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(65, 65, 'dolore', 'est', 'Eum vitae optio quo tempora error.', 'Minima excepturi ut hic quaerat.', '64', 'example.jpg', '849', '628.26', 4, 25, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(66, 66, 'eveniet', 'accusamus', 'Eum consequuntur id omnis expedita dolorem laudantium.', 'Natus possimus deserunt et voluptate totam enim tempore eos.', '16', 'example.jpg', '863', '621.36', 5, 9, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(67, 67, 'dolorem', 'quas', 'Cumque et beatae atque quas ea pariatur.', 'Laboriosam ut dolor sapiente ea qui culpa.', '55', 'example.jpg', '835', '793.25', 1, 24, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(139, 139, '10 ملم * 2 سم ( 45 حبة بالكيلو )', '10MM *2 CM', 'المنشأ صيني', 'Chinese product', '300', '5g71673474783.png', '2', '1.2', 9, 130, '2023-01-12 05:06:23', '2023-01-12 05:06:23', 'كيلو'),
(69, 69, 'aliquam', 'dolorem', 'Velit et fugiat a cupiditate itaque temporibus.', 'Enim molestias et dignissimos ipsum eos sunt et.', '88', 'example.jpg', '761', '608.8', 7, 42, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(70, 70, 'ipsam', 'architecto', 'Placeat saepe optio eum consequatur reprehenderit quibusdam dicta.', 'Ut velit soluta veniam earum.', '98', 'example.jpg', '998', '828.34', 1, 20, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(71, 71, 'omnis', 'nam', 'Aliquam qui rerum repellat.', 'Quia commodi molestiae officia quia voluptatum repellendus.', '51', 'example.jpg', '834', '675.54', 10, 35, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(72, 72, 'officia', 'aut', 'Impedit aut sunt asperiores at.', 'Optio sint at velit et.', '59', 'example.jpg', '381', '358.14', 2, 26, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(73, 73, 'perferendis', 'qui', 'Sequi est ex nihil ratione.', 'Doloribus consequuntur consequuntur assumenda earum iure amet neque.', '24', 'example.jpg', '151', '111.74', 8, 48, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(74, 74, 'eveniet', 'magni', 'Quis fugit molestias quas sunt earum.', 'Qui quo aut quae possimus corporis.', '43', 'example.jpg', '997', '797.6', 8, 12, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(75, 75, 'dolorum', 'quibusdam', 'Et et ipsum et rerum illo aut.', 'Voluptatem deleniti dolores quis consequatur accusantium sit.', '46', 'example.jpg', '566', '486.76', 2, 29, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(76, 76, 'rerum', 'fugit', 'Repellendus tenetur unde ipsam voluptatem eius explicabo.', 'Earum voluptate tempora aut est sunt qui vitae minima.', '95', 'example.jpg', '893', '625.1', 9, 50, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(77, 77, 'non', 'rerum', 'Tempore fugiat ipsa velit et ipsum quibusdam assumenda.', 'Quo quaerat illo quae fugit accusamus beatae est impedit.', '74', 'example.jpg', '282', '214.32', 5, 20, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(78, 78, 'rerum', 'eum', 'Blanditiis qui itaque odio hic excepturi fugiat aut ea.', 'Odit distinctio magni itaque dolorum neque corporis.', '47', 'example.jpg', '836', '693.88', 3, 9, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(79, 79, 'sequi', 'distinctio', 'Consequuntur enim et tempora.', 'Sunt itaque et vitae excepturi exercitationem.', '91', 'example.jpg', '806', '685.1', 10, 45, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(80, 80, 'possimus', 'omnis', 'Corrupti et aut eum.', 'Est quo culpa reiciendis iusto ab minima vel temporibus.', '38', 'example.jpg', '655', '615.7', 10, 12, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(81, 81, 'consequatur', 'commodi', 'Quia sapiente labore quae.', 'Dolores neque molestiae architecto excepturi.', '65', 'example.jpg', '431', '409.45', 8, 20, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(82, 82, 'repellendus', 'numquam', 'Magnam odit eaque qui quibusdam.', 'Eligendi ullam debitis dolor.', '97', 'example.jpg', '815', '611.25', 3, 50, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(83, 83, 'sequi', 'est', 'Esse aut quia ad fugit.', 'Tempore excepturi quia eligendi.', '94', 'example.jpg', '450', '405', 1, 27, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(85, 85, 'aut', 'reprehenderit', 'Ut ex ut nisi.', 'Quia culpa occaecati soluta corrupti in.', '52', 'example.jpg', '877', '710.37', 9, 46, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(86, 86, 'vel', 'deleniti', 'Nesciunt nostrum dolores voluptatem libero ab illo dicta.', 'Itaque et id aut soluta dolore reiciendis qui esse.', '99', 'example.jpg', '676', '635.44', 3, 26, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(87, 87, 'ut', 'quam', 'Ut aut tenetur ut qui soluta et harum deleniti.', 'Perferendis voluptatibus facere est corporis illum rem.', '13', 'example.jpg', '363', '286.77', 2, 25, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(88, 88, 'est', 'qui', 'Doloribus maxime corrupti aliquam perferendis autem perspiciatis consequatur.', 'Dolor occaecati nulla at est dolores harum.', '47', 'example.jpg', '263', '223.55', 7, 34, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(89, 89, 'libero', 'omnis', 'Soluta doloribus aut neque perferendis et.', 'Deleniti modi totam amet amet.', '49', 'example.jpg', '161', '146.51', 9, 22, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(90, 90, 'et', 'similique', 'Voluptas voluptatibus ullam quibusdam tempore.', 'Suscipit quasi similique nulla voluptates.', '50', 'example.jpg', '584', '449.68', 10, 38, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(91, 91, 'quos', 'soluta', 'Similique quae blanditiis et doloribus repudiandae recusandae velit.', 'Voluptas perferendis et distinctio quo possimus praesentium officiis.', '89', 'example.jpg', '701', '616.88', 5, 26, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(134, 134, '8 ملم * 10 سم ( 25 حبة بالكيلو )', '8mm *10 cm', 'المنشأ صيني', 'Chinese product', '300', 'tKG1673468278.png', '2', '1.2', 9, 116, '2023-01-12 03:17:58', '2023-01-12 03:17:58', 'كيلو'),
(93, 93, 'totam', 'consequatur', 'Magnam est rerum velit neque.', 'Impedit nam laborum recusandae voluptatem laudantium minus.', '54', 'example.jpg', '910', '764.4', 3, 27, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(94, 94, 'ut', 'et', 'Iste dolorem dolorem omnis est.', 'Magnam quae eos accusamus molestiae dicta et nulla.', '65', 'example.jpg', '832', '782.08', 3, 42, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(95, 95, 'est', 'qui', 'Unde alias debitis rerum natus.', 'Aliquam minima in officiis dolor suscipit et eos.', '11', 'example.jpg', '647', '511.13', 7, 21, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(96, 96, 'corporis', 'deleniti', 'Tenetur ipsa adipisci temporibus quis.', 'Ut quam tempore neque.', '63', 'example.jpg', '570', '541.5', 4, 6, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(97, 97, 'explicabo', 'optio', 'Fugiat molestiae ducimus sunt.', 'Sint et vel non placeat expedita quibusdam.', '56', 'example.jpg', '876', '744.6', 2, 41, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(98, 98, 'est', 'dolor', 'Ut quibusdam tempora vel quia sit qui quo.', 'Totam debitis illum qui cumque nihil.', '79', 'example.jpg', '594', '457.38', 9, 25, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(133, 133, 'رنديلة زنبرك', 'Spring  washer', 'المنشأ صيني', 'Chinese product', '---', 'Rix1673467771.png', '0', NULL, 22, NULL, '2023-01-12 03:09:31', '2023-01-12 03:09:31', '---'),
(100, 100, 'nisi', 'in', 'Similique eos architecto quos ut porro sunt ea quas.', 'Necessitatibus illum nam ut aut quo consequatur quia.', '18', 'example.jpg', '175', '155.75', 6, 48, '2022-12-19 04:22:05', '2022-12-19 04:22:05', 'ربطة'),
(105, 1, '6 ملم * 1.6 سم  ( 185 حبة بالكيلو )', '6MM *1.6 CM', 'المنشأ صيني', 'Chinese product', '300', 'l131673031365.png', '1.2', '0.72', 9, 104, '2023-01-07 01:56:05', '2023-01-07 02:42:05', 'كيلو'),
(106, 1, '6 ملم * 2 سم ( 172 حبة بالكيلو )', '6MM * 2CM', 'المنشأ صيني', 'Chinese product', '300', 'Eww1673032830.png', '2', '1.2', 9, 104, '2023-01-07 02:20:30', '2023-01-07 02:36:51', 'كيلو'),
(107, 0, '6ملم*2.5 سم(145 حبة بالكيلو )', '6MM * 2.5 CM', 'المنشأ صيني', 'Chinese product', '300', 'tb61673033282.png', '2', '1.2', 9, 104, '2023-01-07 02:28:02', '2023-01-07 02:37:27', 'كيلو'),
(108, 108, '6 ملم * 3 سم ( 135 حبة بالكيلو )', '6MM * 3 CM', 'المنشأ صيني', 'Chinese product', '300', '7hJ1673033381.png', '2', '1.2', 9, 104, '2023-01-07 02:29:41', '2023-01-07 02:29:41', 'كيلو'),
(109, 109, '6 ملم * 4 سم (115 حبة بالكيلو )', '6 MM *4 CM', 'المنشأ صيني', 'Chinese product', '300', 'igN1673034257.png', '2', '1.2', 9, 104, '2023-01-07 02:44:17', '2023-01-07 02:44:17', 'كيلو'),
(110, 110, '6 ملم * 5 سم ( 90 حبة بالكيلو )', '6 MM * 5 CM', 'المنشأ صيني', 'Chinese product', '300', 'ELH1673034624.png', '2', '1.2', 9, 104, '2023-01-07 02:50:24', '2023-01-07 02:50:24', 'كيلو'),
(111, 111, '6 ملم * 6 سم ( 75 حبة بالكيلو )', '6 MM * 6 CM', 'المنشأ صيني', 'Chinese product', '300', 'zIn1673034672.png', '2', '1.2', 9, 104, '2023-01-07 02:51:12', '2023-01-07 02:51:12', 'كيلو'),
(112, 112, '6 ملم * 7 سم  ( 70 حبة بالكيلو )', '6MM *7 CM', 'المنشأ صيني', 'Chinese product', '300', 'JB91673034741.png', '2', '1.2', 9, 104, '2023-01-07 02:52:21', '2023-01-07 02:52:21', 'كيلو'),
(113, 113, '6 ملم * 8 سم ( 55 حبة بالكيلو )', '6MM *8 CM', 'المنشأ صيني', 'Chinese product', '300', 'U5z1673034788.png', '2', '1.2', 9, 104, '2023-01-07 02:53:08', '2023-01-07 02:53:08', 'كيلو'),
(114, 114, '6 ملم * 9 سم ( 50 حبة بالكيلو )', '6MM *9 CM', 'المنشأ صيني', 'Chinese product', '300', 'aEV1673034832.png', '2', '1.2', 9, 104, '2023-01-07 02:53:52', '2023-01-07 02:53:52', 'كيلو'),
(115, 115, '6 ملم * 10 سم ( 45 حبة بالكيلو )', '6MM * 10 CM', 'المنشأ صيني', 'Chinese product', '300', '0q31673034874.png', '2', '1.2', 9, 104, '2023-01-07 02:54:34', '2023-01-07 02:54:34', 'كيلو'),
(120, 120, '8 ملم * 2.5 سم (75 حبة بالكيلو )', '8MM * 2.5 CM', 'المنشأ صيني', 'Chinese MADE', '300', 'tyk1673086855.png', '2', '1.2', 9, 116, '2023-01-07 17:20:55', '2023-01-07 17:20:55', 'كيلو'),
(119, 119, '8 ملم * 2 سم ( 90 حبة بالكيلو )', '8MM * 2 CM', 'المنشأ صيني', 'Chinese product', '300', 'N801673040698.png', '2', '1.2', 9, 116, '2023-01-07 04:31:38', '2023-01-07 04:31:38', 'كيلو'),
(121, 121, '8 ملم * 3 سم (64 حبة بالكيلو )', '8MM *3 CM', 'المنشأ صيني', 'Chinese MADE', '300', 'mXF1673086985.png', '2', '1.2', 9, 116, '2023-01-07 17:23:05', '2023-01-07 17:23:05', 'كيلو'),
(122, 122, '8 ملم * 4 سم (55 حبة بالكيلو )', '8MM *4 CM', 'المنشأ صيني', 'Chinese MADE', '300', 'TR51673087051.png', '2', '1.2', 9, 116, '2023-01-07 17:24:11', '2023-01-07 17:24:11', 'كيلو'),
(123, 123, '8 ملم * 5 سم ( 48 حبة بالكيلو )', '8MM *5 CM', 'المنشأ صيني', 'Chinese MADE', '300', 'Xx71673087828.png', '2', '1.2', 9, 116, '2023-01-07 17:37:08', '2023-01-07 17:37:08', 'كيلو'),
(124, 124, '8 ملم * 6 سم (42 حبة بالكيلو )', '8MM * 6 CM', 'المنشأ صيني', 'Chinese MADE', '300', 'ABF1673088898.png', '2', '1.2', 9, 116, '2023-01-07 17:54:58', '2023-01-07 17:54:58', 'كيلو'),
(125, 1, '8 ملم * 7 سم ( 36 حبة بالكيلو )', '8MM * 7 CM', 'المنشأ صيني', 'Chinese MADE', '300', '6Ue1673088941.png', '2', '1.2', 9, 116, '2023-01-07 17:55:41', '2023-01-11 06:18:25', 'كيلو'),
(126, 126, '8 ملم * 8 سم ( 36 حبة بالكيلو )', '8MM * 8 CM', 'المنشأ صيني', 'Chinese MADE', '300', 'wOv1673089081.png', '2', '1.2', 9, 116, '2023-01-07 17:58:01', '2023-01-07 17:58:01', 'كيلو'),
(138, 138, '10 ملم *1.6 سم ( 62 حبة بالكيلو )', '10MM *1.6CM', 'المنشأ صيني', 'Chinese product', '300', 'DYP1673468779.png', '2', '1.2', 9, 130, '2023-01-12 03:26:19', '2023-01-12 03:26:48', 'كيلو'),
(140, 140, '10 ملم *2.5 سم ( 39 حبة بالكيلو )', '10MM *2.5 CM', 'المنشأ صيني', 'Chinese product', '300', 'GVp1673475055.png', '2', '1.2', 9, 130, '2023-01-12 05:10:55', '2023-01-12 05:11:12', 'كيلو'),
(141, 141, '10 ملم *3 سم ( 35 حبة بالكيلو )', '10MM *3 CM', 'المنشأ صيني', 'Chinese product', '300', 'Bae1673475155.png', '2', '1.2', 9, 130, '2023-01-12 05:12:35', '2023-01-12 05:12:35', 'كيلو'),
(142, 142, '10 ملم *4 سم ( 30 حبة بالكيلو )', '10MM *4 CM', 'المنشأ صيني', 'Chinese product', '300', 'KYj1673475197.png', '2', '1.2', 9, 130, '2023-01-12 05:13:17', '2023-01-12 05:13:17', 'كيلو'),
(143, 143, '10 ملم * 5 سم ( 25 حبة بالكيلو )', '10MM *5 CM', 'منشأ صيني', 'Chinese product', '300', 'rmL1673475236.png', '2', '1.2', 9, 130, '2023-01-12 05:13:56', '2023-01-12 05:13:56', 'كيلو'),
(144, 144, '10 ملم * 6 سم ( 23 حبة بالكيلو )', '10MM *6 CM', 'المنشأ صيني', 'Chinese product', '300', 'JD41673475271.png', '2', '1.2', 9, 130, '2023-01-12 05:14:31', '2023-01-12 05:14:31', 'كيلو'),
(145, 145, '10 ملم * 7 سم ( 21 حبة بالكيلو )', '10MM *7 CM', 'المنشأ صيني', 'Chinese product', '300', '1Lm1673475296.png', '2', '1.2', 9, 130, '2023-01-12 05:14:56', '2023-01-12 05:15:41', 'كيلو'),
(146, 146, '10 ملم * 8 سم ( 29 حبة بالكيلو )', '10MM *8 CM', 'المنشأ صيني', 'Chinese product', '300', 'EwB1673475326.png', '2', '1.2', 9, 130, '2023-01-12 05:15:26', '2023-01-12 05:15:59', 'كيلو'),
(147, 147, '10 ملم * 10 سم ( 16 حبة بالكيلو )', '10MM *10CM', 'المنشأ صيني', 'Chinese product', '300', 'pXA1673475404.png', '2', '1.2', 9, 130, '2023-01-12 05:16:44', '2023-01-12 05:16:44', 'كيلو'),
(148, 148, '10 ملم * 12 سم ( 14 حبة بالكيلو )', '10MM *12 CM', 'المنشأ صيني', NULL, '300', '1501673475704.png', '2', '1.2', 9, 130, '2023-01-12 05:21:44', '2023-01-12 05:21:44', 'كيلو'),
(149, 149, '10 ملم * 15 سم ( 12 حبة بالكيلو )', '10MM *15 CM', 'المنشأ صيني', 'Chinese product', '300', 'Dnj1673475740.png', '2', '1.2', 9, 130, '2023-01-12 05:22:20', '2023-01-12 05:22:20', 'كيلو'),
(150, 150, '12 ملم * 2 سم ( 32 حبة بالكيلو )', '12MM *2 CM', 'المنشأ صيني', 'Chinese product', '300', 'sR81673476051.png', '2', '1.2', 9, 131, '2023-01-12 05:27:31', '2023-01-12 05:35:51', 'كيلو'),
(151, 151, '12 ملم * 2.5 سم ( 29 حبة بالكيلو )', '12MM *2.5 CM', 'المنشأ صيني', 'Chinese product', '300', '8SU1673476493.png', '2', '1.2', 9, 131, '2023-01-12 05:34:53', '2023-01-12 05:34:53', 'كيلو'),
(152, 152, '12 ملم * 3 سم ( 25 حبة بالكيلو )', '12MM * 3 CM', 'المنشأ صيني', 'Chinese product', '300', 'lcA1673476600.png', '2', '1.2', 9, 131, '2023-01-12 05:36:40', '2023-01-12 05:36:40', 'كيلو'),
(153, 153, '12 ملم * 4 سم ( 21 حبة بالكيلو )', '12MM *4 CM', 'المنشأ صيني', 'Chinese product', '300', 'UAc1673476638.png', '2', '1.2', 9, 131, '2023-01-12 05:37:18', '2023-01-12 05:37:18', 'كيلو'),
(154, 154, '12 ملم * 5 سم ( 18 حبة بالكيلو )', '12MM * 5CM', 'المنشأ صيني', 'Chinese product', '300', 'c831673476690.png', '2', '1.2', 9, 131, '2023-01-12 05:38:10', '2023-01-12 05:38:10', 'كيلو'),
(155, 155, '12 ملم * 6 سم ( 16 حبة بالكيلو )', '12MM *6 CM', 'المنشأ صيني', 'Chinese product', '300', '6ch1673476721.png', '2', '1.2', 9, 131, '2023-01-12 05:38:41', '2023-01-12 05:38:41', 'كيلو'),
(156, 156, '12 ملم * 7 سم ( 15 حبة بالكيلو )', '12MM * 7 CM', 'المنشأ صيني', 'Chinese product', '300', 'Hgg1673476774.png', '2', '1.2', 9, 131, '2023-01-12 05:39:34', '2023-01-12 05:39:34', 'كيلو'),
(157, 157, '12 ملم * 8 سم ( 14 حبة بالكيلو )', '12MM * 8CM', 'المنشأ صيني', 'Chinese product', '300', 'd8C1673476811.png', '2', '1.2', 9, 131, '2023-01-12 05:40:11', '2023-01-12 05:40:11', 'كيلو'),
(158, 158, '12 ملم * 10 سم ( 11 حبة بالكيلو )', '12MM * 10CM', 'المنشأ صيني', 'Chinese product', '300', 'xPJ1673476850.png', '2', '1.2', 9, 131, '2023-01-12 05:40:50', '2023-01-12 05:40:50', 'كيلو'),
(159, 159, '12 ملم * 12 سم (  10 حبة بالكيلو )', '12MM * 12CM', 'المنشأ صيني', 'Chinese product', '300', 'S6o1673476983.png', '2', '1.2', 9, 131, '2023-01-12 05:43:03', '2023-01-12 05:43:19', 'كيلو'),
(160, 160, '12 ملم * 15 سم ( 9 حبة بالكيلو )', '12MM *15CM', 'المنشأ صيني', 'Chinese product', '300', 'wKt1673477051.png', '2', '1.2', 9, 131, '2023-01-12 05:44:11', '2023-01-12 05:44:11', 'كيلو'),
(161, 161, 'برغي مسدس 14 ملم', 'HEX SCREW 14 MM', 'المنشأ صيني', 'Chinese product', '---', 'Vbj1673477169.png', '0', NULL, 9, NULL, '2023-01-12 05:46:09', '2023-01-12 05:46:09', '---'),
(162, 162, 'برغي مسدس 16 ملم', 'HEX SCREW 16 MM', 'المنشأ صيني', 'Chinese product', '---', 'UO41673477192.png', '0', NULL, 9, NULL, '2023-01-12 05:46:32', '2023-01-12 05:46:32', '---'),
(163, 163, 'برغي مسدس 20 ملم', 'HEX SCREW 20 MM', 'المنشأ صيني', 'Chinese product', '---', 'Ab91673477230.png', '0', NULL, 9, NULL, '2023-01-12 05:47:10', '2023-01-12 05:47:10', '---'),
(164, 164, 'برغي مسدس 24 ملم', 'HEX SCREW 24 MM', 'المنشأ صيني', 'Chinese product', '---', 'EiM1673477256.png', '0', NULL, 9, NULL, '2023-01-12 05:47:36', '2023-01-12 05:47:36', '---'),
(165, 165, 'برغي مسدس 27 ملم', 'HEX SCREW 27 MM', 'المنشأ صيني', 'Chinese product', '---', 'mte1673477276.png', '0', NULL, 9, NULL, '2023-01-12 05:47:56', '2023-01-12 05:47:56', '---'),
(166, 166, '14 ملم * 3 سم ( 17 حبة بالكيلو )', '14MM *3 CM', 'المنشأ صيني', 'Chinese product', '300', 'tgl1673477784.png', '2', '1.2', 9, 161, '2023-01-12 05:56:24', '2023-01-12 05:56:24', 'كيلو'),
(167, 167, '14 ملم * 4 سم ( 15 حبة بالكيلو )', '14MM * 4CM', 'المنشأ صيني', 'Chinese product', '300', 'mPm1673477820.png', '2', '1.2', 9, 161, '2023-01-12 05:57:00', '2023-01-12 05:57:00', 'كيلو'),
(168, 168, '14 ملم * 5 سم ( 13 حبة بالكيلو )', '14MM * 5CM', 'المنشأ صيني', 'Chinese product', '300', '4ii1673477870.png', '2', '1.2', 9, 161, '2023-01-12 05:57:50', '2023-01-12 05:58:11', 'كيلو'),
(169, 169, '14 ملم * 6 سم ( 11 حبة بالكيلو )', '14MM * 6CM', 'المنشأ صيني', 'Chinese product', '300', '7La1673477927.png', '2', '1.2', 9, 161, '2023-01-12 05:58:47', '2023-01-12 05:59:01', 'كيلو'),
(170, 170, '14 ملم * 7 سم ( 10 حبة بالكيلو )', '14MM * 7CM', 'المنشأ صيني', 'Chinese product', '300', 'DtK1673477989.png', '2', '1.2', 9, 161, '2023-01-12 05:59:49', '2023-01-12 05:59:49', 'كيلو'),
(171, 171, '14 ملم * 8 سم ( 8 حبة بالكيلو )', '14MM *8 CM', 'المنشأ صيني', 'Chinese product', '300', 'Qyj1673478066.png', '2', '1.2', 9, 161, '2023-01-12 06:01:06', '2023-01-12 06:01:06', 'كيلو'),
(172, 172, '14 ملم * 100 سم ( 8 حبة بالكيلو )', '14MM *10CM', 'المنشأ صيني', 'Chinese product', '300', 'rc41673478097.png', '2', '1.2', 9, 161, '2023-01-12 06:01:37', '2023-01-12 06:01:37', 'كيلو'),
(173, 173, '14 ملم * 15 سم ( 4 حبة بالكيلو )', '14MM *15CM', 'المنشأ صيني', 'Chinese product', '300', 'hMq1673478130.png', '2', '1.2', 9, 161, '2023-01-12 06:02:10', '2023-01-12 06:02:10', 'كيلو'),
(174, 174, '16 ملم * 3 سم ( 10 حبة بالكيلو )', '16MM *3CM', 'المنشأ صيني', 'Chinese product', '300', 'yqO1673478180.png', '2', '1.2', 9, 162, '2023-01-12 06:03:00', '2023-01-12 06:03:00', 'كيلو'),
(175, 175, '16 ملم * 4 سم ( 11 حبة بالكيلو )', '16MM * 4CM', 'المنشأ صيني', 'Chinese product', '300', 'cl11673478213.png', '2', '1.2', 9, 162, '2023-01-12 06:03:33', '2023-01-12 06:03:33', 'كيلو'),
(176, 176, '16 ملم * 5 سم ( 11 حبة بالكيلو )', '16MM * 5CM', 'المنشأ صيني', 'Chinese product', '300', 'TVq1673478241.png', '2', '1.2', 9, 162, '2023-01-12 06:04:01', '2023-01-12 06:04:01', 'كيلو'),
(177, 177, '16 ملم * 6 سم ( 8  حبة بالكيلو )', '16MM * 6CM', 'المنشأ صيني', 'Chinese product', '300', 'igW1673478274.png', '2', '1.2', 9, 162, '2023-01-12 06:04:34', '2023-01-12 06:04:34', 'كيلو'),
(178, 178, '16 ملم * 7 سم (  7 حبة بالكيلو )', '16MM *7 CM', 'منشأ صيني', 'Chinese product', '300', '6Tt1673478306.png', '2', '1.2', 9, 162, '2023-01-12 06:05:06', '2023-01-12 06:05:06', 'كيلو'),
(179, 179, '16 ملم * 8 سم ( 7 حبة بالكيلو )', '16MM *8 CM', 'المنشأ صيني', 'Chinese product', '300', 'TGO1673478337.png', '2', '1.2', 9, 162, '2023-01-12 06:05:37', '2023-01-12 06:05:37', 'كيلو'),
(180, 180, '16 ملم * 10 سم (6 حبة بالكيلو )', '16MM * 10CM', 'المنشأ صيني', 'Chinese product', '300', 'Lnz1673478370.png', '2', '1.2', 9, 162, '2023-01-12 06:06:10', '2023-01-12 06:06:10', 'كيلو'),
(181, 181, '16 ملم * 12 سم ( 5 حبة بالكيلو )', '16MM *12 CM', 'المنشأ صيني', 'Chinese product', '300', '0sW1673478400.png', '2', '1.2', 9, 162, '2023-01-12 06:06:40', '2023-01-12 06:06:40', 'كيلو'),
(182, 182, '16 ملم * 20سم ( 2 حبة بالكيلو )', '16MM *20CM', 'المنشأ صيني', 'Chinese product', '300', 'Oud1673478451.png', '2', '1.2', 9, 162, '2023-01-12 06:07:31', '2023-01-12 06:07:31', 'كيلو'),
(183, 183, '20 ملم * 3 سم ( 8 حبة بالكيلو )', '20MM * 3 CM', 'المنشأ صيني', 'Chinese product', '300', '3ZJ1673478517.png', '2', '1.2', 9, 163, '2023-01-12 06:08:37', '2023-01-12 06:08:37', 'كيلو'),
(184, 184, '20 ملم * 4 سم ( 7 حبة بالكيلو )', '20MM *4 CM', 'المنشأ صيني', 'Chinese product', '300', 'vHG1673478544.png', '2', '1.2', 9, 163, '2023-01-12 06:09:04', '2023-01-12 06:09:04', 'كيلو'),
(185, 185, '20 ملم * 5 سم ( 6 حبة بالكيلو )', '20MM * 5 CM', 'المنشأ صيني', 'Chinese product', '300', '9FP1673479052.png', '2', '1.2', 9, 163, '2023-01-12 06:17:32', '2023-01-12 06:17:32', 'كيلو'),
(186, 186, '20 ملم * 6 سم ( 5 حبة بالكيلو )', '20MM *6 CM', 'المنشأ صيني', 'Chinese product', '300', 'BFD1673479081.png', '2', '1.2', 9, 163, '2023-01-12 06:18:01', '2023-01-12 06:18:01', 'كيلو'),
(187, 187, '20 ملم * 7 سم ( 5 حبة بالكيلو )', '20MM *7 CM', 'المنشأ صيني', 'Chinese product', '300', 'lkY1673479109.png', '2', '1.2', 9, 163, '2023-01-12 06:18:29', '2023-01-12 06:18:29', 'كيلو'),
(188, 188, '20 ملم * 8 سم ( 4 حبة بالكيلو )', '20MM * 8CM', 'المنشأ صيني', 'Chinese product', '300', 'ipu1673479139.png', '2', '1.2', 9, 163, '2023-01-12 06:18:59', '2023-01-12 06:18:59', 'كيلو'),
(189, 189, '20 ملم * 10 سم ( 4 حبة بالكيلو )', '20MM *10CM', 'المنشأ صيني', 'Chinese product', '300', 'LYy1673479175.png', '2', '1.2', 9, 163, '2023-01-12 06:19:35', '2023-01-12 06:19:35', 'كيلو'),
(190, 190, '20 ملم * 12 سم ( 3 حبة بالكيلو )', '20MM * 12 CM', 'المنشأ صيني', 'Chinese product', '300', 'mQX1673479210.png', '2', '1.2', 9, 163, '2023-01-12 06:20:10', '2023-01-12 06:20:10', 'كيلو'),
(191, 191, '20 ملم * 15 سم ( 3 حبة بالكيلو )', '20MM *15 CM', 'المنشأ صيني', 'Chinese product', '300', 'ByF1673480992.png', '2', '1.2', 9, 163, '2023-01-12 06:49:52', '2023-01-12 06:49:52', 'كيلو'),
(192, 192, '20 ملم * 17 سم ( 2 حبة بالكيلو )', '20MM *17 CM', 'المنشأ صيني', 'Chinese product', '300', 'CPo1673481021.png', '2', '1.2', 9, 163, '2023-01-12 06:50:21', '2023-01-12 06:50:21', 'كيلو'),
(193, 193, '24 ملم * 10 سم', '24 MM *10 CM', 'المنشأ صيني', 'Chinese product', '300', 'wBV1673481077.png', '2', '1.2', 9, 164, '2023-01-12 06:51:17', '2023-01-12 06:51:17', 'كيلو'),
(194, 194, '27 ملم * 15 سم', '27 MM * 15 CM', 'المنشأ صيني', 'Chinese product', '300', 'qKW1673481130.png', '2', '1.5', 9, 165, '2023-01-12 06:52:10', '2023-01-12 06:52:10', 'كيلو'),
(195, 195, 'براغي شيبورد 4 ملم', '4mm  chipboard screws', 'المنشأ صيني', 'Chinese product', '---', 'CG41673649072.jpg', '0', NULL, 12, NULL, '2023-01-14 05:31:12', '2023-01-14 05:31:12', '---'),
(196, 196, 'براغي شيبورد 5ملم', 'SCREW CHIPBOARD 5 mm', 'المنشأ صيني', 'Chinese MADE', '---', 'ZzC1673697585.jpg', '0', NULL, 12, NULL, '2023-01-14 18:59:45', '2023-01-14 18:59:45', '---'),
(197, 197, 'براغي شيبورد 6 ملم', 'SCREW CHIPBOARD 6mm', 'المنشأ صيني', 'Chinese MADE', '---', 'jJJ1673698999.jpg', '0', NULL, 12, NULL, '2023-01-14 19:23:19', '2023-01-14 19:23:19', '---'),
(198, 198, '4 ملم * 1.6 سم ( 1030 برغي بالكيلو )', '4mm * 1.6 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'y1W1673700695.jpg', '2.3', '1.61', 12, 195, '2023-01-14 19:51:35', '2023-01-14 19:51:35', 'كيلو'),
(199, 199, '4 ملم * 1.8 سم (  950 برغي بالكيلو )', '4mm *1.8 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'UQZ1673701428.jpg', '2.3', '1.61', 12, 195, '2023-01-14 20:03:48', '2023-01-14 20:03:48', 'كيلو'),
(200, 200, '4 ملم * 2 سم ( 810 برغي بالكيلو )', '4mm * 2 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'i601673701563.jpg', '2.3', '1.61', 12, 195, '2023-01-14 20:06:03', '2023-01-14 20:06:03', 'كيلو'),
(201, 201, '4 ملم * 2.5 سم ( 660 برغي بالكيلو )', '4mm * 2.5 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'SB61673702924.jpg', '2.3', '1.61', 12, 195, '2023-01-14 20:28:44', '2023-01-14 20:28:44', 'كيلو'),
(202, 202, '4 ملم * 3 سم ( 550 برغي بالكيلو )', '4mm * 3 cm', 'المنشأ صيني', 'Chinese MADE', '300', '0SE1673702961.jpg', '2.3', '1.61', 12, 195, '2023-01-14 20:29:21', '2023-01-14 20:52:09', 'كيلو'),
(203, 203, '4 ملم * 3.5 سم ( 577 برغي بالكيلو )', '4mm * 3.5 cm', 'المنشأ صيني', 'Chinese MADE', '300', '4tl1673704885.jpg', '2.3', '1.61', 12, 195, '2023-01-14 21:01:25', '2023-01-14 21:01:25', 'كيلو'),
(204, 204, '4 ملم * 4 سم (  500 برغي بالكيلو )', '4mm *4 cm', 'المنشأ صيني', 'Chinese MADE', '300', '0N81673704984.jpg', '2.3', '1.61', 12, 195, '2023-01-14 21:03:04', '2023-01-14 21:03:04', 'كيلو'),
(205, 205, '4 ملم * 5 سم ( 360 برغي بالكيلو )', '4mm * 5 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'u7j1673705135.jpg', '2.3', '1.61', 12, 195, '2023-01-14 21:05:35', '2023-01-14 21:07:38', 'كيلو'),
(206, 206, '4 ملم * 6 سم ( 340 برغي بالكيلو )', '4mm * 6 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'PTn1673705211.jpg', '2.3', '1.61', 12, 195, '2023-01-14 21:06:51', '2023-01-14 21:06:51', 'كيلو'),
(207, 207, '5 ملم * 2 سم ( 520 برغي بالكيلو )', '5mm * 2 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'JYT1673706056.jpg', '2.3', '1.61', 12, 196, '2023-01-14 21:20:56', '2023-01-14 21:20:56', 'كيلو'),
(208, 208, '5 ملم * 2.5 سم ( 450 برغي بالكيلو )', '5mm * 2.5 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'HUR1673706130.jpg', '2.3', '1.61', 12, 196, '2023-01-14 21:22:10', '2023-01-14 21:24:49', 'كيلو'),
(209, 209, '5 ملم * 3 سم (  380 برغي بالكيلو )', '5mm * 3 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'l9I1673706385.jpg', '2.3', '1.61', 12, 196, '2023-01-14 21:26:25', '2023-01-14 21:26:25', 'كيلو'),
(210, 210, '5 ملم * 3.5 سم ( 350 برغي بالكيلو )', '5mm * 3.5 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'jh41673706446.jpg', '2.3', '1.61', 12, 196, '2023-01-14 21:27:26', '2023-01-14 21:27:26', 'كيلو'),
(211, 211, '5 ملم * 4 سم ( 290 برغي بالكيلو )', '5mm * 4 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'S2B1673706510.jpg', '2.3', '1.61', 12, 196, '2023-01-14 21:28:30', '2023-01-14 21:28:30', 'كيلو'),
(212, 212, '5 ملم * 5 سم ( 260 برغي بالكيلو )', '5mm * 5 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'Qyy1673706544.jpg', '2.3', '1.61', 12, 196, '2023-01-14 21:29:04', '2023-01-14 21:29:04', 'كيلو'),
(213, 213, '5 ملم * 6 سم ( 206 برغي بالكيلو )', '5mm * 6 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'tS91673706662.jpg', '2.3', '1.61', 12, 196, '2023-01-14 21:31:02', '2023-01-14 21:31:02', 'كيلو'),
(214, 214, '5 ملم * 7 سم ( 190 برغي بالكيلو )', '5mm * 7 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'BlL1673706694.jpg', '2.3', '1.61', 12, 196, '2023-01-14 21:31:34', '2023-01-14 21:31:34', 'كيلو'),
(215, 215, '5 ملم * 8 سم ( 160 برغي بالكيلو )', '5mm * 8 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'JKG1673706764.jpg', '2.3', '1.61', 12, 196, '2023-01-14 21:32:44', '2023-01-14 21:32:44', 'كيلو'),
(216, 216, '5 ملم * 10 سم ( 120 برغي بالكيلو )', '5mm * 10 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'jte1673706800.jpg', '2.3', '1.61', 12, 196, '2023-01-14 21:33:20', '2023-01-14 21:33:20', 'كيلو'),
(217, 217, 'براغي شيبورد 4.5 ملم', 'SCREW CHIPBOARD 4.5 mm', 'المنشأ صيني', 'Chinese MADE', '---', 'yHt1673706861.jpg', '0', NULL, 12, NULL, '2023-01-14 21:34:21', '2023-01-14 21:34:21', '---'),
(218, 218, '4.5 ملم * 3.5 سم ( 400 برغي بالكيلو )', '4.5mm *3.5 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'FZk1673706922.jpg', '2.3', '1.61', 12, 217, '2023-01-14 21:35:22', '2023-01-14 21:35:22', 'كيلو'),
(219, 219, '4.5 ملم * 4 سم ( 390 برغي بالكيلو )', '4.5mm * 4 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'l4U1673706966.jpg', '2.3', '1.61', 12, 217, '2023-01-14 21:36:06', '2023-01-14 21:36:06', 'كيلو'),
(220, 220, '6 ملم * 4 سم ( 200 برغي بالكيلو )', '6mm * 4 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'B1d1673707081.jpg', '2.3', '1.61', 12, 197, '2023-01-14 21:38:01', '2023-01-14 21:38:01', 'كيلو'),
(221, 221, '6 ملم * 5 سم ( 160 برغي بالكيلو )', '6mm * 5 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'tBo1673707123.jpg', '2.3', '1.61', 12, 197, '2023-01-14 21:38:43', '2023-01-14 21:38:43', 'كيلو'),
(222, 222, '6 ملم * 6 سم ( 140 برغي بالكيلو )', '6mm * 6 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'uMw1673707233.jpg', '2.3', '1.61', 12, 197, '2023-01-14 21:40:33', '2023-01-14 21:46:10', 'كيلو'),
(223, 223, '6 ملم * 7 سم ( 130برغي بالكيلو )', '6mm *7 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'UYA1673707418.jpg', '2.3', '1.61', 12, 197, '2023-01-14 21:43:38', '2023-01-14 21:45:56', 'كيلو'),
(224, 224, '6 ملم * 8 سم ( 110 برغي بالكيلو )', '6mm * 8 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'K1u1673707453.jpg', '2.3', '1.61', 12, 197, '2023-01-14 21:44:13', '2023-01-14 21:44:13', 'كيلو'),
(225, 225, '6 ملم * 10 سم ( 90 برغي بالكيلو )', '6mm * 10 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'A1H1673707489.jpg', '2.3', '1.61', 12, 197, '2023-01-14 21:44:49', '2023-01-14 21:44:49', 'كيلو'),
(226, 226, 'براغي شيبورد اسود 4.2 ملم', 'drywall screws 4.2 mm', 'المنشأ صيني', 'Chinese MADE', '---', 'tjr1673709424.png', '0', NULL, 13, NULL, '2023-01-14 22:17:04', '2023-01-14 22:24:39', '---'),
(227, 227, '4.2 ملم * 2.5 سم ( 700 برغي بالكيلو )', '4.2mm * 2.5 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'Jw21673709988.png', '2.3', '1.61', 13, 226, '2023-01-14 22:26:28', '2023-01-14 22:26:28', 'كيلو'),
(228, 228, '4.2 ملم * 3 سم ( 490 برغي بالكيلو )', '4.2mm * 3 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'GjP1673787440.png', '2.3', '1.61', 13, 226, '2023-01-15 19:57:20', '2023-01-15 19:57:20', 'كيلو'),
(229, 229, '4.2 ملم * 4 سم ( 370 برغي بالكيلو )', '4.2mm * 4 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'qpa1673787812.png', '2.3', '1.61', 13, 226, '2023-01-15 20:03:32', '2023-01-15 20:03:32', 'كيلو'),
(230, 230, '4.2 ملم * 5 سم ( 290 برغي بالكيلو )', '4.2mm *5 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'uTf1673787852.png', '2.3', '1.61', 13, 226, '2023-01-15 20:04:12', '2023-01-15 20:04:12', 'كيلو'),
(231, 231, '4.2 ملم * 6 سم ( 220 برغي بالكيلو )', '4.2mm * 6 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'gHT1673789412.png', '2.3', '1.61', 13, 226, '2023-01-15 20:30:12', '2023-01-15 20:30:57', 'كيلو'),
(232, 232, 'براغي شيبورد اسود 3.5 ملم', 'drywall screws 3.5 mm', 'المنشأ صيني', 'Chinese MADE', '---', 'a7y1673789842.png', '0', NULL, 13, NULL, '2023-01-15 20:37:22', '2023-01-15 20:37:22', '---'),
(233, 233, '3.5 ملم * 1.8 سم ( 950 برغي بالكيلو )', '3.5mm * 1.8 cm', 'المنشأ صيني', 'Chinese MADE', '300', '0Hk1673789951.png', '2.3', '1.61', 13, 232, '2023-01-15 20:39:11', '2023-01-15 20:39:11', 'كيلو'),
(234, 234, '3.5 ملم *  1.9سم ( 920 برغي بالكيلو )', '3.5mm * 1.9 cm', 'المنشأ صيني', 'Chinese MADE', '300', '6iB1673790003.png', '2.3', '1.61', 13, 232, '2023-01-15 20:40:03', '2023-01-15 20:40:03', 'كيلو'),
(235, 235, '3.5 ملم * 2 سم ( 910 برغي بالكيلو )', '3.5mm *2. cm', 'المنشأ صيني', 'Chinese MADE', '300', 'Axn1673790054.png', '2.3', '1.61', 13, 232, '2023-01-15 20:40:54', '2023-01-15 20:40:54', 'كيلو'),
(236, 236, '3.5 ملم * 2.5 سم ( 720 برغي بالكيلو )', '3.5mm * 2.5 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'Bnu1673790110.png', '2.3', '1.61', 13, 232, '2023-01-15 20:41:50', '2023-01-15 20:41:50', 'كيلو'),
(237, 237, '3.5 ملم * 3 سم ( 630 برغي بالكيلو )', '3.5mm * 3 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'knN1673790212.png', '2.3', '1.61', 13, 232, '2023-01-15 20:43:32', '2023-01-15 20:43:32', 'كيلو'),
(238, 238, '3.5 ملم * 4 سم ( 470 برغي بالكيلو )', '3.5mm * 4 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'e301673790252.png', '2.3', '1.61', 13, 232, '2023-01-15 20:44:12', '2023-01-15 20:44:12', 'كيلو'),
(239, 239, '3.5 ملم * 5 سم ( 390 برغي بالكيلو )', '3.5mm * 5 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'UNZ1673790323.png', '2.3', '1.61', 13, 232, '2023-01-15 20:45:23', '2023-01-15 20:45:23', 'كيلو'),
(240, 240, '3.5 ملم * 6 سم ( 300 برغي بالكيلو )', '3.5mm * 6 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'GYC1673790442.png', '2.3', '1.61', 13, 232, '2023-01-15 20:47:22', '2023-01-15 20:47:22', 'كيلو'),
(241, 241, '3.5 ملم *7 سم ( 240 برغي بالكيلو )', '3.5mm * 7 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'Slx1673790473.png', '2.3', '1.61', 13, 232, '2023-01-15 20:47:53', '2023-01-15 20:47:53', 'كيلو'),
(242, 242, 'براغي سلف درل شيجا 4.2 ملم', 'Countersunk Head 4.2 mm', 'المنشأ صيني', '---', '---', 'qBW1673791206.png', '0', NULL, 24, NULL, '2023-01-15 21:00:06', '2023-01-15 21:00:06', '---'),
(243, 243, '4.2 ملم * 1.6سم ( 750 برغي بالكيلو )', '4.2mm *1.6 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'H3J1673792127.png', '2.25', '2.03', 24, 242, '2023-01-15 21:15:27', '2023-01-15 21:32:07', 'كيلو'),
(244, 244, '4.2 ملم * 1.9 سم ( 720 برغي بالكيلو )', '4.2mm *1.9 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'EQ21673792932.png', '2.25', '2.03', 24, 242, '2023-01-15 21:28:52', '2023-01-15 21:32:19', 'كيلو'),
(245, 245, '4.2 ملم * 2.5  سم ( 650 برغي بالكيلو )', '4.2mm * 2.5 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'Exe1673792993.png', '2.25', '2.03', 24, 242, '2023-01-15 21:29:53', '2023-01-15 21:32:33', 'كيلو'),
(246, 246, '4.2 ملم * 3.2 سم  ( 420 برغي بالكيلو )', '4.2mm * 3.2 cm', 'المنشأ صيني', 'Chinese MADE', '300', '9Wr1673793058.png', '2.25', '2.03', 24, 242, '2023-01-15 21:30:58', '2023-01-15 21:30:58', 'كيلو'),
(247, 247, '4.2 ملم * 3.8 سم  ( 360 برغي بالكيلو )', '4.2mm * 3.8 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'yTO1673793378.png', '2.25', '2.03', 24, 242, '2023-01-15 21:36:18', '2023-01-15 21:36:18', 'كيلو'),
(248, 248, '4.2 ملم * 5 سم  ( 280 برغي بالكيلو )', '4.2mm * 5 cm', 'المنشأ صيني', 'Chinese MADE', '300', 'ajx1673793434.png', '2.25', '2.03', 24, 242, '2023-01-15 21:37:14', '2023-01-15 21:37:14', 'كيلو');

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `address` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `address`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '2022-12-19 04:21:58', '$2y$10$lmdJ3oSrnDA3Vi6vmtxmd.k7hvMelJClBOBibJZln4IIP8PsLcoUG', '01089916307', 'egypt', 'm8R8Mb8BMdkH11FLLNse2EqAFjZoAyXR9eEHr3sKDszdx5tiE9ZS35PtSSct', '2022-12-19 04:21:58', '2022-12-19 04:21:58'),
(3, 'Mr. Tad Will PhD', 'jessie49@example.org', '2022-12-19 04:21:58', '$2y$10$rdc7lnP73DXvB.F1xRN0RON1dfqRXTOrQmvKiy3AS9EFYq63uoPDS', '01046416897', 'Voluptatem impedit nemo qui ut animi adipisci.', 'CSsz93O4bp', '2022-12-19 04:21:59', '2022-12-19 04:21:59'),
(4, 'Jaquelin Erdman DDS', 'lindgren.aida@example.net', '2022-12-19 04:21:58', '$2y$10$wVV1caGlPt2stwYdBlcjuOuxxUU7Xw7KEBgYeyLybPMeYl71e0hta', '01036467156', 'Natus aperiam delectus non illo aut a.', 'FHXEWmUwaV', '2022-12-19 04:21:59', '2022-12-19 04:21:59'),
(6, 'Mr. Pierce Gaylord', 'johanna.morar@example.net', '2022-12-19 04:21:58', '$2y$10$PxyO8k4idFf85zYOdpSdv.aCsUMZ5oryckZ5jrGFMnyN2oYI.lVZ.', '01060170824', 'Iure eveniet assumenda odio placeat.', 'QkQ2aKNFmo', '2022-12-19 04:21:59', '2022-12-19 04:21:59'),
(7, 'Princess Kutch', 'ernie.skiles@example.com', '2022-12-19 04:21:58', '$2y$10$nxXffV5fCkxbktjIVbv8h.bNaRD/poJymf/6pNVN2N1ID5cGlErdu', '01046641124', 'Ea nobis voluptatum et iste optio.', 'NBrWCrHIWj', '2022-12-19 04:21:59', '2022-12-19 04:21:59'),
(8, 'Flossie Nader', 'fabiola28@example.org', '2022-12-19 04:21:58', '$2y$10$WDIo6VazSl.8Byzr/hgICO0tuzoygkSbpPwGL44lBhM9O5Wvpk6mK', '01063776400', 'Ut reprehenderit minus debitis consectetur.', 'ihL44Ye6Uw', '2022-12-19 04:21:59', '2022-12-19 04:21:59'),
(9, 'Richmond Lehner III', 'arnaldo.wintheiser@example.org', '2022-12-19 04:21:59', '$2y$10$Dfdgif0InBrpCgaz5ZRO/OwgsIpK2.0n8Bu8nGrAeJlQZ6gUP/leG', '01092085725', 'Odit impedit nam suscipit sit dolore vero tenetur repellat.', 'PXkC1cBqrz', '2022-12-19 04:21:59', '2022-12-19 04:21:59'),
(10, 'Mr. Davon Schneider', 'tabbott@example.net', '2022-12-19 04:21:59', '$2y$10$V0HEFkTRSl.jP/pl0gyVj.3hnYa63XtbzfED8zgZg0Y.JL5Hblcui', '01038943334', 'Commodi rem similique fugit quos.', 'mUftIX39YT', '2022-12-19 04:21:59', '2022-12-19 04:21:59'),
(11, 'Muriel Boyle', 'runte.ashlynn@example.net', '2022-12-19 04:21:59', '$2y$10$ncSh.l4j.g2OLwdrVOrSZ.8RfhnLDZBghaOQ29OpfK6wdVj.eOGL.', '01051421979', 'A consequatur voluptatibus aliquam.', 'P2jvRBW2XM', '2022-12-19 04:21:59', '2022-12-19 04:21:59');

-- --------------------------------------------------------

--
-- بنية الجدول `viewed_messages`
--

CREATE TABLE `viewed_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `cart_products`
--
ALTER TABLE `cart_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_products_cart_id_foreign` (`cart_id`),
  ADD KEY `cart_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `device_tokens`
--
ALTER TABLE `device_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `device_tokens_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `inner_categories`
--
ALTER TABLE `inner_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inner_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_order_id_foreign` (`order_id`),
  ADD KEY `order_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_inner_category_id_foreign` (`inner_category_id`),
  ADD KEY `products_product_id_foreign` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `viewed_messages`
--
ALTER TABLE `viewed_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `viewed_messages_message_id_foreign` (`message_id`),
  ADD KEY `viewed_messages_user_id_foreign` (`user_id`),
  ADD KEY `viewed_messages_customer_id_foreign` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `cart_products`
--
ALTER TABLE `cart_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `device_tokens`
--
ALTER TABLE `device_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inner_categories`
--
ALTER TABLE `inner_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `viewed_messages`
--
ALTER TABLE `viewed_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
