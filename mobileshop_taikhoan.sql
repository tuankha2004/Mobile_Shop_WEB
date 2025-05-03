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
-- Table structure for table `taikhoan`
--

DROP TABLE IF EXISTS `taikhoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taikhoan` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `UserEmail` char(50) NOT NULL,
  `Pass` char(50) NOT NULL,
  `HoTen` varchar(50) DEFAULT NULL,
  `GioiTinh` varchar(10) DEFAULT NULL,
  `SDT` char(12) DEFAULT NULL,
  `PhanLoai` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taikhoan`
--

LOCK TABLES `taikhoan` WRITE;
/*!40000 ALTER TABLE `taikhoan` DISABLE KEYS */;
INSERT INTO `taikhoan` VALUES (1,'admin@gmail.com','827ccb0eea8a706c4c34a16891f84e7b',NULL,NULL,NULL,0),(2,'khoi2004','c4ca4238a0b923820dcc509a6f75849b',NULL,'nam','0999999999',1),(3,'hoa2004','c4ca4238a0b923820dcc509a6f75849b',NULL,'nam','0111111111',1),(4,'test2','c4ca4238a0b923820dcc509a6f75849b',NULL,'nam','0111111112',1),(5,'namnam','22c78aadb8d25a53ca407fae265a7154',NULL,'nam','0999999995',1),(6,'baonguyen','b4e1c6620073acda217d807627a78dae',NULL,'nu','0999999993',1),(7,'user1','5f4dcc3b5aa765d61d8327deb882cf99','Nguyễn Văn A','nam','0901234567',1),(8,'user2','5f4dcc3b5aa765d61d8327deb882cf99','Trần Thị B','nu','0901234568',1),(9,'user3','5f4dcc3b5aa765d61d8327deb882cf99','Lê Văn C','nam','0901234569',1),(10,'user4','5f4dcc3b5aa765d61d8327deb882cf99','Phạm Thị D','nu','0901234570',1),(11,'user5','5f4dcc3b5aa765d61d8327deb882cf99','Nguyễn Văn E','nam','0901234571',1),(12,'test','c4ca4238a0b923820dcc509a6f75849b',NULL,'nam','0999999997',1),(13,'user7','5f4dcc3b5aa765d61d8327deb882cf99','Lê Văn G','nam','0901234573',1),(14,'user8','5f4dcc3b5aa765d61d8327deb882cf99','Phạm Thị H','nu','0901234574',1),(15,'user9','5f4dcc3b5aa765d61d8327deb882cf99','Nguyễn Văn I','nam','0901234575',1),(16,'user10','5f4dcc3b5aa765d61d8327deb882cf99','Trần Thị J','nu','0901234576',1),(17,'user6','5f4dcc3b5aa765d61d8327deb882cf99','Trần Thị F','nu','0901234572',1),(32,'khapc2004','207b40d2b18eacd5f71df1ff5f72eb8e',NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `taikhoan` ENABLE KEYS */;
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
