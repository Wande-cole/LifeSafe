-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 05, 2018 at 12:12 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lifesafe`
--
CREATE DATABASE `lifesafe` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `lifesafe`;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `idPatient` int(11) NOT NULL AUTO_INCREMENT,
  `fName` varchar(45) DEFAULT NULL,
  `lName` varchar(45) DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `PatientCode` varchar(50) NOT NULL,
  PRIMARY KEY (`idPatient`,`PatientCode`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`idPatient`, `fName`, `lName`, `dateOfBirth`, `PatientCode`) VALUES
(1, 'Wande', 'Shokunbi', '1995-04-25', ''),
(2, 'Lola', 'Shokunbi', '2018-00-26', 'LolaShokunbi63');

-- --------------------------------------------------------

--
-- Table structure for table `symptoms`
--

CREATE TABLE IF NOT EXISTS `symptoms` (
  `idSymptoms` int(11) NOT NULL AUTO_INCREMENT,
  `headache` varchar(3) DEFAULT NULL,
  `anaemia` varchar(3) DEFAULT NULL,
  `cold` varchar(3) DEFAULT NULL,
  `stool` varchar(3) DEFAULT NULL,
  `cough` varchar(3) DEFAULT NULL,
  `diarrhoea` varchar(3) DEFAULT NULL,
  `appetite` varchar(3) DEFAULT NULL,
  `vomitting` varchar(3) DEFAULT NULL,
  `bodyache` varchar(3) DEFAULT NULL,
  `bittertaste` varchar(3) DEFAULT NULL,
  `dizziness` varchar(3) DEFAULT NULL,
  `inflammation` varchar(3) DEFAULT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `weight` float DEFAULT NULL,
  `height` float DEFAULT NULL,
  `temperature` float DEFAULT NULL,
  `diagnosis` varchar(45) DEFAULT NULL,
  `PatientID` int(11) NOT NULL,
  PRIMARY KEY (`idSymptoms`,`PatientID`),
  KEY `fk_Symptoms_Patient_idx` (`PatientID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `symptoms`
--

INSERT INTO `symptoms` (`idSymptoms`, `headache`, `anaemia`, `cold`, `stool`, `cough`, `diarrhoea`, `appetite`, `vomitting`, `bodyache`, `bittertaste`, `dizziness`, `inflammation`, `date`, `weight`, `height`, `temperature`, `diagnosis`, `PatientID`) VALUES
(1, 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', NULL, 32, 43, 23, 'Headache', 1),
(11, 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '2018-10-26 21:53:09', 45, 123, 34, 'Headache', 2),
(12, 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', 'Yes', 'Yes', 'No', '2018-10-26 21:58:40', 67, 134, 45, 'Malaria', 2),
(13, 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'Yes', 'Yes', 'No', 'No', '2018-10-26 22:23:05', 34, 54, 45, 'null', 2),
(14, 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '2018-10-27 12:30:27', 45, 343, 34, 'Headache', 1),
(15, 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '2018-10-27 12:44:17', 43, 54, 34, 'Headache', 1),
(16, 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '2018-10-27 12:48:36', 343, 24, 23, 'Headache', 1),
(17, 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '2018-10-27 12:50:02', 46, 34, 34, 'Headache', 1),
(18, 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'No', 'Yes', 'Yes', 'No', 'No', '2018-10-27 12:56:31', 54, 324, 34, 'null', 2),
(19, 'Yes', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '2018-10-27 13:17:35', 67, 123, 34, 'Unknown', 2);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `symptoms`
--
ALTER TABLE `symptoms`
  ADD CONSTRAINT `fk_Symptoms_Patient` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`idPatient`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
