-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: empresa_viaje
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
-- Table structure for table `buses_registrados`
--

DROP TABLE IF EXISTS `buses_registrados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buses_registrados` (
  `placa` varchar(45) NOT NULL,
  `modelo` varchar(45) NOT NULL,
  `capacidad` int NOT NULL,
  `fechamod` date DEFAULT NULL,
  `detalle` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`placa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buses_registrados`
--

LOCK TABLES `buses_registrados` WRITE;
/*!40000 ALTER TABLE `buses_registrados` DISABLE KEYS */;
INSERT INTO `buses_registrados` VALUES ('AMW-565','MODASA2',6,'2024-11-14','PRUEBA'),('BLM-456','MODASA',4,NULL,'EL CARRO ESTA DESTRUIDO'),('PKA-158','PLATANITO',60,NULL,NULL);
/*!40000 ALTER TABLE `buses_registrados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `choferes_registrados`
--

DROP TABLE IF EXISTS `choferes_registrados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `choferes_registrados` (
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `num_licencia` varchar(45) DEFAULT NULL,
  `estado_licencia` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `choferes_registrados`
--

LOCK TABLES `choferes_registrados` WRITE;
/*!40000 ALTER TABLE `choferes_registrados` DISABLE KEYS */;
INSERT INTO `choferes_registrados` VALUES ('Jesus Andre','Leon Rodriguez','UJA21145','Inactivo','908556397'),('Miguel','Mori','QDA5421','Activo','947193491');
/*!40000 ALTER TABLE `choferes_registrados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes_registrados`
--

DROP TABLE IF EXISTS `clientes_registrados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes_registrados` (
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `DNI` varchar(45) DEFAULT NULL,
  `sexo` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes_registrados`
--

LOCK TABLES `clientes_registrados` WRITE;
/*!40000 ALTER TABLE `clientes_registrados` DISABLE KEYS */;
INSERT INTO `clientes_registrados` VALUES ('Jesus','Leon Rodriguez','76588861','MASCULINO','908556397'),('Leandro','Romero','76588861','MASCULINO','946445442');
/*!40000 ALTER TABLE `clientes_registrados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rutas_de_viaje`
--

DROP TABLE IF EXISTS `rutas_de_viaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rutas_de_viaje` (
  `InicioRuta` varchar(45) NOT NULL,
  `DestinoRuta` varchar(45) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Hora` time DEFAULT NULL,
  `BusAsignado` varchar(90) DEFAULT NULL,
  `ChoferAsignado` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`InicioRuta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rutas_de_viaje`
--

LOCK TABLES `rutas_de_viaje` WRITE;
/*!40000 ALTER TABLE `rutas_de_viaje` DISABLE KEYS */;
INSERT INTO `rutas_de_viaje` VALUES ('Ica','Paracas','2024-11-15','05:00:00','Placa :PKA-158\nModelo :PLATANITO','Chofer :Miguel Mori\nNum. Licencia :QDA5421\nEstado :Activo'),('Lima','Ica','2024-11-30','01:00:00','Placa :AMW-565\nModelo :MODASA2','Chofer :Jesus Andre Leon Rodriguez\nNum. Licencia :UJA21145\nEstado :Inactivo');
/*!40000 ALTER TABLE `rutas_de_viaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_login`
--

DROP TABLE IF EXISTS `usuarios_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios_login` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_login`
--

LOCK TABLES `usuarios_login` WRITE;
/*!40000 ALTER TABLE `usuarios_login` DISABLE KEYS */;
INSERT INTO `usuarios_login` VALUES ('Grupo1','Grupo1'),('Miguel','Tontin');
/*!40000 ALTER TABLE `usuarios_login` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-26 10:23:41
