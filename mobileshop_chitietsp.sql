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
-- Table structure for table `chitietsp`
--

DROP TABLE IF EXISTS `chitietsp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitietsp` (
  `MaSP` char(20) NOT NULL,
  `NgaySX` date DEFAULT NULL,
  `HanSD` varchar(20) DEFAULT NULL,
  `XuatSu` varchar(50) DEFAULT NULL,
  `NoiSX` varchar(50) DEFAULT NULL,
  `HuongDanSD` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MaSP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitietsp`
--

LOCK TABLES `chitietsp` WRITE;
/*!40000 ALTER TABLE `chitietsp` DISABLE KEYS */;
INSERT INTO `chitietsp` VALUES ('SP001','2020-10-01','2023-10-01','Trung Quốc','Trung Quốc','Hướng dẫn sử dụng iPhone 12'),('SP002','2020-10-01','2023-10-01','Trung Quốc','Trung Quốc','Hướng dẫn sử dụng iPhone 13'),('SP005','2021-10-01','2024-10-01','Trung Quốc','Trung Quốc','Hướng dẫn sử dụng iPhone 15'),('SP006','2022-10-01','2025-10-01','Trung Quốc','Trung Quốc','Hướng dẫn sử dụng iPhone 15 Pro Max'),('SP007','2023-10-01','2026-10-01','Trung Quốc','Trung Quốc','Hướng dẫn sử dụng iPhone 16 Pro'),('SP008','2023-10-01','2026-10-01','Trung Quốc','Trung Quốc','Hướng dẫn sử dụng iPhone 16 Pro Max'),('SP009','2020-01-01','2023-01-01','Phần Lan','Phần Lan','Hướng dẫn sử dụng Nokia 105'),('SP010','2021-01-01','2024-01-01','Phần Lan','Phần Lan','Hướng dẫn sử dụng Nokia 110 4G'),('SP011','2021-01-01','2024-01-01','Phần Lan','Phần Lan','Hướng dẫn sử dụng Nokia 220 4G'),('SP012','2022-01-01','2025-01-01','Phần Lan','Phần Lan','Hướng dẫn sử dụng Nokia 3210'),('SP013','2022-01-01','2025-01-01','Phần Lan','Phần Lan','Hướng dẫn sử dụng Nokia HMD 105 4G'),('SP014','2020-05-01','2023-05-01','Trung Quốc','Trung Quốc','Hướng dẫn sử dụng Oppo A3'),('SP015','2021-05-01','2024-05-01','Trung Quốc','Trung Quốc','Hướng dẫn sử dụng Oppo A18'),('SP016','2021-05-01','2024-05-01','Trung Quốc','Trung Quốc','Hướng dẫn sử dụng Oppo A79 5G'),('SP017','2023-05-01','2026-05-01','Trung Quốc','Trung Quốc','Hướng dẫn sử dụng Oppo Find N3'),('SP018','2023-05-01','2026-05-01','Trung Quốc','Trung Quốc','Hướng dẫn sử dụng Oppo Find X8 5G'),('SP019','2023-05-01','2026-05-01','Trung Quốc','Trung Quốc','Hướng dẫn sử dụng Realme 13 Plus'),('SP020','2023-05-01','2026-05-01','Trung Quốc','Trung Quốc','Hướng dẫn sử dụng Realme C61'),('SP021','2023-05-01','2026-05-01','Trung Quốc','Trung Quốc','Hướng dẫn sử dụng Realme Note 60'),('SP022','2023-05-01','2026-05-01','Hàn Quốc','Hàn Quốc','Hướng dẫn sử dụng Samsung Galaxy M55'),('SP023','2023-05-01','2026-05-01','Hàn Quốc','Hàn Quốc','Hướng dẫn sử dụng Samsung Galaxy Z Flip6'),('SP024','2023-05-01','2026-05-01','Hàn Quốc','Hàn Quốc','Hướng dẫn sử dụng Samsung Galaxy Z Fold6 5G'),('SP025','2023-05-01','2026-05-01','Trung Quốc','Trung Quốc','Hướng dẫn sử dụng Vivo Y03T'),('SP026','2023-05-01','2026-05-01','Trung Quốc','Trung Quốc','Hướng dẫn sử dụng Vivo Y100'),('SP027','2023-05-01','2026-05-01','Trung Quốc','Trung Quốc','Hướng dẫn sử dụng Oppo N3 Flip');
/*!40000 ALTER TABLE `chitietsp` ENABLE KEYS */;
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
