-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2025 at 07:41 PM
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
-- Table structure for table `academics`
--

CREATE TABLE `academics` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `academic_years`
--

CREATE TABLE `academic_years` (
  `id` bigint(20) UNSIGNED NOT NULL,
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

INSERT INTO `academic_years` (`id`, `start_year`, `stop_year`, `school_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2025', '2026', 1, '2025-10-10 12:08:53', '2025-10-10 12:08:53', NULL),
(2, '1984', '1985', 1, '2025-10-10 12:08:53', '2025-10-10 12:08:53', NULL),
(3, '2018', '2019', 1, '2025-10-10 12:08:53', '2025-10-10 12:08:53', NULL),
(4, '1987', '1988', 1, '2025-10-10 12:08:53', '2025-10-10 12:08:53', NULL),
(5, '1983', '1984', 1, '2025-10-10 12:08:53', '2025-10-10 12:08:53', NULL),
(6, '1984', '1985', 1, '2025-10-10 12:10:07', '2025-10-10 12:10:07', NULL),
(7, '2018', '2019', 1, '2025-10-10 12:10:07', '2025-10-10 12:10:07', NULL),
(8, '2008', '2009', 1, '2025-10-10 12:10:07', '2025-10-10 12:10:07', NULL),
(9, '2010', '2011', 1, '2025-10-10 12:10:07', '2025-10-10 12:10:07', NULL);

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

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `school_id`, `class_code`, `class_name`, `section`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '397-390-4857', 'standard1', 'A', '2025-10-10 12:09:12', '2025-10-10 12:09:12', NULL),
(2, 1, '046-240-2741', 'standard1', 'A', '2025-10-10 12:09:12', '2025-10-10 12:09:12', NULL);

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

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `name`, `description`, `semester_id`, `start_date`, `stop_date`, `active`, `publish_result`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Exam 1', 'Exam 1 description', 1, '2020-01-01', '2020-01-31', 0, 0, '2025-10-10 12:10:35', '2025-10-10 12:10:35', NULL),
(2, 'illo', 'Nisi asperiores earum magni in rerum quibusdam.', 1, '2025-10-16', '2025-10-20', 1, 1, '2025-10-10 12:10:35', '2025-10-10 12:10:35', NULL),
(3, 'sunt', 'Corporis aspernatur recusandae aut ut.', 1, '2025-10-14', '2025-10-19', 1, 1, '2025-10-10 12:10:35', '2025-10-10 12:10:35', NULL),
(4, 'excepturi', 'Dolorem amet velit non numquam voluptatibus.', 1, '2025-10-19', '2025-10-25', 1, 1, '2025-10-10 12:10:35', '2025-10-10 12:10:35', NULL),
(5, 'corrupti', 'Et atque commodi culpa aliquid aliquam iste maiores.', 1, '2025-10-18', '2025-10-23', 1, 1, '2025-10-10 12:10:35', '2025-10-10 12:10:35', NULL),
(6, 'autem', 'Qui voluptatum quia ipsam nihil sit autem excepturi.', 1, '2025-10-18', '2025-10-19', 1, 1, '2025-10-10 12:10:35', '2025-10-10 12:10:35', NULL),
(7, 'dolores', 'Aut ipsam et et distinctio dicta assumenda saepe.', 1, '2025-10-19', '2025-10-24', 1, 1, '2025-10-10 12:10:35', '2025-10-10 12:10:35', NULL),
(8, 'illum', 'Ut dolorem nesciunt qui unde alias.', 1, '2025-10-13', '2025-10-19', 1, 1, '2025-10-10 12:10:35', '2025-10-10 12:10:35', NULL),
(9, 'velit', 'Vel illum nobis exercitationem ut.', 1, '2025-10-19', '2025-10-24', 1, 1, '2025-10-10 12:10:35', '2025-10-10 12:10:35', NULL),
(10, 'rerum', 'Aut magnam est nam aut explicabo id.', 1, '2025-10-19', '2025-10-20', 1, 1, '2025-10-10 12:10:35', '2025-10-10 12:10:35', NULL),
(11, 'laudantium', 'Quia consectetur officia sed ratione ut optio veritatis.', 1, '2025-10-16', '2025-10-25', 1, 1, '2025-10-10 12:10:35', '2025-10-10 12:10:35', NULL);

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
(2, '2014_10_12_000000_create_users_table', 2),
(3, '2014_10_12_100000_create_password_resets_table', 2),
(4, '2019_08_19_000000_create_failed_jobs_table', 2),
(5, '2022_09_01_122158_create_permission_tables', 2),
(6, '2022_09_01_145615_create_parents_table', 2),
(7, '2022_09_01_152621_create_students_table', 2),
(8, '2022_09_09_085730_create_schools_table', 3),
(9, '2022_09_27_075650_create_academic_years_table', 4),
(10, '2022_09_27_081705_create_semesters_table', 4),
(11, '2022_09_02_024606_create_classes_table', 5),
(12, '2022_09_29_125231_create_promotions_table', 5),
(13, '2022_10_03_074132_create_timetables_table', 5),
(14, '2022_10_03_121823_create_time_table_time_slots_table', 5),
(15, '2022_10_03_122405_create_week_days_table', 5),
(16, '2022_10_03_130247_time_table_time_slot_week_day', 6),
(17, '2022_10_17_131722_add_semester_id_to_schools_table', 6),
(18, '2022_10_17_132116_add_academic_year_id_to_schools_table', 6),
(19, '2022_10_19_053619_create_exams_table', 6),
(20, '2022_10_20_055643_create_exam_slots_table', 6),
(21, '2022_12_30_090119_academic_year_student', 7),
(22, '2022_11_29_113518_create_admins_table', 8),
(23, '2022_09_08_005523_create_settings_table', 9);

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
(1, 'super-admin', 'web', '2025-10-10 12:06:28', '2025-10-10 12:06:28'),
(2, 'Admin', 'web', '2025-10-10 12:06:28', '2025-10-10 12:06:28'),
(3, 'Teacher', 'web', '2025-10-10 12:06:28', '2025-10-10 12:06:28'),
(4, 'Parent', 'web', '2025-10-10 12:06:28', '2025-10-10 12:06:28'),
(5, 'Student', 'web', '2025-10-10 12:06:28', '2025-10-10 12:06:28');

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
(1, 'Default School', 'DSI', 'School of Computing', NULL, NULL, 'kTz4BadJAL', '2025-10-10 12:06:28', '2025-10-10 12:10:07', NULL, 2, 1),
(2, 'Prof. Xander Hegmann', 'fugit', '6347 Haley Route Apt. 464\nWest Monty, CA 24619', NULL, NULL, '61500', '2025-10-10 12:06:28', '2025-10-10 12:06:28', NULL, NULL, NULL),
(3, 'Mrs. Ashly Powlowski II', 'suscipit', '6121 Bergnaum Plain\nMcClurehaven, ME 72767', NULL, NULL, '27585', '2025-10-10 12:06:28', '2025-10-10 12:06:28', NULL, NULL, NULL),
(4, 'Kenny Stamm', 'sapiente', '9136 Drake Path Suite 775\nNew Einoland, ND 05273-7007', NULL, NULL, '16789', '2025-10-10 12:06:28', '2025-10-10 12:06:28', NULL, NULL, NULL),
(5, 'Hollie Monahan', 'doloribus', '6741 Trevor Well Suite 993\nNoeliashire, HI 99866-3661', NULL, NULL, '71281', '2025-10-10 12:07:21', '2025-10-10 12:07:21', NULL, NULL, NULL),
(6, 'Holden Hyatt', 'aut', '1100 Elias Common Apt. 747\nGabrielleview, KY 95687', NULL, NULL, '48547', '2025-10-10 12:07:21', '2025-10-10 12:07:21', NULL, NULL, NULL),
(7, 'Dr. Isadore Kirlin DVM', 'autem', '676 Nasir Landing\nGerryshire, NC 67216-3284', NULL, NULL, '97590', '2025-10-10 12:07:21', '2025-10-10 12:07:21', NULL, NULL, NULL),
(8, 'Prof. Nathan Fritsch MD', 'minus', '761 Otha Underpass\nEast Theaport, DC 43689', NULL, NULL, '26522', '2025-10-10 12:09:25', '2025-10-10 12:09:25', NULL, NULL, NULL),
(9, 'Willie Crona Jr.', 'est', '577 Goodwin Flats\nYosttown, NC 83220-4176', NULL, NULL, '60225', '2025-10-10 12:09:25', '2025-10-10 12:09:25', NULL, NULL, NULL),
(10, 'Ms. Alberta Johnson', 'aut', '293 Lilyan Way Suite 715\nSouth Lulu, NV 69941', NULL, NULL, '61920', '2025-10-10 12:09:25', '2025-10-10 12:09:25', NULL, NULL, NULL);

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
(1, 'Semester 1', 1, 1, '2025-10-10 12:10:07', '2025-10-10 12:10:07', NULL),
(2, 'Semester 2', 1, 1, '2025-10-10 12:10:07', '2025-10-10 12:10:07', NULL),
(417, 'excepturi', 1, 1, '2025-10-10 12:10:07', '2025-10-10 12:10:07', NULL),
(6467, 'harum', 1, 1, '2025-10-10 12:10:07', '2025-10-10 12:10:07', NULL),
(7232, 'soluta', 1, 1, '2025-10-10 12:10:07', '2025-10-10 12:10:07', NULL),
(8516, 'distinctio', 1, 1, '2025-10-10 12:10:07', '2025-10-10 12:10:07', NULL);

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

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `subject_code`, `school_id`, `class_id`, `teacher_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'standard1', '841-981-0936', 1, 1, 1, '2025-10-10 12:10:07', '2025-10-10 12:10:07', NULL);

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

--
-- Dumping data for table `timetables`
--

INSERT INTO `timetables` (`id`, `name`, `description`, `semester_id`, `class_id`, `school_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Timetable 1', 'Timetable 1 description', 1, 1, 1, '2025-10-10 12:10:07', '2025-10-10 12:10:07', NULL),
(8666, 'Fredy Kovacek', 'Bryce Hane', 2, 2, 5, '2025-10-10 12:10:07', '2025-10-10 12:10:07', NULL);

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

--
-- Dumping data for table `time_table_time_slots`
--

INSERT INTO `time_table_time_slots` (`id`, `timetable_id`, `start_time`, `stop_time`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '14:02:00', '15:02:00', '2025-10-10 12:10:58', '2025-10-10 12:10:58', NULL);

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
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(121) NOT NULL DEFAULT '$2y$10$ET3esR3kaumcqQpNOr.wHumbTtEf/wZsldwONwYZuXZkYwqTgTxim',
  `profile_picture` varchar(121) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Dumping data for table `week_days`
--

INSERT INTO `week_days` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Monday', '2025-10-10 12:10:35', '2025-10-10 12:10:35'),
(2, 'Tuesday', '2025-10-10 12:10:35', '2025-10-10 12:10:35'),
(3, 'Wednesday', '2025-10-10 12:10:35', '2025-10-10 12:10:35'),
(4, 'Thursday', '2025-10-10 12:10:35', '2025-10-10 12:10:35'),
(5, 'Friday', '2025-10-10 12:10:35', '2025-10-10 12:10:35'),
(6, 'Saturday', '2025-10-10 12:10:35', '2025-10-10 12:10:35'),
(7, 'Sunday', '2025-10-10 12:10:35', '2025-10-10 12:10:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academics`
--
ALTER TABLE `academics`
  ADD PRIMARY KEY (`id`);

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
  ADD UNIQUE KEY `students_admission_no_unique` (`admission_no`),
  ADD KEY `students_user_id_foreign` (`user_id`),
  ADD KEY `students_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `week_days`
--
ALTER TABLE `week_days`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academics`
--
ALTER TABLE `academics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `academic_years`
--
ALTER TABLE `academic_years`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `exam_records`
--
ALTER TABLE `exam_records`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `semesters`
--
ALTER TABLE `semesters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8517;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `timetables`
--
ALTER TABLE `timetables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8667;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `week_days`
--
ALTER TABLE `week_days`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
