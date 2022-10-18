-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 16, 2022 at 08:52 AM
-- Server version: 10.3.28-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `a8_SEESURE`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branchId` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `branchName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branchId`, `branchName`, `location`) VALUES
('THBNK001', 'Central Festival Eastville', '126 Prachautid'),
('THCGM002', 'Doy Intanon', 'Barn Luang');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `departmentID` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `branchID` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `departmentName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `departmentInfo` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`departmentID`, `branchID`, `departmentName`, `departmentInfo`) VALUES
('HRS003', 'THBNK001', 'Human Resource', 'Manage and develop the organization'),
('HRS003', 'THCGM002', 'Human Resource', 'Manage and develop the organization'),
('ITS002', 'THBNK001', 'Information technology', 'Work on IT device and software.'),
('ITS002', 'THCGM002', 'Information technology', 'Work on IT device and software.'),
('SEL001', 'THBNK001', 'Seller', 'Focus on how to make a sell count reach the target'),
('SEL001', 'THCGM002', 'Seller', 'Focus on how to make a sell count reach the target');

-- --------------------------------------------------------

--
-- Table structure for table `educationHistory`
--

CREATE TABLE `educationHistory` (
  `employeeId` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `studentId` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `schoolName` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `GPA` float DEFAULT NULL,
  `graduateDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `educationHistory`
--

INSERT INTO `educationHistory` (`employeeId`, `studentId`, `schoolName`, `GPA`, `graduateDate`) VALUES
('EM640004', '1011', 'KMUTT', 3.5, '2021-03-14 00:00:00'),
('EM640005', '1019', 'KMUTT', 3.49, '2021-03-14 00:00:00'),
('EM640003', '1026', 'KMUTT', 3.89, '2021-03-14 00:00:00'),
('EM640002', '1029', 'KMUTT', 3.89, '2021-03-14 00:00:00'),
('EM640009', '1033', 'KMUTT', 3.84, '2021-03-14 00:00:00'),
('EM640006', '1037', 'KMUTT', 3.66, '2021-03-14 00:00:00'),
('EM640001', '1038', 'KMUTT', 3.59, '2021-03-14 00:00:00'),
('EM640007', '1063', 'KMUTT', 3.76, '2021-03-14 00:00:00'),
('EM640010', '1082', 'KMUTT', 3.55, '2021-03-14 00:00:00'),
('EM640008', '1089', 'KMUTT', 3.44, '2021-03-14 00:00:00'),
('EM650011', '20001', 'MOT University', 3.33, '2021-03-14 00:00:00'),
('EM650012', '20007', 'MOT University', 3.25, '2021-03-14 00:00:00'),
('EM650013', '20014', 'MOT University', 3.45, '2021-03-14 00:00:00'),
('EM650014', '20018', 'MOT University', 3.41, '2021-03-14 00:00:00'),
('EM650016', '20024', 'MOT University', 3.61, '2021-03-14 00:00:00'),
('EM650015', '20054', 'MOT University', 3.29, '2021-03-14 00:00:00'),
('EM650018', '20074', 'MOT University', 2.96, '2021-03-14 00:00:00'),
('EM650017', '20092', 'MOT University', 3.16, '2021-03-14 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employeeId` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `fname` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lname` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DOB` datetime DEFAULT NULL,
  `phoneNumber` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_number` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `absent_quota` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employeeId`, `fname`, `lname`, `DOB`, `phoneNumber`, `account_number`, `absent_quota`, `status`, `start_date`) VALUES
('EM640001', 'Napat', 'Wareedee', '2000-08-08 03:00:00', '0911924480', '0377367164', 5, 1, '2021-12-01 00:00:00'),
('EM640002', 'Thanadol', 'Thongrit', '2000-01-01 00:00:00', '0999999901', '0111111111', 5, 1, '2021-12-01 00:00:00'),
('EM640003', 'Tawan', 'Thaepprasit', '2000-01-01 00:00:00', '0999999902', '0111111112', 5, 1, '2021-12-01 00:00:00'),
('EM640004', 'Kunanon', 'Supmamul', '2000-01-01 00:00:00', '0999999903', '0111111113', 5, 1, '2021-12-01 00:00:00'),
('EM640005', 'Napattharak', 'Fueng', '2000-01-01 00:00:00', '0999999904', '0111111114', 5, 1, '2021-12-01 00:00:00'),
('EM640006', 'North', 'Nopphalak', '2000-01-01 00:00:00', '0999999905', '0111111115', 5, 1, '2021-12-01 00:00:00'),
('EM640007', 'Kom', 'Supasate', '2000-01-01 00:00:00', '0999999906', '0111111116', 5, 1, '2021-12-01 00:00:00'),
('EM640008', 'Kong', 'Sakchai', '2000-01-01 00:00:00', '0999999907', '0111111117', 5, 1, '2021-12-01 00:00:00'),
('EM640009', 'Gongz', 'Thanabutt', '2000-01-01 00:00:00', '0999999908', '0111111118', 5, 1, '2021-12-01 00:00:00'),
('EM640010', 'Aut', 'Tourdum', '2000-01-01 00:00:00', '0999999909', '0111111119', 5, 1, '2021-12-01 00:00:00'),
('EM650011', 'Nadood', 'Thanomjit', '2000-01-01 00:00:00', '0999999910', '0111111120', 5, 1, '2022-01-01 00:00:00'),
('EM650012', 'West', 'Saksee', '2000-01-01 00:00:00', '0999999911', '0111111121', 5, 0, '2022-01-01 00:00:00'),
('EM650013', 'Duangjan', 'Bank', '2000-01-01 00:00:00', '0999999912', '0111111122', 5, 0, '2022-01-01 00:00:00'),
('EM650014', 'East', 'Peachleak', '2000-01-01 00:00:00', '0999999913', '0111111123', 5, 1, '2022-01-01 00:00:00'),
('EM650015', 'Oat', 'Pramote', '2000-01-01 00:00:00', '0999999914', '0111111124', 5, 1, '2022-01-01 00:00:00'),
('EM650016', 'Oat', 'Eater', '2000-01-01 00:00:00', '0999999915', '0111111125', 5, 1, '2022-01-01 00:00:00'),
('EM650017', 'Tom', 'Hardy', '2000-01-01 00:00:00', '0999999916', '0111111126', 5, 1, '2022-01-01 00:00:00'),
('EM650018', 'Eddy', 'Brock', '2000-01-01 00:00:00', '0999999917', '0111111127', 5, 1, '2022-01-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `enablePosition`
--

CREATE TABLE `enablePosition` (
  `positionID` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `branchID` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `departmentID` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `enable` tinyint(1) DEFAULT NULL,
  `maximumAmount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `enablePosition`
--

INSERT INTO `enablePosition` (`positionID`, `branchID`, `departmentID`, `enable`, `maximumAmount`) VALUES
('HR020', 'THBNK001', 'HRS003', 1, 3),
('HR020', 'THCGM002', 'HRS003', 1, 3),
('IM011', 'THBNK001', 'ITS002', 1, 2),
('IM011', 'THCGM002', 'ITS002', 1, 2),
('IO010', 'THBNK001', 'ITS002', 1, 2),
('IO010', 'THCGM002', 'ITS002', 1, 2),
('SJ001', 'THBNK001', 'SEL001', 1, 6),
('SJ001', 'THCGM002', 'SEL001', 1, 5),
('SS002', 'THBNK001', 'SEL001', 1, 3),
('SS002', 'THCGM002', 'SEL001', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `HRWorkRecord`
--

CREATE TABLE `HRWorkRecord` (
  `RecID` int(11) NOT NULL,
  `HRID` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `workdate` datetime DEFAULT NULL,
  `workType` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notice` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `HRWorkRecord`
--

INSERT INTO `HRWorkRecord` (`RecID`, `HRID`, `workdate`, `workType`, `notice`) VALUES
(1, 'EM640009', '2022-03-01 00:00:00', 'PRO', NULL),
(2, 'EM640009', '2022-03-01 00:00:00', 'PRO', NULL),
(3, 'EM640010', '2022-04-01 00:00:00', 'PRO', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `InterviewRecord`
--

CREATE TABLE `InterviewRecord` (
  `interviewer` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `fName` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lName` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prefer_position` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `interview_start` datetime NOT NULL,
  `interview_end` datetime DEFAULT NULL,
  `interview_note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `accept` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `InterviewRecord`
--

INSERT INTO `InterviewRecord` (`interviewer`, `fName`, `lName`, `prefer_position`, `interview_start`, `interview_end`, `interview_note`, `accept`) VALUES
('EM640009', 'Carbo', 'Okud', 'SJ001', '2022-05-01 13:00:00', '2022-05-01 13:30:00', 'อัธยาศัยดี แต่ทำแก้วน้ำแตกก่อนออกจากห้อง', NULL),
('EM640009', 'Sura', 'Tay', 'SJ001', '2022-05-01 13:30:00', '2022-05-01 14:00:00', 'มีความสามารถ แต่ชอบพูดห้วนๆ', NULL),
('EM640010', 'Putchy', 'Thanomsup', 'IO010', '2022-05-01 13:00:00', '2022-05-01 13:30:00', 'ดูเป็นมิตร มีความสามารถ แต่ยังไม่เคยมีประสบการณ์', NULL),
('EM640010', 'Fifa', 'Wangdee', 'IO010', '2022-05-01 14:00:00', '2022-05-01 14:30:00', 'ประสบการณ์โชกโชน เกรดไม่สูงมากตอนเรียน เพราะเน้นออกงาน แต่น่าจับตามอง', NULL),
('EM650017', 'Peter', 'Parker', 'SJ001', '2022-04-01 14:00:00', '2022-04-01 15:00:00', 'เป็นบุคคลน่าจับตามอง ท่าทางจะมีเยื่อใย', NULL),
('EM650018', 'Anakin', 'Skywalker', 'IO010', '2022-04-01 14:00:00', '2022-04-01 14:30:00', 'ดูเป็นคนมีพลัง แต่น่าจะเป็นคนมีปัญหา', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobInfo`
--

CREATE TABLE `jobInfo` (
  `positionID` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `positionName` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `positionInfo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `departmentID` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `base_salary` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `jobInfo`
--

INSERT INTO `jobInfo` (`positionID`, `positionName`, `positionInfo`, `departmentID`, `base_salary`) VALUES
('HR020', 'Human Resource', 'จัดหา พัฒนา และจัดการบุคลากรภายในองกรค์', 'HRS003', 21000),
('IM011', 'IT Manager', 'หัวหน้าของแผนก IT จัดการ ควบคุม ดูแล ภาพรวมองแผนก', 'ITS002', 26000),
('IO010', 'IT Officer', 'คอยให้คำแนะนำ จัดหา และดูแลอุปกรณ์ทางด้านคอมพิวเตอร์ให้แก่คนในบริษัท', 'ITS002', 18000),
('SJ001', 'Seller Junior', 'ทำหน้าที่ขายประกันให้กับทางบริษัท', 'SEL001', 18000),
('SS002', 'Seller Senior', 'ทำหน้าที่ขายประกันให้กับทางบริษัท มีประสบการณ์สูงกว่า Junior', 'SEL001', 25000);

-- --------------------------------------------------------

--
-- Table structure for table `LateAbsentRecord`
--

CREATE TABLE `LateAbsentRecord` (
  `employeeId` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `recordTime` datetime NOT NULL,
  `paymentCode` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `LateAbsentRecord`
--

INSERT INTO `LateAbsentRecord` (`employeeId`, `recordTime`, `paymentCode`) VALUES
('EM640001', '2022-05-11 10:42:15', 'ABS002'),
('EM640001', '2021-12-05 09:23:37', 'LTE001'),
('EM640001', '2022-03-01 09:44:40', 'LTE001'),
('EM640001', '2022-05-11 09:45:09', 'LTE001'),
('EM640002', '2021-12-07 09:23:37', 'LTE001'),
('EM640002', '2022-04-28 09:01:30', 'LTE001'),
('EM640003', '2022-05-01 09:23:37', 'LTE001'),
('EM640004', '2022-05-03 09:23:37', 'LTE001'),
('EM640007', '2022-04-01 09:02:32', 'LTE001'),
('EM640007', '2022-04-08 09:10:59', 'LTE001'),
('EM640008', '2022-03-15 09:12:58', 'LTE001'),
('EM640009', '2022-04-08 09:10:59', 'LTE001'),
('EM640010', '2022-04-08 09:10:59', 'LTE001'),
('EM640010', '2022-05-01 09:03:14', 'LTE001'),
('EM650011', '2022-05-03 09:48:53', 'LTE001'),
('EM650016', '2022-05-03 09:04:56', 'LTE001'),
('EM650018', '2022-05-04 09:06:01', 'LTE001');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `password`) VALUES
('EM640009', 'admin'),
('EM640010', 'admin'),
('EM650017', 'admin'),
('EM650018', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `mentorHistory`
--

CREATE TABLE `mentorHistory` (
  `mentorID` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `juniorID` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mentorHistory`
--

INSERT INTO `mentorHistory` (`mentorID`, `juniorID`, `start_date`, `end_date`) VALUES
('EM640001', 'EM640003', '2022-05-12 14:00:00', '2022-05-14 15:00:00'),
('EM640001', 'EM640004', '2022-03-02 18:00:00', '2022-03-03 20:00:00'),
('EM650014', 'EM650012', '2022-05-01 17:00:00', '2022-05-02 19:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `OvertimeRecord`
--

CREATE TABLE `OvertimeRecord` (
  `workerID` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `workdate` datetime NOT NULL,
  `workhours` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `OvertimeRecord`
--

INSERT INTO `OvertimeRecord` (`workerID`, `workdate`, `workhours`) VALUES
('EM640001', '2021-12-10 19:00:20', 2),
('EM640001', '2022-03-03 20:00:00', 2),
('EM640001', '2022-03-10 19:18:47', 2),
('EM640001', '2022-03-11 19:18:47', 2),
('EM640001', '2022-05-01 19:19:47', 2),
('EM640001', '2022-05-01 19:22:59', 2),
('EM640002', '2022-01-10 19:19:47', 2),
('EM640002', '2022-05-01 19:20:02', 2),
('EM640002', '2022-05-01 19:22:59', 2),
('EM640003', '2022-03-10 19:19:44', 2),
('EM640003', '2022-05-02 20:20:10', 3),
('EM640004', '2022-03-24 19:19:44', 2),
('EM640004', '2022-05-02 19:20:25', 2),
('EM640005', '2022-03-11 19:19:44', 2),
('EM640005', '2022-05-03 19:20:43', 2),
('EM640006', '2022-03-20 19:19:44', 2),
('EM640006', '2022-05-04 19:21:56', 2),
('EM640007', '2022-03-13 19:19:44', 2),
('EM640007', '2022-04-01 19:23:47', 2),
('EM640007', '2022-05-04 19:22:06', 2),
('EM640008', '2022-03-14 19:19:44', 2),
('EM640008', '2022-04-22 19:24:40', 2),
('EM640008', '2022-05-05 19:22:32', 2),
('EM640009', '2022-03-11 19:19:44', 2),
('EM640009', '2022-05-05 19:22:43', 2),
('EM640009', '2022-05-09 20:28:00', 3),
('EM640010', '2022-05-07 19:22:59', 2),
('EM640010', '2022-05-07 19:23:19', 2),
('EM640010', '2022-05-08 19:24:02', 2),
('EM650011', '2022-05-08 19:24:02', 2),
('EM650012', '2022-05-08 19:24:02', 2),
('EM650013', '2022-05-09 19:24:57', 2),
('EM650014', '2022-05-02 00:00:00', 2),
('EM650014', '2022-05-09 19:24:57', 2),
('EM650015', '2022-05-09 19:24:57', 2),
('EM650016', '2022-04-29 19:02:36', 2),
('EM650016', '2022-05-10 19:24:57', 2),
('EM650017', '2022-05-01 19:02:35', 2),
('EM650017', '2022-05-09 19:24:57', 2),
('EM650018', '2022-05-10 19:24:57', 2);

-- --------------------------------------------------------

--
-- Table structure for table `paymentInfo`
--

CREATE TABLE `paymentInfo` (
  `paymentCode` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `paymentType` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paymentValue` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `paymentInfo`
--

INSERT INTO `paymentInfo` (`paymentCode`, `paymentType`, `paymentValue`) VALUES
('ABS002', 'absent', -500),
('BON003', 'bonus', 2500),
('LTE001', 'late', -300);

-- --------------------------------------------------------

--
-- Table structure for table `productInfo`
--

CREATE TABLE `productInfo` (
  `productID` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `productType` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `base_price` float DEFAULT NULL,
  `productInfo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productRating` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `productInfo`
--

INSERT INTO `productInfo` (`productID`, `productType`, `base_price`, `productInfo`, `productRating`) VALUES
('INS001', 'ประกันสุขภาพ', 7500, 'คุ้มครองค่ารักษาระหว่างกักตัวในช่วงที่ติดโควิด-19, จะไม่คุ้มครองหากติดโรคมาก่อนสมัครประกันตัวนี้', 5),
('INS002', 'ประกันสุขภาพ', 10000, 'ประกันสุขภาพวงเงิน 350,000', 4.4),
('INS003', 'ประกันชีวิต', 15000, 'ประกันชีวิต 300,000', 4.5),
('INS004', 'ประกันอุบัติเหตุ', 7500, 'ประกันอุบัติเหตุวงเงิน 200,000', 4.4),
('INS005', 'ประกันชีวิต', 20000, 'ประกันชีวิตวงเงิน 600,000', 4.3),
('INS006', 'ประกันชีวิต', 108000, 'ประกันชีวิตวงเงิน 100,000,000', 4.7),
('INS007', 'ประกันอุบัติเหตุ', 7500, 'ประกันอุบัติเหตุวงเงิน 5,000,000', 4.4),
('INS008', 'ประกันอุบัติเหตุ', 12000, 'ประกันอุบัติเหตุวงเงิน 5,000,000', 4.4),
('INS009', 'ประกันทรัพย์สิน', 3500, 'ประกันทรัพย์สินวงเงิน 1,000,000 (บ้านและที่อยู่อาศัย)', 4.4),
('INS010', 'ประกันทรัพย์สิน', 13500, 'ประกันรถยนต์ชั้น 1 วงเงิน 1,000,000 (รถยนต์)', 4.4);

-- --------------------------------------------------------

--
-- Table structure for table `promotionalRecord`
--

CREATE TABLE `promotionalRecord` (
  `employeeId` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `promotedDate` datetime NOT NULL,
  `toPosition` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `departmentID` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `promotionalRecord`
--

INSERT INTO `promotionalRecord` (`employeeId`, `promotedDate`, `toPosition`, `departmentID`) VALUES
('EM640009', '2021-12-01 00:00:00', 'HR020', 'HRS003'),
('EM640010', '2021-12-01 00:00:00', 'HR020', 'HRS003'),
('EM650017', '2022-01-01 00:00:00', 'HR020', 'HRS003'),
('EM650018', '2022-01-01 00:00:00', 'HR020', 'HRS003'),
('EM640007', '2021-12-01 00:00:00', 'IO010', 'ITS002'),
('EM640007', '2022-04-01 00:00:00', 'IM011', 'ITS002'),
('EM640008', '2021-12-01 00:00:00', 'IO010', 'ITS002'),
('EM650015', '2022-01-01 00:00:00', 'IO010', 'ITS002'),
('EM650016', '2022-01-01 00:00:00', 'IM011', 'ITS002'),
('EM640001', '2021-12-01 00:00:00', 'SJ001', 'SEL001'),
('EM640001', '2022-03-01 00:00:00', 'SS002', 'SEL001'),
('EM640002', '2021-12-01 00:00:00', 'SJ001', 'SEL001'),
('EM640002', '2022-03-01 00:00:00', 'SS002', 'SEL001'),
('EM640003', '2021-12-01 00:00:00', 'SJ001', 'SEL001'),
('EM640004', '2021-12-01 00:00:00', 'SJ001', 'SEL001'),
('EM640005', '2021-12-01 00:00:00', 'SJ001', 'SEL001'),
('EM640006', '2021-12-01 00:00:00', 'SJ001', 'SEL001'),
('EM650011', '2022-01-01 00:00:00', 'SJ001', 'SEL001'),
('EM650012', '2022-01-01 00:00:00', 'SJ001', 'SEL001'),
('EM650013', '2022-01-01 00:00:00', 'SJ001', 'SEL001'),
('EM650014', '2022-01-01 00:00:00', 'SS002', 'SEL001');

-- --------------------------------------------------------

--
-- Table structure for table `relocationalRecord`
--

CREATE TABLE `relocationalRecord` (
  `employeeId` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `fromBr` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `toBr` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `relocateDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `relocationalRecord`
--

INSERT INTO `relocationalRecord` (`employeeId`, `fromBr`, `toBr`, `relocateDate`) VALUES
('EM640001', 'THBNK001', 'THBNK001', '2021-12-01 00:00:00'),
('EM640002', 'THBNK001', 'THBNK001', '2021-12-01 00:00:00'),
('EM640003', 'THBNK001', 'THBNK001', '2021-12-01 00:00:00'),
('EM640004', 'THBNK001', 'THBNK001', '2021-12-01 00:00:00'),
('EM640005', 'THBNK001', 'THBNK001', '2021-12-01 00:00:00'),
('EM640006', 'THBNK001', 'THBNK001', '2021-12-01 00:00:00'),
('EM640007', 'THBNK001', 'THBNK001', '2021-12-01 00:00:00'),
('EM640008', 'THBNK001', 'THBNK001', '2021-12-01 00:00:00'),
('EM640009', 'THBNK001', 'THBNK001', '2021-12-01 00:00:00'),
('EM640010', 'THBNK001', 'THBNK001', '2021-12-01 00:00:00'),
('EM650011', 'THCGM002', 'THCGM002', '2022-01-01 00:00:00'),
('EM650012', 'THCGM002', 'THCGM002', '2022-01-01 00:00:00'),
('EM650013', 'THCGM002', 'THCGM002', '2022-01-01 00:00:00'),
('EM650014', 'THCGM002', 'THCGM002', '2022-01-01 00:00:00'),
('EM650015', 'THCGM002', 'THCGM002', '2022-01-01 00:00:00'),
('EM650016', 'THCGM002', 'THCGM002', '2022-01-01 00:00:00'),
('EM650017', 'THCGM002', 'THCGM002', '2022-01-01 00:00:00'),
('EM650018', 'THCGM002', 'THCGM002', '2022-01-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `SellRecord`
--

CREATE TABLE `SellRecord` (
  `RecID` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `Seller` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `selldate` datetime DEFAULT NULL,
  `customer_age` int(11) DEFAULT NULL,
  `customer_review` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_rating` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `SellRecord`
--

INSERT INTO `SellRecord` (`RecID`, `Seller`, `product`, `selldate`, `customer_age`, `customer_review`, `customer_rating`) VALUES
('SE000001', 'EM640001', 'INS001', '2021-12-04 00:00:00', 21, 'คนขายหน้าตาดีมากเลยค่ะ ซื้อเพราะหล่อ', 5),
('SE000002', 'EM640001', 'INS004', '2021-12-07 00:00:00', 30, 'พูดคล่อง เข้าใจง่าย ไม่ยัดเยียด', 5),
('SE000003', 'EM640001', 'INS001', '2021-12-11 00:00:00', 45, NULL, 4),
('SE000004', 'EM640002', 'INS002', '2021-12-09 00:00:00', 60, 'ดี', 4),
('SE000005', 'EM640003', 'INS003', '2021-12-11 00:00:00', 31, 'ข้อมูลเยอะเกิน รับไม่ไหว', 4),
('SE000006', 'EM640002', 'INS005', '2021-12-12 00:00:00', 36, 'ดูงงๆ แต่อัธยาศัยดี', 5),
('SE000007', 'EM640004', 'INS010', '2021-12-14 00:00:00', 21, NULL, 4),
('SE000008', 'EM640006', 'INS009', '2021-12-04 00:00:00', 44, NULL, 3),
('SE000009', 'EM640005', 'INS008', '2021-12-16 00:00:00', NULL, NULL, NULL),
('SE000010', 'EM640001', 'INS007', '2021-12-20 00:00:00', 56, 'พ่อหนุ่มพูดภาษาอังกฤษเยอะ ฟังไม่ออก', 4),
('SE000011', 'EM640002', 'INS006', '2021-12-22 00:00:00', 33, NULL, 4),
('SE000012', 'EM640001', 'INS002', '2022-01-01 00:00:00', 41, NULL, 4),
('SE000013', 'EM640006', 'INS004', '2022-01-01 00:00:00', 36, 'ทำน้ำหกใส่ แย่มาก', 2),
('SE000014', 'EM640001', 'INS001', '2022-05-01 18:10:36', 19, 'พ่อให้มาทำ', 4),
('SE000015', 'EM640002', 'INS002', '2022-05-09 18:10:36', 35, NULL, NULL),
('SE000016', 'EM640003', 'INS005', '2022-05-08 18:11:38', 62, NULL, NULL),
('SE000017', 'EM640004', 'INS007', '2022-05-08 18:12:55', 41, 'ก็ดี', 3),
('SE000018', 'EM640005', 'INS009', '2022-05-07 18:13:22', 33, NULL, 4),
('SE000019', 'EM640006', 'INS002', '2022-05-06 18:14:00', 25, NULL, 4),
('SE000020', 'EM640001', 'INS005', '2022-05-01 18:14:24', 29, NULL, 3),
('SE000021', 'EM650011', 'INS001', '2022-02-02 00:00:00', 24, NULL, 4),
('SE000022', 'EM650012', 'INS003', '2022-04-09 00:00:00', 42, 'ก็ดี', 4),
('SE000023', 'EM650013', 'INS006', '2022-04-12 00:00:00', 42, NULL, 3),
('SE000024', 'EM650014', 'INS007', '2022-04-27 00:00:00', 49, NULL, 4),
('SE000025', 'EM640001', 'INS007', '2022-01-12 00:00:00', 36, NULL, 5),
('SE000026', 'EM640002', 'INS008', '2022-01-12 00:00:00', 35, NULL, 5),
('SE000027', 'EM640003', 'INS009', '2022-01-12 00:00:00', 27, NULL, 5),
('SE000028', 'EM640004', 'INS010', '2022-01-13 00:00:00', 43, NULL, 5),
('SE000029', 'EM640005', 'INS002', '2022-01-14 00:00:00', 31, NULL, 5),
('SE000030', 'EM640006', 'INS003', '2022-01-14 00:00:00', 51, NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `workHistory`
--

CREATE TABLE `workHistory` (
  `employeeId` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `formerCorp` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `latestPosition` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quitTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `workHistory`
--

INSERT INTO `workHistory` (`employeeId`, `formerCorp`, `latestPosition`, `quitTime`) VALUES
('EM640006', 'Tesla', 'It Support', '2021-11-02 00:00:00'),
('EM650014', 'Bitka', 'Seller', '2022-02-01 00:00:00'),
('EM650016', 'ชิกกี้ชิก', 'IT Manager', '2022-02-01 00:00:00'),
('EM650017', 'Marvel', 'นักแสดง', '2022-01-01 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branchId`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`departmentID`,`branchID`),
  ADD KEY `branchID` (`branchID`);

--
-- Indexes for table `educationHistory`
--
ALTER TABLE `educationHistory`
  ADD PRIMARY KEY (`studentId`,`graduateDate`),
  ADD KEY `employeeId` (`employeeId`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employeeId`);

--
-- Indexes for table `enablePosition`
--
ALTER TABLE `enablePosition`
  ADD PRIMARY KEY (`positionID`,`branchID`,`departmentID`),
  ADD KEY `branchID` (`branchID`),
  ADD KEY `departmentID` (`departmentID`);

--
-- Indexes for table `HRWorkRecord`
--
ALTER TABLE `HRWorkRecord`
  ADD PRIMARY KEY (`RecID`),
  ADD KEY `HRID` (`HRID`);

--
-- Indexes for table `InterviewRecord`
--
ALTER TABLE `InterviewRecord`
  ADD PRIMARY KEY (`interviewer`,`interview_start`),
  ADD KEY `interviewer` (`interviewer`),
  ADD KEY `interviewrecord_ibfk_2` (`prefer_position`);

--
-- Indexes for table `jobInfo`
--
ALTER TABLE `jobInfo`
  ADD PRIMARY KEY (`positionID`,`departmentID`),
  ADD KEY `departmentID` (`departmentID`);

--
-- Indexes for table `LateAbsentRecord`
--
ALTER TABLE `LateAbsentRecord`
  ADD PRIMARY KEY (`employeeId`,`recordTime`),
  ADD KEY `paymentCode` (`paymentCode`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mentorHistory`
--
ALTER TABLE `mentorHistory`
  ADD PRIMARY KEY (`mentorID`,`juniorID`,`start_date`),
  ADD KEY `juniorID` (`juniorID`);

--
-- Indexes for table `OvertimeRecord`
--
ALTER TABLE `OvertimeRecord`
  ADD PRIMARY KEY (`workerID`,`workdate`);

--
-- Indexes for table `paymentInfo`
--
ALTER TABLE `paymentInfo`
  ADD PRIMARY KEY (`paymentCode`);

--
-- Indexes for table `productInfo`
--
ALTER TABLE `productInfo`
  ADD PRIMARY KEY (`productID`);

--
-- Indexes for table `promotionalRecord`
--
ALTER TABLE `promotionalRecord`
  ADD PRIMARY KEY (`employeeId`,`promotedDate`,`toPosition`),
  ADD KEY `toPosition` (`toPosition`),
  ADD KEY `departmentID` (`departmentID`);

--
-- Indexes for table `relocationalRecord`
--
ALTER TABLE `relocationalRecord`
  ADD PRIMARY KEY (`employeeId`,`fromBr`,`toBr`),
  ADD KEY `fromBr` (`fromBr`),
  ADD KEY `toBr` (`toBr`);

--
-- Indexes for table `SellRecord`
--
ALTER TABLE `SellRecord`
  ADD PRIMARY KEY (`RecID`),
  ADD KEY `Seller` (`Seller`),
  ADD KEY `product` (`product`);

--
-- Indexes for table `workHistory`
--
ALTER TABLE `workHistory`
  ADD PRIMARY KEY (`employeeId`,`quitTime`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`branchID`) REFERENCES `branch` (`branchId`);

--
-- Constraints for table `educationHistory`
--
ALTER TABLE `educationHistory`
  ADD CONSTRAINT `educationHistory_ibfk_1` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`);

--
-- Constraints for table `enablePosition`
--
ALTER TABLE `enablePosition`
  ADD CONSTRAINT `enablePosition_ibfk_1` FOREIGN KEY (`positionID`) REFERENCES `jobInfo` (`positionID`),
  ADD CONSTRAINT `enablePosition_ibfk_2` FOREIGN KEY (`branchID`) REFERENCES `branch` (`branchId`),
  ADD CONSTRAINT `enablePosition_ibfk_3` FOREIGN KEY (`departmentID`) REFERENCES `department` (`departmentID`);

--
-- Constraints for table `HRWorkRecord`
--
ALTER TABLE `HRWorkRecord`
  ADD CONSTRAINT `HRWorkRecord_ibfk_1` FOREIGN KEY (`HRID`) REFERENCES `employee` (`employeeId`);

--
-- Constraints for table `InterviewRecord`
--
ALTER TABLE `InterviewRecord`
  ADD CONSTRAINT `InterviewRecord_ibfk_1` FOREIGN KEY (`interviewer`) REFERENCES `employee` (`employeeId`),
  ADD CONSTRAINT `InterviewRecord_ibfk_2` FOREIGN KEY (`prefer_position`) REFERENCES `jobInfo` (`positionID`);

--
-- Constraints for table `jobInfo`
--
ALTER TABLE `jobInfo`
  ADD CONSTRAINT `jobInfo_ibfk_1` FOREIGN KEY (`departmentID`) REFERENCES `department` (`departmentID`);

--
-- Constraints for table `LateAbsentRecord`
--
ALTER TABLE `LateAbsentRecord`
  ADD CONSTRAINT `LateAbsentRecord_ibfk_1` FOREIGN KEY (`paymentCode`) REFERENCES `paymentInfo` (`paymentCode`),
  ADD CONSTRAINT `LateAbsentRecord_ibfk_2` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`);

--
-- Constraints for table `mentorHistory`
--
ALTER TABLE `mentorHistory`
  ADD CONSTRAINT `mentorHistory_ibfk_1` FOREIGN KEY (`mentorID`) REFERENCES `employee` (`employeeId`),
  ADD CONSTRAINT `mentorHistory_ibfk_2` FOREIGN KEY (`juniorID`) REFERENCES `employee` (`employeeId`);

--
-- Constraints for table `OvertimeRecord`
--
ALTER TABLE `OvertimeRecord`
  ADD CONSTRAINT `OvertimeRecord_ibfk_1` FOREIGN KEY (`workerID`) REFERENCES `employee` (`employeeId`);

--
-- Constraints for table `promotionalRecord`
--
ALTER TABLE `promotionalRecord`
  ADD CONSTRAINT `promotionalRecord_ibfk_1` FOREIGN KEY (`toPosition`) REFERENCES `jobInfo` (`positionID`),
  ADD CONSTRAINT `promotionalRecord_ibfk_2` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`),
  ADD CONSTRAINT `promotionalRecord_ibfk_3` FOREIGN KEY (`departmentID`) REFERENCES `department` (`departmentID`);

--
-- Constraints for table `relocationalRecord`
--
ALTER TABLE `relocationalRecord`
  ADD CONSTRAINT `relocationalRecord_ibfk_1` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`),
  ADD CONSTRAINT `relocationalRecord_ibfk_2` FOREIGN KEY (`fromBr`) REFERENCES `branch` (`branchId`),
  ADD CONSTRAINT `relocationalRecord_ibfk_3` FOREIGN KEY (`toBr`) REFERENCES `branch` (`branchId`);

--
-- Constraints for table `SellRecord`
--
ALTER TABLE `SellRecord`
  ADD CONSTRAINT `SellRecord_ibfk_1` FOREIGN KEY (`Seller`) REFERENCES `employee` (`employeeId`),
  ADD CONSTRAINT `SellRecord_ibfk_2` FOREIGN KEY (`product`) REFERENCES `productInfo` (`productID`);

--
-- Constraints for table `workHistory`
--
ALTER TABLE `workHistory`
  ADD CONSTRAINT `workHistory_ibfk_1` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
