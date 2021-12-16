-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: fpm
-- ------------------------------------------------------
-- Server version	8.0.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `jobtitleandclass`
--

DROP TABLE IF EXISTS `jobtitleandclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobtitleandclass` (
  `jobtitle` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `class` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `workinghours` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Salary` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`jobtitle`,`class`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobtitleandclass`
--

LOCK TABLES `jobtitleandclass` WRITE;
/*!40000 ALTER TABLE `jobtitleandclass` DISABLE KEYS */;
INSERT INTO `jobtitleandclass` VALUES ('FT','大夜班','00:00','NT$250'),('FT','早班','08:00','NT$200'),('FT','晚班','18:00','NT$200'),('PT','大夜班','00:00','NT$180'),('PT','早班','08:00','NT$160'),('PT','晚班','18:00','NT$160'),('SUP','大夜班','00:00','NT$350'),('SUP','早班','08:00','NT$300'),('SUP','晚班','18:00','NT$300');
/*!40000 ALTER TABLE `jobtitleandclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave`
--

DROP TABLE IF EXISTS `leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leave` (
  `leavememberID` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `leavedate` date NOT NULL,
  `leavecategory` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `leavereason` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `date` date NOT NULL,
  `auditstatus` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `auditdate` date DEFAULT NULL,
  PRIMARY KEY (`leavememberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave`
--

LOCK TABLES `leave` WRITE;
/*!40000 ALTER TABLE `leave` DISABLE KEYS */;
INSERT INTO `leave` VALUES ('BETTY.WU','2021-05-03','事假','與家人吃飯','2021-05-03','審核通過','2021-05-03');
/*!40000 ALTER TABLE `leave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `title` varchar(50) NOT NULL,
  `Publisher` varchar(50) NOT NULL,
  `date` varchar(45) NOT NULL,
  `message` varchar(45) NOT NULL,
  PRIMARY KEY (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES ('元旦','KIKI','1/1','元旦快樂'),('雙12','KIKI','12/10','單量較多請好好對點');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule` (
  `employee_ID` varchar(100) NOT NULL,
  `drawbreak1` varchar(50) DEFAULT NULL,
  `drawbreak2` varchar(50) DEFAULT NULL,
  `drawbreak3` varchar(50) DEFAULT NULL,
  `drawbreak4` varchar(50) DEFAULT NULL,
  `drawbreak5` varchar(50) DEFAULT NULL,
  `drawbreak6` varchar(50) DEFAULT NULL,
  `drawbreak7` varchar(50) DEFAULT NULL,
  `drawbreak8` varchar(50) DEFAULT NULL,
  `drawbreak9` varchar(50) DEFAULT NULL,
  `drawbreak10` varchar(50) DEFAULT NULL,
  `drawbreak11` varchar(50) DEFAULT NULL,
  `drawbreak12` varchar(50) DEFAULT NULL,
  `drawbreak13` varchar(50) DEFAULT NULL,
  `drawbreak14` varchar(50) DEFAULT NULL,
  `drawbreak15` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedules` (
  `memberID` char(10) NOT NULL,
  `date` datetime NOT NULL,
  `leave?` char(2) NOT NULL,
  `takeOver?` char(2) NOT NULL,
  `punchIn` time NOT NULL,
  `delay` tinyint NOT NULL,
  `rest` time NOT NULL,
  `restOff` time NOT NULL,
  `punchOff` time NOT NULL,
  `worktime` tinyint NOT NULL,
  `incentive` char(20) DEFAULT NULL,
  `incentiveReason` char(20) DEFAULT NULL,
  PRIMARY KEY (`memberID`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
INSERT INTO `schedules` VALUES ('BETTY.WU','2021-05-01 00:00:00','是','否','18:02:00',2,'22:00:00','22:30:00','00:00:00',6,NULL,NULL);
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `memberID` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `jobtitle` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `class` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `gender` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `birthday` date NOT NULL,
  `identitycard` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phonenumber` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `lineID` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `address` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ec` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ecrelationships` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ecphonenumber` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `arrivalday` date NOT NULL,
  `turnoverdate` date DEFAULT NULL,
  `remark` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`memberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('BETTY.WU','PT','晚班','吳昱霈','女','2000-09-16','A123456789','0902215952','BETTY62411890916@gmail.com','yupei890916','新北市中和區大勇路','李至濡','母女','0930360466','2021-04-01',NULL,NULL),('TERRY.LI','SUP','晚班','李大衛','男','1995-04-01','W456487513','0987545145','terry45454@gmil.com','565TTTT','新北市板橋區大月路','劉爸爸','父子','0988844455','2019-05-11',NULL,NULL);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `takeover`
--

DROP TABLE IF EXISTS `takeover`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `takeover` (
  `takeOvermemberID` char(10) NOT NULL,
  `takeOverdate` date NOT NULL,
  `cantakeOvermemberID` char(10) NOT NULL,
  `date` date NOT NULL,
  `auditstatus` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `auditdate` date DEFAULT NULL,
  PRIMARY KEY (`takeOvermemberID`,`takeOverdate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `takeover`
--

LOCK TABLES `takeover` WRITE;
/*!40000 ALTER TABLE `takeover` DISABLE KEYS */;
INSERT INTO `takeover` VALUES ('BETTY.WU','2021-06-28','PENNY.LI','2021-06-20','待審核',NULL);
/*!40000 ALTER TABLE `takeover` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-16 14:56:40
