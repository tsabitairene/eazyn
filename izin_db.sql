-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Mar 2024 pada 02.26
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
-- Database: `izin_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bk`
--

CREATE TABLE `bk` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `bk`
--

INSERT INTO `bk` (`id`, `nama`, `username`, `password`) VALUES
(1, 'Bangun Parikesit', 'bangun', '12345'),
(2, 'Suharjiyanto', 'yanto', '12345'),
(3, 'Sri Yunianti', 'yuni', '12345');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `mapel` varchar(50) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id`, `nama`, `mapel`, `username`, `password`, `nip`, `foto`) VALUES
(1, 'Eka Nur Ahmad Romadhoni, S.Pd.', 'Kejuruan SIJA', 'ekanur', '12345', '20245445', 'ekanur.jpg'),
(2, 'Drs. H. Suhadi, S.Pd.', 'Kejuruan DPIB', 'hadi', '12345', '20245445', 'hadi.jpg'),
(3, 'Gandung Yustiadi, S.T.', 'Kejuruan GP', 'gandung', '12345', '20245445', 'gandung.jpg'),
(4, 'Surip, S.Pd, M.Pd.', 'Kejuruan KI', 'surip', '12345', '20245445', 'surip.jpg'),
(5, 'Drs. Edi Susilo', 'Kejuruan TFLM', 'edi', '12345', '20245445', 'edi.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `izin`
--

CREATE TABLE `izin` (
  `id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `guru_id` int(11) DEFAULT NULL,
  `bk_id` int(11) DEFAULT NULL,
  `alasan` varchar(200) NOT NULL,
  `kode` int(5) NOT NULL,
  `waktu` varchar(8) NOT NULL,
  `tanggal` datetime NOT NULL DEFAULT current_timestamp(),
  `is_approved` int(11) NOT NULL DEFAULT 0,
  `file_pendukung` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `izin`
--

INSERT INTO `izin` (`id`, `siswa_id`, `guru_id`, `bk_id`, `alasan`, `kode`, `waktu`, `tanggal`, `is_approved`, `file_pendukung`) VALUES
(1, 5, 2, 1, 'Membuat KTP', 0, '5 - 10', '2024-02-16 08:20:57', 2, NULL),
(3, 2, 1, 2, 'Mematikan kompor', 1, '1 - 3', '2024-02-16 08:44:55', 1, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `nama_settings` varchar(20) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `nama_settings`, `value`) VALUES
(1, 'pembatasan', '12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `nis` varchar(6) NOT NULL,
  `jurusan` varchar(5) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `kelas`, `nis`, `jurusan`, `username`, `password`, `foto`) VALUES
(1, 'Yumna Putri', '11', '2001', 'SIJA', 'yumna', '12345', 'yumna.jpg'),
(2, 'Chesya Nur', '11', '2002', 'SIJA', 'chesya', '12345', 'chesya.jpg'),
(3, 'Tsabita Irene', '11', '2003', 'SIJA', 'tsabita', '12345', 'tsabita.jpg'),
(4, 'Thara Bunga', '11', '2004', 'KI', 'thara', '12345', 'thara.jpg'),
(5, 'Faradilla Syifa', '11', '2005', 'DPIB', 'dilla', '12345', 'dilla.jpg'),
(6, 'Hani Newjeans', '11', '2006', 'DPIB', 'hani', '12345', 'hani.jpg'),
(7, 'Jamal Jung', '11', '2007', 'GP', 'jamal', '12345', 'jamal.jpg'),
(8, 'Haikal Pratama', '11', '2008', 'KI', 'haikal', '12345', 'haikal.jpg'),
(9, 'Noah Saputra', '11', '2009', 'GP', 'noah', '12345', 'noah.jpg'),
(10, 'Taka Taki', '11', '2010', 'TFLM', 'taka', '12345', 'taka.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bk`
--
ALTER TABLE `bk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `izin`
--
ALTER TABLE `izin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode` (`kode`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bk`
--
ALTER TABLE `bk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `izin`
--
ALTER TABLE `izin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
