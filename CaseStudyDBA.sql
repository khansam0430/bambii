-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.5.8-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table casestudy.diaper
CREATE TABLE IF NOT EXISTS `diaper` (
  `DID` int(11) NOT NULL,
  `DIAPERTYPE` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `DIAPERTIME` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `DIAPERDATE` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `DIAPERNOTES` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`DID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table casestudy.diaper: ~4 rows (approximately)
/*!40000 ALTER TABLE `diaper` DISABLE KEYS */;
INSERT INTO `diaper` (`DID`, `DIAPERTYPE`, `DIAPERTIME`, `DIAPERDATE`, `DIAPERNOTES`) VALUES
	(1, 'wet', '12:00pm', '04/04/2021', 'very little'),
	(2, 'dirty', '3:00am', '04/04/2021', 'smelly'),
	(951, 'Wet', '05:30am', '04/05/2021', 'constipated'),
	(1001, 'Both', '11:10am', '04/08/2021', 'very smelly, yuck');
/*!40000 ALTER TABLE `diaper` ENABLE KEYS */;

-- Dumping structure for table casestudy.feeding
CREATE TABLE IF NOT EXISTS `feeding` (
  `ID` int(11) NOT NULL,
  `FEEDTYPE` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `FEEDTIME` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `FEEDAMOUNT` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `FEEDDATE` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table casestudy.feeding: ~3 rows (approximately)
/*!40000 ALTER TABLE `feeding` DISABLE KEYS */;
INSERT INTO `feeding` (`ID`, `FEEDTYPE`, `FEEDTIME`, `FEEDAMOUNT`, `FEEDDATE`) VALUES
	(1, 'Bottle', '12:00pm', '4oz', '04/06/2021'),
	(2, 'Left Breast', '03:00pm', '3oz', '04/06/2021'),
	(3, 'Solids', '07:00pm', '1cup', '04/08/2021');
/*!40000 ALTER TABLE `feeding` ENABLE KEYS */;

-- Dumping structure for table casestudy.parent
CREATE TABLE IF NOT EXISTS `parent` (
  `ID` int(11) NOT NULL,
  `USERNAME` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `PASS` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CHILD` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table casestudy.parent: ~1 rows (approximately)
/*!40000 ALTER TABLE `parent` DISABLE KEYS */;
INSERT INTO `parent` (`ID`, `USERNAME`, `PASS`, `CHILD`) VALUES
	(1, 'samreen', 'khan', 'sam');
/*!40000 ALTER TABLE `parent` ENABLE KEYS */;

-- Dumping structure for table casestudy.parent_entries
CREATE TABLE IF NOT EXISTS `parent_entries` (
  `Parent_ID` int(11) NOT NULL,
  `pFeeding_ID` int(11) NOT NULL,
  PRIMARY KEY (`Parent_ID`,`pFeeding_ID`),
  KEY `FK_parent_Entries_pFeeding_ID` (`pFeeding_ID`),
  CONSTRAINT `FK_parent_Entries_Parent_ID` FOREIGN KEY (`Parent_ID`) REFERENCES `parent` (`ID`),
  CONSTRAINT `FK_parent_Entries_pFeeding_ID` FOREIGN KEY (`pFeeding_ID`) REFERENCES `feeding` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table casestudy.parent_entries: ~0 rows (approximately)
/*!40000 ALTER TABLE `parent_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `parent_entries` ENABLE KEYS */;

-- Dumping structure for table casestudy.pump
CREATE TABLE IF NOT EXISTS `pump` (
  `PID` int(11) NOT NULL,
  `PUMPTYPE` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `PUMPTIME` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `PUMPAMOUNT` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `PUMPDATE` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`PID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table casestudy.pump: ~4 rows (approximately)
/*!40000 ALTER TABLE `pump` DISABLE KEYS */;
INSERT INTO `pump` (`PID`, `PUMPTYPE`, `PUMPTIME`, `PUMPAMOUNT`, `PUMPDATE`) VALUES
	(1, 'Left Breast', '12:00pm', '3oz', '04/04/2021'),
	(2, 'Left Breast', '02:00pm', '5oz', '04/04/2021'),
	(3, 'Right Breast', '4:00pm', '2oz', '04/07/2021'),
	(1601, 'Right Breast', '08:15pm', '4oz', '04/09/2021');
/*!40000 ALTER TABLE `pump` ENABLE KEYS */;

-- Dumping structure for table casestudy.sequence
CREATE TABLE IF NOT EXISTS `sequence` (
  `SEQ_NAME` varchar(50) NOT NULL,
  `SEQ_COUNT` decimal(38,0) DEFAULT NULL,
  PRIMARY KEY (`SEQ_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table casestudy.sequence: ~1 rows (approximately)
/*!40000 ALTER TABLE `sequence` DISABLE KEYS */;
INSERT INTO `sequence` (`SEQ_NAME`, `SEQ_COUNT`) VALUES
	('SEQ_GEN', 1650);
/*!40000 ALTER TABLE `sequence` ENABLE KEYS */;

-- Dumping structure for table casestudy.sleep
CREATE TABLE IF NOT EXISTS `sleep` (
  `SID` int(11) NOT NULL,
  `SLEEPSTART` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `SLEEPEND` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `SLEEPDATE` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`SID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table casestudy.sleep: ~4 rows (approximately)
/*!40000 ALTER TABLE `sleep` DISABLE KEYS */;
INSERT INTO `sleep` (`SID`, `SLEEPSTART`, `SLEEPEND`, `SLEEPDATE`) VALUES
	(1, '11:11am', '12:00pm', '04/04/2021'),
	(2, '08:11pm', '09:00pm', '04/05/2021'),
	(3, '06:11pm', '07:00pm', '04/07/2021'),
	(1151, '08:00pm', '08:30pm', '04/07/2021');
/*!40000 ALTER TABLE `sleep` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
