CREATE DATABASE  IF NOT EXISTS `FPM` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `FPM`;
-- MySQL dump 10.13  Distrib 8.0.18, for macos10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: FPM
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `Notice`
--

DROP TABLE IF EXISTS `Notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Notice` (
  `發佈人ID` char(10) NOT NULL,
  `標題` char(40) DEFAULT NULL,
  `公告日期` datetime DEFAULT NULL,
  `公告內容` char(50) DEFAULT NULL,
  PRIMARY KEY (`發佈人ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Notice`
--

LOCK TABLES `Notice` WRITE;
/*!40000 ALTER TABLE `Notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `Notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Schedules`
--

DROP TABLE IF EXISTS `Schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Schedules` (
  `員工ID` char(10) NOT NULL,
  `日期` datetime NOT NULL,
  `是否請假` char(2) NOT NULL,
  `是否調班` char(2) NOT NULL,
  `實際上班時間` time NOT NULL,
  `遲到分鐘數` tinyint(10) NOT NULL,
  `休息時間` time NOT NULL,
  `休息結束時間` time NOT NULL,
  `下班時間` time NOT NULL,
  `本日工時` tinyint(10) NOT NULL,
  `獎懲` char(20) DEFAULT NULL,
  `獎懲原因` char(20) DEFAULT NULL,
  PRIMARY KEY (`員工ID`,`日期`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Schedules`
--

LOCK TABLES `Schedules` WRITE;
/*!40000 ALTER TABLE `Schedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `Schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `員工ID` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `職稱` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `班別` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `姓名` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `性別` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `生日` datetime NOT NULL,
  `身份證` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `手機號碼` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Email` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `LineID` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `地址` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `緊急聯絡人` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `緊急聯絡人關係` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `緊急連絡人電話` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `到職日` date NOT NULL,
  `離職日` date DEFAULT NULL,
  `備註` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`員工ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `職稱及班別`
--

DROP TABLE IF EXISTS `職稱及班別`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `職稱及班別` (
  `職稱` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `班別` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `應上班時間` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `薪資` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`職稱`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `職稱及班別`
--

LOCK TABLES `職稱及班別` WRITE;
/*!40000 ALTER TABLE `職稱及班別` DISABLE KEYS */;
/*!40000 ALTER TABLE `職稱及班別` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `調班`
--

DROP TABLE IF EXISTS `調班`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `調班` (
  `須調班員工ID` char(10) NOT NULL,
  `調班日期` date NOT NULL,
  `可調班員工ID` char(10) NOT NULL,
  `填寫日期` datetime NOT NULL,
  `審核狀況` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `審核日期` date DEFAULT NULL,
  PRIMARY KEY (`須調班員工ID`,`調班日期`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `調班`
--

LOCK TABLES `調班` WRITE;
/*!40000 ALTER TABLE `調班` DISABLE KEYS */;
/*!40000 ALTER TABLE `調班` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `請假`
--

DROP TABLE IF EXISTS `請假`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `請假` (
  `請假員工ID` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `請假日期` date NOT NULL,
  `請假類別` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `請假原因` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `填寫日期` date NOT NULL,
  `審核狀況` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `審核日期` date DEFAULT NULL,
  PRIMARY KEY (`請假員工ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `請假`
--

LOCK TABLES `請假` WRITE;
/*!40000 ALTER TABLE `請假` DISABLE KEYS */;
/*!40000 ALTER TABLE `請假` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'FPM'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-28 14:36:29
