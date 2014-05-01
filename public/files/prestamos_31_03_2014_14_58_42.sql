
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
DROP TABLE IF EXISTS `access_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(24) NOT NULL DEFAULT '',
  `resource` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `allow` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `access_list` WRITE;
/*!40000 ALTER TABLE `access_list` DISABLE KEYS */;
INSERT INTO `access_list` VALUES (1,'public','*','*','Y'),(3,'superadministrador','*','*','Y'),(4,'administrador','*','*','Y'),(5,'cajero','*','*','Y'),(7,'cajero','proveedores','agregar','N'),(8,'cajero','proveedores','buscar','N'),(9,'cajero','compras','buscar','N'),(10,'cajero','consecutivos','agregar','N'),(11,'cajero','tipo_documento','agregar','N'),(12,'cajero','kardex','agregar','Y'),(13,'cajero','libros','pedido_clientes','N'),(14,'cajero','libros','cxp','N'),(15,'cajero','inventario','general','N'),(16,'cajero','egresos','agregar','N'),(17,'cajero','egresos','buscar','N'),(18,'cajero','entradas_especiales','agregar','N'),(19,'cajero','entradas_especiales','buscar','N'),(20,'cajero','salidas_especiales','agregar','N'),(21,'cajero','salidas_especiales','buscar','N'),(22,'cajero','backup','listar','N'),(23,'cajero','libros','ingresos_diarios','N'),(24,'cajero','kardex','buscar','N'),(25,'cajero','compras','agregar','N'),(26,'cajero','pedido_clientes','agregar','Y'),(27,'cajero','cuadre_caja','agregar','Y'),(28,'cajero','pedido_clientes','pedidos_liquidados','Y'),(29,'cajero','pedido_clientes','pedidos_no_liquidados','Y'),(30,'cajero','empleados','agregar','N'),(31,'cajero','administrador','agregar','N'),(32,'cajero','turnos','agregar','Y'),(33,'cajero','tarifa_habitacion','agregar','N'),(34,'cajero','administrador','permisos','N'),(35,'cajero','backup','index','Y'),(36,'cajero','cuadre_caja','*','Y'),(37,'cajero','pedido_clientes','anular_minutos','Y'),(38,'cajero','turnos','buscar','N'),(39,'cajero','empleados','buscar','N'),(40,'cajero','administrador','buscar','N'),(41,'cajero','cuadre_caja','caja_abierta','Y'),(42,'cajero','cuadre_caja','caja_cerrada','Y'),(43,'cajero','libros','general','N'),(44,'cajero','libros','inventario_bodegas','N'),(45,'cajero','traslados','agregar','N'),(46,'cajero','traslados','buscar','N'),(47,'cajero','administrador','ajuste_inventario_negativo','N'),(48,'cajero','alertas','agregar','Y'),(49,'cajero','alertas','buscar','Y'),(50,'cajero','administrador','*','N'),(51,'cajero','clientes','index','Y'),(52,'cajero','clientes','agregar','N'),(53,'cajero','clientes','buscar','N'),(54,'cajero','clientes','eliminar','N'),(55,'cajero','clientes','modificar','N'),(56,'cajero','deudores','index','Y'),(57,'cajero','deudores','agregar','N'),(58,'cajero','deudores','buscar','N'),(59,'cajero','deudores','eliminar','N'),(60,'cajero','deudores','modificar','N'),(61,'cajero','tipo_documento','index','Y'),(62,'cajero','tipo_documento','buscar','N'),(63,'cajero','tipo_documento','eliminar','N'),(64,'cajero','tipo_documento','modificar','N'),(65,'cajero','consecutivos','index','Y'),(66,'cajero','consecutivos','buscar','N'),(67,'cajero','consecutivos','eliminar','N'),(68,'cajero','consecutivos','modificar','N'),(69,'cajero','solicitud','index','Y'),(70,'cajero','solicitud','agregar','N'),(71,'cajero','solicitud','buscar','N'),(72,'cajero','solicitud','eliminar','N'),(73,'cajero','solicitud','modificar','N'),(74,'cajero','creditos','index','Y'),(75,'cajero','creditos','agregar','N'),(76,'cajero','creditos','buscar','N'),(77,'cajero','creditos','eliminar','N'),(78,'cajero','creditos','modificar','N'),(79,'cajero','recibos_caja','index','Y'),(80,'cajero','recibos_caja','agregar','N'),(81,'cajero','recibos_caja','buscar','N'),(82,'cajero','recibos_caja','eliminar','N'),(83,'cajero','recibos_caja','modificar','N'),(84,'cajero','notas_debito','index','Y'),(85,'cajero','notas_debito','agregar','N'),(86,'cajero','notas_debito','buscar','N'),(87,'cajero','notas_debito','eliminar','N'),(88,'cajero','notas_debito','modificar','N'),(89,'cajero','notas_credito','index','Y'),(90,'cajero','notas_credito','agregar','N'),(91,'cajero','notas_credito','buscar','N'),(92,'cajero','notas_credito','eliminar','N'),(93,'cajero','notas_credito','modificar','N'),(94,'cajero','permitir_creditos','index','Y'),(95,'cajero','permitir_creditos','agregar','N'),(96,'cajero','permitir_creditos','buscar','N'),(97,'cajero','permitir_creditos','eliminar','N'),(98,'cajero','permitir_creditos','modificar','N'),(99,'cajero','reports','index','Y'),(100,'cajero','reports','agregar','N'),(101,'cajero','reports','buscar','N'),(102,'cajero','reports','eliminar','N'),(103,'cajero','reports','modificar','N'),(104,'cajero','empleado','index','Y'),(105,'cajero','empleado','agregar','N'),(106,'cajero','empleado','buscar','N'),(107,'cajero','empleado','eliminar','N'),(108,'cajero','empleado','modificar','N'),(109,'cajero','roles_de_usuario','index','Y'),(110,'cajero','roles_de_usuario','agregar','N'),(111,'cajero','roles_de_usuario','buscar','N'),(112,'cajero','roles_de_usuario','eliminar','N'),(113,'cajero','roles_de_usuario','modificar','N'),(114,'cajero','administrador','modificar','Y'),(115,'cajero','administrador','eliminar','N'),(116,'cajero','menuapp','index','Y'),(117,'cajero','menuapp','agregar','N'),(118,'cajero','menuapp','buscar','N'),(119,'cajero','menuapp','eliminar','N'),(120,'cajero','menuapp','modificar','N'),(121,'cajero','departamentos','index','Y'),(122,'cajero','departamentos','agregar','N'),(123,'cajero','departamentos','buscar','N'),(124,'cajero','departamentos','eliminar','N'),(125,'cajero','departamentos','modificar','N'),(126,'cajero','municipios','index','Y'),(127,'cajero','municipios','agregar','N'),(128,'cajero','municipios','buscar','N'),(129,'cajero','municipios','eliminar','N'),(130,'cajero','municipios','modificar','N'),(131,'cajero','empresa','index','Y'),(132,'cajero','empresa','agregar','N'),(133,'cajero','empresa','buscar','N'),(134,'cajero','empresa','eliminar','N'),(135,'cajero','empresa','modificar','N'),(136,'cajero','somhue','index','Y'),(137,'cajero','somhue','agregar','N'),(138,'cajero','somhue','buscar','N'),(139,'cajero','somhue','eliminar','N'),(140,'cajero','somhue','modificar','N');
/*!40000 ALTER TABLE `access_list` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `password` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `nombre_completo` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `tipo_usuario` int(11) DEFAULT NULL,
  `empleado_id` int(11) NOT NULL,
  `role` varchar(30) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `plantilla` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `username_2` (`username`),
  UNIQUE KEY `empleado_id` (`empleado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AVG_ROW_LENGTH=16384 ROW_FORMAT=DYNAMIC COMMENT='TABLA DE ADMIN';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','21232f297a57a5a743894a0e4a801fc3','superadministrador',1,1,'superadministrador','adminiziolite');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `alertas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alertas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `fecha_act` datetime DEFAULT NULL,
  `fecha_caduca` date NOT NULL,
  `observacion` varchar(250) DEFAULT NULL,
  `anulado` tinyint(4) DEFAULT '0',
  `admin_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `alertas` WRITE;
/*!40000 ALTER TABLE `alertas` DISABLE KEYS */;
/*!40000 ALTER TABLE `alertas` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `aplicaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aplicaciones` (
  `aplicacion` varchar(50) NOT NULL,
  PRIMARY KEY (`aplicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `aplicaciones` WRITE;
/*!40000 ALTER TABLE `aplicaciones` DISABLE KEYS */;
INSERT INTO `aplicaciones` VALUES ('default');
/*!40000 ALTER TABLE `aplicaciones` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `appmonitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appmonitor` (
  `sid` varchar(50) NOT NULL DEFAULT '',
  `instance` varchar(50) DEFAULT NULL,
  `application` varchar(50) DEFAULT NULL,
  `ipaddress` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `lasttime` varchar(50) DEFAULT NULL,
  `memoryusage` varchar(50) DEFAULT NULL,
  `lasturl` varchar(200) DEFAULT NULL,
  `lastmessage` varchar(200) DEFAULT NULL,
  `lastcode` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `appmonitor` WRITE;
/*!40000 ALTER TABLE `appmonitor` DISABLE KEYS */;
INSERT INTO `appmonitor` VALUES ('1e34c86a4009b803aec18bef36c4b395','paraiso','default','127.0.0.1','0','1354724118','16515072',NULL,NULL,NULL),('35bbf30f9eeb188a826bf08df9b1eb20','paraiso','default','127.0.0.1','0','1354974366','16515072',NULL,NULL,NULL),('8a8a6d257159f13828d1cde28587dacc','paraiso','default','127.0.0.1','0','1354813340','16515072',NULL,NULL,NULL),('94978f3c957bed2622deaf2704936394','paraiso','default','127.0.0.1','0','1354657792','16252928',NULL,NULL,NULL),('97e1405ba5567a8e5c3af6897830da75','paraiso','default','127.0.0.1','0','1354826722','16515072',NULL,NULL,NULL),('9c94da6b68df04f972fe40044bc36ace','paraiso','default','127.0.0.1','0','1354888125','16515072',NULL,NULL,NULL),('a73f92fcefbc62dae04a701c012af412','paraiso','default','127.0.0.1','0','1354588760','16252928',NULL,NULL,NULL),('ab015bdfc1d866c44daa0e7d512c2ca6','paraiso','default','127.0.0.1','0','1354458606','16252928',NULL,NULL,NULL),('d957fb4d71ef7adf0af78695dc4b9951','paraiso','default','127.0.0.1','0','1354307675','16252928',NULL,NULL,NULL),('dcd6390a9379e0e1ac1f594e234f3956','paraiso','default','127.0.0.1','0','1354752887','16515072',NULL,NULL,NULL),('e5701eb2b06bc3621a95494bf58dd481','paraiso','default','127.0.0.1','0','1354742779','16252928',NULL,NULL,NULL),('eacc7f506ae6562e0a5490abc94ed6d8','paraiso','default','127.0.0.1','0','1354931484','16515072',NULL,NULL,NULL);
/*!40000 ALTER TABLE `appmonitor` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `bancos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bancos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `banco` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cuenta` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AVG_ROW_LENGTH=16384 COMMENT='TABLA DE BANCOS';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `bancos` WRITE;
/*!40000 ALTER TABLE `bancos` DISABLE KEYS */;
INSERT INTO `bancos` VALUES (1,'CAJA GENERAL',NULL);
/*!40000 ALTER TABLE `bancos` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `bodegas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bodegas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bodega` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `bodegas` WRITE;
/*!40000 ALTER TABLE `bodegas` DISABLE KEYS */;
INSERT INTO `bodegas` VALUES (1,'PRINCIPAL'),(2,'OFICINA'),(3,'HABITACION 1'),(4,'HABITACION 2'),(5,'HABITACION 3'),(6,'HABITACION 4'),(7,'HABITACION 5'),(8,'HABITACION 6'),(9,'HABITACION 7'),(10,'HABITACION 8'),(11,'HABITACION 9'),(12,'HABITACION 10'),(13,'HABITACION 11'),(14,'HABITACION 12'),(15,'HABITACION 13'),(16,'HABITACION 14'),(17,'HABITACION 15'),(18,'HABITACION 16'),(19,'HABITACION 17'),(20,'HABITACION 18'),(21,'HABITACION 19'),(22,'HABITACION 20');
/*!40000 ALTER TABLE `bodegas` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nit` varchar(20) NOT NULL DEFAULT '',
  `nombre1` varchar(20) DEFAULT NULL,
  `nombre2` varchar(20) DEFAULT NULL,
  `apellido1` varchar(20) DEFAULT NULL,
  `apellido2` varchar(20) DEFAULT NULL,
  `foto` blob,
  `url` varchar(200) DEFAULT '',
  `razon_social` varchar(250) NOT NULL DEFAULT '',
  `direccion_casa` varchar(100) DEFAULT NULL,
  `direccion_oficina` varchar(100) DEFAULT NULL,
  `telefono1` varchar(15) NOT NULL DEFAULT '0000000',
  `telefono2` varchar(15) DEFAULT '0000000',
  `sueldo` double(15,2) NOT NULL,
  `otros_ingresos` double(15,2) NOT NULL,
  `eps` varchar(35) NOT NULL,
  `casa` varchar(1) NOT NULL,
  `vehiculos` varchar(70) NOT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `departamentos_id` int(3) NOT NULL,
  `municipios_id` int(3) unsigned DEFAULT NULL,
  `activo` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `correo` varchar(150) DEFAULT NULL,
  `web` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nit` (`nit`),
  KEY `activo` (`activo`),
  KEY `municipios_id` (`municipios_id`),
  CONSTRAINT `clientes_fk` FOREIGN KEY (`municipios_id`) REFERENCES `municipios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=5461 COMMENT='TABLA CLIENTES';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'1067852341','ALEJANDRO','DAVID','BETANCOURT','ARGUELLO',NULL,'','ALEJANDRO DAVID BETANCOURT ARGUELLO','DDGGG','GGGGG','1898981','80980',90000000.00,99999.00,'COMEVA','S','8789789','19023810298',23,108,0,'ASLDKAÃƒâ€˜SDKQA@SDAKLSDKA.COM','MASDÃƒâ€˜ASLDKALS@ASKDAS.COM'),(2,'1034562345','JOSEFINA','MARIA','GOMEZ','URUETA','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','public/img/upload/thumbs/5a4c8dcdcc611a60977b8ee216cb15f1.jpg','JOSEFINA MARIA GOMEZ URUETA','DIAGONAL','CALLE DEL COMERCIO','8898','898',100000000.00,1000000.00,'EPS','S','ASAS','11111111',23,108,0,'ASDAS','ALSDJALSD'),(3,'1067846610','ERWIN','MIGUEL','GULFO','VEGA','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','public/img/upload/thumbs/716106258e71b23f81f09aaa4d9242ba.jpg','ERWINMIGUELGULFOVEGA','CALLE 36#14C21','KM 8 VIA CERETÃƒâ€°','7821637','7899105',1200000.00,500000.00,'SALUDTOTAL','S','RENAULT SYMBOL','3126247930',23,108,0,'ERMIGUVE24@HOTMAIL.COM','WWW.SOFTDESIGNERMONTERIA.NET'),(4,'1000000','JDASDKJ','JKJSKDASD','KJASDJAKJ','KJKJKJKJ','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','public/img/upload/thumbs/4f23537a11baef09f8de6a5678bd8d2a.jpg','JDASDKJJKJSKDASDKJASDJAKJKJKJKJKJ','SDFSD','SDFSD','23423','23423',234234.00,234234.00,'SDFSDF','S','SDFSDF','234234',23,108,0,'ASDASD','ASDASD');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `creditos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creditos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `empresa_id` int(11) NOT NULL,
  `clientes_id` int(11) NOT NULL,
  `solicitud_id` int(11) NOT NULL,
  `tipo_documento_id` int(11) unsigned NOT NULL,
  `prefijo` varchar(5) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `consecutivo` int(11) unsigned NOT NULL,
  `fecha_act` datetime NOT NULL,
  `fecha` date NOT NULL,
  `anulado` tinyint(1) DEFAULT '0' COMMENT 'estado de la fact. si es activa o anulada',
  `observaciones` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_cuota` date NOT NULL,
  `cuotas` int(11) unsigned DEFAULT '0',
  `valor_cuotas` double(15,2) unsigned DEFAULT '0.00',
  `total_credito` double(15,2) unsigned NOT NULL,
  `porcentaje` tinyint(4) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `numero_credito` (`prefijo`,`consecutivo`),
  KEY `clientes_id` (`solicitud_id`),
  KEY `tipo_documento_id` (`tipo_documento_id`),
  KEY `empresa_id` (`empresa_id`),
  KEY `clientes_id_2` (`clientes_id`),
  CONSTRAINT `creditos_fk_clientes` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`id`),
  CONSTRAINT `creditos_fk_empresa` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`),
  CONSTRAINT `creditos_fk_solicitud` FOREIGN KEY (`solicitud_id`) REFERENCES `solicitud` (`id`),
  CONSTRAINT `creditos_fk_tipo_documento` FOREIGN KEY (`tipo_documento_id`) REFERENCES `tipo_documento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='TABLA DE FACTURA';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `creditos` WRITE;
/*!40000 ALTER TABLE `creditos` DISABLE KEYS */;
INSERT INTO `creditos` VALUES (26,3,2,1,10,'CRE',14,'2013-10-17 15:13:34','2013-10-17',0,NULL,'2013-10-17',10,500000.00,5000000.00,7);
/*!40000 ALTER TABLE `creditos` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cuadre_caja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuadre_caja` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_documento_id` int(11) NOT NULL,
  `prefijo` varchar(10) NOT NULL DEFAULT '',
  `consecutivo` int(11) NOT NULL,
  `turnos_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `fecha_act` datetime NOT NULL,
  `valor_caja_defecto` double(15,2) DEFAULT '0.00',
  `deposito_caja` double(15,2) NOT NULL DEFAULT '0.00',
  `total_ingresos` double(15,2) DEFAULT '0.00',
  `total_egresos` double(15,2) DEFAULT '0.00',
  `diferencia` double(15,2) DEFAULT '0.00',
  `visto_bueno` tinyint(1) NOT NULL DEFAULT '0',
  `anulado` tinyint(1) NOT NULL DEFAULT '0',
  `empleado_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cuadre_caja` WRITE;
/*!40000 ALTER TABLE `cuadre_caja` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuadre_caja` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cuadro_dialogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuadro_dialogo` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL DEFAULT '',
  `tittle` varchar(100) NOT NULL DEFAULT '',
  `ancho` varchar(20) NOT NULL DEFAULT '',
  `alto` varchar(20) NOT NULL DEFAULT '',
  `div_id` varchar(20) NOT NULL DEFAULT '',
  `controlador` varchar(50) DEFAULT '',
  `opcion` varchar(50) NOT NULL DEFAULT '',
  `valor` varchar(50) DEFAULT '',
  `opcion2` varchar(50) DEFAULT '',
  `valor2` varchar(50) DEFAULT '',
  `opcion_validar` varchar(50) DEFAULT '',
  `valor_validar` varchar(20) NOT NULL DEFAULT '',
  `mensaje_error` varchar(100) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cuadro_dialogo` WRITE;
/*!40000 ALTER TABLE `cuadro_dialogo` DISABLE KEYS */;
INSERT INTO `cuadro_dialogo` VALUES (2,'mensajes','Mensajes del Sistema','300','300','mensajes','','','','','','','',''),(3,'departamentos','Departamentos','400','500','departamentos','departamentos','departamento','departamentos_id','','','','',''),(4,'municipios','Municipios','400','500','municipios','municipios','municipio','municipios_id','','','departamentos_id','','Escoja un departamento'),(5,'clientes','Clientes','600','400','clientes','clientes','razon_social','clientes_id','','','','','NINGUNO'),(6,'deudores','Deudores','600','400','deudores','deudores','deudores','deudores_id','','','','','NINGUNO'),(7,'deudores2','Deudores2','600','400','deudores2','deudores','deudores2','deudores2_id','','','','','NINGUNO'),(8,'deudores3','Deudores3','600','400','deudores3','deudores','deudores3','deudores3_id','','','','','NINGUNO'),(9,'solicitud','Solicitudes de Clientes','600','600','solicitud','solicitud','solicitud','solicitud_id',NULL,NULL,'clientes_id',' ','Escoja Un Cliente Primero'),(10,'camara','camara','700','500','camara','','','','1','1','1','1',NULL),(11,'imagen','Escoja una Imagen','400','400','imagen','','','','','','','',''),(12,'detalle_cxc','Detalle cxc','600','600','detalle_cxc','detalle_cxc','detalle_cxc','detalle_cxc_id','','','clientes_id','clientes_id','Ojo escoja un cliente'),(13,'creditos','creditos','600','600','creditos','creditos','creditos','creditos_id','','','clientes_id','clientes_id','Ojo Escoja un Cliente'),(14,'empledo','Empleado','600','600','empleado','empleado','empleado','empleado_id','0','0','','',''),(15,'huella','huella','620','500','huellas','huellas','','','','','','',''),(16,'centro_produccion','Centro Produccion','600','600','centro_produccion','centro_produccion','centro_produccion','centro_produccion_id','','','','','');
/*!40000 ALTER TABLE `cuadro_dialogo` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cxc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cxc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creditos_id` int(11) unsigned NOT NULL,
  `prefijo` varchar(5) NOT NULL DEFAULT '',
  `consecutivo` int(11) unsigned zerofill NOT NULL,
  `tipo_documento_id` int(11) unsigned NOT NULL,
  `fecha` date DEFAULT NULL,
  `valor_total` double(15,2) NOT NULL DEFAULT '0.00',
  `pagado` double(15,2) DEFAULT '0.00',
  `anulado` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tipo_documento_id` (`tipo_documento_id`),
  KEY `creditos_id` (`creditos_id`),
  CONSTRAINT `cxc_fk_creditos` FOREIGN KEY (`creditos_id`) REFERENCES `creditos` (`id`),
  CONSTRAINT `cxc_fk_tipo_documento` FOREIGN KEY (`tipo_documento_id`) REFERENCES `tipo_documento` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='TABLA DE ESTADO CUENTA CLIENTE';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cxc` WRITE;
/*!40000 ALTER TABLE `cxc` DISABLE KEYS */;
/*!40000 ALTER TABLE `cxc` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cxc_cuadre_caja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cxc_cuadre_caja` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cxc_id` int(11) DEFAULT NULL,
  `cuadre_caja_id` int(11) DEFAULT NULL,
  `anulado` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cxc_cuadrecaja` (`cxc_id`,`cuadre_caja_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cxc_cuadre_caja` WRITE;
/*!40000 ALTER TABLE `cxc_cuadre_caja` DISABLE KEYS */;
/*!40000 ALTER TABLE `cxc_cuadre_caja` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cxp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cxp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_documento_id` int(11) NOT NULL,
  `prefijo` varchar(5) NOT NULL DEFAULT '',
  `consecutivo` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `vencimiento` date NOT NULL,
  `total_compra` double(15,2) NOT NULL DEFAULT '0.00',
  `creditos` double(15,2) DEFAULT '0.00',
  `debitos` double(15,2) DEFAULT '0.00',
  `total_pagado` double(15,2) DEFAULT '0.00',
  `anulado` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='TABLA DE ESTADO CUENTA PROVEEDORES';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cxp` WRITE;
/*!40000 ALTER TABLE `cxp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cxp` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamentos` (
  `id` int(2) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `departamento` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=496 COMMENT='TABLA DEPARTAMENTOS';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` VALUES (05,'ANTIOQUIA'),(08,'ATLANTICO'),(11,'BOGOTA D.C.'),(13,'BOLIVAR'),(15,'BOYACA'),(17,'CALDAS'),(18,'CAQUETA'),(19,'CAUCA'),(20,'CESAR'),(23,'CORDOBA'),(25,'CUNDINAMARCA'),(27,'CHOCO'),(41,'HUILA'),(44,'LA GUAJIRA'),(47,'MAGDALENA'),(50,'META'),(52,'NARI?O'),(54,'NORTE DE SANTANDER'),(63,'QUINDIO'),(66,'RISARALDA'),(68,'SANTANDER'),(70,'SUCRE'),(73,'TOLIMA'),(76,'VALLE'),(81,'ARAUCA'),(85,'CASANARE'),(86,'PUTUMAYO'),(88,'SAN ANDRES ISLAS'),(91,'AMAZONAS'),(94,'GUAINIA'),(95,'GUAVIARE'),(97,'VAUPES'),(99,'VICHADA');
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `detalle_consecutivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_consecutivos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `prefijo` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `desde` int(11) NOT NULL,
  `hasta` int(11) NOT NULL,
  `resolucion_dian` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  `tipo_documento_id` int(11) unsigned NOT NULL,
  `empresa_id` int(11) NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tipo_documento_id` (`tipo_documento_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AVG_ROW_LENGTH=16384 COMMENT='DETALLE DE TODOS LOS CONSECUTIVOS';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `detalle_consecutivos` WRITE;
/*!40000 ALTER TABLE `detalle_consecutivos` DISABLE KEYS */;
INSERT INTO `detalle_consecutivos` VALUES (1,'COMPRA',1,2147483647,NULL,'2012-10-11',0,1,3,'COMPRAS DE MERCANCIAS'),(2,'ENT',485,2147483647,NULL,'2012-10-21',0,2,3,'ENTRADAS ESPECIALES'),(3,'PED',2578,2147483647,NULL,'2012-10-24',0,3,3,'PEIDOS DE CLIENTES'),(4,'EG',1,2147483647,NULL,'2012-11-07',0,4,3,'EGRESOS'),(5,'SAL',1,2147483647,NULL,'2012-11-13',0,5,3,'CONSECUTIVOS SALIDAS ESPECIALES'),(6,'REC',6,2147483647,NULL,'2012-11-18',0,6,3,'CONSECUTIVOS RECIBOS DE CAJA'),(7,'CCAJA',57,2147483647,NULL,'2012-11-30',0,7,3,'CONSECUTIVOS CUADRE DE CAJA'),(8,'TR',1,2147483647,NULL,'2013-01-27',0,8,3,'CONSECUTIVO DE TRASLADOS DE BODEGA'),(9,'SOL',13,2147483647,NULL,'2013-09-22',0,9,3,'CONSECUTIVOS DE NUEVAS SOLICITUDES'),(10,'CRE',15,2147483647,NULL,'2013-01-01',0,10,3,'CONSECUTIVOS CREDITOS');
/*!40000 ALTER TABLE `detalle_consecutivos` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `detalle_creditos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_creditos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `creditos_id` int(10) unsigned NOT NULL,
  `codigo` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `valor` double(15,2) DEFAULT NULL,
  `vencimiento` date NOT NULL,
  `multiplicar` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `anulado` tinyint(1) DEFAULT '0',
  `financiacion` double(15,2) NOT NULL DEFAULT '0.00',
  `capital` double(15,2) NOT NULL DEFAULT '0.00',
  `iva` double(15,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `creditos_id` (`creditos_id`),
  CONSTRAINT `detalle_creditos_fk_creditos` FOREIGN KEY (`creditos_id`) REFERENCES `creditos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='TABLA DETALLE FACTURA';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `detalle_creditos` WRITE;
/*!40000 ALTER TABLE `detalle_creditos` DISABLE KEYS */;
INSERT INTO `detalle_creditos` VALUES (131,26,'1',500000.00,'2013-11-17',1,0,0.00,0.00,0.00),(132,26,'4',500000.00,'2014-02-17',1,0,0.00,0.00,0.00),(133,26,'5',500000.00,'2014-03-17',1,0,0.00,0.00,0.00),(134,26,'6',500000.00,'2014-04-17',1,0,0.00,0.00,0.00),(135,26,'2',500000.00,'2013-12-17',1,0,0.00,0.00,0.00),(136,26,'3',500000.00,'2014-01-17',1,0,0.00,0.00,0.00),(137,26,'7',500000.00,'2014-05-17',1,0,0.00,0.00,0.00),(138,26,'8',500000.00,'2014-06-17',1,0,0.00,0.00,0.00),(139,26,'9',500000.00,'2014-07-17',1,0,0.00,0.00,0.00),(140,26,'10',500000.00,'2014-08-17',1,0,0.00,0.00,0.00);
/*!40000 ALTER TABLE `detalle_creditos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `detalle_creditos_after_ins_tr` AFTER INSERT ON `detalle_creditos`
 FOR EACH ROW BEGIN

    DECLARE cont integer default 0;
	DECLARE pcreditos_id integer;
    DECLARE pempresa_id integer;
    DECLARE pclientes_id integer;
    DECLARE ptipo_documento_id integer;
    DECLARE pprefijo varchar(5);
    DECLARE pconsecutivo integer;
    DECLARE pfecha DATE;
    DECLARE pvencimiento DATE;
	DECLARE pfechaact DATE;
    DECLARE done INTEGER default 0;
    DECLARE cur1 CURSOR FOR 
    			SELECT id, empresa_id, clientes_id,
                       fecha,tipo_documento_id,
                       prefijo,consecutivo
                       
                       	FROM 
                       		creditos 
                       where id = NEW.creditos_id
                             and anulado = 0;
                             
    DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;
    
    open cur1;
    
    	REPEAT
	        FETCH cur1 into pcreditos_id,pempresa_id,pclientes_id,pfecha,ptipo_documento_id,pprefijo,pconsecutivo;
	    UNTIL done END REPEAT;
    close cur1;
    
		INSERT INTO detalle_cxc (
			idt,creditos_id,prefijo,consecutivo,vencimiento,codigo,tipo_documento_id,valor,anulado,multiplicar) 
		VALUE (
        	NEW.id,pcreditos_id,pprefijo,pconsecutivo,NEW.vencimiento,NEW.codigo,ptipo_documento_id,NEW.valor,0,1);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `detalle_creditos_after_upd_tr` AFTER UPDATE ON `detalle_creditos`
 FOR EACH ROW BEGIN

    DECLARE cont integer default 0;
	DECLARE pcreditos_id integer;
    DECLARE pempresa_id integer;
    DECLARE pclientes_id integer;
    DECLARE ptipo_documento_id integer;
    DECLARE pprefijo VARCHAR(5);
    DECLARE pconsecutivo integer;
    DECLARE pfecha DATE;
    DECLARE pvencimiento DATE;
	DECLARE pfechaact DATE;
    DECLARE done INTEGER default 0;
    DECLARE cur1 CURSOR FOR 
    			SELECT id,
                       empresa_id,
                       clientes_id,
                       fecha,
                       tipo_documento_id,
                       prefijo,
                       consecutivo
                       
                       	FROM 
                       		creditos 
                       where id = NEW.creditos_id
                             and anulado = 0;
                             
    DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;
    
    open cur1;
    
    	REPEAT
	        FETCH cur1 into pcreditos_id,pempresa_id,pclientes_id,
            			pfecha,
                        ptipo_documento_id,
                       	pprefijo,
                        pconsecutivo;
	    UNTIL done END REPEAT;
    close cur1;
    	
    	UPDATE 
  			detalle_cxc  
		SET 
		  idt               = NEW.id,
          creditos_id       = pcreditos_id,
		  prefijo           = pprefijo,
		  consecutivo       = pconsecutivo,
		  vencimiento       = new.vencimiento,
		  codigo            = NEW.codigo,
		  tipo_documento_id = ptipo_documento_id,
		  valor             = NEW.valor,
		  anulado           = NEW.anulado,
		  multiplicar       = NEW.multiplicar
		WHERE 
		  idt = NEW.id
          and creditos_id       = pcreditos_id
		  and prefijo           = pprefijo
		  and consecutivo       = pconsecutivo
          and tipo_documento_id = ptipo_documento_id
          and anulado           = 0 
 		;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
DROP TABLE IF EXISTS `detalle_cxc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_cxc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creditos_id` int(11) unsigned NOT NULL,
  `idt` int(11) unsigned NOT NULL,
  `prefijo` varchar(5) NOT NULL DEFAULT '',
  `consecutivo` int(11) unsigned NOT NULL,
  `vencimiento` date NOT NULL,
  `codigo` varchar(50) NOT NULL DEFAULT '',
  `tipo_documento_id` int(11) unsigned NOT NULL,
  `valor` double(15,2) NOT NULL DEFAULT '0.00',
  `anulado` tinyint(4) NOT NULL DEFAULT '0',
  `multiplicar` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `creditos_id` (`creditos_id`),
  KEY `tipo_documento_id` (`tipo_documento_id`),
  CONSTRAINT `detalle_cxc_fk_creditos` FOREIGN KEY (`creditos_id`) REFERENCES `creditos` (`id`),
  CONSTRAINT `detalle_cxc_fk_tipo_documento` FOREIGN KEY (`tipo_documento_id`) REFERENCES `tipo_documento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `detalle_cxc` WRITE;
/*!40000 ALTER TABLE `detalle_cxc` DISABLE KEYS */;
INSERT INTO `detalle_cxc` VALUES (108,26,131,'CRE',14,'2013-11-17','1',10,500000.00,0,1),(109,26,132,'CRE',14,'2014-02-17','4',10,500000.00,0,1),(110,26,133,'CRE',14,'2014-03-17','5',10,500000.00,0,1),(111,26,134,'CRE',14,'2014-04-17','6',10,500000.00,0,1),(112,26,135,'CRE',14,'2013-12-17','2',10,500000.00,0,1),(113,26,136,'CRE',14,'2014-01-17','3',10,500000.00,0,1),(114,26,137,'CRE',14,'2014-05-17','7',10,500000.00,0,1),(115,26,138,'CRE',14,'2014-06-17','8',10,500000.00,0,1),(116,26,139,'CRE',14,'2014-07-17','9',10,500000.00,0,1),(117,26,140,'CRE',14,'2014-08-17','10',10,500000.00,0,1),(118,26,108,'REC',3,'2013-10-17','1',6,500000.00,0,-1),(119,26,112,'REC',4,'2013-10-17','2',6,500000.00,0,-1),(120,26,113,'REC',4,'2013-10-17','3',6,500000.00,0,-1),(121,26,109,'REC',4,'2013-10-17','4',6,500000.00,0,-1),(122,26,110,'REC',4,'2013-10-17','5',6,500000.00,0,-1),(123,26,111,'REC',4,'2013-10-17','6',6,500000.00,0,-1),(124,26,114,'REC',5,'2013-10-17','7',6,500000.00,0,-1),(125,26,115,'REC',5,'2013-10-17','8',6,500000.00,0,-1),(126,26,116,'REC',5,'2013-10-17','9',6,500000.00,0,-1),(127,26,117,'REC',5,'2013-10-17','10',6,500000.00,0,-1);
/*!40000 ALTER TABLE `detalle_cxc` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `detalle_cxc_after_ins_tr` AFTER INSERT ON `detalle_cxc`
 FOR EACH ROW BEGIN

    DECLARE cont integer default 0;
	DECLARE pcreditos_id integer;
    DECLARE pempresa_id integer;
    DECLARE pclientes_id integer;
    DECLARE pfecha DATE;
    DECLARE pvencimiento DATE;
	DECLARE pfechaact DATE;
    DECLARE pvalor_total numeric;
    DECLARE done INTEGER default 0;
    DECLARE cur1 CURSOR FOR 
    			SELECT id,
                       empresa_id,
                       clientes_id,
                       fecha,
                       total_credito
                       	FROM 
                       		creditos 
                       where id = NEW.creditos_id
                             and anulado = 0;
                             
    DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;
    
    open cur1;
    
    	REPEAT
	        FETCH cur1 into pcreditos_id,pempresa_id,pclientes_id,pfecha,pvalor_total;
	    UNTIL done END REPEAT;
    close cur1;
		


        
   SELECT count(*) into cont 
   			from cxc 
   where creditos_id   =  NEW.creditos_id  
           and anulado = '0';    
   
   if cont = 0 then
   	
     INSERT INTO  cxc (
		  creditos_id,prefijo,consecutivo,tipo_documento_id,fecha,valor_total,pagado,anulado) 
	 VALUE (NEW.creditos_id,NEW.prefijo,NEW.consecutivo,NEW.tipo_documento_id,pfecha,pvalor_total,0,0);   		
  
    ELSE
        
    
    	UPDATE cxc set 
        		valor_total = ifnull((select sum(valor*multiplicar) 
                                		from detalle_cxc 
                                    where anulado = 0 
							        	  and creditos_id  = NEW.creditos_id 
                                          and multiplicar = 1
				              ),0)  ,
                pagado = ifnull((select sum(valor*multiplicar) 
                                		from detalle_cxc 
                                    where anulado = 0 
							        	  and creditos_id  = NEW.creditos_id 
                                          and multiplicar = -1
                                          
				              )  ,0)              
        where anulado = 0 
        	and creditos_id  = NEW.creditos_id 
        ;
        
     
    
    end if;
    


END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `detalle_cxc_after_upd_tr` AFTER UPDATE ON `detalle_cxc`
 FOR EACH ROW BEGIN

    DECLARE cont integer default 0;
	DECLARE pcreditos_id integer;
    DECLARE pempresa_id integer;
    DECLARE pclientes_id integer;
    DECLARE pfecha DATE;
    DECLARE pvencimiento DATE;
	DECLARE pfechaact DATE;
    DECLARE done INTEGER default 0;
    DECLARE cur1 CURSOR FOR 
    			SELECT id,
                       empresa_id,
                       clientes_id,
                       fecha
                       	FROM 
                       		creditos 
                       where id = NEW.creditos_id
                       		 and anulado = 0;
                             
    DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;
    
    open cur1;
    
    	REPEAT
	        FETCH cur1 into pcreditos_id,pempresa_id,pclientes_id,pfecha;
	    UNTIL done END REPEAT;
    close cur1;
		


        
   SELECT count(*) into cont 
   			from cxc 
   where   creditos_id = NEW.creditos_id
           and anulado = '0';    
   
   if cont = 0 then
   	
     INSERT INTO  cxc (
		  prefijo,consecutivo,tipo_documento_id,fecha,valor_total,pagado,anulado) 
	 VALUE (NEW.prefijo,NEW.consecutivo,NEW.tipo_documento_id,pfecha,NEW.valor,0,0);   		
  
    ELSE
        	
    	UPDATE cxc set 
        		valor_total = ifnull((
                				select sum(valor*multiplicar) 
                                	from detalle_cxc 
                                    where anulado = 0 
							        	and creditos_id  = NEW.creditos_id 
							            and multiplicar = 1
                                ),0) ,
                 pagado = ifnull( (
                				select sum(valor*multiplicar) 
                                	from detalle_cxc 
                                    where anulado = 0 
							        	and creditos_id  = NEW.creditos_id 
							            and multiplicar = -1
							 )  ,0)                     
        where anulado = 0 
        	and creditos_id  = NEW.creditos_id 
        ;    
    end if;
    


END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
DROP TABLE IF EXISTS `detalle_egresos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_egresos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `egresos_id` int(11) NOT NULL,
  `cxp_id` int(11) NOT NULL,
  `total` double(15,2) NOT NULL DEFAULT '0.00',
  `conceptos_id` int(11) DEFAULT NULL,
  `concepto` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'sin concepto digitado',
  `anulado` tinyint(1) NOT NULL DEFAULT '0',
  `multiplica` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `egresos_id` (`egresos_id`),
  CONSTRAINT `detalle_egresos_fk` FOREIGN KEY (`egresos_id`) REFERENCES `egresos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='TABLA DE DETALLE EGRESOS';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `detalle_egresos` WRITE;
/*!40000 ALTER TABLE `detalle_egresos` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_egresos` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `detalle_notas_credito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_notas_credito` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `notas_credito_id` int(11) unsigned NOT NULL DEFAULT '0',
  `codigo` varchar(10) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `vencimiento` date NOT NULL,
  `detalle_cxc_id` int(11) unsigned NOT NULL,
  `valor` double(15,2) NOT NULL DEFAULT '0.00',
  `multiplicar` tinyint(4) DEFAULT '1',
  `anulado` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `entradas_especiales_id` (`notas_credito_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='TABLA DE ENTRADAS ENTRADAS ';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `detalle_notas_credito` WRITE;
/*!40000 ALTER TABLE `detalle_notas_credito` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_notas_credito` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `notas_credito_after_ins_tr` AFTER INSERT ON `detalle_notas_credito` FOR EACH ROW BEGIN

    DECLARE cont integer default 0;
	DECLARE pcreditos_id integer;
    DECLARE pempresa_id integer;
    DECLARE pclientes_id integer;
    DECLARE ptipo_documento_id integer;
    DECLARE pprefijo varchar(5);
    DECLARE pconsecutivo integer;
    DECLARE pfecha DATE;
    DECLARE pvencimiento DATE;
	DECLARE pfechaact DATE;
    DECLARE done INTEGER default 0;
    DECLARE cur1 CURSOR FOR 
    			SELECT creditos_id, empresa_id, clientes_id,
                       fecha,tipo_documento_id,
                       prefijo,consecutivo
                       
                       	FROM 
                       		notas_credito 
                       where id = NEW.notas_credito_id
                             and anulado = 0;
                             
    DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;
    
    open cur1;
    
    	REPEAT
	        FETCH cur1 into pcreditos_id,pempresa_id,pclientes_id,pfecha,ptipo_documento_id,pprefijo,pconsecutivo;
	    UNTIL done END REPEAT;
    close cur1;
    
		INSERT INTO detalle_cxc (
			idt,creditos_id,prefijo,consecutivo,vencimiento,codigo,tipo_documento_id,valor,anulado,multiplicar) 
		VALUE (
        	NEW.id,pcreditos_id,pprefijo,pconsecutivo,NEW.vencimiento,NEW.codigo,ptipo_documento_id,NEW.valor,0,-1);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `notas_credito_after_upd_tr` AFTER UPDATE ON `detalle_notas_credito`
 FOR EACH ROW BEGIN

    DECLARE cont integer default 0;
	DECLARE pcreditos_id integer;
    DECLARE pempresa_id integer;
    DECLARE pclientes_id integer;
    DECLARE ptipo_documento_id integer;
    DECLARE pprefijo VARCHAR(5);
    DECLARE pconsecutivo integer;
    DECLARE pfecha DATE;
    DECLARE pvencimiento DATE;
	DECLARE pfechaact DATE;
    DECLARE done INTEGER default 0;
    DECLARE cur1 CURSOR FOR 
    			SELECT creditos_id,
                       empresa_id,
                       clientes_id,
                       fecha,
                       tipo_documento_id,
                       prefijo,
                       consecutivo
                       	FROM 
                       		notas_credito 
                       where id = NEW.notas_credito_id
                             and anulado = 0;
                             
    DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;
    
    open cur1;
    
    	REPEAT
	        FETCH cur1 into pcreditos_id,pempresa_id,pclientes_id,
            			pfecha,
                        ptipo_documento_id,
                       	pprefijo,
                        pconsecutivo;
	    UNTIL done END REPEAT;
    close cur1;
    	
    	UPDATE 
  			detalle_cxc  
		SET 
		  idt               = NEW.id,
          creditos_id       = pcreditos_id,
		  prefijo           = pprefijo,
		  consecutivo       = pconsecutivo,
		  vencimiento       = new.vencimiento,
		  codigo            = NEW.codigo,
		  tipo_documento_id = ptipo_documento_id,
		  valor             = NEW.valor,
		  anulado           = NEW.anulado,
		  multiplicar       = NEW.multiplicar
		WHERE 
		  idt = NEW.id
          and creditos_id       = pcreditos_id
          and tipo_documento_id = ptipo_documento_id
          and prefijo = pprefijo
          and consecutivo = pconsecutivo
          and anulado = 0
 		;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
DROP TABLE IF EXISTS `detalle_notas_debito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_notas_debito` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `notas_debito_id` int(11) unsigned NOT NULL DEFAULT '0',
  `codigo` varchar(10) NOT NULL,
  `vencimiento` date NOT NULL,
  `valor` double(15,2) NOT NULL DEFAULT '0.00',
  `anulado` tinyint(4) NOT NULL DEFAULT '0',
  `multiplicar` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `notas_debito_id` (`notas_debito_id`),
  CONSTRAINT `detalle_notas_debito_ibfk_1` FOREIGN KEY (`notas_debito_id`) REFERENCES `notas_debito` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='TABLA DE DETALLE SALIDAS ESPECIALES';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `detalle_notas_debito` WRITE;
/*!40000 ALTER TABLE `detalle_notas_debito` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_notas_debito` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `detalle_notas_debito_after_insert_tr` AFTER INSERT ON `detalle_notas_debito`
 FOR EACH ROW BEGIN

    DECLARE cont integer default 0;
	DECLARE pcreditos_id integer;
    DECLARE pempresa_id integer;
    DECLARE pclientes_id integer;
    DECLARE ptipo_documento_id integer;
    DECLARE pprefijo varchar(5);
    DECLARE pconsecutivo integer;
    DECLARE pfecha DATE;
    DECLARE pvencimiento DATE;
	DECLARE pfechaact DATE;
    DECLARE done INTEGER default 0;
    DECLARE cur1 CURSOR FOR 
    			SELECT creditos_id, empresa_id, clientes_id,
                       fecha,tipo_documento_id,
                       prefijo,consecutivo
                       
                       	FROM 
                       		notas_debito 
                       where id = NEW.notas_debito_id
                             and anulado = 0;
                             
    DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;
    
    open cur1;
    
    	REPEAT
	        FETCH cur1 into pcreditos_id,pempresa_id,pclientes_id,pfecha,ptipo_documento_id,pprefijo,pconsecutivo;
	    UNTIL done END REPEAT;
    close cur1;
    
		INSERT INTO detalle_cxc (
			idt,creditos_id,prefijo,consecutivo,vencimiento,codigo,tipo_documento_id,valor,anulado,multiplicar) 
		VALUE (
        	NEW.id,pcreditos_id,pprefijo,pconsecutivo,NEW.vencimiento,NEW.codigo,ptipo_documento_id,NEW.valor,0,1);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `detalle_notas_debito_after_update_tr` AFTER UPDATE ON `detalle_notas_debito` FOR EACH ROW BEGIN

    DECLARE cont integer default 0;
	DECLARE pcreditos_id integer;
    DECLARE pempresa_id integer;
    DECLARE pclientes_id integer;
    DECLARE ptipo_documento_id integer;
    DECLARE pprefijo VARCHAR(5);
    DECLARE pconsecutivo integer;
    DECLARE pfecha DATE;
    DECLARE pvencimiento DATE;
	DECLARE pfechaact DATE;
    DECLARE done INTEGER default 0;
    DECLARE cur1 CURSOR FOR 
    			SELECT creditos_id,
                       empresa_id,
                       clientes_id,
                       fecha,
                       tipo_documento_id,
                       prefijo,
                       consecutivo
                       	FROM 
                       		notas_debito 
                       where id = NEW.notas_debito_id
                             and anulado = 0;
                             
    DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;
    
    open cur1;
    
    	REPEAT
	        FETCH cur1 into pcreditos_id,pempresa_id,pclientes_id,
            			pfecha,
                        ptipo_documento_id,
                       	pprefijo,
                        pconsecutivo;
	    UNTIL done END REPEAT;
    close cur1;
    	
    	UPDATE 
  			detalle_cxc  
		SET 
		  idt               = NEW.id,
          creditos_id       = pcreditos_id,
		  prefijo           = pprefijo,
		  consecutivo       = pconsecutivo,
		  vencimiento       = new.vencimiento,
		  codigo            = NEW.codigo,
		  tipo_documento_id = ptipo_documento_id,
		  valor             = NEW.valor,
		  anulado           = NEW.anulado,
		  multiplicar       = NEW.multiplicar
		WHERE 
		  idt = NEW.id
          and creditos_id       = pcreditos_id
          and tipo_documento_id = ptipo_documento_id
          and prefijo = pprefijo
          and consecutivo = pconsecutivo
          and anulado = 0
 		;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
DROP TABLE IF EXISTS `detalle_recibos_caja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_recibos_caja` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `detalle_cxc_id` int(11) unsigned DEFAULT '0',
  `codigo` varchar(10) NOT NULL,
  `vencimiento` date NOT NULL,
  `recibos_caja_id` int(11) unsigned NOT NULL DEFAULT '0',
  `descripcion` varchar(200) DEFAULT NULL,
  `valor` double(15,3) unsigned NOT NULL DEFAULT '0.000',
  `descuento` double(15,2) NOT NULL DEFAULT '0.00',
  `anulado` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `recibos_caja_id` (`recibos_caja_id`),
  CONSTRAINT `detalle_recibos_caja_fk_recibos_caja` FOREIGN KEY (`recibos_caja_id`) REFERENCES `recibos_caja` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=5461 COMMENT='TABLA DE DETALLE RECIBOS DE CAJA';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `detalle_recibos_caja` WRITE;
/*!40000 ALTER TABLE `detalle_recibos_caja` DISABLE KEYS */;
INSERT INTO `detalle_recibos_caja` VALUES (1,108,'','0000-00-00',5,'CANCELACION CUOTA CREDITO : 108-CRE14-1',500000.000,0.00,0),(2,112,'','0000-00-00',6,'CANCELACION CUOTA CREDITO : 112-CRE14-2',500000.000,0.00,0),(3,113,'','0000-00-00',6,'CANCELACION CUOTA CREDITO : 113-CRE14-3',500000.000,0.00,0),(4,109,'','0000-00-00',6,'CANCELACION CUOTA CREDITO : 109-CRE14-4',500000.000,0.00,0),(5,110,'','0000-00-00',6,'CANCELACION CUOTA CREDITO : 110-CRE14-5',500000.000,0.00,0),(6,111,'','0000-00-00',6,'CANCELACION CUOTA CREDITO : 111-CRE14-6',500000.000,0.00,0),(7,114,'','0000-00-00',7,'CANCELACION CUOTA CREDITO : 114-CRE14-7',500000.000,0.00,0),(8,115,'','0000-00-00',7,'CANCELACION CUOTA CREDITO : 115-CRE14-8',500000.000,0.00,0),(9,116,'','0000-00-00',7,'CANCELACION CUOTA CREDITO : 116-CRE14-9',500000.000,0.00,0),(10,117,'','0000-00-00',7,'CANCELACION CUOTA CREDITO : 117-CRE14-10',500000.000,0.00,0);
/*!40000 ALTER TABLE `detalle_recibos_caja` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `recibos_caja_after_ins_tr` AFTER INSERT ON `detalle_recibos_caja`
 FOR EACH ROW BEGIN

    DECLARE cont integer default 0;
	DECLARE pcreditos_id integer;
    DECLARE pidt integer;
    DECLARE pidcaja integer;
    DECLARE pempresa_id integer;
    DECLARE pclientes_id integer;
    DECLARE ptipo_documento_id integer;
    DECLARE pprefijo varchar(5);
    DECLARE pconsecutivo integer;
    DECLARE pfecha DATE;
    DECLARE pvencimiento DATE;
    DECLARE pcodigo varchar(50);
	DECLARE pfechaact DATE;
    DECLARE done INTEGER default 0;
    DECLARE cur1 CURSOR FOR 
    			SELECT  id, empresa_id, clientes_id,
                        fecha,tipo_documento_id,
                        prefijo,consecutivo
                       	FROM 
                       		recibos_caja 
                       where id = NEW.recibos_caja_id
                             and anulado = 0;
     DECLARE cur2 CURSOR FOR 
    			SELECT  vencimiento,codigo,creditos_id
                       	FROM 
                       		detalle_cxc 
                       where id = NEW.detalle_cxc_id
                             and anulado = 0;
                                                      
    DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;
    
    open cur1;
    
    	REPEAT
	        FETCH cur1 into pidcaja,pempresa_id,pclientes_id,pfecha,ptipo_documento_id,pprefijo,pconsecutivo;
	    UNTIL done END REPEAT;
        
    close cur1;
    
    open cur2;
    
    	REPEAT
	        FETCH cur2 into pvencimiento,pcodigo,pcreditos_id;
	    UNTIL done END REPEAT;
        
    close cur2;
    
	if NEW.detalle_cxc_id!='' and NEW.detalle_cxc_id!='0' then    
		INSERT INTO detalle_cxc (
			idt,creditos_id,prefijo,consecutivo,vencimiento,codigo,tipo_documento_id,valor,anulado,multiplicar) 
		VALUE (
        	NEW.id,pcreditos_id,pprefijo,pconsecutivo,pfecha,pcodigo,ptipo_documento_id,NEW.valor,0,-1);
	end if;	
        
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `recibos_caja_after_upd_tr` AFTER UPDATE ON `detalle_recibos_caja`
 FOR EACH ROW BEGIN

    DECLARE cont integer default 0;
	DECLARE pcreditos_id integer;
    DECLARE pidt integer;
    DECLARE pempresa_id integer;
    DECLARE pclientes_id integer;
    DECLARE ptipo_documento_id integer;
    DECLARE pprefijo varchar(5);
    DECLARE pconsecutivo integer;
    DECLARE pfecha DATE;
    DECLARE pvencimiento DATE;
    DECLARE pcodigo varchar(50);
	DECLARE pfechaact DATE;
    DECLARE done INTEGER default 0;
    DECLARE cur1 CURSOR FOR 
    			SELECT  creditos_id, empresa_id, clientes_id,
                        fecha,tipo_documento_id,
                        prefijo,consecutivo
                       	FROM 
                       		recibos_caja 
                       where id = NEW.recibos_caja_id
                             and anulado = 0;
     DECLARE cur2 CURSOR FOR 
    			SELECT  id,vencimiento,codigo,creditos_id
                       	FROM 
                       		detalle_cxc 
                       where id = NEW.detalle_cxc_id
                             and anulado = 0;
                                                      
    DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;
    
    open cur1;
    
    	REPEAT
	        FETCH cur1 into pcreditos_id,pempresa_id,pclientes_id,pfecha,ptipo_documento_id,pprefijo,pconsecutivo;
	    UNTIL done END REPEAT;
        
    close cur1;
    
    open cur2;
    
    	REPEAT
	        FETCH cur2 into pidt,pvencimiento,pcodigo,pcreditos_id;
	    UNTIL done END REPEAT;
        
    close cur2;
    
    if NEW.detalle_cxc_id != '' and NEW.detalle_cxc_id != '0' then
   			 UPDATE 	
             		detalle_cxc   
				SET prefijo         = pprefijo,
           		  creditos_id       = pcreditos_id,
                  consecutivo       = pconsecutivo,
          		  vencimiento       = pfecha,
          		  codigo            = pcodigo,
          		  tipo_documento_id = ptipo_documento_id,
          		  valor             = NEW.valor,
          		  anulado           = NEW.anulado,
          		  multiplicar       = '-1' 
			WHERE 
 			 idt = NEW.detalle_cxc_id
             and creditos_id       = pcreditos_id
             and tipo_documento_id = ptipo_documento_id
             and prefijo = pprefijo
             and consecutivo = pconsecutivo
             and anulado = 0
			;
	end if;			
        
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
DROP TABLE IF EXISTS `deudores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deudores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nit` varchar(20) NOT NULL DEFAULT '',
  `nombre1` varchar(20) DEFAULT NULL,
  `nombre2` varchar(20) DEFAULT NULL,
  `apellido1` varchar(20) DEFAULT NULL,
  `apellido2` varchar(20) DEFAULT NULL,
  `razon_social` varchar(250) NOT NULL DEFAULT '',
  `foto` blob,
  `url` varchar(200) DEFAULT NULL,
  `direccion_casa` varchar(100) DEFAULT NULL,
  `direccion_oficina` varchar(100) DEFAULT NULL,
  `telefono1` varchar(15) NOT NULL DEFAULT '0000000',
  `telefono2` varchar(15) DEFAULT '0000000',
  `sueldo` double(15,2) NOT NULL,
  `otros_ingresos` double(15,2) NOT NULL,
  `eps` varchar(35) NOT NULL,
  `casa` varchar(1) NOT NULL,
  `vehiculos` varchar(70) NOT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `departamentos_id` int(3) NOT NULL,
  `municipios_id` int(3) unsigned DEFAULT NULL,
  `activo` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `correo` varchar(150) DEFAULT NULL,
  `web` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nit` (`nit`),
  KEY `activo` (`activo`),
  KEY `municipios_id` (`municipios_id`),
  CONSTRAINT `deudores_fk` FOREIGN KEY (`municipios_id`) REFERENCES `municipios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=5461 COMMENT='TABLA CLIENTES';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `deudores` WRITE;
/*!40000 ALTER TABLE `deudores` DISABLE KEYS */;
INSERT INTO `deudores` VALUES (1,'123','MANUELA','DEL CARMEN','BUSTAMENTE','LOPEZ','MANUELADEL CARMENBUSTAMENTELOPEZ','ÿØÿà\\0JFIF\\0\\0\\0\\0\\0\\0ÿþ\\0>CREATOR: gd-jpeg v1.0 (using IJG JPEG v62), default quality\nÿÛ\\0C\\0		\n\r\Z\Z $.\\\' \\\",#(7),01444\\\'9=82<.342ÿÛ\\0C			\r\r2!!22222222222222222222222222222222222222222222222222ÿÀ\\0à€\\\"\\0ÿÄ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0	\nÿÄ\\0µ\\0\\0\\0}\\0!1AQa\\\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\\\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\\0\\0\\0\\0\\0\\0\\0\\0	\nÿÄ\\0µ\\0\\0w\\0!1AQaq\\\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\\\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\\0\\0\\0?\\0ô<\nP9À¦þ”ðy¥c6(ç4ð)\\0§šv$P‡<ô§mB“ÚŸE„Ø\\0:ö¥Û’1ÅÐS‡^ùª±7íFxÍ/QZv´r¡]€ÁÅ8.zŽÔ´ïÖ‰\\0¼sJÐÖž0zS°˜€qžÔà¼P:{ÒŒôïE‰\\0£í@§4ÁÑÊ+‹Çÿ\\0®€@\\\'ëJ\\0§JP£¡§Ê 3OÅA^‡§j@1Óõ¦¢&8=èš{ô£ éŠ4\\\\P¼Rð?\ZL“ŒîM9E;XE8\\09Å±=úÒžAâ•„ Œã9À§Ž=JQÓñÍ;\\0˜Æ9à8ã¯uPhç zQaŽ<zSq×4gœw§u\\0úÐ ëIŒcN4©\\0Ÿ–i@£JQ@	ÞƒKÍ\\\'J.)¸£ŠÂQÆ—œó@ \\0P)™ö aøÑŠ1ÇJ1ÍaqIŠ\\\\cÖŽ(\rÏ¸¥¤NœtÍ/Rë@Þ“4î)(;ÒãŠ1ÍøÐ	\\\'QŠZ\\0&9æŒ‘Š\\\\Rô¢Â\Z3Ÿj6àqN¤&•†1‡9ô\\0O)zŽ”¸9=éØ+ùR‚sNö¤#šV\Z\ZW’E&ÑŒñÅ?¾Ô»~^h²˜ü©1ÆžFp)½ýª\\\\F0ŒdÒl¡iås@:håÆ•ãµ&Ñøö©ìi¸ÇZ,ŠCvóïÚ›ŽÀiàu÷¤+éÍ.PLaJÁñ¢ãÀž!Çý.ôSW@§N˜¬/ÿ\\0ˆ±ÛL¹ÿ\\0ÑMK”¸½JøïNõ¨×!íŠóÈ¤lÇôõâš:{Ó‡OJd¶8šPÄóÐRÑGZxè\\0 ‡J¤Í\\\'\\\"”U8c§\\\\ÒõëÏƒ¯£Þ˜˜ñKÒRŽ´8b”p0h£ŠhW´£¿­!˜$ñéEÄ?ö¥ÑïÔqNÀ8ÇAM! P94Ç¨‘ÏãLC‡”šA×šP{\Z~¢°µ/qŠAK­`ù¥é¹ç4àsš\\0Qô¥¦ã#õ§tš;¨¦ŒayçŠ\\0ÁÉ4¹ži„tç¥Ÿš†î=E\\0c4\\0…ApÝã>ÔñÈ })@#4†&hïŠZ(>´ëGáKÖ€Ù¥ïF(4;RsK@Í ÷¢ƒë@ôJ;óKÉ¥#šÂwâåKíIÒ€\Z´˜ãšÂëGlS»PEa£Þ‚0i~†s×­1X\\\\RgœRõ¤#©¤Ó¯4˜£u õ&˜âŠA@…íÖõ Š\r\\0¦%‡¥>ƒÓÞ€v¥¢ƒ@\r#¥8ô õ¢€\\0t£h4 P(çšWž)ø¤$Ð1˜=©Ä0(ÆÜâ‘ž(Ä?JiéïN<b›ž3šZCÓð¦ž@Çj\\\\÷Ï4ƒŒ’x©(õÏãX>6Àðˆ‡¦—sÿ\\0¢š·ÝöÏjÁñ·üˆ~\\\"ï2äÿ\\0ä&¤Ê‹Ô¯ëNŸþµ3ŠvpzqHØ“8#ŠPà(îE7?þª`óßµ$‘ƒ’sRÅ0Ž=iã\\0PK:RƒM§Üj‰=hx sÖ”pz\nÇ1ŠQÛ? ¤<ÒÓêHð{~4¹ééM§òŠbó@æRÇ€@éîzPqý\\0ŒŽ3ŠhW:p(Š@xúÐ}4Ä\\0’ÞÔü`óM©àfŽ(Í¨ô¥ ô^Àš^ÙƒûÓ°GQLº=hôÆ:RQJZ\\0pñš8œÒƒŽ´‡sŠ@(éƒ@\\0zÐÊ	 ‚M aÚŽÞôq×±¥ë@8Í\\0ñIÍ(àP×¥\\0ãŠ3ƒŒQÚ‹ÖŽ´r(Å!…bÓ@æ€9 Â”õæŠÔçK@cÚ‘V¨¥qGÖ@¬)3íJ\\\\Ñ@	Œõ¤)O¥Jb8¦ô?Jq£·®h\\0¢–šzýh\n^´†—éLBtéÍ- ¥¤\\0E%ƒÒ“=sÅ4u!¢ƒÅ\\0ŒQJ(ƒž(½è \\0ÒqëšZ:PgŒæ“øOj\\\\ú÷¤8Å\\0•Îœ“ÞŽùâì4œõô¦‘œ})Ç¯#Ši9ö¤RÔw¤\\\'jäþ”î¿!ô/Èh5ƒãaø‹þÁ—?ú)«xŒtëX>6ÿ\\0‘ÄGù\\\\ÿ\\0è¦¤\\\\w+fž9è?:ŒpjAŸJF¬RãÚ˜8¥Ï9ªD±êpiäàzŒ6H(<\n³S±ß¸¤éAæš!Žï‘Ö”ƒÛ§Öš>ÔàGjbê<Ö”ñQ†Áæœ·zaã¡÷§ÜŠ`äbœ)ˆpëÖ”qIè\r(<gŠ\\0íÆ>´ðzƒMÖ”diŠãñÅ\\0sÞš>ÔîWéL]Eµ8sM×ó§\\0BŠ\\0^ü:Ry4ƒ¨¥=½é€£‘N?ZhäqÇÖ—\\0ÅåÅ8dð{{Òc*sØP:\n@8y4œàgëF}ºRzP2L¸Ñ“œÑÕ‡oj\\\\ô\\0£=éIé@ëŠjAaÏn”¹£‚yúRŽÞÔÀy4ƒó¥ÑŠ@IF3Ö¡2z\n^œš_åF(\\0÷£÷£v¤RÀ¥éHF-í@&ÅÛ­i§=iOäÒž”a¸â–”Ži½¹ LZO¦)qGJ`\\\'lÒgŠSI@˜ƒÔÒô¤#ëK@‚‚i;u¥<Ð`â˜AÜâžx4S²9ëN¤\\0ÆŒó@ƒš(ëIøæ@¦‘‘Þ€Iõ Ps@Æ( \\0ÓïOúÓAÏÒ†qHrIôíKŒŽJN‡éJÀ4ô½!âœy8ÈÏZMŒfÓ»½¨ æéF2H©X¡¤õ¬ÿ\\0È…â/û\\\\ñÿ\\0lš·ûŽkÆÜøÄ_ö¹ÿ\\0ÑMHkr9õ =\\05#4ðÜv5)›±Á°9¥$“ÛŠÏANü)9}±šrƒŠhõô÷§Žë@\\\\pýiÃÚu§\rRÐ–.zö¤ ò)qŒb‚D-N\\\'\\\"š\\0iøÉ÷ !$súÔ€þ”ÁÞœ0i’?¥÷¦äv§S¸…ô¿Jhã®y§Ž¸ö¦ #¹é‘HNzqKÈhñ×Øp)ÙàŽ*!×&¤NW>¨LV	8Æ\\0¥þ4‹NÎ[¶)ˆP@\\\\PP1HGåFÞ@iŒPxëÖ€p3×š@pM(SÓñ¤ŠÈö /¯jE$Œu§“ßÒ€`œÒ‘Ç½ ÁéFrØü©QÈ¨÷÷¤=rx§w4€Lp)zŠ2Gn)h)psF:õ£ÁÇô¥Æ\r\\0üÜÐsøR(:ô té@æÇÖ€AšZ)~´J0h=i•°žÔ})hï@X@8 })xP\Z;ÑKüTg®(&ÂdfŽ´¼RPf“¿4â0i;S$O­\\\'é{sJ°˜À÷£“Jyv v\ZFzŠZ);Ð éÒ—½ ÷¥¦!´Q@„4„àÒç“oóÍ\\0(¥¢Š\\0:õ¦ÓºÒt ÎJC’~”£¦iG\\\"çš^1ÓéGñqØPé@ÄïHxÎœxÆ’GãHcHŠçüj?âƒñÿ\\0¨]×þŠjè!ˆ==«Æßò!xŒúéw_ú)ªKŽèÏ”z•\\0~¼;Ó’LŒæ¦æåÀ`3Rê?:‰pÀŠ\\0*ˆd‹ŒsOŽ•HE86HÉ D‚”jh9Ï4áùS¹\rŠM.3ÈíMëJ\\\\ý?:_N4ƒ§j\\0\\\'šbcÎ:w¥$…8\n0;f1n1úT€žã¥0.=©Û±@‡à\Z\\\\óÏ\\\"¢,\\0µ7Ì\\0õ¦…briC„UO3äñA”Ö›‹dútïR+™æ³Äøã4á>Þýé\\\\v4ƒßŠvEg‹¬9ëS-Òð1MH,\\\\Ž1G~ùªÉpHëÅJdR¿xdP$J0	õÅ(À½FßÞœWµ0ÔzœN<ƒëMAœË@2x¥#H0){\n@( àÑüèïéGQHbŠ84j^ù¤0¤ê)M\\0‘@ìš1KÎ€¾”\r!\\0¥#ð¥ë@Å!¤ ¸?Z^)9 ,ÇZ@GcÍ.1Þ‚(¢Ý….Fy q@ê}h\\0KÞô \ZÐiùÒð3‘€)¾b–+Þ™6C°( RûÑŽ:P;\rÆi=©ÜÍ!#9 –Ð)sIJ)’É¤ ‘Í\\0{ÓGjR@¤\\\'Šb9äv\nnìô¤|Ð&;©Ð})2¸Î(¹ïF:qMÞ”ñï@…$äâ‚F84G4Â¥sŽž”†<{gR‘×4´ÂáÀ¤Ï<Q8”€o~zS†\\0¤Ã§˜<ã\\0qõ¡Œ“ äw¤-íHO4 œÅ‡ôÏ­`xÛþDzÿ\\0eÜÿ\\0è¦®€”šÀñ·üˆ>#ÿ\\0°]×þŠjM•ÎuÇ^*A+\\0_­< À4àŠ­ftÝ	’9aŒä\Z²²1\\\\ƒ“îj0†:S‘n8¡v!’ïlÎ=E]¤À4¡XwâœbàóqTMÁ.nõÁÁ©„„®HÈ¨ÔcŒ\\\\Ó†ìÊE2_ã:“ŸÂž&Vàgò¨öð?S†€ïÒ«Ž?ZyuU9<TVOÞ#&…aˆ$SZ°p:àô§çœwÍC·w1Ó»0ã@nÆG\\0R\\0g5Ò9\nkïÚHãÉ°¥úçÒ£iT\rÙÍBûº“^õVi\n®\\\"“)+–šp!¸úÔMrëÓÞ²¤¸e8#ò¨¬êzŠ‡#HÓ5šõA9n)¦ôc½d‰2=æ£i€ƒK˜µ[ûHä‘Šæ|Uâ©¬ü»kYguê`*F™”òN+„ñ]âµó(|8OÒª›»CtÕ‡7Š56c›ùóí+;þ½N·Ý(’µr¥Ýœ’Ì	Å),T.öô®½Vä8#½Ó¼s­	%ü­ìä0ýEzw…¼G.¨¦+¾n7^2+Ã4X]¥\nÞã­zW…ZkêmÃ/®~SYÎI±¸F*Ç©+\Z1\\\'ðüê¢H§Ô}jupàj¹…‰÷Œ)À‚½A¹@¥Þ›€ÝÒ‹0lçÚœ=ª`Gz‘XcŽ3CCßžÔ¾”Šxçš^¸#BâÖj:PVÂ÷ ô¤Èô¥ãµ b”ŒQÚ–‚ŸZ9âƒŽôP\\0/4ß¯éK@Qš:ž´\\0ŠJ\\\\R0 }\\0r)0)@¤ôô @(4 sIßŽ´iëŒÒ”§¹¦“Å4C8y ¶Ðj\\\"ØädqQ»`uÅ\r‚DÆN¹ëšcI×Y¤ uæ¡yÏ8¥Ì5çœ:PfÀÎxª&_zC/½Âä/ùàóšQ\\\"gy¼hûÑÌ.CL¶î‡J7™ª)qÏ^õa&VÏÎŸ1<­túÓŽsÅD¬0)L¨¼³(¹8ª$—>”uëUÍí·8ž,ÿ\\0¾)Ââ&Æ$S“†ÐƒŽq×µ)9õÍ!`@ jR>^9 M.FNh#€(þ´\\0mÀ>æ™œgŽ´óž‚›ëÍ¸½ƒÈ¡rN{Rñžôã\\\"\\\\Rsò÷®Æãþ(/s“ý—uÿ\\0¢š·ñÓÖ°|oÿ\\0\\\"ˆñÓû.çÿ\\0E5\\\'±Q½Ñˆ	ç©Àð*$Î2Oµ lúY”OM=qž*!ŒJ•\rƒÚš%“O^\\0æ£Þœ*‰d£Oà÷¨ëšpÀ\\\\gÞŽ¢cÇJpãÒ£§ƒžÄ\n,!ãœÒu\\\"šI#©E4!êqØ}iÝ‰Í3\\\'¥8zuúP„;¨u¨ßœñN\\\'¶jÏJ{ÏÚ³ç~µfv÷5Ÿ+òjÐÖ(…ºòiŒFi’¿\ZMù^NMe¹²B9æ«ËÉö©]¸ª¬ü·­1¢9[ƒ‘šó9}JrN0øÿ\\0ë×¢ÉÓÍy¶¶å¯n8ŒŒükzWæº&[jf+\r§‘’q×­9rèr{Ô%¾l	ö4ðØ#\\\'Ÿ@k¦öŽ§Âh$Ô•6îÂ±ü†k¼ðú¤ž\\\"¶RB©“üx®\\\'Á~ß+0`D\rÂœâºÿ\\0Ï·_¶lU‹ÈÖ2W¸ŸCÔUÞ8.Ã‘ÉõÅV[„ ‚:Õ„I7…Aˆ»7\\\"œ#FÒF¥9]I©ãó§daNáŒúSÂ§î\\0’?\ni—kÆ€¸ð¤\\0f¤98Æ)ªAPGJpnN9>Ô+Š:sÖŒgÖ”QJ)`ÆVšNÒ<SÍ+‘Hv‘Ó4îi»@•;ŒÐ	8ý(¥æÍ(8<Òõ&Ž=h\ZVéHH§sAÇj\\0nìô 6Nj\\\\ž(Ú1ÒY†êBÀ63Í/ziÁçÓÚ€Ãò£péšiAŽ”Òœœ1™7bîsP»í;j3¬ƒ’PI¨¥R?&ÄŽáHª²Î\\0 sQ»2ÉÅR¸žl…p3jIÞãŒzÔq×5Qår{{ÕGiwaIÁëÍdäºš¨šbäÏÜüU”í9b	<wÅ4ÈûpNb(¿Qòš†àzÒŸCX¦Y\\0Â¹,:æ£ûS®UÏéMK@ä:sŽA«6÷;ˆ®XÞ2€NNjÕ¥äŽå|ª2yäÕÅêDá¡ÖÍx–Ö²Îÿ\\0v4.ß€Íx7‰µÛ½CRk‹‰™·Ê¿Â£Ð\nõ-wRx¼9}òa¼¤ç¦î?­xž«/™!#$ƒõÏ­mïhg¦…þÒ· Æ	üªdÖ.†²Nxb+!Ùq×ÜÔÉ“’H\\0žÇ³r¸Ü\\\"Î¯Kñ^£ks¥ÜÁC”¹Ûù\Z÷]\\\"ûûGH¶»ã2 n={ÿ\\0Zù¢Ú)LÊ:ÜÕïþgO\r[ÆWqBW?Ž­)¿tÊpKc¦Ü	ÇëHO^*=Ù gšx8æ±Lw`ŽsKO<S3Ïµ­0ÐPÝO½°0i;ƒÛ½&8¤2LçÛ5…ãsŸ\\0øŒúÝè¦­ÐsíX69ðˆÈàeÜü„Ô0Žèæíãh¡Ø_Ÿ\\\\T •½0pF1õ©dóŒVz7êJ„Ž9ÁõíJCƒi£ûRŽ)™8ÎELpãñ¨àæ¥J¤I(bOÇ­)v\r´ÑÛ\\\'šPxëÍ2zŽÞØÆßÆ¤ŽÜý)ƒµ(ê}ýhdŽßÁSò8ÅFÒž1Á¦!ÙÇzp`ËÀ¦ô¸ÏJ,»\\\'“ÍW•ÇJ™¸\\\\çš¡;õ\\0sCÐi\\\\ŠYnEgÊä÷\\0T²ï†=óU$\\\\sY½M¢†’¦“Å0Æ…þtÒ¹àöéÍGcaœ\rBÜ\\08éŠYT–PI¨e$)+œŠ~ø¯3ÕÜý®AŒ“#vëÍz4­òà±V#9Åy¦ªI™Žâ~vçñ®š+VDž·(¶Ï‘ôS“#9ÈÖ¢Xóè\r<7Ì0éZí ­©Úø šè>0‘×¹ô¬³ªßÚêLÖó2ˆþU!»÷>õ«à„·ò¶ÿ\\0.|þ½sòÉ›é[j¨,p:N6i“\\\'ï#~ÛÇ\Zô¦l|?•i[üLÕ#m²mb1ÁQÏå\\\\˜`q3ŸÊªdŽi4QzƒmñaÔ/h§<|¬GøÖ½·Å;Ç¨:åHoçŠò3\Z0Ç\\0ã®1JbR§-Ž1ÀëJËª)Ó‰îVßtiÈ>{¨?ÞOð­H|_£Ü\\0P·üX/ó¯žU\nòp:ZÈ¤•vÏ#­$“ÔŸgØújßWµw<l?Ùpjâ^Fz0ü+åä½¸‰@YYM\\\\·×õ8ìº™{ðçühäWÜ\\\\Œúh]!R‹„ß·\\\'ë_:§5¸RþVêÍž?\Z¹Ä}m79ö(¦“§n£TÙôšž½iUÔó‘^Å=M0\\\"oªü^‹âÅÂó%¬G•š§‘‡#=›pÆ2\r.A>•äðüW˜´9ÏðÉÿ\\0Ö«±üR´eRm¦Ú{†SK•‹•ž˜Q•â¼ñ~\\\'i™ùâ¸_ø?Ö­EñH|nyTŸT?ÒŽV\ZÎìô£\\\"¸ôñîˆF\rà\\\\ú£~•4~5ÑŸ¥üYõÁÒŽVgUŸzLŠçSÅºKàBØóýð*eñžà•½„çÒAJÂ»7	ÀäÐXXÃY¶#â&ˆpiÃT‰ÄŠØô4´\rMmÃÒã™öô#;×ñ4ÓzœáÆ>´î‚ÌÓ.)†^?­gÔÀù‡çMûZí\\\'#ó£˜9KÏ/©•VY@âª½êõ?:ª÷Š{Š‡\\\"”	ä“¨íT¤a‚2K¥ÇÞYî“®áùÖMš¨ŽfçÖ£-Í@÷‘¨Îõ@o¢æE¿5M×RÒ-“Žõ¶­Q—S·òñÿ\\0\n‚M^ÑW›¨²}\\\\P‚ÅòëŸ_ZkH0k%õ«ÿ\\0—¨±êT/¯Xn8¹Lûf­&š†`5¥a8ÀÀÎzb¹Qâ\r87Ír b¥iÛøÏÃöêº‚®8?+~•¤ ßC\Z’ÐÐñ¢\\\"xZrÏ\ZŸ˜WêV e{ñÒ½Åþ>ðíöŠmm.Úâ]êÛV&2z‘Jó+‹„¸ùÀ;[ÇNµÓ\Zm;4gMèO‚yéV”áºr}W€aFqžØ©ŒûSé©lÖ°Uyã°-Ò½ÇÃHSIUÁ\\07¯Nxv”wßB§\\0\\0â½ïBMšpSŸ¼O?—ô¢KÝ9ª;É#A“/“Ã\nM¯»¨*xÕ ÉÉ9É¥\\\'ÿ\\0:ÇaÃmààÓv¾îNL1Ídô§`¡²sÈ î8§Rã=M!\r\rÂ°¼nü ^#ëÿ\\0 Ë“ÿ\\0š·Àâ°<l3à?ÿ\\0Ø.ç?÷é¨wØ¸îséÔsS:ŽÕ äçšqllÔ#bPxÉïOšŒzSÁéŠrd8Æ:TŠFÑš€*Un\\0 Nä óÇZxüsïQŠ¼ÓD‹œþ4à}é˜Èõ®(ÔDƒæãŒS”žGj§+piˆ—4gð¦þ”…ˆŽhJØ\\\\f¨JÙ$Š³3ñ×óªR1üi2¢V•‰ïTÜüØÔò·¾*³óÈ¬ÙÑq§4ÓÆ”SN23Ò£©d\r÷¾‚£<sR–<Ô.NpxªÑì2ò­üÅyV¢HaÁË;§5ê3¶›°å—ÿ\\0òÏ nÃd÷ë[SZ²%º*“ùúÓ†:çŒv<T`Ç¨Ÿ~”ôlI?—µ¾Â¹è\nBºN§&ì\\\';óÓôÊ3)»”€GÌGë]7†‡‡µ-·jc¹Á®>ÜÅ‰ŽXŸsÍT-ÊÈ•Üì^8ä`{âž6°\\\'õäUPçn1º¥vtõ4z•êHF@lôü)‡pnH<qŠnâA‚8ëI¼q’síŠÊ‹cÃ`çœc¿JFfè|ŽôÝç9?N˜Å;$°8üéìÆ?\\\\sÖ—vF3ëLùy9ïÀÏzPAÁã ô©m½Çm	p}©Ä¯9Ç‚¢^2yÏ>ÔàH98Æhz«I0§\\\'Ž™¥1ÉúsL\\0’÷§6õb¤`w·Ö§{`ƒŽzŠ\nó»?CŸóéH€=Ï<wúÒ«¸›ÐIØRI<1QJ7¡\ræ0nØ>ôÐx9<ò}¨-‚zœàÓôî<M.Aó‘Óš‘eu^]‰#üæ ÏN~”™œp¿JZ¤Se”¸™\nâSÇN3J.ä$’ùãû½* 9<g¯\n1‘Í»@‹¢òM¬¹\\0ž†¢7·,¤y™:Z¬m#\\0Ž½iwt\\0æ„šw\r:–Æ£s´mvSÕŽqšA¨Ý¦X\\\\I¸ðX¶j¡=çši,ØS÷qGÌ‹ÃZÕü·ÓŽ8Ï•Ûš²ÆOö”ê{!ÿ\\0\Z pIù³Ž”ÂØÜr}ò{ÑNÅó¯k@:ÆÏ7øÔM¬j­É¾¸\\\'9y5L±\r’G·|Ôe±È<š\ZHwò.\r_Psó]É´ïþê—›Ž&b\\\'\\\'ëš¨çª‚?\ZhÈÀ?þº9E}K\\\'P¸*öêrÙÁ5¼¹a0þ_çÖ¢Ê’G~ô…‚y¦Ðù‘3^ÜœøÀÇJd·SÈ/Œc8\Zne$q×æ€p»½hå¶Âæb.\\0ÌàF8¥áÎ_8Þàÿ\\0*®Ö$|Ä`%°\\\\iü—À÷4„m?)™€zdòzñJAÁ÷æªÚ’Þ¤/“Ðð3RÀå`ÀäûÞ”Æ$© qJ’û”°çîíýw³ØÕ€¹ãÞ¥ŒäÃžµs“œzÿ\\0ž•:1\\\'žÓ:Úâk¹¯¡eõ8€pxëÅ{ÎŠ¤é1<°bï£^\\\'á’M~ß\\\'*§sgØW¸i[Fá}:rMUO…#’M9h^\\0‚pqéKŒžžÔÍÃ þíÀu9>•ŠØ`wuž´›ŽFiÝzsMôþ´·wž´ŽGjAÔäñIü4Î1ëÖ°<mÇ€¼GÏüÂîôSVálÖ[þ(/ú…Üÿ\\0è¦¥r¢µG<zp\\\'½D1Ð>´ñ£œTÜÞÄÁ¹¶iÀóíš„7°§‚qÁ¤\\\"eè*T<Œjç¿9©ñ×&˜¬XZp<ñMR3Þœsß­=É°üþtpÆ£ÏN´ìóÒ™#ûäS³L‘JõÅ\\0Hi¥€ÚÃ®)Ž~S@ÌÙ&©ÊÙëSÈqžj¤¬=*¤QVWÈê*ïR9ÏÖ¡-ßúÔ3h‡SŸÊ£røS‰È9ÏµDý1×<RWeXN«š‰þïj‘œžÿ\\05¸nÎ •Sü«ËõPbwÊ¿®Oÿ\\0¯ñ¯K¾m¶“¶~ê1ãé^gª*§Ãy`·>çú]4­«\\\"OTP6}Oz“‚Üpzp*#œ_Z‘rHÜ2Oz´»ŽÖ;Írø[S~v”çqÐ¹bÄ`dýÑ]~vø\\\'R`v¯ùïŽÕÇÀ~^G2+H¦¢È•”Ëhxã ûÜÓÃÀ\\0T\\0*Ã\\0Ó÷epHëÜÔ5b¼ÉÐ8=hÜŒc9ÍF	-É\\\'Žž”/ËÀàš,Öã¸ðr88ü(ÝÆi™êN9àÐHbO_J-­ÂîäˆsÎ@Éè¢”0êzz\nfOœûŠ@@#94ÙQ\\\'åâ…_›œšN	8úŸÎ—y#q=;J›6î„Ž3Ö€p8?NôÀÙÉŒô¥\\0`ã9Çµ7m‡°¹ŽœçÚ”ð=új`?6ìçœÓËôõ=&áÎsëÚœŒ€¹¤Ý†\\0sÏJ@ÇÇåIêÆ¬.YA!sŸñ °Î1íÅ0³ƒ‚rGR:R’I8$Ã9£—A7gaI`ze}©»p9çµ;¯^OlÑ— Àã­5°1¸ÇVàuÇ4¸qÓØ\ZBÀÇÓ­/OÌ8ïŸÒ‹Y	1\n‘È^ôÒp84æc\\0\\0ƒëL.HÀÎ(QÔwüÇzaÉì9ý)Kàulô×~sž•:ôƒI;r:ûÿ\\0õ©…ˆ€pA9æœÙì\\0Ç žÕŽTœð}†kG¾„½|†çšiÝÔðiìÇÔí>•\\0ç­&Þâ\\\'\\\' 7=)GãÓÐÄôŒ`àÓGÁÆzæžâzRÀ+céJ[ÐöÍ>@DjððOà*<àuü)]BÜdòj<ûsž>•&’Å»z{Ðˆ®ä“ëè)&í¨­wb2ryè\\\\ÐŸNÔ¹îi2r3Ö­h)!_”ä¿¥J…|ˆ”psÉ5?Êz`Tñ“åBX~=©t©£	@Ï­NŽ{T` Èëíþ}*höóÏ^‡µ\nÛ‰«îuÞùõràî*ÔqÓšöí=XÂ8åGNÕâ¾\\0EKéÜ¶JÆz{ñ^ßn»mb\\0F?\nªß\n9÷Ù!QøQ·¯ô¤ñƒßŠP;~kœbcÆ“#v\\\\bœIÛÓ“LÆ9ô¡ì\\\\Œ\niëŒS¿‹=…7š!Àãõƒã\\\\ø‡þÁ—?ú)«xúúÖäCñý‚îôST”·G4„ž\rJ§ÉÇÒ««qžy5$n3ŒñüêV†ï¹6î=©ÈÃ&¢æ§È=\\\'3S)ªÀüÀúõ©Qºš¦IdJx8$æ¡SO¨L›ç§4µ<œÔ½¹Å0\\\'<âŸòi€þt ÐM®8‘šk¶Í&pj)_®1@Èeb}êœ§\\0Õ‰š©3zVmš¤@ížò¨IÎ08õ§»w	ïYÉÜÙ ïL|–ŠR:c±Ü¿Ê„1ŒÇ\\\'Çj†V8Èö51\\\'j#\\\'¿5H\n\Z?`¸\\\'#÷mÏ§æ:‹:g%‚®s“Ÿ¥zf¨â[sÏ–Øü«Ë¯[7##¢å]¶h‰nB8&ž…›ƒLž1îM*XzqÀïZu\rŽöØùï	_õ‘»¦ükŽ‡î“Æ:ãÕ4‰/€|°ª¬Îå¾lÕ\rhðÝµÈ‘KQ˜Œdž˜«‹²m™4ù™’„¯¿>´îpçñ]-Ï‡!RJ<‹žÙáYÏ£È0«.Gºâ•ÒÔ¥ªÐÍN3‘Œô§qœàäu\\0\nÓ‹C»•¶£ÄHõ$gô©Ç…µ“ÊZ«uYWüi¶¯î¾æ)ãb˜Kn\\\'nOÓ¥jËáýZ%;´éÈYTŸåYrþêBŽ»d^¡{QgÐz¥ŽNÜâŒ½Àç‘H™ëÛÐ\nzƒ×§·ò¥¯b´¥ºêx©Y·p	ãiƒ;‹g€:S€%ôíNÍnMÃç®})žsŸ®)çŒúbšU‚Ÿ~œR¿qóFÈ ‚GSƒ`•_¥GœGN¾ô\\02ï›Ó(¾£æD„ÝF}¾½(ÜO<Œ~´ÓŒgŠ3A9RÙ]‚ÓBPr2úÐpsÆOn)™ç¿¼0 0ÀÉÏ­\nÛ»w÷½¨éÎ	Ï<ž”ÝÃ<àƒÇÑ¸çœpiY­G¸î­Æ;ò)¥ˆ½)a·¡ÁÏ#üûÓCŒŒòsB—aÛ ¹ü\\0è\r0³#ãñ§ãƒÓ¹¦ÈË·9ôQÈæ›mh>ƒKÔg’²G=±Í Æ%³úÒÉ p?-^Äúˆ2Oéž)›É=9úÒ’FH#9éL$°È$bÅ°Öùã>”W’Oÿ\\0Zãç°Þ;tõ§fô‚“ÏqÍ7#=}èÐIÎ)qÎ\\0íéŠoÈb»	GLš°œ{Qƒ‘ÚƒÁëG*µ˜µb9Ç¥5ŸjŒœõèàŸ§©`\\0=A£ajô°FIôÏzd`ŸÂ”œ0ÉžôÂÀ‘€=é‰Ù1­ŒçùU´lù*9!zôªnp§ƒÍZ‹ýdc;hJÚ ÜÓBR.	q×5\\\".Pã8ÏzƒwË€÷Ç5\\\"³(Æyô¨»nåt;ï‡ŠOÛ˜ç5íßpÿ\\0ë×µÅò è8¼oáüDEr@É`ª8é–á^È:žÝjëkk+Y;Ž\\03øRcç¥sÎI¥Ý’	íXnP¾¾ÔÞõ\\0\r4ýïÆÇ»žÔÎÿ\\0….r6çŒæ›ÐÒ`õ\\\"°|jqà?ú†\\\\ÿ\\0è¦­âzÒ°|kÇ€üCï¦\\\\ÿ\\0è¦¤ÊŽç%¸Žõ\\\"°Ú1Pçjq;W­AÕbÚ7òõ§ÝõïP\\\'8ëOB94îCZ“‚@Áý*T~Õ][$óR†<~”bÊ7\\\"¤Ï5]:u©ã4Ñ.Ãò6ñÖ”6¥0KLD»ºæ€Ãy¥ÏCÒ˜Ü1j´¯ŒÔ¬Ù«HÙâ“Økr\\\'mÜÕY{Š™ÛƒŠ­#{æ³f± 9?ýziø$PÍßÒž•©NÞ	¦9ÉÖœsQ¹A\\\"„1¯ùf¢|öëRÈ=j3þxª—¬³.“vAÿ\\0–MÓé^cxÛg\\\\a@Èí^®º5ÙqòÛ×Ž•å÷€}©°9 *ê£ªm‘/ˆ€ž\\0Îy©ï\\08ôÅDØÝŒÏ8©Pîaž¾´ÊV;a!_ÇÁ&|’o§Öµ¼n+÷ `ÿ\\0Ù«6=¿ðŠ@\n€L‡¨äŒ\Zè<˜±½q¹Ô}p47îÙ%«.ÝÛ\r¤â²ØîÈ_Òº[¥àÿ\\0: cÜOë9Hšq+éÖ{Ÿ!O¿ÕÛYaAéTô«UÆâ3Î1Šê-¡P¸ÇjpdÕ2šÌrÀWˆøñà9 Ü:í\\\' \ré_DÔŽœw¯žµ·-âk×ç›©Hé¾k¢3:jòÔë<=£ÛJ²ù–‘#‹@G*yéô©ï4KNA¶ˆdùV¿†#²ÊÒ(ÉŠ8ÁÆÖÇò«w°ƒfäÖæ¯â8†Ðm·#\\0ûWtÿ\\0\nÚ]æ	wgkÇäkgìƒÓšèt}?ä\rƒÏjÍT{%esœ?ì2Ésr„óó`?A\\\\×Š¼)ý3A;L²¾À¬›H8\\\'=qÚ½±-&1Æ3\\\\oÄ#¶FAò¬ŒÃ×!IéZ©37{[¦iZ«B±¨C,¢%,H\\0ž3ô­iü¨@Oïà@¥¿øš×ðtEáÓ˜Œÿ\\0¥‚Ý9Àÿ\\0ZínàÅT¤ÍièyžÔ£ÎcV_g™‹¨;mKfcÔ`‘¯D¸¶,OËÖ¦X˜ü¼V|ïbú~<3­íi—$á	ÏéQM¡ê+<šmÒ¨êLL0>¸¯y´²¸ÛÚ}ŽÎSÑUût«æ¹—´³ØùÀÝ‚@^Ù#ƒïR…r8 ÷Çj~K}\r–\\\\óÔ×§ÛY\\\"iP+DªvýÝ½94ÛŠÕš9ô<±\\0{ñMØvàg°é¿ÙÑ4L1·üVµ–jÀo³¶`;´*Øý+%$ô)ÊÚž:Q€äð*2„õÉ8ãž•îo éîœéög?êJÎ»ðö”Ç:ØqÈXð?JÓ™#55k6F“•Á9™†h#=3]‡‹ô{;-1¥µ·Ž)·ª©RFA<÷ôÍdxgJ¶Ô¡¾{¶vh 2\\\"‚~fÈ?8Úz­“1\n0:ƒÎzÐNì¶zž?Jî†¬1$‚F¿Æ¤\riäqü9©u#Ð6<ü©\n0ãZnÒ1>•ÜKá›\r¼#pÇ5Yü7d¹À”÷óÒ’«ºÜãÊàtÆ:v¤!³ž¤s]Tž¶#‰&Þá\\\\ÕÍ¿‘},\\\"F*¬Bäþ?­_´R²šW\\\"Ë<œÒ·‰éÏ­tÖ^Žh#’i%È­…À#>žŸÎ´ ð}“¿ÌÓãpÿ\\0\nR”S³ª8cÀ>Ý3M+•â½^Óáæ•*©w¸ÎÞpGøVµ¿ÂÝÕK=Ó{Jq¹V<H©\\\'{Rc\npH?Z÷¤øSá±Âè‘ÿ\\0M1VÂÏU6×zgÏ<þ”ù©íÀ—PùÞ\\\\¯§µ\\\\ˆ³L¹ù@Ç¯åZÞ,Ñ-ôÍzî;`ÂÚ)Ú4V}Ç†Àæ³v¨¼88àt57‹Z\Z[RÔªSÊˆ°UœžøÀ=8¥•Ã63œóšhç\\0œ{T¥wb¤´¹ë?3cy¸ˆ/rG\\\'ü+ÕGLW—|:è¤n¸§÷A¯P€(­¹Å«Áô§gŸ¥4Œž>”Ó5‰Vß)œQÜŸZ1Á š0NiPŽäÐOê8¤|ƒëžÆ°¼hü ~!öÓ.ôSVñóX~5Çü ž!ÿ\\0°]ÏþŠj›·Gœ($m$O¦SÇ#ß56ÐédÊÃžœÓÃÏÞ BTžõ&pzâô&ÄÀñ×Ò¥òªáùÈ?Žiá¸š%–Ñ½jPzUPNâ\rJœt4nCE€zÒî¨³K¸}(@Âœ\rD\Z”51\nçå5QÈbjy[#Šªì6šL¤Dç¯5^FÏZ‘ÜgÖ sœç§µfÍ¢0ò1Úš§9õ}i õõ©4B“–ê=©¯“À¥\\\'­4ôÎh@0œÓ£oÎŸúQ¶3Ö®Â2õ×GºôØ\ZòûÃ›ÇÂ…è0O^ùü+Ò¼DOöÐÆIL`ýEyÑ{õ úÖÔÒqw%îF[œ“Ó¶jDå—ÜÔ¨ïSÆÙaŽ½)ï¸úØÏü\\\"Ö™R>bzõë]G‚\ZMÃò	›}ÿ\\0¯\\\\ˆw_Ø©ä1nÝ95Ùø;#BcÎÍÿ\\0 ­9è‚Û³Jäg çŸj¨ çŠ·r~n˜Áªè2ã<Ö—QÁšlxUÇN+z/¹Ç¥dØ.ÄÚµcAœÖ°ÐÂ®¬{´ž:WÎšƒ	u©ˆ ìÙ>äŸð¯¢& [È}šùÆRZ÷;@$ƒ×5¼vhŠkÞ±êþw{GvmØ†@üþ5vàdõÀ¬ÿ\\0|º|¼ç0xÇ@Õ¡)Ëf°›ÔéQÔ…#ÜÀWU¦F5\\0W;l…¦Þº»!G·jÎ›»¸ª«\\\"ða´^‚¼ûâ{þâÅÆD¬}Æ#õ¯A+Ï<`b¼Çâ‹í\Zt`,3r9;@®”õÔåŠÔ©àµf±á~[†9çû§ùWku‚¸5Èx51c`sÒy‹øÖºÛ†ÝQU´trÞE‰OaZ:E°VVÚ:äƒÞªÉüksN„\\\"­eÛ*¢´Mxc\n‹œg›âhWòc;`‘ýòkT}Ð:\ZÂñ\\\\»<;©úv”ÿ\\05»ØãKÞ<3ÃÉ›ëa‚2ûcšõA\Z‹XÔ\\0NÑÈ¯0ðÂ3êÖÈNì¸9\\\'>õêi&0Ñü©TzV»kk¾PqŠÞ¶´UÇ©ØD	´‹…œI¨ºåŒ*àzVEÚ“Ž\rl\\\\1*qÅcÝ8 ö«¹’‰Àxéi‘ífžÀ+þ•™à•ó×r*þmÿ\\0Ö­/¾4øÔä€Åˆñ·û5Pð:æ+¡·#äçþþ*ºMjt[DuI\Zœñã#ò«1®AÏQD€k2­©›,9ùª¯ØxëU×ëUÝ;ã­&Çc%à8Á9â¸;•WÕ&Éù¬oâ5énƒ±ú×šÆÅî€$»±\\\'ŽrÙ­(]ÏBgn]OD‚\\0Ä€çlj3×?/­kYA–û¸ªF\nèª=?„Vå„Y»ÕTÖlÍ|74ìâÆ8ã·l˜PqÍR´åìÁ­XŽœS‰Í&8¯RT„`¦)­Œ{\nlƒçÿ\\0\Z”7—nK]6sÏVÿ\\0?•rŠäÎ\\\\\\0@=\rt¾+˜»HBòÓàsÜó\\\\¼s’s×<Qr®çzvÐ”³=qÖ¦ˆ;²¹àâ p¢Bp:`Â¬Ä\\0hÈà÷æª?€þOfø{m³L²cŒ4’ÉG5è¤ƒƒßÚ¸o\\\"®›§‘×dÏ|•Ð×rN8<Q[IjpGº`zûPOéA>œQžsX\\\'PH£øqIÒ— ëúÐÓ‘@<b÷”RƒÇó¥¸ûÙÖäDñèsÿ\\0¢š·ñšÃñ©ÿ\\0ŠÄ_öºÿ\\0ÑMAQÝ@<ú‚iàñÞ¡V©b¡L”1Æiû‰ÇçUÃÜúÔˆá— ô¢âh™s·¶iá°* À®iGNM5Ü–Yœæ¦SÅT\rô5\\\":îvzSD½K!¸Îiáø¨CdSƒqŽ~´ï¥É¶¤›¹§oùqÎ\rC“Šq<Q¾€$ŒÕ^G#8ÿ\\0õÓÿ\\0\nÛÖ¥–‘ß¯áPïNb{ŸÎ¡\\\'-’x¬åÜÚ(SÇLšE`A¦îõ4ÀÇ\\\'sR^ä¤óŽp)‡\\\'¥.q×ŸÆ˜H÷¦\\\'¸ÒpÇÞ£~§9òqŽýª\\\'àqU{â<ÿ\\0b\\\\‘‚p1“ÔW˜Ü×\rÎrz×¦xmÐn	$r£ÿ\\0æW,<æãö5½8Ú7&þñB„×­K;—Ó5>ãÏcÇ|Ô±|Î2H$ÓE5©Ú³ì‹?”à)íÉä×má·B™þ‚¸fÏömš‚ªF3]¿…²š\\\\pYˆüñý)OáÐ˜õ5\\\'9jd4ª:â–R3ÈÅ:Èä‘ÓŒ×;ÜÒ*Èè-åQéÚ´U¾PsÍgÛW•ÃÍo–{‰vØ´œŽFþUóe7ªÉœ`úàŸÂ¾…Ô_n™tÀô‰ˆÏû¦¾wÝ›ó–Ü@Žü\nè¦´dÓøYðöRÅ€n\n¦xëòÿ\\0õêó’[úÖn„qdIõù(¡»æëÖ¸ª=YÙ^Ó—tÀöÔZŒí\\\\þ™Êã\\\'½tVãåç­U=Œ«=lX\\\'°¯*ø¨ê×Ö‘ŽÐ7qËþ$×©œ/>µã_&aâhP°!`N>¬ÕÑ©Œ¼jø5ƒiö Uäcžß.ó®šVÝÓµr¾m¶àŽ­#cèìÕÓ±¥cUêŽ˜­[$7Ì£¨ÏJèìÐ€¨¬+Üàö®–Ù\\0Ò¦š\\\"«èXcòŠäük3\\\'†5	…”}OÖºy›hü+‡ø…1O	ßÉbF=ÙGõ­ÛHç‚Ôóo\\\"rÑwaU‹68Æ5éÑ\\0U@éŽkÌ¼¸ÔÃðÄÍ“þéæ½JÝw0ÍN#¥Ž¨-Û5¬#ÚkA”(ö¨-SjŒ‘RÈØt¨ŽˆÊz²Ãp}O¥cÝ¸+·×Ò´îNAõ¬[¶ÎGJ$Çyÿ\\0g*–ñ8dbH_óøS¼Ÿ±ÏÛYÐzáóªøõÇ™n¸p£¿Ìôýj÷‚“:tŽ\\0œ\rßE9þb´‡ðÛ4’³Gb€ãŸJcgw±©\\0)‡“÷yé\\\\ËbìBAlÔ¹8=êÙ^ƒð¨$Ó>ô0E‚©1<&¼ÚÈfx@ùÁÿ\\0?•z.¦þ]…Ë€±±ý\ryö˜ï RAË¨ÀúÖ¸wï4ùOT‰wÎÜóc‘ŠÞ²\\0VE²ï˜°nÈ®†Ñ0µT¾&ÎvýÓNÙ@5¡\Z§Öª@˜ŽÕp(«G;€<â¢”íØÿ\\0\n“R°ÁÎsëU¯›mŒïŽmü©6Ió·‰œ”ƒœ~ó#ÊG?`Ûg“Óo5¹âÅUšÙçk6ÐkÑ†NsZDì±!Èäm#?çùÕˆëˆÀè08À››Îj{Aºé8ôÏZT—¼Š¨Õ™ï>@–v9‹BqÛ—ÿ\\0ëWW×$÷®wÃ	¶(ò0c´…qõÉ®„w\\\'œQ]Þlà†Àx4™àâ—©¤îkF½E\\0õ Ð\\0:qG= <Š\\\\òOµ\\05±~•…ãN|	â/û\\\\ÿ\\0è¦­ÂIéXž4Áðˆpæsÿ\\0¢šãº8 ÜäŸn*Eî3UÃœž}êPxúThuŽ-‚	Ï€)DX·LŽ”÷ëÚ¨l‚3øRRt08â¦\rëÐsTÑH‚ßZœ0+ëM2Z,çÚœ‚#š\\\\žœŸz•“Në¡°:qO\rÓÒ¢Ö”ž:÷ª$”7·áH[\ny¦§Å5Ûý1Hi»œ’:P»gŠSÀÁÁÅBÄœÔ6h×5¶§œsÜÔ$Ž˜¬Û4Hváž£éM`’3ý)#žÔ£æ´lXsŽÂƒõ¦ëKž}M1zw¨Ü?ÂžÇ ô¨IÏ<~5Bêdx ãÃ³qÌ£÷…y…Ë4þ_ZõüžnÌŠ?ZòÉ\\\\‡ œcé]ø_Ç&¬ÁþµI#¨éUy/Óñ©íØùËŽÇ8¥Ô¯3´p\r¥¸#nyÇJî¼9”ÐíÔœpO_öyø“t1.6…QŒŒW¢at[\\\\pÿ\\03SUèŠŠÜÐs‘ÅOf§¿CUO=ùÅhZ\\\'ŒàV+VSØÙ··qVF3ÒªÀv®{zTå³ŠÝ²(ë²ùz\róÈÿ\\0”×€\\\'çÎ½ÓÅ(ðæ£“ÒÝÉ?¯‹ùþS»¿Öµƒ|¬t÷=SDÂéäŽãŽ{`V!›‘ÍfiiêolñŽõ¥L€Wþ&Ž´oéÉû±ÅnÄv¨¬{%Â¯ZÖVÂÖÐ9*êÉ¾S^#ñ.MÞ,<ð° Î;å¿Æ½šgÚ„ÿ\\0*ðï¶ÿ\\0J?*¢àtÆÜÿ\\0ZÚ?4÷:“ö;|°ùD¼rŸá]@`qÏZæ<0ž]Œ>›	÷Ðÿ\\0\né\\\"Ÿ5ÏVW‘×dmé‘åAÇSë[ñ\r«Ÿ^++OLÅknùcšªkCž«»!¸jóÿ\\0‰”ðµÆ%Ð\\0OûB»k™\\\'®+Ï¾#Iÿ\\0ùRqºUéÍSÕ¡SZœ—ƒI|Àà)‰÷íÖ½ZÅ2Ã?­y‡•Zò\\\\†*±ªŸörËÏùõ¯V°_”6zš+n“5¢LÓf8RGJp;GÖ °?Â—C6åáX·oœŽkNåù${V=Ã’O9ç¥e&oMyã‡\r\Z`dF¹Ïa–­¿dh»FBùîsëò§ø×9ã-­‚s-³–?Öº¯\nFD¶=™¤cŸªÿ\\0 ŸÊµ†”Xåñ#£8¾i„œœÿ\\0ú©[îñôÁ¦Ž¸¹Û4hSÀÇ­A)ïüªn0AëŠ¯.6œu¥ê+\Zô…4K×\rå7_¦+ŠÐ¢wÖ¡B¹Õx°+¯ñ3Ðn³Î@\\\\ÿ\\00â¹(ŸÄËÐy¡ºfº°Ší“WHž±ióŸ\\0Üpéí[ö«1X–00CF=ë¡¶^†´r=‘~Æ~•`ŒžÕ+ÆO5(ô«ÐÁˆG ÍQÕ›f“vr8…¹ÿ\\0€š¿ÆG½ex…¶è­ßÊeÀ÷â”öî|ÿ\\0ã/-»\rÛ<|¿ýzÆ²o€9ÎkKÅ²îÕ‘s÷aÈç®Xÿ\\0…gÚDFqÀ=~µ¢Ò7;eŽÑß)?ýj›N]÷h\\0ÝÞ ÚàuÆ1Vôec¨F¸\\\',1ÅoÌ…WágÐ¾V\\\\uU…Xû„çùÖÏaúÖ>„¡b¸!³ûÐ>Ê¿ãZÀñŽ•>6qÁ{¢ûÓp{\ZRp?¥(ëžÕžãd.;Ðzu œúS7du9 `i	àýia±I‘Ï§j@…ÝÀ=+Ædÿ\\0Ââë¦\\\\çþý5mKzâ±<hGü ~!\nxþÌ¹ÏýújE-Ñçá†0zÔˆÃµ@¨ìj@GCÒ³Øëô,Å^µ@÷âž¯éO ‡§\noå@fº=00üª@Ô”6y©‘°LUpÀ\\0J‘[#·Jdù”Œt ãpÔJÜ8‘‘ž¾µWÐ]uôãÉXí#ž´r¹À¡•ÁÆzõÁ¥}ÐicŽMDÌ2qÍ+7?<žk6îh„$sÍDNiKp0i¥³ÐàTÜÑ+‡¸¥çÐsÇZ\\\\Ðß=(äŽ¿…!çÖž4/0ž:š` ²Œw¡›®Ô‘s(õªZ•ãLÂ<qûåí×šò™ø‘‰<g5ê^9?ñ ˆ3:¯?C^W1Úän\Zê·¸Œ¡¬˜‹Œþµ{MEžö$?u›œVpê3Þ´´žuù\\0yö*®k¯©Õ\\\\ª£\\\"€¨éÖ»­ ‘¤ÚŽ>à®œ5ÓÀð:vãÿ\\0­]î™…Ó­Ç\\0l^3íSSX¦ËKVh¨Ê?•i[9ã³\\\"%ŸžEjÃŒ*\\\"º‘\\\'dh¡Âþ• nxªèØëšs¿Ê´Z=LOÊá¿©ˆŠñ›Ožù·`üëÖ|c.ß\rß\rØŸ–Hä–þš\\\'æŽ9­ Ý‹ŠWÔõ\r!¿â_Æ2ÌOækb×æ˜gµbéŸñãgæ`IüÍmØ\\0Í»œ×\\\'Ú±Õ²:;N1Î1Z!¾_SŽõ—mÆ*ðo—ðÀ5¼nqÌeÄ€)QÒ¼?ÆRñ}ÖHe^?Ý_ñ¯f¹qëÐW‡xšMþ+¾e‰±žÝ\\\\75fvž`l#À\\0ªýO?¥tÖC| q\\\\Æˆ-#<òŠF}9®«LPÎ=¿Zç—Çc«h-˜@ UÉ*Õk^œö§NÇiŒVÑØâ–å—÷¯;ø2ÿ\\0cÀ„ðÓŽÿ\\0ìµww-÷‰í^sñ]Ö–j0|XƒÓOøÒ½¤™­8•¼®n88`¡IõÜò½^Íp£#t¯,ðžU`	b¸éŒŸé^¯áAôª©«	Ë`gÒ«\\\\¿ÊGãÖ¥-ÅT¸qÈÍC!#.ïœ‘œÖ<­–Íi]¹±ÍdÊNOqž9ïYI1VÔó¾ïÊ:€Tã ãõ®çÃê« éÃ\\\'\r7Óçaý+Ï|Já¼Kp¥¸¼çý•¯CÐÐ¦b„©\\\"ÝqêÌßÈŠÛþ\\\\‰üf¡b:~~´Þ­ŠBr0iAç¯bäc¨%ôÆjbAÅC/Ïò©ê#›ñl›4F\\\'ºÿ\\0ô¬?ÇçëP£>;–èx9?¥jxÍÂèàgÒŒ~Fªü>¶ûF¨q¹V8ÉaÔän•×…Z»™â¢z¥‚)\\0Eo[/JÉ²L*Œt­›oº([œ’Ø¿õ©9¦!\\0uê1NµY‹ÜLž>µ‰â¦ÙáÛ¬HQù°­Þàcœ×7ãWxv|Y•G¹Ü?J™E‰?xŸþC1÷bQú·øÕ[%ýÙÀÉ<~•\\\'ˆœ¾µ6Up}qŸëPÙä.	ãéÖ´·»s©tL¸Ü/<ç“íZ~v«c\\\\)ô=k)›îüß^Õ·á€_Q@@ÎC\nºJòÐšÍ(;žù¢ÖÓ¸9Ýpäc§aý+DœqYZ\\0?Ù1·9bÇÿ\\0?áZ§¥cSãg,vAÔóÚ”7n8¦Ï|Q¸n šÎål8žiO\\\\HXŽô™ÈÍ@ŽGsM#šROJLŒPˆr9íXž3ÿ\\0‘Ä9ëý›sÿ\\0¢š¶Î:ö¬?\ZxÄö\r¹ÿ\\0ÑMH¥¹ç¹çšx$.Gj€°Ïåo›®k3®Å€yúŠp\\\'\\\'Š„6M8zôïLDäŽ {÷§‡<*\\0ÀÒ†Ç\\\'¥î\\\"}äÿ\\0õªEaœU`Ý0GÒ¥VöéBØVèY\rÇ9œH\\\'ŸJ€6)á³ÁªD“‡È#ƒUgäð¥HXœ*¼žäTÉ•4°èsQ’8É¥/‘ÔTe½³Q£ØÒÂ“L-ŽüRÏ9ö¦“ÏŠ¢Lþ~ô»³ÐÔA»‘ŒzRî9&‹¡Ž$‚i¥²3øSI£8÷§ \r,*H>öOò¨°½ª{o¹Ï<ÕÇÈOcÇÇ\Z-ªž8Î¢±¯-•¿x@ õí^›ñ±¥Ú.xóóÿ\\0Ž·ø×—>wZº´PFPÝŠ¤ÓŠ¹§±óøôDztéWôåV˜‚ÄsÛ­Cµµ5ŠmètÊCÜHc\\0÷‰Ç½Ãå³€rEàa^w™ðÙú\Zô-aQŒ…QúVsz$ZêlZŒóŸÒ´båAê+:ÐaëšÒŒ‡¹÷¢+C9²a:+*<ÜÑ+ñŒüµ?6ð@ÆOZŽâNqš³;jsž2qÿ\\0í×\\\'\r´~l+Ët¶at¸\n0á½+Ñük)OL¹ÔãÀÿ\\0Jó½)”Þr2á†9âœ¶†±Zž§YCÏðô®‚À\\0ÏiÜÛB½t–C§¯JçŠ¼™¬þb·Õ‚à)ÇáU#lŠ%|/=úVÉœ]•îå\\0ç<Ž1^%«¾ÿ\\0_2ò>ÐØ#ëŠöK‰Ö\\\'¼béƒxŠé³œÜHsÓ1¦º›ÒWi¤m#\\0“ò*ç§ W[¥&\\0$ry®GE%­T“Ôú\ní,÷+ÇjËí\\\\ÒnÑ6â8PäR\\\\È<Šj¾ÜUiäÏ8­®Ž\\\"•Óõô¯5ø‚åÚÆ?›˜ðzco_Î½åÀËv¯5ñón»±ù±…|ûò¿áP¾$tÁhkø\r·R0fx>¿+`×§¡Ú€óÈ¯6ø}µ§`[;PžxÏOñ¯F\rJ·Ñ™Ôz’³|¹ÈÅPñÉ<U‰ôª7\n·8¨¢ŒË§ù›šÍ•¾cÏ5nå°ÙÅPvçŽõŒž§TåºË<GtÃæo5†;vÒ½FÁLv¨Ã·ÿ\\0A¼¥ÛÎñä±æåòxçç<zWªÚåmá<Dƒžß(âºŸð>ã7w;–‹dÒŽÜñQî<ÓÁì=k”Ð\\\\ñœò;TrœƒÍ<žj3Ð)\\\"NCÆì¢ÒÙ29f<Œöÿ\\0ëÕ¯‡Q8º’HÛoÈÛ³ì¾Ÿð!Y¾9n-¦âoá­Ï†lŠ×e€$Á·?Ýbëý?\ZîÂ§ÊÚ2¯±évŠ6¨<\ZÖxý+2Û°ŸzÖƒ;jÉ\\\"ÊýÞ¹4áÉÀ}E\\0œñW±‘!9çÚ¹_¾4D\\\\šeN	®¤ð=+ñûíÓ­Sw-.%?ãRË§ñ#À5ÆY»à€.zgåZ(s“Ÿ~*-Q·jWDq;Èâ§¶å£Ïç“W{#²1$vî?zWOàÈÕõ%$äôçØW/œ°dâºÏ.Ûçoî®sWGs,GÂÏpÑT¦“l02TŸÍ‰þµ£úU=<lÓ-SÒ\\\'>ê\rYÝÓ5ŒŸ¼ÎU°OÒ:zw¥\\\'#¯zaa×ùT2Ãw&×ô¤$u¦îàö ,<¶8ü©¡¹#¾i¥²=Å(#¯QH,8ž+Æ„ÿ\\0Â\râ}6ãÿ\\0E5l†ã§SXž3 ø#_íÿ\\0ÛŸýhcŽçQüéTòsõ¨·uæ€ÜÇ?ãYØì±d7=)à‘ßô¨ºIúSƒgòÍ4Øš\\\'\rƒŠxpFz{UpØÅ;põ¥~Â&ÜïRúU]ùÇ9sš9ìx÷§qX²œf¦VÈª€Üt©ƒZ4JîvZªí“ÏÖ¤v#5]ŸŸSŠ% EqŽ)…²?úôÒØÏÒÇè+7± ¤žüæŒöííM\\\'¶(@æ§©C‹phÝŠh?µ!lvúæž¢žÿ\\0ÖšXÏZCß8Í0’G<\n)<ñœŸZ¹\\0@j%ØqWâá@éýkH\\\"&ÎGâ\\\"ÖÅIã{~æOËú×£üGl.œ8ÌŸÉkÎŽ9ú×Sø3‚Õ€ *å‹l˜±aŒcñÍSŸ­M\r¥ÉÁcÞ±nÛ›C{U¡Û3ò0$qŽŸÖ½ÓýD~»Gò¯6ÓØ\\\'<Œžõé6ƒ;AÎáÔR©¥‹ZÜÜ¶áGÓ½]C‘ÇãÍP‡€*àn(ZÈ”¿NjŒòeŽN\Z–W$dwªÉóc·zm±E\\\\æüq64ÎéTÛ<ž*á´r¦äÄúãÖøêF\ZLJLõû­\\\\ŽŒK\\\\G\\\\õöGà6Äz†š	Hý”`bº+n+N¹\\\\ÿ\\0t\nÝ¶¨Ïœ.ÛaQšˆä?E<œà‘Å4>sÎ*¬ò‚O<ö­» ¹oq^1ÂMMÜôi¸ï“ë^µy!T’Fšñí—QaIAçéÖˆ´îÙÓî¬z–„O‘©®ÎÈü»A<\\08®CEqÓ$þµÕÚØã\\\"³‚wlU{\Z¬åPó‘ž*¤²`“NyâªK\\\'_J¶Îh¢Ûús^qãY3©ÛGËÜ‘å]íË‚Åç¸¯8ñk—ñküõÿ\\0yJ~õÿ\\0­Ž¨#©øxÎÓJÌr|£õÎå¯C\ržø®À\n¡%p˜ÂO¾å®ÜHzÒLÆ¤m\\\"I_ŽµŸ;¼}jyœ˜úVtÎ\Z†û„QRáù8â¨»ã9<zÕ™ÎsTglDÇ=3XHéìy‘¯¯.Îí’;rÙýkÕ‰!ÎÜ(\\\'¾+Ë­\\\\Ë\\0\\\'–#©#Šôé\\\\4ÏŽ2Ý?­m9{‰\\\"mï©È5&p3Ò¡VÇ_Öž±â³é¨1Ç©8éÍFÄsëK“ƒœS=N(‡ã–êÕNØHüÇøWGðÌ[æC•Ú€îÝóÓêr^;}Ú´I‘ÄC#¿$×aðÒM7xS‰dË`úå]˜o¶sâ%¡é–ËÈÆpy­8‡B?*¡l6œzÕäè=)#•²aœúÓ¸Ï\n`û½{Ó€Î8Í;ÜÅˆÀâ¸oˆn|«5í±çýÚíÉÉÍyïÄy?Ò­w+1üHÒ¥êiMjxuÃ+êWÇÞ™‰ÏûÆ­DJ¦¥g’%ºvmÜÌÜ­^…Ù²qò€2=)ßSµ!-6Iùºõ®ÛÁÉÅË–ÙŒß5Ä+ï”ãïŒWyàØÕìn«eŠªãÔ°­¨õ9±h{E°+k\nž\n¢¨ç§\\0TÅ²£¶)ƒåãÒŒü¢°–ìÁl)n8¦Çç=iÄàc¡¨‰Éj]Æ‡L9Ï(-ÆÎÝM&@þfÅ>Ôœ×ëXš§ŠôÝ1ŒeÌÓ‘Ä2GÔôÆê>3Ô¯	HJÚÄz;˜ýOçÒ¡Í-aFrò=\nóR´³]÷7Ä?3\\0*ã<aã¼-¬Û[¬’´¶SG¿nÕ‘†yäõ®IæyX»»;’ÌÅæk;Ycý‹~3ÿ\\0.òè&³ç“z1ÃÅnkÏoÂš\rÉ÷¨÷Žs×­!“$Ÿ×5Lhœ>{óÒ¤ïUC`COVËg¿CïH\ZêYœr1ïO\rÆOóªÁ‰Ž)Û¸Èê=ê¯ryKø^£úÓÃóÖªàcùô§ù˜=psÛšMÙÙ\nÅÀØäœö©UúsÒ©,€Ž½ù©q¸\ZdØäëþ5	|“Mb3‘ŒÔlØ&ÊHyqßS	ëÚ›¸g§lþ4™è;w5Ê·Qûû^´nÃnìi™õüiÆH<g¦h*ÃÇ±Žh$¯Â7Ê¡Í4ç wÅ0°âF8ÇåMfäàc>”ì1ùT{³Æh²6MYóž*òaG^*·“É«jØ9­¡¢2žçñå¬B»cþù¯9b2zZïþ!“ö»ž6¾}ùZóæ#v{zÖòmÅ•Ç/=jÊ1* \\0{wª¡±À«Q&è7z3Y=\r–»Ÿ€ ŒBàs¥zUŠáÛ\\\'$q“^_¥ctjqË\nõ\r¡89õ3oK—²fÌm«ð½³ïT¢l\\0;Ôûð´Ñ‹s(ÇPµg»ä‘Þ¤¸“æëYîä¾rx÷©“4„NkÇ2gN·\\0g÷¹úaOJæ4fo´\\0Ë‘[¾7›kE;Óÿ\\0¯\\\\þ„Øº\\0‚sÀþµQ¿\\\"e«sXõÛ¬(`3Zð6ã·ZÊ¶]ª¸=8ÍiDÞüÿ\\0:KB&ZwÂœU“\\\'=©ÓKƒ÷¹ªRÉÉäâ”™1W+êSl±¸n>XØ–¼¯G@nãªã©¯D×\\\'	¢Þ¹$ý~é¯6Ó™ÚéJ|§rŽ>´éìÑºVhõíå¶RxëÏã]$ç¯W;¤©[X³‚JƒœÖÒI„ã?…ØÎ®¬¶ó9úUIdã­5¥ pzõVWàž1Ú”™	ÊÄ7ú×Ÿx øIXœ°.qÎpãÞ±%¸9¯?ñ+«xšàv¢üw?Ö¡½NšKTv^XÌçï.ÑPýU×™p1Î:\ZãüBi“‘ŒïQÇ§ÍþºGsÎçZ]7¡Uï;Ž–ONž•JW$c÷‘×šªí“‘š‰0Š!•ÇáY×òyvwèŒxúU×cŸçšÊÕÛ\ZmÛgÊnOn\rdõ6Š9-@Õ¬RL`b½ÈÎ?×zóŽí^u¦*AÀ>F…8çp\\\\}:× #nRÀñœÖµ¶ŒN÷³.)ÿ\\0\nxoj…8\\0÷§ç9k5©#÷pjAÉÏµ=}ªhÆXSD´y§Ü·‰6±¯ºgú×£ü:Úú2¨M»YrÞ§\rþ\nó/»?‹®\rÅB¨Ï?Â\rz·Ã¨U|3¡þgs¸ÈÇOç]ô©³ŸöGszUÕàr*”9Ú1Å\\\\SëPŽFHŸtŽù¥\rÅF­òŒÓ‹Ö†ÂÄ€×™üG“þ&1.ì·Î}2Çü+ÒKzu¯+ø“0þÓ“9ýÝ¢çÝ\\\'º4¤µ<^ÜåÆ1Œný+J\\\"«ýÁ‹6ã§5›\n§’09#Ö¯FÇh$úv¢R;¢»“nê2ÈŠôÆ­cÀù®ø×™«v\\\\®Aëþz·‚âÅ®š¡¾õÒ±ã/?Öºh»\\\'s²=[vOéN-òŽj-Ü÷úÓYÂ©$ã¥r7ÜÉ.Ä„þµ`Ÿ1 ¼×9«x×NÓY£ˆ››…r3Àú·Jáu?ê:£–.#ÿ\\0,bà~\\\'©¬Ü×CxP”µzö¯âí?Ncoö›üžŸSÐW©øŸRÕ#J ‡§—ëõn§ô¬\\0FÑŽ§Jpn	þµœ¥Ýp£ì‰	‡×Þ8Çô¨‹#9È<qL,pyïSÔÝ\\\"Rù<¸ëTµw?Ø÷Àp\r¼Ÿú	©‹rÉ=ê–ªIÒ/pú‡Ïýòi_[!¸és]_ w\\\"±ÁoåP‡ ’iò¹$gÅ[ÑjsÛR}ç¾qïNÎ{U3\\\'8ñ\\\'Ý:ÔÝ_Aò»Ž‡¥CŒàâª‡\\\'9ãž)áð Ž~”î&´,oÈéÇ¸§‡ÁÇªÛóõ¥ßòŽFE4õ»–ÑúzÔáºÕ|ôÇ­L$ÇüÐ˜¬X.{šBÜuªåˆ>¹¥“Ö•î$\\\'#ž‡Þ‚xÈ¦\\\'”½Á¤ÆIœõííÖŽÜÔ{°?•ùÇÙI÷ò{Q»úw¦ŽMàã¯¥AXRIÏzc?¹Áö¤$Sž”ÍÙoSéOfq6\\0ÏZœ?æ©¡ùG¥H_n=3ZÅv2’8¯ˆfþÑIàBÇùÂ’Aë]‡Žäß©À¹é6?á\\\\nFzf¶nÑH˜UËLàg½R’rjÝ£Œ‘ŒŽõ›ÓsX=M½9÷^F	Èg®qÍz¯ÊŠ	œW•iDûl÷•sÇ½zŒòÒ¡ékƒê$b<ŒÓÝÀSƒŠ¨I<à äg)¶BD3É–9$ÕFp¹ç\\\'Ò+÷ÈéÚªHëÔu¬¯ÔÞ*Ç/ãY	‹Üîäþ ¶oãœžßZ·âë6ke(Vê9<ðª^ÚÚµº2d^}y¬5ˆö™ìp¼Ò®#aI¬èÛ$óÞ§iv¨ÉéïI=52–âÍ&ìã9©I\\\'Ö’YG$\\0yÎj«Hw{ÔI¶i”|DøðýîX\rÐ°Ï¦F+ƒÒyÏó|Áx®ÃÄÒcÃ÷\\\\ã!W\\\'Ý…q:Sbs´žHSŽÌÑi${>ž»mmÀ9ÄJOìŠ¾Ó|¼`ÔVu™Å¼Yì«üªS(çÒ«c+²w—Á¨]Î3Í@dËrA¦´±š@‘*òï^oâ9Cx—P\\\'€¬ª=È£ùæ½\Z—Èê+Ìu²dñ¢ÿ\\0Ãö‚¸>Àþ”E+\\\\ÒæGwà§oì—ùJ†`yîÄ×DÒðF\næü&Û4’\nàÇzÙyN©íC}ˆ’÷‰’;sP»úf˜[ƒÎj2Ü{ŠÍêRÐWaŽ{Ö.¸åt›²’À÷\\\"µK†àÏlÖ‰åhs“Ó*3õ`?­J½ÕËŽç§Ü4ºµ¤eñºUsÇÞèÐ6\\\"LuÅynœêúä§*Œ×œW§FvªŒvæ¶—Â‘?µ.£zœçšœôÏåUÕèŠIZiUÕV5+±³Ëg¯ßÖ±»XU‹q¹†;uª òõ«–Ã==êãn¤IžI¯Ê[ÆWd¸Ÿi9è8Ê½‹ÀèSD¶Q†]¬Ù×oùü+ÃõY·xŠöR	éÏ>›{oÃÜ>Š®ªísõoð®Ø|9±¼Dþ« ŒóUÐü¼t©ƒc§Ò§s•’¯Ýô¥ç\\0ç¥1XR–â$à\\0zW|F¶£©’O*‚;|Ÿýzöy‡¥x‡ÄYÇÚõŸâUý\ZLÖ–çœÛùñ:\Z°Ýêœp`žGJ»o·8ÙÛ=aBßS±½Äs*© üÝ=kÙ<)=½œz[Ü2Å¬’³±Àû§ævš£,—.Xðv¯obkl´)ÎÕPzì)ºÊ1iu3•Q«ìzN§ñÂ’Å\Zåÿ\\0½÷Wó=kŠÖ<S©jŒR[‚‘<¨² ýyÉ¬‚¹3ô¥Tp z\Zâ”®õ:¡F0Õ!Ê²HÚ:ãìõÂNß­4ž¹ëK˜×’ä»¶ƒü&âG·çQôÇÂš_Œj}ÊI’r:{R\\0ñL‘ŽFM3yÏ#èsEõ*Úh<áé×ôªšžF“yœÜIø\ZŸxÉëU5I	Ò¯˜ÿ\\0A4-íØ$šL¸ç\\03ßÖ‚p0\\0éíP+€Ã‘ÓëRoÈ\\\'ßÞ´o¡…Êò\\0ä}ièçh¶\Z¬ìÙ¿~y¥Wê>§5›wÔ«ÃôÇò§+äryê8ª»»ÿ\\0SOWÏN„ã‘ÖŸ5¶%Ä³¿æ8éÚ”H\\0#ó¨ã8Ï\\\\R‡$†+ŒÔîÖ„ÙRL¾Õ0Ä3TÕ89ëš”>sÈäÑæMºCwÏ&‘ŒUpÙèjMÀŽÙ¡¶´&} cŽsÁâ™‘õÅ lóíM‚]	C`{z\ZP{“ùT%»SïßÚ–¨\Z¬_8\r€qéNÝß§*0Þø¥Ý‘Æ)Øgç§Þ˜I\\\'9É¤$`g­4µV»bPØÇ<÷§—9àäU}ÀŒdâø5|ÄÚçãWÝ«¨ÏÇ?í5ržµÑøÅ·kgÚüëš­÷UÈšžÝˆu=F*¾{÷©!?¼ìi2“:\rîÕmÁýè9ÇNkÒâ˜\\\"ŽG>õæ:!Î©hÛþuèÈÅ[FGb3Q{hÍ]%”d`ã=A+‡b7W·¥@_8ý)…¾bß¨¤ä%¢JY˜äüžžõ w¥w?Ï5\\\\¹9pk6îj•·9;5ô …Lñõ5[ÃEŸY´èd_çKâ·\rª(îÄ þf£ðÃgZµô.Hãø…tCH£;{ç®Å\\\'Ê	ëßÞ‹‰°„J®Ž\\0\\0õ÷ª²Í’A\\\'ÐVk`jì{ÌA>‡­@ïónî*6mÃ¯©¥Ç>•›fËs+Å2ãAÃ:Ž~¹þ•ÊèÎbN#ö­ïÊ•’pÓ oð®kJaæ \\\'’ëz¸¯u‡ÛG´ò¢UàmP¸Ï ¨š_½“šeÄ€1PxÝýj«?QŸ¯ÒœŒùnËbqŽNx ?|þµOÌ\\0Œg#¡¥I`ZŽk\rÅ\ZöÜ.sÅyn¦ûõ½@ñÍÃòz1Ò½B²<gŒq^K{!mJí°>iålôêÆ´·» é;HôO9]19fs’{ð+MäÆ{¯ZÅðÓ…Ð£]O`?¥_y>‡Ò¦{‰ë\\\"Á|úðzÒ$xªáÉR½ÿ\\0:7ñÏ¦9¨¸ùlHÌvžNkŸñX2è² $uuûÀŸå[lä¨æ¹ßKåé`n ´€~„ÿ\\0JQZêrzTBbÙ\\0\\\'©ãÓ5é(Ù\\\\Ÿ›¸ú×›èŒSZ€Ì7=»×¢#nc>•¤äùQ*ÜÎÅÅq}óÖ¤Ý´AÏP0ýyµLþb³LMhXSïúÖ•¸^}k&6Ã­j‡Û;÷PŸÒ­-Lg¥\r»f¸Õ¦ÁÝ¾cÆ=ëß<\n¡t(ˆÎ6¨éõ¯ŸS-r°ÜNIÇ¯ <\\0Îþ…Ø¼@ü‡ø×m;ºlÃ¾‡^ùzTÀóŠ…Aìiá¹çëPr²pI^¼\npmÝ{Ô%Ò8ÕÙ‚‚;úV¡âý&Ë*gó¤îÂ7ÿ\\0*—8ÇráNRÙníÒ¼+Ç+%åÖ¦¦ç’à¨ÛÉá€þ•Ôê><¿¸Ü–h–ÈGNæÿ\\0\\\\£Ü¼ŽÌîY˜î,z’NI¬]e{´°“[œö™áçX·]É·$6Å<ÖôQC„…\\0èSîM4¸*\\\'=i’AÇjÎu›G\\\\(%k’–qõæ“œdu>õLcÍ±Ôwô¬¹‘·-‰3Æsš6ò<TAð@Áüi¥ÏÖ’cp&Îs}OZ]ØàŸÄqQï$óžqQ™·éÜ9	wzpy#4mõ\\0¨ƒŒñ×84†SžO¾Z7NÃð1ŽýsÒÈo^´ÍÃi<ŽÝi|Àpyæ¦ö+”SÐŽ¾•WR#û*ó¦|—è}NÏÎ	éUu7L»\\0ù-Ç§œt	/u’)‡!EHÎŒôçúUd9Ïz—\nNp{U³èÁØvëŒ\ZgåÀÍ1ÎFGô¦£`õüª|ÙV×BÀa¸`É½I¸;ç×5\\\\tï’:Šz²ñ“È¦ýÌ˜0õSšvüœqøT ár8÷Û‰8`:b“×rQh7rA÷þ	y>µT?n•*±ÎH§Ô‡Ò:ýjPÙãU•‰òO½<>á÷¹Å=‰hŸ<“Hüê2Ü`ôúÒ=±ëU«D2RüqÉ£pÁÏAQîéÐb”0\nyÈéœÑäICœv¥\\\'Œä}*Äü{õ£wÌO¯­c™øàŸJhn{ÓY†î§ð¨Ëà£¥Vˆ\Z¸òä±õíK¼‚Nr?E¸ã½4±§=éÆöÐm?‹	:ä™þâà~…Ö¶üLCk3óµG\\\'Ú±Ö·[#èþðÇò¦S‘ˆ\\\"–Ã7t6_í;]ßßÈ÷â½9\\0Ý×ô¯=Ñ2Ú¾H\\0yú\ZîaŒný+>æëT]V àõëŠ]Þ•Yî<ñš“v[œÛ)…‚Sµp wªeÂ¯^}\\0©gr“Û8ªäÇç”™¤Çø™Ãj¼@™¥ð¸Ý­AÁ8}ØöÕo°m^^N\\0QúUŸ°]^&=\\0oýÖßòí3-}£=,Ì\Z¨Òdã9ÍFgù98îj\\\"ã\\0çÓ¥`Ý´6Œz’—<G¿j@àžp=ªù$älÑ¸Àgš¶¬®[êaø¹÷XÀ¹Çïsÿ\\0ŽŸñ¬-\r}ne^¼w¯â×Ävª¹êÙü1þ5¢ÿ\\0ÈBÐœ`N¹ún¬~LþÙê’Ì^g8ÎI\\\'*»ÈBõÏrEBÓdž½é†LsÈìMfÚcIìX/ž\\\\ÔÐìê+=\\\\œóÈ89â®Úgp#éInÑ\Zû¶ÄIéŒŠñÒþkÈùoÞ1lž¤šõ©äÛ	Æ@Ú•xä29ÀÎµt]ÚÞ†tÖ·=/@`ºß63é¸ÕÖ“ö¬ŠhÖ¸Ï*Ý{Æ®4¿CXÏâÔµ£Ð±æÇóÍI¿xïTƒç‘ÎjPç>¢¤dåÇJæ|bØÓáfÿ\\0ÙZº\rÞõÉøÖB-íP÷Ù±ôüj—Kfg‡²ú´2p@r:tùHß!ÈÆk‡ðÒâê“¹\\\\·è­vaºtÿ\\0\Zsmè$º–ÕÎIüÅA÷ªúŽÔø·+9-’ÜŽ;b¦â4 ùœ`÷æ´oœG¤]¸è°;~Jk:Ïýa9«:Ü…<7©8<‹i?ôZÇá0ž²V<JÚb.“À}àå1è.r7ÀÀè+ç­:ÂêâáZ8Ø\\0Àîì\\0¯T¶ñ]Í–‹¢*:©\r+œç°®‰UŒ\\\"ÓÜŠ”gVK‘›s¨[XÄd¸™#P3–8®cQñä(JXÂelpí¿âk¹¼šîo6âW–L`3œT%óœžzõ®9VmTðŽ¯S^ÿ\\0_Ôu2~ÓrÅqò¢ªáýk7z`Urà`úSL¸à‘Ž½k½ï¡Ö©$¬‹‰9È\\\"˜d$c•lò[õ¦–ãÐç\\0Òo¹j(œ¶{ñÚ‚Ç¿øUs è§­(~s¸îÏ¥u¹J$»ð@RÎ9ü#58ãÀãž´…²r28ïÿ\\0×§Í£\ZrrØ\\\'<œv¤Þvô¨ñyíš²êj[°ÔIwžI`qíÞšd\\0\\0ITdŽ¸ýi›öŽÄJI®ƒ³\\\'ØñÇzRã§ÏJ…eÉÇsêqÅ)Œ|Ý=h¿3+CÌA%€ÿ\\0&”±cß5\\\'w8=:Ñæv8$ß@±31žŽ}ª¶ ÙÓ.»~å¿‘§b£·úÕ^þMÚ}È8Ï”Ùü8Þè™+Å²hÜŽ TÁÉäÕDpÝOÐÔêÿ\\0)95ºìp°\\\'ƒœ\Z`sú`R³d··Þ£N:O£+bQ#oØGCG¥J`e€9äc¥@®N0N)ÃMŽîZ”­¡OÍ–Ëíöâ”?<€3úT;¸ç‘Ü…*žrsŒŠ¨½5\\\"ÚèNæ+‘R+ÈéŠª„œýsR+à\\0}9Å;^Àôz–Õ°;sÍH#\\\"ªà@?ýj¾0F¯µ>¦n$¯)çI§9Æ	ù½jCî}(Vbzz}isj;\\\"Ðp‘ÔÒ‡\rƒ×¿\\\" ÄnÀ§nÈ\\\'ž¹äóWêE‰KŽ1ÁúTnYÇÊØÁç…È‡JFn>¦•®Å°ðãhÚ¥0úŽƒñ¦–SéM\\\'n9íÅZIì‚ÀXÆE<-€	ÀÉüê pIÏQùsJ_9#œ{ðh»¾‚±ÄxYµ™óŒ€¿ú¬rëZþ mN#åÿ\\0ÐEdÍh™›HÎ)H*{ÔÑ:í Ž{S%#Œ:\\\\Îå8.[¦kh‡\ZŒàž8®Ñm0çœ×£q¨ÂG^xü\ruêÿ\\0.O>¸¬¥~k£ZmX»a~ñ>ÝjMÄu5VRr\\0ÆzTŒüwc­-.[BË/$ô Õràdòq×üúPHm¤ñê3QÎT\rÀ(íÁ¨e¤qšÓoÕ®y¾Â­øeöj±¶\\0Â±çýÓšÏÕuIÎŒŠ½áÆÿ\\0‰†I\nØÀö®Ÿ±¡ÍâüÎÐ¾	Ç?JMÿ\\0.sÐuN{uÇN”àç\nFI^:W-Þçe–ÄÛòr1K¸Ž}jÜ’	éëHq\\\'ŠwvÔ40üXØkOucúŠÌÑ‰þÒ´çƒ*ÿ\\0:»â·ÍÕºrB¡#ñ?ýj­ ¶u[\\\\ç\nXú	­×Áª9ïj‡s»\\0õÇi÷<tâ ¤7±8¤ÜÆIíX¦ìo¹eX¨ê}:V•§ÝêqÆx¬t|¾ÁØç§zÕÂÆ\\0Åi­Ìª«\\\"[Ù€´™‡\\0#þäh¼.{\\0é^›¨ÌMºqÈ7_÷MyŠ­´äŸSZ)jÌ¢¬Ñè:c‘¤Ûçä8ç©É«&MÍÎC\n£`ûtøW“éÇLš˜>âÙ…s·«hèŒKjç8=*”?8È5@9%rG2*ep~b{qI;ŠQ.8®WÆ\\\'{Ú\\\'´Ÿû-tP@¹®KÅrn½3ÀBßLŸþµi­È²áÅ>x|äÙõ®¬1\\\\qÁéþ}+•ðáýúðLã½t{þ÷ÍúsDìR‰q\\\\™Jz¾1ùU:¡êIî3QMvûŠƒ´w¨½†©É›ÑjöÀ´Ètuª:Ž´÷¶Ïo°$,0Ù9,=¥d-Œ“»¯Zk6çïƒS:šXÖh§vHv.T\\0¥&ñŒçé‘Q;QŸJ‹<ñØÔ6ž¬èQIX°dÝ’;\Zic´Gñ¹°qßšBùxgÒž­°jËB_3‘Ï=qFþØÇN\rB²žz½ŠnpJ/ØvìL“ž;\ZirG¦j \\0“êIÿ\\0>´Á\\0€F	=ñI­SAbBÀäç©æœ\\\\àõã#­Wß‚yÿ\\0õRy¸Á<žÔõè€œ>x<:BÀÎ;\ZƒpÀ½ñH_8ä®{úTy–NX€ÑÇ­†Ü—#8_q.ã×4º÷Í&šZ…´Ð²d,A8çžM0€\\\\šˆ¸ìàŽÆ›¹˜c‘žit`þž¼{Sƒä…\\0s“Þ¡-€GqQ‰3Ïs×%­õÐ³¼ÿ\\0	çÓÒ:à»ð¨py}h\rÐî\n9ãÒš³^a{2}Ù\\\'\\\'¯éU¯7\\0s˜›?‘4¬ü‘ÅEzA²Ÿ»oåN/T‰ŸÂÉÑ¸È?Qš™_\nHÜ9ªhä‚jÂ8°G8­®q5mI†F×ó¦n<i$qúÔEð@ÁïM¦˜-Iò\\0#¨þtÄró0Ž¾¦¢.	W¸¥·æÚ ’xàT´ìV›Ãã9ÉöÏÃÈ#<ŒTÎIãÒ•XîÉÉ9ëÒ›½õ%.Åã#®niÍ\\\'ðsžõX»ã¾:w¥Vã<uæ¥;\nÈ”\\\\Îr2:TÑHü—Æ*¡SàdúÔê 9ôÏåNÂvz“—Ëx#Òƒ W9\\0@jv¶qšp^	³ïTÈi†Ps€Oµ)˜œ)`§±¡	 uéLv\\0d·QéKmÄÝË^sÎ{u=iRUeÿ\\0huçŠ©b7dÚ¦ù–2T|ÃîöÍSZ‰ÚÄ¤qü8¦ç\nO§µ@dqYpã±õ¤ŽGe—\nn÷¸rö,\\0ä:Q»\\0gp=F Çà;Òýì‚9«ÍîŽ+^ ë789åFsþÈ¬Îõ¡­Ú´ç|Ã¯ÐV}l¶9ÞáœQžy¢Šjèüê1ñÀ¯Ð×XåUN­rz;m¿ŒãŒ¿JêFÇ<uÆqô¬jjuSØ³2¯9ã\\\"”ÉÛ=8ëÖšXò8¿çëB\\0«»“žé[]»·`O$uìÁrAÎ*•È<œvª³¾	\\\\ç=jg±qò8íAÔ\\\' :Ðð÷ü~g¶Óý+*äæêSþÑþu« \\\\9$—¨­ßÂsCZ‡O»ï¸=0iùÎAéëŸÖ«ï ò2§8ÿ\\0>”¡<’;cÞ¹Ö‡fäí ÚÝsŒSùÉ#>ç<T/&[=öÅ\\\"¸#å4YŒ¾íEÉÄ`sÏsLÐÁmNÀÜzÿ\\0³L×›~ 9è :Míï…$~UªV‚9ïûÃ±Y\\0š<Ìã©Ï·X8Vô?;x€T~lW?C©¢í¹,êsü@ZRK±_AŠÌ²#ïqÏµK4¡OSŒ~uÑŽy®iê¯ÿ\\0›®zÄÃö¯>C–ç®:ìõy‚éwlî\\\\qùW1¼84 ÷V;»/–Ê*ìSùŒÒ“Œàò:\n†ÝöÚÄFxEüð(wÉÉ\\\'\\\'ÔsYÉêÒ7IY\\\\°X¨9#>üTªÜOlçš¨\\\\€JÇ?çÞ†v\r×¯JZ\\\"œØ¾²`œ’}k˜× ’ïXA\Z3\Z‚Tq÷šµÚv=IgÓ4Ã/´*‰tA½Êúe£Ù6ù6©# 9â´íœnöÅUÜHõè9=hÞZ™O˜ÚR\\\'2ü’Oz`sŒ‚zóP³`ñŽ*=íÁ#ð¬újkbrä9_JRä.3ž{Ubäg×>´#¥94Å‰K• ˜¤/€9ëP–#9ô¤gÆAôÆ)%Òãd¥ŽÑÈÏ§4ÍÌ§¯ÀÒÙ$={SY€ŽzŒS÷ˆi—96)»ðy=é…ð2I#Œtšd;z‘Çæ)¥¥‚è•›úrOÆ“yÉù½ª\\\"üdä{\nnâ:cš—{”µ%ÈÜ{ã¹…Ôdc9éÖ£ßž¼úŠis“×=j­¡-õ\\\'Þy\\\'¿\\\\æšœç*=Ä“ÓŒPž½ÍM“Ôµu¡ þ½)=OÓ5É\\\'Òž8ý(µ·\Z³dòOôž6ô¦\\0“œþ´›‰7ÕqåÆAÆIæŽ	ÀÇ¡çÛÒš€0O4Ô°U$œ{Òdà‘Í4¶OøSF@ÉbIéž”¬\Z\\\\°ç¯Lò{Ô7LMœÜô‡éO9$ƒþéª÷D}žaÏÜoåM+´)ß•’#¤ŽzÔÑ–$ÜzzÕD~GP«äåäô9é[$p»\\\"Îì`rAã&£-ÉãŸQI¸m\\0“Î3LbGéœ\nÂ[,£§¦hó`¶ZEvï~>´…ÛßÚêL‘AÏ8§)ËýÚ‰1·ð§ƒ…c´Œr{Ô¨±«X˜rN\Z]ãv:du¦n»zsN¨È=éµpl°„íÏ\\\'úT©Œpzæ«£‚y\\\"¤WÀ#qô§k#2@üï$œò)Û±ƒŠ(zû{Ó98ãµ¡IX~ï»§Ôw¨åÎ1óxÍ( \\09ãÞ”0Î\näg¦Fj’Ô‘‘ž6Œ\\0\\0©Á\\0vúŠŒ``ƒƒôéHUzu¦»	Ž-†Û’IçŠŽBUNh“Ôr{R†Æp:õ§ª€¤œrzgòê^}j‹xÀÀÇµ0œÝxÅZ½¬L“g#«Úœç9ù¿ ªUgP9Ô\\\'<òç¯Ö«V†\rY…&ih¤#WG`/ÉÈS€;×LŒYÆHÏ=:æ¹}wÏ÷Mt!ÈÎG\\\\VrøŽ¨lZg$…õÈ4;²¶Gz¹p^µ)ló‘ŽŸ…\\\'«Ô»X<ðçn2OÐ}j)[‘€3Ö‘UQ˜†b[ž¿Ò™#È9#ŸÆ¡«¢¢rœÊÄõ$š×ÐxyOû#§Ö±‰É­	°Òdg ­å±ÍJÜæöò¤åÀHÏùõ¦‡ËŒàu÷¨ƒmbAéMó=NEsê¤v\\\\œ±9=é»ñôõÍ@Òsü±J\\\\àøâ–ú²­v`êÍ¾ý½€ö©tS@r8SEíœóÞ;¢§$õàTºu¬ÖÓ™$\\\\¸ê:šÞéÆÌåå~Òéu7P…8sÏ·Öœ\\\\\\09ÉôñÆ1M.q×9¬ce±ÔÓÝš°>ØÏ8Éî;Óã\rÏ s“TEÁÛ´Æi¦c´sœc¾j”Ò@©É°ÕX½„ˆ9$ŽÔV$\ZdÌNàžüVÆâI¥(n§žÙ©öœ«A¼?5®O•Œ ?u@\\0ô8©7á­V,\\0È=(zšÍÊM‚H³æ`Œ7OzkHO¿­A¸\\0œóÇ(u9$ôÏµ$»—ø—ÛõïK»žxô9ïUÄ›†AãéK¸í\\0œûf’¸ü‹þRü\ZBN23ÇZ¯¿=±ŽÞ´ža\\\'¦x©ó)>„åðqÛ¹¦»å$ƒÛÖ˜XòqÚ¡Ý¹H9ç¥4Û&È”¹\rƒúô¥À$dg=jeÛïH[œúuªK]	nÏRrý9ä÷¨÷sžŸZŒ¶¿Ž)7eHSÒˆŠ÷DÅ°pZ@ã$ð0zzÔ9\\\'Ð_xö¡‹Ì‘Ü\nBÃ#za}Ã°üE\\0Œ{UYX”Ðâxç“Ï4»Æ:Sc§4ÝùŸ®*Z¹Iè?ÐJ\\\\ä®\\0ã¯½G» ÛƒHO§^)­…¦ã÷zžµ(`}½ª3¿…;~HÇæ•ŠMn‰K\\0Ýé2@Çö¨÷Œãèh\r•Çr3EŠ½µ¸ýücŠQÊðs“L$çð\\\"ƒÉœŸjVèHòÄÝ0s@`Ã5<:óNÃ½‡‡Ë{ZRÜwéL@àRG\\\'šºÐiØ“9cƒÎj’´ uØÙæ¼FOíþ(ëò7?…8­Q2~ã°Å8àúóS£céÏ|UTnj•`Ø¾‡o²-†ÿ\\0€¦îÀä|Þžµn29Í)p@^¸©V¶ÅõÜy`ÝÍ*·N?Æ .8Æ1Öœ ‚r-Eæ‰Ó @8ç\\\"ž…éÆ=j ß1$Â”7Íý\\0£Aôº\\\'ŽH\\0ûSƒäñŸ¥W8Ï \\\'§¯ùâœ<ç¯éN-Û@¶·-Á³Øädzvâ¤¡NHÀUXõ<TøÎÑùÐ›Ü–XŽÒ:sN8ÈÁ& \rŽ€ŒÓÃdvÏµ	5°¥aÌåT99 1+Ï$O¿Ji`WwB=¨Ü9$€@ïÞï¹Ô›ÌPÁIÁ<œòqI¿yà/¡ ÿ\\0J…XñƒÅ)“vI=…U»î<¾NxéHp@Ïã5c´ägÿ\\0­Al@Àõ÷&ÃÕ°$œp½!l‚O sLìpsôéL-“ÉàõÅWQY¥á&örzïoçPT÷§7²ŸöW«9žâÑIE4tžnÏ²œqî+p8-Ï9ê;õ¬\r5‚\\\\’q÷kQçùþ^~µœîÎšOÝ47c…ÎÞ”HH\\\'þµ›ö‡#ÇÒ™æ;0äzÍÖ¦™•UFHüj	.8e\\\'ª #‚yúÓ²è3íCfŠ›hÌ]:V<°­_´€ÚÃ[‚qRs¿¡Ç^)~`8?¥mŠ8xÇRC+ì=hw“ž¸ô¨ÙóŽ˜¤\\\'iàÂ³6JÄå±ÔãÛ¥8789Ç|•Y_8Å(›§QOb•­rÖþÜƒÚ›‘HÎ;\n‹~qÀ 8#€8ç&¥n[±(pzxÆ}©z…E¿Ž8ã­Ü“ëGAu&Ü\\099õ=©Ã@ç#µ@ò&¤VN88¡è†µµ‡’zzR–à1ÞšBý)¬ÝqÅ\\\'®Å(»’†Çÿ\\0ZƒœÛÞ¢\\08ëK¸2zT½F‰	Œÿ\\0*n}®i™\\0àŽ{óH[¦z\Za/Ê)ÏéPÇLR—ÊöõÁIlI¿\\0ƒëÔzPÕF~µlœ‘‘íÅ7y	Í1\\\\˜•)Ð‘ì)»°qÓè)›²:ûæš\\\\Ž£­èKÑ’ïÆ3×àR1ŒÔ;<pzÒ\\\'ƒëŠvêO1)à÷Ïµ\\0f¢\ródr>™¹9$ûSè&ØâÜdžý)b@ÇSëQç8ãÒ6ÖÉÉ¤ìÐ“9$çñ@~ø\\0‘P†\\\'¦z3×8#ÒªÄó[b`Äž)sž@8ÍBÒzFxFjl>mIwsÏ4ÒÀ“ž¦˜?àh,\\0ÆNOµ5óh;#®(-ž{÷¤-ÓžœÓsØšJìWKB@Ùl\Z	 tÁÀê1Q–þ.në×&„Šr¾ƒË\\0}3ÏÖ”òq“L,PãFþ¹	ï×ð¦ï’~´Ây#Ú‚ØéíG-Çv?vsœö§nÎ0:Ýj-üq©4¡ZCº¾„¥³œg×¦*¼ÄùGÝ<~âr:àýj9Îa“Ÿá<~QZ“).V38=ÈôÍH•][Ž94ôsLñZlr.ÅØ8ÏœŽ}zUpÝ=ûÓÃqÓ=ÎhZ…ÉwwÈÏZr·Õ}Üv$w§À\\\\ŽÔ¶E)]–úžE `IäŠapqÔi‘+´ÌHO`i¤\\\'¹gvÓž4åpÝI>˜õ¦ìùpT‘×­1ãØg5)i¡Zõ%VëÐg&äÆ	\\0úuæ©|œ#ðy8¦…u>NO óUn¤JF™™	<gð¦Á:È»·`c½eÈ×ˆïZ}³ÌŠ…‡±Z9e¹Êæ°}ÃåS”ã’>•T3©\\0(óÍ•Ú\\0ô¡%k~å§|’{Zp8çõÉª“\\\\m Ù#Ò£ŽweÜTŽ{Ž~´Öˆ–Ó/–!zäŠP@95U&Ý–ÈÀö§‡\rÀnøéNìc÷œ7Ì@<SKõêG¿éQ“Óóü)†TPÜà\Z4Ü“žº9º˜ÿ\\0¶ßÎ¢«2BÒ\\\\HGqäÔ‹l¨A\\\'8ë‘ZÝ#S”ž…T‰ßî©5b;#‘½‡=«+ò¨§lSÕÉ^>õ››ètB‚¾¢FŠ˜»GBsÖžHç\r&ã´zSNÒ\\0ê+>f÷:TtHzñÇùá‘‘Q“ÀÈã¥8O\\\\Ÿ@*KŠw±/{S€Ï\\\'¿`IàãùSƒ|Ø¤ö±¬Uµ$,A\\\'“zMÛ½#`ônŸ…F[‚2zÑnå6–„…ŽNs“QäœŒò9ëŠÙ\\\'ÿ\\0­Q9Ã¹Ñz‡ä‚ÜŽÔòàß§SxÝR†ä÷¦ÉNûïÁ<s@|‚ Š„Ðöôæß§½Mµ+šäÄž´¡ýG×<Ô;ðr)ÜœŽ™è³C¹7ËÐqšq`§o õ&««Á§ùG|Qg°Ô®îMœôâœã“ÅDëA8È÷©èRÔ”tëÛ)#¹½Dô$tü©rr¡”¶%-Ž3ïŠa\\\'©¤ã£gñ¤ †ÈÏ©$‰¾šãŽN{æ“yüé\\0~TäóŠŒ·\\\\ã5JÄ9Y-‚X’;t¥ÜvðOJŒœ±ùO‰¦‡Ú¤”í}	æ±&á“ƒïŠgƒ‘õúTa½;úRîsE…{¡áºóÇaš3‘Î=*,ýH>Ô…ºäýjÑ\r“È¾iCãéP†9¤cŒÔ\nVÉIêsI’XrÏ\\\\Ó	ùFö¦\nr:ÐÛMX”±\\\\ñÏj*.¨ïN=zv4ì%±! ž1œRtÏ9ïLÜ\\0¤\r“Ånä€àônÝŽ9éL%{géA#9çŒÐ%¦ƒò0yæ¹ p=©™9Àýh-ïÀý(\Z}Çî8éÏ½)n½½úÔyÎ4¡†ÑéÞ•†¤?qàœ‘íÈ¥´äòxþUnßà i’žãZRt¨ÉïÍƒƒõ Ñæ×Ü—8<ã4…ˆ®:j=øãµ)=ÈÅ+ãÃsQÖ£”þæN‡å4è)’ä¿û¦š¢Èƒu¡ÀéÖ£õ4)ÃqZ´r)2È|üûÓƒòs×=*-Üäw¤<·¾*l]ÕÉ‹€r\\0ÐÒ–ã\\0~µ\\\'¯$Sƒ—®ðÙëÅD³¼W#œJÿ\\0“U\\\\‘2àŽ¿•P“kTj‹¦#œr)Âèƒ€«ÁëýjŠ¹Ú2pZxn¤uÅJ‚œp1Œc<S¾ÓÏATžÆ¤Ç­Rµ¬+²çÚ*~”¢è\\0IéïTKAÁþ”¡Ï¯_SM¢yõ/}¤nìsJnpË×ÛTC|½(ß€3Œæ’ˆùÙ`:Ì¬7»@\\\'iæí|Ý»LçÖ©‡Áã¦¼ª«’Ç\\\'¶i´žáÎÑz[ðÈ0FTÕ§PõÈ¨É*@ÎZ€œ2§¢Z«w,Ëu–\\\'JŒ±a““Îj>¼Næ—==­.0¶ã‡|LÓ†À¦œ$uõÍ\nxÇN9¨m›%bBN3Å7¦qÍÈàóGnqH¾U¸¤žž½iq…ßÌžþœR‡õü…+Ë¨àÃü)A#¸ÿ\\0\nŒž94gÇSEô);h<r;ÓƒzgQ‚FqüéÁð¥&H0#škžžâ›ÈèqÅ!mÇ¦=èHw·lÓY„õ¦»`œÕ%s7!¹§‡è{Ô{±×<Ò†Éê:£4õÐ”;gãëN–$\nŒ7R†Áµ-\Z&JIlÛŠ`’?É¦ëÒ‚1Hl”\ZQÓØÔyÎ0Hô§g?R}iz™(fÁÀâ€\rÏÍQp1OG‹V{Ž-óc9>´àÙÇO_¥F[ \\0E47¨Ç¯4­qÝ\\\\›wlŽi…³œSKtÇLñHXGçM+åÐqbØçƒL-Ž¦h\\\'®xõ¦³d€gò§bdÅÜTŽ?:BÞÝy¦sœñéÞýîôìCœŽÀÒñ“ý*2x$PNF95H–ì;wbzô¤ÝÈÖš[Û± žƒ·œôíK»žEG»×§ÖØ Zv¸¶»>™¦ä¨é×µ&â{f‚zdš,\\\'Ü\\\\çµ(9úzSwàd\ZPØÎ0Ö€¸ìóÓ4„€ÃŠalóßë@lõ==úÑ`¹(ÃÇŒÒõ÷¦ƒÇOznãÐñJÃLyn{f€Ùi	Èýi¿®qM M\\\'¥ ÆsùRr ;Ð\Z=Ç¸ü=èÎ:šhlõJQ·zÔ1Àä`sH{ŠalçšRà”ì?QÙÉ<u£v3‘Múà}\r&y$Šä„’AÅ2Cû¦Ç÷M  zý)$ ÆßîšÓ!äóéJ¸=³Žõ÷§ž+Fs&J8“Jä¥E“øúÓƒc¯>ô™IfÏŽiÀä\\0NN*,ñëNÝœþ”¬5¾¤¤zç9ªòÃ8ÎH©7uÇçPÈÃ÷¦¦Õ‹(r{T€Ž˜ªêp\\\'ŒS^]ªpN~´¬+«]“½Â ÆI8ªßj‘_*Äsš€œšJµ	TocJ;Æ–&GPO¨ä¸9 vªœý*O,Èb1RÒ6„›ŽÆ“>þ„ýWy¦Væ&ÀïUÃ²Ê]Oµ;ÍwÎxÍ\ZîUÓØ”ÍÐs×Ú¢-»ŸÊ›ž0sAÀö¢À£Ôqáêh$àö”\\0SÏ­8äñüéu4H@ß­IO\\0Âš\\0^}(ÉÉ?&Ëµ´	Æ(ÝZnF84cŒgšEŽ=(ŽŸSH<gƒÍ.¥\\\"1‘Ïµ)lŒu÷ëL$t—€pO_J˜¡·f‚qÖšGz3ÆÀž•9O9ïL$ãé@\\09¢ÂL“=sÁ¤ÝøÓ7qŠ3êhHnBž~µÔ¥¹ãšQüª’1œ ‚3éë@áqúÓÓ”çµS1‹¸ðqÆiääg{æž[šM\ZÆZ)ïŒZPq‘ŠŒy¥ç•®]É3Œ‘ùQ¸öïëL\\\'Ç¹Éõç­+qá²FO8§nÚyáŒzRîêN9¥aÅÛb\\\\åAÁÈ¦ƒêy­3wÆ”M+åØpb>Py ’H\\\'µ3qÛõ¥\ré@\\\\Ryü:zÓIÏJñÓÿ\\0­IžpO¾qTD˜¤ƒŸåM$ç8¤\\\'Ó¯¥49?•	Ø¤’ÞÂ‚Ø\\0OJny °õäU=I¾ùb€x4™êiÁÈ‹{\nOný¨É&Œy^?ZLç#šh›‹þ=(ÝÎM ô¤q@\\\\vsÉ `þÓŒdRîëœÐÉ¥ÈÅ7w_é@9>Ô‚éŽÔ¹ÏçLïÏë@9S`¤?9Æ})71<\ZBNî‡ñ¤ç×ŠVcòÝM #4„àr\nLƒŒÐ\rÝé@n9â›œæ1EÇ>ôã8¦æ”ñÇ4âîÎ.ì÷¨ÁÁ<šRç×¥PRê8‘ùw¦°>[sÚŒŒóŽ)åÒ7¡ÿÙ','public/img/upload/thumbs/dca564f2439eb8e93047d0643ae3bcc1.jpg','DJJSDKJ','LKASJDASLKDJ','098980','089098',88080890.00,8098098.00,'AJSHAKSHJD','S','CKCMS','9018382908',23,108,0,'LASJDLASKJD','LJLJK'),(2,'1234','JPSE','LLLL','BERBAL','BEN','JPSELLLLBERBALBEN','ÿØÿà\\0JFIF\\0\\0\\0\\0\\0\\0ÿþ\\0>CREATOR: gd-jpeg v1.0 (using IJG JPEG v62), default quality\nÿÛ\\0C\\0		\n\r\Z\Z $.\\\' \\\",#(7),01444\\\'9=82<.342ÿÛ\\0C			\r\r2!!22222222222222222222222222222222222222222222222222ÿÀ\\0à€\\\"\\0ÿÄ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0	\nÿÄ\\0µ\\0\\0\\0}\\0!1AQa\\\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\\\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\\0\\0\\0\\0\\0\\0\\0\\0	\nÿÄ\\0µ\\0\\0w\\0!1AQaq\\\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\\\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\\0\\0\\0?\\0ôÌcâœšoÏ¯µ8wV9Ø „\n~)¢ž3Ðu÷ª°€/éJÊO”–ìãéO‘Ž”ƒ®)G¹¦®AÓ½)Á¥ÏNœÒÐÑ!Zx=)8¥¢Â`\\0Ï­<Žiƒ¯ Æ8ªH–ÅšP01Í õ4áÆ@Íà9Åð¤ÏAJùìHòÃÖ”	÷¦€¹ÎiÀÐ!Ã‘KœóH:gšQÓëH½M(¢¤\\\'éKAéAâÃÚœ éNŠBÍ­.)GŒÒ¹IF1špQŠNHëG\\\\v ´‰Àæ“o Š‚GjQŒ{Ôšï Ç4Ç\\\"ŸÀ‡‘Jår€>ô¸ N=i’cp1ÇZ\\\\R€1íKAV\Z\\0¸¥¢ì  ŒÒÑ@XLRÑE\n(¢€\n(¢€\n(¢€\nNÔ´PEPÞŠ( jZ;Ð&&8 ŒŒRÑ@Ximô§bŠa…I\\0f›¶ŸÎhÇîKW¯¥&1OïIŠ.£HÏJ@¹4þý(ÛNâå\ZzqH9ÇZx¤<(º Ò‘N Òàã‹‹—Q…x\\0ÑŸJ~qÅ <Š..T0ŽiivæƒÒ™6msÞ9ñoüIÿ\\0`«¯ýÕÐcëX9?ñoüIÿ\\0`«¯ýÔZ”ÀÎ)Ã¯½G–H?Z“¯Aj`ô:špäãÖ˜?8Œv L^±JŸAõ¤&œ8ÓÖÂëÒ€y ŠPj¬@áúv¥Þ3èiA4	Ï¦iAéH	ÏzPh£­8d\r4w§vÉíßÒš$PxÅ(8éÖ›Ž\rpZ}¹ 9éÒLRF\\\"œ:uü©ˆx9úR|SGN¦œJ8d}\r;Ðâ“½ëÍH‡søP)?ÏZ_ÆjP=h£=¨¸8â—ùÒ˜¥9õ¤Z·=i@4‚”i€g¨éJ9éÒƒšA‘Þ‘CˆÈâœN):Ó—­&iÅã¥.~´ÓÖœzõ¤h˜‡­8qÖ™Þž9¤Ç¨áER4\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\nCÒ–Šˆ3Þ–Š(\r(¢Š&){QE\\0&)Í:“Ú˜4!ÇJQF=é\\0ÀæGuâ”ôâ›žh%‡â“94ÍQ›bâ¹ÿ\\0É?ñ&èuÿ\\0¢š·ÎJçürâßø“þÁW_ú)¨¥!ïÁ÷§\noÈÅ8žâ˜˜âH¥\ròä~T™íH8lž†!o©\\\"ƒœœàþ”ñíLíO‘Å4‰cÈéJ:qÖ˜O8ü©Ý9˜¼ÇjQ×Ž´ÑšpëÆ($^ª)}?Â`Ræ©\\\"XàiÆõ ZŽ\\\'&”0ÀÍ4S±žÜæ\\\\~r	§•4Ðsô¥¦É\r8\nooz\\\\ã¥1XU<ŸjxäS¿OZ“Œc8¤!iy£ŒôâŽ)\\0¿J\\0£Š?\nCÓ¯4î”ÐsÚ—ßŠBþîÔÑJ\\\\Ò-_Z1Šh$jw&“)1F>”áÁ¦àõ§‘HÑœíJ84ÐvÓð#¡N´£Žô¥8R- ¢Š)QE\\0QE\\0QE\\0QE\\0QE\\0QE\\0QE\\0QE\\0QE\\0QE\\0QE\\0QE\\0QE\\0\Z( ŠJS@‚›œóÚšN”	‰×­¹¤#š^½éŠãOÖŠ\\\\\Zo½36!ëÁzP(#šd´ Á¬qðÿ\\0Äƒþ¡W_ú)« ¹ÿ\\0ø·þ$ÿ\\0°U×þŠjíÐTƒ‘‘Q€sþñøcéBwÐx÷¹Éæ›š\\\\ÓHLQíNÉê\r4€æœ@‡|âŸÔw¦Ó²1ÇåMjHî½úQMÏ§ò¥ÎOÒ˜šÞ—98¦À\\\"Œôëš.\\\"^ýxúÒÓùyÓ…4!ÂíH3GZbcúüÓ»óéš`<óÒ”{ãò¦·ÔD€‚8}ìãŒÓ^´î„gŠw‡Å?¹<â£iã qŒP!àóJ{ÓGQŠ=jDÞ—Rvâ”ŠC@\r.;R˜ P48RÒu£§Ö‘HwJQ‘H;Rç‘¢&œNŠhÅ/cRZÅ\\0ñØRtãO8Å#E¨¹íJ);ã4¢‘ªQE\\\"‚Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( \\\"‚E8Ñ@¬4Ç­:“ç½-\\0‚Š)¤\\\\Pµ-&4g8í@\\\\}Q@Ãµ4Òô„óA,LqA4£¥!öÉ{éM\\\"”s@\\\\æ˜ž£O)ØÅ&=3L›	Æ9â°<sÿ\\0$ûÄŸö\nºÿ\\0ÑM]ÎpkŸñÏü“ïØ*ëÿ\\0E5 [™ þ´þ ~U\\\'=)ùõ§rG‚9¥$‘šfr84àyÇZ.HðsßšP	¦Ž:S…5¨‡Ž´ì‚F8¦Ó‡_jh–)<c4‹Á9üè$u Æ\r1	ZžE7#¸¥ô¬=	üiù¦)Ãôª¾‚c‡ìóïLÎ:SæXvìœÓ‡ó¨ÇÎiã­ÓÔç¨Þ½Í/ ri…‡Š9ô¨óR!ÔþT\\\\,<r8ãð ri ò@§çœûSdŠ­\\0ûÐyô£êj@QŒP(J\\\\sÅu });<â‘HçšpäsH0iIÁ©fˆp¸¥#ÀxæŸ×¥#H‚ŒŽiàcŠhÍ;<äÒf‘Ðp¥ïIÒ–¤ÕQ@ÂŠ( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( jLûRšh¦OQÝG–\\0:P\r! #<RÇ4ãILM	úP}èîhõ BPph<P:ûP/ <QƒJ@¤è3@4\\0W;ã±‡þ$ÿ\\0°U×þŠjè³ƒŒW=ã¯ù\\\'Þ$ÿ\\0°U×þŠjd™Y`ÒŠ¬ôö§$„žN)\\\\‹2ÎìcqÅHj9QéRg?Ö«©$‚–˜8éŒu£vsÏÉ$ÏàOzg^:S»PH¤äçÒŽO>”Úp4Ð‡ŽzPúS@ïš[ØP¹ÇjBÄiÿ\\0®ƒÏÖ˜>s‘Š”1éQ…ÛÓœµ4\\\"@Aö4àppjÜ´íÀc\\\"‹6xâ€Ü`Ôù<ƒšb@Þ™ö©PƒŽ¹ªû°HÏ¡ñžy hyÆiÙã¿5L>#½J\\\'\\0ž;Ó‹CîûÒ÷æ«‹„É\\\\Œv§‰nçÖ4J=éj0ß(æžséHqJ8æ›ÛŒS»R)\n1ŠQÊã¤-I¢ZpëM})Û&iò¥pE0ÜÓðsRÍ¢(¥R\nE‹EP0¢Š(\\0¢Š(\\0¢Š(\\0¢Š(\\0¢Š(\\0¢ŠJ\\0Z(¢€\n(¢€\n(¢€\n(¢€\n@zÒÆ(™7ƒIžzÒgŠ2ô \\\\ÃóFi™´dçŽh°sÈ4t¦ƒAäQ`æºšAŽÄP3Ši\\\\r8 {ŽžÔu<Šjõ§g€NëQMÓwqÇZëšp\\\'-Š=½iœœb™\rŽÆ(ç<Rvæ”ph†y®ÇCþ-÷‰?ìuÿ\\0¢šº\\\\÷ŽOü[ïãþW_ú)¨™V`§?‘§y€@ïÍ?`b—bîÎ1Eˆ’@#¦{Të#`àóQ„#¦?*r!#Š6%îLàœ;Òp`iÊO<R˜ƒ)ÝƒÜqTKOÈÈ?\\\\TÂBW8¦Î\\0<óÒœœ¦ó£ÔCÌÀœþ	UºgÝ¼Ò”F\\0Ç¾)ß°‡‡œzÔ…‚ƒžƒ½@c$œ\Zk6Fi!zy‹€{zÓƒñŽ¦¢ÆF:\nRŸ)\\0þ4î\\\"mà`cµøàÔ%OcŠ>c»©ÜH”6	Î1K½p Š¬CuÎ\r0± 4\\\\v.oÝÀ÷¥3¢“’?YfVQßšg˜Ì§†4›±\\\\¦¡»@rOÓx¸<µ”$$c¡÷¦‚õùÒæ\Z…Í3~¡¹\\0W\\\'ãOh#µ´‘¢fRîëÔÀUÙg`Ä‚ØëŒWžx¾è=ûÄ0\\0Þ•QzÜnŒø‚ýÛ-ypÇ§2œÿ\\0:qñ&¡SöË•éÒVÇó®`ÈîÙ$óœàtü¨\\\'8RÄãœžk§S>Tw:wŒõ¡ ßÌØä†;¸üs^—áM©\rÎÓ.2dWˆèÑ³Ì1ù¸ü+Ñ|- ·Ö @Heý\rg7vZŒR=L7ùñÉâ©Ç:¸îîEXßó{c­gc+X”œR†Èæ™¸c9â€Àð\r+\rJÄ€ŒàSò*}©àâ¦Æ‘‘(§ç\\\"£VÅ?éÒ¡1z¢Š)\ZQ@Q@Q@Q@Q@Q@Q@Q@Q@)3ô¦±\\0Ó`fšFr‡—š\\\\ÔdäSmÕ¨˜J«%ó3IæzT;†:âÃÍ;\\\"=¤‰|ÎzÒ‰3×¨ƒÞÃ×ó£”^ÒE‚Àô 1­@Þž—(ÕNäÙ§œTJÀŠRê£,@¬l¤·&éAªÿ\\0j€dOÄŠx`sK•—í!ÜyÇg#š@êGZQHwO`>¸¥ì)\\0ùhÔ\\0„öÅ7”îiyÏjbjãsøPO8¥é×4c\\\'Š	Ô_»\\\\ÿ\\0Žäžø—·üJ®¿ôSVùäâ°<r?âÞø“þÁW_ú)¨+©ÎŽ{Ó»TIëœŠ\ZhÍ’È§dc¯Ö£\Z@ÍM“Ž4àqÖ˜;Qž˜ëNä`óÁ¥Ï©¨ÁÆ1Á§×¯<ñEÄ;9àÜTA©Å.ážØRpFxÍ0ŸÃé@9¡x<Òæ£É\rëš“4!\\04¼RïMvÂžôÞƒ\Zíò‘š€·Ò•›=ê2jŠH4„ëL‘°)7g’rjz—a¯APJz÷æ¤vãYØ’OQÚš]€ŠVÀü«Ì<HÌÚÃÆóŒv\\0W¥ÈzäW—ë¯¾ör$È~bG­oOG±ÚÆFáßœòâ¤\réÐc¥D[wgŠr6AÅkfÄÓÝ\\\'†5ú¦	8\\\'?A]®€UõÛa÷CIŠã<\\\"ê—Ò3dþí€ÀÉéúW[á©öå³È,¦³’Ý•}®z’FíTÁŸjª—ÀòpjÊÌ¬ÍŠ”ÌØý™nA4ð€.´VèFj@i6!¼ŽqN\\0Š;Òç#HURZ”nÛLR1šjYÑ…SÅ:})j\rÐ©h¢…”´\\0QE\\0QE\\0QE\\0QE\\0QE\\0QE\\\'n(\\0¦³\\0)ÎàOçLq“Ïj¤Œg6º\\\'Œô¨Âçšk±\\\\ñT®&˜ŒFËœò\rh•Ž{¹µÇ\\0ã­B÷>œÕ)&¯ÍŒû\Z§+Ì[‚yíš‡\\\"Õ3P]õŒPn‡­dá›$€:sšO1ÆAüésÖ7ïKö~•†^EÈKuÓu\\\"œ6NhæDt+r;š±âN\rrÂñ‚ç\\\'Ó­[³¼’I\\0Œc±\\\'·µ\\\\ewc9SÒçM¼*’O\\0d×ˆø¯^¹Ôµ,²±‹\\\'ÊŒµW<qëŒd×ªêWîš=Ó„!¾Ï#ž˜S^ªÉ¹BŽ\\0ã½kvW!&Ði:Ž¦MZe ‡#Ü\ZÈ\n_Ž»}OCS•rÜv­yšwl9SÐé´ÿ\\0ê0L¦;™†È.pÅ{N©ji6÷\\\'uù±ëÞ¾x…pps^ßàmÉáôSÔ9ÇÐ€j*ûÉÜ#îI4u¸Á ·£Ü{ÒŒ÷®k÷n”„šas“Æ(Î:ŸÂchÇ¢Ã¸ ç½`xçþI÷‰}ô«¯ýÕ¼Å`xèÿ\\0Å¿ñ&?èuÿ\\0¢šÓ9[xÚ8Š$òsR†+Žr;ñLS×©¦O©\\\"6:äçÞœwg Ó0z#¿SR\\\'bÂ9#œÔ¡óÓ¨¨Š÷ü*PIç‘T„Çïn›\ZRä…Í úÒŽsA,ž›O4íØŠ@r(ÍP‡ãQ¸tüi¤ÖŽ8æ–¢°à@M82·LñM SýÃ<’\rE#òGéNãj´¯ó>ô®$)qŽ9ö¦ÎNj#»$àPWp<Ô\ZØq#½! ö¨ü°\\0žNh*OÊzù¤;Œ‘°¤çéPBç¸§N¼*–8&¢‡@ÏÖ­>kÈÙÒ¼§W`·2‚9iú÷÷¯M–RnÊ’3Ó5åz¹ÌŒÃ$³±$zæ·££\\\"E\\\"@nHÒ…#\\0…àúñQd†$üÜãS““žÇ¨ô­z	«êu~ÇÚeÉ?pþxÿ\\0ëU6Õ/-¯ØÃ;.Öe\\\\¤ŸãVü-‘%Á+•ò‰¬bì×23X’ÏzIÝ69n‘Ñ[xÏ[ƒæûS°ÞÁËÚ´áø‘ªD¹«uþUÈoFàqJ6–ÁÂž8©k¸%Ð­¾)Ê6™m‘½v±R?k[|R±r¢kyS\\\'±?Ê¼ \\\"1ë‚\r%±ƒÆ\r]P8#Ü-~\\\"h×£Ì‘O£\\\'øV¬,Ñç8[èÎ0Í´þµóØs‚p:y¥FxÛ!Û\\\'üñK–,=™ô¬:¤ëû¹ãqþËWtÇ1_1‹›˜Ô ‘Î	®ÛëÚ„;Š\\\\Ì¸ùdaýjy\\\"Æ£%±ô˜™O\\\"æŒãóÜ^2ÖáKéÈÍŸçWbø­Ärn{2Ÿ•\\\'Ite)Ô=ãzúÓ²zñX¾)jkñÂÀœ¡ü_‹âµÇK8ˆÏPÄgùÔûR«.Ç®Q^aÅX˜€Ö9÷Y?˜«ÑüO²e­eQìêi:2¶]A¢¸hþ%éMÑÜ®ÙúÕ¨¾!h®»Œ²(õ(hö3ìÙu:ú+™_hdo\\0Ïb¤åS§Œ4I:_ÅøäRöSì?m~ŠÆOi÷ubOÞS®³§È~KÈé ÿ\\0\Z\\\\’ì?kJŠ¢5+|dOú0§èXñ*¡¥ÈÅíb\\\\¢ª‹¸Ïñ¯çGÚ¾¿¬=¬K$Ñ¸zÕSpwÎ›ç¦Ì)òëv,3ÔNÝjºAüCŠ­%âçïÎ©+¹9K\\\'_J¡+õÅ6K´9ù…U’åV.W*ÛŸ^j\\\'<ŠîP\Zþu]¯#%×zÈ×Ð²N4ÆaØÕ\\\'ÔmÁÿ\\0ˆ³è\\\\T«Ù§Þº„÷ÇøÐ®\r\Zÿ\\0jBÀVIÖ¬TdÝEÿ\\0}ŠˆëÖâê?ÀÕÙìk>Ž1éZ6€=ñ\\\\²x‡LºQôÖœ3ðõºþ÷QE>êßá[S¦îcRZhlx¤¤>¾|\rÞ^ÜãûÄë^!©°IÀ t¯Fñ_Ä\r\\\\èÛ[_™¥r˜E‰ù<ã«Êî¯åÂ¿\\\'rÃ$sšÙA§veîØ–‘Î9>ªÀ89ªð)# t8§©%$úàö¦Ò¸ßfiZ\ró(#9==kÛ¼3—¥\\\"mÆOÀW‡ØœÝFÉÜ;u¯xÐÔ¥˜SÎ §Q~îænÜé\ZdÐUÇCNý)HÅr\\\\èåê4HCÓ×µ)¢ãåÐŸSNÉ)@£ƒÅHAÇƒãœÿ\\0Â¿ñ\\\'ý‚®¿ôSVþ9¬ø·þ$9ÿ\\0˜U×þŠjCIÜå‘¹ïRãƒõ¨Ç l})\\\\v$÷§ƒÍB‚H§g€sHz–SR«\\0UVÈíS+Ó¹-ƒšv}\rD	É§g×5D±û‡§4n¦ö¦ƒŽœÒ@H”»¹ö¨ÃsJ&X“qíÍõ¦ç½¸4Á®Â³`UrÙ4ù=*rsIö*>b–8÷¤íIŸJ>µ9<S[¥‡éM~:Ðb	1¼qQ·Š{±¨\\\\ý=ëD²	È*Äväz™•¸Éb@üOô¯W»}°È{$ŸJò}Ld(,ÙÃ:Ú–¬‰ÞåOÍ“úÒŒ79ÉÇ¯_óÅ0H2H=}…9I ÷æ®=‡¡Öø_+mväm+	üóXJÁ¦f\\\'\\0±ÀïZú°^0|ˆä×?hìÊNÞÔÓ¼ZD5­ûƒÃœäÿ\\0*Ý8$u&«’O ;Ó³À \nZ’vàqŽy™Ë`ž¼i‡QÓÛ¥(a»ïsŒñSÍÜvº$ÝÁÀã\\0ÝxíLœ°úñFpI äç õÍVú%Ðxc»åß½<1öéQn†”õ^œ>µhL¥A8à“š2róŠ:œóëþ~´ì‚1‚?Ïõ¢[‚ô%sÏ”¡Aôôæ›÷†\\0ÿ\\0×JXîÁãœtæf´ÀSÏjpç9È>ý©ˆÇ@{sJàŒinì8ç¨cùÒåóíŸsLH<¥(ý{ÓZ÷%29#ç9ŠxžAÇ˜Æ dúŠAß·lþÂú–ÃÇ’Ž:\nx»”ó‘ž¼URÊHçØÑ¸v846À´.œgŒÐÒ˜onq°Mòã=ê¾ãÎzJp@\\\'×¥;¾á£ÒÅ¿í+° ,Ì±À¥\Zâgý&]Ç©ÜsTK(±ïFâHÈéøÐ›¾âzNµ©¨âþPzà9ëJ5Í]Pÿ\\0ÄÊäv_Þ·ëÍg\\\\þG·­4¶O ã’©¦®&hwX*AÔnH<`HÆ¢:î­¸bþb?ßbScž¼LTE¸=çOFÝÃbïöÖ¦Ì—²°ï—oò*5KÖc™ÙŽ9Ë“Ÿ­U=\\0ÏâE0°\\\\g÷ûTÛº2HœßÜãipWži‚òr2[w¦GJˆícÐlã<SA\\\\g#5N,ORÃ^ÜÃŒÅ1ï.cÌ*?ÏÖ˜«½H\\\'n:{ÓòàTò·¹<×bý¢àŒŸo¡cB¼‚AºF#©;‰æ™	ÎxêqN¿3nb®+MIæÎÊs+`c¡íQã\\0ãëJ[‘Ï\\\'­ û¹=úœàŠ5Ü|÷dN	ÃØ{žµ-£7’Ù9ÁõÎ)%aµˆÁ<ÒÛ«}—pÎÒþœfª:Å’õz\ZÐ´ûg¥HŠKgŒg¥El !Á÷Éÿ\\0>ÕaH8ÁïšŸA6\r/ç¿„IuÇ¯Z÷m7Ølä’kÅ|3Ë¯Ù§ðù‹ÛÞ½ÃNmWŒŸæjª»SHÁ;Õ/c\r)Á¦çz=kŒë¸ð8ã­!\\\'\\\"€F(=1H}ŒäqIŒw¥ÔÄ®Ç?òOüIÿ\\0`«¯ýÕ¼tã’?á\\0ñý‚®¿ôSP	êŽ@1õüj@ÜJ¬¶p)áºzÖwÐÒÅ€À\nPÜÿ\\0,Ô;ÎÜæœÁ¡H,XVÏ<TÈÝ9æª)ôâ¦FàS¹6,ƒŽ‚œœ\ZŒ?ÿ\\0ªœ[Öš%’ãß¥ 9=*=ÇŠ\\\\ôÍQžj0ßZ]Þô(ozLïLÝ¥ò1Í=Ä5Û\\\'ÒšORÚ¢å<QIF{šHù“ëN<çš…Ûå\\\'œÐ™Iõ¨äéžA#p£Ž•±ìZÑJù¶ÙÌpxCü«Ê5V Àè™\\\'ïÒ½SQp,g\\\' FÉ<ö¯+ÕÐ	`QÈ‚qëZÓÜ‰nŒì\\0IÈ#Š €õ¨HàòØõ§®ÒÜ®	<_ÂµÖÚn6ŽŸI”G¥_pc g¿‡íœ‘‘ØVÅ–WE½èÆsÎ?*Äƒîƒ´sÒ„½Ö&ýâàsž?<(ïž§l(ÆàÀc â—9$cßƒJÚŽ/© là†Úq‚:Ð ×ŸzŒ“»© vÍ(\\\'¦X‘ÈæŸ“¢QÀ<ôìxïH°ËÛ¡íLS€NAÈ¥ÝÛ\\\'oµ-\n^z‚@ÈëïÞÛœ{Ôa¸ääñßëÿ\\0Ö ÇÓóNLHœ8\\0`zžÔCF5›þyü)áŽìesêjJ^dÃ <A~9Áç¢ à°\\0öéšPÇý©´˜+{u>Âœ#õ5b98<×4ñócã©5® ‘0aéŠasQ–ö#Ôýÿ\\0(9É©hiŽÜ3ÏéÞš\\\\`‘šb2sŒô”îÇÐÓJÌWÓAÄqÿ\\0ê¤ÚG=y W$®H¥Éÿ\\0\na¸Ü21JräsŽùæš[~ÄÐ¬Ê:‘Ž€Š“FN×Šnp\\0\\0œÔã÷N9Çlõ¦ùŽC æš@ÇçrñÁ>Õ@äc ÏlR«ŽrKgJŸæçßµ	;ÚÂŸ—€qÏ*#Ûœ:æœíÇAÎ:SK2Hä1ŠiôdZÚŒù÷8¦8ù‰ÏZRçœr4ÀI\\\'<ç­_(iapŽÙ¦’ìxíÎ(nƒô4ƒ’sƒÓ þT_[XVOqU¾ãÉúñøS‰ÝÇ9é‚jG\\\\D¬3ŽÙ=*>WŠ›«”a|UNG9íQ¹$¨Á=¹Á©KÛ¶ý9ã¨ŠÇ\r´9ÁªM=nB]ÝºqÓ9Á 1<0};S_ïJŽéW×-Û­4“ØM> äù^548j3‚_~•Yœn9ÇçS£¶·\\\\pryÖ„ÛN ÖªÛ\Zh#Øõ©•ÀÎXqÏZ¯n¥î\\0ó×5,aÉ#ŽÜÖo@ºléüÛ¼C\n~P[§ 5íúxdŒûgõ5â¾\\0þ\\\'Ìû¸XØ×¶YZÅîåUˆø\\\"cMÞ«,àRqKž)rB‘ŠN:šFM\\0×axæ›À£Ú‚A<P+Zç¼p?âñý‚î¿ôSWBxæ¹ÿ\\0cþÿ\\0Ø.ëÿ\\0E5êŽ[8ÏZ”6EUVã¿5*·8¬.uXŸqêzS•Žx¨Ct§ƒÈ¦ÄüÉÇÖ¥FÇÿ\\0Z«©ç5\\\"0ÿ\\0:,K.«SÁëUÐñÍHoZ´û’Å.A¨ƒuäS³úÑpžhÏ)€ç Ñpš	â˜¸éAlôÅ	Ü\ZN{~TéHjŽ)ZìkaséHzqÓéMÏãHN=>”zB~cQHO\\0c¯4óQ¹éÏåBób7fÀ*	QÓ‘ÔT„“ÔTNzâª7C356oì»¢F‰Ž?^[«9iãøQA$ýOõ¯QÕò4»¢1þ­±Ÿ¥y>¢ÀÝ‚[øF{gŠè¥³3›ÕÇŒNy}S×4Á…ÜqÀãéô¥NYsÈîS{º7VFM\nëå2ãœæ³-ŽÄ;‡·5 À`È2IbëPhšx‘¥Y¼Œ™5Qw‹}ìùµàc$æœqŽséŠÖþÃ\\\\ðî©Á¥m\rÇ.ï÷“ÖŸ2k°z™#’2=ÆiÇÇb}k@è—C;Z6ÆN2FJkèšŠà›bG}¬§­è_«)äã€8à`f˜	ÏéVdÓîÐ’öÒ(îvš¬Ça!Š©M+yt*œ09Ïµ8är8ïH	bN^Ôccç5[ÉRHÆp(`	Î3MÆà2½øuæŸ·v09èi[¡-°>ÝG·o¥&6…zpÂ”Žxâ‚¹í•þTÜn¬5>€GCÓ8 lár¡qQ… `äzóÍ(Î0Èý=¨å\Z’¹)9êFzÎ8!{ú÷¦\\0;pqJ>ñÁ$ç56k+\rŽ{Ô£?6ì{SF:Áõ¤É$ä{úÒišXœàñHzß!ÆaÛ¡Fq‚=Í.º¡GUåyè)IÂü ÇjBÛ”1í×ž´Æ>½©j+tÎsÏ½5ñ…Ç_OjxàdqœÓ	VP	ç8\\\"ªíè;!™qÔéA9ÎA\\0ãJ2¹ÆLäÒÆG >Ôí¥ÂÚˆÀí\\0†Èë‘ši`pè}è-œ×ÅGœŒwÆzQk¦\\\'¦€Üƒ’FcLm¥rOl“úÐpXàíîp?JCÔ\\09íT“[ú|‘Á;±ëÁ8¤Ü0~l€:ç¥)8ëGÝ;HÆxÍ=d¬JÌ»|…¸?þºBä0\ržO¼ò$ð{œÒÔ•ÁÊ’µ·õ =¬›·ó¤2„“ž¼â“¿A“À¦=9ïNË©;ì(b[ü½ïM$`ãô…°@$Z	Éà\\0}…\Zw¤5ŽTí·aŠµf+u \\0öæ¨¾u=[ˆÐç\núQª©„à‚qõÿ\\0=éñn1’HçŽzÔ!²¸Çô§£1ÎN3×5+°Y§¡Ü|8]Ú­ÃÈXÏ?ç5íÀ#û£ùW|9]’^¸Æï+h9é“é^È˜´±Dç¥üI’N(4±Fî1\\\\§]î.9Å4žý)O4„ñŠÅ\\0âš7\ZiëE‰lS\\\\ÿ\\0Ž?ä@ñý‚î¿ôSWAº¹ÿ\\0ÈâOûÝè¦¦$õGŸ“Çø\Zz6\\0 Ô@Ž¤ãœW3Gk,#Ç5 =	ô¨PœØúsNqŠka4J:uâ¦WÇz®\\\\u©U©¥Ð–‹(Üäç0oò*º6yÏ5(ãÿ\\0­Tž„>ä™Èâ—>µxÇ_­<Ô6M‡nâÜZg<Í½ZI»Ó84ÝÝHíM$Fàx¡ùì<dóùPzSC`qÒŸ—#µòt¤=¿Æ±¥&üÿ\\0ú¨\rÁŽ8¨dléžõ)rEE\\\'Ý>ÜÓ¿§§­@ùÇZ˜ó‚3ùTN„“ž¾•HhÊÖÎ4k³ÉStúW”j\\\'ý(ü¸*£Û<õëÕõö+¢ÝŸD5ä×ä}°äŽƒ§n3[Óz;¿‰\\\\¬sÈÏæŸK\\0ç_j‰ÌX*DË:¶G§áOV_©»Î–ÉŽ‚µ<7o¼\\\\8\\0co8úÖu alŽ¬0:šé¼-ònH]W‘è\rLÐX¸–ØÀÀÉâ¥äŽ™­$‰p …}:Öd$gÁjY€ÛÏz¼lHP\nþU¥cj»‹Ï<V‰·@1Œûâ´‡rfÎYìÊäâ¼ãW~¤ÊFq+®29Ãb½¥í“Œ~ãZ£­NÀ\\0L®Tcý£[ý–Ñ0ÖHÖÐ4È[ÏV…Xí_¼ Ž‡8ÍiK¤Ûn\\0B {\n¹á¨I‚rå~ìxÀëÃsZ†Û.H¬›hÒÝŽûØçGüþufËÂÖ“œ0”ºã~_JÜ[1Ó­Í+OSŽô)6ÂZ+œ³øÑùŽæxÉî¿Â¹ÿ\\0xiôKX$ŽãÏ¾Í¥6v“ê}+Ø¾Æ6Ž¢¹OÛF-­|Å%QšNpUOoÆµÔÁKSÌ¬-.o¦Š8‘C<îÀO¯jÖ›Â:ŒyÃÄßF?ÔUÏÇæ½›ÇÚ‰è}k¹¹€m9â‰O©£Vz\\\\|?¨!ÉJö—ŸÖ›‘~Í´[;7</?Ê½íIS‘Sé:yi·ì8©ö…ÛKž}ÿ\\0æ²Ë¸iWl1ÁXXïÒ¢ŸHÔáRÒX\\\\ªç«FÜ~•îöÖacQ´ô§ÝFÉNIëÓŠ¤×Sh–‡Îa`2Ô}9©BIÇZ4È[¸‹\rÛ™I8ÎOéVÖQ®™\n”`\nï´>æ­ÙØóR¹<wö¤x\\\'§zôeÓ`wQä¡Çû¶¬´K7#u³cš?Ò¥Jû\r»jxù•@ Ž8•+`d‚O9Ç•{œžÒÞ36×±¯ò¬«¿\réYÏö|\\0œç\nÆ«MÉö‰ìyep1’yÇ•FF3ƒ’xâºÿ\\0èvVzl’Ú[,RîP¥]¸Ë\\0x\\\'+\\\'ÂšM¶¬·ïy#³Û4¨}æ@­Tz\r¿tÅ#=Ûš\nûç¶s]’xrÉÀ&É8r?•LþÓÉÁôÞjyÒ»œ^ƒð¦• rO¯ÞãüûWk/†,‚ày«ôoþµS—Ã–ÌNQž¸`¥/i•ïs”Ú¤‘žß?Îšsƒ‚wuÕÓ?‡-ò¹–pþ_ð®vòÕà¿’rÈ¤»þ5J¤e¥Èqhb’ØËzâ”+qÓqç­t6K‹X¥–y‘7mP8É?ÓùÖµ·‚íe~fŸõ*©8ÅÙ’®Ö‡GrM!Oâëî:þ5êÖŸ\r´©ö™..G®Ðµ«Â}Ž~Ñwø\r.hî.khx“/QŒ{úÓ+=8Å{ÐøMáÎ7Ixà`J”|)ðÀP<»£új?Â‡RŸqsyŸ<Ê0ØÝô÷æ®¡c4YÀ\n€tæ·¼gá‹m#ÄPXy¦Ò&\\0o}Íœ{œVCª}¤…UQÛ¥Mï¶ÆªËbwB}½µ,G÷läüÀÑ+nàž1Ž;SŠƒÔ)8\\\"¦#k¹éß\r!Ýë‘Ô\\\"|¶kÖÔµåŸ\rX“4KŸÄŸé^¨¹ÛF%êŽZ+ÞbšÍžÔœã¥r\\\"ÒsÜÑG4Ldš^‡w£<ÓÞõƒãù|Gÿ\\0`»¯ýÕ¿ß¨¬ø·þ$ÿ\\0°]×þŠj¢µG†QOj0}øëÖŸœóß­rä€€\\0âž*È?‡­?u2t¹0n9§©àcó¨ŽxõëOH\\\"š‹ˆÃŠ”ÍUSßµN­‚9¦ˆ‘(aŽ:Ò†ÁëLã§ZÆªäÈ#Ž´½G¸Ž•(<šh8ž{Ð9<SI\\\'§JP@äõ£Ì¥ ðzsKG‘ž´àGJ@ÀœñÅ\\0ò@Çµ4ýx u4ú\\0¬qÅDçŒu©9Î}¹¨Ûð¡ˆ)…©wg\\\"šãêÃW©‘â\\\'DºÏoõ¯&Ô1öÇ<®Héôê~%mºÉ”túŽ•åWíþ”Øy­é¶¢Éå»+–!ÎNzö©Pä€\\0úÕryÉ8ïŠš#ó1žüâ…tV§Akÿ\\0¤sœs]§…\\\"ÿ\\0@‘ºþðóÛ ®\\\"Ðþçnpsšïü&Ÿñ,\\\'±‘¿<\nÊ¥öeAnÍ‘š•WŽÙô§‘Ž¿…2Ef4DTö#5aú`ÓmÆØÁ#Û¥)éß$æ¶†Æ2WdO÷Ò¼Fô‡Ô˜…ÆIoN§5í³!ÿ\\0²kÃÝwÝÀ, äzâ·Œ´\\\")sXï<&Û­%9Î6¨ú\\0ÜWB‘‚ßZçü(ÙKƒÝxü\rtè¸Zå©+É*\ZHù®ƒNEHÅbÄ»¤PzßµP})Óz‘V6Då—ñ÷®â¬!´@x++|\\0?­vÄŒóÚ¼÷â+„kM¼•Šlóýâ Îº“9Tu2ü\Z£uºôÛ?ò~éþX®î`Œ\nâ|¹x@\\\"G$tÇÈk¶s“XÔ–ˆèŒu 0©\\\\ZÚE²¨\rŽ§š £,+ Ó¢\n«ŒTEëaÔ¢hª\\0gëOäé7rÊÂÍ¢šÒ=+Åy~Ô=-äÇýòjã¹Åk´\rÐ}ªÕF~òšõ//ê½p?:ó/©}ZÚ3‚£©íšõ€û<j£\\0 ´¨ì®u(ûÁcj\Z`qÞºK[UEšÏÓbÉÎ9¼‹…Ò¢/K‘QX®ñ…\\\\\\03X× )$u­»–ùHÎéXÌH<ÕßC8ÇS†ñ¢³éŠª2Ðý+\\\'ÀãjêL@%­ð@ÏÌ+OÆM<dolóŽ6µfx+…¼\\0pA z°ÿ\\0WFZ›J:#©†\\\\gµNcõ\\0}jXsR•ÏÔW?1|º™³DvÕ\\0ñÇzÚ•>SéíYò§9ŒÔ·­ÊJÆaL×|ê×\\0Ivúþµz§ZàeÚ÷³0‹JÇœxÖ´~+‘Sá;ÛKp–v t¯ò­í:ßs.GŸkaNÞ#Q…tš|8POZº¿FoHšVPíÇÖ¶\\\"\\\\/?V´åéÎ*òŒv¨“¶‡3ÕŠ);S¨5±á¾>d\Z† ÅI&å#ëð®œÝ1\\0mÎ9ô®ÛÇS‰.¯X)Ã]=·gÁÅ†¸9kx^ÇBvÒÄìÃÌ\\\'ŸJ™`¸äÿ\\0Wõ¨(— uãõ©â^#Çú\Z#tÒE»r³Ø¾ÀWGSžZåN~ŠÆ½ cn1Íp~Mº=™$–2;ÿ\\0ºw}F!Þg5{±z\Z	ýi3FH®sk†y¤&”œÒ)ˆ\\\\\Z¤?…;Ð #°<oÿ\\0\\\"ˆÿ\\0ìuÿ\\0¢š·ÉÈéX8?ñ@xþÁw_ú)¨\Zø‘æàäôâœ	úT@úÓÁ®mòPÀŒ“Ï¥?®*ûNÔ\Zz8aÇåéEîM®L	Æ:w§qßü* A¾ÔàN3FÂ±a[\\\'ÔèÜU5lf¦G\\\\õïÐSW±\r\\\"Ðn1ÏåJ<T æœzU1îÿ\\0­Jzæ£cô¦&‰7==iÃÞ¢\rÍ;w?ýzVêÄ‡î úæ£ÝïøÐ`ŒÓ&x¤\r¸¿40¨¦†ÃG=(ê„æ£cê)ÙçŸÿ\\0UFO_J- ÈÎC}j6#½=9*);ã±íUã1<NØÐçã’T`ÿ\\0¼+Êo}Ì„6@m¾ÙÅz—ŠC\rm§²ŽFˆW•Ý8¾\\\'$ŽÜæ¶‚÷/æJøµ\\\" ¨‘œõô© %™y$ÿ\\0*‰ŸqãŒ{ö©b$Rxü1T¬—™R¹»dÛ‡›õ9Åz7…ÿ\\0e+g«·ô¯8±¹Èÿ\\0?çñ¯Ið²ãI‹\\0¹«*»;\\\\ÜuÀµ,YgQŠÕ%¢ù8ãô¬¬R4P\\0£ëšƒ×¨¥1Þ˜X`€s[G±‹ò!º;-f\\\'Çô¯\r|‹í¡Hï“ò×·j/³MºoHØþ†¼BVPqÁx•m¸–ç¢øUGØN:úñ]\\\"ôÅs¾P4ÐãÞF?]\Zž™®9Û™qµ‘jÓ™yí[q|«ÅdX¯ñæµ”ü¸­)³\Z»Øq`Kæ¼ãâL ]@€ãù°ý8¯D$šò¯ˆî·¢MÄþá8ï5tGWc¬Ë^l²ô$cì6‘ýk´ó\\\\7‚þW$Íü‡?­w\nr¾õWª]àº–`BÒ\\0Et–‰µGõ¬- \\\'œWGn0£;Ò†×3¬ú9P‡=«•ñ|¬<;¨8>CõÁ®’wÂþÅxîãËðÅáHUëŽ¬kxÆìó?l“\\\\³¸2g\\\"½>¹P×–øQBêÐç…Tc×ÐW¬Z.æWÝ#ª™·§ÇµAõ­#€\\0êµªíAÅNì\\0ô¤•ŽyêÊwOÁíÚ°/_åo~+^í¾R3Í`^?$f”¥m)Äá¼k;¥´hŒFàÙ¸j/-îÆË\\\'>ù\\\'úT^6vÛÝ€UÇûËþcÁj\r”íÈÄê Á[?ÌV´¥î6TïÌvpŒ(ô§‘ó{RF>N¸¥ÎzŠä¹£ZÈ3øUÆêÐ`0j”ª3Øõ¢ì9JN\\0?Ê¼î\\\'W™:`±\\\'Ö½í‚A#Š¤þç¶c}ÄIÇ8\\0ƒïšßÛ“&ªÐõ{PÌëyU?ÙÒYÇŒc·‹h§$`Œcp+¤´OQƒZNÎlåoÝ4 LU;ÔQ)žõ(VRz™-Å=)?*Zkœ#{\nCgÏ¾1¸äŽ\\\\‡ûÝOó®Nß%ÛåNtÞ/`©hÜ³³üí?ã\\\\Å£Äœ\nè‚I¶LFs¥{ñSÄÄÍ\Zà\\0íÅ5T1 àÜv©mÔ5Ò©aÀäçóÍLuh¹è™î¾\r‹f§uæ)Ûï]Q\\\\Ï…P¥•’‘ÀµÏâÍšé³SˆøÙËGáôfóÓ¥!íŠÄÑ±sFsIFx¦+Š(äóŠi`I\\0UYµ;+s‰n¡Cè\\\\f€Z–Îs“X7Çü >#ÿ\\0°]×þŠjž_éH	ûPcèªOô®{Æ>&Ó¦ðN¿m!y4ë„_“&&“zÉËc‹\rõúÓ×Ðš„ `æ¤VãÜ×3gw¨þœžƒÞš®îäJp=)\nƒÁäzP\\\'ÃÔcŒT±ëùÕT?^Õ0nÏ4’pyÍH–É9¨7p=jU$ãÞ©Ë ŒÓƒõ#ŠSžœÕ‘.î{RçÖ£g\\0Q“ÐÐî»NÝ3ŒÔKòŒir;sEî‡aäô‚=)™íÖ‚I÷ &ïR9¦8VÆFSO zö§çåö£`6>QÐRçÓ	Ãœc‚}3OÐ‚Î8¨˜¼õ§–È÷¨‹dÕ!˜ž+Ïöðy‘zsüUä×/‹—Ï½cÆm·Ãƒ\rÒ \\\'ñ¯%›Í“ßÅtÅµLÍ|L[kzš±m“:ä®sßšª:€\\09éV!\\\'w¨»jÆ¿‘ÐYcorAÅzo†Ô&Ý±€Áþ<kÌ,•\\0äqÜûšõåÒ­Á;O_©¬ªm©jÖfÃ1ŒÔ¶À…ÏcPu\\\"®A•P;u©KQl‹üûSHÁÎ:Ñ’\\0Å!n\rhŒ™Ÿ®IåèwÇ#Cu>Æ¼Y™ô„g!Žq^¿âfA½R:ÂÙ5ãÁ¼‘¹ûÄdt<ÖôÚålI]ž£áœÿ\\0eÆAÏÌpktò3X^8Ò¡çÔŸÎ¶ã%˜cž{WÙÖ•‘«d˜¥hnÀ5NÝB€*Ë0ÛZÃcšz±Å°ø×üBbþ$Èí\ZŒõé»Ö½^WÚ¬NzWxÝƒøŽRÎN?ÝúŸÎµL„µÐÕðQ;äÎ0ùý+ºŒü¾õÄx5BÂç®GúúWf‡‘XTk›C¦*Ñ6ôÕ™­Õ;W¦kO]ª¤õÅj–ùy­`´9j½H®äÀÆz×ãùvøràv.Q¸f»¹rOµp~=—v‚ÃûÎ¼uàsU\\\'²\nqÔã|*…õhÀàmlý1þEzþœ™lâ¼‹Áß6²«ÉP qÓ¨¯eÓˆ×#éÔÝ&h´NÆÌ_*Ò›3|¹§àÞ«\\\\7¯nÌÛ·äóÅ`Þ?\\\'õ­k·÷üë\néòx5”ž¶:`ŽÆ¬^x”c…õ\\0“ÿ\\0ÄŠÖðj‘¤¿Ê1ö†ç×\n¸þu‡âöVÔ<Š»qîßã]„\r\n¯ÞšCœuû£ú\ZÖœ¿tÅ5ï£©ÛŠ\\\\ävàSã4¤òk˜ÐkýÓýjœ§\\0Õ§<j¤¿(<QæÊÕÜ¦“xã°±Çü¸)]µx‘‡F\\\\`{\nëüBþ^ƒxàò# ~5Ëøe~ÑâXÏÊ­\\\"‚Nzf·¡vßÈŠ¶QÔö[x©Q~ê¹Q[¶ˆxÀ•kóÊÏ¼å¿^µ¿j£\\0ý*ÛÕœOá-€}yïO\\0S@Í8õâ²\\\"!ô¨n[m¤¬N0ŒséÅOŠ¥ª¿—¥^7]°¹ý\r¦|ýã,	¬Çû.GŒ\\\\Õˆ,àí+“Ï#šÞñ¬Œo-”gäFcÇ\\\\?¥aYciê\\\\ú}+¡h™Ð¶-;×ƒž@©lûµPr7\n„•*1ƒÆ0Z³¤E#Ý‚ˆÌ3’Àp:nÏQT^î‡Ðš\nâ†rVÖù‚Â·Ö¸(<_k§ÄÂ$™Ìqªç\nŸ®zV}ßŒõ{¬ˆš+e=‘w7æÂ¹ëT\\\\Í³:4&ã±é2J‘©guUØ€+*ïÅ\ZE¦C^,Œ?†/˜þ•æ7W2¸¸–RÄŸËÀtý*ç¹ü+Yt:–õgwsã¸Á\\\"ÚÍÛÑ¤p£ò¬‹Ÿj“åD±Ä1ÿ\\0,Ôgó9®d¾xã8¦™0IþU¬™´pÐ[£NãU¹»ÈšêiG£9ÇåÒª‹Œì;Õ6~ƒò¦™2zäb¡ÔmÝ*JÛLäœsõ¬ÏNÍáÍPg?è“üqªf”çVf»):¤¤mÍ¬¿ÊÔ”˜Ý5cT;TŠr0EBN9OãOÝ*ž¦œ08 €IçëïQ‚;dzÓÃqÔã­dˆp£ëH+8Çjh#<”àG¥?!2dn9Z™\rVßµL‡*)j„Ë(Ù=iKŒÔjp<Ò–†sžÂ´M²,‡î\\\'§4»ŽÞ1žõJ@ùÑ»\\\'8ü\rJò04¹ZŒzzS‡AÍ1X—°üiàóLÏ´»±Å\\0‡‚sÏÒ“w\\0‘ž) ö9£wlÇd#üÝóHOh-ÇµFOþªZz‹P\\\'ŽZ9#ëJÍŠEûÙªÇò‰@É3¯|v5ä×ëŸ$dñÍzŽß\Z<@žLëßÐ1¯(Ÿh”ã×8ô®•g¡Œ~+€l“ÔzUËEY®#9éôª\\0±=OJ»bJÜ.ã·hÎzàb²»±Ð–§Aj„ç\\0c&½;Fùt»uÇy}‹šN˜$\Zõ\r%€°€°¿”ß2M—¦¶5“æaéWPðGLU3¸ŒÕwvÒšFr}	|§µ3w¦–úàûÓÀR;\Z²?Ì[E»\r¹\nàûœZò˜Æn¥,yÝÇçÓ5é>\\\'ø’ÝŸï(ÆyÁÈ¯2·p.O»töÍiMû­¢š³Gªè$.“\\09ùšÜµ;¥x¬= ‘§Aœ–+’s[ÖC?1íÅrYó\rÚ&´D\\03SÈê3U‘°<¶Ñ[¥Ðæ}Èn$v×x²MÞ#¸ç$8ö*×«Ý83Àõ¯ ñ‡ñÛÎò3ôÀþ•P·2\Z:¿œZzŒç]•±Þá{WáeÙfH‚9í]•ÜêsŽ+	YÈèû\\\'EiÂÚ­Êà\\\'STíˆã=@§Ü9U Ÿ¥t\\\'¡Ç%vPºsŠà¼2&5lÒßå5ÙÝJ~`3ù×ŸøþBÖ6È\nÿ\\0­ÜwsÀþµ÷‘¬bgx0ÖÕG\\0~¿çó¯g²PAâ¼sÀD¾¿´(û…¶+Ùmÿ\\0ÕƒÞµšÕ\\\\™½,]/éŽj¥Ãü¤Ó‹ü¹ªÓÉ€r{TÉ™Æ72®ÛŒŠÅ¸l±Åj]¹Á¬iX–<õçÏ&uÁâ—Ý¬ºóü+;…ã]Ÿ†WA±äà£“õ,Gô®ÄÍ¿ÄS¦@\\\\Œç×jÿ\\0®ûÃˆSE±(·žH,Æº^ÆìÎ_†îâõGni™Ïg€Ó5†åƒà`UIÏaV²N8ªòp8ç)k°ÿ\\0‰Û\Zàÿ\\0QÇûÂ°|Ÿ¯Û/MÎ»“×ùÖ·‹Øÿ\\0b‘ë\\\"Œzõ?Ò¨|>·[z P•KrxR\\\\bº°L«éžÅ§/îc(ëÖ·­”€3ÔÖ=‚E_AÅmÁœsN]N)mbÂôéJGôƒÞ”V@¶•—âÙ ^•êb*??­jö¬/:§‡n·0]ÁTdàŸ˜t ikcçÏ8m\\\\+v€Àšªé\ZuÍÂ‘§ÍÀë]eÎ—ms~næMìQT)<psÏ¯SùÕ¥TT\nªª@À…9âU–§u:I\\\\Î¶Ñ-âÃÌ|ÓéÑkIQB\\\"*ÙF)	Æi»¸ôúWªÊ_;!F1%ßÁëH\\\\ƒÅD[ƒíLw?þºÉÊæœ¤ûÉ9ÏøSzãéQïœS	õ#ŸJžk” L_õ&š_ àzÔ;ØÛñ¤ÝÈõõ¤åÐ®AîùbCëLÇQQ»ÝNO½4°<ž¿ÊÕ…Êº’$àr=Oj¡¬“ýƒ¨dsöi?ôV‰8Î3Ö³õ–ÿ\\0‰%ÿ\\0ôy?ôIjÆÖŒè	ÁÇ Ó†~„Tdð2zšŒ­tœ\\0ãæ”ž* yÇž=JHD€ó“{ÓÃzr*0ÞœÒŒL‘O¨‰ƒcœ~\\\"?N*¸<õéORéH›ÃsŽžÆ¸1Š[§z”¯=)‹© lÐÃ<ƒMO þu]qÃ¶{S¹èi›©3Š\\\\½IžÔdŽõ?•õ`Mžù žy¨žiwg#ñ£ €Ÿ~)¥»ÐOÓl	WlžôˆpÄàÓ	x ÷¦«psT·ÐMhs~<aý›j§¯‘Û¢µyl§lŒx=ó^“ã·\\\"ÒÐ÷„€{ñÿ\\0×5æ’0@ç=}+¥?rÆqZ±Q²F?<f¬Ú6e9^œU@Þœ\Zµh±.1ÈÍfäºGs¡ÓÙK7—ÇN	¯PÒð¶6øí\ZŒÿ\\0ÀEy^˜Ãç g8æ½NÓå·sœ(þ”®’LÓ»6-^x5`¶TÄU-ÎÔâ¤/…5Qm#®Ç´È„l8ÔÔ3ÈBc±¦ƒmŽçµW¸—\\\'íNú®aø¥Çöù?)*?í\nókFÌÈFXžqï]ÿ\\0‹_n‡\\\'<3¯óÏô¯?´oß.2Ia´:¨=‹µå©ëzgËa\\0í´qœ×Ah1¬þ\\0Æ0Š?A]\\\'h\\0N+ÞíšMè\\\\VÆ)]ÀV9ÅDSP\\\\ÉµHé[#¢¥Ô¹ÉèG^õäº»o×.Ž2D¬1ê@¯O™ÏÍœW“Ý¾ý^w<+üxÑ­îmŽÿ\\0ÃC\Zr“Ðã§Òºý9NœÝ2+ðà\\\'KG\\\'9lÈs]’â ¬’|×*£´M¨›\n2)—2åpOJhl&P;UYäÈ<f¶lå±FåòMy÷ŽÜ²ÚGó¹‰Çá]½Ìœ°çŠà<päÏh¹@lóîµï$n£¡áôx×ä#%&>œ`à×«£l@3ÅygÃŒJfc°‘Ï|‘^š®\\0\\\"¶¹•Bv—¯õNwÈ\\\'5#ÉòûÕ9Üo›­g\\\'`Š3¯$ˆšË‘þbsÏCVî[\rÏLÖ|óžâ±~GLQæºëoñ\rÆ	c¿=0+ÒtPé¦Z+€6À€cýÜÿ\\0ZòÛÉšôÇplNÃë†Æ?Ï¥zvŠÇû6Ø$ˆ”ÿ\\0º+©ÿ\\0Þ†OYèl÷\\\"œóŸÀT`çœôýiÄŽ0+nS>µ‡pÿ\\0\n{sýjëéCÊøÑöé‘ +–—ø»|¦¤ønŽ5Eu+ÊÉŸÁ[¯çU<pßèö«·*1ôÅhü2p·ò³u:òxÀüñø×N=Y–!®CÖì×…ÏSZñduô¬ÛaŒasZqŸ—¦\rTÑÃ\\\"AÅ/ÒÊªI É&¸ŸxÐF^ËK`ïÈ{Ê¯²úŸzÉ»+²©ÁÍÚ&Ö»â‹-|¼ù÷D°©ä{“ØWœêz½î±qæÝË•+ð«ôþ¦¨—frìÍ#1Ë36Y½&à¹Î3Ž•Í:¯dz´pÊ\Z½XâxãŒö¦ÿ\\0Jà~U	|ôíÒ°¾‡ZˆòÙÏåL-ŒàóšibAíô¦$ãw.EÆ#ËvÏZBäã§åLÈ#ç¿4™ê1øÔ²ùPâçž3qÛ“ÒŽŒNA4Âv¯Ni_PjÈRÇóšBÝsÅ0¶yéýiúÆ‹Ü-ÔRsƒéÞ›»\\\'žÔ‡#è:Òqþ4¯vËu¯½gêí\ZügŸ³Éÿ\\0 š¶NÕ#“Tusÿ\\0kîß¸ã¦ª/[‘$ìÎ‰ÇRõ ŒdóÖ‡=zséL\rŽ­uXóÉÃg\\0zzÓƒ~UÈ\\0ñœSÇ8ïÇ¥-÷RqŒ\n]ÙúÔAºfŸœv\\\"Ð‰õ§«}\\0¨wNRN1Ï®)õ,+gÒ§S‘ÿ\\0êª ò*e\\\'<ð(K¸™08õüéÙÆ3Q‚iÀòGïÑ?=£>”ÌàúŠ2HàqE´wô£“Í4’F(Î94!Ø~ì´ÇÍÃŒPHÆò§q0-œ\Zan¦‚Üôü*2x=iÇÌ~@[=)Œði¤ŽqÖ›£©§3‘ñÛ¶J{³ÏN5çn>sÇšï<zÿ\\05Ž•pÀ±×ñ®…~DÈI]Š1“Ú§¶}ŒXtªëÉéßµLª|’äãó¬ÚÐÕ=lŽƒN\\\\ŒŒäçŠõK> Œz(þUäš[1ÛœOZõ¨8À§åQ4´-lÙ©áF)Åúu÷ª¨Ø\\0ö§—÷ý(O©Žwà~µRWù¹9¥‘ý:úUrÜzN]\nQ0<e ]@?zU=	Á?Ò¸{&F¹7°ÛÆ8Ív^5`4˜× n#\\\\fœøºBHaÎ¯O­iî^ùëÚ`ýÜy9Ú£\\\'ð­¸Ü`~µ‡bvÄ¼þU¨’{ñÞ³ƒ*¢»/‡?Rº—æ\\0‘Å?Íã$Õ	¤ÞÄ“VÝŒÒÔŠgÀjòA({ÂçÄ·\\\\õ9¯S¸}°¹\\\'¢úW“Z.fC¸`§ÓŒS§ÔÖÖjç¨øpçM·P1É?^úÕÙ[ž0\rr^Qö00\\0Î?]\\\\\n;v¨ŠÕ…^Å×bóš§3‚1éN’R¸ÕNWÈ?•6Ì\\\"Š—/×ÀøÆ@oàMÇåŒœg¹<Ò»‹†ÜIÏµy÷‹O™­\\\"ä…X×¦zîcøÔkÌ’7ŠÐè~gíNÄ!íþð¯FW9Éé^qðñB‹—Áf=³¸Wv³aAÏ_ZÚö2©{RÔ¯èESð¤Êœò8 æ©ÊäŠ†Â(©pç=ë>R2OoZ¹;äG5Ÿ3lW$Ž¬¥ÜÙ#ÌîX¥Ñ™Èì8ÿ\\0iŽZôý1vZ*“Ê€¹ã°Åyƒ•E‚ çvqŒg>ŸZõVE	÷sZÊV……Éï\Z*:RNxÅD§å>ô¥¸À=k4í¡,F?_Îœ÷ïH[Û4“ôõ¦.‡ã×PmSnKÙÎ;ýkgáhöô‚DH	éüKŸÔW9ñ@/íÐ0Ï”8#œÜþ•Ñü(‹+3€pí†ÇLÏÖ»°‰ÚLçÄÛ‘Ã÷Iüªì“ÃknfšEŽ5\\\\³1À³.5m*Ñ®n¥TGRy>ÃÞ¼ç_ñÎ¹q´ƒšŸ’òÞíþ+*“QZ˜ÒÃÊ«ÓcKÄž.—Ug´±fŠÌ3ôiÀW0z\nibJBÙÎz×ê9n{T¨Fš´Gn8Æh,yÁ=1QçÝÄrIÀíX¹\\\\ÝDyn}i¤ûãÒã$ŒcÀÙ iíŠXá’cµ±4ûhZy\\0þzæºý*ÊT6Î}Å	917Ë±ÏGáû÷Pá0JŠ}\ZòÝNäÏÒ½&Ù7‘ÇÒ¬Ë`’G’€þ¯³¹—µ’zž:ñ¼dîR§ÜTMÔý+ÑõÞáH\nÅq:ž•=””Êƒ×ŒâÑ´gÌf×ži àò9£#ÐpsÒšO\\\'ž}*ZAqIê)»¹“ïI¸‘ÏéM$…’>™©NúŽ×ÛAùº{š£«ÿ\\0Èóþ½äÇýòjÞãÐ`çÐç5CV,t›ÁÛìòtÿ\\0tÕEìKZ3¦rO÷¦”dœ}iwñÉ¦99ÇãÖ»%©æ¡á€îx4ðÄ7­@O=Ozxo›¿çI¶ÇeraÊç8§;\ZŒvžÆ”mã±­ì\\\"P{Óã‚*qô÷§$ž1ùRe9ãµJ­Ž„zUdoSùT‹žHÁôªB,†Á\\0œûÓË’H¨µ?<qNÄÒ€àçš`$œÒƒõÅ\rÇÉ>ÔàSIÿ\\0&“Ó­$;é×4úÓßÒ‚O|{Qpñ×šŒ’JRÝŽ?\nald{óW¸›°úôÌ‚9éA<ñŒŠi4î#‰ñîÖCŸ¸äŸAÅp„áês]ÇŽŸ¶€0»lóÏQë\\\\+X‘‘ëÍl“qBŽìz±\rœãÒŸ¿÷!F0Nrj$nGý*Á¡.~cœdÔÉ[SH®ÆÎœ»J\\01–\\0õï^­u<­y>q$*@ÆñÆkÔàs´sžõœ™[¦‹Áò¸”òÿ\\0/j€6xþt¥²¼ã¥$+\r‘òØÏãQËsC·bjÄ¿àR¾¥çŽ‹q´æôùOø×%§6.£B(qŽk¤ñ»“oj£ƒ–? ÿ\\0\Zæ4¦Íâ©<“éï[EÚüG°[>Œc­\\\\Š\\\\}k6G5ev$V	®…I;—]ÎÌƒÚ¨¼™aü©ÒKÀæ«³\\0})·qZÄ:Œ4ë‡8ÂÆÍù^_–¹eÈ$p9¯FÖœ®‹xààˆ[Ÿn+Í góò çWM;;yë™\\\\ö\\0Ó­óÓh9®\\\\<ŒÅaé_»°¶SÉ1/öEh<ÛGâ¬ˆ©¬‰ZrÍsÏj†GºÔ>aÝ‘MgÉ9ïPØ$C1ÆFk‚ñ3g\\\\fÎ\\0©þµÜÊr@þuÁx‘‡öÝÃg!QWï·=?D|Í#½ŽŸÀL~Årã·Ó×?á]œ\\0èkŠðCÓ\\\'#\\0‡\\\\cèk§2œ*¯gb&¯&Zwô5Yß9ëL22O=ª6mÄzÿ\\0:†ûC%~ý+6õö[JÙÆÕ\\\'Ÿ¥^—eê­·Nº<ŒDÇÿ\\052×râŽ\nÙ1uol|ŠÄ~\\0ÿ\\0zM›%HàÓÒ¼Æ|¤Ë fWŒñŒq^—i…@9 Ö’w€´¹¤­Ò‚ß5D­…Ê—~sP´%ÝÓ¥=ãŽ*¾ì75jÙrêO^µIkbe¢<Çâ#çÄj£?$*1Û¹þµÔ|>Ö\\\"Ó´âï|£8äò0?OÊ³<G¢®©âÉ®&|@¡W\\0»\n8úu«°Ç1,q XÔa@«öÊšÓVR êú\Zz–«s«\\\\ù×,v¯)?*ÿ\\0‰÷ªcßœÔ{ýÍ)|v®)Í·vz¦¢¬æ`½@Âãÿ\\0¯MvãžŸZŒ:÷÷©Nûš$H[å9À¦–àúýi¤¤OQšinRsÏµ/QØp\\\'­ lñŒSA$ãµ=8q’j·¸ŸcnÑ*àc<âº=<œ\\0q\\\\Ê>àñ]&*•Œ×E8®¦SºÎŽÐ…ÆzÖ´N¥pkžŠ}¸9«±]Œc5²V9dÜµ© OqYEü,Ž&´/îÛMsq]´wG5Ï[Ý–†ÔW4lsšÖˆöl^0Y}1X`äùí^¥(KÈJ8=ë‰Öôg·•ž58ö®yÆËÝ5Œ®ìÌ9êiùH†ùr¤`÷ÍÈü9¬›ÓR½Î\\0:Õ=S?Ù7Ý¿q\\\'ò5pœ·gëÉª:¯Í¤^òxÿ\\0ôW_P–‰(9ÝýzÓONôÐ@<\Zk \Zìº±æ­ƒ×­8³PoÇ|Šz¾tþµ%Yqïzz·\\\\vç\\0bùçÚž`ñíGAl<Œôðq€NGLÔ[³ÛšPÜcµ	\\\"ÊF\\0ÿ\\0\Z•8ª£óÛñ58`>(^d²Ê¶­?vqëÖ«íO\rêj‰%ÝÏŒàwúS7tç­¹æ˜X~àF(ëÈÁ¦nã­(oš– <ž´Îr)„þT™Èàâ‹\\0¤ç æ£,@<r3Šqnä‘Q3cð«·A!KdŽçÚ·ÓšalœúRØôõ¦3…ñÙÍüw+3Ïÿ\\0[õ®%‰\rì=«°ñËnÕ#¨ƒÃ$ÿ\\0…qÅ¹ë[^ÑLˆ¥}IpOlô«Pa”)úàôªc@ü*Ý³|À@>•Ñ\ZÂ÷5ô ^ò$†Ö½B,\\\\kÌ4oŸQ·^qæ¨Ï¶kÒ¡”àrj%k¦[ì\\\\V99éRíÅ@àJqpýjYd­‚zÔ$úŽi]¸àñŠ…Ÿ>Üb—MKG%ãy>{4ã€Íƒõ\\\\ZÀÑru”`Ã¿=EjxÆu’î…FãÜVV‡ójÖëÈË¨$zdV°Ò\\0¦zª8gò«\nþ†¨ÆÜýN¯Œr+=lY9bsõô¨Y¹ïA`y¨‹sÚ©2mb‡ˆ_:Øê6ã×$ë^yjrìC`ñ‚:æ»Ÿ0þÀ¸%rz®ÄåÉ– `UÅû ´‘ìö,VÖÝrx‰G?îŠ’I¹þuN‰W8GO¥)“,nyühoK“mu,«åzÒ–8ã=*¸qß¡§—ùzñI’î¢¼óÄÎ­­ßg `¸ý•èp€ÌO9µæZãïÖ5ÁÇžÃ§\\\\J´´Üë<Ì4fc\ZLÀWD$äc#\\\"¹Ÿ	’š6;o#ô­Àÿ\\01äTMûÅµ©u\\\\äÞ‘›ëëP+dñ‚iÅý{RMÐ²8ÆsÅcëlWJº8çË`>¤bµ²ïèkÄRˆt‰ÉÔÅ€¡«Ž7¹ÀÏ;Ëp‰¿‚Àõ>Ÿ…z¬D*’0\\0çé^I	5˜ö€x žy¯WO•Gr+I¿tWnzô.îO”§§× :Ui/J\\\\ì\Z=¹Ý»¡ô¬®’ÔvoD_Þ¨71\\0I=1TîuGPRÊ:ÿ\\0\n§%ÃÈÜœn”Âz*ÎU:#xaúÈhaŽIÉõïøÒ’ÓKøzÓYÅe{J6Ñ-€?•0¿_Ö˜XpzSYºsÇ§­C}‹°òäžqAlƒŸZ‹p¶A¦³éI·°nH[-Ž(ÎG\\\"›»òi…ÂOíCzèÒÄ¸Àã4#áÔŸZ„ã¿´o\\\\n<úÕ]ßR_‘»náâ##Ò´-nZ\\\'Á8ÎÙÝmaózkWÍY#®ºnêèÎZhÎ’õq‚ÜÕ|›¯C\\\\a¹’.‡‚iF¥&Ò1“Z:‰hÑ“¥}QÖÝjh±O5™™&ÞOzÈ‰ä”ï,~•©lÁW®i·\\\'rÒŒ4FÔBOj–h–ê„jŠIò‚qëV¡—žqŠ·%£Ö4g…ÙÑ~_LW>Ç±È#Óµz¥Íº\\\\BCc‘\\\\Vµ¢˜Ü´`íYÊWEB¢z3$õ<{ÕGUçI¼Èénÿ\\0ú	«Î¥\\\\‚9Ç\\\\U-Pÿ\\0Ä¢óæq÷MgÓô5–ÌÛHëŠ9<bš3ž¸ïJOËï]é]µÔLí\\\'ž§?ZxnøëPœ–qÍ81Ý“S{”‘:·L})Cÿ\\0œT@ûqNÞxä{Ò¾¢d¡ð{â”÷¨ÉçŽ” Ž0xëBÐ\ZèL¤màûšœ>G·ÖªƒÔóŠ”0 Zv-!?_jy`:­WŽ29©ã\\\'½4Cò%Ý€?Æ“u3pãšLäã¯4Ú¶£Ý’zSç9¨·`)CcÛÖ•Åb@û²\\09‚ÜôÀ¦nã<Ówã?…RÐÆ£%³N-ß­DN¨úS¸‘ž½ûRî:qÔÓIŒg½üÃùcµ2u<÷ÆìÃZäŸõÎzrßã\\\\˜<œž½tÞ3sý½*ãþY/=}k–<kkè…QÖ¦ˆþñTœÕqØ~@ÔÐ3\\0ö©J÷-ht\ZÆ¥iŸùè?\ZôxÜ \\0‘SÅy¾€wjv™Æ7‚{W¢FA\\0c9¬äïcN…ÀÀcž¾”¬c¡#žµ_q8ÆJ¸°àã­B»aæ2]ùÿ\\0¦}9¨äŒ\Z|ïÏãÈ5[y€?!MÛqÅèqÞ2ÿ\\0iCc´Eœgý£Ú¨xçÖ-É†SÍOâç-«(ÇÁÿ\\07ÿ\\0Z«xlÿ\\0ÄÞs†çÞµM¨¢R÷ÏLˆÇ¯µL­ŒƒŒtªˆxÏ|þu a´\\\\«MÎ‡«%gÇ>”Æ|Aè8ÇZŒ¶F{JF`þZ¡XÇñdÁ4Îæu\\0c<îÏô5ÆéŽÏ»qê9®—Æ2…Ó`PzÎ:wùZ¹};æž5õ‘GQZ­´%?}¬²aqÓ­9\\\\ää‚=sUwîÎÿ\\0tõðØ>Õ•ËqÔ¶®xÝjPþüÕ@ËÛ­Hó`ôÍTY“4aÈ]Õåš»ƒ«_7\\\\Îø\\\'§Þ5éÁÂ!ç·zòJ@÷7-œn•ÎG»[_@£¬ìv~b4`Ç–26~œ[¹àqŽÇµ`øx…Ña\\0	cŸSŸþµj‡;‰ö¬&ýí?­\r\Zê]VqRãŠ©á@íŒõíS=»Ó^fo°òÙ×?âŒÉ£Kr¥F{ýá[…»`ÖˆUæ±X£]ÌÒ—¿z¤Úh µÔá´È|½zÑsö…åz“¸r\rz€•UO9íŠäôÍ\\0YÜ­ÍÃï•(ªNûûÖø|ñùÔÔ©¢îm\n<Íµ¢,Ipì	QíÖ ÎG÷æžyúÒŽ3ÔsÍs96vF’ŽÃŽ0y¦—Áàóœ\ZcŒzúSKãÿ\\0¯RÛê_*è<±Ï¦iŒÃ“šk?=ðj\\\"û™<f¢÷hi/ŒŒ)¡ˆ g·µ‡ÝÎi¥€älÑ¸…\\\'+×¯4òyÎzãéL.IÉéß”ÒØžœ}i¶÷ì‰IN·­4¸\\0àSÖ™¸m<’:}h91§OJ:†Ã¸ûÃñŒæŒã•9úv¨Ûñë×§>ô¡¸ÀïI-Ù/¸är>Ø«°]$µžQÇøRoëóŸZÖ”ý›¸¥cdË¹I&„\nXœã½f%ÆX>äûTÉ>q×&º]¥±‹ºÜÛ‰€ôúÕÈœn5‹Á8«‘O´rzRv\\\'stJ6€?*N Žk(\\\\d`TÑLüîÃZ‹_am©¼×K@“’zLp—0üÀdúÖ$w\rs9r~Pxyg•sÏ¥Jw×¡6éÔçµm/d\\\".>‚¹=YJé—€‘öö5ên‰4X<“\\\\g‹4£\\\"¯Ý‚F?M¤Ö|¶•Ñ¬jhÓ*©Èì\r;p’GÓ¦jËÆy©\n©a»¯Öº9o©Æ¼Á˜Æ8 gž½ñM8QÅ5[®IúRoT;\\\\˜°jL÷ÎB“Œ}éáQwÏQJ:ƒÖ£úõ ÜsOfÉ\\\'\r©âŸŒã=º\Z®LãŽ•(o—$}(êÈ°¬Tç/Z˜ÎUGù¸â¤sÜÕ$¶%“–9$riã¯¿Z~>¿Ê‚ØëøTï°‰K\\0zóA`7zã­E»œp=éwŸ¼G½S²@J\\\'}iñéQô8&‚ÀúÆžÖÅ†ÜñøS7qÇáHX\\0xô˜[žsM-E¾âî%ºFüúSú`úP[\\0c?LÕy\\\"Yç~0`ÚüäžB ý3ýk›ž¹®‡ÅN¹rI!°£ÿ\\0ÎçØ­¬¹SbMbœ€†ûÝ@¨³Çšz0Vü8¨zìZ:_ý§i×©=}zOÀútÍy×‡ÿ\\0ä%mž\\0\\\'?÷É®ú7œzÒ²“4è[V!qÒ¥ÝÏRj¢?ÎG\\\"¤/À©-A˜€¤àŒòG½T.søTÒ¹ÇREWÉ\\\\g©êE)+ç\râ™Cë2•Oñž½úŠw…²u˜ùþñü6š©â&\r­]c\n§Ê*ç…]Z6<¬0?Ý\\\"µkÜ±1Ög~Átö§ï$z\nXŒ†”7ù5Ìõ¶¤»À\\0d~4Æn½³M-“íØf˜[žJÑ¢o¦‡=ã&ÖÝNx°ýÜZçôq›ûPF32þŠ×ñŒ€ý‘;üÍü«/CÁÔ¬²sûåéõ«Z¤%ñŽ„ç?ž{Óƒä“Ç^üU`ûA=xê)áþQ‚sŽ}ë\\\"ìX3ü½êd|°Î9ïTƒòELƒqõªKQKbü’âÐñ^FîZ=å·3\rÄž¼ó^4Ä[1SÑIëí^V_÷j»¹Àæ­»ÆÄÓJ/S¾Ð7\r\rÃæÆ}‰ëúÖ |c=EdèÍ\\\"Û#§©§x¿\\0sŠÊIÜ½‘p8ã=*C0P2ËY¦|}Þ¾¹ »¹äätÅ.k]õ\Z¤æËrÞg…<\Z€’Ì2GãQœÔ¡½ø¬åRú4é(î.9Æ~”œ½ÅíuõÍ0±èk6ÍÔGÉÛè=j7‘U—#\\\'Ò‚}x¦“ƒ×æè¡»j‹KQKñ‘Àö¨‹6îIÁèqJçjŒON*2ä±#îö©ÛQØ”°Ú:b¡g\\0xÎi»È=ÈÏ§Jc<â¥-Ò»H¤-óŒ€;¥ lŒœ \Zaf9ëô=èwb°âOÊC.(\r‘§ÀÃ€sJBÃ±$ôëŠzGa;ì8÷±Žx ¸ã?{=©°Hìx¤È ’OãB½‰cËß3dgªÒnÏ#?…FÎ7px¤ÜÛ€\\0ðhVX‘˜çóŽøÀ$†F\\\\Ÿ”8µ0·ÍÇËì¡¤÷‰\\\\–\\\\#Ÿÿ\\0]bçò¨CíÇLqL,[qÈö¨ýkhÔpvèL¡s^ÜýpjÁ¸Ú9ü«	Ê±¦y&¬¼‚XÆNsÔV×RØå³NÆ²j¸Ë>‚¥IvÀ±*ƒ ¬hU‰=ý;Ö„wJ ªƒíRÓ¹M%±³©uì3S[ÊìÅÉ¬˜›9g;¡çn9I Ï ©¿Rmcv)Ë“ÀíU<Lü)«ôÈ³˜ÿ\\0ãLŠMŠ\\0<ûš‡^”jÀžM”Ãÿ\\0j#{‘-´98‰P[ñãëS‡ãŒ‘ÖªÄÀ`déS«vÀÚµ¿c6¬+0ïÔjho›94­ê	Æ3ŒTAnáRìZ`ÛH8=ñR†íÐý*ßv3Ž3Ö?ï¶ç Š[£-†9<)ÀñÏ×îHÜ=èßÏ#šz­É%:u4ðàóséU”Œœ§ó©ã•¸‰ÃñŽßZ79ÕpÝ²)`\\0î{Õ\\\'tN¤ÆLLÓ· Ž½ùªÎùPp~b)Ã†-¸z\n.Ä’,î9ì¥.àGSž¼tÅ@\\\\ŽýøÅ;w8ð¡Ø,Ér@8éšË²áN2sÒšXãŠ7¤vªÒÖQäž„süª3Ü‚Oµ!#¿JaoCÔÕ	Ž=sŸZg§ãŠfr9=ºæÃž2hê.‡žø¡ZMrèò@Ú¦6­`²°>µ»â)ñ­ÝwPï•¬\\\"üƒÚ´”›`’°àŽÃ…<sM9VÇåW š-›XcŒz†à€ÀZÍNîÖ5týÞk›¾Ïö­¾IV?C´×t¤Æ¸ó©Â@°rOû¦»tn½4§{è$•‹Hüç4òÇž=j¬OžGJ”œô8úÔ§}Jz\r•‰gúT>`êNN)ƒzõ¨æAÀù‡¨©õ*Ú¶ûµ›—ÿ\\0oŒ/ ×5¡á&#TÊüøŒVN¨áõ;“ÐyŒ9úÖ¯„±öæÈÎãôÿ\\0\ZÚO÷\\\" “ŸÌíËrH¥Vã\\\'?Z€·9¡±ž~aÛ×Þ¹îûX˜·~ƒÐý‰\\0äñQnÎF;â›æ\\0Tg?QÍ\\\\X[¹Íx¶Oô«q‘Â1À<ä‘þOÃÙ:Å¦9ùØ\Z—ÅOºö!ŽDg§N¦£ðáÎ±l¼\\0ªÄ“Ûå5Zòièw@‘ôô¥\rü@ÔAðp0yÀ¦‡\\0níéYÜvÖäáð&¥ëŠ¨dƒÆO½;ÏU^[ŒgéMH9Iîßý\n|uÇô¯2Ò²§\\\'>Õè\\\\	a’1Ñ—ûµJÖÊÞÔ-î›‰ç¦*¹â“¸ãJMÜµdZ->ÝpK*€r1Ž:sô«·n$ƒÏÊ¡;FG¿jz2ã\\\'#>ø¬Gsª4b–¤¸—»óRnAãÛ½B\\02¼úuÁ©À9>Õ‚“oS£’Ãƒ|¼úýiáºŽ•	aÆ9=E(|õëI»bBÙ#\\\'Ôw¤-´ñÈ¦n;{œç…¹\\0dvëD¢š»+gaKä9¦–ÇÚƒ€Ýp1Ö˜	ÉèOéCm=yl¤ŒqÇãL%ÕÈ#‘ÈéHÇïN(<dÖ’`zˆ[ëøT{¹8ãß°§JŽyÅ3¨`}sïVß‘	¡NsÏãJYwrÇ‘ÎO4ÓÓ0zÓK=³ƒŠ·ÐR@ìyÒç!€úPpè¿4ÒÃŸýz\\\\·õƒeTc\\\'~tÒIÎwF!q’OZaq»ê;Ö’w »·9*1HÍ´ääŒvëQ1äòAš\\\\€ž„ÕZîÂ_’<\nBÄ¶çúÔLÀ)ú‘H\\\\ç*ÃóëOÎÄ’³€¼r:àŽôÐø;Ž9Î}ª»9=¿úÔ…Â¡Á9©”JÔœ¶æ<¹àŸzš9YG#<tª‘q’3øÓÒ\\\\€F1×nzÖÐ›ŽŒÊp¾¦’JKpG_LÕ”#`õk-qöö«Jã\\\'ëÚ´K]½MxçÎ\\0ÈM\\\\€éœö5†’€A9Ûõíš¹\rÁf·°œMä“æúU}zuÔ×<µœ£ÿ\\05\\\\…uªšÃîÐu\\\"Í’meÇýòiÅ­ˆ’fLl9ñ‘ÍLŒxnœõª’>pÒ¬G\\\"° œ\ZÑ=.÷!¢bÇ\\\'Œû\ZfïŸ‘Ï@h•±èj›$‘úSiÚÂ]‰ÇnUGLb£±º*ÆÜ–íŒŽ=ê=å†ãúR«äà7µC•µ)D·¿\\\'=9Áæ”>XƒßÐÔðOØžô ÓØSmÉm%ö÷Ç©ÍÀÈã8ªÆR½9Ïœî ç$AöëJúÙ\n×Ôgäƒš’9˜ç 5M”ïÝüGœdóV·¹4Eu	D²_%TtÆhi0zã½Vl±ê@Èè}éã’NqŽxª3iX²Œ“He$=ªÎxú\nk±ä’8õ¡¶·dJUzâ‘_w\\\'ŸZª­“¸1\\\"¦ÎíçÚ¨L˜œ\nnî}1P	knx‰+:®õÚOQU}E×B`ÝÏnÔ“ßŽi›Çn)wƒ×5KR6<ïÄ­rìƒŸ™GÓ\nµŒ>¦´õã»X»=?x{õíY~•£@¶6¥‹¸éMéFrE.·C¢Ð\ZœLIVäö5Ù+c\n	ükðó¢ê ¶1°ŸZë‰‚Œªúg¥g$¯cXìXV!2r1éN.\nñŽçHJª\\0Ú8¦ È·åS{&÷AÆI¾•ä˜ÇãqS9¸äðOZ©;äc\\\'œuRK•©ç÷Ïºúf9vç×$Öß…n¤=ÂÇÄ+ž¸mÓ9ÎFãÏã]…r²Ìàòcó?ýj©?vì˜]ÈëáŽH<zô¡ØnÆNqê1š€1bzä:MÊ	çéšçMÞçB&/ÁÀThù$23õúÔFUÁçŸ»Qùã^Häç·ãøSz½Ggcœñ+îÔT€±Œõ4ïn\Z¼D€­“ëòãúÖÅ„7—FY‹0\\0\\0£ùÕ˜- €þé¶6åO5£«&%BmÜÔûFîzïL31pGJ€€W8ëëþsFîH™Ï)ôGLh­Ù1v\\\'’Ý\\0æÛy=\rDó–Ûõþ”ãóqŽ)9YF’CÁ!Ï\ZPÄ“ž´Áœ\\\'ŠPNîIàÖn]KQìL0HÇ\\\'ëOƒÛ±;¿ÏùuÈù¹>ß)”c=qœRoR’º,v€qÇ9¥É$dÈêzT%·.Açœô¥\r†çÐRÞƒµ™>ìþ€÷“Ç©¨ƒuÁ$g¯ãAÈä~TµNÑ6<1Æ49ÀÁõ­39\\0‚yÇzBÃ’ãµÒá©!uby#Œñ¦öÏCëHpíÏ¥MkšL1ßQM“) ·´šy0#¹×C§øed¤9ü)l£HÈ\\0\néìW\\0dµk®ˆç©9>¦?ü#6ê †©]øKr…²}:×k%¯š„ŽjÌf’ÖR’gëëZ5Ë«ZÎìž§^é·d‰¶Ž3Š F2Øäçƒ^­,÷¨RDS»½rÚ¿…Ê%¸Èâ¥ÆëB¹Ü_¼r,NIãžœS	;”–ÎzñV. x«£=j«‘¼sþ›],h¤š\ZKÉÈ÷;O98éNfàÿ\\0×¨‰RO9ì{Ñmw‰9àž½óÐö¨Ë¥qíÜÓ\\\\„ƒ×šŽFÇ#\\\'¸¦µ!»ê8»\\0FãŒôÿ\\0\ZŒ¹“ŸLTFBž=ri¬üdg=µ	XZw œgëšfóß¦}*“_Z€ËÎ2N:iä—Rð~äwÅl2	ç“ÍQ2‘Ó ž¾˜§‰FÝž}qš\Z\ZŸCZ)†\\\'ê*uvÛíŸ^•Š“€ØôJ¿\rÆAÁäÖ±–º¢$µ¹}#ïZµÛ9}\rf#¯N„Ž•*ÍœaN„ô¡ÆÛnÚ£j;…ÝÎNiš­Ætkõ#–¶“œôùMg	Ù[©éŠKé\\0ÒoA$–ÿ\\0ôYìÒ&Q÷[+¤œÉõ©£.Ü\\00*‚H[Äâ¬Äà@<výkEu¹“jú£$tãëþEFÌ	é‚{æ9Ïzc1$öïíMÙ´‰év<±/ã=)¡Æs­D‹ß7§¥w©$‘øóÖ¦Å7Ü°­òœc´àØlœàŠ‚ ¡@Ú}HéOÝócèyíIy±;n$ôïšRÁYTœdð	àÓÚ¤Œó×4£iŠž™#5M5ªZ¨Á\\0ŽØÍXN˜>œÕt~rIÈô§‡ù¹È8ÏOóïOáFrÕ“drÄävÅ;<ëPÆÁ“äŽ˜§‚HÁËtëTµB’Ô±ÆFzÓA^¤gŠ@rN7ÆœrH\\\'ØÓ&ÖÕþ58cÈ÷ÅFkdpzƒŠ0	Æi¥{²Xæ`Võ¦Hq>™¡ˆÉÁ=GóÅB‚Iè9¡=BÂ.J‚q“ƒóøÒ—ÁïL,\\\\íÏ@:\naa¸`“‘ÓµR¶ó<÷Y“ÌÕ®Î2<Ö—Ò³Oµ\\\\Ôðu+¢Gœüþ&©Ö’o©(=és’)3E!\\\'†ßf¤N9ØqêEuA‰|’3éÍr>Á½#ÈÈr+§üÃ*|gµe+ójj¶-Èç~QÛç·ÿ\\0^šîüm8·Z…dÜKŽû¾Ôæ|}æqM~lÇµÀa*Í§o8ã½Ar[Œð1ÛÒ˜\Z8åi·“»Ôš«qw¿(I\\\\žGµ\\\'e±QMœKÌqÒº/8ffÇ*:Ÿ¯Ê™‰0iŸw¨Î+F(5ýÚ\\0=\\04êM5aÒ¥;óXº.Fà@$úŠcNòw\n;cŸÆšˆ•ÀÉëRËJõúäW?5úÑ£Üj®G9\\\'É ŒÙç¥…œvŠ]…v”$ÛC•ÝcJÈ`n„r\\0§ù„g88¨w>Ü­÷r:PIŒ:Ô6·eÆ=‹ü¸Ú\\0=I£vº7ëŠˆ0lÁ>ôàÀO©ÒÚ”àÇ‚7dŒûŠ79& -ó}©Å‹6CuêÝ•;§¹V&Óƒïšp c9É÷¨Q€89žAâœwÇ9“œRzî¨˜°b8ëÇZhã#Áãôæ˜àc>ŸýjRNJlVÔ”¸Ãr=;Òƒ—F>µp6Ž=ýiû¾\\\\“ßŸjQ^íÇ©(Û·åbO¯­;8àÔ#¯ç­?pÏ\nqÐdÒ³½ÄÉì¾ÔÓÙóšÎÜ}\r(e~<ñM7MÁ\\\\’¸éœ}+JÑB ÀäóšÌo\\0dœóÚ´ál­i¥}çÜÝ³L€Ùë]‚POZç¬˜ñÈÚ+zÚl(®ØÓ¶§#•îÎ†&ETÔ-Òxv85w&¤i·!ÿ\\0\Z®N†-´îŽhÜ5´¥±Æjò]«¨Î5Ÿ­®ºñT¬®\\03ÍqM8O•lvssÂì»{¦ÛÝƒ”PMr:§‡¥€³ÄK/§¥v\\\"LcšqÄ€«rcOŸ[36­ª<ªdd%m#±ªÎÙ$~ ×£jZhHQ“\\\\^¥¡Ïh	@Jã·nÕVMÜJf;°^‡‘ØžµÈN\\\\ð1ÔRÊJ6XuàñøÕV“’2\\0ÍBîhÙ$…ÈüÔNø>µJH8\\\'¦*(Û“éŽ5£Ž—f\\\\ä®ø‘š®òtÉééQK?Üx5Y¥ùpäjâº˜Îe¯8À==)âaØÿ\\0…gyœž´ðÌÃ’~•N&j¡t\\\\’xëÚ­ÛÜ2°ç•™\\0ƒŽjÊ£#ùÔÊ-\ZÂM›i.äë“×žÕ8aíì3šÆŠ\\\\tÀ¨éWR`ÄrG~¹¬ÞÖ:“W4óÓéM½“:mÐ-ÿ\\0,›þjã‘íQÞ¹6—\\0õòÈäó÷Ojk}BiYÜD~ùF0@«\nÇTcqëÔzõ«\nàØ‚›·Sžåå~0H‚z{Ò›wÞ\\\'ãµB•À Ç5!e,FAÛéÍ5°1Áç°©ÔGj¬\\\\O\\\'ò4åÈÆs»®EBiê;%rÊ3nÁÎO#½<1UãœcåÏù÷ªá›½O~´åc“ƒj»_@Ðœd/ÌIúÔ°N^™=j°mÙë×üâ¤0\\0Àè;T&÷DyUÏsœôõéR†Ýœuüª²?^€úO\r‘Øsž*¯m„Õ‘<Lpp1ëíS¿#§|U|1Ü“Ò•XuÉ9<â©.ˆÉœ’§™þÔŠÅ> Ó··õ¤%@Î1M«êJ±>ì0ÏSH_ŽyÇãQ^yÇ°íHÌ=FÚk[Ü›\\\"`Nã‘Û¦)¥ð9ëÚ£/‘ŒŒŽzzÓKŒ`z}4lì&›ma×žNipØ9ã­DÇÁÚy8Ö88Ï8úÓMŠG¨ø˜Üúy­ÇüÕ_¥ZÔu‚?ç«èFªÖrBE(Ž\\0É Fï‡ðn¤<ÿ\\01]LŽ~QŽ½+›ÒÖH$i*¥qõïZ%Ë¨$à ÇŒ¬tÂ\r£Aï~@Àñœf 7Žç°^€U` Ý{ÓÑpGosRå©Ó\Z6ZBî\\0ù˜‘ŽzTˆ£Û†\\\'Ö•T®3éƒƒS¯³nïs¢0Ih\\\"(9Ð(ëS\\\',\\0ÚyèùÍ5+ÀÈ*©\\\\\\0§=½ª4Þæé\\0@IÇáŠ6ìê<vâ¦C€	ŒÒíÈÈ\\\'>š€\\0	‚xäÔ€2ç·â§ ëHÀÏ\rì=©5¦à®@å”äsÏ<gŠf~`{g°©HéPeXuÉÎAçš¬^—°òÃpÉ8ôïšjóž2?*a|Èã”¯<R¶ÍÔ¹ˆ#žž\n	\\\'9¨ì$zqR³ØvªiÚÃºÜ2¸`gÛüú\n{0?1Îî¼ñPg ƒéÖŸÉlö<ô¨óEhJààôëÏZPÛ³‚GÓü\Z…v«<÷8=)Êãw|Z6d©:ò*@y\nJ€\n	?\\\\Óa€}Î)+Ø&œç¥<€9Ïû]jØ\nFïü©ÁþQ×è=jÖŒ†ô%ù7ž\r’yëÀç¥DŒ1ÿ\\0?…87Í‘ÎFOr¦îC¹(s¸àõ«Œì‰~†¨¡#\\0`\\0?:Ð–dÚxüy­9{Ú˜ÍÙ\\\\ØÓ.A“Ö¶¢¸Àà×\\\"Œöç#$Uè5/”Ôö5ÛÜÂQ¾¨êâºÆ9ã½L.†ÜƒÍsBüpr)N¡€>lZÒé+³7ô,ê÷!”“ùVe”ÄÚªßßy§úóE«àdâ¸j.i\\\\ÞŸ»3qe8ëVcrXÖLr÷çƒVãœô¨åÑ}ÎWÒ©N© *Êi^èäƒøÖ|÷[pä\Z^„ZîÌ£áëk¥,ˆøÅqZ®ƒsfIYsé^ùPzÓåHç\\\\:‚\rTdí¨I5¢<FyJ±R¤0íÓU¦fèÍz¦«áKkÅ,Š±Æ;W©øfêÅ‹*–_P+u%-L%éb~ñ4R:2½qLQƒÛñ«0³¾ =:ÓÂŒR€COQî\ZM–¢¬\\00G­J»±Ïò¤p9ÓðyçŸaY³e õ?0ôx«ägvëP ÈÁô§/#©éÒ¢I\ZÃMK±Ì\\0\\0óèjK‡&Âl‚vÃ#éTÐŽ¸üiÒ9û$ gù\Z\\\"ŠoFIÐäg‰â¦BŒœñUC(ùqúT¨ÿ\\0(#1éM_¡–èZóp\\0àc5&ã·v~ETG-‚AÒ¥Þ¤qœýzÒ[‚Òä…øüØíOW#$qÓüŸz¯¿#Œuô§8SÀ?LQÑßqÛ˜³¸1Îœqÿ\\0Öü©¢NNsÆ3Qù›X7ô£]îY›	À\\\'©4âÒØ–‹¢B£ rÞÔ¦mÃºzS°P6dÚV+µ<c­	®ƒ,‡Ü¹\\\'w½HŽ˜a“ÍQ2¹T{…çÜ:®DR’½ŸçMßI#7mu5¼Ôpn9›or²à\\\'œqXåîTå-fÛƒü\\\'Š}¤—(›^ÚQÎ[*håvãfmy€œgâ»œž•IØ†\nFœúSÄ…WWŽMRÓBZ¾¥œ†^\\0éŸ_Âºã1ïTçº6®ì°à‘PÃvò);[®…+]’4ããð ·èEUŠãq€\\0ã=ˆ§+‡9È`8ÈïT¥gblô$2cÝÏáQ³ÉÆîô×|cã¯µC,èŠY˜g9Á=i¶ìMŽ6ñ‰¼˜’Ió$ýj\\0	8&¯½«Íu+Ÿ•Y˜ŽýóW\\\"¶H—\\0ŽwU)¥¨£JR(Ûéï(çh\\\'¦y5¥œ10\\0qœõ5*`¨ÀÝß&¦\nvœ°Æ3Æk\\\'U§c®µhpFHýqR8îCNA¸uäõÏJ{&Ü|»sÚ±S¹Ô¡ØhùðÍ’FÇ!N8Àç\\\"˜\\\'iàz° `IÚpNz‘R÷ÕšF7ÜfÖ\\\\˜dvö©\n’OÌ9àó@Ueù0§·Ó$ç46]¬ÇDH ã¨ÁäqVã’y?ÊªŒ¡ÝË)ç#¨«\nøÉäG\\\"¥ÅßQô±/pQÇõS»‚qüé\\0Êÿ\\0P)áX/*H\\\'¦×Q7`*§Ýx¦²\rÀc¯©©p¼Œc¹¨ñë×¸J+r/fUHBÏ®9Åg—!ÊœdÐv­Ø•8ÆsózÖlÄ,ƒ·B1É§÷f<®H<NzÐwSù\n…Ûæ888ÏéJyçéœž)(´Sö$,3\\0ÉàSŒ¬Ç©$œœÕv\\\'Œ7NE b=ûRäïÐiò—Ë’@ÏçJÕ±ß½@Ž\\0*G\\0÷§‡$NzŠVºÑ›«%`GCšr’\\0ÉÇ5mÇ>‚…8<tçŸñ¡Bû‚—RpÏ‘Ïðÿ\\0/øTaŽâ@ÀéOî§ò4(ßd)K«8ÇcÒœ3ž¼tª0r03¸qÓ¥8¾9ÉêXSµÑ-¤HsÁ(ÞOþº‰Y[¶8æž‡œrÓš|®ä¶HXôÀÍ>7xØNÞœTgæc’î1FFHdŸÂ…½Èv± —À¦\Z‘¤RÙ=¬×b1ÆÑQ;8Î	ü?úÕÓ¶ìÌš] nÞ3…lÄšrÞ3p9lséYFpXÜŽiéq´ñÏjOf7¡ª\rÇ\\\'5r7Ú}ë%.2£í‚MYI”c\\\'ÿ\\0I­H»NÆÄO“ƒƒëSö®7cšÉŽqŒçñÅ]”CßŽgm.èZûY.S=MKtáaŽ9¬[Y¦ÞÇ«7Ó’ˆ¾§ó¬ù]™RVi–m±©ýêxî:dþµÒ2Ä œ~5*ÌBƒœš$¯ Ó¹¶7ó¦KoêUÔ7êœSä)Ï8­£íþt£¢Ž§-¬øJ+­Ïáêk†¿Ñ.¬\\\\—BFqœW³#†^Ç5RûN†î&YpEhªÛsSMž-ŒpGáN.qÿ\\0ê®ßWð¢’^ƒéŠån´Ë›l–F*¼g+[ßTG#L¬Ü=)sÔ`~ÍÝôïJ­ƒž>˜©*ä»±ƒÏ¯ånI\\\'¯Ô@ñœgŒS³ßð¤Z\\\'V\\\'œŽ½(”âÞAáaúTa¶œçó¤•ÿ\\0pëÏÝ?Ê’Ü»èÉž™Ç=NsJ’\r½sßéP€X¿ZT?2¨àgœñNÚ]õ.#à`·‚9§oæ FV‚=éy,3•¡ê=‰‹g8*£¸¦M Éôçó¨›åóîqJžà\nM‘8r®}:úzÕsrðß/Í•\\\'¦1øS\\0:ûUK†ÍÂ6zj•¯f&ÚW7ãc$f¤›Ià‘ž8Åe£Œóš•’6Ÿ|\Z…²)Îæ’]’¸ ãûÕ0º^:cÿ\\0¯ŠÊžvîéÚ¥@Å†õÀªQ[21xœ¶Î1Ò”^¡Ë2sÔúVqv:ûÿ\\0ŸZA&ãÃØâ«•]¤K“ÜÓ7jp@ÆN8¥ûJ“€OéY¡ÈÔŽÞ”öàžOqž¦Ÿ%ÃžÅ³±®…ÃfµW.zñëÚ¤kØÕÕ6Gz£æƒÐûõ¤wÀ,pOéÙ4.cMnÕ	SÎ:qY\\\\‰w¿©<S¿´FåcƒÅe‡fÚÎ3G»ËÊÈå—1£. 70LŽÙõª[ÙÛ{œõÉç5©ÉcÉè=ªdPIè½Ï«+«1¦ï°\\\'=Np:™O=)«aÈÏn)Ã(ìxTÈÞ*Ã€(HÎx©ºôã¥12ç={g¥H«´c8=>¹¨{›EYØz©\n^¼T»HRÄŒç¸¢0ŒòïÖœAÚp3œ“Çj6ÔÑ+«˜Ç˜t§¡\\\'†<`zP]†	:éOX€	¡ÿ\\0õÔ½U‡kj;î¨H\\0ô¤Q¸—=qÀ4ð7ŒàôY~QŽ¹=iî®ƒmÇ#·=p8Næ¥Œ9¯Jb&T¨;}@=jP¤cî‘Éäf…h^è>\\\\gýžÇò«*À¼Â©†pÄmcøTÑ»©ÏvÅRÙÜ‰y.îê\rE*ôÀ#žÝø§	I\\\'×½F\\\\méœî>”E»­Ê²9*À!ùÕ	I<’3WeèXtÆsT®Ig c$ÕÛÈ(™ðqŒt(<ã§\\\\zÔþðçwÌ•ã§\rU®õ!Ï±d¶qŒ`“Öà78¶MBŽ6·9ôæŸ\\0ŽØ56²ÔjOrÊ¾F8éRóíÝÈÏ\\\"«ƒ¸p=úŠ”Œƒ×“ósI«iÐÓšÄàœŽ \n‘0o×üjÄCgÁ¥\r´wÎ?½(ä¸¹Éñ‚pÙ9©g¯§=*\\0ì\n°ÅHÚ0£Í‚–„¡Èùy\\\\zR®\\\\ã‚)€7qÀëJI üÇŒõÿ\\0=hP!²N8ä\npàg8=x¨7Ó9ßÊ”1$å©ò]ƒŸR`û‰bsžƒü)ÄîaÉzþµX6cŽÝ3HÏ·<àŽIªQiXÎú“7pp\rA4ê‹Ï=Ïj«5ê Æì*Ëžûs’ŸQÚ¬&ú²ì×`6qŸz/An¼ôëYNÎ¼*åXùÕE9é¡ÔÅr¹PYH§ùâ®ÇtAíÇSÅqñ^È¸ÉîMjÃ|òOZvÓR”Õ´7…ò¯;ðGoZŒÜ´ó.í=yÀúÖS;6H íääÿ\\0ŸZ|þlö5.*É¦™ÐÄèŠ3Ž˜ÏJ„Üy÷+ŽQHéÒ²Úñ›¼`úÔð8ŒòAç<µ+_M„·¹©,ÛˆN˜§	2«àž~ÕH6rÅ†½:\\\'Àç#Ð÷¬í}‹VJÆ´2í$ð*ìseyþuŒœmÆ85n)O\\0žzQ%¸›w5â“hëžôó7^k9\\\'ÛÓñ§™IÎZMN¥ã†ä÷¬ûí6´*Ê3S,¹qõ O¹¹£™¤+^«á‚ŒÏ\ZðNx®f{ImÎÙØ×¬»>•™¤At¬v®OoJÓœV¹æƒ…Æy4 äöÍkê:$Ö¬J©+×ð¬b\n±VOJ¤-‰3žOJ$baltÚsùSÙ\\0àv¢FÊ>rr:þ’Ô¦ýÖ(bA9>ø¢.NKS7džãÚmî­7±…Ùd3¹¾ƒ¡Ï¿­W%˜€3ÔÓÔ…ÀÁüM=.	“9È<žœR«cŸz„¸##ðÄƒžx¥}.R±>á€I9Æ9ïTçUV:äÅM¿×^á†ÀLÐ´d¿yj\\\\GÜ*]ÝðrNsTÕˆP@cœQ$â8ÉþÊŸMi«-KyH·AÐu¬öÔåÜvôéÍQf.Å‰É4•J=ÌeRïC~×Tk˜š9K\\0H8çJ—cz†<ztÍdØ’&=99ƒ÷»ÃíÖ“‹RrÚ7L…‚íF8¿½Uyî¾X]‚ÿ\\0R&Xî<Å—å8ãÒ-äòtQéR¤ÓºõZ\ZqÜðÄG¥V{†pF6ƒß59sÎHúâ€ ž[Š/Ü¥¡Ã°IôëOE!N6“ïMUÎÍ=WžØ¥}M’±(PpÁ5*òp\\0ç­Fþ/ÌÔ«´œÈ»ÖwKsd˜õÀsyÆsRl\\0ƒÚ˜\\0<àŽ¦ž€œõà\Zo}ÍSÓQñ¨PF1ÇåOLnë‚zbšHÆyúô¤ÇSž„úT»\rhN8\\\'{úŠvãºW9éLE¶Ô‚*n6¨*A=és-÷+mˆÁ?6~œ~5 @qƒïÞ˜NI Æzp.G÷ºôªQIƒ°à¸+žsƒR)Æ	Èð)ªÛÚ¥B®r@éÓ´¶¨/Ù€\nH=1ÓÐóþ5 m¬rÑíM)ýÜŒŒRþ\\\'±•¤ì±:·Ê\\0#\\\'Þ”¶âÜgŽz…s€2A\\\'·\\\\u§nã$ž¹ãO]ŒïrPØP=Dï…È\\\'“ëH]I#=\rB_ª‰c›•$‚Àvª¦åv$ã¹?ãVÃŽs“Ç5Nq¸°å¿Nj¢ï-	’±œÊœn?SP?Ê8ày«r(\\\'åã\nq‘Þ«È¼‘ƒ•éÏZwÐÏmY\Z6`cÚ¤CÆ<Õ\Zc  ž{})S,Äqœöô&ì²¼r	\\\'Ó5*œ±#ŸaUÑ¸ÀJvöç=éK}KMŽÜ¸ïJJòN*0p3È¤/÷— zÒß@sE¤qòàŒqƒŠ™p:âª+*“Ç½<K×$ãsUk‡2eÌŒï@r_ yäUS8$«ÁéŠîArÞÝsGºž¤¶\\\\w9?6@ëL.¸àò:Öl—È¹ÁÏ?\\\\Õ9oåo•H_^)©&‰¿sj[Ä‹«m8ô¬«H°Ú¹Æ1Ïz¡#œžÕ<ŸÄÑñåbi&w<äƒQù_ñ¦–ÇzBØ>Ý8¢Ëb\\\\®ÇóŒTmž¼Q¸Ò7#­4ìKÕ%Æ)ñÊÊAÓ=yæqOr/cRÞó †=}jän¬Ù×½`n!ÍZ‚ä¯8ö¤•‹Œ÷6ÑúvëVbõšËŠpËÀç­XI\\0#8Î>”ZìÖ2HÒ2ïrœÆ0jÄO•SÇ­g$€ƒ¥YŽ|`zvõ¨²¶†­ÜÑ‰÷ÏãŠ°•²ÈÏjÏŽM¸ÁÎy8©¼Å` €sïÖ²wkÞ)y£œœò	ô©Ä‘üª‚?™ÈÀÇCßK\\\'\rQëCzØ,‹uŒ\\0Üg¯sN7ŠƒŸ|V+ÜÇJŒ\\\\4ŒqÎqƒþ}ê$Tb™ÒÅpIÈ?…DowÊR<ñ×µdIx#‡nAcn[±â-íÃN.([ÙŠJæ“B—\nU¹Ïµsz¾ƒ¸ŒÇaZíz\\\"`§ ñŠ¶³$‘~lŽÕQœvD4÷hó9í¥¶r®¤mõíP9Ê ñ]ö£¤ÇpŒÊ ½+Ô4÷¶…`\\09Èö5ª•÷3qÑ¸ŸÿÙ','public/img/upload/thumbs/05c3ee2325764505964d4172cda1086f.jpg','SASKDKJK','LKASDLÃƒâ€˜KÃƒâ€˜','8080809','890808',9808.00,98080.00,'ASJDALSDJL','S','KJASDJS','082989018290',23,108,0,'ASDLAJSDKLJ','Ãƒâ€˜AKSDÃƒâ€˜KAÃƒâ€˜LSDK'),(3,'1067846610','ERWIN','MIGUEL','GULFO','VEGA','ERWIN MIGUEL GULFO VEGA ','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','public/img/upload/thumbs/478bb19c58c01e947ced5872e169d344.jpg','CALLE 36 NRO 14C21','KM8 VIA CERETÃƒâ€°','781637','7860146',1000000.00,500000.00,'SALUDTOTAL','S','RENAULT SYMBOL','3126247930',23,108,0,'ERMIGUVE24@HOTMAIL.COM','0'),(4,'345345','HENRY','MANUEL','GULFO','VEGA','HENRY MANUEL GULFO VEGA ','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','public/img/upload/thumbs/19a1a68e27964acd66c3b533ac7f5778.jpg','CALLE 36 # 14C21','KM8 VIA CERETÃƒâ€°','7821637','7908678',800000.00,400000.00,'SALUDTOTAL','S','VIVAX 115','3006543456',23,108,0,'HENRY@HOTMAIL.COM','WERER');
/*!40000 ALTER TABLE `deudores` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `egresos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `egresos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prefijo` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `consecutivo` int(11) unsigned NOT NULL,
  `tipo_documento_id` int(11) unsigned NOT NULL,
  `proveedores_id` int(11) unsigned NOT NULL,
  `forma_pago_id` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `empresa_id` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `fecha_act` datetime DEFAULT NULL,
  `hora` time NOT NULL,
  `hora_act` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bancos_id` int(11) unsigned NOT NULL,
  `cheque` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anulado` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `consecutivo` (`prefijo`,`consecutivo`),
  KEY `tipo_documento_id` (`tipo_documento_id`),
  KEY `empresa_id` (`empresa_id`),
  KEY `proveedores_id` (`proveedores_id`),
  KEY `bancos_id` (`bancos_id`),
  CONSTRAINT `egresos_bancos` FOREIGN KEY (`bancos_id`) REFERENCES `bancos` (`id`),
  CONSTRAINT `egresos_empresa` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`),
  CONSTRAINT `egresos_proveedores` FOREIGN KEY (`proveedores_id`) REFERENCES `proveedores` (`id`),
  CONSTRAINT `egresos_tipo_documento` FOREIGN KEY (`tipo_documento_id`) REFERENCES `tipo_documento` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='TABLA DE EGRESOS';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `egresos` WRITE;
/*!40000 ALTER TABLE `egresos` DISABLE KEYS */;
/*!40000 ALTER TABLE `egresos` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empresa_id` int(11) NOT NULL,
  `cedula` int(12) NOT NULL,
  `nombre_completo` varchar(200) NOT NULL DEFAULT '',
  `direccion` varchar(200) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `web` varchar(200) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '0',
  `fecha_act` datetime DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `fecha_vencimiento` date DEFAULT NULL,
  `salario` double(15,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cedula` (`cedula`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COMMENT='tabla empleados';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,3,0,'Administrador Sistema',NULL,'administrador@softdesignermonteria.net','0000000','00000000000','http://www.softdesignermonteria.net',0,'2013-11-14 00:00:00','2013-11-14','2013-11-20',0.00),(7,3,987654321,'USUPRUEBA','CALLE 36 CRA 14C21','ERMIGUVE24@HOTMAIL.COM','7847858','3126247930','WWW.SOFTDESIGNERMONTERIA.NET',1,'2013-11-20 15:50:42','2013-11-20','2014-12-31',890000.00),(8,3,45678,'USUARIO DE PRUEBA','KM8 VIA CERETÃƒâ€°','ERWIN.GULFO@UPB.EDU.CO','7860146','3126247930','WWW.UPB.EDU.CO',1,'2013-11-22 08:29:52','2013-11-22','2014-12-31',1400000.00);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nit` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `nombre_corto` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombre_empresa` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `direccion` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `logo` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `regimen_id` tinyint(1) NOT NULL,
  `telefonos` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `celular` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `web` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `correo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '0',
  `kardex_id_default` int(11) NOT NULL DEFAULT '1',
  `tipo_costeo` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'REFERENCIA',
  `valor_caja_defecto` double(15,2) NOT NULL DEFAULT '0.00',
  `cobro_tarifa` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `porcentaje` tinyint(4) NOT NULL,
  `huella` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `foto` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `regimen_id` (`regimen_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AVG_ROW_LENGTH=16384 COMMENT='TABLA EMPRESA - DATOS DE LA EMPRESA';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (3,'99999999-9','Cooperativa','Cooperativa','xxxxxxxx','sin logo',1,'7777777',NULL,'www.www.com','cccc@ccccc.com',0,0,'REFERENCIA',200000.00,'INTERVALO',7,'0','0');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `estado_solicitud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_solicitud` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado_solicitud` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `estado_solicitud` WRITE;
/*!40000 ALTER TABLE `estado_solicitud` DISABLE KEYS */;
INSERT INTO `estado_solicitud` VALUES (-1,'EN ESTUDIO'),(1,'APROBADO'),(2,'RECHAZADO');
/*!40000 ALTER TABLE `estado_solicitud` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `forma_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forma_pago` (
  `id` varchar(3) NOT NULL DEFAULT '',
  `forma_pago` varchar(20) DEFAULT NULL,
  `orden` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=3276;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `forma_pago` WRITE;
/*!40000 ALTER TABLE `forma_pago` DISABLE KEYS */;
INSERT INTO `forma_pago` VALUES ('CH','CHEQUE',2),('EF','EFECTIVO',1),('TC','TARJETA CREDITO',4),('TD','TARJETA DEBITO',5),('TR','TRANSFERENCIA',3);
/*!40000 ALTER TABLE `forma_pago` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `posicion_x` int(11) NOT NULL DEFAULT '0',
  `posicion_y` int(11) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  `descripcion` varchar(20) DEFAULT NULL,
  `tittle` varchar(100) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  `aplicacion` varchar(30) NOT NULL DEFAULT 'default',
  `posicion` varchar(30) NOT NULL DEFAULT 'navegacion' COMMENT 'navegacion,izquierda,derecha,abajo',
  `seccion` varchar(50) DEFAULT 'sistema',
  `urlimage` varchar(50) DEFAULT 'aplicaciones/agenda.jpg',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=321 COMMENT='TABLA DE MENU DE USUARIOS';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,1,0,1,'Terceros','Modulo de Clientes y Proveedores','#','default','navegacion','Terceros','aplicaciones/agenda.jpg'),(12,0,1,2,'Clientes','Clientes','clientes/','default','navegacion','Terceros','iconos/User_male.png'),(92,1,0,1,'Menu Principal','Menu Principal','#','default','left','sistema','aplicaciones/agenda.jpg'),(93,1,0,1,'Terceros','Modulo de Clientes y Deuores y Empleados','#','default','aplicaciones','Terceros','aplicaciones/agenda.jpg'),(94,0,1,2,'Clientes','Modulo de Clientes','clientes/','default','aplicaciones','Terceros','iconos/User_male.png'),(95,0,1,3,'Deudores','Modulo de Deudores','deudores/','default','aplicaciones','Terceros','iconos/User_male.png'),(97,10,0,10,'Tablas del Sistemas','Modulo de Tablas del Sistema','#','default','aplicaciones','Tablas del Sistema','aplicaciones/agenda.jpg'),(98,0,10,1,'Tipo de Documento','Modulo de tipo de Documento','tipo_documento/','default','aplicaciones','@','iconos/Notepad.png'),(99,0,10,2,'Consecutivos','Modulo de Consecutivos del sistema','consecutivos/','default','aplicaciones','@','iconos/blog_add-64.png'),(100,2,0,1,'Creditos','Modulo de Creditos','#','default','aplicaciones','Creditos','aplicaciones/agenda.jpg'),(101,0,2,2,'Solicitudes','Modulo de Solicitudes de Credito','solicitud/','default','aplicaciones','Creditos','iconos/Sheet_of_paper.png'),(102,0,2,2,'Creditos','Modulo de Creditos','creditos','default','aplicaciones','Creditos','iconos/Folder.png'),(105,0,2,1,'Recibos de caja','Recibos de caja','recibos_caja/','default','aplicaciones','Creditos','iconos/Visa.png'),(106,0,2,1,'Notas Debitos','Notas Debitos','notas_debito/','default','aplicaciones','Creditos','iconos/address_book-64.png'),(107,0,2,1,'Notas Creditos','Notas Creditos','notas_credito/','default','aplicaciones','Creditos','aplicaciones/agenda.jpg'),(108,0,1,5,'Deudores','Deudores','deudores/','default','navegacion','Terceros','iconos/User_male.png'),(112,2,0,1,'Creditos','Modulo de Creditos','#','default','navegacion','Creditos','aplicaciones/agenda.jpg'),(113,0,2,2,'Solicitud','Solicitud','solicitud/','default','navegacion','Creditos','iconos/Sheet_of_paper.png'),(117,0,2,0,'Creditos','Creditos','creditos/','default','navegacion','Creditos','aplicaciones/agenda.jpg'),(118,0,2,4,'Permitir Creditos','Modulo autorizar Usuarios al Credito','permitir_creditos/','default','aplicaciones','Creditos','iconos/Users-64.png'),(140,0,2,3,'Permitir Creditos','Modulo autorizar Usuarios al Credito','permitir_creditos/','default','navegacion','Creditos','iconos/Warning_sign.png'),(141,3,0,4,'Caja','Modulo de Caja','#','default','navegacion','Caja','aplicaciones/agenda.jpg'),(142,0,3,2,'Recibos de Caja','Agregar Recibos de Caja','recibos_caja/','default','navegacion','Tablas del Sistemas','iconos/Visa.png'),(143,0,2,4,'Notas Debito','Modulo de Notas Debito','notas_debito/','default','navegacion','Creditos','iconos/Folder.png'),(144,0,2,5,'Notas Credito','Modulo de Notas Credito','notas_credito/','default','navegacion','Creditos','iconos/Folder.png'),(145,10,0,10,'Reportes','Modulo de Reportes','#','default','navegacion','Reportes','aplicaciones/agenda.jpg'),(146,0,10,1,'Reportes','Ver Todos los Reportes','reports/','default','navegacion','Reportes','aplicaciones/agenda.jpg'),(147,0,1,10,'Empleados','Modulo Empleados','empleado/','default','navegacion','Terceros','iconos/User_male.png'),(148,0,1,4,'Empleado','Modulo Empleado','empleado/','default','aplicaciones','Terceros','iconos/User_male.png'),(149,8,0,11,'Usuarios','Modulo Usuario','#','default','aplicaciones','Administracion','aplicaciones/agenda.jpg'),(150,0,8,1,'Agregar Rol','Modulo Usuarios del Sistema','roles_de_usuario/','default','aplicaciones','@','iconos/User_black.png'),(151,0,8,2,'Agregar Usuario','Agrega Usuario del Sistema','administrador/agregar','default','aplicaciones','@','iconos/Key.png'),(152,0,8,3,'Permisos','Otorga Permisos de usuario','administrador/permisos','default','aplicaciones','@','iconos/SETTINGS-flat-64.png'),(153,0,8,5,'Modificar ContraseÃ¯Â¿','Modificar ContraseÃ¯Â¿Â½a','administrador/modificar','default','aplicaciones','@','iconos/Lock.png'),(154,0,10,5,'Menu App','Menu App','menuapp/','default','aplicaciones','Tablas del Sistemas','iconos/Gears.png'),(155,0,10,4,'Departamentos','Departamentos','departamentos/','default','@','Tablas del Sistemas','iconos/Map.png'),(156,0,10,4,'Municipios','Municipios','municipios','default','aplicaciones','Tablas del Sistemas','iconos/Map.png'),(157,0,10,3,'Departamentos','Departamentos','departamentos/','default','aplicaciones','Tablas del Sistemas','iconos/Map.png'),(158,0,10,6,'Empresa','Configurar Empresa','empresa/','default','aplicaciones','Tablas del Sistema','iconos/empresa.png'),(159,0,10,7,'Huella','Modificar cedula asociada a la huella','somhue','default','aplicaciones','Tablas del Sistema','iconos/huellas.png'),(160,0,10,100,'Copia de Seguridad','Copia de Seguridad','backup/index','default','aplicaciones','Tablas del Sistema','aplicaciones/agenda.jpg');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `municipios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `municipios` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `departamentos_id` int(2) unsigned zerofill NOT NULL,
  `municipio` varchar(50) NOT NULL DEFAULT '',
  `codigo_dane` int(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `departamentos_id` (`departamentos_id`),
  CONSTRAINT `municipios_fk` FOREIGN KEY (`departamentos_id`) REFERENCES `departamentos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1118 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=70 COMMENT='TABLA DE MUNICIPIOS';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `municipios` WRITE;
/*!40000 ALTER TABLE `municipios` DISABLE KEYS */;
INSERT INTO `municipios` VALUES (1,08,'BARANOA',0),(2,08,'BARRANQUILLA',0),(3,08,'CAMPO DE LA CRUZ',0),(4,08,'CANDELARIA',0),(5,08,'GALAPA',0),(6,08,'JUAN DE ACOSTA',0),(7,08,'LURUACO',0),(8,08,'MALAMBO',0),(9,08,'MANATI',0),(10,08,'PALMAR DE VARELA',0),(11,08,'PIOJO',0),(12,08,'POLONUEVO',0),(13,08,'PONEDERA',0),(14,08,'PUERTO COLOMBIA',0),(15,08,'REPELON',0),(16,08,'SABANAGRANDE',0),(17,08,'SABANALARGA',0),(18,08,'SANTA LUCIA',0),(19,08,'SANTO TOMAS',0),(20,08,'SOLEDAD',0),(21,08,'SUAN',0),(22,08,'TUBARA',0),(23,08,'USIACURI',0),(24,13,'ACHI',0),(25,13,'ALTOS DEL ROSARIO',0),(26,13,'ARENAL',0),(27,13,'ARJONA',0),(28,13,'ARROYOHONDO',0),(29,13,'BARRANCO DE LOBA',0),(30,13,'CALAMAR',0),(31,13,'CANTAGALLO',0),(32,13,'CARTAGENA',0),(33,13,'CICUCO',0),(34,13,'CLEMENCIA',0),(35,13,'CORDOBA',0),(36,13,'EL CARMEN DE BOLIVAR',0),(37,13,'EL GUAMO',0),(38,13,'EL PE?ON',0),(39,13,'HATILLO DE LOBA',0),(40,13,'MAGANGUE',0),(41,13,'MAHATES',0),(42,13,'MARGARITA',0),(43,13,'MARIA LA BAJA',0),(44,13,'MOMPOS',0),(45,13,'MONTECRISTO',0),(46,13,'MORALES',0),(47,13,'PINILLOS',0),(48,13,'REGIDOR',0),(49,13,'RIO VIEJO',0),(50,13,'SAN CRISTOBAL',0),(51,13,'SAN ESTANISLAO',0),(52,13,'SAN FERNANDO',0),(53,13,'SAN JACINTO',0),(54,13,'SAN JACINTO DEL CAUC',0),(55,13,'SAN JUAN NEPOMUCENO',0),(56,13,'SAN MARTIN DE LOBA',0),(57,13,'SAN PABLO',0),(58,13,'SANTA CATALINA',0),(59,13,'SANTA ROSA',0),(60,13,'SANTA ROSA DEL SUR',0),(61,13,'SIMITI',0),(62,13,'SOPLAVIENTO',0),(63,13,'TALAIGUA NUEVO',0),(64,13,'TIQUISIO',0),(65,13,'TURBACO',0),(66,13,'TURBANA',0),(67,13,'VILLANUEVA',0),(68,13,'ZAMBRANO',0),(69,20,'AGUACHICA',0),(70,20,'AGUSTIN CODAZZI',0),(71,20,'ASTREA',0),(72,20,'BECERRIL',0),(73,20,'BOSCONIA',0),(74,20,'CHIMICHAGUA',0),(75,20,'CHIRIGUANA',0),(76,20,'CURUMANI',0),(77,20,'EL COPEY',0),(78,20,'EL PASO',0),(79,20,'GAMARRA',0),(80,20,'GONZALEZ',0),(81,20,'LA GLORIA',0),(82,20,'LA JAGUA DE IBIRICO',0),(83,20,'MANAURE BALCON DEL C',0),(84,20,'PAILITAS',0),(85,20,'PELAYA',0),(86,20,'PUEBLO BELLO',0),(87,20,'RIO DE ORO',0),(88,20,'ROBLES LA PAZ',0),(89,20,'SAN ALBERTO',0),(90,20,'SAN DIEGO',0),(91,20,'SAN MARTIN',0),(92,20,'TAMALAMEQUE',0),(93,20,'VALLEDUPAR',0),(94,23,'AYAPEL',68),(95,23,'BUENAVISTA',79),(96,23,'CANALETE',90),(97,23,'CERETE',162),(98,23,'CHIMA',168),(99,23,'CHINU',182),(100,23,'CIENAGA DE ORO',189),(101,23,'COTORRA',300),(102,23,'LA APARTADA',350),(103,23,'LORICA',417),(104,23,'LOS CORDOBAS',419),(105,23,'MOMIL',464),(106,23,'MO?ITOS',500),(107,23,'MONTELIBANO',466),(108,23,'MONTERIA',1),(109,23,'PLANETA RICA',555),(110,23,'PUEBLO NUEVO',570),(111,23,'PUERTO ESCONDIDO',574),(112,23,'PUERTO LIBERTADOR',580),(113,23,'PURISIMA',580),(114,23,'SAHAGUN',660),(115,23,'SAN ANDRES DE SOTAVE',670),(116,23,'SAN ANTERO',672),(117,23,'SAN BERNARDO DEL VIE',675),(118,23,'SAN CARLOS',678),(119,23,'SAN PELAYO',686),(120,23,'TIERRALTA',807),(121,23,'VALENCIA',855),(122,44,'ALBANIA',0),(123,44,'BARRANCAS',0),(124,44,'DIBULLA',0),(125,44,'DISTRACCION',0),(126,44,'EL MOLINO',0),(127,44,'FONSECA',0),(128,44,'HATONUEVO',0),(129,44,'LA JAGUA DEL PILAR',0),(130,44,'MAICAO',0),(131,44,'MANAURE (GUAJIRA)',0),(132,44,'RIOHACHA',0),(133,44,'SAN JUAN DEL CESAR',0),(134,44,'URIBIA',0),(135,44,'URUMITA',0),(136,44,'VILLANUEVA',0),(137,47,'ALGARROBO',0),(138,47,'ARACATACA',0),(139,47,'ARIGUANI',0),(140,47,'CERRO DE SAN ANTONIO',0),(141,47,'CHIVOLO',0),(142,47,'CIENAGA',0),(143,47,'CONCORDIA',0),(144,47,'EL BANCO',0),(145,47,'EL PI?ON',0),(146,47,'EL RETEN',0),(147,47,'FUNDACION',0),(148,47,'GUAMAL',0),(149,47,'NUEVA GRANADA',0),(150,47,'PEDRAZA',0),(151,47,'PIJI?O DEL CARMEN',0),(152,47,'PIVIJAY',0),(153,47,'PLATO',0),(154,47,'PUEBLOVIEJO',0),(155,47,'REMOLINO',0),(156,47,'SABANAS DE SAN ANGEL',0),(157,47,'SALAMINA',0),(158,47,'SAN SEBASTIAN DE BUE',0),(159,47,'SAN ZENON',0),(160,47,'SANTA ANA',0),(161,47,'SANTA BARBARA DE PIN',0),(162,47,'SANTA MARTA',0),(163,47,'SITIONUEVO',0),(164,47,'TENERIFE',0),(165,47,'ZAPAYAN',0),(166,47,'ZONA BANANERA',0),(167,70,'BUENAVISTA',0),(168,70,'CAIMITO',0),(169,70,'CHALAN',0),(170,70,'COLOSO',0),(171,70,'COROZAL',0),(172,70,'COVE?AS',0),(173,70,'EL ROBLE',0),(174,70,'GALERAS',0),(175,70,'GUARANDA',0),(176,70,'LA UNION',0),(177,70,'LOS PALMITOS',0),(178,70,'MAJAGUAL',0),(179,70,'MORROA',0),(180,70,'OVEJAS',0),(181,70,'PALMITO',0),(182,70,'SAMPUES',0),(183,70,'SAN BENITO ABAD',0),(184,70,'SAN JUAN DE BETULIA',0),(185,70,'SAN MARCOS',0),(186,70,'SAN ONOFRE',0),(187,70,'SAN PEDRO',0),(188,70,'SINCE',0),(189,70,'SINCELEJO',0),(190,70,'SUCRE',0),(191,70,'TOLU',0),(192,70,'TOLUVIEJO',0),(193,88,'PROVIDENCIA',0),(194,88,'SAN ANDRES',0),(195,11,'BOGOTA D.C.',0),(196,15,'ALMEIDA',0),(197,15,'AQUITANIA',0),(198,15,'ARCABUCO',0),(199,15,'BELEN',0),(200,15,'BERBEO',0),(201,15,'BETEITIVA',0),(202,15,'BOAVITA',0),(203,15,'BOYACA',0),(204,15,'BRICE?O',0),(205,15,'BUENAVISTA',0),(206,15,'BUSBANZA',0),(207,15,'CALDAS',0),(208,15,'CAMPOHERMOSO',0),(209,15,'CERINZA',0),(210,15,'CHINAVITA',0),(211,15,'CHIQUINQUIRA',0),(212,15,'CHIQUIZA',0),(213,15,'CHISCAS',0),(214,15,'CHITA',0),(215,15,'CHITARAQUE',0),(216,15,'CHIVATA',0),(217,15,'CHIVOR',0),(218,15,'CIENEGA',0),(219,15,'COMBITA',0),(220,15,'COPER',0),(221,15,'CORRALES',0),(222,15,'COVARACHIA',0),(223,15,'CUBARA',0),(224,15,'CUCAITA',0),(225,15,'CUITIVA',0),(226,15,'DUITAMA',0),(227,15,'EL COCUY',0),(228,15,'EL ESPINO',0),(229,15,'FIRAVITOBA',0),(230,15,'FLORESTA',0),(231,15,'GACHANTIVA',0),(232,15,'GAMEZA',0),(233,15,'GARAGOA',0),(234,15,'GUACAMAYAS',0),(235,15,'GUATEQUE',0),(236,15,'GUAYATA',0),(237,15,'GUICAN',0),(238,15,'IZA',0),(239,15,'JENESANO',0),(240,15,'JERICO',0),(241,15,'LA CAPILLA',0),(242,15,'LA UVITA',0),(243,15,'LA VICTORIA',0),(244,15,'LABRANZAGRANDE',0),(245,15,'MACANAL',0),(246,15,'MARIPI',0),(247,15,'MIRAFLORES',0),(248,15,'MONGUA',0),(249,15,'MONGUI',0),(250,15,'MONIQUIRA',0),(251,15,'MOTAVITA',0),(252,15,'MUZO',0),(253,15,'NOBSA',0),(254,15,'NUEVO COLON',0),(255,15,'OICATA',0),(256,15,'OTANCHE',0),(257,15,'PACHAVITA',0),(258,15,'PAEZ',0),(259,15,'PAIPA',0),(260,15,'PAJARITO',0),(261,15,'PANQUEBA',0),(262,15,'PAUNA',0),(263,15,'PAYA',0),(264,15,'PAZ DEL RIO',0),(265,15,'PESCA',0),(266,15,'PISBA',0),(267,15,'PUERTO BOYACA',0),(268,15,'QUIPAMA',0),(269,15,'RAMIRIQUI',0),(270,15,'RAQUIRA',0),(271,15,'RONDON',0),(272,15,'SABOYA',0),(273,15,'SACHICA',0),(274,15,'SAMACA',0),(275,15,'SAN EDUARDO',0),(276,15,'SAN JOSE DE PARE',0),(277,15,'SAN LUIS DE GACENO',0),(278,15,'SAN MATEO',0),(279,15,'SAN MIGUEL DE SEMA',0),(280,15,'SAN PABLO DE BORBUR',0),(281,15,'SANTA MARIA',0),(282,15,'SANTA ROSA DE VITERB',0),(283,15,'SANTA SOFIA',0),(284,15,'SANTANA',0),(285,15,'SATIVANORTE',0),(286,15,'SATIVASUR',0),(287,15,'SIACHOQUE',0),(288,15,'SOATA',0),(289,15,'SOCHA',0),(290,15,'SOCOTA',0),(291,15,'SOGAMOSO',0),(292,15,'SOMONDOCO',0),(293,15,'SORA',0),(294,15,'SORACA',0),(295,15,'SOTAQUIRA',0),(296,15,'SUSACON',0),(297,15,'SUTAMARCHAN',0),(298,15,'SUTATENZA',0),(299,15,'TASCO',0),(300,15,'TENZA',0),(301,15,'TIBANA',0),(302,15,'TIBASOSA',0),(303,15,'TINJACA',0),(304,15,'TIPACOQUE',0),(305,15,'TOCA',0),(306,15,'TOGUI',0),(307,15,'TOPAGA',0),(308,15,'TOTA',0),(309,15,'TUNJA',0),(310,15,'TUNUNGUA',0),(311,15,'TURMEQUE',0),(312,15,'TUTA',0),(313,15,'TUTAZA',0),(314,15,'UMBITA',0),(315,15,'VENTAQUEMADA',0),(316,15,'VILLA DE LEIVA',0),(317,15,'VIRACACHA',0),(318,15,'ZETAQUIRA',0),(319,25,'AGUA DE DIOS',0),(320,25,'ALBAN',0),(321,25,'ANAPOIMA',0),(322,25,'ANOLAIMA',0),(323,25,'APULO RAFAEL REYES',0),(324,25,'ARBELAEZ',0),(325,25,'BELTRAN',0),(326,25,'BITUIMA',0),(327,25,'BOJACA',0),(328,25,'CABRERA',0),(329,25,'CACHIPAY',0),(330,25,'CAJICA',0),(331,25,'CAPARRAPI',0),(332,25,'CAQUEZA',0),(333,25,'CARMEN DE CARUPA',0),(334,25,'CHAGUANI',0),(335,25,'CHIA',0),(336,25,'CHIPAQUE',0),(337,25,'CHOACHI',0),(338,25,'CHOCONTA',0),(339,25,'COGUA',0),(340,25,'COTA',0),(341,25,'CUCUNUBA',0),(342,25,'EL COLEGIO',0),(343,25,'EL PE?ON',0),(344,25,'EL ROSAL',0),(345,25,'FACATATIVA',0),(346,25,'FOMEQUE',0),(347,25,'FOSCA',0),(348,25,'FUNZA',0),(349,25,'FUQUENE',0),(350,25,'FUSAGASUGA',0),(351,25,'GACHALA',0),(352,25,'GACHANCIPA',0),(353,25,'GACHETA',0),(354,25,'GAMA',0),(355,25,'GIRARDOT',0),(356,25,'GRANADA',0),(357,25,'GUACHETA',0),(358,25,'GUADUAS',0),(359,25,'GUASCA',0),(360,25,'GUATAQUI',0),(361,25,'GUATAVITA',0),(362,25,'GUAYABAL DE SIQUIMA',0),(363,25,'GUAYABETAL',0),(364,25,'GUTIERREZ',0),(365,25,'JERUSALEN',0),(366,25,'JUNIN',0),(367,25,'LA CALERA',0),(368,25,'LA MESA',0),(369,25,'LA PALMA',0),(370,25,'LA PE?A',0),(371,25,'LA VEGA',0),(372,25,'LENGUAZAQUE',0),(373,25,'MACHETA',0),(374,25,'MADRID',0),(375,25,'MANTA',0),(376,25,'MEDINA',0),(377,25,'MOSQUERA',0),(378,25,'NARI?O',0),(379,25,'NEMOCON',0),(380,25,'NILO',0),(381,25,'NIMAIMA',0),(382,25,'NOCAIMA',0),(383,25,'PACHO',0),(384,25,'PAIME',0),(385,25,'PANDI',0),(386,25,'PARETEBUENO',0),(387,25,'PASCA',0),(388,25,'PUERTO SALGAR',0),(389,25,'PULI',0),(390,25,'QUEBRADANEGRA',0),(391,25,'QUETAME',0),(392,25,'QUIPILE',0),(393,25,'RICAURTE',0),(394,25,'SAN ANTONIO DE TEQUE',0),(395,25,'SAN BERNARDO',0),(396,25,'SAN CAYETANO',0),(397,25,'SAN FRANCISCO',0),(398,25,'SAN JUAN DE RIOSECO',0),(399,25,'SASAIMA',0),(400,25,'SESQUILE',0),(401,25,'SIBATE',0),(402,25,'SILVANIA',0),(403,25,'SIMIJACA',0),(404,25,'SOACHA',0),(405,25,'SOPO',0),(406,25,'SUBACHOQUE',0),(407,25,'SUESCA',0),(408,25,'SUPATA',0),(409,25,'SUSA',0),(410,25,'SUTATAUSA',0),(411,25,'TABIO',0),(412,25,'TAUSA',0),(413,25,'TENA',0),(414,25,'TENJO',0),(415,25,'TIBACUY',0),(416,25,'TIBIRITA',0),(417,25,'TOCAIMA',0),(418,25,'TOCANCIPA',0),(419,25,'TOPAIPI',0),(420,25,'UBALA',0),(421,25,'UBAQUE',0),(422,25,'UBATE',0),(423,25,'UNE',0),(424,25,'UTICA',0),(425,25,'VENECIA OSPINA PEREZ',0),(426,25,'VERGARA',0),(427,25,'VIANI',0),(428,25,'VILLAGOMEZ',0),(429,25,'VILLAPINZON',0),(430,25,'VILLETA',0),(431,25,'VIOTA',0),(432,25,'YACOPI',0),(433,25,'ZIPACON',0),(434,25,'ZIPAQUIRA',0),(435,41,'ACEVEDO',0),(436,41,'AGRADO',0),(437,41,'AIPE',0),(438,41,'ALGECIRAS',0),(439,41,'ALTAMIRA',0),(440,41,'BARAYA',0),(441,41,'CAMPOALEGRE',0),(442,41,'COLOMBIA',0),(443,41,'ELIAS',0),(444,41,'GARZON',0),(445,41,'GIGANTE',0),(446,41,'GUADALUPE (HUILA)',0),(447,41,'HOBO',0),(448,41,'IQUIRA',0),(449,41,'ISNOS',0),(450,41,'LA ARGENTINA',0),(451,41,'LA PLATA',0),(452,41,'NATAGA',0),(453,41,'NEIVA',0),(454,41,'OPORAPA',0),(455,41,'PAICOL',0),(456,41,'PALERMO',0),(457,41,'PALESTINA (HUILA)',0),(458,41,'PITAL',0),(459,41,'PITALITO',0),(460,41,'RIVERA',0),(461,41,'SALADO BLANCO',0),(462,41,'SAN AGUSTIN',0),(463,41,'SANTA MARIA (HUILA)',0),(464,41,'SUAZA',0),(465,41,'TARQUI',0),(466,41,'TELLO',0),(467,41,'TERUEL',0),(468,41,'TESALIA',0),(469,41,'TIMANA',0),(470,41,'VILLAVIEJA',0),(471,41,'YAGUARA',0),(472,54,'ABREGO',0),(473,54,'ARBOLEDAS',0),(474,54,'BOCHALEMA',0),(475,54,'BUCARASICA',0),(476,54,'CACHIRA',0),(477,54,'CACOTA',0),(478,54,'CHINACOTA',0),(479,54,'CHITAGA',0),(480,54,'CONVENCION',0),(481,54,'CUCUTA',0),(482,54,'CUCUTILLA',0),(483,54,'DURANIA',0),(484,54,'EL CARMEN',0),(485,54,'EL TARRA',0),(486,54,'EL ZULIA',0),(487,54,'GRAMALOTE',0),(488,54,'HACARI',0),(489,54,'HERRAN',0),(490,54,'LA ESPERANZA',0),(491,54,'LA PLAYA',0),(492,54,'LABATECA',0),(493,54,'LOS PATIOS',0),(494,54,'LOURDES',0),(495,54,'MUTISCUA',0),(496,54,'OCA?A',0),(497,54,'PAMPLONA',0),(498,54,'PAMPLONITA',0),(499,54,'PUERTO SANTANDER',0),(500,54,'RAGONVALIA',0),(501,54,'SALAZAR',0),(502,54,'SAN CALIXTO',0),(503,54,'SAN CAYETANO',0),(504,54,'SANTIAGO',0),(505,54,'SARDINATA',0),(506,54,'SILOS',0),(507,54,'TEORAMA',0),(508,54,'TIBU',0),(509,54,'TOLEDO',0),(510,54,'VILLA CARO',0),(511,54,'VILLA DEL ROSARIO',0),(512,68,'AGUADA',0),(513,68,'ALBANIA',0),(514,68,'ARATOCA',0),(515,68,'BARBOSA',0),(516,68,'BARICHARA',0),(517,68,'BARRANCABERMEJA',0),(518,68,'BETULIA',0),(519,68,'BOLIVAR',0),(520,68,'BUCARAMANGA',0),(521,68,'CABRERA',0),(522,68,'CALIFORNIA',0),(523,68,'CAPITANEJO',0),(524,68,'CARCASI',0),(525,68,'CEPITA',0),(526,68,'CERRITO',0),(527,68,'CHARALA',0),(528,68,'CHARTA',0),(529,68,'CHIMA',0),(530,68,'CHIPATA',0),(531,68,'CIMITARRA',0),(532,68,'CONCEPCION',0),(533,68,'CONFINES',0),(534,68,'CONTRATACION',0),(535,68,'COROMORO',0),(536,68,'CURITI',0),(537,68,'EL CARMEN DE CHUCURI',0),(538,68,'EL GUACAMAYO',0),(539,68,'EL PE?ON',0),(540,68,'EL PLAYON',0),(541,68,'ENCINO',0),(542,68,'ENCISO',0),(543,68,'FLORIAN',0),(544,68,'FLORIDABLANCA',0),(545,68,'GALAN',0),(546,68,'GAMBITA',0),(547,68,'GIRON',0),(548,68,'GUACA',0),(549,68,'GUADALUPE',0),(550,68,'GUAPOTA',0),(551,68,'GUAVATA',0),(552,68,'GUEPSA',0),(553,68,'HATO',0),(554,68,'JESUS MARIA',0),(555,68,'JORDAN',0),(556,68,'LA BELLEZA',0),(557,68,'LA PAZ',0),(558,68,'LANDAZURI',0),(559,68,'LEBRIJA',0),(560,68,'LOS SANTOS',0),(561,68,'MACARAVITA',0),(562,68,'MALAGA',0),(563,68,'MATANZA',0),(564,68,'MOGOTES',0),(565,68,'MOLAGAVITA',0),(566,68,'OCAMONTE',0),(567,68,'OIBA',0),(568,68,'ONZAGA',0),(569,68,'PALMAR',0),(570,68,'PALMAS DEL SOCORRO',0),(571,68,'PARAMO',0),(572,68,'PIEDECUESTA',0),(573,68,'PINCHOTE',0),(574,68,'PUENTE NACIONAL',0),(575,68,'PUERTO PARRA',0),(576,68,'PUERTO WILCHES',0),(577,68,'RIONEGRO',0),(578,68,'SABANA DE TORRES',0),(579,68,'SAN ANDRES',0),(580,68,'SAN BENITO',0),(581,68,'SAN GIL',0),(582,68,'SAN JOAQUIN',0),(583,68,'SAN JOSE DE MIRANDA',0),(584,68,'SAN MIGUEL',0),(585,68,'SAN VICENTE DE CHUCU',0),(586,68,'SANTA BARBARA',0),(587,68,'SANTA HELENA DEL OPO',0),(588,68,'SIMACOTA',0),(589,68,'SOCORRO',0),(590,68,'SUAITA',0),(591,68,'SUCRE',0),(592,68,'SURATA',0),(593,68,'TONA',0),(594,68,'VALLE DE SAN JOSE',0),(595,68,'VELEZ',0),(596,68,'VETAS',0),(597,68,'VILLANUEVA',0),(598,68,'ZAPATOCA',0),(599,73,'ALPUJARRA',0),(600,73,'ALVARADO',0),(601,73,'AMBALEMA',0),(602,73,'ANZOATEGUI',0),(603,73,'ARMERO GUAYABAL',0),(604,73,'ATACO',0),(605,73,'CAJAMARCA',0),(606,73,'CARMEN DE APICALA',0),(607,73,'CASABIANCA',0),(608,73,'CHAPARRAL',0),(609,73,'COELLO',0),(610,73,'COYAIMA',0),(611,73,'CUNDAY',0),(612,73,'DOLORES',0),(613,73,'ESPINAL',0),(614,73,'FALAN',0),(615,73,'FLANDES',0),(616,73,'FRESNO',0),(617,73,'GUAMO',0),(618,73,'HERVEO',0),(619,73,'HONDA',0),(620,73,'IBAGUE',0),(621,73,'ICONONZO',0),(622,73,'LERIDA',0),(623,73,'LIBANO',0),(624,73,'MARIQUITA',0),(625,73,'MELGAR',0),(626,73,'MURILLO',0),(627,73,'NATAGAIMA',0),(628,73,'ORTEGA',0),(629,73,'PALOCABILDO',0),(630,73,'PIEDRAS',0),(631,73,'PLANADAS',0),(632,73,'PRADO',0),(633,73,'PURIFICACION',0),(634,73,'RIOBLANCO',0),(635,73,'RONCESVALLES',0),(636,73,'ROVIRA',0),(637,73,'SALDA?A',0),(638,73,'SAN ANTONIO',0),(639,73,'SAN LUIS',0),(640,73,'SANTA ISABEL',0),(641,73,'SUAREZ',0),(642,73,'VALLE DE SAN JUAN',0),(643,73,'VENADILLO',0),(644,73,'VILLAHERMOSA',0),(645,73,'VILLARRICA',0),(646,18,'ALBANIA',0),(647,18,'BELEN DE LOS ANDAQUI',0),(648,18,'CARTAGENA DEL CHAIRA',0),(649,18,'CURILLO',0),(650,18,'EL DONCELLO',0),(651,18,'EL PAUJIL',0),(652,18,'FLORENCIA',0),(653,18,'LA MONTA?ITA',0),(654,18,'MILAN',0),(655,18,'MORELIA',0),(656,18,'PUERTO RICO',0),(657,18,'SAN JOSE DEL FRAGUA',0),(658,18,'SAN VICENTE DEL CAGU',0),(659,18,'SOLANO',0),(660,18,'SOLITA',0),(661,18,'VALPARAISO',0),(662,86,'COLON',0),(663,86,'MOCOA',0),(664,86,'ORITO',0),(665,86,'PUERTO ASIS',0),(666,86,'PUERTO CAICEDO',0),(667,86,'PUERTO GUZMAN',0),(668,86,'PUERTO LEGUIZAMO',0),(669,86,'SAN FRANCISCO',0),(670,86,'SAN MIGUEL',0),(671,86,'SANTIAGO',0),(672,86,'SIBUNDOY',0),(673,86,'VALLE DEL GUAMUEZ',0),(674,86,'VILLAGARZON',0),(675,91,'EL ENCANTO',0),(676,91,'LA CHORRERA',0),(677,91,'LA PEDRERA',0),(678,91,'LA VICTORIA',0),(679,91,'LETICIA',0),(680,91,'MIRITI PARANA',0),(681,91,'PUERTO ALEGRIA',0),(682,91,'PUERTO ARICA',0),(683,91,'PUERTO NARI?O',0),(684,91,'PUERTO SANTANDER',0),(685,91,'TARAPACA',0),(686,05,'ABEJORRAL',0),(687,05,'ABRIAQUI',0),(688,05,'ALEJANDRIA',0),(689,05,'AMAGA',0),(690,05,'AMALFI',0),(691,05,'ANDES',0),(692,05,'ANGELOPOLIS',0),(693,05,'ANGOSTURA',0),(694,05,'ANORI',0),(695,05,'ANZA',0),(696,05,'APARTADO',0),(697,05,'ARBOLETES',0),(698,05,'ARGELIA',0),(699,05,'ARMENIA',0),(700,05,'BARBOSA',0),(701,05,'BELLO',0),(702,05,'BELMIRA',0),(703,05,'BETANIA',0),(704,05,'BETULIA',0),(705,05,'BRICE?O',0),(706,05,'BURITICA',0),(707,05,'CACERES',0),(708,05,'CAICEDO',0),(709,05,'CALDAS',0),(710,05,'CAMPAMENTO',0),(711,05,'CA?ASGORDAS',0),(712,05,'CARACOLI',0),(713,05,'CARAMANTA',0),(714,05,'CAREPA',0),(715,05,'CAROLINA',0),(716,05,'CAUCASIA',0),(717,05,'CHIGORODO',0),(718,05,'CISNEROS',0),(719,05,'CIUDAD BOLIVAR',0),(720,05,'COCORNA',0),(721,05,'CONCEPCION',0),(722,05,'CONCORDIA',0),(723,05,'COPACABANA',0),(724,05,'DABEIBA',0),(725,05,'DON MATIAS',0),(726,05,'EBEJICO',0),(727,05,'EL BAGRE',0),(728,05,'EL CARMEN DE VIBORAL',0),(729,05,'EL SANTUARIO',0),(730,05,'ENTRERRIOS',0),(731,05,'ENVIGADO',0),(732,05,'FREDONIA',0),(733,05,'FRONTINO',0),(734,05,'GIRALDO',0),(735,05,'GIRARDOTA',0),(736,05,'GOMEZ PLATA',0),(737,05,'GRANADA',0),(738,05,'GUADALUPE',0),(739,05,'GUARNE',0),(740,05,'GUATAPE',0),(741,05,'HELICONIA',0),(742,05,'HISPANIA',0),(743,05,'ITAGUI',0),(744,05,'ITUANGO',0),(745,05,'JARDIN',0),(746,05,'JERICO',0),(747,05,'LA CEJA',0),(748,05,'LA ESTRELLA',0),(749,05,'LA PINTADA',0),(750,05,'LA UNION',0),(751,05,'LIBORINA',0),(752,05,'MACEO',0),(753,05,'MARINILLA',0),(754,05,'MEDELLIN',0),(755,05,'MONTEBELLO',0),(756,05,'MURINDO',0),(757,05,'MUTATA',0),(758,05,'NARI?O',0),(759,05,'NECHI',0),(760,05,'NECOCLI',0),(761,05,'OLAYA',0),(762,05,'PE?OL',0),(763,05,'PEQUE',0),(764,05,'PUEBLORRICO',0),(765,05,'PUERTO BERRIO',0),(766,05,'PUERTO NARE',0),(767,05,'PUERTO TRIUNFO',0),(768,05,'REMEDIOS',0),(769,05,'RETIRO',0),(770,05,'RIONEGRO',0),(771,05,'SABANALARGA',0),(772,05,'SABANETA',0),(773,05,'SALGAR',0),(774,05,'SAN ANDRES DE CUERQU',0),(775,05,'SAN CARLOS',0),(776,05,'SAN FRANCISCO',0),(777,05,'SAN JERONIMO',0),(778,05,'SAN JOSE DE LA MONTA',0),(779,05,'SAN JUAN DE URABA',0),(780,05,'SAN LUIS',0),(781,05,'SAN PEDRO DE LOS MIL',0),(782,05,'SAN PEDRO DE URABA',0),(783,05,'SAN RAFAEL',0),(784,05,'SAN ROQUE',0),(785,05,'SAN VICENTE',0),(786,05,'SANTA BARBARA',0),(787,05,'SANTA FE DE ANTIOQUI',0),(788,05,'SANTA ROSA DE OSOS',0),(789,05,'SANTO DOMINGO',0),(790,05,'SEGOVIA',0),(791,05,'SONSON',0),(792,05,'SOPETRAN',0),(793,05,'TAMESIS',0),(794,05,'TARAZA',0),(795,05,'TARSO',0),(796,05,'TITIRIBI',0),(797,05,'TOLEDO',0),(798,05,'TURBO',0),(799,05,'URAMITA',0),(800,05,'URRAO',0),(801,05,'VALDIVIA',0),(802,05,'VALPARAISO',0),(803,05,'VEGACHI',0),(804,05,'VENECIA',0),(805,05,'VIGIA DEL FUERTE',0),(806,05,'YALI',0),(807,05,'YARUMAL',0),(808,05,'YOLOMBO',0),(809,05,'YONDO',0),(810,05,'ZARAGOZA',0),(811,17,'AGUADAS',0),(812,17,'ANSERMA',0),(813,17,'ARANZAZU',0),(814,17,'BELALCAZAR',0),(815,17,'CHINCHINA',0),(816,17,'FILADELFIA',0),(817,17,'LA DORADA',0),(818,17,'LA MERCED',0),(819,17,'MANIZALES',0),(820,17,'MANZANARES',0),(821,17,'MARMATO',0),(822,17,'MARQUETALIA',0),(823,17,'MARULANDA',0),(824,17,'NEIRA',0),(825,17,'NORCASIA',0),(826,17,'PACORA',0),(827,17,'PALESTINA',0),(828,17,'PENSILVANIA',0),(829,17,'RIOSUCIO',0),(830,17,'RISARALDA',0),(831,17,'SALAMINA',0),(832,17,'SAMANA',0),(833,17,'SAN JOSE DE FRAGUA',0),(834,17,'SUPIA',0),(835,17,'VICTORIA',0),(836,17,'VILLAMARIA',0),(837,17,'VITERBO',0),(838,19,'ALMAGUER',0),(839,19,'ARGELIA',0),(840,19,'BALBOA',0),(841,19,'BOLIVAR',0),(842,19,'BUENOS AIRES',0),(843,19,'CAJIBIO',0),(844,19,'CALDONO',0),(845,19,'CALOTO',0),(846,19,'CORINTO',0),(847,19,'EL TAMBO',0),(848,19,'FLORENCIA',0),(849,19,'GUAPI',0),(850,19,'INZA',0),(851,19,'JAMBALO',0),(852,19,'LA SIERRA',0),(853,19,'LA VEGA',0),(854,19,'LOPEZ DE MICAY',0),(855,19,'MERCADERES',0),(856,19,'MIRANDA',0),(857,19,'MORALES',0),(858,19,'PADILLA',0),(859,19,'PAEZ',0),(860,19,'PATIA EL BORDO',0),(861,19,'PIAMONTE',0),(862,19,'PIENDAMO',0),(863,19,'POPAYAN',0),(864,19,'PUERTO TEJADA',0),(865,19,'PURACE',0),(866,19,'ROSAS',0),(867,19,'SAN SEBASTIAN',0),(868,19,'SANTA ROSA',0),(869,19,'SANTANDER DE QUILICH',0),(870,19,'SILVIA',0),(871,19,'SOTARA',0),(872,19,'SUAREZ',0),(873,19,'SUCRE',0),(874,19,'TIMBIO',0),(875,19,'TIMBIQUI',0),(876,19,'TORIBIO',0),(877,19,'TOTORO',0),(878,19,'VILLA RICA',0),(879,27,'ACANDI',0),(880,27,'ALTO BAUDO PIE DE PA',0),(881,27,'ATRATO',0),(882,27,'BAGADO',0),(883,27,'BAHIA SOLANO MUTIS',0),(884,27,'BAJO BAUDO PIZARRO',0),(885,27,'BELEN DE BAJIRA',0),(886,27,'BOJAYA BELLAVISTA',0),(887,27,'CARMEN DEL DARIEN',0),(888,27,'CERTEGUI',0),(889,27,'CONDOTO',0),(890,27,'EL CANTON DE SAN PAB',0),(891,27,'EL CARMEN DE ATRATO',0),(892,27,'EL LITORAL DE SAN JU',0),(893,27,'ISTMINA',0),(894,27,'JURADO',0),(895,27,'LLORO',0),(896,27,'MEDIO ATRATO',0),(897,27,'MEDIO BAUDO BOCA DE ',0),(898,27,'MEDIO SAN JUAN',0),(899,27,'NOVITA',0),(900,27,'NUQUI',0),(901,27,'QUIBDO',0),(902,27,'RIO IRO',0),(903,27,'RIO QUITO',0),(904,27,'RIOSUCIO',0),(905,27,'SAN JOSE DEL PALMAR',0),(906,27,'SIPI',0),(907,27,'TADO',0),(908,27,'UNGUIA',0),(909,27,'UNION PANAMERICANA',0),(910,52,'ALBAN',0),(911,52,'ALDANA',0),(912,52,'ANCUYA',0),(913,52,'ARBOLEDA',0),(914,52,'BARBACOAS',0),(915,52,'BELEN',0),(916,52,'BUESACO',0),(917,52,'CHACHAGUI',0),(918,52,'COLON GENOVA',0),(919,52,'CONSACA',0),(920,52,'CONTADERO',0),(921,52,'CORDOBA',0),(922,52,'CUASPUD',0),(923,52,'CUMBAL',0),(924,52,'CUMBITARA',0),(925,52,'EL CHARCO',0),(926,52,'EL PE?OL',0),(927,52,'EL ROSARIO',0),(928,52,'EL TABLON DE GOMEZ',0),(929,52,'EL TAMBO',0),(930,52,'FRANCISCO PIZARRO',0),(931,52,'FUNES',0),(932,52,'GUACHUCAL',0),(933,52,'GUALMATAN',0),(934,52,'ILES',0),(935,52,'IMUES',0),(936,52,'IPIALES',0),(937,52,'LA CRUZ',0),(938,52,'LA FLORIDA',0),(939,52,'LA LLANADA',0),(940,52,'LA TOLA',0),(941,52,'LA UNION',0),(942,52,'LEIVA',0),(943,52,'LINARES',0),(944,52,'LOS ANDES',0),(945,52,'MAGUI',0),(946,52,'MALLAMA',0),(947,52,'MOSQUERA',0),(948,52,'OLAYA HERRERA',0),(949,52,'OSPINA',0),(950,52,'PASTO',0),(951,52,'POLICARPA',0),(952,52,'POTOSI',0),(953,52,'PROVIDENCIA',0),(954,52,'PUERRES',0),(955,52,'PUPIALES',0),(956,52,'RICAURTE',0),(957,52,'ROBERTO PAYAN',0),(958,52,'SAMANIEGO',0),(959,52,'SAN BERNARDO',0),(960,52,'SAN LORENZO',0),(961,52,'SAN PABLO',0),(962,52,'SAN PEDRO DE CARTAGO',0),(963,52,'SANDONA',0),(964,52,'SANTA BARBARA',0),(965,52,'SANTACRUZ',0),(966,52,'SAPUYES',0),(967,52,'TAMINANGO',0),(968,52,'TANGUA',0),(969,52,'TUMACO',0),(970,52,'TUQUERRES',0),(971,52,'YACUANQUER',0),(972,63,'ARMENIA',0),(973,63,'BUENAVISTA',0),(974,63,'CALARCA',0),(975,63,'CIRCASIA',0),(976,63,'CORDOBA',0),(977,63,'FILANDIA',0),(978,63,'GENOVA',0),(979,63,'LA TEBAIDA',0),(980,63,'MONTENEGRO',0),(981,63,'PIJAO',0),(982,63,'QUIMBAYA',0),(983,63,'SALENTO',0),(984,66,'APIA',0),(985,66,'BALBOA',0),(986,66,'BELEN DE UMBRIA',0),(987,66,'DOS QUEBRADAS',0),(988,66,'GUATICA',0),(989,66,'LA CELIA',0),(990,66,'LA VIRGINIA',0),(991,66,'MARSELLA',0),(992,66,'MISTRATO',0),(993,66,'PEREIRA',0),(994,66,'PUEBLO RICO',0),(995,66,'QUINCHIA',0),(996,66,'SANTA ROSA DE CABAL',0),(997,66,'SANTUARIO',0),(998,76,'ALCALA',0),(999,76,'ANDALUCIA',0),(1000,76,'ANSERMANUEVO',0),(1001,76,'ARGELIA',0),(1002,76,'BOLIVAR',0),(1003,76,'BUENAVENTURA',0),(1004,76,'BUGA',0),(1005,76,'BUGALAGRANDE',0),(1006,76,'CAICEDONIA',0),(1007,76,'CALI',0),(1008,76,'CANDELARIA',0),(1009,76,'CARTAGO',0),(1010,76,'DAGUA',0),(1011,76,'EL AGUILA',0),(1012,76,'EL CAIRO',0),(1013,76,'EL CERRITO',0),(1014,76,'EL DOVIO',0),(1015,76,'FLORIDA',0),(1016,76,'GINEBRA',0),(1017,76,'GUACARI',0),(1018,76,'JAMUNDI',0),(1019,76,'LA CUMBRE',0),(1020,76,'LA UNION',0),(1021,76,'LA VICTORIA',0),(1022,76,'OBANDO',0),(1023,76,'PALMIRA',0),(1024,76,'PRADERA',0),(1025,76,'RESTREPO',0),(1026,76,'RIOFRIO',0),(1027,76,'ROLDANILLO',0),(1028,76,'SAN PEDRO',0),(1029,76,'SEVILLA',0),(1030,76,'TORO',0),(1031,76,'TRUJILLO',0),(1032,76,'TULUA',0),(1033,76,'ULLOA',0),(1034,76,'VERSALLES',0),(1035,76,'VIJES',0),(1036,76,'YOTOCO',0),(1037,76,'YUMBO',0),(1038,76,'ZARZAL',0),(1039,50,'ACACIAS',0),(1040,50,'BARRANCA DE UPIA',0),(1041,50,'CABUYARO',0),(1042,50,'CASTILLA LA NUEVA',0),(1043,50,'CUBARRAL',0),(1044,50,'CUMARAL',0),(1045,50,'EL CALVARIO',0),(1046,50,'EL CASTILLO',0),(1047,50,'EL DORADO',0),(1048,50,'FUENTE DE ORO',0),(1049,50,'GRANADA',0),(1050,50,'GUAMAL',0),(1051,50,'LA MACARENA',0),(1052,50,'LA URIBE',0),(1053,50,'LEJANIAS',0),(1054,50,'MAPIRIPAN',0),(1055,50,'MESETAS',0),(1056,50,'PUERTO CONCORDIA',0),(1057,50,'PUERTO GAITAN',0),(1058,50,'PUERTO LLERAS',0),(1059,50,'PUERTO LOPEZ',0),(1060,50,'PUERTO RICO',0),(1061,50,'RESTREPO',0),(1062,50,'SAN CARLOS DE GUAROA',0),(1063,50,'SAN JUAN DE ARAMA',0),(1064,50,'SAN JUANITO',0),(1065,50,'SAN MARTIN',0),(1066,50,'VILLAVICENCIO',0),(1067,50,'VISTAHERMOSA',0),(1068,81,'ARAUCA',0),(1069,81,'ARAUQUITA',0),(1070,81,'CRAVO NORTE',0),(1071,81,'FORTUL',0),(1072,81,'PUERTO RONDON',0),(1073,81,'SARAVENA',0),(1074,81,'TAME',0),(1075,85,'AGUAZUL',0),(1076,85,'CHAMEZA',0),(1077,85,'HATO COROZAL',0),(1078,85,'LA SALINA',0),(1079,85,'MANI',0),(1080,85,'MONTERREY',0),(1081,85,'NUNCHIA',0),(1082,85,'OROCUE',0),(1083,85,'PAZ DE ARIPORO',0),(1084,85,'PORE',0),(1085,85,'RECETOR',0),(1086,85,'SABANALARGA',0),(1087,85,'SACAMA',0),(1088,85,'SAN LUIS DE PALENQUE',0),(1089,85,'TAMARA',0),(1090,85,'TAURAMENA',0),(1091,85,'TRINIDAD',0),(1092,85,'VILLANUEVA',0),(1093,85,'YOPAL',0),(1094,94,'BARRANCO MINAS',0),(1095,94,'CACAHUAL',0),(1096,94,'LA GUADALUPE',0),(1097,94,'MAPIRIPANA',0),(1098,94,'MORICHAL',0),(1099,94,'PANA PANA',0),(1100,94,'PUERTO COLOMBIA',0),(1101,94,'PUERTO INIRIDA',0),(1102,94,'SAN FELIPE',0),(1103,95,'CALAMAR',0),(1104,95,'EL RETORNO',0),(1105,95,'MIRAFLORES',0),(1106,95,'SAN JOSE DEL GUAVIAR',0),(1107,97,'CARURU',0),(1108,97,'MITU',0),(1109,97,'PACOA',0),(1110,97,'PAPUNAUA',0),(1111,97,'TARAIRA',0),(1112,97,'YAVARATE',0),(1113,99,'CUMARIBO',0),(1114,99,'LA PRIMAVERA',0),(1115,99,'PUERTO CARRENO',0),(1116,99,'SANTA ROSALIA',0),(1117,23,'sss',1);
/*!40000 ALTER TABLE `municipios` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `notas_credito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notas_credito` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tipo_documento_id` int(11) unsigned NOT NULL,
  `empresa_id` int(11) NOT NULL,
  `prefijo` varchar(5) NOT NULL DEFAULT '',
  `consecutivo` int(11) unsigned NOT NULL,
  `clientes_id` int(11) NOT NULL,
  `creditos_id` int(11) unsigned NOT NULL,
  `fecha` date NOT NULL,
  `fecha_act` datetime NOT NULL,
  `hora` time NOT NULL,
  `hora_act` time NOT NULL,
  `activo` int(1) NOT NULL DEFAULT '0',
  `anulado` tinyint(1) NOT NULL DEFAULT '0',
  `observaciones` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `numero_nota_credito` (`prefijo`,`consecutivo`),
  KEY `tipo_documento_id` (`tipo_documento_id`),
  CONSTRAINT `entradas_tipo_documentos` FOREIGN KEY (`tipo_documento_id`) REFERENCES `tipo_documento` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='TABLA DE NOTAS CREDITO REDUCEN CARTERA CLIENTES';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `notas_credito` WRITE;
/*!40000 ALTER TABLE `notas_credito` DISABLE KEYS */;
/*!40000 ALTER TABLE `notas_credito` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `notas_debito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notas_debito` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `prefijo` varchar(5) NOT NULL DEFAULT '',
  `consecutivo` int(11) unsigned NOT NULL,
  `tipo_documento_id` int(11) unsigned NOT NULL,
  `empresa_id` int(11) NOT NULL,
  `clientes_id` int(11) NOT NULL,
  `creditos_id` int(11) unsigned NOT NULL,
  `fecha` date NOT NULL,
  `fecha_act` datetime NOT NULL,
  `hora` time NOT NULL,
  `hora_act` time NOT NULL,
  `observaciones` varchar(100) DEFAULT NULL,
  `anulado` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `numero_notas_credito` (`prefijo`,`consecutivo`),
  KEY `tipo_documento_id` (`tipo_documento_id`),
  KEY `clientes_id` (`clientes_id`),
  KEY `creditos_id` (`creditos_id`),
  KEY `empresa_id` (`empresa_id`),
  CONSTRAINT `notas_debito_ibfk_1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`id`),
  CONSTRAINT `notas_debito_ibfk_2` FOREIGN KEY (`creditos_id`) REFERENCES `creditos` (`id`),
  CONSTRAINT `notas_debito_ibfk_3` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`),
  CONSTRAINT `salidas_especiales_tipo_documento` FOREIGN KEY (`tipo_documento_id`) REFERENCES `tipo_documento` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='TABLA DE NOTAS DEBITO AUMENTAN CARTERA A CREDITOS';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `notas_debito` WRITE;
/*!40000 ALTER TABLE `notas_debito` DISABLE KEYS */;
/*!40000 ALTER TABLE `notas_debito` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `permitir_creditos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permitir_creditos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nit` varchar(20) NOT NULL,
  `estado` varchar(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `permitir_creditos` WRITE;
/*!40000 ALTER TABLE `permitir_creditos` DISABLE KEYS */;
INSERT INTO `permitir_creditos` VALUES (1,'1034562345','0');
/*!40000 ALTER TABLE `permitir_creditos` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `posiciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posiciones` (
  `posicion` varchar(50) NOT NULL,
  PRIMARY KEY (`posicion`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `posiciones` WRITE;
/*!40000 ALTER TABLE `posiciones` DISABLE KEYS */;
INSERT INTO `posiciones` VALUES ('aplicaciones'),('left'),('navegacion');
/*!40000 ALTER TABLE `posiciones` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nit` varchar(12) NOT NULL DEFAULT '',
  `nombre1` varchar(20) DEFAULT NULL,
  `nombre2` varchar(20) DEFAULT NULL,
  `apellido1` varchar(20) DEFAULT NULL,
  `apellido2` varchar(20) DEFAULT NULL,
  `razon_social` varchar(250) NOT NULL DEFAULT '',
  `direccion_casa` varchar(100) DEFAULT NULL,
  `direccion_oficina` varchar(100) DEFAULT NULL,
  `telefono1` varchar(15) NOT NULL DEFAULT '',
  `telefono2` varchar(15) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `municipios_id` int(3) unsigned NOT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  `correo` varchar(150) DEFAULT NULL,
  `web` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nit` (`nit`),
  KEY `activo` (`activo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=5461 COMMENT='TABLA DE PROVEEDORES';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `recibos_caja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recibos_caja` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `prefijo` varchar(5) NOT NULL DEFAULT '',
  `consecutivo` int(11) unsigned NOT NULL,
  `clientes_id` int(11) NOT NULL,
  `tipo_documento_id` int(11) unsigned NOT NULL,
  `creditos_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `fecha_act` datetime NOT NULL,
  `hora_act` time NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '0',
  `anulado` tinyint(1) NOT NULL DEFAULT '0',
  `observaciones` varchar(100) DEFAULT '',
  `cheque` varchar(30) DEFAULT '',
  `banco` varchar(50) DEFAULT '',
  `empresa_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `numero_recibos_caja` (`prefijo`,`consecutivo`),
  KEY `clientes_id` (`clientes_id`),
  KEY `tipo_documento_id` (`tipo_documento_id`),
  KEY `empresa_id` (`empresa_id`),
  CONSTRAINT `recibos_caja_fk_clientes` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`id`),
  CONSTRAINT `recibos_caja_fk_empresa` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`),
  CONSTRAINT `recibos_caja_fk_tipo_documento` FOREIGN KEY (`tipo_documento_id`) REFERENCES `tipo_documento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COMMENT='TABLA DE RECIBOS DE CAJA';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `recibos_caja` WRITE;
/*!40000 ALTER TABLE `recibos_caja` DISABLE KEYS */;
INSERT INTO `recibos_caja` VALUES (5,'REC',3,2,6,0,'2013-10-17','2013-10-17 15:15:50','15:15:50',0,0,'',NULL,NULL,3),(6,'REC',4,2,6,0,'2013-10-17','2013-10-17 15:23:47','15:23:47',0,0,NULL,NULL,NULL,3),(7,'REC',5,2,6,0,'2013-10-17','2013-10-17 15:34:49','15:34:49',0,0,NULL,NULL,NULL,3);
/*!40000 ALTER TABLE `recibos_caja` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `regimen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regimen` (
  `id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AVG_ROW_LENGTH=8192 COMMENT='TIPOS DE REGIMEN';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `regimen` WRITE;
/*!40000 ALTER TABLE `regimen` DISABLE KEYS */;
INSERT INTO `regimen` VALUES (1,'SIMPLIFICADO'),(2,'COMUN');
/*!40000 ALTER TABLE `regimen` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (2,'administrador'),(3,'cajero');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `secciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secciones` (
  `seccion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `secciones` WRITE;
/*!40000 ALTER TABLE `secciones` DISABLE KEYS */;
INSERT INTO `secciones` VALUES ('Tablas del Sistemas'),('Terceros'),('Creditos'),('Administracion de Usuarios');
/*!40000 ALTER TABLE `secciones` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `solicitud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solicitud` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empresa_id` int(11) NOT NULL,
  `tipo_documento_id` int(11) unsigned NOT NULL,
  `prefijo` varchar(5) NOT NULL,
  `consecutivo` int(10) unsigned zerofill NOT NULL,
  `clientes_id` int(11) NOT NULL,
  `deudores_id` int(11) NOT NULL,
  `deudores2_id` int(11) NOT NULL,
  `deudores3_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `observacion` varchar(200) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `fecha_registro` datetime NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `estado_solicitud_id` int(11) NOT NULL,
  `numero_cuotas` int(11) DEFAULT '0',
  `valor_cuota` double(15,2) DEFAULT '0.00',
  `total_credito` double(15,2) DEFAULT '0.00',
  `anulado` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `admin_id` (`admin_id`),
  KEY `empresa_id` (`empresa_id`),
  KEY `tipo_documento_id` (`tipo_documento_id`),
  KEY `clientes_id` (`clientes_id`),
  KEY `estado_solicitud_id` (`estado_solicitud_id`),
  CONSTRAINT `solicitud_fk` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`),
  CONSTRAINT `solicitud_fk1` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`),
  CONSTRAINT `solicitud_fk2` FOREIGN KEY (`tipo_documento_id`) REFERENCES `tipo_documento` (`id`),
  CONSTRAINT `solicitud_fk3` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`id`),
  CONSTRAINT `solicitud_fk4` FOREIGN KEY (`estado_solicitud_id`) REFERENCES `estado_solicitud` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `solicitud` WRITE;
/*!40000 ALTER TABLE `solicitud` DISABLE KEYS */;
INSERT INTO `solicitud` VALUES (1,3,9,'SOL',0000000010,2,1,3,4,'2013-10-15','Solicitud de crÃƒÂ©dito de prueba','201.234.241.75','2013-10-16 10:56:37',1,1,10,500000.00,5000000.00,0),(2,3,9,'SOL',0000000011,4,3,1,2,'2013-10-16','SOLICITUD DE PRUEBA','201.234.241.75','2013-10-16 11:00:47',1,1,10,150000.00,1500000.00,0),(3,3,9,'SOL',0000000012,4,3,1,2,'2013-11-17','Solicitud de prueba','186.81.249.245','2013-11-17 14:35:38',1,-1,10,450000.00,4500000.00,0);
/*!40000 ALTER TABLE `solicitud` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `solicitud_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solicitud_detalle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `solicitud_id` int(11) NOT NULL,
  `deudores_id` int(11) DEFAULT NULL,
  `anulado` int(11) NOT NULL DEFAULT '0',
  `admin_id` int(11) unsigned NOT NULL,
  `fecha_registro` datetime DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `undeudorporsolicitud` (`solicitud_id`,`deudores_id`),
  KEY `deudores_id` (`deudores_id`),
  KEY `solicitud_id` (`solicitud_id`),
  CONSTRAINT `solicitud_detalle_fk` FOREIGN KEY (`deudores_id`) REFERENCES `deudores` (`id`),
  CONSTRAINT `solicitud_detalle_fk1` FOREIGN KEY (`solicitud_id`) REFERENCES `solicitud` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `solicitud_detalle` WRITE;
/*!40000 ALTER TABLE `solicitud_detalle` DISABLE KEYS */;
INSERT INTO `solicitud_detalle` VALUES (22,9,2,0,1,'2013-10-06 12:21:35','127.0.0.1'),(23,9,1,1,1,'2013-10-06 12:21:35','127.0.0.1'),(27,11,1,0,1,'2013-10-06 12:32:24','127.0.0.1'),(28,11,2,1,1,'2013-10-06 12:32:24','127.0.0.1'),(33,16,2,0,1,'2013-10-06 12:40:22','127.0.0.1'),(34,16,1,1,1,'2013-10-06 12:40:22','127.0.0.1');
/*!40000 ALTER TABLE `solicitud_detalle` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `somhue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `somhue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nit` int(11) NOT NULL,
  `huella` blob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `somhue` WRITE;
/*!40000 ALTER TABLE `somhue` DISABLE KEYS */;
/*!40000 ALTER TABLE `somhue` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tarifa_iva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarifa_iva` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tarifa_iva` varchar(20) DEFAULT NULL,
  `valor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=16384;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tarifa_iva` WRITE;
/*!40000 ALTER TABLE `tarifa_iva` DISABLE KEYS */;
INSERT INTO `tarifa_iva` VALUES (1,'EXCLUIDOS DE IVA',0),(2,'IVA DEL 16 %',16);
/*!40000 ALTER TABLE `tarifa_iva` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tipo_cuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_cuenta` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=8192 COMMENT='TABLA TIPO DE CUENTA BANCARIA';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tipo_cuenta` WRITE;
/*!40000 ALTER TABLE `tipo_cuenta` DISABLE KEYS */;
INSERT INTO `tipo_cuenta` VALUES (1,'CORRIENTE'),(2,'AHORRO');
/*!40000 ALTER TABLE `tipo_cuenta` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tipo_documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_documento` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL DEFAULT '',
  `empresa_id` int(11) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `ancho` varchar(5) DEFAULT NULL,
  `alto` varchar(5) DEFAULT NULL,
  `mostrar_logo` tinyint(1) DEFAULT '0',
  `size` varchar(2) DEFAULT NULL,
  `font` varchar(20) DEFAULT NULL,
  `tipo_letra` varchar(20) DEFAULT NULL,
  `papel` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `documento` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=16384 COMMENT='TABLA TIPO DOCUMENTO';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tipo_documento` WRITE;
/*!40000 ALTER TABLE `tipo_documento` DISABLE KEYS */;
INSERT INTO `tipo_documento` VALUES (1,'COMPRAS',3,NULL,'20','20',0,'7','Arial',NULL,'media_letter'),(2,'ENTRADAS_ESPECIALES',3,NULL,'20','20',0,'7','Arial',NULL,'media_letter'),(3,'PEDIDO_CLIENTES',3,NULL,'20','20',0,'7','Arial',NULL,'media_letter'),(4,'EGRESOS',3,NULL,'20','20',0,'7','Arial',NULL,'media_letter'),(5,'SALIDAS_ESPECIALES',3,NULL,'20','20',0,'7','Arial',NULL,'media_letter'),(6,'RECIBOS_CAJA',3,NULL,'20','20',0,'7','Arial',NULL,'media_letter'),(7,'CUADRE_CAJA',3,NULL,'20','20',0,'7','Arial',NULL,'media_letter'),(8,'TRASLADOS',3,NULL,'20','20',0,'7','Arial',NULL,'media_letter'),(9,'SOLICITUD',3,NULL,'20','20',0,'7','Arial',NULL,'media_letter'),(10,'CREDITOS',3,NULL,'0','0',0,'12','ARIAL',NULL,'CARTA');
/*!40000 ALTER TABLE `tipo_documento` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `traslados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `traslados` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tipo_documento_id` int(11) unsigned NOT NULL,
  `prefijo` varchar(5) NOT NULL DEFAULT '',
  `consecutivo` int(11) unsigned NOT NULL,
  `empresa_id` int(11) NOT NULL,
  `desde_bodegas_id` int(11) NOT NULL,
  `hasta_bodegas_id` int(11) DEFAULT NULL,
  `fecha` date NOT NULL,
  `fecha_act` datetime NOT NULL,
  `hora` time NOT NULL,
  `hora_act` time NOT NULL,
  `anulado` tinyint(1) NOT NULL DEFAULT '0',
  `observaciones` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `numero_traslados` (`prefijo`,`consecutivo`),
  KEY `empresa_id` (`empresa_id`),
  KEY `tipo_documento_id` (`tipo_documento_id`),
  KEY `desde_bodegas_id` (`desde_bodegas_id`),
  KEY `hasta_bodegas_id` (`hasta_bodegas_id`),
  CONSTRAINT `traaslados_tipo_documentos` FOREIGN KEY (`tipo_documento_id`) REFERENCES `tipo_documento` (`id`),
  CONSTRAINT `traslados_bodega_desde` FOREIGN KEY (`desde_bodegas_id`) REFERENCES `bodegas` (`id`),
  CONSTRAINT `traslados_empresas` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`),
  CONSTRAINT `traslados_ibfk_1` FOREIGN KEY (`hasta_bodegas_id`) REFERENCES `bodegas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='TABLA DE ENTRADAS ESPECIALES';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `traslados` WRITE;
/*!40000 ALTER TABLE `traslados` DISABLE KEYS */;
/*!40000 ALTER TABLE `traslados` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `turnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turnos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empleado_id` int(11) NOT NULL,
  `inicio` datetime NOT NULL,
  `fin` datetime NOT NULL,
  `anulado` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `turnos` WRITE;
/*!40000 ALTER TABLE `turnos` DISABLE KEYS */;
/*!40000 ALTER TABLE `turnos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

