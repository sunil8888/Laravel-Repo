-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2019 at 01:07 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_tutorial`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_02_21_075216_create_projects_table', 1),
(4, '2019_02_22_105911_create_tasks_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(2, 'second project', 'second project description', '2019-02-21 03:54:25', '2019-02-21 03:54:25'),
(3, 'Project two', 'sfsf sfsdfsdf', '2019-02-22 04:37:11', '2019-02-22 04:37:11'),
(4, 'Highcharts Demo', 'sadfsadfsadf', '2019-02-22 04:48:53', '2019-02-22 04:48:53'),
(5, 'Zhuanglin Women\'s Quick Drying Aqua Water Shoes', 'asfdasdfsadfasfd', '2019-02-22 04:51:37', '2019-02-22 04:51:37'),
(6, 'fix it', 'fix it', '2019-02-22 05:03:44', '2019-02-22 05:03:44'),
(7, 'second project', 'second project description', '2019-02-22 06:14:52', '2019-02-22 06:14:52'),
(8, 'second project', 'second project description', '2019-02-22 06:14:57', '2019-02-22 06:14:57'),
(9, 'Project two', 'sfsf sfsdfsdf', '2019-02-22 06:29:38', '2019-02-22 06:29:38'),
(10, '232', 'as dfasdfasdf', '2019-02-24 23:41:59', '2019-02-24 23:41:59'),
(11, 'a fasdf', 'as dfasdfasdf', '2019-02-24 23:42:14', '2019-02-24 23:42:14'),
(12, 'as fdasfdsad', 'sadfsadf', '2019-02-25 05:35:52', '2019-02-25 05:35:52'),
(13, 'aaaaaa1111', 'bbbbbbbbbbbbbbbbb', '2019-02-25 05:36:27', '2019-02-25 05:36:27');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `project_id`, `description`, `completed`, `created_at`, `updated_at`) VALUES
(1, 2, 'asdfasf', 1, '2019-02-21 18:30:00', '2019-02-22 07:09:53'),
(2, 2, 'asdfasfd', 0, '2019-02-21 18:30:00', '2019-02-22 07:16:09'),
(3, 2, 'bbbbbb', 0, '2019-02-22 07:37:50', '2019-02-22 07:37:50'),
(4, 2, 'cccccccc', 1, '2019-02-22 07:37:53', '2019-02-22 07:38:02'),
(5, 2, 'sdfsdf sadfsadf', 1, '2019-02-22 07:37:59', '2019-02-22 07:38:03'),
(6, 2, 'bbbbbb???', 0, '2019-02-22 07:45:24', '2019-02-22 07:45:24'),
(7, 2, 'fdfd.,.,<<,', 0, '2019-02-22 07:50:09', '2019-02-22 07:50:09'),
(8, 2, 'sadfas fd', 0, '2019-02-22 08:00:31', '2019-02-22 08:00:31'),
(9, 12, 'sdf sdfsd', 0, '2019-02-25 05:37:16', '2019-02-25 05:37:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
