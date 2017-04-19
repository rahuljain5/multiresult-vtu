-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 24, 2016 at 06:24 PM
-- Server version: 10.1.18-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id239429_resultdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `dept_list`
--

CREATE TABLE `dept_list` (
  `deptid` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `dept` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dept_list`
--

INSERT INTO `dept_list` (`deptid`, `dept`) VALUES
('au', 'automobile engg.'),
('ce', 'civil engg'),
('cs', 'computer science'),
('ec', 'electronics & comm.'),
('is', 'information science'),
('me', 'mechanical engg.');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `usn` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `sem` int(2) NOT NULL,
  `s1` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `s2` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `s3` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `s4` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `s5` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `s6` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `s7` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `s8` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cpa` int(4) DEFAULT NULL,
  `sgpa` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`usn`, `sem`, `s1`, `s2`, `s3`, `s4`, `s5`, `s6`, `s7`, `s8`, `cpa`, `sgpa`) VALUES
('1OX15CS002', 2, 'F', 'F', 'F', 'F', 'F', 'S', 'D', 'P', 28, 1.17),
('1OX15CS003', 2, 'F', 'F', 'E', 'F', 'F', 'S+', 'A', 'P', 52, 2.17),
('1OX15CS004', 2, 'A', 'S', 'S', 'A', 'A', 'S+', 'A', 'P', 204, 8.5),
('1OX15CS005', 2, 'A', 'S', 'S', 'C', 'B', 'S+', 'S+', 'P', 196, 8.17),
('1OX15CS006', 2, 'A', 'A', 'S', 'A', 'A', 'S+', 'S', 'P', 202, 8.42),
('1OX15CS007', 2, 'F', 'F', 'B', 'B', 'F', 'F', 'B', 'P', 70, 2.92),
('1OX15CS008', 2, 'S', 'A', 'A', 'B', 'A', 'S+', 'S+', 'P', 200, 8.33),
('1OX15CS009', 2, 'B', 'B', 'S', 'A', 'C', 'S+', 'S', 'P', 186, 7.75),
('1OX15CS010', 2, 'D', 'D', 'F', 'F', 'F', 'C', 'S', 'P', 70, 2.92),
('1OX15CS011', 2, 'F', 'F', 'C', 'C', 'F', 'C', 'B', 'P', 74, 3.08),
('1OX15CS012', 2, 'B', 'D', 'E', 'E', 'F', 'C', 'S+', 'P', 112, 4.67),
('1OX15CS013', 2, 'A', 'A', 'A', 'S+', 'A', 'S+', 'S+', 'P', 208, 8.67),
('1OX15CS014', 2, 'B', 'A', 'A', 'S+', 'A', 'S+', 'S+', 'P', 204, 8.5),
('1OX15CS015', 2, 'A', 'S', 'S', 'S', 'B', 'S+', 'A', 'P', 204, 8.5),
('1OX15CS016', 2, 'F', 'E', 'F', 'F', 'F', 'F', 'D', 'P', 26, 1.08),
('1OX15CS017', 2, 'F', 'F', 'F', 'F', 'F', 'F', 'F', 'P', 0, 0),
('1OX15CS018', 2, 'F', 'F', 'F', 'F', 'F', 'F', 'D', 'P', 10, 0.42),
('1OX15CS020', 2, 'A', 'A', 'S', 'S+', 'A', 'S+', 'S+', 'P', 212, 8.83),
('1OX15CS021', 2, 'D', 'C', 'D', 'F', 'B', 'F', 'S+', 'P', 112, 4.67),
('1OX15CS022', 2, 'B', 'C', 'E', 'A', 'B', 'A', 'S', 'P', 162, 6.75),
('1OX15CS023', 2, 'F', 'F', 'F', 'F', 'F', 'B', 'A', 'P', 30, 1.25),
('1OX15CS024', 2, 'F', 'F', 'E', 'C', 'F', 'S', 'S', 'P', 76, 3.17),
('1OX15CS025', 2, 'A', 'B', 'A', 'S+', 'B', 'S+', 'S+', 'P', 200, 8.33),
('1OX15CS026', 2, 'C', 'C', 'D', 'C', 'C', 'S+', 'S', 'P', 154, 6.42),
('1OX15CS027', 2, 'C', 'C', 'C', 'S+', 'D', 'S+', 'S+', 'P', 172, 7.17),
('1OX15CS028', 2, 'F', 'E', 'E', 'E', 'F', 'B', 'C', 'P', 74, 3.08),
('1OX15CS029', 2, 'B', 'D', 'D', 'C', 'D', 'S', 'S+', 'P', 150, 6.25),
('1OX15CS031', 2, 'A', 'C', 'B', 'B', 'C', 'A', 'S+', 'P', 172, 7.17),
('1OX15CS032', 2, 'S', 'A', 'S', 'S+', 'S', 'S+', 'S+', 'P', 220, 9.17),
('1OX15CS033', 2, 'A', 'D', 'D', 'S', 'A', 'S+', 'S', 'P', 178, 7.42),
('1OX15CS034', 2, 'F', 'F', 'F', 'E', 'F', 'B', 'B', 'P', 44, 1.83),
('1OX15CS035', 2, 'E', 'C', 'B', 'B', 'C', 'S+', 'S', 'P', 158, 6.58),
('1OX15CS036', 2, 'S', 'S', 'A', 'A', 'S', 'S+', 'S+', 'P', 212, 8.83),
('1OX15IS001', 2, 'B', 'B', 'S', 'B', 'B', 'S+', 'S+', 'P', 188, 7.83),
('1OX15IS002', 2, 'E', 'D', 'A', 'A', 'C', 'S', 'A', 'P', 158, 6.58),
('1OX15IS003', 2, 'S', 'B', 'A', 'B', 'C', 'S', 'S', 'P', 184, 7.67),
('1OX15IS004', 2, 'C', 'C', 'E', 'C', 'F', 'S', 'B', 'P', 120, 5),
('1OX15IS005', 2, 'C', 'B', 'D', 'C', 'F', 'C', 'A', 'P', 124, 5.17),
('1OX15IS006', 2, 'S+', 'A', 'S', 'B', 'B', 'S', 'A', 'P', 198, 8.25),
('1OX15IS007', 2, 'E', 'C', 'F', 'B', 'F', 'C', 'S', 'P', 98, 4.08),
('1OX15IS008', 2, 'B', 'B', 'C', 'C', 'B', 'S', 'S', 'P', 168, 7),
('1OX15IS009', 2, 'F', 'D', 'F', 'F', 'F', 'A', 'B', 'P', 50, 2.08),
('1OX15IS010', 2, 'E', 'C', 'D', 'B', 'C', 'F', 'B', 'P', 126, 5.25),
('1OX15IS011', 2, 'B', 'B', 'B', 'S', 'C', 'S', 'A', 'P', 178, 7.42),
('1OX15IS012', 2, 'F', 'F', 'F', 'S', 'F', 'F', 'C', 'P', 48, 2),
('1OX15IS013', 2, 'C', 'B', 'B', 'A', 'C', 'S', 'S', 'P', 172, 7.17),
('1OX15IS014', 2, 'B', 'C', 'C', 'B', 'D', 'B', 'S', 'P', 156, 6.5),
('1OX15IS015', 2, 'B', 'B', 'C', 'A', 'C', 'S', 'S+', 'P', 174, 7.25),
('1OX15IS016', 2, 'F', 'C', 'D', 'C', 'D', 'S', 'S', 'P', 124, 5.17),
('1OX15IS017', 2, 'F', 'C', 'B', 'A', 'D', 'S', 'S', 'P', 140, 5.83),
('1OX15IS018', 2, 'C', 'B', 'A', 'S+', 'C', 'S+', 'S', 'P', 186, 7.75),
('1OX15IS019', 2, 'S', 'A', 'S', 'S+', 'S', 'S+', 'S+', 'P', 220, 9.17),
('1OX15IS020', 2, 'S', 'B', 'S', 'S', 'A', 'S', 'S', 'P', 204, 8.5),
('1OX15IS021', 2, 'C', 'D', 'C', 'S', 'E', 'S', 'A', 'P', 154, 6.42),
('1OX15IS022', 2, 'F', 'F', 'F', 'F', 'F', 'C', 'S', 'P', 30, 1.25),
('1OX15IS024', 2, 'C', 'A', 'C', 'C', 'C', 'S+', 'S', 'P', 166, 6.92),
('1OX15IS025', 2, 'C', 'E', 'F', 'F', 'F', 'S', 'A', 'P', 74, 3.08),
('1OX15IS026', 2, 'A', 'C', 'C', 'S', 'D', 'S', 'S', 'P', 172, 7.17),
('1OX15IS027', 2, 'D', 'C', 'E', 'S', 'D', 'S', 'S+', 'P', 154, 6.42),
('1OX15IS028', 2, 'A', 'C', 'A', 'S', 'C', 'S', 'S+', 'P', 186, 7.75),
('1OX15IS029', 2, 'F', 'E', 'E', 'F', 'F', 'B', 'A', 'P', 62, 2.58),
('1OX15IS030', 2, 'D', 'B', 'B', 'B', 'D', 'S', 'S+', 'P', 162, 6.75),
('1OX15IS031', 2, 'F', 'C', 'B', 'D', 'E', 'B', 'S+', 'P', 122, 5.08),
('1OX15IS032', 2, 'B', 'B', 'C', 'S', 'C', 'A', 'S', 'P', 174, 7.25),
('1OX15IS033', 2, 'F', 'F', 'F', 'F', 'F', 'C', 'D', 'P', 22, 0.92),
('1OX15IS034', 2, 'D', 'D', 'C', 'B', 'F', 'S', 'B', 'P', 124, 5.17),
('1OX15IS035', 2, 'F', 'F', 'F', 'C', 'F', 'S', 'C', 'P', 54, 2.25),
('1OX15IS036', 2, 'E', 'D', 'C', 'S', 'F', 'A', 'A', 'P', 128, 5.33);

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE `student_details` (
  `usn` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `sname` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`usn`, `sname`) VALUES
('1OX15CS002', 'ABHISHEK KUMAR MISHRA'),
('1OX15CS003', 'ABINESH R'),
('1OX15CS004', 'AFREEN.M'),
('1OX15CS005', 'AISHVARYAA LAKSHMI S.A'),
('1OX15CS006', 'AJAY MOURYA'),
('1OX15CS007', 'AKASH B'),
('1OX15CS008', 'AMAN KUMAR PANDEY'),
('1OX15CS009', 'ANAGHA P.V'),
('1OX15CS010', 'ANIKET KUMAR SINGH'),
('1OX15CS011', 'ANIRUDH REDDY Y'),
('1OX15CS012', 'ANUPRIYA A'),
('1OX15CS013', 'ANURAG.V'),
('1OX15CS014', 'ANVITHA J SHETTY'),
('1OX15CS015', 'APOORVA M R'),
('1OX15CS016', 'ARSALAN AHMED'),
('1OX15CS017', 'ATHARVAN K J'),
('1OX15CS018', 'BASAVARAJ HOSAMANI'),
('1OX15CS020', 'BRUNDHA T R'),
('1OX15CS021', 'CHAITHANYA B'),
('1OX15CS022', 'CHANDAN PARASHURAM NAIK'),
('1OX15CS023', 'CHARAN RAJ P'),
('1OX15CS024', 'CHARITHA.R'),
('1OX15CS025', 'CHETHAN.K'),
('1OX15CS026', 'DHARSHITA N S L V'),
('1OX15CS027', 'DISHA E'),
('1OX15CS028', 'FEBIN.V.MATHEW'),
('1OX15CS029', 'FOUZIYA BANU D'),
('1OX15CS031', 'GENUPULA MAHESH REDDY'),
('1OX15CS032', 'GOWRISHREE.H.L'),
('1OX15CS033', 'GUHAN M S'),
('1OX15CS034', 'H.DHRITHIMANTH PRABHU'),
('1OX15CS035', 'HARISH H'),
('1OX15CS036', 'HEENA KOUSER'),
('1OX15IS001', 'ABHINAV SUMAN A'),
('1OX15IS002', 'ABHISHEK M S'),
('1OX15IS003', 'ADARSH GUPTA'),
('1OX15IS004', 'ADIBA ANJUM'),
('1OX15IS005', 'AFREEN SULTANA S'),
('1OX15IS006', 'AISHWARYA G SHENOY'),
('1OX15IS007', 'AISHWARYA.R'),
('1OX15IS008', 'AKSHATA V KULKARNI'),
('1OX15IS009', 'AKSHAY D CHAVAN'),
('1OX15IS010', 'AKSHAY P SHETTY'),
('1OX15IS011', 'AMALU P'),
('1OX15IS012', 'ANKIT CHOUDHURY'),
('1OX15IS013', 'ANKIT KUMAR MISHRA'),
('1OX15IS014', 'ANSHU AGARWAL'),
('1OX15IS015', 'ARCHANA N'),
('1OX15IS016', 'ASHA TIRLAPUR'),
('1OX15IS017', 'ASHWINI B.S'),
('1OX15IS018', 'AUSTIN EMMANUEL T'),
('1OX15IS019', 'AYUSH SINGH TOMAR'),
('1OX15IS020', 'B M PRAKRUTHI'),
('1OX15IS021', 'BALSON GORAI'),
('1OX15IS022', 'BHARGAVA SRIKAR D J'),
('1OX15IS024', 'BITTY CLEATUS'),
('1OX15IS025', 'C KAVITHA'),
('1OX15IS026', 'CHANDAN H A'),
('1OX15IS027', 'D RAGNI SHATABDA'),
('1OX15IS028', 'DAREL V JOHNY'),
('1OX15IS029', 'DEEKSHITHA.R'),
('1OX15IS030', 'DEEPA D'),
('1OX15IS031', 'DEEPTHI A'),
('1OX15IS032', 'DHANALAKSHMI B J'),
('1OX15IS033', 'DHRUV KUMAR'),
('1OX15IS034', 'DIGVIJAY KHANAPURKAR'),
('1OX15IS035', 'DINESH KUMAR V'),
('1OX15IS036', 'DIVYA V');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `sub_code` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `sub_name` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`sub_code`, `sub_name`) VALUES
('15CED24', 'Computer Aided Engineering Drawing'),
('15CHE22', 'Engineering Chemistry'),
('15CHEL27', 'Engineering Chemistry Lab.'),
('15CIV28', 'Environmental Studies'),
('15CPL26', 'Computer Programming Lab.'),
('15ELN25', 'Basic Electronics'),
('15MAT21', 'Engineering Maths-II'),
('15PCD23', 'Programming in C &amp; Data Structures');

-- --------------------------------------------------------

--
-- Table structure for table `sub_list`
--

CREATE TABLE `sub_list` (
  `deptid` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `sem` int(11) NOT NULL,
  `sub1` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub2` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub3` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub4` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub5` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub6` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub7` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub8` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_list`
--

INSERT INTO `sub_list` (`deptid`, `sem`, `sub1`, `sub2`, `sub3`, `sub4`, `sub5`, `sub6`, `sub7`, `sub8`) VALUES
('cs', 2, '15MAT21', '15CHE22', '15PCD23', '15CED24', '15ELN25', '15CPL26', '15CHEL27', '15CIV28'),
('is', 2, '15MAT21', '15CHE22', '15PCD23', '15CED24', '15ELN25', '15CPL26', '15CHEL27', '15CIV28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dept_list`
--
ALTER TABLE `dept_list`
  ADD PRIMARY KEY (`deptid`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`usn`,`sem`);

--
-- Indexes for table `student_details`
--
ALTER TABLE `student_details`
  ADD PRIMARY KEY (`usn`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`sub_code`);

--
-- Indexes for table `sub_list`
--
ALTER TABLE `sub_list`
  ADD PRIMARY KEY (`deptid`,`sem`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_ibfk_1` FOREIGN KEY (`usn`) REFERENCES `student_details` (`usn`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
