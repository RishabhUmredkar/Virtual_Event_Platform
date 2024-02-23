-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: virtual_event_platform
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `venue_event_ticket`
--

DROP TABLE IF EXISTS `venue_event_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venue_event_ticket` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `event_name` varchar(45) DEFAULT NULL,
  `event_category` varchar(45) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `event_time` time DEFAULT NULL,
  `event_duration` int DEFAULT NULL,
  `event_image` varchar(255) DEFAULT NULL,
  `event_description` varchar(1255) DEFAULT NULL,
  `event_venue` varchar(255) DEFAULT NULL,
  `event_address1` varchar(255) DEFAULT NULL,
  `event_address2` varchar(255) DEFAULT NULL,
  `event_country` varchar(255) DEFAULT NULL,
  `event_state` varchar(255) DEFAULT NULL,
  `event_city` varchar(255) DEFAULT NULL,
  `event_pin_code` int DEFAULT NULL,
  `event_price` int DEFAULT NULL,
  `event_total_tickets` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venue_event_ticket`
--

LOCK TABLES `venue_event_ticket` WRITE;
/*!40000 ALTER TABLE `venue_event_ticket` DISABLE KEYS */;
INSERT INTO `venue_event_ticket` VALUES (1,'Spring Showcase','Film and Entertainment','2024-03-08','23:00:00',120,'Spring Showcase_abdc7faa-fb25-4a24-b6fd-1bbfb1bad1e7.jpg','The Spring Showcase is a vibrant event celebrating creativity, innovation, and community engagement. It features an art exhibition, performing arts extravaganza, innovative spring-themed workshops, a community initiative corner, and a spring fashion show. Attendees include art enthusiasts, performers, families, and anyone looking to embrace the season\'s beauty. The event is suitable for art enthusiasts, performers, and community members.','suresh bhatt','Kp ground gate 1','gate2','India','Maharashtra','Nagpur',440026,400,199),(2,'EduNet','Coaching and Consulting','2024-03-01','13:00:00',180,'EduNet_881ebd5a-297f-44e6-a7d5-cb3709d427b7.jpg','This is internship.','KDK College','Nandanvan Road','Nandanvan Road, Dmart','India','Maharashtra','Nagpur',440019,100,160);
/*!40000 ALTER TABLE `venue_event_ticket` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-23 23:55:22
