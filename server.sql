-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 20 Mar 2023 pada 01.12
-- Versi Server: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `server`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_detail_transaksi` int(11) NOT NULL,
  `id_transaksi` int(11) DEFAULT NULL,
  `id_menu` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id_detail_transaksi`, `id_transaksi`, `id_menu`, `harga`, `jumlah`) VALUES
(17, 9, 2, 70000, 2),
(18, 9, 7, 40000, 2),
(19, 9, 3, 50000, 1),
(20, 9, 6, 15000, 1),
(21, 10, 2, 140000, 2),
(22, 10, 5, 50000, 2),
(23, 11, 4, 70000, 1),
(24, 12, 10, 70000, 2),
(25, 12, 1, 45000, 1),
(26, 12, 5, 25000, 1),
(27, 12, 7, 20000, 1),
(28, 13, 3, 150000, 3),
(29, 14, 10, 105000, 3),
(30, 14, 2, 70000, 1),
(31, 10, 3, 50000, 1),
(33, 16, 10, 35000, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `meja`
--

CREATE TABLE `meja` (
  `id_meja` int(11) NOT NULL,
  `nomor_meja` varchar(100) DEFAULT NULL,
  `status` enum('kosong','terisi') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `meja`
--

INSERT INTO `meja` (`id_meja`, `nomor_meja`, `status`) VALUES
(1, '1', 'terisi'),
(2, '2', 'terisi'),
(3, '3', 'kosong'),
(4, '4', 'kosong'),
(5, '5', 'kosong'),
(6, '6', 'terisi'),
(7, '7', 'terisi'),
(8, '8', 'kosong'),
(9, '9', 'kosong'),
(10, '10', 'kosong');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `nama_menu` varchar(100) DEFAULT NULL,
  `jenis` enum('makanan','minuman') DEFAULT NULL,
  `deskripsi` text,
  `gambar` varchar(255) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id_menu`, `nama_menu`, `jenis`, `deskripsi`, `gambar`, `harga`) VALUES
(1, 'Bak Chor Mee', 'makanan', 'Bak Chor Mee adalah makanan tradisional Singapore. Bak Chor Mee secara literal berarti mie dan daging cincang. Semangkok Bak Chor Mee biasanya disajikan dalam rendaman kuah kaldu hangat bersama minced pork dan mee pok atau mee kia.', 'img-1678771935287.jpg', 45000),
(2, 'Sausages ', 'makanan', 'Sausage siap-siap dibikin kenyang dengan beragam pilihan sosis yang terbuat dari beef, chicken, dan pork. Rasanya sangat rich, juicy dan superb banget. Side dish yang disediakan pun juga nggak kalah enak. Creamy Spinach jadi side dish yang sangat recommended.', 'img-1678019917489.jpg', 70000),
(3, 'Ramen ', 'makanan', 'Zenbu Ramen yang isinya lengkap banget. Dengan Rp.50.000, kamu akan mendapatkan telur, pork belly slice, dan daging pork yang ada minyaknya di semangkuk Ramenmu.  ', 'img-1678020015057.jpg', 50000),
(4, 'Korean BBQ', 'makanan', 'Beef short rib boneless di menu ini dimarinasi dengan saus yang rasanya fantastis abis. Empuk dan juicynya bener-bener bikin terlena. ', 'img-1678020086317.jpg', 70000),
(5, 'Es Leci Jelly', 'minuman', 'Minuman segar dengan aroma dan rasa dari buah leci yang menggoda.', 'img-1678020311862.jpg', 25000),
(6, 'Es Jagung Jelly', 'minuman', 'Es jagung dengan jagung alami yang diolah menjadi minuman yang siap saji dengan rasa yang tidak kalah enak', 'img-1678020379302.jpg', 15000),
(7, 'Es Kuwut', 'minuman', 'Es Kuwut adalah jenis es segar yang banyak diminati oleh masyarakat karena terkenal dengan rasa yang manis', 'img-1678020499723.jpg', 20000),
(10, 'Croissant', 'makanan', 'Croissant merupakan makanan internasional paling enak dari Perancis. Pastry atau kue kering ini memiliki bentuk menyerupai bulan sabit dengan rasa yang gurih dan renyah.', 'img-1678775212892.jpg', 35000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20230131221223-create-user.js'),
('20230131221338-create-meja.js'),
('20230131221450-create-menu.js'),
('20230131221607-create-transaksi.js'),
('20230131221710-create-detail-transaksi.js');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `tgl_transaksi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_user` int(11) DEFAULT NULL,
  `id_meja` int(11) DEFAULT NULL,
  `nama_pelanggan` varchar(100) DEFAULT NULL,
  `status` enum('belum_bayar','lunas') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `tgl_transaksi`, `id_user`, `id_meja`, `nama_pelanggan`, `status`) VALUES
(9, '2023-03-14 11:39:30', 2, 1, 'Alexandria ', 'lunas'),
(10, '2023-03-14 11:42:02', 2, 2, 'Agnes', 'belum_bayar'),
(11, '2023-03-14 11:42:32', 2, 3, 'Agatha', 'lunas'),
(12, '2023-03-14 11:48:43', 4, 4, 'Alice', 'lunas'),
(13, '2023-03-15 08:06:52', 4, 6, 'Angelina', 'belum_bayar'),
(14, '2023-03-15 08:08:50', 5, 7, 'Aurora', 'belum_bayar'),
(16, '2023-03-16 13:03:39', 2, 1, 'Alden', 'belum_bayar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(100) DEFAULT NULL,
  `role` enum('admin','kasir','manajer') DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `role`, `username`, `password`) VALUES
(1, 'admin@admin', 'admin', 'admin@admin', '$2b$10$9O47NGrYLyxk6yzWOJ.ne.O4WTV8t7F/5VBHphKCmdBdjq8RrQSOG'),
(2, 'kasir@kasir', 'kasir', 'kasir@kasir', '$2b$10$CVQZpUXhgZa2CX85Y79YqeA6vYOabfTvUGIoiKkyLxOJqKiNIPHWy'),
(3, 'manajer@manajer', 'manajer', 'manajer@manajer', '$2b$10$jgFSUUwREjM2VNKobYX8Eeoqf1EqB31KdgJukaUxh/RtiqLcweSuW'),
(4, 'neilsya@mail', 'kasir', 'neilsya@mail', '$2b$10$6EFY5mMRqJT5IzzZ82GR4.POhH.9yB9WO.IuxmkWKuK.hAyoex5pu'),
(5, 'anastasia@mail', 'kasir', 'anastasia@mail', '$2b$10$XTdxKDsTH9jcUeRtWOVfbe4yKgTjEg3ydp96JoX0XRM2Ev.edGMsy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id_detail_transaksi`),
  ADD KEY `id_transaksi` (`id_transaksi`),
  ADD KEY `id_menu` (`id_menu`);

--
-- Indexes for table `meja`
--
ALTER TABLE `meja`
  ADD PRIMARY KEY (`id_meja`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_meja` (`id_meja`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_detail_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `meja`
--
ALTER TABLE `meja`
  MODIFY `id_meja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD CONSTRAINT `detail_transaksi_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`),
  ADD CONSTRAINT `detail_transaksi_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`);

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_meja`) REFERENCES `meja` (`id_meja`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
