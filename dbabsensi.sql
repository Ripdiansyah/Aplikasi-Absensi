-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 19 Jan 2017 pada 04.58
-- Versi Server: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbabsensi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `user` varchar(26) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`user`, `password`) VALUES
('riki', 'rikinn'),
('admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_absen`
--

CREATE TABLE `detail_absen` (
  `id_absen` int(11) NOT NULL,
  `id_pegawai` varchar(18) NOT NULL,
  `jam` time NOT NULL,
  `jam_keluar` time DEFAULT NULL,
  `keterangan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='detail_absen';

--
-- Dumping data untuk tabel `detail_absen`
--

INSERT INTO `detail_absen` (`id_absen`, `id_pegawai`, `jam`, `jam_keluar`, `keterangan`) VALUES
(1, '198503302003121001', '02:09:10', NULL, ''),
(1, '199609029612345678', '02:17:34', NULL, ''),
(1, '199652684795648124', '04:06:30', NULL, ''),
(1, '196505081546982145', '08:33:18', NULL, ''),
(1, '196505081997019364', '08:34:56', NULL, ''),
(1, '196505081997015498', '08:35:13', NULL, ''),
(1, '196505081997015936', '08:35:27', NULL, ''),
(1, '196505081997110038', '08:35:58', NULL, ''),
(1, '196505081997012964', '08:36:18', NULL, ''),
(2, '196505081546982145', '13:41:26', NULL, ''),
(3, '196006071990032001', '19:56:10', NULL, ''),
(3, '196006071990032001', '20:24:11', NULL, ''),
(3, '196505081997019364', '20:24:47', NULL, ''),
(3, '196505081997019364', '20:25:04', NULL, ''),
(3, '196505081997015936', '21:31:56', NULL, ''),
(3, '196307141986031012', '22:16:24', NULL, ''),
(3, '196006071990032001', '22:56:15', NULL, ''),
(4, '3205370902960003', '09:51:08', NULL, ''),
(4, '3205370902960001', '11:06:13', NULL, ''),
(4, '196006071990032001', '12:35:46', '18:00:23', ''),
(4, '196006071990032001', '17:48:35', '18:00:23', ''),
(5, '196006071990032001', '17:11:37', '17:26:32', 'Hadir'),
(5, '196006071990032001', '17:16:35', '17:26:32', 'Hadir'),
(5, '196006071990032001', '17:26:09', '17:26:32', 'Dinas Luar'),
(5, '196505081997019364', '19:10:57', '19:11:19', 'Sakit'),
(5, '3205370902960005', '22:08:52', '22:08:58', 'Hadir'),
(6, '3205370303950001', '06:45:01', '06:45:06', 'Hadir'),
(6, '196006071990032001', '09:55:54', '09:58:20', 'Hadir'),
(6, '3205370902960005', '09:57:50', '09:59:46', 'Hadir'),
(6, '3205371112670004', '10:09:55', '10:09:58', 'Sakit'),
(6, '196404201987031009', '10:13:25', '10:13:32', 'Hadir'),
(7, '196006071990032001', '22:14:58', '23:43:47', 'Hadir'),
(7, '3205371112670004', '22:49:31', NULL, 'Dinas Luar'),
(7, '3205370902960005', '23:23:11', '23:44:05', 'Hadir'),
(7, '196006071990032001', '23:42:44', '23:43:47', 'Hadir'),
(7, '3205370902960005', '23:43:09', '23:44:05', 'Hadir'),
(7, '196006071990032001', '23:48:24', NULL, 'Ijin'),
(7, '3205370902960005', '23:48:50', NULL, 'Dinas Luar'),
(8, '3205370203890006', '13:31:56', '13:32:09', 'Hadir'),
(8, '196006071990032001', '13:50:47', '13:51:04', 'Hadir'),
(9, '3205370908760002', '19:11:12', '19:11:39', 'Hadir'),
(9, '3205370908760002', '19:11:32', '19:11:39', 'Dinas Luar'),
(10, '196006071990032001', '12:10:52', NULL, 'Hadir'),
(10, '3205370902960005', '12:11:52', '15:57:18', 'Hadir'),
(10, '3205370902960005', '15:57:13', '15:57:18', 'Hadir'),
(11, '196006071990032001', '13:16:05', '19:21:22', 'Hadir'),
(11, '196505081997019364', '13:16:17', '19:21:36', 'Hadir'),
(11, '196404201987031009', '13:16:29', '19:21:49', 'Hadir'),
(11, '3205370303950001', '13:16:43', '19:22:06', 'Hadir'),
(11, '3205370902960005', '13:16:57', '19:22:18', 'Hadir'),
(11, '3205370506660003', '13:17:12', '19:22:29', 'Hadir'),
(11, '198306112014102002', '13:17:30', '19:22:40', 'Hadir'),
(11, '987654376543786543', '13:17:44', '19:22:51', 'Hadir'),
(12, '3205370808880001', '09:11:54', '09:12:11', 'Hadir'),
(12, '3205370902960005', '12:00:47', '12:00:51', 'Hadir'),
(14, '3205371409890005', '17:16:16', '17:16:49', 'Hadir'),
(14, '196505081997019364', '18:12:00', '18:12:07', 'Hadir'),
(15, '320537421212950002', '08:47:45', '08:47:50', 'Hadir'),
(15, '3205370902960005', '08:48:44', '08:48:48', 'Sakit'),
(15, '196006071990032001', '08:58:40', '08:58:48', 'Ijin'),
(15, '196404201987031009', '09:00:55', '09:00:59', 'Hadir'),
(15, '3205370506660003', '09:01:31', '09:01:34', 'Tanpa Keterangan'),
(15, '987654376543786543', '09:02:57', '09:03:02', 'Dinas Luar'),
(16, '3205374501950001', '13:17:31', '13:20:46', 'Hadir'),
(16, '196404201987031009', '13:18:37', '13:20:20', 'Hadir'),
(16, '3205370303950001', '13:18:51', '13:19:59', 'Hadir'),
(16, '3205370506660003', '13:22:21', '13:22:24', 'Ijin'),
(16, '987654376543786543', '13:23:04', '13:23:06', 'Dinas Luar'),
(17, '3205370706890005', '23:20:14', '23:20:18', 'Hadir'),
(17, '196006071990032001', '23:20:53', '23:20:56', 'Dinas Luar'),
(17, '196505081997019364', '23:21:12', '23:21:15', 'Tanpa Keterangan'),
(17, '3205370303950001', '23:21:28', '23:21:31', 'Ijin'),
(17, '3205370902960005', '23:21:47', '23:21:50', 'Hadir'),
(18, '3205370202780005', '13:12:44', '13:12:48', 'Hadir'),
(18, '3205370303950001', '13:13:19', '13:13:21', 'Ijin'),
(18, '3205370506660003', '13:13:38', '13:13:41', 'Dinas Luar'),
(18, '987654376543786543', '13:13:59', '13:14:02', 'Tanpa Keterangan'),
(18, '3205370902960003', '13:14:29', '13:14:31', 'Dinas Luar'),
(18, '196307141986031012', '13:14:51', '13:14:53', 'Hadir'),
(19, '3205370705870009', '22:58:59', '22:59:04', 'Hadir'),
(19, '320537421212950002', '22:59:39', '22:59:42', 'Dinas Luar'),
(20, '3205370604780001', '13:07:43', '13:07:46', 'Hadir'),
(20, '3205370303950001', '13:25:12', '13:25:15', 'Ijin'),
(20, '3205370506660003', '13:25:32', '13:25:37', 'Dinas Luar'),
(20, '67975346789865544', '13:25:57', '13:26:03', 'Tanpa Keterangan'),
(20, '198306112014102002', '13:26:27', '13:26:29', 'Ijin'),
(20, '197009252007011008', '13:26:46', '13:26:49', 'Hadir'),
(20, '197309292014101001', '13:27:01', '13:27:04', 'Hadir'),
(20, '3205370902960005', '14:52:37', '14:52:41', 'Dinas Luar'),
(21, '3205371504890006', '19:17:17', '19:17:22', 'Hadir'),
(21, '196505081997019364', '19:17:47', '19:17:50', 'Hadir'),
(21, '3205370303950001', '19:18:12', '19:18:16', 'Dinas Luar'),
(21, '3205370902960005', '19:18:30', '19:18:33', 'Tanpa Keterangan'),
(22, '3205370605950001', '08:48:07', '08:48:25', 'Hadir'),
(22, '3205370902960005', '08:49:06', '08:49:08', 'Dinas Luar'),
(22, '198306112014102002', '08:49:23', '08:49:25', 'Ijin'),
(22, '67975346789865544', '14:18:14', '14:18:18', 'Hadir'),
(22, '196307141986031012', '14:18:44', '14:18:46', 'Dinas Luar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `head_absen`
--

CREATE TABLE `head_absen` (
  `id_absen` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `head_absen`
--

INSERT INTO `head_absen` (`id_absen`, `tanggal`) VALUES
(3, '2016-10-27'),
(4, '2016-10-28'),
(5, '2016-11-10'),
(6, '2016-11-11'),
(7, '2016-11-17'),
(8, '2016-11-18'),
(9, '2016-11-22'),
(10, '2016-11-23'),
(11, '2016-11-27'),
(12, '2016-11-28'),
(13, '2016-11-29'),
(14, '2016-12-01'),
(15, '2016-12-02'),
(16, '2016-12-03'),
(17, '2016-12-08'),
(18, '2016-12-09'),
(19, '2016-12-15'),
(20, '2016-12-16'),
(21, '2017-01-05'),
(22, '2017-01-06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(20) NOT NULL,
  `jabatan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `jabatan`) VALUES
(1, 'camat'),
(2, 'sekertaris'),
(3, 'kasi_kesra'),
(4, 'subag_keuangan'),
(5, 'subag_umum'),
(6, 'JFU'),
(7, 'pengr.barang'),
(8, 'pengy.barang'),
(9, 'kasi pemerintahan'),
(10, 'bendahara'),
(11, 'kasi pmd'),
(12, 'kasi trantib');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jk`
--

CREATE TABLE `jk` (
  `id_tidakmasuk` varchar(4) NOT NULL,
  `keterangan` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jk`
--

INSERT INTO `jk` (`id_tidakmasuk`, `keterangan`) VALUES
('A', 'Ijin'),
('B', 'Sakit'),
('C', 'Dinas_luar'),
('D', 'Tanpa_ket');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` varchar(18) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jabatan` varchar(25) NOT NULL,
  `id_jam_kerja` varchar(75) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama`, `jabatan`, `id_jam_kerja`) VALUES
('196006071990032001', 'Alis', 'sekertaris', 'PNS'),
('196505081997019364', 'Aang Koswara', 'subag_perencanaan', 'TKK'),
('196404201987031009', 'Caca Rifai', 'camat', 'PNS'),
('3205370303950001', 'Majrus SA', 'pengr.barang', 'TKS'),
('3205370902960005', 'Eden Ramdan', 'subag_umum', 'TKS'),
('3205370506660003', 'Rosita Sati', 'subag_umum', 'TKK'),
('198306112014102002', 'Enung Khusufmawati', 'pengr.barang', 'PNS'),
('987654376543786543', 'Herman', 'kasi_kesra', 'TKK'),
('67975346789865544', 'Yaya', 'kasi_kesra', 'TKS'),
('3205370902960003', 'Cucu Hermawan', 'subag_umum', 'TKK'),
('196307141986031012', 'Asep Heri', 'kasi_kesra', 'PNS'),
('197009252007011008', 'Hilman Supriadi', 'subag_keuangan', 'PNS'),
('197309292014101001', 'Dedi Sugianto', 'JFU', 'PNS'),
('196808022010011001', 'Dandi Iskandar', 'JFU', 'PNS'),
('197212272009061004', 'Asep Sugiharto', 'JFU', 'PNS'),
('197108142009061002', 'Agus Hermawan', 'JFU', 'PNS'),
('197308102010011010', 'Mulyadin', 'JFU', 'PNS'),
('197204102010011008', 'Kusmana', 'JFU', 'PNS'),
('19730782008011008', 'Sobar SA', 'subag_umum', 'PNS'),
('3205371112670004', 'Raji Kartiwa', 'subag_umum', 'TKK'),
('3205374312780001', 'Lilis', 'JFU', 'TKS'),
('3205370809890002', 'Ade Herlambang', 'kasi pmd', 'TKS'),
('3205370203890006', 'Aditia', 'subag_umum', 'TKK'),
('3205370908760002', 'Abah Eggi', 'subag_keuangan', 'PNS'),
('3205370808880001', 'Agus', 'kasi pmd', 'TKK'),
('3205371409890005', 'Ajidin', 'JFU', 'TKK'),
('3205374501950001', 'Ahmad Rifaldi', 'subag_keuangan', 'PNS'),
('320537421212950002', 'Yayan S.Pd', 'subag_umum', 'TKK'),
('3205370706890005', 'Tata Yuda', 'JFU', 'TKS'),
('3205370202780005', 'Sugiono', 'JFU', 'TKS'),
('3205370705870009', 'Wardana', 'subag_umum', 'PNS'),
('3205370604780001', 'Devi', 'subag_umum', 'TKK'),
('3205370809980004', 'Edwar', 'pengr.barang', 'TKK'),
('3205371504890006', 'Sulaiman', 'pengr.barang', 'TKK'),
('3205370605950001', 'Yadi', 'kasi trantib', 'TKS'),
('3205370902960007', 'Yusupo', 'subag_umum', 'TKK'),
('3205370902960008', 'Eden Ramzi', 'subag_umum', 'TKK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `head_absen`
--
ALTER TABLE `head_absen`
  ADD PRIMARY KEY (`id_absen`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `jk`
--
ALTER TABLE `jk`
  ADD PRIMARY KEY (`id_tidakmasuk`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `head_absen`
--
ALTER TABLE `head_absen`
  MODIFY `id_absen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
