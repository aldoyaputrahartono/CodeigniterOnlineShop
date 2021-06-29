-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2021 at 08:05 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(100) NOT NULL,
  `keterangan` varchar(1000) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(1, 'Doom : Eternal', 'Rip and tear!! Bantai iblis-iblis dari neraka di instalasi terbaru serian DOOM dari Bethesda. Rasakan pengalaman first person combat dan temukan asal usul dari sang slayer legendaris.', 'Action', 700000, 150, 'Doom_Eternal.jpg'),
(2, 'Resident Evil 6', 'Chris, Leon, Jake, dan Ada Wong. Mainkan 4 campaign berbeda dari protagonis-protagonis Resident Evil. Lawan zombie-zombie sendiri, dengan teman, ataupun online dalam Resident Evil 6. ', 'Action', 280000, 100, 'resident_evil_6.png'),
(3, 'Call of Duty : Black Ops - Cold War', 'Mainkan campaign dengan tema perang dingin, rasakan online multiplayer, dan bergabunglah dalam komunitas Call of Duty. Game yang sangat solid dengan gunplay dan aksi yang tidak akan mengecewakan.', 'Action', 700000, 200, 'Call_of_Duty.jpg'),
(4, 'Sekiro : Shadows Die Twice', 'Game of the year 2019. Jadilah Sekiro, seorang shinobi yang memiliki berbagai kemampuan dan alat-alat ninja dan selamatkan Kuro. Nasib Kuro dan seluruh Ashina ada ditanganmu.', 'Action', 700000, 50, 'Sekiro_Shadows_Die_Twice.png'),
(5, 'Metal Gear Solid V : The Phantom Pain', '9 tahun telah berlalu sejak jatuhnya MSF. Anda adalah \"Big Boss\", seorang prajurit legendaris sepanjang masa, yang baru bangun dari koma. Klaim kembali kejayaan masa lalu dan balaskan dendam mu. ', 'Action', 235000, 150, 'Metal_Gear_Solid_V.png'),
(6, 'Minecraft : Windows Edition', 'Minecraft adalah game sandbox yang dibuat oleh Studio Mojang. Bangun berbagai hal, ekspresikan kreativitasmu dan mulailah bermain Minecraft!', 'Adventure', 340000, 200, 'Minecraft.png'),
(7, 'Terarria', 'Dunia ada didalam genggamanmu! Gali, Jelajahi, Bangun, dunia sesuai keinginanmu. Hal-hal misterius dan menarik apa yang akan kamu temukan dalam penjelajahanmu?', 'Adventure', 95000, 100, 'Terraria.jpg'),
(8, 'Night in the woods', 'Setelah Dropout dari universitas, Mae Borowski kembali ke Possum Springs untuk melanjutkan kehidupan lamanya. Ia ingin mengenal kembali teman-teman lamanya namun mereka sudah tumbuh dan berubah. Daun-daun berjatuhan dan angin berembus dingin. Hal-hal aneh mulai terjadi tatkala lampu-lampu mulai redup. Ada sesuatu didalam pepohonan.', 'Adventure', 69000, 50, 'Night_in_the_Woods.jpg'),
(9, 'Sea of Thieves', 'Y\'arr!! Jadilah bajak laut dalam Sea of Thieves. Mulai dari berlayar, berkelahi, hingga eksplorasi dan menjarah. Buat legenda baru, legendamu!', 'Adventure', 170000, 100, 'Sea_of_Thieves.jpg'),
(10, 'The Forest', 'Sebagai satu-satunya orang yang selamat dari kecelakaan pesawat, Anda terdampar dalam sebuah hutan yang misterius. Lawanlah kaum kanibal, bangunlah rumah, jelajahi hutan dan bertahan hidup dalam game The Forest!', 'Adventure', 110000, 100, 'The_Forest.jpg'),
(11, 'eFootball PES 2021', 'Rayakan ulang tahun ke-25 PES dengan bermain PES 2021!', 'Sports', 240000, 50, 'eFootball_PES_2021.jpg'),
(12, 'FIFA 21', 'Sepakbola kembali dengan FIFA 21. Dengan pemain dan tim yang lebih banyak, menangkan pertandingan bersama teman!', 'Sports', 850000, 30, 'FIFA_21.jpg'),
(13, 'NBA 2K21', 'Memberikan pengalaman bermain game sport terbaik dalam industri, mainkan NBA 2K21, game terbaru dalam franchise NBA 2K.', 'Sports', 700000, 40, 'NBA_2K21.jpg'),
(14, 'Madden NFL 21', 'Dikemas dengan fitur-fitur baru dan gameplay yang inovatif, Madden NFL 21 memberikan kontrol dan kreativitas didalam dan diluar lapangan.', 'Sports', 850000, 25, 'Madden_NFL_21.png'),
(15, 'Rocket League', 'Pernah bermain sepakbola? Ingin bermain sepakbola menggunakan mobil? Rocket League hadir sebagai angin segar dalam genre sports games dengan pendekatan kreatif bermain sepakbola dengan mobil. Jadilah pesepakbola/pengendara terbaik dilapangan!', 'Sports', 120000, 50, 'Rocket_League.jpg'),
(16, 'Undertale', 'Game indie yang mengantongi berbagai penghargaaan, UNDERTALE! Kamu adalah seorang manusia yang jatuh ke dunia para monster. Cari jalan keluar... atau terperangkap selamanya.', 'Role Playing Game', 90000, 40, 'Undertale.png'),
(17, 'Omori', 'Jelajahi dunia yang unik dan penuh lawan dan kawan yang berwarna. Saat waktunya telah tiba, jalan yang Anda pilih akan menentukan nasibmu... dan mungkin nasib orang lain juga.', 'Role Playing Game', 109000, 500, 'Omori.jpg'),
(18, 'The Elder Scrolls 5 : Skyrim', 'FUS RO DAH! Jadilah Dragonborn dan selamatkan Skyrim dari teror Naga Alduin.', 'Role Playing Game', 532000, 100, 'The_Elder_Scrolls_5_Skyrim.jpg'),
(19, 'Monster Hunter World', 'Game terbesar dalam franchise Monster Hunter. Buru monster, upgrade peralatanmu dan rasakan pengalaman bermain baik sendiri maupun dengan teman dalam Monster Hunter World!', 'Role Playing Game', 335000, 10, 'Monster_Hunter_World.jpeg'),
(20, 'Darkest Dungeon', 'Darkest Dungeon adalah gothic roguelike turn-based RPG dengan tema cosmic horror dan stres psikologis dalam berpetualang. Rekrut, latih, dan pimpin tim pahlawan-pahlawan dalam melawan berbagai hal yang mengawasi dari kegelapan. Apakah Anda dapat menjaga pahlawan-pahlawan anda ketika seluruh harapan tampak sirna?', 'Role Playing Game', 170000, 69, 'Darkest_Dungeon.jpg'),
(21, 'Need for Speed Heat Deluxe Edition', 'Rasakan pengalaman balapan yang mendebarkan melawan pasukan polisi kota saat Anda berjuang untuk menjadi street racing elite.', 'Racing Game', 1100000, 5, 'Need_for_Speed_Heat_Deluxe_Edition.png'),
(22, 'Forza Horizon 4', 'Britania Raya adalah dunia terbuka yang bisa Anda rasakan bersama teman-teman dan seluruh dunia. Koleksi, modifikasi, dan kendarai lebih dari 450 mobil berbeda. Mulai dari balapan, hingga eksplorasi, pilih jalanmu sendiri dan jadilah seorang Horizon Superstar!', 'Racing Game', 250000, 100, 'Forza_Horizon_4.png'),
(23, 'Sonic & All-Stars Racing Transformed', 'Jadilah sonik atau teman-temannya dan bersainglah lewat jalan, air, dan udara dalam permainan Sonic & All-Stars Racing Transformed', 'Racing Game', 135000, 20, 'Sonic_All-Stars_Racing_Transformed.jpg'),
(24, 'Need for Speed Most Wanted', 'Rasakan kebebasan dalam dunia open-world Need for Speed Most Wanted. Kendarai mobilmu, hindari polisi, dan kalahkan rivalmu mneggunakan mobil paling canggih, dan tentunya nitro yang berlimpah!', 'Racing Game', 282000, 50, 'Need_for_Speed_Most_Wanted.jpg'),
(25, 'BeamNG.Drive', 'Simulasi kendaraan menggunakan teknologi soft-bodied physics yang mampu melakukan apa saja!', 'Racing Game', 120000, 100, 'BeamNG.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(1, 'user', 'surabaya', '2021-06-29 23:13:00', '2021-06-30 23:13:00'),
(2, 'budi', 'surabaya', '2021-06-30 00:27:11', '2021-07-01 00:27:11');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 1, 1, 'Doom : Eternal', 1, 700000, ''),
(2, 1, 2, 'Resident Evil 6', 1, 280000, ''),
(3, 2, 5, 'Metal Gear Solid V : The Phantom Pain', 1, 235000, ''),
(4, 2, 10, 'The Forest', 1, 110000, ''),
(5, 2, 8, 'Night in the woods', 1, 69000, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', '123', 1),
(2, 'user', 'user', '123', 2),
(3, 'budi', 'budi', '123', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indexes for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
