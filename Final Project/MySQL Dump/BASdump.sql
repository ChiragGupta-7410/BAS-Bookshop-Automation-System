CREATE DATABASE  IF NOT EXISTS `bookshop_database` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bookshop_database`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: bookshop_database
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
-- Table structure for table `bas_members`
--

DROP TABLE IF EXISTS `bas_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bas_members` (
  `emp_id` int NOT NULL,
  `username` varchar(40) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `doj` varchar(20) DEFAULT NULL,
  `user_password` varchar(15) DEFAULT NULL,
  `Employee_Type` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bas_members`
--

LOCK TABLES `bas_members` WRITE;
/*!40000 ALTER TABLE `bas_members` DISABLE KEYS */;
INSERT INTO `bas_members` VALUES (1,'Chirag0297',21,'Jhunjhunu, Rajasthan','2023-04-11','Chirag0297','Manager'),(2,'Chirag0296',20,'Kota, Rajasthan','2023-04-11','Chirag0296','Employee'),(3,'Srinivas0299',21,'Jaipur, Rajasthan','2023-04-11','Srinivas0299','Sales Clerk'),(4,'Keshav0300',21,'Udaipur, Rajasthan','2023-04-11','Keshav0300','Owner');
/*!40000 ALTER TABLE `bas_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `time_date` varchar(40) DEFAULT NULL,
  `customer_name` varchar(40) DEFAULT NULL,
  `isbn_no` varchar(17) DEFAULT NULL,
  `title` varchar(40) DEFAULT NULL,
  `author` varchar(40) DEFAULT NULL,
  `no_of_books` int DEFAULT NULL,
  `sell_price` float DEFAULT NULL,
  `rack_number` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_details`
--

DROP TABLE IF EXISTS `customer_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_details` (
  `full_name` varchar(40) NOT NULL,
  `contact_number` varchar(12) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `purchased_books` varchar(200) DEFAULT NULL,
  `paid_amount` int DEFAULT NULL,
  `time_date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_details`
--

LOCK TABLES `customer_details` WRITE;
/*!40000 ALTER TABLE `customer_details` DISABLE KEYS */;
INSERT INTO `customer_details` VALUES ('Saurabh Singh','9414173314','Lajpat Nagar, Mathura',NULL,NULL,'2023-4-12'),('Sahil Yadav','9876543210','HEllo HEllo HEllo',NULL,NULL,'2023-4-12');
/*!40000 ALTER TABLE `customer_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `ISBN` varchar(17) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `author_name` varchar(40) DEFAULT NULL,
  `published_year` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `rack_number` int DEFAULT NULL,
  `sell_price` float DEFAULT NULL,
  PRIMARY KEY (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES ('978-93-5163-389-1','Data Structure Using C','Sharad Kumar Verma',2015,1,1,100),('978-93-8067-432-2','Client Server Computing','Sharad Kumar Verma',2012,1,1,110),('978-93-89474-49-7','Ordinary Differential Equations','Dr. Deepjyoti Kalita',2012,1,5,140),('987-95-2546-987-1','Dell Handbook','Dell Inc',2001,5,3,168);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_field`
--

DROP TABLE IF EXISTS `request_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_field` (
  `serial_number` int NOT NULL AUTO_INCREMENT,
  `date_time` varchar(40) DEFAULT NULL,
  `customer_name` varchar(40) DEFAULT NULL,
  `contact_number` varchar(12) DEFAULT NULL,
  `book_title` varchar(40) DEFAULT NULL,
  `book_author` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`serial_number`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_field`
--

LOCK TABLES `request_field` WRITE;
/*!40000 ALTER TABLE `request_field` DISABLE KEYS */;
INSERT INTO `request_field` VALUES (2,'2023-57-04/12/23 11:57:49','Vishal Gupta','9456123078','Hp Handbook','Hp Inc');
/*!40000 ALTER TABLE `request_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_statistics`
--

DROP TABLE IF EXISTS `sales_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_statistics` (
  `time_date` varchar(20) DEFAULT NULL,
  `full_name` varchar(40) DEFAULT NULL,
  `book_name` varchar(100) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `amount` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_statistics`
--

LOCK TABLES `sales_statistics` WRITE;
/*!40000 ALTER TABLE `sales_statistics` DISABLE KEYS */;
INSERT INTO `sales_statistics` VALUES ('2023-4-12','HelloHEllo','Data Structure Using C',1,100),('2023-4-12','HelloHEllo','Client Server Computing',1,110),('2023-4-12','Saurabh Singh','Client Server Computing',1,140);
/*!40000 ALTER TABLE `sales_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stockist_details`
--

DROP TABLE IF EXISTS `stockist_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stockist_details` (
  `full_name` varchar(40) NOT NULL,
  `contact_number` varchar(12) DEFAULT NULL,
  `book_title` varchar(50) DEFAULT NULL,
  `author_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`full_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stockist_details`
--

LOCK TABLES `stockist_details` WRITE;
/*!40000 ALTER TABLE `stockist_details` DISABLE KEYS */;
INSERT INTO `stockist_details` VALUES ('Aman Singh','1452369870','Dell Handbook','Dell Inc'),('Deepanshu Goyal','1452369870','Client Server Computing','Lalit Kumar'),('Vishal Gupta','1234567890','Data Structure Using C','Sharad Kumar Verma');
/*!40000 ALTER TABLE `stockist_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-12 15:53:49
