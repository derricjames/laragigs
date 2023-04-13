-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2023 at 02:44 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laragigs`
--

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
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `tags` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `user_id`, `title`, `logo`, `tags`, `company`, `location`, `email`, `website`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Quis rerum cum ratione fugit.', NULL, 'laravel, api, backend', 'Boyer, Kuhn and Pfeffer', 'Torphyfort', 'lennie20@lehner.net', 'http://collier.info/', 'Fugit commodi et suscipit provident error architecto voluptas tempora. Consequatur quia aliquam id et. Aliquam sapiente ipsam ducimus ut accusantium modi omnis est. Eos error amet quis. Quasi et commodi blanditiis aut dolores. Aut perferendis harum aut dolores sunt est placeat repellat.', '2023-04-13 03:18:28', '2023-04-13 03:18:28'),
(2, 1, 'Facere eum quis et nemo in pariatur dolore.', NULL, 'laravel, api, backend', 'Satterfield, Ernser and DuBuque', 'South Theresia', 'klocko.rory@mueller.com', 'http://kreiger.com/', 'Natus quasi voluptas beatae cumque dolores. Officiis quae corrupti qui cumque. Sit optio quas exercitationem et et tenetur. Sapiente aut a dignissimos pariatur. Qui sed est sed qui aut itaque labore.', '2023-04-13 03:18:28', '2023-04-13 03:18:28'),
(3, 1, 'Vero nulla autem aut aut laudantium expedita.', NULL, 'laravel, api, backend', 'Anderson-Graham', 'South Edgar', 'damore.stanton@dare.com', 'http://beier.com/voluptatibus-totam-laudantium-aut-ducimus-officia-inventore', 'Vitae aperiam fuga quae quidem vel dolor. Nisi possimus nostrum molestiae aspernatur. Et minima voluptatibus omnis assumenda. Maiores est debitis possimus aut occaecati ullam minima ut. Accusamus deserunt et voluptatibus ipsa. Impedit quo rerum quis et rerum. Consequuntur sint qui provident commodi odit.', '2023-04-13 03:18:28', '2023-04-13 03:18:28'),
(4, 1, 'Ipsum alias beatae et tenetur dolorem delectus.', NULL, 'laravel, api, backend', 'Wisozk, Spencer and Abshire', 'Jadynview', 'bergnaum.serena@legros.info', 'http://www.moen.info/suscipit-fugiat-ipsum-voluptas-in-alias-ratione-est', 'Et dolor repudiandae aliquid soluta rem. Aperiam autem ea similique pariatur eum porro consequatur vel. Incidunt praesentium doloremque fugit eaque. Quasi nostrum quis voluptatem omnis nulla sunt soluta. Autem quibusdam consequatur consequatur. Rem voluptas id dolores reiciendis. Voluptates et veritatis sit nesciunt. Magni a deserunt esse et.', '2023-04-13 03:18:28', '2023-04-13 03:18:28'),
(5, 1, 'Repudiandae impedit quasi delectus odit qui magnam.', NULL, 'laravel, api, backend', 'Larson Inc', 'East Jenniferchester', 'vivian.collier@walker.biz', 'http://bergnaum.com/commodi-quis-dolorem-quos-quia-eius.html', 'Dolor suscipit est neque aut rem enim ratione aut. Consectetur in sint sit earum suscipit aut ducimus. Deleniti quia aut sunt. Aliquid rerum ea ea ratione. Cupiditate velit est est reprehenderit quis nam. Voluptatem aspernatur beatae necessitatibus perspiciatis nihil consequatur.', '2023-04-13 03:18:28', '2023-04-13 03:18:28'),
(6, 1, 'Quas sed doloremque amet vitae quod necessitatibus beatae.', NULL, 'laravel, api, backend', 'McCullough and Sons', 'Noeliaview', 'swaniawski.dewayne@bednar.com', 'http://kunde.info/', 'Eum placeat laboriosam numquam delectus. Harum atque molestias dolorem nam facere. Voluptatum fugit voluptas aut. Facilis perferendis impedit voluptates accusamus ex.', '2023-04-13 03:18:28', '2023-04-13 03:18:28'),
(7, 3, 'Senior Laravel Developer', 'logos/8O5T4t2tSFqmvBZQ9Z4NwWO6O3XBSIGxScWBfTWV.png', 'laravel, vue, front', 'Acme Corp', 'New York', 'jamesderric39@gmail.com', 'example.com', '\"\r\n                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehender', '2023-04-13 04:12:42', '2023-04-13 04:12:42'),
(8, 4, 'Senior Laravel Developer', 'logos/MNXagMP9BPVg3RUhbhjKuxequBISWZYiAEno9VHZ.png', 'vue, frontend, backend', 'Stark industries', 'New York', 'jamesderric39@gmail.com', 'example.com', '\"\r\n                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehender', '2023-04-13 04:18:08', '2023-04-13 04:18:08'),
(10, 4, 'Frontend Developer', 'logos/jnTJdCNreTPQ6Rnnyh3sIe8A2eBSrtMZHAzCcQSD.png', 'laravel, vue, front', 'Surfers Bay Corp', 'Boston New York', 'jamesderric39@gmail.com', 'example.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehender', '2023-04-13 04:32:24', '2023-04-13 04:32:24');

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
(36, '2014_10_12_000000_create_users_table', 1),
(37, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(38, '2019_08_19_000000_create_failed_jobs_table', 1),
(39, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(40, '2023_04_13_012806_create_listings_table', 1);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'john@mail.com', '2023-04-13 03:18:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RA8JCouScY', '2023-04-13 03:18:28', '2023-04-13 03:18:28'),
(2, 'Derric Del Rosario', 'jamesderric39@gmail.com', NULL, '$2y$10$3cxtEC1VewyFZpjacHo5v.ZuhP4ipU2L19bLoycwVmw0CMQEjM/hO', NULL, '2023-04-13 03:58:00', '2023-04-13 03:58:00'),
(3, 'James Del Rosaio', 'james_derric@yahoo.com', NULL, '$2y$10$479rsJfOpWhWKCn0MtR1muDBvlVsqeHwYe0oOx67CieQ0nci/Py3m', NULL, '2023-04-13 04:11:17', '2023-04-13 04:11:17'),
(4, 'Derric James', 'jderric@yahoo.com', NULL, '$2y$10$6DbUhNCaREWxbrPN3OYTIe1ePR8nRB9.eK96fpgt4YCpaVepxmixK', NULL, '2023-04-13 04:17:12', '2023-04-13 04:17:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listings_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `listings`
--
ALTER TABLE `listings`
  ADD CONSTRAINT `listings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
