-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2022 at 09:53 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpenta`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_keyword` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_slug`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 'Product', 'product', 'product', 'product cat, penta prima, bina adidaya, pabrik cat', ''),
(2, 'Project', 'project', 'Project', 'Project, penta prima, bina adidaya, pabrik cat, youtube', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category_photo`
--

CREATE TABLE `tbl_category_photo` (
  `p_category_id` int(11) NOT NULL,
  `p_category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_category_photo`
--

INSERT INTO `tbl_category_photo` (`p_category_id`, `p_category_name`, `status`) VALUES
(1, 'Decorative', 'Active'),
(2, 'Marine', 'Active'),
(3, 'Protective', 'Active'),
(4, 'Synthetic', 'Active'),
(5, 'Industrial', 'Active'),
(6, 'Lain-lain', 'Active'),
(7, 'Produk Terbaru', 'Active'),
(8, 'Kegiatan', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `p_category_id` int(11) NOT NULL,
  `p_category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`p_category_id`, `p_category_name`, `status`) VALUES
(1, 'Decorative Paint', 'Active'),
(2, 'Car Refinish', 'Active'),
(3, 'Synthetic', 'Active'),
(4, 'Lain-lain', 'Active'),
(5, 'New Product', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category_video`
--

CREATE TABLE `tbl_category_video` (
  `v_category_id` int(11) NOT NULL,
  `v_category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_category_video`
--

INSERT INTO `tbl_category_video` (`v_category_id`, `v_category_name`, `status`) VALUES
(1, 'Decorative Paint', 'Active'),
(2, 'Car Refinish', 'Active'),
(3, 'Synthetic', 'Active'),
(4, 'Lain-lain', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id` int(11) NOT NULL,
  `code_body` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `code_main` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`id`, `code_body`, `code_main`) VALUES
(1, '<div id=\"fb-root\"></div>\r\n<script async defer crossorigin=\"anonymous\" src=\"https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v13.0\" nonce=\"kgmwd5wi\"></script>', '<div class=\"fb-comments\" data-href=\"https://developers.facebook.com/docs/plugins/comments#configurator\" data-numposts=\"5\"></div>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_designation`
--

CREATE TABLE `tbl_designation` (
  `designation_id` int(11) NOT NULL,
  `designation_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_designation`
--

INSERT INTO `tbl_designation` (`designation_id`, `designation_name`) VALUES
(6, 'Cabang Surabaya'),
(7, 'Cabang bandung');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `faq_id` int(11) NOT NULL,
  `faq_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `faq_content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `faq_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_faq`
--

INSERT INTO `tbl_faq` (`faq_id`, `faq_title`, `faq_content`, `photo`, `faq_category_id`) VALUES
(1, 'Bagaimana cara mengatasi retak – retak (Cracking) pada tembok ?', '<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<h2 style=\"font-style:italic\"><span style=\"font-size:14px\"><span style=\"color:#515756\"><span style=\"background-color:#ffffff\">Jawaban&nbsp;:</span></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#515756\"><span style=\"background-color:#ffffff\">Retak &ndash; retak tersebut terjadi karena pemisahan lapisan film mula-mula yang muncul hanya seperti rambut, tapi lama -lama bisa makin besar dan menyebabkan terjadinya pengelupasan.</span></span></span></p>\r\n\r\n<p style=\"margin-left:28px; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#515756\"><span style=\"background-color:#ffffff\"><strong>Terjadinya retak &ndash; retak disebabkan oleh :</strong></span></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\">Lapisan cat yang pertama belum benar-benar kering sudah ditimpa lapisan berikutnya.</span></li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\">Pengencer terlalu banyak.</span></li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\">Kondisi substrate ketika cat diaplikasikan terlalu dingin atau panas.</span></li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\">Kondisi udara saat proses pengecatan terlalu berangin sehingga bagian permukaan terlalu cepat kering.</span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:47px; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#515756\"><span style=\"background-color:#ffffff\"><strong>Solusinya adalah :</strong></span></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\">Jika yang terjadi hanya peretakan tanpa ada indikasi pengelupasan cat, maka kondisi ini dapat diperbaiki dengan menutup retakan-retakan rambut tersebut dengan plamur yang berkualitas baik dan direkomendasikan untuk exterior hanya pada daerah-daerah retakan saja. Setelah kering berikan 1 lapis cat dasar atau primer, disusul dengan cat akhir.</span></li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\">Jika pengelupasan cat terjadi sampai ke dasar substrate, keroklah semua lapisan bisa dengan menggunakan kape / amplas. Setelah itu lakukan prosedur pengecatan ulang dengan benar.</span></li>\r\n</ul>\r\n', 'faq1.jpg', 1),
(2, 'Bagaimana cara mengatasi pengapuran (Chalking) pada tembok ?', '<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#515756\"><span style=\"background-color:#ffffff\">Jawaban&nbsp;:</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#515756\"><span style=\"background-color:#ffffff\">Munculnya serbuk-serbuk halus pada permukaan lapisan cat yang membuat warna cat pudar. Pengapuran bisa dilihat secara visual atau dapat kita rasakan dengan jelas saat tangan kita diusapkan ke permukaan dinding.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#515756\"><span style=\"background-color:#ffffff\"><strong>Terjadinya pengapuran (Chalking) disebabkan oleh :</strong></span></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\">Menggunakan cat kelas interior yang kandungan powdernya tinggi untuk penggunaan exterior.</span></li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\">Alkali menyerang lapisan film cat.</span></li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\">Kondisi cuaca yang merusak lapisan film cat.</span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#515756\"><span style=\"background-color:#ffffff\"><strong>Solusinya adalah :</strong></span></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\">Bersihkan kapur yang terbentuk di permukaan dinding tersebut dengan sikat, kemudian bilas dengan air sampai bersih. Setelah kering cek kembali dan pastikan bahwa serbuk kapur sudah benar-benar hilang.</span></li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\">Lapisi dinding dengan cat dasar dan cat akhir yang kualitas ketahanan cuacanya lebih baik.</span></li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\">Jika gejala-gejala pengapuran sudah tidak ada sementara kondisi cat lama masih baik, maka pemberian cat dasar boleh tidak dilakukan.</span></li>\r\n</ul>\r\n', '', 1),
(3, 'Question Title 3', '<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n', '', 2),
(4, 'Question Title 4', '<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n', '', 2),
(5, 'Question Title 5', '<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n', '', 2),
(6, 'Question Title 6', '<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n', '', 3),
(7, 'Question Title 7', '<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n', '', 3),
(8, 'Question Title 8', '<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq_category`
--

CREATE TABLE `tbl_faq_category` (
  `faq_category_id` int(11) NOT NULL,
  `faq_category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_faq_category`
--

INSERT INTO `tbl_faq_category` (`faq_category_id`, `faq_category_name`) VALUES
(1, 'Pertanyaan Umum'),
(2, 'Cara Pemakaian'),
(3, 'Teknik pemakaian');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_file`
--

CREATE TABLE `tbl_file` (
  `file_id` int(11) NOT NULL,
  `file_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_file`
--

INSERT INTO `tbl_file` (`file_id`, `file_title`, `file_name`) VALUES
(1, 'Petunjuk penggunaan decorative paint', 'file-1.pdf'),
(2, 'sertifikat ISO 90001:2015', 'file-2.jpg'),
(3, 'Sertifikat Green Label', 'file-3.jpg'),
(4, 'Sertifikat SNI', 'file-4.jpg'),
(5, 'Produksi grinding', 'file-5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `id` int(11) NOT NULL,
  `name` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`id`, `name`, `value`) VALUES
(1, 'ABOUT_US', 'About Us'),
(2, 'LATEST_NEWS', 'Latest News'),
(3, 'POPULAR_NEWS', 'Popular News'),
(4, 'CONTACT_US', 'Contact Us'),
(5, 'CONTACT_FORM', 'Contact Form'),
(6, 'FULL_NAME', 'Full Name'),
(7, 'EMAIL_ADDRESS', 'Email Address'),
(8, 'PHONE_NUMBER', 'Phone Number'),
(9, 'MESSAGE', 'Message'),
(10, 'SEND_MESSAGE', 'Send Message'),
(11, 'CATEGORY', 'Category'),
(12, 'POSTED_ON', 'Posted on'),
(13, 'READ_MORE', 'Read More'),
(14, 'CATEGORIES', 'Categories'),
(15, 'SEARCH', 'Search'),
(16, 'SEARCH_BY_COLON', 'Search By:'),
(17, 'DATE', 'Date'),
(18, 'SHARE_THIS', 'Share This'),
(19, 'COMMENTS', 'Comments'),
(20, 'ENTER_YOUR_EMAIL', 'Enter Your Email'),
(21, 'SUBMIT', 'Submit'),
(22, 'CATEGORY_COLON', 'Category:'),
(23, 'SERVICE_COLON', 'Service:'),
(24, 'SERVICES', 'Services'),
(26, 'EMAIL_VALID_CHECK', 'Email Address must be valid'),
(27, 'SUBSCRIPTION_SUCCESS_MESSAGE', 'Please check your email and confirm your subscription.'),
(28, 'FULL_NAME_EMPTY_CHECK', 'Name can not be empty'),
(29, 'PHONE_EMPTY_CHECK', 'Phone Number can not be empty'),
(30, 'EMAIL_EMPTY_CHECK', 'Email Address can not be empty'),
(31, 'COMMENT_EMPTY_CHECK', 'Comment can not be empty'),
(33, 'ADDRESS', 'Address'),
(34, 'WEBSITE', 'Website'),
(35, 'ABOUT', 'About'),
(36, 'CONTACT', 'Contact'),
(37, 'SOCIAL_MEDIA_HEADLINE', 'Social Media Activities'),
(38, 'SEE_FULL_PROFILE', 'See Full Profile'),
(39, 'TEAM_MEMBER_COLON', 'Team Member:'),
(40, 'NEWS_EMPTY_CHECK', 'Sorry! No News is found.'),
(41, 'PREVIOUS', 'Previous'),
(42, 'NEXT', 'Next'),
(43, 'EMAIL_EXIST_CHECK', 'Email Address already exists');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `menu_id` int(11) NOT NULL,
  `menu_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page_id` int(11) NOT NULL,
  `menu_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `menu_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `menu_order` int(11) NOT NULL,
  `menu_parent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`menu_id`, `menu_type`, `page_id`, `menu_name`, `menu_url`, `menu_order`, `menu_parent`) VALUES
(1, 'Other', 0, 'Beranda', 'http://localhost/webpenta', 1, 0),
(12, 'Other', 0, 'Profile', 'http://localhost/webpenta/page/profile', 2, 0),
(13, 'Page', 1, '', '', 1, 12),
(14, 'Page', 10, '', '', 2, 12),
(15, 'Other', 0, 'Gallery', '#', 4, 0),
(16, 'Page', 5, '', '', 1, 15),
(17, 'Page', 6, '', '', 2, 15),
(18, 'Page', 7, '', '', 6, 0),
(20, 'Page', 2, '', '', 7, 0),
(28, 'Page', 12, '', '', 5, 0),
(29, 'Page', 14, '', '', 2, 32),
(30, 'Other', 0, 'Retail', '#', 3, 0),
(31, 'Page', 9, '', '', 1, 30),
(32, 'Page', 11, '', '', 2, 0),
(33, 'Page', 11, '', '', 1, 32);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `news_id` int(11) NOT NULL,
  `news_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `news_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `news_content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `news_content_short` text COLLATE utf8_unicode_ci NOT NULL,
  `news_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `publisher` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total_view` int(11) NOT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_keyword` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`news_id`, `news_title`, `news_slug`, `news_content`, `news_content_short`, `news_date`, `photo`, `category_id`, `publisher`, `total_view`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(12, 'Product Decorative Paint', 'product-decorative', '<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ducimus quis, nobis consequuntur ullam ipsa, libero repudiandae impedit atque aspernatur delectus neque suscipit facilis assumenda deleniti nulla cumque excepturi esse distinctio!</p>\r\n', 'Product Decorative Paint', '23-03-2022', 'news-12.jpg', 1, 'admin', 10, 'Product', 'penta prima, bina adidaya, pabrik cat, decorative paint', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `page_id` int(11) NOT NULL,
  `page_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page_content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `page_layout` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `banner` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_keyword` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`page_id`, `page_name`, `page_slug`, `page_content`, `page_layout`, `banner`, `status`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 'Profile', 'profile', '<p style=\"text-align:justify\"><span style=\"font-size:13px\"><span style=\"color:#515756\"><em><span style=\"background-color:#ffffff\"><span style=\"font-size:12pt\">PT. Bina Adidaya didirikan sejak Januari 1990 dan mendapat dukungan tehnik dari beberapa perusahaan besar internasional yang sudah sangat ahli dibidangnya masing-masing. Namun begitu kami masih tetap membuka diri untuk mendapatkan teknologi yang lebih baru terutama untuk produk-produk yang sudah ada maupun produk-produk yang baru. Manajemen PT. Bina Adidaya memiliki komitmen untuk memberikan kepuasan bagi para pelanggannya antara lain dengan cara memasok produk yang berkualitas dan service yang memuaskan. Oleh karena tujuan tersebut PT. Bina Adidaya sudah memiliki ISO yang telah diterima dan disertifikasi oleh Lloyd&#39;s Register Quality Assurance Limited. Sertifikat ISO 9001-2000 diperoleh pada bulan Mei tahun 2002 dan telah diperbaharui dengan ISO 9001-2015</span></span></em></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/webpenta/assets/uploads/file-2.jpg\" style=\"float:left; height:288px; width:200px\" /></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img alt=\"\" src=\"http://localhost/webpenta/assets/uploads/file-3.jpg\" style=\"height:300px; width:200px\" />&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img alt=\"\" src=\"http://localhost/webpenta/assets/uploads/file-4.jpg\" style=\"height:294px; width:200px\" /></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:13px\"><span style=\"color:#515756\"><em><span style=\"background-color:#ffffff\"><strong><u><span style=\"font-size:12pt\">Produksi</span></u></strong><br />\r\n<span style=\"font-size:12pt\">Dengan fasilitas produksi yang lengkap, kami mampu melakukan pengembangan produk baru yang lebih baik dengan lebih cepat untuk pasar yang berbeda di seluruh pelosok Indonesia. Perusahaan telah mendedikasikan diri untuk melayani klien dengan produk yang inovatif dan berkualitas tinggi sesuai tuntutan jaman. Untuk dapat terus bersaing di pasar bebas, kami secara terus menerus berusaha untuk lebih efisien dalam memperkenalkan seni teknologi, produksi yang modern serta fasilitas pengetesan.</span></span></em></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/webpenta/assets/uploads/file-5.jpg\" style=\"float:left; height:96px; width:200px\" /></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:13px\"><span style=\"color:#515756\"><em><span style=\"background-color:#ffffff\"><strong><u><span style=\"font-size:12pt\">Penelitian dan Pengembangan</span></u></strong><br />\r\n<span style=\"font-size:12pt\">Fasilitas untuk penelitian dan pengembangan, staff ahli yang berpengalaman, Quality Control yang terus menerus, serta visi inovatif yang memungkinkan perusahaan dalam merespon secara optimal terhadap kesempatan pasar baru. Kami menjawab segala kebutuhan klien serta tuntutan barang dan jasa yang berkualitas. Terus menerus berinovasi adalah harapan kami di milenium ini.</span></span></em></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:13px\"><span style=\"color:#515756\"><em><span style=\"background-color:#ffffff\"><strong><u><span style=\"font-size:12pt\">Departemen Personalia</span></u></strong><br />\r\n<span style=\"font-size:12pt\">Dengan terus menerus memberikan pelatihan kepada seluruh staff, kami memiliki tenaga kerja yang ideal untuk menyongsong tantangan baru. Sebagai organisasi yang tangguh dan dapat memberikan layanan yang fleksibel, kami mampu memuaskan kebutuhan pelanggan. Tujuan kami adalah untuk melayani klien kami dengan tingkat keahlian, kepercayaan dan kepuasaan yang tinggi.</span></span></em></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:13px\"><span style=\"color:#515756\"><em><span style=\"background-color:#ffffff\"><strong><u><span style=\"font-size:12pt\">Distribusi</span></u></strong><br />\r\n<span style=\"font-size:12pt\">Produk kami didistribusikan secara nasional melalui penjualan langsung dan kantor perwakilan di Surabaya, Semarang, Bandung, Bali dan beberapa agen yang ditunjuk di berbagai kota besar di Indonesia. Dengan armada khusus kami menjamin pengiriman produk sampai ke tujuan tepat waktu.</span></span></em></span></span></p>\r\n', 'Full Width Page Layout', 'page-banner-1.png', 'Active', 'Profile', 'penta prima, bina adidaya, cat, pabrik cat', ''),
(2, 'Contact Us', 'contact-us', '', 'Contact Us Page Layout', 'page-banner-2.png', 'Active', 'Contact Us Page', '', ''),
(5, 'Photo Galleri', 'photo-gallery', '', 'Photo Gallery Page Layout', 'page-banner-5.jpg', 'Active', 'Gallery Photo Page', 'penta prima, bina adidaya, pabrik cat, decorative, synthetic, photo', ''),
(6, 'Video Gallery', 'video-gallery', '', 'Video Gallery Page Layout', 'page-banner-6.jpg', 'Active', 'Video Gallery Page', 'penta prima, bina adidaya, pabrik cat, decorative, synthetic, video', ''),
(7, 'FAQ', 'faq', '', 'FAQ Page Layout', 'page-banner-7.jpg', 'Active', 'FAQ Page', '', ''),
(9, 'Toko', 'toko', '', 'Team Member Page Layout', 'page-banner-9.jpg', 'Active', 'Toko', 'penta prima, bina adidaya, toko cat', ''),
(10, 'Standarisasi', 'standarisasi', '', 'Blog Page Layout', 'page-banner-10.jpg', 'Active', 'Standarisasi Page', 'penta prima, bina adidaya, pabrik cat', ''),
(11, 'Product', 'product', '', 'Product Page Layout', 'page-banner-11.jpg', 'Active', 'product', 'penta prima, bina adidaya, pabrik cat, produk cat, cat tembek, cat mobil, cat industri', ''),
(12, 'News', 'news', '', 'Blog Page Layout', 'page-banner-12.jpg', 'Active', 'news', 'penta prima, pt bina adidaya, pabrik cat, information, news', ''),
(13, 'Project', 'project', '', 'Full Width Page Layout', 'page-banner-13.jpg', 'Active', '', '', ''),
(14, 'Virtual Painter', 'virtual-painter', '<p>Penta Prima | Virtual Painter</p>\r\n\r\n<div style=\"float:left\">\r\n<h3>&nbsp;</h3>\r\n\r\n<div id=\"title\">&nbsp;</div>\r\n\r\n<div class=\"podbar\" id=\"rumah\" style=\"float:left\">\r\n<div class=\"painted_object\"><img src=\"../Penta%20Prima%20_%20Virtual%20Painter_files/room.png\" /></div>\r\n\r\n<div class=\"painted_object\"><img id=\"pic_lantai\" src=\"../Penta%20Prima%20_%20Virtual%20Painter_files/lantai.htm\" /></div>\r\n\r\n<div class=\"painted_object\"><img id=\"pic_kanan\" src=\"../Penta%20Prima%20_%20Virtual%20Painter_files/dinding_kanan.png\" /></div>\r\n\r\n<div class=\"painted_object\"><img id=\"pic_atap\" src=\"../Penta%20Prima%20_%20Virtual%20Painter_files/atap.png\" /></div>\r\n\r\n<div class=\"painted_object\"><img id=\"pic_kiri\" src=\"../Penta Prima _ Virtual Painter_files/dinding_kiri.png \" style=\"height:520px; width:480px\" /></div>\r\n\r\n<div style=\"margin-top:400px\">\r\n<h2>&nbsp;</h2>\r\n</div>\r\n</div>\r\n\r\n<div style=\"bottom:0px; float:right; left:563px; position:absolute; top:9px; z-index:1\">\r\n<div style=\"background-image:url(\'../../res/images/warning-icon.png\'); background-position:left center; background-repeat:no-repeat; color:#faf7f2; margin-bottom:15px\">&nbsp; &nbsp; &nbsp;\r\n<div style=\"float:left\">Simulasi Warna - Kamar Tidur</div>\r\n\r\n<p>Perhatian!</p>\r\n\r\n<p>Warna-warna pada layar monitor Anda dapat berbeda dengan warna aslinya dikarenakan oleh perbedaan konfigurasi monitor masing-masing komputer, serta perbedaan spektrum gelombang warna pada layar monitor dan kartu warna aslinya</p>\r\n\r\n<p>Warna-warna tersebut sebaiknya tidak dijadikan acuan untuk warna sebenarnya. Untuk mendapatkan kartu warna asli/fisik, silakan kunjungi toko bangunan / toko cat yang menjual produk kami.</p>\r\n</div>\r\n<!-- ######### Pilih Warna Kiri ############ -->\r\n\r\n<div class=\"color_selector\">\r\n<div class=\"nomor_obyek style1 style2 style4\">KARTU WARNA PENTALEX</div>\r\n\r\n<div>\r\n<div id=\"result_kiri\">\r\n<div>\r\n<table cellpadding=\"0\" cellspacing=\"0\" style=\"width:400px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<div id=\"content_color\">\r\n			<div class=\"preview_color\" id=\"focus_color_kiri\">&nbsp;</div>\r\n\r\n			<div class=\"font16\" id=\"nama_color_kiri\">&nbsp;</div>\r\n\r\n			<div id=\"kode_color_kiri\">&nbsp;</div>\r\n			</div>\r\n			</td>\r\n			<td>\r\n			<div style=\"padding-bottom:10px\">&nbsp;\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n				<tbody>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>&nbsp;\r\n						<div class=\"btn_cari button_orange\" id=\"btn_cari_kiri\">Cari</div>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div id=\"search_result\">&nbsp;</div>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<div class=\"color_container\">\r\n<div class=\"color_select\" style=\"background-color:#faf7f2\" title=\"Clasic white (P 309)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#fffedf\" title=\"Lily white (P 306)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#fff6d9\" title=\"Barley white (P 305)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#fae8d0\" title=\"Rose white (P304)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#e9d8a4\" title=\"Lemon Drop (P 350)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#c6c9f2\" title=\"Igloo (50016)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#cdd1dd\" title=\"Light Grey (P 369)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#b7ab9b\" title=\"Magnolia (P 312)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#838383\" title=\"Mist Grey (P 321)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#4b3a44\" title=\"Chestnut Brown (P 348)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#f4f9fd\" title=\"Metro White (P 300)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#a4b5af\" title=\"Crystal Blue (P 352)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#e8d7c7\" title=\"Orchid white (P 303)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#e7e6d1\" title=\"Bluebell White (P 301)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#354581\" title=\"Benton Harbor (54004)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#ffdbb9\" title=\"Peach (31000)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#c6a18e\" title=\"Peach Pink (P 324)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#c96357\" title=\"Coral Pink (P 310)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#a33929\" title=\"Poppy (P 322)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#792622\" title=\"Coral Red (P 313)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#fde9ac\" title=\"Light House Point (20001)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#f9dfa4\" title=\"Golden Apricot (11007)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#e88c63\" title=\"Istambul (33004)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#d35f2c\" title=\"Orange Yellow (34002)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#f3dd49\" title=\"Canary Yellow (25002)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#85bc95\" title=\"Fresh Green (P 320)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#66ad9b\" title=\"Turquoise (P 377)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#2c8394\" title=\"Aqua Blue (64001)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#195182\" title=\"Romantic Blue (54003)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#17231f\" title=\"Forest Green (68000)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#a1babf\" title=\"Sky Blue (P 327)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#9bc3cb\" title=\"Ice Blue (P 370)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#6c7b80\" title=\"Lido (P 374)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#6c3d5d\" title=\"Antique (P 47001)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#fcf9e6\" title=\"Brilliant White (P 329)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#e8d0e6\" title=\"Rose Garden (40011)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#f9cebe\" title=\"Peach Dust (P 353)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#e48768\" title=\"Wild Rose (42001)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#e06440\" title=\"Cinnamon Spice (44004)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#c6240d\" title=\"Sunrise (46005)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#fff3d9\" title=\"Candy Yellow (30001)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#fff2cd\" title=\"Currier Cream (10012)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#f4e8b4\" title=\"Apple White (P 302)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#e3d284\" title=\"Antique White (P 332)\">&nbsp;</div>\r\n\r\n<div class=\"color_select\" style=\"background-color:#c2a557\" title=\"Cream (P 382)\">&nbsp;</div>\r\n</div>\r\n<!--		</div>  --></div>\r\n</div>\r\n</div>\r\n<!--	<div style=\"background-color:#FFFFCC; padding:10px 10px 10px 10px; width:452px; font:normal 9pt arial;\">\r\n			<label style=\"color:white; font-size:14px;\">\r\n			<div align=\"center\"><img src=\"../Penta Prima _ Virtual Painter_files/Paragon_Premium.png\" width=\"200\" height=\"160\" /></div>\r\n			</label>\r\n			<p><strong>PENTALEX (7700 - SERI)<br />\r\n            </strong><em>Acrylic Emulsion Paint for Interior & Exterior</em><br />\r\n            <br />\r\nCat tembok yang terbuat dari bahan dasar resin acrylic dasar air,   pigment, dan additive-additive pilihan, tidak berbau, mudah diaplikasi,   dan cepat kering. Lapisan keringnya tidak mudah retak, daya lekatnya   sangat baik dan tidak mudah luntur bila terkena air, menjadikan cat ini   bisa digunakan untuk pelindung permukaan dinding bagian dalam maupun   luar ruangan. </p>\r\n	  </div>--></div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n', 'Full Width Page Layout', 'page-banner-14.jpg', 'Active', 'virtual painter', 'penta prima, bina adidaya, pabrik cat, virtual painter', ''),
(15, 'Retail', 'retail', '', 'Full Width Page Layout', 'page-banner-15.jpg', 'Active', 'Product Penta Prima', 'penta prima, pt bina adidaya, pabrik cat, decorative,car refinish, synthetic, produk baru, protective paint, floor paint, cat tembok', ''),
(16, 'Decorative Paint', 'decorative-paint', '', 'Full Width Page Layout', 'page-banner-16.jpg', 'Active', 'decorative paint', 'cat tembok, cat genteng, penta prima, pt bina adidaya, decorative paint, pabrik cat', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_partner`
--

CREATE TABLE `tbl_partner` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_partner`
--

INSERT INTO `tbl_partner` (`id`, `name`, `url`, `photo`) VALUES
(8, 'Penta Proof', 'https://www.youtube.com/watch?v=-46ckb7A3nQ', 'partner-8.jpg'),
(9, 'Decorative Paint', 'http://localhost/webpenta/assets/uploads/file-1.pdf', 'partner-9.jpg'),
(10, 'Marine Paint', '', 'partner-10.jpg'),
(11, 'Protective paint', '', 'partner-11.jpg'),
(12, 'Stone Varnish', '', 'partner-12.jpg'),
(13, 'Industrial Paint', '', 'partner-13.jpg'),
(14, 'Cat Mobil', '', 'partner-14.jpg'),
(15, 'Cat Tembok', '', 'partner-15.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_photo`
--

CREATE TABLE `tbl_photo` (
  `photo_id` int(11) NOT NULL,
  `photo_caption` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `p_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_photo`
--

INSERT INTO `tbl_photo` (`photo_id`, `photo_caption`, `photo_name`, `p_category_id`) VALUES
(20, 'Decorative Paint', 'photo-20.jpg', 1),
(21, 'Marine Paint', 'photo-21.jpg', 2),
(22, 'Penta Oto', 'photo-22.jpg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_photo_product`
--

CREATE TABLE `tbl_photo_product` (
  `p_photo_id` int(11) NOT NULL,
  `product_caption` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `p_name_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_photo_product`
--

INSERT INTO `tbl_photo_product` (`p_photo_id`, `product_caption`, `photo_name`, `p_name_id`) VALUES
(23, 'Penta Proof 1 Kg', 'product-photo-23.jpg', 21);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL,
  `product_caption` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `p_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_caption`, `photo_name`, `p_category_id`) VALUES
(21, 'Penta Proof', 'product-23.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service`
--

CREATE TABLE `tbl_service` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `short_description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `banner` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_keyword` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_service`
--

INSERT INTO `tbl_service` (`id`, `name`, `slug`, `description`, `short_description`, `photo`, `banner`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(11, 'Pengecetan lapangan badminton oleh tim Penta Prima', 'pengecetan-lapangan-badminton-oleh-tim-penta-prima', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n', 'Lorem ipsum dolor sit amet', 'service-11.jpg', 'service-banner-11.jpg', 'Project', 'penta prima, bina adidaya, pabrik cat, project', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `favicon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `footer_about` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `footer_copyright` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `contact_address` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_fax` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_map_iframe` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `receive_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `receive_email_subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `receive_email_thank_you_message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `total_recent_news_footer` int(10) NOT NULL,
  `total_popular_news_footer` int(10) NOT NULL,
  `total_recent_news_sidebar` int(11) NOT NULL,
  `total_popular_news_sidebar` int(11) NOT NULL,
  `total_recent_news_home_page` int(11) NOT NULL,
  `meta_title_home` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `meta_keyword_home` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `meta_description_home` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `home_title_service` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `home_subtitle_service` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `home_status_service` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `home_title_team_member` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `home_subtitle_team_member` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `home_status_team_member` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `home_title_testimonial` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `home_subtitle_testimonial` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `home_status_testimonial` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `home_photo_testimonial` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `home_title_news` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `home_subtitle_news` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `home_status_news` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `home_title_partner` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `home_subtitle_partner` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `home_status_partner` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `mod_rewrite` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `newsletter_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `newsletter_text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `newsletter_photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `newsletter_status` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `banner_search` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `banner_category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `counter_1_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `counter_1_value` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `counter_2_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `counter_2_value` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `counter_3_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `counter_3_value` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `counter_4_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `counter_4_value` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `counter_photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `counter_status` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `logo`, `favicon`, `footer_about`, `footer_copyright`, `contact_address`, `contact_email`, `contact_phone`, `contact_fax`, `contact_map_iframe`, `receive_email`, `receive_email_subject`, `receive_email_thank_you_message`, `total_recent_news_footer`, `total_popular_news_footer`, `total_recent_news_sidebar`, `total_popular_news_sidebar`, `total_recent_news_home_page`, `meta_title_home`, `meta_keyword_home`, `meta_description_home`, `home_title_service`, `home_subtitle_service`, `home_status_service`, `home_title_team_member`, `home_subtitle_team_member`, `home_status_team_member`, `home_title_testimonial`, `home_subtitle_testimonial`, `home_status_testimonial`, `home_photo_testimonial`, `home_title_news`, `home_subtitle_news`, `home_status_news`, `home_title_partner`, `home_subtitle_partner`, `home_status_partner`, `mod_rewrite`, `newsletter_title`, `newsletter_text`, `newsletter_photo`, `newsletter_status`, `banner_search`, `banner_category`, `counter_1_title`, `counter_1_value`, `counter_2_title`, `counter_2_value`, `counter_3_title`, `counter_3_value`, `counter_4_title`, `counter_4_value`, `counter_photo`, `counter_status`, `color`) VALUES
(1, 'logo.png', 'favicon.jpg', '<p>Lorem ipsum dolor sit amet, omnis signiferumque in mei, mei ex enim concludaturque. Senserit salutandi euripidis no per, modus maiestatis scribentur est an.&nbsp;Ea suas pertinax has, solet officiis pericula cu pro, possit inermis qui ad. An mea tale perfecto sententiae, eos inani epicuri concludaturque ex.</p>\r\n', 'Copyright © 2022. All Rights Reserved.', 'Penta Prima, Jl. Boulevard Bar. Raya No.5, RW.5, Klp. Gading Bar., Kec. Klp. Gading, Kota Jkt Utara, Daerah Khusus Ibukota Jakarta 14240', 'sales@pentaprima.co.id', '123-456-7878', '123-456-7890', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.808032510161!2d106.89523851476888!3d-6.156459695542659!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f5390130e089%3A0x7edf8f2a19820b41!2sPenta%20Prima%2C%20Jl.%20Boulevard%20Bar.%20Raya%20No.5%2C%20RW.5%2C%20Klp.%20Gading%20Bar.%2C%20Kec.%20Klp.%20Gading%2C%20Kota%20Jkt%20Utara%2C%20Daerah%20Khusus%20Ibukota%20Jakarta%2014240!5e0!3m2!1sid!2sid!4v1648000971863!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'arifkurniawan.dev@gmail.com', 'Visitor Email Message', 'Thank you for sending email. We will contact you shortly.', 3, 3, 4, 4, 7, 'Penta Prima', 'business, insurance, finance, economics, construction, agency, agent, bina adidaya, penta prima, solusi warnaku, pabrik cat', 'Pabrik cat dengan main brand Penta Prima', 'Our Services', 'Check Out All Our Services', 'Show', 'Store Members', 'Product kami bisa di beli di toko-toko berikut', 'Show', 'Testimonial', 'Our Happy Clients Tell About Us', 'Hide', 'testimonial.png', 'Latest News', 'See All Our Updated and Latest News', 'Show', 'Our Content', 'All Our Content', 'Show', 'On', 'Newsletter', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid fugit expedita, iure ullam cum vero ex sint aperiam maxime.', 'newsletter.jpg', 'Hide', 'banner_search.jpg', 'banner_category.jpg', 'Kantor Perwakilan', '25', 'Toko', '150', 'Product', '250', 'Pabrik', '1', 'counter.png', 'Show', '9F0009');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `heading` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `button_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `button_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `photo`, `heading`, `content`, `button_text`, `button_url`, `position`, `status`) VALUES
(1, 'slider-1.jpg', 'Decorative Paint', 'Lorem ipsum dolor sit amet, ad vim indoctum maluisset. \r\nPosse philosophia id sed, qui ut saepe nonumes.', 'Read More', '#', 'Left', 'Active'),
(3, 'slider-3.jpg', '', '', '', '', 'Left', 'Active'),
(4, 'slider-4.jpg', '', '', '', '', 'Left', 'Active'),
(5, 'slider-5.jpg', '', '', '', '', 'Left', 'Active'),
(6, 'slider-6.jpg', '', '', '', '', 'Left', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `social_id` int(11) NOT NULL,
  `social_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `social_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `social_icon` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`social_id`, `social_name`, `social_url`, `social_icon`) VALUES
(1, 'Facebook', 'https://www.facebook.com/pentaprimaID', 'fa fa-facebook'),
(2, 'Twitter', '', 'fa fa-twitter'),
(3, 'LinkedIn', '', 'fa fa-linkedin'),
(4, 'Google Plus', '', 'fa fa-google-plus'),
(5, 'Pinterest', '', 'fa fa-pinterest'),
(6, 'YouTube', 'https://www.youtube.com/channel/UCEGuXYe03VW6tNsEcMI8RQQ', 'fa fa-youtube'),
(7, 'Instagram', 'https://www.instagram.com/pentaprimapaint/', 'fa fa-instagram'),
(8, 'Tumblr', '', 'fa fa-tumblr'),
(9, 'Flickr', '', 'fa fa-flickr'),
(10, 'Reddit', '', 'fa fa-reddit'),
(11, 'Snapchat', '', 'fa fa-snapchat'),
(12, 'WhatsApp', 'https://api.whatsapp.com/send/?phone=628111707305&text&app_absent=0', 'fa fa-whatsapp'),
(13, 'Quora', '', 'fa fa-quora'),
(14, 'StumbleUpon', '', 'fa fa-stumbleupon'),
(15, 'Delicious', '', 'fa fa-delicious'),
(16, 'Tiktok', '#ghdgd', 'fa-brands fa-tiktok');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscriber`
--

CREATE TABLE `tbl_subscriber` (
  `subs_id` int(11) NOT NULL,
  `subs_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subs_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `subs_date_time` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `subs_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subs_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_subscriber`
--

INSERT INTO `tbl_subscriber` (`subs_id`, `subs_email`, `subs_date`, `subs_date_time`, `subs_hash`, `subs_active`) VALUES
(3, 'arifkurniawan.ak5@gmail.com', '2022-03-23', '2022-03-23 08:50:55', 'e1a5de442d78b41141a8bb4e6980d90a', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_team_member`
--

CREATE TABLE `tbl_team_member` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `designation_id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `banner` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `degree` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `detail` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linkedin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `google_plus` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `flickr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `practice_location` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_keyword` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_team_member`
--

INSERT INTO `tbl_team_member` (`id`, `name`, `slug`, `designation_id`, `photo`, `banner`, `degree`, `detail`, `facebook`, `twitter`, `linkedin`, `youtube`, `google_plus`, `instagram`, `flickr`, `address`, `practice_location`, `phone`, `email`, `website`, `status`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 'Robert Smith', 'robert-smith', 5, 'team-member-1.jpg', 'team-member-banner-1.jpg', 'Master in Business Administration', '<p>Lorem ipsum dolor sit amet, habeo albucius cum ei, sit ex sint viderer conceptam. Qui an error animal qualisque, id ius choro nusquam consectetuer, mel hinc nonumes inciderint in. Eam an dolorem partiendo, no his maiestatis expetendis. Ex nominavi eloquentiam cum, at vix tota dicam, has eu dicunt molestie interpretaris. Per choro clita possit ei, sed an posse ridens, duo mazim admodum eu. In nam explicari iracundia.</p>\r\n\r\n<p>Has te consul ignota vocent. Quod brute disputationi ei vim, his invidunt omittantur te. Mucius aperiri concludaturque sed ut. Ius te quot latine vulputate. Ne his malis nonumy utroque.</p>\r\n\r\n<p>Sonet malorum invidunt nec cu, nibh possim ad duo. Eros populo euripidis ne pro, his eu probatus splendide scriptorem. Idque mazim ad vix, novum antiopam sea ut, et vim dicam urbanitas adversarium. Civibus temporibus disputationi id mei.</p>\r\n', 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.linkedin.com', '', '', '', '', '588 Philadelphia Avenue\r\nSalt Lake City, UT 84116', '3446 Junior Avenue\r\nForest Park, GA 30050', '111-222-3333', 'member@yourwebsite.com', 'http://www.abc.com', 'Active', 'Robert Smith', '', ''),
(2, 'Brent Grundy', 'brent-grundy', 5, 'team-member-2.jpg', 'team-member-banner-2.jpg', 'Master in Business Administration', '<p>Lorem ipsum dolor sit amet, habeo albucius cum ei, sit ex sint viderer conceptam. Qui an error animal qualisque, id ius choro nusquam consectetuer, mel hinc nonumes inciderint in. Eam an dolorem partiendo, no his maiestatis expetendis. Ex nominavi eloquentiam cum, at vix tota dicam, has eu dicunt molestie interpretaris. Per choro clita possit ei, sed an posse ridens, duo mazim admodum eu. In nam explicari iracundia.</p>\r\n\r\n<p>Has te consul ignota vocent. Quod brute disputationi ei vim, his invidunt omittantur te. Mucius aperiri concludaturque sed ut. Ius te quot latine vulputate. Ne his malis nonumy utroque.</p>\r\n\r\n<p>Sonet malorum invidunt nec cu, nibh possim ad duo. Eros populo euripidis ne pro, his eu probatus splendide scriptorem. Idque mazim ad vix, novum antiopam sea ut, et vim dicam urbanitas adversarium. Civibus temporibus disputationi id mei.</p>\r\n', 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.linkedin.com', '', '', '', '', '588 Philadelphia Avenue\r\nSalt Lake City, UT 84116', '3446 Junior Avenue\r\nForest Park, GA 30050', '111-222-3333', 'member@yourwebsite.com', 'http://www.abc.com', 'Active', 'Brent Grundy', '', ''),
(3, 'John Henderson', 'john-henderson-1', 5, 'team-member-3.jpg', 'team-member-banner-3.jpg', 'Master in Business Administration', '<p>Lorem ipsum dolor sit amet, habeo albucius cum ei, sit ex sint viderer conceptam. Qui an error animal qualisque, id ius choro nusquam consectetuer, mel hinc nonumes inciderint in. Eam an dolorem partiendo, no his maiestatis expetendis. Ex nominavi eloquentiam cum, at vix tota dicam, has eu dicunt molestie interpretaris. Per choro clita possit ei, sed an posse ridens, duo mazim admodum eu. In nam explicari iracundia.</p>\r\n\r\n<p>Has te consul ignota vocent. Quod brute disputationi ei vim, his invidunt omittantur te. Mucius aperiri concludaturque sed ut. Ius te quot latine vulputate. Ne his malis nonumy utroque.</p>\r\n\r\n<p>Sonet malorum invidunt nec cu, nibh possim ad duo. Eros populo euripidis ne pro, his eu probatus splendide scriptorem. Idque mazim ad vix, novum antiopam sea ut, et vim dicam urbanitas adversarium. Civibus temporibus disputationi id mei.</p>\r\n', 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.linkedin.com', '', '', '', '', '588 Philadelphia Avenue\r\nSalt Lake City, UT 84116', '3446 Junior Avenue\r\nForest Park, GA 30050', '111-222-3333', 'member@yourwebsite.com', 'http://www.abc.com', 'Active', 'John Henderson', '', ''),
(4, 'Patrick Joe', 'patrick-joe', 5, 'team-member-4.jpg', 'team-member-banner-4.jpg', 'Master in Business Administration', '<p>Lorem ipsum dolor sit amet, habeo albucius cum ei, sit ex sint viderer conceptam. Qui an error animal qualisque, id ius choro nusquam consectetuer, mel hinc nonumes inciderint in. Eam an dolorem partiendo, no his maiestatis expetendis. Ex nominavi eloquentiam cum, at vix tota dicam, has eu dicunt molestie interpretaris. Per choro clita possit ei, sed an posse ridens, duo mazim admodum eu. In nam explicari iracundia.</p>\r\n\r\n<p>Has te consul ignota vocent. Quod brute disputationi ei vim, his invidunt omittantur te. Mucius aperiri concludaturque sed ut. Ius te quot latine vulputate. Ne his malis nonumy utroque.</p>\r\n\r\n<p>Sonet malorum invidunt nec cu, nibh possim ad duo. Eros populo euripidis ne pro, his eu probatus splendide scriptorem. Idque mazim ad vix, novum antiopam sea ut, et vim dicam urbanitas adversarium. Civibus temporibus disputationi id mei.</p>\r\n', 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.linkedin.com', '', '', '', '', '588 Philadelphia Avenue\r\nSalt Lake City, UT 84116', '3446 Junior Avenue\r\nForest Park, GA 30050', '111-222-3333', 'member@yourwebsite.com', 'http://www.abc.com', 'Active', 'Patrick Joe', '', ''),
(5, 'Peter Robertson', 'peter-robertson-1', 5, 'team-member-5.jpg', 'team-member-banner-5.jpg', 'Master in Business Administration', '<p>Lorem ipsum dolor sit amet, habeo albucius cum ei, sit ex sint viderer conceptam. Qui an error animal qualisque, id ius choro nusquam consectetuer, mel hinc nonumes inciderint in. Eam an dolorem partiendo, no his maiestatis expetendis. Ex nominavi eloquentiam cum, at vix tota dicam, has eu dicunt molestie interpretaris. Per choro clita possit ei, sed an posse ridens, duo mazim admodum eu. In nam explicari iracundia.</p>\r\n\r\n<p>Has te consul ignota vocent. Quod brute disputationi ei vim, his invidunt omittantur te. Mucius aperiri concludaturque sed ut. Ius te quot latine vulputate. Ne his malis nonumy utroque.</p>\r\n\r\n<p>Sonet malorum invidunt nec cu, nibh possim ad duo. Eros populo euripidis ne pro, his eu probatus splendide scriptorem. Idque mazim ad vix, novum antiopam sea ut, et vim dicam urbanitas adversarium. Civibus temporibus disputationi id mei.</p>\r\n', 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.linkedin.com', '', '', '', '', '588 Philadelphia Avenue\r\nSalt Lake City, UT 84116', '3446 Junior Avenue\r\nForest Park, GA 30050', '111-222-3333', 'member@yourwebsite.com', 'http://www.abc.com', 'Active', 'Peter Robertson', '', ''),
(6, 'Bryan Smith', 'bryan-smith-1', 5, 'team-member-6.jpg', 'team-member-banner-6.jpg', 'Master in Business Administration', '<p>Lorem ipsum dolor sit amet, habeo albucius cum ei, sit ex sint viderer conceptam. Qui an error animal qualisque, id ius choro nusquam consectetuer, mel hinc nonumes inciderint in. Eam an dolorem partiendo, no his maiestatis expetendis. Ex nominavi eloquentiam cum, at vix tota dicam, has eu dicunt molestie interpretaris. Per choro clita possit ei, sed an posse ridens, duo mazim admodum eu. In nam explicari iracundia.</p>\r\n\r\n<p>Has te consul ignota vocent. Quod brute disputationi ei vim, his invidunt omittantur te. Mucius aperiri concludaturque sed ut. Ius te quot latine vulputate. Ne his malis nonumy utroque.</p>\r\n\r\n<p>Sonet malorum invidunt nec cu, nibh possim ad duo. Eros populo euripidis ne pro, his eu probatus splendide scriptorem. Idque mazim ad vix, novum antiopam sea ut, et vim dicam urbanitas adversarium. Civibus temporibus disputationi id mei.</p>\r\n', 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.linkedin.com', '', '', '', '', '588 Philadelphia Avenue\r\nSalt Lake City, UT 84116', '3446 Junior Avenue\r\nForest Park, GA 30050', '111-222-3333', 'member@yourwebsite.com', 'http://www.abc.com', 'Active', 'Bryan Smith', '', ''),
(7, 'Toko Cat makmur', 'toko-cat-makmur', 7, 'team-member-7.jpg', 'team-member-banner-7.jpg', 'Cat mobil', '<p>Lorem ipsum dolor sit amet, omnis signiferumque in mei, mei ex enim concludaturque. Senserit salutandi euripidis no per, modus maiestatis scribentur est an.&nbsp;Ea suas pertinax has, solet officiis pericula cu pro, possit inermis qui ad. An mea tale perfecto sententiae, eos inani epicuri concludaturque ex.</p>\r\n', '#', '', '', '#', '', '#', '', 'Bandung', '', '', '', '', 'Active', 'penta oto', 'penta oto, cat mobil, car refinish', ''),
(8, 'Toko cat indah', 'toko-cat-indah', 6, 'team-member-8.jpg', 'team-member-banner-8.jpg', '', '<p>&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, omnis signiferumque in mei, mei ex enim concludaturque. Senserit salutandi euripidis no per, modus maiestatis scribentur est an.&nbsp;Ea suas pertinax has, solet officiis pericula cu pro, possit inermis qui ad. An mea tale perfecto sententiae, eos inani epicuri concludaturque ex.</p>\r\n', '#', '#', '#', '#', '', '#', '', 'Surabaya', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.808032510161!2d106.89523851476888!3d-6.156459695542659!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f5390130e089%3A0x7edf8f2a19820b41!2sPenta%20Prima%2C%20Jl.%20Boulevard%20Bar.%20Raya%20No.5%2C%20RW.5%2C%20Klp.%20Gading%20Bar.%2C%20Kec.%20Klp.%20Gading%2C%20Kota%20Jkt%20Utara%2C%20Daerah%20Khusus%20Ibukota%20Jakarta%2014240!5e0!3m2!1sid!2sid!4v1648111030414!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '', '', '', 'Active', 'toko', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonial`
--

CREATE TABLE `tbl_testimonial` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_testimonial`
--

INSERT INTO `tbl_testimonial` (`id`, `name`, `designation`, `company`, `photo`, `comment`) VALUES
(2, 'Dadiv Smith', 'CEO', 'SS Multimedia', 'testimonial-2.png', 'Ancillae interpretaris ea has. Id amet impedit qui, eripuit mnesarchum percipitur in eam. Ne sit habeo inimicus, no his liber regione volutpat. Ex quot voluptaria usu, dolor vivendo docendi nec ea. Et atqui vocent integre vim, quod cibo recusabo ei usu, s'),
(3, 'Stefen Carman', 'Chairman', 'GH Group', 'testimonial-3.jpg', 'Ancillae interpretaris ea has. Id amet impedit qui, eripuit mnesarchum percipitur in eam. Ne sit habeo inimicus, no his liber regione volutpat. Ex quot voluptaria usu, dolor vivendo docendi nec ea. Et atqui vocent integre vim, quod cibo recusabo ei usu, s'),
(4, 'Gary Brent', 'CFO', 'XYZ It Solution', 'testimonial-4.jpg', 'Ancillae interpretaris ea has. Id amet impedit qui, eripuit mnesarchum percipitur in eam. Ne sit habeo inimicus, no his liber regione volutpat. Ex quot voluptaria usu, dolor vivendo docendi nec ea. Et atqui vocent integre vim, quod cibo recusabo ei usu, s');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `email`, `password`, `photo`, `role`, `status`) VALUES
(1, 'adminbina@gmail.com', '47b35c44c5021b13950a2162f6989088', 'user-1.jpg', 'Admin', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

CREATE TABLE `tbl_video` (
  `video_id` int(11) NOT NULL,
  `video_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `video_iframe` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `v_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_video`
--

INSERT INTO `tbl_video` (`video_id`, `video_title`, `video_iframe`, `v_category_id`) VALUES
(3, 'Review Produk Decorative PENTA PROOF', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/-46ckb7A3nQ\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1),
(4, 'Review Produk Decorative PENTA SUPER GLOSS PU 2K', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/DrQMRjp3EGw\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 1),
(5, 'PENTA SUPER GLOSS', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/3nU0itva8kU\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen>\r\n</iframe>', 1),
(6, 'PENTA AEROSOL HEAT RESISTANT', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/PqMxwsYlD0c\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 4),
(7, 'Review PENTA OTO PSEP', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/jU7F-hYMfMc\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 2),
(8, 'PENTA AEROSOL FLINTKOTE NEW PACKAGING', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/nw0Wp7xa_DA\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 4),
(9, 'NEW COLOR !!! PENTA OTO PU BASE COAT', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/z-FKG-8ZVRA\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 2),
(10, 'REVIEW CAT TOP CLEAR !!! LUX NEW KRYPTON', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/MRaT-1ovyC8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_category_photo`
--
ALTER TABLE `tbl_category_photo`
  ADD PRIMARY KEY (`p_category_id`);

--
-- Indexes for table `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`p_category_id`);

--
-- Indexes for table `tbl_category_video`
--
ALTER TABLE `tbl_category_video`
  ADD PRIMARY KEY (`v_category_id`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_designation`
--
ALTER TABLE `tbl_designation`
  ADD PRIMARY KEY (`designation_id`);

--
-- Indexes for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `tbl_faq_category`
--
ALTER TABLE `tbl_faq_category`
  ADD PRIMARY KEY (`faq_category_id`);

--
-- Indexes for table `tbl_file`
--
ALTER TABLE `tbl_file`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `tbl_partner`
--
ALTER TABLE `tbl_partner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  ADD PRIMARY KEY (`photo_id`);

--
-- Indexes for table `tbl_photo_product`
--
ALTER TABLE `tbl_photo_product`
  ADD PRIMARY KEY (`p_photo_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`social_id`);

--
-- Indexes for table `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  ADD PRIMARY KEY (`subs_id`);

--
-- Indexes for table `tbl_team_member`
--
ALTER TABLE `tbl_team_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`video_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_category_photo`
--
ALTER TABLE `tbl_category_photo`
  MODIFY `p_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `p_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_category_video`
--
ALTER TABLE `tbl_category_video`
  MODIFY `v_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_designation`
--
ALTER TABLE `tbl_designation`
  MODIFY `designation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_faq_category`
--
ALTER TABLE `tbl_faq_category`
  MODIFY `faq_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_file`
--
ALTER TABLE `tbl_file`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_partner`
--
ALTER TABLE `tbl_partner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  MODIFY `photo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_photo_product`
--
ALTER TABLE `tbl_photo_product`
  MODIFY `p_photo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `social_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  MODIFY `subs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_team_member`
--
ALTER TABLE `tbl_team_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `video_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
