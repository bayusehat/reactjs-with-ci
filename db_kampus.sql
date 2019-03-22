-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Mar 2019 pada 09.56
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kampus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_detail_mahasiswa`
--

CREATE TABLE `tb_detail_mahasiswa` (
  `id_detail_mahasiswa` int(11) NOT NULL,
  `nama_bapak` varchar(200) NOT NULL,
  `nama_ibu` varchar(200) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_detail_mahasiswa`
--

INSERT INTO `tb_detail_mahasiswa` (`id_detail_mahasiswa`, `nama_bapak`, `nama_ibu`, `id`) VALUES
(1, 'Feri', 'Ayu', 16),
(2, 'Karni', 'Ayu', 17),
(3, 'Joni', 'Ayu', 18),
(4, 'Joni', 'Ayu', 19),
(5, 'Trisno', 'Arini', 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mahasiswa`
--

CREATE TABLE `tb_mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `jurusan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_mahasiswa`
--

INSERT INTO `tb_mahasiswa` (`id`, `nama`, `alamat`, `jurusan`) VALUES
(1, 'Anton', 'Surabaya', 'TI'),
(3, 'Amir', 'Madiun', 'TS'),
(5, 'Dona', 'Majalengka', 'KU'),
(7, 'Ajany', 'Jember', 'TSW'),
(13, 'Doni', 'Situbondo', 'Teknik informatika'),
(14, 'Arya Bayu Ageng Pamungkas', 'Surabay', 'Sistem Informasi'),
(15, 'DoniS', 'Situbondo', 'Teknik informatika'),
(16, 'Lian', 'Kandangan', 'Komputer'),
(17, 'Anji', 'Jakarta', 'Seni Sastra'),
(18, 'Feo', 'Jakarta', 'KKB'),
(19, 'Defri', 'Jakarta', 'KKB'),
(20, 'Jean', 'Situbondo', 'Sistem Informasi'),
(21, 'Arya Bayu Ageng Pamungkas', 'Surabaya', 'Sistem Informasi');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_detail_mahasiswa`
--
ALTER TABLE `tb_detail_mahasiswa`
  ADD PRIMARY KEY (`id_detail_mahasiswa`);

--
-- Indeks untuk tabel `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_detail_mahasiswa`
--
ALTER TABLE `tb_detail_mahasiswa`
  MODIFY `id_detail_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
