-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jun 2024 pada 18.06
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `master1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(100) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `status` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `kategori`, `status`) VALUES
(1, 'Router', 1),
(2, 'Access Point', 1),
(3, 'Switch', 1),
(4, 'CCTV', 1),
(5, 'UPS', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(100) NOT NULL,
  `id_kategori` int(100) NOT NULL,
  `id_reservasi` int(11) DEFAULT NULL,
  `sn` varchar(100) NOT NULL,
  `tanggal_masuk` date DEFAULT NULL,
  `tanggal_reservasi` date DEFAULT NULL,
  `tanggal_keluar` date DEFAULT NULL,
  `status` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `id_kategori`, `id_reservasi`, `sn`, `tanggal_masuk`, `tanggal_reservasi`, `tanggal_keluar`, `status`) VALUES
(6, 1, 2, 'RT829937393', '2024-04-02', '2024-04-05', '2024-04-05', 4),
(7, 1, 3, 'RT7282933', '2024-04-02', '2024-04-10', '2024-04-10', 4),
(8, 1, 3, 'RT41253748', '2024-04-02', '2024-04-10', '2024-04-10', 4),
(9, 1, NULL, 'RT9365858', '2024-04-02', NULL, NULL, 4),
(10, 1, NULL, 'RT835675829', '2024-04-02', NULL, NULL, 1),
(11, 2, 4, 'AC0001', '2024-04-02', '2024-04-04', '2024-04-04', 4),
(12, 2, 4, 'AC0002', '2024-04-02', '2024-04-04', '2024-04-04', 4),
(13, 2, 4, 'AC99009317', '2024-04-03', '2024-04-04', '2024-04-04', 4),
(14, 2, 4, 'AC65436946', '2024-04-03', '2024-04-04', '2024-04-04', 4),
(15, 2, 4, 'AC19995924', '2024-04-03', '2024-04-04', '2024-04-04', 4),
(16, 2, 4, 'AC74507824', '2024-04-03', '2024-04-04', '2024-04-04', 4),
(17, 2, 4, 'AC17230258', '2024-04-03', '2024-04-04', '2024-04-04', 4),
(18, 2, 4, 'AC51606243', '2024-04-03', '2024-04-04', '2024-04-04', 4),
(19, 2, 4, 'AC73022894', '2024-04-03', '2024-04-04', '2024-04-04', 4),
(20, 2, 4, 'AC86478404', '2024-04-03', '2024-04-04', '2024-04-04', 4),
(21, 2, 4, 'AC62219472', '2024-04-03', '2024-04-04', '2024-04-04', 4),
(22, 2, 4, 'AC83727959', '2024-04-03', '2024-04-04', '2024-04-04', 4),
(23, 2, 5, 'AC48348651', '2024-04-03', '2024-04-12', '2024-04-12', 4),
(24, 2, 5, 'AC84656071', '2024-04-03', '2024-04-12', '2024-04-12', 4),
(25, 2, 5, 'AC86691044', '2024-04-03', '2024-04-12', '2024-04-12', 4),
(26, 2, 5, 'AC5555330', '2024-04-03', '2024-04-12', '2024-04-12', 4),
(27, 2, 5, 'AC60497613', '2024-04-03', '2024-04-12', '2024-04-12', 4),
(28, 2, 5, 'AC31066109', '2024-04-03', '2024-04-12', '2024-04-12', 4),
(29, 2, 5, 'AC98441751', '2024-04-03', '2024-04-12', '2024-04-12', 4),
(30, 2, 5, 'AC27210401', '2024-04-03', '2024-04-12', '2024-04-12', 4),
(31, 2, 6, 'AC88148529', '2024-04-03', '2024-04-20', '2024-04-20', 4),
(32, 2, 6, 'AC71740459', '2024-04-03', '2024-04-20', '2024-04-20', 4),
(33, 2, 6, 'AC93632359', '2024-04-03', '2024-04-20', '2024-04-20', 4),
(34, 2, 6, 'AC59438674', '2024-04-03', '2024-04-20', '2024-04-20', 4),
(35, 2, 6, 'AC6541265', '2024-04-03', '2024-04-20', '2024-04-20', 4),
(36, 2, 6, 'AC88061043', '2024-04-03', '2024-04-20', '2024-04-20', 4),
(37, 2, 6, 'AC52400495', '2024-04-03', '2024-04-20', '2024-04-20', 4),
(38, 2, 6, 'AC38894428', '2024-04-03', '2024-04-20', '2024-04-20', 4),
(39, 2, 6, 'AC38259251', '2024-04-03', '2024-04-20', '2024-04-20', 4),
(40, 2, 6, 'AC42765061', '2024-04-03', '2024-04-20', '2024-04-20', 4),
(41, 2, NULL, 'AC15876344', '2024-04-03', NULL, NULL, 1),
(42, 2, NULL, 'AC14664915', '2024-04-03', NULL, NULL, 1),
(43, 3, 4, 'SW0001', '2024-04-03', '2024-04-04', '2024-04-04', 4),
(44, 3, 4, 'SW0002', '2024-04-03', '2024-04-04', '2024-04-04', 4),
(45, 3, 7, 'SW0003', '2024-04-03', '2024-04-12', '2024-04-12', 4),
(46, 3, 7, 'SW0004', '2024-04-03', '2024-04-12', '2024-04-12', 4),
(47, 3, 7, 'SW0005', '2024-04-03', '2024-04-12', '2024-04-12', 4),
(48, 3, 8, 'SW0006', '2024-04-03', '2024-04-20', '2024-04-20', 4),
(49, 3, 8, 'SW0007', '2024-04-03', '2024-04-20', '2024-04-20', 4),
(50, 3, 8, 'SW0008', '2024-04-03', '2024-04-20', '2024-04-20', 4),
(51, 3, 8, 'SW0009', '2024-04-03', '2024-04-20', '2024-04-20', 4),
(52, 3, 8, 'SW0010', '2024-04-03', '2024-04-20', '2024-04-20', 4),
(53, 3, 9, 'SW0011', '2024-04-03', '2024-04-28', '2024-04-28', 4),
(54, 4, 10, 'CC0001', '2024-04-03', '2024-04-07', '2024-04-07', 4),
(55, 4, 10, 'CC0002', '2024-04-03', '2024-04-07', '2024-04-07', 4),
(56, 4, 10, 'CC0003', '2024-04-03', '2024-04-07', '2024-04-07', 4),
(57, 4, 11, 'CC0004', '2024-04-03', '2024-04-14', '2024-04-14', 4),
(58, 4, 11, 'CC0005', '2024-04-03', '2024-04-14', '2024-04-14', 4),
(59, 4, 11, 'CC0006', '2024-04-03', '2024-04-14', '2024-04-14', 4),
(60, 4, 11, 'CC0007', '2024-04-03', '2024-04-14', '2024-04-14', 4),
(61, 4, 11, 'CC0008', '2024-04-03', '2024-04-14', '2024-04-14', 4),
(62, 4, 12, 'CC0009', '2024-04-03', '2024-04-19', '2024-04-19', 4),
(63, 4, 12, 'CC0010', '2024-04-03', '2024-04-19', '2024-04-19', 4),
(64, 4, 13, 'CC0011', '2024-04-03', '2024-04-27', '2024-04-27', 4),
(65, 4, 13, 'CC0012', '2024-04-03', '2024-04-27', '2024-04-27', 4),
(66, 4, 13, 'CC0013', '2024-04-03', '2024-04-27', '2024-04-27', 4),
(67, 4, 13, 'CC0014', '2024-04-03', '2024-04-27', '2024-04-27', 4),
(68, 4, 13, 'CC0015', '2024-04-03', '2024-04-27', '2024-04-27', 4),
(69, 4, 13, 'CC0016', '2024-04-03', '2024-04-27', '2024-04-27', 4),
(70, 4, 13, 'CC0017', '2024-04-03', '2024-04-27', '2024-04-27', 4),
(71, 4, 13, 'CC0018', '2024-04-03', '2024-04-27', '2024-04-27', 4),
(72, 4, NULL, 'CC0019', '2024-04-03', NULL, NULL, 1),
(73, 5, 10, 'UP003', '2024-04-03', '2024-04-07', '2024-04-07', 4),
(74, 5, 10, 'UP004', '2024-04-03', '2024-04-07', '2024-04-07', 4),
(75, 5, NULL, 'UP005', '2024-04-03', NULL, NULL, 1),
(76, 2, NULL, 'AC0002', '2024-04-02', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `reservasi`
--

CREATE TABLE `reservasi` (
  `id` int(100) NOT NULL,
  `no_reservasi` varchar(100) NOT NULL,
  `id_user` int(100) NOT NULL,
  `nama_user` varchar(200) NOT NULL,
  `alamat` text NOT NULL,
  `tanggal_reservasi` date NOT NULL,
  `tanggal_approve` date DEFAULT NULL,
  `status` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `reservasi`
--

INSERT INTO `reservasi` (`id`, `no_reservasi`, `id_user`, `nama_user`, `alamat`, `tanggal_reservasi`, `tanggal_approve`, `status`) VALUES
(1, 'ICON+/2024/001', 19, 'Juna', 'Jalan Buntan no 17', '2024-05-02', '2024-05-02', 3),
(2, 'ICON+/2024/002', 19, 'Mahmud', 'Jalan Pulau Bungin no 1', '2024-05-13', '2024-05-13', 3),
(3, 'ICON+/2024/003', 19, 'Beni', 'Jalan Barito no 19', '2024-04-04', '2024-04-04', 3),
(4, 'ICON+/2024/004', 19, 'Roni', 'Jalan Sulawesi gang 2 no 1', '2024-04-12', '2024-04-12', 3),
(5, 'ICON+/2024/005', 19, 'Arya', 'Jalan Mandalawangi no 16', '2024-04-20', '2024-04-20', 3),
(6, 'ICON+/2024/006', 19, 'Krisna', 'Jalan Tukad yeh Aya no 7', '2024-04-12', '2024-04-12', 3),
(7, 'ICON+/2024/007', 19, 'Nanda', 'Jalan Batanghari 2 no 267', '2024-04-20', '2024-04-20', 3),
(8, 'ICON+/2024/008', 19, 'Dade', 'Jalan Panjer no 10', '2024-04-28', '2024-04-28', 3),
(9, 'ICON+/2024/009', 19, 'Zaa', 'Banjar Sudirman no 2', '2024-04-07', '2024-04-07', 3),
(10, 'ICON+/2024/010', 19, 'Adi', 'Jalan Gatotkaca no 49', '2024-04-14', '2024-04-14', 3),
(11, 'ICON+/2024/011', 19, 'Oki', 'Jalan Nangka no 8', '2024-04-19', '2024-04-19', 3),
(12, 'ICON+/2024/012', 19, 'Fajar', 'Jalan Supratman no 1', '2024-04-27', '2024-04-27', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `no_hp` varchar(100) NOT NULL,
  `image` int(225) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `no_hp`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(14, 'Paulus', 'paulus@gmail.com', '', 0, '$2y$10$do8TYF/JXY.hbi7Go7iwMuF04zy.t2GVWBH3ElLdWc.9k3EqSyBtq', 2, 1, 1709711271),
(16, 'Yoga Mahaputra', 'yogamahaputra@gmail.com', '', 0, '$2y$10$1P7Ya3IDxmjFhJWfR/DYb.S44PCunje.rDqsmc4vqIvi5YaFQC6pK', 1, 1, 1711419662),
(18, 'superadmin', 'superadmin@gmail.com', '+6282247973374', 0, '$2a$12$5UfB.QkFsHnOc3JW5KkaDexxfTkZ/H6ZZyPVdoF4RDnF7EnvzsjWa', 1, 1, 1711419662),
(19, 'aktivasi', 'aktivasi@gmail.com', '+62895365928591', 0, '$2a$12$2NlaAoWVbLTxvRbp1OlcW.DV82nM6hQrkoA1foOIRgS.2wj3E2XFC', 2, 1, 0),
(20, 'gudang', 'gudang@gmail.com', '0895365928591', 0, '$2a$12$w9g5pMsoKTjkE31m1BV7ae45orRnj86rZnrbNwY9C76NXesVfptLe', 3, 1, 0),
(36, 'ngurah', 'ngurah@gmail.com', '81672826727872', 0, '$2y$10$lctuAw5tRMq1g9nfnqY3ae2iiS8..BDTK94t5/0sNRQw1FXBFpdvO', 2, 2, 2147483647),
(37, 'natha1', 'natha@gmail.com', '815637367281', 0, '$2y$10$gKjQv062gRTcBh/vu76ROOORrmK4zXPelW0Os7MrLtf/B8SE5NrW6', 2, 1, 2147483647);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(9, 1, 3),
(10, 1, 4),
(11, 1, 5),
(12, 1, 6),
(13, 1, 7),
(14, 1, 8),
(15, 1, 9),
(16, 2, 3),
(20, 2, 10),
(21, 2, 8),
(22, 3, 3),
(23, 3, 4),
(24, 3, 5),
(25, 3, 6),
(26, 3, 11),
(27, 3, 8),
(32, 3, 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Superadmin'),
(2, 'Admin'),
(3, 'backoffice'),
(4, 'ptl');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `reservasi`
--
ALTER TABLE `reservasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT untuk tabel `reservasi`
--
ALTER TABLE `reservasi`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
