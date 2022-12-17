-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2022 at 02:48 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loker`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `halaman`
--

CREATE TABLE `halaman` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `kutipan` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tgl_isi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `halaman`
--

INSERT INTO `halaman` (`id`, `judul`, `kutipan`, `isi`, `tgl_isi`) VALUES
(14, 'Ayo Kerja !', '', '<p>kami menyediakan website untuk menyebarkan berbagai jenis Loker yang  dibutuhkan oleh orang orang dan masyarakat agar memudahkan mereka dalam mencari pekerjaan dan memudahkan perusahaan perusahaan untuk merekrut pekerja silahkan cari pekerjaan yang sesuai dengan keinginan anda disini.        <img style=\"width: 626px;\" src=\"../gambar/f7e6c85504ce6e82442c770f7c8606f0.webp\"></p>', '2022-12-15 03:43:02');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tgl_isi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `judul`, `isi`, `tgl_isi`) VALUES
(1, 'Social', '<p>YouTube: <b>Ayo Kerja</b></p><p>Facebook: <b>Ayo Kerja</b></p><p>Instagram: <b>Ayo_Kerja</b></p>', '2022-12-06 19:04:50'),
(2, 'Contact', '<p>Jl. uib batam</p><p>Kode Pos: 57365<br></p>', '2022-12-06 19:03:42'),
(3, 'About', 'Kami adalah perusahaan yang menyediakan berbagai jenis lowongan pekerjaan untuk membantu anda dalam mendapatkan pekerjaan', '2022-12-06 19:03:00'),
(4, 'Ayo Kerja !', 'Website penyedia berbagai jenis lowongan pekerjaan', '2022-12-06 19:02:42');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `status` text NOT NULL,
  `tgl_isi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `email`, `nama_lengkap`, `password`, `status`, `tgl_isi`) VALUES
(13, 'sefryanto.valentinus@gmail.com', 'Sefryanto', 'e10adc3949ba59abbe56e057f20f883e', '1', '2022-12-08 06:17:36');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tgl_isi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `nama`, `foto`, `isi`, `tgl_isi`) VALUES
(3, 'Sefryanto Valentinus', 'partners_1670589050_n.jpeg', '<p>Ketua Kelompok 2 - TekPro 1SIMC<br></p>', '2022-12-09 12:30:50'),
(4, 'Febrianto', 'partners_1670589041_WhatsApp Image 2022-12-09 at 7.26.04 PM.jpeg', '<p>Anggota Kelompok 2 - TekPro 1SIMC<br></p>', '2022-12-09 12:30:41'),
(5, 'Kevin Gernaldi', 'partners_1670589031_Screenshot_20221209_192241.png', '<p>Anggota Kelompok 2 - TekPro 1SIMC<br></p>', '2022-12-09 12:30:31'),
(6, 'Delon Erlando', 'partners_1670589021_Screenshot_20221209_191220.png', '<p>Anggota Kelompok 2 - TekPro 1SIMC<br></p>', '2022-12-09 12:30:21'),
(7, 'Joven Lim', 'partners_1670589013_WhatsApp Image 2022-12-09 at 7.26.05 PM.jpeg', '<p>Anggota Kelompok 2 - TekPro 1SIMC<br></p>', '2022-12-09 12:30:13');

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan`
--

CREATE TABLE `perusahaan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tgl_isi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `perusahaan`
--

INSERT INTO `perusahaan` (`id`, `nama`, `foto`, `isi`, `tgl_isi`) VALUES
(8, 'PT. Red Hat Indonesia', 'perusahaan_1670589916_images.png', '<p></p><h1><span style=\"font-weight: normal;\">Red Hat adalah salah satu perusahaan terbesar dan dikenal untuk dedikasinya atas </span><a href=\"https://id.wikipedia.org/wiki/Perangkat_lunak_sumber_terbuka\" title=\"Perangkat lunak sumber terbuka\"><span style=\"font-weight: normal;\">perangkat lunak sumber terbuka</span></a><span style=\"font-weight: normal;\">. Red Hat didirikan pada </span><a href=\"https://id.wikipedia.org/wiki/1993\" title=\"1993\"><span style=\"font-weight: normal;\">1993</span></a><span style=\"font-weight: normal;\"> dan bermarkas di </span><a href=\"https://id.wikipedia.org/wiki/Raleigh,_North_Carolina\" class=\"mw-redirect\" title=\"Raleigh, North Carolina\"><span style=\"font-weight: normal;\">Raleigh, North Carolina</span></a><span style=\"font-weight: normal;\">, </span><a href=\"https://id.wikipedia.org/wiki/Amerika_Serikat\" title=\"Amerika Serikat\"><span style=\"font-weight: normal;\">Amerika Serikat</span></a><span style=\"font-weight: normal;\">. Red Hat terkenal karena produknya </span><a href=\"https://id.wikipedia.org/wiki/Red_Hat_Linux\" title=\"Red Hat Linux\"><span style=\"font-weight: normal;\">Red Hat Linux</span></a><span style=\"font-weight: normal;\"> salah satu </span><a href=\"https://id.wikipedia.org/wiki/Distro_Linux\" class=\"mw-redirect\" title=\"Distro Linux\"><span style=\"font-weight: normal;\">distro Linux</span></a><span style=\"font-weight: normal;\"> utama.\r\n</span></h1><br><p></p>', '2022-12-15 01:17:04'),
(10, 'PT. Pos Indonesia', 'perusahaan_1670590050_logo-pt-pos_210118144002-300.jpg', '<p><span class=\"ILfuVd\" lang=\"id\"><span class=\"hgKElc\">PT <b>Pos Indonesia</b>\r\n (Persero) merupakan perusahaan BUMN yang bergerak dibidang jasa \r\npengiriman surat maupun barang yang memiliki kantor pusat di Kota \r\nBandung dan memiliki 11 kantor regional yang tersebar di seluruh wilayah\r\n <b>Indonesia</b>.</span></span></p>', '2022-12-09 12:47:30'),
(11, 'PT. EPSON Indonesia', 'perusahaan_1670590310_epson-s.png', '<span class=\"ILfuVd\" lang=\"id\"><span class=\"hgKElc\"><b>PT</b>. <b>Indonesia Epson</b> Industry merupakan anak perusahaan dari Seiko <b>Epson</b> Coorporation yang berdiri di <b>Indonesia</b>. Perusahaan ini <b>bergerak</b> dalam <b>bidang</b> pemasaran serta penjualan dari produk-produk <b>Epson</b> dan sudah bekerja mulai pada tanggal 1 Oktober 2000.</span></span>', '2022-12-09 12:51:50'),
(12, 'PT. Galaksi Investasi Harapan', 'perusahaan_1670590616_1598928083292.jpg', '<p>PT Galaksi Investasi Harapan (GIH) adalah perusahaan manufaktur maju terkemuka dengan pusat operasi di Batam, Indonesia. Terkemuka untuk budaya kami yang berpusat pada pelanggan, kami tidak pernah gagal untuk memuaskan pelanggan kami dengan terus-menerus menghasilkan produk berkualitas luar biasa dengan kecepatan pengiriman yang ditingkatkan. Rangkaian produk yang diproduksi GIH berfokus pada pasar teknologi mutakhir, termasuk suku cadang otomotif, suku cadang industri, dan suku cadang konsumen. Dengan bantuan 200+ karyawannya, GIH mengalami pertumbuhan yang fenomenal dalam beberapa tahun terakhir, menarik para pemimpin industri global teratas untuk berkolaborasi dengan kami.<br></p>', '2022-12-09 12:56:56'),
(16, 'PT. Kereta Api Indonesia', 'perusahaan_1670590854_Logo-Baru-PT-KAI.jpg', '<p><span class=\"ILfuVd\" lang=\"id\"><span class=\"hgKElc\"><b>PT Kereta Api Indonesia</b> (Persero), selanjutnya disebut sebagai <b>KAI</b> adalah Badan Usaha Milik Negara yang menyediakan, mengatur, dan mengurus jasa angkutan <b>kereta api</b> di Indonesia.</span></span></p>', '2022-12-09 13:00:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `halaman`
--
ALTER TABLE `halaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perusahaan`
--
ALTER TABLE `perusahaan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `halaman`
--
ALTER TABLE `halaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `perusahaan`
--
ALTER TABLE `perusahaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
