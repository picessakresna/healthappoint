/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 10.4.25-MariaDB : Database - db_healthappoint
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_healthappoint` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_healthappoint`;

/*Table structure for table `tb_dokter` */

DROP TABLE IF EXISTS `tb_dokter`;

CREATE TABLE `tb_dokter` (
  `id_dokter` int(11) NOT NULL AUTO_INCREMENT,
  `nama_dokter` varchar(255) DEFAULT NULL,
  `alumni_dokter` varchar(255) DEFAULT NULL,
  `deskripsi_dokter` text DEFAULT NULL,
  `id_poliklinik` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_dokter`),
  KEY `id_poliklinik` (`id_poliklinik`),
  CONSTRAINT `tb_dokter_ibfk_1` FOREIGN KEY (`id_poliklinik`) REFERENCES `tb_poliklinik` (`id_poliklinik`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_dokter` */

insert  into `tb_dokter`(`id_dokter`,`nama_dokter`,`alumni_dokter`,`deskripsi_dokter`,`id_poliklinik`) values 
(101,'Dr. Rahmat Purnama','Universitas Kiwi','Dr. Rahmat Purnama adalah lulusan dari Universitas Kiwi dengan spesialisasi dalam bidang Kandungan & Kebidanan. Beliau memiliki pengalaman luas dalam menangani berbagai kasus kehamilan dan persalinan.',501),
(102,'Dr. Siti Mardiana ','Universitas Manggis ','Dr. Siti Mardiana memperoleh gelar dokternya dari Universitas Manggis. Ia merupakan ahli di bidang Kulit & Kelamin dan telah melayani pasien selama lebih dari 15 tahun. Pengalaman dan keahlian beliau sangat diakui. ',502),
(103,'Dr. Tono Hadi ','Universitas Apel','Dr. Tono Hadi lulus dari Universitas Apel dengan keahlian di bidang THT. Dengan pengalaman klinis yang mendalam, beliau telah berhasil mengatasi berbagai masalah kesehatan terkait telinga, hidung, dan tenggorokan.',503),
(104,'Dr. Umi Kusuma','Universitas Jeruk ','Dr. Umi Kusuma adalah lulusan dari Universitas Jeruk dengan fokus di bidang Psikiatri. Beliau memiliki keahlian dalam menangani gangguan mental dan emosional, dan telah membantu banyak pasien mencapai kesehatan mental yang optimal. ',504),
(105,'Dr. Vicky Prasetyo','Universitas Pisang','Dr. Vicky Prasetyo mendapatkan gelar dokternya dari Universitas Pisang. Spesialisasi beliau terletak di bidang Penyakit Dalam, dan beliau telah menghadapi berbagai tantangan kesehatan kompleks selama bertahun-tahun.',505),
(106,'Dr. Wulan Indah ','Universitas Anggur','Dr. Wulan Indah adalah lulusan dari Universitas Anggur dengan keahlian di bidang Kedokteran Anak. Beliau telah bekerja dengan anak-anak selama bertahun-tahun dan memiliki pemahaman mendalam tentang kesehatan anak. ',506),
(107,'Dr. Xander Putra','Universitas Durian','Dr. Xander Putra memiliki gelar dokter dari Universitas Durian dengan fokus di bidang Mata. Beliau telah berhasil mengatasi berbagai masalah penglihatan dan menjalani pelatihan khusus di berbagai teknik operasi mata. ',507),
(108,'Dr. Yanti Kurniawan ','Universitas Semangka','Dr. Yanti Kurniawan adalah lulusan dari Universitas Semangka dengan keahlian di bidang Kedokteran Gigi. Beliau memiliki pengalaman dalam merawat dan memperbaiki kesehatan mulut dan gigi pasien-pasiennya.',508),
(109,'Dr. Zainal Abidin ','Universitas Melon ','Dr. Zainal Abidin memperoleh gelar dokternya dari Universitas Melon. Beliau adalah seorang dokter umum yang memiliki pengetahuan mendalam tentang berbagai aspek kesehatan dan memberikan perawatan menyeluruh kepada pasien-pasiennya.',509),
(110,'Dr. Andika Wijaya ','Universitas Kiwi','Dr. Andika Wijaya adalah lulusan dari Universitas Kiwi dengan spesialisasi dalam bidang Kandungan & Kebidanan. Beliau memiliki pengalaman luas dalam menangani berbagai kasus kehamilan dan persalinan.',NULL),
(111,'Dr. Bella Indriani','Universitas Manggis ','Dr. Bella Indriani memperoleh gelar dokternya dari Universitas Manggis. Ia merupakan ahli di bidang Kulit & Kelamin dan telah melayani pasien selama lebih dari 15 tahun. Pengalaman dan keahlian beliau sangat diakui.',NULL),
(112,'Dr. Cakra Nugraha ','Universitas Apel','Dr. Cakra Nugraha lulus dari Universitas Apel dengan keahlian di bidang THT. Dengan pengalaman klinis yang mendalam, beliau telah berhasil mengatasi berbagai masalah kesehatan terkait telinga, hidung, dan tenggorokan.',NULL),
(113,'Dr. Dini Fitriani ','Universitas Jeruk ','Dr. Dini Fitriani adalah lulusan dari Universitas Jeruk dengan fokus di bidang Psikiatri. Beliau memiliki keahlian dalam menangani gangguan mental dan emosional, dan telah membantu banyak pasien mencapai kesehatan mental yang optimal. ',NULL),
(114,'Dr. Erlangga Pratama','Universitas Pisang','Dr. Erlangga Pratama mendapatkan gelar dokternya dari Universitas Pisang. Spesialisasi beliau terletak di bidang Penyakit Dalam, dan beliau telah menghadapi berbagai tantangan kesehatan kompleks selama bertahun-tahun.',NULL),
(115,'Dr. Fitria Anugrah','Universitas Anggur','Dr. Fitria Anugrah adalah lulusan dari Universitas Anggur dengan keahlian di bidang Kedokteran Anak. Beliau telah bekerja dengan anak-anak selama bertahun-tahun dan memiliki pemahaman mendalam tentang kesehatan anak. ',NULL),
(116,'Dr. Gama Putra','Universitas Durian','Dr. Gama Putra memiliki gelar dokter dari Universitas Durian dengan fokus di bidang Mata. Beliau telah berhasil mengatasi berbagai masalah penglihatan dan menjalani pelatihan khusus di berbagai teknik operasi mata. ',NULL),
(117,'Dr. Hanum Devi','Universitas Semangka','Dr. Hanum Devi adalah lulusan dari Universitas Semangka dengan keahlian di bidang Kedokteran Gigi. Beliau memiliki pengalaman dalam merawat dan memperbaiki kesehatan mulut dan gigi pasien-pasiennya.',NULL),
(118,'Dr. Iwan Suryanto ','Universitas Melon ','Dr. Iwan Suryanto memperoleh gelar dokternya dari Universitas Melon. Beliau adalah seorang dokter umum yang memiliki pengetahuan mendalam tentang berbagai aspek kesehatan dan memberikan perawatan menyeluruh kepada pasien-pasiennya.',NULL),
(119,'Dr. Joko Pranoto','Universitas Kiwi','Dr. Joko Pranoto adalah lulusan dari Universitas Kiwi dengan spesialisasi dalam bidang Kandungan & Kebidanan. Beliau memiliki pengalaman luas dalam menangani berbagai kasus kehamilan dan persalinan.',NULL),
(120,'Dr. Kusuma Sari ','Universitas Manggis ','Dr. Kusuma Sari memperoleh gelar dokternya dari Universitas Manggis. Ia merupakan ahli di bidang Kulit & Kelamin dan telah melayani pasien selama lebih dari 15 tahun. Pengalaman dan keahlian beliau sangat diakui.',NULL),
(121,'Dr. Laila Putri ','Universitas Apel','Dr. Laila Putri lulus dari Universitas Apel dengan keahlian di bidang THT. Dengan pengalaman klinis yang mendalam, beliau telah berhasil mengatasi berbagai masalah kesehatan terkait telinga, hidung, dan tenggorokan.',NULL),
(122,'Dr. Mira Kurnia ','Universitas Jeruk ','Dr. Mira Kurnia adalah lulusan dari Universitas Jeruk dengan fokus di bidang Psikiatri. Beliau memiliki keahlian dalam menangani gangguan mental dan mosional, dan telah membantu banyak pasien mencapai kesehatan mental yang ptimal. ',NULL),
(123,'Dr. Nanda Pratama ','Universitas Pisang','Dr. Nanda Pratama mendapatkan gelar dokternya dari Universitas Pisang. Spesialisasi beliau terletak di bidang Penyakit Dalam, dan beliau telah menghadapi berbagai tantangan kesehatan kompleks selama bertahun-tahun.',NULL),
(124,'Dr. Oktavia Citra ','Universitas Anggur','Dr. Oktavia Citra adalah lulusan dari Universitas Anggur dengan keahlian di bidang Kedokteran Anak. Beliau telah bekerja dengan anak-anak selama bertahun-tahun dan memiliki pemahaman mendalam tentang kesehatan anak. ',NULL),
(125,'Dr. Putra Wisnu ','Universitas Durian','Dr. Putra Wisnu memiliki gelar dokter dari Universitas Durian dengan fokus di bidang Mata. Beliau telah berhasil mengatasi berbagai masalah penglihatan dan menjalani pelatihan khusus di berbagai teknik operasi mata. ',NULL),
(126,'Dr. Qori Hidayati ','Universitas Semangka','Dr. Qori Hidayati adalah lulusan dari Universitas Semangka dengan keahlian di bidang Kedokteran Gigi. Beliau memiliki pengalaman dalam merawat dan memperbaiki kesehatan mulut dan gigi pasien-pasiennya.',NULL),
(127,'Dr. Rahma Wijaya','Universitas Melon ','Dr. Rahma Wijaya memperoleh gelar dokternya dari Universitas Melon. Beliau adalah seorang dokter umum yang memiliki pengetahuan mendalam tentang berbagai aspek kesehatan dan memberikan perawatan menyeluruh kepada pasien-pasiennya.',NULL),
(128,'Dr. Aditya Surya','Universitas Apel','Dr. Aditya Surya adalah lulusan dari Universitas Apel dengan spesialisasi dalam bidang Kandungan & Kebidanan. Beliau memiliki pengalaman luas dalam menangani berbagai kasus kehamilan dan persalinan.',NULL),
(129,'Dr. Bunga Wijaya','Universitas Jeruk ','Dr. Bunga Wijaya memperoleh gelar dokternya dari Universitas Jeruk. Ia merupakan ahli di bidang Kulit & Kelamin dan telah melayani pasien selama lebih dari 15 tahun. Pengalaman dan keahlian beliau sangat diakui.',NULL),
(130,'Dr. Candra Putra','Universitas Pisang','Dr. Candra Putra lulus dari Universitas Pisang dengan keahlian di bidang THT. Dengan pengalaman klinis yang mendalam, beliau telah berhasil mengatasi berbagai masalah kesehatan terkait telinga, hidung, dan tenggorokan.',NULL),
(131,'Dr. Dian Cahaya ','Universitas Anggur','Dr. Dian Cahaya adalah lulusan dari Universitas Anggur dengan fokus di bidang Psikiatri. Beliau memiliki keahlian dalam menangani gangguan mental dan emosional, dan telah membantu banyak pasien mencapai kesehatan mental yang optimal. ',NULL),
(132,'Dr. Eka Wahyu ','Universitas Durian','Dr. Eka Wahyu mendapatkan gelar dokternya dari Universitas Durian. Spesialisasi beliau terletak di bidang Penyakit Dalam, dan beliau telah menghadapi berbagai tantangan kesehatan kompleks selama bertahun-tahun.',NULL),
(133,'Dr. Fitri Ningsih ','Universitas Semangka','Dr. Fitri Ningsih adalah lulusan dari Universitas Semangka dengan keahlian di bidang Kedokteran Anak. Beliau telah bekerja dengan anak-anak selama bertahun-tahun dan memiliki pemahaman mendalam tentang kesehatan anak. ',NULL),
(134,'Dr. Gita Mawar','Universitas Melon ','Dr. Gita Mawar memiliki gelar dokter dari Universitas Melon dengan fokus di bidang Mata. Beliau telah berhasil mengatasi berbagai masalah penglihatan dan menjalani pelatihan khusus di berbagai teknik operasi mata. ',NULL),
(135,'Dr. Hanif Hidayat ','Universitas Aprikot ','Dr. Hanif Hidayat adalah lulusan dari Universitas Aprikot dengan keahlian di bidang Kedokteran Gigi. Beliau memiliki pengalaman dalam merawat dan memperbaiki kesehatan mulut dan gigi pasien-pasiennya.',NULL),
(136,'Dr. Ika Permata ','Universitas Stroberi','Dr. Ika Permata memperoleh gelar dokternya dari Universitas Stroberi. Beliau adalah seorang dokter umum yang memiliki pengetahuan mendalam tentang berbagai aspek kesehatan dan memberikan perawatan menyeluruh kepada pasien-pasiennya.',NULL);

/*Table structure for table `tb_keluhan` */

DROP TABLE IF EXISTS `tb_keluhan`;

CREATE TABLE `tb_keluhan` (
  `id_keluhan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_keluhan` varchar(255) DEFAULT NULL,
  `id_dokter` int(11) DEFAULT NULL,
  `jenis_kelamin` enum('Perempuan') DEFAULT NULL,
  `waktu_keluhan` enum('10.00 AM','12.00 AM','14.00 AM','16.00 AM','18.00 AM') DEFAULT NULL,
  `umur` int(11) DEFAULT NULL,
  `kartu_identitas` varchar(255) DEFAULT NULL,
  `deskripsi_keluhan` text DEFAULT NULL,
  PRIMARY KEY (`id_keluhan`),
  KEY `id_dokter` (`id_dokter`),
  CONSTRAINT `tb_keluhan_ibfk_1` FOREIGN KEY (`id_dokter`) REFERENCES `tb_dokter` (`id_dokter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_keluhan` */

/*Table structure for table `tb_poliklinik` */

DROP TABLE IF EXISTS `tb_poliklinik`;

CREATE TABLE `tb_poliklinik` (
  `id_poliklinik` int(11) NOT NULL AUTO_INCREMENT,
  `nama_poliklinik` varchar(255) DEFAULT NULL,
  `deskripsi_poliklinik` text DEFAULT NULL,
  PRIMARY KEY (`id_poliklinik`)
) ENGINE=InnoDB AUTO_INCREMENT=537 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_poliklinik` */

insert  into `tb_poliklinik`(`id_poliklinik`,`nama_poliklinik`,`deskripsi_poliklinik`) values 
(501,'Sp. Kandungan & Kebidanan','Spesialis Kandungan dan Kebidanan adalah dokter yang memiliki spesialisasi pada perawatan kesehatan reproduksi wanita serta kehamilan dan persalinan. Orang mengenal dokter kandungan sebagai ob-gyn, singkatan dari obstetrician-gynecologist.'),
(502,'Sp. Kulit & Kelamin','Spesialis Kulit dan Kelamin (SpKK) merupakan dokter yang fokus menangani beragam masalah pada kesehatan kulit dan kelamin, baik pria maupun wanita.'),
(503,'Sp. THT','Spesialis Telinga, Hidung dan Tenggorokan - Kepala dan Leher, adalah dokter profesional yang menangani masalah di sekitar area telinga, hidung, atau tenggorokan serta area terkait di kepala dan leher.'),
(504,'Sp. Jiwa','Spesialis Kedokteran Jiwa atau Psikiater merupakan dokter spesialis yang tidak hanya berfokus untuk mempelajari tingkah laku dan proses mental seseorang namun dapat melakukan pemberian terapi obat-obatan (farmakoterapi)'),
(505,'Sp. Penyakit Dalam','Spesialis penyakit dalam atau internis merupakan spesialis yang menangani berbagai macam penyakit yang berkaitan dengan masalah kesehatan pada organ tubuh bagian dalam yang diderita. spesialisasi ini hanya menangani pasien orang dewasa hingga lansia namun tidak dapat melakukan proses pembedahan untuk mengobati penyakit yang dialami.'),
(506,'Sp. Anak','Spesialis anak merupakan spesialis ilmu kedokteran yang berkonsentrasi pada kesehatan anak yang dimulai sejak mereka dilahirnya hingga berusia 18 / 21 tahun. Tidak hanya berfokus pada aspek penunjang kesehatan yang dibutuhkan oleh anak, namun juga gangguan kesehatan pada anak seperti penyakit, kelainan, alergi, dan sebagainya yang dapat mengganggu tumbuh kembang anak.'),
(507,'Sp. Mata','Spesialis mata merupakan spesialis yang berkonsentrasi untuk menangani dan melakukan pemeriksaan, pencegahan terhadap kerusakan, cedera, gangguan penglihatan dan penyakit mata. Spesialis ini menangani segala aspek yang terkait dengan mata hingga dapat melakukan operasi untuk menyembuhkan penglihatan mata pasien.'),
(508,'Dokter Gigi','Dokter gigi umum merupakan praktisi kesehatan yang memberikan layanan sebagai tindakan preventif, promotif, kuratif dan rehabilitatif terhadap kondisi gigi dan mulut pasien.'),
(509,'Dokter Umum','Dokter umum merupakan tenaga medis yang memiliki peranan terluas karena melakukan praktik medis untuk memeriksa kemungkinan masalah kesehatan pasien secara umum yang muncul secara tiba-tiba ataupun bersifat kronis di segala usia');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
