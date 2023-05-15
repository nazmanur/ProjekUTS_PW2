-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Bulan Mei 2023 pada 07.29
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpixie`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_produk`
--

CREATE TABLE `kategori_produk` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `kategori_produk`
--

INSERT INTO `kategori_produk` (`id`, `nama`) VALUES
(1, 'bracelet '),
(2, 'ring');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `nama_pemesan` varchar(45) NOT NULL,
  `alamat_pemesan` varchar(45) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `email` varchar(45) NOT NULL,
  `jumlah_pesanan` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `produk_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`id`, `tanggal`, `nama_pemesan`, `alamat_pemesan`, `no_hp`, `email`, `jumlah_pesanan`, `deskripsi`, `produk_id`) VALUES
(1, '2022-10-04', 'azahra nabila', 'gaperi ', '48420510', 'azahra@gmail.com', 1, 'membeli flowers ring', 4),
(2, '2022-09-12', 'jesha nova f', 'pabuaran', '01248252048', 'jeshnf@gmail.com', 4, 'membeli custom cincin', 6),
(4, '2022-05-08', 'putri aditya', 'puri nirwana', '01248574790', 'putriadit12@gmail.com', 6, '', 8),
(5, '2022-02-06', 'riyana septiagus', 'bambukuning', '10838424702', 'riyanasag@gmail.com', 2, '', 6),
(6, '2022-03-03', 'hafidzah', 'jalan baru', '01284247', 'hafidzah111@gmail.com', 5, '', 4),
(7, '2022-02-23', 'sela', 'kincir', '034824899', 'selakim05@gmail.com', 7, '', 3),
(8, '2022-11-11', 'nazma nur z', 'bojonggede', '1293920740', 'nazmanurzahra65132@gmail.com', 2, '', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `harga_beli` double DEFAULT NULL,
  `harga_jual` double DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `min_stok` int(11) DEFAULT NULL,
  `deskripsi` text NOT NULL,
  `kategori_produk_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `kode`, `nama`, `harga_beli`, `harga_jual`, `stok`, `min_stok`, `deskripsi`, `kategori_produk_id`) VALUES
(1, 'br1', 'flowers bracelet', 5000, 11000, 60, 10, 'gelang dengan manik-manik berbentuk bunga', 1),
(2, 'br2', 'shape crystal bracelet ', 7000, 13000, 55, 5, 'gelang dengan manik-manik berbentuk kristal love, lingkaran, abjad huruf ', 1),
(3, 'br3', 'grape bracelet ', 5000, 9000, 50, 5, 'gelang manik-manik dengan manik-manik dibentuk seperti buah anggur', 1),
(4, 'br4', 'custom bracelet', 13000, 16000, 30, 5, 'gelang manik-manik yang bisa di custom sesuai minta pelanggan', 1),
(5, 'rg1', 'flowers ring', 3000, 5000, 70, 5, 'cincin dengan manik-manik berbentuk bunga', 2),
(6, 'rg6', 'shape crystal ring', 5000, 7000, 80, 5, 'cincin dengan manik-manik berbentuk kristal love, lingkaran, abjad huruf, bintang  ', 2),
(7, 'rg7', 'frog ring', 3000, 6000, 55, 5, 'cincin manik-manik dengan berbentuk mata kodok', 2),
(8, 'rg8', 'custom ring', 6000, 8000, 60, 15, 'cincin manik-manik yang bisa di custom sesuai minta pelanggan', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori_produk`
--
ALTER TABLE `kategori_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produk_id` (`produk_id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_UNIQUE` (`kode`),
  ADD KEY `fk_produk_jenis_produk1_idx` (`kategori_produk_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kategori_produk`
--
ALTER TABLE `kategori_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `fk_kategori_produk1` FOREIGN KEY (`kategori_produk_id`) REFERENCES `kategori_produk` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
