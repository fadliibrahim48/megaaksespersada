-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 22, 2017 at 07:45 AM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `megaaksespersada`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang_keluar`
--

CREATE TABLE `barang_keluar` (
  `kd_barangkeluar` bigint(20) NOT NULL,
  `sn` varchar(99) NOT NULL,
  `mac` varchar(99) NOT NULL,
  `tanggal_keluar` varchar(20) DEFAULT NULL,
  `keperluan` text,
  `jumlah` int(10) DEFAULT NULL,
  `user` varchar(55) NOT NULL,
  `kd_barangmasuk` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `barang_keluar`
--

INSERT INTO `barang_keluar` (`kd_barangkeluar`, `sn`, `mac`, `tanggal_keluar`, `keperluan`, `jumlah`, `user`, `kd_barangmasuk`) VALUES
(1, '', '84:79:73:71:8c:2c', '2017-04-19', 'Instalasi', 1, 'Apolinaria S ', 1),
(2, '', '84:79:73:71:be:cb', '2017-04-19', 'Instalasi', 1, 'Beri Priansyah ', 1),
(3, '', '84:79:73:71:8c:f3', '2017-04-20', 'Instalasi', 1, 'Dwi Tama, ST', 1),
(4, '', '', '2017-04-06', 'Instalasi', 1, 'Amin ', 2),
(5, '', '', '2017-04-06', 'Instalasi', 1, 'Ariono Wijaya', 2),
(6, '', '', '2017-04-06', 'Instalasi', 75, 'Yeni Yanah', 3),
(7, '', '', '2017-04-06', 'Instalasi', 120, 'Amin ', 3),
(8, '', '', '2017-01-09', 'Instalasi', 100, ' A Yudi Saputra', 8),
(9, '', '', '2017-01-09', 'Instalasi', 2, ' A Yudi Saputra', 4),
(16, '', '84:79:73:71:ba:f9', '2017-01-09', 'Instalasi', 1, 'A Yudi Saputra', 1),
(17, '', '', '2017-01-09', 'Instalasi', 2, 'A Yudi Saputra', 5),
(18, '', '', '2017-01-09', 'Instalasi', 1, 'A Yudi Saputra', 2),
(19, '', '', '2017-01-09', 'Instalasi', 1, 'A Yudi Saputra', 9),
(20, '1601060922', '', '2017-01-04', 'Instalasi', 1, 'TIN-FS', 11),
(21, '1601060930', '', '2017-01-04', 'Instalasi', 1, 'TIN-FS', 11),
(23, '', '', '2017-03-02', 'Instalasi', 1, 'Dini', 10);

-- --------------------------------------------------------

--
-- Table structure for table `barang_masuk`
--

CREATE TABLE `barang_masuk` (
  `kd_barangmasuk` bigint(20) NOT NULL,
  `tanggal_masuk` varchar(20) DEFAULT NULL,
  `nama_barang` text,
  `stok` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `barang_masuk`
--

INSERT INTO `barang_masuk` (`kd_barangmasuk`, `tanggal_masuk`, `nama_barang`, `stok`) VALUES
(1, '2017-04-25', 'ONU BDCOM P1702-4F', 76),
(2, '2017-04-06', 'Roset (Complete Include Pig Tail)', 17),
(3, '2017-04-06', 'Drop Cable LSZH G.657A6', 9805),
(4, '2017-03-26', 'Tube Protector untuk SM1 (60 MM)', 98),
(5, '2017-03-25', 'Pigtail SC UPC', 98),
(6, '2017-03-24', 'Inverter', 50),
(7, '2017-03-09', 'ONU BDCOM P1004-C1', 9),
(8, '2017-03-06', 'Drop Cable LSZH G.657A2 ', 9900),
(9, '2017-01-25', 'Patch Cord SC - SC 3 Meter', 59),
(10, '2017-04-28', 'Battery 12 Volts, 100 Ah', 0),
(11, '2016-11-16', 'SFP WDM 10G 60KM', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gangguan`
--

CREATE TABLE `gangguan` (
  `kd_gangguan` bigint(20) NOT NULL,
  `kd_pelanggan` bigint(20) DEFAULT NULL,
  `tanggal_gangguan` varchar(20) DEFAULT NULL,
  `gangguan` text,
  `status` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gangguan`
--

INSERT INTO `gangguan` (`kd_gangguan`, `kd_pelanggan`, `tanggal_gangguan`, `gangguan`, `status`) VALUES
(6, 3, '2017-01-03', 'Modem Macet', 1),
(7, 11, '2017-01-03', 'Tidak Konek', 1),
(8, 10, '2017-08-10', 'Website ubk.kemdikbud.go.id tidak bisa diakses', 1),
(10, 29, '2017-08-14', 'Modem Tidak Konek', 1),
(11, 30, '2017-08-18', 'Macet Modemnyo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `instalasi`
--

CREATE TABLE `instalasi` (
  `kd_instalasi` bigint(20) NOT NULL,
  `kd_pelanggan` bigint(20) DEFAULT NULL,
  `tgl_request` varchar(20) DEFAULT NULL,
  `spk` varchar(33) NOT NULL,
  `tgl_instalasi` varchar(20) DEFAULT '-',
  `mskoneksi` varchar(33) NOT NULL,
  `spliterkoneksi` varchar(33) NOT NULL,
  `rxlevel` varchar(33) NOT NULL,
  `mac` varchar(33) NOT NULL,
  `status_instalasi` varchar(20) DEFAULT NULL,
  `kd_teknisi` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `instalasi`
--

INSERT INTO `instalasi` (`kd_instalasi`, `kd_pelanggan`, `tgl_request`, `spk`, `tgl_instalasi`, `mskoneksi`, `spliterkoneksi`, `rxlevel`, `mac`, `status_instalasi`, `kd_teknisi`) VALUES
(1, 1, '2017-01-05', 'WO17010027', '2017-01-05', 'PLG-02-MS15', 'PLG-02-MS15S03', '-19.2', '84:79:73:71:ba:71', 'active', 1),
(2, 2, '2017-01-05', 'WO17010037', '2017-01-05', 'PLG-02-MS17', 'PLG-02-MS17S01', '-22.2', '84:79:73:71:b9:7d', 'active', 1),
(3, 3, '2017-01-06', 'WO17010053', '2017-01-09', 'PLG-01-MS01', 'PLG-01-MS01S07', '-22.5', '84:79:73:71:ba:f9', 'active', 1),
(4, 4, '2017-01-10', 'WO17010095', '2017-01-11', 'PLG-01-MS13', 'PLG-04-MS03S08', '-20.6', '84:79:73:71:ba:7d', 'active', 2),
(5, 5, '2017-01-10', 'WO17000136', '2017-01-12', 'PLG-02-MS14', 'PLG-04-MS04S04', '-18.30', '84:79:73:71:be:e3', 'active', 3),
(6, 6, '2017-01-10', 'WO17010134', '2017-01-12', 'PLG-01-MS01', 'PLG-01-MS13S01', '-22.6', '84:79:73:71:ba:78', 'active', 1),
(7, 7, '2017-01-10', 'WO17010138', '2017-01-12', 'PLG-04-MS03', 'PLG-02-MS12S02', '-16.70', '84:79:73:71:ba:50', 'active', 3),
(8, 8, '2017-01-10', 'WO17010161', '2017-01-13', 'PLG-04-MS04', 'PLG-02-MS14S02', '-21', '84:79:73:71:ba:df', 'active', 1),
(9, 9, '2017-01-10', 'WO17010162', '2017-01-13', 'PLG-04-MS04', 'PLG-04-MS04S05', '-17.30', '84:79:73:71:b9:7b', 'active', 2),
(10, 10, '2017-01-11', 'WO17010156', '2017-01-13', 'PLG-02-MS12', 'PLG-01-MS01S07', '-21', '84:79:73:71:ba:3c', 'active', 1),
(11, 11, '2017-01-13', 'WO17010164', '2017-01-14', 'PLG-01-MS06', 'PLG-01-MS06S08', '-19.10', '84:79:73:71:bf:57', 'active', 3),
(12, 15, '2017-01-13', 'WO17010163', '2017-01-16', 'PLG-01-MS08', 'PLG-01-MS08S02', '-18.50', '84:79:73:71:be:a3', 'active', 3),
(13, 20, '2017-01-13', 'WO17010186', '2017-01-16', 'PLG-02-MS15', 'PLG-02-MS15S01', '-18.40', '84:79:73:71:b9:cc', 'active', 3),
(21, 26, '2017-08-10', 'WO17010190', '2017-01-16', 'JB48-PLG-01-MS08', 'JB48-PLG-01-MS08S01', '-17.10', '84:79:73:71:b9:89', 'active', 2),
(22, 27, '2017-08-11', 'Wo123', '2017-11-03', 'PLG-01-MS03', 'PLG-01-MS03S06', '-23.8', '84:79:73:71:ba:08', 'active', 1),
(24, 29, '2017-08-14', 'WO17010192', '2017-09-02', '', '', '', '', 'proses instalasi', 3),
(25, 30, '2017-08-18', 'WO123', '2017-12-12', 'PLG123', 'PLG321', '12', '84:79:73:71:b9:88', 'active', 1);

-- --------------------------------------------------------

--
-- Table structure for table `isp`
--

CREATE TABLE `isp` (
  `kd_isp` int(33) NOT NULL,
  `nama_isp` varchar(33) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `isp`
--

INSERT INTO `isp` (`kd_isp`, `nama_isp`) VALUES
(1, 'CBN'),
(2, 'Indomaret'),
(3, 'IM2');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance`
--

CREATE TABLE `maintenance` (
  `kd_maintenance` bigint(20) NOT NULL,
  `kd_pelanggan` bigint(20) DEFAULT NULL,
  `kd_gangguan` bigint(3) NOT NULL,
  `tgl_maintenance` varchar(20) DEFAULT '-',
  `tingkat` varchar(99) NOT NULL,
  `klasifikasi` varchar(33) NOT NULL,
  `caseproblem` varchar(33) NOT NULL,
  `solvedproblem` varchar(88) NOT NULL,
  `alarmtimeclear` varchar(33) NOT NULL,
  `kd_teknisi` int(4) NOT NULL,
  `tgl_selesai` varchar(20) DEFAULT '-',
  `status_maintenance` varchar(20) DEFAULT 'dalam proses'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `maintenance`
--

INSERT INTO `maintenance` (`kd_maintenance`, `kd_pelanggan`, `kd_gangguan`, `tgl_maintenance`, `tingkat`, `klasifikasi`, `caseproblem`, `solvedproblem`, `alarmtimeclear`, `kd_teknisi`, `tgl_selesai`, `status_maintenance`) VALUES
(7, 3, 6, '2017-01-03', 'Urgent / BB', 'Switch Problem', 'Switch Hang', 'Restart Switch TIN', '13:30', 1, '2017-01-03', 'selesai'),
(8, 11, 7, '2017-01-04', 'Low / Akses', 'Drop Fiber Problem', 'Pigtail terjepit di roset', 'Pigtail di roset terjepit dan dijoin ulang', '09:30', 2, '2017-08-10', 'selesai'),
(9, 10, 8, '2017-02-08', 'Low / Akses', 'Mitra ISP Problem', 'Website ubk.kemdikbud.go.id tidak', 'Dari ISP Moratel coba ganti IP Public bisa', '13:00', 3, '2017-08-10', 'selesai'),
(11, 29, 10, '2017-08-15', '', '', '', '', '', 3, '-', 'dalam proses'),
(12, 30, 11, '2017-12-12', 'Urgent / BB', 'PLN Problem', '123', 'asd', '00:00', 3, '2017-08-18', 'selesai');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `kd_pelanggan` bigint(20) NOT NULL,
  `nama_pelanggan` varchar(64) DEFAULT NULL,
  `alamat` text,
  `no_telp` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `brandwith` varchar(64) DEFAULT NULL,
  `kd_isp` varchar(20) DEFAULT NULL,
  `layanan` varchar(10) NOT NULL,
  `status` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`kd_pelanggan`, `nama_pelanggan`, `alamat`, `no_telp`, `email`, `brandwith`, `kd_isp`, `layanan`, `status`) VALUES
(1, 'Rudi Darman Adil', 'Jl Sukabangun 2, No.60 Rt.069 RW.009 Kel.Sukajaya Kec.Sukarami\r\n', '082176663340', 'rudi@gmail.com', '25 mbps', '1', 'FTTx', 2),
(2, 'Abda Arif', 'DaVinci Village, Jl Sukabangun II Blok Athena No.16\r\n', '085267117646', 'abda@gmail.com', '25 mbps', '1', 'FTTx', 2),
(3, 'A Yudi Saputra', 'PU Pengairan Lt.3 Jl Kapten Anwar Sastro No.1250 Kel. Sei Pangeran Kec.Ilir Timur 1 Palembang\r\n', '08127813009', 'yudi@gmail.com', '15 mbps', '1', 'FTTx', 2),
(4, 'Arnes Anwar', 'Jl Letkol Iskandar No. 475 (Samping Hotel Wisata) Kel.15 Kec.IT1', '0811667576', 'arnes@gmail.com', '15 mbps', '1', 'FTTx', 2),
(5, 'Youngky Wibowo Irawan', 'Jl Sukabangun 2 KM.6 No.1585 RT.026/004 Palembang\r\n', '081368972888', 'irawan@gmail.com', '15 mbps', '1', 'FTTx', 2),
(6, 'Hendra', 'Dinas PU Pengairan Jl. Kapten Anwar Sastro No.1251\r\n', '08127153000', 'hendra@gmail.com', '15 mbps', '1', 'FTTx', 2),
(7, 'TP4N IDM Soekarno Hatta', 'Jl Soekarno Hatta Kel.Karya Baru Kec.Alang-Alang Lebar\r\n', '082177263206', 'tp4nidm@gmail.com', '5 mbps', '2', 'Netlink', 2),
(8, 'TS00 IDM Maskarebet 1', 'Jl Ahmad Dahlan\r\n', '082177263206', 'ts00idm@gmail.com', '5 mbps', '2', 'Netlink', 2),
(9, 'FD12 IDM Maskarebet 2', 'Jl Maskarebet Alang-Alang Lebar Talang Kelapa\r\n', '082177263206', 'fd12@gmail.com', '5 mbps', '2', 'Netlink', 2),
(10, 'Teddy Sucipto', 'Jl Residen HA Rozak (Patal - Pusri) No.01 (Depan Kedamaian)\r\n', '085100022769', 'teddysucipto@gmail.com', '15 mbps', '1', 'FTTx', 2),
(11, 'T8P4 IDM Pangeran Antasari 2', 'Jl Pangeran Antasari Palembang\r\n', '082177263206', 't8p4idm@gmail.com', '5 mbps', '2', 'Netlink', 2),
(15, 'TPEH IDM Lapangan Hatta', 'Jl Taman Siswa Kelurahan 20 Ilir Timur 1 Palembang Sumsel\r\n', '082177263206', 'tpehidm@gmail.com', '5 mbps', '2', 'Netlink', 2),
(20, 'Laiuw Giok Swan', 'Jl Sukabangun 2 (Sebelah SMP 46) Kel.Sukabangun Kec.Sukarami\r\n', '0711373703', 'laiuw@gmail.com', '15 mbps', '1', 'FTTx', 2),
(26, 'Thomas Dragono', 'Jl KS Tubun No.388 Kel.8 Ilir Kec.IT 2 Palembang\r\n', '085273760658', 'thomas@gmail.com', '15 mbps', '1', 'FTTx', 2),
(27, 'ichsan', 'kenten', '071140052', 'ichsan@gmail.com', '5 mbps', '1', 'FTTx', 2),
(29, 'Dini Hari Pertiwi', 'Pakjo', '085764936435', 'dini@gmail.com', '15 mbps', '1', 'FTTx', 1),
(30, 'Reli Afriadi', 'Ariodillah', '085764231425', 'reli@gmail.com', '10 mbps', '2', 'FTTx', 2);

-- --------------------------------------------------------

--
-- Table structure for table `permohonan`
--

CREATE TABLE `permohonan` (
  `kd_permohonan` bigint(20) NOT NULL,
  `pemohon` bigint(20) DEFAULT NULL,
  `tgl_request` varchar(20) DEFAULT NULL,
  `status` varchar(36) DEFAULT 'menunggu survey'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permohonan`
--

INSERT INTO `permohonan` (`kd_permohonan`, `pemohon`, `tgl_request`, `status`) VALUES
(1, 1, '05/01/2017', 'disetujui'),
(2, 2, '05/01/2017', 'disetujui'),
(3, 3, '06/01/2017', 'disetujui'),
(4, 4, '10/01/2017', 'disetujui'),
(5, 5, '10/01/2017\n', 'disetujui'),
(6, 6, '10/01/2017\n', 'disetujui'),
(7, 7, '10/01/2017\n', 'disetujui'),
(8, 8, '10/01/2017\n', 'disetujui'),
(9, 9, '10/01/2017\n', 'disetujui'),
(10, 10, '11/01/2017\n', 'disetujui'),
(11, 11, '13/01/2017\n', 'disetujui'),
(16, 15, '13/01/2017\n', 'disetujui'),
(20, 20, '13/01/2017\n', 'disetujui'),
(26, 26, '10/08/2017', 'disetujui'),
(27, 27, '11/08/2017', 'disetujui'),
(29, 29, '14/08/2017', 'disetujui'),
(30, 30, '17/08/2017', 'disetujui');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id_role` tinyint(4) NOT NULL,
  `role` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id_role`, `role`) VALUES
(1, 'admin'),
(2, 'tim_leader'),
(3, 'pelanggan'),
(4, 'direktur'),
(5, 'teknisi');

-- --------------------------------------------------------

--
-- Table structure for table `survey`
--

CREATE TABLE `survey` (
  `kd_survey` bigint(20) NOT NULL,
  `pelanggan` bigint(20) DEFAULT NULL,
  `jarak_spilter` varchar(20) DEFAULT NULL,
  `keterangan` text,
  `kd_permohonan` bigint(20) DEFAULT NULL,
  `status` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `survey`
--

INSERT INTO `survey` (`kd_survey`, `pelanggan`, `jarak_spilter`, `keterangan`, `kd_permohonan`, `status`) VALUES
(1, 1, '130m\n', 'Layak', 1, 'survey telah dilaksanakan'),
(2, 2, '121m', 'Layak', 2, 'survey telah dilaksanakan'),
(3, 3, '130m', 'Layak', 3, 'survey telah dilaksanakan'),
(4, 4, '190m', 'Layak', 4, 'survey telah dilaksanakan'),
(5, 5, '340m', 'Layak', 5, 'survey telah dilaksanakan'),
(6, 6, '300m', 'Layak', 6, 'survey telah dilaksanakan'),
(7, 7, '230m', 'Layak', 7, 'survey telah dilaksanakan'),
(8, 8, '70m', 'Layak', 8, 'survey telah dilaksanakan'),
(9, 9, '150m', 'Layak', 9, 'survey telah dilaksanakan'),
(10, 10, '178m', 'Layak', 10, 'survey telah dilaksanakan'),
(11, 11, '120m', 'Layak', 11, 'survey telah dilaksanakan'),
(16, 15, '320m', 'Layak', 16, 'survey telah dilaksanakan'),
(19, 20, '310m', 'Layak', 20, 'survey telah dilaksanakan'),
(25, 26, '120m', 'Layak', 26, 'survey telah dilaksanakan'),
(26, 27, '130m', 'layak', 27, 'survey telah dilaksanakan'),
(28, 29, '150m', 'layak', 29, 'survey telah dilaksanakan'),
(29, 30, '120m', 'Layak', 30, 'survey telah dilaksanakan');

-- --------------------------------------------------------

--
-- Table structure for table `teknisi`
--

CREATE TABLE `teknisi` (
  `kd_teknisi` tinyint(4) NOT NULL,
  `nama_teknisi` varchar(255) DEFAULT NULL,
  `tempat_lahir` varchar(20) DEFAULT NULL,
  `tanggal_lahir` varchar(20) DEFAULT NULL,
  `alamat` text,
  `telp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teknisi`
--

INSERT INTO `teknisi` (`kd_teknisi`, `nama_teknisi`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`) VALUES
(1, 'Ari Susanto', 'Palembang', '1996-06-01', 'Jl. Patra Tani Kec Indralaya Utara Kab. Ogan Ilir Sumsel 60223', '082280940093'),
(2, 'Ridho Hartoyo', 'Palembang', '1988-03-10', 'Jl. Dr. M. Isa No. 9 RT. 026/007', '085609026230'),
(3, 'Viktor Siagian', 'Palembang', '1992-02-27', 'Jl. Demang Lebar Daun No. 34', '085273179611');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `id_role` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `id_role`) VALUES
('abda@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 3),
('admin', '21232f297a57a5a743894a0e4a801fc3', 1),
('ari', 'e10adc3949ba59abbe56e057f20f883e', 5),
('arnes@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 3),
('dini@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 3),
('direktur', '4fbfd324f5ffcdff5dbf6f019b02eca8', 4),
('fd12@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 3),
('hendra@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 3),
('ichsan@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 3),
('irawan@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 3),
('laiuw@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 3),
('leader', 'c444858e0aaeb727da73d2eae62321ad', 2),
('reli@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 3),
('rudi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 3),
('t8p4idm@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 3),
('teddysucipto@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 3),
('thomas@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 3),
('tp4nidm@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 3),
('tpehidm@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 3),
('ts00idm@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 3),
('yudi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD PRIMARY KEY (`kd_barangkeluar`),
  ADD KEY `fk_kdbarangmasuk` (`kd_barangmasuk`);

--
-- Indexes for table `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD PRIMARY KEY (`kd_barangmasuk`);

--
-- Indexes for table `gangguan`
--
ALTER TABLE `gangguan`
  ADD PRIMARY KEY (`kd_gangguan`),
  ADD KEY `fk_kd_pelanggan` (`kd_pelanggan`);

--
-- Indexes for table `instalasi`
--
ALTER TABLE `instalasi`
  ADD PRIMARY KEY (`kd_instalasi`),
  ADD KEY `fk_kdpelanggan` (`kd_pelanggan`),
  ADD KEY `fk_teknisi` (`kd_teknisi`);

--
-- Indexes for table `isp`
--
ALTER TABLE `isp`
  ADD PRIMARY KEY (`kd_isp`);

--
-- Indexes for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD PRIMARY KEY (`kd_maintenance`),
  ADD KEY `fk_kd_pelanggan2` (`kd_pelanggan`),
  ADD KEY `kd_teknisi` (`kd_teknisi`),
  ADD KEY `kd_gangguan` (`kd_gangguan`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`kd_pelanggan`),
  ADD KEY `fk_email` (`email`),
  ADD KEY `kd_isp` (`kd_isp`);

--
-- Indexes for table `permohonan`
--
ALTER TABLE `permohonan`
  ADD PRIMARY KEY (`kd_permohonan`),
  ADD KEY `fk_pemohon` (`pemohon`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `survey`
--
ALTER TABLE `survey`
  ADD PRIMARY KEY (`kd_survey`),
  ADD KEY `fk_pelanggan` (`pelanggan`),
  ADD KEY `fk_permohonan` (`kd_permohonan`);

--
-- Indexes for table `teknisi`
--
ALTER TABLE `teknisi`
  ADD PRIMARY KEY (`kd_teknisi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`),
  ADD KEY `fk_role` (`id_role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  MODIFY `kd_barangkeluar` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `barang_masuk`
--
ALTER TABLE `barang_masuk`
  MODIFY `kd_barangmasuk` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `gangguan`
--
ALTER TABLE `gangguan`
  MODIFY `kd_gangguan` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `instalasi`
--
ALTER TABLE `instalasi`
  MODIFY `kd_instalasi` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `isp`
--
ALTER TABLE `isp`
  MODIFY `kd_isp` int(33) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `maintenance`
--
ALTER TABLE `maintenance`
  MODIFY `kd_maintenance` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `kd_pelanggan` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `permohonan`
--
ALTER TABLE `permohonan`
  MODIFY `kd_permohonan` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id_role` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `survey`
--
ALTER TABLE `survey`
  MODIFY `kd_survey` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `teknisi`
--
ALTER TABLE `teknisi`
  MODIFY `kd_teknisi` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD CONSTRAINT `fk_kdbarangmasuk` FOREIGN KEY (`kd_barangmasuk`) REFERENCES `barang_masuk` (`kd_barangmasuk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gangguan`
--
ALTER TABLE `gangguan`
  ADD CONSTRAINT `fk_kd_pelanggan` FOREIGN KEY (`kd_pelanggan`) REFERENCES `pelanggan` (`kd_pelanggan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `instalasi`
--
ALTER TABLE `instalasi`
  ADD CONSTRAINT `fk_kdpelanggan` FOREIGN KEY (`kd_pelanggan`) REFERENCES `pelanggan` (`kd_pelanggan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_teknisi` FOREIGN KEY (`kd_teknisi`) REFERENCES `teknisi` (`kd_teknisi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD CONSTRAINT `fk_kd_pelanggan2` FOREIGN KEY (`kd_pelanggan`) REFERENCES `pelanggan` (`kd_pelanggan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD CONSTRAINT `fk_email` FOREIGN KEY (`email`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permohonan`
--
ALTER TABLE `permohonan`
  ADD CONSTRAINT `fk_pemohon` FOREIGN KEY (`pemohon`) REFERENCES `pelanggan` (`kd_pelanggan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `survey`
--
ALTER TABLE `survey`
  ADD CONSTRAINT `fk_pelanggan` FOREIGN KEY (`pelanggan`) REFERENCES `pelanggan` (`kd_pelanggan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_permohonan` FOREIGN KEY (`kd_permohonan`) REFERENCES `permohonan` (`kd_permohonan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_role` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
