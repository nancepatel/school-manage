-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2025 at 11:22 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_school_`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_years`
--

CREATE TABLE `academic_years` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `start_year` varchar(121) NOT NULL,
  `stop_year` varchar(121) NOT NULL,
  `school_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `academic_years`
--

INSERT INTO `academic_years` (`id`, `name`, `start_year`, `stop_year`, `school_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, '2025', '2026', 1, '2025-10-21 03:32:22', '2025-10-21 03:32:22', NULL),
(2, NULL, '1970', '1971', 1, '2025-10-21 03:32:23', '2025-10-21 03:32:23', NULL),
(3, NULL, '2022', '2023', 1, '2025-10-21 03:32:23', '2025-10-21 03:32:23', NULL),
(4, NULL, '1985', '1986', 1, '2025-10-21 03:32:23', '2025-10-21 03:32:23', NULL),
(5, NULL, '1996', '1997', 1, '2025-10-21 03:32:23', '2025-10-21 03:32:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `academic_year_student`
--

CREATE TABLE `academic_year_student` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `academic_year_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` varchar(121) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `gender` varchar(121) NOT NULL DEFAULT 'male',
  `admission_no` varchar(121) NOT NULL,
  `phone` varchar(121) NOT NULL,
  `dateofbirth` date NOT NULL,
  `current_address` varchar(121) NOT NULL,
  `permanent_address` varchar(121) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `school_id` bigint(20) UNSIGNED NOT NULL,
  `class_code` varchar(121) NOT NULL,
  `class_name` varchar(121) NOT NULL,
  `section` varchar(121) NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(121) NOT NULL,
  `description` longtext DEFAULT NULL,
  `semester_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `stop_date` date NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `publish_result` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_records`
--

CREATE TABLE `exam_records` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `semester_id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` varchar(121) NOT NULL,
  `exam_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `academic_id` bigint(20) UNSIGNED DEFAULT NULL,
  `marks` int(10) UNSIGNED NOT NULL,
  `rank` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_slots`
--

CREATE TABLE `exam_slots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(121) NOT NULL,
  `description` varchar(121) DEFAULT NULL,
  `total_marks` int(10) UNSIGNED NOT NULL,
  `exam_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(121) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(121) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_09_08_005523_create_settings_table', 1),
(3, '2022_09_09_085730_create_schools_table', 1),
(4, '2014_10_12_000000_create_users_table', 2),
(5, '2014_10_12_100000_create_password_resets_table', 3),
(6, '2019_08_19_000000_create_failed_jobs_table', 3),
(7, '2022_09_01_122158_create_permission_tables', 3),
(8, '2022_09_01_145615_create_parents_table', 3),
(9, '2022_09_02_024606_create_classes_table', 4),
(10, '2022_09_26_103950_create_subjects_table', 5),
(11, '2022_09_27_075650_create_academic_years_table', 5),
(12, '2022_09_27_081705_create_semesters_table', 5),
(13, '2022_09_29_125231_create_promotions_table', 5),
(14, '2022_10_03_074132_create_timetables_table', 5),
(15, '2022_10_03_121823_create_time_table_time_slots_table', 5),
(16, '2022_10_03_122405_create_week_days_table', 5),
(17, '2022_10_03_130247_time_table_time_slot_week_day', 5),
(18, '2022_10_17_131722_add_semester_id_to_schools_table', 5),
(19, '2022_10_17_132116_add_academic_year_id_to_schools_table', 5),
(20, '2022_10_19_053619_create_exams_table', 5),
(21, '2022_10_20_055643_create_exam_slots_table', 5),
(22, '2022_11_29_113518_create_admins_table', 6),
(23, '2022_12_30_090119_academic_year_student', 6);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(121) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(121) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 3),
(4, 'App\\Models\\User', 4),
(5, 'App\\Models\\User', 5);

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `gender` varchar(121) NOT NULL DEFAULT 'male',
  `admission_no` varchar(121) NOT NULL,
  `phone` varchar(121) NOT NULL,
  `current_address` varchar(121) NOT NULL,
  `permanent_address` varchar(121) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`id`, `user_id`, `gender`, `admission_no`, `phone`, `current_address`, `permanent_address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 4, 'male', '364-111-1606', '0123456789', 'Dhaka-1215', 'Dhaka-1215', '2025-10-21 02:30:53', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(121) NOT NULL,
  `token` varchar(121) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(121) NOT NULL,
  `guard_name` varchar(121) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(121) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(121) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `old_class_id` bigint(20) UNSIGNED NOT NULL,
  `new_class_id` bigint(20) UNSIGNED NOT NULL,
  `old_section` varchar(121) NOT NULL,
  `new_section` varchar(121) NOT NULL,
  `academic_year_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `school_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(121) NOT NULL,
  `guard_name` varchar(121) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super-admin', 'web', '2025-10-21 02:30:52', '2025-10-21 02:30:52'),
(2, 'Admin', 'web', '2025-10-21 02:30:52', '2025-10-21 02:30:52'),
(3, 'Teacher', 'web', '2025-10-21 02:30:52', '2025-10-21 02:30:52'),
(4, 'Parent', 'web', '2025-10-21 02:30:52', '2025-10-21 02:30:52'),
(5, 'Student', 'web', '2025-10-21 02:30:52', '2025-10-21 02:30:52');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(121) NOT NULL,
  `initials` varchar(121) DEFAULT NULL,
  `address` varchar(121) DEFAULT NULL,
  `email` varchar(121) DEFAULT NULL,
  `phone` varchar(121) DEFAULT NULL,
  `code` varchar(121) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `semester_id` bigint(20) UNSIGNED DEFAULT NULL,
  `academic_year_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `name`, `initials`, `address`, `email`, `phone`, `code`, `created_at`, `updated_at`, `deleted_at`, `semester_id`, `academic_year_id`) VALUES
(1, 'Default School', 'DSI', 'School of Computing', NULL, NULL, 'H6Y6fzRr6b', '2025-10-21 02:30:52', '2025-10-21 03:34:39', NULL, 2, 1),
(2, 'Prof. Porter Willms Sr.', 'sit', '49048 Macie Branch Apt. 137\nEast Jodie, AK 08262', NULL, NULL, '15184', '2025-10-21 02:30:52', '2025-10-21 02:30:52', NULL, NULL, NULL),
(3, 'Martine Hermiston', 'quibusdam', '1199 Linnea Mill\nLeuschkeborough, KY 93829', NULL, NULL, '17660', '2025-10-21 02:30:52', '2025-10-21 02:30:52', NULL, NULL, NULL),
(4, 'Lamont Runolfsson', 'dolor', '894 Salvatore Knolls Apt. 283\nPort Alana, FL 90406-8069', NULL, NULL, '77908', '2025-10-21 02:30:52', '2025-10-21 02:30:52', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

CREATE TABLE `semesters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(121) NOT NULL,
  `school_id` bigint(20) UNSIGNED NOT NULL,
  `academic_year_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `semesters`
--

INSERT INTO `semesters` (`id`, `name`, `school_id`, `academic_year_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Semester 1', 1, 1, '2025-10-21 03:34:39', '2025-10-21 03:34:39', NULL),
(2, 'Semester 2', 1, 1, '2025-10-21 03:34:39', '2025-10-21 03:34:39', NULL),
(30, 'impedit', 1, 1, '2025-10-21 03:34:39', '2025-10-21 03:34:39', NULL),
(3095, 'explicabo', 1, 1, '2025-10-21 03:34:39', '2025-10-21 03:34:39', NULL),
(3850, 'et', 1, 1, '2025-10-21 03:34:39', '2025-10-21 03:34:39', NULL),
(4857, 'fugiat', 1, 1, '2025-10-21 03:34:39', '2025-10-21 03:34:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(121) NOT NULL,
  `description` varchar(121) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `type`, `description`, `created_at`, `updated_at`) VALUES
(1, 'current_session', '2018-2019', NULL, NULL),
(2, 'system_title', 'CJIA', NULL, NULL),
(3, 'system_name', 'CJ INSPIRED ACADEMY', NULL, NULL),
(4, 'term_ends', '7/10/2018', NULL, NULL),
(5, 'term_begins', '7/10/2018', NULL, NULL),
(6, 'phone', '0123456789', NULL, NULL),
(7, 'address', '18B North Central Park, Behind Central Square Tourist Center', NULL, NULL),
(8, 'system_email', 'cjacademy@cj.com', NULL, NULL),
(9, 'alt_email', '', NULL, NULL),
(10, 'email_host', '', NULL, NULL),
(11, 'email_pass', '', NULL, NULL),
(12, 'lock_exam', '0', NULL, NULL),
(13, 'logo', '', NULL, NULL),
(14, 'next_term_fees_j', '20000', NULL, NULL),
(15, 'next_term_fees_pn', '25000', NULL, NULL),
(16, 'next_term_fees_p', '25000', NULL, NULL),
(17, 'next_term_fees_n', '25600', NULL, NULL),
(18, 'next_term_fees_s', '15600', NULL, NULL),
(19, 'next_term_fees_c', '1600', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `admission_no` varchar(121) NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `gender` varchar(121) NOT NULL DEFAULT 'male',
  `section` varchar(121) NOT NULL DEFAULT 'A',
  `Status` varchar(121) NOT NULL DEFAULT 'Active',
  `phone` varchar(121) NOT NULL,
  `is_graduated` tinyint(1) NOT NULL DEFAULT 0,
  `dateofbirth` date NOT NULL,
  `current_address` varchar(121) NOT NULL,
  `permanent_address` varchar(121) NOT NULL,
  `rank` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `user_id`, `admission_no`, `parent_id`, `class_id`, `gender`, `section`, `Status`, `phone`, `is_graduated`, `dateofbirth`, `current_address`, `permanent_address`, `rank`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 5, '625-970-0070', 1, 1, 'male', 'A', 'active', '0123456789', 0, '1993-04-11', 'Dhaka-1215', 'Dhaka-1215', NULL, '2025-10-21 02:30:53', NULL, NULL),
(2, 6, '795-648-7540', 1, 1, 'male', 'A', 'active', '0123456789', 0, '1993-04-11', 'Dhaka-1215', 'Dhaka-1215', NULL, '2025-10-21 02:30:53', NULL, NULL),
(3, 7, '376-199-9985', 1, 1, 'male', 'A', 'active', '0123456789', 0, '1993-04-11', 'Dhaka-1215', 'Dhaka-1215', NULL, '2025-10-21 02:30:53', NULL, NULL),
(4, 8, '818-766-7304', 1, 1, 'male', 'A', 'active', '0123456789', 0, '1993-04-11', 'Dhaka-1215', 'Dhaka-1215', NULL, '2025-10-21 02:30:53', NULL, NULL),
(5, 9, '883-578-9490', 1, 1, 'male', 'A', 'active', '0123456789', 0, '1993-04-11', 'Dhaka-1215', 'Dhaka-1215', NULL, '2025-10-21 02:30:53', NULL, NULL),
(6, 10, '086-965-5882', 1, 1, 'male', 'A', 'active', '0123456789', 0, '1993-04-11', 'Dhaka-1215', 'Dhaka-1215', NULL, '2025-10-21 02:30:53', NULL, NULL),
(7, 11, '977-893-6663', 1, 1, 'male', 'A', 'active', '0123456789', 0, '1993-04-11', 'Dhaka-1215', 'Dhaka-1215', NULL, '2025-10-21 02:30:53', NULL, NULL),
(8, 12, '895-776-8292', 1, 1, 'male', 'A', 'active', '0123456789', 0, '1993-04-11', 'Dhaka-1215', 'Dhaka-1215', NULL, '2025-10-21 02:30:53', NULL, NULL),
(9, 13, '816-872-8989', 1, 1, 'male', 'A', 'active', '0123456789', 0, '1993-04-11', 'Dhaka-1215', 'Dhaka-1215', NULL, '2025-10-21 02:30:53', NULL, NULL),
(10, 14, '391-600-0223', 1, 1, 'male', 'A', 'active', '0123456789', 0, '1993-04-11', 'Dhaka-1215', 'Dhaka-1215', NULL, '2025-10-21 02:30:53', NULL, NULL),
(11, 15, '746-882-3829', 1, 1, 'male', 'A', 'active', '0123456789', 0, '1993-04-11', 'Dhaka-1215', 'Dhaka-1215', NULL, '2025-10-21 02:30:53', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(121) NOT NULL,
  `subject_code` varchar(121) NOT NULL,
  `school_id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `gender` varchar(121) NOT NULL DEFAULT 'male',
  `admission_no` varchar(121) NOT NULL,
  `phone` varchar(121) NOT NULL,
  `dateofbirth` date NOT NULL,
  `current_address` varchar(121) NOT NULL,
  `permanent_address` varchar(121) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `user_id`, `class_id`, `gender`, `admission_no`, `phone`, `dateofbirth`, `current_address`, `permanent_address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 1, 'male', '160-325-4429', '0123456789', '1993-04-11', 'Dhaka-1215', 'Dhaka-1215', '2025-10-21 02:30:53', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `timetables`
--

CREATE TABLE `timetables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(121) NOT NULL,
  `description` longtext DEFAULT NULL,
  `semester_id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `school_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `time_table_time_slots`
--

CREATE TABLE `time_table_time_slots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `timetable_id` bigint(20) UNSIGNED NOT NULL,
  `start_time` time NOT NULL,
  `stop_time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `time_table_time_slot_week_day`
--

CREATE TABLE `time_table_time_slot_week_day` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_table_time_slot_id` bigint(20) UNSIGNED NOT NULL,
  `week_day_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(121) NOT NULL,
  `email` varchar(121) NOT NULL,
  `school_id` bigint(20) UNSIGNED DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(121) NOT NULL DEFAULT '$2y$10$Tea1Kp8.6/5VDJYDw/pKG.DwQ46AC4kaGmp8aSDxnZwKteA5BUR4.',
  `profile_picture` varchar(121) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `school_id`, `email_verified_at`, `password`, `profile_picture`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'super-admin@demo.com', 1, '2025-10-21 02:30:52', '$2y$10$tJIHttsGPZNWxKtwKzcE2er3adJ1/InDzH3i8CCBOIJvxaksLt6/O', NULL, 'rNzGyYAip0xpMPxGgVPZlpM26zCD6tBexQUaCRO5FNhV9tKXTF0MEokBsDaf', NULL, '2025-10-21 02:30:52', '2025-10-21 02:30:52'),
(2, 'Admin', 'admin@demo.com', 1, '2025-10-21 02:30:52', '$2y$10$dDa323PyIcnDYmn8E.Krx.Tk0q4iBlqnn.Bka8bErFAQOQvSD5L5a', '\\img\\profile_picture\\upload\\profile.png', NULL, NULL, '2025-10-21 02:30:52', '2025-10-21 02:30:52'),
(3, 'Teacher', 'teacher@demo.com', 1, '2025-10-21 02:30:52', '$2y$10$1DqHgORwAYEkhnq7K1mkXOf9O7fi5hwwg5BbeC/s7IkCLPYnE26Ju', NULL, NULL, NULL, '2025-10-21 02:30:52', '2025-10-21 02:30:52'),
(4, 'Parent', 'parent@demo.com', 1, '2025-10-21 02:30:52', '$2y$10$lhuYDngf1NLTILRuHYXE4.4Ukh5Yq8hY5GQd/mnk7fP.cjW/UjLaW', NULL, NULL, NULL, '2025-10-21 02:30:52', '2025-10-21 02:30:52'),
(5, 'Student', 'student@demo.com', 1, '2025-10-21 02:30:52', '$2y$10$xYWTLfVvrD.V54J.5Tuf3eVz4/ZKmd6H4iBR4qtr9/JtKVYIFc.sK', NULL, NULL, NULL, '2025-10-21 02:30:53', '2025-10-21 02:30:53'),
(6, 'Alba Kshlerin', 'upton.nicholaus@example.org', 1, '2025-10-21 02:30:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'Sg0ObpmRej', NULL, '2025-10-21 02:30:53', '2025-10-21 02:30:53'),
(7, 'Randal Glover PhD', 'bulah09@example.net', 1, '2025-10-21 02:30:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '8YYsMQD06H', NULL, '2025-10-21 02:30:53', '2025-10-21 02:30:53'),
(8, 'Prof. Fredy Lindgren II', 'ruecker.helen@example.org', 1, '2025-10-21 02:30:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'ZXcyfsqKQO', NULL, '2025-10-21 02:30:53', '2025-10-21 02:30:53'),
(9, 'Alysson Mraz I', 'carleton.botsford@example.net', 1, '2025-10-21 02:30:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'Aty9AtY6Xl', NULL, '2025-10-21 02:30:53', '2025-10-21 02:30:53'),
(10, 'Prof. Grant Streich MD', 'boehm.taya@example.net', 1, '2025-10-21 02:30:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'ojmkxi53Ml', NULL, '2025-10-21 02:30:53', '2025-10-21 02:30:53'),
(11, 'Rogelio Botsford', 'tterry@example.com', 1, '2025-10-21 02:30:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'nEPxHYazy6', NULL, '2025-10-21 02:30:53', '2025-10-21 02:30:53'),
(12, 'Mr. Preston Haag V', 'pstoltenberg@example.com', 1, '2025-10-21 02:30:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'gytoR1W5KJ', NULL, '2025-10-21 02:30:53', '2025-10-21 02:30:53'),
(13, 'Jose Stehr', 'dangelo.runolfsson@example.com', 1, '2025-10-21 02:30:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'vJKX0mJgoj', NULL, '2025-10-21 02:30:53', '2025-10-21 02:30:53'),
(14, 'Mr. Sven Johns V', 'zkuvalis@example.net', 1, '2025-10-21 02:30:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'EUFjQVpfCE', NULL, '2025-10-21 02:30:53', '2025-10-21 02:30:53'),
(15, 'Avis Funk', 'robbie59@example.org', 1, '2025-10-21 02:30:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'xWhQ8AV2RF', NULL, '2025-10-21 02:30:53', '2025-10-21 02:30:53');

-- --------------------------------------------------------

--
-- Table structure for table `week_days`
--

CREATE TABLE `week_days` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(121) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_years`
--
ALTER TABLE `academic_years`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academic_years_school_id_foreign` (`school_id`);

--
-- Indexes for table `academic_year_student`
--
ALTER TABLE `academic_year_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_admission_no_unique` (`admission_no`),
  ADD KEY `admins_user_id_foreign` (`user_id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `classes_class_code_unique` (`class_code`),
  ADD KEY `classes_school_id_foreign` (`school_id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exams_semester_id_foreign` (`semester_id`);

--
-- Indexes for table `exam_records`
--
ALTER TABLE `exam_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_records_semester_id_foreign` (`semester_id`),
  ADD KEY `exam_records_class_id_foreign` (`class_id`),
  ADD KEY `exam_records_exam_id_foreign` (`exam_id`),
  ADD KEY `exam_records_subject_id_foreign` (`subject_id`),
  ADD KEY `exam_records_student_id_foreign` (`student_id`);

--
-- Indexes for table `exam_slots`
--
ALTER TABLE `exam_slots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_slots_exam_id_foreign` (`exam_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `parents_admission_no_unique` (`admission_no`),
  ADD KEY `parents_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promotions_old_class_id_foreign` (`old_class_id`),
  ADD KEY `promotions_new_class_id_foreign` (`new_class_id`),
  ADD KEY `promotions_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `promotions_student_id_foreign` (`student_id`),
  ADD KEY `promotions_school_id_foreign` (`school_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schools_semester_id_foreign` (`semester_id`),
  ADD KEY `schools_academic_year_id_foreign` (`academic_year_id`);

--
-- Indexes for table `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `semesters_school_id_foreign` (`school_id`),
  ADD KEY `semesters_academic_year_id_foreign` (`academic_year_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_user_id_foreign` (`user_id`),
  ADD KEY `students_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subjects_school_id_foreign` (`school_id`),
  ADD KEY `subjects_class_id_foreign` (`class_id`),
  ADD KEY `subjects_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teachers_user_id_foreign` (`user_id`);

--
-- Indexes for table `timetables`
--
ALTER TABLE `timetables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `timetables_semester_id_foreign` (`semester_id`),
  ADD KEY `timetables_class_id_foreign` (`class_id`),
  ADD KEY `timetables_school_id_foreign` (`school_id`);

--
-- Indexes for table `time_table_time_slots`
--
ALTER TABLE `time_table_time_slots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `time_table_time_slots_timetable_id_foreign` (`timetable_id`);

--
-- Indexes for table `time_table_time_slot_week_day`
--
ALTER TABLE `time_table_time_slot_week_day`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `time_slot_week_day` (`week_day_id`,`time_table_time_slot_id`),
  ADD KEY `time_table_time_slot_week_day_time_table_time_slot_id_foreign` (`time_table_time_slot_id`),
  ADD KEY `time_table_time_slot_week_day_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_school_id_foreign` (`school_id`);

--
-- Indexes for table `week_days`
--
ALTER TABLE `week_days`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_years`
--
ALTER TABLE `academic_years`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `academic_year_student`
--
ALTER TABLE `academic_year_student`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_records`
--
ALTER TABLE `exam_records`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_slots`
--
ALTER TABLE `exam_slots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `semesters`
--
ALTER TABLE `semesters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4858;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `timetables`
--
ALTER TABLE `timetables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_table_time_slots`
--
ALTER TABLE `time_table_time_slots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `time_table_time_slot_week_day`
--
ALTER TABLE `time_table_time_slot_week_day`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `week_days`
--
ALTER TABLE `week_days`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `academic_years`
--
ALTER TABLE `academic_years`
  ADD CONSTRAINT `academic_years_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `classes_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exams`
--
ALTER TABLE `exams`
  ADD CONSTRAINT `exams_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `exam_records`
--
ALTER TABLE `exam_records`
  ADD CONSTRAINT `exam_records_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_records_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_records_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_records_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_records_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_slots`
--
ALTER TABLE `exam_slots`
  ADD CONSTRAINT `exam_slots_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `parents`
--
ALTER TABLE `parents`
  ADD CONSTRAINT `parents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `promotions`
--
ALTER TABLE `promotions`
  ADD CONSTRAINT `promotions_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `promotions_new_class_id_foreign` FOREIGN KEY (`new_class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `promotions_old_class_id_foreign` FOREIGN KEY (`old_class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `promotions_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `promotions_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `schools`
--
ALTER TABLE `schools`
  ADD CONSTRAINT `schools_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `schools_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `semesters`
--
ALTER TABLE `semesters`
  ADD CONSTRAINT `semesters_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `semesters_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `parents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `students_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subjects_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subjects_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `teachers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `timetables`
--
ALTER TABLE `timetables`
  ADD CONSTRAINT `timetables_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `timetables_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `timetables_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `time_table_time_slots`
--
ALTER TABLE `time_table_time_slots`
  ADD CONSTRAINT `time_table_time_slots_timetable_id_foreign` FOREIGN KEY (`timetable_id`) REFERENCES `timetables` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `time_table_time_slot_week_day`
--
ALTER TABLE `time_table_time_slot_week_day`
  ADD CONSTRAINT `time_table_time_slot_week_day_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `time_table_time_slot_week_day_time_table_time_slot_id_foreign` FOREIGN KEY (`time_table_time_slot_id`) REFERENCES `time_table_time_slots` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `time_table_time_slot_week_day_week_day_id_foreign` FOREIGN KEY (`week_day_id`) REFERENCES `week_days` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
