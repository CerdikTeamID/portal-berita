-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2024 at 11:46 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id` int(11) NOT NULL,
  `album_name` varchar(100) NOT NULL,
  `album_seo` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `album_name`, `album_seo`, `photo`, `is_active`) VALUES
(17, 'Album 1', 'album-1', 'album-1-1581343722711.jpg', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `title`, `photo`) VALUES
(5, 'Home', '3f0edd4a3de4375c41038e0ccf300b3b.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `slug`, `is_active`) VALUES
(6, 'Berita', 'berita', 'Y'),
(7, 'Profile', 'profile', 'Y'),
(8, 'Layanan', 'layanan', 'Y'),
(9, 'PPID', 'ppid', 'Y'),
(10, 'Galeri', 'galeri', 'Y'),
(11, 'tes', 'tes', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `contact_name`, `description`) VALUES
(1, 'About Me', 'Ini adalah project portal berita dan artikel sederhana, yang bertujuan membantu para programmer memahami dalam pembuatan projects serta penguasaan dalam bahasa pemrograman, library dan framework.');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `id_album` int(11) NOT NULL,
  `gallery_name` varchar(100) NOT NULL,
  `gallery_seo` varchar(100) NOT NULL,
  `information` text NOT NULL,
  `photo` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `id_album`, `gallery_name`, `gallery_seo`, `information`, `photo`, `is_active`) VALUES
(9, 17, 'Galeri 2', 'galeri-2', 'LIfe is Strange', 'galeri-2-15815614412.jpg', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `identity`
--

CREATE TABLE `identity` (
  `id` int(11) NOT NULL,
  `web_name` varchar(255) NOT NULL,
  `web_address` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `identity`
--

INSERT INTO `identity` (`id`, `web_name`, `web_address`, `meta_description`, `meta_keyword`, `photo`) VALUES
(1, 'pemkot-bekasi', 'pemkot-bekasi.com', 'Situs website dengan akses informasi terkini seputar layanan dan kegiatan dibidang komunikasi dan teknologi guna meningkatkan konektivitas serta pemanfaatan teknologi', 'pemkot-bekasi.com', 'd76d26c4b0e75e525db55cb4a7b64372.png');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 'Setting Web', '', 'fas fa-fw fa-cog', 'Y'),
(2, 'Setting Menu', '', 'fas fa-fw fa-sliders-h', 'Y'),
(3, 'Manajemen Artikel', '', 'fas fa-fw fa-newspaper', 'Y'),
(4, 'Media', '', 'fas fa-fw fa-photo-video', 'Y'),
(5, 'Profile', 'home', 'fas fa-fw fa-home', 'Y'),
(6, 'Logout', 'auth/logout', '', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `posting`
--

CREATE TABLE `posting` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `featured` char(1) NOT NULL,
  `choice` char(1) NOT NULL,
  `thread` char(1) NOT NULL,
  `id_category` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `is_active` char(1) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `posting`
--

INSERT INTO `posting` (`id`, `title`, `seo_title`, `content`, `featured`, `choice`, `thread`, `id_category`, `photo`, `is_active`, `date`) VALUES
(91, 'Komitmen Pilkada Damai, Bawaslu Gelar Deklarasi Damai dan Senam Sehat', 'komitmen-pilkada-damai-bawaslu-gelar-deklarasi-damai-dan-senam-sehat', 'CIKARANG TIMUR - Badan Pengawas Pemilihan Umum (Bawaslu) Kabupaten Bekasi menggelar Deklarasi Damai dan Senam Sehat yang dihadiri jajaran Pengawas Pemilu sampai tingkat desa, masyarakat dan pasangan calon Bupati dan Wakil Bupati Bekasi pada Pilkada tahun 2024, di Kompleks Stadion Wibawamukti, Sertajaya, Cikarang Timur, pada Minggu (10/11/2024).\r\n\r\nDalam acara ini para paslon menandatangani komitmen bersama menciptakan Pilkada 2024 secara damai.\r\n\r\nKetua Bawaslu Kabupaten Bekasi Akbar Khadafi menyampaikan acara tersebut merupakan komitmen antara Pengawas Pemilu, masyarakat dan Pasangan Calon untuk bisa melaksanakan seluruh proses Pilkada 2024 dengan damai. Selain itu diharapkan para pasangan calon bisa memberikan pendidikan politik secara baik kepada masyarakat.\r\n\r\n\"Secara tugas dan fungsi kami Pengawas Pemilu akan melaksanakan tugas dan fungsi kami, dengan memastikan seluruh proses dan tahapan kita kawal dengan baik,\" ungkap Akbar Khadafi. \r\n\r\nMengenai tahapan saat ini yang tengah berjalan, Akbar mengatakan, Bawaslu tengah menugaskan jajarannya untuk mengawasi berjalannya sortir dan lipat surat suara untuk Pilkada 2024. Proses pengawasan tersebut ada di 2 tempat, pertama di Gudang logistik Cikarang Timur dan gedung logistik KPU Kabupaten Bekasi, di Karangsambung, Kedungwaringin.\r\n\r\n\"Untuk di KPU sendiri itu sortir lipat untuk surat suara Bupati dan Wakil Bupati, sementara yang di Cikarang Timur, untuk Gubernur dan Wakil Gubernur Jawa Barat. Jadi memang kita bagi shift, kita juga minta bantuan Panwascam untuk mengawasi,\" tuturnya.\r\n\r\nMengenai pengawasan proses distribusi surat suara, pihaknya akan berkoordinasi dengan KPU Kabupaten Bekasi sekaligus menugaskan kepada Panwascam dan Pengawas Kelurahan/Desa untuk memastikan gudang logistik di tiap kecamatan dan desa secara layak dan aman.\r\n\r\n\"Jadi tidak ada halangan yang nantinya dalam tahapan distribusi surat suara,\" jelasnya.\r\n\r\nReporter : Fajar CQA\r\n\r\nEditor     : Yus Ismail', 'Y', 'N', 'Y', 6, '5a669d55ca11507de1625b0149eb0ba5.jpg', 'Y', '2024-11-11'),
(92, 'Pj Bupati Dedy Supriyadi Resmikan Masjid Lippo Cikarang 2', 'pj-bupati-dedy-supriyadi-resmikan-masjid-lippo-cikarang-2', 'Pj Bupati Bekasi Dedy Supriyadi didampingi Pj Sekda Jaoharul Alam meresmikan Masjid Lippo Cikarang 2 yang berada di Jl. Gunung Tangkuban Perahu Desa Cibatu Kecamatan Cikarang Selatan, pada Minggu (10/11/2024).\r\n\r\nPeresmian masjid tersebut secara simbolis ditandai dengan pengguntingan pita oleh Pj Bupati Bekasi Dedy Supriyadi didampingi oleh Presiden Komisaris PT. Lippo Cikarang Tbk, Didik J. Rachbini. Dilanjutkan dengan penyerahan kunci kepada DKM masjid Lippo Cikarang 2.\r\n\r\nDalam sambutannya, Pj Bupati Bekasi Dedy Supriyadi mengatakan, Masjid Lippo Cikarang 2 merupakan sebuah pencapaian besar dari kolaborasi seluruh pihak, yang tidak hanya memperindah kawasan namun juga semakin memperkuat kehidupan keagamaan serta sosial di tengah masyarakat. \r\n\r\n\"Tentunya saya sangat mengapresiasi PT. Lippo Cikarang yang telah berperan aktif dalam mewujudkan masjid ini sebagai bentuk kepedulian kepada masyarakat, semoga kontribusi ini menjadi amal jariyah yang pahalanya mengalir tanpa putus,\" ungkapnya. \r\n\r\nDedy mengungkapkan, kehadiran Masjid Lippo Cikarang 2 ini menjadi kebanggan tersendiri bagi masyarakat khususnya warga Cikarang dan sekitarnya. Tidak sekedar tempat ibadah, masjid tersebut juga simbol komitmen bersama dalam membangun masyarakat yang berlandaskan nilai-nilai keislaman yang luhur. \r\n\r\nTak hanya itu, Dedy menilai arsitektur masjid juga dibangun dengan indah dan dilengkapi dengan fasilitas yang nyaman dan modern. Ia pun berharap, agar masjid ini juga dapat menjadi pusat kegiatan keagamaan, yang dapat dimanfaatkan untuk kegiatan edukatif dan kegiatan sosial lainnya. \r\n\r\n\"Mari kita jadikan masjid ini sebagai tempat kegiatan edukatif seperti kajian-kajian islam, pengajian anak-anak, bahkan kegiatan sosial yang dapat meringankan beban masyarakat yang membutuhkan,\" ungkapnya. \r\n\r\nSementara itu, Presiden Komisaris PT Lippo Cikarang, Didik J. Rachbini mengatakan, pembangunan masjid ini merupakan yang kedua setelah masjid Lippo Cikarang 1 yang berada di Perumahan Taman Lembah Hijau Lippo Cikarang. \r\n\r\nDibangun di atas lahan seluas 2000 meter persegi, Masjid Lippo Cikarang 2 diharapkan dapat melengkapi fasilitas umum dan digunakan sebagai sarana ibadah masyarakat. Terlebih letaknya yang strategis, berada di sekitar area komersial, residensial dan berdampingan dengan Kawasan Industri Delta Silicon. \r\n\r\n\"Sebagai pengembang kawasan, ini merupakan komitmen kami untuk memfasilitasi masyarakat khususnya di Kawasan Lippo Cikarang dan sekitarnya, dengan menyediakan sarana rumah ibadah bagi penghuninya. Semoga masjid ini bisa sama-sama kita manfaatkan dan kita jaga bersama,\" jelasnya. \r\n\r\nKegiatan peresmian tersebut turut dihadiri oleh Muspika Kecamatan Cikarang Selatan, Camat Cikarang Pusat, Kepala Desa Cibatu, Ketua FKUB Kabupaten Bekasi, serta Tokoh Masyarakat dan Tokoh Agama di Cikarang Selatan.\r\n\r\nReporter : Arif Tiarno\r\n\r\nEditor      : Yus Ismail', 'Y', 'N', 'N', 6, '4be9308d92fd485a019226b5ba238713.jpg', 'Y', '2024-11-11'),
(94, 'Pj Bupati Bekasi Ajak Kagama Bersinergi Dukung Program Pemerintah Daerah', 'pj-bupati-bekasi-ajak-kagama-bersinergi-dukung-program-pemerintah-daerah', 'CIKARANG PUSAT – Pj Bupati Bekasi, Dedy Supriyadi, menghadiri acara pelantikan Pengurus Cabang Keluarga Alumni Universitas Gadjah Mada (Kagama) Kabupaten Bekasi Periode 2024-2029 serta Seminar Nasional bertajuk \"Pupuk dan Ketahanan Pangan\" yang diselenggarakan di Gedung Swatantra Wibawamukti, Kompleks Pemkab Bekasi, Cikarang Pusat, pada Minggu (03/11/2024).\r\n\r\nPj Bupati Dedy Supriyadi menyampaikan bahwa acara ini merupakan momen istimewa karena dihadiri oleh para alumni Universitas Gadjah Mada (UGM) yang telah memberikan kontribusi nyata di berbagai bidang. \r\n\r\nMenurutnya, kehadiran Kagama di Kabupaten Bekasi membawa semangat baru untuk mendukung kemajuan daerah serta memperkuat sinergi antara pemerintah dan alumni sebagai elemen masyarakat yang peduli terhadap kemajuan bangsa.\r\n\r\nDedy mengatakan, dengan tema Kagama Bersinergi Membangun Negeri, menunjukkan komitmen Kagama untuk berperan aktif dalam pembangunan nasional, termasuk di Kabupaten Bekasi. \r\n\r\n\"Sinergi adalah kunci utama untuk mencapai tujuan bersama. Karena itu saya mengajak Kagama Kabupaten Bekasi untuk mendukung program-program pemerintah daerah, seperti peningkatan kualitas pendidikan, kesehatan, ekonomi, dan sektor pertanian, yang menjadi bagian penting dari ketahanan pangan,\" ujar Dedy.\r\n\r\nLebih lanjut, ia mengatakan bahwa Kabupaten Bekasi memiliki potensi besar, khususnya di bidang agrikultur. Dukungan dari Kagama dan pemangku kepentingan lainnya diharapkan mampu memperkuat program ketahanan pangan berkelanjutan di Kabupaten Bekasi. \r\n\r\n\"Inovasi di bidang pertanian, termasuk penggunaan pupuk yang tepat, akan membantu meningkatkan produksi pangan serta mendukung kemandirian pangan nasional,\" ujarnya. \r\n\r\nDedy menggarisbawahi bahwa ketahanan pangan saat ini menjadi perhatian utama, terutama dalam menjaga kestabilan ekonomi dan memenuhi kebutuhan pangan masyarakat. Strategi yang komprehensif dan inovatif, termasuk penggunaan pupuk yang efektif dan berkelanjutan, sangat diperlukan untuk mencapai ketahanan pangan yang lebih kokoh.\r\n\r\n“Saya berharap melalui seminar Pupuk dan Ketahanan Pangan ini, para peserta dapat berbagi pengetahuan, bertukar ide, dan memperoleh wawasan baru yang bermanfaat bagi kemajuan sektor pertanian, tidak hanya di Kabupaten Bekasi, tetapi juga di seluruh Indonesia,” tuturnya.\r\n\r\nDi akhir acara, Dedy mengucapkan selamat kepada para pengurus Kagama Kabupaten Bekasi yang baru dilantik. Ia berharap mereka dapat menjalankan amanah dan tanggung jawab dengan sebaik-baiknya, khususnya dalam mewujudkan Kabupaten Bekasi yang maju, sejahtera dan berdaya saing tinggi.\r\n\r\nReporter : Jaja Jaelani\r\n\r\nEditor      : Yus Ismail', 'N', 'N', 'N', 7, '762b44c7a0f64aa48b62c52b3b7fb9e3.jpg', 'Y', '2024-11-11'),
(95, 'Disiarkan TV Nasional, KPU Bakal Gelar Debat Publik Paslon Bupati dan Wakil Bupati Bekasi', 'disiarkan-tv-nasional-kpu-bakal-gelar-debat-publik-paslon-bupati-dan-wakil-bupati-bekasi', 'KEDUNGWARINGIN - Komisi Pemilihan Umum (KPU) Kabupaten Bekasi akan menggelar Debat Publik Pasangan Calon (Paslon) Bupati dan Wakil Bupati Bekasi pada Pemilihan Kepala Daerah (Pilkada) tahun 2024.\r\n\r\nKetua KPU Kabupaten Bekasi Ali Rido menyampaikan, kegiatan Debat Publik perdana Paslon Bupati dan Wakil Bupati Bekasi ini akan disiarkan secara langsung (live) melalui stasiun televisi nasional, INews TV Jakarta, pada Minggu (3/11/2024) mulai pukul 19.00 WIB. \r\n\r\nMasyarakat dapat menyaksikan tiga pasangan calon Bupati dan Wakil Bupati Bekasi beradu visi-misi dan gagasan dalam membangun Kabupaten Bekasi 5 tahun ke depan.\r\n\r\n\"Kegiatan ini kami fasilitasi terhadap Paslon yang nanti akan diundang dan diikutsertakan partai pendukung beserta rombongan, tidak lebih dari 50 orang rombongan per pasangan calon,\" terang Ali Rido di kantor KPU Kabupaten Bekasi, Jalan Raya Rengas Bandung, Karangsambung, Kedungwaringin, pada Sabtu, (02/11/2024).\r\n\r\nPada jam tersebut masyarakat bisa menyaksikan acara Debat Publik di saluran siaran INews TV langsung, atau live streaming yang disiapkan event organizer (EO) ataupun nanti melalui YouTube Resmi KPU Kabupaten Bekasi.\r\n\r\nAli Rido menuturkan, ada 6 subtema yang akan dibahas atau didebatkan oleh Paslon Bupati dan Wakil Bupati Bekasi yang akan digelar sebanyak 3 kali. Hal itu mengacu pada Keputusan Komisi Pemilihan Umum Republik Indonesia Nomor 1363 tentang Pedoman Teknis Pelaksanaan Kampanye Pemilihan Gubernur dan Wakil Gubernur, Bupati dan Wakil Bupati, serta Walikota dan Wakil Walikota. \r\n\r\nUntuk debat perdana ini, terang Ali, Paslon akan mengupas tentang subtema terkait kesejahteraan masyarakat Kabupaten Bekasi.\r\n\r\n\"Kalau pelaksanaannya kita adakan selama 3 kali, satu debat itu 2 subtema yang akan kita jadikan satu. Kebetulan besok yang akan dibicarakan tentang kesejahteraan masyarakat Kabupaten Bekasi, yang soalnya sudah dirumuskan oleh tim perumus dalam hal ini panelis tentang visi-misi dan RPJPD Kabupaten Bekasi,\" tuturnya.\r\n\r\nSementara mengenai panelis diambil dari kalangan akademisi lokal, dari kampus Presiden University, Universitas Islam 45 Bekasi dan dari kalangan profesional.\r\n\r\n\"Mereka menjadi Tim Perumus yang mengolah tema-tema debat tersebut,\" sambungnya.\r\n\r\nAli mengemukakan acara debat menjadi kesempatan yang diberikan KPU bagi masyarakat Kabupaten Bekasi dengan mengadakan debat sebanyak 3 kali atau dalam jumlah maksimal agar masyarakat bisa melihat visi-misi calon pemimpinnya.\r\n\r\n\"Ya, kita adakan debat sebanyak 3 kali, agar masyarakat semakin tercerahkan terkait visi-misi dan gagasan para paslon. Pada hakekatnya keinginan kami agar bisa mendongkrak partisipasi masyarakat lebih baik dan bagus dari Pilkada sebelumnya,\" ujarnya.\r\n\r\nMelalui Debat Publik tersebut, dia berharap masyarakat Kabupaten Bekasi akan semakin antusias menggunakan hak pilihnya pada 27 November 2024 yang tinggal beberapa minggu ke depan.\r\n\r\nReporter : Fajar CQA\r\n\r\nEditor      : Yus Ismail', 'N', 'N', 'N', 6, '8287783cbf6641b58c1af25f443de908.jpg', 'Y', '2024-11-11'),
(96, 'Tiga Paslon Ikuti Debat Publik Pertama Pilkada Kabupaten Bekasi 2024', 'tiga-paslon-ikuti-debat-publik-pertama-pilkada-kabupaten-bekasi-2024', 'JAKARTA - Komisi Pemilihan Umum (KPU) Kabupaten Bekasi menggelar Debat Publik pertama yang diikuti tiga pasangan calon Bupati dan Wakil Bupati Bekasi pada Pilkada Serentak tahun 2024, yang digelar di MNC Conference Hall, Jakarta Pusat, pada Minggu (3/10/2024) malam. \r\n\r\nDebat Publik yang disiarkan langsung di salah satu stasiun televisi nasional tersebut diikuti tiga paslon, yakni Dani Ramdan-Romli HM (No.1), BN. Holik Qodratullah-Faizal Hafan Farid (No. 2) dan Ade Kuswara Kunang-Asep Surya Atmaja.\r\n\r\nKetua KPU Kabupaten Bekasi, Ali Rido mengatakan, Debat Publik merupakan momen yang sangat penting bagi para calon, untuk memaparkan visi, misi dan gagasan serta solusi terhadap permasalahan daerah. \r\n\r\n\"Debat Pilkada bukan sekedar pertarungan kata-kata, tapi memiliki makna yang lebih dalam bagi pemilih. Bukan tentang siapa yang fasih berbicara, tetapi siapa yang paling mampu menawarkan solusi konkret bagi masyarakat,\" ujarnya saat menyampaikan sambutan. \r\n\r\nLebih lanjut, Ali Rido mengatakan, dalam proses Pilkada, pemilih tidak hanya membutuhkan informasi tentang calon melalui brosur kampanye atau jargon dan tagline. Tapi mereka butuh melihat bagaimana para calon tersebut merespon berbagai isu strategis yang relevan dengan kebutuhan masyarakat. \r\n\r\n\"Debat merupakan ajang dimana pemilih bisa menguji kualitas kepemimpinan para calon, memahami permasalahan dan memiliki strategi yang realistis untuk menyelesaikan permasalahan secara sistematis dan terencana,\" ungkapnya. \r\n\r\nAli Rido berharap, melalui debat publik  pertama tersebut, masyarakat Kabupaten Bekasi akan semakin antusias datang ke TPS untuk memberikan hak pilihnya pada Pilkada Serentak tanggal 27 November 2024 mendatang. \r\n\r\nReporter: Fajar CQA\r\nEditor : Fuad Fauzi', 'N', 'N', 'N', 6, 'a9a900246ebdf5dbfa3ea6396032756c.jpg', 'Y', '2024-11-11');

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE `submenu` (
  `id` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `sub_title` varchar(50) NOT NULL,
  `sub_url` varchar(50) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `submenu`
--

INSERT INTO `submenu` (`id`, `id_menu`, `sub_title`, `sub_url`, `is_active`) VALUES
(1, 1, 'Identitas Web', 'admin/identity', 'Y'),
(2, 1, 'Kontak', 'admin/contact', 'Y'),
(3, 2, 'Menu Utama', 'admin/menu', 'Y'),
(4, 2, 'Sub Menu', 'admin/submenu', 'Y'),
(5, 3, 'Kategori', 'admin/category', 'Y'),
(6, 3, 'Posting', 'admin/posting', 'Y'),
(7, 4, 'Album', 'admin/album', 'Y'),
(8, 4, 'Gallery Foto', 'admin/gallery', 'Y'),
(10, 4, 'Banner', 'admin/banner', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$12$QUM2OeQCZclQqJIhZKKMt.Aq8dA3Y7eIzjtXsyr.xuE0kDjfj8SLS', 'admin@admin.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1731300172, 1, 'Garsans', 'News', NULL, '0123456789');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(37, 1, 1),
(38, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `identity`
--
ALTER TABLE `identity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posting`
--
ALTER TABLE `posting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `identity`
--
ALTER TABLE `identity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posting`
--
ALTER TABLE `posting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `submenu`
--
ALTER TABLE `submenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
