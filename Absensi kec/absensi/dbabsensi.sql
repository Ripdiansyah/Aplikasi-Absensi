-- phpMyAdmin SQL Dump
-- version 3.1.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 14, 2015 at 07:42 PM
-- Server version: 5.1.30
-- PHP Version: 5.2.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbabsensi`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE IF NOT EXISTS `absensi` (
  `no` int(8) NOT NULL AUTO_INCREMENT,
  `nama` varchar(33) NOT NULL,
  `tanggal` date NOT NULL,
  `jenis` varchar(17) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`no`, `nama`, `tanggal`, `jenis`, `keterangan`) VALUES
(1, 'rikinn', '2015-06-14', 'Cuti', 'goo'),
(2, 'lulung', '2015-04-14', 'Izin', 'dipanggil bareskrim');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `user` varchar(26) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user`, `password`) VALUES
('riki', 'rikinn');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE IF NOT EXISTS `jabatan` (
  `id_jabatan` varchar(6) NOT NULL,
  `jabatan` varchar(35) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `jabatan`) VALUES
('J01', 'Divisi IT'),
('J02', 'Divisi Humas'),
('J03', 'Divisi Keamanan'),
('J04', 'Divisi Produksi'),
('J05', 'Divisi Gudang'),
('J06', 'Sekertaris Direktur');

-- --------------------------------------------------------

--
-- Table structure for table `jk`
--

CREATE TABLE IF NOT EXISTS `jk` (
  `id_jam` varchar(4) NOT NULL,
  `jam_masuk` time NOT NULL,
  `jam_kerja` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `jam_keluar` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jk`
--

INSERT INTO `jk` (`id_jam`, `jam_masuk`, `jam_kerja`, `jam_selesai`, `jam_keluar`) VALUES
('A', '07:00:00', '07:30:00', '14:00:00', '14:30:00'),
('B', '15:00:00', '15:30:00', '18:30:00', '19:00:00'),
('C', '21:00:00', '21:15:00', '02:00:00', '02:30:00'),
('D', '04:30:00', '04:45:00', '07:00:00', '07:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `kehadiran`
--

CREATE TABLE IF NOT EXISTS `kehadiran` (
  `no_rec` mediumint(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(20) NOT NULL,
  `tgl` date NOT NULL,
  `jmasuk` time NOT NULL,
  `jkeluar` time NOT NULL,
  `id_jam` varchar(3) NOT NULL,
  PRIMARY KEY (`no_rec`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `kehadiran`
--


-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE IF NOT EXISTS `pegawai` (
  `id_pegawai` varchar(5) NOT NULL,
  `nama` varchar(14) NOT NULL,
  `jabatan` varchar(25) NOT NULL,
  `id_jam_kerja` varchar(75) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama`, `jabatan`, `id_jam_kerja`) VALUES
('J001', 'jajang', 'Divisi Keamanan', 'B'),
('J002', 'rikinn', 'Divisi IT', 'A');
