-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.48-community


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
-- Definition of table `anak`
--

DROP TABLE IF EXISTS `anak`;
CREATE TABLE `anak` (
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
  PRIMARY KEY (`idanak`),
  KEY `FK_Nip` (`nip`),
  KEY `anak_ibfk_1` (`nip`),
  CONSTRAINT `anak_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `pegawai` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `anak`
--

/*!40000 ALTER TABLE `anak` DISABLE KEYS */;
INSERT INTO `anak` (`idanak`,`nip`,`anak_ke`,`nama_anak`,`status_anak`,`tempat_lahir`,`tgl_lahir`,`jenis_kelamin`,`pendidikan`,`pekerjaan`,`status_tunjangan`) VALUES 
 (1,'195607121977031005',3,'alkautsar','Anak Kandung','','1980-01-01','Pria','SD','','Dapat'),
 (3,'195607121977031005',2,'alkahfi','Anak Kandung','','1980-01-01','Pria','SD','','Dapat'),
 (4,'195504091977031004',1,'alfath','Anak Kandung','','1980-01-01','Pria','SD','','Dapat'),
 (5,'195607121977031005',3,'Al-Kautsar','Anak Kandung','Yogyakarta','1980-01-01','Pria','SD','pelajar','Dapat'),
 (6,'195504091977031004',2,'eee','Anak Kandung','ww','1980-01-01','Pria','SD','w','Dapat'),
 (7,'195511281979031005',1,'Rudy','Anak Kandung','Bantul','1980-01-01','Pria','SMA','Pelajar','Dapat'),
 (8,'195511281979031005',2,'Rusmina','Anak Kandung','Kasihan Bantul','1980-03-06','Wanita','SMP','Pelajar','Dapat');
/*!40000 ALTER TABLE `anak` ENABLE KEYS */;


--
-- Definition of table `bagian_unit_kerja`
--

DROP TABLE IF EXISTS `bagian_unit_kerja`;
CREATE TABLE `bagian_unit_kerja` (
  `kode_bagian_unit_kerja` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `bagian_unit_kerja` varchar(45) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`kode_bagian_unit_kerja`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bagian_unit_kerja`
--

/*!40000 ALTER TABLE `bagian_unit_kerja` DISABLE KEYS */;
INSERT INTO `bagian_unit_kerja` (`kode_bagian_unit_kerja`,`bagian_unit_kerja`) VALUES 
 ('BAK','Bagian Administrasi dan  Kesejahteraan'),
 ('BMP','Bagian Mutasi dan Kepangkatan'),
 ('BPP','Bagian Pengadaan dan Pengembangan'),
 ('BPPL','Bagian Pendidikan dan Pelatihan'),
 ('BS','Sekretariat'),
 ('Kabag','Kepala Bagian'),
 ('UPK','Unit Pelaksana Teknis');
/*!40000 ALTER TABLE `bagian_unit_kerja` ENABLE KEYS */;


--
-- Definition of table `cuti`
--

DROP TABLE IF EXISTS `cuti`;
CREATE TABLE `cuti` (
  `idcuti` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nip` varchar(18) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `jenis_cuti` enum('Cuti Tahunan','Cuti Sakit','Cuti Bersalin','Cuti Alasan Penting','CLTN') COLLATE latin1_general_ci NOT NULL DEFAULT 'Cuti Tahunan',
  `no_surat_ijin_cuti` varchar(45) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `tgl_surat_ijin_cuti` date NOT NULL,
  `tgl_awal_cuti` date NOT NULL,
  `tgl_akhir_cuti` date NOT NULL,
  `pejabat_berwenang` varchar(45) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`idcuti`),
  KEY `Nip` (`nip`),
  KEY `cuti_ibfk_1` (`nip`),
  CONSTRAINT `cuti_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `pegawai` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `cuti`
--

/*!40000 ALTER TABLE `cuti` DISABLE KEYS */;
INSERT INTO `cuti` (`idcuti`,`nip`,`jenis_cuti`,`no_surat_ijin_cuti`,`tgl_surat_ijin_cuti`,`tgl_awal_cuti`,`tgl_akhir_cuti`,`pejabat_berwenang`) VALUES 
 (1,'195607121977031005','Cuti Tahunan','','1980-01-01','1980-01-01','1980-01-01',''),
 (2,'195607121977031005','Cuti Tahunan','222','1980-01-01','1980-01-01','1980-01-01','222'),
 (3,'195504091977031004','Cuti Tahunan','01/BKD/2012','1980-01-01','1980-01-01','1980-01-01','Lukas'),
 (4,'195504091977031004','Cuti Sakit','02/BKD/2011','1980-01-02','1980-01-15','1980-01-29','Lukas'),
 (5,'195511281979031005','Cuti Sakit','01/BKD/1980','1980-01-01','1980-01-01','1980-01-01','Rudy'),
 (6,'195511281979031005','Cuti Tahunan','01/BKD/1982','1980-01-01','1980-01-01','1980-01-01','Risman');
/*!40000 ALTER TABLE `cuti` ENABLE KEYS */;


--
-- Definition of table `diklat`
--

DROP TABLE IF EXISTS `diklat`;
CREATE TABLE `diklat` (
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
  PRIMARY KEY (`iddiklat`),
  KEY `FK_pegawai_riwayat_pendidikan_dan_pelatihan_fungsional_1` (`nip`),
  KEY `diklat_ibfk_1` (`nip`),
  CONSTRAINT `diklat_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `pegawai` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diklat`
--

/*!40000 ALTER TABLE `diklat` DISABLE KEYS */;
INSERT INTO `diklat` (`iddiklat`,`nip`,`nama_diklat`,`tempat`,`penyelenggara`,`tgl_mulai`,`tgl_selesai`,`no_sttpl`,`tgl_sttpl`,`jumlah_jam`) VALUES 
 (1,'195504091977031004','PELATIHAN PELATIH PDT','Balai Diklat Bantul','BKD Bantul','1980-01-01','1980-01-25','01/VI/2012','1980-01-01',25),
 (2,'195607121977031005','test','test','test','1980-01-01','1980-01-01','test','1980-01-01',11),
 (3,'195607121977031005','diklat ke-2','keren','masuk','1980-01-01','1980-01-01','bagus','1980-01-01',20),
 (4,'195511281979031005','DIKLATPIM TK. III','Bantul','BKD Bantul','1980-01-01','1980-01-14','2564','1980-01-14',14),
 (5,'195511281979031005','DIKLATPIM TK. IV','Balai Diklat Bantul','BKD Bantul','1980-02-01','1980-02-20','089','1980-02-20',20),
 (6,'195504091977031004','LATIHAN PELATIHAN KADER Pembangunan DESA','Balai Diklat Bantul','BKD Bantul','1980-01-01','1980-01-01','02/BKD/2012','1980-01-01',28);
/*!40000 ALTER TABLE `diklat` ENABLE KEYS */;


--
-- Definition of table `jabatan`
--

DROP TABLE IF EXISTS `jabatan`;
CREATE TABLE `jabatan` (
  `idjabatan` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nip` varchar(18) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `nama_jabatan` varchar(45) NOT NULL DEFAULT '',
  `jenis_Jabatan` enum('Struktural','Fungsional Tertentu','Struktural dan Fungsional Tertentu (Rangkap)','Fungsional Umum/Staf') NOT NULL DEFAULT 'Struktural',
  `eselon` varchar(45) NOT NULL DEFAULT '',
  `unit_kerja` enum('Badan Kepegawaian') NOT NULL DEFAULT 'Badan Kepegawaian',
  `kode_sub_unit_kerja` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tmt_jabatan` date NOT NULL,
  `no_sk_jabatan` varchar(45) NOT NULL DEFAULT '',
  `tgl_sk_jabatan` date NOT NULL,
  `no_surat_pelantikan` varchar(45) NOT NULL DEFAULT '',
  `tgl_surat_pelantikan` date NOT NULL,
  `pejabat_berwenang` varchar(45) NOT NULL DEFAULT '',
  `kode_bagian_unit_kerja` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`idjabatan`),
  KEY `FK_Nip` (`nip`),
  KEY `FK_Idunit_kerja` (`unit_kerja`),
  KEY `FK_Idsub_unit_kerja` (`kode_sub_unit_kerja`),
  KEY `jabatan_ibfk_1` (`nip`),
  KEY `jabatan_ibfk_3` (`kode_bagian_unit_kerja`),
  CONSTRAINT `jabatan_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `pegawai` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `jabatan_ibfk_2` FOREIGN KEY (`kode_sub_unit_kerja`) REFERENCES `sub_unit_kerja` (`kode_sub_unit_kerja`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `jabatan_ibfk_3` FOREIGN KEY (`kode_bagian_unit_kerja`) REFERENCES `bagian_unit_kerja` (`kode_bagian_unit_kerja`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jabatan`
--

/*!40000 ALTER TABLE `jabatan` DISABLE KEYS */;
INSERT INTO `jabatan` (`idjabatan`,`nip`,`nama_jabatan`,`jenis_Jabatan`,`eselon`,`unit_kerja`,`kode_sub_unit_kerja`,`tmt_jabatan`,`no_sk_jabatan`,`tgl_sk_jabatan`,`no_surat_pelantikan`,`tgl_surat_pelantikan`,`pejabat_berwenang`,`kode_bagian_unit_kerja`) VALUES 
 (1,'195607121977031005','apa','Struktural','i','Badan Kepegawaian','SBM','1980-01-01','1','1980-01-01','1','1980-01-01','1','BS'),
 (2,'195607121977031005','22','Fungsional Tertentu','222','Badan Kepegawaian','SBM','1980-01-01','22','1980-01-01','22','1980-01-01','22','BPP'),
 (3,'195504091977031004','KABAG KEUANGAN','Struktural','III','Badan Kepegawaian','SBU','1980-01-01','01/VI/BKD/2011','1980-01-01','01/V/BKD/2012','1980-01-01','WENS','BS'),
 (4,'195504091977031004','Kepala Operasional','Struktural dan Fungsional Tertentu (Rangkap)','III','Badan Kepegawaian','SBKA','1980-01-01','02/VII/BKD/2012','1980-01-01','01/V/BKD/2012','1980-01-01','Wens','BAK'),
 (5,'195511281979031005','Kepala Operasional','Struktural','kkll','Badan Kepegawaian','SBP','1980-01-01','03/Peg/D.4/2010 tgl 14 Jan 2010','1980-01-01','01/V/BKD/1980','1980-01-01','Rudy','BS'),
 (6,'195511281979031005','Kepala Seksi Sarana dan Prasarana','Struktural','III','Badan Kepegawaian','SBU','1980-01-01','03/Peg/D.4/2010 tgl 14 Jan 2010','1980-01-01','01/V/BKD/1980','1980-01-01','Rudy','Kabag');
/*!40000 ALTER TABLE `jabatan` ENABLE KEYS */;


--
-- Definition of table `kursus_penataran`
--

DROP TABLE IF EXISTS `kursus_penataran`;
CREATE TABLE `kursus_penataran` (
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
  KEY `FK_Nip` (`nip`),
  KEY `kursus_penataran_ibfk_1` (`nip`),
  CONSTRAINT `kursus_penataran_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `pegawai` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kursus_penataran`
--

/*!40000 ALTER TABLE `kursus_penataran` DISABLE KEYS */;
INSERT INTO `kursus_penataran` (`idkursus_penataran`,`nip`,`nama_kursus_penataran`,`tempat`,`penyelenggara`,`tgl_mulai`,`tgl_selesai`,`no_sertifikat`,`tgl_sertifikat`,`jumlah_jam`,`jenis`) VALUES 
 (1,'195607121977031005','kkk','kk','k','1980-01-01','1980-01-01','','1980-01-01',90,'Penataran'),
 (2,'195607121977031005','11','11','11','1980-01-01','1980-01-01','11','1980-01-01',22,'Kursus'),
 (3,'195504091977031004','Komputer','Smile Group','Kepegawaian','1980-01-01','1980-01-01','026758','1980-01-01',48,'Kursus'),
 (4,'195504091977031004','Penatran Diploma','Diklat Jogja','Pemda Bantul','1980-01-01','1980-01-01','07849483','1980-01-01',59,'Penataran'),
 (5,'195511281979031005','PELATIHAN COMPUTER','BTC','BKD Bantul','1980-01-01','1980-01-01','234','1980-01-01',40,'Kursus'),
 (6,'195511281979031005','LATIHAN PELATIHAN KADER Pembangunan DESA','Balai Diklat Bantul','BKD Bantul','1980-01-01','1980-01-01','321','1980-01-01',48,'Penataran');
/*!40000 ALTER TABLE `kursus_penataran` ENABLE KEYS */;


--
-- Definition of table `mutasi`
--

DROP TABLE IF EXISTS `mutasi`;
CREATE TABLE `mutasi` (
  `idmutasi` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nip` varchar(18) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `no_sk_mutasi` varchar(45) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `tmt_mutasi` date NOT NULL,
  `tujuan_mutasi` text COLLATE latin1_general_ci NOT NULL,
  `jenis_mutasi` varchar(45) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pejabat_berwenang` varchar(25) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `tempat_mutasi` varchar(45) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `tgl_mutasi` date NOT NULL,
  PRIMARY KEY (`idmutasi`),
  KEY `FK_Nip` (`nip`),
  KEY `mutasi_ibfk_1` (`nip`),
  CONSTRAINT `mutasi_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `pegawai` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `mutasi`
--

/*!40000 ALTER TABLE `mutasi` DISABLE KEYS */;
INSERT INTO `mutasi` (`idmutasi`,`nip`,`no_sk_mutasi`,`tmt_mutasi`,`tujuan_mutasi`,`jenis_mutasi`,`pejabat_berwenang`,`tempat_mutasi`,`tgl_mutasi`) VALUES 
 (1,'195607121977031005','jjjj','1980-01-01','','','','','1980-01-01'),
 (2,'195607121977031005','12','1980-01-01','11','11','11','11','1980-01-01'),
 (3,'195504091977031004','01/V/BKD/BM/2011','1980-01-01','Pindah','Tugas','Lukas','bagian Keuangan','1980-01-01'),
 (4,'195504091977031004','01/VI/BKD/BM/2012','1980-01-01','Tugas','Pindah','Lukas','Bagian Administrasi','1980-01-01'),
 (5,'195511281979031005','01/V/BKD/BM/2011','1980-01-01','Pindah','Pindah Tugas','Rudy','bagian Keuangan','1980-01-01'),
 (6,'195511281979031005','01/VI/BKD/BM/2012','1980-01-01','Tugas','Pindah Tugas','Rismanudin','Bagian Administrasi','1980-01-01');
/*!40000 ALTER TABLE `mutasi` ENABLE KEYS */;


--
-- Definition of table `naik_pangkat`
--

DROP TABLE IF EXISTS `naik_pangkat`;
CREATE TABLE `naik_pangkat` (
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
  PRIMARY KEY (`idpangkat`),
  KEY `naik_pangkat_ibfk_1` (`nip`),
  CONSTRAINT `naik_pangkat_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `pegawai` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `naik_pangkat`
--

/*!40000 ALTER TABLE `naik_pangkat` DISABLE KEYS */;
INSERT INTO `naik_pangkat` (`idpangkat`,`nip`,`jenis_kenaikan_pangkat`,`kenaikan_pangkat_pilihan`,`tmt_Pangkat`,`gaji_pokok`,`no_sk_pangkat`,`tgl_sk_pangkat`,`pejabat_berwenang`,`nama_pangkat`) VALUES 
 (1,'195607121977031005','Kenaikan Pangkat Pilihan','Menemukan penemuan baru yang bermanfaat bagi negara','1980-01-01',10000,'10101','1980-01-01','eko','apa'),
 (2,'195607121977031005','Kenaikan Pangkat Pilihan','Menduduki jabatan tertentu yang pengangkatannya ditetapkan dengan keputusan presiden','1980-01-01',222,'22','1980-01-01','22','22'),
 (3,'195511281979031005','Kenaikan Pangkat Reguler','Menduduki jabatan struktural atau jabatan tertentu','1980-01-01',5000,'03/Peg/D.4/2010/ 14/2010','1980-01-01','Risdy','Golongan III/a'),
 (4,'195607121977031005','Kenaikan Pangkat Pilihan','Menduduki jabatan struktural atau jabatan tertentu','1980-01-01',600,'890/bkd/2012','1980-01-01','iki',''),
 (5,'195504091977031004','Kenaikan Pangkat Reguler','Menduduki jabatan struktural atau jabatan tertentu','1980-01-01',2000000,'23','1980-01-01','Rismanudin','Golongan III/a'),
 (6,'195504091977031004','Kenaikan Pangkat Pilihan','Menduduki jabatan struktural atau jabatan tertentu','1980-01-09',2500000,'234','1980-01-16','Rismanudin','diploma 1'),
 (7,'195511281979031005','Kenaikan Pangkat Reguler','Menduduki jabatan struktural atau jabatan tertentu','1980-01-01',3000000,'03/Peg/D.4/2010/ 14/2010','1980-01-01','Rusdy','Golongan III/a');
/*!40000 ALTER TABLE `naik_pangkat` ENABLE KEYS */;


--
-- Definition of table `pegawai`
--

DROP TABLE IF EXISTS `pegawai`;
CREATE TABLE `pegawai` (
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
  `tmt_pangkat` date DEFAULT NULL,
  `no_sk` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `tgl_mulai_kerja` date DEFAULT NULL,
  `pejabat_berwenang` varchar(45) COLLATE latin1_general_ci DEFAULT '',
  `unit_kerja` enum('Badan Kepegawaian') COLLATE latin1_general_ci DEFAULT 'Badan Kepegawaian',
  `kode_bagian_unit_kerja` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `kode_sub_unit_kerja` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `no_ktp` varchar(20) COLLATE latin1_general_ci DEFAULT '',
  `alamat_ktp` text COLLATE latin1_general_ci,
  `alamat_domisili` text COLLATE latin1_general_ci,
  `foto` varchar(50) COLLATE latin1_general_ci DEFAULT '',
  PRIMARY KEY (`nip`),
  KEY `peg_kbuk` (`kode_bagian_unit_kerja`),
  KEY `FK_pegawai_2` (`kode_sub_unit_kerja`),
  CONSTRAINT `FK_pegawai_1` FOREIGN KEY (`kode_bagian_unit_kerja`) REFERENCES `bagian_unit_kerja` (`kode_bagian_unit_kerja`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_pegawai_2` FOREIGN KEY (`kode_sub_unit_kerja`) REFERENCES `sub_unit_kerja` (`kode_sub_unit_kerja`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pegawai`
--

/*!40000 ALTER TABLE `pegawai` DISABLE KEYS */;
INSERT INTO `pegawai` (`nip`,`no_karpeg`,`no_kartu_askes`,`nama_pegawai`,`tempat_lahir`,`tgl_lahir`,`jenis_kelamin`,`agama`,`golongan_darah`,`status_perkawinan`,`pendidikan_terakhir`,`status_kepegawaian`,`pangkat_golongan_ruang`,`tmt_pangkat`,`no_sk`,`tgl_mulai_kerja`,`pejabat_berwenang`,`unit_kerja`,`kode_bagian_unit_kerja`,`kode_sub_unit_kerja`,`no_ktp`,`alamat_ktp`,`alamat_domisili`,`foto`) VALUES 
 ('195504091977031004','76','89999','Piteng','Jayapura','1980-01-01','Pria','Protestan','B','Belum Kawin','SMA','PNS','I/a - Juru Muda','1980-01-01','ioooo','1980-01-01','','Badan Kepegawaian','BS','SBM','','Pingit RT 2, RW 10/12, Jogjakarta, Indonesia','','Foto022.jpg'),
 ('195511281979031005','','','Ela','Subang','1980-01-01','Wanita','Islam','A','Belum Kawin','SD','CPNS','I/a - Juru Muda','1980-01-01','','1980-01-01','','Badan Kepegawaian','BPP','SBM','','Pulutan RT 67 Rogoitan Pendowoharjo Sewon Bantul','Bantul','IMG0068A.jpg'),
 ('195602011980011002','12344','5678899','SUBIYANTI','Kasihan Bantul','1980-01-01','Wanita','Islam','AB','Kawin','S-1','PNS','I/a - Juru Muda','1980-01-01','','1980-01-01','Risman','Badan Kepegawaian','BPP','SBKA','','KECAMATAN KASIHAN','','IMG0125A.jpg'),
 ('195607121977031005','','','Eko','Denpasar','1980-01-01','Pria','Islam','A','Belum Kawin','SD','CPNS','I/a - Juru Muda','1980-01-01','','1980-01-01','','Badan Kepegawaian','BS','SBM','','Kemiri Gadingsari Sanden Bantul','Bantul','hy5.jpg'),
 ('196009272006041004','58','76','SUADI','Bantul','1980-01-01','Pria','Budha','B','Belum Kawin','S-2','PNS','IV/a - Pembina','1980-01-01','023/BKD/1990','1980-01-01','Isak','Badan Kepegawaian','BPP','SBKA','1349','Kasihan Bantul','Bantul','IMG0065A.jpg');
/*!40000 ALTER TABLE `pegawai` ENABLE KEYS */;


--
-- Definition of table `pendidikan`
--

DROP TABLE IF EXISTS `pendidikan`;
CREATE TABLE `pendidikan` (
  `idpendidikan` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nip` varchar(18) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `jenjang_pendidikan` enum('SD','SMP','SMA','D-I','D-II','D-III','S-1','S-2','S-3') NOT NULL DEFAULT 'SD',
  `nama_pendidikan` varchar(45) NOT NULL DEFAULT '',
  `fakultas` varchar(45) NOT NULL DEFAULT '',
  `jurusan` varchar(45) NOT NULL DEFAULT '',
  `no_ijazah_sttb` varchar(45) NOT NULL DEFAULT '',
  `tgl_ijazah_sttb` date NOT NULL,
  PRIMARY KEY (`idpendidikan`),
  KEY `FK_Nip` (`nip`),
  KEY `pendidikan_ibfk_1` (`nip`),
  CONSTRAINT `pendidikan_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `pegawai` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendidikan`
--

/*!40000 ALTER TABLE `pendidikan` DISABLE KEYS */;
INSERT INTO `pendidikan` (`idpendidikan`,`nip`,`jenjang_pendidikan`,`nama_pendidikan`,`fakultas`,`jurusan`,`no_ijazah_sttb`,`tgl_ijazah_sttb`) VALUES 
 (1,'195607121977031005','SD','kkk','k','k','k','1980-01-01'),
 (2,'195607121977031005','SMP','11','1','11','11','1980-01-01'),
 (3,'195504091977031004','SD','SD INPOL','-','-','12/JYW/DEP/2006','1980-01-01'),
 (4,'195504091977031004','SMP','SMP N Kiwirok','-','-','05/SMPR/JWY/2009','1980-01-01'),
 (5,'195504091977031004','SMA','SMA Teruna Bakti','IPS','IPS','06/Jpr/2011','1980-01-01'),
 (6,'195511281979031005','SD','SD Subang','-','-','12/JYW/DEP/2006','1980-01-01'),
 (7,'195511281979031005','SMP','SMP N  2  Subang','-','-','05/SMPR/JWY/2009','1980-01-01'),
 (8,'195511281979031005','SMA','SMA  1 Subang','IPS','IPS','05/SMMA/JWY/2009','1980-01-01'),
 (9,'195511281979031005','D-III','STIKES','Keperawatan','Kebidanan','06/STIKES/2011','1980-01-01');
/*!40000 ALTER TABLE `pendidikan` ENABLE KEYS */;


--
-- Definition of table `pensiun`
--

DROP TABLE IF EXISTS `pensiun`;
CREATE TABLE `pensiun` (
  `nip` varchar(18) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `sk_pensiun` varchar(45) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `tmt_pensiun` date NOT NULL,
  `alasan_pensiun` text COLLATE latin1_general_ci NOT NULL,
  `idpensiun` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idpensiun`) USING BTREE,
  KEY `pensiun_ibfk_1` (`nip`),
  CONSTRAINT `pensiun_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `pegawai` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pensiun`
--

/*!40000 ALTER TABLE `pensiun` DISABLE KEYS */;
INSERT INTO `pensiun` (`nip`,`sk_pensiun`,`tmt_pensiun`,`alasan_pensiun`,`idpensiun`) VALUES 
 ('195607121977031005','3','1980-01-01','3',1),
 ('195504091977031004','12/V/BKD/2012','1980-01-01','22',2),
 ('195511281979031005','12/V/BKD/2012','2012-08-02','Usia',3);
/*!40000 ALTER TABLE `pensiun` ENABLE KEYS */;


--
-- Definition of table `prajabatan`
--

DROP TABLE IF EXISTS `prajabatan`;
CREATE TABLE `prajabatan` (
  `idprajabatan` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nip` varchar(18) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `jenis_prajabatan` enum('Diklat Prajabatan Golongan I','Diklat Prajabatan Golongan II','Diklat Prajabatan Golongan III') NOT NULL DEFAULT 'Diklat Prajabatan Golongan I',
  `tempat` varchar(45) NOT NULL DEFAULT '',
  `penyelenggara` varchar(45) NOT NULL DEFAULT '',
  `tgl_pelaksanaan` date NOT NULL,
  `no_sttpl` varchar(45) NOT NULL DEFAULT '',
  `tgl_sttpl` date NOT NULL,
  PRIMARY KEY (`idprajabatan`),
  KEY `FK_Nip` (`nip`),
  KEY `prajabatan_ibfk_1` (`nip`),
  CONSTRAINT `prajabatan_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `pegawai` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prajabatan`
--

/*!40000 ALTER TABLE `prajabatan` DISABLE KEYS */;
INSERT INTO `prajabatan` (`idprajabatan`,`nip`,`jenis_prajabatan`,`tempat`,`penyelenggara`,`tgl_pelaksanaan`,`no_sttpl`,`tgl_sttpl`) VALUES 
 (1,'195607121977031005','Diklat Prajabatan Golongan I','iii','ii','1980-01-01','oo','1980-01-01'),
 (2,'195607121977031005','Diklat Prajabatan Golongan II','222','22','1980-01-01','22','1980-01-01'),
 (3,'195504091977031004','Diklat Prajabatan Golongan I','Jogja','UGM','1980-01-01','01/VI/2012','1980-01-01'),
 (4,'195504091977031004','Diklat Prajabatan Golongan II','Diklat Bantul','Kepegawaian','1980-01-01','02/BKD/2012','1980-01-01'),
 (5,'195504091977031004','Diklat Prajabatan Golongan III','Diklat Bantul','Kepegawaian','1980-01-01','03/XI/2022','1980-01-01'),
 (6,'195511281979031005','Diklat Prajabatan Golongan I','Balai Pelatihan Diklat Jogja','BKD Bantul','1980-01-01','907/BKD/1980','1980-01-01');
/*!40000 ALTER TABLE `prajabatan` ENABLE KEYS */;


--
-- Definition of table `suami_istri`
--

DROP TABLE IF EXISTS `suami_istri`;
CREATE TABLE `suami_istri` (
  `idsuami_istri` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nip` varchar(18) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `nama_suami_istri` varchar(45) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `tempat_lahir` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `tgl_lahir` date NOT NULL,
  `status_suami_istri` enum('Suami','Istri') COLLATE latin1_general_ci NOT NULL DEFAULT 'Istri',
  `pekerjaan` enum('PNS','Non PNS') COLLATE latin1_general_ci NOT NULL DEFAULT 'PNS',
  `status_tunjangan` enum('Dapat','Tidak Dapat') COLLATE latin1_general_ci NOT NULL DEFAULT 'Dapat',
  `tgl_menikah` date NOT NULL,
  PRIMARY KEY (`idsuami_istri`),
  KEY `FK_Idsuami_sitri` (`nip`),
  KEY `suami_istri_ibfk_1` (`nip`),
  CONSTRAINT `suami_istri_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `pegawai` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `suami_istri`
--

/*!40000 ALTER TABLE `suami_istri` DISABLE KEYS */;
INSERT INTO `suami_istri` (`idsuami_istri`,`nip`,`nama_suami_istri`,`tempat_lahir`,`tgl_lahir`,`status_suami_istri`,`pekerjaan`,`status_tunjangan`,`tgl_menikah`) VALUES 
 (6,'195607121977031005','Ela','Subang','1975-02-02','Istri','Non PNS','Dapat','1980-01-01'),
 (7,'195511281979031005','Eko','Subang','1980-01-01','Suami','Non PNS','Dapat','1978-07-04'),
 (8,'195504091977031004','Nela','Kasihan Bantul','1979-11-05','Istri','Non PNS','Dapat','1990-01-01');
/*!40000 ALTER TABLE `suami_istri` ENABLE KEYS */;


--
-- Definition of table `sub_unit_kerja`
--

DROP TABLE IF EXISTS `sub_unit_kerja`;
CREATE TABLE `sub_unit_kerja` (
  `kode_sub_unit_kerja` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `sub_unit_kerja` varchar(45) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `kode_bagian_unit_kerja` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`kode_sub_unit_kerja`),
  KEY `newfk` (`kode_bagian_unit_kerja`),
  CONSTRAINT `sub_unit_kerja_ibfk_1` FOREIGN KEY (`kode_bagian_unit_kerja`) REFERENCES `bagian_unit_kerja` (`kode_bagian_unit_kerja`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_unit_kerja`
--

/*!40000 ALTER TABLE `sub_unit_kerja` DISABLE KEYS */;
INSERT INTO `sub_unit_kerja` (`kode_sub_unit_kerja`,`sub_unit_kerja`,`kode_bagian_unit_kerja`) VALUES 
 ('SBKA','Sub Bagian Keuangan dan Aset','Kabag'),
 ('SBM','Bagian Mutasi','BS'),
 ('SBP','Sub bagian program','BPP'),
 ('SBU','Sub bagian umum','BMP');
/*!40000 ALTER TABLE `sub_unit_kerja` ENABLE KEYS */;


--
-- Definition of table `user_account`
--

DROP TABLE IF EXISTS `user_account`;
CREATE TABLE `user_account` (
  `nip` varchar(18) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `name` varchar(45) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `password` varchar(45) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `email` varchar(45) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `role` enum('Pegawai','Administrator') COLLATE latin1_general_ci NOT NULL DEFAULT 'Pegawai',
  `username` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`nip`),
  KEY `user_account_ibfk_1` (`nip`),
  CONSTRAINT `user_account_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `pegawai` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user_account`
--

/*!40000 ALTER TABLE `user_account` DISABLE KEYS */;
INSERT INTO `user_account` (`nip`,`name`,`password`,`email`,`role`,`username`) VALUES 
 ('195504091977031004','piteng','101','','Administrator','piteng'),
 ('195511281979031005','ela','102','ela@yahoo.com','Pegawai','ela'),
 ('195602011980011002','subiyanti','subiyanti','suby@gmail.com','Pegawai','subiyanti'),
 ('195607121977031005','eko','oke','eko','Pegawai','oke');
/*!40000 ALTER TABLE `user_account` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
