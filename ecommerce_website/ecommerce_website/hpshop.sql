-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Jan 2023 pada 13.37
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hpshop`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(5, 'ErlaDwi', '8a2a193948df988a8b881a75cc050c55abd1a1de'),
(7, 'Gabriel', '39dfa55283318d31afe5a3ff4a0e3253e2045e43'),
(8, 'Nada', '5f6955d227a320c7f1f6c7da2a6d96a851a8118f'),
(9, 'Tita', '178f71645d8d762522ede90115f4f50f1e19d62b');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price_before` int(20) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(2, 3, 'hirzan', 'hirzan@gmail.com', '13214', 'ybuidw');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 4, 'Dwi', '0812394522', 'dwierla04@gmail.com', 'cash on delivery', 'jl. Hj. Junib,  Cengkareng, Jakarta, DKI Jakarta, Indonesia - 91456', 'Lampu Taman Tinggi (1750000 x 1) - ', 1750000, '2023-01-19', 'pending');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `produsen` varchar(20) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `price_before` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `produsen`, `details`, `price`, `price_before`, `image_01`, `image_02`, `image_03`) VALUES
(2, 'Lampu PJU Blue Carbon', 'Panel Surya', 'Lampu PJU Tenaga Surya (Apple Light 1. 0) sangat cocok digunakan di jalan-jalan, area perumahan, taman, alun-alun, dan tempat umum lainnya.', 2000000, 3000000, 'lampu_pju10.jpg', 'lampu_pju12.jpg', 'lampu_pju14.jpg'),
(4, 'Lampu Sorot', 'Panel Surya', 'Lampu sorot tenaga surya bisa juga dijadikan sebagai lampu halaman/lampu taman/lampu pinggir kolam ikan/kolam renang, supaya taman dan rumah anda terasa hidup.', 4500000, 5250000, 'lampu_sorot3.jpg', 'lampu_sorot4.jpg', 'lampu_sorot5.jpg'),
(6, 'Lampu Taman Tinggi', 'samsung', 'Lampu taman tenaga surya dengan tipe 2W Bulat Putih merupakan lampu taman yang menggunakan tenaga surya sebagai sumber listriknya. ', 1750000, 2550000, 'lampu_taman3.jpg', 'lampu_taman4.jpg', 'lampu_taman5.jpg'),
(7, 'Lampu PJU Blue', 'Panel Surya', 'Lampu PJU Tenaga Surya (BeanLight 1. 0) sangat cocok digunakan di jalan-jalan, area perumahan, taman, alun-alun, dan tempat umum lainnya.', 850000, 1000000, 'lampu_pju14.jpg', 'lampu_pju14.jpg', 'lampu_pju14.jpg'),
(8, 'Kulkas Tenaga Surya', 'Panel Surya', 'Kulkas Tenaga Surya adalah kulkas yang menggunakan energi listrik yang dihasilkan dari matahari. Sistem Kulkas ini suadah meliputi Solar panel, Solar controller dan Baterai.\r\n\r\n', 2000000, 2365000, 'kulkas_1.jpg', 'kulkas_2.jpg', 'solar_freezer1.jpg'),
(9, 'Solar Charge Controller', 'Panel Surya', 'Otomatis dapat menyesuaikan tegangan sistem.Dilengkapi dengan layar LCD, yang juga memodifikasi parameter pengontrol. Dan memiliki antarmuka 2-tombol.Dapat melayani beban awal kapasitas tinggi tanpa masalah.Regulator dapat tahan terhadap berbagai kondisi penggunaan.', 275000, 385000, 'solar_charge4.jpg', 'solar_charge2.jpg', 'solar_charge3.jpg'),
(10, 'PJU Carbon Blue', 'Panel Surya', 'Terutama digunakan di halaman, komunitas perumahan, tempat indah dan daerah tanpa listrik. Instalasi mudah, hemat energi, perlindungan lingkungan, tidak ada biaya listrik dan umur panjang. Desain terintegrasi, produksi modular.', 3255000, 3900000, 'lampu_pju15.jpg', 'lampu_pju15.jpg', 'lampu_pju15.jpg'),
(11, 'Lampu PJU', 'Samsung', 'Power : 100WLED Lamp : 100W led 6000K-6500KLamp Size : 860x360x85mmSolar Panel : 16V 48W, Mono-Crystalline   Battert Type : LiFPO4 12.8V 42AHCharging time : 6-8 hoursDischarging time : 30-36 hoursLumen : 160lm/wMaterial : Die-casting Aluminum AlloyInstall Height : 7-10m\r\nSurya panel (solar panel) merupakan solusi energi.', 2100000, 2350000, 'lampu_pju2.jpg', 'lampu_pju3.jpg', 'lampu_pju4.jpg'),
(12, 'Lampu Sorot', 'LG', 'Lampu sorot tenaga surya bisa juga dijadikan sebagai lampu halaman/lampu taman/lampu pinggir kolam ikan/kolam renang.', 5875000, 6500000, 'lampu_sorot1.jpg', 'lampu_sorot1.jpg', 'lampu_sorot1.jpg'),
(13, 'Lampu PJU Blue ', 'Oppo', 'Terutama digunakan di halaman, komunitas perumahan, tempat indah dan daerah tanpa listrik. Instalasi mudah, hemat energi, perlindungan lingkungan.', 3999000, 4300000, 'lampu_pju17.jpg', 'lampu_pju17.jpg', 'lampu_pju17.jpg'),
(14, 'Kulkas Tenaga Surya 186L', 'Sharp', 'Kulkas Tenaga Surya adalah kulkas yang menggunakan energi listrik yang dihasilkan dari matahari.', 2499000, 2845000, 'kulkas_2.jpg', 'kulkas_2.jpg', 'solar_freeze1.jpg'),
(15, 'CCTV Panel Surya', 'Eiger', 'Kelebihan :\r\nSuper CPU HISILICONHD CMOS Progressive ScanTersedia APP dan Software untuk PCOptical Zoom 4X (2.8-12MM)Rotasi: 0°~355°Horizontal, 0°~90° VerticalKecepatan Rotasi: 0.1°~40°/S Horizontal, 0.1°~40°/S Vertical.', 345000, 400000, 'cctv_2.jpg', 'cctv_2.jpg', 'cctv_1.jpg'),
(16, 'PJU Blue Carbon', 'Nikon', 'Lampu PJU Tenaga Surya (Apple Light 1. 0) sangat cocok digunakan di jalan-jalan, area perumahan, taman, alun-alun, dan tempat umum lainnya.', 3999000, 4700000, 'lampu_pju13.jpg', 'lampu_pju13.jpg', 'lampu_pju13.jpg'),
(17, 'Lampu Sorot', 'LG', 'Keunggulan:\r\n20 W LED berkualitas yang tahan lamaSolar panel PolycrystallineBaterai Lithium-Ion 2.4AH 11.1VMaterial Die-casting Aluminum AlloyTidak memerlukan kabel maupun listrik dari PLN.', 2999999, 3250000, 'lampu_sorot5.jpg', 'lampu_sorot5.jpg', 'lampu_sorot5.jpg'),
(18, 'Lampu Sorot 50W', 'Asus', '50 W LED berkualitas yang tahan lamaSolar panel PolycrystallineBaterai Lithium-Ion 9.6AH 11.1VMaterial Die-casting Aluminum AlloyTidak memerlukan kabel maupun listrik dari PLN.', 6599000, 7200000, 'lampu_sorot6.jpg', 'lampu_sorot6.jpg', 'lampu_sorot5.jpg'),
(19, 'Lampu PJU', 'Xiaomi', 'LED Lamp : 40W LED 6000-6500KSolar Panel : 60W 18.2V, Poly-crystallineBattery Type : Lithium-Ion 12V 40AHCharging time : 6-8 hoursDischarging time : 30-36hoursLumen efficacy : 100lm/wMaterial : Aluminum Alloy ', 2145000, 2650000, 'lampu_pju7.jpg', 'lampu_pju7.jpg', 'lampu_pju7.jpg'),
(20, 'CCTV Panel Surya', 'Panel Surya', 'Kelebihan :\r\nSuper CPU HISILICONHD CMOS Progressive ScanTersedia APP dan Software untuk PCOptical Zoom 4X (2.8-12MM)Rotasi: 0°~355°Horizontal, 0°~90° VerticalKecepatan Rotasi: 0.1°~40°/S Horizontal, 0.1°~40°/S Vertical\r\n', 6125000, 6700000, 'cctv_1.jpg', 'cctv_2.jpg', 'cctv_1.jpg'),
(21, 'Lampu PJU All-In One MS 60W', 'Samsung', 'ower : 40WLED Lamp : 40W led 6000K-6500KLamp Size : 350*340*85mmSolar Panel : 16V 29W, PolycrystallineBattert Type : LiFPO4 12.8V 18AHCharging time : 6-8 hoursDischarging time ; 30-36 hoursLumen : 160lm/wMaterial : Die-casting Aluminum AlloyInstall Height : 4-7m', 1675000, 2000000, 'lampu_pju8.jpg', 'lampu_pju8.jpg', 'lampu_pju8.jpg'),
(22, 'Kulkas Tenaga Surya', 'Sanyo', 'Kulkas Tenaga Surya adalah kulkas yang menggunakan energi listrik yang dihasilkan dari matahari.', 1315000, 1685000, 'solar_freezer1.jpg', 'solar_freezer1.jpg', 'kulkas_2.jpg'),
(23, 'Lampu PJU (Flame Light 1.0)', 'Sony', 'Lampu PJU Tenaga Surya (Flame Light 1.0) sangat cocok digunakan di jalan-jalan, area perumahan, taman, alun-alun, dan tempat umum lainnya.', 1999000, 2350000, 'lampu_pju12.jpg', 'lampu_pju12.jpg', 'lampu_pju12.jpg'),
(24, 'Lampu Taman Stainless Mini', 'Samsung', 'Lampu taman tenaga surya dengan tipe 5W solar LED Garden light merupakan lampu taman yang menggunakan tenaga surya sebagai sumber listriknya. Lampu taman ini terbuat dari bahan stainless dengan desain yang elegan.', 1745000, 2095000, 'lampu_taman1.jpg', 'lampu_taman1.jpg', 'lampu_taman1.jpg'),
(25, 'Lampu Sorot 10W', 'HP', '10 W LED berkualitas yang tahan lamaSolar panel PolycrystallineBaterai Lithium-Ion 2.4AH 7.4VMaterial Die-casting Aluminum AlloyTidak memerlukan kabel maupun listrik dari PLN.', 4365000, 4825000, 'lampu_sorot3.jpg', 'lampu_sorot3.jpg', 'lampu_sorot3.jpg'),
(26, 'CCTV Panel Surya', 'eiger', 'Kelebihan :\r\nSuper CPU HISILICONHD CMOS Progressive ScanTersedia APP dan Software untuk PCOptical Zoom 4X (2.8-12MM)Rotasi: 0°~355°Horizontal, 0°~90° VerticalKecepatan Rotasi: 0.1°~40°/S Horizontal, 0.1°~40°/S Vertical\r\n', 389000, 460000, 'cctv_2.jpg', 'cctv_2.jpg', 'cctv_2.jpg'),
(27, 'KULKAS TENAGA SURYA', 'Sharp', 'Kulkas Tenaga Surya adalah kulkas yang menggunakan energi listrik yang dihasilkan dari matahari. Sistem Kulkas ini suadah meliputi Solar panel, Solar controller dan Baterai.', 2199000, 2460000, 'kulkas_1.jpg', 'kulkas_2.jpg', 'solar_freezer1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(3, 'hirzan', 'hirzan@gmail.com', 'b0399d2029f64d445bd131ffaa399a42d2f8e7dc'),
(4, 'NIDA', 'anandatita12@gmail.com', '7b21848ac9af35be0ddb2d6b9fc3851934db8420');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price_before` int(20) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
