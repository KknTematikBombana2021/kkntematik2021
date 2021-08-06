-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2021 at 05:16 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sapeda`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku_ekspedisi`
--

CREATE TABLE `buku_ekspedisi` (
  `tgl_no_surat` varchar(100) NOT NULL,
  `tgl_pengiriman` date NOT NULL,
  `isi_singkat_surat` text NOT NULL,
  `penerima` varchar(255) NOT NULL,
  `file_surat` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `buku_kepkades`
--

CREATE TABLE `buku_kepkades` (
  `no_tglkepkades` varchar(255) NOT NULL,
  `tentang` varchar(255) NOT NULL,
  `uraian_singkat` text NOT NULL,
  `no_tgldilaporkan` varchar(255) NOT NULL,
  `ket` varchar(255) NOT NULL,
  `file_kepkades` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `buku_lembar_berita_desa`
--

CREATE TABLE `buku_lembar_berita_desa` (
  `jenis_perda` varchar(255) NOT NULL,
  `nomor_tgl_ditetapkan` varchar(255) NOT NULL,
  `tentang` text NOT NULL,
  `nomor_tgl_diundangkan` varchar(255) NOT NULL,
  `file_berita` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `buku_perda`
--

CREATE TABLE `buku_perda` (
  `Jenis_perda` varchar(255) NOT NULL,
  `no_tglditetapkan` varchar(255) NOT NULL,
  `tentang` varchar(255) NOT NULL,
  `uraian_singkat` text NOT NULL,
  `tgl_kesepakatan_perda` varchar(255) NOT NULL,
  `no_tgldilaporkan` varchar(255) NOT NULL,
  `nomor_tgl_ditetapkan` varchar(255) NOT NULL,
  `nomor_tgl_diundangkan` varchar(255) NOT NULL,
  `file_perda` varchar(255) NOT NULL,
  `ket` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `buku_surat_masuk`
--

CREATE TABLE `buku_surat_masuk` (
  `no_surat` date NOT NULL,
  `pengirim` varchar(255) NOT NULL,
  `perihal` varchar(255) NOT NULL,
  `tgl_surat_masuk` date NOT NULL,
  `tgl_terima` date NOT NULL,
  `isi_singkat` text NOT NULL,
  `file_surat_masuk` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `buku_surta_keluar`
--

CREATE TABLE `buku_surta_keluar` (
  `no_surat_keluar` varchar(100) NOT NULL,
  `penerima` varchar(255) NOT NULL,
  `perihal` varchar(255) NOT NULL,
  `tgl_pengiriman` date NOT NULL,
  `tgl_surat_keluar` date NOT NULL,
  `isi_surat` text NOT NULL,
  `file_surat_keluar` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_buku_aparat`
--

CREATE TABLE `tbl_buku_aparat` (
  `nama` varchar(300) NOT NULL,
  `niap` varchar(50) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `tempat_tgl_lahir` varchar(100) NOT NULL,
  `agama` varchar(50) NOT NULL,
  `pangkat_golongan` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `pendidikan_terakhir` varchar(100) NOT NULL,
  `nomor_tgl_keputusan_pengangkatan` varchar(200) NOT NULL,
  `nomor_tgl_keputusan_pemberhentian` varchar(200) NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_buku_inventaris`
--

CREATE TABLE `tbl_buku_inventaris` (
  `kode_barang` varchar(100) NOT NULL,
  `jenis_barang` varchar(300) NOT NULL,
  `jml_barang_beli_sendiri` int(11) NOT NULL,
  `jml_barang_bantuan_pemerintah` int(11) NOT NULL,
  `jml_barang_bantuan_pemprov` int(11) NOT NULL,
  `jml_barang_bantuan_pemda` int(11) NOT NULL,
  `jml_barang_sumbangan` int(11) NOT NULL,
  `jml_barang_baik_awal_tahun` int(11) NOT NULL,
  `jml_barang_rusak_awal_tahun` int(11) NOT NULL,
  `jml_barang_dihapus_rusak` int(11) NOT NULL,
  `jml_barang_dihapus_dijual` int(11) NOT NULL,
  `jml_barang_dihapus_disumbangkan` int(11) NOT NULL,
  `tanggal_penghapusan_barang` date NOT NULL,
  `jml_barang_baik_akhir_tahun` int(11) NOT NULL,
  `jml_barang_rusak_akhir_tahun` int(11) NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku_ekspedisi`
--
ALTER TABLE `buku_ekspedisi`
  ADD PRIMARY KEY (`tgl_no_surat`);

--
-- Indexes for table `buku_kepkades`
--
ALTER TABLE `buku_kepkades`
  ADD PRIMARY KEY (`no_tglkepkades`);

--
-- Indexes for table `buku_lembar_berita_desa`
--
ALTER TABLE `buku_lembar_berita_desa`
  ADD PRIMARY KEY (`nomor_tgl_diundangkan`);

--
-- Indexes for table `buku_perda`
--
ALTER TABLE `buku_perda`
  ADD PRIMARY KEY (`no_tglditetapkan`),
  ADD KEY `nomor_tgl_diundangkan` (`nomor_tgl_diundangkan`);

--
-- Indexes for table `buku_surat_masuk`
--
ALTER TABLE `buku_surat_masuk`
  ADD PRIMARY KEY (`no_surat`);

--
-- Indexes for table `buku_surta_keluar`
--
ALTER TABLE `buku_surta_keluar`
  ADD PRIMARY KEY (`no_surat_keluar`);

--
-- Indexes for table `tbl_buku_aparat`
--
ALTER TABLE `tbl_buku_aparat`
  ADD PRIMARY KEY (`niap`);

--
-- Indexes for table `tbl_buku_inventaris`
--
ALTER TABLE `tbl_buku_inventaris`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku_perda`
--
ALTER TABLE `buku_perda`
  ADD CONSTRAINT `buku_perda_ibfk_1` FOREIGN KEY (`nomor_tgl_diundangkan`) REFERENCES `buku_lembar_berita_desa` (`nomor_tgl_diundangkan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
