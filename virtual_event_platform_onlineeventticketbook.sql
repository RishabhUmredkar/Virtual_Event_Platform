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
-- Table structure for table `onlineeventticketbook`
--

DROP TABLE IF EXISTS `onlineeventticketbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `onlineeventticketbook` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `pin_code` int DEFAULT NULL,
  `event_image` varchar(255) DEFAULT NULL,
  `event_name` varchar(45) DEFAULT NULL,
  `event_category` varchar(45) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `event_time` time DEFAULT NULL,
  `event_duration` int DEFAULT NULL,
  `event_description` varchar(1255) DEFAULT NULL,
  `event_host` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `card_number` varchar(16) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `cvv` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `onlineeventticketbook`
--

LOCK TABLES `onlineeventticketbook` WRITE;
/*!40000 ALTER TABLE `onlineeventticketbook` DISABLE KEYS */;
INSERT INTO `onlineeventticketbook` VALUES (1,'Rishabh','Umredkar','rishabhumredkar0@gmail.com','Timki Panchpaoli Nagpur','India','Maharashtra','Nagpur',440018,'A New Way Of Life_f78bda15-9ccd-437f-80d1-13f3a8dcf736.jpg','A New Way Of Life','Community and Culture','2024-02-19','13:30:00',60,NULL,'standard webinar',5,500,100,'1023456789','2025-11-01',235),(2,'Rishabh','Umredkar','rishabhumredkar0@gmail.com',NULL,NULL,NULL,NULL,0,'Trainee Program on Leadership_13bd5356-a8d8-42c2-92c8-79e194630c3a.jpg','Trainee Program on Leadership','Coaching and Consulting','2024-02-29','13:00:00',120,'The Trainee Program on Leadership is a comprehensive initiative for aspiring leaders, focusing on essential leadership principles, communication strategies, decision-making processes, and cultivating a positive organizational culture. It includes expert-led sessions, practical skill development, case studies, networking opportunities, and personalized coaching. Enroll today to unlock your full potential in leadership.','training workshop',0,0,150,NULL,NULL,NULL),(3,'Rishabh','Umredkar','rishabhumredkar0@gmail.com','Timki Panchpaoli Nagpur','India','Maharashtra','Nagpur',440018,'Entrepreneurship Bootcamp_6d9b5bf2-e575-41ae-907f-0b29fe24eff0.jpg','Entrepreneurship Bootcamp','Entrepreneurship','2024-03-02','10:00:00',210,'An Entrepreneurship Bootcamp is an intensive program designed to inspire and guide aspiring entrepreneurs. It covers key topics such as business ideation, planning, strategy, financial literacy, marketing, branding, legal considerations, pitching, and networking. Participants can work on their ideas, receive feedback, and connect with seasoned entrepreneurs and mentors. The program is ideal for early-stage startups and individuals looking to enhance their entrepreneurial skills.','online classes',50,6500,130,'1012223344','2027-10-01',123),(4,'Ritesh','Meshram','ritest@gmail.com','Timki Panchpaoli Nagpur','India','Maharashtra','Nagpur',440014,'A New Way Of Life_f78bda15-9ccd-437f-80d1-13f3a8dcf736.jpg','A New Way Of Life','Community and Culture','2024-02-19','13:30:00',60,NULL,'standard webinar',5,500,100,'1234567890','2026-11-01',123),(5,'Rajat','Wankhede','rajat@gmail.com','Timki Panchpaoli Nagpur','India','Maharashtra','Nagpur',440018,'EduNet_66ef343e-851a-4ec2-b424-2a75f319b09d.jpg','EduNet','Coaching and Consulting','2024-03-01','13:00:00',180,'This is Internship classes.','online classes',5,500,100,'1234567890','2025-11-01',231),(6,'Rajat','Wankhede','rajat@gmail.com','Timki Panchpaoli Nagpur','India','Maharashtra','Nagpur',440018,'EduNet_66ef343e-851a-4ec2-b424-2a75f319b09d.jpg','EduNet','Coaching and Consulting','2024-03-01','13:00:00',180,'This is Internship classes.','online classes',5,500,100,'1234567890','2025-11-01',213),(7,'Rishabh','Umredkar','rishabhumredkar0@gmail.com',NULL,NULL,NULL,NULL,0,'Entrepreneurship Bootcamp_6d9b5bf2-e575-41ae-907f-0b29fe24eff0.jpg','Entrepreneurship Bootcamp','Entrepreneurship','2024-03-02','10:00:00',210,'An Entrepreneurship Bootcamp is an intensive program designed to inspire and guide aspiring entrepreneurs. It covers key topics such as business ideation, planning, strategy, financial literacy, marketing, branding, legal considerations, pitching, and networking. Participants can work on their ideas, receive feedback, and connect with seasoned entrepreneurs and mentors. The program is ideal for early-stage startups and individuals looking to enhance their entrepreneurial skills.','online classes',2,260,130,NULL,NULL,NULL);
/*!40000 ALTER TABLE `onlineeventticketbook` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-23 23:55:23
