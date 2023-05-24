-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Bulan Mei 2023 pada 15.46
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spmb_udb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `formulir`
--

CREATE TABLE `formulir` (
  `no_daftar` varchar(10) NOT NULL,
  `id_periode` int(4) NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` char(1) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` datetime NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telp` varchar(100) NOT NULL,
  `program_studi` varchar(10) NOT NULL,
  `kelas` varchar(5) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `formulir`
--

INSERT INTO `formulir` (`no_daftar`, `id_periode`, `id_user`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `program_studi`, `kelas`, `created_at`, `updated_at`) VALUES
('20240001', 2024, 2, 'Maheswara Wira Yoganata', 'L', 'Yogyakarta', '1999-05-13 00:00:00', 'Jl. Rambutan 2/17 Perumnas Wonorejo indah, Gondangrejo, Karanganyar', '0895392893669', 'P0001', 'C', '2023-05-10 14:11:08', '2023-05-10 14:11:08'),
('20240002', 2024, 3, 'Fulanah', 'P', 'Majenang', '1998-01-13 00:00:00', 'Majenang Raya No 6, RT 04/ RW 20', '089765654567', 'P0001', 'C', '2023-05-10 14:38:31', '2023-05-10 14:38:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_19_045756_create_permission_tables', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('punjungalfisal@gmail.com', '$2y$10$x7TvfAZij3Bt4YJj9Zp6WuXY2C0ZcIYVc563c6osAhsFSO19vZXQG', '2023-03-17 07:59:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `periode`
--

CREATE TABLE `periode` (
  `id` int(4) NOT NULL,
  `aktif` int(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `periode`
--

INSERT INTO `periode` (`id`, `aktif`, `created_at`, `updated_at`) VALUES
(2023, 0, '2023-03-09 14:50:28', '2023-03-13 14:00:38'),
(2024, 1, '2023-03-12 09:12:58', '2023-03-13 14:00:38'),
(2025, 0, '2023-03-13 14:08:15', '2023-03-13 14:08:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Manage Periode', 'web', '2023-03-18 22:23:04', '2023-03-18 22:32:57'),
(2, 'Manage Pendaftaran', 'web', '2023-03-18 22:23:33', '2023-03-18 22:23:33'),
(3, 'Formulir Pendaftaran', 'web', '2023-03-18 22:23:54', '2023-03-18 22:23:54'),
(5, 'Manage Seleksi', 'web', '2023-03-18 22:24:32', '2023-03-18 22:24:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-03-18 22:26:06', '2023-03-18 22:26:06'),
(2, 'Pendaftar', 'web', '2023-03-18 22:26:12', '2023-03-18 22:26:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 2),
(5, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `seleksi`
--

CREATE TABLE `seleksi` (
  `id` bigint(20) NOT NULL,
  `id_periode` int(4) NOT NULL,
  `tahap` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `seleksi`
--

INSERT INTO `seleksi` (`id`, `id_periode`, `tahap`, `tanggal`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 2024, 'Tahap 1', '2023-05-21', 'Membawa alat tulis lengkap dan datang tepat waktu', '2023-05-10 14:12:16', '2023-05-10 14:12:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `seleksi_peserta`
--

CREATE TABLE `seleksi_peserta` (
  `id` varchar(30) NOT NULL,
  `id_seleksi` bigint(20) NOT NULL,
  `id_formulir` varchar(8) NOT NULL,
  `hasil` int(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `seleksi_peserta`
--

INSERT INTO `seleksi_peserta` (`id`, `id_seleksi`, `id_formulir`, `hasil`, `created_at`, `updated_at`) VALUES
('1-20240001', 1, '20240001', 1, '2023-05-10 14:14:19', '2023-05-10 14:15:58'),
('1-20240002', 1, '20240002', 1, '2023-05-10 14:39:14', '2023-05-10 14:39:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '210101067@mhs.udb.ac.id', '2023-03-17 08:17:56', '$2y$10$KZNHNlBaPlJdcSvdhD9N2.nMmBahjg48VGZeFkyIY.SWA1XgSBh.C', 'XkClcTIXUro71gQxSKBuc9Dp4kvyKrdtcKp9wBxZxcXo6iieVXvVFv17KTTs', '2023-03-06 21:23:54', '2023-03-17 08:17:56'),
(2, 'Maheswara Wira', 'maheswarawira3@gmail.com', '2023-03-17 08:10:23', '$2y$10$KZNHNlBaPlJdcSvdhD9N2.nMmBahjg48VGZeFkyIY.SWA1XgSBh.C', 'ZsPOYmsjwe5qvOQwIKkmRO476djF5mRGQ682iSrNIcsyoMhS9lC6IVZ3IX6m', '2023-03-17 07:06:12', '2023-03-19 21:37:52'),
(3, 'Fulanah', 'fulanah13@gmail.com', '2023-03-22 11:42:06', '$2y$10$KZNHNlBaPlJdcSvdhD9N2.nMmBahjg48VGZeFkyIY.SWA1XgSBh.C', '8osfGudHBt84OOgQr8VK4QFhGWJbf0OsQtOMthHkqPFYFzm1EpCSOFC7Tn9T', '2023-03-22 11:37:41', '2023-03-22 11:42:06');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_formulir_peserta`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_formulir_peserta` (
`no_daftar` varchar(10)
,`id_periode` int(4)
,`id_user` bigint(20)
,`nama` varchar(100)
,`jenis_kelamin` char(1)
,`tempat_lahir` varchar(100)
,`tanggal_lahir` datetime
,`alamat` varchar(255)
,`telp` varchar(100)
,`program_studi` varchar(10)
,`created_at` datetime
,`updated_at` datetime
,`id_seleksi` bigint(20)
,`hasil` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_seleksi_peserta`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_seleksi_peserta` (
`id` varchar(30)
,`id_seleksi` bigint(20)
,`id_periode` int(4)
,`tahap` varchar(100)
,`tanggal` date
,`no_daftar` varchar(10)
,`nama` varchar(100)
,`telp` varchar(100)
,`program_studi` varchar(10)
,`kelas` varchar(5)
,`hasil` int(1)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `view_formulir_peserta`
--
DROP TABLE IF EXISTS `view_formulir_peserta`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_formulir_peserta`  AS SELECT `formulir`.`no_daftar` AS `no_daftar`, `formulir`.`id_periode` AS `id_periode`, `formulir`.`id_user` AS `id_user`, `formulir`.`nama` AS `nama`, `formulir`.`jenis_kelamin` AS `jenis_kelamin`, `formulir`.`tempat_lahir` AS `tempat_lahir`, `formulir`.`tanggal_lahir` AS `tanggal_lahir`, `formulir`.`alamat` AS `alamat`, `formulir`.`telp` AS `telp`, `formulir`.`program_studi` AS `program_studi`, `formulir`.`created_at` AS `created_at`, `formulir`.`updated_at` AS `updated_at`, `seleksi_peserta`.`id_seleksi` AS `id_seleksi`, `seleksi_peserta`.`hasil` AS `hasil` FROM (`formulir` left join `seleksi_peserta` on(`formulir`.`no_daftar` = `seleksi_peserta`.`id_formulir`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_seleksi_peserta`
--
DROP TABLE IF EXISTS `view_seleksi_peserta`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_seleksi_peserta`  AS SELECT `seleksi_peserta`.`id` AS `id`, `seleksi_peserta`.`id_seleksi` AS `id_seleksi`, `seleksi`.`id_periode` AS `id_periode`, `seleksi`.`tahap` AS `tahap`, `seleksi`.`tanggal` AS `tanggal`, `formulir`.`no_daftar` AS `no_daftar`, `formulir`.`nama` AS `nama`, `formulir`.`telp` AS `telp`, `formulir`.`program_studi` AS `program_studi`, `formulir`.`kelas` AS `kelas`, `seleksi_peserta`.`hasil` AS `hasil` FROM ((`seleksi` join `seleksi_peserta` on(`seleksi`.`id` = `seleksi_peserta`.`id_seleksi`)) join `formulir` on(`seleksi_peserta`.`id_formulir` = `formulir`.`no_daftar`)) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `formulir`
--
ALTER TABLE `formulir`
  ADD PRIMARY KEY (`no_daftar`),
  ADD KEY `id_periode` (`id_periode`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `periode`
--
ALTER TABLE `periode`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `seleksi`
--
ALTER TABLE `seleksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_periode` (`id_periode`);

--
-- Indeks untuk tabel `seleksi_peserta`
--
ALTER TABLE `seleksi_peserta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_seleksi` (`id_seleksi`),
  ADD KEY `id_formulir` (`id_formulir`);

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
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `seleksi`
--
ALTER TABLE `seleksi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
