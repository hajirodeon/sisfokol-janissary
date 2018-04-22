-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 14, 2015 at 05:14 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sisfokol_janissary`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminx`
--

CREATE TABLE IF NOT EXISTS `adminx` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `usernamex` varchar(15) NOT NULL DEFAULT '',
  `passwordx` varchar(50) NOT NULL DEFAULT '',
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminx`
--

INSERT INTO `adminx` (`kd`, `usernamex`, `passwordx`, `postdate`) VALUES
('e4ea2f7dfb2e5c51e38998599e90afc2', 'admin', '21232f297a57a5a743894a0e4a801fc3', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `guru_mapel`
--

CREATE TABLE IF NOT EXISTS `guru_mapel` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_user` varchar(50) NOT NULL,
  `kd_mapel` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru_mapel`
--

INSERT INTO `guru_mapel` (`kd`, `kd_user`, `kd_mapel`) VALUES
('09f3a92ebf5e60c87e0df1c1f771876b', '4a91033bfe52de0aedecd767ee4075c5', '8c5d87f3695190b00ffc7ab43e8aed24'),
('c3cf1ab146f28ea58a36ded765474a23', '4a91033bfe52de0aedecd767ee4075c5', 'd8022de243b4ce12b64f03a48158d39f'),
('10eb276480ecf3c46951638167680f99', '205a54b0333f57b7f217b2995d028083', '41c9a05798d429b2579aacc27e80a33c'),
('38209bf2ba985259c628c07119cae24b', '205a54b0333f57b7f217b2995d028083', '8afc44d568dbc8e74709b598628e8330'),
('ddc5ba7474bcec8b45481b6732dbcfa5', '0a2a7ea8d30d9e15038f86ed50a84d6c', 'd94a6e5799011e19a614e6a915f4ece4'),
('da2e89c0488ae512c8bc4b4f5a135086', 'ebfa66a6dbfd21413d1035db2ca987a6', '20f1b5c9f861b328fcd14dd92d82f8c6'),
('bb841b7152353247ff74c59892bce6b0', '205a54b0333f57b7f217b2995d028083', 'd8022de243b4ce12b64f03a48158d39f'),
('30f1660ff82774bf9c80910e636624af', '205a54b0333f57b7f217b2995d028083', 'fc76ca9f6ebcf0f34ab21b55cefdb912'),
('e48c22e551ee27c507021a3f56e16523', '205a54b0333f57b7f217b2995d028083', '01b2dc906085b14bc0dc367427903448'),
('f52ac4a8c56795045474ee9ee96701dd', 'ebfa66a6dbfd21413d1035db2ca987a6', '8c5d87f3695190b00ffc7ab43e8aed24'),
('10379414a1c984273b8782d0ce6b1681', 'ebfa66a6dbfd21413d1035db2ca987a6', 'ddd64f6ea96d9dbb668a15e2dbd3c8ad'),
('1545b5ef74e01a38846afdabe25eab07', 'ebfa66a6dbfd21413d1035db2ca987a6', '177b3163ea9bb8bf687516bb3be4e53e'),
('d86d9c7401a268fd35f5c23c54c795b4', 'ebfa66a6dbfd21413d1035db2ca987a6', '01b2dc906085b14bc0dc367427903448'),
('18ee4f6ebe9bc4a78d7c7ccba1945d3e', 'ebfa66a6dbfd21413d1035db2ca987a6', '8afc44d568dbc8e74709b598628e8330'),
('9edf51f215ff3b1abe2166cd3713f60c', '8493b580f4504947ddc31ea23d5bd3cb', '8afc44d568dbc8e74709b598628e8330'),
('b525337a50123645bf9eba0adf71a4c4', '8493b580f4504947ddc31ea23d5bd3cb', '558dc5761abfa074e9b9f6ef52499a4d'),
('1505854faeb3939ec730fcdd02b7cd1b', '8493b580f4504947ddc31ea23d5bd3cb', '41c9a05798d429b2579aacc27e80a33c'),
('96a09b63919e2421f5241f83f0f78f93', '03abc9e674a0dc3eebe223c196e336c7', '880ce3fde58f7c627bfab6ee00afb520'),
('1815e88d149363c5a5900aed38d37357', '03abc9e674a0dc3eebe223c196e336c7', 'fc76ca9f6ebcf0f34ab21b55cefdb912'),
('4dfcdb2fdee54a4d76ff43a48634565f', '7b029cd0da55eef7b8dcdaf1d84c6353', 'd8022de243b4ce12b64f03a48158d39f');

-- --------------------------------------------------------

--
-- Table structure for table `guru_mapel_artikel`
--

CREATE TABLE IF NOT EXISTS `guru_mapel_artikel` (
  `kd` varchar(50) NOT NULL,
  `kd_guru_mapel` varchar(50) NOT NULL,
  `kd_kategori` varchar(50) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `rangkuman` varchar(255) NOT NULL,
  `isi` longtext NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru_mapel_artikel`
--

INSERT INTO `guru_mapel_artikel` (`kd`, `kd_guru_mapel`, `kd_kategori`, `judul`, `rangkuman`, `isi`, `postdate`) VALUES
('5f4bbee4c1a913ad1bb13ab665307501', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', '7b60a7cf6bb3bad7aab8014a8790886c', 'gfj', 'gfjgfj', 'fgjfgj', '2009-08-07 11:40:06'),
('927f50a6ad25b852da8b6708d08b7672', '4dfcdb2fdee54a4d76ff43a48634565f', 'cdd14de2d64f938e7fe09e24b9a68c3d', 'x', 'x', 'x', '2009-08-26 13:55:14'),
('b343bc5c605a6aca76e4292984222e86', '4dfcdb2fdee54a4d76ff43a48634565f', '03735059f55c770990f478d081e82c72', 'r', 'r', 'xkkirixpxkkananxrxkkirixxgmringxpxkkananxxkkirixpxkkananx&nbspxkommaxxkkirixxgmringxpxkkananxxkkirixpxkkananxxkkiriximg src="..xgmringx..xgmringx..xgmringxfileboxxgmringxexgmringxartikelxgmringxb343bc5c605a6aca76e4292984222e86xgmringxos38045.jpg" alt="xkkuriximgxkkurnanx" title="xkkuriximgxkkurnanx" width="278" height="183" xgmringxxkkananx xkkirixbr xgmringxxkkananxxkkirixxgmringxpxkkananx', '2009-08-26 13:56:03'),
('859db946b4493324b03b1561bcb26b75', '09f3a92ebf5e60c87e0df1c1f771876b', '0678ff0c05405c8a00ca43e46fea5392', 'we324', 'xkkirixpxkkananxsdf fdsfdsfdf fxkkirixxgmringxpxkkananx', 'xkkirixpxkkananxxkkiriximg id="MathMLEq1" src="..xgmringx..xgmringx..xgmringxfileboxxgmringxequationxgmringxCD8A2D0BxstrixFD2DxstrixCF55xstrix84AExstrix4F0C7AADD5B4.JPG" alt="" border="0" xgmringxxkkananxxkkirixxgmringxpxkkananx', '2011-05-01 11:30:39'),
('47a8dbf4b48899031dabcb0a3a275b6f', 'c3cf1ab146f28ea58a36ded765474a23', '2dfee248db2833d9f58c1082ab8dd8e7', 'sadasfsasaf', 'xkkirixpxkkananxsafasfsfxkkirixxgmringxpxkkananx', 'xkkirixpxkkananxsafsafxkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxsxkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxfxkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxasfxkkirixxgmringxpxkkananx\r\nxkkirixpxkkananx&nbspxkommaxxkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxsfxkkiriximg id="MathMLEq1" src="..xgmringx..xgmringx..xgmringxincxgmringxclassxgmringx..xgmringx..xgmringxfileboxxgmringxequationxgmringx17B23265xstrixB83Exstrix0562xstrix6F49xstrix768C54D8649C.JPG" alt="" border="0" xgmringxxkkananxxkkirixxgmringxpxkkananx', '2011-05-01 11:47:59');

-- --------------------------------------------------------

--
-- Table structure for table `guru_mapel_artikel_filebox`
--

CREATE TABLE IF NOT EXISTS `guru_mapel_artikel_filebox` (
  `kd` varchar(50) NOT NULL,
  `kd_guru_mapel_artikel` varchar(50) NOT NULL,
  `filex` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru_mapel_artikel_filebox`
--

INSERT INTO `guru_mapel_artikel_filebox` (`kd`, `kd_guru_mapel_artikel`, `filex`) VALUES
('c50df820a5e36a0fa41d54fc87965550', 'b343bc5c605a6aca76e4292984222e86', 'os38045.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `guru_mapel_artikel_msg`
--

CREATE TABLE IF NOT EXISTS `guru_mapel_artikel_msg` (
  `kd` varchar(50) NOT NULL,
  `kd_guru_mapel_artikel` varchar(50) NOT NULL,
  `dari` varchar(50) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru_mapel_artikel_msg`
--

INSERT INTO `guru_mapel_artikel_msg` (`kd`, `kd_guru_mapel_artikel`, `dari`, `msg`, `postdate`) VALUES
('b1afa6626694c7c6e6497f522f0492f1', '5f4bbee4c1a913ad1bb13ab665307501', 'ebfa66a6dbfd21413d1035db2ca987a6', 'uuuu', '2009-08-15 12:32:58'),
('3acd26bdf464c3c05ab67093a51f782e', '5f4bbee4c1a913ad1bb13ab665307501', 'c8501a58dde52c15ac3ac56fbe669603', 'xkommaxxkommaxxkommaxxkommax', '2009-08-23 11:50:01'),
('ef67b355cdb3f2ca7ea1620dfacae14d', '5f4bbee4c1a913ad1bb13ab665307501', 'c8501a58dde52c15ac3ac56fbe669603', 'wow...', '2009-08-24 09:38:55'),
('dc36490cd4ebf07f701882a363b444de', '5f4bbee4c1a913ad1bb13ab665307501', 'e5cabee927429398b4d2a289166d511b', 'apaan lagi nih...?', '2009-08-26 13:13:44');

-- --------------------------------------------------------

--
-- Table structure for table `guru_mapel_chatroom`
--

CREATE TABLE IF NOT EXISTS `guru_mapel_chatroom` (
  `kd` varchar(50) NOT NULL,
  `kd_guru_mapel` varchar(50) NOT NULL,
  `kd_user` varchar(50) NOT NULL,
  `msg` longtext NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru_mapel_chatroom`
--

INSERT INTO `guru_mapel_chatroom` (`kd`, `kd_guru_mapel`, `kd_user`, `msg`, `postdate`) VALUES
('81e1347a46b18d96d21f645c858572ed', '09f3a92ebf5e60c87e0df1c1f771876b', '4a91033bfe52de0aedecd767ee4075c5', 'tes..', '2015-09-13 13:31:36');

-- --------------------------------------------------------

--
-- Table structure for table `guru_mapel_file_materi`
--

CREATE TABLE IF NOT EXISTS `guru_mapel_file_materi` (
  `kd` varchar(50) NOT NULL,
  `kd_guru_mapel` varchar(50) NOT NULL,
  `ket` varchar(100) NOT NULL,
  `filex` varchar(255) NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru_mapel_file_materi`
--

INSERT INTO `guru_mapel_file_materi` (`kd`, `kd_guru_mapel`, `ket`, `filex`, `postdate`) VALUES
('cf62e88120139cd7f8495c44c3b4da3d', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', 'salahxgwahxsatuxgwahxstandxgwahxSISFOKOL', 'foto088.jpg', '2009-08-13 13:25:21'),
('a5ea70b984a1c7322a72fb857a711cbf', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', 'SISFOKOL Wallpaper', 'jkhp_linux1280.jpg', '2009-08-13 13:27:43'),
('94db18d449368d3a416962f88c1fa3de', '4dfcdb2fdee54a4d76ff43a48634565f', 'Bumi', '54281.jpg', '2009-08-26 13:56:28'),
('461be2f66c64eadb24b795ec4f19c1e8', '4dfcdb2fdee54a4d76ff43a48634565f', 'HDD', '55220.jpg', '2009-08-26 13:56:57');

-- --------------------------------------------------------

--
-- Table structure for table `guru_mapel_forum`
--

CREATE TABLE IF NOT EXISTS `guru_mapel_forum` (
  `kd` varchar(50) NOT NULL,
  `kd_guru_mapel` varchar(50) NOT NULL,
  `topik` varchar(255) NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru_mapel_forum`
--

INSERT INTO `guru_mapel_forum` (`kd`, `kd_guru_mapel`, `topik`, `postdate`) VALUES
('f4d584bec4af18a6a082f4a259963bfe', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', 'SISFOKOL itu, enaknya dicampur dengan LINUX, Windows, BSD, Debian, atau Macintosh...?', '2009-08-15 12:28:52'),
('9a71473c2946b97e9fda17f3c14da925', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', 'Lisensi GPL atau LGPL...?', '2009-08-15 12:30:43'),
('4cdbac2119dfc71de42e05baca2f0dc5', '4dfcdb2fdee54a4d76ff43a48634565f', '1 + 1 xpentungx= 2. Kalian percaya...?', '2009-08-26 13:58:41');

-- --------------------------------------------------------

--
-- Table structure for table `guru_mapel_forum_msg`
--

CREATE TABLE IF NOT EXISTS `guru_mapel_forum_msg` (
  `kd` varchar(50) NOT NULL,
  `kd_guru_mapel_forum` varchar(50) NOT NULL,
  `dari` varchar(50) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru_mapel_forum_msg`
--

INSERT INTO `guru_mapel_forum_msg` (`kd`, `kd_guru_mapel_forum`, `dari`, `msg`, `postdate`) VALUES
('43b1245f3d3474e32451298bcac8a912', 'f4d584bec4af18a6a082f4a259963bfe', 'c8501a58dde52c15ac3ac56fbe669603', 'lalu...', '2009-08-23 16:26:13'),
('b8f552f5c22122d2b837eac8249a0e2f', 'f4d584bec4af18a6a082f4a259963bfe', 'c8501a58dde52c15ac3ac56fbe669603', 'tanya kenapa...?', '2009-08-23 16:24:41'),
('8ed47c573edb82ecb3498f66969edffa', 'f4d584bec4af18a6a082f4a259963bfe', 'ebfa66a6dbfd21413d1035db2ca987a6', 'aq sih enjoy aja...', '2009-08-15 12:29:04'),
('d64c4d235e124e577e52faa72943a316', '9a71473c2946b97e9fda17f3c14da925', 'c8501a58dde52c15ac3ac56fbe669603', 'gak paham. tapi aq cuman tahu GPL...', '2009-08-24 09:39:51'),
('dce337eb7e9a1f02d37ec75b1c6c6380', 'f4d584bec4af18a6a082f4a259963bfe', 'e5cabee927429398b4d2a289166d511b', 'yang penting, semuanya bisa menikmati. amin.', '2009-08-26 13:14:15'),
('46c7e7a4a89b725d95518d3d909dbda0', '4cdbac2119dfc71de42e05baca2f0dc5', '7b029cd0da55eef7b8dcdaf1d84c6353', 'aq sangat percaya.', '2009-08-26 13:58:50');

-- --------------------------------------------------------

--
-- Table structure for table `guru_mapel_kalender`
--

CREATE TABLE IF NOT EXISTS `guru_mapel_kalender` (
  `kd` varchar(50) NOT NULL,
  `kd_guru_mapel` varchar(50) NOT NULL,
  `tgl` date NOT NULL,
  `ket` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru_mapel_kalender`
--

INSERT INTO `guru_mapel_kalender` (`kd`, `kd_guru_mapel`, `tgl`, `ket`) VALUES
('93666387e30259867479b601f52e5178', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', '2008-01-01', 'xxxxstrixxyz'),
('b8767814eebd414f132caefbb1d05447', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', '2009-08-26', 'Puasa hari keberapa ya...?'),
('a53bb8aef566469ccb7d00f2cd821730', '4dfcdb2fdee54a4d76ff43a48634565f', '2008-01-02', '....test...\r\nsatu...\r\n\r\ndua...\r\n\r\ntiga...'),
('97223525bf351a4f14fa87d9110d38f1', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', '2008-01-05', 'yyy\r\ndfhfdh\r\n\r\n\r\ndfh\r\ndf\r\nh\r\nfdh\r\n\r\nfdhfdhdfh');

-- --------------------------------------------------------

--
-- Table structure for table `guru_mapel_kategori`
--

CREATE TABLE IF NOT EXISTS `guru_mapel_kategori` (
  `kd` varchar(50) NOT NULL,
  `kd_guru_mapel` varchar(50) NOT NULL,
  `kategori` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru_mapel_kategori`
--

INSERT INTO `guru_mapel_kategori` (`kd`, `kd_guru_mapel`, `kategori`) VALUES
('50366d5ecc1d6f509095ebae63d1c378', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', 'xxxx2'),
('9da9e0a312dbaddc7b948868bc5b010a', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', 'Komputer'),
('331c2f0c47c0e2bd545616509ccfccab', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', 'Tips'),
('df57a31e81cf1101b3c60d4fbc52885b', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', 'xyz'),
('03735059f55c770990f478d081e82c72', '4dfcdb2fdee54a4d76ff43a48634565f', 'Menengah'),
('cdd14de2d64f938e7fe09e24b9a68c3d', '4dfcdb2fdee54a4d76ff43a48634565f', 'Dasar'),
('6fae932d2d6a0cc3af07841300ab6fd0', '4dfcdb2fdee54a4d76ff43a48634565f', 'Ahli'),
('0678ff0c05405c8a00ca43e46fea5392', '09f3a92ebf5e60c87e0df1c1f771876b', 'coba'),
('2dfee248db2833d9f58c1082ab8dd8e7', 'c3cf1ab146f28ea58a36ded765474a23', 'dad'),
('9f39eb4deb313447332c4f99ca2b2d8f', '1815e88d149363c5a5900aed38d37357', 'materi baru');

-- --------------------------------------------------------

--
-- Table structure for table `guru_mapel_link`
--

CREATE TABLE IF NOT EXISTS `guru_mapel_link` (
  `kd` varchar(50) NOT NULL,
  `kd_guru_mapel` varchar(50) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `url` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru_mapel_link`
--

INSERT INTO `guru_mapel_link` (`kd`, `kd_guru_mapel`, `judul`, `url`) VALUES
('8625458342585719ad9e2ba160ed5d9b', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', 'Blog SISFOKOL', 'sisfokol.wordpress.com'),
('4a79c4f21b2ad581c19c812b05e3c2a6', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', 'Toko BALIWAE', 'toko.baliwae.com'),
('bfaff0352a5030d256fbddd09acee783', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', 'KapanLagi News', 'www.kapanlagi.com'),
('e47dc58ff06ed4b747df9b2ee20b93ff', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', 'Detik News', 'www.detik.com'),
('210b132ed756e57a6b701b94dfc4b8e4', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', 'Suara Merdeka News', 'www.suaramerdeka.com'),
('bd0f3195648f36ba1874349c9c1d0894', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', 'Liputan 6 News', 'www.liputan6.com'),
('3d6f839879422faf7ef428712069ddfe', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', 'DHTML Goodies', 'www.dhtmlgoodies.com'),
('291c1177e60c7dfda6600cb6af3dc7b1', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', 'SourceForge NET', 'www.sourceforge.net'),
('1ad421a512c517797511e465dd07a539', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', 'Yahoo', 'www.yahoo.com'),
('01d94ebbf5a3f3d054bc508cfe8bea01', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', 'Google', 'www.google.com'),
('4d47cdedc825d261720518bbb4475060', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', 'InfoLinux', 'www.infolinux.co.id'),
('84e37b93555f590b8bd436cc9eeb89b5', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', 'Linux Organisation', 'www.linux.or.id'),
('7ddcb2a08a6a4fcf8357f03ec166fdcc', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', 'Dynamic Drive', 'www.dynamicdive.com'),
('064ca2784a859afddf3657945645856d', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', 'HotScripts', 'www.hotscripts.com'),
('f2513795303edb7534d1472e98c61628', '4dfcdb2fdee54a4d76ff43a48634565f', 'KapanLagiNEWS', 'www.kapanlagi.com'),
('265d3d01adf6887b4e046c44ff0b4195', '4dfcdb2fdee54a4d76ff43a48634565f', 'Blog SISFOKOL', 'sisfokol.wordpress.com');

-- --------------------------------------------------------

--
-- Table structure for table `guru_mapel_news`
--

CREATE TABLE IF NOT EXISTS `guru_mapel_news` (
  `kd` varchar(50) NOT NULL,
  `kd_guru_mapel` varchar(50) NOT NULL,
  `kd_kategori` varchar(50) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `rangkuman` varchar(255) NOT NULL,
  `isi` longtext NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru_mapel_news`
--

INSERT INTO `guru_mapel_news` (`kd`, `kd_guru_mapel`, `kd_kategori`, `judul`, `rangkuman`, `isi`, `postdate`) VALUES
('01cd7740755b0b78d03d98b79232a868', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', '7b60a7cf6bb3bad7aab8014a8790886c', 'xy', 'xy', 'xy', '2009-08-06 12:49:23'),
('ef41a1b83b35a3a61dcd286fb1036af1', '4dfcdb2fdee54a4d76ff43a48634565f', '6fae932d2d6a0cc3af07841300ab6fd0', 'x', 'x', 'x', '2009-08-26 13:48:05'),
('3aa36ec3b3ac589134e545c47ed095c3', '4dfcdb2fdee54a4d76ff43a48634565f', '6fae932d2d6a0cc3af07841300ab6fd0', 'x', 'x', 'xkkirixpxkkananxxxkkirixxgmringxpxkkananxxkkirixpxkkananxxkkiriximg src="..xgmringx..xgmringx..xgmringxfileboxxgmringxexgmringxnewsxgmringx3aa36ec3b3ac589134e545c47ed095c3xgmringx54132.jpg" alt="xkkuriximgxkkurnanx" title="xkkuriximgxkkurnanx" width="226" height="226" xgmringxxkkananx xkkirixbr xgmringxxkkananxxkkirixxgmringxpxkkananx', '2009-08-26 13:48:15'),
('25cbc4689f627096e4eecfa8d86aa636', '09f3a92ebf5e60c87e0df1c1f771876b', '0678ff0c05405c8a00ca43e46fea5392', '33433', 'xkkirixpxkkananxasas ssdddxkkirixxgmringxpxkkananx', 'xkkirixpxkkananxxkkiriximg id="MathMLEq1" src="..xgmringx..xgmringx..xgmringxfileboxxgmringxequationxgmringxCE503A4CxstrixD6ECxstrixCAF4xstrixACCBxstrix5F5D39409555.JPG" alt="" border="0" xgmringxxkkananxxkkirixxgmringxpxkkananx\r\nxkkirixpxkkananx&nbspxkommaxxkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxdsfsdfxkkirixxgmringxpxkkananx\r\nxkkirixpxkkananx&nbspxkommaxxkkirixxgmringxpxkkananx\r\nxkkirixpxkkananx&nbspxkommaxxkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxdsfxkkirixxgmringxpxkkananx\r\nxkkirixpxkkananx&nbspxkommaxxkkirixxgmringxpxkkananx\r\nxkkirixpxkkananx&nbspxkommaxxkkirixxgmringxpxkkananx\r\nxkkirixtable border="0"xkkananx\r\nxkkirixtbodyxkkananx\r\nxkkirixtrxkkananx\r\nxkkirixtdxkkananx11xkkirixxgmringxtdxkkananx\r\nxkkirixtdxkkananx233xkkirixxgmringxtdxkkananx\r\nxkkirixxgmringxtrxkkananx\r\nxkkirixtrxkkananx\r\nxkkirixtdxkkananx&nbspxkommaxxkkirixxgmringxtdxkkananx\r\nxkkirixtdxkkananx&nbspxkommaxxkkirixxgmringxtdxkkananx\r\nxkkirixxgmringxtrxkkananx\r\nxkkirixxgmringxtbodyxkkananx\r\nxkkirixxgmringxtablexkkananx', '2011-05-01 11:27:14');

-- --------------------------------------------------------

--
-- Table structure for table `guru_mapel_news_filebox`
--

CREATE TABLE IF NOT EXISTS `guru_mapel_news_filebox` (
  `kd` varchar(50) NOT NULL,
  `kd_guru_mapel_news` varchar(50) NOT NULL,
  `filex` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru_mapel_news_filebox`
--

INSERT INTO `guru_mapel_news_filebox` (`kd`, `kd_guru_mapel_news`, `filex`) VALUES
('4e810be8490049efa397d88aefb23fa7', '01cd7740755b0b78d03d98b79232a868', '54010.jpg'),
('a37454e2986f1088ae8efc08d118b822', '01cd7740755b0b78d03d98b79232a868', '54026.jpg'),
('bf3730275ee07058310b99925b58c0e4', '3aa36ec3b3ac589134e545c47ed095c3', '54132.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `guru_mapel_news_msg`
--

CREATE TABLE IF NOT EXISTS `guru_mapel_news_msg` (
  `kd` varchar(50) NOT NULL,
  `kd_guru_mapel_news` varchar(50) NOT NULL,
  `dari` varchar(50) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru_mapel_news_msg`
--

INSERT INTO `guru_mapel_news_msg` (`kd`, `kd_guru_mapel_news`, `dari`, `msg`, `postdate`) VALUES
('6bc81da5e46ea2ef54f049f136fe920d', '620831f41051b3d68a71ddb7884b4663', 'ebfa66a6dbfd21413d1035db2ca987a6', 'hh', '2009-08-03 13:45:47'),
('83856994b8c128b35330a82a8ae6eaef', '46b438a8729f521cede5a05f3f274f05', 'ebfa66a6dbfd21413d1035db2ca987a6', 'enjoy aja...', '2009-08-04 12:26:29'),
('77002f9d8c1603d538de03b40effcf26', '46b438a8729f521cede5a05f3f274f05', 'ebfa66a6dbfd21413d1035db2ca987a6', '..........', '2009-08-04 12:28:46'),
('3e5b2c150375d1c80c2725b4e2b49a4f', '46b438a8729f521cede5a05f3f274f05', 'c8501a58dde52c15ac3ac56fbe669603', 'ok.', '2009-08-05 13:07:36'),
('789a99a3c6a5dbbbbcd2972dbb3d38cb', '46b438a8729f521cede5a05f3f274f05', 'c8501a58dde52c15ac3ac56fbe669603', 'ooooooooo', '2009-08-05 13:57:16'),
('f6cc2803480c8b7f738dfd5ddca3b75f', '01cd7740755b0b78d03d98b79232a868', 'ebfa66a6dbfd21413d1035db2ca987a6', 'iii', '2009-08-06 12:49:56'),
('6b73b1f79fa0c2ba8f69fdf0b83d5844', '01cd7740755b0b78d03d98b79232a868', 'c8501a58dde52c15ac3ac56fbe669603', 'kkkk', '2009-08-06 13:26:50'),
('129ecb67d74bfb28edf002b01a2e05b4', '01cd7740755b0b78d03d98b79232a868', 'c8501a58dde52c15ac3ac56fbe669603', 'yyyuuu', '2009-08-06 13:28:30'),
('0cf918d5a5923fe81c92c16bd3a3b1ff', '01cd7740755b0b78d03d98b79232a868', 'ebfa66a6dbfd21413d1035db2ca987a6', 'ya...', '2009-08-15 12:32:04'),
('281f9df69f35e07dfc5e340f953bc133', '01cd7740755b0b78d03d98b79232a868', 'c8501a58dde52c15ac3ac56fbe669603', '', '2009-08-23 11:45:25'),
('ea9a8bd661e6282ddaf62a26626ae543', '01cd7740755b0b78d03d98b79232a868', 'c8501a58dde52c15ac3ac56fbe669603', 'lg belajar aja...?', '2009-08-24 09:38:13'),
('a32183d8269bf29bb105bea1835ad99f', '01cd7740755b0b78d03d98b79232a868', 'e5cabee927429398b4d2a289166d511b', 'tidak jelas lho bu...', '2009-08-26 13:12:58'),
('aea79b2be98824fc39d422a32e2e0bc7', '3aa36ec3b3ac589134e545c47ed095c3', '4a91033bfe52de0aedecd767ee4075c5', ',n,mn,', '2010-12-26 10:54:48'),
('bb548b09d76f5e7cd98646e49860715d', '25cbc4689f627096e4eecfa8d86aa636', '4a91033bfe52de0aedecd767ee4075c5', '&ampxkommaxltxkommaxp&ampxkommaxgtxkommaxsiap.....&ampxkommaxltxkommaxxgmringxp&ampxkommaxgtxkommax', '2015-09-12 11:43:21'),
('73aecb37b898351bfb467c298bcad969', '25cbc4689f627096e4eecfa8d86aa636', 'c8501a58dde52c15ac3ac56fbe669603', 'ok...', '2015-09-13 13:33:20');

-- --------------------------------------------------------

--
-- Table structure for table `guru_mapel_polling`
--

CREATE TABLE IF NOT EXISTS `guru_mapel_polling` (
  `kd` varchar(50) NOT NULL,
  `kd_guru_mapel` varchar(50) NOT NULL,
  `topik` varchar(100) NOT NULL,
  `opsi1` varchar(50) NOT NULL,
  `opsi2` varchar(50) NOT NULL,
  `opsi3` varchar(50) NOT NULL,
  `opsi4` varchar(50) NOT NULL,
  `opsi5` varchar(50) NOT NULL,
  `nil_opsi1` varchar(5) NOT NULL DEFAULT '0',
  `nil_opsi2` varchar(5) NOT NULL DEFAULT '0',
  `nil_opsi3` varchar(5) NOT NULL DEFAULT '0',
  `nil_opsi4` varchar(5) NOT NULL DEFAULT '0',
  `nil_opsi5` varchar(5) NOT NULL DEFAULT '0',
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru_mapel_polling`
--

INSERT INTO `guru_mapel_polling` (`kd`, `kd_guru_mapel`, `topik`, `opsi1`, `opsi2`, `opsi3`, `opsi4`, `opsi5`, `nil_opsi1`, `nil_opsi2`, `nil_opsi3`, `nil_opsi4`, `nil_opsi5`, `postdate`) VALUES
('ffa6227541dab81f2ed85891e26fba5b', '4dfcdb2fdee54a4d76ff43a48634565f', 'Apa aja keluarga OS . . . ?', 'BSD', 'LINUX', 'UNIX', 'MAC', 'Windows', '0', '2', '1', '0', '2', '2009-08-26 13:45:20'),
('9a719858e1237db39bfbf4a67c8b4e40', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', 'Mengapa Anda memilih SISFOKOL . . . ?', 'Karena Mudah Digunakan', 'Enjoy Aja', 'Sangat Bermanfaat', 'Tidak Tahu', 'Tanya Kenapa', '11', '12', '15', '12', '15', '2009-08-12 12:42:17');

-- --------------------------------------------------------

--
-- Table structure for table `guru_mapel_soal`
--

CREATE TABLE IF NOT EXISTS `guru_mapel_soal` (
  `kd` varchar(50) NOT NULL,
  `kd_guru_mapel` varchar(50) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `bobot` varchar(2) NOT NULL,
  `waktu` varchar(3) NOT NULL DEFAULT '1',
  `status` enum('true','false') NOT NULL DEFAULT 'false',
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru_mapel_soal`
--

INSERT INTO `guru_mapel_soal` (`kd`, `kd_guru_mapel`, `judul`, `bobot`, `waktu`, `status`, `postdate`) VALUES
('d6c173e252b692587b5c07eff4ef60d9', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', 'BABxgwahx1', '5', '1', 'true', '2009-08-26 12:05:01'),
('f3908715c405b9559f650bb62db523a8', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', 'BAB 2', '2', '5', 'false', '2009-08-26 12:04:46'),
('e3f289998c3f2b77d9b086011bab786a', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', 'BAB 4', '5', '2', 'true', '2009-08-26 12:04:56'),
('c8f3a7a0799d4146095ff5c5b3f2355a', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', 'BAB 3', '4', '5', 'false', '2009-08-26 12:04:52'),
('5a216709b4697310d0682d3d7f92df93', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', 'AAAx', '2', '2', 'true', '2009-08-26 12:07:43'),
('9991ef2b715a3a21c6633b9f7df6a679', '4dfcdb2fdee54a4d76ff43a48634565f', 'xxx', '1', '1', 'false', '0000-00-00 00:00:00'),
('b11389dae7a495f0f373ce395163a1b6', 'c3cf1ab146f28ea58a36ded765474a23', 'aaaa', '70', '120', 'true', '0000-00-00 00:00:00'),
('8c6bc3d17f788d972733f1b5cc70436a', '09f3a92ebf5e60c87e0df1c1f771876b', '121', '1', '1', 'true', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `guru_mapel_soal_detail`
--

CREATE TABLE IF NOT EXISTS `guru_mapel_soal_detail` (
  `kd` varchar(50) NOT NULL,
  `kd_guru_mapel_soal` varchar(50) NOT NULL,
  `no` varchar(50) NOT NULL,
  `soal` longtext NOT NULL,
  `kunci` varchar(1) NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru_mapel_soal_detail`
--

INSERT INTO `guru_mapel_soal_detail` (`kd`, `kd_guru_mapel_soal`, `no`, `soal`, `kunci`, `postdate`) VALUES
('cc5ecd3a6e39e5ba3279b07f30e6ad4f', 'd6c173e252b692587b5c07eff4ef60d9', '1', 'xkkirixpxkkananxapa...?xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxA. 1xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxB. 2xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxC. 3xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxD. 4xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxE. 5xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananx&nbspxkommaxxkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxxkkirixobject width="320" height="240" data="..xgmringx..xgmringx..xgmringxfileboxxgmringxexgmringxsoalxgmringxxgmringxxgmringxalatukur.swf" type="applicationxgmringxxxstrixshockwavexstrixflash"xkkananxxkkirixparam name="src" value="..xgmringx..xgmringx..xgmringxfileboxxgmringxexgmringxsoalxgmringxxgmringxxgmringxalatukur.swf" xgmringxxkkananxxkkirixxgmringxobjectxkkananxxkkirixxgmringxpxkkananx', 'C', '2011-05-16 11:50:01'),
('ebc152423d9029e77f1e4d36a6497959', 'f3908715c405b9559f650bb62db523a8', '1', 'xkkirixpxkkananxapa...?xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxA. 1xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxB. 2xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxC. 3xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxD. 4xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxE. 5xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananx&nbspxkommaxxkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxxkkirixobject width="320" height="240" data="..xgmringx..xgmringx..xgmringxfileboxxgmringxexgmringxsoalxgmringxxgmringxxgmringxalatukur.swf" type="applicationxgmringxxxstrixshockwavexstrixflash"xkkananxxkkirixparam name="src" value="..xgmringx..xgmringx..xgmringxfileboxxgmringxexgmringxsoalxgmringxxgmringxxgmringxalatukur.swf" xgmringxxkkananxxkkirixxgmringxobjectxkkananxxkkirixxgmringxpxkkananx', 'C', '2011-05-16 11:50:01'),
('912bb046fbf5786681811ee7e9dbcf97', 'f3908715c405b9559f650bb62db523a8', '1', 'xkkirixpxkkananxapa...?xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxA. 1xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxB. 2xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxC. 3xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxD. 4xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxE. 5xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananx&nbspxkommaxxkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxxkkirixobject width="320" height="240" data="..xgmringx..xgmringx..xgmringxfileboxxgmringxexgmringxsoalxgmringxxgmringxxgmringxalatukur.swf" type="applicationxgmringxxxstrixshockwavexstrixflash"xkkananxxkkirixparam name="src" value="..xgmringx..xgmringx..xgmringxfileboxxgmringxexgmringxsoalxgmringxxgmringxxgmringxalatukur.swf" xgmringxxkkananxxkkirixxgmringxobjectxkkananxxkkirixxgmringxpxkkananx', 'C', '2011-05-16 11:50:01'),
('77340cf3d5f3c94eb4da0ea49e774057', 'd6c173e252b692587b5c07eff4ef60d9', '1', 'xkkirixpxkkananxapa...?xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxA. 1xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxB. 2xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxC. 3xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxD. 4xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxE. 5xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananx&nbspxkommaxxkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxxkkirixobject width="320" height="240" data="..xgmringx..xgmringx..xgmringxfileboxxgmringxexgmringxsoalxgmringxxgmringxxgmringxalatukur.swf" type="applicationxgmringxxxstrixshockwavexstrixflash"xkkananxxkkirixparam name="src" value="..xgmringx..xgmringx..xgmringxfileboxxgmringxexgmringxsoalxgmringxxgmringxxgmringxalatukur.swf" xgmringxxkkananxxkkirixxgmringxobjectxkkananxxkkirixxgmringxpxkkananx', 'C', '2011-05-16 11:50:01'),
('ec42faa309d7ad15dc3bec8f39eff283', 'f3908715c405b9559f650bb62db523a8', '1', 'xkkirixpxkkananxapa...?xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxA. 1xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxB. 2xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxC. 3xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxD. 4xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxE. 5xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananx&nbspxkommaxxkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxxkkirixobject width="320" height="240" data="..xgmringx..xgmringx..xgmringxfileboxxgmringxexgmringxsoalxgmringxxgmringxxgmringxalatukur.swf" type="applicationxgmringxxxstrixshockwavexstrixflash"xkkananxxkkirixparam name="src" value="..xgmringx..xgmringx..xgmringxfileboxxgmringxexgmringxsoalxgmringxxgmringxxgmringxalatukur.swf" xgmringxxkkananxxkkirixxgmringxobjectxkkananxxkkirixxgmringxpxkkananx', 'C', '2011-05-16 11:50:01'),
('dff115a7dccb85ad688b7604e500f80d', 'e3f289998c3f2b77d9b086011bab786a', '1', 'xkkirixpxkkananxapa...?xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxA. 1xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxB. 2xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxC. 3xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxD. 4xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxE. 5xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananx&nbspxkommaxxkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxxkkirixobject width="320" height="240" data="..xgmringx..xgmringx..xgmringxfileboxxgmringxexgmringxsoalxgmringxxgmringxxgmringxalatukur.swf" type="applicationxgmringxxxstrixshockwavexstrixflash"xkkananxxkkirixparam name="src" value="..xgmringx..xgmringx..xgmringxfileboxxgmringxexgmringxsoalxgmringxxgmringxxgmringxalatukur.swf" xgmringxxkkananxxkkirixxgmringxobjectxkkananxxkkirixxgmringxpxkkananx', 'C', '2011-05-16 11:50:01'),
('494d99b728ba51ef9ac130d2db7f053c', 'e3f289998c3f2b77d9b086011bab786a', '1', 'xkkirixpxkkananxapa...?xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxA. 1xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxB. 2xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxC. 3xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxD. 4xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxE. 5xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananx&nbspxkommaxxkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxxkkirixobject width="320" height="240" data="..xgmringx..xgmringx..xgmringxfileboxxgmringxexgmringxsoalxgmringxxgmringxxgmringxalatukur.swf" type="applicationxgmringxxxstrixshockwavexstrixflash"xkkananxxkkirixparam name="src" value="..xgmringx..xgmringx..xgmringxfileboxxgmringxexgmringxsoalxgmringxxgmringxxgmringxalatukur.swf" xgmringxxkkananxxkkirixxgmringxobjectxkkananxxkkirixxgmringxpxkkananx', 'C', '2011-05-16 11:50:01'),
('3ed20988649da29852615d53675b3239', '5a216709b4697310d0682d3d7f92df93', '1', 'xkkirixpxkkananxapa...?xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxA. 1xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxB. 2xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxC. 3xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxD. 4xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxE. 5xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananx&nbspxkommaxxkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxxkkirixobject width="320" height="240" data="..xgmringx..xgmringx..xgmringxfileboxxgmringxexgmringxsoalxgmringxxgmringxxgmringxalatukur.swf" type="applicationxgmringxxxstrixshockwavexstrixflash"xkkananxxkkirixparam name="src" value="..xgmringx..xgmringx..xgmringxfileboxxgmringxexgmringxsoalxgmringxxgmringxxgmringxalatukur.swf" xgmringxxkkananxxkkirixxgmringxobjectxkkananxxkkirixxgmringxpxkkananx', 'C', '2011-05-16 11:50:01'),
('03156e70f59ddc7fa0ba04e47faa84e4', '5a216709b4697310d0682d3d7f92df93', '1', 'xkkirixpxkkananxapa...?xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxA. 1xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxB. 2xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxC. 3xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxD. 4xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxE. 5xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananx&nbspxkommaxxkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxxkkirixobject width="320" height="240" data="..xgmringx..xgmringx..xgmringxfileboxxgmringxexgmringxsoalxgmringxxgmringxxgmringxalatukur.swf" type="applicationxgmringxxxstrixshockwavexstrixflash"xkkananxxkkirixparam name="src" value="..xgmringx..xgmringx..xgmringxfileboxxgmringxexgmringxsoalxgmringxxgmringxxgmringxalatukur.swf" xgmringxxkkananxxkkirixxgmringxobjectxkkananxxkkirixxgmringxpxkkananx', 'C', '2011-05-16 11:50:01'),
('846b4f058c809782f1c8a8d5ea86e503', '5a216709b4697310d0682d3d7f92df93', '1', 'xkkirixpxkkananxapa...?xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxA. 1xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxB. 2xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxC. 3xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxD. 4xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxE. 5xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananx&nbspxkommaxxkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxxkkirixobject width="320" height="240" data="..xgmringx..xgmringx..xgmringxfileboxxgmringxexgmringxsoalxgmringxxgmringxxgmringxalatukur.swf" type="applicationxgmringxxxstrixshockwavexstrixflash"xkkananxxkkirixparam name="src" value="..xgmringx..xgmringx..xgmringxfileboxxgmringxexgmringxsoalxgmringxxgmringxxgmringxalatukur.swf" xgmringxxkkananxxkkirixxgmringxobjectxkkananxxkkirixxgmringxpxkkananx', 'C', '2011-05-16 11:50:01'),
('f4fa68c73b19c0a2e30bb20842f054b5', '9991ef2b715a3a21c6633b9f7df6a679', '1', 'xkkirixpxkkananxapa...?xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxA. 1xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxB. 2xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxC. 3xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxD. 4xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxE. 5xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananx&nbspxkommaxxkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxxkkirixobject width="320" height="240" data="..xgmringx..xgmringx..xgmringxfileboxxgmringxexgmringxsoalxgmringxxgmringxxgmringxalatukur.swf" type="applicationxgmringxxxstrixshockwavexstrixflash"xkkananxxkkirixparam name="src" value="..xgmringx..xgmringx..xgmringxfileboxxgmringxexgmringxsoalxgmringxxgmringxxgmringxalatukur.swf" xgmringxxkkananxxkkirixxgmringxobjectxkkananxxkkirixxgmringxpxkkananx', 'C', '2011-05-16 11:50:01'),
('505851efec46bd3e3f1eab08ecaae646', '9991ef2b715a3a21c6633b9f7df6a679', '1', 'xkkirixpxkkananxapa...?xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxA. 1xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxB. 2xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxC. 3xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxD. 4xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxE. 5xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananx&nbspxkommaxxkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxxkkirixobject width="320" height="240" data="..xgmringx..xgmringx..xgmringxfileboxxgmringxexgmringxsoalxgmringxxgmringxxgmringxalatukur.swf" type="applicationxgmringxxxstrixshockwavexstrixflash"xkkananxxkkirixparam name="src" value="..xgmringx..xgmringx..xgmringxfileboxxgmringxexgmringxsoalxgmringxxgmringxxgmringxalatukur.swf" xgmringxxkkananxxkkirixxgmringxobjectxkkananxxkkirixxgmringxpxkkananx', 'C', '2011-05-16 11:50:01'),
('b32d4a9d2d1f9c9073f2d483419dbcd8', 'b11389dae7a495f0f373ce395163a1b6', '1', 'xkkirixpxkkananxapa...?xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxA. 1xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxB. 2xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxC. 3xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxD. 4xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxE. 5xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananx&nbspxkommaxxkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxxkkirixobject width="320" height="240" data="..xgmringx..xgmringx..xgmringxfileboxxgmringxexgmringxsoalxgmringxxgmringxxgmringxalatukur.swf" type="applicationxgmringxxxstrixshockwavexstrixflash"xkkananxxkkirixparam name="src" value="..xgmringx..xgmringx..xgmringxfileboxxgmringxexgmringxsoalxgmringxxgmringxxgmringxalatukur.swf" xgmringxxkkananxxkkirixxgmringxobjectxkkananxxkkirixxgmringxpxkkananx', 'C', '2011-05-16 11:50:01'),
('08ce912ca33f3b61eb901340cde7ace9', '8c6bc3d17f788d972733f1b5cc70436a', '1', 'xkkirixpxkkananxapa...?xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxA. 1xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxB. 2xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxC. 3xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxD. 4xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxE. 5xkkirixxgmringxpxkkananx\r\nxkkirixpxkkananx&nbspxkommaxxkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxxkkirixobject width="320" height="240" data="..xgmringx..xgmringx..xgmringxfileboxxgmringxexgmringxsoalxgmringxxgmringxxgmringxalatukur.swf" type="applicationxgmringxxxstrixshockwavexstrixflash"xkkananxxkkirixparam name="src" value="..xgmringx..xgmringx..xgmringxfileboxxgmringxexgmringxsoalxgmringxxgmringxxgmringxalatukur.swf" xgmringxxkkananxxkkirixxgmringxobjectxkkananxxkkirixxgmringxpxkkananx', 'C', '2011-05-16 11:50:01');

-- --------------------------------------------------------

--
-- Table structure for table `guru_mapel_soal_filebox`
--

CREATE TABLE IF NOT EXISTS `guru_mapel_soal_filebox` (
  `kd` varchar(50) NOT NULL,
  `kd_guru_mapel_soal` varchar(50) NOT NULL,
  `kd_guru_mapel_soal_detail` varchar(50) NOT NULL,
  `filex` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru_mapel_soal_filebox`
--

INSERT INTO `guru_mapel_soal_filebox` (`kd`, `kd_guru_mapel_soal`, `kd_guru_mapel_soal_detail`, `filex`) VALUES
('5d2d569dfb08f2e1d7f50deb67e6ec3f', 'd6c173e252b692587b5c07eff4ef60d9', '630c163e0d1e5a5a78145200d149872e', '54021.jpg'),
('090819625e7dd764d9172e1e18ec64d5', 'd6c173e252b692587b5c07eff4ef60d9', '630c163e0d1e5a5a78145200d149872e', '54038.jpg'),
('a9419c5c77698a0da577a0d859f11939', 'd6c173e252b692587b5c07eff4ef60d9', 'a9419c5c77698a0da577a0d859f11939', '54021.jpg'),
('a9419c5c77698a0da577a0d859f11939', 'd6c173e252b692587b5c07eff4ef60d9', 'a9419c5c77698a0da577a0d859f11939', '54027.jpg'),
('cc5ecd3a6e39e5ba3279b07f30e6ad4f', 'd6c173e252b692587b5c07eff4ef60d9', 'cc5ecd3a6e39e5ba3279b07f30e6ad4f', '54003.jpg'),
('cc5ecd3a6e39e5ba3279b07f30e6ad4f', 'd6c173e252b692587b5c07eff4ef60d9', 'cc5ecd3a6e39e5ba3279b07f30e6ad4f', '54016.jpg'),
('', '', '', 'alatukur.swf');

-- --------------------------------------------------------

--
-- Table structure for table `guru_mapel_tanya`
--

CREATE TABLE IF NOT EXISTS `guru_mapel_tanya` (
  `kd` varchar(50) NOT NULL,
  `kd_guru_mapel` varchar(50) NOT NULL,
  `dari` varchar(50) NOT NULL,
  `tanya` longtext NOT NULL,
  `jawaban` longtext NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru_mapel_tanya`
--

INSERT INTO `guru_mapel_tanya` (`kd`, `kd_guru_mapel`, `dari`, `tanya`, `jawaban`, `postdate`) VALUES
('235665475467', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', 'ebfa66a6dbfd21413d1035db2ca987a6', '36346', 'xxx', '2009-08-19 11:36:56'),
('1f0f30369ae558659c6fa32d5a6caea4', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', 'c8501a58dde52c15ac3ac56fbe669603', 'Cara membuat CD kosong itu gimana ya bu...?', '', '2009-08-25 11:21:05'),
('52164dc3897c54c81498c8e006193ef5', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', 'c8501a58dde52c15ac3ac56fbe669603', 'Enakan mana ya, pake Linux, MAC, atau BSD . . .?', '', '2009-08-25 11:23:44'),
('33a1a429d6bc06827da1e1f0034156e8', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', 'c8501a58dde52c15ac3ac56fbe669603', 'kira xstrix kira editor web yang bagus apa ya...?.\r\n\r\nFrontPage, DreamWeaver, atau NVU . . .?', 'semuanya itu lumayan. khususnya kalo kamu juga suka coding scripts secara manual. \r\n\r\ncoba pilih dreamweaver atau NVU aja.', '2009-08-26 11:01:25'),
('0b7ac65fcbc7c8ef2d43d0b2c7eda5c4', '1815e88d149363c5a5900aed38d37357', 'e5cabee927429398b4d2a289166d511b', 'siapa ya...?', 'kenapa ya...?', '2015-09-14 08:45:38'),
('4c606eaaf780248dac27e0ebb11d049f', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', 'e5cabee927429398b4d2a289166d511b', 'tanya. bu, punya mouse digital gak...?', '', '2009-08-26 13:15:01');

-- --------------------------------------------------------

--
-- Table structure for table `m_kelas`
--

CREATE TABLE IF NOT EXISTS `m_kelas` (
  `kd` varchar(50) NOT NULL,
  `kelas` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_kelas`
--

INSERT INTO `m_kelas` (`kd`, `kelas`) VALUES
('1e770665731113e1b8f51e3eff8258b8', '1'),
('93a500beea63186b9027a27a75f0e3e0', '2'),
('d300dff9ece892708c7b7d15c4487ae6', '3');

-- --------------------------------------------------------

--
-- Table structure for table `m_mapel`
--

CREATE TABLE IF NOT EXISTS `m_mapel` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `mapel` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_mapel`
--

INSERT INTO `m_mapel` (`kd`, `mapel`) VALUES
('4598dd5b9ac644eaec4af76c548743be', 'Bahasa dan Sastra Indonesia'),
('d8022de243b4ce12b64f03a48158d39f', 'Bahasa Inggris'),
('20f1b5c9f861b328fcd14dd92d82f8c6', 'Matematika'),
('fc76ca9f6ebcf0f34ab21b55cefdb912', 'IPA'),
('39dbbf4078f620cd28d241706729e457', 'Pendidikan Agama'),
('777d350703dbd13d393a90457c6e9201', 'Pendidikan Kewarganegaraan'),
('c89e31c6134d92194320f6661e446dfb', 'IPS'),
('ddd64f6ea96d9dbb668a15e2dbd3c8ad', 'Seni Musik'),
('6e09ea4152ea4e26c83f7d60c3c37be6', 'Seni Lukis'),
('d94a6e5799011e19a614e6a915f4ece4', 'Seni Kerawitan'),
('50bae4d47d12fa0cf23403a12f34be0d', 'Pendidikan Jasmani'),
('8afc44d568dbc8e74709b598628e8330', 'Komputer'),
('8c5d87f3695190b00ffc7ab43e8aed24', 'Elektronika'),
('41c9a05798d429b2579aacc27e80a33c', 'Otomotif'),
('177b3163ea9bb8bf687516bb3be4e53e', 'Tata Boga'),
('01b2dc906085b14bc0dc367427903448', 'Tata Busana'),
('558dc5761abfa074e9b9f6ef52499a4d', 'Bahasa Daerah'),
('2cf403a3a59ce18ecbf70048a4de2547', 'Seni Tari'),
('880ce3fde58f7c627bfab6ee00afb520', 'xyz');

-- --------------------------------------------------------

--
-- Table structure for table `m_user`
--

CREATE TABLE IF NOT EXISTS `m_user` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `usernamex` varchar(15) NOT NULL,
  `passwordx` varchar(50) NOT NULL,
  `nomor` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tipe` varchar(5) NOT NULL,
  `postdate` datetime NOT NULL,
  `kd_kelas` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_user`
--

INSERT INTO `m_user` (`kd`, `usernamex`, `passwordx`, `nomor`, `nama`, `tipe`, `postdate`, `kd_kelas`) VALUES
('4b919c813881e8807e3e2af05113b719', '280001', '04ed4a760d6ad5d752f8ce17766226e6', '280001', 'Desi Ratnasari', 'SISWA', '2009-08-26 13:26:37', '1e770665731113e1b8f51e3eff8258b8'),
('16b91234e2622effbf76db4c3eff28a1', '280002', 'd39da7024c1b368be61c4fd0e76a7012', '280002', 'Achmad Albar', 'SISWA', '2009-03-25 11:30:09', '1e770665731113e1b8f51e3eff8258b8'),
('ceeefcb7994ff7e373a6aa1ddaa6abd6', '280003', 'dce490378947f8a211010aeee31cf599', '280003', 'Indra Birowo', 'SISWA', '0000-00-00 00:00:00', '1e770665731113e1b8f51e3eff8258b8'),
('92b88f920c5b58e9aff71a14247c98ce', '280004', '1fe1fc0354223b6490b45d1844e74a2c', '280004', 'Paramitha Rusady', 'SISWA', '0000-00-00 00:00:00', '93a500beea63186b9027a27a75f0e3e0'),
('c8501a58dde52c15ac3ac56fbe669603', '280005', 'd0e2aca22a8b597ead0cf5317c3d1f26', '280005', 'Luna Maya', 'SISWA', '0000-00-00 00:00:00', '93a500beea63186b9027a27a75f0e3e0'),
('6f94991992a5a0ede5dace8e5225e642', '280006', '19e9772d8226406cf637be4030cc477a', '280006', 'Nicolas Saputra', 'SISWA', '0000-00-00 00:00:00', '93a500beea63186b9027a27a75f0e3e0'),
('a1d4547f7b75ecc147833acf54ffe76d', '280007', '2f72a2e01460fdfcc8701be0de3509ab', '280007', 'Ririn Dwi Ariyanti', 'SISWA', '0000-00-00 00:00:00', ''),
('b116806013d1084a6524a99728f3f241', '280008', '96aad5e6ed1a2dce18845d9d8e2bc486', '280008', 'Ine Febrianti', 'SISWA', '0000-00-00 00:00:00', ''),
('e232ccc284653fb0249cab778cf010c0', '280009', '848962d06777c283a4b15e35249f65e9', '280009', 'Ratu Felisha', 'SISWA', '0000-00-00 00:00:00', ''),
('772c45c3a19d620b7cbf864a377eee3f', '280010', '78d87c74b01f7218243cff8184ef0bce', '280010', 'Julia Perez', 'SISWA', '0000-00-00 00:00:00', ''),
('397e33b4ba51bc683b6850148be23173', '170002', 'afa2328c1739488edb7f5efb9cd604a2', '170002', 'Van Damme', 'GURU', '0000-00-00 00:00:00', ''),
('4a91033bfe52de0aedecd767ee4075c5', '170001', '24e004fb41eadb665483b48401cf8403', '170001', 'Monica Belluci', 'GURU', '0000-00-00 00:00:00', ''),
('1525ce4ad9f34171a725ad5a2c2059e1', '170003', 'd87dc2090f3a1c5f8a608da82af5e0db', '170003', 'Keenu Reeves', 'GURU', '0000-00-00 00:00:00', ''),
('8493b580f4504947ddc31ea23d5bd3cb', '170004', '3d32806ddfd7397332bc60e839d7897c', '170004', 'Alicia Silverstone', 'GURU', '0000-00-00 00:00:00', ''),
('205a54b0333f57b7f217b2995d028083', '170005', '077dbccbfb0357df14616bffee5852b5', '170005', 'Gigi Leung', 'GURU', '0000-00-00 00:00:00', ''),
('84819620df1925981096dffdee506e2c', '170006', 'bf4a211f50b3bc00b94de5ec8748b5ab', '170006', 'Jet Li', 'GURU', '2009-03-25 11:30:21', ''),
('abd5df21e34eacf9d32782c0122cba31', '170007', '75468b89351446704ed9414a74983df7', '170007', 'Bruce Lee', 'GURU', '0000-00-00 00:00:00', ''),
('ebfa66a6dbfd21413d1035db2ca987a6', '170008', '3a6243b55ea9435736c7d89450133bd2', '170008', 'Sophie Marceau', 'GURU', '0000-00-00 00:00:00', ''),
('0a2a7ea8d30d9e15038f86ed50a84d6c', '170009', 'c8c66cdfc2286951af36bd11f26575f2', '170009', 'Brad Pitt', 'GURU', '0000-00-00 00:00:00', ''),
('06a287d70d3b7845054a2c07cb12f7a5', '170010', '4f8ebcbbfe229eb7b482b19930386329', '1700010', 'Angelina Jolie', 'GURU', '0000-00-00 00:00:00', ''),
('7b029cd0da55eef7b8dcdaf1d84c6353', '1700011', 'b6fffa5e8de53f3c7b168d487b6ebb3f', '1700011', 'Joker', 'GURU', '0000-00-00 00:00:00', ''),
('c573a358b8a7a60a9988bc173dfb13ab', '1700012', '114009d23c84adb621de0307cc0227e4', '1700012', 'Jack Sparrow', 'GURU', '0000-00-00 00:00:00', ''),
('e5cabee927429398b4d2a289166d511b', '7654321', 'f0898af949a373e72a4f6a34b4de9090', '7654321', '7654321', 'SISWA', '0000-00-00 00:00:00', ''),
('03abc9e674a0dc3eebe223c196e336c7', '1234567', 'fcea920f7412b5da7be0cf42b8c93759', '1234567', '1234567', 'GURU', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `siswa_mapel_soal`
--

CREATE TABLE IF NOT EXISTS `siswa_mapel_soal` (
  `kd` varchar(50) NOT NULL,
  `kd_user` varchar(50) NOT NULL,
  `kd_guru_mapel` varchar(50) NOT NULL,
  `kd_guru_mapel_soal` varchar(50) NOT NULL,
  `waktu_mulai` datetime NOT NULL,
  `waktu_akhir` datetime NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa_mapel_soal`
--

INSERT INTO `siswa_mapel_soal` (`kd`, `kd_user`, `kd_guru_mapel`, `kd_guru_mapel_soal`, `waktu_mulai`, `waktu_akhir`, `postdate`) VALUES
('3fb707066c277d7c057c627c5670e20b', 'e5cabee927429398b4d2a289166d511b', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', '5a216709b4697310d0682d3d7f92df93', '2009-08-26 13:20:33', '2009-08-26 13:22:41', '0000-00-00 00:00:00'),
('f6f04243ed9c140416d19c4a36db1d3d', 'e5cabee927429398b4d2a289166d511b', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', 'd6c173e252b692587b5c07eff4ef60d9', '2009-08-26 13:19:23', '2009-08-26 13:20:23', '0000-00-00 00:00:00'),
('44f626db6806762e50c892a8923214fd', 'c8501a58dde52c15ac3ac56fbe669603', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', 'f3908715c405b9559f650bb62db523a8', '2009-08-25 11:43:17', '2009-08-25 11:43:21', '0000-00-00 00:00:00'),
('787abbc27fa2ae820c25d1e1a7bac0fb', 'c8501a58dde52c15ac3ac56fbe669603', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', '5a216709b4697310d0682d3d7f92df93', '2009-08-29 12:58:17', '2009-08-29 12:58:24', '0000-00-00 00:00:00'),
('c6e25f41b8512315fd633b29a4d51c28', 'c8501a58dde52c15ac3ac56fbe669603', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', 'e3f289998c3f2b77d9b086011bab786a', '2009-08-29 12:58:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('26ba8b813aa74093a1fde2e40a645c1f', 'c8501a58dde52c15ac3ac56fbe669603', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', 'd6c173e252b692587b5c07eff4ef60d9', '2009-08-29 12:57:06', '2009-08-29 12:57:13', '0000-00-00 00:00:00'),
('4d1ab5c193b800f14f43576f7892fd24', '4b919c813881e8807e3e2af05113b719', 'c3cf1ab146f28ea58a36ded765474a23', 'b11389dae7a495f0f373ce395163a1b6', '2010-12-26 10:11:11', '2010-12-26 10:11:27', '0000-00-00 00:00:00'),
('76328918683506635d6dfffe47ee60cd', '4a91033bfe52de0aedecd767ee4075c5', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', '5a216709b4697310d0682d3d7f92df93', '2010-12-27 20:17:28', '2010-12-27 20:17:37', '0000-00-00 00:00:00'),
('d8c486ec82a25e46212a742597ba3ee6', '4a91033bfe52de0aedecd767ee4075c5', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', 'e3f289998c3f2b77d9b086011bab786a', '2010-12-27 20:18:29', '2010-12-27 20:18:36', '0000-00-00 00:00:00'),
('12a4d5c6cc471e21e85f912b9b95958f', '4b919c813881e8807e3e2af05113b719', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', '5a216709b4697310d0682d3d7f92df93', '2011-08-30 09:49:15', '2011-08-30 09:49:30', '0000-00-00 00:00:00'),
('da62d990fbdc922e6be6adb8f8f45766', '4b919c813881e8807e3e2af05113b719', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', '', '2011-08-30 09:54:05', '2011-08-30 09:54:05', '0000-00-00 00:00:00'),
('3121f0dc275ca13e713f7957094f9ef4', '4b919c813881e8807e3e2af05113b719', '09f3a92ebf5e60c87e0df1c1f771876b', '8c6bc3d17f788d972733f1b5cc70436a', '2011-05-01 11:34:40', '2011-05-01 11:34:45', '0000-00-00 00:00:00'),
('acf6027237e8c5dc33dcf0112de939ca', 'c8501a58dde52c15ac3ac56fbe669603', '09f3a92ebf5e60c87e0df1c1f771876b', '8c6bc3d17f788d972733f1b5cc70436a', '2015-09-13 13:33:26', '2015-09-13 13:33:36', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `siswa_mapel_soal_detail`
--

CREATE TABLE IF NOT EXISTS `siswa_mapel_soal_detail` (
  `kd` varchar(50) NOT NULL,
  `kd_user` varchar(50) NOT NULL,
  `kd_guru_mapel` varchar(50) NOT NULL,
  `kd_guru_mapel_soal` varchar(50) NOT NULL,
  `kd_guru_mapel_soal_detail` varchar(50) NOT NULL,
  `no` varchar(3) NOT NULL,
  `jawab` varchar(1) NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa_mapel_soal_detail`
--

INSERT INTO `siswa_mapel_soal_detail` (`kd`, `kd_user`, `kd_guru_mapel`, `kd_guru_mapel_soal`, `kd_guru_mapel_soal_detail`, `no`, `jawab`, `postdate`) VALUES
('443bb8ace657ded264367a6053c99d8c', '4b919c813881e8807e3e2af05113b719', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', '5a216709b4697310d0682d3d7f92df93', '03156e70f59ddc7fa0ba04e47faa84e4', '3', 'B', '2011-08-30 09:49:30'),
('12b2bb4f939ee21f12f8f49468e5eb6d', '4b919c813881e8807e3e2af05113b719', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', '5a216709b4697310d0682d3d7f92df93', '846b4f058c809782f1c8a8d5ea86e503', '2', 'E', '2011-08-30 09:49:26'),
('c3c1a223d905e0d61aa0d8fadaa57875', '4b919c813881e8807e3e2af05113b719', '18ee4f6ebe9bc4a78d7c7ccba1945d3e', '5a216709b4697310d0682d3d7f92df93', '3ed20988649da29852615d53675b3239', '1', 'D', '2011-08-30 09:49:21'),
('dbd11cf857fdc72b12d2ea06b5993416', '4b919c813881e8807e3e2af05113b719', '09f3a92ebf5e60c87e0df1c1f771876b', '8c6bc3d17f788d972733f1b5cc70436a', '08ce912ca33f3b61eb901340cde7ace9', '1', 'C', '2011-05-01 11:34:45'),
('3c53517936dfdf1e49ef563f1221c535', 'c8501a58dde52c15ac3ac56fbe669603', '09f3a92ebf5e60c87e0df1c1f771876b', '8c6bc3d17f788d972733f1b5cc70436a', '08ce912ca33f3b61eb901340cde7ace9', '1', 'A', '2015-09-13 13:33:36');

-- --------------------------------------------------------

--
-- Table structure for table `user_blog`
--

CREATE TABLE IF NOT EXISTS `user_blog` (
  `kd` varchar(50) NOT NULL,
  `kd_user` varchar(50) NOT NULL,
  `foto_path` varchar(255) NOT NULL,
  `tmp_lahir` varchar(30) NOT NULL DEFAULT '-',
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(255) NOT NULL DEFAULT '-',
  `email` varchar(255) NOT NULL DEFAULT '-',
  `situs` varchar(255) NOT NULL DEFAULT '-',
  `telp` varchar(100) NOT NULL DEFAULT '-',
  `agama` varchar(30) NOT NULL DEFAULT '-',
  `hobi` varchar(100) NOT NULL DEFAULT '-',
  `aktivitas` varchar(100) NOT NULL DEFAULT '-',
  `tertarik` varchar(100) NOT NULL DEFAULT '-',
  `makanan` varchar(100) NOT NULL DEFAULT '-',
  `minuman` varchar(100) NOT NULL DEFAULT '-',
  `musik` varchar(100) NOT NULL DEFAULT '-',
  `film` varchar(100) NOT NULL DEFAULT '-',
  `buku` varchar(100) NOT NULL DEFAULT '-',
  `idola` varchar(100) NOT NULL DEFAULT '-',
  `pend_akhir` varchar(100) NOT NULL DEFAULT '-',
  `pend_thnlulus` varchar(4) NOT NULL,
  `moto` varchar(100) NOT NULL DEFAULT '-',
  `kata_mutiara` varchar(100) NOT NULL DEFAULT '-',
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_blog`
--

INSERT INTO `user_blog` (`kd`, `kd_user`, `foto_path`, `tmp_lahir`, `tgl_lahir`, `alamat`, `email`, `situs`, `telp`, `agama`, `hobi`, `aktivitas`, `tertarik`, `makanan`, `minuman`, `musik`, `film`, `buku`, `idola`, `pend_akhir`, `pend_thnlulus`, `moto`, `kata_mutiara`, `postdate`) VALUES
('17ce802eb6354574efcda246a6d25357', 'ebfa66a6dbfd21413d1035db2ca987a6', 'anna18.jpg', 'yu', '1902-02-02', 'u', 'u', 'u', 'u', 'Kristen', 'yu', 'yu', 'yu', 'yu', 'yu', 'yu', 'yu', 'yu', 'yu', 'yu', '2000', 'yu', 'yu', '2009-06-21 01:50:28'),
('88f55e47c0bd02b90f3f5d010a5ce6a6', '397e33b4ba51bc683b6850148be23173', '150561_1483102046036_1488405637_31079818_6954676_n.jpg', '-', '1970-07-09', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2009-03-28 11:30:36'),
('cbba6b7c4f8d68319347d1996f3f9fd8', '8493b580f4504947ddc31ea23d5bd3cb', 'n_dfh.jpg', 'x', '1900-01-01', 'x', 'x', 'x', 'x', 'Islam', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '1', 'x', 'x', '2009-03-28 11:31:47'),
('d020c2176b306826d16f94ed08bace6a', '205a54b0333f57b7f217b2995d028083', '031.jpg', '-', '1980-07-07', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2009-03-28 11:31:56'),
('be8a461eef1ec5bdde42522e2fe45bac', 'abd5df21e34eacf9d32782c0122cba31', '', '-', '1975-08-19', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2009-03-28 11:32:04'),
('53af65866c51e32f7445821a6d5e2dfa', '0a2a7ea8d30d9e15038f86ed50a84d6c', '', '-', '1976-07-09', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2009-03-28 11:32:12'),
('16274b61422050c8180ed345203afea6', '4a91033bfe52de0aedecd767ee4075c5', '12002201_514073628769194_3205487515960998346_n.jpg', 'xstrix', '1982-11-11', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2015-09-13 12:43:36'),
('d1b782212609f53e147c9add0fb4b30f', '7b029cd0da55eef7b8dcdaf1d84c6353', 'film_dark_knight_lengkap_2-20080627-006-rita.jpg', 'xstrix', '1974-06-08', 'xstrix', 'xstrix', 'xstrix', 'xstrix', 'xstrix', 'xstrix', 'xstrix', 'xstrix', 'xstrix', 'xstrix', 'xstrix', 'xstrix', 'xstrix', 'xstrix', 'xstrix', '', 'xstrix', 'xstrix', '2009-06-23 09:58:16'),
('617762c1854e224b03126833ad9433ca', 'c8501a58dde52c15ac3ac56fbe669603', 'cimg0602.jpg', 'xstrix', '1980-07-13', 'xstrix', 'xstrix', 'xstrix', 'xstrix', 'xstrix', 'xstrix', 'xstrix', 'xstrix', 'xstrix', 'xstrix', 'xstrix', 'xstrix', 'xstrix', 'xstrix', 'xstrix', '', 'xstrix', 'xstrix', '2009-08-23 10:50:45'),
('eb57466da99f00c62ec9c16324ec975a', 'a1d4547f7b75ecc147833acf54ffe76d', '031.jpg', '-', '1989-07-15', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '-', '-', '2009-06-25 16:24:33'),
('fbbd365914fdcd76ab879cc8842226d8', 'c573a358b8a7a60a9988bc173dfb13ab', 'pirates1.jpg', 'xstrix', '1927-06-16', 'xstrix', 'xstrix', 'xstrix', 'xstrix', 'xstrix', 'xstrix', 'xstrix', 'xstrix', 'xstrix', 'xstrix', 'xstrix', 'xstrix', 'xstrix', 'xstrix', 'xstrix', '', 'xstrix', 'xstrix', '2009-06-28 10:43:04'),
('7b1f21d0943706042bfb9f8d0e3b2def', '6f94991992a5a0ede5dace8e5225e642', '', '-', '0000-00-00', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '-', '-', '2009-07-15 14:22:19'),
('67976f7d2dceebbd7cefe2ef40ec26c1', 'e5cabee927429398b4d2a289166d511b', '', '-', '0000-00-00', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '-', '-', '2009-08-26 13:05:41'),
('ce6eb75d05abd004f9367ef890e588c1', '4b919c813881e8807e3e2af05113b719', '15753_1185195108270_1180048026_30523017_958796_n.jpg', 'xstrixx', '1900-01-01', 'x', 'x', 'x', 'x', 'Islam', 'xstrixx', 'xstrixx', 'xstrixx', 'xstrixx', 'xstrixx', 'xstrixx', 'xstrixx', 'xstrixx', 'xstrixx', 'x', '1', 'xstrixx', 'xstrixx', '2009-08-26 13:31:08'),
('38f929f7ecc0e5727deaf9443d2d8028', '03abc9e674a0dc3eebe223c196e336c7', '11813418_10153375356899003_2193443162155697861_n.jpg', '-', '0000-00-00', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', '-', '-', '2015-09-14 08:34:53');

-- --------------------------------------------------------

--
-- Table structure for table `user_blog_album`
--

CREATE TABLE IF NOT EXISTS `user_blog_album` (
  `kd` varchar(50) NOT NULL,
  `kd_user` varchar(50) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_blog_album`
--

INSERT INTO `user_blog_album` (`kd`, `kd_user`, `judul`, `postdate`) VALUES
('53956743f218737ffadb2d223692b77b', 'ebfa66a6dbfd21413d1035db2ca987a6', 'Cahaya Pesonaku', '2009-06-22 15:15:21'),
('776f27c8318c19e700c1da98089b9153', 'ebfa66a6dbfd21413d1035db2ca987a6', 'Kapan Kita Kemana...?', '2009-05-14 12:40:19'),
('cc42466057ed16896036be4b2912ad37', '8493b580f4504947ddc31ea23d5bd3cb', 'Adakah Diriku...?', '2009-05-18 10:50:40'),
('56c0963e5879e19cbfcea5557e107e79', '7b029cd0da55eef7b8dcdaf1d84c6353', 'MySelf', '2009-06-23 09:59:23'),
('6410fb9001530d593c10207deef8d33a', 'c8501a58dde52c15ac3ac56fbe669603', 'Fotoku Indah', '2009-06-25 13:35:24'),
('75ed33ab941e4ec4404e6a1d88fa1143', 'a1d4547f7b75ecc147833acf54ffe76d', 'diriku ini...', '2009-06-25 16:24:58'),
('6ba34e242945a1a4f9754654d8ad609b', 'c573a358b8a7a60a9988bc173dfb13ab', 'Oh... my good in my life', '2009-06-28 10:44:14'),
('ab39363523e7ab76ec5d58012c77eacb', '4b919c813881e8807e3e2af05113b719', 'xxx', '2011-08-30 10:06:28'),
('f9528fc063f5c5d2ee97971a2805b733', '205a54b0333f57b7f217b2995d028083', 'adad', '2011-08-30 11:21:41'),
('29f7dacc33256ab5ba4dbf7bc40146ad', '4a91033bfe52de0aedecd767ee4075c5', 'fotoku', '2015-09-13 13:26:54'),
('d7b421b0ac258e9fe867c9f6a91b9b7b', '03abc9e674a0dc3eebe223c196e336c7', 'biasawae aja...', '2015-09-14 08:37:04');

-- --------------------------------------------------------

--
-- Table structure for table `user_blog_album_filebox`
--

CREATE TABLE IF NOT EXISTS `user_blog_album_filebox` (
  `kd` varchar(50) NOT NULL,
  `kd_album` varchar(50) NOT NULL,
  `filex` longtext NOT NULL,
  `ket` longtext NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_blog_album_filebox`
--

INSERT INTO `user_blog_album_filebox` (`kd`, `kd_album`, `filex`, `ket`, `postdate`) VALUES
('9da64b31cd0e7187a92e3e09ccf2e2e9', '776f27c8318c19e700c1da98089b9153', '18817220_w434_h_q80.jpg', '', '0000-00-00 00:00:00'),
('67a768989dbeb3cdf74b0d351945f83f', '776f27c8318c19e700c1da98089b9153', 'french_box-sophie_marceau34.jpg', '', '0000-00-00 00:00:00'),
('8f81a045dc3346ed6fc9814d3ad63550', 'cc42466057ed16896036be4b2912ad37', 'alicia4.jpg', '', '0000-00-00 00:00:00'),
('c462b9d013fc09c202242696d5fa4e54', 'cc42466057ed16896036be4b2912ad37', '300px-neve_campbells.jpg', '', '0000-00-00 00:00:00'),
('6c79428f2056e324cb2c3e3d0e0de7e7', '53956743f218737ffadb2d223692b77b', 'tutyu.jpg', 'saat aku bermain ski dengan james Bond, di film xpsijixThe World is Not Enoughxpsijix.', '0000-00-00 00:00:00'),
('302b649b68a421bea5162371d40ffe9e', 'cc42466057ed16896036be4b2912ad37', 'alicia_silverstone_001.jpg', '', '0000-00-00 00:00:00'),
('319f940089f00b70efe4d3fd808ddadf', '53956743f218737ffadb2d223692b77b', 'sm3.jpg', '', '0000-00-00 00:00:00'),
('14b4bfaa110fb13a870273c46a85e873', '53956743f218737ffadb2d223692b77b', 'anna18.jpg', 'yyy', '2009-07-20 09:57:55'),
('accea668a63ba000936fc8137e055fca', '53956743f218737ffadb2d223692b77b', 'french_box-sophie_marceau34.jpg', 'why...?', '2009-07-20 09:57:55'),
('3377310c34cf8b21cb9bd0fa1c49ad77', '53956743f218737ffadb2d223692b77b', '06845808.jpg', 'xxx', '2009-07-20 09:57:55'),
('73e8f9adf1eddce169cab4f75d3bd128', '53956743f218737ffadb2d223692b77b', 'dggg.jpg', '', '2009-07-20 09:57:55'),
('32ae04bedd833afbed7e9569c5e543a2', '53956743f218737ffadb2d223692b77b', 'gjgfjgfj.jpg', '', '0000-00-00 00:00:00'),
('f01902d1dd6d7c72a45d87d9fefd89f9', 'cc42466057ed16896036be4b2912ad37', 'silverstone_alicia187.jpg', '', '0000-00-00 00:00:00'),
('81213a2c155e6390433ddd491bb15b2e', '53956743f218737ffadb2d223692b77b', '18817220_w434_h_q80.jpg', 'ttt', '2009-07-20 09:57:55'),
('61d944774ebddffe2309879ff200be6a', 'cc42466057ed16896036be4b2912ad37', 'alicia-silverstone-33.jpg', '', '0000-00-00 00:00:00'),
('316d3bd0da31602df7e8e4ea5aff8a11', 'cc42466057ed16896036be4b2912ad37', 'alicia-silverstone-59.jpg', '', '0000-00-00 00:00:00'),
('e11d1131a23d3ede300dfacc9d390209', 'cc42466057ed16896036be4b2912ad37', 'alicia-silverstone-_(34).jpg', '', '0000-00-00 00:00:00'),
('232ac881884ec8140ba5ecb446ea0251', '56c0963e5879e19cbfcea5557e107e79', 'film_dark_knight_lengkap_2-20080627-004-rita.jpg', '', '0000-00-00 00:00:00'),
('fec6c10c4ae9cea8feba26665552418e', '56c0963e5879e19cbfcea5557e107e79', 'darkknight.jpg', '', '0000-00-00 00:00:00'),
('1ad85f455f675a9db6d5e73f21c3e2bd', '56c0963e5879e19cbfcea5557e107e79', 'film_dark_knight_lengkap_2-20080627-003-rita.jpg', '', '0000-00-00 00:00:00'),
('7af9572fc7d4032f73c81bc84d53cf93', '56c0963e5879e19cbfcea5557e107e79', 'film_dark_knight_lengkap_2-20080627-006-rita.jpg', '', '0000-00-00 00:00:00'),
('e2f1f17c1f846223ab3dcfa5c97c043d', '56c0963e5879e19cbfcea5557e107e79', 'film_dark_knight_lengkap_3-20080627-002-rita.jpg', '', '0000-00-00 00:00:00'),
('b861f430b1e6081cc7494c8b1e358261', '56c0963e5879e19cbfcea5557e107e79', 'thedarkknight_galleryjokerteaser.jpg', '', '0000-00-00 00:00:00'),
('ed8005544ca9cccd6c705074f014f552', '6410fb9001530d593c10207deef8d33a', '5.jpg', '', '0000-00-00 00:00:00'),
('8aa6766d75ffd5d801a2686a2a05cc7a', '6410fb9001530d593c10207deef8d33a', 'cimg0588.jpg', '', '0000-00-00 00:00:00'),
('99459088c8e74dc79f58ee86dc42b5ca', '6410fb9001530d593c10207deef8d33a', 'lunamaya.jpg', '', '0000-00-00 00:00:00'),
('f6a22355ee189c661bf612ec5d7caaa0', '6410fb9001530d593c10207deef8d33a', '033.jpg', '', '0000-00-00 00:00:00'),
('1298380ae4e5bff793edb079ab499c8a', '6410fb9001530d593c10207deef8d33a', '086.jpg', '', '0000-00-00 00:00:00'),
('761877a7f9f5450f3fd581a948f73357', '75ed33ab941e4ec4404e6a1d88fa1143', '013.jpg', '', '0000-00-00 00:00:00'),
('8b185ef9e8957764ffedd70306f7d794', '75ed33ab941e4ec4404e6a1d88fa1143', '016h.jpg', '', '0000-00-00 00:00:00'),
('00979ce69ebd21f8b22864c5d13d59b0', '75ed33ab941e4ec4404e6a1d88fa1143', 'ririne.jpg', '', '0000-00-00 00:00:00'),
('68de99955a840b8d47f573a7a7e841d1', '75ed33ab941e4ec4404e6a1d88fa1143', 'nbr_010e.jpg', '', '0000-00-00 00:00:00'),
('5c1b0337d176004a7d4a3460f5304dd5', '75ed33ab941e4ec4404e6a1d88fa1143', '009.jpg', '', '0000-00-00 00:00:00'),
('07bf5bf97667982c3dde84da5956c6b7', '6ba34e242945a1a4f9754654d8ad609b', 'chow_yun_fat7.jpg', '', '0000-00-00 00:00:00'),
('1e4063f4090ce1d4f96d47955474da47', '6ba34e242945a1a4f9754654d8ad609b', 'chow_yun_fat11.jpg', '', '0000-00-00 00:00:00'),
('73d86adfacc6c7cf11268543075d8ce1', '6ba34e242945a1a4f9754654d8ad609b', 'chow_yun_fat12.jpg', '', '0000-00-00 00:00:00'),
('34b2c97d6e9c4852f9a3007879947696', '6ba34e242945a1a4f9754654d8ad609b', 'geoffrey_rush1.jpg', '', '0000-00-00 00:00:00'),
('04f2299f697e984fd35975e69e553d13', '6ba34e242945a1a4f9754654d8ad609b', 'johnny_depp2.jpg', '', '0000-00-00 00:00:00'),
('5af7462883ac687053bdac84da1db2fa', '6ba34e242945a1a4f9754654d8ad609b', 'johnny_depp5.jpg', '', '0000-00-00 00:00:00'),
('893a58915536e814b38a346ae3ca3d8e', '6ba34e242945a1a4f9754654d8ad609b', 'johnny_depp13.jpg', '', '0000-00-00 00:00:00'),
('a6071a2ec911727ff53a8b1e8815fed4', '6ba34e242945a1a4f9754654d8ad609b', 'keira_knightley6.jpg', '', '0000-00-00 00:00:00'),
('d000331b44a0001ab2c89cb6b3afaa8d', '6ba34e242945a1a4f9754654d8ad609b', 'pirates3alarge.jpg', '', '0000-00-00 00:00:00'),
('3f13230867cf9a0438ef07b3d283313a', '6ba34e242945a1a4f9754654d8ad609b', 'pirates2.jpg', '', '0000-00-00 00:00:00'),
('01f733be6bdb8d4f469b80884294cf7d', '6ba34e242945a1a4f9754654d8ad609b', 'pirates1.jpg', '', '0000-00-00 00:00:00'),
('4c126a3f9f745f88cfc1764515eb5b9a', '6ba34e242945a1a4f9754654d8ad609b', 'pirates3e.jpg', '', '0000-00-00 00:00:00'),
('3c92dce5653a19676c1e0193a849419e', 'f9528fc063f5c5d2ee97971a2805b733', '031.jpg', '', '0000-00-00 00:00:00'),
('81b1085d866e51e7b1f5c98999e4e492', 'f9528fc063f5c5d2ee97971a2805b733', 'freebsd_demon15_full.jpg', '', '0000-00-00 00:00:00'),
('9e1749b4c9ea528542b31f3c927384c7', '29f7dacc33256ab5ba4dbf7bc40146ad', '11813418_10153375356899003_2193443162155697861_n.jpg', 'tes...', '2015-09-13 13:28:53'),
('f2cbf297c1a814dd657db196ee50cba2', 'd7b421b0ac258e9fe867c9f6a91b9b7b', 'turu_ngarep_toko.jpg', 'dasar ki toko biasawae xkommaxxstrixD', '2015-09-14 08:37:50'),
('d8e6c3fce89efe8c4f16b97c6a6bbe69', 'd7b421b0ac258e9fe867c9f6a91b9b7b', '11665588_10153309545109003_1032786791173315637_n.jpg', 'cobalah mengerti...', '2015-09-14 08:37:50');

-- --------------------------------------------------------

--
-- Table structure for table `user_blog_album_msg`
--

CREATE TABLE IF NOT EXISTS `user_blog_album_msg` (
  `kd` varchar(50) NOT NULL,
  `kd_user_blog_album` varchar(50) NOT NULL,
  `dari` varchar(50) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_blog_album_msg`
--

INSERT INTO `user_blog_album_msg` (`kd`, `kd_user_blog_album`, `dari`, `msg`, `postdate`) VALUES
('c96a66a06dc42c615aa0555d3e1cfac7', '1ad85f455f675a9db6d5e73f21c3e2bd', '4a91033bfe52de0aedecd767ee4075c5', 'ok. aq akan melawan polisi gadungan ini...xpentungxxpentungx', '2009-07-07 10:43:21'),
('8eb381f7b9ca734efce5e97a5c408379', 'fec6c10c4ae9cea8feba26665552418e', '4a91033bfe52de0aedecd767ee4075c5', 'kenapa serius sekali mas...?', '2009-07-07 10:50:02'),
('c77c45a45ed2ff39af3b5fa862635a2a', '4c126a3f9f745f88cfc1764515eb5b9a', '4a91033bfe52de0aedecd767ee4075c5', 'mbak, tetap cantik aq dong...', '2009-07-07 10:52:40'),
('bae44dd1da99742df2e55a4f3d57b04d', '81213a2c155e6390433ddd491bb15b2e', 'ebfa66a6dbfd21413d1035db2ca987a6', 'halo, wahai diriku sendiri...', '2009-07-07 11:56:18'),
('a7f866fe667002318156c6592488b9e6', 'fec6c10c4ae9cea8feba26665552418e', 'ebfa66a6dbfd21413d1035db2ca987a6', 'ini dia, biangkerokxstrixnya...', '2009-07-07 11:57:31'),
('b8047368cc34f62550dedab7bb151111', '14b4bfaa110fb13a870273c46a85e873', '4a91033bfe52de0aedecd767ee4075c5', 'ya...', '2009-07-12 07:44:53'),
('fc01fd1d9700c91b6bdb5a2be84e9405', '9e1749b4c9ea528542b31f3c927384c7', '4a91033bfe52de0aedecd767ee4075c5', 'siiip...', '2015-09-13 13:29:54');

-- --------------------------------------------------------

--
-- Table structure for table `user_blog_artikel`
--

CREATE TABLE IF NOT EXISTS `user_blog_artikel` (
  `kd` varchar(50) NOT NULL,
  `kd_user` varchar(50) NOT NULL,
  `kd_kategori` varchar(50) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `rangkuman` varchar(255) NOT NULL,
  `isi` longtext NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_blog_artikel`
--

INSERT INTO `user_blog_artikel` (`kd`, `kd_user`, `kd_kategori`, `judul`, `rangkuman`, `isi`, `postdate`) VALUES
('e5d1d16db65e197f46b2ac199aba39dc', 'ebfa66a6dbfd21413d1035db2ca987a6', 'c21b3746c4fc0a5daa48db70833050dc', 'Anda Stress? Menulislah....', 'BEBAN kerja meningkat, hubungan asmara memburuk, komunikasi dengan keluarga tak harmonis, atau Anda di PHK? Jelas, kondisi ini amat membuat batin Anda tertekan. Emosi meningkat, jiwa labil, dan sulit untuk tidur. Stres pun menerpa. Dan di zaman sekarang,', 'xkkirixp align="justify"xkkananxxkkirixfont size="2"xkkananxBEBAN kerja meningkat, hubungan asmara memburuk, komunikasi dengan keluarga tak harmonis, atau Anda di PHK? Jelas, kondisi ini amat membuat batin Anda tertekan. Emosi meningkat, jiwa labil, dan sulit untuk tidur. Stres pun menerpa. Dan di zaman sekarang, rasanya sulit untuk tak terkena stres. Tapi, jangan khawatir, obatnya pun ternyata mudahxpentungxxkkirixxgmringxfontxkkananxxkkirixxgmringxpxkkananxxkkirixp align="justify"xkkananxxkkirixfont size="2"xkkananxPara psikolog Amerika mengatakan musik dan berlibur atau bersantai adalah obat stres. Tapi kini, mereka pun percaya, ternyata menulis dapat menurnkan tekangan stres, bahkan meniadakannya. Dengan menulis, mereka yakin, seluruh emosi negatif akan keluar, dan tekanan akan hilang dengan sendirinya. Hal ini pun diakui psokolog UI, Sartono Mukadis. xkkirixxgmringxfontxkkananxxkkirixxgmringxpxkkananxxkkirixp align="justify"xkkananxxkkirixfont size="2"xkkananx&quotxkommaxMenulis dapat membuang energi negatif dalam diri kita. Menulis itu semacam terapi diri sendiri, berupa kesengajaan untuk membuka diri dan membuang masalah,&quotxkommax jelasnya, seperti yang dimuat Koran Tempo. Kenapa begitu? Ternyata, di saat menulis, kita akan menumpahkan segala beban kita. Ini sebenarnya sama dengan curhat, cuma sifatnya lebih pribadi, dan tentu, lebih terbuka dan jujur. Nilai terbuka dan jujur inilah xstrixxstrixkarena kita menulis dan tak ada seorang pun yang akan mengetaui apa yang kita tuliskan, entah itu kemarahan, caci maki, kejengkelan pada atasanxstrixxstrix yang membantu mengurangi beban kita. &quotxkommaxAda semacam efek kataris dari proses menulis itu,&quotxkommax tambah Sartono. xkkirixxgmringxfontxkkananxxkkirixxgmringxpxkkananxxkkirixp align="justify"xkkananxxkkirixfont size="2"xkkananxTapi, yang perlu dilakukan bukankah menulis yang terencana. Tulislah apa yang ingin Anda marahkan atau tumpahkan. Jangan pernah berpikir bahwa tulisan itu akan baik, atau akan dikirimkan kepada sebuah penerbitan. Memikirkan hal semacam itu, justru akan menambah tekanan Anda. Tulislah apa yang ingin Anda ungkapkan, dengan sebebasnya. Niscaya, setelah itu, Anda merasa lega, dan stres telah pergi entah ke mana. xkkirixxgmringxfontxkkananxxkkirixxgmringxpxkkananx', '2009-04-03 17:06:27'),
('7081626c9bcf327fc646c87eb3b92258', 'ebfa66a6dbfd21413d1035db2ca987a6', 'c21b3746c4fc0a5daa48db70833050dc', 'Bergeraklah, Sesibuk Apapun Anda', 'TINGGINYA kedudukan seseorang di kantor biasanya makin lebih menuntut kerja otak ketimbang aktivitas tubuh. Duduk manis di belakang meja, dan kebutuhan apa saja tinggal memintanya pada seorang sekretaris. Hatixstrixhatilah. Karena tubuh pun butuh gerak ag', 'xkkirixdiv align="justify"xkkananxxkkirixfont size="2"xkkananxTINGGINYA kedudukan seseorang di kantor biasanya makin lebih menuntut kerja otak ketimbang aktivitas tubuh. Duduk manis di belakang meja, dan kebutuhan apa saja tinggal memintanya pada seorang sekretaris. Hatixstrixhatilah. Karena tubuh pun butuh gerak agar tetap fit, bugar dan sehat.xkkirixxgmringxfontxkkananxxkkirixxgmringxdivxkkananxxkkirixp align="justify"xkkananxxkkirixfont size="2"xkkananxMeski klasik, olah raga adalah jawaban manjur. Okey, program olah raga mungkin menjemukan, atau bahkan menjadi beban amat berat untuk dilakukan. Terutama soal waktu dan lingkungan kota yang cenderung kurang sportxstrixfriendly. Tapi sesibuk apapun Anda, bergeraklah. Sejak tahun 1998 American College of Sports Medicine (ACSM) telah menetapkan aktivitas fisik per minggu yang direkomendasikan untuk orang dewasa sehat dalam rangka memelihara kesehatan dan kebugaran. Apa saja? Itu meliputi 3xstrix5 hari latihan aerobik, 2xstrix3 sesi latihan kekuatan, dan 2xstrix3 sesi latihan kelenturan. Nah, kan. xkkirixxgmringxfontxkkananxxkkirixxgmringxpxkkananxxkkirixp align="justify"xkkananxxkkirixfont size="2"xkkananxJadi, sesempit apapun waktu yang Anda miliki, gerakanxstrixgerakan kecil sangat mendukung dan bermanfaat bagi kebugaran Anda. Terutama agar Anda terbiasa hidup aktif. Kebiasaan seperti di bawah ini cukup membantu Anda memanfaatkan waktu yang sempit untuk berolah raga: xkkirixxgmringxfontxkkananxxkkirixxgmringxpxkkananxxkkirixdiv align="justify"xkkananxxkkirixulxkkananxxkkirixlixkkananxxkkirixfont size="2"xkkananxMobil mewah mungkin tersedia dengan supir yang siap mengantarkan ke manapun tempat yang Anda inginkan. Tapi apa salahnya Anda berjalan kaki. Bila jarak dari rumah ke kantor terlampau jauh, Anda bisa memulainya dengan memarkir kendaraan agak jauh dari tempat tujuan, misalnya.xkkirixxgmringxfontxkkananxxkkirixxgmringxlixkkananxxkkirixfont size="2"xkkananxxkkirixbr xgmringxxkkananxxkkirixxgmringxfontxkkananxxkkirixlixkkananxxkkirixfont size="2"xkkananxLebih memilih untuk menggunakan tangga ketimbang lift maupun elevator. Langkahi saja satu demi satu deretan tangga, meski tak ada seorang pun teman kantor Anda yang mau menemani, bahkan menertawakannya. Santai saja, dan nikmati. Sebagai variasi, percepat langkah Anda atau berlari, dan sesekali melompati 2 anak tangga sekaligus.xkkirixxgmringxfontxkkananxxkkirixxgmringxlixkkananxxkkirixfont size="2"xkkananxxkkirixbr xgmringxxkkananxxkkirixxgmringxfontxkkananxxkkirixlixkkananxxkkirixfont size="2"xkkananxJauhkan barangxstrixbarang yang sering Anda butuhkan dari meja kantor Anda. Remote control pendingin ruangan atau TV misalnya, bisa Anda sisihkan jauhxstrixjauh, jika perlu hilangkan. Hal itu akan membuat Anda mau tak mau bergerak. Jika Anda memindahkan barangxstrixbarang, jangan lakukan sekaligus sehingga Anda perlu berjalan bolakxstrixbalik.xkkirixxgmringxfontxkkananxxkkirixxgmringxlixkkananxxkkirixfont size="2"xkkananxxkkirixbr xgmringxxkkananxxkkirixxgmringxfontxkkananxxkkirixlixkkananxxkkirixfont size="2"xkkananxLakukan latihan peregangan yang bisa dilakukan di balik meja kantor Anda sekalipun atau di manapun. Juga dalam posisi apapunxkommax sambil berdiri maupun duduk. Berbagai benda dapat Anda gunakan sebagai alat bantu latihan, seperti tembok, kursi dan lemari.xkkirixxgmringxfontxkkananxxkkirixxgmringxlixkkananxxkkirixbr xgmringxxkkananxxkkirixlixkkananxxkkirixfont size="2"xkkananxGunakan waktu senggang Anda untuk berolahraga aerobik yang low impact (tidak menimbulkan benturan sendi). Contohnya, berenang, joging, berjalan cepat, bersepeda, dan senam. Lakukan ini ini perlahanxstrixlahan hingga berkeringat, tetapi tidak tersengalxstrixsengal.xkkirixxgmringxfontxkkananxxkkirixxgmringxlixkkananxxkkirixbr xgmringxxkkananxxkkirixlixkkananxxkkirixfont size="2"xkkananxMulailah melakukan hobi yang memerlukan gerakan tubuh, misalnya berkebun atau bertukang. Atau melakukan berbagai kegiatan rumah tangga seperti menyapu, mengepel, membersihkan jendela, dan lainxstrixlain.xkkirixxgmringxfontxkkananxxkkirixxgmringxlixkkananxxkkirixxgmringxulxkkananxxkkirixfont size="2"xkkananxNah, setelah Anda memulai hidup aktif, usahakan untuk meningkatkan aktivitas fisik Anda, agar tingkat kebugaran fisik tetap terjaga.xkkirixxgmringxfontxkkananxxkkirixbr xgmringxxkkananxxkkirixfont size="2"xkkananxxkkirixxgmringxfontxkkananxxkkirixxgmringxdivxkkananx', '2009-04-03 17:11:59'),
('7cf7c4f7ac3ec3eef4ed51bbe9ccd389', 'ebfa66a6dbfd21413d1035db2ca987a6', '3d9bb3f3e21440a0a7bcd56bb5bf0cf9', '7 Cara Atasi Rasa Malu', 'Orangxstrixorang dengan sifat pemalu secara naluri menyimpan kesadaran kalau diri mereka terlewatkan dari orang lain. Sifat pemalu biasanya membuat seseorang kehilangan kesempatan, kurang mendapat kesenangan dan terkucil dari hubungan sosial. Sifat pemalu', 'xkkirixp align="justify"xkkananxxkkirixfont size="2"xkkananxOrangxstrixorang dengan sifat pemalu secara naluri menyimpan kesadaran kalau diri mereka terlewatkan dari orang lain. Sifat pemalu biasanya membuat seseorang kehilangan kesempatan, kurang mendapat kesenangan dan terkucil dari hubungan sosial. Sifat pemalu dapat membawa banyak kerugian. Tapi bagi Anda yang memiliki sifat ini, tak perlu berkecil hati, karena pada dasarnya ada banyak cara untuk mengusir jauhxstrixjauh sifat yang merugikan ini. Sebenarnya, formula dari rasa malu terdiri dari &#39xkommaxterlalu berpusat pada diri sendiri&#39xkommax dicampur dengan rasa gugup. Dan ada paduan yang lebih tak menyangkan, saat rasa malu itu mempengaruhi fisik Anda dengan cara &#39xkommaxmembajak&#39xkommax ketenangan logis.xkkirixxgmringxfontxkkananxxkkirixxgmringxpxkkananxxkkirixp align="justify"xkkananxxkkirixfont size="2"xkkananxRasa malu adalah sebuah kombinasi dari kegugupan sosial dan pengkondisian sosial. Untuk mengatasi rasa malu ini, yang Anda butuhkan adalah belajar bersikap rileks dalam pergaulan sosial. Dibutuhkan usaha untuk mengarahkan diri Anda jauh dari terlalu berpusat pada diri sendiri, serta memberi diri Anda ruang untuk mempraktekan kemampuan bercakapxstrixcakap. Dalam kebanyakan kasus, emosi yang memuncak dalam bersosialisasi membuat orang menanggapi berbagai kejadian dengan rasa takut. Untuk memulai mengurangi rasa malu, bagi Anda yang pemalu, ada beberapa hal di bawah ini yang mungkin dapat Anda praktekan. xkkirixxgmringxfontxkkananxxkkirixxgmringxpxkkananxxkkirixdiv align="justify"xkkananxxkkirixulxkkananxxkkirixlixkkananxxkkirixfont size="2"xkkananxPikirkan tentang cara Anda merasa dan bertindak di sekitar orangxstrixorang yang telah Anda kenal, dimana Anda bisa merasa nyaman dan bersikap spontan. Alihkan perasaan itu saat Anda bertemu kenalan baru, begitu pula dalam situasi yang membuat rasa percaya diri Anda memudar. xkkirixbr xgmringxxkkananxxkkirixxgmringxfontxkkananxxkkirixxgmringxlixkkananxxkkirixxgmringxulxkkananxxkkirixfont size="2"xkkananxxkkirixbr xgmringxxkkananxxkkirixxgmringxfontxkkananxxkkirixulxkkananxxkkirixlixkkananxxkkirixfont size="2"xkkananxHindari terlalu memperhatikan diri Anda sendiri. Tentu saja, Anda boleh sedikit memikirkan tentang bagaimana Anda akan melewatkan perbicangan dengan orang banyak, tapi jika seluruh fokus Anda tercurah pada kataxstrixkata sendiri dan perasaan Anda, selanjutnya Anda akan mulai merasa gugup sendiri. Ingatxstrixingat apa yang dikenakan oleh orang lain dan buat catatan tersendiri, dengarkan apa yang mereka perbincangkan, bayangkan dimana mereka tinggal, buat sebuah garis besar atau ingatxstrixingat nama mereka. Hal ini bukan hanya memberi Anda bahan perbincangan, tapi juga mencairkan ketegangan dalam bersosialisasi dan membuat perasaan Anda lebih tenang.xkkirixxgmringxfontxkkananxxkkirixxgmringxlixkkananxxkkirixxgmringxulxkkananxxkkirixfont size="2"xkkananxxkkirixbr xgmringxxkkananxxkkirixxgmringxfontxkkananxxkkirixulxkkananxxkkirixlixkkananxxkkirixfont size="2"xkkananxBuat pertanyaan terbuka pada semua orang. Banyak orang yang lebih senang bicara tentang diri mereka sendiri, dan temukan sebuah topik yang membuat orang lain tertarik. Apa yang membuat mereka tertarik akan membuat perbicangan berjalan menyenangkan bagi semua orang. Selalu ajukan pertanyaan yang memungkinkan jawaban lebih dari yaxgmringxtidak.xkkirixxgmringxfontxkkananxxkkirixxgmringxlixkkananxxkkirixxgmringxulxkkananxxkkirixfont size="2"xkkananxxkkirixbr xgmringxxkkananxxkkirixxgmringxfontxkkananxxkkirixulxkkananxxkkirixlixkkananxxkkirixfont size="2"xkkananxBerhentilah percaya pada imajinasi Anda. Mungkin Anda pernah membuat gambaran tentang sebuah liburan yang menyenangkan dan pada kenyataanya jauh berbeda dari yang Anda bayangkan. Itu menunjukan beatapa tak dapat dipercayanya bayangan kita sendiri. Berhentilah memikirkan apa yang dipikirkan orang lain, karena apa yang dipikiran orang lain tentang Anda, belum tentu sama persis seperti bayangan Anda.xkkirixxgmringxfontxkkananxxkkirixxgmringxlixkkananxxkkirixxgmringxulxkkananxxkkirixfont size="2"xkkananxxkkirixbr xgmringxxkkananxxkkirixxgmringxfontxkkananxxkkirixulxkkananxxkkirixlixkkananxxkkirixfont size="2"xkkananxBerhentilah memikirkan &#39xkommaxsegalanya atau bukan apaxstrixapa.&#39xkommax Pemikiran &#39xkommaxpasti beginixgmringxpasti begitu&#39xkommax tertuang saat Anda mengalami emosi. Orangxstrixorang yang sedang depresi, marah dan gelisah melihat kenyataan dari halxstrixhal ini dengan perbedaan yang ektrim. Bagi orang yang sedang marah &#39xkommaxAnda salah&#39xkommax dan &#39xkommaxmereka benar,&#39xkommax orang yang marah akan melihat dirinya &#39xkommaxgagal&#39xkommax, sedang yang lain &#39xkommaxberhasil.&#39xkommax Jadi berhentilah berpikir kalau Anda mungkin telah mengatakan hal yang salah, atau orang lain akan membenci Anda. Saat Anda merasa rileks dalam pergaulan sosial, Anda juga akan mendapat lebih sedikit peringatan dari diri sendiri, karena dalam keadaan gugup, biasanya Anda akan mulai berpikir tentang segalanya atau bukan apaxstrixapa.xkkirixxgmringxfontxkkananxxkkirixxgmringxlixkkananxxkkirixxgmringxulxkkananxxkkirixfont size="2"xkkananxxkkirixbr xgmringxxkkananxxkkirixxgmringxfontxkkananxxkkirixulxkkananxxkkirixlixkkananxxkkirixfont size="2"xkkananxNikmati waktu Anda. Hindari mengatakan halxstrixhal tanpa berpikir terlebih dulu. Ajukan pertanyaan, dan jika mendapat pertanyaa. Anda dapat mempertimbangkan jawaban terlebih dahulu sebagai tanggapan Anda, jangan asal menjawab tanpa berpikir. Jawaban yang diluncurkan dengan perlahan merupakan cara bersikap santai.xkkirixxgmringxfontxkkananxxkkirixxgmringxlixkkananxxkkirixxgmringxulxkkananxxkkirixfont size="2"xkkananxxkkirixbr xgmringxxkkananxxkkirixxgmringxfontxkkananxxkkirixulxkkananxxkkirixlixkkananxxkkirixfont size="2"xkkananxAkhirnya, gunakan latihan hipnotis. Hipnotis merupakan cara tercepat untuk mengubah tanggapan instinkxgmringxemosi Anda dalam setiap situasi. Hanya pikirkan bahwa pikiran dan tubuh Anda dalam keadaan rilek sewaktu bertemu orang baru. Sebenarnya, sewaktu Anda merasa santai seringkali Anda akan menemukan saat yang tepat untuk menerapkan hipnotis agar merasa lebih percaya dirisaat berhadapan dengan orangxstrixorang baru, dan tentu saja pada titik ini rasa malu akan tersingkir dengan sendirinya.xkkirixxgmringxfontxkkananxxkkirixxgmringxlixkkananxxkkirixxgmringxulxkkananxxkkirixxgmringxdivxkkananxxkkirixdiv align="justify"xkkananxxkkirixfont size="2"xkkananxxkkirixbr xgmringxxkkananxxkkirixxgmringxfontxkkananxxkkirixfont size="2"xkkananxBagi Anda yang memiliki masalah dengan rasa malu saat bertemu dengan kenalan baru, dapat Anda mencoba tujuh tips yang kami sampaikan di atas. Dan semoga setelah itu Anda akan lebih percaya diri saat bertemu orangxstrixorang baru dalam pergaulan sosial.xkkirixxgmringxfontxkkananxxkkirixxgmringxdivxkkananxxkkirixdiv align="justify"xkkananxxkkirixfont size="2"xkkananx&nbspxkommaxxkkirixxgmringxfontxkkananxxkkirixxgmringxdivxkkananxxkkirixdiv align="justify"xkkananxxkkirixfont size="2"xkkananx(Sumber : www.kapanlagi.com).&nbspxkommaxxkkirixxgmringxfontxkkananxxkkirixxgmringxdivxkkananx', '2009-04-03 17:17:58'),
('f3a299104611390990cc506f79a57050', 'ebfa66a6dbfd21413d1035db2ca987a6', '3d9bb3f3e21440a0a7bcd56bb5bf0cf9', 'Kenapa Kita Jatuh ?, Supaya Kita Belajar Berdiri Lagi.', 'Dalam mengarungi kehidupan di dunia ini, kita pasti akan mengalami yang namanya jatuh bangun. Hal ini adalah wajar dan alami. Ini merupakan suatu seni kehidupan yang pasti dialami oleh semua orang. Tanpa adanya ini, hidup kita terkesan hambar dan membosan', 'xkkirixp align="justify"xkkananxxkkirixfont size="2"xkkananxDalam mengarungi kehidupan di dunia ini, kita pasti akan mengalami yang namanya jatuh bangun. Hal ini adalah wajar dan alami. Ini merupakan suatu seni kehidupan yang pasti dialami oleh semua orang. Tanpa adanya ini, hidup kita terkesan hambar dan membosankan.xkkirixxgmringxfontxkkananxxkkirixxgmringxpxkkananxxkkirixp align="justify"xkkananxxkkirixfont size="2"xkkananxLalu apakah kita menciptakan keadaan semuanya itu, dimana kita selalu berdiri atau selalu jatuh?. Menurut saya, iya. Kita secara tidak sadar telah mengharapkan hal xstrix hal tersebut. Tapi terkadang dari dampak yang ditimbulkan, baik itu berupa kesuksesan maupun kegagalan, kita kurang mengambil hikmahnya. Bisa dikatakan, kita semua terlalu mengambil hikmah jika kita sedang gagal atau dalam tahap keterpurukan. Dan tidak pada keadaan dimana kita sedang sukses atau berdiri. Alangkah baiknya dalam keadaan ini kita mensyukuri karunia yang ada, sehingga saat kita jatuh, tidak terlalu berat. Atau paling tidak saat kita jatuh tidak bertubi xstrix tubi. Dan tidak jatuh, tertimpa tangga lagi. xkkirixxgmringxfontxkkananxxkkirixxgmringxpxkkananxxkkirixp align="justify"xkkananxxkkirixfont size="2"xkkananxKita lihat satu sisi dahulu yang paling dominan, yakni saat kita jatuh, gagal atau terpuruk. Saat kita sedang jatuh, harusnya kita cepat xstrix cepat menyadarinya. Seperti mempelajari hikmah yang ada dan cepat berpikir dan bergerak untuk berdiri lagi. Meratapi nasib hanyalah menatap masa lalu, sedangkan masa depan akan berbeda dengan sekarang. Maka dari itu, jika diantara kita sedang jatuh, cobalah untuk introspeksi diri dan bergegaslah untuk bangun. Karena kita hidup adalah berani menerima tantangan yang ada. Baik itu tantangan jaman, ekonomi, intelektual dan lain sebagainya. xkkirixxgmringxfontxkkananxxkkirixxgmringxpxkkananxxkkirixp align="justify"xkkananxxkkirixfont size="2"xkkananxBenarkah seperti itu?.xkkirixxgmringxfontxkkananxxkkirixxgmringxpxkkananxxkkirixp align="justify"xkkananxxkkirixfont size="2"xkkananx&nbspxkommaxxkkirixxgmringxfontxkkananxxkkirixxgmringxpxkkananxxkkirixp align="justify"xkkananxxkkirixfont size="2"xkkananx&nbspxkommaxxkkirixxgmringxfontxkkananxxkkirixxgmringxpxkkananxxkkirixp align="justify"xkkananxxkkirixfont size="2"xkkananxSumber : xkkirixxgmringxfontxkkananxxkkirixxgmringxpxkkananxxkkirixp align="justify"xkkananxxkkirixfont size="2"xkkananxxkkirixstrongxkkananxAgus Muhajirxkkirixxgmringxstrongxkkananxxkkirixxgmringxfontxkkananx xkkirixxgmringxpxkkananxxkkirixp align="justify"xkkananxxkkirixfont size="2"xkkananx(hajirodeonxtkeongxyahoo.com)&nbspxkommaxxkkirixxgmringxfontxkkananxxkkirixxgmringxpxkkananx', '2009-04-03 17:21:21'),
('7e5180ff954bea4c5e9385c05dd1d25a', 'c8501a58dde52c15ac3ac56fbe669603', 'ed5cd8925bbd8c0f4e1db94931c0b68c', 'y', 'y', 'c', '2009-06-25 15:48:21'),
('5e3e261b83b961f91d13ad3840344571', '03abc9e674a0dc3eebe223c196e336c7', '0f8187591ebb1a3c1049ae5e28fd209d', '123', 'xkkirixpxkkananx123xkkirixxgmringxpxkkananx', 'xkkirixpxkkananx123xkkirixxgmringxpxkkananx', '2015-09-14 08:43:01');

-- --------------------------------------------------------

--
-- Table structure for table `user_blog_artikel_filebox`
--

CREATE TABLE IF NOT EXISTS `user_blog_artikel_filebox` (
  `kd` varchar(50) NOT NULL,
  `kd_artikel` varchar(50) NOT NULL,
  `filex` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_blog_artikel_filebox`
--

INSERT INTO `user_blog_artikel_filebox` (`kd`, `kd_artikel`, `filex`) VALUES
('96248a871eb8cdbb69925fc5a1c2d4f7', '7bed66794432c3a75db4590f74e23d74', 'jkhp_debian1024.jpg'),
('5257b7b465e31ca66370ff460d1c793c', 'cd524d016dc216b3f407468c5236c537', 'jkhp_knoppix1024.jpg'),
('ce7d7225d47ca98fc5423c4838cc94bd', 'cd524d016dc216b3f407468c5236c537', 'jkhp_suse1024.jpg'),
('5f5ad9e578c46d8ca84cfc4e427d26a8', '7bed66794432c3a75db4590f74e23d74', 'jkhp_redhat1024.jpg'),
('6e7aa643585f7828f1ef55673659e8c4', '29da0aade1c4e34e64f4030c29b3f1b7', 'jkhp_fedora1024.jpg'),
('ae1f4113322002ba613d1f4e527ac83a', '29da0aade1c4e34e64f4030c29b3f1b7', 'jkhp_linux1024.jpg'),
('7a01b11c4be06fa9e9b6882c7f93c25e', '29da0aade1c4e34e64f4030c29b3f1b7', 'jkhp_slackware1024.jpg'),
('9401c430da3d9dd517667351db0884aa', '29da0aade1c4e34e64f4030c29b3f1b7', 'jkhp_linux1280.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_blog_artikel_msg`
--

CREATE TABLE IF NOT EXISTS `user_blog_artikel_msg` (
  `kd` varchar(50) NOT NULL,
  `kd_user_blog_artikel` varchar(50) NOT NULL,
  `dari` varchar(50) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_blog_artikel_msg`
--

INSERT INTO `user_blog_artikel_msg` (`kd`, `kd_user_blog_artikel`, `dari`, `msg`, `postdate`) VALUES
('976e040d6ab494316cb5beab74b1d614', '7081626c9bcf327fc646c87eb3b92258', 'ebfa66a6dbfd21413d1035db2ca987a6', 'enak tenan....', '2009-06-15 10:15:13'),
('7e6d5a7a045d9f62dde5ab89cce6634c', 'f3a299104611390990cc506f79a57050', 'ebfa66a6dbfd21413d1035db2ca987a6', 'yyyy', '2009-06-16 13:37:57'),
('3d682331ed60320c6a2a2948d7eb09e9', 'f3a299104611390990cc506f79a57050', 'ebfa66a6dbfd21413d1035db2ca987a6', 'enjoy aja deh...', '2009-06-16 13:10:21'),
('62295b48fe51c7fc6a2f0e939533b946', '7cf7c4f7ac3ec3eef4ed51bbe9ccd389', 'ebfa66a6dbfd21413d1035db2ca987a6', 'yang pasti, jangan malu xstrix maluin...', '2009-06-15 10:15:35'),
('d88bbad34bdc00236f7d191d2262c3e8', '7cf7c4f7ac3ec3eef4ed51bbe9ccd389', 'ebfa66a6dbfd21413d1035db2ca987a6', 'ayuk ya...?', '2009-06-15 10:00:22'),
('421d1f29e7699ce9b1a3a19ae17fff1a', 'f3a299104611390990cc506f79a57050', 'ebfa66a6dbfd21413d1035db2ca987a6', 'iiiii', '2009-06-16 13:38:01'),
('84f070780c6ee3a37b82ac67284062b5', 'f3a299104611390990cc506f79a57050', 'ebfa66a6dbfd21413d1035db2ca987a6', 'uuuu', '2009-06-16 13:49:57'),
('511de4f765fa55e9285e7215c5f4fcb3', 'f3a299104611390990cc506f79a57050', '4a91033bfe52de0aedecd767ee4075c5', 'ada apa ya...?', '2009-06-21 01:55:26'),
('cf4ea1ec5b5f8e06970fadd2e5f9f900', 'f3a299104611390990cc506f79a57050', '7b029cd0da55eef7b8dcdaf1d84c6353', 'wow...', '2009-06-23 12:05:47'),
('be325a696fdc9017e8993ac59ce89602', '7cf7c4f7ac3ec3eef4ed51bbe9ccd389', '4a91033bfe52de0aedecd767ee4075c5', 'apa...?', '2009-06-23 12:26:37'),
('5615837eae932ea8a3165fefe15c1820', '7e5180ff954bea4c5e9385c05dd1d25a', 'c8501a58dde52c15ac3ac56fbe669603', 'j', '2009-06-25 15:48:30'),
('8bd16e6d0b2feb0fa503e21f7d700e94', 'f3a299104611390990cc506f79a57050', '4a91033bfe52de0aedecd767ee4075c5', 'xxx', '2009-06-27 12:16:28'),
('3561832a4a65151caef954798ada674f', '7e5180ff954bea4c5e9385c05dd1d25a', 'c8501a58dde52c15ac3ac56fbe669603', 'aku...', '2009-06-25 16:14:57'),
('efa49072be2e8848be7ca2161b1a040d', '7e5180ff954bea4c5e9385c05dd1d25a', 'c8501a58dde52c15ac3ac56fbe669603', 'uuuuu', '2009-06-25 15:52:24'),
('cb686438018df51a179f1f94b828c591', '7e5180ff954bea4c5e9385c05dd1d25a', '4a91033bfe52de0aedecd767ee4075c5', 'ya...', '2009-06-27 12:32:01'),
('d10e968c2bc9c88afe9761051fca640b', '7cf7c4f7ac3ec3eef4ed51bbe9ccd389', '7b029cd0da55eef7b8dcdaf1d84c6353', '', '2009-07-13 14:33:44'),
('e9e37e12c0e877380c0bcebbf3f5f3bd', '7e5180ff954bea4c5e9385c05dd1d25a', '4a91033bfe52de0aedecd767ee4075c5', 'y = why...?', '2009-07-20 09:45:14'),
('96c7395980af87060a6a9a096113fb4b', '7e5180ff954bea4c5e9385c05dd1d25a', '7b029cd0da55eef7b8dcdaf1d84c6353', 'apanya ini...?', '2009-08-26 13:38:45'),
('30df12ecb6a1d27160d977fd840e20e8', '5e3e261b83b961f91d13ad3840344571', '03abc9e674a0dc3eebe223c196e336c7', 'coba...', '2015-09-14 08:43:07');

-- --------------------------------------------------------

--
-- Table structure for table `user_blog_buletin`
--

CREATE TABLE IF NOT EXISTS `user_blog_buletin` (
  `kd` varchar(50) NOT NULL,
  `kd_user` varchar(50) NOT NULL,
  `kd_kategori` varchar(50) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `rangkuman` varchar(255) NOT NULL,
  `isi` longtext NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_blog_buletin`
--

INSERT INTO `user_blog_buletin` (`kd`, `kd_user`, `kd_kategori`, `judul`, `rangkuman`, `isi`, `postdate`) VALUES
('ee0df5d99ce14d245eb2f83c80a0f6bd', 'ebfa66a6dbfd21413d1035db2ca987a6', '40fb81ac368401364c3448cbe1f3f09d', 'u', 'u', 'u', '2009-06-14 13:02:02'),
('7280fc44a309dd2d3a453864bb887840', 'ebfa66a6dbfd21413d1035db2ca987a6', '568ec29e5b3a0cfab5429fe4bbb51f4d', 'y', 'y', 'y', '2009-06-14 13:01:54'),
('8312b222776f7d0d8da0bc5bfc4a3a0c', 'ebfa66a6dbfd21413d1035db2ca987a6', '40fb81ac368401364c3448cbe1f3f09d', 'i', 'i', 'i', '2009-06-14 13:02:10'),
('17ce2206d5825a7284bb12629fc6ff89', 'c8501a58dde52c15ac3ac56fbe669603', 'ed5cd8925bbd8c0f4e1db94931c0b68c', 'x', 'x', 'x', '2009-06-25 15:45:47');

-- --------------------------------------------------------

--
-- Table structure for table `user_blog_buletin_filebox`
--

CREATE TABLE IF NOT EXISTS `user_blog_buletin_filebox` (
  `kd` varchar(50) NOT NULL,
  `kd_buletin` varchar(50) NOT NULL,
  `filex` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_blog_buletin_msg`
--

CREATE TABLE IF NOT EXISTS `user_blog_buletin_msg` (
  `kd` varchar(50) NOT NULL,
  `kd_user_blog_buletin` varchar(50) NOT NULL,
  `dari` varchar(50) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_blog_buletin_msg`
--

INSERT INTO `user_blog_buletin_msg` (`kd`, `kd_user_blog_buletin`, `dari`, `msg`, `postdate`) VALUES
('bf432441af226a2f6c189caa1e3e8a63', 'f87cf44291272cc58d72a4374b8a4144', 'ebfa66a6dbfd21413d1035db2ca987a6', 'fff', '2009-05-28 10:33:53'),
('57405579a8acde73e08c66cafaf74182', '7280fc44a309dd2d3a453864bb887840', 'ebfa66a6dbfd21413d1035db2ca987a6', 'yoooo', '2009-06-15 10:27:08'),
('b1b0a14d92332091a724a9e784299ebc', '73d18384a39a77d96a73dfa9a1909081', 'ebfa66a6dbfd21413d1035db2ca987a6', 'ffff', '2009-05-28 10:34:03'),
('eac0aa7d6a01664007b6b8cd9bb596f9', '73d18384a39a77d96a73dfa9a1909081', 'ebfa66a6dbfd21413d1035db2ca987a6', 'ddd', '2009-05-28 10:34:05'),
('a01eae62866bba382be2b08904386a0d', '73d18384a39a77d96a73dfa9a1909081', 'ebfa66a6dbfd21413d1035db2ca987a6', 'eee', '2009-05-28 10:34:07'),
('c17c1826407448554659a4e142ae12aa', 'f87cf44291272cc58d72a4374b8a4144', 'ebfa66a6dbfd21413d1035db2ca987a6', 'yyyy', '2009-05-28 10:37:21'),
('4a67dadb287bcd52262a9d81d0c94e8b', '73d18384a39a77d96a73dfa9a1909081', 'ebfa66a6dbfd21413d1035db2ca987a6', 'ddd', '2009-05-28 10:37:27'),
('073d7170e1e25d32042ac7089d6a33e0', 'ee0df5d99ce14d245eb2f83c80a0f6bd', 'ebfa66a6dbfd21413d1035db2ca987a6', 'bisa xstrix bisa aja...', '2009-06-16 13:46:49'),
('28643f97f6ac9f159842b62e2d38a7d6', 'ee0df5d99ce14d245eb2f83c80a0f6bd', 'ebfa66a6dbfd21413d1035db2ca987a6', 'jjjj', '2009-06-16 13:50:43'),
('393d75cdd2dbcf33fde1606b99d2afb4', '7280fc44a309dd2d3a453864bb887840', 'ebfa66a6dbfd21413d1035db2ca987a6', 'setuju deh....', '2009-06-16 13:46:36'),
('ce8de94f55c41b033d8a4f83e6c87296', 'ee0df5d99ce14d245eb2f83c80a0f6bd', '7b029cd0da55eef7b8dcdaf1d84c6353', 'ttttt', '2009-06-23 12:06:59'),
('bb218d9a5de6014ee1eb732e0c60b77f', '17ce2206d5825a7284bb12629fc6ff89', 'c8501a58dde52c15ac3ac56fbe669603', 'aaaaaaaaaaaaaaaaaa', '2009-06-25 16:13:13'),
('0b3fda6694b50f1b5aa0d3ee999d7e94', '17ce2206d5825a7284bb12629fc6ff89', 'c8501a58dde52c15ac3ac56fbe669603', 'gfjfgj', '2009-06-25 15:51:09'),
('18cc249feb8bf65e037e8c23261b4151', '17ce2206d5825a7284bb12629fc6ff89', 'c8501a58dde52c15ac3ac56fbe669603', 'gfjfgj', '2009-06-25 15:51:14'),
('2dc0fa24e0878c99d96ddaeb9eb37085', '17ce2206d5825a7284bb12629fc6ff89', '4a91033bfe52de0aedecd767ee4075c5', 'yap.', '2009-06-27 12:36:18'),
('b2fee4f2a47adfe870ff14dd25c4f255', '17ce2206d5825a7284bb12629fc6ff89', 'c8501a58dde52c15ac3ac56fbe669603', 'tttttttttttttttt', '2009-06-25 15:53:23'),
('440bce2bba7423578917c76cd84651d2', 'ee0df5d99ce14d245eb2f83c80a0f6bd', '4a91033bfe52de0aedecd767ee4075c5', 'ok.', '2009-06-27 12:37:01'),
('48261fcd77087896b4864e8d34781597', '7280fc44a309dd2d3a453864bb887840', 'c573a358b8a7a60a9988bc173dfb13ab', 'oh iya...', '2009-06-28 10:59:05'),
('2f46bdfc2086e7fd8832c4404854214f', '17ce2206d5825a7284bb12629fc6ff89', '4a91033bfe52de0aedecd767ee4075c5', 'xyz', '2009-07-20 09:46:16');

-- --------------------------------------------------------

--
-- Table structure for table `user_blog_chat`
--

CREATE TABLE IF NOT EXISTS `user_blog_chat` (
  `kd` varchar(50) NOT NULL,
  `kd_user` varchar(50) NOT NULL,
  `untuk` varchar(50) NOT NULL,
  `text` longtext NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_blog_jurnal`
--

CREATE TABLE IF NOT EXISTS `user_blog_jurnal` (
  `kd` varchar(50) NOT NULL,
  `kd_user` varchar(50) NOT NULL,
  `kd_kategori` varchar(50) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `rangkuman` varchar(255) NOT NULL,
  `isi` longtext NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_blog_jurnal`
--

INSERT INTO `user_blog_jurnal` (`kd`, `kd_user`, `kd_kategori`, `judul`, `rangkuman`, `isi`, `postdate`) VALUES
('31df78aceadba8b018c2e56a771fb5e4', 'ebfa66a6dbfd21413d1035db2ca987a6', '568ec29e5b3a0cfab5429fe4bbb51f4d', 't', 't', 't', '2009-06-14 12:56:04'),
('256d2e69c396a0dc5e40f90b76157a24', 'ebfa66a6dbfd21413d1035db2ca987a6', '7b60a7cf6bb3bad7aab8014a8790886c', 'g', 'g', 'g', '2009-06-15 10:21:31'),
('a44c92a2a0c4f67b903208477bf4a4c4', 'c8501a58dde52c15ac3ac56fbe669603', 'e78afd2fdf4813fc93cbab7e14e24dcb', 'x', 'x', 'x', '2009-06-25 15:43:32'),
('f30d88b68d7536d6863efb4d44c39101', '4a91033bfe52de0aedecd767ee4075c5', '513b2c8c4cf5a9ef41daae423871d868', '234235', 'xkkirixpxkkananxsfsafxkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxsafsafxkkirixxgmringxpxkkananx\r\nxkkirixpxkkananx&nbspxkommaxxkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxsafsxkkirixxgmringxpxkkananx\r\nxkkirixpxkkananx&nbspxkommaxxkkirixxgmringxpxkkananx\r\nxkkiri', 'xkkirixpxkkananx325325xkkiriximg id="MathMLEq1" src="..xgmringx..xgmringx..xgmringxfileboxxgmringxequationxgmringxEA0687D1xstrixD832xstrix7BAAxstrix9F5Fxstrix91B265EABFB0.JPG" alt="" border="0" xgmringxxkkananxxkkirixxgmringxpxkkananx\r\nxkkirixpxkkananxxkkiriximg src="..xgmringx..xgmringx..xgmringxfileboxxgmringxjurnalxgmringxf30d88b68d7536d6863efb4d44c39101xgmringx11828592xgwahx10205233388696565xgwahx8161980009278998890xgwahxn.jpg" alt="" width="320" height="320" xgmringxxkkananxxkkirixxgmringxpxkkananx', '2011-05-01 11:41:54');

-- --------------------------------------------------------

--
-- Table structure for table `user_blog_jurnal_filebox`
--

CREATE TABLE IF NOT EXISTS `user_blog_jurnal_filebox` (
  `kd` varchar(50) NOT NULL,
  `kd_jurnal` varchar(50) NOT NULL,
  `filex` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_blog_jurnal_filebox`
--

INSERT INTO `user_blog_jurnal_filebox` (`kd`, `kd_jurnal`, `filex`) VALUES
('23679c034101ea521a10d4aeed7652d1', 'f30d88b68d7536d6863efb4d44c39101', '11828592_10205233388696565_8161980009278998890_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_blog_jurnal_msg`
--

CREATE TABLE IF NOT EXISTS `user_blog_jurnal_msg` (
  `kd` varchar(50) NOT NULL,
  `kd_user_blog_jurnal` varchar(50) NOT NULL,
  `dari` varchar(50) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_blog_jurnal_msg`
--

INSERT INTO `user_blog_jurnal_msg` (`kd`, `kd_user_blog_jurnal`, `dari`, `msg`, `postdate`) VALUES
('9d6c2320a5c42204610c500cf205a78d', '1a8b76c621b2aa09c25d890523f28db4', 'ebfa66a6dbfd21413d1035db2ca987a6', 'rrr', '2009-05-28 10:25:17'),
('c677adfe9d72c6e8d9f5ab3f885ad921', '1a8b76c621b2aa09c25d890523f28db4', 'ebfa66a6dbfd21413d1035db2ca987a6', 'ttt', '2009-05-28 10:25:19'),
('910909f60004d24f04499865114ba6e0', '256d2e69c396a0dc5e40f90b76157a24', 'ebfa66a6dbfd21413d1035db2ca987a6', 'hkh', '2009-06-16 13:51:29'),
('25f21c72449baeae5f8a095ae365d86f', 'a44c92a2a0c4f67b903208477bf4a4c4', 'c8501a58dde52c15ac3ac56fbe669603', 'fff', '2009-06-25 15:46:18'),
('941a1f2fed4f034ebf3aefe7de5f361c', '256d2e69c396a0dc5e40f90b76157a24', 'ebfa66a6dbfd21413d1035db2ca987a6', 'ddd', '2009-06-16 13:20:27'),
('d213a86254026b1f87654d91bafd2e92', '31df78aceadba8b018c2e56a771fb5e4', 'ebfa66a6dbfd21413d1035db2ca987a6', 'jjj', '2009-06-20 13:08:06'),
('c46250d950240004194bbcea49dd34e8', '256d2e69c396a0dc5e40f90b76157a24', 'ebfa66a6dbfd21413d1035db2ca987a6', 'iii', '2009-06-20 13:08:10'),
('31e15ec9c5778c1fa1725ae5f259e334', '31df78aceadba8b018c2e56a771fb5e4', 'ebfa66a6dbfd21413d1035db2ca987a6', 'oppppppppppppp', '2009-06-20 13:09:00'),
('8bdd99e6f306144df7c0c0b083fb7a66', '31df78aceadba8b018c2e56a771fb5e4', '7b029cd0da55eef7b8dcdaf1d84c6353', 'tttt', '2009-06-23 12:06:50'),
('31622e383390c0658044f1d82c47fb4c', 'a44c92a2a0c4f67b903208477bf4a4c4', 'c8501a58dde52c15ac3ac56fbe669603', 'iiii', '2009-06-25 16:10:42'),
('826ec6fce1cfb55e00d5c253e28c642f', 'a44c92a2a0c4f67b903208477bf4a4c4', '4a91033bfe52de0aedecd767ee4075c5', 'ok deh...', '2009-06-27 12:34:06'),
('b7f9b7b0c11a84e8226a6384ddb4749f', 'a44c92a2a0c4f67b903208477bf4a4c4', 'c8501a58dde52c15ac3ac56fbe669603', 'uuuu', '2009-06-25 15:53:07'),
('90b31e3208ff5895e1fe2e1428f85fee', '31df78aceadba8b018c2e56a771fb5e4', '4a91033bfe52de0aedecd767ee4075c5', 'yo...', '2009-06-27 12:37:22'),
('52aff1cd97b046fb20081533f1946e92', 'a44c92a2a0c4f67b903208477bf4a4c4', '4a91033bfe52de0aedecd767ee4075c5', 'ngikut aja deh...', '2009-07-20 09:45:46');

-- --------------------------------------------------------

--
-- Table structure for table `user_blog_kategori`
--

CREATE TABLE IF NOT EXISTS `user_blog_kategori` (
  `kd` varchar(50) NOT NULL,
  `kd_user` varchar(50) NOT NULL,
  `kategori` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_blog_kategori`
--

INSERT INTO `user_blog_kategori` (`kd`, `kd_user`, `kategori`) VALUES
('40fb81ac368401364c3448cbe1f3f09d', 'ebfa66a6dbfd21413d1035db2ca987a6', 'Komputer'),
('568ec29e5b3a0cfab5429fe4bbb51f4d', 'ebfa66a6dbfd21413d1035db2ca987a6', 'Bisnis'),
('c21b3746c4fc0a5daa48db70833050dc', 'ebfa66a6dbfd21413d1035db2ca987a6', 'Sehat'),
('7b60a7cf6bb3bad7aab8014a8790886c', 'ebfa66a6dbfd21413d1035db2ca987a6', 'Cantik'),
('3d9bb3f3e21440a0a7bcd56bb5bf0cf9', 'ebfa66a6dbfd21413d1035db2ca987a6', 'Psikologi'),
('e78afd2fdf4813fc93cbab7e14e24dcb', 'c8501a58dde52c15ac3ac56fbe669603', 'Cantik'),
('ed5cd8925bbd8c0f4e1db94931c0b68c', 'c8501a58dde52c15ac3ac56fbe669603', 'Sehat'),
('513b2c8c4cf5a9ef41daae423871d868', '4a91033bfe52de0aedecd767ee4075c5', 'aaa'),
('fda3976475286e43e79b15b501d7114b', '03abc9e674a0dc3eebe223c196e336c7', 'hobi'),
('0f8187591ebb1a3c1049ae5e28fd209d', '03abc9e674a0dc3eebe223c196e336c7', 'cerita'),
('fd78efb7483ffcdd7019caa5676a66cf', '03abc9e674a0dc3eebe223c196e336c7', 'curhat'),
('473c7a470eed5c26daf4a05f34316d9c', '03abc9e674a0dc3eebe223c196e336c7', 'kerjaan');

-- --------------------------------------------------------

--
-- Table structure for table `user_blog_link`
--

CREATE TABLE IF NOT EXISTS `user_blog_link` (
  `kd` varchar(50) NOT NULL,
  `kd_user` varchar(50) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `url` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_blog_link`
--

INSERT INTO `user_blog_link` (`kd`, `kd_user`, `judul`, `url`) VALUES
('2cc16cb1e972ce14c58b598a6fd174e1', 'ebfa66a6dbfd21413d1035db2ca987a6', 'SISFOKOL', 'sisfokol.wordpress.com'),
('09e374503550bfb9f1842e2d98bee52c', 'ebfa66a6dbfd21413d1035db2ca987a6', 'FaceBook', 'www.facebook.com'),
('7aa1c1a816aea3ee238411c099cf9fb7', 'ebfa66a6dbfd21413d1035db2ca987a6', 'Meebo', 'www.meebo.com'),
('f59a04d1566cc743175a76c1d82a9c2a', 'ebfa66a6dbfd21413d1035db2ca987a6', 'Toko BALIWAE', 'toko.baliwae.com'),
('040e130aef2148f8e5df6ca7922cde13', 'ebfa66a6dbfd21413d1035db2ca987a6', 'InfoLinux', 'www.infolinux.co.id'),
('ee5fa14be1fca02f296c37b966fe8956', 'ebfa66a6dbfd21413d1035db2ca987a6', 'KapanLagiNEWS', 'www.kapanlagi.com'),
('6dcd82f9139d433a6afebd9118508c9e', 'ebfa66a6dbfd21413d1035db2ca987a6', 'DetikNEWS', 'www.detik.com'),
('becf60ce504367c516b47e24a5d70308', '8493b580f4504947ddc31ea23d5bd3cb', 'SISFOKOL', 'sisfokol.wordpress.com'),
('75b4922c58ee2017b4cecfd0e8b9c2fc', 'c8501a58dde52c15ac3ac56fbe669603', 'SISFOKOL', 'sisfokol.wordpress.com'),
('b5272354175bf41af69256db2f9521d7', '7b029cd0da55eef7b8dcdaf1d84c6353', 'Blog SISFOKOL', 'sisfokol.wordpress.com'),
('617539954b4f221786c6e99d4ae87d48', '4a91033bfe52de0aedecd767ee4075c5', 'OmahBIASAWAE', 'omahbiasawae.com'),
('e53c868917d6aa2c37ada6c3a6113218', '03abc9e674a0dc3eebe223c196e336c7', 'OmahBIASAWAE', 'omahbiasawae.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_blog_msg`
--

CREATE TABLE IF NOT EXISTS `user_blog_msg` (
  `kd` varchar(50) NOT NULL,
  `kd_user` varchar(50) NOT NULL,
  `untuk` varchar(50) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_blog_msg`
--

INSERT INTO `user_blog_msg` (`kd`, `kd_user`, `untuk`, `msg`, `postdate`) VALUES
('3fb40f82b54016813c14d26be5c113e1', '4a91033bfe52de0aedecd767ee4075c5', '8493b580f4504947ddc31ea23d5bd3cb', 'apaan tuh...', '2010-12-25 14:28:08'),
('3fb40f82b54016813c14d26be5c113e1', '4a91033bfe52de0aedecd767ee4075c5', '0a2a7ea8d30d9e15038f86ed50a84d6c', 'apaan tuh...', '2010-12-25 14:28:08'),
('3fb40f82b54016813c14d26be5c113e1', '4a91033bfe52de0aedecd767ee4075c5', '205a54b0333f57b7f217b2995d028083', 'apaan tuh...', '2010-12-25 14:28:08'),
('3fb40f82b54016813c14d26be5c113e1', '4a91033bfe52de0aedecd767ee4075c5', 'c573a358b8a7a60a9988bc173dfb13ab', 'apaan tuh...', '2010-12-25 14:28:08'),
('3fb40f82b54016813c14d26be5c113e1', '4a91033bfe52de0aedecd767ee4075c5', '7b029cd0da55eef7b8dcdaf1d84c6353', 'apaan tuh...', '2010-12-25 14:28:08'),
('3fb40f82b54016813c14d26be5c113e1', '4a91033bfe52de0aedecd767ee4075c5', 'c8501a58dde52c15ac3ac56fbe669603', 'apaan tuh...', '2010-12-25 14:28:08'),
('3fb40f82b54016813c14d26be5c113e1', '4a91033bfe52de0aedecd767ee4075c5', '6f94991992a5a0ede5dace8e5225e642', 'apaan tuh...', '2010-12-25 14:28:08'),
('3fb40f82b54016813c14d26be5c113e1', '4a91033bfe52de0aedecd767ee4075c5', 'ebfa66a6dbfd21413d1035db2ca987a6', 'apaan tuh...', '2010-12-25 14:28:08'),
('3fb40f82b54016813c14d26be5c113e1', '4a91033bfe52de0aedecd767ee4075c5', '397e33b4ba51bc683b6850148be23173', 'apaan tuh...', '2010-12-25 14:28:08'),
('814e31c37a6defba192b9413dfa70fe4', '4a91033bfe52de0aedecd767ee4075c5', '8493b580f4504947ddc31ea23d5bd3cb', 'cobalah mengerti...', '2010-12-25 14:29:14'),
('4c5db2a49e86fea30e86ea1676e77cb8', '4a91033bfe52de0aedecd767ee4075c5', '0a2a7ea8d30d9e15038f86ed50a84d6c', 'cobalah mengerti...', '2010-12-25 14:29:14'),
('ad44d38a367efd6e86df30887ccbf156', '4a91033bfe52de0aedecd767ee4075c5', '205a54b0333f57b7f217b2995d028083', 'cobalah mengerti...', '2010-12-25 14:29:14'),
('ba6b2af46808230529bfaed865bdccbe', '4a91033bfe52de0aedecd767ee4075c5', 'c573a358b8a7a60a9988bc173dfb13ab', 'cobalah mengerti...', '2010-12-25 14:29:14'),
('fc35439a78e0e258d1696db7ed7f2b23', '4a91033bfe52de0aedecd767ee4075c5', '7b029cd0da55eef7b8dcdaf1d84c6353', 'cobalah mengerti...', '2010-12-25 14:29:14'),
('9e86b17acb6cb28068e6477f6b77523d', '4a91033bfe52de0aedecd767ee4075c5', 'c8501a58dde52c15ac3ac56fbe669603', 'cobalah mengerti...', '2010-12-25 14:29:14'),
('d83e89a16692bfeb795722b550efd58c', '4a91033bfe52de0aedecd767ee4075c5', '6f94991992a5a0ede5dace8e5225e642', 'cobalah mengerti...', '2010-12-25 14:29:14'),
('1e6f03ffe7a20f8c7a6c7eb10373b5c5', '4a91033bfe52de0aedecd767ee4075c5', 'ebfa66a6dbfd21413d1035db2ca987a6', 'cobalah mengerti...', '2010-12-25 14:29:14'),
('ab3315c723c8cb74dc2d598d806569f5', '4a91033bfe52de0aedecd767ee4075c5', '397e33b4ba51bc683b6850148be23173', 'cobalah mengerti...', '2010-12-25 14:29:14'),
('6ba228f91efb9c10a63d3692f56b3341', '397e33b4ba51bc683b6850148be23173', '4a91033bfe52de0aedecd767ee4075c5', 'ok.', '2010-12-25 14:29:57'),
('b86132b2186c55c6678a887a2a02ae6b', '4b919c813881e8807e3e2af05113b719', '8493b580f4504947ddc31ea23d5bd3cb', 'yo...', '2010-12-25 14:32:35'),
('86e8a0a1687ce3f0d3be523c6f6155c7', '4a91033bfe52de0aedecd767ee4075c5', 'c8501a58dde52c15ac3ac56fbe669603', '[Bahasa Inggris]. okelah kalo begitu...', '2010-12-25 14:44:37'),
('9fc64a0b799da1ed94ce8c300297dc74', '4a91033bfe52de0aedecd767ee4075c5', '6f94991992a5a0ede5dace8e5225e642', '[Bahasa Inggris]. okelah kalo begitu...', '2010-12-25 14:44:37'),
('9c21686ca6e78a5e99f2ea4591782cc0', 'c8501a58dde52c15ac3ac56fbe669603', '4a91033bfe52de0aedecd767ee4075c5', 'ok bu.', '2010-12-25 14:46:12');

-- --------------------------------------------------------

--
-- Table structure for table `user_blog_note`
--

CREATE TABLE IF NOT EXISTS `user_blog_note` (
  `kd` varchar(50) NOT NULL,
  `kd_user` varchar(50) NOT NULL,
  `note` varchar(255) NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_blog_note`
--

INSERT INTO `user_blog_note` (`kd`, `kd_user`, `note`, `postdate`) VALUES
('a6a59684996d51c4470a296957a6486f', 'ebfa66a6dbfd21413d1035db2ca987a6', 'harus bisa...', '2009-03-31 14:18:32'),
('4a1db53f11e4ce5fc5f27442e3909364', '7b029cd0da55eef7b8dcdaf1d84c6353', 'Saatnya Melindungi SISFOKOL dari pengusaha software yang tidak bertanggung jawab.', '2009-06-23 10:07:24'),
('02756e1f28c88ff10c838083692ee433', 'ebfa66a6dbfd21413d1035db2ca987a6', 'aduh...', '2009-04-01 11:04:05'),
('c299f04dedfe8ad5e513e8105900f4a9', 'ebfa66a6dbfd21413d1035db2ca987a6', 'kok masih belum bisa chatxstrixnya ya... :xstrix( .', '2009-04-14 16:41:18'),
('36d1c107f28bcf98b56b843d131107f7', '397e33b4ba51bc683b6850148be23173', 'Jangan lupa, selalu bangun pagi.', '2009-04-24 10:47:13'),
('383e1ba07c3ba394d9417fc4a7776759', '8493b580f4504947ddc31ea23d5bd3cb', 'Masih Banyak Shooting terus.', '2009-05-18 10:56:12'),
('9d49b955439258cf8c0d854a32775a21', '4a91033bfe52de0aedecd767ee4075c5', 'ada xstrix ada aja.', '2009-05-25 11:10:41'),
('822c271df2aa9876c7996f82e084cd08', '4a91033bfe52de0aedecd767ee4075c5', 'Kenapa tidak...?', '2009-05-26 12:24:06'),
('e6b6ec4351130ae24301bcb489bee714', 'c8501a58dde52c15ac3ac56fbe669603', 'kadang hidup itu harus kita temukan sendiri.', '2009-06-25 13:31:48'),
('36edaea41fe3b5598ca659ae06befbf0', 'c573a358b8a7a60a9988bc173dfb13ab', 'Saatnya rilis SISFOKOLxgwahxJANISSARI.', '2009-06-28 10:43:51'),
('aaae3cd97ea50ce173f24b21897b782a', '4a91033bfe52de0aedecd767ee4075c5', 'tes... satu... dua... tiga...', '2015-09-13 13:20:08'),
('74f9f01e3cae143f216be5ddc97b50d0', '03abc9e674a0dc3eebe223c196e336c7', 'lg belajar yg rajin', '2015-09-14 08:36:35');

-- --------------------------------------------------------

--
-- Table structure for table `user_blog_note_msg`
--

CREATE TABLE IF NOT EXISTS `user_blog_note_msg` (
  `kd` varchar(50) NOT NULL,
  `kd_user_blog_note` varchar(50) NOT NULL,
  `dari` varchar(50) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_blog_note_msg`
--

INSERT INTO `user_blog_note_msg` (`kd`, `kd_user_blog_note`, `dari`, `msg`, `postdate`) VALUES
('5ad75765a1d83ac77ebc1a4531199f65', '46e732443f7f038f93435439c879493d', 'ebfa66a6dbfd21413d1035db2ca987a6', 'udah ganti nama menjadi xpsijixSISFOKOLxgwahxJANISSARIxpsijix.', '2009-06-20 10:45:29'),
('5bd73f97f5b7521b1c2726c334175ae5', 'c299f04dedfe8ad5e513e8105900f4a9', 'ebfa66a6dbfd21413d1035db2ca987a6', 'tttt', '2009-06-18 10:31:16'),
('2438bb9c4dacd93d7c3735a55fe2d3f4', 'c299f04dedfe8ad5e513e8105900f4a9', 'ebfa66a6dbfd21413d1035db2ca987a6', 'gffgj', '2009-06-20 11:53:18'),
('b62ea013668a117a7be134728c071687', '383e1ba07c3ba394d9417fc4a7776759', '8493b580f4504947ddc31ea23d5bd3cb', 'aq kok belum pernah dapat OSCAR ya...', '2009-05-18 12:02:46'),
('88dafe0ec97438db2917d54839e0984a', 'c299f04dedfe8ad5e513e8105900f4a9', '7b029cd0da55eef7b8dcdaf1d84c6353', 'coba lagi dong...xpentungx', '2009-06-24 10:39:00'),
('1e0258ceb715be268d2579674703d72f', 'c299f04dedfe8ad5e513e8105900f4a9', 'ebfa66a6dbfd21413d1035db2ca987a6', 'yyy', '2009-05-26 16:53:15'),
('55b2e2bc02cc8828b36c48c357c70e98', '46e732443f7f038f93435439c879493d', 'ebfa66a6dbfd21413d1035db2ca987a6', 'hhh', '2009-06-20 11:52:36'),
('ceab800c8e2ab65ba452939efd6dabaf', '822c271df2aa9876c7996f82e084cd08', '4a91033bfe52de0aedecd767ee4075c5', 'wow....', '2009-06-15 09:51:03'),
('3a7a2398d0bbcc72c0b37ac0558ed4e4', '4a1db53f11e4ce5fc5f27442e3909364', '4a91033bfe52de0aedecd767ee4075c5', 'semuanya jangan khawatir...xpentungxxpentungx', '2009-06-25 11:15:47'),
('097da342ce0f6b084aad2326540f2723', '4a1db53f11e4ce5fc5f27442e3909364', '7b029cd0da55eef7b8dcdaf1d84c6353', 'itu sangat penting...xpentungxxpentungx', '2009-06-23 11:29:17'),
('a8f5a1c564c63f698ef1bb95acc422cd', '822c271df2aa9876c7996f82e084cd08', '7b029cd0da55eef7b8dcdaf1d84c6353', 'aq selalu menjawab xpsijixyaxpsijix.', '2009-06-23 11:54:54'),
('c6d64d847a10679d91bf71a6439d79c9', '9d49b955439258cf8c0d854a32775a21', '4a91033bfe52de0aedecd767ee4075c5', 'ada apa kalian ini...?', '2009-06-23 11:58:03'),
('05c31b1a66be466f99e841c2442625b3', '9d49b955439258cf8c0d854a32775a21', '4a91033bfe52de0aedecd767ee4075c5', 'ya...?', '2009-06-23 11:59:24'),
('9dc0cce7a4a0a22a098f8f0115364876', '9d49b955439258cf8c0d854a32775a21', '7b029cd0da55eef7b8dcdaf1d84c6353', 'berani coba lagi...?', '2009-06-23 12:00:21'),
('9947e3dd9393776b60061ea641ccae88', 'c299f04dedfe8ad5e513e8105900f4a9', '4a91033bfe52de0aedecd767ee4075c5', 'bisa. nanti juga bisa lho.', '2009-06-23 12:20:21'),
('d24fe0b0cc0d7f3bfc30bd3427c722a0', '4a1db53f11e4ce5fc5f27442e3909364', '4a91033bfe52de0aedecd767ee4075c5', 'aq setuju.\r\nakan aku bantai semua, mereka yang tidak menghargai Copyleft Freedom.', '2009-06-25 12:13:40'),
('be40006cdfd1dcd68e5cfddacf4284bc', '822c271df2aa9876c7996f82e084cd08', '4a91033bfe52de0aedecd767ee4075c5', 'ya...?', '2009-06-25 12:24:59'),
('02f5c44a384d595e309be7dd42097931', '9d49b955439258cf8c0d854a32775a21', '4a91033bfe52de0aedecd767ee4075c5', 'ya. gpp.', '2009-06-25 12:42:42'),
('6b6e83b26b59982ec11a76c41ae7a999', 'e6b6ec4351130ae24301bcb489bee714', 'c8501a58dde52c15ac3ac56fbe669603', 'memang begitulah kunci hidup.', '2009-06-25 13:38:01'),
('3ccbed71e31a4ad753c17f993c893921', '4a1db53f11e4ce5fc5f27442e3909364', 'c8501a58dde52c15ac3ac56fbe669603', 'aku akan selalu membantu anda.', '2009-06-25 13:45:15'),
('c6eb92f33d9e7ccac746579c962930c0', '4a1db53f11e4ce5fc5f27442e3909364', 'c573a358b8a7a60a9988bc173dfb13ab', 'ok. aq mendukungmu.', '2009-06-28 10:55:03'),
('f1b975a85bc4c294358ea68f152767fa', '822c271df2aa9876c7996f82e084cd08', 'c573a358b8a7a60a9988bc173dfb13ab', 'kenapa ya...?', '2009-06-28 10:56:17'),
('971ee2bcbb7426180f7968e978f4eedb', '36edaea41fe3b5598ca659ae06befbf0', 'ebfa66a6dbfd21413d1035db2ca987a6', 'selamat...', '2009-07-02 22:34:53'),
('6545fd4eca8bb08ef391a40b436ff49f', '36edaea41fe3b5598ca659ae06befbf0', '4a91033bfe52de0aedecd767ee4075c5', 'lama banget bikinnya...?. kebanyakan project ya...?', '2009-07-05 23:50:53'),
('3aa9d3413875784fc98764fe31eb5fac', '4a1db53f11e4ce5fc5f27442e3909364', '6f94991992a5a0ede5dace8e5225e642', 'aku sangat setuju.', '2009-07-15 14:24:17'),
('253d3f5a8832bba38d2c03e0e6020ab1', '36edaea41fe3b5598ca659ae06befbf0', '4a91033bfe52de0aedecd767ee4075c5', 'ok. gpp.akhirya aq tahu alasannya. sukses ya.', '2009-07-20 09:44:36'),
('41f73a2c680167e6d71a42dc18cba117', '4a1db53f11e4ce5fc5f27442e3909364', '7b029cd0da55eef7b8dcdaf1d84c6353', 'yang penting, aq telah tahu data xstrix datanya.', '2009-08-26 13:34:45'),
('2c5fa5b0f7823776b142e7558bc9c002', 'e6b6ec4351130ae24301bcb489bee714', '7b029cd0da55eef7b8dcdaf1d84c6353', 'maaf. aq tidak setuju.', '2009-08-26 13:38:27');

-- --------------------------------------------------------

--
-- Table structure for table `user_blog_status`
--

CREATE TABLE IF NOT EXISTS `user_blog_status` (
  `kd` varchar(50) NOT NULL,
  `kd_user` varchar(50) NOT NULL,
  `status` varchar(255) NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_blog_status`
--

INSERT INTO `user_blog_status` (`kd`, `kd_user`, `status`, `postdate`) VALUES
('2394f98c3a7655926f1ced6718743137', 'ebfa66a6dbfd21413d1035db2ca987a6', 'Sedang membuat SISFOKOLxgwahxSINAU...', '2009-03-27 15:34:12'),
('d87900a8c0fc934a35e5be528cc7086b', 'ebfa66a6dbfd21413d1035db2ca987a6', 'asyik..............', '2009-06-18 10:27:17'),
('2f2091f5c3f107d7248f9d1e46dc2b9e', 'ebfa66a6dbfd21413d1035db2ca987a6', 'masih ngedit SINAU...', '2009-03-31 14:26:28'),
('fc12ef5c396de88d4b576e5bc42964f7', 'ebfa66a6dbfd21413d1035db2ca987a6', 'ya.... belum jadi xstrix jadi...', '2009-04-01 09:44:12'),
('4269119a37b002d703395f9faa9e3496', 'ebfa66a6dbfd21413d1035db2ca987a6', 'siapa ya...?', '2009-04-01 11:04:22'),
('f06c761faaf639a8c2a8c2cd84ac3ca5', 'ebfa66a6dbfd21413d1035db2ca987a6', 'Masih utakxstrixatik extension GD, Chat, dan tinyMCE.', '2009-04-14 16:41:50'),
('659a22b71ecac83f72d748ef8447d457', '397e33b4ba51bc683b6850148be23173', 'Ada Apa dengan Aku...?', '2009-04-26 22:14:29'),
('6cf6e20921cf7d72304fe4cb3ef45089', 'ebfa66a6dbfd21413d1035db2ca987a6', 'coba lagi aja...', '2009-04-25 21:14:22'),
('a9076e0134884d86bfa06b561e5c5184', '8493b580f4504947ddc31ea23d5bd3cb', 'Andaikan Saja, Aku Jadi Orang Indonesia...?. Banyak yang jadi penggemarku gak ya...?.', '2009-05-18 10:55:49'),
('9885f8ca9c8aa9cc1374814cc3cd7331', '4a91033bfe52de0aedecd767ee4075c5', 'test satu dua tiga...', '2009-05-25 11:10:25'),
('4f50046d32f741f6286ad8a4fbd38899', '4a91033bfe52de0aedecd767ee4075c5', 'bukan begitu ya...?', '2009-05-26 12:26:50'),
('54bbc4c18f4ccb2720daf77e5f4c307c', '7b029cd0da55eef7b8dcdaf1d84c6353', 'Kenapa Serius Sekali...?', '2009-06-23 10:05:05'),
('a784f8e69329466d4fd1b5fa3ff8eaea', 'c8501a58dde52c15ac3ac56fbe669603', 'Nikmatnya Hidup, Siapa yang mau...?', '2009-06-25 13:31:25'),
('ddc062bf7194341b69507300ca1af719', 'c573a358b8a7a60a9988bc173dfb13ab', 'Mari kita aneh xstrix aneh aja...', '2009-06-28 10:43:21'),
('4484334db5899183ea001384411e99ef', '4a91033bfe52de0aedecd767ee4075c5', 'Sedang bantu pak Agus Muhajir, bikin SISFOKOLxgwahxJANISSARI.', '2009-07-12 18:17:12'),
('d326a9fc3280427e4a8825c942098b1d', '4a91033bfe52de0aedecd767ee4075c5', 'tes.... satu... dua... tiga...', '2015-09-13 13:19:53'),
('193f52071c67551fb7d0d40693902fa4', '03abc9e674a0dc3eebe223c196e336c7', 'uji coba...', '2015-09-14 08:36:20');

-- --------------------------------------------------------

--
-- Table structure for table `user_blog_status_msg`
--

CREATE TABLE IF NOT EXISTS `user_blog_status_msg` (
  `kd` varchar(50) NOT NULL,
  `kd_user_blog_status` varchar(50) NOT NULL,
  `dari` varchar(50) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_blog_status_msg`
--

INSERT INTO `user_blog_status_msg` (`kd`, `kd_user_blog_status`, `dari`, `msg`, `postdate`) VALUES
('f59f4533b8cd8a211ba8c58de04e199f', 'a9076e0134884d86bfa06b561e5c5184', 'ebfa66a6dbfd21413d1035db2ca987a6', 'enjoy aja deh...', '2009-06-19 11:20:32'),
('03f34beca4a31a9e49c366c17b98a84a', '4f50046d32f741f6286ad8a4fbd38899', '4a91033bfe52de0aedecd767ee4075c5', 'coba lagi....', '2009-06-15 09:51:27'),
('5efd08f6e4de88ad92e7497f57a7990b', 'fc12ef5c396de88d4b576e5bc42964f7', 'ebfa66a6dbfd21413d1035db2ca987a6', 'aq harus terus berjuang nih...', '2009-05-16 06:04:21'),
('2012d35b53371f7c1ed023535e66ee73', '659a22b71ecac83f72d748ef8447d457', '4a91033bfe52de0aedecd767ee4075c5', 'siapa yang tahu...?. tanya diri sendiri aja.', '2009-05-16 06:06:32'),
('1e1c5745d08c1b253d8e087a9e31343b', 'f06c761faaf639a8c2a8c2cd84ac3ca5', 'ebfa66a6dbfd21413d1035db2ca987a6', 'benar xstrix benar bikin kepala pusing.... benar xstrix benar bikin kepala pusing.... benar xstrix benar bikin kepala pusing.... benar xstrix benar bikin kepala pusing.... benar xstrix benar bikin kepala pusing.... benar xstrix benar bikin kepala pusing..', '2009-04-25 17:04:13'),
('a8cab9dddb83058031bd2342cfadf7e0', '659a22b71ecac83f72d748ef8447d457', 'ebfa66a6dbfd21413d1035db2ca987a6', 'aku juga mau dong...', '2009-04-26 22:15:36'),
('a496f945cf094946d0970f50a69bc0c6', '2394f98c3a7655926f1ced6718743137', 'ebfa66a6dbfd21413d1035db2ca987a6', 'udah ganti nama, jadi SISFOKOLxgwahxJANISSARI', '2009-05-16 06:00:25'),
('8254a29a4ebbaeaa88dcd1ff1a6e1238', '9885f8ca9c8aa9cc1374814cc3cd7331', '4a91033bfe52de0aedecd767ee4075c5', 'ayo, coba lagi...', '2009-05-26 11:04:03'),
('72e3dc7ed6844ef21b03045a9c1b7254', '659a22b71ecac83f72d748ef8447d457', '397e33b4ba51bc683b6850148be23173', 'ayo.... tanya kenapa ya...', '2009-04-26 22:14:55'),
('13f8de08451ce9c727a6ea1c5e566763', 'f06c761faaf639a8c2a8c2cd84ac3ca5', 'ebfa66a6dbfd21413d1035db2ca987a6', 'luar biaya. akhirnya bisa bikin xpsijixauto thumbnailxpsijix.', '2009-04-25 17:10:07'),
('36b00753bb685d9287eb3ab3c652bd49', '4f50046d32f741f6286ad8a4fbd38899', 'ebfa66a6dbfd21413d1035db2ca987a6', 'aq kan selalu mencoba.', '2009-06-19 11:20:55'),
('21039d5bf555738f9552a37244c5bf41', '6cf6e20921cf7d72304fe4cb3ef45089', '4a91033bfe52de0aedecd767ee4075c5', 'ada xstrix ada aja...', '2009-05-15 09:23:06'),
('644f898d60ff7554c6aca99e9177046e', '6cf6e20921cf7d72304fe4cb3ef45089', 'ebfa66a6dbfd21413d1035db2ca987a6', 'ya....', '2009-06-18 10:10:16'),
('95b8da5228e4c68afde79f268fede8b9', 'd87900a8c0fc934a35e5be528cc7086b', 'ebfa66a6dbfd21413d1035db2ca987a6', 'enjoy aja...', '2009-06-18 10:27:25'),
('a6f24381661b499562da380841e1666a', '9885f8ca9c8aa9cc1374814cc3cd7331', 'ebfa66a6dbfd21413d1035db2ca987a6', 'www', '2009-06-18 10:09:54'),
('d2a8373082d3f8a68bc89020915db7d6', 'fc12ef5c396de88d4b576e5bc42964f7', 'ebfa66a6dbfd21413d1035db2ca987a6', 'tetap semangat ya....', '2009-06-13 09:53:24'),
('dc52ec416ae37979177ac01d2edfb6b2', '2394f98c3a7655926f1ced6718743137', 'ebfa66a6dbfd21413d1035db2ca987a6', 'semoga nama baru, membawa hoki..', '2009-06-18 10:10:46'),
('1dfe4da9164e0c3a0c134694901729e9', 'a9076e0134884d86bfa06b561e5c5184', 'ebfa66a6dbfd21413d1035db2ca987a6', 'apalagi yang kurang ya...?', '2009-06-19 11:22:48'),
('dbaca2ec7070b8f1b73c8b3310d6cd30', '4f50046d32f741f6286ad8a4fbd38899', '4a91033bfe52de0aedecd767ee4075c5', 'terus terang, terang terus.', '2009-06-25 12:38:00'),
('be3a0a22565680f3fa48b1e3eb98dec2', '659a22b71ecac83f72d748ef8447d457', 'ebfa66a6dbfd21413d1035db2ca987a6', 'ggggg', '2009-06-19 11:26:55'),
('013a5921745d961a1d78eb99c2dd822c', '659a22b71ecac83f72d748ef8447d457', 'ebfa66a6dbfd21413d1035db2ca987a6', 'ayodeh...', '2009-06-19 11:28:57'),
('e62d9d8729220e60ac1659a93df791d5', '659a22b71ecac83f72d748ef8447d457', 'ebfa66a6dbfd21413d1035db2ca987a6', 'jjjj', '2009-06-19 11:36:08'),
('95ad2695d381960b52a58105f58447f5', '659a22b71ecac83f72d748ef8447d457', 'ebfa66a6dbfd21413d1035db2ca987a6', 'oooooooooooooookkkkkkkkkk', '2009-06-21 01:24:45'),
('86cf91b1914792a4841fadb7a6a310d2', 'd87900a8c0fc934a35e5be528cc7086b', '4a91033bfe52de0aedecd767ee4075c5', 'semangat terus aja...', '2009-06-21 02:00:18'),
('c623babd96c9a24c408b74cd220f284f', '4f50046d32f741f6286ad8a4fbd38899', '7b029cd0da55eef7b8dcdaf1d84c6353', 'I LOVE YOU...', '2009-06-23 10:03:21'),
('27028c671fd83695982e7a1d679a7ce8', '54bbc4c18f4ccb2720daf77e5f4c307c', '7b029cd0da55eef7b8dcdaf1d84c6353', 'enjoy aja...', '2009-06-23 10:05:18'),
('6686009a5ec7971c04e69e8a89c639e5', 'd87900a8c0fc934a35e5be528cc7086b', '7b029cd0da55eef7b8dcdaf1d84c6353', 'apanya yang asyik...?', '2009-06-23 10:05:41'),
('0f55a1daa390d01af146af99e98d8524', '2394f98c3a7655926f1ced6718743137', '7b029cd0da55eef7b8dcdaf1d84c6353', 'akan selalu aku dukung dan aku lindungi.', '2009-06-23 10:05:59'),
('69d228d7de302dd576a10dcb33a28264', '2f2091f5c3f107d7248f9d1e46dc2b9e', '7b029cd0da55eef7b8dcdaf1d84c6353', 'siapa yang mau SINAU...?. JANISSARI lho...xpentungx', '2009-06-23 11:23:48'),
('8608731d741f5f02a48a473d2872ec59', '54bbc4c18f4ccb2720daf77e5f4c307c', 'ebfa66a6dbfd21413d1035db2ca987a6', 'tenang aja...', '2009-06-23 12:09:37'),
('2c4f57ab5520bde1a35869d949aaa666', '2f2091f5c3f107d7248f9d1e46dc2b9e', 'ebfa66a6dbfd21413d1035db2ca987a6', 'banyak yang mau kok.', '2009-06-23 12:14:54'),
('e050c786d0ad34be1a0f2e209fa0ba89', 'd87900a8c0fc934a35e5be528cc7086b', 'ebfa66a6dbfd21413d1035db2ca987a6', 'ikut aja ya...xpentungxxpentungx', '2009-06-23 12:15:56'),
('8b9b278d0590a8de9f7b5914d63d959c', '9885f8ca9c8aa9cc1374814cc3cd7331', '7b029cd0da55eef7b8dcdaf1d84c6353', 'ayo kita bertiga...', '2009-06-24 10:38:37'),
('cfd99eb0d2a2d42dfa3aebc8b85494eb', 'd87900a8c0fc934a35e5be528cc7086b', '7b029cd0da55eef7b8dcdaf1d84c6353', 'o... cuman begitu aja.', '2009-06-24 10:39:16'),
('dddfc8fdee41bc608a9cf934ed40c425', '4269119a37b002d703395f9faa9e3496', '7b029cd0da55eef7b8dcdaf1d84c6353', 'emang ada siapa ya...?', '2009-06-24 10:39:54'),
('460453327f46662c57f9dfb852ce02bb', 'a9076e0134884d86bfa06b561e5c5184', '7b029cd0da55eef7b8dcdaf1d84c6353', 'semangat aja...', '2009-06-24 11:58:21'),
('7ede2ac0abcdfe339871c3e7743da9fe', '4f50046d32f741f6286ad8a4fbd38899', '7b029cd0da55eef7b8dcdaf1d84c6353', 'aku akan selalu begitu...', '2009-06-24 12:03:54'),
('5b32489e4eca0e96fd7fbf621086f4ad', 'a9076e0134884d86bfa06b561e5c5184', '4a91033bfe52de0aedecd767ee4075c5', 'semangat aja.', '2009-06-25 11:32:24'),
('6e41fe4d3a83abe5cfa724019fea7cec', 'd87900a8c0fc934a35e5be528cc7086b', '4a91033bfe52de0aedecd767ee4075c5', 'iya nih, apa yang asyik tuh...?', '2009-06-25 11:32:50'),
('23e66b98a716e8316dd25a0baf5862e5', '54bbc4c18f4ccb2720daf77e5f4c307c', '4a91033bfe52de0aedecd767ee4075c5', 'kamu itu mau apa...?', '2009-06-25 11:43:00'),
('0f68c3e37ca5644808196cc762510fb9', '54bbc4c18f4ccb2720daf77e5f4c307c', '4a91033bfe52de0aedecd767ee4075c5', 'no comment.', '2009-06-25 12:07:36'),
('7773e4858dedf2de5748824fc73b30ce', '54bbc4c18f4ccb2720daf77e5f4c307c', 'c8501a58dde52c15ac3ac56fbe669603', 'salam kenal juga ya, pak joker.', '2009-06-25 13:30:17'),
('f6d4f352d9c5c1df8d955bb41a557477', 'a784f8e69329466d4fd1b5fa3ff8eaea', 'c8501a58dde52c15ac3ac56fbe669603', 'aq suka hidup yang BIASAWAE.', '2009-06-25 13:37:44'),
('39f9acd0c04119d0ccf39e4d1a4abc42', '2394f98c3a7655926f1ced6718743137', 'c8501a58dde52c15ac3ac56fbe669603', 'tetap kerja keras ya...', '2009-06-25 13:41:32'),
('9e335329c0da11353e46549c16dbcd2e', '9885f8ca9c8aa9cc1374814cc3cd7331', 'c8501a58dde52c15ac3ac56fbe669603', 'terus jadi empat lho...', '2009-06-25 14:09:58'),
('ad30ce4d2815c3e3439dbb37baea2b6a', 'a784f8e69329466d4fd1b5fa3ff8eaea', 'ebfa66a6dbfd21413d1035db2ca987a6', 'aku juga mau...', '2009-06-27 12:05:55'),
('2912b6f8c31fd282383c5b99c7d1368f', 'a9076e0134884d86bfa06b561e5c5184', 'c573a358b8a7a60a9988bc173dfb13ab', 'salam kenal juga.', '2009-06-28 10:49:09'),
('cd8cf610368021020487c35b937c4ce3', '4f50046d32f741f6286ad8a4fbd38899', 'c573a358b8a7a60a9988bc173dfb13ab', 'ok.', '2009-06-28 10:56:45'),
('2c983df107ee63e37281d924fb69ffca', '54bbc4c18f4ccb2720daf77e5f4c307c', 'ebfa66a6dbfd21413d1035db2ca987a6', 'semangat aja.', '2009-06-29 12:09:32'),
('93a501601bd51117fdec15c1da2bb8ea', 'ddc062bf7194341b69507300ca1af719', 'ebfa66a6dbfd21413d1035db2ca987a6', 'ya...?', '2009-07-02 22:34:38'),
('db66df93198109ff04b0fd3d3af27663', 'ddc062bf7194341b69507300ca1af719', '4a91033bfe52de0aedecd767ee4075c5', 'apanya...?', '2009-07-05 23:50:17'),
('49fd36f694ec884b63a85c8dc6fc9d17', 'a9076e0134884d86bfa06b561e5c5184', '4a91033bfe52de0aedecd767ee4075c5', 'jangan khawatir.', '2009-07-12 07:30:56'),
('d5242f0356e3953678d3b9aa7d42613d', 'ddc062bf7194341b69507300ca1af719', '6f94991992a5a0ede5dace8e5225e642', 'salam kenal ya...', '2009-07-15 14:23:18'),
('e1b30a7583fc6c6038b76f8d740fec35', '54bbc4c18f4ccb2720daf77e5f4c307c', '6f94991992a5a0ede5dace8e5225e642', 'mau apa lagi...?', '2009-07-15 14:23:53'),
('21cd8a68bc6efe0e55fe684e227c4cf3', '4484334db5899183ea001384411e99ef', '4a91033bfe52de0aedecd767ee4075c5', 'ok. aqakan selalu siap.', '2009-07-20 09:32:30'),
('5c54cef7881a52f7a16af88541d52466', 'a9076e0134884d86bfa06b561e5c5184', '4a91033bfe52de0aedecd767ee4075c5', 'ooo', '2009-07-20 09:38:44'),
('80de7d54245d07f8fbfcf9192a1d713d', '659a22b71ecac83f72d748ef8447d457', '4a91033bfe52de0aedecd767ee4075c5', 'santai saja.', '2009-07-20 09:43:04'),
('7200131b6adbc0c3e4655d27cf343d31', 'ddc062bf7194341b69507300ca1af719', '4a91033bfe52de0aedecd767ee4075c5', 'enjoy aja.', '2009-07-20 09:43:56'),
('854c06fd45adfc51470b79da30841a72', 'a9076e0134884d86bfa06b561e5c5184', '4a91033bfe52de0aedecd767ee4075c5', 'enjoy aja.', '2009-07-20 09:46:48'),
('cb68a0b8d44b1a313cf687c02d98854e', '54bbc4c18f4ccb2720daf77e5f4c307c', '7b029cd0da55eef7b8dcdaf1d84c6353', 'semuanya aman terkendali.', '2009-08-26 13:34:13'),
('09ea556b49c0019e4b7b77c5a945fe0d', 'a9076e0134884d86bfa06b561e5c5184', '7b029cd0da55eef7b8dcdaf1d84c6353', 'kau sepertinya terlalu takut...xpentungxxpentungx', '2009-08-26 13:35:41'),
('d2601dc5d95eb81b493e6b5d43f39522', 'a784f8e69329466d4fd1b5fa3ff8eaea', '7b029cd0da55eef7b8dcdaf1d84c6353', 'enjoy aja...', '2009-08-26 13:38:07'),
('ab59d31c7b824357cd2371b65a21cbcd', 'a9076e0134884d86bfa06b561e5c5184', '4b919c813881e8807e3e2af05113b719', 'ewtt', '2010-12-24 11:21:25'),
('82ab81473ef4b07ba56d2f5fe44002d2', '4484334db5899183ea001384411e99ef', '4a91033bfe52de0aedecd767ee4075c5', 'ok....', '2015-09-13 14:18:19'),
('e0deb9bf4a2fd6a847fa84e32398ba02', 'ddc062bf7194341b69507300ca1af719', '4a91033bfe52de0aedecd767ee4075c5', 'wah.....', '2015-09-13 14:18:54');

-- --------------------------------------------------------

--
-- Table structure for table `user_blog_teman`
--

CREATE TABLE IF NOT EXISTS `user_blog_teman` (
  `kd` varchar(50) NOT NULL,
  `kd_user` varchar(50) NOT NULL,
  `kd_user_teman` varchar(50) NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_blog_teman`
--

INSERT INTO `user_blog_teman` (`kd`, `kd_user`, `kd_user_teman`, `postdate`) VALUES
('1016f1b8f9501cb662d8ac362e548c80', '8493b580f4504947ddc31ea23d5bd3cb', '0a2a7ea8d30d9e15038f86ed50a84d6c', '2009-03-28 12:51:14'),
('ad3cd58dad394d26cd7e274be564fa20', 'ebfa66a6dbfd21413d1035db2ca987a6', '0a2a7ea8d30d9e15038f86ed50a84d6c', '2009-03-28 12:49:12'),
('ad3cd58dad394d26cd7e274be564fa20', '0a2a7ea8d30d9e15038f86ed50a84d6c', 'ebfa66a6dbfd21413d1035db2ca987a6', '2009-03-28 12:49:12'),
('28be0c861956f48be747377dec588448', 'ebfa66a6dbfd21413d1035db2ca987a6', 'abd5df21e34eacf9d32782c0122cba31', '2009-03-28 12:49:14'),
('28be0c861956f48be747377dec588448', 'abd5df21e34eacf9d32782c0122cba31', 'ebfa66a6dbfd21413d1035db2ca987a6', '2009-03-28 12:49:14'),
('af4494a28b06bf611b6953b534506b7e', 'ebfa66a6dbfd21413d1035db2ca987a6', '8493b580f4504947ddc31ea23d5bd3cb', '2009-03-28 12:49:15'),
('af4494a28b06bf611b6953b534506b7e', '8493b580f4504947ddc31ea23d5bd3cb', 'ebfa66a6dbfd21413d1035db2ca987a6', '2009-03-28 12:49:15'),
('be12b6acafe3dc820a28dc9f6503bf3c', 'ebfa66a6dbfd21413d1035db2ca987a6', '205a54b0333f57b7f217b2995d028083', '2009-03-28 12:49:16'),
('be12b6acafe3dc820a28dc9f6503bf3c', '205a54b0333f57b7f217b2995d028083', 'ebfa66a6dbfd21413d1035db2ca987a6', '2009-03-28 12:49:16'),
('1016f1b8f9501cb662d8ac362e548c80', '0a2a7ea8d30d9e15038f86ed50a84d6c', '8493b580f4504947ddc31ea23d5bd3cb', '2009-03-28 12:51:14'),
('f57d17acb748ddc703014788f6838aa1', '0a2a7ea8d30d9e15038f86ed50a84d6c', '397e33b4ba51bc683b6850148be23173', '2009-03-28 12:51:15'),
('f57d17acb748ddc703014788f6838aa1', '397e33b4ba51bc683b6850148be23173', '0a2a7ea8d30d9e15038f86ed50a84d6c', '2009-03-28 12:51:15'),
('c4b37b47687e0eed1673a81fb9e12cb0', '205a54b0333f57b7f217b2995d028083', '8493b580f4504947ddc31ea23d5bd3cb', '2009-03-28 19:40:43'),
('c4b37b47687e0eed1673a81fb9e12cb0', '8493b580f4504947ddc31ea23d5bd3cb', '205a54b0333f57b7f217b2995d028083', '2009-03-28 19:40:43'),
('c911c34a6f2cea7555d55c75883c8257', 'ebfa66a6dbfd21413d1035db2ca987a6', '397e33b4ba51bc683b6850148be23173', '2009-03-31 14:28:33'),
('c911c34a6f2cea7555d55c75883c8257', '397e33b4ba51bc683b6850148be23173', 'ebfa66a6dbfd21413d1035db2ca987a6', '2009-03-31 14:28:33'),
('3252b06dfa2a0a9b9ccb1269e7cd679e', '4a91033bfe52de0aedecd767ee4075c5', 'ebfa66a6dbfd21413d1035db2ca987a6', '2009-05-14 12:47:40'),
('3252b06dfa2a0a9b9ccb1269e7cd679e', 'ebfa66a6dbfd21413d1035db2ca987a6', '4a91033bfe52de0aedecd767ee4075c5', '2009-05-14 12:47:40'),
('b2505b11ab4063a6f826ed33b5453ae0', '4a91033bfe52de0aedecd767ee4075c5', '0a2a7ea8d30d9e15038f86ed50a84d6c', '2009-05-15 09:36:56'),
('b2505b11ab4063a6f826ed33b5453ae0', '0a2a7ea8d30d9e15038f86ed50a84d6c', '4a91033bfe52de0aedecd767ee4075c5', '2009-05-15 09:36:56'),
('08cf9ffbf441f182af3e8ec7e5b3f702', '4a91033bfe52de0aedecd767ee4075c5', '8493b580f4504947ddc31ea23d5bd3cb', '2009-05-16 04:38:35'),
('08cf9ffbf441f182af3e8ec7e5b3f702', '8493b580f4504947ddc31ea23d5bd3cb', '4a91033bfe52de0aedecd767ee4075c5', '2009-05-16 04:38:35'),
('0fb38a5bc5b24a41e34176d8f22e8f70', '4a91033bfe52de0aedecd767ee4075c5', '397e33b4ba51bc683b6850148be23173', '2009-05-27 01:51:53'),
('0fb38a5bc5b24a41e34176d8f22e8f70', '397e33b4ba51bc683b6850148be23173', '4a91033bfe52de0aedecd767ee4075c5', '2009-05-27 01:51:53'),
('a8735ea10a1d11431232e949ecdc1e40', '4a91033bfe52de0aedecd767ee4075c5', '205a54b0333f57b7f217b2995d028083', '2009-05-28 10:00:14'),
('a8735ea10a1d11431232e949ecdc1e40', '205a54b0333f57b7f217b2995d028083', '4a91033bfe52de0aedecd767ee4075c5', '2009-05-28 10:00:14'),
('dce2f01c2756519b750dd947b81d08b0', '7b029cd0da55eef7b8dcdaf1d84c6353', '8493b580f4504947ddc31ea23d5bd3cb', '2009-06-23 10:02:28'),
('dce2f01c2756519b750dd947b81d08b0', '8493b580f4504947ddc31ea23d5bd3cb', '7b029cd0da55eef7b8dcdaf1d84c6353', '2009-06-23 10:02:28'),
('b5cd77a7288a07c8091b619f2eab44ce', '7b029cd0da55eef7b8dcdaf1d84c6353', '4a91033bfe52de0aedecd767ee4075c5', '2009-06-23 10:02:44'),
('b5cd77a7288a07c8091b619f2eab44ce', '4a91033bfe52de0aedecd767ee4075c5', '7b029cd0da55eef7b8dcdaf1d84c6353', '2009-06-23 10:02:44'),
('717b37cd6ae54bfbb633bbb4ca860a7f', '7b029cd0da55eef7b8dcdaf1d84c6353', 'ebfa66a6dbfd21413d1035db2ca987a6', '2009-06-23 10:02:49'),
('717b37cd6ae54bfbb633bbb4ca860a7f', 'ebfa66a6dbfd21413d1035db2ca987a6', '7b029cd0da55eef7b8dcdaf1d84c6353', '2009-06-23 10:02:49'),
('b564cf75e0f6f243923d410847e07343', 'c8501a58dde52c15ac3ac56fbe669603', '8493b580f4504947ddc31ea23d5bd3cb', '2009-06-25 13:26:27'),
('b564cf75e0f6f243923d410847e07343', '8493b580f4504947ddc31ea23d5bd3cb', 'c8501a58dde52c15ac3ac56fbe669603', '2009-06-25 13:26:27'),
('8dc4d20fabd367c4a39b49b669706673', 'c8501a58dde52c15ac3ac56fbe669603', '7b029cd0da55eef7b8dcdaf1d84c6353', '2009-06-25 13:26:36'),
('8dc4d20fabd367c4a39b49b669706673', '7b029cd0da55eef7b8dcdaf1d84c6353', 'c8501a58dde52c15ac3ac56fbe669603', '2009-06-25 13:26:36'),
('ecd94d3052050102d6eb8dd046dd5070', 'c8501a58dde52c15ac3ac56fbe669603', '4a91033bfe52de0aedecd767ee4075c5', '2009-06-25 13:26:41'),
('ecd94d3052050102d6eb8dd046dd5070', '4a91033bfe52de0aedecd767ee4075c5', 'c8501a58dde52c15ac3ac56fbe669603', '2009-06-25 13:26:41'),
('02cbd08032b97e6fc8cb2fa5861f5eb0', 'c8501a58dde52c15ac3ac56fbe669603', 'ebfa66a6dbfd21413d1035db2ca987a6', '2009-06-25 13:26:49'),
('02cbd08032b97e6fc8cb2fa5861f5eb0', 'ebfa66a6dbfd21413d1035db2ca987a6', 'c8501a58dde52c15ac3ac56fbe669603', '2009-06-25 13:26:49'),
('8490c757fcc1185c80f2f6ebccbb0fad', 'a1d4547f7b75ecc147833acf54ffe76d', '8493b580f4504947ddc31ea23d5bd3cb', '2009-06-25 16:43:21'),
('8490c757fcc1185c80f2f6ebccbb0fad', '8493b580f4504947ddc31ea23d5bd3cb', 'a1d4547f7b75ecc147833acf54ffe76d', '2009-06-25 16:43:21'),
('434ce1eb4751afc20eeae0ad98167b94', 'a1d4547f7b75ecc147833acf54ffe76d', '7b029cd0da55eef7b8dcdaf1d84c6353', '2009-06-25 16:43:28'),
('434ce1eb4751afc20eeae0ad98167b94', '7b029cd0da55eef7b8dcdaf1d84c6353', 'a1d4547f7b75ecc147833acf54ffe76d', '2009-06-25 16:43:28'),
('db15bf319a33364f82d081b75a4ff112', 'a1d4547f7b75ecc147833acf54ffe76d', 'c8501a58dde52c15ac3ac56fbe669603', '2009-06-25 16:43:34'),
('db15bf319a33364f82d081b75a4ff112', 'c8501a58dde52c15ac3ac56fbe669603', 'a1d4547f7b75ecc147833acf54ffe76d', '2009-06-25 16:43:34'),
('00b271c0cd87352e14687de5fea96a6e', 'a1d4547f7b75ecc147833acf54ffe76d', 'ebfa66a6dbfd21413d1035db2ca987a6', '2009-06-25 16:43:39'),
('00b271c0cd87352e14687de5fea96a6e', 'ebfa66a6dbfd21413d1035db2ca987a6', 'a1d4547f7b75ecc147833acf54ffe76d', '2009-06-25 16:43:39'),
('ec96a5a236a72381ec6f3bb0ec70e86d', 'c573a358b8a7a60a9988bc173dfb13ab', '8493b580f4504947ddc31ea23d5bd3cb', '2009-06-28 10:48:51'),
('ec96a5a236a72381ec6f3bb0ec70e86d', '8493b580f4504947ddc31ea23d5bd3cb', 'c573a358b8a7a60a9988bc173dfb13ab', '2009-06-28 10:48:51'),
('885437a23c66523186cacde673995ddc', 'c573a358b8a7a60a9988bc173dfb13ab', '7b029cd0da55eef7b8dcdaf1d84c6353', '2009-06-28 10:49:23'),
('885437a23c66523186cacde673995ddc', '7b029cd0da55eef7b8dcdaf1d84c6353', 'c573a358b8a7a60a9988bc173dfb13ab', '2009-06-28 10:49:23'),
('ef079ec5022f0d470dcc5a9be4365dfe', 'c573a358b8a7a60a9988bc173dfb13ab', 'c8501a58dde52c15ac3ac56fbe669603', '2009-06-28 10:49:29'),
('ef079ec5022f0d470dcc5a9be4365dfe', 'c8501a58dde52c15ac3ac56fbe669603', 'c573a358b8a7a60a9988bc173dfb13ab', '2009-06-28 10:49:29'),
('09066ea7b449816fd55dbc5e8468e0fd', 'c573a358b8a7a60a9988bc173dfb13ab', '4a91033bfe52de0aedecd767ee4075c5', '2009-06-28 10:49:36'),
('09066ea7b449816fd55dbc5e8468e0fd', '4a91033bfe52de0aedecd767ee4075c5', 'c573a358b8a7a60a9988bc173dfb13ab', '2009-06-28 10:49:36'),
('a1ff67fb09ca1107cf75155a031d16ca', 'c573a358b8a7a60a9988bc173dfb13ab', 'a1d4547f7b75ecc147833acf54ffe76d', '2009-06-28 10:49:50'),
('a1ff67fb09ca1107cf75155a031d16ca', 'a1d4547f7b75ecc147833acf54ffe76d', 'c573a358b8a7a60a9988bc173dfb13ab', '2009-06-28 10:49:50'),
('0f4f325961818d463ba9a7a71493534a', 'c573a358b8a7a60a9988bc173dfb13ab', 'ebfa66a6dbfd21413d1035db2ca987a6', '2009-06-28 10:58:43'),
('0f4f325961818d463ba9a7a71493534a', 'ebfa66a6dbfd21413d1035db2ca987a6', 'c573a358b8a7a60a9988bc173dfb13ab', '2009-06-28 10:58:43'),
('cecb7f1e8052a77a80a6d468337f619b', '6f94991992a5a0ede5dace8e5225e642', '4a91033bfe52de0aedecd767ee4075c5', '2009-07-15 14:22:34'),
('cecb7f1e8052a77a80a6d468337f619b', '4a91033bfe52de0aedecd767ee4075c5', '6f94991992a5a0ede5dace8e5225e642', '2009-07-15 14:22:34'),
('85d93a787fa8b122ad7de433b0db1e9d', '6f94991992a5a0ede5dace8e5225e642', '7b029cd0da55eef7b8dcdaf1d84c6353', '2009-07-15 14:22:43'),
('85d93a787fa8b122ad7de433b0db1e9d', '7b029cd0da55eef7b8dcdaf1d84c6353', '6f94991992a5a0ede5dace8e5225e642', '2009-07-15 14:22:43'),
('4d33608a02e5e8f23143844a08751b6f', '6f94991992a5a0ede5dace8e5225e642', 'c573a358b8a7a60a9988bc173dfb13ab', '2009-07-15 14:22:50'),
('4d33608a02e5e8f23143844a08751b6f', 'c573a358b8a7a60a9988bc173dfb13ab', '6f94991992a5a0ede5dace8e5225e642', '2009-07-15 14:22:50'),
('04fbadbc10a1d2e3e797b4829f5d6df0', '6f94991992a5a0ede5dace8e5225e642', 'ebfa66a6dbfd21413d1035db2ca987a6', '2009-07-15 14:22:58'),
('04fbadbc10a1d2e3e797b4829f5d6df0', 'ebfa66a6dbfd21413d1035db2ca987a6', '6f94991992a5a0ede5dace8e5225e642', '2009-07-15 14:22:58'),
('87782a1c3be561ed34f6a066ed3bb0f4', 'e5cabee927429398b4d2a289166d511b', '8493b580f4504947ddc31ea23d5bd3cb', '2009-08-26 13:07:50'),
('87782a1c3be561ed34f6a066ed3bb0f4', '8493b580f4504947ddc31ea23d5bd3cb', 'e5cabee927429398b4d2a289166d511b', '2009-08-26 13:07:50'),
('d761f7f07e9c1e57b2f4b4a2abbc2993', 'e5cabee927429398b4d2a289166d511b', '205a54b0333f57b7f217b2995d028083', '2009-08-26 13:07:57'),
('d761f7f07e9c1e57b2f4b4a2abbc2993', '205a54b0333f57b7f217b2995d028083', 'e5cabee927429398b4d2a289166d511b', '2009-08-26 13:07:57'),
('2ff946a9cdc2b62bef8202e204a36ca9', 'e5cabee927429398b4d2a289166d511b', 'c573a358b8a7a60a9988bc173dfb13ab', '2009-08-26 13:08:03'),
('2ff946a9cdc2b62bef8202e204a36ca9', 'c573a358b8a7a60a9988bc173dfb13ab', 'e5cabee927429398b4d2a289166d511b', '2009-08-26 13:08:03'),
('c79019af239a5e10a9827a70b9064d8e', 'e5cabee927429398b4d2a289166d511b', '7b029cd0da55eef7b8dcdaf1d84c6353', '2009-08-26 13:08:09'),
('c79019af239a5e10a9827a70b9064d8e', '7b029cd0da55eef7b8dcdaf1d84c6353', 'e5cabee927429398b4d2a289166d511b', '2009-08-26 13:08:09'),
('fb2cd640a42df28a573333cdddb40016', 'e5cabee927429398b4d2a289166d511b', 'c8501a58dde52c15ac3ac56fbe669603', '2009-08-26 13:08:17'),
('fb2cd640a42df28a573333cdddb40016', 'c8501a58dde52c15ac3ac56fbe669603', 'e5cabee927429398b4d2a289166d511b', '2009-08-26 13:08:17'),
('4b312975fa35b8f93be69fd284d943f6', 'e5cabee927429398b4d2a289166d511b', 'ebfa66a6dbfd21413d1035db2ca987a6', '2009-08-26 13:08:27'),
('4b312975fa35b8f93be69fd284d943f6', 'ebfa66a6dbfd21413d1035db2ca987a6', 'e5cabee927429398b4d2a289166d511b', '2009-08-26 13:08:27'),
('93b0f7541eeb49c97fc418d9227bd527', '4b919c813881e8807e3e2af05113b719', '8493b580f4504947ddc31ea23d5bd3cb', '2010-12-24 09:00:57'),
('93b0f7541eeb49c97fc418d9227bd527', '8493b580f4504947ddc31ea23d5bd3cb', '4b919c813881e8807e3e2af05113b719', '2010-12-24 09:00:57'),
('7dd17e7bed1a49792c1fa104e6ef311c', '03abc9e674a0dc3eebe223c196e336c7', '8493b580f4504947ddc31ea23d5bd3cb', '2015-09-14 08:35:05'),
('7dd17e7bed1a49792c1fa104e6ef311c', '8493b580f4504947ddc31ea23d5bd3cb', '03abc9e674a0dc3eebe223c196e336c7', '2015-09-14 08:35:05'),
('6c3f7ab3553ecdc2a070049f53cff433', '03abc9e674a0dc3eebe223c196e336c7', '0a2a7ea8d30d9e15038f86ed50a84d6c', '2015-09-14 08:35:07'),
('6c3f7ab3553ecdc2a070049f53cff433', '0a2a7ea8d30d9e15038f86ed50a84d6c', '03abc9e674a0dc3eebe223c196e336c7', '2015-09-14 08:35:07'),
('ea3bc044daebb2c981a32f2221fd66ab', '03abc9e674a0dc3eebe223c196e336c7', 'c573a358b8a7a60a9988bc173dfb13ab', '2015-09-14 08:35:10'),
('ea3bc044daebb2c981a32f2221fd66ab', 'c573a358b8a7a60a9988bc173dfb13ab', '03abc9e674a0dc3eebe223c196e336c7', '2015-09-14 08:35:10'),
('9c5532dc0a660c8d742e4854b5640323', '03abc9e674a0dc3eebe223c196e336c7', 'c8501a58dde52c15ac3ac56fbe669603', '2015-09-14 08:35:14'),
('9c5532dc0a660c8d742e4854b5640323', 'c8501a58dde52c15ac3ac56fbe669603', '03abc9e674a0dc3eebe223c196e336c7', '2015-09-14 08:35:14'),
('495c34e12ac45ec2d3f34b7c99527a01', '03abc9e674a0dc3eebe223c196e336c7', '4a91033bfe52de0aedecd767ee4075c5', '2015-09-14 08:35:16'),
('495c34e12ac45ec2d3f34b7c99527a01', '4a91033bfe52de0aedecd767ee4075c5', '03abc9e674a0dc3eebe223c196e336c7', '2015-09-14 08:35:16'),
('220a65c7146edf0fd6ef356eb645f8e5', '03abc9e674a0dc3eebe223c196e336c7', 'ebfa66a6dbfd21413d1035db2ca987a6', '2015-09-14 08:35:20'),
('220a65c7146edf0fd6ef356eb645f8e5', 'ebfa66a6dbfd21413d1035db2ca987a6', '03abc9e674a0dc3eebe223c196e336c7', '2015-09-14 08:35:20'),
('c027a2b9d11c1157a48d6d9bc725bdbb', '4b919c813881e8807e3e2af05113b719', '03abc9e674a0dc3eebe223c196e336c7', '2015-09-14 08:46:11'),
('c027a2b9d11c1157a48d6d9bc725bdbb', '03abc9e674a0dc3eebe223c196e336c7', '4b919c813881e8807e3e2af05113b719', '2015-09-14 08:46:11');

-- --------------------------------------------------------

--
-- Table structure for table `user_learning`
--

CREATE TABLE IF NOT EXISTS `user_learning` (
  `kd` varchar(50) NOT NULL,
  `kd_user` varchar(50) NOT NULL,
  `kd_guru_mapel` varchar(50) NOT NULL,
  `ket` varchar(255) NOT NULL,
  `postdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_learning`
--

INSERT INTO `user_learning` (`kd`, `kd_user`, `kd_guru_mapel`, `ket`, `postdate`) VALUES
('73a51b67491025bdbe070101ba1b3889', 'c8501a58dde52c15ac3ac56fbe669603', '', 'E-Learning', '2015-09-13 13:33:06'),
('b567b255140c347ddbf6145d5925215c', 'c8501a58dde52c15ac3ac56fbe669603', 'b525337a50123645bf9eba0adf71a4c4', 'Bahasa Daerah [Guru : Alicia Silverstone]', '2015-09-13 13:33:09'),
('cc9040b1e478ef625a5f6ec37ce4a1c6', 'c8501a58dde52c15ac3ac56fbe669603', '', 'E-Learning', '2015-09-13 13:33:11'),
('fd22f1bd38ab440917df2ed171542d11', 'c8501a58dde52c15ac3ac56fbe669603', '09f3a92ebf5e60c87e0df1c1f771876b', 'Elektronika [Guru : Monica Belluci]', '2015-09-13 13:33:14'),
('13e3ef79fefda1efd44ab84d72ced228', 'c8501a58dde52c15ac3ac56fbe669603', '09f3a92ebf5e60c87e0df1c1f771876b', 'Elektronika [Guru : Monica Belluci] --> News', '2015-09-13 13:33:17'),
('565a566179fe11e465310957bfc7bd44', 'c8501a58dde52c15ac3ac56fbe669603', '09f3a92ebf5e60c87e0df1c1f771876b', 'Elektronika [Guru : Monica Belluci] --> News', '2015-09-13 13:33:20'),
('418a9d4e729554afa0e5d2a3246d567d', 'c8501a58dde52c15ac3ac56fbe669603', '09f3a92ebf5e60c87e0df1c1f771876b', 'Elektronika [Guru : Monica Belluci] --> Soal', '2015-09-13 13:33:24'),
('dfa16811ee6ad6dabf022b3fd9aac877', 'c8501a58dde52c15ac3ac56fbe669603', '09f3a92ebf5e60c87e0df1c1f771876b', 'Elektronika [Guru : Monica Belluci] --> Soal', '2015-09-13 13:33:26'),
('87aec3e6770da9364a7646159a2c1580', 'c8501a58dde52c15ac3ac56fbe669603', '09f3a92ebf5e60c87e0df1c1f771876b', 'Elektronika [Guru : Monica Belluci] --> Ujian Selesai', '2015-09-13 13:33:36'),
('fa9f8080a8325c8638a2b23506e1bdc7', 'c8501a58dde52c15ac3ac56fbe669603', '09f3a92ebf5e60c87e0df1c1f771876b', 'Elektronika [Guru : Monica Belluci] --> Ujian Selesai', '2015-09-13 13:34:04'),
('c74f9e0d9518e3faeef010c737d0d22a', 'c8501a58dde52c15ac3ac56fbe669603', '', 'E-Learning', '2015-09-13 13:34:11'),
('748c2e1e6e65285ef941185d10e7e8a6', 'c8501a58dde52c15ac3ac56fbe669603', '', 'E-Learning', '2015-09-13 13:34:54'),
('09d2203f819b6efed4a4eee6c16b36a4', '4b919c813881e8807e3e2af05113b719', '', 'E-Learning', '2015-09-14 10:11:21'),
('f0682d53a6000d41dfb04989b677a0a0', '4b919c813881e8807e3e2af05113b719', '96a09b63919e2421f5241f83f0f78f93', 'xyz [Guru : 1234567]', '2015-09-14 10:11:29'),
('e5e5aa89e42cfb160637d243ac0af765', '4b919c813881e8807e3e2af05113b719', '96a09b63919e2421f5241f83f0f78f93', 'xyz [Guru : 1234567] --> Soal', '2015-09-14 10:11:31'),
('f6dc4c4126765ae5a9d66775d7d99e2c', '4b919c813881e8807e3e2af05113b719', '96a09b63919e2421f5241f83f0f78f93', 'xyz [Guru : 1234567] --> ChatRoom', '2015-09-14 10:11:32'),
('9ea2d3470f749fb69d003b1f7e1b1a14', '4b919c813881e8807e3e2af05113b719', '96a09b63919e2421f5241f83f0f78f93', 'xyz [Guru : 1234567] --> Tanya', '2015-09-14 10:11:34'),
('8c3ecf1d55d313eead0f31eb01c94d4e', '4b919c813881e8807e3e2af05113b719', '96a09b63919e2421f5241f83f0f78f93', 'xyz [Guru : 1234567] --> News', '2015-09-14 10:11:36'),
('7a332c1a7a758b7a1702b15ba46a6b0b', '4b919c813881e8807e3e2af05113b719', '96a09b63919e2421f5241f83f0f78f93', 'xyz [Guru : 1234567] --> Artikel', '2015-09-14 10:11:38'),
('dac2dbe82d003a14af8fae262e6aa124', '4b919c813881e8807e3e2af05113b719', '96a09b63919e2421f5241f83f0f78f93', 'xyz [Guru : 1234567] --> File Materi', '2015-09-14 10:11:38'),
('66a091e4efd7fd8f8bf68aae4672bd07', '4b919c813881e8807e3e2af05113b719', '96a09b63919e2421f5241f83f0f78f93', 'xyz [Guru : 1234567] --> link', '2015-09-14 10:11:39'),
('6ed06b06d65747db4df8cb528110fbac', '4b919c813881e8807e3e2af05113b719', '96a09b63919e2421f5241f83f0f78f93', 'xyz [Guru : 1234567] --> Kalender', '2015-09-14 10:11:40'),
('aea49b51c49046dce1c6957a85247cb0', '4b919c813881e8807e3e2af05113b719', '96a09b63919e2421f5241f83f0f78f93', 'xyz [Guru : 1234567] --> Forum', '2015-09-14 10:11:41'),
('cc68688bc3bfd22805b899e574289426', '4b919c813881e8807e3e2af05113b719', '96a09b63919e2421f5241f83f0f78f93', 'xyz [Guru : 1234567] --> Soal', '2015-09-14 10:11:43'),
('605d2253ee9a092e26408a6156837da8', '4b919c813881e8807e3e2af05113b719', '96a09b63919e2421f5241f83f0f78f93', 'xyz [Guru : 1234567] --> ChatRoom', '2015-09-14 10:11:44'),
('6800e477bb5e017b7d015127f1807f7a', '4b919c813881e8807e3e2af05113b719', '96a09b63919e2421f5241f83f0f78f93', 'xyz [Guru : 1234567] --> Tanya', '2015-09-14 10:11:49'),
('8ed879cccc7790853e7822e1925c2254', '4b919c813881e8807e3e2af05113b719', '96a09b63919e2421f5241f83f0f78f93', 'xyz [Guru : 1234567] --> ChatRoom', '2015-09-14 10:11:50'),
('157271f8246f88078fb89a20984fb7c0', '4b919c813881e8807e3e2af05113b719', '96a09b63919e2421f5241f83f0f78f93', 'xyz [Guru : 1234567] --> ChatRoom', '2015-09-14 10:12:45'),
('2719fddadcdca4e1fd9739dbe864c9df', '4b919c813881e8807e3e2af05113b719', '', 'E-Learning', '2015-09-14 10:12:50'),
('bf800186a81ae6c714c29b567a82407e', '4b919c813881e8807e3e2af05113b719', 'b525337a50123645bf9eba0adf71a4c4', 'Bahasa Daerah [Guru : Alicia Silverstone]', '2015-09-14 10:12:52'),
('915d2d42748db4391f2554a0b317f671', '4b919c813881e8807e3e2af05113b719', 'b525337a50123645bf9eba0adf71a4c4', 'Bahasa Daerah [Guru : Alicia Silverstone] --> Soal', '2015-09-14 10:12:55'),
('118ec732b23bf742656795bf1770521d', '4b919c813881e8807e3e2af05113b719', 'b525337a50123645bf9eba0adf71a4c4', 'Bahasa Daerah [Guru : Alicia Silverstone]', '2015-09-14 10:12:58'),
('cff44896d79231c20680505b56e679a5', '4b919c813881e8807e3e2af05113b719', 'b525337a50123645bf9eba0adf71a4c4', 'Bahasa Daerah [Guru : Alicia Silverstone] --> File Materi', '2015-09-14 10:13:00'),
('938fc31296b118f2b308b4788d2bedaf', '4b919c813881e8807e3e2af05113b719', '', 'E-Learning', '2015-09-14 10:13:02');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
