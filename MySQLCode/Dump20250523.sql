-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: student
-- ------------------------------------------------------
-- Server version	9.3.0

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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `BookID` int NOT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `Author` varchar(100) DEFAULT NULL,
  `Copies` int DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`BookID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Hobbit','J.R.R. Tolkien',4,'Fantasy'),(2,'1984','George Orwell',3,'Dystopia'),(3,'Mockingbird','Harper Lee',4,'Classic'),(4,'P&P','Jane Austen',6,'Classic'),(5,'Gatsby','F. Scott Fitzgerald',2,'Classic'),(6,'Moby Dick','Herman Melville',3,'Classic'),(7,'War&Peace','Leo Tolstoy',1,'Philosophy'),(8,'Catcher','J.D. Salinger',4,'Coming of Age'),(9,'LOTR','J.R.R. Tolkien',2,'Fantasy'),(10,'Brave New World','Aldous Huxley',5,'Dystopia'),(11,'Silmarillion','J.R.R. Tolkien',4,'Fantasy'),(12,'Animal Farm','George Orwell',6,'Dystopia'),(13,'Wuthering','Emily Brontë',3,'Classic'),(14,'Frankenstein','Mary Shelley',4,'Classic'),(15,'Karamazov','Fyodor Dostoevsky',2,'Philosophy'),(16,'Crime&Punishment','Fyodor Dostoevsky',2,'Philosophy'),(17,'Stranger','Albert Camus',5,'Philosophy'),(18,'HP1','J.K. Rowling',10,'Fantasy'),(19,'HP2','J.K. Rowling',8,'Fantasy'),(20,'Fahrenheit 451','Ray Bradbury',4,'Dystopia'),(21,'Jane Eyre','Charlotte Brontë',4,'Classic'),(22,'Dorian Gray','Oscar Wilde',3,'Classic'),(23,'Metamorphosis','Franz Kafka',4,'Philosophy'),(24,'Solitude','Gabriel García Márquez',3,'Classic'),(25,'Clockwork','Anthony Burgess',3,'Dystopia'),(26,'Alchemist','Paulo Coelho',6,'Philosophy'),(27,'Road','Cormac McCarthy',2,'Dystopia'),(28,'Wind','Patrick Rothfuss',5,'Fantasy'),(29,'The Catch-22','Joseph Heller',3,'Classic'),(30,'Les Mis','Victor Hugo',4,'Classic');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrows`
--

DROP TABLE IF EXISTS `borrows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `borrows` (
  `borrowID` int NOT NULL AUTO_INCREMENT,
  `bookID` int DEFAULT NULL,
  `memberID` int DEFAULT NULL,
  `borrowDate` date DEFAULT NULL,
  `returnDate` date DEFAULT NULL,
  PRIMARY KEY (`borrowID`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrows`
--

LOCK TABLES `borrows` WRITE;
/*!40000 ALTER TABLE `borrows` DISABLE KEYS */;
INSERT INTO `borrows` VALUES (37,1,2,'2025-05-22','2025-05-23');
/*!40000 ALTER TABLE `borrows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `MemberID` int NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'Alice Johnson'),(2,'Bob Smith'),(3,'Charlie Brown'),(4,'Diana Prince'),(5,'Edward Elric'),(6,'Fiona Glenanne'),(7,'George Martin'),(8,'Hannah Baker'),(9,'Ian Fleming'),(10,'Julia Roberts');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-23 16:33:03
