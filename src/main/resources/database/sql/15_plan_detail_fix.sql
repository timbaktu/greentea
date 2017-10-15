-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: wethinkfitness
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Table structure for table `wf_exerciseplan`
--

DROP TABLE IF EXISTS `wf_exerciseplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wf_exerciseplan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Plan_Name` varchar(40) NOT NULL,
  `Plan_Description` varchar(500) NOT NULL,
  `Number_of_days` int(11) NOT NULL,
  `delflag` int(1) unsigned zerofill DEFAULT NULL,
  `createddate` datetime NOT NULL,
  `updateddate` datetime NOT NULL,
  `img_name` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wf_exerciseplan`
--

LOCK TABLES `wf_exerciseplan` WRITE;
/*!40000 ALTER TABLE `wf_exerciseplan` DISABLE KEYS */;
INSERT INTO `wf_exerciseplan` VALUES (1,'Lean','Lean body',15,0,'2017-08-05 20:25:00','2017-08-05 20:25:00','img/banner/banner_image1.jpg'),(2,'Weight Loss','Lose Weight',30,0,'2017-08-05 20:25:00','2017-08-05 20:25:00','img/banner/banner_image4.jpg'),(3,'Strength','Muscle Gain',40,0,'2017-08-08 20:00:00','2017-08-08 20:00:00','img/banner/banner_image2.jpg'),(4,'Hip Hop Abs','Flat Abs',50,0,'2017-08-15 08:22:00','2017-08-15 08:22:00','img/banner/banner_image3.jpg');
/*!40000 ALTER TABLE `wf_exerciseplan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-15 15:40:02
