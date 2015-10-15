-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2015 at 09:37 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `eeshdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `_answer`
--

CREATE TABLE IF NOT EXISTS `_answer` (
`Id` int(11) NOT NULL,
  `Answer` text NOT NULL,
  `Alphabet` varchar(1) NOT NULL,
  `QuestionId` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_answer`
--

INSERT INTO `_answer` (`Id`, `Answer`, `Alphabet`, `QuestionId`) VALUES
(1, 'Нийгэмшил нь хүүхэд эхийн хэвлийд олдсон үеэс эхлэл нь тавигддаг', 'A', 1),
(2, 'Нийгэмшил нь нярай үеэс эхлэл нь тавигддаг ', 'B', 1),
(3, 'Нийгэмшил нь хүүхэд хэлд орсноор эхлэл нь тавигддаг ', 'C', 1),
(4, 'Нийгэмшил нь идэр наснаас эхлэл нь тавигддаг', 'D', 1),
(5, 'Нийгэмшил нь ахмад үеэс эхлэл нь тавигддаг', 'E', 1),
(6, ' Боловсролын түвшин', 'A', 2),
(7, 'Хэлний мэдлэг', 'B', 2),
(8, 'Гэр бүлийн орчин', 'C', 2),
(9, 'Хамт олны хүрээлэл', 'D', 2),
(10, 'Нутаг дэвсгэрийн хэмжээ', 'E', 2),
(11, 'Нийгмийн дэвшил', 'A', 3),
(12, 'Нийгмийн шинэтгэл', 'B', 3),
(13, 'Нийгмийн шинэчлэл ', 'C', 3),
(14, 'Нийгмийн хувьсал', 'D', 3),
(15, 'Нийгмийн хувьсгал', 'E', 3),
(16, 'Бие хүн', 'A', 4),
(17, 'Хувь хүн', 'B', 4),
(18, 'Суут хүн', 'C', 4),
(19, 'Авьяастай хүн', 'D', 4),
(20, 'Онцгой хүн', 'E', 4),
(21, 'Хүн өөрийн овог удмаа мэддэг болох', 'A', 5),
(22, 'Бичиг баримт бүрдүүлж, хөтөлж сурах', 'B', 5),
(23, 'Нэр хүндээ дээшлүүлэх', 'C', 5),
(24, 'Эд баялаг, өмч хөрөнгөтэй болох', 'D', 5),
(25, 'Иргэний үнэмлэх авах', 'E', 5),
(26, 'Маркс, Энгельс', 'A', 6),
(27, 'И.Кант, Гегель', 'B', 6),
(28, 'Аристотель, Платон', 'C', 6),
(29, 'Агваанбалдан , Агваанхайдав', 'D', 6),
(30, 'Монтескье, Декарт', 'E', 6),
(31, 'Иргэний нийгмийн хэлбэр мөн', 'A', 7),
(32, 'Иргэний нийгмийн хэлбэр биш', 'B', 7),
(33, 'Тухайн нөхцөл байдлаас хамаарна', 'C', 7),
(34, 'Дарангуйлагчийн эсрэг хөдөлгөөн', 'D', 7),
(35, 'С ба D хариулт', 'E', 7),
(36, 'Журамт үүрэг', 'A', 8),
(37, 'Үндсэн үүрэг', 'B', 8),
(38, 'Үндсэн эрх', 'C', 8),
(39, 'Иргэний эрх', 'D', 8),
(40, 'Ийм заалт байхгүй', 'E', 8),
(41, 'Оршин тогтнож буй цаг хугацаа', 'A', 9),
(42, 'Тухайн нийгмийн хамарсан хүрээ', 'B', 9),
(43, 'Хөгжлийн үндэс', 'C', 9),
(44, 'Ноёрхогч нийгмийн бүлэг', 'D', 9),
(45, 'Хүн амын тоо , нягтшил', 'E', 9),
(46, 'Хэм хэмжээ нь улс орон бүрт адил байна', 'A', 10),
(47, 'Хэм хэмжээ нь улс орон бүрт өөр өөр байна', 'B', 10),
(48, 'Хэм хэмжээ нь улс орон бүрт тогтмол байна', 'C', 10),
(49, 'Хэм хэмжээ нь улс орон бүрт давтагдаж байна', 'D', 10),
(50, 'Зөв бодомж алга . Дээрх бүгд буруу', 'E', 10);

-- --------------------------------------------------------

--
-- Table structure for table `_correctanswer`
--

CREATE TABLE IF NOT EXISTS `_correctanswer` (
`Id` int(11) NOT NULL,
  `QuestionId` int(11) NOT NULL,
  `AnswerId` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_correctanswer`
--

INSERT INTO `_correctanswer` (`Id`, `QuestionId`, `AnswerId`) VALUES
(1, 1, 1),
(2, 2, 10),
(3, 3, 15),
(4, 4, 17),
(5, 5, 21),
(6, 6, 27),
(7, 7, 31),
(8, 8, 37),
(9, 9, 43),
(10, 10, 47);

-- --------------------------------------------------------

--
-- Table structure for table `_questions`
--

CREATE TABLE IF NOT EXISTS `_questions` (
`Id` int(11) NOT NULL,
  `Number` int(11) NOT NULL,
  `Score` double NOT NULL,
  `YearOfVariantId` int(11) NOT NULL,
  `SectionId` int(11) NOT NULL,
  `LessonId` int(11) NOT NULL,
  `Question` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_questions`
--

INSERT INTO `_questions` (`Id`, `Number`, `Score`, `YearOfVariantId`, `SectionId`, `LessonId`, `Question`) VALUES
(1, 1, 1, 1, 1, 1, 'Аль бодомж нь зөв бэ?'),
(2, 2, 1, 1, 1, 1, 'Аль нь нийгэмшлийн хүчин зүйлүүдэд шууд хамаарагдахгүй вэ? '),
(3, 3, 1, 1, 1, 1, '1990 оноос Монголын нийгмийн харилцаанд эрс шинэчлэлт хийгдэн, хүмүүсийн амьдрах аргад томоохон өөрчлөлт гарч байгаа нь: '),
(4, 4, 1, 1, 1, 1, 'Сурагч Бат өндөр нуруутай , хар үстэй бөгөөд сагсан бөмбөг сайн тоглодог . Батын эдгээр шинж нь ямар\r\nойлголтонд хамаарагдах вэ'),
(5, 5, 1, 1, 1, 1, '“Ургийн бичиг” хөтлөхийн гол ач холбогдол нь:'),
(6, 6, 1, 1, 1, 1, 'Иргэний нийгмийн тухай сонгодог ойлголтыг ямар сэтгэгчид дэвшүүлэн тавьсан бэ?'),
(7, 7, 1, 1, 1, 1, 'Сонирхлын бүлэгт хамаарах нь аль вэ?'),
(8, 8, 2, 1, 1, 1, 'Монгол улсын Үндсэн хуулинд “хуулиар ноогдуулсан албан татвар төлөх үүрэгтэй ” гэж заасан байдаг нь\r\nМонгол улсын иргэний:'),
(9, 9, 2, 1, 1, 1, 'Аж үйлдвэржсэн ба аж үйлдвэржсэний дараах нийгмийн үндсэн ялгааг олно уу. '),
(10, 10, 1, 1, 1, 1, 'Аль бодомж нь зөв бэ?');

-- --------------------------------------------------------

--
-- Table structure for table `_user`
--

CREATE TABLE IF NOT EXISTS `_user` (
`Id` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `UserTypeId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `_yearofvariant`
--

CREATE TABLE IF NOT EXISTS `_yearofvariant` (
`Id` int(11) NOT NULL,
  `LessonId` int(11) NOT NULL,
  `YearId` int(11) NOT NULL,
  `VariantId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `_answer`
--
ALTER TABLE `_answer`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `_correctanswer`
--
ALTER TABLE `_correctanswer`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `_questions`
--
ALTER TABLE `_questions`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `_user`
--
ALTER TABLE `_user`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `_yearofvariant`
--
ALTER TABLE `_yearofvariant`
 ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `_answer`
--
ALTER TABLE `_answer`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `_correctanswer`
--
ALTER TABLE `_correctanswer`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `_questions`
--
ALTER TABLE `_questions`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `_user`
--
ALTER TABLE `_user`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_yearofvariant`
--
ALTER TABLE `_yearofvariant`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
