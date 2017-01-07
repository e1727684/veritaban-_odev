-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: workspace
-- ------------------------------------------------------
-- Server version	5.7.15-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ders`
--

DROP TABLE IF EXISTS `ders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ders` (
  `kod` int(11) NOT NULL,
  `ad` char(15) NOT NULL,
  PRIMARY KEY (`kod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dersgrubu`
--

DROP TABLE IF EXISTS `dersgrubu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dersgrubu` (
  `dersKod` int(11) NOT NULL,
  `gNo` int(11) NOT NULL,
  `yer` char(15) DEFAULT NULL,
  `gun` int(11) DEFAULT NULL,
  `sure` int(11) DEFAULT NULL,
  `bSaati` int(11) DEFAULT NULL,
  `donem` int(11) DEFAULT NULL,
  `yil` int(11) DEFAULT NULL,
  PRIMARY KEY (`gNo`),
  KEY `FK_dersGrubuDers` (`dersKod`),
  CONSTRAINT `FK_dersGrubuDers` FOREIGN KEY (`dersKod`) REFERENCES `ders` (`kod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kayit`
--

DROP TABLE IF EXISTS `kayit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kayit` (
  `dersKod` int(11) NOT NULL,
  `ogrenciNo` int(11) NOT NULL,
  `gNo` int(11) NOT NULL,
  `notu` int(11) DEFAULT NULL,
  PRIMARY KEY (`dersKod`,`ogrenciNo`,`gNo`),
  KEY `gNo` (`gNo`),
  KEY `ogrenciNo` (`ogrenciNo`),
  CONSTRAINT `kayit_ibfk_1` FOREIGN KEY (`dersKod`) REFERENCES `dersgrubu` (`gNo`),
  CONSTRAINT `kayit_ibfk_2` FOREIGN KEY (`gNo`) REFERENCES `dersgrubu` (`gNo`),
  CONSTRAINT `kayit_ibfk_3` FOREIGN KEY (`ogrenciNo`) REFERENCES `ogrenci` (`Ogno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ogrenci`
--

DROP TABLE IF EXISTS `ogrenci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ogrenci` (
  `Ogno` int(11) NOT NULL,
  `ad` char(15) NOT NULL,
  PRIMARY KEY (`Ogno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'workspace'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-07 22:30:12
