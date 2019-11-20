CREATE DATABASE  IF NOT EXISTS `gradebook` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gradebook`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: gradebook
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `assignment`
--

DROP TABLE IF EXISTS `assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `assignment` (
  `assign_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) DEFAULT NULL,
  `assign_name` varchar(100) DEFAULT NULL,
  `assign_description` varchar(200) DEFAULT NULL,
  `assign_total_pts` int(11) DEFAULT NULL,
  `assign_start_date` date DEFAULT NULL,
  `assign_due_date` date DEFAULT NULL,
  `assign_module` varchar(100) DEFAULT NULL,
  `assign_submodule` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`assign_id`)
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignment`
--

LOCK TABLES `assignment` WRITE;
/*!40000 ALTER TABLE `assignment` DISABLE KEYS */;
INSERT INTO `assignment` VALUES (1,1,'Course Overview',NULL,0,NULL,NULL,'Syllabus',NULL),(2,1,'Course Materials',NULL,0,NULL,NULL,'Syllabus',NULL),(3,1,'Accessing E-textbooks',NULL,0,NULL,NULL,'Syllabus',NULL),(4,1,'Silberschatz et al. (2013)',NULL,0,NULL,NULL,'Syllabus',NULL),(5,1,'Policies and Services',NULL,0,NULL,NULL,'Syllabus',NULL),(6,1,'BlueQuill Tutorials and Help',NULL,0,NULL,NULL,'Course Communications & Tool',NULL),(7,1,'Getting Started with Adobe Connect for Online Meetings - Student',NULL,0,NULL,NULL,'Course Communications & Tool',NULL),(8,1,'Getting Started with Skype for Business - Student ',NULL,0,NULL,NULL,'Course Communications & Tool',NULL),(9,1,'About Turnitin',NULL,0,NULL,NULL,'Course Communications & Tool',NULL),(10,1,'Copyright for Students ',NULL,0,NULL,NULL,'Course Communications & Tool',NULL),(11,1,'Proctored Testing Requirements ',NULL,0,NULL,NULL,'Course Communications & Tool',NULL),(12,1,'Week 1 Preparation',NULL,0,'2019-09-04','2019-09-06','Module 1: Introduction to Operating Systems','Week 1: Introduction and Review of C Programming'),(13,1,'Obtain a Test Proctor ',NULL,0,'2019-09-04','2019-09-18','Module 1: Introduction to Operating Systems','Week 1: Introduction and Review of C Programming'),(14,1,'1-1: Work with a Linux Virtual Machine ',NULL,26,'2019-09-04','2019-09-18','Module 1: Introduction to Operating Systems','Week 1: Introduction and Review of C Programming'),(15,1,'Proj 0','Programming Project 0: C Programming Warm-up ',60,'2019-09-04','2019-09-18','Module 1: Introduction to Operating Systems','Week 1: Introduction and Review of C Programming'),(16,1,'Meet 1',NULL,4,'2019-09-04','2019-09-18','Module 1: Introduction to Operating Systems','Week 1: Introduction and Review of C Programming'),(17,1,'C Programming FAQ and Resources ',NULL,0,NULL,NULL,'Module 1: Introduction to Operating Systems',NULL),(18,1,'Week 2 Preparation',NULL,0,'2019-09-11','2019-09-13','Module 2 : Process Management','Week 2: Processes'),(19,1,'Meet 2',NULL,4,'2019-09-11','2019-09-25','Module 2 : Process Management','Week 2: Processes'),(20,1,'2-1: Process Issue 1',NULL,10,'2019-09-11','2019-09-25','Module 2 : Process Management','Week 2: Processes'),(21,1,'2-2: Process Issue 2',NULL,10,'2019-09-11','2019-09-25','Module 2 : Process Management','Week 2: Processes'),(22,1,'Week 3 Preparation',NULL,0,'2019-09-18','2019-09-21','Module 2 : Process Management','Week 3: Threads'),(23,1,'Meet 3',NULL,4,'2019-09-18','2019-10-02','Module 2 : Process Management','Week 3: Threads'),(24,1,'3-1 Thread',NULL,10,'2019-09-18','2019-10-02','Module 2 : Process Management','Week 3: Threads'),(25,1,'Proj 1',NULL,100,'2019-09-18','2019-10-02','Module 2 : Process Management','Week 3: Threads'),(26,1,'Week 4 Preparation',NULL,0,'2019-09-25','2019-09-28','Module 2 : Process Management','Week 4: CPU Scheduling'),(27,1,'Meet 4',NULL,4,'2019-09-25','2019-10-09','Module 2 : Process Management','Week 4: CPU Scheduling'),(28,1,'4-1: Scheduling 1 ',NULL,15,'2019-09-25','2019-10-09','Module 2 : Process Management','Week 4: CPU Scheduling'),(29,1,'4-2: Scheduling 2',NULL,15,'2019-09-25','2019-10-09','Module 2 : Process Management','Week 4: CPU Scheduling'),(30,1,'Week 5 Preparation',NULL,0,'2019-10-02','2019-10-05','Module 2 : Process Management','Week 5: Process Synchronization'),(31,1,'Meet 5',NULL,4,'2019-10-02','2019-10-16','Module 2 : Process Management','Week 5: Process Synchronization'),(32,1,'5-1: Process Synchronization',NULL,10,'2019-10-02','2019-10-16','Module 2 : Process Management','Week 5: Process Synchronization'),(33,1,'Week 6 Preparation',NULL,0,'2019-10-09','2019-10-12','Module 2 : Process Management','Week 6: Deadlock'),(34,1,'Meet 6',NULL,4,'2019-10-09','2019-10-23','Module 2 : Process Management','Week 6: Deadlock'),(35,1,'Proj 2',NULL,110,'2019-10-09','2019-10-23','Module 2 : Process Management','Week 6: Deadlock'),(36,1,'Week 7 Preparation',NULL,0,'2019-10-16','2019-10-19','Module 3 : MemoryManagement','Week 7: Memory Management'),(37,1,'Mid-term',NULL,170,'2019-10-16','2019-10-30','Module 3 : MemoryManagement','Week 7: Memory Management'),(38,1,'Meet 7',NULL,4,'2019-10-16','2019-10-30','Module 3 : MemoryManagement','Week 7: Memory Management'),(39,1,'7-1: Memory Issue 1',NULL,10,'2019-10-16','2019-10-30','Module 3 : MemoryManagement','Week 7: Memory Management'),(40,1,'7-2: Memory Issue 2',NULL,10,'2019-10-16','2019-10-30','Module 3 : MemoryManagement','Week 7: Memory Management'),(41,1,'Week 8 Preparation',NULL,0,'2019-10-23','2019-10-26','Module 3 : MemoryManagement','Week 8: Virtual Memory'),(42,1,'Meet 8',NULL,4,'2019-10-23','2019-11-06','Module 3 : MemoryManagement','Week 8: Virtual Memory'),(43,1,'8-1 Virtual Memory Issue 1 ',NULL,10,'2019-10-23','2019-11-06','Module 3 : MemoryManagement','Week 8: Virtual Memory'),(44,1,'8-2 Virtual Memory Issue 2',NULL,10,'2019-10-23','2019-11-06','Module 3 : MemoryManagement','Week 8: Virtual Memory'),(45,1,'Proj 3',NULL,110,'2019-10-23','2019-11-06','Module 3 : MemoryManagement','Week 8: Virtual Memory'),(46,1,'Week 9 Preparation',NULL,0,'2019-10-30','2019-11-02','Module 3 : MemoryManagement','Week 9: Mass-Storage Structure and File Systems Interface'),(47,1,'Meet 9',NULL,4,'2019-10-30','2019-11-13','Module 3 : MemoryManagement','Week 9: Mass-Storage Structure and File Systems Interface'),(51,1,'9-1: Mass Storage Issue 1',NULL,15,'2019-10-30','2019-11-13','Module 3 : MemoryManagement','Week 9: Mass-Storage Structure and File Systems Interface'),(52,1,'9-2: Mass Storage Issue 2',NULL,10,'2019-10-30','2019-11-13','Module 3 : MemoryManagement','Week 9: Mass-Storage Structure and File Systems Interface'),(53,1,'9-3: Mass Storage Issue 3',NULL,10,'2019-10-30','2019-11-13','Module 3 : MemoryManagement','Week 9: Mass-Storage Structure and File Systems Interface'),(54,1,'Week 10 Preparation',NULL,0,'2019-11-06','2019-11-09','Module 3 : MemoryManagement','Week 10: Systems Implementation'),(55,1,'Meet 10',NULL,4,'2019-11-06','2019-11-20','Module 3 : MemoryManagement','Week 10: Systems Implementation'),(56,1,'10-1: File Systems Implementation',NULL,10,'2019-11-06','2019-11-20','Module 3 : MemoryManagement','Week 10: Systems Implementation'),(57,1,'Week 11 Preparation',NULL,0,'2019-11-13','2019-11-16','Module 3 : MemoryManagement','Week 11: I/O System'),(58,1,'Meet 11',NULL,4,'2019-11-13','2019-11-27','Module 3 : MemoryManagement','Week 11: I/O System'),(59,1,'11-1: I/O System',NULL,10,'2019-11-13','2019-11-27','Module 3 : MemoryManagement','Week 11: I/O System'),(60,1,'Course & Faculty Evaluation',NULL,0,NULL,NULL,'Module 3 : MemoryManagement','Week 11: I/O System'),(61,1,'Week 12 Preparation',NULL,0,'2019-11-20','2019-11-23','Module 3 : MemoryManagement','Week 12: Final Exam'),(62,1,'Final Exam',NULL,170,'2019-11-20','2019-12-04','Module 3 : MemoryManagement','Week 12: Final Exam'),(63,3,'COMP 325 Course Overview',NULL,0,NULL,NULL,'Syllabus',NULL),(64,3,'Student Support Services',NULL,0,NULL,NULL,'Syllabus',NULL),(65,3,'Undergraduate Grading Policy',NULL,0,NULL,NULL,'Syllabus',NULL),(66,3,'Academic Policies',NULL,0,NULL,NULL,'Syllabus',NULL),(67,3,'Student Responsibilities',NULL,0,NULL,NULL,'Syllabus',NULL),(68,3,'General Questions',NULL,0,NULL,NULL,'Course Communication',NULL),(69,3,'Supplemental Materials',NULL,0,NULL,NULL,'Course Communication',NULL),(70,3,'APA Resources for Students',NULL,0,NULL,NULL,'Course Communication',NULL),(71,3,'About Turnitin.com',NULL,0,NULL,NULL,'Course Communication',NULL),(72,3,'Writting Support Services',NULL,0,NULL,NULL,'Course Communication',NULL),(73,3,'Getting Started with Adobe Connect for Online Meetings - Student',NULL,0,NULL,NULL,'Course Communication',NULL),(74,3,'Getting Started with Skype for Business - Student ',NULL,0,NULL,NULL,'Course Communication',NULL),(75,3,'W1 Reading',NULL,0,NULL,NULL,'Module 1: Human Factors','Week 1'),(76,3,'Part 1: Human Attributes Study',NULL,0,'2019-09-06','2019-09-17','Module 1: Human Factors','Week 1'),(77,3,'J1: Journal',NULL,0,'2019-09-06','2019-09-24','Module 1: Human Factors','Week 1'),(78,3,'W2 Reading',NULL,0,NULL,NULL,'Module 1: Human Factors','Week 2'),(79,3,'Part 1: Human Attributes Study',NULL,50,'2019-09-06','2019-09-17','Module 1: Human Factors','Week 2'),(80,3,'Literature Review',NULL,0,'2019-09-13','2019-09-24','Module 1: Human Factors','Week 2'),(81,3,'J1: Journal',NULL,0,'2019-09-13','2019-09-24','Module 1: Human Factors','Week 2'),(82,3,'W3 Reading',NULL,0,NULL,NULL,'Module 1: Human Factors','Week 3'),(83,3,'Literature Review',NULL,100,'2019-09-13','2019-09-24','Module 1: Human Factors','Week 3'),(84,3,'J1: Journal',NULL,50,'2019-09-13','2019-09-24','Module 1: Human Factors','Week 3'),(85,3,'J1: Peer Review',NULL,0,'2019-09-20','2019-10-01','Module 1: Human Factors','Week 3'),(86,3,'P1: Interface Design Description',NULL,0,'2019-09-20','2019-10-01','Module 1: Human Factors','Week 3'),(87,3,'W4 Reading',NULL,0,NULL,NULL,'Module 2: Interaction Factors','Week 4'),(88,3,'J1: Peer Review',NULL,30,'2019-09-20','2019-10-01','Module 2: Interaction Factors','Week 4'),(89,3,'P1: Interface Design Description',NULL,25,'2019-09-20','2019-10-01','Module 2: Interaction Factors','Week 4'),(90,3,'J2: Journal',NULL,0,'2019-09-27','2019-10-22','Module 2: Interaction Factors','Week 4'),(91,3,'W5 Reading',NULL,0,NULL,NULL,'Module 2: Interaction Factors','Week 5'),(92,3,'Part 2: Human Attributes Study',NULL,75,'2019-10-04','2019-10-08','Module 2: Interaction Factors','Week 5'),(93,3,'J2: Journal',NULL,0,'2019-10-04','2019-10-22','Module 2: Interaction Factors','Week 5'),(94,3,'P2: Requirements Specification',NULL,0,'2019-10-04','2019-10-22','Module 2: Interaction Factors','Week 5'),(95,3,'W6 Reading',NULL,0,NULL,NULL,'Module 2: Interaction Factors','Week 6'),(96,3,'J2: Journal',NULL,0,'2019-10-11','2019-10-22','Module 2: Interaction Factors','Week 6'),(97,3,'P2: Requirements Specification',NULL,0,'2019-10-11','2019-10-22','Module 2: Interaction Factors','Week 6'),(98,3,'W7 Reading',NULL,0,NULL,NULL,'Module 2: Interaction Factors','Week 7'),(99,3,'J2: Journal',NULL,50,'2019-09-27','2019-10-22','Module 2: Interaction Factors','Week 7'),(100,3,'P2: Requirements Specification',NULL,75,'2019-10-04','2019-10-22','Module 2: Interaction Factors','Week 7'),(101,3,'J2: Peer Review',NULL,0,'2019-10-18','2019-10-29','Module 2: Interaction Factors','Week 7'),(102,3,'W8 Reading',NULL,0,NULL,NULL,'Module 3: Presentation Factors','Week 8'),(103,3,'J2: Peer Review',NULL,30,'2019-10-18','2019-10-29','Module 3: Presentation Factors','Week 8'),(104,3,'P3: Presentation Factors',NULL,0,'2019-10-25','2019-11-05','Module 3: Presentation Factors','Week 8'),(105,3,'P4: Design Specification',NULL,0,'2019-10-25','2019-11-05','Module 3: Presentation Factors','Week 8'),(106,3,'W9 Reading',NULL,0,NULL,NULL,'Module 3: Presentation Factors','Week 9'),(107,3,'P3: Presentation Factors',NULL,100,'2019-10-25','2019-11-05','Module 3: Presentation Factors','Week 9'),(108,3,'P4: Design Specification',NULL,75,'2019-10-25','2019-11-05','Module 3: Presentation Factors','Week 9'),(109,3,'P5: Evaluating Presentation Factors',NULL,0,'2019-11-01','2019-11-12','Module 3: Presentation Factors','Week 9'),(110,3,'J3: Journal',NULL,0,'2019-11-15','2019-11-26','Module 3: Presentation Factors','Week 9'),(111,3,'W10 Reading',NULL,0,NULL,NULL,'Module 3: Presentation Factors','Week 10'),(112,3,'P5: Evaluating Presentation Factors',NULL,100,'2019-11-01','2019-11-12','Module 3: Presentation Factors','Week 10'),(113,3,'J3: Journal',NULL,0,'2019-11-15','2019-11-26','Module 3: Presentation Factors','Week 10'),(114,3,'P6: Usability Evaluation Criteria',NULL,0,'2019-11-15','2019-11-26','Module 3: Presentation Factors','Week 10'),(115,3,'W11 Reading',NULL,0,NULL,NULL,'Module 3: Presentation Factors','Week 11'),(116,3,'P6: Usability Evaluation Criteria',NULL,100,'2019-11-15','2019-11-19','Module 3: Presentation Factors','Week 11'),(117,3,'Part 3: Human Attributes Study',NULL,75,'2019-10-25','2019-11-19','Module 3: Presentation Factors','Week 11'),(118,3,'J3: Journal',NULL,0,'2019-11-15','2019-11-26','Module 3: Presentation Factors','Week 11'),(119,3,'P7: Usability Evaluation Plan',NULL,0,'2019-11-15','2019-11-26','Module 3: Presentation Factors','Week 11'),(120,3,'W12 Reading',NULL,0,NULL,NULL,'Module 4: Issues of Usability Assessment','Week 12'),(121,3,'J3: Journal',NULL,50,'2019-11-01','2019-11-26','Module 4: Issues of Usability Assessment','Week 12'),(122,3,'P7: Usability Evaluation Plan',NULL,100,'2019-11-15','2019-11-26','Module 4: Issues of Usability Assessment','Week 12'),(123,3,'J3: Peer Review',NULL,0,'2019-11-22','2019-12-03','Module 4: Issues of Usability Assessment','Week 12'),(124,3,'P8: Usability Test Plan',NULL,0,'2019-11-22','2019-12-03','Module 4: Issues of Usability Assessment','Week 12'),(125,3,'W13 Reading',NULL,0,NULL,NULL,'Module 4: Issues of Usability Assessment','Week 13'),(126,3,'J3: Peer Review',NULL,30,'2019-11-22','2019-12-03','Module 4: Issues of Usability Assessment','Week 13'),(127,3,'P7: Usability Evaluation Plan',NULL,100,'2019-11-22','2019-12-03','Module 4: Issues of Usability Assessment','Week 13'),(128,3,'P9: Final Paper & Presentation',NULL,0,'2019-11-29','2019-12-06','Module 4: Issues of Usability Assessment','Week 13'),(129,3,'Course & Faculty Evaluation',NULL,0,NULL,NULL,'Module 4: Issues of Usability Assessment','Week 14'),(130,3,'W14 Reading',NULL,0,NULL,NULL,'Module 4: Issues of Usability Assessment','Week 14'),(131,3,'P9: Final Paper & Presentation',NULL,0,'2019-11-29','2019-12-06','Module 4: Issues of Usability Assessment','Week 14'),(132,3,'Part A: Final Presentation',NULL,0,'2019-12-06','2019-12-06','Module 4: Issues of Usability Assessment','Week 14'),(133,3,'Reflection Paper',NULL,0,'2019-12-06','2019-12-16','Module 4: Issues of Usability Assessment','Week 14'),(134,3,'W15 Reading',NULL,0,NULL,NULL,'Module 4: Issues of Usability Assessment','Week 15'),(135,3,'P9: Final Paper & Presentation',NULL,200,'2019-11-29','2019-12-06','Module 4: Issues of Usability Assessment','Week 15'),(136,3,'Part B: Final Presentation',NULL,0,'2019-12-13','2019-12-13','Module 4: Issues of Usability Assessment','Week 15'),(137,3,'Reflection',NULL,50,'2019-12-06','2019-12-16','Module 4: Issues of Usability Assessment','Week 15'),(138,4,'Course Overview',NULL,0,NULL,NULL,'Syllabus',NULL),(139,4,'Course Materials',NULL,0,NULL,NULL,'Syllabus',NULL),(140,4,'Meadows (2008)',NULL,0,NULL,NULL,'Syllabus',NULL),(141,4,'Stair and Reynolds (2016)',NULL,0,NULL,NULL,'Syllabus',NULL),(142,4,'Undergraduate Grading Policy',NULL,0,NULL,NULL,'Syllabus',NULL),(143,4,'Academic Policies',NULL,0,NULL,NULL,'Syllabus',NULL),(144,4,'Student Responsibilities',NULL,0,NULL,NULL,'Syllabus',NULL),(145,4,'Student Support Services',NULL,0,NULL,NULL,'Syllabus',NULL),(146,4,'General Questions',NULL,0,NULL,NULL,'Course Communications & Tool',NULL),(147,4,'About Turnitin.com',NULL,0,NULL,NULL,'Course Communications & Tool',NULL),(148,4,'Submit To Grammarly',NULL,0,NULL,NULL,'Course Communications & Tool',NULL),(149,4,'APA Resources for Students',NULL,0,NULL,NULL,'Course Communications & Tool',NULL),(150,4,'Writting Support Services',NULL,0,NULL,NULL,'Course Communications & Tool',NULL),(151,4,'Skill Building Workshop',NULL,0,NULL,NULL,'Course Communications & Tool',NULL),(152,4,'Getting Started with Adobe Connect for Online Meetings - Student',NULL,0,NULL,NULL,'Course Communications & Tool',NULL),(153,4,'Getting Started with Skype for Business - Student ',NULL,0,NULL,NULL,'Course Communications & Tool',NULL),(154,4,'Week 1 Preparation & Overview',NULL,0,'2019-09-05','2019-09-11','Module 1: Gerneal System Perspective','Week 1'),(155,4,'Week 1 Journal / log',NULL,40,'2019-09-05','2019-09-11','Module 1: Gerneal System Perspective','Week 1'),(156,4,'Week 2 Essay Preparation',NULL,0,'2019-09-05','2019-09-11','Module 1: Gerneal System Perspective','Week 1'),(157,4,'Week 2 Preparation & Overview',NULL,0,'2019-09-12','2019-09-18','Module 1: Gerneal System Perspective','Week 2'),(158,4,'Week 2 Journal / log',NULL,40,'2019-09-12','2019-09-18','Module 1: Gerneal System Perspective','Week 2'),(159,4,'Week 2 Essay',NULL,40,'2019-09-12','2019-09-18','Module 1: Gerneal System Perspective','Week 2'),(160,4,'Week 3 Essay Preparation',NULL,0,'2019-09-12','2019-09-18','Module 1: Gerneal System Perspective','Week 2'),(161,4,'Week 3 Preparation & Overview',NULL,0,'2019-09-19','2019-09-25','Module 1: Gerneal System Perspective','Week 3'),(162,4,'Week 3 Journal / log',NULL,40,'2019-09-19','2019-09-25','Module 1: Gerneal System Perspective','Week 3'),(163,4,'Week 3 Essay',NULL,40,'2019-09-19','2019-09-25','Module 1: Gerneal System Perspective','Week 3'),(164,4,'Week 4 Essay Preparation',NULL,0,'2019-09-19','2019-09-25','Module 1: Gerneal System Perspective','Week 3'),(165,4,'Week 4 Preparation & Overview',NULL,0,'2019-09-26','2019-10-02','Module 1: Gerneal System Perspective','Week 4'),(166,4,'Week 4 Journal / log',NULL,40,'2019-09-26','2019-10-02','Module 1: Gerneal System Perspective','Week 4'),(167,4,'Week 4 Essay',NULL,40,'2019-09-26','2019-10-02','Module 1: Gerneal System Perspective','Week 4'),(168,4,'Week 5 Essay Preparation',NULL,0,'2019-09-26','2019-10-02','Module 1: Gerneal System Perspective','Week 4'),(169,4,'Week 5 Preparation & Overview',NULL,0,'2019-10-03','2019-10-09','Module 1: Gerneal System Perspective','Week 5'),(170,4,'Week 5 Journal / log',NULL,40,'2019-10-03','2019-10-09','Module 1: Gerneal System Perspective','Week 5'),(171,4,'Week 5 Essay',NULL,40,'2019-10-03','2019-10-09','Module 1: Gerneal System Perspective','Week 5'),(172,4,'Week 6 Essay Preparation',NULL,0,'2019-10-03','2019-10-09','Module 1: Gerneal System Perspective','Week 5'),(173,4,'Week 6 Preparation & Overview',NULL,0,'2019-10-10','2019-10-16','Module 1: Gerneal System Perspective','Week 6'),(174,4,'Week 6 Journal / log',NULL,40,'2019-10-10','2019-10-16','Module 1: Gerneal System Perspective','Week 6'),(175,4,'Week 6 Essay',NULL,40,'2019-10-10','2019-10-16','Module 1: Gerneal System Perspective','Week 6'),(176,4,'Week 6 Exam',NULL,60,'2019-10-10','2019-10-16','Module 1: Gerneal System Perspective','Week 6'),(177,4,'Week 7 Preparation & Overview',NULL,0,'2019-10-17','2019-10-23','Module 2: The Organization as Information System','Week 7'),(178,4,'Week 7 Journal / log',NULL,40,'2019-10-17','2019-10-23','Module 2: The Organization as Information System','Week 7'),(179,4,'Week 8 Lab Preparation',NULL,0,'2019-10-17','2019-10-23','Module 2: The Organization as Information System','Week 7'),(180,4,'Week 8 Preparation & Overview',NULL,0,'2019-10-24','2019-10-30','Module 2: The Organization as Information System','Week 8'),(181,4,'Week 8 Journal / log',NULL,40,'2019-10-24','2019-10-30','Module 2: The Organization as Information System','Week 8'),(182,4,'Week 8 Lab',NULL,40,'2019-10-24','2019-10-30','Module 2: The Organization as Information System','Week 8'),(183,4,'Week 9 Lab Preparation',NULL,0,'2019-10-24','2019-10-30','Module 2: The Organization as Information System','Week 8'),(184,4,'Week 9 Preparation & Overview',NULL,0,'2019-10-31','2019-11-06','Module 2: The Organization as Information System','Week 9'),(185,4,'Week 9 Journal / log',NULL,40,'2019-10-31','2019-11-06','Module 2: The Organization as Information System','Week 9'),(186,4,'Week 9 Lab',NULL,40,'2019-10-31','2019-11-06','Module 2: The Organization as Information System','Week 9'),(187,4,'Week 10 Lab Preparation',NULL,0,'2019-10-31','2019-11-06','Module 2: The Organization as Information System','Week 9'),(188,4,'Week 10 Preparation & Overview',NULL,0,'2019-11-07','2019-11-13','Module 2: The Organization as Information System','Week 10'),(189,4,'Week 10 Journal / log',NULL,40,'2019-11-07','2019-11-13','Module 2: The Organization as Information System','Week 10'),(190,4,'Week 10 Lab',NULL,40,'2019-11-07','2019-11-13','Module 2: The Organization as Information System','Week 10'),(191,4,'Week 11 Lab Preparation',NULL,0,'2019-11-07','2019-11-13','Module 2: The Organization as Information System','Week 10'),(192,4,'Week 11 Preparation & Overview',NULL,0,'2019-11-14','2019-11-20','Module 2: The Organization as Information System','Week 11'),(193,4,'Week 11 Journal / log',NULL,40,'2019-11-14','2019-11-20','Module 2: The Organization as Information System','Week 11'),(194,4,'Week 11 Lab',NULL,40,'2019-11-14','2019-11-20','Module 2: The Organization as Information System','Week 11'),(195,4,'Week 12 Lab Preparation',NULL,0,'2019-11-14','2019-11-20','Module 2: The Organization as Information System','Week 11'),(196,4,'Week 12 Preparation & Overview',NULL,0,'2019-11-15','2019-11-21','Module 2: The Organization as Information System','Week 12'),(197,4,'Week 12 Journal / log',NULL,40,'2019-11-15','2019-11-21','Module 2: The Organization as Information System','Week 12'),(198,4,'Week 12 Lab',NULL,40,'2019-11-15','2019-11-21','Module 2: The Organization as Information System','Week 12'),(199,4,'Week 12 Exam',NULL,60,'2019-11-15','2019-11-21','Module 2: The Organization as Information System','Week 12'),(200,5,'Course Overview',NULL,0,NULL,NULL,'Syllabus',NULL),(201,5,'Course Materials',NULL,0,NULL,NULL,'Syllabus',NULL),(202,5,'Policies and Services',NULL,0,NULL,NULL,'Syllabus',NULL),(203,5,'Getting Started with Adobe Connect for Online Meetings - Student',NULL,0,NULL,NULL,'Course Communications & Tool',NULL),(204,5,'Getting Started with Skype for Business - Student ',NULL,0,NULL,NULL,'Course Communications & Tool',NULL),(205,5,'Proctored Testing Requirements',NULL,0,NULL,NULL,'Course Communications & Tool',NULL),(206,5,'W1 Reading',NULL,0,NULL,NULL,'Module 1: Mathematical Foundations','Week 1'),(207,5,'Obtain a Proctor for Exams',NULL,0,NULL,NULL,'Module 1: Mathematical Foundations','Week 1'),(208,5,'Meet 1',NULL,12,'2019-09-24','2019-09-27','Module 1: Mathematical Foundations','Week 1'),(209,5,'W2 Reading',NULL,0,NULL,NULL,'Module 1: Mathematical Foundations','Week 2'),(210,5,'Obtain a Proctor for Exams',NULL,0,'2019-09-25','2019-10-06','Module 1: Mathematical Foundations','Week 2'),(211,5,'Begin Homework 1',NULL,0,NULL,NULL,'Module 1: Mathematical Foundations','Week 2'),(212,5,'Meet 2',NULL,12,'2019-10-01','2019-10-04','Module 1: Mathematical Foundations','Week 2'),(213,5,'W3 Reading',NULL,0,NULL,NULL,'Module 2: Advanced Design and Analysis Techniques','Week 3'),(214,5,'Continue Homework 1',NULL,0,NULL,NULL,'Module 2: Advanced Design and Analysis Techniques','Week 3'),(215,5,'Begin Project 1',NULL,0,NULL,NULL,'Module 2: Advanced Design and Analysis Techniques','Week 3'),(216,5,'Meet 3',NULL,12,'2019-10-08','2019-10-11','Module 2: Advanced Design and Analysis Techniques','Week 3'),(217,5,'W4 Reading',NULL,0,NULL,NULL,'Module 2: Advanced Design and Analysis Techniques','Week 4'),(218,5,'Submit Homework 1',NULL,60,'2019-10-15','2019-10-21','Module 2: Advanced Design and Analysis Techniques','Week 4'),(219,5,'Continue Project 1',NULL,0,NULL,NULL,'Module 2: Advanced Design and Analysis Techniques','Week 4'),(220,5,'Begin Homework 2',NULL,0,NULL,NULL,'Module 2: Advanced Design and Analysis Techniques','Week 4'),(221,5,'Meet 4',NULL,12,'2019-10-15','2019-10-18','Module 2: Advanced Design and Analysis Techniques','Week 4'),(222,5,'W5 Reading',NULL,0,NULL,NULL,'Module 3: Advanced Data Structures','Week 5'),(223,5,'Submit Project 1',NULL,100,'2019-10-22','2019-10-28','Module 3: Advanced Data Structures','Week 5'),(224,5,'Continue Homework 2',NULL,0,NULL,NULL,'Module 3: Advanced Data Structures','Week 5'),(225,5,'Begin Project 2',NULL,0,NULL,NULL,'Module 3: Advanced Data Structures','Week 5'),(226,5,'Meet 5',NULL,12,'2019-10-22','2019-10-25','Module 3: Advanced Data Structures','Week 5'),(227,5,'W6 Reading',NULL,0,NULL,NULL,'Module 3: Advanced Data Structures','Week 6'),(228,5,'Submit Homework 2',NULL,60,'2019-10-15','2019-11-04','Module 3: Advanced Data Structures','Week 6'),(229,5,'Continue Project 2',NULL,0,NULL,NULL,'Module 3: Advanced Data Structures','Week 6'),(230,5,'Begin Homework 3',NULL,0,NULL,NULL,'Module 3: Advanced Data Structures','Week 6'),(231,5,'Prepare for Mid-term Exam',NULL,0,NULL,NULL,'Module 3: Advanced Data Structures','Week 6'),(232,5,'Meet 6',NULL,12,'2019-10-29','2019-11-01','Module 3: Advanced Data Structures','Week 6'),(233,5,'W7 Reading',NULL,0,NULL,NULL,'Module 4: Graph Algorithms','Week 7'),(234,5,'Mid-term Exam',NULL,100,'2019-11-05','2019-11-11','Module 4: Graph Algorithms','Week 7'),(235,5,'Continue Homework 3',NULL,0,NULL,NULL,'Module 4: Graph Algorithms','Week 7'),(236,5,'Continue Project 2',NULL,0,NULL,NULL,'Module 4: Graph Algorithms','Week 7'),(237,5,'Begin Project 3',NULL,0,NULL,NULL,'Module 4: Graph Algorithms','Week 7'),(238,5,'Meet 7',NULL,12,'2019-11-05','2019-11-08','Module 4: Graph Algorithms','Week 7'),(239,5,'W8 Reading',NULL,0,NULL,NULL,'Module 4: Graph Algorithms','Week 8'),(240,5,'Submit Homework 3',NULL,80,'2019-11-12','2019-11-18','Module 4: Graph Algorithms','Week 8'),(241,5,'Continue Project 2',NULL,0,NULL,NULL,'Module 4: Graph Algorithms','Week 8'),(242,5,'Continue Project 3',NULL,0,NULL,NULL,'Module 4: Graph Algorithms','Week 8'),(243,5,'Meet 8',NULL,12,'2019-11-12','2019-11-15','Module 4: Graph Algorithms','Week 8'),(244,5,'W9 Reading',NULL,0,NULL,NULL,'Module 5: String Matching Algorithms','Week 9'),(245,5,'Submit Project 2',NULL,150,'2019-11-19','2019-11-25','Module 5: String Matching Algorithms','Week 9'),(246,5,'Continue Project 3',NULL,0,NULL,NULL,'Module 5: String Matching Algorithms','Week 9'),(247,5,'Meet 9',NULL,12,'2019-11-19','2019-11-22','Module 5: String Matching Algorithms','Week 9'),(248,5,'W10 Reading',NULL,0,NULL,NULL,'Module 6: Computational Geometry Algorithms','Week 10'),(249,5,'Continue Project 3',NULL,0,NULL,NULL,'Module 6: Computational Geometry Algorithms','Week 10'),(250,5,'Meet 10',NULL,12,'2019-11-26','2019-11-29','Module 6: Computational Geometry Algorithms','Week 10'),(251,5,'W11 Reading',NULL,0,NULL,NULL,'Module 7: NP-completeness & Approximation Algorithms','Week 11'),(252,5,'Continue Project 3',NULL,0,NULL,NULL,'Module 7: NP-completeness & Approximation Algorithms','Week 11'),(253,5,'Prepare for Final-exam',NULL,0,NULL,NULL,'Module 7: NP-completeness & Approximation Algorithms','Week 11'),(254,5,'Meet 11',NULL,12,'2019-12-03','2019-12-06','Module 7: NP-completeness & Approximation Algorithms','Week 11'),(255,5,'Course & Faculty Evaluation',NULL,0,NULL,NULL,'Module 7: NP-completeness & Approximation Algorithms','Week 11'),(256,5,'W12 Preparation',NULL,0,NULL,NULL,'Module 7: NP-completeness & Approximation Algorithms','Week 12'),(257,5,'Meet 12',NULL,18,'2019-12-10','2019-12-12','Module 7: NP-completeness & Approximation Algorithms','Week 12'),(258,5,'Submit Project 3',NULL,150,'2019-12-03','2019-12-08','Module 7: NP-completeness & Approximation Algorithms','Week 12'),(259,5,'Final-exam',NULL,150,'2019-12-10','2019-12-15','Module 7: NP-completeness & Approximation Algorithms','Week 12');
/*!40000 ALTER TABLE `assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `class` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_section` varchar(45) DEFAULT NULL,
  `class_term` varchar(45) DEFAULT NULL,
  `class_start_date` date DEFAULT NULL,
  `class_end_date` date DEFAULT NULL,
  `crs_id` int(11) DEFAULT NULL,
  `prof_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (1,'R1WW','AU19','2019-09-04','2019-12-14',1,NULL,NULL),(2,'V1WW','FA17','2017-09-04','2017-12-14',1,NULL,NULL),(3,'R1WW','AU19','2019-09-04','2019-12-14',6,NULL,NULL),(4,'R1WW','AU19','2019-09-04','2019-12-14',7,NULL,NULL),(5,'R1WW','AU19','2019-09-04','2019-12-14',8,NULL,NULL);
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `course` (
  `crs_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_id` int(11) DEFAULT NULL,
  `crs_title` varchar(45) DEFAULT NULL,
  `crs_name` varchar(100) DEFAULT NULL,
  `crs_description` varchar(200) DEFAULT NULL,
  `crs_credit` int(11) DEFAULT NULL,
  PRIMARY KEY (`crs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,NULL,'COMP 323','Fundamentals of Operating Systems',NULL,4),(6,NULL,'COMP 325','Human-Computer Interaction',NULL,4),(7,NULL,'MIS 310','Information Systems Architecture and Technology',NULL,4),(8,NULL,'COMP 620','Analysis of Algorithms',NULL,4);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollment`
--

DROP TABLE IF EXISTS `enrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `enrollment` (
  `class_id` int(11) NOT NULL,
  `stu_id` varchar(45) NOT NULL,
  `enroll_date` date DEFAULT NULL,
  `accumulative_points_earned` int(11) DEFAULT '0',
  `accumulative_points_total` int(11) DEFAULT '0',
  `total_points` int(11) DEFAULT '1000',
  `final_grade` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`class_id`,`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollment`
--

LOCK TABLES `enrollment` WRITE;
/*!40000 ALTER TABLE `enrollment` DISABLE KEYS */;
INSERT INTO `enrollment` VALUES (1,'0619831','2019-08-31',68,86,1000,NULL),(3,'0619831','2019-08-31',0,0,1000,NULL),(4,'0619831','2019-08-31',0,0,1000,NULL),(5,'0619831','2019-08-31',0,0,1000,NULL);
/*!40000 ALTER TABLE `enrollment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `grade` (
  `assign_id` int(11) NOT NULL,
  `stu_id` varchar(45) NOT NULL,
  `assign_upload` blob,
  `assign_finish_date` datetime DEFAULT NULL,
  `earned_points` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`assign_id`,`stu_id`),
  KEY `FK_finish_stu_idx` (`stu_id`),
  KEY `FK_finish_class_idx` (`class_id`),
  CONSTRAINT `FK_finish_assign` FOREIGN KEY (`assign_id`) REFERENCES `assignment` (`assign_id`),
  CONSTRAINT `FK_finish_class` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`),
  CONSTRAINT `FK_finish_stu` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade`
--

LOCK TABLES `grade` WRITE;
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
INSERT INTO `grade` VALUES (14,'0619831',NULL,'2019-11-12 00:00:00',20,1),(15,'0619831',NULL,'2019-11-13 00:00:00',48,1);
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `student` (
  `stu_id` varchar(45) NOT NULL,
  `stu_lname` varchar(45) DEFAULT NULL,
  `stu_fname` varchar(45) DEFAULT NULL,
  `stu_initial` varchar(45) DEFAULT NULL,
  `stu_email` varchar(45) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('0619831','Xu','Larry',NULL,'xu17@.email.franklin.edu',NULL);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(45) DEFAULT NULL,
  `user_salt` varchar(200) DEFAULT NULL,
  `user_password` varchar(200) DEFAULT NULL,
  `user_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-20 15:03:19
