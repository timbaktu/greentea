-- MySQL dump 10.11
--
-- Host: localhost    Database: wethinkfitness
-- ------------------------------------------------------
-- Server version	5.0.80-enterprise-nt-log

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
-- Table structure for table `wf_all_exercises`
--

DROP TABLE IF EXISTS `wf_all_exercises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wf_all_exercises` (
  `id` bigint(20) NOT NULL auto_increment,
  `exercise_name` varchar(40) NOT NULL,
  `exercise_description` varchar(500) NOT NULL,
  `delflag` int(1) unsigned zerofill default NULL,
  `createddate` datetime NOT NULL,
  `updateddate` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wf_all_exercises`
--

LOCK TABLES `wf_all_exercises` WRITE;
/*!40000 ALTER TABLE `wf_all_exercises` DISABLE KEYS */;
INSERT INTO `wf_all_exercises` VALUES (1,'Dumbbell Bench Press','Increase mid chest area',0,'2017-08-05 20:25:00','2017-08-05 20:25:00'),(2,'Cable Cross Over','Inner Pec Muscle',0,'2017-08-05 20:25:00','2017-08-05 20:25:00'),(3,'Dumbbell Biceps Curl','Mid Biceps',0,'2017-08-05 20:25:00','2017-08-05 20:25:00');
/*!40000 ALTER TABLE `wf_all_exercises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wf_exercise_type`
--

DROP TABLE IF EXISTS `wf_exercise_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wf_exercise_type` (
  `id` bigint(20) NOT NULL auto_increment,
  `exercise_type_name` varchar(40) NOT NULL,
  `description` varchar(500) default NULL,
  `delflag` int(1) unsigned zerofill default NULL,
  `createddate` datetime NOT NULL,
  `updateddate` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wf_exercise_type`
--

LOCK TABLES `wf_exercise_type` WRITE;
/*!40000 ALTER TABLE `wf_exercise_type` DISABLE KEYS */;
INSERT INTO `wf_exercise_type` VALUES (1,'Chest','Total Chest',0,'2017-08-05 20:25:00','2017-08-05 20:25:00'),(2,'Biceps','Total Biceps',0,'2017-08-05 20:25:00','2017-08-05 20:25:00');
/*!40000 ALTER TABLE `wf_exercise_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wf_exerciseplan`
--

DROP TABLE IF EXISTS `wf_exerciseplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wf_exerciseplan` (
  `id` bigint(20) NOT NULL auto_increment,
  `Plan_Name` varchar(40) NOT NULL,
  `Plan_Description` varchar(500) NOT NULL,
  `Number_of_days` int(11) NOT NULL,
  `delflag` int(1) unsigned zerofill default NULL,
  `createddate` datetime NOT NULL,
  `updateddate` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wf_exerciseplan`
--

LOCK TABLES `wf_exerciseplan` WRITE;
/*!40000 ALTER TABLE `wf_exerciseplan` DISABLE KEYS */;
INSERT INTO `wf_exerciseplan` VALUES (1,'Lean','Lean body',15,0,'2017-08-05 20:25:00','2017-08-05 20:25:00'),(2,'Weight Loss','Lose Weight',30,0,'2017-08-05 20:25:00','2017-08-05 20:25:00');
/*!40000 ALTER TABLE `wf_exerciseplan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wf_exerciseplandetail`
--

DROP TABLE IF EXISTS `wf_exerciseplandetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wf_exerciseplandetail` (
  `id` bigint(20) NOT NULL auto_increment,
  `schedule_id` bigint(20) NOT NULL,
  `exercise_id` bigint(20) NOT NULL,
  `number_of_sets` bigint(20) NOT NULL,
  `number_of_reps` bigint(20) NOT NULL,
  `interval` varchar(20) NOT NULL,
  `delflag` int(1) unsigned zerofill default NULL,
  `createddate` datetime NOT NULL,
  `updateddate` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_wf_exerciseplandetail` (`schedule_id`),
  KEY `FK2_wf_exerciseplandetail` (`exercise_id`),
  CONSTRAINT `wf_exerciseplandetail_ibfk_1` FOREIGN KEY (`schedule_id`) REFERENCES `wf_exerciseplanschedule` (`id`),
  CONSTRAINT `wf_exerciseplandetail_ibfk_2` FOREIGN KEY (`exercise_id`) REFERENCES `wf_all_exercises` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wf_exerciseplandetail`
--

LOCK TABLES `wf_exerciseplandetail` WRITE;
/*!40000 ALTER TABLE `wf_exerciseplandetail` DISABLE KEYS */;
INSERT INTO `wf_exerciseplandetail` VALUES (1,1,1,3,4,'10 sec',0,'2017-08-05 20:25:00','2017-08-05 20:25:00'),(2,1,2,4,3,'20 sec',0,'2017-08-05 20:25:00','2017-08-05 20:25:00'),(3,1,3,3,3,'10 sec',0,'2017-08-05 20:25:00','2017-08-05 20:25:00');
/*!40000 ALTER TABLE `wf_exerciseplandetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wf_exerciseplanschedule`
--

DROP TABLE IF EXISTS `wf_exerciseplanschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wf_exerciseplanschedule` (
  `id` bigint(20) NOT NULL auto_increment,
  `exercise_type_id` bigint(20) NOT NULL,
  `planid` bigint(20) NOT NULL,
  `delflag` int(1) unsigned zerofill default NULL,
  `createddate` datetime NOT NULL,
  `updateddate` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_wf_exerciseplandetail` (`planid`),
  KEY `FK_wf_exerciseplanschedule` (`exercise_type_id`),
  CONSTRAINT `wf_exerciseplanschedule_ibfk_1` FOREIGN KEY (`planid`) REFERENCES `wf_exerciseplan` (`id`),
  CONSTRAINT `wf_exerciseplanschedule_ibfk_2` FOREIGN KEY (`exercise_type_id`) REFERENCES `wf_exercise_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wf_exerciseplanschedule`
--

LOCK TABLES `wf_exerciseplanschedule` WRITE;
/*!40000 ALTER TABLE `wf_exerciseplanschedule` DISABLE KEYS */;
INSERT INTO `wf_exerciseplanschedule` VALUES (1,1,1,0,'2017-08-05 20:25:00','2017-08-05 20:25:00'),(2,2,1,0,'2017-08-05 20:25:00','2017-08-05 20:25:00');
/*!40000 ALTER TABLE `wf_exerciseplanschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wf_person`
--

DROP TABLE IF EXISTS `wf_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wf_person` (
  `id` bigint(20) NOT NULL auto_increment,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `middlename` varchar(50) default NULL,
  `birthdate` date NOT NULL,
  `emailid` varchar(80) default NULL,
  `phone_number` varchar(50) default NULL,
  `gender` varchar(10) NOT NULL,
  `country` varchar(50) default NULL,
  `delflag` int(1) unsigned zerofill default NULL,
  `createddate` datetime NOT NULL,
  `updateddate` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wf_person`
--

LOCK TABLES `wf_person` WRITE;
/*!40000 ALTER TABLE `wf_person` DISABLE KEYS */;
/*!40000 ALTER TABLE `wf_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wf_personschedule`
--

DROP TABLE IF EXISTS `wf_personschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wf_personschedule` (
  `id` bigint(20) NOT NULL auto_increment,
  `user_id` bigint(20) NOT NULL,
  `schedule_id` bigint(20) NOT NULL,
  `workout_date` date NOT NULL,
  `delflag` int(1) unsigned zerofill default NULL,
  `createddate` datetime NOT NULL,
  `updateddate` datetime NOT NULL,
  `completed` int(1) unsigned zerofill default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_wf_personschedule` (`user_id`),
  KEY `FK_wf_personschedule2` (`schedule_id`),
  CONSTRAINT `wf_personschedule_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `wf_useraccount` (`id`),
  CONSTRAINT `wf_personschedule_ibfk_2` FOREIGN KEY (`schedule_id`) REFERENCES `wf_exerciseplanschedule` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wf_personschedule`
--

LOCK TABLES `wf_personschedule` WRITE;
/*!40000 ALTER TABLE `wf_personschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `wf_personschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wf_useraccount`
--

DROP TABLE IF EXISTS `wf_useraccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wf_useraccount` (
  `id` bigint(20) NOT NULL auto_increment,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `personid` bigint(20) NOT NULL,
  `delflag` int(1) unsigned zerofill NOT NULL,
  `createddate` datetime NOT NULL,
  `updateddate` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_wf_useraccount` (`personid`),
  CONSTRAINT `wf_useraccount_ibfk_1` FOREIGN KEY (`personid`) REFERENCES `wf_person` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wf_useraccount`
--

LOCK TABLES `wf_useraccount` WRITE;
/*!40000 ALTER TABLE `wf_useraccount` DISABLE KEYS */;
/*!40000 ALTER TABLE `wf_useraccount` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-07  2:48:10
