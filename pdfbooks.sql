-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2020 at 08:00 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pdfbooks`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `bookTitle` varchar(255) NOT NULL,
  `bookAuthor` text NOT NULL,
  `bookCat` text NOT NULL,
  `bookCover` varchar(300) NOT NULL,
  `book` varchar(255) NOT NULL,
  `bookContent` varchar(1000) NOT NULL,
  `book,data` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `bookTitle`, `bookAuthor`, `bookCat`, `bookCover`, `book`, `bookContent`, `book,data`) VALUES
(1, 'مالك', 'محمد ابو زهرة', 'كتب دينية', '799_236383.jpg', '54_Abu Zahra.pdf', 'ملخص الكتاب: إلى أصحاب هذة الفطر السليمة من كل جنس ولغة نلفت الانظار لننتفع بهم ، وإلى الدخلاء عليهم من الأدباء المأجورين ، والصحافيين المنحرفين ، وأصحاب الفنون القوادة إلى الخلاعة والعبث نلفت الأنظار كى نحذر على أنفسنا ومستقبلنا ، فقد كثر فى الدنيا من يدعو إلى تعرية الأجسام والأرواح من لباس التقوى والفضيلة باسم أن ذلك عود إلى الطبيعة وتمش مع الفطرة !! والحق أن دور هؤلاء بين الناس هو دور الجراثيم فى إعطاب الثمار وإمراض الابدان ، أى أنهم خطر على الطبيعة الصحيحة والفطرة السليمة', '2020-10-30 18:08:13'),
(2, 'المسام الجديد', 'عبد الكريم بكار', 'كتب دينية', '645_594_المسلم الجديد.jpg', '970_135_المسلم الجديد.pdf', 'ملخص الكتاب: إلى أصحاب هذة الفطر السليمة من كل جنس ولغة نلفت الانظار لننتفع بهم ، وإلى الدخلاء عليهم من الأدباء المأجورين ، والصحافيين المنحرفين ، وأصحاب الفنون القوادة إلى الخلاعة والعبث نلفت الأنظار كى نحذر على أنفسنا ومستقبلنا ، فقد كثر فى الدنيا من يدعو إلى تعرية الأجسام والأرواح من لباس التقوى والفضيلة باسم أن ذلك عود إلى الطبيعة وتمش مع الفطرة !! والحق أن دور هؤلاء بين الناس هو دور الجراثيم فى إعطاب الثمار وإمراض الابدان ، أى أنهم خطر على الطبيعة الصحيحة والفطرة السليمة', '2020-10-30 18:10:24'),
(3, 'الطفل المسلم ', 'محمد ابو زهرة', 'كتب دينية', '492_download.jpg', '372_124_الطفل المسلم.pdf', 'ملخص الكتاب: إلى أصحاب هذة الفطر السليمة من كل جنس ولغة نلفت الانظار لننتفع بهم ، وإلى الدخلاء عليهم من الأدباء المأجورين ، والصحافيين المنحرفين ، وأصحاب الفنون القوادة إلى الخلاعة والعبث نلفت الأنظار كى نحذر على أنفسنا ومستقبلنا ، فقد كثر فى الدنيا من يدعو إلى تعرية الأجسام والأرواح من لباس التقوى والفضيلة باسم أن ذلك عود إلى الطبيعة وتمش مع الفطرة !! والحق أن دور هؤلاء بين الناس هو دور الجراثيم &quot;الفطرية&quot; فى إعطاب الثمار وإمراض الابدان ، أى أنهم خطر على الطبيعة الصحيحة والفطرة السليمة', '2020-10-30 18:13:24'),
(4, ' الرياضة صحة ولياقة بدنية', ':	د. فاروق عبد الوهاب', 'كتب دينية', '216_690_المحاسن والأضداد.jpg', '920_977_المحاسن والأضداد.pdf', 'ملخص الكتاب: إلى أصحاب هذة الفطر السليمة من كل جنس ولغة نلفت الانظار لننتفع بهم ، وإلى الدخلاء عليهم من الأدباء المأجورين ، والصحافيين المنحرفين ، وأصحاب الفنون القوادة إلى الخلاعة والعبث نلفت الأنظار كى نحذر على أنفسنا ومستقبلنا ، فقد كثر فى الدنيا من يدعو إلى تعرية الأجسام والأرواح من لباس التقوى والفضيلة باسم أن ذلك عود إلى الطبيعة وتمش مع الفطرة !! والحق أن دور هؤلاء بين الناس هو دور الجراثيم فى إعطاب الثمار وإمراض الابدان ، أى أنهم خطر على الطبيعة الصحيحة والفطرة السليمة', '2020-10-30 18:21:22'),
(5, 'افراح الروح', 'سيد قطب', 'كتب دينية', '196__.jpg', '435_Ø§ÙØ±Ø§Ø­ Ø§ÙØ±ÙØ­-booksera.net.pdf', 'ملخص الكتاب: إننا نعيش لأنفسنا حياة مضاعفة ، حينما نعيش للآخرين ، وبقدر ما نضاعف إحساسنا بالآخرين ، نضاعف إحساسنا بحياتنا ، ونضاعف هذه الحياة ذاتها في النهاية ! -------عندما نلمس الجانب الطيب في نفوس الناس ، نجد أن هناك خيراً كثيراً ، قد لا تراه العيون أول وهلة !------عندما تنمو في نفوسنا بذور الحب والعطف والخير ، نعفي أنفسنا من أعباء ومشقات كثيرة . إننا لن نكون في حاجة إلى أن نتملق الآخرين ، لأننا سنكون يومئذ صادقين مخلصين ، إذ نزجي إليهم الثناء . إننا سنكشف في نفوسهم عن كنوز من الخير ، وسنجد لهم مزايا طيبة ، نثني عليها حين نثني ونحن صادقون ؛ ولن يعدم إنسان ناحية خيّرة أو مزية حسنة ، تؤهله لكلمة طيبة … ولكننا لا نطلع عليها ولا نراها ، إلا حين تنمو في نفوسنا بذرة الحب-------حين نعتزل الناس ، لأننا نحس أننا أطهر منهم روحاً ، أو أطيب منهم قلباً ، أو أرحب منهم نفساً ، أو أذكى منهم عقلاً ، لا نكون قد صنعنا شيئاً كبيراً … لقد اخترنا لأنفسنا أيسر السبل ، وأقلها مؤونة -------عندما نصل إلى مستوى معين من القدرة ، سنستقبل عون الآخرين لنا بروح الشكر والفرح ... الشكر لما يقدَّمُ لنا من عون .. والف', '2020-10-30 18:24:03');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categorie_name` varchar(255) NOT NULL,
  `categorie_data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categorie_name`, `categorie_data`) VALUES
(1, 'كتب دينية', '2020-10-30 18:05:16'),
(2, 'كتب رياضيه', '2020-10-30 18:15:05');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `adminEmail` varchar(255) NOT NULL,
  `adminPass` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `adminName`, `adminEmail`, `adminPass`) VALUES
(1, 'moo', 'engmostafaaued31@gmail.com', 1234);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
