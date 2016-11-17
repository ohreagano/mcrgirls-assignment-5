-- MySQL dump 10.13  Distrib 5.5.53, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: database5
-- ------------------------------------------------------
-- Server version	5.5.53-0ubuntu0.14.04.1

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
-- Table structure for table `table5`
--

DROP TABLE IF EXISTS `table5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table5` (
  `UUID` varchar(255) DEFAULT NULL,
  `Date` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Age` varchar(255) DEFAULT NULL,
  `Movie` varchar(255) DEFAULT NULL,
  `Song` varchar(255) DEFAULT NULL,
  `Book` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table5`
--

LOCK TABLES `table5` WRITE;
/*!40000 ALTER TABLE `table5` DISABLE KEYS */;
INSERT INTO `table5` VALUES ('8713830b-00ee-4f4b-8a59-e94c58a7b4ef','2016-11-16_21:52:17','Celine Yuwono','19','Mammamia','Mammamia','The Odyssey'),('7c822a33-d984-41e8-8b27-6d74ffdcc881','2016-11-16_21:53:31','Bob Smith','22','MZX','Soierjfto','Bukk'),('ab2040ef-a638-4d81-88b9-81397592fd31','2016-11-16_22:05:45','Reagan','21','Bluemoon','Drops of Jupiter','The Fault in our Stars'),('6050fd33-cac4-4a77-b03b-0341db41b7a9','2016-11-16_22:07:29','Jaylin','35','Up','Broccoli','The Great Gatsby'),('03228db6-0a19-4a82-9cdd-ac4ae2f7e761','2016-11-16_22:12:34','Christiana','28','Love Actually','23','Movie Time'),('8d2eb18c-7cc8-4ad6-9ba3-8006ca174ad8','2016-11-16_22:13:46','Julia','29','Crossroads','Clarity','The Hound and the Fox'),('4104ee3a-b53f-4a72-b063-c4f46964d006','2016-11-17_00:45:33','Reagan','21','American Beauty','The Battle of New Orleans','Ratners Star'),('43e829bb-d5ed-4f5c-a537-9b7d72cf4599','2016-11-17_00:47:40','Ronald','45','The Dark Knight','Summertime','East of Eden'),('15bd7602-9479-49c0-9dc0-d8171184ec6b','2016-11-17_00:51:25','Dan','23','Moneyball','Pedal Point Blues','Picture of Dorian Grey');
/*!40000 ALTER TABLE `table5` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-17  0:51:25
