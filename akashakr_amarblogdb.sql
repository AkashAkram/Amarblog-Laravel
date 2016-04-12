-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Apr 12, 2016 at 03:46 AM
-- Server version: 5.5.45-cll-lve
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `akashakr_amarblogdb`
--
CREATE DATABASE IF NOT EXISTS `akashakr_amarblogdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `akashakr_amarblogdb`;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int(255) NOT NULL,
  `category_id` int(255) NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `cover`, `author_id`, `category_id`, `body`, `created_at`, `updated_at`) VALUES
(2, 'Facebook', '', 22, 6, 'Facebook is a corporation and online social networking service headquartered in Menlo Park, California, in the United States. Its website was launched on February 4, 2004, by Mark Zuckerberg with his Harvard College roommates and fellow students Eduardo Saverin, Andrew McCollum, Dustin Moskovitz and Chris Hughes.[8][9][10] The founders had initially limited the website''s membership to Harvard students, but later expanded it to colleges in the Boston area, the Ivy League, and Stanford University. It gradually added support for students at various other universities and later to high-school students. Since 2006, anyone who is at least 13 years old was allowed to become a registered user of the website, though the age requirement may be higher depending on applicable local laws.[11] Its name comes from the face book directories often given to American university students.[12]\r\n\r\nAfter registering to use the site, users can create a user profile, add other users as "friends", exchange messages, post status updates and photos, share videos, use various apps and receive notifications when others update their profiles. Additionally, users may join common-interest user groups, organized by workplace, school or college, or other characteristics, and categorize their friends into lists such as "People From Work" or "Close Friends". Also users can complain or block unpleasant people. Facebook had over 1.59 billion monthly active users as of August 2015.[7] Because of the large volume of data users submit to the service, Facebook has come under scrutiny for their privacy policies. Facebook, Inc. held its initial public offering in February 2012 and began selling stock to the public three months later, reaching an original peak market capitalization of $104 billion. On July 13, 2015, Facebook became the fastest company in the Standard & Poor''s 500 Index to reach a market cap of $250 billion.[13] Following its Q3 earnings call in 2015, Facebook''s market cap soared past $300 billion.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Real Madrid C.F.', 'N/A', 4, 4, 'Real Madrid Club de Fútbol (Spanish pronunciation: [reˈal maˈðɾið ˈkluβ ðe ˈfuðβol]; Royal Madrid Football Club), commonly known as Real Madrid, or simply as Real, is a professional football club based in Madrid, Spain.\r\n\r\nFounded in 1902 as Madrid Football Club, the team has traditionally worn a white home kit since inception. The word Real is Spanish for Royal and was bestowed to the club by King Alfonso XIII in 1920 together with the royal crown in the emblem. The team has played its home matches in the 85,454-capacity Santiago Bernabéu Stadium in downtown Madrid since 1947. Unlike most European sporting entities, Real Madrid''s members (socios) have owned and operated the club throughout its history.\r\n\r\nThe club is the most valuable sports team in the world, worth €2.5 billion ($3.4 billion) and the world''s highest-earning football club for 2013–14, with an annual revenue of €549.5 million.[5][6][7] The club is one of the most widely supported teams in the world.[8] Real Madrid is one of three founding members of the Primera División that have never been relegated from the top division, along with Athletic Bilbao and Barcelona. The club holds many long-standing rivalries, most notably El Clásico with Barcelona and the El Derbi madrileño with Atlético Madrid.\r\n\r\nReal Madrid established itself as a major force in both Spanish and European football during the 1950s. The club won five consecutive European Cups, and reached the final seven times. This success was replicated in the league, where the club won five times in the space of seven years. This team, which consisted of players such as Di Stéfano, Ferenc Puskás, Gento, Raymond Kopa, and Santamaría, is considered by some in the sport to be the greatest team of all time.[9][10][11][12]\r\n\r\nIn domestic football, the club has won a record 32 La Liga titles, 19 Copa del Rey, 9 Supercopa de España, 1 Copa Eva Duarte, and 1 Copa de la Liga.[13] In international football, the club has won a record 10 European Cup/UEFA Champions League titles and a joint record 3 Intercontinental Cups, as well as 2 UEFA Cups, 2 UEFA Super Cups and a FIFA Club World Cup.\r\n\r\nReal Madrid was recognised as the FIFA Club of the 20th Century on 23 December 2000, and named Best European Club of the 20th Century by the IFFHS on 11 May 2010. The club received the FIFA Centennial Order of Merit in 2004. The club is ranked first in the latest IFFHS Club World Ranking, setting a new ranking-points record.[14] The club also leads the current UEFA club rankings.', '2016-03-14 06:03:57', '2016-03-14 06:03:57'),
(12, 'Google Inc.', 'N/A', 1, 2, '          Google is an American multinational technology company specializing in Internet-related services and products. These include online advertising technologies, search, cloud computing, and software.[5] Most of its profits are derived from AdWords,[6][7] an online advertising service that places advertising near the list of search results. Google is an American multinational technology company specializing in Internet-related services and products. These include online advertising technologies, search, cloud computing, and software.[5] Most of its profits are derived from AdWords,[6][7] an online advertising service that places advertising near the list of search results.                                                                                         Google is an American multinational technology company specializing in Internet-related services and products. These include online advertising technologies, search, cloud computing, and software.[5] Most of its profits are derived from AdWords,[6][7] an online advertising service that places advertising near the list of search results. Google is an American multinational technology company specializing in Internet-related services and products. These include online advertising technologies, search, cloud computing, and software.[5] Most of its profits are derived from AdWords,[6][7] an online advertising service that places advertising near the list of search results.                                                                                         Google is an American multinational technology company specializing in Internet-related services and products. These include online advertising technologies, search, cloud computing, and software.[5] Most of its profits are derived from AdWords,[6][7] an online advertising service that places advertising near the list of search results. Google is an American multinational technology company specializing in Internet-related services and products. These include online advertising technologies, search, cloud computing, and software.[5] Most of its profits are derived from AdWords,[6][7] an online advertising service that places advertising near the list of search results.  Google is an American multinational technology company specializing in Internet-related services and products. These include online advertising technologies, search, cloud computing, and software.[5] Most of its profits are derived from AdWords,[6][7] an online advertising service that places advertising near the list of search results. Google is an American multinational technology company specializing in Internet-related services and products. These include online advertising technologies, search, cloud computing, and software.[5] Most of its profits are derived from AdWords,[6][7] an online advertising service that places advertising near the list of search results.                                                                                         Google is an American multinational technology company specializing in Internet-related services and products. These include online advertising technologies, search, cloud computing, and software.[5] Most of its profits are derived from AdWords,[6][7] an online advertising service that places advertising near the list of search results. Google is an American multinational technology company specializing in Internet-related services and products. These include online advertising technologies, search, cloud computing, and software.[5] Most of its profits are derived from AdWords,[6][7] an online advertising service that places advertising near the list of search results  Google is an American multinational technology company specializing in Internet-related services and products. These include online advertising technologies, search, cloud computing, and software.[5] Most of its profits are derived from AdWords,[6][7] an online advertising service that places advertising near the list of search results. Google is an American multinational technology company specializing in Internet-related services and products. These include online advertising technologies, search, cloud computing, and software.[5] Most of its profits are derived from AdWords,[6][7] an online advertising service that places advertising near the list of search results.', '2016-03-15 12:29:01', '2016-03-17 01:46:00'),
(13, 'Visual Studio 2015', '2016-03-31.png', 1, 5, 'Microsoft Visual Studio is an integrated development environment (IDE) from Microsoft. It is used to develop computer programs for Microsoft Windows, as well as web sites, web applications and web services. Visual Studio uses Microsoft software development platforms such as Windows API, Windows Forms, Windows Presentation Foundation, Windows Store and Microsoft Silverlight. It can produce both native code and managed code.\r\n\r\nVisual Studio includes a code editor supporting IntelliSense (the code completion component) as well as code refactoring. The integrated debugger works both as a source-level debugger and a machine-level debugger. Other built-in tools include a forms designer for building GUI applications, web designer, class designer, and database schema designer. It accepts plug-ins that enhance the functionality at almost every level—including adding support for source-control systems (like Subversion) and adding new toolsets like editors and visual designers for domain-specific languages or toolsets for other aspects of the software development lifecycle (like the Team Foundation Server client: Team Explorer).\r\n\r\nVisual Studio supports different programming languages and allows the code editor and debugger to support (to varying degrees) nearly any programming language, provided a language-specific service exists. Built-in languages include C,[5] C++ and C++/CLI (via Visual C++), VB.NET (via Visual Basic .NET), C# (via Visual C#), and F# (as of Visual Studio 2010[6]). Support for other languages such as M, Python, and Ruby among others is available via language services installed separately. It also supports XML/XSLT, HTML/XHTML, JavaScript and CSS. Java (and J#) were supported in the past.\r\n\r\nBefore Visual Studio 2015, Commercial versions of Visual Studio were available for free to students via Microsoft''s DreamSpark program, when only commercial versions supported plugins.[7] Starting with Visual Studio 2015, Microsoft provides "Community" editions of its Visual Studio at no cost to any one. The Community edition supports installing plugins.', '2016-04-08 04:43:18', '2016-04-08 10:31:30'),
(16, 'dsad', 'sadasd', 22, 3, 'asddddddddddddddddddddddddddddddddddddddddddddddddddddd', '2016-03-23 10:13:07', '2016-03-23 10:13:07'),
(17, 'Android', 'Android', 8, 5, 'Android is a mobile operating system (OS) currently developed by Google, based on the Linux kernel and designed primarily for touchscreen mobile devices such as smartphones and tablets. Android''s user interface is mainly based on direct manipulation, using touch gestures that loosely correspond to real-world actions, such as swiping, tapping and pinching, to manipulate on-screen objects, along with a virtual keyboard for text input. In addition to touchscreen devices, Google has further developed Android TV for televisions, Android Auto for cars, and Android Wear for wrist watches, each with a specialized user interface. Variants of Android are also used on notebooks, game consoles, digital cameras, and other electronics.\r\n\r\nAndroid has the largest installed base of all operating systems of any kind. Android has been the best selling OS on tablets since 2013, and on smartphones it is dominant by any metric.[14][15]', '2016-03-31 10:00:58', '2016-03-31 10:00:58');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Entertainment', NULL, NULL),
(2, 'Politice', NULL, NULL),
(3, 'Si-fi', NULL, NULL),
(4, 'Sports', NULL, NULL),
(5, 'Fashion', NULL, NULL),
(6, 'Food', NULL, NULL),
(7, 'Education', NULL, NULL),
(8, 'Profession', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_03_13_130747_create_articles_table', 2),
('2016_04_01_064426_create_category_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `email_2` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=27 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Akash', 'akash.bubt@gmail.com', '$2y$10$AfRfOBqBlFCvgnecbJEwS.JCcrwjry9UHOS9ssQE1FHsOTLwJjGDC', '35R41ofwW6mBSjEFDRfBJv4jAAjroy01DK19TN0yaptX7lV5hgDDkgpWJ6Kz', '2016-03-13 06:25:25', '2016-04-11 11:48:29'),
(4, 'Akramul', 'akr@mul.com', '$2y$10$InW67vUAFlEzKCDh3xX8quEnstr2U3laewVJMFoOvEIqMoglrdzYK', 'zJlky0HW1XJHIPsKjCRXpmdVYWxpc8FQ5IENYO420cmynQTseeTmZFO01Bdh', '2016-03-14 01:49:06', '2016-04-10 10:41:17'),
(5, 'Anonymous', 'anonymous@bd.com', '$2y$10$NR8s/qsnB7921S0yWJIju.M7/0wk3gYORgZ1H6ylnNy.MBubl67Y6', 'o5L6frJvTGF6TDuomQRJeeyLwg4oSTkStSC7IshXGVvINfY3na7EEie9rSlY', '2016-03-16 01:48:59', '2016-03-16 11:00:15'),
(8, 'rifat', 'rifat@gmail.com', 'rifat', NULL, '2016-04-02 09:43:24', '2016-04-02 09:43:24'),
(22, 'Ajharul Islam barid', 'baridcse@gmail.com', '$2y$10$lhOtbkwYv3YfhEVXf9ddruSiFMjRerKP5mS3hnbgxMBChLJv2emKC', 'UHPKq6COMwCygZvIOr1IglRaw0c5DFX0kTXJqtjfRHkukz8gncoR73m5rxV3', '2016-04-05 07:39:21', '2016-04-05 07:58:57'),
(24, 'Md. Akramul Islam Akash', 'akashakram@outlook.com', '$2y$10$JQEhBZNeqszS8jwD5I84y.kLC3yCfpGkwLIA.6ffklemyfwARd2Be', 'Y5qYGmepXD6inN3d0Wv7b3afMPUJVC7y3vXLiDM5NXFjovUbbSTkd2VzeOGv', '2016-04-05 09:45:40', '2016-04-10 10:39:58');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
