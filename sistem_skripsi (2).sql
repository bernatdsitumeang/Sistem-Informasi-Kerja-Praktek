-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 29, 2021 at 03:53 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_skripsi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `Password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `Password`) VALUES
(0, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `ideskripsi`
--

DROP TABLE IF EXISTS `ideskripsi`;
CREATE TABLE IF NOT EXISTS `ideskripsi` (
  `IDIde` bigint(20) NOT NULL,
  `IDIdeMahasiswa` bigint(20) NOT NULL,
  `JudulIde` varchar(100) NOT NULL,
  `DeskripsiIde` text NOT NULL,
  `TanggalIde` varchar(30) NOT NULL,
  PRIMARY KEY (`IDIde`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

DROP TABLE IF EXISTS `jurusan`;
CREATE TABLE IF NOT EXISTS `jurusan` (
  `IDJurusan` bigint(20) NOT NULL,
  `Jurusan` varchar(30) NOT NULL,
  PRIMARY KEY (`IDJurusan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`IDJurusan`, `Jurusan`) VALUES
(1, 'Sistem Informasi'),
(2, 'Teknik Informatika');

-- --------------------------------------------------------

--
-- Table structure for table `kartubimbingan`
--

DROP TABLE IF EXISTS `kartubimbingan`;
CREATE TABLE IF NOT EXISTS `kartubimbingan` (
  `IDKartu` int(11) NOT NULL AUTO_INCREMENT,
  `IDKartuMahasiswa` bigint(30) NOT NULL,
  `IDDosenPembimbing` varchar(30) NOT NULL,
  `Catatan` text NOT NULL,
  `TanggalBimbingan` date NOT NULL,
  PRIMARY KEY (`IDKartu`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kartubimbingan`
--

INSERT INTO `kartubimbingan` (`IDKartu`, `IDKartuMahasiswa`, `IDDosenPembimbing`, `Catatan`, `TanggalBimbingan`) VALUES
(24, 19030, '1345', 'BAB 1 ACC', '2021-12-13'),
(25, 19030, '1345', 'Proposal ACC', '2021-12-13'),
(26, 19030, '1345', 'Seminar Sudah acc silahkan tunggu jadwal kegiatan seminar dari prodi', '2021-12-13'),
(27, 19009, '1345', 'BAB 1 ACC', '2021-12-13'),
(28, 19009, '1345', 'Proposal ACC', '2021-12-13'),
(29, 19009, '1345', 'mantap sekali', '2021-12-29'),
(30, 19009, '1345', 'bab 1 acc', '2021-12-29'),
(31, 19009, '1345', 'ganteng kali si saing', '2021-12-29');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

DROP TABLE IF EXISTS `kegiatan`;
CREATE TABLE IF NOT EXISTS `kegiatan` (
  `IDKegiatan` int(11) NOT NULL AUTO_INCREMENT,
  `IDUsers` bigint(20) NOT NULL,
  `Kegiatan` varchar(100) NOT NULL,
  `Tempat` varchar(100) NOT NULL,
  `JamKegiatan` time NOT NULL,
  `TanggalKegiatan` date NOT NULL,
  `Finish` tinyint(1) NOT NULL,
  PRIMARY KEY (`IDKegiatan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `konsentrasi`
--

DROP TABLE IF EXISTS `konsentrasi`;
CREATE TABLE IF NOT EXISTS `konsentrasi` (
  `IDKonsentrasi` int(11) NOT NULL AUTO_INCREMENT,
  `IDJurusanKsn` int(11) NOT NULL,
  `IDDosen` bigint(20) NOT NULL,
  `Konsentrasi` varchar(40) NOT NULL,
  PRIMARY KEY (`IDKonsentrasi`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konsentrasi`
--

INSERT INTO `konsentrasi` (`IDKonsentrasi`, `IDJurusanKsn`, `IDDosen`, `Konsentrasi`) VALUES
(1, 1, 1234, 'pemograman'),
(3, 1, 1456, 'analisis'),
(50, 2, 0, 'Program');

-- --------------------------------------------------------

--
-- Table structure for table `notifikasi`
--

DROP TABLE IF EXISTS `notifikasi`;
CREATE TABLE IF NOT EXISTS `notifikasi` (
  `IDNotifikasi` int(11) NOT NULL AUTO_INCREMENT,
  `Notifikasi` varchar(300) NOT NULL,
  `Catatan` text NOT NULL,
  `TanggalNotifikasi` varchar(40) NOT NULL,
  `IDPenerima` bigint(20) NOT NULL,
  `IDPengirim` bigint(20) NOT NULL,
  `StatusNotifikasi` text NOT NULL,
  PRIMARY KEY (`IDNotifikasi`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifikasi`
--

INSERT INTO `notifikasi` (`IDNotifikasi`, `Notifikasi`, `Catatan`, `TanggalNotifikasi`, `IDPenerima`, `IDPengirim`, `StatusNotifikasi`) VALUES
(79, 'Sistem Informasi Absensi', 'Anda Di Tetapkan Sebagai Dosen Pembimbing topik Anda sekarang bisa mengacc proposal Kerja Praktek topik dan juga menambah kartu bimbingan untuk mahasiswa tersebut Anda ditetapkan sebagai pembimbing ke 1', '2021-12-13', 1345, 1234, 'Informasi'),
(80, 'Sistem Informasi Absensi', 'baguss', '2021-12-13', 19030, 1234, 'Diterima'),
(81, 'Proposal Sistem Informasi Absensi Telah Di ACC', 'Proposal Telah Di ACC Oleh : <br>Andang Wijanarko Sebagai Pembimbing 1', '2021-12-13', 19030, 1345, 'Proposal'),
(83, 'Sistem Informasi Kepegawaian', 'Anda Di Tetapkan Sebagai Dosen Pembimbing Bernatd Situmeang Anda sekarang bisa mengacc proposal Kerja Praktek Bernatd Situmeang dan juga menambah kartu bimbingan untuk mahasiswa tersebut Anda ditetapkan sebagai pembimbing ke 1', '2021-12-13', 1345, 1234, 'Informasi'),
(84, 'Sistem Informasi Kepegawaian', 'baguss', '2021-12-13', 19009, 1234, 'Diterima'),
(85, 'Proposal Sistem Informasi KepegawaianSeminar Telah Di ACC', 'Proposal Telah Di ACC Oleh : <br>Andang Wijanarko Sebagai Pembimbing 1', '2021-12-13', 19009, 1345, 'Proposal'),
(87, 'Kegiatan Seminar Kerja Praktek Telah Ditetapkan', 'Dimohon Persiapkan diri Pada : <br> <i class=\"fas fa-clock mr-auto\"></i>  22:50<br> <i class=\"fas fa-map-marker mr-auto\"></i>  GSG<br> <i class=\"fas fa-calendar-alt\"></i> Rabu, 15 Desember 2021', '2021-12-13', 19009, 1234, 'Seminar Kerja Praktek'),
(88, 'Kegiatan Seminar Kerja Praktek Telah Ditetapkan', 'Dimohon Persiapkan diri Pada : <br> <i class=\"fas fa-clock mr-auto\"></i>  22:50<br> <i class=\"fas fa-map-marker mr-auto\"></i>  GSG<br> <i class=\"fas fa-calendar-alt\"></i> Rabu, 15 Desember 2021', '2021-12-13', 0, 1234, 'Seminar Kerja Praktek'),
(89, 'Kegiatan Seminar Kerja Praktek Telah Ditetapkan', 'Dimohon Persiapkan diri Pada : <br> <i class=\"fas fa-clock mr-auto\"></i>  03:05<br> <i class=\"fas fa-map-marker mr-auto\"></i>  GSG<br> <i class=\"fas fa-calendar-alt\"></i> Sabtu, 18 Desember 2021', '2021-12-17', 19030, 1234, 'Seminar Kerja Praktek'),
(90, 'Kegiatan Seminar Kerja Praktek Telah Ditetapkan', 'Dimohon Persiapkan diri Pada : <br> <i class=\"fas fa-clock mr-auto\"></i>  03:05<br> <i class=\"fas fa-map-marker mr-auto\"></i>  GSG<br> <i class=\"fas fa-calendar-alt\"></i> Sabtu, 18 Desember 2021', '2021-12-17', 0, 1234, 'Seminar Kerja Praktek'),
(91, 'Kegiatan Seminar Kerja Praktek Telah Ditetapkan', 'Dimohon Persiapkan diri Pada : <br> <i class=\"fas fa-clock mr-auto\"></i>  13:05<br> <i class=\"fas fa-map-marker mr-auto\"></i>  GSG<br> <i class=\"fas fa-calendar-alt\"></i> Kamis, 23 Desember 2021', '2021-12-21', 19030, 1234, 'Seminar Kerja Praktek'),
(92, 'Kegiatan Seminar Kerja Praktek Telah Ditetapkan', 'Dimohon Persiapkan diri Pada : <br> <i class=\"fas fa-clock mr-auto\"></i>  13:05<br> <i class=\"fas fa-map-marker mr-auto\"></i>  GSG<br> <i class=\"fas fa-calendar-alt\"></i> Kamis, 23 Desember 2021', '2021-12-21', 0, 1234, 'Seminar Kerja Praktek'),
(93, 'Sistem Informasi Cari Jodoh', 'Anda Di Tetapkan Sebagai Dosen Pembimbing Yela Emelia Olva Anda sekarang bisa mengacc proposal Kerja Praktek Yela Emelia Olva dan juga menambah kartu bimbingan untuk mahasiswa tersebut Anda ditetapkan sebagai pembimbing ke 1', '2021-12-22', 1345, 1234, 'Informasi'),
(94, 'Sistem Informasi Cari Jodoh', 'mantap jomblo ya?', '2021-12-22', 19003, 1234, 'Diterima'),
(95, ' Sistem Informasi Cari Jodoh Proposal Telah Di ACC', 'Proposal Telah Di ACC Oleh : <br>Andang Wijanarko Sebagai Pembimbing 1', '2021-12-22', 19003, 1345, 'Proposal'),
(96, 'sistem kp', 'Anda Di Tetapkan Sebagai Dosen Pembimbing hamid Anda sekarang bisa mengacc proposal Kerja Praktek hamid dan juga menambah kartu bimbingan untuk mahasiswa tersebut Anda ditetapkan sebagai pembimbing ke 1', '2021-12-22', 1345, 1234, 'Informasi'),
(97, 'sistem kp', 'baguss', '2021-12-22', 19019, 1234, 'Diterima'),
(98, ' sistem kp Proposal Telah Di ACC', 'Proposal Telah Di ACC Oleh : <br>Andang Wijanarko Sebagai Pembimbing 1', '2021-12-22', 19019, 1345, 'Proposal'),
(99, ' sistem kp Proposal Telah Di ACC', 'Skripsi Telah Di ACC Oleh : <br>Andang Wijanarko Sebagai Pembimbing 1', '2021-12-22', 19019, 1345, 'Skripsi'),
(100, 'Kegiatan Seminar Kerja Praktek Telah Ditetapkan', 'Dimohon Persiapkan diri Pada : <br> <i class=\"fas fa-clock mr-auto\"></i>  13:05<br> <i class=\"fas fa-map-marker mr-auto\"></i>  GSG<br> <i class=\"fas fa-calendar-alt\"></i> Kamis, 23 Desember 2021', '2021-12-22', 19009, 1234, 'Seminar Kerja Praktek'),
(101, 'Kegiatan Seminar Kerja Praktek Telah Ditetapkan', 'Dimohon Persiapkan diri Pada : <br> <i class=\"fas fa-clock mr-auto\"></i>  13:05<br> <i class=\"fas fa-map-marker mr-auto\"></i>  GSG<br> <i class=\"fas fa-calendar-alt\"></i> Kamis, 23 Desember 2021', '2021-12-22', 0, 1234, 'Seminar Kerja Praktek'),
(102, 'Kegiatan Seminar Kerja Praktek Telah Ditetapkan', 'Dimohon Persiapkan diri Pada : <br> <i class=\"fas fa-clock mr-auto\"></i>  13:05<br> <i class=\"fas fa-map-marker mr-auto\"></i>  GSG<br> <i class=\"fas fa-calendar-alt\"></i> Kamis, 23 Desember 2021', '2021-12-22', 0, 1234, 'Seminar Kerja Praktek'),
(104, 'Kegiatan Seminar Kerja Praktek Telah Ditetapkan', 'Dimohon Persiapkan diri Pada : <br> <i class=\"fas fa-clock mr-auto\"></i>  13:05<br> <i class=\"fas fa-map-marker mr-auto\"></i>  Aula FT<br> <i class=\"fas fa-calendar-alt\"></i> Kamis, 30 Desember 2021', '2021-12-29', 0, 1234, 'Seminar Kerja Praktek'),
(105, 'Kegiatan Seminar Kerja Praktek Telah Ditetapkan', 'Dimohon Persiapkan diri Pada : <br> <i class=\"fas fa-clock mr-auto\"></i>  13:05<br> <i class=\"fas fa-map-marker mr-auto\"></i>  Aula FT<br> <i class=\"fas fa-calendar-alt\"></i> Kamis, 30 Desember 2021', '2021-12-29', 0, 1234, 'Seminar Kerja Praktek'),
(106, 'Kegiatan Seminar Kerja Praktek Telah Ditetapkan', 'Dimohon Persiapkan diri Pada : <br> <i class=\"fas fa-clock mr-auto\"></i>  13:05<br> <i class=\"fas fa-map-marker mr-auto\"></i>  Aula FT<br> <i class=\"fas fa-calendar-alt\"></i> Kamis, 30 Desember 2021', '2021-12-29', 0, 1234, 'Seminar Kerja Praktek');

-- --------------------------------------------------------

--
-- Table structure for table `pembimbing`
--

DROP TABLE IF EXISTS `pembimbing`;
CREATE TABLE IF NOT EXISTS `pembimbing` (
  `IDPembimbing` int(11) NOT NULL AUTO_INCREMENT,
  `IDDosenPmb` bigint(20) NOT NULL,
  `IDSkripsiPmb` int(11) NOT NULL,
  `StatusProposal` tinyint(1) NOT NULL,
  `StatusSkripsi` tinyint(1) NOT NULL,
  `StatusPembimbing` tinyint(1) NOT NULL,
  PRIMARY KEY (`IDPembimbing`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembimbing`
--

INSERT INTO `pembimbing` (`IDPembimbing`, `IDDosenPmb`, `IDSkripsiPmb`, `StatusProposal`, `StatusSkripsi`, `StatusPembimbing`) VALUES
(26, 1345, 1639419601, 1, 1, 1),
(27, 1345, 1639421655, 1, 1, 1),
(28, 1345, 1640151845, 1, 0, 1),
(29, 1345, 1640153355, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `skripsi`
--

DROP TABLE IF EXISTS `skripsi`;
CREATE TABLE IF NOT EXISTS `skripsi` (
  `IDSkripsi` int(20) NOT NULL,
  `IDMahasiswaSkripsi` bigint(20) NOT NULL,
  `JudulSkripsi` varchar(200) NOT NULL,
  `QRCode` varchar(100) NOT NULL,
  `FileProposal` varchar(100) NOT NULL,
  `FileSkripsi` varchar(100) NOT NULL,
  `Uploader` bigint(20) DEFAULT NULL,
  `Deskripsi` text NOT NULL,
  `Tanggal` date NOT NULL,
  `Nilai` int(100) NOT NULL,
  PRIMARY KEY (`IDSkripsi`),
  KEY `nim_mhs_skripsi` (`IDMahasiswaSkripsi`),
  KEY `uploader` (`Uploader`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skripsi`
--

INSERT INTO `skripsi` (`IDSkripsi`, `IDMahasiswaSkripsi`, `JudulSkripsi`, `QRCode`, `FileProposal`, `FileSkripsi`, `Uploader`, `Deskripsi`, `Tanggal`, `Nilai`) VALUES
(1639419601, 19030, 'Sistem Informasi Absensi', '19030.png', '19030.pdf', '', 1345, 'Hi, Teman !!! Saat ini tidak ada ide untuk Kerja Praktek yang sedang dalam proses !! silahkan ajukan ide KP selengkap dan sebagus mungkin ya !! isi form di sebelah kiri untuk mengajukan ide KP yang ingin kamu ajukan ! kamu bisa mengajukan ide KP sebanyak mungkin ! tetap semangat ya teman.', '2021-12-13', 0),
(1639421655, 19009, 'Sistem Informasi Kepegawaian', '19009.png', '19009.pdf', '', 1345, 'Hi, Teman !!! Saat ini tidak ada ide untuk Kerja Praktek yang sedang dalam proses !! silahkan ajukan ide KP selengkap dan sebagus mungkin ya !! isi form di sebelah kiri untuk mengajukan ide KP yang ingin kamu ajukan ! kamu bisa mengajukan ide KP sebanyak mungkin ! tetap semangat ya teman.', '2021-12-13', 0),
(1640151845, 19003, 'Sistem Informasi Cari Jodoh', '19003.png', '', '', NULL, 'Hi, Teman !!! Saat ini tidak ada ide untuk Kerja Praktek yang sedang dalam proses !! silahkan ajukan ide KP selengkap dan sebagus mungkin ya !! isi form di sebelah kiri untuk mengajukan ide KP yang ingin kamu ajukan ! kamu bisa mengajukan ide KP sebanyak mungkin ! tetap semangat ya teman.', '2021-12-22', 0),
(1640153355, 19019, 'sistem kp', '19019.png', '', '', NULL, 'Hi, Teman !!! Saat ini tidak ada ide untuk Kerja Praktek yang sedang dalam proses !! silahkan ajukan ide KP selengkap dan sebagus mungkin ya !! isi form di sebelah kiri untuk mengajukan ide KP yang ingin kamu ajukan ! kamu bisa mengajukan ide KP sebanyak mungkin ! tetap semangat ya teman.', '2021-12-22', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
CREATE TABLE IF NOT EXISTS `tokens` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `token`, `user_id`, `created`) VALUES
(1, 'a04ad6c2619f73f3814556b424c374', 0, '2021-12-12'),
(2, '38c5d173387b7c3b0a283242317ab6', 0, '2021-12-12'),
(3, '22e1b00b5a94a2cfd16d9331088bb9', 0, '2021-12-12'),
(4, 'fdb68a707682f68ccc743db3659e45', 0, '2021-12-12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `ID` bigint(20) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `IDJurusanUser` bigint(20) NOT NULL,
  `IDKonsentrasiUser` bigint(20) NOT NULL,
  `NoHP` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Foto` varchar(30) NOT NULL,
  `Status` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `id_jurusan_mhs` (`IDJurusanUser`),
  KEY `id_konsentrasi_mhs` (`IDKonsentrasiUser`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `Nama`, `Password`, `IDJurusanUser`, `IDKonsentrasiUser`, `NoHP`, `Email`, `Foto`, `Status`) VALUES
(1234, 'Aan Erlansari ', '827ccb0eea8a706c4c34a16891f84e7b', 1, 1, '', 'aan@gmail.com', '', 'Dosen'),
(1345, 'Andang Wijanarko', '827ccb0eea8a706c4c34a16891f84e7b', 1, 1, '', 'Andang@gmail.com', '', 'Dosen'),
(1456, 'Ferzha Utama', '827ccb0eea8a706c4c34a16891f84e7b', 1, 1, '', 'Fer@gmail.com', '', 'Dosen'),
(1678, 'Arie', '827ccb0eea8a706c4c34a16891f84e7b', 2, 50, '', 'Arie@gmail.com', '', 'Dosen'),
(19002, 'nelta', '827ccb0eea8a706c4c34a16891f84e7b', 1, 1, '12345678911121323', 'nelta@gmail.com', '', 'KP'),
(19003, 'Yela Emelia Olva', '827ccb0eea8a706c4c34a16891f84e7b', 1, 1, '', 'yela@gmail.com', '', 'KP'),
(19009, 'Bernatd Situmeang', '827ccb0eea8a706c4c34a16891f84e7b', 1, 1, '', 'bernatdsitumeang08@gmail.com', '', 'KP'),
(19019, 'hamid', '827ccb0eea8a706c4c34a16891f84e7b', 1, 1, '', 'Hamid19@gmail.com', '', 'KP'),
(19030, 'topik', '827ccb0eea8a706c4c34a16891f84e7b', 1, 1, '', 'topik@gmail.com', '', 'KP');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `skripsi`
--
ALTER TABLE `skripsi`
  ADD CONSTRAINT `uploader` FOREIGN KEY (`Uploader`) REFERENCES `users` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
