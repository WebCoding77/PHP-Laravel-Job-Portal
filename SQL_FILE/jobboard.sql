-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2023 at 04:15 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin.first', 'admin1@gmail.com', '$2y$10$z0a7D35xldGLv5x/GRE0MOmF.TDbHO5RLjkdBz1M.z.yjRvRst5Fm', '2023-06-23 16:18:17', '2023-06-23 16:18:17'),
(2, 'adminsecond', 'adminsecond@admin.com', '$2y$10$UbWHhhLGLjSxrsmK2TvhFe6uWfb9UMomYWdSEH2oSrflEiXFiQKlK', '2023-06-24 07:49:01', '2023-06-24 07:49:01');

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(10) NOT NULL,
  `job_id` int(10) NOT NULL,
  `cv` varchar(200) NOT NULL,
  `user_id` int(10) NOT NULL,
  `email` varchar(200) NOT NULL,
  `job_image` varchar(200) NOT NULL,
  `job_title` varchar(200) NOT NULL,
  `job_region` varchar(200) NOT NULL,
  `company` varchar(200) NOT NULL,
  `job_type` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `job_id`, `cv`, `user_id`, `email`, `job_image`, `job_title`, `job_region`, `company`, `job_type`, `created_at`, `updated_at`) VALUES
(2, 2, 'Mohamed-Hassan-Resume.pdf', 1, 'mohamed@gmail.com', 'job_logo_3.jpg', 'Front End Developer', 'Cairo, Cairo', 'Amazon', 'Part time', '2023-06-21 07:16:11', '2023-06-21 07:16:11'),
(8, 2, 'resume.pdf', 2, 'user@gmial.com', 'job_logo_3.jpg', 'Front End Developer', 'Cairo', 'Amazon', 'Part Time', '2023-06-25 06:05:37', '2023-06-25 06:05:37');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Programming', '2023-06-20 10:42:36', '2023-06-20 10:42:36'),
(2, 'Design', '2023-06-20 10:42:36', '2023-06-20 10:42:36');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(10) NOT NULL,
  `job_title` varchar(200) NOT NULL,
  `job_region` varchar(200) NOT NULL,
  `company` varchar(200) NOT NULL,
  `job_type` varchar(200) NOT NULL,
  `vacancy` varchar(200) NOT NULL,
  `experience` varchar(200) NOT NULL,
  `salary` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `application_deadline` varchar(200) NOT NULL,
  `jobdescription` varchar(200) NOT NULL,
  `responsibilities` varchar(200) NOT NULL,
  `education_experience` varchar(200) NOT NULL,
  `otherbenifits` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `job_title`, `job_region`, `company`, `job_type`, `vacancy`, `experience`, `salary`, `gender`, `application_deadline`, `jobdescription`, `responsibilities`, `education_experience`, `otherbenifits`, `image`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Product Designer', 'New York', 'Adidas', 'Full Time', '2', '2 to 3 year(s)', '$60k - $100k', 'Any', 'April 28, 2019', 'Continually recaptiualize seamless applications after alternative internal or \"organic\" sources. Synergistically negotiate superior intellectual capital rather than mission-critical partnerships. Glob', 'Continually recaptiualize seamless applications after alternative internal or \"organic\" sources. Synergistically negotiate superior intellectual capital rather than mission-critical partnerships. Glob', 'Continually recaptiualize seamless applications after alternative internal or \"organic\" sources. Synergistically negotiate superior intellectual capital rather than mission-critical partnerships. Glob', 'Continually recaptiualize seamless applications after alternative internal or \"organic\" sources. Synergistically negotiate superior intellectual capital rather than mission-critical partnerships. Glob', 'job_logo_1.jpg', 'Programming', '2023-06-20 09:41:39', '2023-06-20 09:41:39'),
(2, 'Front End Developer', 'Cairo', 'Amazon', 'Part Time', '2', '2 to 3 year(s)', '$60k - $100k', 'Any', 'April 28, 2019', 'Authoritatively formulate maintainable products after enterprise core competencies. Collaboratively leverage other\'s cross functional e-business for 24/7 imperatives. Distinctively orchestrate world-c', 'Authoritatively formulate maintainable products after enterprise core competencies. Collaboratively leverage other\'s cross functional e-business for 24/7 imperatives. Distinctively orchestrate world-c', 'Authoritatively formulate maintainable products after enterprise core competencies. Collaboratively leverage other\'s cross functional e-business for 24/7 imperatives. Distinctively orchestrate world-c', 'Authoritatively formulate maintainable products after enterprise core competencies. Collaboratively leverage other\'s cross functional e-business for 24/7 imperatives. Distinctively orchestrate world-c', 'job_logo_3.jpg', 'Design', '2023-06-20 10:46:58', '2023-06-20 10:46:58');

-- --------------------------------------------------------

--
-- Table structure for table `jobsaved`
--

CREATE TABLE `jobsaved` (
  `id` int(10) NOT NULL,
  `job_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `job_image` varchar(200) NOT NULL,
  `job_title` varchar(200) NOT NULL,
  `job_region` varchar(200) NOT NULL,
  `company` varchar(200) NOT NULL,
  `job_type` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobsaved`
--

INSERT INTO `jobsaved` (`id`, `job_id`, `user_id`, `job_image`, `job_title`, `job_region`, `company`, `job_type`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'job_logo_3.jpg', 'Front End Developer', 'Cairo, Cairo', 'Amazon', 'Part time', '2023-06-20 09:51:23', '2023-06-20 09:51:23'),
(3, 1, 2, 'job_logo_1.jpg', 'Product Designer', 'New York', 'Adidas', 'Full Time', '2023-06-25 06:15:29', '2023-06-25 06:15:29');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `searches`
--

CREATE TABLE `searches` (
  `id` int(10) NOT NULL,
  `keyword` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `searches`
--

INSERT INTO `searches` (`id`, `keyword`, `created_at`, `updated_at`) VALUES
(2, 'Desinger', '2023-06-22 10:13:34', '2023-06-22 10:13:34'),
(3, 'Developer', '2023-06-22 10:13:34', '2023-06-22 10:13:34'),
(4, 'Developer', '2023-06-22 10:13:34', '2023-06-22 10:13:34'),
(5, 'Teacher', '2023-06-22 10:13:34', '2023-06-22 10:13:34'),
(6, 'Teacher', '2023-06-22 10:13:34', '2023-06-22 10:13:34'),
(7, 'Coach', '2023-06-22 10:13:34', '2023-06-22 10:13:34'),
(8, 'Teacher', '2023-06-22 10:13:34', '2023-06-22 10:13:34'),
(9, 'Coach', '2023-06-22 10:13:34', '2023-06-22 10:13:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(200) NOT NULL DEFAULT 'pic.jpg',
  `cv` varchar(200) NOT NULL DEFAULT 'No cv',
  `job_title` varchar(200) NOT NULL DEFAULT 'No job title',
  `bio` text NOT NULL DEFAULT 'No bio',
  `twitter` varchar(200) NOT NULL DEFAULT 'No twitter',
  `facebook` varchar(200) NOT NULL DEFAULT 'No facebook',
  `linkedin` varchar(200) NOT NULL DEFAULT 'No linkedin',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `image`, `cv`, `job_title`, `bio`, `twitter`, `facebook`, `linkedin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mohamed', 'mohamed@gmail.com', NULL, '$2y$10$z0a7D35xldGLv5x/GRE0MOmF.TDbHO5RLjkdBz1M.z.yjRvRst5Fm', 'pic.jpg', 'Mohamed-Hassan-Resume.pdf', 'Laravel Dev', 'Appropriately seize empowered action items through client-centered materials. Completely target economically sound growth strategies without impactful action items. Holisticly visualize backward-compatible potentialities through 24/7 quality', 'http://127.0.0.1:8000/users/edit-details', 'http://127.0.0.1:8000/users/edit-details', 'http://127.0.0.1:8000/users/edit-details', NULL, '2023-06-18 07:21:30', '2023-06-22 06:54:28'),
(2, 'user@gmial.com', 'user@gmial.com', NULL, '$2y$10$3NMnfMqY1GYQZ3G.OZnFmegqTG6mjazVttYBM9L0.tvsz8v2.1Iy2', 'pic.jpg', 'resume.pdf', 'No job title', 'No bio', 'No twitter', 'No facebook', 'No linkedin', NULL, '2023-06-19 08:19:22', '2023-06-25 06:05:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobsaved`
--
ALTER TABLE `jobsaved`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `searches`
--
ALTER TABLE `searches`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobsaved`
--
ALTER TABLE `jobsaved`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `searches`
--
ALTER TABLE `searches`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
