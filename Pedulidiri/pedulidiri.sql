-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Jan 2023 pada 03.10
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pedulici`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `catatan`
--

CREATE TABLE `catatan` (
  `idCatatan` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `lokasi` varchar(15) NOT NULL,
  `suhu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `catatan`
--

INSERT INTO `catatan` (`idCatatan`, `tanggal`, `jam`, `lokasi`, `suhu`) VALUES
(1, '2023-01-16', '08:13:00', 'Jakarta', '44'),
(7, '2023-01-05', '09:21:00', 'Jawa', '23'),
(8, '2023-01-05', '09:21:00', 'Jawa', '23'),
(9, '2023-01-05', '09:21:00', 'Jawa', '23'),
(10, '2023-01-12', '08:48:00', 'Jakarta Selatan', '60'),
(11, '2023-01-13', '08:48:00', 'Depok Jakbar', '80');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `idUser` int(11) NOT NULL,
  `nmUser` varchar(100) NOT NULL,
  `nik` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` enum('Aktif','Pasif') NOT NULL DEFAULT 'Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`idUser`, `nmUser`, `nik`, `password`, `status`) VALUES
(1, 'Tasya Ramadhinta', '241004', 'b9c1571b370fd7054a5bf4ca20a1c64411240afe', 'Aktif'),
(2, 'sya', '112233', '12c6fc06c99a462375eeb3f43dfd832b08ca9e17', 'Aktif'),
(3, 'ca', '12131415', '1a9b9508b6003b68ddfe03a9c8cbc4bd4388339b', 'Aktif'),
(4, 'ca', '2813737823', '12c6fc06c99a462375eeb3f43dfd832b08ca9e17', 'Aktif');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `catatan`
--
ALTER TABLE `catatan`
  ADD PRIMARY KEY (`idCatatan`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `catatan`
--
ALTER TABLE `catatan`
  MODIFY `idCatatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
