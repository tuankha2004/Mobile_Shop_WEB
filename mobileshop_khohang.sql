-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mobileshop
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `khohang`
--

DROP TABLE IF EXISTS `khohang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khohang` (
  `MaSP` char(20) NOT NULL,
  `SoLuong` int DEFAULT NULL,
  `GhiChu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MaSP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khohang`
--

LOCK TABLES `khohang` WRITE;
/*!40000 ALTER TABLE `khohang` DISABLE KEYS */;
INSERT INTO `khohang` VALUES ('SP001',98,'Còn'),('SP002',99,'Còn'),('SP003',100,'Còn'),('SP004',100,'Còn'),('SP005',99,'Còn'),('SP006',98,'Còn'),('SP007',100,'Còn'),('SP008',100,'Còn'),('SP009',99,'Còn'),('SP010',99,'Còn'),('SP011',100,'Còn'),('SP012',100,'Còn'),('SP013',100,'Còn'),('SP014',100,'Còn'),('SP015',99,'Còn'),('SP016',100,'Còn'),('SP017',100,'Còn'),('SP018',99,'Còn'),('SP019',100,'Còn'),('SP020',100,'Còn'),('SP021',100,'Còn'),('SP022',99,'Còn'),('SP023',100,'Còn'),('SP024',100,'Còn'),('SP025',99,'Còn'),('SP026',100,'Còn');
/*!40000 ALTER TABLE `khohang` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-07  2:25:52
