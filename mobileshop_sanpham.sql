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
-- Table structure for table `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sanpham` (
  `MaSP` char(20) NOT NULL,
  `TenSP` varchar(100) DEFAULT NULL,
  `MaCM` char(20) DEFAULT NULL,
  `Gia` bigint DEFAULT NULL,
  `HinhAnh` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`MaSP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanpham`
--

LOCK TABLES `sanpham` WRITE;
/*!40000 ALTER TABLE `sanpham` DISABLE KEYS */;
INSERT INTO `sanpham` VALUES ('SP001','iPhone 12','CM01',11590000,'iphone-12.jpg'),('SP002','iPhone 13','CM01',13990000,'iphone-13.jpg'),('SP005','iPhone 15','CM01',19990000,'iphone-15.jpg'),('SP006','iPhone 15 Pro Max','CM01',29590000,'iphone-15-pro-max.jpg'),('SP007','iPhone 16 Pro','CM01',28590000,'iphone-16-pro.jpg'),('SP008','iPhone 16 Pro Max','CM01',34590000,'iphone-16-pro-max.jpg'),('SP009','Nokia 105','CM02',610000,'nokia-105.jpg'),('SP010','Nokia 110 4G','CM02',750000,'nokia-110-4g.jpg'),('SP011','Nokia 220 4G','CM02',990000,'nokia-220-4g.jpg'),('SP012','Nokia 3210','CM02',800000,'nokia-3210.jpg'),('SP013','Nokia HMD 105 4G','CM02',650000,'nokia-hmd-105-4g.jpg'),('SP014','Oppo A3','CM03',4990000,'oppo-a3.jpg'),('SP015','Oppo A18','CM03',3290000,'oppo-a18.jpg'),('SP016','Oppo A79 5G','CM03',7190000,'oppo-a79-5g.jpg'),('SP017','Oppo Find N3','CM03',41990000,'oppo-find-n3jpg.jpg'),('SP018','Oppo Find X8 5G','CM03',25000000,'oppo-find-x8-5G.jpg'),('SP019','Realme 13 Plus','CM04',8890000,'realme-13-plus.jpg'),('SP020','Realme C61','CM04',3590000,'realme-c61.jpg'),('SP021','Realme Note 60','CM04',3090000,'realme-note-60.jpg'),('SP022','Samsung Galaxy M55','CM05',8890000,'samsung-galaxy-m55.jpg'),('SP023','Samsung Galaxy Z Flip6','CM05',22990000,'samsung-galaxy-z-flip6.jpg'),('SP024','Samsung Galaxy Z Fold6 5G','CM05',39990000,'samsung-galaxy-z-fold6-5G.jpg'),('SP025','Vivo Y03T','CM06',3290000,'vivo-y03t.jpg'),('SP026','Vivo Y100','CM06',6490000,'vivo-y100.jpg'),('SP027','Oppo N3 Flip','CM03',17490000,'oppo-n3-flip.jpg'),('SP028','Oppo A58','CM03',5190000,'oppo-a58.jpg'),('SP029','Oppo Reno 12','CM03',12290000,'oppo-reno12.jpg'),('SP030','Oppo A38','CM03',4490000,'oppo-a38.jpg'),('SP031','Realme C53','CM04',4790000,'realme-c53.jpg'),('SP032','Realme C67','CM04',5290000,'realme-c67.jpg');
/*!40000 ALTER TABLE `sanpham` ENABLE KEYS */;
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
