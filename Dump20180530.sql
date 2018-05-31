CREATE DATABASE  IF NOT EXISTS `infosec` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `infosec`;
-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: infosec
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

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
-- Table structure for table `TC_cia_ratings`
--

DROP TABLE IF EXISTS `TC_cia_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TC_cia_ratings` (
  `rating` mediumint(7) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`rating`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TC_cia_ratings`
--

LOCK TABLES `TC_cia_ratings` WRITE;
/*!40000 ALTER TABLE `TC_cia_ratings` DISABLE KEYS */;
INSERT INTO `TC_cia_ratings` VALUES (1,'BAJO'),(2,'MEDIO'),(3,'ALTO'),(4,'CRITICO');
/*!40000 ALTER TABLE `TC_cia_ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TC_conf_level`
--

DROP TABLE IF EXISTS `TC_conf_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TC_conf_level` (
  `conf_level` mediumint(7) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`conf_level`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TC_conf_level`
--

LOCK TABLES `TC_conf_level` WRITE;
/*!40000 ALTER TABLE `TC_conf_level` DISABLE KEYS */;
INSERT INTO `TC_conf_level` VALUES (1,'BAJO'),(2,'MEDIO'),(3,'ALTO'),(4,'CRITICO'),(5,'TODOS'),(6,'NO APLICA');
/*!40000 ALTER TABLE `TC_conf_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TC_crit_level`
--

DROP TABLE IF EXISTS `TC_crit_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TC_crit_level` (
  `crit_level` mediumint(7) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`crit_level`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TC_crit_level`
--

LOCK TABLES `TC_crit_level` WRITE;
/*!40000 ALTER TABLE `TC_crit_level` DISABLE KEYS */;
INSERT INTO `TC_crit_level` VALUES (1,'BAJO'),(2,'MEDIO'),(3,'ALTO'),(4,'CRITICO'),(5,'TODOS'),(6,'NO APLICA');
/*!40000 ALTER TABLE `TC_crit_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TC_disp_level`
--

DROP TABLE IF EXISTS `TC_disp_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TC_disp_level` (
  `disp_level` mediumint(7) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`disp_level`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TC_disp_level`
--

LOCK TABLES `TC_disp_level` WRITE;
/*!40000 ALTER TABLE `TC_disp_level` DISABLE KEYS */;
INSERT INTO `TC_disp_level` VALUES (1,'BAJO'),(2,'MEDIO'),(3,'ALTO'),(4,'CRITICO'),(5,'TODOS'),(6,'NO APLICA');
/*!40000 ALTER TABLE `TC_disp_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TC_efectividad`
--

DROP TABLE IF EXISTS `TC_efectividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TC_efectividad` (
  `efectividad` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`efectividad`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TC_efectividad`
--

LOCK TABLES `TC_efectividad` WRITE;
/*!40000 ALTER TABLE `TC_efectividad` DISABLE KEYS */;
INSERT INTO `TC_efectividad` VALUES (1,'EFECTIVO'),(2,'NO EFECTIVO'),(3,'PARCIALMENTE EFECTIVO');
/*!40000 ALTER TABLE `TC_efectividad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TC_entes_aplicables`
--

DROP TABLE IF EXISTS `TC_entes_aplicables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TC_entes_aplicables` (
  `ente` mediumint(7) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ente`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TC_entes_aplicables`
--

LOCK TABLES `TC_entes_aplicables` WRITE;
/*!40000 ALTER TABLE `TC_entes_aplicables` DISABLE KEYS */;
INSERT INTO `TC_entes_aplicables` VALUES (1,'ORGANIZACION'),(2,'ACTIVO IT');
/*!40000 ALTER TABLE `TC_entes_aplicables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TC_estados_implementacion`
--

DROP TABLE IF EXISTS `TC_estados_implementacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TC_estados_implementacion` (
  `estado` mediumint(7) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`estado`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TC_estados_implementacion`
--

LOCK TABLES `TC_estados_implementacion` WRITE;
/*!40000 ALTER TABLE `TC_estados_implementacion` DISABLE KEYS */;
INSERT INTO `TC_estados_implementacion` VALUES (1,'NO IMPLEMENTADO'),(2,'NO APLICABLE'),(3,'DESVIADO'),(4,'IMPLEMENTACION EN CURSO'),(5,'IMPLEMENTADO');
/*!40000 ALTER TABLE `TC_estados_implementacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TC_integ_level`
--

DROP TABLE IF EXISTS `TC_integ_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TC_integ_level` (
  `int_level` mediumint(7) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`int_level`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TC_integ_level`
--

LOCK TABLES `TC_integ_level` WRITE;
/*!40000 ALTER TABLE `TC_integ_level` DISABLE KEYS */;
INSERT INTO `TC_integ_level` VALUES (1,'BAJO'),(2,'MEDIO'),(3,'ALTO'),(4,'CRITICO'),(5,'TODOS'),(6,'NO APLICA');
/*!40000 ALTER TABLE `TC_integ_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TC_nivel_reduccion`
--

DROP TABLE IF EXISTS `TC_nivel_reduccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TC_nivel_reduccion` (
  `nivel_reduccion` mediumint(7) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`nivel_reduccion`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TC_nivel_reduccion`
--

LOCK TABLES `TC_nivel_reduccion` WRITE;
/*!40000 ALTER TABLE `TC_nivel_reduccion` DISABLE KEYS */;
INSERT INTO `TC_nivel_reduccion` VALUES (1,'BAJO'),(2,'MEDIO'),(3,'ALTO'),(4,'NULO');
/*!40000 ALTER TABLE `TC_nivel_reduccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TC_tipo_activo`
--

DROP TABLE IF EXISTS `TC_tipo_activo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TC_tipo_activo` (
  `tipoactivo` mediumint(7) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`tipoactivo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TC_tipo_activo`
--

LOCK TABLES `TC_tipo_activo` WRITE;
/*!40000 ALTER TABLE `TC_tipo_activo` DISABLE KEYS */;
INSERT INTO `TC_tipo_activo` VALUES (1,'APLICACIÓN EMPRESARIAL DESARROLLADA \"IN HOUSE\"'),(2,'PAQUETE SOFTWARE EMPRESARIAL DE TERCEROS'),(3,'APLICACIÓN SOFTWARE GENÉRICA'),(4,'SERVIDOR FÍSICO'),(5,'SERVIDOR VIRTUAL'),(6,'BASE DE DATOS'),(7,'FICHERO DIGITAL'),(8,'SOPORTE DATOS DIGITAL'),(9,'NO APLICA'),(10,'ORGANIZACION');
/*!40000 ALTER TABLE `TC_tipo_activo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TC_tipo_control`
--

DROP TABLE IF EXISTS `TC_tipo_control`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TC_tipo_control` (
  `tipocontrol` mediumint(7) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`tipocontrol`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TC_tipo_control`
--

LOCK TABLES `TC_tipo_control` WRITE;
/*!40000 ALTER TABLE `TC_tipo_control` DISABLE KEYS */;
INSERT INTO `TC_tipo_control` VALUES (1,'PREVENTIVO'),(2,'DETECTIVO'),(3,'CORRECTIVO'),(4,'DISUASORIO');
/*!40000 ALTER TABLE `TC_tipo_control` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activos`
--

DROP TABLE IF EXISTS `activos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activos` (
  `idactivo` int(10) NOT NULL AUTO_INCREMENT,
  `tipo_activo` mediumint(7) DEFAULT NULL,
  `desc_corta` varchar(45) DEFAULT NULL,
  `desc_larga` mediumtext,
  `criticidad` mediumint(7) DEFAULT NULL,
  `conf_nivel` mediumint(7) DEFAULT NULL,
  `inte_nivel` mediumint(7) DEFAULT NULL,
  `disp_nivel` mediumint(7) DEFAULT NULL,
  `bsns_owner` varchar(45) DEFAULT NULL,
  `tech_owner` varchar(45) DEFAULT NULL,
  `organizacion` mediumint(7) DEFAULT NULL,
  PRIMARY KEY (`idactivo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activos`
--

LOCK TABLES `activos` WRITE;
/*!40000 ALTER TABLE `activos` DISABLE KEYS */;
INSERT INTO `activos` VALUES (1,2,'SAP R-3','ESTE ES EL SAP R-3 QUE SE USA PARA LA GESTIÓN DE RECURSOS HUMANOS',1,1,1,1,'JANS HOTEBORG','SHULE DUSEMBERG',1),(2,1,'CLIENTE AMADEUS','SISTEMA DE GESTIÓN DE RESERVAS',3,3,2,2,'JANS HOTEBORG','SHULE DUSEMBERG',2),(3,1,'CHEF SISTEMA DE MENÚS ESPECIALES','ESTE ES EL SISTEMAAA',3,3,3,3,'GUNTER GALLAGER','SUSAN GERMANN',1),(4,2,'SAPOIS GESTION DE PERSONAL',NULL,3,2,2,3,'RUTGER SOMELIER','PAVEL ROMESCU',3),(5,6,'LIBRE OFFICE BASE (SELECCION DE PERSONAL)','esta es la base de datos que usa el departamento de personal',1,1,1,1,'BRUNSWICK BATTERSEA','MIHAIL GORMITI',2);
/*!40000 ALTER TABLE `activos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baseline_articulos`
--

DROP TABLE IF EXISTS `baseline_articulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baseline_articulos` (
  `articulo` int(11) NOT NULL,
  `desc_articulo` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`articulo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baseline_articulos`
--

LOCK TABLES `baseline_articulos` WRITE;
/*!40000 ALTER TABLE `baseline_articulos` DISABLE KEYS */;
INSERT INTO `baseline_articulos` VALUES (1,'ARTICULO 1'),(2,'ARTICULO 2'),(3,'ARTICULO 3'),(4,'ARTICULO 4'),(5,'ARTICULO 5'),(6,'ARTICULO 6'),(7,'ARTICULO 7'),(8,'ARTICULO 8'),(9,'ARTICULO 9');
/*!40000 ALTER TABLE `baseline_articulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baseline_capitulos`
--

DROP TABLE IF EXISTS `baseline_capitulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baseline_capitulos` (
  `capitulo` int(11) NOT NULL,
  `desc_capitulo` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`capitulo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baseline_capitulos`
--

LOCK TABLES `baseline_capitulos` WRITE;
/*!40000 ALTER TABLE `baseline_capitulos` DISABLE KEYS */;
INSERT INTO `baseline_capitulos` VALUES (1,'1. CAPITULO 1'),(2,'2. CAPITULO 2'),(3,'3. CAPITULO 3'),(4,'4. CAPITULO 4'),(5,'5. CAPÍTULO 5');
/*!40000 ALTER TABLE `baseline_capitulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baseline_secciones`
--

DROP TABLE IF EXISTS `baseline_secciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baseline_secciones` (
  `seccion` int(11) NOT NULL,
  `articulo` int(11) NOT NULL,
  `desc_seccion` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`seccion`,`articulo`),
  KEY `fk_baseline_secciones_1_idx` (`articulo`),
  CONSTRAINT `fk_baseline_secciones_1` FOREIGN KEY (`articulo`) REFERENCES `baseline_articulos` (`articulo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baseline_secciones`
--

LOCK TABLES `baseline_secciones` WRITE;
/*!40000 ALTER TABLE `baseline_secciones` DISABLE KEYS */;
INSERT INTO `baseline_secciones` VALUES (1,1,'SECCIÓN PRIMERA ARTICULO 1'),(1,2,'SECCIÓN PRIMERA ARTICULO 2'),(1,3,'SECCIÓN PRIMERA ARTICULO 3'),(1,4,'SECCIÓN PRIMERA ARTICULO 4'),(1,5,'SECCIÓN PRIMERA ARTICULO 5'),(1,6,'SECCIÓN PRIMERA ARTICULO 6'),(1,7,'SECCIÓN PRIMERA ARTICULO 7'),(1,8,'SECCIÓN PRIMERA ARTICULO 8'),(1,9,'SECCIÓN PRIMERA ARTICULO 9'),(2,1,'SECCIÓN SEGUNDA ARTICULO 1'),(2,2,'SECCIÓN SEGUNDA ARTICULO 2'),(2,3,'SECCIÓN SEGUNDA ARTICULO 3'),(2,4,'SECCIÓN SEGUNDA ARTICULO 4'),(2,6,'SECCIÓN SEGUNDA ARTICULO 6'),(2,8,'SECCIÓN SEGUNDA ARTICULO 8'),(2,9,'SECCIÓN SEGUNDA ARTÍCULO 9'),(3,1,'SECCIÓN TERCERA ARTICULO 1'),(3,2,'SECCIÓN TERCERA ARTÍCULO 2'),(3,3,'SECCIÓN TERCERA ARTICULO 3'),(3,6,'SECCIÓN TERCERA ARTICULO 6'),(3,9,'SECCIÓN TERCERA ARTICULO 9'),(4,2,'SECCIÒN CUARTA ARTÍCULO 2'),(4,3,'SECCIÓN CUARTA ARTICULO 3'),(4,9,'SECCIÓN CUARTA ARTICULO 9'),(5,3,'SECCIÓN QUINTA ARTICULO 3'),(5,9,'SECCION QUINTA ARTICULO 9');
/*!40000 ALTER TABLE `baseline_secciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baseline_standard`
--

DROP TABLE IF EXISTS `baseline_standard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baseline_standard` (
  `capitulo` int(11) NOT NULL,
  `articulo` int(11) NOT NULL,
  `seccion` int(11) NOT NULL,
  `sub_seccion` int(45) NOT NULL,
  `desc_corta` varchar(60) COLLATE latin1_spanish_ci DEFAULT NULL,
  `texo` longtext COLLATE latin1_spanish_ci,
  `aplicabilidad_tipo_activo` mediumint(7) DEFAULT NULL,
  `aplicabilidad_conf_nivel` mediumint(7) DEFAULT NULL,
  `aplicabilidad_inte_nivel` mediumint(7) DEFAULT NULL,
  `aplicabilidad_disp_nivel` mediumint(7) DEFAULT NULL,
  `apicabilidad_criticidad` mediumint(7) DEFAULT NULL,
  `tipo_control` mediumint(7) DEFAULT NULL,
  `reduccion_prob` mediumint(7) DEFAULT NULL,
  `reduccion_impa` mediumint(7) DEFAULT NULL,
  `aplicabilidad_ente` mediumint(7) DEFAULT NULL,
  `codigo` varchar(45) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`capitulo`,`articulo`,`seccion`,`sub_seccion`,`codigo`),
  KEY `index2` (`capitulo`),
  KEY `index3` (`articulo`),
  KEY `index4` (`seccion`),
  KEY `fk_baseline_standard_4_idx` (`apicabilidad_criticidad`),
  KEY `fk_baseline_standard_5_idx` (`aplicabilidad_conf_nivel`),
  KEY `fk_baseline_standard_6_idx` (`aplicabilidad_inte_nivel`),
  KEY `fk_baseline_standard_7_idx` (`aplicabilidad_disp_nivel`),
  CONSTRAINT `fk_baseline_standard_1` FOREIGN KEY (`capitulo`) REFERENCES `baseline_capitulos` (`capitulo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_baseline_standard_2` FOREIGN KEY (`articulo`) REFERENCES `baseline_articulos` (`articulo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_baseline_standard_3` FOREIGN KEY (`seccion`) REFERENCES `baseline_secciones` (`seccion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_baseline_standard_4` FOREIGN KEY (`apicabilidad_criticidad`) REFERENCES `TC_crit_level` (`crit_level`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_baseline_standard_5` FOREIGN KEY (`aplicabilidad_conf_nivel`) REFERENCES `TC_conf_level` (`conf_level`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_baseline_standard_6` FOREIGN KEY (`aplicabilidad_inte_nivel`) REFERENCES `TC_integ_level` (`int_level`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_baseline_standard_7` FOREIGN KEY (`aplicabilidad_disp_nivel`) REFERENCES `TC_disp_level` (`disp_level`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baseline_standard`
--

LOCK TABLES `baseline_standard` WRITE;
/*!40000 ALTER TABLE `baseline_standard` DISABLE KEYS */;
INSERT INTO `baseline_standard` VALUES (1,1,1,1,'Este es el control primero de pruebas 1111','Esta es la descripción del control 1111. Esperemos que sean de utilidad o como poco que.... Lotem Ipsum lavalisis\n',4,2,2,3,3,1,2,3,2,'1111'),(1,1,1,2,'esta es la segunda subsección 1112','Este es el control de la seccion 1112 es la subseccion 2 de la sección 1 del artículo 1 del capítulo 1\n',9,5,2,2,3,4,3,1,1,'1112'),(1,1,1,3,'Esta es la tercera sección 1113','Este es el tema del control 1113\n',NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,'1113'),(1,1,2,1,'Esta es la sub sección  de la sección 2 ','Esta es la sub sección  de la sección 2 del artículo 1 del capítulo 1 aqui lo que va es la descripción del control\n',NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,'1121'),(2,1,1,1,'fewfwef','ewwfwefwefwfw',NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,''),(3,1,1,1,'dsfdsfds','fsdfsdfsfd',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,''),(5,1,1,1,'dfdsafa','sdfasdfasdfas',NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,'');
/*!40000 ALTER TABLE `baseline_standard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organizaciones`
--

DROP TABLE IF EXISTS `organizaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organizaciones` (
  `organizacion` mediumint(7) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`organizacion`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizaciones`
--

LOCK TABLES `organizaciones` WRITE;
/*!40000 ALTER TABLE `organizaciones` DISABLE KEYS */;
INSERT INTO `organizaciones` VALUES (1,'ORGANIZACIÓN ITALIANA'),(2,'ORGANIZACIÓN FRANCESA'),(3,'ORGANIZACIÓN ESPAÑOLA');
/*!40000 ALTER TABLE `organizaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rel_activo_baseline`
--

DROP TABLE IF EXISTS `rel_activo_baseline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rel_activo_baseline` (
  `idactivo` int(11) NOT NULL,
  `estado` mediumint(7) DEFAULT NULL,
  `implem_owner` varchar(45) DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `last_test` date DEFAULT NULL,
  `efectividad` int(10) DEFAULT NULL,
  `capitulo` int(11) NOT NULL,
  `articulo` int(11) NOT NULL,
  `seccion` int(11) NOT NULL,
  `sub_seccion` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `aplicable` bit(1) DEFAULT NULL,
  PRIMARY KEY (`idactivo`,`capitulo`,`articulo`,`seccion`,`sub_seccion`),
  KEY `fk_rel_activo_baseline_2_idx` (`capitulo`),
  KEY `fk_rel_activo_baseline_3_idx` (`articulo`),
  KEY `fk_rel_activo_baseline_4_idx` (`seccion`),
  KEY `fk_rel_activo_baseline_5_idx` (`sub_seccion`),
  KEY `fk_rel_activo_baseline_5_idx1` (`estado`),
  CONSTRAINT `fk_rel_activo_baseline_2` FOREIGN KEY (`capitulo`) REFERENCES `baseline_standard` (`capitulo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_rel_activo_baseline_3` FOREIGN KEY (`articulo`) REFERENCES `baseline_standard` (`articulo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_rel_activo_baseline_4` FOREIGN KEY (`seccion`) REFERENCES `baseline_standard` (`seccion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_rel_activo_baseline_5` FOREIGN KEY (`estado`) REFERENCES `TC_estados_implementacion` (`estado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rel_activo_baseline`
--

LOCK TABLES `rel_activo_baseline` WRITE;
/*!40000 ALTER TABLE `rel_activo_baseline` DISABLE KEYS */;
INSERT INTO `rel_activo_baseline` VALUES (1,1,NULL,'1999-12-01','2000-12-01',2,1,1,1,1,'1111','\0'),(1,NULL,NULL,NULL,NULL,NULL,1,1,1,2,'1112','\0'),(1,NULL,NULL,NULL,NULL,NULL,1,1,1,3,'1113','\0'),(1,NULL,NULL,NULL,NULL,NULL,1,1,2,1,'1121','\0'),(1,NULL,NULL,NULL,NULL,NULL,2,1,1,1,'2111','\0'),(1,NULL,NULL,NULL,NULL,NULL,3,1,1,1,'3111',''),(1,NULL,NULL,NULL,NULL,NULL,5,1,1,1,'5111','\0'),(2,NULL,NULL,NULL,NULL,NULL,1,1,1,1,'1111',''),(2,NULL,NULL,NULL,NULL,NULL,1,1,1,2,'1112',''),(2,NULL,NULL,NULL,NULL,NULL,1,1,1,3,'1113',''),(2,NULL,NULL,NULL,NULL,NULL,1,1,2,1,'1121',''),(2,NULL,NULL,NULL,NULL,NULL,2,1,1,1,'2111','\0'),(2,NULL,NULL,NULL,NULL,NULL,3,1,1,1,'3111','\0'),(2,NULL,NULL,NULL,NULL,NULL,5,1,1,1,'5111',''),(3,NULL,NULL,NULL,NULL,NULL,1,1,1,1,'1111',''),(3,NULL,NULL,NULL,NULL,NULL,1,1,1,2,'1112',''),(3,NULL,NULL,NULL,NULL,NULL,1,1,1,3,'1113',''),(3,NULL,NULL,NULL,NULL,NULL,1,1,2,1,'1121',''),(3,NULL,NULL,NULL,NULL,NULL,2,1,1,1,'2111','\0'),(3,NULL,NULL,NULL,NULL,NULL,3,1,1,1,'3111','\0'),(3,NULL,NULL,NULL,NULL,NULL,5,1,1,1,'5111',''),(4,NULL,NULL,NULL,NULL,NULL,1,1,1,1,'1111',''),(4,NULL,NULL,NULL,NULL,NULL,1,1,1,2,'1112',''),(4,NULL,NULL,NULL,NULL,NULL,1,1,1,3,'1113',''),(4,NULL,NULL,NULL,NULL,NULL,1,1,2,1,'1121',''),(4,NULL,NULL,NULL,NULL,NULL,2,1,1,1,'2111','\0'),(4,NULL,NULL,NULL,NULL,NULL,3,1,1,1,'3111','\0'),(4,NULL,NULL,NULL,NULL,NULL,5,1,1,1,'5111',''),(5,NULL,NULL,NULL,NULL,NULL,1,1,1,1,'1111','\0'),(5,NULL,NULL,NULL,NULL,NULL,1,1,1,2,'1112','\0'),(5,NULL,NULL,NULL,NULL,NULL,1,1,1,3,'1113','\0'),(5,NULL,NULL,NULL,NULL,NULL,1,1,2,1,'1121','\0'),(5,NULL,NULL,NULL,NULL,NULL,2,1,1,1,'2111','\0'),(5,NULL,NULL,NULL,NULL,NULL,3,1,1,1,'3111',''),(5,NULL,NULL,NULL,NULL,NULL,5,1,1,1,'5111','\0');
/*!40000 ALTER TABLE `rel_activo_baseline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `selactivo`
--

DROP TABLE IF EXISTS `selactivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `selactivo` (
  `selactivo` tinyint(3) NOT NULL,
  PRIMARY KEY (`selactivo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `selactivo`
--

LOCK TABLES `selactivo` WRITE;
/*!40000 ALTER TABLE `selactivo` DISABLE KEYS */;
INSERT INTO `selactivo` VALUES (2);
/*!40000 ALTER TABLE `selactivo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-30 21:24:52
