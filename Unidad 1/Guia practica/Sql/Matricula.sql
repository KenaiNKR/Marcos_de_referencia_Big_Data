CREATE DATABASE  IF NOT EXISTS `tec_azuay` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `tec_azuay`;
-- MariaDB dump 10.17  Distrib 10.4.14-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: tec_azuay
-- ------------------------------------------------------
-- Server version	10.4.14-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area` (
  `id_area` INT(11) NOT NULL AUTO_INCREMENT,
  `descripcion_area` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`id_area`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campus`
--

DROP TABLE IF EXISTS `campus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campus` (
  `id_campus` INT(11) NOT NULL AUTO_INCREMENT,
  `descripcion_campus` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`id_campus`)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campus`
--

LOCK TABLES `campus` WRITE;
/*!40000 ALTER TABLE `campus` DISABLE KEYS */;
INSERT INTO `campus` VALUES (1,'Sede- Principal');
/*!40000 ALTER TABLE `campus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canton`
--

DROP TABLE IF EXISTS `canton`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `canton` (
  `id_canton` INT(11) NOT NULL AUTO_INCREMENT,
  `descripcion_canton` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`id_canton`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canton`
--

LOCK TABLES `canton` WRITE;
/*!40000 ALTER TABLE `canton` DISABLE KEYS */;
/*!40000 ALTER TABLE `canton` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrera`
--

DROP TABLE IF EXISTS `carrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrera` (
  `id_carrera` INT(11) NOT NULL AUTO_INCREMENT,
  `descripcion_carrera` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`id_carrera`)
) ENGINE=INNODB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrera`
--

LOCK TABLES `carrera` WRITE;
/*!40000 ALTER TABLE `carrera` DISABLE KEYS */;
INSERT INTO `carrera` VALUES (1,'Dersarrollo de Software'),(2,'Dersarrollo de Software'),(3,'Dersarrollo de Software'),(4,'Dersarrollo de Software'),(5,'Dersarrollo de Software');
/*!40000 ALTER TABLE `carrera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `duracion`
--

DROP TABLE IF EXISTS `duracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `duracion` (
  `id_duracion` INT(11) NOT NULL AUTO_INCREMENT,
  `descripcion_duracion` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`id_duracion`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `duracion`
--

LOCK TABLES `duracion` WRITE;
/*!40000 ALTER TABLE `duracion` DISABLE KEYS */;
/*!40000 ALTER TABLE `duracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institucion`
--

DROP TABLE IF EXISTS `institucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institucion` (
  `id_institucion` INT(11) NOT NULL AUTO_INCREMENT,
  `descripcion_institucion` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`id_institucion`)
) ENGINE=INNODB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institucion`
--

LOCK TABLES `institucion` WRITE;
/*!40000 ALTER TABLE `institucion` DISABLE KEYS */;
INSERT INTO `institucion` VALUES (3,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY'),(4,'UNIVERSIDAD POLITÉCNICA SALESIANA');
/*!40000 ALTER TABLE `institucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matricula`
--

DROP TABLE IF EXISTS `matricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matricula` (
  `id_matricula` INT(11) NOT NULL AUTO_INCREMENT,
  `num_estudiantes` INT(11) NOT NULL,
  `id_institucion` INT(11) NOT NULL,
  `id_periodo` INT(11) NOT NULL,
  `id_tipo_institucion` INT(11) NOT NULL,
  `id_carrera` INT(11) NOT NULL,
  `id_tipo_financiamiento` INT(11) NOT NULL,
  `id_modalidad` INT(11) NOT NULL,
  `id_campus` INT(11) NOT NULL,
  `id_duracion` INT(11) NOT NULL,
  `id_nivel_formacion` INT(11) NOT NULL,
  `id_area` INT(11) NOT NULL,
  `id_provincia` INT(11) NOT NULL,
  `id_canton` INT(11) NOT NULL,
  PRIMARY KEY (`id_matricula`),
  KEY `id_institucion` (`id_institucion`),
  KEY `id_periodo` (`id_periodo`),
  KEY `id_tipo_institucion` (`id_tipo_institucion`),
  KEY `id_carrera` (`id_carrera`),
  KEY `id_tipo_financiamiento` (`id_tipo_financiamiento`),
  KEY `id_modalidad` (`id_modalidad`),
  KEY `id_campus` (`id_campus`),
  KEY `id_duracion` (`id_duracion`),
  KEY `id_nivel_formacion` (`id_nivel_formacion`),
  KEY `id_area` (`id_area`),
  KEY `id_provincia` (`id_provincia`),
  KEY `id_canton` (`id_canton`),
  CONSTRAINT `matricula_ibfk_1` FOREIGN KEY (`id_institucion`) REFERENCES `institucion` (`id_institucion`),
  CONSTRAINT `matricula_ibfk_10` FOREIGN KEY (`id_area`) REFERENCES `area` (`id_area`),
  CONSTRAINT `matricula_ibfk_11` FOREIGN KEY (`id_provincia`) REFERENCES `provincia` (`id_provincia`),
  CONSTRAINT `matricula_ibfk_12` FOREIGN KEY (`id_canton`) REFERENCES `canton` (`id_canton`),
  CONSTRAINT `matricula_ibfk_2` FOREIGN KEY (`id_periodo`) REFERENCES `periodo` (`id_periodo`),
  CONSTRAINT `matricula_ibfk_3` FOREIGN KEY (`id_tipo_institucion`) REFERENCES `tipo_institucion` (`id_tipo_institucion`),
  CONSTRAINT `matricula_ibfk_4` FOREIGN KEY (`id_carrera`) REFERENCES `carrera` (`id_carrera`),
  CONSTRAINT `matricula_ibfk_5` FOREIGN KEY (`id_tipo_financiamiento`) REFERENCES `tipo_financiamiento` (`id_tipo_financiamiento`),
  CONSTRAINT `matricula_ibfk_6` FOREIGN KEY (`id_modalidad`) REFERENCES `modalidad` (`id_modalidad`),
  CONSTRAINT `matricula_ibfk_7` FOREIGN KEY (`id_campus`) REFERENCES `campus` (`id_campus`),
  CONSTRAINT `matricula_ibfk_8` FOREIGN KEY (`id_duracion`) REFERENCES `duracion` (`id_duracion`),
  CONSTRAINT `matricula_ibfk_9` FOREIGN KEY (`id_nivel_formacion`) REFERENCES `nivel_formacion` (`id_nivel_formacion`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matricula`
--

LOCK TABLES `matricula` WRITE;
/*!40000 ALTER TABLE `matricula` DISABLE KEYS */;
/*!40000 ALTER TABLE `matricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matricula_stg`
--

DROP TABLE IF EXISTS `matricula_stg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matricula_stg` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `institucion` VARCHAR(100) DEFAULT NULL,
  `periodo` VARCHAR(100) DEFAULT NULL,
  `tipo_institucion` VARCHAR(100) DEFAULT NULL,
  `carrera` VARCHAR(100) DEFAULT NULL,
  `num_estudiantes` INT(11) DEFAULT NULL,
  `tipo_financiamiento` VARCHAR(100) DEFAULT NULL,
  `modalidad` VARCHAR(100) DEFAULT NULL,
  `campus` VARCHAR(100) DEFAULT NULL,
  `duracion` VARCHAR(100) DEFAULT NULL,
  `nivel_formacion` VARCHAR(100) DEFAULT NULL,
  `area` VARCHAR(100) DEFAULT NULL,
  `provincia` VARCHAR(100) DEFAULT NULL,
  `canton` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matricula_stg`
--

LOCK TABLES `matricula_stg` WRITE;
/*!40000 ALTER TABLE `matricula_stg` DISABLE KEYS */;
INSERT INTO `matricula_stg` VALUES (1,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2021-2022 C1','Institutos y/o Conservatorios Superiores','ENTRENAMIENTO DEPORTIVO ',90,'Pública','Presencial','Sede- Principal','2 años y medio','Tercer Nivel Tecnológico Superior','SERVICIOS','Azuay','CUENCA'),(2,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2021-2022 C1','Institutos y/o Conservatorios Superiores','SEGURIDAD CIUDADANA Y ORDEN PÚBLICO',58,'Pública','Dual','Sede- Principal','2 años','Tercer Nivel Técnico Superior','SERVICIOS','Azuay','CUENCA'),(3,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2021-2022 C1','Institutos y/o Conservatorios Superiores','SEGURIDAD PENITENCIARIA',18,'Pública','Dual','Sede- Principal','2 años','Tercer Nivel Técnico Superior','SERVICIOS','Azuay','CUENCA'),(4,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2021-2022 C1','Institutos y/o Conservatorios Superiores','DESARROLLO INFANTIL INTEGRAL',120,'Pública','Dual','Sede- Principal','2 años y medio','Tercer Nivel Tecnológico Superior','SALUD Y BIENESTAR','Azuay','CUENCA'),(5,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2021-2022 C1','Institutos y/o Conservatorios Superiores','ASESORIA FINANCIERA',30,'Pública','Dual','Sede- Principal','2 años y medio','Tercer Nivel Tecnológico Superior','ADMINISTRACIÓN DE EMPRESAS Y DERECHO','Azuay','CUENCA'),(6,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2021-2022 C1','Institutos y/o Conservatorios Superiores','CONTROL DE INCENDIOS Y OPERACIONES DE RESCATE',61,'Pública','Dual','Sede- Principal','2 años','Tercer Nivel Tecnológico Superior','SERVICIOS','Azuay','CUENCA'),(7,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2021-2022 C1','Institutos y/o Conservatorios Superiores','DESARROLLO DE SOFTWARE',329,'Pública','Presencial','Sede- Principal','2 años y medio','Tercer Nivel Tecnológico Superior','TECNOLOGÍAS DE LA INFORMACIÓN Y LA COMUNICACIÓN','Azuay','CUENCA'),(8,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2021-2022 C1','Institutos y/o Conservatorios Superiores','ELECTRICIDAD',27,'Pública','Dual','Sede- Principal','2 años y medio','Tercer Nivel Tecnológico Superior','INGENIERIA, INDUSTRIA Y CONSTRUCCION','Azuay','CUENCA'),(9,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2021-2022 C1','Institutos y/o Conservatorios Superiores','MECÁNICA INDUSTRIAL',45,'Pública','Dual','Sede- Principal','2 años y medio','Tercer Nivel Tecnológico Superior','INGENIERIA, INDUSTRIA Y CONSTRUCCION','Azuay','CUENCA'),(10,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2021-2022 C1','Institutos y/o Conservatorios Superiores','PROCESAMIENTO INDUSTRIAL DE LA MADERA',23,'Pública','Dual','Sede- Principal','2 años y medio','Tercer Nivel Tecnológico Superior Universitario','INGENIERIA, INDUSTRIA Y CONSTRUCCION','Azuay','CUENCA'),(11,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2021-2022 C2','Institutos y/o Conservatorios Superiores','PRODUCCIÓN Y REALIZACIÓN AUDIOVISUAL',36,'Pública','Presencial','Sede- Principal','2 años y medio','Tercer Nivel Tecnológico Superior','TECNOLOGÍAS DE LA INFORMACIÓN Y LA COMUNICACIÓN','Azuay','CUENCA'),(12,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2021-2022 C2','Institutos y/o Conservatorios Superiores','SEGURIDAD CIUDADANA Y ORDEN PÚBLICO',57,'Pública','Dual','Sede- Principal','2 años','Tercer Nivel Técnico Superior','SERVICIOS','Azuay','CUENCA'),(13,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2021-2022 C2','Institutos y/o Conservatorios Superiores','SEGURIDAD PENITENCIARIA',25,'Pública','Dual','Sede- Principal','2 años','Tercer Nivel Técnico Superior','SERVICIOS','Azuay','CUENCA'),(14,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2021-2022 C2','Institutos y/o Conservatorios Superiores','DESARROLLO INFANTIL INTEGRAL',42,'Pública','Dual','Sede- Principal','2 años y medio','Tercer Nivel Tecnológico Superior','SALUD Y BIENESTAR','Azuay','CUENCA'),(15,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2021-2022 C2','Institutos y/o Conservatorios Superiores','ASESORIA FINANCIERA',10,'Pública','Dual','Sede- Principal','2 años y medio','Tercer Nivel Tecnológico Superior','ADMINISTRACIÓN DE EMPRESAS Y DERECHO','Azuay','CUENCA'),(16,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2021-2022 C2','Institutos y/o Conservatorios Superiores','BIG DATA',33,'Pública','Presencial','Sede- Principal','2 años','Tercer Nivel Tecnológico Superior','TECNOLOGÍAS DE LA INFORMACIÓN Y LA COMUNICACIÓN','Azuay','CUENCA'),(17,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2021-2022 C2','Institutos y/o Conservatorios Superiores','CIBERSEGURIDAD',37,'Pública','Presencial','Sede- Principal','2 años','Tercer Nivel Tecnológico Superior','TECNOLOGÍAS DE LA INFORMACIÓN Y LA COMUNICACIÓN','Azuay','CUENCA'),(18,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2021-2022 C2','Institutos y/o Conservatorios Superiores','CONTROL DE INCENDIOS Y OPERACIONES DE RESCATE',53,'Pública','Dual','Sede- Principal','2 años','Tercer Nivel Tecnológico Superior','SERVICIOS','Azuay','CUENCA'),(19,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2021-2022 C2','Institutos y/o Conservatorios Superiores','DESARROLLO DE SOFTWARE',350,'Pública','Presencial','Sede- Principal','2 años y medio','Tercer Nivel Tecnológico Superior','TECNOLOGÍAS DE LA INFORMACIÓN Y LA COMUNICACIÓN','Azuay','CUENCA'),(20,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2021-2022 C2','Institutos y/o Conservatorios Superiores','DESARROLLO INFANTIL INTEGRAL',106,'Pública','Dual','Sede- Principal','2 años','Tercer Nivel Tecnológico Superior','SALUD Y BIENESTAR','Azuay','CUENCA'),(21,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2021-2022 C2','Institutos y/o Conservatorios Superiores','ELECTRICIDAD',27,'Pública','Dual','Sede- Principal','2 años y medio','Tercer Nivel Tecnológico Superior','INGENIERIA, INDUSTRIA Y CONSTRUCCION','Azuay','CUENCA'),(22,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2021-2022 C2','Institutos y/o Conservatorios Superiores','GESTIÓN DEL PATRIMONIO HISTORICO CULTURAL',29,'Pública','Presencial','Sede- Principal','2 años y medio','Tercer Nivel Tecnológico Superior','ADMINISTRACIÓN DE EMPRESAS Y DERECHO','Azuay','CUENCA'),(23,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2021-2022 C2','Institutos y/o Conservatorios Superiores','PROCESAMIENTO INDUSTRIAL DE LA MADERA',11,'Pública','Dual','Sede- Principal','2 años y medio','Tercer Nivel Tecnológico Superior Universitario','INGENIERIA, INDUSTRIA Y CONSTRUCCION','Azuay','CUENCA'),(24,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2022-2023 C1','Institutos y/o Conservatorios Superiores','ADMINISTRACIÓN DE INFRAESTRUCTURA Y PLATAFORMAS TECNOLÓGICAS',21,'Pública','Híbrida','Sede- Principal','2 años','Tercer Nivel Tecnológico Superior','TECNOLOGÍAS DE LA INFORMACIÓN Y LA COMUNICACIÓN','Azuay','CUENCA'),(25,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2022-2023 C1','Institutos y/o Conservatorios Superiores','ENTRENAMIENTO DEPORTIVO',99,'Pública','Presencial','Sede- Principal','2 años y medio','Tercer Nivel Tecnológico Superior','SERVICIOS','Azuay','CUENCA'),(26,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2022-2023 C1','Institutos y/o Conservatorios Superiores','PRODUCCIÓN Y REALIZACIÓN AUDIOVISUAL',32,'Pública','Presencial','Sede- Principal','2 años y medio','Tercer Nivel Tecnológico Superior','TECNOLOGÍAS DE LA INFORMACIÓN Y LA COMUNICACIÓN','Azuay','CUENCA'),(27,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2022-2023 C1','Institutos y/o Conservatorios Superiores','SEGURIDAD Y PREVENCIÓN DE RIESGOS LABORALES',15,'Pública','Presencial','Sede- Principal','2 años y medio','Tercer Nivel Tecnológico Superior','SERVICIOS','Azuay','CUENCA'),(28,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2022-2023 C1','Institutos y/o Conservatorios Superiores','SEGURIDAD PENITENCIARIA',23,'Pública','Dual','Sede- Principal','2 años','Tercer Nivel Técnico Superior','SERVICIOS','Azuay','CUENCA'),(29,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2022-2023 C1','Institutos y/o Conservatorios Superiores','DESARROLLO INFANTIL INTEGRAL',81,'Pública','Dual','Sede- Principal','2 años y medio','Tercer Nivel Tecnológico Superior','SALUD Y BIENESTAR','Azuay','CUENCA'),(30,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2022-2023 C1','Institutos y/o Conservatorios Superiores','ASESORIA FINANCIERA',25,'Pública','Dual','Sede- Principal','2 años y medio','Tercer Nivel Tecnológico Superior','ADMINISTRACIÓN DE EMPRESAS Y DERECHO','Azuay','CUENCA'),(31,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2022-2023 C1','Institutos y/o Conservatorios Superiores','BIG DATA',37,'Pública','Presencial','Sede- Principal','2 años','Tercer Nivel Tecnológico Superior','TECNOLOGÍAS DE LA INFORMACIÓN Y LA COMUNICACIÓN','Azuay','CUENCA'),(32,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2022-2023 C1','Institutos y/o Conservatorios Superiores','CIBERSEGURIDAD',48,'Pública','Presencial','Sede- Principal','2 años','Tercer Nivel Tecnológico Superior','TECNOLOGÍAS DE LA INFORMACIÓN Y LA COMUNICACIÓN','Azuay','CUENCA'),(33,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2022-2023 C1','Institutos y/o Conservatorios Superiores','CONTROL DE INCENDIOS Y OPERACIONES DE RESCATE',30,'Pública','Dual','Sede- Principal','2 años','Tercer Nivel Tecnológico Superior','SERVICIOS','Azuay','CUENCA'),(34,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2022-2023 C1','Institutos y/o Conservatorios Superiores','DESARROLLO DE SOFTWARE',244,'Pública','Presencial','Sede- Principal','2 años y medio','Tercer Nivel Tecnológico Superior','TECNOLOGÍAS DE LA INFORMACIÓN Y LA COMUNICACIÓN','Azuay','CUENCA'),(35,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2022-2023 C1','Institutos y/o Conservatorios Superiores','ELECTRICIDAD',11,'Pública','Dual','Sede- Principal','2 años y medio','Tercer Nivel Tecnológico Superior','INGENIERIA, INDUSTRIA Y CONSTRUCCION','Azuay','CUENCA'),(36,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2022-2023 C1','Institutos y/o Conservatorios Superiores','GESTIÓN DEL PATRIMONIO HISTORICO CULTURAL',41,'Pública','Presencial','Sede- Principal','2 años y medio','Tercer Nivel Tecnológico Superior','ADMINISTRACIÓN DE EMPRESAS Y DERECHO','Azuay','CUENCA'),(37,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2022-2023 C1','Institutos y/o Conservatorios Superiores','MECÁNICA INDUSTRIAL',9,'Pública','Dual','Sede- Principal','2 años y medio','Tercer Nivel Tecnológico Superior','INGENIERIA, INDUSTRIA Y CONSTRUCCION','Azuay','CUENCA'),(38,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2022-2023 C1','Institutos y/o Conservatorios Superiores','MECATRÓNICA',12,'Pública','Dual','Sede- Principal','2 años y medio','Tercer Nivel Tecnológico Superior','INGENIERIA, INDUSTRIA Y CONSTRUCCION','Azuay','CUENCA'),(39,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2022-2023 C1','Institutos y/o Conservatorios Superiores','METALMECÁNICA',15,'Pública','Dual','Sede- Principal','2 años y medio','Tercer Nivel Tecnológico Superior','INGENIERIA, INDUSTRIA Y CONSTRUCCION','Azuay','CUENCA'),(40,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2022-2023 C2','Institutos y/o Conservatorios Superiores','PROCESAMIENTO INDUSTRIAL DE LA MADERA',18,'Pública','Dual','Sede- Principal','1 año y medio','Tercer Nivel Tecnológico Superior Universitario','INGENIERIA, INDUSTRIA Y CONSTRUCCION','Azuay','Cuenca'),(41,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2022-2023 C1','Institutos y/o Conservatorios Superiores','PROCESAMIENTO INDUSTRIAL DE LA MADERA',11,'Pública','Dual','Sede- Principal','1 año y medio','Tercer Nivel Tecnológico Superior Universitario','INGENIERIA, INDUSTRIA Y CONSTRUCCION','Azuay','Cuenca'),(42,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2022-2023 C1','Institutos y/o Conservatorios Superiores','MANTENIMIENTO ELÉCTRICO Y CONTROL INDUSTRIAL',13,'Pública','Dual','Sede- Principal','1 año y medio','Tercer Nivel Tecnológico Superior Universitario','INGENIERIA, INDUSTRIA Y CONSTRUCCION','Azuay','Cuenca'),(43,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2022-2023 C1','Institutos y/o Conservatorios Superiores','TRIBUTACIÓN',20,'Pública','Presencial','Sede- Principal','1 año y medio','Tercer Nivel Tecnológico Superior Universitario','ADMINISTRACIÓN DE EMPRESAS Y DERECHO','Azuay','Cuenca'),(44,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2022-2023 C2','Institutos y/o Conservatorios Superiores','ADMINISTRACIÓN DE INFRAESTRUCTURA Y PLATAFORMAS TECNOLÓGICAS',64,'Pública','Híbrida','Sede- Principal','1 año y medio','Tercer Nivel Técnico Superior','TECNOLOGÍAS DE LA INFORMACIÓN Y LA COMUNICACIÓN','Azuay','Cuenca'),(45,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2022-2023 C2','Institutos y/o Conservatorios Superiores','ENTRENAMIENTO DEPORTIVO',94,'Pública','Presencial','Sede- Principal','1 año y medio','Tercer Nivel Técnico Superior','SERVICIOS','Azuay','Cuenca'),(46,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2022-2023 C2','Institutos y/o Conservatorios Superiores','PRODUCCIÓN Y REALIZACIÓN AUDIOVISUAL',54,'Pública','Presencial','Sede- Principal','1 año y medio','Tercer Nivel Técnico Superior','TECNOLOGÍAS DE LA INFORMACIÓN Y LA COMUNICACIÓN','Azuay','Cuenca'),(47,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2022-2023 C2','Institutos y/o Conservatorios Superiores','SEGURIDAD Y PREVENCIÓN DE RIESGOS LABORALES',32,'Pública','Presencial','Sede- Principal','1 año y medio','Tercer Nivel Técnico Superior','SERVICIOS','Azuay','Cuenca'),(48,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2022-2023 C2','Institutos y/o Conservatorios Superiores','SEGURIDAD PENITENCIARIA',58,'Pública','Dual','Sede- Principal','1 año y medio','Tercer Nivel Técnico Superior','SERVICIOS','Azuay','Cuenca'),(49,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2022-2023 C2','Institutos y/o Conservatorios Superiores','DESARROLLO INFANTIL INTEGRAL',68,'Pública','Dual','Sede- Principal','1 año y medio','Tercer Nivel Técnico Superior','SALUD Y BIENESTAR','Azuay','Cuenca'),(50,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2022-2023 C2','Institutos y/o Conservatorios Superiores','ASESORIA FINANCIERA',24,'Pública','Dual','Sede- Principal','Más de 2 años','Tercer Nivel Técnico Superior','ADMINISTRACIÓN DE EMPRESAS Y DERECHO','Azuay','Cuenca'),(51,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2022-2023 C2','Institutos y/o Conservatorios Superiores','BIG DATA',51,'Pública','Presencial','Sede- Principal','2 años','Tercer Nivel Técnico Superior','TECNOLOGÍAS DE LA INFORMACIÓN Y LA COMUNICACIÓN','Azuay','Cuenca'),(52,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2022-2023 C2','Institutos y/o Conservatorios Superiores','CIBERSEGURIDAD',64,'Pública','Presencial','Sede- Principal','2 años','Tercer Nivel Técnico Superior','TECNOLOGÍAS DE LA INFORMACIÓN Y LA COMUNICACIÓN','Azuay','Cuenca'),(53,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2022-2023 C2','Institutos y/o Conservatorios Superiores','CONTROL DE INCENDIOS Y OPERACIONES DE RESCATE',10,'Pública','Dual','Sede- Principal','2 años','Tercer Nivel Técnico Superior','SERVICIOS','Azuay','Cuenca'),(54,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2022-2023 C2','Institutos y/o Conservatorios Superiores','DESARROLLO DE SOFTWARE',226,'Pública','Presencial','Sede- Principal','2 años y medio','Tercer Nivel Técnico Superior','ADMINISTRACIÓN DE EMPRESAS Y DERECHO','Azuay','Cuenca'),(55,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2021-2022 C2','Institutos y/o Conservatorios Superiores','ENTRENAMIENTO DEPORTIVO',105,'Pública','Presencial','Sede- Principal','2 años y medio','Tercer Nivel Tecnológico Superior','INGENIERIA, INDUSTRIA Y CONSTRUCCION','Azuay','Cuenca'),(56,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2022-2023 C2','Institutos y/o Conservatorios Superiores','MANTENIMIENTO ELÉCTRICO Y CONTROL INDUSTRIAL',51,'Pública','Dual','Sede- Principal','2 años','Tercer Nivel Técnico Superior','INGENIERIA, INDUSTRIA Y CONSTRUCCION','Azuay','CUENCA'),(57,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2022-2023 C2','Institutos y/o Conservatorios Superiores','GESTIÓN DEL PATRIMONIO HISTORICO CULTURAL',53,'Pública','Dual','Sede- Principal','2 años','Tercer Nivel Técnico Superior','INGENIERIA, INDUSTRIA Y CONSTRUCCION','Azuay','CUENCA'),(58,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2022-2023 C2','Institutos y/o Conservatorios Superiores','MECÁNICA INDUSTRIAL',9,'Pública','Dual','Sede- Principal','2 años','Tercer Nivel Técnico Superior','INGENIERIA, INDUSTRIA Y CONSTRUCCION','Azuay','CUENCA'),(59,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2022-2023 C2','Institutos y/o Conservatorios Superiores','METALMECÁNICA',30,'Pública','Dual','Sede- Principal','2 años','Tercer Nivel Técnico Superior','INGENIERIA, INDUSTRIA Y CONSTRUCCION','Azuay','CUENCA'),(60,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2022-2023 C2','Institutos y/o Conservatorios Superiores','MECATRÓNICA',51,'Pública','Dual','Sede- Principal','2 años','Tercer Nivel Técnico Superior','INGENIERIA, INDUSTRIA Y CONSTRUCCION','Azuay','CUENCA'),(61,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2022-2023 C2','Institutos y/o Conservatorios Superiores','TRIBUTACIÓN',43,'Pública','Presencial','Sede- Principal','2 años y medio','Tercer Nivel Técnico Superior','ADMINISTRACIÓN DE EMPRESAS Y DERECHO','Azuay','CUENCA'),(62,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2023-2024 C1','Institutos y/o Conservatorios Superiores','ADMINISTRACIÓN DE INFRAESTRUCTURA Y PLATAFORMAS TECNOLÓGICAS',51,'Pública','Híbrida','Sede- Principal','2 años','Tercer Nivel Técnico Superior','TECNOLOGÍAS DE LA INFORMACIÓN Y LA COMUNICACIÓN','Azuay','CUENCA'),(63,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2023-2024 C1','Institutos y/o Conservatorios Superiores','ENTRENAMIENTO DEPORTIVO ',56,'Pública','Presencial','Sede- Principal','2 años','Tercer Nivel Técnico Superior','SERVICIOS','Azuay','CUENCA'),(64,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2023-2024 C1','Institutos y/o Conservatorios Superiores','PRODUCCIÓN Y REALIZACIÓN AUDIOVISUAL',49,'Pública','Presencial','Sede- Principal','2 años y medio','Tercer Nivel Tecnológico Superior','TECNOLOGÍAS DE LA INFORMACIÓN Y LA COMUNICACIÓN','Azuay','Cuenca'),(65,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2023-2024 C1','Institutos y/o Conservatorios Superiores','SEGURIDAD Y PREVENCIÓN DE RIESGOS LABORALES',26,'Pública','Presencial','Sede- Principal','2 años y medio','Tercer Nivel Tecnológico Superior','SERVICIOS','Azuay','Cuenca'),(66,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2023-2024 C1','Institutos y/o Conservatorios Superiores','SEGURIDAD PENITENCIARIA',40,'Pública','Dual','Sede- Principal','1 año y medio','Tercer Nivel Técnico Superior','SERVICIOS','Azuay','Cuenca'),(67,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2023-2024 C1','Institutos y/o Conservatorios Superiores','ASESORIA FINANCIERA',12,'Pública','Dual','Sede- Principal','2 años y medio','Tercer Nivel Tecnológico Superior','ADMINISTRACIÓN DE EMPRESAS Y DERECHO','Azuay','Cuenca'),(68,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2023-2024 C1','Institutos y/o Conservatorios Superiores','BIG DATA',41,'Pública','Presencial','Sede- Principal','2 años','Tercer Nivel Tecnológico Superior','TECNOLOGÍAS DE LA INFORMACIÓN Y LA COMUNICACIÓN','Azuay','Cuenca'),(69,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2023-2024 C1','Institutos y/o Conservatorios Superiores','CIBERSEGURIDAD',59,'Pública','Presencial','Sede- Principal','1 año y medio','Tercer Nivel Técnico Superior','TECNOLOGÍAS DE LA INFORMACIÓN Y LA COMUNICACIÓN','Azuay','CUENCA'),(70,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2023-2024 C1','Institutos y/o Conservatorios Superiores','DESARROLLO DE SOFTWARE',137,'Pública','Presencial','Sede- Principal','1 año y medio','Tercer Nivel Técnico Superior','TECNOLOGÍAS DE LA INFORMACIÓN Y LA COMUNICACIÓN','Azuay','CUENCA'),(71,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2023-2024 C1','Institutos y/o Conservatorios Superiores','DESARROLLO INFANTIL INTEGRAL',9,'Pública','Dual','Sede- Principal','1 año y medio','Tercer Nivel Técnico Superior','SALUD Y BIENESTAR','Azuay','CUENCA'),(72,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2023-2024 C1','Institutos y/o Conservatorios Superiores','GESTIÓN DEL PATRIMONIO HISTORICO CULTURAL',42,'Pública','Presencial','Sede- Principal','1 año y medio','Tercer Nivel Técnico Superior','TECNOLOGÍAS DE LA INFORMACIÓN Y LA COMUNICACIÓN','Azuay','CUENCA'),(73,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2023-2024 C1','Institutos y/o Conservatorios Superiores','MECATRÓNICA',34,'Pública','Dual','Sede- Principal','1 año y medio','Tercer Nivel Técnico Superior','INGENIERIA, INDUSTRIA Y CONSTRUCCION','Azuay','CUENCA'),(74,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2023-2024 C1','Institutos y/o Conservatorios Superiores','METALMECÁNICA',16,'Pública','Dual','Sede- Principal','1 año y medio','Tercer Nivel Técnico Superior','INGENIERIA, INDUSTRIA Y CONSTRUCCION','Azuay','CUENCA'),(75,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2023-2024 C1','Institutos y/o Conservatorios Superiores','MANTENIMIENTO ELÉCTRICO Y CONTROL INDUSTRIAL',26,'Pública','Dual','Sede- Principal','1 año y medio','Tercer Nivel Técnico Superior','INGENIERIA, INDUSTRIA Y CONSTRUCCION','Azuay','CUENCA'),(76,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2023-2024 C1','Institutos y/o Conservatorios Superiores','TRIBUTACIÓN ',40,'Pública','Presencial','Sede- Principal','1 año y medio','Tercer Nivel Técnico Superior','ADMINISTRACIÓN DE EMPRESAS Y DERECHO','Azuay','CUENCA'),(77,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2023-2024 C1','Institutos y/o Conservatorios Superiores','PROCESAMIENTO INDUSTRIAL DE LA MADERA',16,'Pública','Presencial','Sede- Principal','1 año y medio','Tercer Nivel Técnico Superior','ADMINISTRACIÓN DE EMPRESAS Y DERECHO','Azuay','CUENCA'),(78,'UNIVERSIDAD POLITÉCNICA SALESIANA','2023-2024 C1','Universidad y/o Escuela Politécnicas','MECÁNICA INDUSTRIAL',14,'Cofinanciada','Dual','Sede- Principal','2 años y medio','Tercer Nivel Tecnológico Superior','INGENIERIA, INDUSTRIA Y CONSTRUCCION','Azuay','Cuenca'),(79,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2023-2024 C2','Institutos y/o Conservatorios Superiores','PROCESAMIENTO INDUSTRIAL DE LA MADERA',8,'Pública','Dual','Sede- Principal','1 año y medio','Tercer Nivel Tecnológico Superior Universitario','INGENIERIA, INDUSTRIA Y CONSTRUCCION','Azuay','Cuenca'),(80,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2023-2024 C2','Institutos y/o Conservatorios Superiores','ADMINISTRACIÓN DE INFRAESTRUCTURA Y PLATAFORMAS TECNOLÓGICAS',77,'Pública','Híbrida','Sede- Principal','1 año y medio','Tercer Nivel Técnico Superior','TECNOLOGÍAS DE LA INFORMACIÓN Y LA COMUNICACIÓN','Azuay','Cuenca'),(81,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2023-2024 C2','Institutos y/o Conservatorios Superiores','ENTRENAMIENTO DEPORTIVO',73,'Pública','Presencial','Sede- Principal','1 año y medio','Tercer Nivel Técnico Superior','SERVICIOS','Azuay','Cuenca'),(82,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2023-2024 C2','Institutos y/o Conservatorios Superiores','PRODUCCIÓN Y REALIZACIÓN AUDIOVISUAL',60,'Pública','Presencial','Sede- Principal','1 año y medio','Tercer Nivel Técnico Superior','TECNOLOGÍAS DE LA INFORMACIÓN Y LA COMUNICACIÓN','Azuay','Cuenca'),(83,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2023-2024 C2','Institutos y/o Conservatorios Superiores','SEGURIDAD Y PREVENCIÓN DE RIESGOS LABORALES',41,'Pública','Presencial','Sede- Principal','1 año y medio','Tercer Nivel Técnico Superior','SERVICIOS','Azuay','Cuenca'),(84,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2023-2024 C2','Institutos y/o Conservatorios Superiores','SEGURIDAD PENITENCIARIA',123,'Pública','Dual','Sede- Principal','1 año y medio','Tercer Nivel Técnico Superior','SERVICIOS','Azuay','Cuenca'),(85,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2023-2024 C2','Institutos y/o Conservatorios Superiores','DESARROLLO INFANTIL INTEGRAL',19,'Pública','Dual','Sede- Principal','1 año y medio','Tercer Nivel Técnico Superior','SALUD Y BIENESTAR','Azuay','Cuenca'),(86,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2023-2024 C2','Institutos y/o Conservatorios Superiores','ASESORIA FINANCIERA',9,'Pública','Dual','Sede- Principal','Más de 2 años','Tercer Nivel Técnico Superior','ADMINISTRACIÓN DE EMPRESAS Y DERECHO','Azuay','Cuenca'),(87,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2023-2024 C2','Institutos y/o Conservatorios Superiores','BIG DATA',63,'Pública','Presencial','Sede- Principal','2 años','Tercer Nivel Técnico Superior','TECNOLOGÍAS DE LA INFORMACIÓN Y LA COMUNICACIÓN','Azuay','Cuenca'),(88,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2023-2024 C2','Institutos y/o Conservatorios Superiores','CIBERSEGURIDAD',63,'Pública','Presencial','Sede- Principal','2 años','Tercer Nivel Técnico Superior','TECNOLOGÍAS DE LA INFORMACIÓN Y LA COMUNICACIÓN','Azuay','Cuenca'),(89,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2023-2024 C2','Institutos y/o Conservatorios Superiores','DESARROLLO DE SOFTWARE',95,'Pública','Presencial','Sede- Principal','2 años y medio','Tercer Nivel Técnico Superior','ADMINISTRACIÓN DE EMPRESAS Y DERECHO','Azuay','Cuenca'),(90,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2023-2024 C2','Institutos y/o Conservatorios Superiores','MANTENIMIENTO ELÉCTRICO Y CONTROL INDUSTRIAL',57,'Pública','Dual','Sede- Principal','2 años','Tercer Nivel Técnico Superior','INGENIERIA, INDUSTRIA Y CONSTRUCCION','Azuay','Cuenca'),(91,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2023-2024 C2','Institutos y/o Conservatorios Superiores','TRIBUTACIÓN',73,'Pública','Presencial','Sede- Principal','2 años y medio','Tercer Nivel Técnico Superior','ADMINISTRACIÓN DE EMPRESAS Y DERECHO','Azuay','Cuenca'),(92,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2023-2024 C2','Institutos y/o Conservatorios Superiores','GESTIÓN DEL PATRIMONIO HISTORICO CULTURAL',39,'Pública','Presencial','Sede- Principal','1 año y medio','Tercer Nivel Técnico Superior','TECNOLOGÍAS DE LA INFORMACIÓN Y LA COMUNICACIÓN','Azuay','CUENCA'),(93,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2023-2024 C2','Institutos y/o Conservatorios Superiores','MECATRÓNICA',55,'Pública','Dual','Sede- Principal','1 año y medio','Tercer Nivel Técnico Superior','INGENIERIA, INDUSTRIA Y CONSTRUCCION','Azuay','CUENCA'),(94,'INSTITUTO SUPERIOR UNIVERSITARIO TECNOLÓGICO DEL AZUAY','2023-2024 C2','Institutos y/o Conservatorios Superiores','METALMECÁNICA',32,'Pública','Dual','Sede- Principal','1 año y medio','Tercer Nivel Técnico Superior','INGENIERIA, INDUSTRIA Y CONSTRUCCION','Azuay','CUENCA');
/*!40000 ALTER TABLE `matricula_stg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modalidad`
--

DROP TABLE IF EXISTS `modalidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modalidad` (
  `id_modalidad` INT(11) NOT NULL AUTO_INCREMENT,
  `descripcion_modalidad` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`id_modalidad`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modalidad`
--

LOCK TABLES `modalidad` WRITE;
/*!40000 ALTER TABLE `modalidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `modalidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_formacion`
--

DROP TABLE IF EXISTS `nivel_formacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_formacion` (
  `id_nivel_formacion` INT(11) NOT NULL AUTO_INCREMENT,
  `descripcion_nivel_formacion` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`id_nivel_formacion`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_formacion`
--

LOCK TABLES `nivel_formacion` WRITE;
/*!40000 ALTER TABLE `nivel_formacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_formacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `periodo`
--

DROP TABLE IF EXISTS `periodo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `periodo` (
  `id_periodo` INT(11) NOT NULL AUTO_INCREMENT,
  `descripcion_periodo` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`id_periodo`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periodo`
--

LOCK TABLES `periodo` WRITE;
/*!40000 ALTER TABLE `periodo` DISABLE KEYS */;
/*!40000 ALTER TABLE `periodo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provincia`
--

DROP TABLE IF EXISTS `provincia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provincia` (
  `id_provincia` INT(11) NOT NULL AUTO_INCREMENT,
  `descripcion_provincia` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`id_provincia`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincia`
--

LOCK TABLES `provincia` WRITE;
/*!40000 ALTER TABLE `provincia` DISABLE KEYS */;
/*!40000 ALTER TABLE `provincia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_financiamiento`
--

DROP TABLE IF EXISTS `tipo_financiamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_financiamiento` (
  `id_tipo_financiamiento` INT(11) NOT NULL AUTO_INCREMENT,
  `descripcion_tipo_financiamiento` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_financiamiento`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_financiamiento`
--

LOCK TABLES `tipo_financiamiento` WRITE;
/*!40000 ALTER TABLE `tipo_financiamiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_financiamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_institucion`
--

DROP TABLE IF EXISTS `tipo_institucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_institucion` (
  `id_tipo_institucion` INT(11) NOT NULL AUTO_INCREMENT,
  `descripcion_tipo_institucion` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_institucion`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_institucion`
--

LOCK TABLES `tipo_institucion` WRITE;
/*!40000 ALTER TABLE `tipo_institucion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_institucion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-24  8:31:03

SELECT DISTINCT `institucion` FROM tec