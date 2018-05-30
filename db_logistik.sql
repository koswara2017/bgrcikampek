-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 30, 2018 at 06:16 PM
-- Server version: 5.6.13
-- PHP Version: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_logistik`
--
CREATE DATABASE IF NOT EXISTS `db_logistik` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_logistik`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(30) NOT NULL,
  `pass` varchar(70) NOT NULL,
  `foto` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `uname`, `pass`, `foto`) VALUES
(8, 'itadmin', '0b1dd5fabd221ef63c58c026bce4cf6b', 'text.png');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` text NOT NULL,
  `jenis` text NOT NULL,
  `suplier` text NOT NULL,
  `modal` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `sisa` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `nama`, `jenis`, `suplier`, `modal`, `harga`, `jumlah`, `sisa`) VALUES
(14, 'roti unibis', 'makanan', 'pt.makamur jaya', 5000, 6500, 350, 20),
(17, 'tim tam', 'makanan ringan', 'pt surga', 2000, 6000, 792, 10),
(19, 'tic tac', 'makanan ringan', 'pt sido multp', 2000, 4000, 2, 24),
(20, 'aqua sedang', 'minuman ringan', 'pt jamaika', 1000, 3000, 990, 1000),
(21, 'makkkanan', 'makanan ringan', 'pt surya', 2000, 4000, 894, 900),
(22, 'makkkanan', 'makanan ringan', 'pt surya', 2000, 4000, 894, 900),
(23, 'magnum', 'rokok', 'pt surga', 12000, 13000, 997, 1000),
(24, 'santri mie', 'makanan ringan', 'pt sido mulyo', 2000, 4000, 784, 800),
(25, 'rambut palsu', 'accesories', 'pt ptan', 3000, 5000, 496, 500),
(26, 'rambut palsu', 'accesories', 'pt ptan', 3000, 5000, 496, 500),
(27, 'sea foog', 'makanan ringan', 'pt surga', 4000, 60000, 598, 600),
(28, 'mild', 'rokok', 'pt sampoerna', 15000, 17000, 192, 200),
(29, 'dji sam soe', 'rokok', 'pt ptan', 14000, 15000, 145, 150),
(30, 'nu mild', 'rokok', 'pt ptan', 14000, 15000, 144, 150),
(31, 'nu mild', 'rokok', 'pt ptan', 14000, 15000, 144, 150),
(32, 'roti', 'makanan', 'hdhnhnhh', 2000, 5000, 4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nm_cus` text NOT NULL,
  `alamat` text NOT NULL,
  `npwp` text NOT NULL,
  `nm_pimpinan` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `nm_cus`, `alamat`, `npwp`, `nm_pimpinan`) VALUES
(1, 'WBP', 'coba', 'coba', 'coba'),
(2, 'INDO LIBERTY', '', '', ''),
(3, 'IKPT', '', '', ''),
(4, 'PERDANA MANDIRI', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `data_nota`
--

CREATE TABLE IF NOT EXISTS `data_nota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_dn` text NOT NULL,
  `no_spk` text NOT NULL,
  `tgl_dn` text NOT NULL,
  `nilai` text NOT NULL,
  `biaya` text NOT NULL,
  `laba_rugi` text NOT NULL,
  `pm` text NOT NULL,
  `id_customer` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `data_nota`
--

INSERT INTO `data_nota` (`id`, `no_dn`, `no_spk`, `tgl_dn`, `nilai`, `biaya`, `laba_rugi`, `pm`, `id_customer`) VALUES
(2, '222/333', '111/000/2018', '22/05/2018', '1000000', '130000', '870000', '87', '1'),
(3, '223/334', '111/000', '24/05/2018', '500000', '100000', '400000', '80', '2');

-- --------------------------------------------------------

--
-- Table structure for table `droping_kuo`
--

CREATE TABLE IF NOT EXISTS `droping_kuo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_droping` text NOT NULL,
  `no_bukti` text NOT NULL,
  `jumlah` text NOT NULL,
  `realisasi_kuo` text NOT NULL,
  `sisa` text NOT NULL,
  `no_bkt_pengembalian` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `droping_kuo`
--

INSERT INTO `droping_kuo` (`id`, `tgl_droping`, `no_bukti`, `jumlah`, `realisasi_kuo`, `sisa`, `no_bkt_pengembalian`) VALUES
(1, '24/05/2018', '123/123', '100000', '20000', '80000', '1011'),
(3, '01/05/2018', '99000', '1000000', '300000', '700000', '1012');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `start_event` datetime NOT NULL,
  `end_event` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `multiuser`
--

CREATE TABLE IF NOT EXISTS `multiuser` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(80) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type_user` text NOT NULL,
  `tgl` datetime NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `multiuser`
--

INSERT INTO `multiuser` (`id_user`, `nama_lengkap`, `username`, `password`, `type_user`, `tgl`) VALUES
(1, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin', '2014-06-26 10:39:52'),
(2, 'Andrian Saputra', 'andre', '19984dcaea13176bbb694f62ba6b5b35', 'Editor', '2014-06-26 10:40:53'),
(3, 'Jamil Ahmad', 'jamil', '0e2cc23df7e37a854499f9d918b0219d', 'User', '2014-06-26 10:41:28');

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE IF NOT EXISTS `pengeluaran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `keperluan` text NOT NULL,
  `nama` text NOT NULL,
  `jumlah` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `pengeluaran`
--

INSERT INTO `pengeluaran` (`id`, `tanggal`, `keperluan`, `nama`, `jumlah`) VALUES
(1, '2015-02-06', 'de', 'diki', 1234);

-- --------------------------------------------------------

--
-- Table structure for table `realisasi`
--

CREATE TABLE IF NOT EXISTS `realisasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_realisasi` text NOT NULL,
  `armada` text NOT NULL,
  `no_spk` text NOT NULL,
  `asal` text NOT NULL,
  `tujuan` text NOT NULL,
  `party` text NOT NULL,
  `satuan` text NOT NULL,
  `nopol` text NOT NULL,
  `no_surjl` text NOT NULL,
  `biaya_armada` text NOT NULL,
  `operasional_mb` text NOT NULL,
  `total_biaya` text NOT NULL,
  `pendapatan` text NOT NULL,
  `laba` text NOT NULL,
  `pm` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `realisasi`
--

INSERT INTO `realisasi` (`id`, `tgl_realisasi`, `armada`, `no_spk`, `asal`, `tujuan`, `party`, `satuan`, `nopol`, `no_surjl`, `biaya_armada`, `operasional_mb`, `total_biaya`, `pendapatan`, `laba`, `pm`) VALUES
(3, '20/05/2018', 'saaa', '111/000/2018', 'saaa', 'asasas', 'asasas', 'asasa', 'wassas', '123/123', '10000', '30000', '40000', '70000', '-30000', '-42.857142857143'),
(15, '20/05/2018', 'tertertert', '111/000', 'iyuiyuiyui', 'wqeqweqwe', 'TON', 'TON', 'g65654i', '444/555', '40000', '30000', '70000', '100000', '30000', '30'),
(16, '22/05/2018', 'truk milik', '111/000/2018', 'subang', 'subang', 'M3', 'BALLS', '222222', '222/333', '40000', '20000', '60000', '1000000', '940000', '94'),
(17, '20/05/2018', 'saaa', '111/000/2018', 'saaa', 'asasas', 'TON', 'TON', 'wassas', '123/123', '10000', '30000', '40000', '70000', '30000', '42.857142857143'),
(18, '20/05/2018', 'saaa', '111/000/2018', 'saaa', 'asasas', 'TON', 'TON', 'wassas', '123/123', '10000', '30000', '40000', '70000', '30000', '42.857142857143'),
(19, '20/05/2018', 'saaa', '111/000/2018', 'saaa', 'dadadada', 'TON', 'TON', 'wassas', '123/123', '10000', '30000', '40000', '70000', '30000', '42.857142857143'),
(20, '20/05/2018', 'asdasafds', '111/000', 'asdafasf', 'asffasd', 'TON', 'TON', 'b3543t', '444/555', '30000', '10000', '40000', '200000', '160000', '80'),
(21, '21/05/2018', 'truk milik', '111/000/2018', 'subang', 'cikampek', '5', 'TON', 'T 5627 UE', '90990', '1000000', '10000', '1010000', '23000000', '21990000', '95.608695652174'),
(22, '22/05/2018', 'truk milik', '111/000/2018', 'subang', 'Subang', '8', 'TON', 'T 5627 UE', '99099', '100000', '100000', '200000', '1000000', '800000', '80');

-- --------------------------------------------------------

--
-- Table structure for table `realisasi_dn`
--

CREATE TABLE IF NOT EXISTS `realisasi_dn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_dn` text NOT NULL,
  `tanggal` text NOT NULL,
  `uraian` text NOT NULL,
  `no_bukti` text NOT NULL,
  `surat_jalan` text NOT NULL,
  `realisasi` text NOT NULL,
  `droping` text NOT NULL,
  `saldo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `realisasi_dn`
--

INSERT INTO `realisasi_dn` (`id`, `no_dn`, `tanggal`, `uraian`, `no_bukti`, `surat_jalan`, `realisasi`, `droping`, `saldo`) VALUES
(27, '222/333', '24/05/2018', 'aassdf', '123/123', '222/333', '', '300000', '300000'),
(28, '222/333', '24/05/2018', 'aassdf', '99000', '123/123', '40000', '', '260000'),
(29, '222/333', '24/05/2018', 'aassdf', '123/123', '222/333', '20000', '', '240000'),
(31, '223/334', '24/05/2018', 'affasgdg', '99000', '123/123', '', '50000', '50000'),
(32, '222/333', '24/05/2018', 'OIOPIOIOI', '99000', '123/123', '70000', '0', '170000');

-- --------------------------------------------------------

--
-- Table structure for table `realisasi_kuo`
--

CREATE TABLE IF NOT EXISTS `realisasi_kuo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_realisasi_kuo` text NOT NULL,
  `no_bukti_kuo` text NOT NULL,
  `jumlah` text NOT NULL,
  `uraian` text NOT NULL,
  `surat_jalan` text NOT NULL,
  `no_spk` text NOT NULL,
  `asal` text NOT NULL,
  `tujuan` text NOT NULL,
  `nopol` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `realisasi_kuo`
--

INSERT INTO `realisasi_kuo` (`id`, `tgl_realisasi_kuo`, `no_bukti_kuo`, `jumlah`, `uraian`, `surat_jalan`, `no_spk`, `asal`, `tujuan`, `nopol`) VALUES
(1, '24/05/2018', '123/123', '10000', 'asdds', '123/123', '111/000/2018', 'saaa', 'dadadada', 'wassas'),
(5, '01/05/2018', '99000', '200000', 'test', '123/123', '111/000/2018', 'saaa', 'asasas', 'wassas'),
(6, '02/05/2018', '99000', '100000', 'test', '123/123', '111/000/2018', 'saaa', 'asasas', 'wassas'),
(7, '24/05/2018', '123/123', '10000', 'asdds', '444/555', '111/000', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `spk`
--

CREATE TABLE IF NOT EXISTS `spk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_spk` text NOT NULL,
  `no_proposal` text NOT NULL,
  `surlan` text NOT NULL,
  `tgl_spk_terbit` text NOT NULL,
  `tgl_spk_berakhir` text NOT NULL,
  `jangka_waktu` text NOT NULL,
  `asal` text NOT NULL,
  `tujuan` text NOT NULL,
  `jumlah_rit` text NOT NULL,
  `realisasi_rit` text NOT NULL,
  `harga_rit` text NOT NULL,
  `nilai_spk` text NOT NULL,
  `biaya` text NOT NULL,
  `laba_rugi` text NOT NULL,
  `pm` text NOT NULL,
  `id_customer` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `spk`
--

INSERT INTO `spk` (`id`, `no_spk`, `no_proposal`, `surlan`, `tgl_spk_terbit`, `tgl_spk_berakhir`, `jangka_waktu`, `asal`, `tujuan`, `jumlah_rit`, `realisasi_rit`, `harga_rit`, `nilai_spk`, `biaya`, `laba_rugi`, `pm`, `id_customer`) VALUES
(10, '111/000/2018', '88909', '909090', '20/05/2018', '23/05/2018', '3', 'Riau', 'Subang', '5', '7', '5000000', '25000000', '2300000', '2700000', '54', '1'),
(13, '111/000', '123453234', '', '25/05/2018', '05/05/2018', '2', 'subanag', 'jakarta', '2', '2', '90000', '180000', '100000', '80000', '44.444444444444', '2'),
(14, '12121', '--- Pilih No Proposal ---', '', '', '', '', '', '', '', '', '', '0', '', '0', '0', '3');

-- --------------------------------------------------------

--
-- Table structure for table `tb_proposal`
--

CREATE TABLE IF NOT EXISTS `tb_proposal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_proposal` text NOT NULL,
  `pemb_order` int(255) NOT NULL,
  `perusahaan` int(255) NOT NULL,
  `nm_pimpinan` int(255) NOT NULL,
  `alamat_perusahaan` int(255) NOT NULL,
  `npwp` int(255) NOT NULL,
  `no_kontrak` int(255) NOT NULL,
  `lingkup_kerja` int(255) NOT NULL,
  `jenis_kargo` int(255) NOT NULL,
  `party` int(255) NOT NULL,
  `nm_kapal` int(255) NOT NULL,
  `jangka_waktu_kerja` int(255) NOT NULL,
  `nilai_kontrak` int(255) NOT NULL,
  `uang_muka` int(255) NOT NULL,
  `tahap_1` int(255) NOT NULL,
  `tahap_2` int(255) NOT NULL,
  `tahap_3` int(255) NOT NULL,
  `toleransi_susut` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tb_proposal`
--

INSERT INTO `tb_proposal` (`id`, `no_proposal`, `pemb_order`, `perusahaan`, `nm_pimpinan`, `alamat_perusahaan`, `npwp`, `no_kontrak`, `lingkup_kerja`, `jenis_kargo`, `party`, `nm_kapal`, `jangka_waktu_kerja`, `nilai_kontrak`, `uang_muka`, `tahap_1`, `tahap_2`, `tahap_3`, `toleransi_susut`) VALUES
(1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_vendor`
--

CREATE TABLE IF NOT EXISTS `tb_vendor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nm_vendor` text NOT NULL,
  `alamat` text NOT NULL,
  `npwp` text NOT NULL,
  `nm_pimpinan` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tb_vendor`
--

INSERT INTO `tb_vendor` (`id`, `nm_vendor`, `alamat`, `npwp`, `nm_pimpinan`) VALUES
(1, 'adsdad', 'fdgdfgdf', 'hghjykyuk', 'kukuliuu'),
(2, '', 'asdasd', 'asdasd', 'asasdas');

-- --------------------------------------------------------

--
-- Table structure for table `truk`
--

CREATE TABLE IF NOT EXISTS `truk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nm_truk` text NOT NULL,
  `nopol` text NOT NULL,
  `nm_supir` text NOT NULL,
  `biaya` text NOT NULL,
  `pendapatan` text NOT NULL,
  `laba_rugi` text NOT NULL,
  `pm` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `truk`
--

INSERT INTO `truk` (`id`, `nm_truk`, `nopol`, `nm_supir`, `biaya`, `pendapatan`, `laba_rugi`, `pm`) VALUES
(3, 'BGR', 'T 5627 UE', 'koswara', '1210000', '24000000', '22790000', '94.958333333333');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
