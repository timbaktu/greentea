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
-- Table structure for table `wf_events`
--

DROP TABLE IF EXISTS `wf_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wf_events` (
  `id` bigint(20) NOT NULL auto_increment,
  `event_name` varchar(40) NOT NULL,
  `event_description` varchar(500) NOT NULL,
  `event_address` varchar(40) NOT NULL,
  `event_cost` float NOT NULL,
  `event_url` varchar(500) NOT NULL,
  `event_date` datetime NOT NULL,
  `event_time` time NOT NULL,
  `delflag` int(1) unsigned zerofill default NULL,
  `createddate` datetime NOT NULL,
  `updateddate` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wf_events`
--

LOCK TABLES `wf_events` WRITE;
/*!40000 ALTER TABLE `wf_events` DISABLE KEYS */;
INSERT INTO `wf_events` VALUES (1,'Spartan Race','Spartan Race is not just an event; It is a way of life ','Boston, MA',140,'https://www.spartan.com/en/race/detail/3350/overview','2018-03-04 00:00:00','09:00:00',0,'2017-08-14 09:00:00','2017-08-14 09:00:00'),(2,'Boston Half Marathon','Join hundreds of Dana-Farber teammates in taking on the B.A.A. Half Marathon, the Boston Athletic Association\'s popular 13.1-mile event.','Boston, MA',155,'http://www.rundanafarber.org/faf/home/ccp.asp?ievent=1159669&ccp=112822&track=RPTPW051917&msource=RPTPW051917','2018-10-08 00:00:00','08:30:00',0,'2017-08-14 09:00:00','2017-08-14 09:00:00'),(3,'Fitranx Test','The course is comprised of lectures, hands-on practice, and running LIVE Level tests.','Boston, MA',200,'https://fitranx.com/myfitranx/','2018-05-10 00:00:00','11:00:00',0,'2017-08-14 09:00:00','2017-08-14 09:00:00');
/*!40000 ALTER TABLE `wf_events` ENABLE KEYS */;
UNLOCK TABLES;

