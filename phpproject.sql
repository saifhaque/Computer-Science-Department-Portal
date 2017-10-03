-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2017 at 01:09 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `phpproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_master`
--

CREATE TABLE IF NOT EXISTS `admin_master` (
  `UserId` varchar(50) DEFAULT NULL,
  `JoiningYear` int(11) DEFAULT NULL,
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_master`
--

INSERT INTO `admin_master` (`UserId`, `JoiningYear`) VALUES
('aayush5@gmail.com', 1995),
('amit3@gmail.com', 2002),
('anmol1@gmail.com', 2000),
('vaibhav2@gmail.com', 2005),
('anshumat4@gmail.com', 2010);

-- --------------------------------------------------------

--
-- Table structure for table `faculty_master`
--

CREATE TABLE IF NOT EXISTS `faculty_master` (
  `UserId` varchar(50) DEFAULT NULL,
  `Department` varchar(30) DEFAULT NULL,
  `Degree` varchar(20) DEFAULT NULL,
  `JoiningYear` int(11) DEFAULT NULL,
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_master`
--

INSERT INTO `faculty_master` (`UserId`, `Department`, `Degree`, `JoiningYear`) VALUES
('ankur3@gmail.com', 'Computer Science', 'Mtech CSE', 1995),
('varshney2@gmail.com', 'Computer Science', 'Mtech CSE', 2000),
('prabhat5@gmail.com', 'Computer Science', 'Mtech CSE', 2002),
('parminder4@gmail.com', 'Computer Science', 'Mtech CSE', 2005),
('archna1@gmail.com', 'Computer Science', 'Mtech CSE', 2010);

-- --------------------------------------------------------

--
-- Table structure for table `faculty_personal_master`
--

CREATE TABLE IF NOT EXISTS `faculty_personal_master` (
  `UserId` varchar(50) DEFAULT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `DOB` int(11) DEFAULT NULL,
  `MobNumber` decimal(10,0) DEFAULT NULL,
  `Gender` varchar(6) DEFAULT NULL,
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_personal_master`
--

INSERT INTO `faculty_personal_master` (`UserId`, `Name`, `DOB`, `MobNumber`, `Gender`) VALUES
('prabhat5@gmail.com', 'Prabhat Ojha', 8081987, '7766900566', 'Male'),
('parminder4@gmail.com', 'Parminder Chopra', 15031985, '8130176988', 'Male'),
('ankur3@gmail.com', 'Ankur Sharma', 10101985, '9599829605', 'Male'),
('varshney2@gmail.com', 'Varshney', 26051982, '9958052928', 'Male'),
('archna1@gmail.com', 'Archna Deepak', 19051982, '8384810964', 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `login_master`
--

CREATE TABLE IF NOT EXISTS `login_master` (
  `UserId` varchar(50) NOT NULL,
  `Password` varchar(30) DEFAULT NULL,
  `Status` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_master`
--

INSERT INTO `login_master` (`UserId`, `Password`, `Status`) VALUES
('aayush5@gmail.com', 'aayush123', 'Admin'),
('amit3@gmail.com', 'amit123', 'Admin'),
('ankur3@gmail.com', 'ankur123', 'Faclt'),
('anmol1@gmail.com', 'anmol123', 'Admin'),
('anshumat4@gmail.com', 'anshumat123', 'Admin'),
('archna1@gmail.com', 'archna123', 'Faclt'),
('debuu@gmail.com', '10debuu10', 'Studn'),
('haque.saif1905@gmail.com', '19saif05', 'Studn'),
('jigyasaanant20@gmail.com', '08jigyasa12', 'Studn'),
('parminder4@gmail.com', 'parminder123', 'Faclt'),
('prabhat5@gmail.com', 'prabhat123', 'Faclt'),
('raghav1503@gmail.com', '15raghav03', 'Studn'),
('satvik2605@gmail.com', '26satvik05', 'Studn'),
('vaibhav2@gmail.com', 'vaibhav123', 'Admin'),
('varshney2@gmail.com', 'varshney123', 'Faclt');

-- --------------------------------------------------------

--
-- Table structure for table `notice_master`
--

CREATE TABLE IF NOT EXISTS `notice_master` (
  `UserId` varchar(50) DEFAULT NULL,
  `Title` varchar(30) DEFAULT NULL,
  `Content` varchar(30) DEFAULT NULL,
  `Type` varchar(8) DEFAULT NULL,
  `Date` int(11) DEFAULT NULL,
  `DocPath` varchar(150) DEFAULT NULL,
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_academic_master`
--

CREATE TABLE IF NOT EXISTS `student_academic_master` (
  `UserId` varchar(50) DEFAULT NULL,
  `AcdAchvmt` varchar(150) DEFAULT NULL,
  `Sports` varchar(150) DEFAULT NULL,
  `Cultural` varchar(150) DEFAULT NULL,
  `Others` varchar(150) DEFAULT NULL,
  `Graduation` int(11) DEFAULT NULL,
  `Inter` int(11) DEFAULT NULL,
  `HighSchool` int(11) DEFAULT NULL,
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_academic_master`
--

INSERT INTO `student_academic_master` (`UserId`, `AcdAchvmt`, `Sports`, `Cultural`, `Others`, `Graduation`, `Inter`, `HighSchool`) VALUES
('debuu@gmail.com', '9.5 CGPA', 'Captain of Football Team ', 'None', 'None', 2018, 2014, 2012),
('haque.saif1905@gmail.com', 'Computer Science Branch Topper', 'none', 'Vice President of Music Society', 'none', 2020, 2016, 2014),
('jigyasaanant20@gmail.com', '9 CGPA', 'none', 'President of Kathak Society', 'none', 2020, 2016, 2014),
('raghav1503@gmail.com', '9.5 CGPA', 'none', 'President of TEDx Society', 'none', 2020, 2016, 2014),
('satvik2605@gmail.com', '9 CGPA', 'none', 'President of Pratibimb', 'none', 2021, 2016, 2014);

-- --------------------------------------------------------

--
-- Table structure for table `student_master`
--

CREATE TABLE IF NOT EXISTS `student_master` (
  `UserId` varchar(50) DEFAULT NULL,
  `RollNo` int(11) DEFAULT NULL,
  `Batch` int(11) DEFAULT NULL,
  `Branch` varchar(30) DEFAULT NULL,
  `Degree` varchar(10) DEFAULT NULL,
  `JoiningYear` int(11) DEFAULT NULL,
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_master`
--

INSERT INTO `student_master` (`UserId`, `RollNo`, `Batch`, `Branch`, `Degree`, `JoiningYear`) VALUES
('haque.saif1905@gmail.com', 563, 2020, 'Computer Science', 'Btech', 2016),
('jigyasaanant20@gmail.com', 123, 2021, 'Mechanical Engineering', 'Btech', 2017),
('raghav1503@gmail.com', 435, 2020, 'Computer Science', 'Btech', 2016),
('debuu@gmail.com', 369, 2020, 'Mechanical Engineering', 'Btech', 2016),
('satvik2605@gmail.com', 248, 2021, 'Electronics and Communication ', 'Btech', 2017);

-- --------------------------------------------------------

--
-- Table structure for table `student_personal_master`
--

CREATE TABLE IF NOT EXISTS `student_personal_master` (
  `UserId` varchar(50) DEFAULT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `DOB` int(11) DEFAULT NULL,
  `Gender` varchar(6) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `MobNumber` decimal(10,0) DEFAULT NULL,
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_personal_master`
--

INSERT INTO `student_personal_master` (`UserId`, `Name`, `DOB`, `Gender`, `Address`, `MobNumber`) VALUES
('satvik2605@gmail.com', 'Satvik Baijal', 26051998, 'Male', 'Agra', '8384810964'),
('debuu@gmail.com', 'Divyam Raj', 10101998, 'Male', 'Patna', '9599829605'),
('raghav1503@gmail.com', 'Raghav Kumar', 15031999, 'Male', 'Muzaffarpur', '9871579063'),
('jigyasaanant20@gmail.com', 'Jigyasa Anant', 8081998, 'Female', 'Jamalpur', '9205757894'),
('haque.saif1905@gmail.com', 'Saif Haque', 19051998, 'Male', 'Patna', '9958052928');

-- --------------------------------------------------------

--
-- Table structure for table `student_technical_master`
--

CREATE TABLE IF NOT EXISTS `student_technical_master` (
  `UserId` varchar(50) DEFAULT NULL,
  `PrgmLanguage` varchar(30) DEFAULT NULL,
  `Directory` varchar(30) DEFAULT NULL,
  `OS` varchar(30) DEFAULT NULL,
  `Software` varchar(30) DEFAULT NULL,
  `OtherSkill` varchar(30) DEFAULT NULL,
  `IndustryExp` varchar(150) DEFAULT NULL,
  `AcademicProject` varchar(150) DEFAULT NULL,
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_technical_master`
--

INSERT INTO `student_technical_master` (`UserId`, `PrgmLanguage`, `Directory`, `OS`, `Software`, `OtherSkill`, `IndustryExp`, `AcademicProject`) VALUES
('haque.saif1905@gmail.com', 'C C++ Java', 'MySQL', 'Android Windows', 'Microsoft Word Excel Powerpoin', 'Web Developer', 'internship at Microsoft', 'Gaming App Development'),
('jigyasaanant20@gmail.com', 'C ', 'none', 'Windows', 'Microsoft Word Excel Powerpoin', 'none', 'none', 'Go Kart Model'),
('raghav1503@gmail.com', 'C C++ Java ', 'none', 'Windows', 'Microsoft Word Powerpoint', 'none', 'internship at Airtel', 'none'),
('debuu@gmail.com', 'none ', 'none', 'Windows', 'none', 'none', 'internship in Germany', 'none'),
('satvik2605@gmail.com', 'C C++ ', 'MySQL', 'Windows', 'none', 'none', 'none', 'none');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_master`
--
ALTER TABLE `admin_master`
  ADD CONSTRAINT `admin_master_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `login_master` (`UserId`);

--
-- Constraints for table `faculty_master`
--
ALTER TABLE `faculty_master`
  ADD CONSTRAINT `faculty_master_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `login_master` (`UserId`);

--
-- Constraints for table `faculty_personal_master`
--
ALTER TABLE `faculty_personal_master`
  ADD CONSTRAINT `faculty_personal_master_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `login_master` (`UserId`);

--
-- Constraints for table `notice_master`
--
ALTER TABLE `notice_master`
  ADD CONSTRAINT `notice_master_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `login_master` (`UserId`);

--
-- Constraints for table `student_academic_master`
--
ALTER TABLE `student_academic_master`
  ADD CONSTRAINT `student_academic_master_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `login_master` (`UserId`);

--
-- Constraints for table `student_master`
--
ALTER TABLE `student_master`
  ADD CONSTRAINT `student_master_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `login_master` (`UserId`);

--
-- Constraints for table `student_personal_master`
--
ALTER TABLE `student_personal_master`
  ADD CONSTRAINT `student_personal_master_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `login_master` (`UserId`);

--
-- Constraints for table `student_technical_master`
--
ALTER TABLE `student_technical_master`
  ADD CONSTRAINT `student_technical_master_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `login_master` (`UserId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
