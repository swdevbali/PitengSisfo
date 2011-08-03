-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.9


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema piteng
--

CREATE DATABASE IF NOT EXISTS piteng;
USE piteng;

--
-- Definition of table `piteng`.`anak`
--

DROP TABLE IF EXISTS `piteng`.`anak`;
CREATE TABLE  `piteng`.`anak` (
  `idanak` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nip` varchar(18) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `anak_ke` int(10) unsigned NOT NULL,
  `nama_anak` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `status_anak` enum('Anak Kandung','Anak Angkat','Anak Tiri') COLLATE latin1_general_ci NOT NULL DEFAULT 'Anak Kandung',
  `tempat_lahir` varchar(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('Pria','Wanita') COLLATE latin1_general_ci NOT NULL DEFAULT 'Pria',
  `pendidikan` enum('SD','SMP','SMA','D-I','D-II','D-III','S-1','S-2') COLLATE latin1_general_ci NOT NULL DEFAULT 'SD',
  `pekerjaan` varchar(45) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `status_tunjangan` enum('Dapat','Tidak Dapat') COLLATE latin1_general_ci NOT NULL DEFAULT 'Dapat',
  PRIMARY KEY (`idanak`) ,
  KEY `FK_Nip` (`nip`) ,
  CONSTRAINT `anak_ibfk_1` FOREIGN KEY (`Nip`) REFERENCES `pegawai` (`Nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `piteng`.`anak`
--

/*!40000 ALTER TABLE `anak` DISABLE KEYS */;
LOCK TABLES `anak` WRITE;
INSERT INTO `piteng`.`anak` VALUES  (5,'101',1,'oke','Anak Kandung','denpasar','1979-06-27','Pria','SD','-','Dapat');
UNLOCK TABLES;
/*!40000 ALTER TABLE `anak` ENABLE KEYS */;


--
-- Definition of table `piteng`.`bagian_unit_kerja`
--

DROP TABLE IF EXISTS `piteng`.`bagian_unit_kerja`;
CREATE TABLE  `piteng`.`bagian_unit_kerja` (
  `idbagian_unit_kerja` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bagian_unit_kerja` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idbagian_unit_kerja`) 
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `piteng`.`bagian_unit_kerja`
--

/*!40000 ALTER TABLE `bagian_unit_kerja` DISABLE KEYS */;
LOCK TABLES `bagian_unit_kerja` WRITE;
INSERT INTO `piteng`.`bagian_unit_kerja` VALUES  (1,'Sekretariat'),
 (2,'Bidang Pengadaan dan Pengembangan'),
 (3,'Bidang Mutasi dan Kepangkatan'),
 (4,'Bidang Administrasi dan Kesejahteraan'),
 (5,'Bidang Pendidikan dan Pelatihan'),
 (6,'Unit Pelaksana Teknis'),
 (7,'Kelompok Jabatan Fungsional');
UNLOCK TABLES;
/*!40000 ALTER TABLE `bagian_unit_kerja` ENABLE KEYS */;


--
-- Definition of table `piteng`.`cuti`
--

DROP TABLE IF EXISTS `piteng`.`cuti`;
CREATE TABLE  `piteng`.`cuti` (
  `idcuti` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nip` varchar(18) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `jenis_cuti` enum('Cuti Tahunan','Cuti Sakit','Cuti Bersalin','Cuti Alasan Penting','CLTN') COLLATE latin1_general_ci NOT NULL DEFAULT 'Cuti Tahunan',
  `no_surat_ijin_cuti` varchar(45) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `tgl_surat_ijin_cuti` date NOT NULL,
  `tgl_awal_cuti` date NOT NULL,
  `tgl_akhir_cuti` date NOT NULL,
  `pejabat_berwenang` varchar(45) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`idcuti`) ,
  KEY `Nip` (`nip`),
  CONSTRAINT `cuti_ibfk_1` FOREIGN KEY (`Nip`) REFERENCES `pegawai` (`Nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `piteng`.`cuti`
--

/*!40000 ALTER TABLE `cuti` DISABLE KEYS */;
LOCK TABLES `cuti` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `cuti` ENABLE KEYS */;


--
-- Definition of table `piteng`.`diklat`
--

DROP TABLE IF EXISTS `piteng`.`diklat`;
CREATE TABLE  `piteng`.`diklat` (
  `iddiklat` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nip` varchar(18) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `nama_diklat` varchar(45) NOT NULL DEFAULT '',
  `tempat` varchar(45) NOT NULL DEFAULT '',
  `penyelenggara` varchar(45) NOT NULL DEFAULT '',
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `no_sttpl` varchar(45) NOT NULL DEFAULT '',
  `tgl_sttpl` date NOT NULL,
  `jumlah_jam` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iddiklat`) ,
  KEY `FK_pegawai_riwayat_pendidikan_dan_pelatihan_fungsional_1` (`nip`) ,
  CONSTRAINT `diklat_ibfk_1` FOREIGN KEY (`Nip`) REFERENCES `pegawai` (`Nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `piteng`.`diklat`
--

/*!40000 ALTER TABLE `diklat` DISABLE KEYS */;
LOCK TABLES `diklat` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `diklat` ENABLE KEYS */;


--
-- Definition of table `piteng`.`jabatan`
--

DROP TABLE IF EXISTS `piteng`.`jabatan`;
CREATE TABLE  `piteng`.`jabatan` (
  `idjabatan` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nip` varchar(18) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `nama_jabatan` varchar(45) NOT NULL DEFAULT '',
  `jenis_Jabatan` enum('Struktural','Fungsional Tertentu','Struktural dan Fungsional Tertentu (Rangkap)','Fungsional Umum/Staf') NOT NULL DEFAULT 'Struktural',
  `eselon` varchar(45) NOT NULL DEFAULT '',
  `idunit_kerja` int(10) unsigned NOT NULL,
  `idsub_unit_kerja` int(10) unsigned NOT NULL,
  `tmt_jabatan` date NOT NULL,
  `no_sk_jabatan` varchar(45) NOT NULL DEFAULT '',
  `tgl_sk_jabatan` date NOT NULL,
  `no_surat_pelantikan` varchar(45) NOT NULL DEFAULT '',
  `tgl_surat_pelantikan` date NOT NULL,
  `pejabat_berwenang` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`idjabatan`) ,
  KEY `FK_Nip` (`nip`) ,
  KEY `FK_Idunit_kerja` (`idunit_kerja`) ,
  KEY `FK_Idsub_unit_kerja` (`idsub_unit_kerja`) ,
  CONSTRAINT `jabatan_ibfk_1` FOREIGN KEY (`Nip`) REFERENCES `pegawai` (`Nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `piteng`.`jabatan`
--

/*!40000 ALTER TABLE `jabatan` DISABLE KEYS */;
LOCK TABLES `jabatan` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `jabatan` ENABLE KEYS */;


--
-- Definition of table `piteng`.`kursus_penataran`
--

DROP TABLE IF EXISTS `piteng`.`kursus_penataran`;
CREATE TABLE  `piteng`.`kursus_penataran` (
  `idkursus_penataran` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nip` varchar(18) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `nama_kursus_penataran` varchar(45) NOT NULL DEFAULT '',
  `tempat` varchar(45) NOT NULL DEFAULT '',
  `penyelenggara` varchar(45) NOT NULL DEFAULT '',
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `no_sertifikat` varchar(45) NOT NULL DEFAULT '',
  `tgl_sertifikat` date NOT NULL,
  `jumlah_jam` int(10) unsigned NOT NULL,
  `jenis` enum('Kursus','Penataran') NOT NULL DEFAULT 'Kursus',
  PRIMARY KEY (`idkursus_penataran`),
  KEY `FK_Nip` (`nip`) ,
  CONSTRAINT `kursus_penataran_ibfk_1` FOREIGN KEY (`Nip`) REFERENCES `pegawai` (`Nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `piteng`.`kursus_penataran`
--

/*!40000 ALTER TABLE `kursus_penataran` DISABLE KEYS */;
LOCK TABLES `kursus_penataran` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `kursus_penataran` ENABLE KEYS */;


--
-- Definition of table `piteng`.`mutasi`
--

DROP TABLE IF EXISTS `piteng`.`mutasi`;
CREATE TABLE  `piteng`.`mutasi` (
  `idmutasi` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nip` varchar(18) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `no_sk_mutasi` varchar(45) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `tmt_mutasi` date NOT NULL,
  `tujuan_mutasi` text COLLATE latin1_general_ci NOT NULL,
  `jenis_mutasi` varchar(45) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pejabat_berwenang` varchar(25) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `tempat_mutasi` varchar(45) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `tgl_mutasi` date NOT NULL,
  PRIMARY KEY (`idmutasi`) ,
  KEY `FK_Nip` (`nip`) ,
  CONSTRAINT `mutasi_ibfk_1` FOREIGN KEY (`Nip`) REFERENCES `pegawai` (`Nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `piteng`.`mutasi`
--

/*!40000 ALTER TABLE `mutasi` DISABLE KEYS */;
LOCK TABLES `mutasi` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `mutasi` ENABLE KEYS */;


--
-- Definition of table `piteng`.`naik_pangkat`
--

DROP TABLE IF EXISTS `piteng`.`naik_pangkat`;
CREATE TABLE  `piteng`.`naik_pangkat` (
  `idpangkat` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nip` varchar(18) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `jenis_kenaikan_pangkat` enum('Kenaikan Pangkat Reguler','Kenaikan Pangkat Pilihan','Kenaikan Pangkat Anumerta','Kenaikan Pangkat Pengabdian') NOT NULL DEFAULT 'Kenaikan Pangkat Reguler',
  `kenaikan_pangkat_pilihan` enum('Menduduki jabatan struktural atau jabatan tertentu','Menduduki jabatan tertentu yang pengangkatannya ditetapkan dengan keputusan presiden','Menunjukkan prestasi kerja luar biasa baiknya','Menemukan penemuan baru yang bermanfaat bagi negara','Diangkat menjadi pejabat negara','Memperoleh surat tanda tamat belajar atau ijazah','Melaksanakan tugas belajar dan sebelumnya menduduki jabatan struktural atau jabatan fungsional tertentu','Telah selesai mengikuti dan lulus tugas belajar','Dipekerjakan atau diperbantukan secara penuh diluar instansi induknya yang diangkat dalam jabatan pimpinan yang telah ditetapkan persamaan eselonnya atau jabatan fungsional tertentu') NOT NULL DEFAULT 'Menduduki jabatan struktural atau jabatan tertentu',
  `tmt_Pangkat` date NOT NULL,
  `gaji_pokok` int(10) unsigned NOT NULL,
  `no_sk_pangkat` varchar(45) NOT NULL DEFAULT '',
  `tgl_sk_pangkat` date NOT NULL,
  `pejabat_berwenang` varchar(45) NOT NULL DEFAULT '',
  `nama_pangkat` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`idpangkat`,`nip`) ,
  KEY `FK_Nip` (`nip`) ,
  CONSTRAINT `naik_pangkat_ibfk_1` FOREIGN KEY (`Nip`) REFERENCES `pegawai` (`Nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `piteng`.`naik_pangkat`
--

/*!40000 ALTER TABLE `naik_pangkat` DISABLE KEYS */;
LOCK TABLES `naik_pangkat` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `naik_pangkat` ENABLE KEYS */;


--
-- Definition of table `piteng`.`pegawai`
--

DROP TABLE IF EXISTS `piteng`.`pegawai`;
CREATE TABLE  `piteng`.`pegawai` (
  `nip` varchar(18) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `no_karpeg` varchar(20) COLLATE latin1_general_ci DEFAULT '',
  `no_kartu_askes` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `nama_pegawai` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `tempat_lahir` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` enum('Pria','Wanita') COLLATE latin1_general_ci DEFAULT NULL,
  `agama` enum('Islam','Protestan','Katholik','Hindu','Budha','Konghucu','Advent','Kepercayaan','Lainnya') COLLATE latin1_general_ci DEFAULT NULL,
  `golongan_darah` enum('A','B','AB','O') COLLATE latin1_general_ci DEFAULT NULL,
  `status_perkawinan` enum('Belum Kawin','Kawin','Janda','Duda') COLLATE latin1_general_ci DEFAULT NULL,
  `pendidikan_terakhir` enum('SD','SMP','SMA','D-I','D-II','D-III','S-1','S-2','S-3') COLLATE latin1_general_ci DEFAULT NULL,
  `status_kepegawaian` enum('CPNS','PNS') COLLATE latin1_general_ci DEFAULT NULL,
  `pangkat_golongan_ruang` enum('I/a - Juru Muda','I/b - Juru Muda Tk.I','I/c - Juru','I/d - Juru Tk.I','II/a - Pengatur Muda','II/b - Pengatur Muda Tk.I','II/c - Pengatur','II/d - Pegatur Tk.I','III/a - Penata Muda','III/b - Penata Muda Tk.I','III/c - Penata','III/d - Penata Tk.I','IV/a - Pembina','IV/b - Pembina Tk.I','IV/c - Pembina Utama Muda','IV/d - Pembina Utama Madya','IV/e - Pembina Utama') COLLATE latin1_general_ci DEFAULT NULL,
  `tmt_pangkat` text COLLATE latin1_general_ci,
  `no_sk` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `tgl_mulai_kerja` date DEFAULT NULL,
  `pejabat_berwenang` varchar(45) COLLATE latin1_general_ci DEFAULT '',
  `unit_kerja` enum('Badan Kepegawaian') COLLATE latin1_general_ci DEFAULT 'Badan Kepegawaian',
  `idbagian_unit_Kerja` int(10) unsigned NOT NULL,
  `idsub_unit_kerja` int(10) unsigned DEFAULT NULL,
  `no_ktp` varchar(20) COLLATE latin1_general_ci DEFAULT '',
  `alamat_ktp` text COLLATE latin1_general_ci,
  `alamat_domisili` text COLLATE latin1_general_ci,
  `foto` varchar(50) COLLATE latin1_general_ci DEFAULT '',
  PRIMARY KEY (`nip`) ,
  KEY `Idunit_Kerja` (`unit_kerja`),
  KEY `Idbagian_unit_Kerja` (`idbagian_unit_Kerja`),
  KEY `idsub_unit_kerja` (`idsub_unit_kerja`),
  CONSTRAINT `pegawai_ibfk_2` FOREIGN KEY (`Idbagian_unit_Kerja`) REFERENCES `bagian_unit_kerja` (`Idbagian_unit_kerja`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pegawai_ibfk_3` FOREIGN KEY (`idsub_unit_kerja`) REFERENCES `sub_unit_kerja` (`idsub_unit_kerja`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `piteng`.`pegawai`
--

/*!40000 ALTER TABLE `pegawai` DISABLE KEYS */;
LOCK TABLES `pegawai` WRITE;
INSERT INTO `piteng`.`pegawai` VALUES  ('101','',NULL,'Piteng',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','Badan Kepegawaian',1,1,'',NULL,NULL,'');
UNLOCK TABLES;
/*!40000 ALTER TABLE `pegawai` ENABLE KEYS */;


--
-- Definition of table `piteng`.`pendidikan`
--

DROP TABLE IF EXISTS `piteng`.`pendidikan`;
CREATE TABLE  `piteng`.`pendidikan` (
  `idpendidikan` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nip` varchar(18) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `jenjang_pendidikan` enum('SD','SMP','SMA','D-I','D-II','D-III','S-1','S-2','S-3') NOT NULL DEFAULT 'SD',
  `nama_pendidikan` varchar(45) NOT NULL DEFAULT '',
  `fakultas` varchar(45) NOT NULL DEFAULT '',
  `jurusan` varchar(45) NOT NULL DEFAULT '',
  `no_ijazah_sttb` varchar(45) NOT NULL DEFAULT '',
  `tgl_ijazah_sttb` date NOT NULL,
  PRIMARY KEY (`idpendidikan`) ,
  KEY `FK_Nip` (`nip`) ,
  CONSTRAINT `pendidikan_ibfk_1` FOREIGN KEY (`Nip`) REFERENCES `pegawai` (`Nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `piteng`.`pendidikan`
--

/*!40000 ALTER TABLE `pendidikan` DISABLE KEYS */;
LOCK TABLES `pendidikan` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pendidikan` ENABLE KEYS */;


--
-- Definition of table `piteng`.`pensiun`
--

DROP TABLE IF EXISTS `piteng`.`pensiun`;
CREATE TABLE  `piteng`.`pensiun` (
  `nip` varchar(18) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `sk_pensiun` varchar(45) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `tmt_pensiun` date NOT NULL,
  `alasan_pensiun` text COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`nip`) ,
  CONSTRAINT `pensiun_ibfk_1` FOREIGN KEY (`Nip`) REFERENCES `pegawai` (`Nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `piteng`.`pensiun`
--

/*!40000 ALTER TABLE `pensiun` DISABLE KEYS */;
LOCK TABLES `pensiun` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `pensiun` ENABLE KEYS */;


--
-- Definition of table `piteng`.`prajabatan`
--

DROP TABLE IF EXISTS `piteng`.`prajabatan`;
CREATE TABLE  `piteng`.`prajabatan` (
  `idprajabatan` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nip` varchar(18) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `jenis_prajabatan` enum('Diklat Prajabatan Golongan I','Diklat Prajabatan Golongan II','Diklat Prajabatan Golongan III') NOT NULL DEFAULT 'Diklat Prajabatan Golongan I',
  `tempat` varchar(45) NOT NULL DEFAULT '',
  `penyelenggara` varchar(45) NOT NULL DEFAULT '',
  `tgl_pelaksanaan` date NOT NULL,
  `no_sttpl` varchar(45) NOT NULL DEFAULT '',
  `tgl_sttpl` date NOT NULL,
  PRIMARY KEY (`idprajabatan`) ,
  KEY `FK_Nip` (`nip`) ,
  CONSTRAINT `prajabatan_ibfk_1` FOREIGN KEY (`Nip`) REFERENCES `pegawai` (`Nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `piteng`.`prajabatan`
--

/*!40000 ALTER TABLE `prajabatan` DISABLE KEYS */;
LOCK TABLES `prajabatan` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `prajabatan` ENABLE KEYS */;


--
-- Definition of table `piteng`.`suami_istri`
--

DROP TABLE IF EXISTS `piteng`.`suami_istri`;
CREATE TABLE  `piteng`.`suami_istri` (
  `idsuami_Istri` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nip` varchar(18) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `nama_suami_istri` varchar(45) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `tempat_lahir` int(10) unsigned NOT NULL,
  `tgl_lahir` date NOT NULL,
  `status_suami_istri` enum('Suami','Istri') COLLATE latin1_general_ci NOT NULL DEFAULT 'Istri',
  `pekerjaan` enum('PNS','Non PNS') COLLATE latin1_general_ci NOT NULL DEFAULT 'PNS',
  `status_tunjangan` enum('Dapat','Tidak Dapat') COLLATE latin1_general_ci NOT NULL DEFAULT 'Dapat',
  `tgl_menikah` date NOT NULL,
  PRIMARY KEY (`idsuami_Istri`) ,
  KEY `FK_Idsuami_sitri` (`nip`) ,
  CONSTRAINT `suami_istri_ibfk_1` FOREIGN KEY (`Nip`) REFERENCES `pegawai` (`Nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `piteng`.`suami_istri`
--

/*!40000 ALTER TABLE `suami_istri` DISABLE KEYS */;
LOCK TABLES `suami_istri` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `suami_istri` ENABLE KEYS */;


--
-- Definition of table `piteng`.`sub_unit_kerja`
--

DROP TABLE IF EXISTS `piteng`.`sub_unit_kerja`;
CREATE TABLE  `piteng`.`sub_unit_kerja` (
  `idsub_unit_kerja` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sub_unit_kerja` varchar(45) DEFAULT NULL,
  `idbagian_unit_kerja` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`idsub_unit_kerja`),
  KEY `idbagian_unit_kerja` (`idbagian_unit_kerja`),
  CONSTRAINT `sub_unit_kerja_ibfk_1` FOREIGN KEY (`idbagian_unit_kerja`) REFERENCES `bagian_unit_kerja` (`Idbagian_unit_kerja`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `piteng`.`sub_unit_kerja`
--

/*!40000 ALTER TABLE `sub_unit_kerja` DISABLE KEYS */;
LOCK TABLES `sub_unit_kerja` WRITE;
INSERT INTO `piteng`.`sub_unit_kerja` VALUES  (1,'Sub Bagian Umum',1),
 (2,'Sub Bagian Program',1),
 (3,'Sub Bagian Keuangan dan Aset',1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `sub_unit_kerja` ENABLE KEYS */;


--
-- Definition of table `piteng`.`user_account`
--

DROP TABLE IF EXISTS `piteng`.`user_account`;
CREATE TABLE  `piteng`.`user_account` (
  `nip` varchar(18) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `name` varchar(45) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `password` varchar(45) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `email` varchar(45) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `role` enum('Pegawai','Administrator') COLLATE latin1_general_ci NOT NULL DEFAULT 'Pegawai',
  `username` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`nip`) ,
  CONSTRAINT `user_account_ibfk_1` FOREIGN KEY (`Nip`) REFERENCES `pegawai` (`Nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `piteng`.`user_account`
--

/*!40000 ALTER TABLE `user_account` DISABLE KEYS */;
LOCK TABLES `user_account` WRITE;
INSERT INTO `piteng`.`user_account` VALUES  ('101','Piteng Uropdana','101','piteng@gmail.com','Administrator','piteng');
UNLOCK TABLES;
/*!40000 ALTER TABLE `user_account` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
