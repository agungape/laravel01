-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Des 2023 pada 03.33
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `pekerjaan` varchar(255) DEFAULT NULL,
  `kota` varchar(255) DEFAULT NULL,
  `bio_profil` text DEFAULT NULL,
  `gambar_profil` varchar(255) NOT NULL DEFAULT 'default_profile.jpg',
  `background_profil` tinyint(4) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `nama`, `tanggal_lahir`, `pekerjaan`, `kota`, `bio_profil`, `gambar_profil`, `background_profil`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'agungmohammed13@gmail.com', '$2y$10$od620ejFEZofQwnlqYQiPuuSy/lRC4YiRfcSdpjFhfin7xdmllb3q', 'Muh. Agung, S.Kom', '1999-07-13', 'Karyawan Kontrak', 'Konawe', 'saya sedang bekerja di blud rs konawe', 'muh-agung-skom-1699233761.jpg', 2, NULL, NULL, '2023-11-05 17:22:41', '2023-12-05 18:20:26'),
(2, 'arief@gmail.com', '$2y$10$cw2xLmqty76GjEMsrz5ZGeVhAd5l3y2T/8BiquQbmUYvkSr.5zOli', 'arief', '1995-01-20', 'PPPK', 'Konawe', NULL, 'arief-1701651715.png', 3, NULL, NULL, '2023-12-03 17:01:55', '2023-12-05 18:20:33'),
(3, 'rizal@gmail.com', '$2y$10$f8WqGe8PK.vHMnOCyj6pSerHTwhH8.AMQ91zb176TLXLf74Eij7sK', 'rizal', '1994-03-27', 'Kontrak', 'Kendari', 'Compact Media', 'rizal-1701651882.png', 2, NULL, NULL, '2023-12-03 17:04:43', '2023-12-05 18:20:49'),
(4, 'rivaldi@gmail.com', '$2y$10$mLS/a6L.hiAmbPL9Y5BTeuY/JG4SxiP5VejyA5t28qIJdYpsP/axO', 'Rivaldi', '2000-03-21', 'Kontrak', 'Padangguni', NULL, 'rivaldi-1701651973.jpg', 4, NULL, NULL, '2023-12-03 17:06:13', '2023-12-05 18:20:40'),
(8, 'admin@gmail.com', '$2y$10$PmSI4BwkhoJc7jhbbJTnD.nJmpgbS9Hl2TjiTwHgljhOR1kyDAovC', 'admin', '1995-02-11', 'PPPK', 'Kendari', NULL, 'admin-1701659789.jpg', 2, NULL, NULL, '2023-12-03 19:16:29', '2023-12-05 18:23:08'),
(9, 'erni@gmail.com', '$2y$10$gsHNWIRS6TIhj7JG20mZCucsCM5NL442R7.Fonfuf1tbEHYDaRiqi', 'Erni Sulu', '2000-06-23', 'pns', 'Konawe', NULL, 'default_profile.jpg', 4, NULL, NULL, '2023-12-05 18:22:41', '2023-12-05 18:22:41');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
