-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql309.infinityfree.com
-- Generation Time: Mar 18, 2026 at 05:06 PM
-- Server version: 11.4.10-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_40783965_comd`
--

-- --------------------------------------------------------

--
-- Table structure for table `givenCourses`
--

CREATE TABLE `givenCourses` (
  `id` int(11) NOT NULL,
  `instructor_name` varchar(100) NOT NULL,
  `course_code` varchar(20) NOT NULL,
  `course_name` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Dumping data for table `givenCourses`
--

INSERT INTO `givenCourses` (`id`, `instructor_name`, `course_code`, `course_name`) VALUES
(1, 'Deniz Ergin Erbil', 'COMD 210', 'Introduction to Screenwriting'),
(2, 'Deniz Ergin Erbil', 'COMD 310', 'Advanced Screenwriting'),
(3, 'Emre Toros', 'COMD 302', 'Political Communication'),
(4, 'Emre Toros', 'COMD 341', 'Media and Society'),
(5, 'Emre Toros', 'COMD 471', 'Media Ethics'),
(6, 'Özen Baş', 'COMD 203', 'Media Studies I'),
(7, 'Özen Baş', 'COMD 204', 'Media Studies II'),
(8, 'Özen Baş', 'COMD 356', 'Digital Culture'),
(9, 'Burak Özçetin', 'COMD 203', 'Media Studies I'),
(10, 'Burak Özçetin', 'COMD 204', 'Media Studies II'),
(11, 'Burak Özçetin', 'COMD 321', 'Analysis of Moving Image'),
(12, 'Burak Özçetin', 'COMD 347', 'Media Industries'),
(13, 'Ayşenur Dal', 'COMD 321', 'Analysis of Moving Image'),
(14, 'Ayşenur Dal', 'COMD 322', 'Film Theory and Criticism'),
(15, 'Burcu Baykan', 'COMD 101', 'Visual Communication Design I'),
(16, 'Burcu Baykan', 'COMD 102', 'Visual Communication Design II'),
(17, 'Bülent Çaplı', 'COMD 308', 'Multi-Camera Production'),
(18, 'Bülent Çaplı', 'COMD 347', 'Media Industries'),
(19, 'Colleen Kennedy-Karpat', 'COMD 321', 'Analysis of Moving Image'),
(20, 'Colleen Kennedy-Karpat', 'COMD 322', 'Film Theory and Criticism'),
(21, 'Boran Aksoy', 'COMD 102', 'Visual Communication Design II'),
(22, 'Boran Aksoy', 'COMD 103', 'Integrated Visual Communication'),
(23, 'Boran Aksoy', 'COMD 281', 'Media and Design Studio I'),
(24, 'Boran Aksoy', 'COMD 282', 'Media and Design Studio II'),
(25, 'Boran Aksoy', 'COMD 381', 'Media and Design Studio III'),
(26, 'Boran Aksoy', 'COMD 481', 'Visual Communication Project I'),
(27, 'Egemen Kırkağaç', 'COMD 101', 'Visual Communication Design I'),
(28, 'Egemen Kırkağaç', 'FA 171', 'Introduction to Art, Design & Culture'),
(29, 'Egemen Kırkağaç', 'FA 172', 'Introduction to Art, Design & Culture'),
(30, 'Melih Aydınat', 'COMD 205', 'Digital Photography'),
(31, 'Melih Aydınat', 'COMD 364', 'Video Production for Non-Majors'),
(32, 'Andreas Treske', 'COMD 305', 'Intermediate Film Production I'),
(33, 'Andreas Treske', 'COMD 306', 'Intermediate Film Production II'),
(34, 'Andreas Treske', 'COMD 308', 'Multi-Camera Production'),
(35, 'Emel Özdora', 'COMD 356', 'Digital Culture'),
(36, 'Emel Özdora', 'COMD 203', 'Media Studies I'),
(37, 'Fulten Larlar', 'COMD 358', 'Professional Communication'),
(38, 'Funda Şenova Tunalı', 'COMD 331', 'News Reporting and Writing'),
(39, 'Jülide Akşiyote Görür', 'COMD 335', 'Science Writing and Journalism'),
(40, 'Müge Mengü Hale', 'COMD 354', 'Game Design and Research'),
(41, 'Ufuk Önen', 'COMD 361', 'Sound Design I'),
(42, 'Wickham Catesby Flannagan', 'COMD 210', 'Introduction to Screenwriting'),
(43, 'Yusuf Akçura', 'COMD 305', 'Intermediate Film Production I'),
(44, 'Yusuf Akçura', 'COMD 306', 'Intermediate Film Production II');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `asset_tag_id` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `availability` enum('available','reserved','checked_out') DEFAULT 'available',
  `total_borrowed` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `asset_tag_id`, `description`, `brand`, `cost`, `model`, `category`, `department`, `location`, `image_path`, `availability`, `total_borrowed`) VALUES
(798, 'SETFJ01', 'FujiFilm X-S20 Set', 'FUJIFILM', '2986.70', '', 'Camera Set', '', 'FFB-08-1', 'fujifilmxs20.webp', 'available', 0),
(799, 'CFJ01', 'FujiFilm X-S20 Camera', 'FUJIFILM', '1163.00', 'X-S20', 'Digital Camera', '', 'FFB-08-1', 'fujifilmxs20.webp', 'available', 0),
(800, 'LFJ01', 'FujiFilm 16-80mm Lens', 'FUJIFILM', '690.00', 'XS18-80mmF4', 'Zoom Lens', '', 'FFB-08-1', 'fujifilmLens.jpg', 'available', 0),
(801, 'BFJ01', 'FujiFilm Camera Bag', 'Arcury', '25.28', 'CB02-B', 'Camera Bag', '', 'FFB-08-1', NULL, 'available', 0),
(802, 'SDAB01', 'AngelBird 128 GB Sd Card', 'AngelBird', '25.02', 'AV PRO V30', 'SD Card', '', 'FFB-08-1', NULL, 'available', 0),
(803, 'BPFJ01', 'FujiFilm Battery Pack', 'FUJIFILM', '58.75', 'NP-W235', 'Battery', '', 'FFB-08-1', NULL, 'available', 0),
(804, 'BPSR01', 'SmallRig Battery Pack', 'Small Rig', '30.13', 'BJ005', 'Battery', '', 'FFB-08-1', NULL, 'available', 0),
(805, 'RCSR01', 'SmallRig Rig Cage', 'Small Rig', '94.02', '4230', 'Cage', '', 'FFB-08-1', NULL, 'available', 0),
(806, 'BCSR01', 'SmallRig Dual Charger', 'Small Rig', '17.86', 'CP005', 'Charge Station', '', 'FFB-08-1', NULL, 'available', 0),
(807, 'PAFJ01', 'FujiFilm Power Adaptor', 'FUJIFILM', '20.00', 'AC-5VJ', 'AC Adapter', '', 'FFB-08-1', NULL, 'available', 0),
(808, 'CCFJ01', 'FujiFilm Type-C Cable', 'FUJIFILM', '7.64', '', 'Cable', '', 'FFB-08-1', NULL, 'available', 0),
(809, 'UVFH01', 'Haida UV Filter ', 'Haida', '12.48', 'Slim MC-UV PRO II', 'UV Filter', '', 'FFB-08-1', NULL, 'available', 0),
(810, 'SETFJ02', 'FujiFilm X-S20 Set', 'FUJIFILM', '2986.70', '', 'Camera Set', '', 'FFB-08-1', NULL, 'available', 0),
(811, 'CFJ02', 'FujiFilm X-S20 Camera', 'FUJIFILM', '1163.00', 'X-S20', 'Digital Camera', '', 'FFB-08-1', NULL, 'available', 0),
(812, 'LFJ02', 'FujiFilm 16-80mm Lens', 'FUJIFILM', '690.00', 'XS18-80mmF4', 'Zoom Lens', '', 'FFB-08-1', 'fujifilmLens.jpg', 'available', 0),
(813, 'BFJ02', 'FujiFilm Camera Bag', 'Arcury', '25.28', 'CB02-B', 'Camera Bag', '', 'FFB-08-1', NULL, 'available', 0),
(814, 'SDAB02', 'AngelBird 128 GB Sd Card', 'AngelBird', '25.02', 'AV PRO V30', 'SD Card', '', 'FFB-08-1', NULL, 'available', 0),
(815, 'BPFJ03', 'FujiFilm Battery Pack', 'FUJIFILM', '58.75', 'NP-W235', 'Battery', '', 'FFB-08-1', NULL, 'available', 0),
(816, 'BPSR02', 'SmallRig Battery Pack', 'Small Rig', '30.13', 'BJ005', 'Battery', '', 'FFB-08-1', NULL, 'available', 0),
(817, 'RCSR02', 'SmallRig Rig Cage', 'Small Rig', '94.02', '4230', 'Cage', '', 'FFB-08-1', NULL, 'available', 0),
(818, 'BCSR02', 'SmallRig Dual Charger', 'Small Rig', '17.86', 'CP005', 'Charge Station', '', 'FFB-08-1', NULL, 'available', 0),
(819, 'PAFJ02', 'FujiFilm Power Adaptor', 'FUJIFILM', '20.00', 'AC-5VJ', 'AC Adapter', '', 'FFB-08-1', NULL, 'available', 0),
(820, 'CCFJ02', 'FujiFilm Type-C Cable', 'FUJIFILM', '7.64', '', 'Cable', '', 'FFB-08-1', NULL, 'available', 0),
(821, 'SETFJ03', 'FujiFilm X-S20 Set', 'FUJIFILM', '2986.70', '', 'Camera Set', '', 'FFB-08-1', NULL, 'available', 0),
(822, 'CFJ03', 'FujiFilm X-S20 Camera', 'FUJIFILM', '1163.00', 'X-S20', 'Digital Camera', '', 'FFB-08-1', NULL, 'available', 0),
(823, 'LFJ03', 'FujiFilm 16-80mm Lens', 'FUJIFILM', '690.00', 'XS18-80mmF4', 'Zoom Lens', '', 'FFB-08-1', 'fujifilmLens.jpg', 'available', 0),
(824, 'BFJ03', 'FujiFilm Camera Bag', 'Arcury', '25.28', 'CB02-B', 'Camera Bag', '', 'FFB-08-1', NULL, 'available', 0),
(825, 'SDAB03', 'AngelBird 128 GB Sd Card', 'AngelBird', '25.02', 'AV PRO V30', 'SD Card', '', 'FFB-08-1', NULL, 'available', 0),
(826, 'BPSR03', 'SmallRig Battery Pack', 'Small Rig', '30.13', 'BJ005', 'Battery', '', 'FFB-08-1', NULL, 'available', 0),
(827, 'RCSR03', 'SmallRig Rig Cage', 'Small Rig', '94.02', '4230', 'Cage', '', 'FFB-08-1', NULL, 'available', 0),
(828, 'BCSR03', 'SmallRig Dual Charger', 'Small Rig', '17.86', 'CP005', 'Charge Station', '', 'FFB-08-1', NULL, 'available', 0),
(829, 'PAFJ03', 'FujiFilm Power Adaptor', 'FUJIFILM', '20.00', 'AC-5VJ', 'AC Adapter', '', 'FFB-08-1', NULL, 'available', 0),
(830, 'CCFJ03', 'FujiFilm Type-C Cable', 'FUJIFILM', '7.64', '', 'Cable', '', 'FFB-08-1', NULL, 'available', 0),
(831, 'SETFJ04', 'FujiFilm X-S20 Set', 'FUJIFILM', '2986.70', '', 'Camera Set', '', 'FFB-08-1', NULL, 'available', 0),
(832, 'CFJ04', 'FujiFilm X-S20 Camera', 'FUJIFILM', '1163.00', 'X-S20', 'Digital Camera', '', 'FFB-08-1', NULL, 'available', 0),
(833, 'LFJ04', 'FujiFilm 16-80mm Lens', 'FUJIFILM', '690.00', 'XS18-80mmF4', 'Zoom Lens', '', 'FFB-08-1', 'fujifilmLens.jpg', 'available', 0),
(834, 'BFJ04', 'FujiFilm Camera Bag', 'Arcury', '30.00', 'CB02-B', 'Camera Bag', '', 'FFB-08-1', NULL, 'available', 0),
(835, 'SDAB04', 'AngelBird 128 GB Sd Card', 'AngelBird', '25.02', 'AV PRO V30', 'SD Card', '', 'FFB-08-1', NULL, 'available', 0),
(836, 'BPFJ04', 'FujiFilm Battery Pack', 'FUJIFILM', '58.75', 'NP-W235', 'Battery', '', 'FFB-08-1', NULL, 'available', 0),
(837, 'BPSR04', 'SmallRig Battery Pack', 'Small Rig', '30.13', 'BJ005', 'Battery', '', 'FFB-08-1', NULL, 'available', 0),
(838, 'RCSR04', 'SmallRig Rig Cage', 'Small Rig', '94.02', '4230', 'Cage', '', 'FFB-08-1', NULL, 'available', 0),
(839, 'BCSR04', 'SmallRig Dual Charger', 'Small Rig', '17.86', 'CP005', 'Charge Station', '', 'FFB-08-1', NULL, 'available', 0),
(840, 'PAFJ04', 'FujiFilm Power Adaptor', 'FUJIFILM', '20.00', 'AC-5VJ', 'AC Adapter', '', 'FFB-08-1', NULL, 'available', 0),
(841, 'CCFJ04', 'FujiFilm Type-C Cable', 'FUJIFILM', '7.64', '', 'Cable', '', 'FFB-08-1', NULL, 'available', 0),
(842, 'SETFJ05', 'FujiFilm X-S20 Set', 'FUJIFILM', '2986.70', '', 'Camera Set', '', 'FFB-08-1', NULL, 'available', 0),
(843, 'CFJ05', 'FujiFilm X-S20 Camera', 'FUJIFILM', '1163.00', 'X-S20', 'Digital Camera', '', 'FFB-08-1', NULL, 'available', 0),
(844, 'LFJ05', 'FujiFilm 16-80mm Lens', 'FUJIFILM', '690.00', 'XS18-80mmF4', 'Zoom Lens', '', 'FFB-08-1', 'fujifilmLens.jpg', 'available', 0),
(845, 'BFJ05', 'FujiFilm Camera Bag', 'Arcury', '25.28', 'CB02-B', 'Camera Bag', '', 'FFB-08-1', NULL, 'available', 0),
(846, 'SDAB05', 'AngelBird 128 GB Sd Card', 'AngelBird', '25.02', 'AV PRO V30', 'SD Card', '', 'FFB-08-1', NULL, 'available', 0),
(847, 'BPFJ05', 'FujiFilm Battery Pack', 'FUJIFILM', '58.75', 'NP-W235', 'Battery', '', 'FFB-08-1', NULL, 'available', 0),
(848, 'BPSR05', 'SmallRig Battery Pack', 'Small Rig', '30.13', 'BJ005', 'Battery', '', 'FFB-08-1', NULL, 'available', 0),
(849, 'RCSR05', 'SmallRig Rig Cage', 'Small Rig', '94.02', '4230', 'Cage', '', 'FFB-08-1', NULL, 'available', 0),
(850, 'BCSR05', 'SmallRig Dual Charger', 'Small Rig', '17.86', 'CP005', 'Charge Station', '', 'FFB-08-1', NULL, 'available', 0),
(851, 'PAFJ05', 'FujiFilm Power Adaptor', 'FUJIFILM', '20.00', 'AC-5VJ', 'AC Adapter', '', 'FFB-08-1', NULL, 'available', 0),
(852, 'CCFJ05', 'FujiFilm Type-C Cable', 'FUJIFILM', '7.64', '', 'Cable', '', 'FFB-08-1', NULL, 'available', 0),
(853, 'SETCC100', 'Canon C100 Set', 'CANON', '4860.38', '', 'Camera Set', '', 'FFB-08-2', NULL, 'available', 0),
(854, 'CC100', 'Canon C100 Camera', 'CANON', '3283.22', 'C100 Mark II', 'Cinema Camera', '', 'FFB-08-2', NULL, 'available', 0),
(855, 'BC100', 'Canon C100 Camera Bag', 'Lowepro', '289.99', 'Commercial AW DV', 'Camera Bag', '', 'FFB-08-2', NULL, 'available', 0),
(856, 'BBC100-1', 'Canon Large Battery Pack', 'CANON', '451.60', 'BP-975', 'Battery', '', 'FFB-08-2', NULL, 'available', 0),
(857, 'BBC100-2', 'Canon Large Battery Pack', 'CANON', '451.60', 'BP-975', 'Battery', '', 'FFB-08-2', NULL, 'available', 0),
(858, 'BBC100-3', 'Canon Battery Pack', 'CANON', '178.97', 'BP-955', 'Battery', '', 'FFB-08-2', NULL, 'available', 0),
(859, 'BCC100', 'Canon Battery Charger', 'CANON', '100.00', 'CG-940', 'Charge Station', '', 'FFB-08-2', NULL, 'available', 0),
(860, 'PAC100', 'Canon Power Adaptor', 'CANON', '100.00', 'CA-941', 'AC Adapter', '', 'FFB-08-2', NULL, 'available', 0),
(861, 'RCAC100', 'RCA Composite Cable (M-F)', 'TDK', '5.00', 'ZCAT2235', 'RCA Cable', '', 'FFB-08-2', NULL, 'available', 0),
(862, 'SETCC200', 'Canon C200 Set', 'CANON', '5791.59', '', 'Camera Set', '', 'FFB-08-2', NULL, 'available', 0),
(863, 'CC200', 'Canon C200 Camera', 'CANON', '4368.12', 'C200', 'Cinema Camera', '', 'FFB-08-2', NULL, 'available', 0),
(864, 'BC200', 'Canon C200 Camera Bag', 'KATA', '335.74', 'CC-197', 'Camera Bag', '', 'FFB-08-2', NULL, 'available', 0),
(865, 'BBC200', 'Canon C200 Battery', 'CANON', '329.73', 'BP-A30', 'Battery', '', 'FFB-08-2', NULL, 'available', 0),
(866, 'BCC200', 'Canon C200 Battery Charger', 'CANON', '349.00', 'CG-A20', 'Battery Charger', '', 'FFB-08-2', NULL, 'available', 0),
(867, 'PAC200', 'Canon C200 Power Adaptor', 'CANON', '399.00', 'CA-A10', 'AC Adapter', '', 'FFB-08-2', NULL, 'available', 0),
(868, 'RCAC200', 'RCA Composite Cable (M-M)', '-', '10.00', '', 'RCA Cable', '', 'FFB-08-2', NULL, 'available', 0),
(869, 'SETCLS', 'Samyang Cine Lens Set', 'Samyang', '2279.91', '', 'Lens Set', '', 'FFB-08-2', 'samyangCineLensSet.jpg', 'available', 0),
(870, 'BSL', 'Samyang Lens Bag', 'Manfrotto', '301.15', 'MP-BP-50BB', 'Lens Bag', '', 'FFB-08-2', 'samyangLensBag.jpg', 'available', 0),
(871, 'CLS24', 'Samyang Cine Lens 24mm T 1.5', 'Samyang', '272.62', '24mm T1.5 VDSLR ED AS IF UMC II', 'Cine Lens', '', 'FFB-08-2', 'samyangLens24.jpg', 'available', 0),
(872, 'CLS35', 'Samyang Cine Lens 35mm', 'Samyang', '651.83', '35mm T1.5 AS UMC II', 'Cine Lens', '', 'FFB-08-2', 'samyangLens24.jpg', 'available', 0),
(873, 'CLS50', 'Samyang Cine Lens 50mm', 'Samyang', '624.96', '50mm T1.5 VDSLR AS UMC', 'Cine Lens', '', 'FFB-08-2', 'samyangLens50.jpg', 'available', 0),
(874, 'CLS85', 'Samyang Cine Lens 85mm', 'Samyang', '429.35', '85mm T1.5 VDSLR AS IF UMC II', 'Cine Lens', '', 'FFB-08-2', 'samyangLens85.jpg', 'available', 0),
(875, 'ZLC70200', 'Canon Zoom Lens 70-200mm ', 'CANON', '2223.76', '70-200mm f/2.8L IS III USM', 'Zoom Lens', '', 'FFB-08-2', 'canonLens70-200.jpg', 'available', 0),
(876, 'ZLC2470', 'Canon Zoom Lens 24-70mm ', 'CANON', '1618.40', '24-70mm f/2.8L II USM', 'Zoom Lens', '', 'FFB-08-2', 'canonLens24-70.jpg', 'available', 0),
(877, 'ZLC1635', 'Canon Zoom Lens 16-35mm', 'CANON', '1386.71', '16-35mm f/2.8L II USM', 'Zoom Lens', '', 'FFB-08-2', NULL, 'available', 0),
(878, 'ZLC24105', 'Canon Zoom Lens 24-105mm', 'CANON', '1293.67', '24-105mm f/4L IS USM', 'Zoom Lens', '', 'FFB-08-2', NULL, 'available', 0),
(879, 'SETP01', 'Panasonic Video Camera Set', 'Panasonic', '2534.44', '-', 'Video Camera Set', '', 'FFB-08-1', 'PansVidCamSet.jpg', 'available', 0),
(880, 'CP01', 'Panasonic  AG-AC90 Camera', 'Panasonic', '2095.00', 'AG-AC90 AEJ', 'Video Camera', '', 'FFB-08-1', NULL, 'available', 0),
(881, 'BP01', 'Panasonic Video Camera Bag', 'Porta Brace', '329.00', 'CTC-MINI', 'Camera Bag', '', 'FFB-08-1', 'PansVidCamBag.jpg', 'available', 0),
(882, 'BBP01', 'Panasonic Battery Pack', 'Panasonic', '35.69', 'CGA-D54s', 'Battery', '', 'FFB-08-1', NULL, 'available', 0),
(883, 'BCP01', 'Panasonic Battery Charger', 'Panasonic', '46.75', 'DE-A88D', 'Battery Charger', '', 'FFB-08-1', NULL, 'available', 0),
(884, 'PAP01', 'Panasonic Power Adaptor', 'Panasonic', '28.00', 'VSK0726', 'AC Adapter', '', 'FFB-08-1', NULL, 'available', 0),
(885, 'SETP02', 'Panasonic Video Camera Set', 'Panasonic', '2534.44', '', 'Video Camera Set', '', 'FFB-08-1', 'PansVidCamSet.jpg', 'available', 0),
(886, 'CP02', 'Panasonic  AG-AC90 Camera', 'Panasonic', '2095.00', 'AG-AC90 AEJ', 'Video Camera', '', 'FFB-08-1', NULL, 'available', 0),
(887, 'BP02', 'Panasonic Video Camera Bag', 'Porta Brace', '329.00', 'CTC-MINI', 'Camera Bag', '', 'FFB-08-1', 'PansVidCamBag.jpg', 'available', 0),
(888, 'BBP02', 'Panasonic Battery Pack', 'Panasonic', '35.69', 'CGA-D54s', 'Battery', '', 'FFB-08-1', NULL, 'available', 0),
(889, 'BCP02', 'Panasonic Battery Charger', 'Panasonic', '46.75', 'DE-A88D', 'Battery Charger', '', 'FFB-08-1', NULL, 'available', 0),
(890, 'PAP02', 'Panasonic Power Adaptor', 'Panasonic', '28.00', 'VSK0726', 'AC Adapter', '', 'FFB-08-1', NULL, 'available', 0),
(891, 'SETP03', 'Panasonic Video Camera Set', 'Panasonic', '2534.44', '', 'Video Camera Set', '', 'FFB-08-1', 'PansVidCamSet.jpg', 'available', 0),
(892, 'CP03', 'Panasonic  AG-AC90 Camera', 'Panasonic', '2095.00', 'AG-AC90 AEJ', 'Video Camera', '', 'FFB-08-1', NULL, 'available', 0),
(893, 'BP03', 'Panasonic Video Camera Bag', 'Porta Brace', '329.00', 'CTC-MINI', 'Camera Bag', '', 'FFB-08-1', 'PansVidCamBag.jpg', 'available', 0),
(894, 'BBP03', 'Panasonic Battery Pack', 'Panasonic', '35.69', 'CGA-D54s', 'Battery', '', 'FFB-08-1', NULL, 'available', 0),
(895, 'BCP03', 'Panasonic Battery Charger', 'Panasonic', '46.75', 'DE-A88D', 'Battery Charger', '', 'FFB-08-1', NULL, 'available', 0),
(896, 'PAP03', 'Panasonic Power Adaptor', 'Panasonic', '28.00', 'VSK0726', 'AC Adapter', '', 'FFB-08-1', NULL, 'available', 0),
(897, 'SETP04', 'Panasonic Video Camera Set', 'Panasonic', '2534.44', '', 'Video Camera Set', '', 'FFB-08-1', 'PansVidCamSet.jpg', 'available', 0),
(898, 'CP04', 'Panasonic  AG-AC90 Camera', 'Panasonic', '2095.00', 'AG-AC90 AEJ', 'Video Camera', '', 'FFB-08-1', NULL, 'available', 0),
(899, 'BP04', 'Panasonic Video Camera Bag', 'Porta Brace', '329.00', 'CTC-MINI', 'Camera Bag', '', 'FFB-08-1', 'PansVidCamBag.jpg', 'available', 0),
(900, 'BBP04', 'Panasonic Battery Pack', 'Panasonic', '35.69', 'CGA-D54s', 'Battery', '', 'FFB-08-1', NULL, 'available', 0),
(901, 'BCP04', 'Panasonic Battery Charger', 'Panasonic', '46.75', 'DE-A88D', 'Battery Charger', '', 'FFB-08-1', NULL, 'available', 0),
(902, 'PAP04', 'Panasonic Power Adaptor', 'Panasonic', '28.00', 'VSK0726', 'AC Adapter', '', 'FFB-08-1', NULL, 'available', 0),
(903, 'SETP05', 'Panasonic Video Camera Set', 'Panasonic', '2495.43', '', 'Video Camera Set', '', 'FFB-08-1', 'PansVidCamSet.jpg', 'available', 0),
(904, 'CP05', 'Panasonic  AG-AC90 Camera', 'Panasonic', '2095.00', 'AG-AC90 AEJ', 'Video Camera', '', 'FFB-08-1', NULL, 'available', 0),
(905, 'BP05', 'Panasonic Video Camera Bag', 'Lowepro', '289.99', 'Commercial AW DV', 'Camera Bag', '', 'FFB-08-1', 'PansVidCamBag.jpg', 'available', 0),
(906, 'BBP05', 'Panasonic Battery Pack', 'Panasonic', '35.69', 'CGA-D54s', 'Battery', '', 'FFB-08-1', NULL, 'available', 0),
(907, 'BCP05', 'Panasonic Battery Charger', 'Panasonic', '46.75', 'DE-A88D', 'Battery Charger', '', 'FFB-08-1', NULL, 'available', 0),
(908, 'PAP05', 'Panasonic Power Adaptor', 'Panasonic', '28.00', 'VSK0726', 'AC Adapter', '', 'FFB-08-1', NULL, 'available', 0),
(909, 'SETP06', 'Panasonic Video Camera Set', 'Panasonic', '2495.43', '', 'Video Camera Set', '', 'FFB-08-1', 'PansVidCamSet.jpg', 'available', 0),
(910, 'CP06', 'Panasonic  AG-AC90 Camera', 'Panasonic', '2095.00', 'AG-AC90 AEJ', 'Video Camera', '', 'FFB-08-1', NULL, 'available', 0),
(911, 'BP06', 'Panasonic Video Camera Bag', 'Lowepro', '289.99', 'Commercial AW DV', 'Camera Bag', '', 'FFB-08-1', 'PansVidCamBag.jpg', 'available', 0),
(912, 'BBP06', 'Panasonic Battery Pack', 'Panasonic', '35.69', 'CGA-D54s', 'Battery', '', 'FFB-08-1', NULL, 'available', 0),
(913, 'BCP06', 'Panasonic Battery Charger', 'Panasonic', '46.75', 'DE-A88D', 'Battery Charger', '', 'FFB-08-1', NULL, 'available', 0),
(914, 'PAP06', 'Panasonic Power Adaptor', 'Panasonic', '28.00', 'VSK0726', 'AC Adapter', '', 'FFB-08-1', NULL, 'available', 0),
(915, 'SETP07', 'Panasonic Video Camera Set', 'Panasonic', '2495.43', '', 'Video Camera Set', '', 'FFB-08-1', 'PansVidCamSet.jpg', 'available', 0),
(916, 'CP07', 'Panasonic  AG-AC90 Camera', 'Panasonic', '2095.00', 'AG-AC90 AEJ', 'Video Camera', '', 'FFB-08-1', NULL, 'available', 0),
(917, 'BP07', 'Panasonic Video Camera Bag', 'Lowepro', '289.99', 'Commercial AW DV', 'Camera Bag', '', 'FFB-08-1', 'PansVidCamBag.jpg', 'available', 0),
(918, 'BBP07', 'Panasonic Battery Pack', 'Panasonic', '35.69', 'CGA-D54s', 'Battery', '', 'FFB-08-1', NULL, 'available', 0),
(919, 'BCP07', 'Panasonic Battery Charger', 'Panasonic', '46.75', 'DE-A88D', 'Battery Charger', '', 'FFB-08-1', NULL, 'available', 0),
(920, 'PAP07', 'Panasonic Power Adaptor', 'Panasonic', '28.00', 'VSK0726', 'AC Adapter', '', 'FFB-08-1', NULL, 'available', 0),
(921, 'OVFZ01', 'Z Finder Optical View Finder', 'Zacuto ', '251.75', 'Z-Finder Jr', 'Viewfinder', '', 'FFB-08-2', NULL, 'available', 0),
(922, 'MBV01', 'Vocas Matte Box', 'Vocas', '898.00', 'MB-255', 'Matte Box', '', 'FFB-08-2', NULL, 'available', 0),
(923, 'MBV02', 'Vocas Matte Box', 'Vocas', '898.50', 'MB-255', 'Matte Box', '', 'FFB-08-2', NULL, 'available', 0),
(924, 'CPAC01', 'Canon Compact Power Adaptor', 'CANON', '162.82', 'CA-940', 'AC Adapter', '', 'FFB-08-2', NULL, 'available', 0),
(925, 'FPV01', 'Vocas Follow Focus Kit', 'Vocas', '1329.45', 'MFC-1', 'Focus Puller', '', 'FFB-08-2', NULL, 'available', 0),
(926, 'FPV02', 'Vocas Follow Focus Kit', 'Vocas', '1329.45', 'MFC-1', 'Focus Puller', '', 'FFB-08-2', NULL, 'available', 0),
(927, 'NDFT58', 'Tiffen 58mm ND Filter', 'Tiffen', '20.00', '58mm ND 0.9', 'ND Filter', '', 'FFB-08-2', NULL, 'available', 0),
(928, 'NDFT52', 'Tiffen 52mm ND Filter', 'Tiffen', '15.00', '52mm ND 0.9', 'ND Filter', '', 'FFB-08-2', NULL, 'available', 0),
(929, 'NDVFD58', 'Daisee 58mm Variable ND Filter', 'Daisee', '128.60', '58 Variable ND PRO DMC SLIM', 'ND Filter', '', 'FFB-08-2', NULL, 'available', 0),
(930, 'NDFS', 'Schneider 4x4 ND.3 Filter', 'Schneider', '189.00', '4x4 ND.3', '4x4 Filter', '', 'FFB-08-2', NULL, 'available', 0),
(931, 'TPFS', 'Schneider 4x4 TRUE-POL. Filter', 'Schneider', '357.30', '4x4 CIRC TRUE-POL', '4x4 Filter', '', 'FFB-08-2', NULL, 'available', 0),
(932, 'UVFS', 'Schneider 4x4 UV-410 (Haze) Filter', 'Schneider', '171.00', '4x4 UV-410 (HAZE)', '4x4 Filter', '', 'FFB-08-2', NULL, 'available', 0),
(933, 'PREK', 'Edelkrone Pocket Rig 2', 'Edelkrone', '266.75', 'Pocket Rig2', 'Support Rig', '', 'FFB-08-2', NULL, 'available', 0),
(934, 'THEK', 'Edelkrone Tripod Head', 'Edelkrone', '266.67', 'FLEXTILT HEAD 2', 'Tripod Head', '', 'FFB-08-2', NULL, 'available', 0),
(935, 'TS01', 'Manfrotto 501 Set', 'Manfrotto', '935.00', '501', 'Tripod Set', '', 'FFB-08-1', 'Manfrotto_501Set.jpg', 'available', 0),
(936, 'TS02', 'Manfrotto 501 Set', 'Manfrotto', '935.00', '501', 'Tripod Set', '', 'FFB-08-1', NULL, 'available', 0),
(937, 'TS03', 'Manfrotto 501 Set', 'Manfrotto', '935.00', '501', 'Tripod Set', '', 'FFB-08-1', NULL, 'available', 0),
(938, 'TS04', 'Manfrotto 501 Set', 'Manfrotto', '935.00', '501', 'Tripod Set', '', 'FFB-08-1', NULL, 'available', 0),
(939, 'TS05', 'Manfrotto 501 Set', 'Manfrotto', '935.00', '501', 'Tripod Set', '', 'FFB-08-1', NULL, 'available', 0),
(940, 'TS06', 'Manfrotto 501 Set', 'Manfrotto', '935.00', '501', 'Tripod Set', '', 'FFB-08-1', NULL, 'available', 0),
(941, 'TS07', 'Manfrotto 501 Set', 'Manfrotto', '935.00', '501', 'Tripod Set', '', 'FFB-08-1', NULL, 'available', 0),
(942, 'TS08', 'MSSF\'de', '', '0.00', '', '', '', '-', NULL, 'available', 0),
(943, 'TS09', 'Vinten PRO 130 Set', 'Vinten', '2100.00', 'PRO 130', 'Tripod Set', '', 'FFB-08-1', NULL, 'available', 0),
(944, 'TS10', 'Manfrotto 501 Head + Vinten PT350 Leg', 'Manfrotto+Vinten', '655.00', '501+PT350', 'Tripod Set', '', 'FFB-08', NULL, 'available', 0),
(945, 'TS11', 'Manfrotto 501 Set', 'Manfrotto', '675.00', '501', 'Tripod Set', '', 'FFB-08-1', NULL, 'available', 0),
(946, 'TS12', 'Manfrotto 521 HDV Set', 'Manfrotto', '950.00', '521 HDV', 'Tripod Set', '', 'FFB-08-1', NULL, 'available', 0),
(947, 'TS13', 'Bekleniyor', '', '0.00', '', '', '', '', NULL, 'available', 0),
(948, 'TS14', 'Bekleniyor', '', '0.00', '', '', '', '', NULL, 'available', 0),
(949, 'TS15', 'Manfrotto  501 HDV Set', 'Manfrotto', '900.00', '501 HDV', 'Tripod Set', '', 'FFB-08-1', NULL, 'available', 0),
(950, 'TS16', 'Manfrotto  501 HDV Set', 'Manfrotto', '900.00', '501 HDV', 'Tripod Set', '', 'FFB-08-1', NULL, 'available', 0),
(951, 'TS17', 'Manfrotto 557B Monopod', 'Manfrotto', '160.00', '557B', 'Monopod Set', '', 'FFB-08-1', NULL, 'available', 0),
(952, 'TS18', 'Manfrotto 222 Photo Tripod Set', 'Manfrotto', '380.00', '222', 'Tripod Set', '', 'FFB-08-1', NULL, 'available', 0),
(953, 'TS19', 'Manfrotto 136 Set', 'Manfrotto', '640.00', '136', 'Tripod Set', '', 'FFB-08-1', NULL, 'available', 0),
(954, 'TS20', 'Manfrotto 136 Set', 'Manfrotto', '640.00', '136', 'Tripod Set', '', 'FFB-08-1', NULL, 'available', 0),
(955, 'TS21', 'Sachtler DV4 Mk I set', 'Sachtler', '1350.00', 'DV4 Mk I', 'Tripod Set', '', 'FFB-08-1', NULL, 'available', 0),
(956, 'TS22', 'Manfrotto 222 Photo Tripod Set', 'Manfrotto', '380.00', '222', 'Tripod Set', '', 'FFB-08-1', NULL, 'available', 0),
(957, 'TS23', 'Manfrotto 222 Photo Tripod Set', 'Manfrotto', '380.00', '222', 'Tripod Set', '', 'FFB-08-1', NULL, 'available', 0);

-- --------------------------------------------------------

--
-- Table structure for table `quick_comments`
--

CREATE TABLE `quick_comments` (
  `id` int(11) NOT NULL,
  `comment_text` varchar(255) NOT NULL,
  `comment_type` enum('approve','reject','general') DEFAULT 'general'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Dumping data for table `quick_comments`
--

INSERT INTO `quick_comments` (`id`, `comment_text`, `comment_type`) VALUES
(1, 'Approved. Please return the item in good condition by the due date.', 'approve'),
(2, 'Approved. You can collect the item from the lab during office hours.', 'approve'),
(3, 'Rejected. This item is reserved for another course project.', 'reject'),
(4, 'Rejected. Please provide a more detailed purpose for your request.', 'reject'),
(5, 'Please contact me via email for further discussion before approval.', 'general');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `course_code` varchar(50) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `purpose` varchar(1000) NOT NULL,
  `due_date` date NOT NULL,
  `instructor_decision` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
  `instructor_comment` varchar(1000) DEFAULT NULL,
  `chair_decision` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
  `chair_comment` varchar(1000) DEFAULT NULL,
  `status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `student_id`, `item_id`, `course_code`, `instructor_id`, `purpose`, `due_date`, `instructor_decision`, `instructor_comment`, `chair_decision`, `chair_comment`, `status`) VALUES
(16, 21, 957, 'COMD 102', 0, 'ef', '2026-03-06', 'approved', '', 'rejected', 'Rejected. This item is reserved for another course project.', 'rejected');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  `userType` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `token`, `userType`) VALUES
(1, 'Deniz Ergin Erbil', 'deniz.erbil@bilkent.edu.tr', '$2a$10$e5fur6yolFMdD2fICktZBeMGVtwNjtajsoSnGYRiqDfvLj3aJbsG2', '', 'instructor'),
(2, 'Emre Toros', 'comd.emre-toros@example.com', '$2a$10$e5fur6yolFMdD2fICktZBeMGVtwNjtajsoSnGYRiqDfvLj3aJbsG2', '', 'instructor'),
(3, 'Özen Baş', 'comd.ozen-bas@example.com', '$2a$10$e5fur6yolFMdD2fICktZBeMGVtwNjtajsoSnGYRiqDfvLj3aJbsG2', '', 'instructor'),
(4, 'Burak Özçetin', 'comd.burak-ozcetin@example.com', '$2a$10$e5fur6yolFMdD2fICktZBeMGVtwNjtajsoSnGYRiqDfvLj3aJbsG2', '', 'instructor'),
(5, 'Boran Aksoy', 'comd.boran-aksoy@example.com', '$2a$10$e5fur6yolFMdD2fICktZBeMGVtwNjtajsoSnGYRiqDfvLj3aJbsG2', '', 'instructor'),
(6, 'Egemen Kırkağaç', 'comd.egemen-kirkagac@example.com', '$2a$10$e5fur6yolFMdD2fICktZBeMGVtwNjtajsoSnGYRiqDfvLj3aJbsG2', '', 'instructor'),
(7, 'Melih Aydınat', 'comd.melih-aydinat@example.com', '$2a$10$e5fur6yolFMdD2fICktZBeMGVtwNjtajsoSnGYRiqDfvLj3aJbsG2', '', 'instructor'),
(8, 'Andreas Treske', 'comd.andreas-treske@example.com', '$2a$10$e5fur6yolFMdD2fICktZBeMGVtwNjtajsoSnGYRiqDfvLj3aJbsG2', '', 'instructor'),
(9, 'Ayşenur Dal', 'comd.aysenur-dal@example.com', '$2a$10$e5fur6yolFMdD2fICktZBeMGVtwNjtajsoSnGYRiqDfvLj3aJbsG2', '', 'instructor'),
(10, 'Burcu Baykan', 'comd.burcu-baykan@example.com', '$2a$10$e5fur6yolFMdD2fICktZBeMGVtwNjtajsoSnGYRiqDfvLj3aJbsG2', NULL, 'instructor'),
(11, 'Bülent Çaplı', 'comd.bulent-capli@example.com', '$2a$10$e5fur6yolFMdD2fICktZBeMGVtwNjtajsoSnGYRiqDfvLj3aJbsG2', '', 'instructor'),
(12, 'Colleen Kennedy-Karpat', 'comd.colleen-kennedy-karpat@example.com', '$2a$10$e5fur6yolFMdD2fICktZBeMGVtwNjtajsoSnGYRiqDfvLj3aJbsG2', '', 'instructor'),
(13, 'Emel Özdora', 'comd.emel-ozdora@example.com', '$2a$10$e5fur6yolFMdD2fICktZBeMGVtwNjtajsoSnGYRiqDfvLj3aJbsG2', '', 'instructor'),
(14, 'Fulten Larlar', 'comd.fulten-larlar@example.com', '$2a$10$e5fur6yolFMdD2fICktZBeMGVtwNjtajsoSnGYRiqDfvLj3aJbsG2', '', 'instructor'),
(15, 'Funda Şenova Tunalı', 'comd.funda-senova-tunali@example.com', '$2a$10$e5fur6yolFMdD2fICktZBeMGVtwNjtajsoSnGYRiqDfvLj3aJbsG2', '', 'instructor'),
(16, 'Jülide Akşiyote Görür', 'comd.julide-aksiyote-gorur@example.com', '$2a$10$e5fur6yolFMdD2fICktZBeMGVtwNjtajsoSnGYRiqDfvLj3aJbsG2', '', 'instructor'),
(17, 'Müge Mengü Hale', 'comd.muge-mengu-hale@example.com', '$2a$10$e5fur6yolFMdD2fICktZBeMGVtwNjtajsoSnGYRiqDfvLj3aJbsG2', '', 'instructor'),
(18, 'Ufuk Önen', 'comd.ufuk-onen@example.com', '$2a$10$e5fur6yolFMdD2fICktZBeMGVtwNjtajsoSnGYRiqDfvLj3aJbsG2', '', 'instructor'),
(19, 'Wickham Catesby Flannagan', 'comd.wickham-catesby-flannagan@example.com', '$2a$10$e5fur6yolFMdD2fICktZBeMGVtwNjtajsoSnGYRiqDfvLj3aJbsG2', '', 'instructor'),
(20, 'Yusuf Akçura', 'comd.yusuf-akcura@example.com', '$2a$10$e5fur6yolFMdD2fICktZBeMGVtwNjtajsoSnGYRiqDfvLj3aJbsG2', '', 'instructor'),
(21, 'Elifnur Özçelik', 'elifnur.ozcelik@ug.bilkent.edu.tr', '$2a$10$e5fur6yolFMdD2fICktZBeMGVtwNjtajsoSnGYRiqDfvLj3aJbsG2', NULL, 'student'),
(22, 'Başak Uran', 'basak.uran@ug.bilkent.edu.tr', '$2a$10$e5fur6yolFMdD2fICktZBeMGVtwNjtajsoSnGYRiqDfvLj3aJbsG2', NULL, 'student'),
(23, 'Andreas Treske', 'treske@bilkent.edu.tr', '$2a$10$e5fur6yolFMdD2fICktZBeMGVtwNjtajsoSnGYRiqDfvLj3aJbsG2', NULL, 'chair'),
(24, 'Eda Abacıoğlu', 'eda.abacioglu@ug.bilkent.edu.tr', '$2a$10$e5fur6yolFMdD2fICktZBeMGVtwNjtajsoSnGYRiqDfvLj3aJbsG2', NULL, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `givenCourses`
--
ALTER TABLE `givenCourses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `asset_tag_id` (`asset_tag_id`),
  ADD UNIQUE KEY `asset_tag_id_2` (`asset_tag_id`);

--
-- Indexes for table `quick_comments`
--
ALTER TABLE `quick_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `givenCourses`
--
ALTER TABLE `givenCourses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=959;

--
-- AUTO_INCREMENT for table `quick_comments`
--
ALTER TABLE `quick_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
