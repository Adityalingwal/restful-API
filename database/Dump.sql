CREATE DATABASE  IF NOT EXISTS `hospital_management` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hospital_management`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital_management
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `hospitals`
--

DROP TABLE IF EXISTS `hospitals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospitals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospitals`
--

LOCK TABLES `hospitals` WRITE;
/*!40000 ALTER TABLE `hospitals` DISABLE KEYS */;
INSERT INTO `hospitals` VALUES (1,'Apollo Hospitals','2024-05-31 06:42:46','2024-05-31 06:42:46'),(2,'Jawaharlal Nehru Medical College and Hospital','2024-05-31 06:42:46','2024-05-31 06:42:46'),(3,'Indira Gandhi Institute of Medical Sciences (IGIMS)','2024-05-31 06:42:46','2024-05-31 06:42:46'),(4,'AIIMS - All India Institute Of Medical Science','2024-05-31 06:42:46','2024-05-31 06:42:46');
/*!40000 ALTER TABLE `hospitals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `PsychiatristId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `PsychiatristId` (`PsychiatristId`),
  CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`PsychiatristId`) REFERENCES `psychiatrists` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'adityalingwal','padampur kotdwara','aditya123@gmail.com','8747503886','Adityalingwal2','uploads\\1717137810550-IMG_20240510_114620.jpg','2024-05-31 06:43:30','2024-05-31 06:43:30',1),(2,'adityalingwal','padampur kotdwara','aditya123@gmail.com','8747503886','Adityalingwal2','uploads\\1717137862860-IMG_20240510_114620.jpg','2024-05-31 06:44:22','2024-05-31 06:44:22',6),(3,'adityalingwal','padampur kotdwara','aditya123@gmail.com','8747503886','Adityalingwal2','uploads\\1717137869636-IMG_20240510_114620.jpg','2024-05-31 06:44:29','2024-05-31 06:44:29',11),(4,'adityalingwal','padampur kotdwara','aditya123@gmail.com','8747503886','Adityalingwal2','uploads\\1717137875346-IMG_20240510_114620.jpg','2024-05-31 06:44:35','2024-05-31 06:44:35',16),(5,'somesh lingwal','skytech merion','somesh123@gmail.com','9410526626','Somesh123','uploads\\1717137942300-IMG_20240510_114620.jpg','2024-05-31 06:45:42','2024-05-31 06:45:42',2),(6,'somesh lingwal','skytech merion','somesh123@gmail.com','9410526626','Somesh123','uploads\\1717137949569-IMG_20240510_114620.jpg','2024-05-31 06:45:49','2024-05-31 06:45:49',7),(7,'somesh lingwal','skytech merion','somesh123@gmail.com','9410526626','Somesh123','uploads\\1717137953537-IMG_20240510_114620.jpg','2024-05-31 06:45:53','2024-05-31 06:45:53',12),(8,'somesh lingwal','skytech merion','somesh123@gmail.com','9410526626','Somesh123','uploads\\1717137958681-IMG_20240510_114620.jpg','2024-05-31 06:45:58','2024-05-31 06:45:58',17),(9,'mohit negi','Rajiv chowk','mohitnegi123@gmail.com','8810526626','Mohit123','uploads\\1717138034625-IMG_20240510_114620.jpg','2024-05-31 06:47:14','2024-05-31 06:47:14',3),(10,'mohit negi','Rajiv chowk','mohitnegi123@gmail.com','8810526626','Mohit123','uploads\\1717138039406-IMG_20240510_114620.jpg','2024-05-31 06:47:19','2024-05-31 06:47:19',8),(11,'mohit negi','Rajiv chowk','mohitnegi123@gmail.com','8810526626','Mohit123','uploads\\1717138053504-IMG_20240510_114620.jpg','2024-05-31 06:47:33','2024-05-31 06:47:33',13),(12,'mohit negi','Rajiv chowk','mohitnegi123@gmail.com','8810526626','Mohit123','uploads\\1717138058673-IMG_20240510_114620.jpg','2024-05-31 06:47:38','2024-05-31 06:47:38',18),(13,'Nitesh rawat','manpur kotdwara','niteshrawat@gmail.com','8810857626','Nitesh345','uploads\\1717138138561-IMG_20240510_114620.jpg','2024-05-31 06:48:58','2024-05-31 06:48:58',19),(14,'Nitesh rawat','manpur kotdwara','niteshrawat@gmail.com','8810857626','Nitesh345','uploads\\1717138152290-IMG_20240510_114620.jpg','2024-05-31 06:49:12','2024-05-31 06:49:12',14),(15,'Nitesh rawat','manpur kotdwara','niteshrawat@gmail.com','8810857626','Nitesh345','uploads\\1717138158157-IMG_20240510_114620.jpg','2024-05-31 06:49:18','2024-05-31 06:49:18',4),(16,'Nitesh rawat','manpur kotdwara','niteshrawat@gmail.com','8810857626','Nitesh345','uploads\\1717138167362-IMG_20240510_114620.jpg','2024-05-31 06:49:27','2024-05-31 06:49:27',9),(17,'Priyanshu negi','graphic era dehradun','priyanshunegi@gmail.com','8893657626','Priyanshu345','uploads\\1717138226986-IMG_20240510_114620.jpg','2024-05-31 06:50:26','2024-05-31 06:50:26',5),(18,'Priyanshu negi','graphic era dehradun','priyanshunegi@gmail.com','8893657626','Priyanshu345','uploads\\1717138231420-IMG_20240510_114620.jpg','2024-05-31 06:50:31','2024-05-31 06:50:31',10),(19,'Priyanshu negi','graphic era dehradun','priyanshunegi@gmail.com','8893657626','Priyanshu345','uploads\\1717138235858-IMG_20240510_114620.jpg','2024-05-31 06:50:35','2024-05-31 06:50:35',15),(20,'Priyanshu negi','graphic era dehradun','priyanshunegi@gmail.com','8893657626','Priyanshu345','uploads\\1717138240104-IMG_20240510_114620.jpg','2024-05-31 06:50:40','2024-05-31 06:50:40',20),(21,'Anita rawat','IHMS kotdwara','anitarawat@gmail.com','8893654386','Anita345','uploads\\1717138399655-IMG_20240510_114620.jpg','2024-05-31 06:53:19','2024-05-31 06:53:19',1),(22,'Anita rawat','IHMS kotdwara','anitarawat@gmail.com','8893654386','Anita345','uploads\\1717138404987-IMG_20240510_114620.jpg','2024-05-31 06:53:24','2024-05-31 06:53:24',6),(23,'Anita rawat','IHMS kotdwara','anitarawat@gmail.com','8893654386','Anita345','uploads\\1717138409190-IMG_20240510_114620.jpg','2024-05-31 06:53:29','2024-05-31 06:53:29',11),(24,'Anita rawat','IHMS kotdwara','anitarawat@gmail.com','8893654386','Anita345','uploads\\1717138413093-IMG_20240510_114620.jpg','2024-05-31 06:53:33','2024-05-31 06:53:33',16),(25,'Nikita negi','Kotdwara uttarakhand','nikitanegi@gmail.com','9553654386','Nikitanegi654','uploads\\1717138587154-IMG_20240510_114620.jpg','2024-05-31 06:56:27','2024-05-31 06:56:27',3),(26,'Nikita negi','Kotdwara uttarakhand','nikitanegi@gmail.com','9553654386','Nikitanegi654','uploads\\1717138593909-IMG_20240510_114620.jpg','2024-05-31 06:56:33','2024-05-31 06:56:33',8),(27,'Nikita negi','Kotdwara uttarakhand','nikitanegi@gmail.com','9553654386','Nikitanegi654','uploads\\1717138597816-IMG_20240510_114620.jpg','2024-05-31 06:56:37','2024-05-31 06:56:37',13),(28,'Nikita negi','Kotdwara uttarakhand','nikitanegi@gmail.com','9553654386','Nikitanegi654','uploads\\1717138602426-IMG_20240510_114620.jpg','2024-05-31 06:56:42','2024-05-31 06:56:42',18),(29,'Aman gusain','Dehradun uttarakhand','amangusain@gmail.com','8795674385','Amangusain654','uploads\\1717138693268-IMG_20240510_114620.jpg','2024-05-31 06:58:13','2024-05-31 06:58:13',4),(30,'Aman gusain','Dehradun uttarakhand','amangusain@gmail.com','8795674385','Amangusain654','uploads\\1717138702292-IMG_20240510_114620.jpg','2024-05-31 06:58:22','2024-05-31 06:58:22',9),(31,'Aman gusain','Dehradun uttarakhand','amangusain@gmail.com','8795674385','Amangusain654','uploads\\1717138709324-IMG_20240510_114620.jpg','2024-05-31 06:58:29','2024-05-31 06:58:29',14),(32,'Aman gusain','Dehradun uttarakhand','amangusain@gmail.com','8795674385','Amangusain654','uploads\\1717138713534-IMG_20240510_114620.jpg','2024-05-31 06:58:33','2024-05-31 06:58:33',19),(33,'Neha negi','kalalghati kotdwara ','nehanegi@gmail.com','8467526620','Nehanegi860','uploads\\1717138960084-IMG_20240510_114620.jpg','2024-05-31 07:02:40','2024-05-31 07:02:40',5),(34,'Neha negi','kalalghati kotdwara ','nehanegi@gmail.com','8467526620','Nehanegi860','uploads\\1717138966476-IMG_20240510_114620.jpg','2024-05-31 07:02:46','2024-05-31 07:02:46',10),(35,'Neha negi','kalalghati kotdwara ','nehanegi@gmail.com','8467526620','Nehanegi860','uploads\\1717138976115-IMG_20240510_114620.jpg','2024-05-31 07:02:56','2024-05-31 07:02:56',15),(36,'Neha negi','kalalghati kotdwara ','nehanegi@gmail.com','8467526620','Nehanegi860','uploads\\1717138981033-IMG_20240510_114620.jpg','2024-05-31 07:03:01','2024-05-31 07:03:01',20),(37,'Divyanshu rawat','kalalghati kotdwara ','divyanshurawat@gmail.com','8467526690','Divyanshu860','uploads\\1717139418873-IMG_20240510_114620.jpg','2024-05-31 07:10:18','2024-05-31 07:10:18',11),(38,'Divyanshu rawat','kalalghati kotdwara ','divyanshurawat@gmail.com','8467526690','Divyanshu860','uploads\\1717139424093-IMG_20240510_114620.jpg','2024-05-31 07:10:24','2024-05-31 07:10:24',1),(39,'Divyanshu rawat','kalalghati kotdwara ','divyanshurawat@gmail.com','8467526690','Divyanshu860','uploads\\1717139429254-IMG_20240510_114620.jpg','2024-05-31 07:10:29','2024-05-31 07:10:29',6),(40,'Divyanshu rawat','kalalghati kotdwara ','divyanshurawat@gmail.com','8467526690','Divyanshu860','uploads\\1717139433126-IMG_20240510_114620.jpg','2024-05-31 07:10:33','2024-05-31 07:10:33',16),(41,'Ankita rawat','kalalghati kotdwara ','ankitarawat@gmail.com','8467238690','Ankita860','uploads\\1717139480464-IMG_20240510_114620.jpg','2024-05-31 07:11:20','2024-05-31 07:11:20',2),(42,'Ankita rawat','kalalghati kotdwara ','ankitarawat@gmail.com','8467238690','Ankita860','uploads\\1717139484127-IMG_20240510_114620.jpg','2024-05-31 07:11:24','2024-05-31 07:11:24',7),(43,'Ankita rawat','kalalghati kotdwara ','ankitarawat@gmail.com','8467238690','Ankita860','uploads\\1717139487854-IMG_20240510_114620.jpg','2024-05-31 07:11:27','2024-05-31 07:11:27',12),(44,'Ankita rawat','kalalghati kotdwara ','ankitarawat@gmail.com','8467238690','Ankita860','uploads\\1717139491522-IMG_20240510_114620.jpg','2024-05-31 07:11:31','2024-05-31 07:11:31',17),(45,'Anurag kandwal','jhanda chowk kotdwara ','anurag@gmail.com','9967238690','Anurag860','uploads\\1717139573727-IMG_20240510_114620.jpg','2024-05-31 07:12:53','2024-05-31 07:12:53',3),(46,'Anurag kandwal','jhanda chowk kotdwara ','anurag@gmail.com','9967238690','Anurag860','uploads\\1717139577462-IMG_20240510_114620.jpg','2024-05-31 07:12:57','2024-05-31 07:12:57',8),(47,'Anurag kandwal','jhanda chowk kotdwara ','anurag@gmail.com','9967238690','Anurag860','uploads\\1717139581081-IMG_20240510_114620.jpg','2024-05-31 07:13:01','2024-05-31 07:13:01',13),(48,'Anurag kandwal','jhanda chowk kotdwara ','anurag@gmail.com','9967238690','Anurag860','uploads\\1717139585420-IMG_20240510_114620.jpg','2024-05-31 07:13:05','2024-05-31 07:13:05',18),(49,'Vivek saini','Kashmiri gate','viveksaini@gmail.com','9969378690','Viveksaini860','uploads\\1717139662382-IMG_20240510_114620.jpg','2024-05-31 07:14:22','2024-05-31 07:14:22',4),(50,'Vivek saini','Kashmiri gate','viveksaini@gmail.com','9969378690','Viveksaini860','uploads\\1717139671099-IMG_20240510_114620.jpg','2024-05-31 07:14:31','2024-05-31 07:14:31',9),(51,'Vivek saini','Kashmiri gate','viveksaini@gmail.com','9969378690','Viveksaini860','uploads\\1717139674332-IMG_20240510_114620.jpg','2024-05-31 07:14:34','2024-05-31 07:14:34',14),(52,'Vivek saini','Kashmiri gate','viveksaini@gmail.com','9969378690','Viveksaini860','uploads\\1717139678337-IMG_20240510_114620.jpg','2024-05-31 07:14:38','2024-05-31 07:14:38',19);
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psychiatrists`
--

DROP TABLE IF EXISTS `psychiatrists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `psychiatrists` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `HospitalId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `HospitalId` (`HospitalId`),
  CONSTRAINT `psychiatrists_ibfk_1` FOREIGN KEY (`HospitalId`) REFERENCES `hospitals` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psychiatrists`
--

LOCK TABLES `psychiatrists` WRITE;
/*!40000 ALTER TABLE `psychiatrists` DISABLE KEYS */;
INSERT INTO `psychiatrists` VALUES (1,'Dr. Alice Smith','2024-05-31 06:42:46','2024-05-31 06:42:46',1),(2,'Dr. Bob Johnson','2024-05-31 06:42:46','2024-05-31 06:42:46',1),(3,'Dr. Carol Williams','2024-05-31 06:42:46','2024-05-31 06:42:46',1),(4,'Dr. David Brown','2024-05-31 06:42:46','2024-05-31 06:42:46',1),(5,'Dr. Emily Jones','2024-05-31 06:42:46','2024-05-31 06:42:46',1),(6,'Dr. Frank Garcia','2024-05-31 06:42:46','2024-05-31 06:42:46',2),(7,'Dr. Grace Martinez','2024-05-31 06:42:46','2024-05-31 06:42:46',2),(8,'Dr. Henry Wilson','2024-05-31 06:42:46','2024-05-31 06:42:46',2),(9,'Dr. Ivy Anderson','2024-05-31 06:42:46','2024-05-31 06:42:46',2),(10,'Dr. Jack Thomas','2024-05-31 06:42:46','2024-05-31 06:42:46',2),(11,'Dr. Karen Moore','2024-05-31 06:42:46','2024-05-31 06:42:46',3),(12,'Dr. Larry Jackson','2024-05-31 06:42:46','2024-05-31 06:42:46',3),(13,'Dr. Maria White','2024-05-31 06:42:46','2024-05-31 06:42:46',3),(14,'Dr. Nick Harris','2024-05-31 06:42:46','2024-05-31 06:42:46',3),(15,'Dr. Olivia Martin','2024-05-31 06:42:46','2024-05-31 06:42:46',3),(16,'Dr. Paul Thompson','2024-05-31 06:42:46','2024-05-31 06:42:46',4),(17,'Dr. Queen Roberts','2024-05-31 06:42:46','2024-05-31 06:42:46',4),(18,'Dr. Richard Clark','2024-05-31 06:42:46','2024-05-31 06:42:46',4),(19,'Dr. Sarah Lewis','2024-05-31 06:42:46','2024-05-31 06:42:46',4),(20,'Dr. Tom Walker','2024-05-31 06:42:46','2024-05-31 06:42:46',4);
/*!40000 ALTER TABLE `psychiatrists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-31 12:46:50
