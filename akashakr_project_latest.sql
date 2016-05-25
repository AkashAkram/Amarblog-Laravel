-- phpMyAdmin SQL Dump
-- version 4.6.0
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2016 at 02:19 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akashakr_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no_image.png',
  `author_id` int(255) NOT NULL,
  `category_id` int(255) NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `cover`, `author_id`, `category_id`, `body`, `created_at`, `updated_at`) VALUES
(2, 'Facebook', '', 22, 6, 'Facebook is a corporation and online social networking service headquartered in Menlo Park, California, in the United States. Its website was launched on February 4, 2004, by Mark Zuckerberg with his Harvard College roommates and fellow students Eduardo Saverin, Andrew McCollum, Dustin Moskovitz and Chris Hughes.[8][9][10] The founders had initially limited the website\'s membership to Harvard students, but later expanded it to colleges in the Boston area, the Ivy League, and Stanford University. It gradually added support for students at various other universities and later to high-school students. Since 2006, anyone who is at least 13 years old was allowed to become a registered user of the website, though the age requirement may be higher depending on applicable local laws.[11] Its name comes from the face book directories often given to American university students.[12]\r\n\r\nAfter registering to use the site, users can create a user profile, add other users as "friends", exchange messages, post status updates and photos, share videos, use various apps and receive notifications when others update their profiles. Additionally, users may join common-interest user groups, organized by workplace, school or college, or other characteristics, and categorize their friends into lists such as "People From Work" or "Close Friends". Also users can complain or block unpleasant people. Facebook had over 1.59 billion monthly active users as of August 2015.[7] Because of the large volume of data users submit to the service, Facebook has come under scrutiny for their privacy policies. Facebook, Inc. held its initial public offering in February 2012 and began selling stock to the public three months later, reaching an original peak market capitalization of $104 billion. On July 13, 2015, Facebook became the fastest company in the Standard & Poor\'s 500 Index to reach a market cap of $250 billion.[13] Following its Q3 earnings call in 2015, Facebook\'s market cap soared past $300 billion.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Real Madrid C.F.', 'no_image.png', 4, 4, 'Real Madrid Club de Fútbol (Spanish pronunciation: [reˈal maˈðɾið ˈkluβ ðe ˈfuðβol]; Royal Madrid Football Club), commonly known as Real Madrid, or simply as Real, is a professional football club based in Madrid, Spain.\r\n\r\nFounded in 1902 as Madrid Football Club, the team has traditionally worn a white home kit since inception. The word Real is Spanish for Royal and was bestowed to the club by King Alfonso XIII in 1920 together with the royal crown in the emblem. The team has played its home matches in the 85,454-capacity Santiago Bernabéu Stadium in downtown Madrid since 1947. Unlike most European sporting entities, Real Madrid\'s members (socios) have owned and operated the club throughout its history.\r\n\r\nThe club is the most valuable sports team in the world, worth €2.5 billion ($3.4 billion) and the world\'s highest-earning football club for 2013–14, with an annual revenue of €549.5 million.[5][6][7] The club is one of the most widely supported teams in the world.[8] Real Madrid is one of three founding members of the Primera División that have never been relegated from the top division, along with Athletic Bilbao and Barcelona. The club holds many long-standing rivalries, most notably El Clásico with Barcelona and the El Derbi madrileño with Atlético Madrid.\r\n\r\nReal Madrid established itself as a major force in both Spanish and European football during the 1950s. The club won five consecutive European Cups, and reached the final seven times. This success was replicated in the league, where the club won five times in the space of seven years. This team, which consisted of players such as Di Stéfano, Ferenc Puskás, Gento, Raymond Kopa, and Santamaría, is considered by some in the sport to be the greatest team of all time.[9][10][11][12]\r\n\r\nIn domestic football, the club has won a record 32 La Liga titles, 19 Copa del Rey, 9 Supercopa de España, 1 Copa Eva Duarte, and 1 Copa de la Liga.[13] In international football, the club has won a record 10 European Cup/UEFA Champions League titles and a joint record 3 Intercontinental Cups, as well as 2 UEFA Cups, 2 UEFA Super Cups and a FIFA Club World Cup.\r\n\r\nReal Madrid was recognised as the FIFA Club of the 20th Century on 23 December 2000, and named Best European Club of the 20th Century by the IFFHS on 11 May 2010. The club received the FIFA Centennial Order of Merit in 2004. The club is ranked first in the latest IFFHS Club World Ranking, setting a new ranking-points record.[14] The club also leads the current UEFA club rankings.', '2016-03-14 00:03:57', '2016-03-14 00:03:57'),
(12, 'Google Inc.', 'no_image.png', 1, 2, '          Google is an American multinational technology company specializing in Internet-related services and products. These include online advertising technologies, search, cloud computing, and software.[5] Most of its profits are derived from AdWords,[6][7] an online advertising service that places advertising near the list of search results. Google is an American multinational technology company specializing in Internet-related services and products. These include online advertising technologies, search, cloud computing, and software.[5] Most of its profits are derived from AdWords,[6][7] an online advertising service that places advertising near the list of search results.                                                                                         Google is an American multinational technology company specializing in Internet-related services and products. These include online advertising technologies, search, cloud computing, and software.[5] Most of its profits are derived from AdWords,[6][7] an online advertising service that places advertising near the list of search results. Google is an American multinational technology company specializing in Internet-related services and products. These include online advertising technologies, search, cloud computing, and software.[5] Most of its profits are derived from AdWords,[6][7] an online advertising service that places advertising near the list of search results.                                                                                         Google is an American multinational technology company specializing in Internet-related services and products. These include online advertising technologies, search, cloud computing, and software.[5] Most of its profits are derived from AdWords,[6][7] an online advertising service that places advertising near the list of search results. Google is an American multinational technology company specializing in Internet-related services and products. These include online advertising technologies, search, cloud computing, and software.[5] Most of its profits are derived from AdWords,[6][7] an online advertising service that places advertising near the list of search results.  Google is an American multinational technology company specializing in Internet-related services and products. These include online advertising technologies, search, cloud computing, and software.[5] Most of its profits are derived from AdWords,[6][7] an online advertising service that places advertising near the list of search results. Google is an American multinational technology company specializing in Internet-related services and products. These include online advertising technologies, search, cloud computing, and software.[5] Most of its profits are derived from AdWords,[6][7] an online advertising service that places advertising near the list of search results.                                                                                         Google is an American multinational technology company specializing in Internet-related services and products. These include online advertising technologies, search, cloud computing, and software.[5] Most of its profits are derived from AdWords,[6][7] an online advertising service that places advertising near the list of search results. Google is an American multinational technology company specializing in Internet-related services and products. These include online advertising technologies, search, cloud computing, and software.[5] Most of its profits are derived from AdWords,[6][7] an online advertising service that places advertising near the list of search results  Google is an American multinational technology company specializing in Internet-related services and products. These include online advertising technologies, search, cloud computing, and software.[5] Most of its profits are derived from AdWords,[6][7] an online advertising service that places advertising near the list of search results. Google is an American multinational technology company specializing in Internet-related services and products. These include online advertising technologies, search, cloud computing, and software.[5] Most of its profits are derived from AdWords,[6][7] an online advertising service that places advertising near the list of search results.', '2016-03-15 06:29:01', '2016-03-16 19:46:00'),
(13, 'Visual Studio 2015', 'no_image.png', 1, 5, 'Microsoft Visual Studio is an integrated development environment (IDE) from Microsoft. It is used to develop computer programs for Microsoft Windows, as well as web sites, web applications and web services. Visual Studio uses Microsoft software development platforms such as Windows API, Windows Forms, Windows Presentation Foundation, Windows Store and Microsoft Silverlight. It can produce both native code and managed code.\r\n\r\nVisual Studio includes a code editor supporting IntelliSense (the code completion component) as well as code refactoring. The integrated debugger works both as a source-level debugger and a machine-level debugger. Other built-in tools include a forms designer for building GUI applications, web designer, class designer, and database schema designer. It accepts plug-ins that enhance the functionality at almost every level—including adding support for source-control systems (like Subversion) and adding new toolsets like editors and visual designers for domain-specific languages or toolsets for other aspects of the software development lifecycle (like the Team Foundation Server client: Team Explorer).\r\n\r\nVisual Studio supports different programming languages and allows the code editor and debugger to support (to varying degrees) nearly any programming language, provided a language-specific service exists. Built-in languages include C,[5] C++ and C++/CLI (via Visual C++), VB.NET (via Visual Basic .NET), C# (via Visual C#), and F# (as of Visual Studio 2010[6]). Support for other languages such as M, Python, and Ruby among others is available via language services installed separately. It also supports XML/XSLT, HTML/XHTML, JavaScript and CSS. Java (and J#) were supported in the past.\r\n\r\nBefore Visual Studio 2015, Commercial versions of Visual Studio were available for free to students via Microsoft\'s DreamSpark program, when only commercial versions supported plugins.[7] Starting with Visual Studio 2015, Microsoft provides "Community" editions of its Visual Studio at no cost to any one. The Community edition supports installing plugins.', '2016-04-07 22:43:18', '2016-04-08 04:31:30'),
(16, 'dsad', 'no_image.png', 22, 3, 'asddd ddd dddddd ddddd ddddd ddddd ddddd dddddddd ddd dddd ddd ddd.', '2016-03-23 04:13:07', '2016-03-23 04:13:07'),
(17, 'Android', 'no_image.png', 8, 5, 'Android is a mobile operating system (OS) currently developed by Google, based on the Linux kernel and designed primarily for touchscreen mobile devices such as smartphones and tablets. Android\'s user interface is mainly based on direct manipulation, using touch gestures that loosely correspond to real-world actions, such as swiping, tapping and pinching, to manipulate on-screen objects, along with a virtual keyboard for text input. In addition to touchscreen devices, Google has further developed Android TV for televisions, Android Auto for cars, and Android Wear for wrist watches, each with a specialized user interface. Variants of Android are also used on notebooks, game consoles, digital cameras, and other electronics.\r\n\r\nAndroid has the largest installed base of all operating systems of any kind. Android has been the best selling OS on tablets since 2013, and on smartphones it is dominant by any metric.[14][15]', '2016-03-31 04:00:58', '2016-03-31 04:00:58'),
(19, 'New Post', 'no_image.png', 27, 5, 'rfeiojh eiofjeiopj meiofm ofo rfeiojh eiofjeiopj meiofm ofo rfeiojh eiofjeiopj meiofm ofo rfeiojh eiofjeiopj meiofm ofo rfeiojh eiofjeiopj meiofm ofo rfeiojh eiofjeiopj meiofm ofo rfeiojh eiofjeiopj meiofm ofo rfeiojh eiofjeiopj meiofm ofo  jkbh rfeiojh eiofjeiopj meiofm ofo rfeiojh eiofjeiopj meiofm ofo rfeiojh eiofjeiopj meiofm ofo rfeiojh eiofjeiopj meiofm ofo rfeiojh eiofjeiopj meiofm ofo rfeiojh eiofjeiopj meiofm ofo rfeiojh eiofjeiopj meiofm ofo rfeiojh eiofjeiopj meiofm ofo rfeiojh eiofjeiopj meiofm ofo rfeiojh eiofjeiopj meiofm ofo rfeiojh eiofjeiopj meiofm ofo rfeiojh eiofjeiopj meiofm ofo rfeiojh eiofjeiopj meiofm ofo rfeiojh eiofjeiopj meiofm ofo rfeiojh eiofjeiopj meiofm ofo ', '2016-04-18 11:42:21', '2016-04-18 11:42:51'),
(21, 'বাংলাদেশ', 'no_image.png', 4, 9, 'বাংলাদেশ (এই শব্দ সম্পর্কে শুনুন (সাহায্য·তথ্য)) দক্ষিণ এশিয়ার একটি জনবহুল রাষ্ট্র। বাংলাদেশের সাংবিধানিক নাম গণপ্রজাতন্ত্রী বাংলাদেশ। ভূ-রাজনৈতিকভাবে বাংলাদেশের পশ্চিম, উত্তর ও পূর্ব সীমান্তে ভারত, দক্ষিণ-পূর্ব সীমান্তে মায়ানমার ও দক্ষিণ উপকূলের দিকে বঙ্গোপসাগর অবস্থিত। বাংলাদেশের ভূখণ্ড ভৌগোলিকভাবে একটি উর্বর ব-দ্বীপের অংশ বিশেষ। পার্শ্ববর্তী দেশের রাজ্য পশ্চিমবঙ্গ ও ত্রিপুরা-সহ বাংলাদেশ একটি ভৌগোলিকভাবে জাতিগত ও ভাষাগত "বঙ্গ" অঞ্চলটির মানে পূর্ণ করে। "বঙ্গ" ভূখণ্ডের পূর্বাংশের অংশ পূর্ব বাংলা নামে পরিচিত, যা বর্তমানে বাংলাদেশ নামের দেশ। পৃথিবীতে যে ক\'টি রাষ্ট্র জাতিরাষ্ট্র হিসেবে মর্যাদা পায় তার মধ্যে বাংলাদেশ অন্যতম।\r\n\r\nবাংলাদেশের বর্তমান সীমান্ত তৈরি হয়েছিল ১৯৪৭ খ্রিস্টাব্দে যখন ব্রিটিশ ঔপনিবেশিক শাসনাবসানে, বঙ্গ (বেঙ্গল প্রেসিডেন্সি) এবং ব্রিটিশ ভারত বিভাজন করা হয়েছিল। বিভাজনের পরে বর্তমান বাংলাদেশের অঞ্চল তখন পূর্ব বাংলা নামে পরিচিত, যেটি নবগঠিত দেশ পাকিস্তানের পূর্ব অঞ্চল হিসেবে প্রতিষ্ঠিত করা হয়েছিল। পাকিস্তান অধিরাজ্যে থাকাকালীন "পূর্ব বাংলা" থেকে "পূর্ব পাকিস্তান"-এ নামটি পরিবর্তিত করা হয়েছিল। শোষণ, বৈষম্য ও নিপীড়নের বিরুদ্ধে সশস্ত্র সংগ্রামের মধ্য দিয়ে ১৯৭১ খ্রিস্টাব্দে বাংলাদেশ একটি স্বাধীন ও সার্বভৌম দেশ হিসাবে প্রতিষ্ঠিত হয়। স্বাধীনতা পরবর্তী সময়ে দারিদ্র্যপীড়িত বাংলাদেশে বিভিন্ন সময় ঘটেছে দুর্ভিক্ষ ও প্রাকৃতিক দুর্যোগ; এছাড়াও প্রলম্বিত রাজনৈতিক অস্থিতিশীলতা ও পুনঃপৌনিক সামরিক অভ্যুত্থান এদেশের রাজনৈতিক সামগ্রিক স্থিতিশীলতা বারংবার ব্যাহত করেছে। গণসংগ্রামের মধ্য দিয়ে ১৯৯১ খ্রিস্টাব্দে গণতান্ত্রিক শাসনব্যবস্থা পুনঃপ্রতিষ্ঠিত হয়েছে যার ধারাবাহিকতা অদ্যাবধি বর্তমান। সকল প্রতিকূলতা সত্বেও গত দুই দশকে বাংলাদেশের অর্থনীতি প্রগতি ও সমৃদ্ধি সারা বিশ্বে স্বীকৃতি লাভ করেছে।\r\n\r\nবিশ্বের সবচেয়ে জনবহুল দেশগুলোর তালিকায় বাংলাদেশের অবস্থান অষ্টম যদিও আয়তনের হিসেবে বাংলাদেশ বিশ্বে ৯৪তম; ফলে বাংলাদেশ বিশ্বের সবচেয়ে ঘনবসতিপূর্ণ দেশগুলোর নবম। মাত্র ৫৬ হাজার বর্গমাইলেরও কম এই ক্ষুদ্রায়তন দেশের বর্তমান জনসংখ্যা ১৫.৫৯ কোটির বেশী অর্থাৎ প্রতি বর্গমাইলে জনবসতি ২৪৯৭ জন। [৭]\r\n\r\nজনসংখ্যার ৯৮ শতাংশ মানুষের মাতৃভাষা বাংলা; শিক্ষার হার ৬৫ শতাংশ। ২০১২-১৩ অর্থবছরে বাংলাদেশের মোট দেশজ উৎপাদনের (জিডিপি) পরিমাণ ছিল ১১,৯৮,৯২৩ কোটি টাকা (চলতি বাজারমূল্যে) যা ২০১৩-১৪ অর্থবছরে বৃদ্ধি লাভ করে ১৩,৫০,৯২০ টাকায় উন্নীত হয়েছে। একই সঙ্গে জনগণের মাথাপিছু বার্ষিক আয় পূর্ববর্তী বৎসরের ১,০৪৪ মার্কিন ডলার থেকে বৃদ্ধি পেয়ে ২০১৩-১৪ অর্থবছরে ১,১৯০ মার্কিন ডলারে উন্নীত হয়েছে মর্মে সরকারী প্রাক্কলন করা হয়েছে, টাকার অঙ্কে যার পরিমাণ ৯২,৫১০ টাকা।[৮] দারিদ্রের হার ২৬.২০ শতাংশ, অতিদরিদ্র মানুষের সংখ্যা ১১.৯০ শতাংশ, এবং বার্ষিক দারিদ্র হ্রাসের হার ১.৫ শতাংশ। এই উন্নয়নশীল দেশটি প্রায় দুই দশক যাবৎ বার্ষিক ৫ থেকে ৬.২ শতাংশ হারে অর্থনৈতিক প্রবৃদ্ধির অর্জনপূর্বক "পরবর্তী একাদশ" অর্থনীতিসমূহের তালিকায় স্থান করে নিয়েছে। রাজধানী ঢাকা ও অন্যান্য শহরের পরিবর্ধন বাংলাদেশের এই উন্নতির চালিকাশক্তিরূপে কাজ করছে। এর কেন্দ্রবিন্দুতে কাজ করেছে একটি উচ্চাকাঙ্ক্ষী মধ্যবিত্ত শ্রেণীর ত্বরিৎ বিকাশ এবং একটি সক্ষম ও সক্রিয় উদ্যোক্তা শ্রেণীর আর্বিভাব। বাংলাদেশের রপ্তানীমুখী পোশাক শিল্প সারা বিশ্বে বিশেষভাবে প্রসিদ্ধ। জনশক্তি রপ্তানীও দেশটির অন্যতম অর্থনৈতিক হাতিয়ার।\r\n\r\nগঙ্গা-ব্রহ্মপুত্রের উর্বর অববাহিকায় অবস্থিত এই দেশটিতে প্রায় প্রতি বছর মৌসুমী বন্যা হয়; আর ঘূর্ণিঝড়ও খুব সাধারণ ঘটনা। নিম্ন আয়ের এই দেশটির প্রধান সমস্যা পরিব্যাপ্ত দারিদ্র গত দুই দশকে অনেকাংশে নিয়ন্ত্রণে এসেছে সাক্ষরতার হার বৃদ্ধি পেয়েছে দ্রুত, জন্ম নিয়ন্ত্রণ কার্যক্রমে অর্জিত হয়েছে অভূতপূর্ব সফলতা। এছাড়া আন্তর্জাতিক মানব সম্পদ উন্নয়ন সূচকে বাংলাদেশ দৃষ্টান্তমূলক অগ্রগতি অর্জনে সক্ষম হয়েছে।[৯], তবে বাংলাদেশে এখনো বেশ কিছু গুরুত্বপূর্ণ চ্যালেঞ্জ মোকাবেলা করছে যার মধ্যে রয়েছে পরিব্যাপ্ত রাজনৈতিক ও প্রশাসনিক দুর্নীতি, বিশ্বায়নের প্রেক্ষাপটে অর্থনৈতিক প্রতিযোগিতা এবং জলবায়ু পরিবর্তনের ফলে সমুদ্রতলের উচ্চতা বৃদ্ধির ফলশ্রুতিতে তলিয়ে যাবার শঙ্কা। এছাড়া একটি সর্বগ্রহণযোগ্য নির্বাচন ব্যবস্থার রূপ নিয়ে নতুন ভাবে সামাজিক বিভাজনের সৃষ্টি হয়েছে।\r\n\r\nবাংলাদেশে সংসদীয় গণতান্ত্রিক সরকার ব্যবস্থা প্রচলিত। বাংলাদেশ দক্ষিণ এশীয় আঞ্চলিক সহযোগিতা সংস্থা ও বিমসটেক-এর প্রতিষ্ঠাতা সদস্য। এছাড়া দেশটি জাতিসংঘ, বিশ্ব বাণিজ্য সংস্থা, বিশ্ব শুল্ক সংস্থা, কমনওয়েলথ অফ নেশনস, উন্নয়নশীল ৮টি দেশ, জোট-নিরপেক্ষ আন্দোলন, ওআইসি, ইত্যাদি আন্তর্জাতিক সংঘের সক্রিয় সদস্য।\r\n', '2016-04-21 13:17:57', '2016-04-21 13:17:57'),
(43, 'new 3', 'no_image.png', 29, 2, 'ddd', '2016-05-24 02:28:14', '2016-05-24 03:12:57'),
(44, 'No image', 'no_image.png', 29, 7, 'No Image', '2016-05-24 03:16:34', '2016-05-24 03:16:34'),
(45, 'Akash Akram', 'no_image.png', 29, 1, ',j', '2016-05-24 03:18:10', '2016-05-24 03:18:10'),
(46, 'Result !!!', 'result-1.JPG', 29, 7, 'Spring 2016', '2016-05-24 03:21:51', '2016-05-25 06:11:25');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Entertainment', NULL, NULL),
(2, 'Politics', NULL, NULL),
(3, 'Sci-fi', NULL, NULL),
(4, 'Sports', NULL, NULL),
(5, 'Fashion', NULL, NULL),
(6, 'Food', NULL, NULL),
(7, 'Education', NULL, NULL),
(8, 'Professional', NULL, NULL),
(9, 'Travel', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
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

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'user',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Akash', 'user', 'akash.bubt@gmail.com', '$2y$10$cBlPt7nOASTuBD.IXSxEresa9Ibr4NVDme.nah3e3pA8gEnd4ROTi', '35R41ofwW6mBSjEFDRfBJv4jAAjroy01DK19TN0yaptX7lV5hgDDkgpWJ6Kz', '2016-03-13 00:25:25', '2016-04-11 05:48:29'),
(4, 'Akramul', 'user', 'akash@gmail.com', '$2y$10$cBlPt7nOASTuBD.IXSxEresa9Ibr4NVDme.nah3e3pA8gEnd4ROTi', '0b5uAEhLx0LcdKenRB7s4443ovicyEyT3pdRTyaRdalasA40VHKoLR89R5d7', '2016-03-13 19:49:06', '2016-04-19 16:05:29'),
(5, 'Anonymous', 'user', 'anonymous@bd.com', '$2y$10$cBlPt7nOASTuBD.IXSxEresa9Ibr4NVDme.nah3e3pA8gEnd4ROTi', 'o5L6frJvTGF6TDuomQRJeeyLwg4oSTkStSC7IshXGVvINfY3na7EEie9rSlY', '2016-03-15 19:48:59', '2016-03-16 05:00:15'),
(8, 'rifat', 'user', 'rifat@gmail.com', '$2y$10$cBlPt7nOASTuBD.IXSxEresa9Ibr4NVDme.nah3e3pA8gEnd4ROTi', NULL, '2016-04-02 03:43:24', '2016-04-02 03:43:24'),
(22, 'Ajharul Islam barid', 'user', 'baridcse@gmail.com', '$2y$10$cBlPt7nOASTuBD.IXSxEresa9Ibr4NVDme.nah3e3pA8gEnd4ROTi', 'UHPKq6COMwCygZvIOr1IglRaw0c5DFX0kTXJqtjfRHkukz8gncoR73m5rxV3', '2016-04-05 01:39:21', '2016-04-05 01:58:57'),
(24, 'Md. Akramul Islam Akash', 'user', 'akashakram@outlook.com', '$2y$10$cBlPt7nOASTuBD.IXSxEresa9Ibr4NVDme.nah3e3pA8gEnd4ROTi', 'Y5qYGmepXD6inN3d0Wv7b3afMPUJVC7y3vXLiDM5NXFjovUbbSTkd2VzeOGv', '2016-04-05 03:45:40', '2016-04-10 04:39:58'),
(27, 'Rahat', 'user', 'rahat@gmail.com', '$2y$10$cBlPt7nOASTuBD.IXSxEresa9Ibr4NVDme.nah3e3pA8gEnd4ROTi', NULL, '2016-04-18 11:41:20', '2016-04-18 11:41:20'),
(28, 'as', 'user', 'as@as.com', '$2y$10$cBlPt7nOASTuBD.IXSxEresa9Ibr4NVDme.nah3e3pA8gEnd4ROTi', 'INS6Uqc2C0pCgMuZTXevHD3FTBqZbNn7oh3mZsNSlYkzWk6XI5KSh0Glt8N1', '2016-04-19 08:03:25', '2016-04-19 08:03:34'),
(29, 'root', 'user', 'root@root.com', '$2y$10$cBlPt7nOASTuBD.IXSxEresa9Ibr4NVDme.nah3e3pA8gEnd4ROTi', 'ChWGgvzTAo4210lG0YWFbXVrgGfOqwMi3sVDDPktOtFnM67Hc8zVwTZrJrsX', '2016-05-23 00:35:21', '2016-05-24 01:32:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
