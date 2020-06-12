-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 24, 2020 at 07:09 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proshow`
--

-- --------------------------------------------------------

--
-- Table structure for table `associates`
--

DROP TABLE IF EXISTS `associates`;
CREATE TABLE IF NOT EXISTS `associates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `slug` varchar(90) NOT NULL,
  `metak` text,
  `metad` text,
  `cover` text,
  `post` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `associates`
--

INSERT INTO `associates` (`id`, `name`, `slug`, `metak`, `metad`, `cover`, `post`) VALUES
(1, 'Associates', 'associates', 'Careers', 'Careers', '7833dfb1d1a2f282237730db5d5a20211.png', 'post');

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

DROP TABLE IF EXISTS `careers`;
CREATE TABLE IF NOT EXISTS `careers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `slug` varchar(90) NOT NULL,
  `metak` text,
  `metad` text,
  `cover` text,
  `post` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `name`, `slug`, `metak`, `metad`, `cover`, `post`) VALUES
(1, 'Careers', 'careers', 'Careers', 'Careers', '7833dfb1d1a2f282237730db5d5a20211.png', 'post');

-- --------------------------------------------------------

--
-- Table structure for table `childpages`
--

DROP TABLE IF EXISTS `childpages`;
CREATE TABLE IF NOT EXISTS `childpages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `pslug` varchar(90) DEFAULT NULL,
  `name` text,
  `slug` varchar(90) NOT NULL,
  `metak` text,
  `metad` text,
  `cover` text,
  `post` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `childpages`
--

INSERT INTO `childpages` (`id`, `pid`, `pslug`, `name`, `slug`, `metak`, `metad`, `cover`, `post`, `ordr`) VALUES
(15, 12, 'pages', 'Sub Page 3', 'sub3', 'Sub Page 3', 'Sub Page 3', 'b0bde12be5d7c379ef2895af0280d93c1.png', '<h2><a href=\"http://themes.semicolonweb.com/html/canvas/blog-single-small.html\">THI&nbsp;POST WITH A&nbsp; GALLERY</a></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"10\" cellspacing=\"10\" style=\"width:90%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione, voluptatem, dolorem animi nisi autem blanditiis enim culpa reiciendis et explicabo tenetur voluptate rerum molestiae eaque possimus exercitationem eligendi fuga. Maiores, sunt eveniet doloremque porro hic exercitationem distinctio sequi adipisci. Nulla, fuga perferendis voluptatum beatae voluptate architecto laboriosam provident deserunt. Saepe!</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><a href=\"http://themes.semicolonweb.com/html/canvas/blog-single-small.html\">Read More</a></p>\r\n\r\n<blockquote>\r\n<p>&quot;When you are courting a nice girl an hour seems like a second. When you sit on a red-hot cinder a second seems like an hour. That&#39;s relativity.&quot;</p>\r\n\r\n<p>Albert Einstein</p>\r\n</blockquote>\r\n\r\n<ul>\r\n	<li>&nbsp;3rd March 2014</li>\r\n	<li><a href=\"http://themes.semicolonweb.com/html/canvas/index-blog.html#\">&nbsp;admin</a></li>\r\n	<li>&nbsp;<a href=\"http://themes.semicolonweb.com/html/canvas/index-blog.html#\">Quotes</a>,&nbsp;<a href=\"http://themes.semicolonweb.com/html/canvas/index-blog.html#\">People</a></li>\r\n	<li><a href=\"http://themes.semicolonweb.com/html/canvas/blog-single.html#comments\">&nbsp;23 Comments</a></li>\r\n</ul>\r\n', 3),
(14, 12, 'pages', 'Sub Page 2', 'sub23', 'Sub Page 2', 'Sub Page 233', '596bfacac81d4edea47af268073a47e01.png', '<h3>OPTIMIZED FOR MOBILE &amp; TOUCH ENABLED DEVICES.</h3>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero quod consequuntur quibusdam, enim expedita sed quia nesciunt incidunt accusamus necessitatibus modi adipisci officia libero accusantium esse hic, obcaecati, ullam, laboriosam!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corrupti vero, animi suscipit id facere officia. Aspernatur, quo, quos nisi dolorum aperiam fugiat deserunt velit rerum laudantium cum magnam.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero quod consequuntur quibusdam, enim expedita sed quia nesciunt incidunt accusamus necessitatibus modi adipisci officia libero accusantium esse hic, obcaecati, ullam, laboriosam!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corrupti vero, animi suscipit id facere officia. Aspernatur, quo, quos nisi dolorum aperiam fugiat deserunt velit rerum laudantium cum magnam.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero quod consequuntur quibusdam, enim expedita sed quia nesciunt incidunt accusamus necessitatibus modi adipisci officia libero accusantium esse hic, obcaecati, ullam, laboriosam!</p>\r\n\r\n<p>Lorem ipsum dolt amet, consectetur adipisicing elit. Vero quod consequuntur quibusdam, enim expedita sed quia nesciunt incidunt accusamus necessitatibus modi adipisci officia libero accusantium esse hic, obcaecati, ullam, laboriosam!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corrupti vero, animi suscipit id facere officia. Aspernatur, quo, quos nisi dolorum aperiam fugiat deserunt velit rerum laudantium cum magnam.</p>\r\n', 2),
(13, 12, 'pages', 'Sub Page 1', 'sub12', 'Sub Page 1', 'Sub Page Meta Descp', 'ee50df58f7585b2c568d26a652e83fc11.png', '<h2><a href=\"http://themes.semicolonweb.com/html/canvas/blog-single.html\">THIS IS A STANDARD POST WITH A PREVIEW IMAGE</a></h2>\r\n\r\n<ul>\r\n	<li>&nbsp;10th February 2014</li>\r\n	<li><a href=\"http://themes.semicolonweb.com/html/canvas/index-blog.html#\">&nbsp;admin</a></li>\r\n	<li>&nbsp;<a href=\"http://themes.semicolonweb.com/html/canvas/index-blog.html#\">General</a>,&nbsp;<a href=\"http://themes.semicolonweb.com/html/canvas/index-blog.html#\">Media</a></li>\r\n	<li><a href=\"http://themes.semicolonweb.com/html/canvas/blog-single.html#comments\">&nbsp;13 Comments</a></li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate, asperiores quod est tenetur in. Eligendi, deserunt, blanditiis est quisquam doloribus voluptate id aperiam ea ipsum magni aut perspiciatis rem voluptatibus officia eos rerum deleniti quae nihil facilis repellat atque vitae voluptatem libero at eveniet veritatis ab facere.</p>\r\n\r\n<p><a href=\"http://themes.semicolonweb.com/html/canvas/blog-single.html\">Read More</a></p>\r\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL,
  `catslug` varchar(90) DEFAULT NULL,
  `name` text,
  `img` text,
  `url` text,
  `ordr` int(11) DEFAULT NULL,
  `feat` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `catid`, `catslug`, `name`, `img`, `url`, `ordr`, `feat`) VALUES
(27, 14, 'add-clients', 'hello', '6d92ddfe8519de07c4635c2d5fbbce701.png', 'www.hamzapervaiz.com', 9, 1),
(28, 14, 'add-clients', 'Best in Class', '687311a399f64d866b7413a4d6e543911.png', 'www.hamzapervaiz.com', 3, 1),
(29, 14, 'add-clients', 'Honda', '79dcf7757be1d7f2f727f44960dca2001.png', 'www.lol.123', 1, 1),
(30, 14, 'add-clients', 'Name', 'ae3eb7745aedc87e61c442292ed6a0921.png', '112.qlol.q12', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `clientscat`
--

DROP TABLE IF EXISTS `clientscat`;
CREATE TABLE IF NOT EXISTS `clientscat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `slug` varchar(90) DEFAULT NULL,
  `img` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clientscat`
--

INSERT INTO `clientscat` (`id`, `name`, `slug`, `img`, `ordr`) VALUES
(14, 'Clients', 'add-clients', '1a242f37060cac2e1e56b05369ac96e61.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sitename` text,
  `logo` text,
  `phone` text,
  `email` text,
  `address` text,
  `gmaps` text,
  `cover` text,
  `post` text,
  `fpost` text,
  `facebook` text,
  `twitter` text,
  `insta` text,
  `youtube` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `sitename`, `logo`, `phone`, `email`, `address`, `gmaps`, `cover`, `post`, `fpost`, `facebook`, `twitter`, `insta`, `youtube`) VALUES
(1, 'Company  (Pvt.) Limited', '9674ca9cd4cc423d499d0c52840ac14b1.png', '+92 123 456789', 'company@email.com', 'Company, Lahore. (Pakistan).                       ', 'Map Code  ', '5446d6f9cf7b51b48c0875b3009fb11d1.png', '<p>lol</p>\r\n', 'Sample Footer Text  ðŸ˜‰ðŸ¤ž', 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.instagram.com', 'http://www.youtube.com');

-- --------------------------------------------------------

--
-- Table structure for table `field`
--

DROP TABLE IF EXISTS `field`;
CREATE TABLE IF NOT EXISTS `field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `img` text NOT NULL,
  `desp` text NOT NULL,
  `ordr` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `field`
--

INSERT INTO `field` (`id`, `name`, `img`, `desp`, `ordr`) VALUES
(3, 'Hydropower  & Dams', 'f6bda39b9e56d33c5b4b3bb208d62fcf1.png', 'Over the last 40 Years, NDC has been engaged in feasibility detailed, design & construction supervision of more than 20,000 MW of Hydropower Projects including worldâ€™s highest RCC dams i.e. 272 m high Diamer Basha Dam and 242 m high Dasu ', 1),
(2, 'River Training & Flood Protection', 'b953c0a05b20bd4cc14eca52045a4e4a1.png', 'NDC has contributed, over the years, in water resources projects for river training, flood protection & control. Projects successfully completed by NDC in this field include Second Flood Sector Project, Flood Protection Works in Sindhâ€¦..', 3),
(4, 'Irrigation', '9f6719a449cccf7f7bf4b75cb4d963a21.png', 'NDC has undertaken detailed design and construction supervision of irrigation projects & rehabilitation of mega irrigation and drainage projects including Sulemanki Barrage, Taunsa Barrage, Sukkur Barrage, Kachhi Canal Project, New Khanki Barrage,  National Drainage Program, Chashma', 2),
(5, 'Irrigation & Hydraulics', 'e7d83d1ed2452a0b619534bc81f7f67e1.png', 'Isst  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 4),
(6, 'River Training & Flood Protetion', '2413c767f30a48f93cd75d3f07f773921.png', ' adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim ', 5),
(7, 'Drainage & Groundwater Resource', '1cc50c07166f99e0216d0b09ada6f9c71.png', '  adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim ', 6),
(8, 'Transportation', 'a82177f5973ad7b5b1022963388b98d81.png', '   adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim ', 7),
(9, 'Urban Infrastructure Development', 'cb9d2bf166244d97b43322e82cd53a001.png', 'adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim ', 8),
(10, 'Physical and Numerical Hydraulic Modeling', '04865cef1631adc07b535b90353b7fd31.png', ' labore et dolore magna aliqua. Ut enim ad minim ', 9),
(11, 'Heading', '0de1b71f2c045a1551d5b9ccef582fd61.png', ' adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim ', 10),
(12, 'Heading', '1d91a12b29ffaf1408643ff4d5667f931.png', ' adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim ', 11),
(13, 'Heading', 'c3170bd38420563fa4548f143741ed071.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et ..Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et ..', 12);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL,
  `catslug` varchar(90) DEFAULT NULL,
  `name` text,
  `img` text,
  `url` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gallerycat`
--

DROP TABLE IF EXISTS `gallerycat`;
CREATE TABLE IF NOT EXISTS `gallerycat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `slug` varchar(90) DEFAULT NULL,
  `img` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

DROP TABLE IF EXISTS `home`;
CREATE TABLE IF NOT EXISTS `home` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post` text NOT NULL,
  `img` text NOT NULL,
  `vid` text,
  `vidpost` text,
  `vidimg` text NOT NULL,
  `msg` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id`, `post`, `img`, `vid`, `vidpost`, `vidimg`, `msg`) VALUES
(1, '<h4>RESPONSIVE &amp; RETINA</h4>\r\n\r\n<p>Employment respond committed meaningful fight against oppression social challenges rural legal aid governance. Meaningful work, implementation, process cooperation, campaign inspire.</p>\r\n\r\n<p>Smartly Coded &amp; Maintained.</p>\r\n\r\n<h4>POWERFUL PERFORMANCE</h4>\r\n\r\n<p>Medecins du Monde Jane Addams reduce child mortality challenges Ford Foundation. Diversification shifting landscape advocate pathway to a better life rights international. Assessment.</p>\r\n', '438c269b1ddcc2eab388c85a9b1eb8541.png', '   Custom Video URL   ', '<h2 style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:20px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">Shaping the future through</span></span></span></h2>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"color:#000000\">EVEN MORE FEATURE RICH</span></h2>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\">Philanthropy convener livelihoods, initiative end hunger gender rights local. John Lennon storytelling; advocate, altruism impact catalyst.<span style=\"font-size:20px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\"> creative solutions and visionary leadership.</span></span></span></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:20px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">Testing</span></span></span></p>\r\n', '4709c35999256ec9b2bcb750135058b71.png', '<p>National Development Consultants Pvt. Ltd. Pakistan, is one of the Pakistan&#39;s premier consulting engineering organization, which has attained international standard and is ranked among the Pakistan&#39;s top 5 consulting firms.</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL,
  `catslug` varchar(90) DEFAULT NULL,
  `name` text,
  `img` text,
  `url` text,
  `ordr` int(11) DEFAULT NULL,
  `feat` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `catid`, `catslug`, `name`, `img`, `url`, `ordr`, `feat`) VALUES
(28, 15, 'image-gallery1', 'Test', '1f40dcf29c529a095c8b6b873133f9d41.png', 'www.hamzapervaiz.com', 0, 1),
(29, 15, 'image-gallery1', 'Test 2', 'f4b0bf8ae34bc216c301b98cc32c84221.png', 'test.com', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `imagescat`
--

DROP TABLE IF EXISTS `imagescat`;
CREATE TABLE IF NOT EXISTS `imagescat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `slug` varchar(90) DEFAULT NULL,
  `img` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imagescat`
--

INSERT INTO `imagescat` (`id`, `name`, `slug`, `img`, `ordr`) VALUES
(15, 'Image Gallery1', 'image-gallery1', '7f3e135916f408ffb2256bddbb6f0a111.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `marquee`
--

DROP TABLE IF EXISTS `marquee`;
CREATE TABLE IF NOT EXISTS `marquee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` text,
  `text` text,
  `heading` text,
  `month` text,
  `year` text,
  `url` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marquee`
--

INSERT INTO `marquee` (`id`, `img`, `text`, `heading`, `month`, `year`, `url`, `ordr`) VALUES
(9, NULL, 'Testing Event', NULL, '2020', '10', '<p>hello Event Description</p>\r\n', 1),
(10, NULL, 'Another  Testing Event', NULL, '10', '2020', 'Sample Descp', 2);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `slug` varchar(90) NOT NULL,
  `metak` text,
  `metad` text,
  `cover` text,
  `post` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `name`, `slug`, `metak`, `metad`, `cover`, `post`) VALUES
(1, 'News and Events', '', 'Careers', 'Careers', '15562240ad0d6bfc4be7dcd977c92aaf1.png', '<p>post</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `slug` varchar(90) NOT NULL,
  `metak` text,
  `metad` text,
  `cover` text,
  `post` text,
  `res` int(11) NOT NULL DEFAULT '0',
  `ordr` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `metak`, `metad`, `cover`, `post`, `res`, `ordr`) VALUES
(1, 'Home', 'home', 'Site Name', 'Site Name', '16221544bd7db1d546fd5d83855d330b1.png', '<h2>Hello World</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>234</p>\r\n', 1, 1),
(9, 'Contact Us', 'contacts', 'Contacts', 'Contacts', '123.jpg', '', 1, 10),
(4, 'Clients', 'clients', 'clients ', 'clients ', '9de10abac4b0183b85d6c341daf581431.png', '', 1, 4),
(5, 'Services', 'services', 'Services', 'meta description', '', '', 1, 5),
(10, 'Custom Page', 'custom', 'custom', 'custom', '7ce90effa4bfd6656fe7801900e319b01.png', '<h1>The Company organization is a legal entity registered with Engineering Council and also with several multinational funding agencies.</h1>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Today, stands as a Multi-disciplinary Organization of Consulting Engineers providing high quality services to its clients at home and abroad.</div>\r\n', 0, 6),
(7, 'Images', 'image', 'Images Gallery', 'Images Gallery\r\n', 'c960d16f3cf63f31067161bff94108f81.png', '', 1, 8),
(3, 'Products', 'products', 'products', 'products', '', '', 1, 3),
(6, 'News / Events', 'news', 'News / Events', 'News / Events', '53bb95cfdc5c32765745bcbc6747d9b31.png', '<p>lol this</p>\r\n', 1, 7),
(2, 'Pages', 'pages', 'Pages', 'pages', '', '', 1, 2),
(8, 'Videos', 'video', 'Videos Gallery', 'Videos Gallery', '395a08298e40fdd55b41d04d13cc9ff61.png', '', 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `pimgs`
--

DROP TABLE IF EXISTS `pimgs`;
CREATE TABLE IF NOT EXISTS `pimgs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `pslug` varchar(90) NOT NULL,
  `img` text,
  `feat` int(11) DEFAULT NULL,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=166 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pimgs`
--

INSERT INTO `pimgs` (`id`, `pid`, `pslug`, `img`, `feat`, `ordr`) VALUES
(165, 36, 'pro-20', '3738e864faaefb389b8dbc04149c02141.png', 0, 3),
(164, 36, 'pro-20', 'a9643e243e882c459062314321d689c91.png', 0, 2),
(163, 38, 'procat1', '225e1ba49637642fa7881b30a957638e1.png', 1, 0),
(161, 40, 'slud', 'aecc370d759f1db5c81e98042899d3ae1.png', 1, 0),
(162, 41, 'best', 'fea5b60eccddf6b2ec4487748d0461cd1.png', 1, 0),
(159, 39, 'new-product-10', '77a7fe4130e87917a7cac0bd871374161.png', 1, 0),
(158, 36, 'pro-20', '4c6c200cc84357b8de570189dde4beca1.png', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `pslug` varchar(90) DEFAULT NULL,
  `name` text,
  `slug` varchar(90) DEFAULT NULL,
  `metak` text,
  `metad` text,
  `desp` text,
  `feat` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `pid`, `pslug`, `name`, `slug`, `metak`, `metad`, `desp`, `feat`, `ordr`) VALUES
(36, 6, 'procat1', 'Product 2', 'pro-20', 'Product 2', 'Product 2', '<h1>&nbsp;</h1>\r\n\r\n<h1>&nbsp;</h1>\r\n\r\n<h1>You&#39;re not connected</h1>\r\n\r\n<p>And the web just isn&#39;t the same without you. Let&#39;s get you back online!</p>\r\n\r\n<p>Try:</p>\r\n\r\n<ul>\r\n	<li>Checking your network cables, modem, and routers</li>\r\n	<li>Reconnecting to your wireless network</li>\r\n	<li><a href=\"javascript:diagnoseErrors()\" id=\"diagnose-link\">Running Windows Network Diagnostics</a></li>\r\n</ul>\r\n\r\n<p>ERR_INTERNET_DISCONNECTED</p>\r\n', '1', 2),
(38, 7, 'pro-cat2', 'Sub Page 11', 'procat1', 'Sub Page 11', 'Sub Page 111', NULL, '1', 3),
(39, 6, 'procat1', 'New Product 10', 'new-product-10', 'New Product 10', 'New Product 10', '<p>Product 1090909</p>\r\n', '1', 9),
(40, 8, 'pro-cat-3', 'Urdu', 'slud', 'meta', 'desp', NULL, '0', 1),
(41, 8, 'pro-cat-3', 'Best in Class', 'best', 'Key', 'Meta Dsesp', NULL, '0', 2);

-- --------------------------------------------------------

--
-- Table structure for table `productcat`
--

DROP TABLE IF EXISTS `productcat`;
CREATE TABLE IF NOT EXISTS `productcat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `slug` varchar(40) DEFAULT NULL,
  `img` text,
  `desp` text,
  `feat` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productcat`
--

INSERT INTO `productcat` (`id`, `name`, `slug`, `img`, `desp`, `feat`, `ordr`) VALUES
(6, 'Product Category 1', 'procat1', 'b6dc8197a6dfd5539a51b6a50cff5a6e1.png', '', NULL, 5),
(7, 'Product Category 2', 'pro-cat2', 'fa2ceb358eb36fbb382075ce345d37a91.png', '', NULL, 9),
(8, 'Product Category 3', 'pro-cat-3', '6b6d29eb038a28a01edc3d5ca5267e101.png', '', NULL, 8);

-- --------------------------------------------------------

--
-- Table structure for table `productsubcat`
--

DROP TABLE IF EXISTS `productsubcat`;
CREATE TABLE IF NOT EXISTS `productsubcat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `pslug` varchar(90) NOT NULL,
  `name` text NOT NULL,
  `slug` varchar(40) NOT NULL,
  `img` text NOT NULL,
  `desp` text NOT NULL,
  `feat` text NOT NULL,
  `ordr` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
CREATE TABLE IF NOT EXISTS `service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `pslug` varchar(90) DEFAULT NULL,
  `name` text,
  `slug` varchar(90) DEFAULT NULL,
  `metak` text,
  `metad` text,
  `desp` text,
  `feat` text,
  `ordr` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `pid`, `pslug`, `name`, `slug`, `metak`, `metad`, `desp`, `feat`, `ordr`) VALUES
(24, 10, 'add-services', 'New Services', 'new-services', 'New Services', 'New Services', '<p>Sapmple Description of Services</p>\r\n', '1', '0'),
(25, 10, 'add-services', 'Another Serveice', 'another-serveice', 'Another Serveice', 'Another Serveice', NULL, '1', '2'),
(26, 10, 'add-services', 'More Services', 'more', 'more', '', NULL, '0', '3'),
(27, 10, 'add-services', 'Must show on home', 'must-show-on-home', 'Must show on home', 'Must show on home', NULL, '1', '4'),
(28, 10, 'add-services', 'Not show on home', 'not-show', '', '', NULL, '0', '5');

-- --------------------------------------------------------

--
-- Table structure for table `servicecat`
--

DROP TABLE IF EXISTS `servicecat`;
CREATE TABLE IF NOT EXISTS `servicecat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `slug` varchar(40) DEFAULT NULL,
  `img` text,
  `desp` text,
  `feat` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `servicecat`
--

INSERT INTO `servicecat` (`id`, `name`, `slug`, `img`, `desp`, `feat`, `ordr`) VALUES
(10, 'Our Services', 'add-services', '15b8e40d18212e11c814e9c702ae5dd61.png', '<p>lol</p>\r\n', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `simgs`
--

DROP TABLE IF EXISTS `simgs`;
CREATE TABLE IF NOT EXISTS `simgs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `pslug` varchar(90) NOT NULL,
  `img` text,
  `feat` int(11) DEFAULT NULL,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=120 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `simgs`
--

INSERT INTO `simgs` (`id`, `pid`, `pslug`, `img`, `feat`, `ordr`) VALUES
(110, 24, 'new-services', 'e225f01c0271ed589e424a0ecc6fd6781.png', 1, 0),
(111, 25, 'another-serveice', '426f967cc6d0fcb2254462a854d8b35a1.png', 1, 0),
(112, 25, 'another-serveice', 'e2a324e7a423c441be0c793d691f49d31.png', 0, 2),
(113, 26, 'more', '124513a35bcca744e2d12a9334487da61.png', 1, 0),
(114, 27, 'must-show-on-home', '2d9cec06d36bf1521df9c2ef0a05b2671.png', 1, 0),
(115, 28, 'not-show', 'a8d4a0a43d77700a978054758ea618e01.png', 1, 0),
(116, 36, 'pro-20', '8493c168a080a9aa42323db7aef5fe251.png', 1, 0),
(118, 39, 'new-product-10', 'f90bc793c85d11511f50ca0be2efce5c1.png', 1, 0),
(119, 40, 'slud', 'a55ffefe04018b2f05720bb1d1d95f8b1.png', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `img` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `name`, `img`, `ordr`) VALUES
(25, 'S2', '3e0b6d1e8305ce736c1bdec54ceecf661.png', 2),
(24, 'S1', '35f59fb058d559ba6ecf6d874ec40f3d1.png', 1),
(26, 'S3', '82354bf752f5efaf93298da565c03dc31.png', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `role` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'hamza56', 'admin990', 'admin'),
(2, 'admin', 'admin9', '');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
CREATE TABLE IF NOT EXISTS `videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL,
  `catslug` varchar(90) DEFAULT NULL,
  `name` text,
  `img` text,
  `url` text,
  `ordr` int(11) DEFAULT NULL,
  `feat` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `catid`, `catslug`, `name`, `img`, `url`, `ordr`, `feat`) VALUES
(31, 15, 'videos-gallery', 'Video 2', 'Null', 'www.lolvideos.com', 8, 1),
(30, 15, 'videos-gallery', 'Name of Video', 'Null', 'www.hamzapervaiz.com', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `videoscat`
--

DROP TABLE IF EXISTS `videoscat`;
CREATE TABLE IF NOT EXISTS `videoscat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `slug` varchar(90) DEFAULT NULL,
  `img` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videoscat`
--

INSERT INTO `videoscat` (`id`, `name`, `slug`, `img`, `ordr`) VALUES
(15, 'Videos Gallery1', 'videos-gallery', 'b1672d4092e3ad3395f46587a99c2b5e1.png', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
