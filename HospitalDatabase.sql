-- phpMyAdmin SQL Dump
-- version 4.2.7
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Feb 12, 2016 at 04:28 AM
-- Server version: 5.5.41-log
-- PHP Version: 5.6.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hospital database`
--

CREATE DATABASE IF NOT EXISTS `hospital database`;
USE `hospital database`;

--
-- Table structure for table `drug`
--

CREATE TABLE IF NOT EXISTS `drug` (
  `DrugID` int(5) NOT NULL,
  `DrugName` text NOT NULL,
  `Dosage` varchar(6) NOT NULL,
  `UnitPrice` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drug`
--

INSERT INTO `drug` (`DrugID`, `DrugName`, `Dosage`, `UnitPrice`) VALUES
(1001, 'Lipitor', '250mg', '300.00'),
(1002, 'Lipitor', '100mg', '150.00'),
(1003, 'Nexium', '250mg', '250.00'),
(1004, 'Nexium', '100mg', '100.00'),
(1005, 'Plavix', '250mg', '170.00'),
(1006, 'Abilify', '25mg', '500.00'),
(1007, 'Seroquel', '25mg', '600.00'),
(1008, 'Seroquel', '10mg', '470.00'),
(1009, 'Crestor', '250mg', '340.00'),
(1010, 'Crestor', '100mg', '120.00'),
(1011, 'Epogen', '250mg', '700.00'),
(1012, 'Epogen', '100mg', '250.00'),
(1013, 'Acetaminophen', '100mg', '75.00'),
(1014, 'Acetaminophen', '200mg', '150.00'),
(1015, 'Labetalol', '150mg', '75.00');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `PatientID` tinyint(4) NOT NULL,
  `FirstName` text NOT NULL,
  `LastName` text NOT NULL,
  `Address` text NOT NULL,
  `City` text NOT NULL,
  `State` text NOT NULL,
  `ZipCode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`PatientID`, `FirstName`, `LastName`, `Address`, `City`, `State`, `ZipCode`) VALUES
(101, 'Billy', 'Cobbs', '4883 Adamsville Road', 'New York', 'NY', 10031),
(102, 'Eileen', 'Wilson', '2664 Lee Avenue', 'Cinnaminson', 'NJ', 80077),
(103, 'Bente', 'Wilson', '2664 Lee Avenue', 'Cinnaminson', 'NJ', 80077),
(104, 'Peng', 'Hung', '4916 Settlers Lane', 'New York', 'NY', 10016),
(105, 'Paz', 'Magana', '2038 Brentwood Drive', 'Queens', 'NY', 78744),
(106, 'Urbano', 'Rossi', '376 Richland Avenue', 'Queens', 'NY', 77487),
(107, 'Maria', 'Udinesi', '3180 Ersel Street', 'Queens', 'NY', 77487),
(108, 'Siljie', 'Samuelsson', '376 Stadium Drive', 'Edison', 'NJ', 20876),
(109, 'Ernie', 'Neil', '2751 Olive Street', 'Edison', 'Nj', 23576),
(110, 'Madoka', 'Mayahona', '1334 Rhapsody Street', 'Brooklyn', 'NY', 32618),
(111, 'Billy', 'Grenier', '1089 University Hill', 'Staten Island', 'NY', 62704),
(112, 'Rosa', 'Uiza', '458 West Street', 'Queens', 'NY', 11951),
(113, 'Raj', 'Basu', '376 Newark Drive', 'Elizabeth', 'NJ', 25489),
(114, 'Angel', 'Rodrigo', '3180 Skye Drive', 'Staten Islan', 'NY', 62481),
(115, 'Steven', 'Sanchez', '586 Riverside Drive', 'New York', 'NJ', 10035);

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE IF NOT EXISTS `prescription` (
  `PrescriptionID` tinyint(11) NOT NULL,
  `PatientID` tinyint(11) NOT NULL,
  `DrugID` int(5) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`PrescriptionID`, `PatientID`, `DrugID`, `Date`) VALUES
(1, 105, 1009, '2014-08-03'),
(9, 103, 1002, '2015-01-04'),
(15, 110, 1005, '2015-01-08'),
(2, 109, 1001, '2015-01-15'),
(13, 104, 1010, '2015-03-12'),
(7, 110, 1011, '2015-03-13'),
(14, 104, 1007, '2015-03-21'),
(5, 106, 1004, '2015-03-26'),
(12, 110, 1009, '2015-03-30'),
(6, 105, 1001, '2015-04-12'),
(4, 101, 1005, '2015-04-16'),
(11, 104, 1006, '2015-04-19'),
(10, 107, 1003, '2015-04-22'),
(8, 105, 1001, '2015-12-04'),
(3, 107, 1007, '2016-02-20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `drug`
--
ALTER TABLE `drug`
 ADD PRIMARY KEY (`DrugID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
 ADD UNIQUE KEY `PatientID` (`PatientID`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
 ADD PRIMARY KEY (`Date`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;