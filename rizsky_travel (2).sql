-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Agu 2020 pada 15.58
-- Versi server: 5.5.39
-- Versi PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rizsky_travel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `galleries`
--

INSERT INTO `galleries` (`id`, `travel_packages_id`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, 1, 'assets/gallery/7BnqkfexGdIA3KYRcq3tHxa4DQ9f5pZzYEPFal7x.jpeg', '2020-06-16 20:11:07', '2020-06-07 02:24:07', '2020-06-16 20:11:07'),
(5, 1, 'assets/gallery/8slovoxzuIswMBnm3VIaDDlO4nEvaVf2MFJJkacN.jpeg', NULL, '2020-06-07 02:31:38', '2020-06-07 02:31:38'),
(6, 1, 'assets/gallery/CZfWP8UEqhJNlptyUOWUL8wld02H4oAoxHXdTJIW.jpeg', NULL, '2020-06-16 20:10:59', '2020-06-16 20:10:59'),
(7, 1, 'assets/gallery/G59eIAxq83FPdqz8RGf45DVNqbD9FqagT0IRwI1d.jpeg', NULL, '2020-06-16 20:12:20', '2020-06-16 20:12:20'),
(8, 1, 'assets/gallery/nRddchBlIcnp1RHHR3TWtvt4cklyQtcQi3XUiVgJ.jpeg', NULL, '2020-06-16 20:13:19', '2020-06-16 20:13:19'),
(9, 1, 'assets/gallery/9foMxVwz3s7yHc3m4xspQKYOElrThvv1JE3Y7jcM.jpeg', NULL, '2020-06-16 20:15:07', '2020-06-16 20:15:07'),
(10, 2, 'assets/gallery/gCdxbjpMCCUwtQxkh4t4S2q47lHoIsmKYcSoBENn.jpeg', NULL, '2020-06-16 20:26:36', '2020-06-16 20:26:36'),
(11, 3, 'assets/gallery/qFgh0vmXf7ZoCmQ7lx7qSZ204VLMs58th8fi3uBn.jpeg', NULL, '2020-06-19 15:38:04', '2020-06-19 15:38:04'),
(12, 3, 'assets/gallery/jFMNRk4ChrDS9FL5I8d73071ITUAfrBcOl3xbe1S.jpeg', NULL, '2020-06-19 15:40:11', '2020-06-19 15:40:11'),
(13, 3, 'assets/gallery/JOqGxwaasJ9jI7Lq6QTwfaBjiV50unbR1SwyTnPb.jpeg', NULL, '2020-06-19 15:40:30', '2020-06-19 15:40:30'),
(14, 4, 'assets/gallery/Tz6zlOgWoEuokHfiMjkUqWGHu8DfsitTxrAT5CGV.jpeg', NULL, '2020-06-19 15:53:51', '2020-06-19 15:54:32'),
(15, 6, 'assets/gallery/6PnbKiG8WHVt2yqQHaBRk1WMg2F705TsTMPVqhMf.jpeg', NULL, '2020-07-01 16:08:39', '2020-07-01 16:17:38'),
(16, 6, 'assets/gallery/TyyAjG34YFLCBPyVndcMz2XLcwRlGjypZP4BHWkm.jpeg', NULL, '2020-07-01 16:36:57', '2020-07-01 16:36:57'),
(17, 6, 'assets/gallery/pB00Nz5UAP804NJMXoNmoBjXQoOb3wlwUcOje40X.jpeg', NULL, '2020-07-01 16:37:15', '2020-07-01 16:37:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_05_29_141517_create_travel_packages_table', 1),
(4, '2020_05_29_145554_create_password_resets_table', 1),
(5, '2020_05_29_152047_create_galleries_table', 2),
(6, '2020_05_29_152704_create_transactions_table', 3),
(7, '2020_05_29_161439_create_transaction_details_table', 4),
(8, '2020_05_30_041034_add_roles_field_to_users_table', 5),
(9, '2020_05_30_071530_add_username_field_to_users_table', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction`
--

CREATE TABLE `transaction` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `additional_visa` int(11) NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaction`
--

INSERT INTO `transaction` (`id`, `travel_packages_id`, `users_id`, `additional_visa`, `transaction_total`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 7, 190, 290, 'SUCCESS', '2020-06-16 06:54:28', '2020-06-03 10:44:09', '2020-06-16 06:54:28'),
(2, 1, 11, 0, 200, 'IN_CART', '2020-06-16 06:54:26', '2020-06-09 10:26:28', '2020-06-16 06:54:26'),
(3, 1, 11, 0, 200, 'IN_CART', '2020-06-16 06:54:22', '2020-06-09 10:39:15', '2020-06-16 06:54:22'),
(4, 1, 11, 0, 200, 'PENDING', '2020-06-16 06:54:20', '2020-06-14 01:19:11', '2020-06-16 06:54:20'),
(5, 1, 11, -380, -580, 'PENDING', '2020-06-16 06:54:18', '2020-06-15 00:14:15', '2020-06-16 06:54:18'),
(6, 1, 11, 190, 790, 'PENDING', '2020-06-16 06:54:15', '2020-06-15 10:28:29', '2020-06-16 06:54:15'),
(7, 2, 7, 380, 1580, 'PENDING', NULL, '2020-06-21 19:30:21', '2020-06-21 19:32:02'),
(8, 2, 7, 0, 400, 'PENDING', NULL, '2020-06-21 20:28:12', '2020-06-21 20:28:18'),
(9, 1, 7, 0, 200, 'PENDING', NULL, '2020-06-21 21:22:59', '2020-06-21 21:23:04'),
(10, 4, 7, 0, 600000, 'PENDING', NULL, '2020-06-21 21:24:54', '2020-06-21 21:26:09'),
(11, 3, 7, 0, 500000, 'PENDING', NULL, '2020-06-21 21:26:26', '2020-06-21 21:26:31'),
(12, 3, 7, 0, 500000, 'PENDING', NULL, '2020-06-21 21:27:21', '2020-06-21 21:27:25'),
(13, 1, 7, 0, 200, 'PENDING', NULL, '2020-06-21 21:27:43', '2020-06-21 21:27:47'),
(14, 1, 7, 0, 200, 'PENDING', NULL, '2020-06-21 21:28:47', '2020-06-21 21:28:50'),
(15, 4, 7, 0, 600000, 'PENDING', NULL, '2020-06-21 21:41:30', '2020-06-21 21:41:33'),
(16, 1, 7, 0, 200, 'PENDING', NULL, '2020-06-21 21:48:02', '2020-06-21 21:48:06'),
(17, 2, 8, 0, 400, 'PENDING', NULL, '2020-06-21 22:49:13', '2020-06-21 22:49:19'),
(18, 3, 8, 190, 1000190, 'PENDING', NULL, '2020-06-21 23:14:42', '2020-06-21 23:15:08'),
(19, 1, 8, 190, 590, 'PENDING', NULL, '2020-06-21 23:18:21', '2020-06-21 23:18:37'),
(20, 1, 8, 0, 200, 'PENDING', NULL, '2020-06-21 23:38:38', '2020-06-21 23:38:44'),
(21, 3, 7, 0, 500000, 'PENDING', NULL, '2020-06-23 03:44:30', '2020-06-23 03:44:34'),
(22, 3, 13, 0, 500000, 'IN_CART', NULL, '2020-06-26 15:36:49', '2020-06-26 15:36:49'),
(23, 2, 8, 0, 400, 'PENDING', NULL, '2020-07-01 00:03:20', '2020-07-01 00:03:27'),
(24, 2, 14, 0, 400, 'PENDING', NULL, '2020-07-01 00:13:05', '2020-07-01 00:13:14'),
(25, 2, 8, 0, 400, 'PENDING', NULL, '2020-07-01 01:15:16', '2020-07-01 01:15:21'),
(26, 3, 14, 0, 500000, 'IN_CART', NULL, '2020-07-01 01:37:25', '2020-07-01 01:37:25'),
(27, 3, 14, 0, 500000, 'PENDING', NULL, '2020-07-01 02:49:29', '2020-07-01 02:50:45'),
(28, 3, 14, 0, 500000, 'PENDING', NULL, '2020-07-01 02:52:07', '2020-07-01 02:53:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_visa` tinyint(1) NOT NULL,
  `doe_passport` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transaction_id`, `username`, `nationality`, `is_visa`, `doe_passport`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Rizsky Darmawan', 'ID', 1, '2020-06-17', NULL, '2020-06-02 17:00:00', '2020-06-02 17:00:00'),
(2, 1, 'Adibs', 'ID', 0, '2020-06-10', NULL, '2020-06-02 17:00:00', '2020-06-02 17:00:00'),
(3, 2, '', 'ID', 0, '2025-06-09', NULL, '2020-06-09 10:26:28', '2020-06-09 10:26:28'),
(4, 3, 'Winda', 'ID', 0, '2025-06-09', NULL, '2020-06-09 10:39:15', '2020-06-09 10:39:15'),
(5, 4, 'Winda', 'ID', 0, '2025-06-14', NULL, '2020-06-14 01:19:11', '2020-06-14 01:19:11'),
(6, 5, 'Winda', 'ID', 0, '2025-06-15', NULL, '2020-06-15 00:14:15', '2020-06-15 00:14:15'),
(7, 5, 'Adibs', 'CN', 1, '2020-07-23', '2020-06-15 10:24:17', '2020-06-15 00:55:51', '2020-06-15 10:24:17'),
(8, 5, 'rizsky darmawan user', 'CN', 0, '2020-07-17', '2020-06-15 10:24:13', '2020-06-15 10:12:19', '2020-06-15 10:24:13'),
(9, 5, 'Adibs', 'CN', 1, '2020-06-27', '2020-06-15 10:28:01', '2020-06-15 10:26:30', '2020-06-15 10:28:01'),
(10, 6, 'Winda', 'ID', 0, '2025-06-15', NULL, '2020-06-15 10:28:29', '2020-06-15 10:28:29'),
(11, 6, 'Adibs', 'CN', 1, '2020-07-17', NULL, '2020-06-15 10:28:43', '2020-06-15 10:28:43'),
(12, 6, 'rizsky darmawan user', 'CN', 0, '2020-07-25', NULL, '2020-06-15 10:29:31', '2020-06-15 10:29:31'),
(13, 7, 'Rizsky Darmawan', 'ID', 0, '2025-06-22', NULL, '2020-06-21 19:30:21', '2020-06-21 19:30:21'),
(14, 7, 'Adibs', 'CN', 1, '2020-08-07', NULL, '2020-06-21 19:31:16', '2020-06-21 19:31:16'),
(15, 7, 'winda', 'ID', 1, '2020-09-25', NULL, '2020-06-21 19:32:01', '2020-06-21 19:32:01'),
(16, 8, 'Rizsky Darmawan', 'ID', 0, '2025-06-22', NULL, '2020-06-21 20:28:12', '2020-06-21 20:28:12'),
(17, 9, 'Rizsky Darmawan', 'ID', 0, '2025-06-22', NULL, '2020-06-21 21:22:59', '2020-06-21 21:22:59'),
(18, 10, 'Rizsky Darmawan', 'ID', 0, '2025-06-22', NULL, '2020-06-21 21:24:54', '2020-06-21 21:24:54'),
(19, 10, 'Adibs', 'ID', 1, '2020-07-25', '2020-06-21 21:26:10', '2020-06-21 21:25:30', '2020-06-21 21:26:10'),
(20, 11, 'Rizsky Darmawan', 'ID', 0, '2025-06-22', NULL, '2020-06-21 21:26:26', '2020-06-21 21:26:26'),
(21, 12, 'Rizsky Darmawan', 'ID', 0, '2025-06-22', NULL, '2020-06-21 21:27:21', '2020-06-21 21:27:21'),
(22, 13, 'Rizsky Darmawan', 'ID', 0, '2025-06-22', NULL, '2020-06-21 21:27:43', '2020-06-21 21:27:43'),
(23, 14, 'Rizsky Darmawan', 'ID', 0, '2025-06-22', NULL, '2020-06-21 21:28:47', '2020-06-21 21:28:47'),
(24, 15, 'Rizsky Darmawan', 'ID', 0, '2025-06-22', NULL, '2020-06-21 21:41:30', '2020-06-21 21:41:30'),
(25, 16, 'Rizsky Darmawan', 'ID', 0, '2025-06-22', NULL, '2020-06-21 21:48:02', '2020-06-21 21:48:02'),
(26, 17, 'Adibs', 'ID', 0, '2025-06-22', NULL, '2020-06-21 22:49:13', '2020-06-21 22:49:13'),
(27, 18, 'Adibs', 'ID', 0, '2025-06-22', NULL, '2020-06-21 23:14:42', '2020-06-21 23:14:42'),
(28, 18, 'winda', 'ID', 1, '2020-09-11', NULL, '2020-06-21 23:15:04', '2020-06-21 23:15:04'),
(29, 19, 'Adibs', 'ID', 0, '2025-06-22', NULL, '2020-06-21 23:18:22', '2020-06-21 23:18:22'),
(30, 19, 'rizsky darmawan user', 'CN', 1, '2020-08-14', NULL, '2020-06-21 23:18:34', '2020-06-21 23:18:34'),
(31, 20, 'Adibs', 'ID', 0, '2025-06-22', NULL, '2020-06-21 23:38:38', '2020-06-21 23:38:38'),
(32, 21, 'Rizsky Darmawan', 'ID', 0, '2025-06-23', NULL, '2020-06-23 03:44:30', '2020-06-23 03:44:30'),
(33, 22, 'Habibi Yusuf', 'ID', 0, '2025-06-26', NULL, '2020-06-26 15:36:49', '2020-06-26 15:36:49'),
(34, 23, 'Adibs', 'ID', 0, '2025-07-01', NULL, '2020-07-01 00:03:21', '2020-07-01 00:03:21'),
(35, 24, 'muhammad', 'ID', 0, '2025-07-01', NULL, '2020-07-01 00:13:05', '2020-07-01 00:13:05'),
(36, 25, 'Adibs', 'ID', 0, '2025-07-01', NULL, '2020-07-01 01:15:17', '2020-07-01 01:15:17'),
(37, 26, 'muhammad', 'ID', 0, '2025-07-01', NULL, '2020-07-01 01:37:25', '2020-07-01 01:37:25'),
(38, 27, 'muhammad', 'ID', 0, '2025-07-01', NULL, '2020-07-01 02:49:29', '2020-07-01 02:49:29'),
(39, 28, 'muhammad', 'ID', 0, '2025-07-01', NULL, '2020-07-01 02:52:07', '2020-07-01 02:52:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `travel_packages`
--

CREATE TABLE `travel_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foods` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_date` date NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `travel_packages`
--

INSERT INTO `travel_packages` (`id`, `title`, `slug`, `location`, `about`, `featured_event`, `language`, `foods`, `departure_date`, `duration`, `type`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Nusa Penida', 'nusa-penida', 'Indonesia', '<p style=\"text-align: justify;\">Pulau Nusa Penida dimana lokasinya? Nusa Penida adalah sebuah pulau kecil yang berada di sebelah tenggara pulau Bali, dipisahkan oleh selat Badung. Di dekat pulau ini, terdapat 2 pulau kecil lain, yaitu pulau Nusa Lembongan dan pulau Nusa Ceningan. Ketiga pulau kecil yang ada di bagian tenggara pulau Bali, memiliki keunikan dan daya tarik tersendiri dan ada perbedaan satu sama lain. Ketiga pulau masuk dalam wilayah pemerintahan kabupaten Klungkung, provinsi Bali.</p>', 'Joget', 'Bahasa Indonesia', 'Seblak', '2020-10-20', '2D1N', 'Open Trip', 200, NULL, NULL, '2020-06-16 06:55:28'),
(2, 'Puncak Lawang', 'puncak-lawang', 'Sumatera Barat', '<p>Beruntung kita hidup di Indonesia, negeri dengan keindahan alam yang sangat menakjubkan. Salah satunya adalah Sumatera Barat, yang memiliki destiasi super Indah beranama Puncak Lawang. Bahkan saking menakjubkannya, Puncak Lawang disebut-sebut sebagai negeri di atas awan.</p>\r\n<p>Saat menginjakan kaki di Bandara Internasional Minangkabau, hal pertama yang akan Lo dapatkan adalah, sambutan hangat dari rangkaian pegunungan Bukit Barisan yang nampak kokoh membelah pulau Svarnadwipa alias Sumatera.</p>\r\n<p>Dari kota Padang yang sangat eksotis, Lo bisa melanjutkan perjalanan menuju Bukittinggi, yang bisa ditempuh selama 2-3 jam. Sepanjang perjalanan, Lo akan dimanjakan dengan hutan alam lebat, awan dan kabut yang menyelimuti puncak bukitnya.</p>\r\n<p>Sementara itu, perjalanan menuju Puncak Lawang masih terus berlanjut hingga memasuki kawasan padangpanjang. Di sini, trek makin menggila bro, dimana Lo bakalan disambut dengan jalanan berkelok disisi hutan yang dialiri sungai. Cukup membuat suasana tegang sedikit mencair karena keindahannya!</p>', 'Terbang Layang', 'Indonesia', 'Lontong Sayur', '2020-08-28', '2D1N', 'Open Trip', 400, NULL, '2020-06-16 20:25:56', '2020-06-16 20:25:56'),
(3, 'Gili Trawang', 'gili-trawang', 'Lombok', '<p>Beruntung kita hidup di Indonesia, negeri dengan keindahan alam yang sangat menakjubkan. Salah satunya adalah Sumatera Barat, yang memiliki destiasi super Indah beranama Puncak Lawang. Bahkan saking menakjubkannya, Puncak Lawang disebut-sebut sebagai negeri di atas awan.</p>\r\n<p>Saat menginjakan kaki di Bandara Internasional Minangkabau, hal pertama yang akan Lo dapatkan adalah, sambutan hangat dari rangkaian pegunungan Bukit Barisan yang nampak kokoh membelah pulau Svarnadwipa alias Sumatera.</p>\r\n<p>Dari kota Padang yang sangat eksotis, Lo bisa melanjutkan perjalanan menuju Bukittinggi, yang bisa ditempuh selama 2-3 jam. Sepanjang perjalanan, Lo akan dimanjakan dengan hutan alam lebat, awan dan kabut yang menyelimuti puncak bukitnya.</p>\r\n<p>Sementara itu, perjalanan menuju Puncak Lawang masih terus berlanjut hingga memasuki kawasan padangpanjang. Di sini, trek makin menggila bro, dimana Lo bakalan disambut dengan jalanan berkelok disisi hutan yang dialiri sungai. Cukup membuat suasana tegang sedikit mencair karena keindahannya!</p>', 'Menyelam', 'Indonesia', 'Bakso', '2020-10-02', '2D1N', 'Open Trip', 500000, NULL, '2020-06-19 15:36:58', '2020-06-19 15:48:16'),
(4, 'Pulau Komodo', 'pulau-komodo', 'Indonesia', '<p>Paket Wisata Pulau Komodo &ndash; Paket Wisata Komodo &ndash; Wisata Pulau Komodo &ndash; Wisata ke Komodo (Program 3H-2M) adalah sebuah paket wisata khusus yang dikemas untuk anda yang ingin menjelajah pulau Komodo dan beberapa pulau-pulau indah lainnya yang berada di dalam kawasan Taman Nasioanal Komodo seperti pulau Kelor, pulau Rinca, pulau Padar, Pantai Pink di Pulau Komodo, pulau Komodo, kampung nelayan Komodo, pulau Takamakasar/Manta Poin, pulau Kanawa dan lain lain. Paket wisata Pulau Komodo ini merupakan sebuah paket wisata paling favorite dan sangat laris bagi para wisatawan baik wisatan domestic maupun wisatawan mancanegara kerena didalam paket tour ini, selain anda akan berkunjung ke habitat asli binatang Komodo untuk melihat dan menyaksikan lansung binatang pra-sejarah Komodo Varanus, anda juga akan dipandu untuk menjelajahi keindahan-keindahan panorama alam yang berada didalam kawasan Taman Nasional Komodo, baik panorama alam bawah laut yang sanagt elok dan memukau, maupun panorama alam daratan yang sangat spektakuler. Penjelajaan taman bawah laut dalam kawasan pulau Komodo dilakukan dengan cara melakukan kegiatan snorkeling. Selain itu, Paket wisata pulau Komodo juga akan melakukan kegiatan bersenang-senang berupa foto selfie, berenang, berjemur dan berjalan-jalan di pantai berpasir putih yang sangat eksotis. Dalam menyelenggarakan paket wisata ini, kami akan menyediakan sarana angkutan wisata laut yaitu kapal wisata laut khusus untuk menjelajahi perairan Taman Nasional Komodo. Jenis kapal wisata laut yang kami sediakan adalah dari standard kabin ber-AC dan kabin non-AC atau dari kelas ekonomi, medium dan kelas kapal mewah phinisi. Kami akan menyipakan semuanya untuk anda, namun tentunya akan disesuaikan dengan permintaan dan budget anda. Paket Wisata Pulau Komodo akan menhabisakan waktu selama tiga hari diatas kapal wisata. Akomodasi dan makan minum juga akan disediakan diatas kapal.</p>\r\n<p>&nbsp;</p>\r\n<p>Paket wisata ini merupakan paket wisata terlengkap yang dirancang khusus oleh tim kami, dan sudah mencakupi tempat-tempat wisata popular disekitar pulau Komodo, sehingga kami sangat merekomendasikan kepada para wisatawan, jika anda&nbsp; ingin berlibur ke pulau Komodo, 3H-2M. Paket wisata Pulau Komodo adalah sebuah pilihan yang nyamn dan tepat untuk anda.</p>', 'Foto', 'Indonesia', 'Sayur Asam', '2020-10-22', '3D2N', 'Open Trip', 600000, NULL, '2020-06-19 15:52:17', '2020-06-19 15:52:17'),
(5, 'Raja Ampat', 'raja-ampat', 'Indonesia', '<p>Raja Ampat adalah tempat wisata di Papua yang telah mendunia. Posisi Raja Ampat berada di pusat segitiga karang dunia. Raja Ampat yang termasuk dalam teritorial Papua Barat ini adalah gugusan pulau dengan 610 pulau yang tersebar dan memiliki keindahan bawah laut yang tiada dua. Gugusan pulau Karang dengan panorama laut pristine yang menakjubkan menjadi salah satu daya tarik wisatawan.</p>', 'Joget', 'Indonesia', 'Bakso', '2020-11-20', '2D1N', 'Open Trip', 600000, '2020-06-19 15:57:22', '2020-06-19 15:56:38', '2020-06-19 15:57:22'),
(6, 'Bukittinggi', 'bukittinggi', 'Sumatera Barat', '<p><span style=\"color: #4a4a4a; font-family: Helvetica, arial, sans-serif; font-size: 16px;\">Jalan-jalan ke Bukittinggi memang asyik. Kamu yang hanya punya singkat, begini caranya jelajahi Bukittingi dalam sehari.</span><br style=\"color: #4a4a4a; font-family: Helvetica, arial, sans-serif; font-size: 16px;\" /><br style=\"color: #4a4a4a; font-family: Helvetica, arial, sans-serif; font-size: 16px;\" /><span style=\"color: #4a4a4a; font-family: Helvetica, arial, sans-serif; font-size: 16px;\">Mungkin kita sudah tidak asing lagi dengan landmark kota Bukittinggi Jam Gadang. Ini adalah sebuah bangunan ikonik yang terletak di pusat Kota Bukittinggi.</span><br style=\"color: #4a4a4a; font-family: Helvetica, arial, sans-serif; font-size: 16px;\" /><br style=\"color: #4a4a4a; font-family: Helvetica, arial, sans-serif; font-size: 16px;\" /><span style=\"color: #4a4a4a; font-family: Helvetica, arial, sans-serif; font-size: 16px;\">aMengunjungi satu persatu tempat wisata di Bukittinggi juga cukup nyaman dengan berjalan kaki. Suhu kota yang sejuk, dan sinar matahari yang tidak teralu menyengat membuat kia betah menyusuri sudut-sudut kota. Apalagi trotoal di kota ini sudah lumayan untuk kaum pejalan kaki.</span><br style=\"color: #4a4a4a; font-family: Helvetica, arial, sans-serif; font-size: 16px;\" /><br style=\"color: #4a4a4a; font-family: Helvetica, arial, sans-serif; font-size: 16px;\" /><span style=\"color: #4a4a4a; font-family: Helvetica, arial, sans-serif; font-size: 16px;\">Jika akan melakukan tour satu hari di Kota Bukittinggi, Tempat pertama yang wajib dikunjungi adalah Jam Gadang. Letaknya strategis membuat jam gadang mudah diakses dari segala arah. Bangunan setinggi 26 meter ini terletak di sebuah taman cukup luas yang dikelililingi oleh pusat bisnis Kota Bukitinggi.</span></p>', 'Terbang Layang', 'Indonesia', 'Nasi Kapau', '2020-12-17', '2D1N', 'Open Trip', 200000, NULL, '2020-07-01 03:56:04', '2020-07-01 03:56:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`, `username`) VALUES
(7, 'Rizsky Darmawan', 'darmawan@gmail.com', '2020-06-21 19:30:07', '$2y$10$oJfcV9DryNseZGQ2j8g7F.BvO50NKu.HilEnZ0PZE1OX1hK9T2aly', NULL, '2020-05-29 22:36:42', '2020-06-21 19:30:07', 'ADMIN', 'Rizsky Darmawan'),
(8, 'adib ramadhan', 'adib@gmail.com', '2020-06-21 22:49:01', '$2y$10$A20DFYW/7LWJ9d9.ilqhlOlJdtJOpivagSlsP.DoOYC2ZS4UmHfW6', NULL, '2020-05-29 22:39:32', '2020-06-21 22:49:01', 'USER', 'Adibs'),
(11, 'winda', 'winda@gmail.com', '2020-05-30 00:34:20', '$2y$10$eadT4kK8O4F.LYnuBZd.Tu1Q9c9VSkpr2s/QHWAM5G1JLas0hDAP2', 'JGaLKcj5eLKM3NS6EBoiQvkzA88zUsT8jpWBPvGsPmfEJu7jlcWfrY9amlU1', '2020-05-30 00:08:28', '2020-05-30 00:34:20', 'USER', 'Winda'),
(12, 'Rizsky user', 'user@gmail.com', '2020-05-30 00:33:27', '$2y$10$Fz5ro2z8/XBt3.CmEGwzwO8ionwphoIbyIABgZd32k1vUPP2j4Po6', NULL, '2020-05-30 00:32:49', '2020-05-30 00:33:27', 'USER', 'rizsky darmawan user'),
(13, 'Habibi', 'hy@gmail.com', '2020-06-26 15:36:28', '$2y$10$2/goDLRdc2kHB.L/pJ4kYe9fUmWFzr2edbYDAbFNBsyQfP.pwjte6', NULL, '2020-06-26 15:34:16', '2020-06-26 15:36:28', 'USER', 'Habibi Yusuf'),
(14, 'rifki', 'rifki@gmail.com', '2020-07-01 00:12:38', '$2y$10$DQKJ20eWtqAFdi0Nko2G4eL14lx.8gLQ4BJNBK/Nn591sHkEpF5zK', NULL, '2020-07-01 00:06:12', '2020-07-01 00:12:38', 'ADMIN', 'muhammad');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `travel_packages`
--
ALTER TABLE `travel_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `travel_packages`
--
ALTER TABLE `travel_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
