-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2021 at 11:19 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emandalika`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_obh`
--

CREATE TABLE `tbl_data_obh` (
  `id_data_notaris` int(10) NOT NULL,
  `foto_obh` text DEFAULT NULL,
  `no_idn` varchar(30) DEFAULT NULL,
  `nama` text DEFAULT NULL,
  `nama_singkat` text DEFAULT NULL,
  `tgl_berdiri` datetime DEFAULT NULL,
  `status_obh` text DEFAULT NULL,
  `akta_obh` text DEFAULT NULL,
  `npwp_obh` text DEFAULT NULL,
  `akreditasi_obh` varchar(2) DEFAULT NULL,
  `pagu_litigasi` int(10) DEFAULT NULL,
  `pagu_non_litigasi` int(10) DEFAULT NULL,
  `no_sk` text DEFAULT NULL,
  `kota` text DEFAULT NULL,
  `alamat_notaris` text DEFAULT NULL,
  `latitude` decimal(12,9) DEFAULT NULL,
  `longitude` decimal(12,9) DEFAULT NULL,
  `tempat_kedudukan` text DEFAULT NULL,
  `telpon` varchar(14) DEFAULT NULL,
  `email_notaris` text DEFAULT NULL,
  `foto_notaris` text DEFAULT NULL,
  `tgl_sk` datetime DEFAULT NULL,
  `no_kontrak` varchar(22) DEFAULT NULL,
  `tgl_kontrak` datetime DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_data_obh`
--

INSERT INTO `tbl_data_obh` (`id_data_notaris`, `foto_obh`, `no_idn`, `nama`, `nama_singkat`, `tgl_berdiri`, `status_obh`, `akta_obh`, `npwp_obh`, `akreditasi_obh`, `pagu_litigasi`, `pagu_non_litigasi`, `no_sk`, `kota`, `alamat_notaris`, `latitude`, `longitude`, `tempat_kedudukan`, `telpon`, `email_notaris`, `foto_notaris`, `tgl_sk`, `no_kontrak`, `tgl_kontrak`, `id_user`) VALUES
(487, 'img/user/contoh_file.png', '1234', 'Akun OBH', 'PBHNTB', '2021-09-01 00:00:00', 'Perkumpulan', 'ABC-123456789', 'AB.123.456.789', 'B', 10000000, 10000000, 'ABC-1234567', 'Kota Mataram', 'Jalan Majapahit', '-8.592647820', '116.097240077', NULL, '081123456789', 'pbhntb@gmail.com', NULL, '2021-09-01 00:00:00', 'ABC-1234567', '2021-09-01 00:00:00', 387);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_file_manager`
--

CREATE TABLE `tbl_file_manager` (
  `id_file` int(10) NOT NULL,
  `dir_file` text DEFAULT NULL,
  `name_file` text DEFAULT NULL,
  `tgl_file` datetime DEFAULT NULL,
  `page` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_file_manager`
--

INSERT INTO `tbl_file_manager` (`id_file`, `dir_file`, `name_file`, `tgl_file`, `page`) VALUES
(17, 'file/public/UU_-_16_-_2011_-_Bantuan_Hukum.pdf', 'UU - 16 - 2011 - Bantuan Hukum', '2021-06-24 12:54:42', 'Peraturan Terkait'),
(18, 'file/public/SE_-_2017_-_Pelaksanaan_Bantuan_Hukum.pdf', 'SE - 2017 - Pelaksanaan Bantuan Hukum', '2021-06-24 12:55:14', 'Peraturan Terkait'),
(19, 'file/public/PP_-_2013_-_42_-_Syarat_Tata_Cara_Pemberian_Bantuan_Hukum_dan_Penyaluran_Dana_Bantuan_Hukum.pdf', 'PP - 2013 - 42 - Syarat Tata Cara Pemberian Bantuan Hukum dan Penyaluran Dana Bantuan Hukum', '2021-06-24 12:55:32', 'Peraturan Terkait');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(10) NOT NULL,
  `nama_kategori` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
(2, 'Penyalahgunaan'),
(5, 'Saran &amp; Masukan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori_lap`
--

CREATE TABLE `tbl_kategori_lap` (
  `id_kategori_lap` int(10) NOT NULL,
  `nama_kategori_lap` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori_lap`
--

INSERT INTO `tbl_kategori_lap` (`id_kategori_lap`, `nama_kategori_lap`) VALUES
(2, 'NON LITIGASI'),
(4, 'LITIGASI');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kota_ntb`
--

CREATE TABLE `tbl_kota_ntb` (
  `id_kota` int(2) NOT NULL,
  `nama_kota` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kota_ntb`
--

INSERT INTO `tbl_kota_ntb` (`id_kota`, `nama_kota`) VALUES
(1, 'Kabupaten Lombok Barat'),
(2, 'Kabupaten Lombok Tengah'),
(3, 'Kabupaten Lombok Timur'),
(4, 'Kota Mataram'),
(5, 'Kabupaten Lombok Utara'),
(6, 'Kabupaten Bima'),
(7, 'Kota Bima'),
(8, 'Kabupaten Dompu'),
(9, 'Kabupaten Sumbawa'),
(10, 'Kabupaten Sumbawa Barat');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_laporan`
--

CREATE TABLE `tbl_laporan` (
  `id_laporan` int(10) NOT NULL,
  `id_kategori_lap` int(10) DEFAULT NULL,
  `id_sub_kategori_lap` int(10) DEFAULT NULL,
  `isi_laporan` text DEFAULT NULL,
  `ket_laporan` text DEFAULT NULL,
  `lampiran` text DEFAULT NULL,
  `notaris` int(10) DEFAULT NULL,
  `status` enum('proses','konfirmasi','selesai') DEFAULT NULL,
  `petugas` int(11) DEFAULT NULL,
  `pesan_petugas` text DEFAULT NULL,
  `file_petugas` text DEFAULT NULL,
  `tgl_laporan` datetime DEFAULT NULL,
  `tgl_konfirmasi` datetime DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `no_akta` text DEFAULT NULL,
  `tgl_akta` text DEFAULT NULL,
  `no_permohonan` text DEFAULT NULL,
  `nama_client` text DEFAULT NULL,
  `nik_client` varchar(16) DEFAULT NULL,
  `alamat_client` text DEFAULT NULL,
  `tgl_kegiatan` text DEFAULT NULL,
  `jenis_perkara` text DEFAULT NULL,
  `tema_kegiatan` text DEFAULT NULL,
  `judul_kegiatan` text DEFAULT NULL,
  `tipe_kegiatan` text DEFAULT NULL,
  `lokasi_kegiatan` text DEFAULT NULL,
  `bentuk_dokumen` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_laporan_smt`
--

CREATE TABLE `tbl_laporan_smt` (
  `id_laporan` int(10) NOT NULL,
  `id_kategori_lap` int(10) DEFAULT NULL,
  `lampiran` text DEFAULT NULL,
  `notaris` int(10) DEFAULT NULL,
  `status` enum('proses','konfirmasi','selesai') DEFAULT NULL,
  `petugas` int(11) DEFAULT NULL,
  `pesan_petugas` text DEFAULT NULL,
  `file_petugas` text DEFAULT NULL,
  `tgl_laporan` datetime DEFAULT NULL,
  `tgl_konfirmasi` datetime DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `periode_lap` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notif`
--

CREATE TABLE `tbl_notif` (
  `id_notif` int(10) NOT NULL,
  `pengirim` int(16) DEFAULT NULL,
  `penerima` int(10) DEFAULT NULL,
  `pesan` text DEFAULT NULL,
  `link` text DEFAULT NULL,
  `id_for_link` int(10) DEFAULT NULL,
  `tgl_notif` datetime DEFAULT NULL,
  `baca_notif` text DEFAULT NULL,
  `hapus_notif` text DEFAULT NULL,
  `nama_client` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengaduan`
--

CREATE TABLE `tbl_pengaduan` (
  `id_pengaduan` int(10) NOT NULL,
  `nama_pelapor` text DEFAULT NULL,
  `nik_pelapor` varchar(16) DEFAULT NULL,
  `alamat_pelapor` text DEFAULT NULL,
  `kontak_pelapor` varchar(15) DEFAULT NULL,
  `isi_pengaduan` text DEFAULT NULL,
  `bukti` text DEFAULT NULL,
  `status` enum('proses','konfirmasi','selesai') DEFAULT NULL,
  `pesan_petugas` text DEFAULT NULL,
  `file_petugas` text DEFAULT NULL,
  `tgl_pengaduan` datetime DEFAULT NULL,
  `tgl_konfirmasi` datetime DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permohonan_bankum`
--

CREATE TABLE `tbl_permohonan_bankum` (
  `id_permohonan` int(10) NOT NULL,
  `isi_laporan` text DEFAULT NULL,
  `ket_laporan` text DEFAULT NULL,
  `bukti` text DEFAULT NULL,
  `notaris` int(10) DEFAULT NULL,
  `status` enum('proses','konfirmasi','selesai') DEFAULT NULL,
  `petugas` int(11) DEFAULT NULL,
  `pesan_petugas` text DEFAULT NULL,
  `file_petugas` text DEFAULT NULL,
  `tgl_pengaduan` datetime DEFAULT NULL,
  `tgl_konfirmasi` datetime DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `nama_client` text DEFAULT NULL,
  `nik_client` varchar(16) DEFAULT NULL,
  `alamat_client` text DEFAULT NULL,
  `kontak_client` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_kategori`
--

CREATE TABLE `tbl_sub_kategori` (
  `id_sub_kategori` int(10) NOT NULL,
  `id_kategori` int(10) DEFAULT NULL,
  `nama_sub_kategori` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sub_kategori`
--

INSERT INTO `tbl_sub_kategori` (`id_sub_kategori`, `id_kategori`, `nama_sub_kategori`) VALUES
(207, 5, 'Fasilitas Publik'),
(206, 2, 'Bantuan Masyarakat');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_kategori_lap`
--

CREATE TABLE `tbl_sub_kategori_lap` (
  `id_sub_kategori_lap` int(10) NOT NULL,
  `id_kategori_lap` int(10) DEFAULT NULL,
  `nama_sub_kategori_lap` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sub_kategori_lap`
--

INSERT INTO `tbl_sub_kategori_lap` (`id_sub_kategori_lap`, `id_kategori_lap`, `nama_sub_kategori_lap`) VALUES
(18, 2, 'PENYULUHAN HUKUM'),
(19, 2, 'KONSULTASI HUKUM'),
(20, 2, 'INVESTIGASI KASUS'),
(21, 2, 'PENELITIAN HUKUM'),
(22, 2, 'MEDIASI'),
(23, 2, 'NEGOSIASI'),
(24, 2, 'PEMBERDAYAAN MASYARAKAT'),
(25, 2, 'PENDAMPINGAN DI LUAR PENGADILAN'),
(26, 2, 'DRAFTING DOKUMEN HUKUM');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(10) NOT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `level` varchar(30) DEFAULT NULL,
  `tgl_daftar` datetime DEFAULT NULL,
  `aktif` enum('0','1') DEFAULT NULL,
  `dihapus` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_lengkap`, `username`, `password`, `level`, `tgl_daftar`, `aktif`, `dihapus`) VALUES
(1, 'Administrator', 'admin', 'admin', 'superadmin', '2019-02-10 00:00:00', '1', 'tidak'),
(387, 'Akun OBH', 'pbhntb', '123456', 'obh', '2021-09-05 11:44:48', '1', 'tidak');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_web`
--

CREATE TABLE `tbl_web` (
  `id_web` int(10) NOT NULL,
  `nama_web` text DEFAULT NULL,
  `ket_web` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_web`
--

INSERT INTO `tbl_web` (`id_web`, `nama_web`, `ket_web`) VALUES
(1, 'Sistem Laporan OBH', NULL),
(2, 'Laporan OBH', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_data_obh`
--
ALTER TABLE `tbl_data_obh`
  ADD PRIMARY KEY (`id_data_notaris`);

--
-- Indexes for table `tbl_file_manager`
--
ALTER TABLE `tbl_file_manager`
  ADD PRIMARY KEY (`id_file`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_kategori_lap`
--
ALTER TABLE `tbl_kategori_lap`
  ADD PRIMARY KEY (`id_kategori_lap`);

--
-- Indexes for table `tbl_kota_ntb`
--
ALTER TABLE `tbl_kota_ntb`
  ADD PRIMARY KEY (`id_kota`);

--
-- Indexes for table `tbl_laporan`
--
ALTER TABLE `tbl_laporan`
  ADD PRIMARY KEY (`id_laporan`);

--
-- Indexes for table `tbl_laporan_smt`
--
ALTER TABLE `tbl_laporan_smt`
  ADD PRIMARY KEY (`id_laporan`);

--
-- Indexes for table `tbl_notif`
--
ALTER TABLE `tbl_notif`
  ADD PRIMARY KEY (`id_notif`);

--
-- Indexes for table `tbl_pengaduan`
--
ALTER TABLE `tbl_pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`);

--
-- Indexes for table `tbl_permohonan_bankum`
--
ALTER TABLE `tbl_permohonan_bankum`
  ADD PRIMARY KEY (`id_permohonan`);

--
-- Indexes for table `tbl_sub_kategori`
--
ALTER TABLE `tbl_sub_kategori`
  ADD PRIMARY KEY (`id_sub_kategori`);

--
-- Indexes for table `tbl_sub_kategori_lap`
--
ALTER TABLE `tbl_sub_kategori_lap`
  ADD PRIMARY KEY (`id_sub_kategori_lap`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tbl_web`
--
ALTER TABLE `tbl_web`
  ADD PRIMARY KEY (`id_web`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_data_obh`
--
ALTER TABLE `tbl_data_obh`
  MODIFY `id_data_notaris` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=489;

--
-- AUTO_INCREMENT for table `tbl_file_manager`
--
ALTER TABLE `tbl_file_manager`
  MODIFY `id_file` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_kategori_lap`
--
ALTER TABLE `tbl_kategori_lap`
  MODIFY `id_kategori_lap` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_kota_ntb`
--
ALTER TABLE `tbl_kota_ntb`
  MODIFY `id_kota` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_laporan`
--
ALTER TABLE `tbl_laporan`
  MODIFY `id_laporan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `tbl_laporan_smt`
--
ALTER TABLE `tbl_laporan_smt`
  MODIFY `id_laporan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_notif`
--
ALTER TABLE `tbl_notif`
  MODIFY `id_notif` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `tbl_pengaduan`
--
ALTER TABLE `tbl_pengaduan`
  MODIFY `id_pengaduan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tbl_permohonan_bankum`
--
ALTER TABLE `tbl_permohonan_bankum`
  MODIFY `id_permohonan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `tbl_sub_kategori`
--
ALTER TABLE `tbl_sub_kategori`
  MODIFY `id_sub_kategori` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT for table `tbl_sub_kategori_lap`
--
ALTER TABLE `tbl_sub_kategori_lap`
  MODIFY `id_sub_kategori_lap` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=389;

--
-- AUTO_INCREMENT for table `tbl_web`
--
ALTER TABLE `tbl_web`
  MODIFY `id_web` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
