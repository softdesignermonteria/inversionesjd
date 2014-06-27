
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
  `cobradores_id` int(11) NOT NULL,
  `role` varchar(30) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `plantilla` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `empleado_id` (`cobradores_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AVG_ROW_LENGTH=16384 ROW_FORMAT=DYNAMIC COMMENT='TABLA DE ADMIN';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','21232f297a57a5a743894a0e4a801fc3','CARLOS  PICO ',1,1,'administrador','adminiziolite'),(2,'egulfo','81dc9bdb52d04dc20036dbd8313ed055','ERWIN MIGUEL GULFO VEGA',1,4,'administrador','adminiziolite');
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `bodegas` WRITE;
/*!40000 ALTER TABLE `bodegas` DISABLE KEYS */;
INSERT INTO `bodegas` VALUES (1,'PRINCIPAL');
/*!40000 ALTER TABLE `bodegas` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nit` varchar(20) NOT NULL DEFAULT '',
  `nombre1` varchar(20) NOT NULL,
  `nombre2` varchar(20) DEFAULT NULL,
  `apellido1` varchar(20) NOT NULL,
  `apellido2` varchar(20) DEFAULT '',
  `razon_social` varchar(250) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` varchar(15) DEFAULT '0000000',
  `celular` varchar(15) NOT NULL,
  `referencia_id` varchar(3) NOT NULL,
  `departamentos_id` int(3) DEFAULT '23',
  `municipios_id` int(3) unsigned DEFAULT '108',
  PRIMARY KEY (`id`),
  UNIQUE KEY `nit` (`nit`),
  KEY `municipios_id` (`municipios_id`),
  CONSTRAINT `clientes_fk` FOREIGN KEY (`municipios_id`) REFERENCES `municipios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=5461 COMMENT='TABLA CLIENTES';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (7,'123','anomino','anomino','','','anonimo','balnco','0000000','0','0',23,108),(8,'26176000','ALVARO',NULL,'HERNANDEZ',NULL,'ALVARO HERNANDEZ  ','GRANJA','0000','0000','7',23,108);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `cobradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cobradores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nit` varchar(20) NOT NULL DEFAULT '',
  `nombre1` varchar(20) NOT NULL,
  `nombre2` varchar(20) DEFAULT '',
  `apellido1` varchar(20) NOT NULL,
  `apellido2` varchar(20) DEFAULT '',
  `razon_social` varchar(250) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` varchar(15) DEFAULT '0000000',
  `celular` varchar(15) NOT NULL,
  `departamentos_id` int(3) NOT NULL,
  `municipios_id` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nit` (`nit`),
  KEY `municipios_id` (`municipios_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=5461 COMMENT='TABLA CLIENTES';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cobradores` WRITE;
/*!40000 ALTER TABLE `cobradores` DISABLE KEYS */;
INSERT INTO `cobradores` VALUES (1,'1234567','CARLOS',NULL,'PICO',NULL,'CARLOS PICO  ','PRADERA','0000','3015973878',23,108);
/*!40000 ALTER TABLE `cobradores` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `creditos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creditos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `empresa_id` int(11) NOT NULL,
  `clientes_id` int(11) NOT NULL,
  `cobradores_id` int(11) DEFAULT NULL,
  `tipo_documento_id` int(11) unsigned NOT NULL,
  `prefijo` varchar(5) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `consecutivo` int(11) unsigned NOT NULL,
  `fecha_act` datetime NOT NULL,
  `fecha` date NOT NULL,
  `anulado` tinyint(1) DEFAULT '0' COMMENT 'estado de la fact. si es activa o anulada',
  `observaciones` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_cuota` date NOT NULL,
  `capital` double(15,2) NOT NULL DEFAULT '0.00',
  `cuotas` int(11) unsigned DEFAULT '0',
  `valor_cuotas` double(15,2) unsigned DEFAULT '0.00',
  `total_credito` double(15,2) unsigned NOT NULL,
  `porcentaje` float(12,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `numero_credito` (`prefijo`,`consecutivo`),
  KEY `tipo_documento_id` (`tipo_documento_id`),
  KEY `empresa_id` (`empresa_id`),
  CONSTRAINT `creditos_fk_empresa` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`),
  CONSTRAINT `creditos_fk_tipo_documento` FOREIGN KEY (`tipo_documento_id`) REFERENCES `tipo_documento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='TABLA DE FACTURA';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `creditos` WRITE;
/*!40000 ALTER TABLE `creditos` DISABLE KEYS */;
INSERT INTO `creditos` VALUES (29,3,8,1,10,'CRE',1,'2014-06-17 19:43:59','2014-06-16',0,'ninguna','2014-06-16',500000.00,60,10000.00,600000.00,20.00);
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
INSERT INTO `cuadro_dialogo` VALUES (2,'mensajes','Mensajes del Sistema','300','300','mensajes','','','','','','','',''),(3,'departamentos','Departamentos','400','500','departamentos','departamentos','departamento','departamentos_id','','','','',''),(4,'municipios','Municipios','400','500','municipios','municipios','municipio','municipios_id','','','departamentos_id','','Escoja un departamento'),(5,'clientes','Clientes','600','400','clientes','clientes','razon_social','clientes_id','','','','','NINGUNO'),(6,'deudores','Deudores','600','400','deudores','deudores','deudores','deudores_id','','','','','NINGUNO'),(7,'deudores2','Deudores2','600','400','deudores2','deudores','deudores2','deudores2_id','','','','','NINGUNO'),(8,'deudores3','Deudores3','600','400','deudores3','deudores','deudores3','deudores3_id','','','','','NINGUNO'),(9,'cobradores','cobradores','600','600','cobradores','cobradores','cobradores','cobradores_id',NULL,NULL,'clientes_id',' ','Escoja Un Cliente Primero'),(10,'camara','camara','700','500','camara','','','','1','1','1','1',NULL),(11,'imagen','Escoja una Imagen','400','400','imagen','','','','','','','',''),(12,'detalle_cxc','Detalle cxc','600','600','detalle_cxc','detalle_cxc','detalle_cxc','detalle_cxc_id','','','clientes_id','clientes_id','Ojo escoja un cliente'),(13,'creditos','creditos','600','600','creditos','creditos','creditos','creditos_id','','','clientes_id','clientes_id','Ojo Escoja un Cliente'),(14,'empledo','Empleado','600','600','empleado','empleado','empleado','empleado_id','0','0','','',''),(15,'huella','huella','620','500','huellas','huellas','','','','','','',''),(16,'centro_produccion','Centro Produccion','600','600','centro_produccion','centro_produccion','centro_produccion','centro_produccion_id','','','','','');
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
  `capital` double(15,2) NOT NULL DEFAULT '0.00' COMMENT 'capital adeudado',
  `capital_pagado` double(15,2) NOT NULL DEFAULT '0.00',
  `valor_total` double(15,2) NOT NULL DEFAULT '0.00',
  `pagado` double(15,2) DEFAULT '0.00',
  `anulado` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tipo_documento_id` (`tipo_documento_id`),
  KEY `creditos_id` (`creditos_id`),
  CONSTRAINT `cxc_fk_creditos` FOREIGN KEY (`creditos_id`) REFERENCES `creditos` (`id`),
  CONSTRAINT `cxc_fk_tipo_documento` FOREIGN KEY (`tipo_documento_id`) REFERENCES `tipo_documento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='TABLA DE ESTADO CUENTA CLIENTE';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cxc` WRITE;
/*!40000 ALTER TABLE `cxc` DISABLE KEYS */;
INSERT INTO `cxc` VALUES (1,29,'CRE',00000000001,10,'2014-06-16',499999.80,-74999.97,600000.00,-90000.00,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AVG_ROW_LENGTH=16384 COMMENT='DETALLE DE TODOS LOS CONSECUTIVOS';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `detalle_consecutivos` WRITE;
/*!40000 ALTER TABLE `detalle_consecutivos` DISABLE KEYS */;
INSERT INTO `detalle_consecutivos` VALUES (1,'COMPRA',1,2147483647,NULL,'2012-10-11',0,1,3,'COMPRAS DE MERCANCIAS'),(2,'ENT',1,2147483647,NULL,'2012-10-21',0,2,3,'ENTRADAS ESPECIALES'),(3,'PED',1,2147483647,NULL,'2012-10-24',0,3,3,'PEIDOS DE CLIENTES'),(4,'EG',1,2147483647,NULL,'2012-11-07',0,4,3,'EGRESOS'),(5,'SAL',1,2147483647,NULL,'2012-11-13',0,5,3,'CONSECUTIVOS SALIDAS ESPECIALES'),(6,'REC',2,2147483647,NULL,'2012-11-18',0,6,3,'CONSECUTIVOS RECIBOS DE CAJA'),(7,'CCAJA',1,2147483647,NULL,'2012-11-30',0,7,3,'CONSECUTIVOS CUADRE DE CAJA'),(8,'TR',1,2147483647,NULL,'2013-01-27',0,8,3,'CONSECUTIVO DE TRASLADOS DE BODEGA'),(9,'SOL',1,2147483647,NULL,'2013-09-22',0,9,3,'CONSECUTIVOS DE NUEVAS SOLICITUDES'),(10,'CRE',2,2147483647,NULL,'2013-01-01',0,10,3,'CONSECUTIVOS CREDITOS'),(11,'NC',1,2147483647,NULL,'2014-04-01',0,11,3,'CONSECUTIVO NOTAS CREDITO'),(13,'ND',1,2147483647,NULL,'2014-04-01',0,12,3,'CONSECUTIVOS NOTAS DEBITO');
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='TABLA DETALLE FACTURA';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `detalle_creditos` WRITE;
/*!40000 ALTER TABLE `detalle_creditos` DISABLE KEYS */;
INSERT INTO `detalle_creditos` VALUES (1,29,'1',10000.00,'2014-06-17',1,0,0.00,0.00,0.00),(2,29,'2',10000.00,'2014-06-18',1,0,0.00,0.00,0.00),(3,29,'3',10000.00,'2014-06-19',1,0,0.00,0.00,0.00),(4,29,'4',10000.00,'2014-06-20',1,0,0.00,0.00,0.00),(5,29,'5',10000.00,'2014-06-21',1,0,0.00,0.00,0.00),(6,29,'6',10000.00,'2014-06-22',1,0,0.00,0.00,0.00),(7,29,'7',10000.00,'2014-06-23',1,0,0.00,0.00,0.00),(8,29,'8',10000.00,'2014-06-24',1,0,0.00,0.00,0.00),(9,29,'9',10000.00,'2014-06-25',1,0,0.00,0.00,0.00),(10,29,'10',10000.00,'2014-06-26',1,0,0.00,0.00,0.00),(11,29,'11',10000.00,'2014-06-27',1,0,0.00,0.00,0.00),(12,29,'12',10000.00,'2014-06-28',1,0,0.00,0.00,0.00),(13,29,'13',10000.00,'2014-06-29',1,0,0.00,0.00,0.00),(14,29,'14',10000.00,'2014-06-30',1,0,0.00,0.00,0.00),(15,29,'15',10000.00,'2014-07-01',1,0,0.00,0.00,0.00),(16,29,'16',10000.00,'2014-07-02',1,0,0.00,0.00,0.00),(17,29,'17',10000.00,'2014-07-03',1,0,0.00,0.00,0.00),(18,29,'18',10000.00,'2014-07-04',1,0,0.00,0.00,0.00),(19,29,'19',10000.00,'2014-07-05',1,0,0.00,0.00,0.00),(20,29,'20',10000.00,'2014-07-06',1,0,0.00,0.00,0.00),(21,29,'21',10000.00,'2014-07-07',1,0,0.00,0.00,0.00),(22,29,'22',10000.00,'2014-07-08',1,0,0.00,0.00,0.00),(23,29,'23',10000.00,'2014-07-09',1,0,0.00,0.00,0.00),(24,29,'24',10000.00,'2014-07-10',1,0,0.00,0.00,0.00),(25,29,'25',10000.00,'2014-07-11',1,0,0.00,0.00,0.00),(26,29,'26',10000.00,'2014-07-12',1,0,0.00,0.00,0.00),(27,29,'27',10000.00,'2014-07-13',1,0,0.00,0.00,0.00),(28,29,'28',10000.00,'2014-07-14',1,0,0.00,0.00,0.00),(29,29,'29',10000.00,'2014-07-15',1,0,0.00,0.00,0.00),(30,29,'30',10000.00,'2014-07-16',1,0,0.00,0.00,0.00),(31,29,'31',10000.00,'2014-07-17',1,0,0.00,0.00,0.00),(32,29,'32',10000.00,'2014-07-18',1,0,0.00,0.00,0.00),(33,29,'33',10000.00,'2014-07-19',1,0,0.00,0.00,0.00),(34,29,'34',10000.00,'2014-07-20',1,0,0.00,0.00,0.00),(35,29,'35',10000.00,'2014-07-21',1,0,0.00,0.00,0.00),(36,29,'36',10000.00,'2014-07-22',1,0,0.00,0.00,0.00),(37,29,'37',10000.00,'2014-07-23',1,0,0.00,0.00,0.00),(38,29,'38',10000.00,'2014-07-24',1,0,0.00,0.00,0.00),(39,29,'39',10000.00,'2014-07-25',1,0,0.00,0.00,0.00),(40,29,'40',10000.00,'2014-07-26',1,0,0.00,0.00,0.00),(41,29,'41',10000.00,'2014-07-27',1,0,0.00,0.00,0.00),(42,29,'42',10000.00,'2014-07-28',1,0,0.00,0.00,0.00),(43,29,'43',10000.00,'2014-07-29',1,0,0.00,0.00,0.00),(44,29,'44',10000.00,'2014-07-30',1,0,0.00,0.00,0.00),(45,29,'45',10000.00,'2014-07-31',1,0,0.00,0.00,0.00),(46,29,'46',10000.00,'2014-08-01',1,0,0.00,0.00,0.00),(47,29,'47',10000.00,'2014-08-02',1,0,0.00,0.00,0.00),(48,29,'48',10000.00,'2014-08-03',1,0,0.00,0.00,0.00),(49,29,'49',10000.00,'2014-08-04',1,0,0.00,0.00,0.00),(50,29,'50',10000.00,'2014-08-05',1,0,0.00,0.00,0.00),(51,29,'51',10000.00,'2014-08-06',1,0,0.00,0.00,0.00),(52,29,'52',10000.00,'2014-08-07',1,0,0.00,0.00,0.00),(53,29,'53',10000.00,'2014-08-08',1,0,0.00,0.00,0.00),(54,29,'54',10000.00,'2014-08-09',1,0,0.00,0.00,0.00),(55,29,'55',10000.00,'2014-08-10',1,0,0.00,0.00,0.00),(56,29,'56',10000.00,'2014-08-11',1,0,0.00,0.00,0.00),(57,29,'57',10000.00,'2014-08-12',1,0,0.00,0.00,0.00),(58,29,'58',10000.00,'2014-08-13',1,0,0.00,0.00,0.00),(59,29,'59',10000.00,'2014-08-14',1,0,0.00,0.00,0.00),(60,29,'60',10000.00,'2014-08-15',1,0,0.00,0.00,0.00);
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
    DECLARE pcapital numeric;
    DECLARE pfecha DATE;
    DECLARE pcuotas integer;
    DECLARE pvencimiento DATE;
	DECLARE pfechaact DATE;
    DECLARE done INTEGER default 0;
    DECLARE cur1 CURSOR FOR 
    			SELECT id, empresa_id, clientes_id,
                       fecha,tipo_documento_id,
                       prefijo,consecutivo,capital,cuotas
                       
                       	FROM 
                       		creditos 
                       where id = NEW.creditos_id
                             and anulado = 0;
                             
    DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;
    
    open cur1;
    
    	REPEAT
	        FETCH cur1 into pcreditos_id,pempresa_id,pclientes_id,pfecha,ptipo_documento_id,pprefijo,pconsecutivo,pcapital,pcuotas;
	    UNTIL done END REPEAT;
    close cur1;
    
		INSERT INTO detalle_cxc (
			idt,creditos_id,prefijo,consecutivo,vencimiento,codigo,tipo_documento_id,valor,anulado,capital,multiplicar) 
		VALUE (
        	NEW.id,pcreditos_id,pprefijo,pconsecutivo,NEW.vencimiento,NEW.codigo,ptipo_documento_id,NEW.valor,0,(pcapital/pcuotas),1);

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
    DECLARE pcapital numeric;
    DECLARE pcuotas integer;
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
                       consecutivo,
                       capital,
                       cuotas
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
                        pconsecutivo,pcapital,pcuotas;
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
		  capital           = (pcapital/pcuotas),
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
  `capital` double(15,2) NOT NULL DEFAULT '0.00',
  `intereses` double(15,2) NOT NULL DEFAULT '0.00',
  `valor` double(15,2) NOT NULL DEFAULT '0.00',
  `anulado` tinyint(4) NOT NULL DEFAULT '0',
  `multiplicar` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `creditos_id` (`creditos_id`),
  KEY `tipo_documento_id` (`tipo_documento_id`),
  CONSTRAINT `detalle_cxc_fk_creditos` FOREIGN KEY (`creditos_id`) REFERENCES `creditos` (`id`),
  CONSTRAINT `detalle_cxc_fk_tipo_documento` FOREIGN KEY (`tipo_documento_id`) REFERENCES `tipo_documento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `detalle_cxc` WRITE;
/*!40000 ALTER TABLE `detalle_cxc` DISABLE KEYS */;
INSERT INTO `detalle_cxc` VALUES (1,29,1,'CRE',1,'2014-06-17','1',10,8333.33,0.00,10000.00,0,1),(2,29,2,'CRE',1,'2014-06-18','2',10,8333.33,0.00,10000.00,0,1),(3,29,3,'CRE',1,'2014-06-19','3',10,8333.33,0.00,10000.00,0,1),(4,29,4,'CRE',1,'2014-06-20','4',10,8333.33,0.00,10000.00,0,1),(5,29,5,'CRE',1,'2014-06-21','5',10,8333.33,0.00,10000.00,0,1),(6,29,6,'CRE',1,'2014-06-22','6',10,8333.33,0.00,10000.00,0,1),(7,29,7,'CRE',1,'2014-06-23','7',10,8333.33,0.00,10000.00,0,1),(8,29,8,'CRE',1,'2014-06-24','8',10,8333.33,0.00,10000.00,0,1),(9,29,9,'CRE',1,'2014-06-25','9',10,8333.33,0.00,10000.00,0,1),(10,29,10,'CRE',1,'2014-06-26','10',10,8333.33,0.00,10000.00,0,1),(11,29,11,'CRE',1,'2014-06-27','11',10,8333.33,0.00,10000.00,0,1),(12,29,12,'CRE',1,'2014-06-28','12',10,8333.33,0.00,10000.00,0,1),(13,29,13,'CRE',1,'2014-06-29','13',10,8333.33,0.00,10000.00,0,1),(14,29,14,'CRE',1,'2014-06-30','14',10,8333.33,0.00,10000.00,0,1),(15,29,15,'CRE',1,'2014-07-01','15',10,8333.33,0.00,10000.00,0,1),(16,29,16,'CRE',1,'2014-07-02','16',10,8333.33,0.00,10000.00,0,1),(17,29,17,'CRE',1,'2014-07-03','17',10,8333.33,0.00,10000.00,0,1),(18,29,18,'CRE',1,'2014-07-04','18',10,8333.33,0.00,10000.00,0,1),(19,29,19,'CRE',1,'2014-07-05','19',10,8333.33,0.00,10000.00,0,1),(20,29,20,'CRE',1,'2014-07-06','20',10,8333.33,0.00,10000.00,0,1),(21,29,21,'CRE',1,'2014-07-07','21',10,8333.33,0.00,10000.00,0,1),(22,29,22,'CRE',1,'2014-07-08','22',10,8333.33,0.00,10000.00,0,1),(23,29,23,'CRE',1,'2014-07-09','23',10,8333.33,0.00,10000.00,0,1),(24,29,24,'CRE',1,'2014-07-10','24',10,8333.33,0.00,10000.00,0,1),(25,29,25,'CRE',1,'2014-07-11','25',10,8333.33,0.00,10000.00,0,1),(26,29,26,'CRE',1,'2014-07-12','26',10,8333.33,0.00,10000.00,0,1),(27,29,27,'CRE',1,'2014-07-13','27',10,8333.33,0.00,10000.00,0,1),(28,29,28,'CRE',1,'2014-07-14','28',10,8333.33,0.00,10000.00,0,1),(29,29,29,'CRE',1,'2014-07-15','29',10,8333.33,0.00,10000.00,0,1),(30,29,30,'CRE',1,'2014-07-16','30',10,8333.33,0.00,10000.00,0,1),(31,29,31,'CRE',1,'2014-07-17','31',10,8333.33,0.00,10000.00,0,1),(32,29,32,'CRE',1,'2014-07-18','32',10,8333.33,0.00,10000.00,0,1),(33,29,33,'CRE',1,'2014-07-19','33',10,8333.33,0.00,10000.00,0,1),(34,29,34,'CRE',1,'2014-07-20','34',10,8333.33,0.00,10000.00,0,1),(35,29,35,'CRE',1,'2014-07-21','35',10,8333.33,0.00,10000.00,0,1),(36,29,36,'CRE',1,'2014-07-22','36',10,8333.33,0.00,10000.00,0,1),(37,29,37,'CRE',1,'2014-07-23','37',10,8333.33,0.00,10000.00,0,1),(38,29,38,'CRE',1,'2014-07-24','38',10,8333.33,0.00,10000.00,0,1),(39,29,39,'CRE',1,'2014-07-25','39',10,8333.33,0.00,10000.00,0,1),(40,29,40,'CRE',1,'2014-07-26','40',10,8333.33,0.00,10000.00,0,1),(41,29,41,'CRE',1,'2014-07-27','41',10,8333.33,0.00,10000.00,0,1),(42,29,42,'CRE',1,'2014-07-28','42',10,8333.33,0.00,10000.00,0,1),(43,29,43,'CRE',1,'2014-07-29','43',10,8333.33,0.00,10000.00,0,1),(44,29,44,'CRE',1,'2014-07-30','44',10,8333.33,0.00,10000.00,0,1),(45,29,45,'CRE',1,'2014-07-31','45',10,8333.33,0.00,10000.00,0,1),(46,29,46,'CRE',1,'2014-08-01','46',10,8333.33,0.00,10000.00,0,1),(47,29,47,'CRE',1,'2014-08-02','47',10,8333.33,0.00,10000.00,0,1),(48,29,48,'CRE',1,'2014-08-03','48',10,8333.33,0.00,10000.00,0,1),(49,29,49,'CRE',1,'2014-08-04','49',10,8333.33,0.00,10000.00,0,1),(50,29,50,'CRE',1,'2014-08-05','50',10,8333.33,0.00,10000.00,0,1),(51,29,51,'CRE',1,'2014-08-06','51',10,8333.33,0.00,10000.00,0,1),(52,29,52,'CRE',1,'2014-08-07','52',10,8333.33,0.00,10000.00,0,1),(53,29,53,'CRE',1,'2014-08-08','53',10,8333.33,0.00,10000.00,0,1),(54,29,54,'CRE',1,'2014-08-09','54',10,8333.33,0.00,10000.00,0,1),(55,29,55,'CRE',1,'2014-08-10','55',10,8333.33,0.00,10000.00,0,1),(56,29,56,'CRE',1,'2014-08-11','56',10,8333.33,0.00,10000.00,0,1),(57,29,57,'CRE',1,'2014-08-12','57',10,8333.33,0.00,10000.00,0,1),(58,29,58,'CRE',1,'2014-08-13','58',10,8333.33,0.00,10000.00,0,1),(59,29,59,'CRE',1,'2014-08-14','59',10,8333.33,0.00,10000.00,0,1),(60,29,60,'CRE',1,'2014-08-15','60',10,8333.33,0.00,10000.00,0,1),(61,29,1,'REC',2,'2014-06-16','1',6,8333.33,0.00,10000.00,0,-1),(62,29,2,'REC',2,'2014-06-16','8',6,8333.33,0.00,10000.00,0,-1),(63,29,3,'REC',2,'2014-06-16','15',6,8333.33,0.00,10000.00,0,-1),(64,29,4,'REC',2,'2014-06-16','22',6,8333.33,0.00,10000.00,0,-1),(65,29,5,'REC',2,'2014-06-16','29',6,8333.33,0.00,10000.00,0,-1),(66,29,6,'REC',2,'2014-06-16','36',6,8333.33,0.00,10000.00,0,-1),(67,29,7,'REC',2,'2014-06-16','43',6,8333.33,0.00,10000.00,0,-1),(68,29,8,'REC',2,'2014-06-16','50',6,8333.33,0.00,10000.00,0,-1),(69,29,9,'REC',2,'2014-06-16','57',6,8333.33,0.00,10000.00,0,-1);
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
    DECLARE pcapital numeric;
    DECLARE done INTEGER default 0;
    DECLARE cur1 CURSOR FOR 
    			SELECT id,
                       empresa_id,
                       clientes_id,
                       fecha,
                       total_credito,
                       capital
                       	FROM 
                       		creditos 
                       where id = NEW.creditos_id
                             and anulado = 0;
                             
    DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;
    
    open cur1;
    
    	REPEAT
	  FETCH cur1 into pcreditos_id,pempresa_id,pclientes_id,pfecha,pvalor_total,pcapital;
	  UNTIL done END REPEAT;
    close cur1;
		
       
   SELECT count(*) into cont 
   			from cxc 
   where creditos_id   =  NEW.creditos_id  
           and anulado = '0';    
   
   if cont = 0 then
   	
     INSERT INTO  cxc (
		  creditos_id,prefijo,consecutivo,tipo_documento_id,fecha,capital,capital_pagado,valor_total,pagado,anulado) 
	 VALUE (NEW.creditos_id,NEW.prefijo,NEW.consecutivo,NEW.tipo_documento_id,pfecha,pcapital,0,pvalor_total,0,0);   		
  
    ELSE
        
    
    	UPDATE cxc set 
        capital = ifnull((select sum(capital*multiplicar) 
                                from detalle_cxc 
                           where anulado = 0 
				 and creditos_id  = NEW.creditos_id 
                                 and multiplicar = 1 ),0),
        capital_pagado = ifnull((select sum(capital*multiplicar) 
                                from detalle_cxc 
                           where anulado = 0 
				 and creditos_id  = NEW.creditos_id 
                                 and multiplicar = -1 ),0),                                 
        valor_total = ifnull((select sum(valor*multiplicar) 
                                    from detalle_cxc 
                                where anulado = 0 
			              and creditos_id  = NEW.creditos_id 
                                      and multiplicar = 1),0)  ,
        pagado = ifnull((select sum(valor*multiplicar) 
                             from detalle_cxc 
                            where anulado = 0 
			    	  and creditos_id  = NEW.creditos_id 
                                  and multiplicar = -1 )  ,0)              
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
DECLARE pcapital numeric;
DECLARE pvencimiento DATE;
DECLARE pfechaact DATE;
DECLARE done INTEGER default 0;
DECLARE cur1 CURSOR FOR 
      SELECT id,empresa_id,clientes_id,fecha,capital
      FROM creditos 
      where id = NEW.creditos_id
           and anulado = 0;
                             
    DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;
    
    open cur1;
    
    	REPEAT
	        FETCH cur1 into pcreditos_id,pempresa_id,pclientes_id,pfecha,pcapital;
	    UNTIL done END REPEAT;
    close cur1;
		


        
   SELECT count(*) into cont 
   			from cxc 
   where   creditos_id = NEW.creditos_id
           and anulado = '0';    
   
   if cont = 0 then
   	
     INSERT INTO  cxc (
		  prefijo,consecutivo,tipo_documento_id,fecha,capital,capital_pagado,valor_total,pagado,anulado) 
	 VALUE (NEW.prefijo,NEW.consecutivo,NEW.tipo_documento_id,pfecha,pcapital,0,NEW.valor,0,0);   		
  
    ELSE
        	
    	UPDATE cxc
     set capital = ifnull((select sum(capital * multiplicar) 
								from detalle_cxc
								where anulado = 0 
									and creditos_id = NEW.creditos_id 
									and multiplicar = 1), 0),
         capital_pagado = ifnull((select sum(capital * multiplicar) 
								from detalle_cxc 
								where anulado = 0 
									and creditos_id = NEW.creditos_id 
									and multiplicar = - 1), 0),
         valor_total = ifnull((select sum(valor * multiplicar) 
								from detalle_cxc
								where anulado = 0 
								and creditos_id = NEW.creditos_id 
								and multiplicar = 1), 0),
         pagado = ifnull((select sum(valor * multiplicar) 
								from detalle_cxc 
								where anulado = 0 
								and creditos_id = NEW.creditos_id 
								and multiplicar = - 1), 0) 
     where anulado = 0 and creditos_id = NEW.creditos_id;
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
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `notas_credito_after_ins_tr` AFTER INSERT ON `detalle_notas_credito`
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
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `detalle_notas_debito_after_update_tr` AFTER UPDATE ON `detalle_notas_debito`
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
  `capital` double(15,2) NOT NULL DEFAULT '0.00',
  `intereses` double(15,2) NOT NULL DEFAULT '0.00',
  `descripcion` varchar(200) DEFAULT NULL,
  `valor` double(15,3) NOT NULL DEFAULT '0.000',
  `descuento` double(15,2) NOT NULL DEFAULT '0.00',
  `anulado` tinyint(1) NOT NULL DEFAULT '0',
  `dias_intereses` int(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `recibos_caja_id` (`recibos_caja_id`),
  CONSTRAINT `detalle_recibos_caja_fk_recibos_caja` FOREIGN KEY (`recibos_caja_id`) REFERENCES `recibos_caja` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=5461 COMMENT='TABLA DE DETALLE RECIBOS DE CAJA';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `detalle_recibos_caja` WRITE;
/*!40000 ALTER TABLE `detalle_recibos_caja` DISABLE KEYS */;
INSERT INTO `detalle_recibos_caja` VALUES (1,1,'1','2014-06-17',57,8333.33,1666.67,'Descuento martes 1-REC2-60',10000.000,0.00,0,0),(2,8,'8','2014-06-24',57,8333.33,1666.67,'Descuento martes 8-REC2-60',10000.000,0.00,0,0),(3,15,'15','2014-07-01',57,8333.33,1666.67,'Descuento martes 15-REC2-60',10000.000,0.00,0,0),(4,22,'22','2014-07-08',57,8333.33,1666.67,'Descuento martes 22-REC2-60',10000.000,0.00,0,0),(5,29,'29','2014-07-15',57,8333.33,1666.67,'Descuento martes 29-REC2-60',10000.000,0.00,0,0),(6,36,'36','2014-07-22',57,8333.33,1666.67,'Descuento martes 36-REC2-60',10000.000,0.00,0,0),(7,43,'43','2014-07-29',57,8333.33,1666.67,'Descuento martes 43-REC2-60',10000.000,0.00,0,0),(8,50,'50','2014-08-05',57,8333.33,1666.67,'Descuento martes 50-REC2-60',10000.000,0.00,0,0),(9,57,'57','2014-08-12',57,8333.33,1666.67,'Descuento martes 57-REC2-60',10000.000,0.00,0,0);
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
			idt,creditos_id,prefijo,consecutivo,vencimiento,codigo,tipo_documento_id,valor,capital,anulado,multiplicar) 
		VALUE (
        	NEW.id,pcreditos_id,pprefijo,pconsecutivo,pfecha,pcodigo,ptipo_documento_id,NEW.valor,NEW.capital,0,-1);
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
                  capital           = NEW.capital,
          		  anulado           = NEW.anulado,
          		  multiplicar       = '-1' 
			WHERE 
 			 idt = NEW.id
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
INSERT INTO `deudores` VALUES (1,'123','MANUELA','DEL CARMEN','BUSTAMENTE','LOPEZ','MANUELADEL CARMENBUSTAMENTELOPEZ','����\\0JFIF\\0\\0\\0\\0\\0\\0��\\0>CREATOR: gd-jpeg v1.0 (using IJG JPEG v62), default quality\n��\\0C\\0		\n\r\Z\Z $.\\\' \\\",#(7),01444\\\'9=82<.342��\\0C			\r\r2!!22222222222222222222222222222222222222222222222222��\\0��\\\"\\0��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0	\n��\\0�\\0\\0\\0}\\0!1AQa\\\"q2���#B��R��$3br�	\n\Z%&\\\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������\\0\\0\\0\\0\\0\\0\\0\\0	\n��\\0�\\0\\0w\\0!1AQaq\\\"2�B����	#3R�br�\n$4�%�\Z&\\\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������\\0\\0\\0?\\0�<\nP9�����y�c6(�4�)\\0��v$P�<��mB�ڟE��\\0:��ے1��S�^���7�Fx�/Q�Zv�r�]���8.z����֝�\\0�sJ�֞0zS���q���P:{Ҍ��E�\\0��@�4���+���\\0��@\\\'�J\\0�JP���� ��3O�A^��j@1����&8=��{�� �4\\\\P�R�?\ZL���M9E;XE8\\09��=�ҞA╄ ���9���=JQ���;\\0��9�8�uPh� zQa�<zSq�4g�w�u\\0�� �I�cN4��\\0��i@�JQ@	ރK�\\\'J.)����Q�Ɨ��@�\\0P)���a�ъ1�J1�aqI�\\\\c֎(\r����N�t�/R�@ޓ4�)(;��1���	\\\'Q�Z\\0&9搌��\\\\R���\Z3�j6�qN�&��1�9�\\0O)z���9=��+�R�sN��#�V\Z\ZW�E&ь��?�Ի~^h����1�ƞFp)���\\\\F0�d�l�i�s@:h�ƕ�&�����i��Z,�Cv��ڛ��i�u��+��.PLaJ�����!��.�SW@�N��/�\\0���L��\\0�MK���J��N���!�튐�Ȥl����:{ӇOJd�8�P���R�GZx�\\0���J��\\\'\\\"�U8c�\\\\�������ޘ��KҐR��8b�p0h��hW����!�$��E�?�����qN�8�AM! P94�����LC�����AךP{\Z~���/q�AK��`����4�s�\\0Q����#��t�;���ay�\\0��4��i�t�����=E\\0c4\\0�Ap��>��Ƞ})@#4�&h�Z(>��G�Kր٥�F(4;RsK@� ����@�J;�Kɥ#��w��K�IҀ\Z�����GlS�PEa�ނ0i~��s׭1X\\\\Rg�R��#��ӯ4��u��&��A@��ց���\r\\0�%��>��ހv���@\r#�8�����\\0t�h4�P(��W�)��$�1�=��0(��⑏�(�?Ji��N<b��3�ZC��@�j\\\\��4���x�(���X>6������s�\\0�������j����~\\\"�2��\\0�&�ʋԯ�N���3��vpzqHؓ8#�P�(�E7?��`�ߵ$���sR�0�=i�\\0PK:R�M��j�=hx�s֔pz\n��1�Q�?��<���H�{~4���M��b�@�R���@��zPq�\\0��3�hW:p(�@x��}�4�\\0����`�M���f��(���� �^��^���ӰGQL�=h��:RQJZ\\0p�8�҃����s�@(�@\\0z��	��M aڎ��qױ��@8�\\0�I�(�Pץ\\0�3��Qځ�֎�r(�!�b�Ӂ@�9�����K@cڑV��qGց@�)3�J\\\\�@	���)O�Jb8��?Jq���h\\0���z�h\n^����LBt��- ��\\0E%�ғ=s�4u!���\\0�Q�J(��(��\\0�q�Z:Pg���Oj\\\\���8�\\0��΁��ސ����4������})ǯ#�i9��R�w�\\\'j���!�/�h5��a������?�)�x�t�X>6�\\0��G��\\\\�\\0覤\\\\w+f�9�?:�pjA�JF��R�ژ8��9�D��pi��z�6H(<\n�S�߸��A�!��֔�֚ۧ>��Gjb�<֔�Q����za���܊`�b�)�p�֔qI�\r(<g�\\0��>��z�M֔di����\\0sޚ>��W�L]E�8sM��\\0B�\\0^�:Ry4���=�連�N?Zh�q�֗�\\0���8d�{{�c*s�P:\n@8y4��g�F}�RzP2L�ѓ��Շoj\\\\�\\0�=�I�@�jAa�n����y�R����y4��ъ@�IF3ց�2z\n^��_�F(\\0����v�R���HF-�@&��ۭi�=iO�Ҟ�a�▔�i���LZO�)qGJ`\\\'l�g�SI@������#�K@��i;u�<�`�A��x4S�9�N�\\0ƌ�@��(�I��@���ހI��Ps@�(�\\0��O��A�ҁ�qHrI��K��JN��J�4��!�y8��ZM�fӻ�� ��F2H�X�����\\0ȅ�/�\\\\��\\0l����k����_���\\0�MHkr�9� =\\05#4��v5)����9�$�ۊ�AN�)�9}��r��h������@\\\\p�i�ڐu�\rRЖ.z����)q�b�D-N\\\'\\\"�\\0i����!$s�Ԁ����ޜ0i�?����v�S����Jh�y����� #��HNzqK�h���p)���*!�&�NW>��LV	8�\\0��4�N�[�)�P@\\\\PP1HG�F�@i�Px�րp3ך@pM(S������/�jE$�u���Ҁ`�ґǽ ��Fr���Q�����=rx�w4�Lp)z�2Gn)h)psF:�������\r\\0���s�R(:��t�@��րA�Z)~�J0h=i����})h�@X@8�})xP\Z;�K�Tg�(&�df���RPf��4�0i;S$O�\\\'�{sJ������Jyv�v\ZFz�Z);� �җ� ���!�Q@�4�����o��\\0(���\\0:��Ӻ�t��JC�~���iG\\\"��^1��G�q�P�@��HxΜx��G�HcH���j?���\\0�]���j�!�==����!x���w_�)�K����z�\\0~�;ӒL�����`3R�?:�p���\\0*�d��sO��HE86HɠD��jh9�4��S�\r�M.3��M�J\\\\�?:_N4��j\\0\\\'�bc�:w�$�8\n0;f�1n1�T���0.=�۱@��\Z\\\\��\\\"�,\\0�7�\\0���briC�UO3��A�֛�d�t�R+�����4�>���\\\\v4�ߊvEg���9�S-��1MH,\\\\�1G~���p��H��JdR�xdP$J0	��(��F�ޜW�0�z�N<��MA��@2x�#�H0){\n@( ������GQHb�84j^��0��)M\\0�@��1K�΀��\r!\\0�#��@�!� �?Z^)9�,�Z@Gc�.1ނ(�݅.Fy�q@�}h\\0Kސ��\Z�i����3��)�b�+ޙ6C�( R�ю:P;\r�i=�܁�!#9����)sIJ)�ɤ���\\0{�GjR@�\\\'�b9�v\nn����|�&;��})2��(��F:qMޔ��@�$��F84G4¥s����<{gR��4������<Q�8��o~zS�\\0�ç�<�\\0q���� �w�-�HO4�����ϭ`x��Dz�\\0e��\\0覮��������>#�\\0�]���jM��u�^*A+\\0_�< �4���ft�	�9a��\Z��1\\\\���j0��:S�n8�v!��l�=E]��4�Xw�b��qTM�.n��������HȨ�c�\\\\ӆ��E2_��:���&V�g���?S���ҁ��?ZyuU9<TVO�#&�a�$SZ�p:����w�C�w1��0�@n�G\\0R\\0g5�9\nk��H��ɰ���ңiT\r��B����^�Vi\n�\\\"�)+��p!���Mr��޲��e8#���z��#H�5��A9n)��c�d�2=�i��K��[�H䑊�|U⩬��kY�gu�`*F���N+��]��(|8OҪ��CtՇ7�56c����+�;��N��(��r�ݜ��	�),T.����V�8#�Ӽs�	%����0�Ezw��G.��+��n7^2+�4X]�\n�㏭zW�Zk�m�/�~SY�I��F*ǩ+\Z�1\\\'���H��}jup�j�����)���A�@�ޛ��ҋ0l�ڜ=�`Gz�Xc�3CCߞԾ��x�^�#B⁁֏j:PV��������� b��Qږ���Z9⃎�P\\0/4߯�K@Q�:��\\0�J\\\\R0�}\\0r)0)@����@(4�sIߎ�i��������4C8y���j\\\"��dqQ�`u�\r�D�N��cI�Y� u�y�8��5�:Pf��x�&_zC/���/���Q\\\"�gy�h���.CL��J7��)q�^�a&V�Ο1<�t�ӎs�D�0)L���(�8�$�>�u�U��8�,�\\0�)��&�$S������q׵)9��!`@ �jR>^9�M.FNh#�(��\\0m�>晜g��󞂛�����ȡrN{R���\\\"�\\\\Rs������(/s���u�\\0�����ְ|o�\\0\\\"����.��\\0E5\\\'�Q�ш	����*$�2O� l�Y��OM=q�*!��J�\r�ښ%��O^\\0�ޜ*�d��O�����p�\\\\gގ�c�Jp�ң����\n,!��u\\\"�I#�E4!�q�}i݉�3\\\'�8zu�P�;�u�߁��N\\\'�j�J{�ڳ�~�fv�5�+�j��(���i�Fi��\ZM�^NMe��B9�����]������1�9[����9}JrN0���\\0�ע���y���n8���kzW�&[jf+\r���q׭9r�r{�%�l	�4��#\\\'�@k�����h$ԕ6�±��k�����\\\"�RB���x�\\\'�~�+0`D\r���\\0Ϸ_�lU���2W��C�U�8.Ñ���V[� �:Մ�I7�A��7\\\"�#F�F�9]I���daN��S����\\0�?\ni�k�ƀ��\\0f�98�)�APGJpnN9>ԁ+�:s֌g֔QJ)`�V�N�<S�+�Hv��4�i�@�;��	8�(�恍�(8<��&�=h\ZV��HH�sA�j\\0n���6Nj\\\\�(�1ҁY��B�63�/zi���ڀ��p�iA��Ҝ�1�7b�sP��;j3����PI��R�?�&Ď�H���\\0 sQ�2��R��l��p3�j�I�㌐z�q�5Q�r{{�GiwaI���d亚��b�����U��9b	<w�4��pNb(�Q��z��CX�Y\\0¹,:��S�U���MK@�:s�A�6�;��X�2�NNjե��|�2y����D���x�ֲ��\\0v4.߀�x7��۽CRk����ʿ£�\n�-wRx�9}�a�����?�x��/�!#$��ϭm�hg���Ґ� �	��d�.��Nxb+!�q������H\\0���r��\\\"ίK�^�ks���C����\Z�]\\\"��GH���2�n={�\\0Z���)L�:�����gO\r[�WqBW?��)�t�pKc��	��HO^*=� g�x8�L�w`�sK�O<S3ϵ�0�P�O��0i;�۽&8�2L��5��s�\\0����覭�s�X69����e܏���0�����h��_�\\\\T���0pF1��d�Vz�7�J��9���JC��i��R�)�8�ELp�����J�I(bOǭ)v\r���\\\'�Px��2z�����Ƥ���)��(�}�hd���S�8�FҞ1��!��zp`������J,�\\\'��W��J��\\\\皡;�\\0sC�i\\\\�YnEg���\\0T���=�U$\\\\�sY�M������0���tҹ����Gca�\rB�\\08�YT�PI�e$)+��~��3����A��#v��z4���V#9�y��I���~v��+VD��(�ϑ�S�#9�֢X��\r<7�0�Z�������>0�׹�������L��2��U!��>���������\\0.|���s�ɛ�[j�,p:�N6i�\\\'�#~��\Z��l|?�i[�L�#m�mb1�Q��\\\\�`q�3�ʐ�d�i4Qz�m�a�/�h�<|�G�ֽ��;ǝ�:�Ho��3\Z0�\\0�1JbR�-�1��J˪)Ӊ�V�ti�>{�?�O�H|_��\\0P��X/�U\n�p:�ZȤ�v�#�$�ԟg��j�W��w<l?�pj�^Fz0�+�佸�@YYM\\\\���8캙{���h�W�\\\\��h]!R��߷\\\'�_:��5�R�V�͞?\Z��}m79�(���n�T�����iU��^�=M0\\\"o���^�����%�G�����#=�p�2\r.A>����W���9����\\0֫��R�eRm��{�SK�����Q���~\\\'i���_�?֭E�H|nyT�T?ҎV\Z�����\\\"����F\r�\\\\��~�4~5џ��Y��ҎVgU�zL��SźK��B����*e��������AJ»7	���XX�Y�#�&�pi�T��Ċ��4�\rMm������#;��4�z���>����.)�^?�g�����M�Z�\\\'#�9K�/��VY@⪽��?:���{��\\\"�	䓨�T�a�2K���Y���M���f�֣-�@������@o��E�5M�R�-�����Q�S����\\0�\n�M^�W���}\\\\P����_ZkH0k%���\\0����T/�Xn8�L�f�&����`5�a8���zb�Q�\r87�r�b�i���������8?+~�� �C\Z����\\\"xZr�\Z��W��V e{�ҽ��>����mm.��]��V&2z��J�+�����;[��N��\Zm;4gM�O�y�V��r}W�aFq�ة��S�lְUy��-ҽ��HSIU�\\07�Nxv�w�B�\\0\\0��BM�pS��O?���K�9�;�#A�/��\nM���*x� ��9ɥ\\\'�\\0:�a�m���v��NL1�d��`��sȠ�8�R�=M!\r\r�°�n� ^#��\\0 ˓�\\0�����<l3�?�\\0�.�?��wظ�s��sS:�� ��qll�#bPx��O��zS��rd8�:T�Fњ�*Un\\0�N���Zx�s�Q����D���4�}����(�D���S��Gj��+pi��4g������hJ�\\\\f�J�$��3���R1�i2�V���T�����*��Ȭ��q�4ӏƔSN23ң�d\r����<sR�<�.Npx���2���yV�Ha��;�5�3�����\\0�� n�d��[SZ�%�*�����ӆ:�v<T`�Ǩ�~��lI?���¹�\nB�N�&�\\\'�;����3)���G�G�]7����-�jc���>�ŉ�X�s�T-�ȕ��^8�`{�6�\\\'��UP�n1��vt�4z��HF@l��)�pnH<q�n�A�8�I�q�s튝ʋc�`�c�JFf�|����9?N��;$�8����?\\\\s֗vF3��L�y9���zPA����m��m	p}�į9���^2y�>��H98�hz�I0�\\\'���1��sL\\0���6�b�`w�֧{`��z�\n�?C���H�=�<w�ҫ���I�RI<1QJ7�\r�0n�>��x9<�}�-�z�����<M.A��Ӛ�eu^]�#���N~���p�JZ�Se���\n�S�N3J.�$�����*�9<g�\n1���@���M��\\0���7�,�y�:Z�m#\\0��iwt\\0愚w\r:�ƣs�mvSՎq�A�ݦX\\\\I��X�j�=��i,�S�qG���Z���ӎ8��ۚ��O���{!�\\0\Z�pI�������r}�{�N��k@:���7��M�j�ɾ�\\\'9y5L�\r�G�|�e��<�\ZHw�.\r_Ps�]ɴ��ꗛ�&b\\\'\\\'뚨窂?\Zh��?��9E}K\\\'P�*��r��5��a�0�_�֢ʒG~��y����3^ܜ����Jd�S�/�c8\Zne$q��p��h���b.\\0��F8���_8ސ���\\0*��$|�`�%�\\\\i����4�m?)��zd�z�JA���ڒ�ޤ/���3�R��`���ޔ�$� q�J��������w��Հ��ޥ��Þ�s��z�\\0��:1\\\'��:��k���e�8�px��{Ί��1<�b�^\\\'��M~�\\\'*�sg�W�i[F��}:rMUO�#�M9h^\\0�pq�K������ ���u9>���`wu����Fi�zsM����w���GjA���I�4�1�ְ<mǀ�G�����SV�l��[�(/����\\0覥r��G<zp\\\'�D1�>�񍣜T������i��횄7���q��\\\"e�*T<�j�9���&��XZp<�MR3ޜs߭=ɰ��tpƣ�N���ҙ#��S�L�J��\\0Hi��ڍî)�~S@��&����S�q�j��=*�QVW��*�R9�֡-���3h�S�ʣr�S��9ϵD�1�<RWeXN�����j�����\\0�5�n� ��S����Pbwʿ�O�\\0��K�m���~�1��^g�*���y`�>��]4��\\\"OTP6}Oz���pzp*#�_Z�rH�2Oz����;�r�[S~v���qйb�`d��]~�v�\\\'R`v������~^G2+H��ȕ��hx������\\0T\\0*�\\0��epH���5b���8=h��c9�F	-�\\\'���/����,���r88�(��i��N9��HbO_J-����s�@�袔0�zz\nfO���@@#94��Q\\\'��_����N	8��Ηy#q=;�J�6���3րp8?N�������\\0`�9ǵ7m������ڔ�=�j`?6������=&��s�ڐ�����݆\\0s�J@���I�Ƭ.YA!s���1��0���rGR:R�I8$�9��A7gaI`ze}��p9�;�^Olя����5�1��V�u�4�q��\ZB����/O�8�ҋY	1\n��^��p84�c�\\0\\0��L.H��(Q�w��za��9�)K�ul��~s��:��I;r:��\\0�����pA9���\\0� ���T��}�kG���|��i���i����>�\\0�&��\\\'\\\' 7=)G������`��G��z��zR�+c�J[���>@Dj��O�*<�u�)]B�d�j<�s�>�&�Żz{Ј�䓁��)&�wb2ry�\\\\��N����i2r3֭h)!_����J�|��ps�5?�z`T��B�X~=�t��	@ϭN�{T`�����}*h���^��\nۉ��u���r��*��qӚ��=X�8�GN��\\0EK�ܶJ�z{�^�n�mb\\0F?\n��\n9��!Q�Q�����ߊP;~k�bc�Ɠ#v\\\\b�I�ӓL�9���\\\\�\ni�S��=�7�!�����\\\\�����?�)�x�����C�����ST��G4��\rJ����ҫ�q�y5$n3����V��6�=���&���=\\\'�3S)�������Q���IdJx8$�SO�L��4�<�Խ��0\\\'<❟�i��t��M�8��k��&pj)_�1@�eb}ꜧ\\0Չ��3zVm��@��I�08���w	�Y��� �L|��R:c�ܿʄ1��\\\'��j�V8��51\\\'j#\\\'�5H\n\Z�?`�\\\'#�mϧ�:�:g%��s���zf��[s�ϖ���˯[7##��]�h�nB8&����L�1�M*Xzq��Zu\r�����	_������k����:��4�/�|�����l�\rh�ݵȑKQ���d�����m�4������>��p��]-χ!RJ<����Yϣ�0�.G���ԥ���N3����q���u\\0\nӋC�����H�$g��ǅ���Z�uYW�i���)�b�Kn\\\'nOӥj���Z%;���YT��Yr��B��d^��{Qg�z��N�❌���H����\nz�����b����x�Y�p	�i�;�g�:S�%���N�nM��})�s��)��b�U��~�R�q�F� �GS�`�_�G�GN��\\02��(���D���F}��(�O<�~�ӌg�3�A9R�]��BPr2��ps�On)���0 0��ϭ\n��w�����	�<����<���ѐ��piY�G���;�)���)a����#���C���sB�a۠��\\0�\r0�#����ӹ��˷9�Q��mh>�K�g��G=�� �%���� p?�-^���2O�)��=9�ҒFH#9�L$��$b�Ű����>�W�O�\\0Z�����;t��f����q�7#=}��I�)q�\\0��o�b�	GL���{Q��ڃ��G*���b9ǥ5�j��������`\\0=A�aj��FI��zd`��0�������=��1����U�l�*9!z��np���Z��dc;hJ� ��BR.	q�5\\\".P�8�z�wˀ��5\\\"�(�y���n�t;Oۘ�5��p�\\0�׵���8�o��DEr@�`�8��^�:��j�kk+Y;�\\03�Rc�s�I�ݒ	�XnP�����\\0\r4��Ɛ������\\0�.r6����`�\\\"�|jq�?��\\\\�\\0覭�z�Ұ|kǀ�C�\\\\�\\0覤ʎ�%����\\\"��1P�jq;W��A�b�7������P\\\'8�OB94�CZ��@��*T~�][$�R�<~�b�7\\\"��5]:u���4�.��6�֔6�0KLD����y��CҘ�1�j���Ԭ��H���kr\\\'m��Y{��ۃ��#{�f� 9?�zi�$P������N�	�9�֜sQ�A\\\"�1��f�|��R�=j3�x����.�vA�\\0�M��^cx�g\\\\a@��^���5�q��׎����}��9 *꣪m�/���\\0�y��\\08��D�݌�8�P�a����V;a!_��&|�o�ֵ�n+� `�\\0٫6=���@\n�L���\Z�<���q���}p47��%�.��\r�����_Һ[���\\0:�c�O�9H�q+��{�!O���YaA�T��U��3�1��-�P��jpd�2��r�W�����9 �:�\\\'�\r��_DԎ�w����-�k�盩H鏾k�3:j���<=��J����#�@G*y����4KNA��d�V��#���(Ɋ8�����w���f����8��m�#\\0�Wt�\\0\n�]�	wgk���kg�Ӛ�t}?�\r��j�T{%es�?�2�sr���`?A\\\\׊�)��3A;L�����H8\\\'=qڽ�-&1�3\\\\o�#�FA���!I�Z�37{[�iZ�B��C,�%,H\\0�3��i��@O��@������tE�Ә��\\0���9��\\0Z�n��T��i�y�ԣ�cV_g���;mKfc�`��D��,O�֝�X���V|�b�~<3��i�$�	��QM��+<�mҨ�LL0>��y����ڝ}��S�U�t�湗�����݂@^�#��R�r8 ��j~�K}\r�\\\\��ק�Y\\\"iP+D�v�ݽ94ۊ՚9�<���\\0{�M�v�g����4�L1��V���j�o��`;�*��+%$�)�ڞ:Q���*2���8㞕�o�����g?�Jλ���ǝ:�q�X�?Jә#55k6F���9��h#=3]���{;-1����)���RFA<���dxgJ�ԡ�{�vh 2\\\"�~f�?�8�z��1\n�0:��z�N��z�?J���1�$�F�Ƥ\ri�q�9�u#�6<��\n0�Zn�1�>��K�\r�#p�5Y�7d�����Ғ������t�:v�!���s]T��#�&��\\\\�Ϳ�},\\\"F*�B��?�_�R��W\\\"�<�ҁ���ϭt�^�h#�i%ȭ��#>��δ��}�����p�\\0\nR�S��8c��>�3M+��^���*�w���pG�V�����K=�{Jq�V<H�\\\'{Rc\npH?Z���Sᱍ���\\0M1V��U6�zg�<�������P��\\\\���\\\\��L��@ǯ�Z�,�-��z�;`��)�4V}ǆ��v��88�t57�Z\Z[RԪSʈ�U����=8���63��h�\\0�{T�wb����?3cy��/rG\\\'�+�GLW�|:��n���A�P�(�������g��4��>��5�V�)��QܟZ1���0NiP���O�8�|��ư�h� ~!��.�SV��X~5�� �!�\\0�]���j��G�($m$O�S�#�56��d�Á�����ޠBT��&pz��&����ҥ����?�i��%�ѽjPzUPN�\rJ�t4nCE�z�K�}(@\rD\Z�51\n��5Q�bjy[#���6�L�D�5^F�Z��g֠s�秵f͢0�1ښ�9�}i����4B���=�����\\\'�4��h@0����oΟ�Q�3֮�2��G���\Z��Û��0O^��+ҼDO���IL`�Ey��{� ����qw%�F[��ӶjD�����S��a��)������\\\"֙R>bz��]G�\ZM��	�}�\\0�\\\\�w_ة�1n�95��;#Bc���\\0��9�۳J�g �j��犷r~n����2�<��Q��lxU�N+z/�ǥd�.�ڵcA�ְ�®�{��:WΚ�	u�� ��>��& [�}���RZ�;@$��5�vh�kޱ��w{Gvm؆@��5v�d����\\0|�|��0x�@ա)�f����Qԅ#��WU�F5\\0W;l��޺�!G�jΛ����\\\"�a�^����{����D�}�#��A+�<`b����\Zt`,3r9;@�����ԩ�f��~[�9����Wku��5�x51c`s�y��ֺۆ�QU�tr�E�OaZ:E�VV�:�ު��ksN�\\\"�e�*��Mxc\n��g��hW�c;`����kT}�:\Z��\\\\�<;��v��\\05���K�<3�ɛ�a�2�c��A\Z�X�\\0N�ȯ0��3���N�9\\\'>��i�&0���TzV�kk�Pq�޶�U���D	����I���*�zVEځ��\rl\\\\1*q�c�8 ������x�i��f��+�������r*�m�\\0֭/�4���ň��5P�:�+��#����*�Mjt[DuI\Z���#�1�A�QD�k�2���,9����x�U��U�;��&�c%�8�9�;�W�&���o�5�n���ך��$��\\\'�r٭(]�Bgn]OD�\\0�Ā�lj3�?/�kYA�����F\n��=?�V�Y��T�l�|74���8��l�Pq�R������X��S��&8�RT�`�)��{\nl���\\0\Z�7�nK]6s�V�\\0?�r���\\\\\\0@=\rt�+��HB���s��\\\\�s�s�<Qr��zvД�=q֦�;�����p�Bp:`¬�\\0h����?��Of�{m�L�c�4��G5褃��ڸo\\\"�����d��|���rN8<Q[IjpG�`z�PO�A>�Q�sX\\\'PH��qI�җ����ӑ@<b���R��������D��s�\\0�������\\0��_���\\0�MAQ�@<��i��ޡV�b�L�1�i����U���Ԉ� ���h�s��i�* ��iGNM5ܖY��S�T\r�5\\\":�vzSD�K!��i���CdS�q�~��ɶ����o�q�\rC��q<Q��$���^G#8�\\0�ӝ�\\0\n��֥���߯�P�Nb{�Ρ\\\'-�x����(S�L�E`A���4��\\\'sR^��p)�\\\'�.qןƘH��\\\'��p�ޣ~�9�q���\\\'�qU{���<�\\0b\\\\��p1���W�ܝ�\r�rzצx�m�n	$r��\\0�W,<���5�8�7&��B���K;��5>��c�|Ա|�2H$�E5�ڳ�?��)����m��B����f��m���F3]����\\\\pY����)O�И�5\\\'9jd4�:�R3��:��ӌ�;��*��-�Q�ڴU�Ps�g�W���o�{�vش��F�U�e7�ɜ`���¾��_n�t������wݛ��@��\n覴d���Y��Rŀn\n�x���\\0���[��n�qdI��(����ָ�=Y�^ӗt���Z��\\\\����\\\'�tV���U=��=lX\\\'��*����֑��7q��$ש�/>��_&a�hP�!`N>������j�5�i��U�c��.�V�ӵr�m����#c���ӱ�cUꎘ�[$�7̣��J��Ѐ��+������\\0Ҧ�\\\"��Xc���k3\\\'�5	��}Oֺy�h�+���1O	��bF=�G���H���o\\\"�r�waU�68�5��\\0U@過k̼�����͓���J�w0�N#���-�5�#�kA�(��-Sj��R��t����z���p}O�cݸ+��Ҵ�NA��[��GJ$�y�\\0�g*��8dbH�_��S���ϐ�Y�z�����Ǚn�p�����j���:t�\\0�\r�E9�b����4��Gb��Jcgw��\\0)���y�\\\\�b�BAl��8=��^��$�>�0E��1<&���fx@���\\0?�z.��]������\ry����RA˨��ָw�4�OT�w���c��޲�\\0VE�nȮ��0�T�&�v��N�@5�\Z��֪@���p(�G;�<⢔���\\0\n�R���s�U��m��m��6I󷉜���~�#�G?�`�g��o5���U���k6�kцNsZD�!��m#?��Ո���08����j{A��8��ZT����ՙ�>@�v9�Bqۗ�\\0�WW�$��w�	�(�0c��q�ɮ�w\\\'�Q]�l���x4��◩��kF�E\\0���\\0:qG= <�\\\\�O�\\05��~���N|	�/�\\\\�\\0覭�I�X�4���p�s�\\0����8 ��n*E�3U���}�Px�Thu�-�	��)D�X�L����ڐ�l�3�RRt�08�\r��sT�H��Z�0+�M2Z,�ڜ�#��\\\\���z��N��:qO\r�Ң֔�:��$�7��H[\ny���5��1Hi���:P�g�S����BĜ�6h��5���s��$����4Hvឣ�M`�3�)#�ԣ��lXs����K�}M1zw�ܐ?� ��I�<~5B�dx��óq�̣���y��4�_Z���n̊?Z��\\\\� �c�]�_�&����I#��Uy/�����ˎ�8�ԯ3�p\r��#ny�J�9���ԜpO_��y��t1.6�Q��W�at[\\\\p�\\03SU芊��s��Of��CUO=��hZ\\\'��V+VS�ٷ�qVF3Ҫ�v�{zT峊��(��z\r�ȁ�\\0�׀\\\'�ν��(�棓���?������S��ֵ�|�t�=SD����{`V�!���fii�ol���L�W�&��o�����n�v��{%¯Z�V���9*���S^#�.M�,<� �;�ƽ�gڄ�\\0*����\\0J?*��t���\\0Z�?4�:��;|��D�r��]@`q�Z�<0�]�>�	���\\0\n�\\\"�5�VW��dm��A�S�[�\r��^++OL�kn�c��kC���!�j��\\0����%�\\0O�B�k�\\\'�+Ͼ#I�\\0�Rq�U��SաSZ���I|��)���ֽZ�2�?�y���Z�\\\\�*����r�����V�_�6z�+n��5�L�f8RGJp;G֠��?C6��X�o��kN��${V=ÒO9�e&oMy�\r\Z`dF��a���dh�FB��s����9�-��s�-��?ֺ�\nFD�=��c����\\0��ʵ��X��#�8�i����\\0��[���������4hS�ǭA)���n0A늯.6�u��+\Z�4K�\r�7_�+�Тw֡B��x�+��3�n��@\\\\�\\00�(����y��f����WH��i�\\0�p��[���1X�00CF=롶^���r=�~�~�`���+�O5(�����G��Q՛f�vr8���\\0����G�ex������e�����|�\\0�/-�\r��<|��zƲo�9�kKŲ�Ցs�a��X�\\0�g�DFq�=~���7;e�ѐ�)?�j�N]�h\\0�ޠ��u�1V�ec�F�\\\',1�o̅W�gоV\\\\uU�X������a��>��b�!���>ʿ�Z��>6q�{���p{\ZRp?�(�՞�d.;�zu���S7du9�`i	��ia�I�ϧj@���=+�d�\\0���\\\\���5mKz�<hG� ~!\nx�̹���jE-���0zԈ��@��j@GCҳ���,�^�@����O���\no�@f�=00��@��6y���LUp�\\0J�[#�Jd���t��p�J��8�����W�]u���X�#��r������z���}�ic�MD�2q�+7?<�k6�h�$s�DNiKp0i����T��+�����s�Z\\\\��=(䎿�!�֐�4/0�:�` ��w���ԑs(��Z���L�<q���ך����<g5�^9?� �3:�?C^W1��n\Z그��������{ME��$?u��Vp�3޴��u�\\0y�*�k���\\\\��\\\"���ֻ� ��ڎ>��5Ӑ��:v��\\0�]ӭ�\\0l^3�SSX��KVh��?�i[9��\\\"%��EjÌ*\\\"��\\\'dh���� nx����s�ʴZ=LO�������O���`����|c.�\r�\r���H���\\\'��9� ݝ��W��\r!��_�2�O�kb��g�b���g�`I��m�\\0ͻ��\\\'ڱղ:;N1�1Z!�_S���m�*�o���5�nq�eĀ)QҼ?�R�}�He^?�_�f�q��W�x�M�+�e����\\\\75fv�`l#�\\0��O?�t�C|�q\\\\ƈ-#<�F}9��LP�=�Z��c�h�-�@ U�*�k^���N�i�V�������;��2�\\0c���ӎ�\\0�ww-���^s�]֖j0|X��O�ҽ���8���n88`�I����^�p�#t�,��U`	b�錟�^��A����	�`gҫ\\\\��G�֥-�T�q��C!#.��<���i]���d�NOq�9�YI�1V�����:�T������ꫠ��\\\'\r7��a�+�|J�Kp�������C�Ц�b��\\\"�q����Ȋ��\\\\��f�b:~~�ޭ�Br0iA��b�c�%��jbA�C/���#��l�4F\\\'��\\0���?���P�>;��x9?�jx����gҌ~F��>��F�q�V8�a��n�ׅZ����z���)\\0Eo[/JɲL*�t��o�([��ؿ��9�!\\0u�1N�Y��L�>�����۬HQ�����c��7�Wxv|Y�G��?J�E�?x��C1�bQ����[%����<~�\\\'����6Up}q��P��.	��ִ��s�tL��/<��Z~�v�c�\\\\)�=k)����^շ�_Q@@�C\n�J�К�(;�����Ӹ9�p�c�a�+D�qYZ\\0?�1�9b��\\0?�Z��cS�g,vA��ڔ7n8��|Q�n ���l8�i�O\\\\HX�����@�GsM#�ROJL�P�r9�X�3�\\0��9���s�\\0����:��?\Zx��\r��\\0�MH����x$.Gj����o��k3�ŀy��p\\\'\\\'��6M8z��LD䎠{���<*\\0�҆�\\\'��\\\"}��\\0��Ea�U`�0GҥV��B�V�Y\r�9�H\\\'�J�6)���D���#�Ug���HX�*����Tɕ4��sQ�8ɥ/��Te��Q���L-��R�9�������L�~�����A���zR�9&���$�i��3�SI�8���\r,*H>�O����{o��<���Oc��\Z-���8����-��x@ ��^�����.x���\\0���ח>wZ��PFP݊�ӊ�������Dzt�W��V���sۭC��5�m�t�C�Hc\\0�����峀rE��a^w����\Z�-aQ��Q�Vsz$Z�lZ��Ҵb�A�+:�a�Ҍ�����+C9�a:+*<���+���?6�@�OZ��Nq��;js�2q�\\0��\\\'\r�~l+�t�at�\n0�+��k)OL�����\\0J�)��r2�9����Z���YC������\\0�i��B�t�C��J犼���b�Ղ�)��U#l�%|/=�Vɜ�]���\\0�<�1^%���\\0_2�>��#��K��\\\'�b�x�鳜�Hs�1����Wi��m#\\0��*� W[�&\\0$ry�GE%�T�ԁ�\n�,�+�j��\\\\�n�6�8P�R\\\\�<�j��Ui��8���\\\"�����5�����?���zco_ν���v�5��n�����|���P�$t�hk�\r�R0fx>�+`ק�ڀ�ȯ6�}��`[;P�x�O�F\r��J�љ�z��|���P���<U���7\n�8����˧���͕�c�5n���Pv�����T��<Gt��o5�;vҽF�Lv�����\\0A���������x��<zW���m�<D���(⺟�>�7w;��dҎ��Q�<���=k��\\\\��;Tr���<�j3�)\\\"NC����29f<���\\0�կ�Q8��H�o�۳쾟�!Y�9n-��o�φl��e�$��?�b��?\Z�§��2���v�6�<\Zցx�+2۰�zփ;j�\\\"��޹4���}E\\0��W��!9�ڹ_�4D\\\\�eN	���=+����ӭSw-.%?�R˧�#�5�Y���.zg�Z(s��~*-Q�jWDq;�⧶���W{#�1$v�?zWO����%$����W/��d��.��o�sWGs,G��p�T��l02T�͉����U=<l�-S�\\\'>�\rY��5����U�O�:zw�\\\'#�zaa��T2�w&����$u�����,<�8����#�i��=�(#�QH,8�+Ƅ�\\0�\r�}6��\\0E5l��SX�3 �#_��\\0۟�hc��Q��T�s���u���?�Y��d7=)������I�S�g��4ؚ\\\'\r��xpFz{Up��;p��~�&��R�U]��9s��9�x��qX���f�VȪ���t��Z4J�vZ���֤v#5]��S�%�Eq�)��?��������+7���������M\\\'�(@槩C�ph݊h?��!lv�枢��\\0֚X�ZC�8�0�G<\n)<�Z�\\0@j�%�qW��@��kH\\\"&�G�\\\"��I�{~�O��ף�Gl.�8̟�k��9��S�3�Հ *�l��a�c��S��M\r���cޱnۛC{�U��3�0$q��ֽ��D~�G�6��\\\'<����6�;A���R���Z�ܶ�Gӽ]C����P��*�n(ZȔ�Nj��e�N\Z�W$dw���c�zm�E\\\\��q64��T�<�*�r���������F\ZLJL���\\\\��K\\\\�G\\\\��G�6��z��	H��`b�+n+N�\\\\�\\0t\n݁����.�aQ���?�E<����4>s�*��O<��� ��oq^1�MM��i���^�y!T��F����QaIA��ֈ�����z��O�������A<\\08�CE�q�$������\\\"��wlU{\Z��P�*��`�Ny�K\\\'_J��h����s^q�Y3��G�ܑ��]�˂Ł縯8�k��k���\\0y�J~��\\0���#��x��J�r|����C\r����\n�%p��O���Hz�LƤm\\\"I_���;��}jy���Vt�\Z���QR��8⨻�9<zՙ�sTglD�=3XH��y���.��;r��kՉ!��(\\\'�+˭\\\\�\\0\\\'�#�#���\\\\4ώ2�?�m9{�\\\"m���5&p3ҡV�_֞���1ǩ8��F�s�K���S=N(����N�H���WG��[�C�ڀ�����r^;}ڴI��C#�$�a��M7xS�d�`���]�o��s�%�����py�8�B?*�l6�z���=)#��a��Ӹ�\n`��{Ӏ�8�;܁ň��o�n|�5��������y��y?ҭw+1�Hҥ�iMjxu�+�W�ޙ���ƭDJ���g�%�v�m��܏�^�ٲq�2=)�S�!-6I��������˖ٌ�5�+���Wy����n�e���԰���9�h{E�+k\n�\n���\\0TŲ��)���Ҍ������l)n8���=i��c����j]Ƈ�L9�(-���M&@�f��>Ԝ���X�����1�e����2G����>3ԯ	HJ��z;��O�ҡ�-�aFr�=\n�R��]�7�?3\\0*�<a��-��[����SG�n���y���I�yX��;��ŏ�k;Yc��~3�\\0.��&��z�1��nk�o\r�����s׭!�$��5Lh�>{�Ҥ�UC`COV�g�C�H\Z�Y�r1�O\r�O����)۸��=�ryK�^�����֪�c�����=psۚM��\n������U�sҩ,�����q�\Zd؝���5	|�Mb3���l�&�Hyq�S	�ڛ�g�l�4��;w5�ʷQ���^�n�n�i���i�H<g�h*����h$�7���4� w�0��F8��Mf��c>��1�T{��h�6MY�*�aG^*���ɫj�9���2����B�c���9b2zZ��!����6�}�Z��#v{z��m���/=j�1*�\\0{w�����Q&�7z3Y=\r������B�s��zU���\\\'$q�^_�ctjq�\n�\r�89�3oK��f�m����T�l\\0;���ыs(�P�g��ޤ����Y��rx���4�Nk�2gN�\\0g���aOJ�4fo�\\0ˑ[�7��kE;��\\0�\\\\��غ\\0�s���Q�\\\"e�sX���(`3Z�6�Zʶ]��=8�iD���\\0:KB&ZwU�\\\'=��K����R���┙1W+�Sl��n>X؏���G@n��㩯D�\\\'	�޹$�~�6ә��J|�r�>���ѺVh���Rx���]$�W;��[X��J����I��?��ή���9�UId�5� pz�VW��1ڔ�	��7�ןx���IX���.q�p�ޱ%�9�?�+�x��v���w?֡�N�KTv^X���.яP�Uיp1�:\Z��Bi����Qǧ���Gs���Z]7��U�;��ON��JW$c���ך�퓑��0�!���Y��yvw�x�U�c�����\Zm�g�nOn\rd�6�9-@լRL`b���?�z���^u�*A�>F�8�p\\\\}:נ#nR��ֵ��N��.)�\\0\nxoj�8\\0���9�k5�#�pjA���=}�h�XSD�y��ܷ�6����g�ף�:��2�M�Yrާ\r�\n�/�?��\r�B��?�\rz�èU|3��gs���O�]�����GszU��r*�9�1�\\\\S�P�FH�t���\r�F��Ӌֆ�Āי�G��&1.���}2��+�Kzu�+��0�ӓ9�ݢ�ݍ\\\'�4��<^���1�n�+J\\\"����6�5�\n���09#֯F�h$�v�R;���n�2���ƭc����י�v\\\\�A���z���Ů����ұ�/?ֺh�\\\'s��=[vO�N-�j-����Y©$��r7��.Ą��`�1 ��9�x�N�Y�����r3���J�u?�:��.#�\\0,b�~\\\'����CxP��z����?Nco������S�W���R�#J �����n���\\0Fю�Jpn	����ݝp��	��ސ8����#9�<qL,py�S��\\\"R�<��T�w?���p\r���	��r�=ꖪI�/p�����i_[!��s]_ w\\\"���o�P� �i�$g��[�js�R}�q�N�{U3\\\'8��\\\'�:��_A����C��⪇\\\'9�)��~��&�,o��Ǹ�����������FE4�����z���|�ǭL$��И�X.{�B�u��>���֕�$\\\'#��ނxȦ\\\'������I����֎��{�?����I��{Q��w��M�㯥AXRI�zc?����$S����oS�Ofq6\\0�Z�?橡�G�H_n=3Z�v2�8��f��I�B��A�]���ߩ���6?�\\\\nFzf�n�H��U�L�g�R�rjݣ�������sX=M�9�^F	�g�q�z��ʊ	�W�iD�l��sǽz��ҡ�k��$b<����S����I<� �g)�BD3ɖ9$�Fp��\\\'ҝ+���ڪH��u����*�/�Y	��������o����Z���6ke(V�9<��^�ڵ�2d^}y�5����p��Ү#aI���$�ާiv����I=52���&��9�I\\\'֒YG$\\0y�j�Hw{�I�i�|D����X\rаϦF+��y��|�x����c��\\\\�!W\\\'݅q:Sbs��HS���i${>��mm�9�JO슾�|�`�Vu�żY���S(�ҫc+�w���]�3�@d�rA�����@�*��^o�9Cx�P\\\'���=ȣ��\Z���+�u�d���\\0����>���E+\\\\��Gw�o��J�`y���D��F\n��&�4�\n��z�yN��C}�����;sP��f�[��j2�{���R�Wa�{�.��t�����\\\"�K���l���hs��*3�`?�J��ˎ���4���e�Us����6\\\"Lu�yn������*�לW�Fv��v涗?�.�z�皐����U��IZiU�V5+���g��ֱ�XU�q��;u�������==��n�I�I��[�Wd��i9�8ʽ���SD�Q�]���o��+��Y�x��R	��>��{o��>����s�o��|9��D�� ��U���t��c�ҧs�������\\0�1XR��$�\\0zW�|F�����O*�;|��z�y��x��Y������U�\ZL֖����:\Z����p�`�GJ�o�8��=aB�S���s*� ��=k�<)=��z[�2���������v��,�.X�v�obkl�)��Pz�)��1iu3�Q��zN�����\Z��\\0��W�=k��<S�j�R[��<����yɬ��3��Tp�z\Z┮�:�F0�!��H�:����N߭4���K�ג件���&�G��Q��_���j}�I�r:{R\\0�L��FM3y�#�sE�*�h<�������F�y��I��\Z�x��U5I	ү��\\0A4-��$�L��\\0�3�ւp0\\0��P+�Ñ��Ro�\\\'�޴o���ʁ�\\0�}i��h�\Z����~y�W�>�5�wԫ����+�ry�8����\\0SOW�N��֟5�%ĳ��8�ڔH\\0#��8�\\\\R�$�+���ք�RL��0�3TՏ89뚔>s�����M�Cw�&���Up��jM��١��&}� c�s�♑�� l��M�]	C`{z\ZP{��T%�S���ږ�\Z�_8\r�q�N�ߧ*0���ݑ�)�g�ޘI\\\'9ɤ$`g�4�V�bP��<���9��U}��d��5|����Wݫ���?�5r����ŷkg��뚭�U���݈u=F*�{��!?��i2�:\r��m���9�Nk��\\\"�G>��:!Ωh��u���[FGb3Q{h�]�%�d`�=A+�b7W��@_8�)��bߨ��%�JY������ w�w?�5\\\\�9pk6�j��9;5� ��L��5[�E�Y��d_�K�\r�(�Ġ�f���gZ��.H���tCH�;{��\\\'�	��ދ���J��\\0\\0����͒A\\\'�Vk`j�{�A>��@��n�*6mï���>��f�s+�2�A��:�~������bN#������p���o�kJa�\\\'��z��u��G��U�mP�Ϡ��_���eĀ1Px��j�?Q��Ҝ���n�bq�Nx�?|��O�\\0�g#��I`Z�k\r�\Z��.s�yn����@����z1ҽB�<g�q^K{!mJ�>i�l��ƴ����;H�O9]19fs�{�+M��{�Z��ӅУ�]�O`?�_y>�Ҧ{��\\\"�|��z�$x���R��\\0:7�Ϧ9���lH�v�Nk��X2� $uu����[l���K��`n ��~��\\0JQZ�rzTBb�\\0\\\'���5�(�\\\\����כ�SZ��7=�ע#nc>����Q*����q�}�֤ݴA�P0�y�L�b�LMhXS��֕�^}k&6��j��;�P�ҭ-Lg��\r�f�զ�ݾc�=��<\n�t(��6�����S-r��NI���<\\0���؏�@����m;�l���^��zT��A�i���Pr�pI^�\npm�{�%�8�ق�;�V���&�*g���7�\\0*�8�r�NR�n�Ҽ+�+%�֦�����������><��ܖh��GN��\\0\\\\�ܼ���Y��,z�NI�]e{����[�����X�]ɷ$6�<��QC��\\0�S�M4�*\\\'=i��A�j�u�G\\\\(%k��q�擜du>�Lc���w�����-�3�s�6�<TA�@��i��֒cp&�s��}OZ]����qQ�$�qQ����9	wzpy#4m�\\0�����84�S�O�Z7N��1��sҐ�o^���i<��i|�py��+�S����WR#�*�|��}�N��	�Uu7L�\\0�-ǧ�t	/u�)�!EH������Ud9�z�\nNp{U�����v�\Zg���1�FG���`���|�V�B�a�`��I�;��5\\\\t�:�z��Ȧ�̘0�S�v��q�T �r8�ۉ8`:b��rQh7rA��	y>�T?n�*��H�ԇ�:�jP��U���O�<>����=�h�<�H���2�`���=��U�D2R�qɣp��AQ���b�0\ny����IC�v�\\\'��}*��{��w�O��c����Jhn{�Y�������V�\Z�����K��Nr?�E��4���=����m?�	:����~�ֶ�LCk3�G\\\'ڱַ[#�����S��\\\"��7t6_�;]�����9\\0����=�2ڍ�H\\0y�\Z�a��n�+>��T]V ���]ޕY�<�v[��)��S�p�w�e¯^}\\0�gr���8�����������j�@����ݭA�8}���o�m^^N\\0Q�U��]^&=\\0o�����3-}�=,�\Z��d�9�Fg�98�j\\\"�\\0�ӥ`ݴ6�z��<G�j@��p=��$�lѸ��g����[�a���X����s�\\0���-\r}ne^�w����v�����1�5���\\0�BМ`N��n�~L����^g8�I\\\'*��B��rEB�d���Ls��Mf�cI�X/�\\\\�А��+=\\\\���89��gp#�In�\Z���I錊���k��o�1l�������	�@��x�2�9���t]�ކtַ=/@`���63��֓����hָ�*�{�Ʈ4��CX��Ե�б����I�x�T�灑�jP�>��d��J�|b����f�\\0�Z�\r�����B-�P�ٱ��j�Kfg����2p@r:t�H�!��k�������\\\\���va�t�\\0\Zsm�$����I��A��������+9-�܎;b��4 ��`��o�G�]��;~Jk:��a9�:܅<7�8<�i?�Z��0��V<J�b.����}��1�.r7���+�:����Z8�\\0���\\0�T��]͖���*:�\r+�簮�U�\\\"�܊�gVK��s�[X�d��#P3�8�cQ��(JX�elp퐿�k�����o6�W�L`3�T%�z��9Vm�T���S^�\\0_�u2~�r�q򢝪��k7z`Ur�`�SL�����k��֩$���9�\\\"�d$c�l�[������\\0�o�j(��{�ڂǿ�Us ���(~s����u�J$��@R�9�#58��㞴��r28��\\0קͣ\Z�rr�\\\'<�v��v���y���j[��Iw�I`q�ޚd\\0\\0ITd���i����JI���\\\'���zR��J�e��s�q�)��|�=h�3+ĆA%��\\0&��c�5\\\'w8=:��v8�$�@�31��}�����.�~忑�b����^�M�}�8ϔ���8��+Ųh܎�T����Dp�O����\\0)95��p�\\\'��\Z`s��`R�d��ޣN:O�+bQ#o�GC�G�J`e�9�c�@�N0N)�M��Z���O͖����?<�3�T;����*�rs����5\\\"��N�+�R+�銪���sR+�\\0}9�;^��z�հ;s�H#\\\"���@?�j��0F��>�n$�)��I�9�	��jC�}(Vbzz}isj;\\\"�p��҇\r�׿\\\"��n��n�\\\'����W�E�K�1��TnY���������JFn�>���Ű��h��0����S�M\\\'n9��ZI��X�E<-�	���� pI�Q�sJ_9#�{�h�����x�Y��󌀿��r�Z� �mN#��\\0�Ed�h��H�)H*{��:� �{S%#�:\\\\��8.[�kh�\Z����8��m0���q��G^x�\ru��\\0.O>���~k�ZmX�a~�>�jM�u5VRr\\0�zT��wc�-.[B�/$� �r�d�q���PHm���3Q�T\r�(���e�q��oծy�­�e�j��\\0±��Ӛ��uI�������\\0��I\n�����������о	�?JM�\\0.s�uN{u�N���\nFI^:W-��e����r1K��}jܒ	��Hq\\\'�wv�40�X�kOuc���щ�Ҵ�*�\\0:���պrB�#�?�j���u[\\\\�\nX�	����9�j�s�\\0��i�<t��7�8���I�X��o�eX��}:V����q�x�t|����zՍ��\\0�i�̪�\\\"[ـ���\\0#��h�.{\\0�^���M�q�7_�My����SZ)j̢���:c�����8�ɫ&M��C\n�`�t�W���L��>���s��h�Kj�8=*�?8�5@9%rG2*ep~b{qI;�Q.8�W�\\\'{�\\\'���-t��P@��K�rn��3�B�L���i�Ȳ��>x|�����1\\\\q���}+������L�t{����sD�R�q\\\\�Jz�1�U:��I�3QMv����w����ɛ�j�����tu�:�����o�$,0�9,=�d-����Zk6��S:�X�h�vHv.T\\0�&���Q;�Q�J�<���6���QIX�dݒ;\Zic�G�qߚB�xgҞ��j�B_3��=qF���N\rB��z��npJ/�v�L��;\ZirG�j \\0���I�\\0>��\\0�F	=�I�SAbB�����\\\\���#�W߂y�\\0�Ry��<���耜>x<:B��;\Z�p���H_8�{�Ty�NX��ǭ���#8_q.��4���&�Z��вd,A8瞝M0�\\\\������ƛ��c��it`���{S��\\0s�ޡ-�GqQ�3�s�%���г��\\0	��Ґ:����py}h\r��\n9�Қ�^a{2}�\\\'\\\'��U�7\\0s��?�4����EzA���o�N/T����Ѹ�?Q��_\nH�9�h��j�8�G8��q5mI�F��n<i$q��E�@��M��-I�\\0#��t�r�0����.	�W����ڠ�x�T��V���9�����#<�T�I�ҕX���9�қ��%.ŝ�#�ni�\\\'�s��X��:w�V�<u�;\nȔ\\\\�r2:T�H���*�S��d����9���N�vz���x#҃ W9\\0@jv�q�p^	��T�i�Ps�O�)��)`���	 u�Lv\\0d�Q�Km���^s�{u=iRUe�\\0hu犩b7dڦ��2T|����SZ��Ĥ�q�8��\nO��@dqYp����Ge�\nn��r�,\\0�:Q�\\0gp=F���;���9���+^ �789�Fs�Ȭ����ڴ�|ï�V}l�9��Q�y��j���1�����X�UN�rz;m����J�F�<u�q��jjuSس2�9�\\\"���=8�֚X�8���B\\0������[]��`O$u��rA�*��<�v���	\\\\�=jg�q�8�A��\\\' :����~g���+*���S���u��\\\\9$�����sCZ�O���=0i��A��֫� �2�8�\\0>���<�;c޹ևf�� ��s�S��#>�<T/&[=��\\\"�#�4Y���E��`s�sL��mN��z�\\0�Lכ~�9�:M���$~U�V�9��ñY\\0�<��ϷX8V�?�;x�T�~lW?C���,�s�@ZRK�_A�̲#�qϵK4�OS�~u��y�i��\\0��z����>C��:��y��wl�\\\\q�W1�84��V;�/��*�S��ғ���:\n�����FxE��(w��\\\'\\\'�sY���7IY\\\\�X�9#>�T�ܐOl皨\\\\�J��?�ކv\rׯJZ\\\"�ؾ�`��}k�נ��XA\Z3\Z�Tq����v=Ig�4�/�*�tA���e��6�6�#�9��n��U�H��9=h��Z�O��R\\\'2��Oz`s��z�P�`�*=��#��jkbr�9_JR�.3�{Ub�g�>�#�94��K� ��/�9�P�#9��g�A��)%��d����ϧ4�̧����$={SY��z�S��i�96)��y=��2I#�t�d;z���)���蕛�rOƓy����\\\"�d�{\nn�:c��{��%��{���dc9�֣ߞ���is��=j��-�\\\'�y\\\'�\\\\���*=ā�ӌP���M�Եu� ��)=O�5�\\\'ҝ�8�(��\Z�d��O���6��\\0������7��q��A�I��	�ǡ��Қ�0O4Ԑ�U$�{�d���4�O�SF@�bI鞔�\Z\\\\���L�{�7LM����O9$�����D}�a��o�M+�)ߕ�#���z�і$��zz�D~GP�����9�[$p�\\\"��`rA�&�-��QI�m\\0���3LbG�\n�[�,���h�`�ZEv�~>����ځ�L���A�8�)��ډ1�𧃅c��r{Ԩ��X�rN\Z]�v:du�n�zsN��=�pl����\\\'�T��pz櫣�y\\\"�W�#q��k#2@��$��)۱���(z�{Ӂ98���IX~ﻍ��w���1�x�( \\09�ޔ0�\n�g�Fj�ԑ��6�\\0\\0��\\0v���``����HUzu��	�-�ےI犎BUNh���r{R��p:������rzg��^}�j�x��ǵ0��x�Z��L�g#��ڜ�9����UgP9�\\\'<��֫V�\rY�&ih�#WG`/���S�;�L�Y�H�=:�}�w��Mt!��G\\\\Vr���lZg$���4;��G�z��p^�)l󑎟�\\\'�ԻX<��n2O�}j)[��3֑UQ��b[��ҙ#�9#�ơ���r����$���xyO�#�ֱ�ɭ�	��dg����J������H��������u���mbA�M�=NEs�v\\\\��9=�����@�s��J\\\\������v`�;�����tS�@r8SE���;��$��T�u��ә$\\\\��:�������~��u7P�8sϷ֜\\\\\\09�����1M.q�9�ce���ݚ�>��8��;��\r� s�TE�۴�i�c�s�c�j��@�ɰ�X���9$��V$\Zd�N���V��I�(n��٩���A�?5�O�� ?u@\\0�8�7��V,\\0�=(z���M��H��`�7OzkHO��A�\\0���(u9$�ϵ$�������K��x�9�Uě�A��K��\\0��f�����R�\ZBN23�Z��=��޴�a\\\'�x��)>���q۹���$��֘X�qڡݹH9�4�&Ȕ�\r�����$dg=je��H[���u�K]	n�Rr�9����s��Z����)7eHS҈��DŰpZ@�$�0zz�9\\\'�_�x���̐��\nB�#za}ð�E\\0�{UYX���x��4��:Sc�4����*Z�I�?�J\\\\�\\0㯽G� �ۃHO�^)�����z��(`}��3���;~H�敊Mn�K\\0��2@�������h\r��r3E������c�Q��s�L$��\\\"����jV�H���0s@`�5<:�Ný���{ZR�w�L@�RG\\\'���iؓ9c��j���u���杼FO���(��7?�8�Q2~��8���S�c���|UTnj�`����o�-��\\0�����|ޞ�n29�)p@^���V����y`��*�N?Ơ.8�1֜ �r-E�� �@8�\\\"����=j �1$7��\\0�A��\\\'�H\\0�S����W8Ϡ\\\'����<��N-�@��-����dzv��NH�UX�<T���с�ЛܖX���:sN8��&�\r�����dvϵ	5��a��T99�1+�$O�Ji`WwB=��9$�@�ޝ�ԛ�P�I�<��qI�y�/� �\\0J�X��)�vI=�U���<�Nx�Hp@��5c��g�\\0�Al@���&�հ$�p�!l�O s�L�ps��L-�����WQY��&�rz�o�PT��7����W�9���IE4t�nϲ�q�+p8-�9�;��\r5�\\\\�q�kQ���^~���ΚO�47c��ޔHH\\\'�����#�ҙ�;0�z��֦��UFH�j	.8e\\\'��#�y�Ӳ�3�Cf��h�]:V<��_����[�qRs���^)~`8?�m�8x�RC+�=hw������󎘤\\\'i�³6J����ۥ8789�|�Y_�8�(��QOb��r��܃ڛ��H�;\n�~q��8#�8�&�n[�(pz�x�}�z�E��8�ܓ�GAu&�\\099�=�Ð@�#�@�&�VN88�膵���zzR��1ޚB�)��q�\\\'��(�����\\0Z���ޢ\\08�K�2zT�F�	��\\0*n}�i�\\0��{�H[�z\Za/�)��P�LR�����IlI�\\0���zP�F~�l�����7y	�1\\\\��)Б�)��q��)��:��\\\\�����Kђ��3��R1��;�<pz�\\\'��v�O1)��ϵ�\\0f�\r�dr>��9$�S�&���d��)b@�S�Q�8�Ґ6��ɤ�Г9$��@~�\\0�P�\\\'�z3�8#Ҫ��[b`Ğ)s�@8�B�zFxFjl>mIws�4������?�h,\\0�NO�5�h;#�(-�{��-Ӟ��sؚJ�WKB@�l\Z	 t���1Q��.n��&��r���\\0}3�֔�q�L,P�F��	�����~��y#ڂ���G-�v?vs���n�0:�j-�q��4��ZC������gצ*���G�<~�r:��j9�a���<~QZ�).V38=���H�][�94�s�L�Zlr.Ő�8�����}zUp�=���q�=�hZ��ww��Zr��}�v$w��\\\\�ԶE)]���E `I�apq�i�+��HO`i�\\\'�gvӞ4�p�I>�����pT�׭1���g5)i�Z�%V��g&��	\\0�u�|�#�y8��u>NO �Un�JF��	<g��:Ȼ�`c�e����Z}�̊���Z9e���}��S���>�T3��\\0(�͕�\\0��%k~�|�{Z�p8��ɪ�\\\\m �#ң�we�T�{�~�ֈ��/�!z�P@95U&ݖ�����\r�n��N�c��7�@<SK��G��Q����)�TP��\Z4ܓ��9���\\0��΢�2B�\\\\HGq�ԋl�A\\\'8�Z�#�S���T���5b;#���=��+��lS��^>����tB���F���GBs֞H�\r&�zSN�\\0�+>f�:TtHz���ᑑQ����8O\\\\�@*K�w�/{S��\\\'�`I���S�|ؤ���U�$,A\\\'��zMۏ�#`�n��F[�2z�n�6����Ns�Q䜌�9��\\\'�\\0�Q9���z��܎����ߧSx�R�����N���<s@|��������ߧ�M�+��Ğ���G�<�;�r)ܜ���C�7��q�q`�o �&�����G|Qg�Ԯ�M�����D�A8����RԔt��)#��D�$t��rr����%-�3�a\\\'���g� ����$����N{�y��\\0~T�󊌷\\\\�5J�9Y-�X�;t��v�OJ����O���ڤ��}	�&ᓃ�g����Ta�;�R�sE�{����a�3��=*,�H>ԅ���j�\r���iC��P�9�c���\nV�I�sI�Xr�\\\\�	�F��\nr:А�MX��\\\\��j�*.��N=zv4�%�! �1�Rt�9�L�\\0�\r��n���nݎ9�L%{g�A#9���%���0y搹 p=��9��h-���(\Z}��8�Ͻ)n����y�4����ޕ��?q����ȥ���x�Unߍ��i���ZRt������� ���ܗ8<�4���:j=��)=��+��s�Q֣���N��4�)�������ȃu���֣�4)�qZ�r)2�|��Ӄ�s�=*-��w�<��*l]�ɋ�r\\0�Җ�\\0~�\\\'�$S��������D��W#��J��\\0�U\\\\�2����P�kTj��#�r)�胀����j���2pZxn�u�J���p1�c<S���AT�ƤǭR��+��ځ*~���\\0I��TKA����ϯ_SM�y�/}�n�sJnp��ہTC|�(߀3�撈��`:̬7�@\\\'i��|ݻL�֩���������\\\'�i�����z[���0FT��P�Ȩ��*@�Z��2��Z�w,�u�\\\'J��a���j>�N�==�.0��|��Lӆ���$u��\nx�N9�m�%bBN3�7�q����GnqH�U�����iq��̞��R����+˨���)A#��\\0\n��94g�SE�);h<r;Ӄzg�Q�Fq�����&H�0#�k�����q�!mǦ=�Hw�l�Y�����`��%s7!����{�{��<҆��:�4�Д;g��N�$\n�7R���-\Z&JIlۊ`�?ɦ�ҁ�1Hl�\ZQ���y�0H��g?R}iz�(f���\r��Qp1OG�V{�-�c9>����O_�F[ \\0E47�ǯ4�q�\\\\�wl�i���SKt�L�HXG�M+��qb��L-���h\\\'�x���d�g�bd��T�?:B��y�s���ސ����C������*2x$PNF95H��;wbz����֚[����������K��EG�ק֍� �Zv���>����׵&�{f�zd�,\\\'�\\\\�(9�zSw�d\ZP��0ր����4��Êal���@l�==��`�(�ǌ�������Ozn���J�Lyn{f��i	��i��qM�M�\\\'� �s�Rr�;�\Z=���=��:�hl��JQ�zԍ1��`sH{�al�R���?Q��<u�v3�M��}\r&y$��䄒A�2C����M  z�)$ �����!���J�=�������+Fs&J8�J��E���Ӄc�>��I�f��i��\\0NN*,��Nݜ���5���z�9���8�H�7u��P������Ջ(r{T������p\\\'�S^]�pN~��+�]�� �I8��j�_*�s����J�	TocJ;Ɩ&GPO���9 v���*O,�b1R�6���Ɠ>���Wy�V�&��Uò�]O�;�w�x�\Z�U�ؔ��s�ڢ-��ʛ�0sA������q��h$���\\0Sϭ8����u4H@߭I�O\\0\\0^}(��?�&˵�	�(ݏZnF84c�g�E�=(��SH<g��.�\\\"�1�ϵ)l�u��L$t��pO_J���f�q֚Gz3����9O9�L$��@\\09��L�=s�����7q�3�hHnB�~�ԥ�㚍�Q���1����3��@�q��Ӕ�S1���q�i��g{�[�M\Z�Z)�ZPq����y����]�3���Q����L\\\'�����+q�FO8�n�y၌zR��N9�a��b\\\\�A�Ȧ��y�3wƔM+��pb>Py��H\\\'�3q���\r�@\\\\Ry�:z�I�J���\\0�I�pO�qTD�����M$�8�\\\'ӯ�4�9?�	ؤ���\\0�OJny����U=I���b�x4��i���{\nOn���&��y^?ZL�#�h���=(��M ��q@\\\\vsɠ`�ӌdR���ɥ��7w_�@9>Ԃ��Թ��L���@9S`�?9�})71<\ZBN���׊Vc��M #4��r\nL���\r���@n9⛜�1E��>��8����4���.�����<�R�ץPR�8��w��>[sڌ��)�ҁ7���','public/img/upload/thumbs/dca564f2439eb8e93047d0643ae3bcc1.jpg','DJJSDKJ','LKASJDASLKDJ','098980','089098',88080890.00,8098098.00,'AJSHAKSHJD','S','CKCMS','9018382908',23,108,0,'LASJDLASKJD','LJLJK'),(2,'1234','JPSE','LLLL','BERBAL','BEN','JPSELLLLBERBALBEN','����\\0JFIF\\0\\0\\0\\0\\0\\0��\\0>CREATOR: gd-jpeg v1.0 (using IJG JPEG v62), default quality\n��\\0C\\0		\n\r\Z\Z $.\\\' \\\",#(7),01444\\\'9=82<.342��\\0C			\r\r2!!22222222222222222222222222222222222222222222222222��\\0��\\\"\\0��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0	\n��\\0�\\0\\0\\0}\\0!1AQa\\\"q2���#B��R��$3br�	\n\Z%&\\\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������\\0\\0\\0\\0\\0\\0\\0\\0	\n��\\0�\\0\\0w\\0!1AQaq\\\"2�B����	#3R�br�\n$4�%�\Z&\\\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������\\0\\0\\0?\\0��c��oϯ�8wV9ؠ�\n~)��3�u����/�JʝO�����O�����)G����Aӽ)���N����!�Zx=)8���`\\0ϭ<�i�� �8�H���P01� �4��@��9���AJ��H��֔	�����i��!ÑK��H:g�Q��H��M(���\\\'�KA�A��ڜ �N�B��.)G�ҹIF1�pQ�NH�G\\\\v�����o ��GjQ�{Ԛ��4�\\\"����J�r�>���N=i�cp1�Z\\\\R�1�KAV\Z\\0����� ����@XLR�E\n(��\n(��\n(��\nNԴPEPފ(���jZ;�&&8���R�@Xim��b�a�I\\0f����h��KW��&1O�I�.�H�J@�4��(�N��\ZzqH9�Zx�<(�� ��N ������Q�x\\0с�J~q� <�..T0�iiv�ҙ6ms�9�o�I�\\0`�����c�X9?�o�I�\\0`����Z���)ï�G�H?Z��A�j`�:�p��֘?�8�v�L^��J�A��&�8����ҁ�y��Pj�@��v��3�iA4	�ϦiA�H	�zPh��8d\r4w�v���Қ$Px�(8�֛�\rpZ}� 9�ҝLRF\\\"�:u���x9�R�|SGN��J8d}\r;�⓽��H�s�P)?�Z_ƐjP=h�=��8�����9��Z�=i@4��i�g��J9�҃�A�ޑC���N):ӗ�&i��.~��֜z��h���8q֙ޞ9����ER4\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\nCҖ��3ޖ�(\r(��&){QE\\0&)�:�ژ4!�JQF=�\\0��Gu��⛞h%���94�Q�b��\\0�?�&�u�\\0����J��r������W_�)��!����\no��8�☘�H�\r��~T��H8l���!o�\\\"��������L�O��4�c���J:q֘O8���9���jQ׎�њp��($^�)}?`R�\\\"X�iƐ��Z�\\\'&�0��4S����\\\\~r	��4�s�����\r8\nooz\\\\�1XU<�jx�S�OZ��c8�!iy����)\\0�J\\0��?\nCӯ4��sڗ��B���яJ\\\\�-_Z1�h$�jw&�)1F>��������H����J84�v��#���N�����8R- ��)QE\\0QE\\0QE\\0QE\\0QE\\0QE\\0QE\\0QE\\0QE\\0QE\\0QE\\0QE\\0QE\\0\Z(��JS@����ڝ�N�	�׭��#�^���O֐�\\\\\Zo�36!��zP(#�d� ��q��\\0ă��W_�)����\\0����$�\\0�U���j��T���Q�s���c�Bw�x���曚\\\\�HLQ�N��\r4��@�|��w�Ӳ1��MjH��QMϧ��OҘ�ޗ98��\\\"���.\\\"^�x����yӅ4!�H3GZbc��ӻ��`<�Ҕ{���D��8}���^��g�w��?�<��i� q�P!��J{�GQ�=jDޗRv��C@\r.;R��P48R�u��֑HwJQ�H;R���&�N�h�/cRZ�\\0��Rt�O8�#E���J);�4���QE\\\"��(��(��(��(��(��(��(��(��(��(�\\\"��E8�@�4ǭ:��-\\0��)�\\\\P�-&4g8�@\\\\}Q@õ4����A,LqA4��!��{�M\\\"�s@\\\\昞�O�)��&=3L�	�9�<s�\\0$�ğ�\n��\\0�M]�pk�������*��\\0E5 [������~U\\\'=)���rG�9�$��fr84�y�Z.H�sߚP	���:S�5�����F8�Ӈ_jh�)<c4��9��$u���\r1	�Z�E7#�����=	�i��)�����c����L�:S��Xv�Ӈ���i����޽�/ ri����9���R!��T\\\\,<r8��ri��@���Sd��\\0��y���j@Q�P(J\\\\s�u�});<�H�p�sH0iI��f�p��#�x�ץ#H���i�c�h�;<��f��p��IҖ��Q@(��(��(��(��(��(��(��(��(��(��(��(��(�jL�R�h�OQ�G��\\0:P\r!�#<R��4�ILM	�P}��h��BPph<P:�P/ <Q�J@��3@4\\0W;㱏��$�\\0�U���j賃�W=��\\\'�$�\\0�U���jd�Y`Ҋ����$��N)\\\\�2��cq�Hj9Q�Rg?֫�$���8�u�vs��$��Ozg^:S�PH���ҎO>��p4Ї�zP�S@�[�P��jB�i�\\0���֘>s���1�Q�����4\\\"@A�4�ppj����c\\\"��6x��`���<��b@ޙ��P������H���y�hy�i��5L>#�J\\\'\\0�;��C����櫋��\\\\�v��n�ց4J=�j0�(�s�HqJ8�یS�R)\n1�Q���-I�Zp�M})ۍ&i�pE0���sR͢(�R\nE�EP0��(\\0��(\\0��(\\0��(\\0��(\\0��J\\0Z(��\n(��\n(��\n(��\n@z��(�7�I�z�g�2��\\\\��Fi��d�h�s�4t��A�Q`��A��P3�i\\\\r8�{���u<�j��g�N�QM�wq�Z�p\\\'-�=�i���b�\r��(�<Rv�ph�y��C�-��?�u�\\0���\\\\��O�[����W_�)��V`�?��y��@��?`b�b��1E��@#�{T�#`��Q�#�?*r!#�6%�L��;�p`i�O<R��)݃�qTKO��?\\\\T�BW8��\\0<�ҁ�����C����	U�gݼҔF\\0Ǿ)߰���zԅ�����@c$�\Zk6Fi!zy��{zӃ񎦢�F:\nR�)\\0�4�\\\"m�`c����%Oc�>c���H�6	�1K�p ��Cu�\r0��4\\\\v.o�����3���?YfVQߚg�̧�4��\\\\���@rO�x�<��$$c��������\Z��3~��\\0W\\\'�Oh#����fR����U�g`Ă��W�x��=���0\\0ޕQz�n�����-ypǧ2��\\0:q�&�S�˕��V��`���$��t��\\\'8R�㜞k�S>Tw:w��� ����;��s^��M�\r��.2dW��ѳ�1���+�|- �� @He�\rg7vZ�R=L7�����:���EX��{c�gc+X��R��晸c9���\r+\rJĀ��S�*}���Ƒ�(��\\\"�V�?�ҡ�1z��)\ZQ@Q@Q@Q@Q@Q@Q@Q@Q@)3���\\0�`f�Fr����\\\\�d�Smը�J�%�3I�zT;�:���;\\\"=��|�z҉3���ލ���^�E����1�@ޞ�(�N�٧�TJ��R�,@�l��&�A��\\0j�dOĊx�`sK���!�y�g#�@�GZQHwO`>���)\\0�h�\\0���7��iy�jbj�s�PO8���4c\\\'�	�_�\\\\�\\0������J���SV���<r?������W_�)�+�Ύ{ӻTI뜊�\Zh͒ȧdc�֣\Z�@�M��4�q֘;Q���N�`���ϩ���1��ׯ<�E�;9��TA���.��RpFx�0���@9�x<���\r뚓4!\\04�R�Mv�ރ\Z�򑚀�ҕ�=�2j�H4���L��)7g�rjz�a��APJz��v�YؒOQښ]��V����<H�ڍ���v\\0W��z�W�믾�r$�~bG�oOG���F�ߜ��\r��c�D[wg�r6A�kf���\\\'�5��	8\\\'?A]��U��a�CI��<\\\"��3d������W[����,���ݕ}�z�F�T��j����pj�̬́������nA4��.�V�Fj@i6!��qN\\0�;��#HURZ�nہLR1��jY��S�:�})j\rН�h�����\\0QE\\0QE\\0QE\\0QE\\0QE\\0QE\\\'n(\\0��\\0)���O�Lq��j��g6�\\\'������k�\\\\�T�&��F˜�\rh��{���\\0�B�>��)&��͌�\Z�+�[�y횇\\\"�3P]��Pn��d�$�:s�O1�A��s��7�K��~��^E�Ku�u\\\"�6Nh�Dt+r;���N\rr���\\\'ӭ[���I\\0�c�\\\'��\\\\ewc9S��M�*�O\\0d׈��^�Ե,���\\\'ʌ�W<q�dת�W�=ӄ!��#��S^�ɹB�\\0�kvW!&�i:���MZe �#�\Z�\n_��}OCS�r�v�y�wl9S���\\0�0L�;���.p�{N��ji6�\\\'u���޾x�pps^��m���S�9�Ѐj*���#�I4u�������{Ҍ��k�n���as��(�:�ch��ø��`x��I��}����ռ�`x��\\0ſ�&?�u�\\0����9[x�8�$�sR�+�r;�LSש�O�\\\"6:��ޜwg �0z#�SR\\\'b�9#�ԡ�Ө����*PI�T����n�\ZR��� �Ҏ�sA,��O4���@r(�P��Q�t�i��֎8斢��@M82�L�M�S��<�\rE#�G�N�j���>��$)q�9���Nj#�$�PWp<�\Z�q#�! ����\\0�Nh*O�z��;������PB縧N�*�8&����@�֭>�k��Ҽ�W`�2�9i����M�Rnʒ3�5�z�̌�$��$z淣�\\\"E\\\"@nH҅#\\0����Qd�$���S���Ǩ��z	��u~��e�?p�x�\\0�U6�/-���;.�e\\\\���V�-�%�+��b��23X��zI�69n��[x�[���S����ڴ����D���u�U�oF�qJ6��8�k�%Э�)�6�m��v�R?�k[|R�r�kyS\\\'�?ʼ�\\\"1�\r%���\r]P8#�-~\\\"h��̑O�\\\'�V�,��8[��0ʹ����s�p:y�Fx�!�\\\'��K�,=���:������q��Wt�1_1���� ���	���ڄ;�\\\\̸�da�jy\\\"ƣ%����O\\\"�����^2��K��͟�Wb����rn{2��\\\'Ite)�=�z�Ӳz�X�)jk��������_���K8��P�g���R�.ǮQ^a�X���9�Y?����O�e�eQ��i:2�]�A��h�%�M��ܮ��ը�!h����(�(h�3��u:�+�_hdo\\0�b��S��4I:_���R�S�?m~��Oi�ubO�S����~K�� �\\0\Z\\\\��?kJ��5+|dO�0��X�*�����b\\\\�������Gڐ����=�K$Ѹz�Sp�wΛ��)��v,3�N�j�A�C��%���Ω+�9K\\\'_J�+��6K�9��U��V.W*۟^j\\\'<���P\Z�u]�#%׏z��вN4�a��\\\'�m��\\0����\\\\T�٧޺����Ю\r\Z�\\0jB�VI֬Td�E�\\0}������?��ِ�k>�1�Z6�=�\\\\�x�L�Q�֜3�����QE>���[S��cRZhlx��>�|\r�^�����^!��I���t�F�_�\r\\\\��[_��r�E���<�����¿\\\'r�$s��A�ve�ؖ��9>���89��)# t8��%�$����Ҹ�fiZ\r�(#9==kۼ3��\\\"m�O�W�؜�F��;u�x�ԥ�S���Q~��n��\Zd�U�CN�)H�r\\\\���4HC�׵)���Џ�SN�)@���HA����\\0¿�\\\'�����SV�9�����$9�\\0�U���jCI�呹�R���� l})\\\\v$����B�H�g�sHz��SR�\\0UV��S+ӹ-��v}\rD	ɧg�5D����4n�������@H������sJ&�X�q������4��³`Ur�4�=*rsI�*>b�8���I�J>�9<S[���M~:�b	1�qQ��{��\\\\�=�D��	�*�v�z����b@�O��W�}��{$�J�}Ld(,��:ږ����O͓�Ҍ79�ǯ_��0H2H=}�9I���=����_+mv�m+	��XJ��f\\\'\\0���Z��^0|���?h���N��ӼZD5��������\\0*��8$u&��O ;ӳ� \nZ�v�q�y��`��i��Q�ۥ(a��s��S��v�$����\\0��x�L����FpI �� ��V��%�xc��߽<1��Qn���^�>�hL�A8����2�r�:����~���1�?���[��%s���A�����\\0�\\0�JX���t�f��S�jp�9�>�����@{sJ��in��8�c�����sLH<��(�{�Z�%29#�9�x�AǘƠd��A߷l������ǒ�:\nx��󑞼UR�H��Ѹv846��.�g�ЁҘonq�M��=���zJp@\\\'ץ;���ſ�+��,����\Z��g�&]ǩ�sTK(��F�H���Л��zN�����Pz�9�J5�]P�\\0���v_޷��g\\\\�G��4�O ����&hwX*A�nH<`HƢ:b�b?�b�Sc��LTE�=��OF��b��֦�����o�*5K�c�َ9˓��U=\\0��E0�\\\\g��Tۺ2H����ipW�i��r2[w�GJ��cЏl�<SA\\\\g#5N,OR�^����1�.c�*?�֘��H\\\'n:{���T�<�b�����o�cB��A�F#�;�晐	�x�q�N�3nb�+MI���s+`c��Q�\\0��J[��\\\'� ��=����5�|�dN	��{��-�7��9���)%a���<�۫}�p����f�:Œ�z\Z���g�H�Kg�g�El�!����\\0>�aH8�A6�\r/翄IuǯZ�m7؁l�k�|3˯٧����޽�NmW���j��SH�;�/c\r)���z=k���8�!\\\'\\\"�F(=1H}��qI�w�����?�O�I�\\0`���ռt��?�\\0������SP	�@1��j@܏J��p)�z�w��ŀ�\nP��\\0,�;�����H,XV�<T��9�)��F�S�6,�����\Z�?�\\0��[֚%��ߥ 9=*=Ǌ\\\\��Q�j0�Z]��(ozL��Lݏ��1�=�5�\\\'ҚORڢ�<QIF{�H���N<皅��\\\'�А�I����A#p�����Z�J����pxC���5V���\\\'�ҽSQp,g\\\'�F�<��+��	`Q��q�Z�܉n��\\0I�#� ���H�������ܮ	<�_µ��n6��I�G�_pc g��휑��VŖWE���s�?*ăs҄��&���s�?�<(l(���c �9$c߃Jڎ/� l���q�:� ןz���� v�(\\\'�X��染�Q�<��x�H��ۡ�LS�NAȥ��\\\'o�-\n^z�@���ޝ��{�a�������\\0֠���NLH�8\\0`z��CF5���y�)��es�jJ^dà<�A~9�����\\0��P�����+{u>#�5b98<�4��c��5����0a��asQ��#���\\0(9ɩhi��3��ޚ\\\\`��b2s�������J�W�A�q�\\0��G=y�W$�H���\\0\n�a��21�Jr�s���[�~�Ь�:�����FN׊np\\0\\0����N9�l����C��@��r��>�@�c��lR��rKg�J����ߵ	;����q�*#ۜ:���A�:SK�2H�1�i�dZڌ��8�8���ZR�r4�I\\\'<�_(iap�٦��x��(n��4��s�Ӡ�T_[XVOqU������S���9�jG\\\\D�3��=*>W�����a|UNG9�Q�$��=���K۶�9����\r�9��M=nB]ݺq�9��1<0};S_�J���W�-ۭ4��M>���^548j3�_�~�Y�n9��S���\\\\pryք�N ֪�\Z�h#������Xq�Z�n���\\0��5,a�#���o@�l��ۼC\n~P[��5��xd��g�5�\\0��\\\'���X�׶YZŏ��U��\\\"cMޫ,�RqK�)rB��N:�FM\\0�ax���ڂA<P+�Z�p?������SWBx��\\0c��\\0�.��\\0E5�[8�Z�6EUV�5*�8�.uX�q�zS��x�Ct��Ȧ���Ɂ�֥F��\\0Z���5\\\"0�\\0:,K.�S��U���HoZ����.A��u�S���p�h�)����p�	���Al��	�\ZN{~T�Hj�)Z�kas�Hzq��M��HN=>�zB~cQHO\\0c�4�Q����B�b7f�*	Qӑ�T���TNz�7C356o컢F��?^[�9i��QA$�O��Q��4��1�����y>��݂[�F{g�襳3����Ny}S�4���q�����NYs��S{�7VFM\n��2��-��;��5��`�2Ib�Ph�x��Y���5Qw�}����c$�q�s����\\\\�����m\r�.���֟2k�z�#�2=�i��b}k@�C;Z6�N2FJk蚊��bG}����_�)��8�`f�	��Vd��В��(�v���a!��M+yt*�09ϵ8�r8�H	bN^�cc�5[�RH�p(`	�3M��2��u柷v09�i[�-�>�G�o�&6�zp�x₹��T�n�5>�GC�8 l�r�qQ� `�z��(�0��=��\Z��)9�Fz�8!{���\\0;pqJ>��$�56k+\r�{ԣ?6�{SF:����$�{��i�X���Hzߝ!�a��Fq�=�.��GU�y�)I����jB۔1�מ��>��j+t�sϽ5��_Ojx�dq��	VP	�8\\\"���;!�q��A9�A\\0�J2��L���G�>���ڈ��\\0��둚i`p�}�-���G��w�zQk�\\\'��܃�FcLm�rOl���pX���p?JC�\\09�T�[��|��;���8��0~l�:�)8�G�;H�x�=d�J��|��?��B�0\r�O��$�{��ԕ�ʒ�����=����2����⓿A���=9�N˩;�(b[���M$`��@$Z	��\\0}�\Zw�5�T��a��f+u \\0�樾u=�[����\n�Q�����q��\\0=��n1�H�z�!������1�N3�5+�Y���|8]ڭ��X��?�5��#���W�|9]�^���+h9��^Ș��D��I�N(4��F�1\\\\�]�.9�4��)O4���\\0␚7\Zi�E�lS\\\\�\\0�?�@�����SWA���\\0ȁ�O��覦$�G����\Zz6\\0 �@���W3Gk,#�5 =	��P���sNq�ka4J:u�W�z�\\\\u�U��Ж�(���0o�*�6y�5(��\\0�T��>���>�x�_�<�6M�n��Zg<��ZI��84��H�M$F�x���<d��PzSC`qҝ��#��t�=�Ɛ��&��\\0��\r��8�dl���)rEE\\\'�>������@��Z��3�TN�����Hh���4k��St�W�j\\\'�(��*��<�����+�ݟD5���}�䎃�n3[�z;��\\\\�s���K\\0�_j���X*D�:�G��OV_��ΖɎ��<7o�\\\\8\\0co8��u�al��0:��-�nH]W��\rL��X�������䎙�$�p �}:�d$g�jY���z�lHP\n�U�cj���<V��@1��ⴇrf�Y�����W�~��Fq+�29�b����~�Z��N�\\0L�Tc��[���0�H��4�[�V�X�_����8�iK��n\\0B�{\n��I�r�~�x���sZ��.H��h�ݎ���G��uf��֓�0���~_J�[1���+OS��)6�Z+�������x���¹�\\0xi�KX$����ͥ6�v��}+ؾ�6����O�F-�|�%Q�NpUOoƵ��KS̬-.o��8�C<���O�j֛�:�y���F?�U��潛����}k���m9�O��Vz\\\\|?�!ɍJ����֛�~ʹ[;7</?ʽ�IS�S�:yi��8����K�}�\\0�˸iWl1�XX��Ң�H��R�X\\\\��F�~����acQ����F��NI�ӊ��Sh���a�`2�}9�BI�Z4�[��\rۙI8�O�V�Q��\n�`\n���>����R�<w��x\\\'�z�e�`wQ������K7#u��c��?ҥJ�\r�jx���@ �8�+`d�O9��{����3�6���򬫿\r�Y��|\\0��\nƫM����yep1�y��FF3��x��\\0�vVzl��[,R�P�]��\\0x\\\'+\\\'M����y#���4�}�@�Tz\r�t�#=ۚ\n��s]�xr��&�8r?�L�������jy���^�� rO�����Wk/�,��y��o��S�Ö�NQ��`�/i���s�ڤ���?Κs��wu��?�-�p�_�v��࿒rȤ��5J�e��qhb���z�+q�q�t6K�X��y�7mP8�?��ֵ���e~f��*�8�ْ�ևGrM!O���:�5�֟\r����..G�е��}�~�w��\r.h�.khx�/Q�{��+�=8�{��M��7Ix�`J�|)��P<����j?R�qsy�<�0����殡c4Y�\n�t淼g�m#�PXy��&\\0o}͜{�VC�}��UQۥM�ƪ�bwB}��,G�l����+n��1�;S���)8\\\"�#k���\r!���\\\"|�k����\rX�4K�ğ�^���F%�Z+�b���Ԝ�r�\\\"�s��G4Ld�^�w�<������|G�\\0`���տߨ����$�\\0�]���j��G��QOj0}��֟��߭r�䀀\\0�*�?��?u2t�0n9���c��x��OH\\\"���Ê��USߵN��9���(a�:҆��L�Zƪ��#����G���(<�h8�{�9<SI\\\'�JP@���̥��zsK�G����GJ@����\\0�@ǵ4�x�u4�\\0�q�D��u�9�}�����)��wg\\\"����W���\\\'D��o��&�1��<�H���~%m����t����W����y�鶢��+�!�Nz��P�\\0��ry�8#�1���tV�Ak�\\0�s�s]��\\\"�\\0@�����۠�\\\"���nps���&��,\\\'���<\nʥ�eAn͑��W��������2Ef4�DT�#5a�`�m���#ۥ)��$涆�2WdO�ҼF�Ԙ��IoN�5�!��\\0�k��w݁�,��zⷌ�\\\")sX�<&ۭ%9�6��\\0�WB���Z��(�K��x�\rt�Z�+ɝ*\ZH���NEH�bĻ�PzߵP})�z�V6D������!�@x++|\\0?�vČ�ڼ��+�kM���l���κ�9Tu2�\Z�u���?�~��X��`�\n�|�x@\\\"G$t��k�s�XԖ��u 0�\\\\Z�E��\r�����,+�Ӣ\n��TE�aԍ�h�\\0g�O��7r��͏���=+�y~�=-����j��k��\rА}��F~��//�p?:�/�}Z�3�������<j�\\0 ���u(��cj\Z`q޺K[UE����b��9���Ң/K�QX��\\\\\\03Xנ)$u����H��X�H<��C8�S��銪2��+\\\'��j�L@%��@��+O�M�<dol�6�fx+��\\0pA z��\\0WFZ�J:#��\\\\g�Nc�\\0}jXsR���W?1|���Dv��\\0��zڕ>S��Y�9�Է��J�a�L�|��\\0Iv���z�Z�e���0�Jǜxִ~+�S�;�Kp�v�t���:�s.G�ka�N�#Q�t�|8POZ��FoH�VP��ֶ\\\"\\\\/?�V�����*�v����3Պ);S�5��>d\Z���I&�#����1\\0m�9����S�.�X)�]=�g�ņ�9kx^�Bv�����\\\'�J�`���\\0W��(� u����^#��\Z#t�E�r�ؾ�WGS�Z�N~�ƽ cn1�p~M�=�$�2;�\\0�w}F!�g5{�z\Z	�i3FH�sk�y�&���)�\\\\\Z�?�;� #�<o�\\0\\\"��\\0�u�\\0������X8?�@x���w_�)�\Z�������	�T@����m�P���ϥ?�*�N�\Zz8a���E�M�L	�:w�q��* A���N3F±a[\\\'���U5lf�G\\\\���SW�\r\\\"�n1��J<T �zU1��\\0�Jz�c��&�7==i�ޢ\r�;w?�zV�ć�������`��&x�\r���40����G=(���c�)���\\0UFO_J-���C}j6#�=�9*);��U�1<N����T`�\\0�+�o}̄6@m���z��C\rm���F�W��8�\\\'$��涂�/�J��\\\" ������ %�y$�\\0*��q�{��b$Rx�1T���R��dۇ��9�z7��\\0e+g����8����\\0?��I��I�\\0��*�;\\\\�u��,YgQ��%���8����R4P\\0���ר�1ޘX`�s[G���!�;-f\\\'���\r|��H���׷j/�M�oH����BVPq��x�m����UG�N:��]\\\"��s�P4���F?]\Z���9ۙ�q��jәy�[q|��dX��浔���)�\Z��q`K���L�]@�����8�D$�����M���8�5tGWc��^l��$c�6��k��\\\\7��W$���?�w\nr���W�]�ຖ`B�\\0Et���G��- \\\'�WGn0�;҆�3��9P�=���|�<;�8>C����w���x������HU뎬kx���?l�\\\\��2g\\\"�>�P�ז�QB���Tc��W�Z.�W�#����ǵA��#�\\0굪�A�N�\\0����y��wO��ڰ/_�o~+^�R3�`^?$f��m�)��k;��h�F���j/-���\\\'>�\\\'�T^6v�݀U�����c�j\r����ꠁ�[?�V���6T��vp�(����{RF>N���z�乣Z��3�U���`0j��3����9JN\\0?ʼ�\\\'W�:`�\\\'ֽ�A#����c}�I�8\\0���ۓ&���{P��yU?��Yǌc��h��$`��cp+��OQ�ZN�l�o�4�LU�;�Q)��(VRz�-�=)?*Zk�#{\nCgϾ1��\\\\���O�N�%��Nt�/`�hܳ���?�\\\\ţĜ\n�I�LFs��{�S���\Z�\\0��5T1 ��v�m�5ҩa�����Luh���\r�f��u�)��]Q\\\\υP��������͚�S����G��f��ӥ!��ѱsFsIFx�+�(��i`I\\0UY�;+s�n�C�\\\\f�Z��s�X7�� >#�\\0�]���j�_�H	�Pc�O��{�>&Ӧ�N�m!y4�_�&&�z��c�\r����К��`�V���3gw�����ޚ���Jp=)\n���zP\\\'���c�T�����T?^�0n�4�py�H��9�7p=jU$�ީ� �Ӄ�#�S����.�{R�֣g\\0Q�������Nݐ3��K�ir;sE�a���=)��ւI��&�R9�8V�FSO z������`6>Q�R��	Üc�}3O����8�����������d�!��+���y�zs�U��/����c�m�Ã\rҠ\\\'�%��͓߁�tŵL�|L�[kz��m�:�sߚ�:�\\09�V!\\\'w��jƿ��YcorA�zo�ԍ&ݱ����<k�,�\\0�q�����ҭ�;O_���m�j�f�1�Զ���cPu\\\"�A�P;u�KQl���SH��:ђ\\0�!n\rh����I��w�#Cu>ƼY���g!�q^��fA�R:��5��������dt<����lI]����\\0e�A��pkt�3X^8ҡ�ԟζ�%�c�{W��֕��d��hn�5N�B�*�0�Z�c�z�Ű�׏�Bb�$��\Z��黏ֽ^WڬNzW�x݃��R�N?���εL�����Q;��0����+������x5B��G��Wf��XTk�C�*�6�����;W�kO]����j��y�`�9j�H����z���v�r�v.�Q�f��rO�p~=�v���μu�sU\\\'�\nq��|*��h��ml�1�Ez���l⼋��6���P�qӨ�eӐ��#���&h�N��_*қ3|���ޫ\\\\7�n�۷���`�?\\\'��k����\n��x5���:`�Ƭ^x�c��\\0��\\0Ċ��j����1����\n��u���V�<���q���]�\r\n�ޚC�u���\Z֜�t�5ۊ\\\\�v�S�4��k��k���j��\\0է<�j��(<Q���ܦ�x㝰�����)]�x��F\\\\`{\n��B�^�x��# ~5��e~��X�ʭ\\\"�Nzf��v�Ȋ�Q��[x�Q~�Q[��x���k��Ϗ��^��j�\\0�*�՜O�-�}y�O\\0S@�8��\\\"!��n[m��N0�s��O������^7]���\r�|��,	���.G�\\\\Ո,��+��#���o-�g�Fc�\\\\�?�aYci�\\\\�}+�h�ж-;׃�@�l��Pr7\n��*1��0Z��E#݂��3��p:n�QT^�К\n��rV���·ָ(<_k���$��q��\n��zV}ߌ�{���+e=�w7�¹�T\\\\ͳ:4&��2J��guU؀+*��\ZE�C^,�?�/����7W2���Rğ���t�*��+Yt:��gws��\\\"���Ѥp�����j��D��1�\\0,�g�9�d�x�8��0I�U���p�[�N�U��Ț�iG�9��Ҫ���;�6~��2z�b��m�*J�L�s���N���Pg?��q�f��Vf�):��mͬ���Ԕ��5cT;T�r0EBN9O�O�*���08��I���Q�;dz��q��d�p��H+8�jh#<��G�?!2dn9Z�\rVߵL�*)j��(�=iK��jp<Җ�s�´M�,��\\\'�4���1��J�@�ѻ\\\'8�\rJ�04�Z�zzS�A�1X����i��L�����\\0��s�ғw\\0��)��9�wl�d#���HOh-ǵFO��Zz�P\\\'�Z�9#�J͊E�٪���@�3�|v5���$d��z���\Z<@�L���1�(�h���8���g��~+�l��zU�EY�#9���\\0�=OJ�bJ�.�h�z�b���Ж�Aj��\\0c&�;F�t�u�y}��N�$\Z�\r%��������2M���5��a�WP�GLU3���wvҚFr}	|��3w�������R;\Z�?�[E�\r�\n���Z��n�,y����5�>\\\'��ݟ�(�y�ȯ2�p.O�t��iM�����G��$.�\\09��ܵ;�x�= ��A��+�s[�C?1��rY�\r�&�D\\03S��3U��<��[���}�n$v׏x�M�#��$8�*׫�83��� ������3����P�2\Z:��Zz��]����{W�e�fH�9�]����s�+	Y���\\\'Eiڭ��\\\'ST��=@��9U ��t\\\'��%vP�s��2�&5l�ҁ���5��J~`3�ן��B�6�\n�\\0��ws������bgx0��G\\0~���g�PA�s�D���(����+�m�\\0Ճ޵��\\\\��,]/��j����Ӌ����ɀr{Tə�72�ی�Ÿl��j]���iX�<���&u��ݬ���+�;��]��WA��࣓�,G���Ϳ�S�@\\\\���j�\\0���ÈSE�(��H,ƺ^���_����Gni��g��5���`UI�aV�N8��p8�)k��\\0��\Z��\\0Q��°|���/M�����ַ���\\0b��\\\"�z�?Ҩ|>�[�z P��KrxR\\\\b���L���ŧ/�c(�ַ���3��=�E_A�m��sN]N)mb���JG�ޔV@����٠^��b*??�j��/:��n�0]�Td���t�ikc��8m\\\\+v�����\Zu��������]eΗms~n�M�QT)<psϯS�եTT\n��@��9�U��u:I\\\\ζ�-���|���kIQB\\\"*��F)	�i����W��_;!F1%���H\\\\��D[��Lw?����朤��9��Sz��Q�S	�#�J�k��L_�&�_ �z�;���������ЮA��bC�L�QQ���NO�4�<��ʝՅʺ�$�r=Oj������ds�i?�V�8�3ֳ���\\0�%�\\0�y?�Ij�֌�	�� ӆ~�Td�2z���t�\\0���* y��=�JHD��{��zr*0ޜҌ�L�O���c�~\\\"?N*�<��OR�H��s��Ɲ�1��[�z��=)�� l��<�MO��u]qö{S��i��3�\\\\�I��d��?��`M����y���iwg#񣠀�~)���O�l	Wl��p���	x ���psT��Mhs~<a��j����ۢ�yl�l�x=�^��\\\"�����{��\\0�5�0@�=}+�?r�qZ�Q�F?<f��6e9^�U@ޜ\Z�h�.1��f�Gs���K7��N	�P��6��\Z��\\0�Ey^��� g8�N�巍s�(����Lӻ6-�^x5`�T�U-���/�5Qm#�ǴȄl8��3�Bc���m��W��\\\'�N��a�����?)*?�\n�kF��FX�q�]�\\0�_n�\\\'<3�����?�o�.2Ia�:�=����zg�a\\0�q��Ah1���\\0�0�?A]\\\'h\\0�N+��M�\\\\V�)]�V9�D�SP\\\\ɵH�[#���Թ��G^�亻o�.�2D�1��@�O��͜W�ݾ�^w<+�x���m��\\0�C\Zr���Һ�9N���2+���\\\'KG\\\'9l�s]��� ��|�*��M��\n2)�2�pOJhl&P;UY��<f�l�F��My��ܲ�G�����]�̜���<p��h�@l��$n����x��#%&>�`�׫�l@3�ygÌJfc����|�^��\\0\\\"���Bv���Nw�\\\'5#����9�o��g\\\'`�3�$��ˑ�bs�CV�[\r�L�|����~GLQ��o�\r�	c�=0+�tP�Z+�6��c���\\0Z������plN���?ϥzv���6�$���\\0�+��\\0ކOY�l�\\\"����T`���iĎ0+�nS>��p�\\0\n{s�j��C����� +����|���n�5Eu+�ɟ�[��U<p�����*1��h�2p��u:�x�����N=Y�!�C��ׅ�SZ�du���a�asZq���\rT���\\\"A�/�ʪI �&��x�F^�K`��{�ʯ���zɻ+�����&ֻ�-|���D���{��W��z��q��˕+������fr��#1�36Y��&��3���:�dz�p�\Z�X�x����\\0J�~U	|��Ұ��Z�����L-���ibA���$�w.E�#�v�ZB���L�#�4��1�Բ�P��3qۓҎ�NA4�v�Ni_Pj�R��B�s�0�y��i�Ƌ�-�Rs��ޛ�\\\'�ԇ#�:�q�4�v�u��g��\Z�g����\\0���N�#�Tus�\\0k�߸�㦪/[�$�Ή�R���d�և=zs�L\r��uX���g\\0zzӃ~U�\\0�S�8�ǥ-�Rq�\n]���A�f��v\\\"�Љ���}\\0�wNRN1Ϯ)�,+gҧS���\\0ꪠ�*e\\\'<�(K��08�����3Q�i��G��?=�>�����2H�qE�w����4�F(�94!�~����ÌPH��q0-�\Zan�����*2x=i��~@[=)��i��q֛����3��ۍ�J{��N5�n>s���<z�\\05���p����~D�I]�1�ڧ�}�Xt����ߵL�|�������=l��N\\\\�����K> �z(�U�[1ۜOZ��8���Q4�-l٩�F)��u����\\0�����(O��w��~�RW��9���:�Ur܏zN]\nQ0<e ]@?zU=	�?Ҹ{&F�7���8�v^5`4�� n�#\\\\f���BHa��O�i�^���`��y9ڣ\\\'��`~��bvļ�U��{�޳�*��/�?�R���\\0��?��$�	��ēV݌�Ԋg�j�A({��ķ\\\\�9�S�}��\\\'��W�Z.fC�`�ӌS����j��p�M�P1�?^���[�0\rr^Q�00\\0�?]\\\\\n;v��Յ^��b�3�1�N�R��NW�?�6�\\\"��/����@o�M�匜g�<һ���Iϵy��O��\\\"�Xצz�c��k̒7���~g�N�!���FW9��^q��B���f=��Wv�aA�_Z��2�{Rԯ�ES��ʜ�8 ��䊆�(�p�=�>R2OoZ�;�G5�3lW$�����#��X�љ��8�\\0i�Z��1vZ*�ʀ���y���E���vq�g>�Z�VE�	�s�Z�V����\Z*:RNx�D��>����=k4�,F?_ΐ���H[�4����.���PmSnK��;��kg�h��DH	��K��W9�@/��0ϔ8#������(�+3�p��L�ֻ���L��ۑ��I����knf�E�5\\\\�1��.5m*Ѯn�T�GRy>�޼�_�ιq���������+*�QZ���ʫ�cKĞ.�Ug��f��3�i�W0z\nibJB��z��9n{T�F��Gn8�h,y�=1Q���rI��X�\\\\�Dyn}i�����$�c���i�X�c��4�hZy\\0�z��*�T6�}�	917˱�G���P�0J�}\Z��N��ҽ&�7��Ҭ�`�G���������z�:�d�R��TM��+����H\n�q:��=���ʃ���Ѵg�f��i���9�#�psҚO\\\'�}*ZAqI�)����I����M$��>��N����A��{����\\0��������j���`���5CV,t�����t�\\0t�E�KZ3�rO���d�}iw�ɦ99��ֻ%����x4��7�@O=Ozxo���I��era��8�;\Z�v�Ɣm���\\\"P{Ӂ�*q���$�1�Re9�J���zUdoS�T��H���B,��\\0�����H��?<qNďҀ��`$�҃��\r��>��SI�\\0&��ӭ$;��4���҂O|{Qp�ך��JRݎ?\nald{�W�����̂9�A<�i4�#����C���A�p���s]ǎ���0�l��Q��\\\\+X����l�qB��z�\r��ҟ��!F0Nrj$nG�*��.~c�d��[SH��Μ�J\\01�\\0��^�u<��y>�q$*@���k��s�s����[�������\\0/j�6x�t����$+\r�����Q�sC�bjĿ�R����q����O��%�6.�B(q�k��oj���?��\\0\Z�4���<���[E��G�[>�c�\\\\�\\\\}k6G5ev$V	��I;�]�̃ڨ��a���K�櫳\\0})�qZ�:��4�8����^_��e�$p9�F֜��x���[�n+� g�� ��WM;;y�\\\\�\\0ӭ��h9��\\\\<���a�_���S�1/�Eh<�G⬈���Zr͐s�j�G��>aݑMg�9�P�$C1�Fk��3g\\\\f�\\0������r@�u�x�����g!QW�=?D|�#����L~�r����?�]��\\0�k��C�\\\'#\\0�\\\\c�k�2�*�gb&�&Zw�5Y�9�L22O=�6m�z�\\0:��C%~�+6��[J���\\\'��^��eꭷN�<�D��\\052�r�\n�1uol|��~\\0�\\0�zM�%H��Ҽ�|�� fW��q^�i��@9 ֒w�������҂�5D��ʗ~sP�%��ӥ=�*��75j�r�O^�Ikbe�<��#��j�?$*1۹���|>�\\\"Ӵ��|�8��0?Oʳ<G����ɮ&|@�W\\0�\n8�u���1,q�X�a@��ʚ�VR���\Zz��s�\\\\��,v�)?*�\\0���cߜ�{��)|v�)ͷvz�����`�@���\\0�Mv㞟Z�:���N��$H[�9������i���OQ�inRsϵ/Q�p\\\'� l�SA$�=8q�j���cn�*�c<�=<�\\0q\\\\�>��]&�*���E8��S��ΎЅ�zִN�pk��}�9��]�c5�V9dܵ� O�qYE�,�&�/�ېMsq]�wG5�[ݖ��W4ls�ֈ�l^0Y}1X`���^�(K�J8=���g���58��y���5����9�i�H��r�`����9���R��\\0:�=S?�7ݿq\\\'�5p��g�ɪ:�ͤ^�x��\\0�W_P���(9��z�ON��@<\Zk \Z캱��׭8�Po�|�z�t��%Yq�zz�\\\\v�\\0b��ڞ`��GAl<���q�NGL�[�ۚP�c�	\\\"�F\\0�\\0\Z�8�����58`>�(^d�ʶ�?vq�֫�O\r�j�%����w�S7t���X~�F(����n�(o���<���r)��T����\\0�� �,@<r3�qn�Q3c�A!Kd��ڐ�Ӛal��R����3�����w+3��\\0[��%�\r�=����n�#���$�\\0�qŹ�[^�L��}IpOl��Pa�)����c@�*ݳ|�@>��\Z��5��^�$��ֽB,\\\\k�4o�Q�^q�϶kҡ��rj%k�[�\\\\V99�R��@�Jqp�jYd��z�$��i]��񊅟>�b�MKG%�y>{4�̓�\\\\Z��ru�`�ÿ=Ejx�u���F��VV��j���˨$zdV��\\0��z�8g�\n������N��r+�=l�Y9bs���Y��A`y��sک2mb��_:��6��$�^yjr�C`�:滟0���%rz����� `U�������,V��rx�G?I��uN�W8GO�)�,ny�hoK�mu,��zҖ8�=*�qߡ���z�I���έ��g�`����p��O9��Z���5�Ǟç\\\\J�����<�4fc�\ZL�WD$�c#\\\"��	��6;o#����\\01�TM�ŵ�u\\\\�ޑ���P+d�i��{RMв8�s�c�lWJ�8��`>�b����k�R�t���ŀ���7���;�p�����>��z�D*�0\\0��^I	5���x��y�WO�Gr+I�tWnz�.�O�����:Ui/J\\\\�\Z=�ݻ������voD_ި71\\0I=1T�uGPR�:�\\0\n�%��ܜn��z*�U:#xa��ha�I����Ғ�K�z�Y��e{�J6�-�?�0�_֘XpzSY�sǧ�C}����qAl��Z�p�A���I��nH[-�(�G\\\"���i�O�Cz��ĸ��4#�ԟZ���o\\\\n<��]�R_��n��##Ҵ-nZ\\\'�8���ma�zkW�Y#��n���ZhΒ�q��Ձ|��C\\\\a��.��iF�&�1�Z:�hѓ�}Q��jh��O5��&�Ozȉ��,~��l�W�i�\\\'rҌ4F�B�Oj�h����j�I�q�V���q���%���4g���~_LW>Ǳ�#ӵz�ͺ\\\\BCc�\\\\V���ܴ`��Y�WEB�z3�$�<{�GU�I���n�\\0�	�Υ\\\\�9�\\\\U-P�\\0Ģ��q�Mg��5���H�9<b�3���JO��]�]��L�\\\'��?Zxn��P��q�81ݓS{��:�L})C�\\0�T@�qN�x�{Ҿ�d��{����玔��0x�B�\Z�L�m����>G�֪���0 Zv-!?_jy`:��W��29��\\\'�4C�%݀?Ɠu3p�L��4ڶ�ݒzS��9��`)Cc�֕�b@��\\09�����n�<�w�?�R�ƣ%�N-߭DN��S�����R�:q��I�g����c�2u<����Z���zr��\\\\�<���t�3s��*��Y/=}k�<kk�Q֦���T��q�~@��3\\0��J�-ht\Zƥi���?\Z�x� \\0��S�y��wjv��7�{W�FA\\0c9���cN���c����c�#��_q8�J�����B�a�2]��\\0�}9��\Z|����5[y�?!M�q��q�2��\\0iCc�E�g��ڨx��-��S�O��-�(���\\0�7�\\0Z�xl�\\0��s��޵M��R��L��ǯ�L����t��x�|�u a�\\\\�M·�%g�>��|A�8�Z��F{JF`�Z�X��d�4��u\\0c<���5��ϻq�9���2��`Pz�:w�Z�};�5��GQZ��%?}��aqӭ9\\\\��=sUw���\\0t���>Օ�qԶ�x�jP���@�ۭH��`��TY�4a�]�嚻��_7\\\\��\\\'��5���!�z�J@�7-�n��G�[_@���v~b4`ǖ26~�[��q�ǵ`�x��a\\0�	c�S���j�;���&��?�\r\Z�]VqR㊩�@���S=��^fo����?�ɣKr��F{��[��`��U�X�]����z��h ����|�z�s���z��r\rz��UO9����\\0Yܭ���(�N����|���ԩ��m\n<͵�,Ip�	Q�֠�G���y���3�s�s96vF��Î0y�����\Zc�z�SK��\\0�R��_*�<�Ϧi����k?=�j\\\"���<f��hi/��)�� g�����i���lѸ�\\\'+ׯ4��y�z��L.I��������}i���IN��4�\\0��S֙�m<�:}h91�OJ:�ø�����9�v����ק>�����I-�/��r>ث�]$���Q��Ro���Z֔����cd˹I&�\nX��f%�X>��T�>q�&�]�����ۉ����Ȝn5��8��O�rzRv\\\'stJ6�?�*N��k(\\\\d`T�L���ÏZ�_am���K@��zLp�0��d��$w\rs9r~Pxyg�sϥJwס6���m/d�\\\".>��=YJ闀����5�n�4X<�\\\\g�4��\\\"�݂F?M��|��Ѭjh�*���\r;p�GӦj��y�\n�a��ֺ9o�Ƽ���8�g���M8Q�5[�I�RoT;\\\\��jL��B��}��Qw�QJ:�֣����sOf�\\\'\r��⟌�=�\Z�L㎕(o�$}(�Ȱ�T�/Z���UG���s���$�%��9$ri㯿Z�~>�ʂ���TﰉK\\0z�A`7z�E��p=�w��G�S�@J\\\'}i��Q�8&����ƞ�ņ���S7q��HX\\0x��[�sM-E���%��F��S�`�P[\\0c?L�y\\\"Y�~0`���B �3�k�����ŁN�rI!���\\0��ح��SbM�b�����@����z0V�8�z�Z:_��iש=}�zO��t�yׇ�\\0�%m�\\0\\\'?�ɮ�7�zҲ�4�[V!�qҥ��Rj�?�G\\\"�/��-A�������G�T.s�Tҹ�REW�\\\\g��E)+�\r�C�2���O���w��u�����6���&\r�]c�\n���*�]Z6<��0?�\\\"�kܱ1�g~��t���$z\n�X���7�5̍�����\\0d~4�n��M-���f�[�JѢo��=�&��Nx����Z��q��PF32������;����/C�Ԭ�s�����Z�%����?�{Ӄ���^�U`�A=x�)��Q�s�}�\\\"�X3���d|��9�T��EL���q��KQKb�����^F�Z=�3\rĞ��^�4�[1S�I��^V_�j���死���J/S��7\r\r���}���֠|c=Ed�͝\\\"�#����x�\\0s��Iܽ�p8�=*C0P2�Y�|}޾������t�.k]�\Z���r�g�<\Z���2G�Q�ԡ����R�4�(�.9�~�����u��0��k6��G���=j7�U�#\\\'҂}x��������j�KQK�����6�I��qJ�j�ON*2�#����Qؔ��:b�g\\0x�i��=�ϧJc<�-���H�-�;�� l���\Zaf9��=�wb��O�C.(\r����Às�JBñ$��zGa;�8����x���?{=���H�x�� �O�B��cˍ�3dg��n�#?�F�7px��ۀ\\0�hVX������$��F\\\\��8�0���������\\\\�\\\\#��\\0]b��C��LqL,[q����kh�pv�L�s^���pj���9��	ʱ�y&���X�Ns�V�R��NƲj��>��Iv��*���hU�=�;քwJ����RӹM%���u�3S[���ɬ��9g;���n9I Ϡ��Rmcv)����U<L�)��ȳ��\\0�L�M�\\0<���^�j��M���\\0j#{�-�98�P[���S�㌑֪��`d�S�v�ڵ�c6�+0���jho�94��	�3�TA�n�R�Z`�H8=�R����*�v3�3֐?�� �[�-�9<)�����H�=���#�z��%:u4���s�U������������Z�79�pݲ)`\\0�{�\\\'tN��L�Lӷ��������Pp~b)Æ-�z\n.Ē,�9��.�GS��t�@\\\\����;w8��,�r@8隍˲�N2sҚXお7�v���Q䞄s��3܂O�!#�JaoC��	�=s�Zg��fr9=��Þ2h�.����ZMr��@��6�`��>���)��wP\\\"��ڴ��`����Å<sM9V��W �-�Xc�z����Z�N��5t��k������IV?C��t��Ƹ��@�rO���tn�4�{�$��H��4�Ǟ=j�O�GJ���8�ԧ}Jz\r��g��T>`�NN)�z���A������*�������\\0o�/��5��&#T�����VN���;��y�9�֯���������\\0\Z�O�\\\" �����rH�V�\\\'?Z��9���~a��޹��X��~����\\0��Qn�F;��\\0Tg?Q�\\\\X[��x�O��q��1�<��O��:Ŧ9���\Z��O��!�Dg�N����αl�\\0�ē��5Z�i�w@����\r�@�A�p0y���\\0n��Y�v����&�늨d���O�;�U^[�g�MH9I���\n|u���2Ҳ��\\\'>��\\\\	a�1ї��J����-�*�⓸�JMܵdZ->�pK*�r1�:s���n$��ʡ;FG�jz2�\\\'#>��Gs�4b�������RnA�۽B\\02��u���9>Ղ�oS��Ã|���iẎ�	a�9=E(|��I�bB�#\\\'��w�-��Ȧn;{����\\0dv�D���+gaK�9���ǁڃ��p1֘	��O�Cm=y�l��q��L%��#���H��N(<d֒�`z�[��T{�8�߰�J�y�3�`}s�Vߑ	�Ns��JYwrǑ�O4��0z�K=�����R@�y��!��Pp��4�Ð��z\\\\���eTc\\\'~t�I�wF!q�OZaq��;֒w���9*1Hʹ��v�Q1��A�\\\\����Z��_�<\nBĶ���L�)��H\\\\�*���O�Ē���r:�����;�9�}��9=��ԅ¡�9��JԜ��<���z�9YG#<t��q�3���\\\\�F1�nz�Л���p���JKpG_LՔ�#`�k-q���J�\\\'�ڴK]�Mx��\\0�M\\\\����5���A9��횹\r��f���M���U}zu��<����\\05\\\\�u�����u\\\"͒me���iŭ��fLl9��L�xn����>pҬG\\\"� �\Z�=.�!�b�\\\'��\Zf�@h���j�$��Si��]��nUGLb���*�ܖ팎=�=���R���7�C��)D��\\\'=9��>X�����O؞� ��Sm�m%��ǩ����8��R�9��� �$A��J��\n�ԝg䃚�9��5M����G�d�V��4Eu	D�_%Tt�hi0z�Vl��@��}��Nq�x�3iX���He$=��x�\nk��8����dJUz�_w\\\'�Z����1\\\"����ڨL��\nn�}1P	knx�+:���OQU}E�B`��n��ߎi��n)w��5KR6<�ĭ�r샟�G�\n��>����X�=?x{��Y~��@�6����M�FrE.�C��\Z�LIV��5�+c\n	�k���� �1���Z�����g�g$�cX�XV!2r1�N.\n��HJ�\\0�8� ���S{&��A�I�����qS9���OZ�;�c\\\'�uRK����Ϻ�f9v��$�߅n�=���+��m�9�F���]�r�����c�?�j�?v�]���H<z���n�Nq�1��1bz�:M�	���M��B&/���Th�$23���FU�矻Q��^H����Sz�Ggc��+��T����4�n\Z�D�������֍ń7�FY�0\\0\\0���՘-�����6�O5��&%Bm���F�z�L31pGJ��W8���sF�H��)�GLh��1v\\\'��\\0��y=\rD�ہ�����q�)9YF�C�!��\ZPē����\\\'�PN�I��n]KQ�L0H�\\\'�O�۱;���u���>ߝ)�c=q�RoR��,v�q�9��$d���zT%�.A���\r���Rރ��>�����ǩ��u�$g��A��~T�N�6<1�49����39\\0�y�zBÒ���!uby#�����C�Hp�ϥMk�L1�QM�) ���y0#��C��ed�9�)l�H�\\0\n��W\\0d�k���9>�?�#6���]�Kr��}:�k%����j�f��R�g��Z5˫Z�잧�^�d���3��F2���^�,��RDS��rڿ��%�����B��_�r,NI㞜S	;���z�V. x��=j����s��],h��\ZK���;O98�Nf��\\0ר�RO9�{�mw�9���������q���\\\\�����F�#\\\'���!��8�\\0F���\\0\Z����LTFB�=ri��dg=�	XZ�w �g�f�ߦ}*�_Z���2N:i�R�~�w�l2	��Q2�� �����Fݞ}q�\Z\Z�CZ)�\\\'�*uv��^������J�\r�A��ֱ���$��}#�Z��9}\rf#�N���*͜a�N�����nڣj;���Ni���tk�#������Mg	�[�遊K�\\0�oA$���\\0�Y��&Q�[+�������.�\\00*�H[������@<v�kEu��j���$t���EF�	�{�9�zc1$���Mٴ��v<�/�=)��s��D��7��w�$���֦�7ܰ��c���l���� �@�}H�O��c�y�Iy�;n$��R�YT�d�	��ڤ���4�i���#5M5�Z��\\0���XN�>��t~rI�������8�O��O�FrՓdr��v�;<�P���䎘��H��t�T�B�Ԑ��Fz�A^�g�@rN7ƜrH\\\'��&���58c����Fkdpz��0	�i�{�X�`V��Hq>�����=G��B�I�9�=B�.J�q�����җ��L,\\\\��@:\naa�`��ӵR���<�Y��ծ�2<��ҳO�\\\\��u+�G���&�֒o�(=�s�)3E!�\\\'��f�N9�q�EuA�|�3��r>����#��r+���*|g�e+�jj�-��~Q���\\0^���m8�Z�d�K�����|}�qM~lǵ�a*͐�o8�Ar[��1�Ҙ\Z8�i���Ԛ�qw�(I\\\\�G�\\\'e�QM�K�qҺ/8�ff�*:��ʙ�0i�w��+F(5��\\0=\\04�M5aҥ;�X�.F�@$��cN�w\n;c�ƚ�����R�J���W?5��ѣ�j�G9\\\'ɠ������v�]�v�$ۍC�ݍcJ�`n�r\\0���g88�w>���r:PI��:�6�e�=����\\0=I�v�7늈0l�>���O��ڔ�ǂ7d����79&�-�}�ŋ6Cu���;��V&Ӄ�p c9���Q�89�A�w��9��Rz����b8��Zh�#�����c>��jRNJlVԔ��r=;҃�F>�p6�=�i��\\\\�ߟjQ^�ǩ(۷�bO��;8��#��?p�\nq�dҳ�����Ӑ����}\r(e~<�M7M�\\\\���}+J�B ����o\\0d��ڴ�l�i�}��ݳL���]�POZ笘���+z�l(��Ӷ�#��Ά&ET�-�x�v85w&�i�!�\\0\Z�N�-��h�5����j�]���5�����T��\\03�qM8O�lvss��{��݃�PMr:������K/��v\\\"Lc�qĀ�rcO�[36��<�dd%m#����$~�ףjZhHQ�\\\\^���h	@J�n�VM�Jf;�^��؞��N\\\\�1�R�J6Xu����V��2\\0�B�h�$�����N�>�JH8\\\'�*(ۓ�5���f\\\\������t���QK?�x5Y��p�j⺘�e�8�==)�a��\\0�gy������Ò~�N&j�t\\\\�x�ڭ��2����\\0��j��#���-\Z�M�i.��מ�8a��3�Ɗ\\\\t���WR`�rG~����:�W4���M��:m�-�\\0,��j���Q޹6�\\0������Ojk}BiY�D~�F0@�\n���Tcq��z��\n������S���~0H�z{��w�\\\'�B��� �5!e,FA���5�1�簩�Gj�\\\\�O\\\'�4���s��EBi�;%r�3n��O#�<1U�c�������O~��c���j�_@Мd/�I�ԁ�N^�=j�m�����0\\0��;T&�DyU�s����R�ݜu���?^��O\r��s�*�m�Ց<Lpp1��S�#�|U|�1ܓҕXu�9<�.��ɜ����ԊŐ>������%@�1M��J�>�0�SH_�y��Q^yǰ�H�=F�k[ܛ\\\"`N�ۦ)��9�ڣ/����zz�K�`z}4l�&�maמNip�9�D���y8�88�8��M�G�����y����_�Z�u�?��F�֏rB�E(�\\0ɠF��n�<���\\01]L�~Q��+���H$i*�q��Z%˨$�����t�\r�A�~@��f�7��^�U`��{��pGosR��\Z6ZB�\\0����zT��ۆ\\\'֕T�3郃S��n�s�0Ih\\\"(9�(�S\\\',\\0�y���5+��*�\\\\\\0�=��4���\\0@I��6��<v�C�	������\\\'>��\\0	�x�Ԁ2��� �H��\r�=�5��@��s�<g�f~`{g��H�PeXu��A��^����p�8��j�2?*a|������<R���Ԑ��#��\n	\\\'9��$zqR��v�i�úܐ2��`g���\n{0?1���Pg ��֟�l�<���EhJ�����ZP۳�G��\Z�v�<�8=)��w|�Z6d�:�*@y\nJ�\n	?\\\\Ӂa�}�)+�&��<�9��]j�\nF�����Q��=j֌��%�7�\r�y���D�1�\\0?�87͑�FOr��C�(s�����쉐~���#\\0`\\0?:Ё�d�x�y�9{ژ��\\\\��.A�ֶ�����\\\"���#$U�5/���5���Q�����9�L.�܃�sB�pr)N��>lZ��+�7�,��!���Ve��ڪ��y���E��d�j.i\\\\ޟ�3qe8�VcrX�Lr��V������}�WҩN� *�i^����|�[p�\Z^�Z�̣��k�,���qZ��sfIYs�^��Pz��H�\\\\:�\rTd�I5�<FyJ�R�0��U�f��z���Kk�,���;W��f�ŋ*�_P+u%-L%�b~�4R:2�qLQ���0���=:�R�COQ�\ZM���\\00G�J����p9��y�aY�e��?0�x��gv�P ����/#��ҢI\Z�MK��\\0\\0��jK�&�l�v�#�TЎ��i�9�$�g�\Z\\\"�oFI��g��B���UC(�q�T��\\0(#�1�M_����Z�p\\0�c5&�v~ETG-�Aҥޤq��z�[�������OW#$q���z��#�u��8S�?LQ��qۘ��1��q�\\0����NNs��3Q��X7���]�Y�	�\\\'�4��ؖ��B� r�Ԧm��zS�P6dځV+��<c�	��,�ܹ\\\'w�H��a��Q2�T�{���:�DR����M�I#7mu5��pn9�or��\\\'�qX��T�-fۃ�\\\'�}��(�^�Q�[*h�v�fmy��g❻���I؆\nF��SąW�W�MR�BZ����^\\0�_��1�T�6����P�v�);[��+]�4����EU��q�\\0�=��+�9�`8��T�gbl�$2c���Q������|c㯵C,�Y�g9�=i��M�6񉼘�I�$�j\\0	8&����u+��Y����W\\\"�H�\\0�wU)���JR(���(�h\\\'�y5��10\\0q��5*`����&�\nv���3�k\\\'U�c���hpFH�qR8�CNA�u���J{&�|�sڱS�ԡ�h��͒F�!N8��\\\"�\\\'i�z��`�I�pNz�R�՚F7�f�\\\\�dv��\n�O�9��@Ue�0����$�46]��DH ���qV�y?ʪ����)�#��\n���G\\\"���Q��/pQ��S��q��\\0��\\0P)�X/*H\\\'��Q7`*��x��\r�c���p��c����׸J+r/fU�HBϮ9�g�!ʜd�v�ؕ8�s�z�l�,��B1ɧ�f<��H<Nz�wS�\n���888��Jy�霞)(�S��$,3�\\0��S��ǩ$���v\\\'�7NE b=�R���i���@��Jձ�߽@�\\0*G\\0���$Nz�V����%`�GC�r�\\0��5m�>��8<t��B���Rpϑ���\\0/�Ta��@��O���4(�d)K�8�cҜ3��t�0r03�qӥ8�9��XS��-�Hs��(�O���Y�[�8枇�rӚ|��HX���>7xؐNޜTg�c��1FFHd���v�����\Z��R�=��b1��Q;8�	�?�����̚]�n�3�lĚr�3p9ls�YFpX�܎i�q���jOf7��\r�\\\'5r7�}�%.2��MYI�c\\\'�\\0�I�H�N��O�����S��7c�Ɏq����]�Cߎgm.�Z�Y.S=MKt�a�9�[Y����7Ӓ�����]�RVi�m����x�:d����2Ġ�~5*�B���$��ӹ�7�Ko�U�7�S�)�8����t����-��J+����k���.�\\\\�BFq�W�#�^�5R�N��&YpEh��sSM�-�pG�N.q�\\0��W�^���n�˛l�F*�g+[�TG#L��=)s�`~����J���>��*仱�ϯ�nI\\\'��@�g�S���Z\\\'V\\\'���(���A��a�Ta�����\\0p���?ʒܻ�����=NsJ�\r�s��P�X�ZT?2��g��N�]�.#�`��9�o�FV�=�y,3���=��g8*���M��������qJ���\nM�8r�}:�z�sr��/͕\\\'�1�S�\\0:�UK���6zj��f&�W7�c$f��I���8�e����6�|\Z��)��]�� ���0�^:c�\\0����v��ڥ@ņ���Q[2�1x���1Ҕ^��2s��Vqv:��\\0�ZA&���⫕]�K���7jp@�N8��J��O�Y��Ԏޔ����Oq���%�Þų����f�W.z��ڤk���6Gz������w�,pO��4.cMnՐ	S�:qY\\\\�w��<S��F�c��e�f��3G�����1�.�70L����[��{����5��c��=�dPI���+�1��\\\'=Np:�O=)�a���n)�(�xT��*À(H�x����12�={g�H��c8=>��{�EY�z�\n^�T�HRČ縢0���֜A�p3���j6��+����t��\\\'�<`zP]�	:��OX�	��\\0�ԽU�kj;�H\\0��Q��=q�4�7���Y~Q��=im�#�=p8N楌9�Jb&T�;}@=jP�c���f�h�^�>\\\\g����*���©�p�mc�Tѻ��v�R�܉y.��\rE*��#����	I\\\'׽F\\\\m��>�E��ʲ9*�!��	I<�3We�Xt�sT�Ig��c$���(��q�t�(<�\\\\z����w̕�\rU��!ϱd�q�`�֍�78�MB�6�9��\\0���56��jOrʾF8�R�����\\\"���p=�����ד�sI�i�Ӛ�����\n�0o��j�Cg��\r�w�?�(丹��p�9�g��=*\\0�\n��H�0��������y\\\\zR�\\\\�)��7q��JI �ǌ��\\0=hP!�N8�\np�g8=x�7�9�ʔ1$��]��R`��bs���)��a�z��X6c��3HϷ<��I�QiX���7pp\rA4��=�j�5� ��*˞�s��Qڍ�&����`6q�z�/An���YNμ�*�X��E9���r�PYH����tA��S�q�^ȸ��Mj�|�OZv�R�մ7��;�GoZ�ܴ�.�=y���S;6H ����\\0�Z|�l�5.*������3���J��y�+�QH�Ҳ���`���8��A�<�+_M����,ۈN��	2���~�H6rņ�:\\\'��#����}�VJƴ2�$�*�sey�u���m�85n)O\\0�zQ%��w5�h���7^k9\\\'���I�ZMN�������6�*�3S,�q��O�����+^�ႌ�\Z�Nx�f{Im����׬�>���At�v�OoJӜV�情�y4����k�:$֬J�+��b\n�VOJ�-�3�OJ$balt�s�S�\\0�v�F�>rr:��Ԧ��(bA9>��.NKS7d��ڝm��7���d3�������W%��3��ԅ���M=.	�9�<��R�c�z��##�ă�x�}.R�>�I9�9�T�UV:��M��^��Lдd�yj\\\\G�*]��rNsTՈP@c�Q$�8��ʟMi�-KyH�A�u�����v���Qf.ŉ�4�J=�eR�C~�Tk��9K\\0H8�J�cz�<zt�dؒ&=99�����֓��Rr��7L���F8��Uy��X]��\\0R&X�<ŗ�8�ҝ-��tQ�R����Z\Zq���G�V{�pF6��59s�H�†�[�/ܥ���I��OE!N6��MU��=W�إ}M��(Pp�5*�p\\0�F�/�ԫ�����wKsd���s�y�sRl\\0�ژ\\0<���������\Zo}�S�Q�PF1��OLn�zb�H�y����S���T�\rhN8\\\'{��v㏺W9�LE�Ԃ*n6�*A=�s-�+m��?6~�~5 @q���ޘNI ��zp.G����QI���+��s�R)�	��)���ڥB�r@�����/ـ\nH=1����5 m�r��M)����R�\\\'�����:��\\0#\\\'ޔ���g�z�s�2A\\\'�\\\\u�n�$���O]��rP�P=D��\\\'��H]I#=\rB_����c��$��v���v$��?�VÁ�s��5Nq���Nj��-	�����n?SP?�8�y�r(\\\'��\nq�ޫȼ�����Zw��mY\Z6`cڤC�<�\Zc ��{})S,�q���&첼r	\\\'�5*��#�aUѸ��Jv��=�K}KM����JJ�N*0p3��/�� z��@sE�q���q���p:�+*�ǽ<K�$�sUk�2ě�@r_ �y�US8$���銍�Ar��sG����\\\\w9?6@�L.���:�l�ȹ��?\\\\�9o�o�H_^)�&��sj[ċ�m8����H�ڹ�1�z�#���<�����bi&w<�Q��_��zB�>�8��b\\\\���Tm��Q��7#�4�K�%��)���A�=y�qOr/cR�� �=}j�n��׽`n!��Z��8������6��v�Vb���ˊp���XI\\0#8�>�Z��2H�2�r��0j�O�S�ǭg$���Y�|`zv�������щ��㊰����jώM���y8���`��s�ֲwk�)y����	�������?����C�K\\\'\r�Q�Cz�,��u�\\0�g�sN7���|V+��J�\\\\4�q�q��}�$Tb���pI�?�Dow�R<���dIx#�nAcn�[��-��N.([��J�B�\nU�ϵsz�����aZ�z\\\"`� 񊶳$�~l��Q�vD4�h�9�r��m��P9���]����p�ʠ�+��4���`\\09��5���3qѸ���','public/img/upload/thumbs/05c3ee2325764505964d4172cda1086f.jpg','SASKDKJK','LKASDLÃ‘KÃ‘','8080809','890808',9808.00,98080.00,'ASJDALSDJL','S','KJASDJS','082989018290',23,108,0,'ASDLAJSDKLJ','Ã‘AKSDÃ‘KAÃ‘LSDK'),(3,'1067846610','ERWIN','MIGUEL','GULFO','VEGA','ERWIN MIGUEL GULFO VEGA ','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','public/img/upload/thumbs/478bb19c58c01e947ced5872e169d344.jpg','CALLE 36 NRO 14C21','KM8 VIA CERETÃ‰','781637','7860146',1000000.00,500000.00,'SALUDTOTAL','S','RENAULT SYMBOL','3126247930',23,108,0,'ERMIGUVE24@HOTMAIL.COM','0'),(4,'345345','HENRY','MANUEL','GULFO','VEGA','HENRY MANUEL GULFO VEGA ','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','public/img/upload/thumbs/19a1a68e27964acd66c3b533ac7f5778.jpg','CALLE 36 # 14C21','KM8 VIA CERETÃ‰','7821637','7908678',800000.00,400000.00,'SALUDTOTAL','S','VIVAX 115','3006543456',23,108,0,'HENRY@HOTMAIL.COM','WERER');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COMMENT='tabla empleados';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,3,0,'Administrador Sistema',NULL,'administrador@softdesignermonteria.net','0000000','00000000000','http://www.softdesignermonteria.net',0,'2013-11-14 00:00:00','2013-11-14','2013-11-20',0.00),(7,3,987654321,'USUPRUEBA','CALLE 36 CRA 14C21','ERMIGUVE24@HOTMAIL.COM','7847858','3126247930','WWW.SOFTDESIGNERMONTERIA.NET',1,'2013-11-20 15:50:42','2013-11-20','2014-12-31',890000.00),(8,3,45678,'USUARIO DE PRUEBA','KM8 VIA CERETÃ‰','ERWIN.GULFO@UPB.EDU.CO','7860146','3126247930','WWW.UPB.EDU.CO',1,'2013-11-22 08:29:52','2013-11-22','2014-12-31',1400000.00),(9,3,1067846610,'ERWIN MIGUEL GULFO V','CALLE 36 NRO 14C21','ERWIN.GULFO@UPB.EDU.CO','784785899','3242222','NO',1,'2014-05-22 14:58:18','2014-05-22','2015-02-28',1000.00);
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
  `tipo_documento_id_creditos` int(12) NOT NULL DEFAULT '0',
  `tipo_documento_id_notas_debito` int(12) NOT NULL DEFAULT '0',
  `tipo_documento_id_recibos_caja` int(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `regimen_id` (`regimen_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AVG_ROW_LENGTH=16384 COMMENT='TABLA EMPRESA - DATOS DE LA EMPRESA';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (3,'99999999-9','InversionesJd','INVERSIONESJD','xxxxxxxx','sin logo',1,'7777777',NULL,'www.www.com','cccc@ccccc.com',0,0,'REFERENCIA',200000.00,'INTERVALO',20,'1','1',10,12,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=321 COMMENT='TABLA DE MENU DE USUARIOS';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,1,0,1,'Terceros','Modulo de Clientes y Proveedores','#','default','navegacion','Terceros','iconos/User_male.png'),(12,0,1,2,'Clientes','Clientes','clientes/','default','navegacion','Terceros','iconos/User_male.png'),(92,1,0,1,'Menu Principal','Menu Principal','#','default','left','sistema','aplicaciones/agenda.jpg'),(93,1,0,1,'Terceros','Modulo de Clientes y Deuores y Empleados','#','default','aplicaciones','Terceros','iconos/User_male.png'),(94,0,1,2,'Clientes','Modulo de Clientes','clientes/','default','aplicaciones','Terceros','iconos/User_male.png'),(95,0,1,3,'Cobradores','Modulo de Cobradores','cobradores/','default','aplicaciones','Terceros','iconos/User_male.png'),(97,10,0,10,'Tablas del Sistemas','Modulo de Tablas del Sistema','#','default','aplicaciones','@','iconos/Gears.png'),(98,0,10,1,'Tipo de Documento','Modulo de tipo de Documento','tipo_documento/','default','aplicaciones','@','iconos/Notepad.png'),(99,0,10,2,'Consecutivos','Modulo de Consecutivos del sistema','consecutivos/','default','aplicaciones','@','iconos/blog_add-64.png'),(100,2,0,1,'Creditos','Modulo de Creditos','#','default','aplicaciones','Creditos','iconos/Folder.png'),(101,0,2,2,'Solicitudes','Modulo de Solicitudes de Credito','solicitud/','default','aplicaciones','Creditos','iconos/Sheet_of_paper.png'),(102,0,2,2,'Creditos','Modulo de Creditos','creditos','default','aplicaciones','Creditos','iconos/Folder.png'),(105,0,2,1,'Recibos de caja','Recibos de caja','recibos_caja/','default','aplicaciones','Creditos','iconos/Visa.png'),(106,0,2,1,'Notas Debitos','Notas Debitos','notas_debito/','default','aplicaciones','Creditos','iconos/address_book-64.png'),(107,0,2,1,'Notas Creditos','Notas Creditos','notas_credito/','default','aplicaciones','Creditos','iconos/Sheet_of_paper.png'),(108,0,1,5,'Cobradores','Cobradores','cobradores/','default','navegacion','Terceros','iconos/User_male.png'),(112,2,0,1,'Creditos','Modulo de Creditos','#','default','navegacion','Creditos','iconos/Folder.png'),(113,0,2,2,'Solicitud','Solicitud','solicitud/','default','navegacion','Creditos','iconos/Sheet_of_paper.png'),(117,0,2,0,'Creditos','Creditos','creditos/','default','navegacion','Creditos','iconos/Folder.png'),(118,0,2,4,'Permitir Creditos','Modulo autorizar Usuarios al Credito','permitir_creditos/','default','aplicaciones','Creditos','iconos/Users-64.png'),(141,3,0,4,'Caja','Modulo de Caja','#','default','navegacion','@','iconos/Visa.png'),(142,0,3,2,'Recibos de Caja','Agregar Recibos de Caja','recibos_caja/','default','navegacion','Tablas del Sistemas','iconos/Visa.png'),(143,0,2,4,'Notas Debito','Modulo de Notas Debito','notas_debito/','default','navegacion','Creditos','iconos/Folder.png'),(144,0,2,5,'Notas Credito','Modulo de Notas Credito','notas_credito/','default','navegacion','Creditos','iconos/Folder.png'),(145,10,0,10,'Reportes','Modulo de Reportes','#','default','navegacion','Reportes','iconos/Chart.png'),(146,0,10,1,'Reportes','Ver Todos los Reportes','reports/','default','navegacion','Reportes','iconos/Chart.png'),(147,0,1,10,'Empleados','Modulo Empleados','empleado/','default','navegacion','Terceros','iconos/User_male.png'),(148,0,1,4,'Empleado','Modulo Empleado','empleado/','default','aplicaciones','Terceros','iconos/User_male.png'),(149,8,0,11,'Usuarios','Modulo Usuario','#','default','aplicaciones','@','iconos/User_black.png'),(150,0,8,1,'Agregar Rol','Modulo Usuarios del Sistema','roles_de_usuario/','default','aplicaciones','@','iconos/User_black.png'),(151,0,8,2,'Agregar Usuario','Agrega Usuario del Sistema','usuarios/','default','aplicaciones','Administracion de Usuarios','iconos/User_black.png'),(152,0,8,3,'Permisos','Otorga Permisos de usuario','administrador/permisos','default','aplicaciones','@','iconos/SETTINGS-flat-64.png'),(153,0,8,5,'Modificar Contraseï¿','Modificar Contraseï¿½a','administrador/modificar','default','aplicaciones','@','iconos/Lock.png'),(154,0,10,5,'Menu App','Menu App','menuapp/','default','aplicaciones','Tablas del Sistemas','iconos/Gears.png'),(155,0,10,4,'Departamentos','Departamentos','departamentos/','default','@','Tablas del Sistemas','iconos/Map.png'),(156,0,10,4,'Municipios','Municipios','municipios','default','aplicaciones','Tablas del Sistemas','iconos/Map.png'),(157,0,10,3,'Departamentos','Departamentos','departamentos/','default','aplicaciones','Tablas del Sistemas','iconos/Map.png'),(158,0,10,6,'Empresa','Configurar Empresa','empresa/','default','aplicaciones','Tablas del Sistema','iconos/empresa.png'),(159,0,10,7,'Huella','Modificar cedula asociada a la huella','somhue','default','aplicaciones','Tablas del Sistema','iconos/huellas.png'),(160,0,10,100,'Copia de Seguridad','Copia de Seguridad','backup/index','default','aplicaciones','@','iconos/db.png'),(161,1,0,1,'Reportes','Reportes Clientes','#','default','reportes','Reportes','iconos/User_male.png'),(162,0,1,1,'Clientes','Reportes Clientes','reports/clientes','default','reportes','Reportes','iconos/User_male.png'),(163,0,1,2,'Referencias','Reportes Referencias','reports/referencias','default','reportes','Reportes','iconos/User_male.png'),(164,2,0,2,'Creditos','Reportes Creditos','reports/creditos','default','reportes','Reportes','iconos/Calendar.png'),(165,0,2,1,'Creditos','Reportes de Creditos','reports/creditos','default','reportes','Reportes','iconos/Folder.png'),(166,3,0,1,'Caja','Reportes de caja','#','default','reportes','Reportes','iconos/Visa.png'),(167,0,3,1,'Recibos caja','Reportes Recibos caja','reports/recibos_caja','default','reportes','Reportes','iconos/Visa.png'),(168,4,0,4,'Cartera','Reporte de Cartera','reports/cartera','default','reportes','Reportes','iconos/Bank-Credit-64.png'),(169,0,4,1,'cartera','Reporte de Cartera','reports/cartera','default','reportes','Reportes','iconos/Bank-Credit-64.png'),(170,0,1,3,'Reporte Historico','Reporte Historico','reports/historico_cliente','default','reportes','Reportes','iconos/Sheet_of_paper.png'),(171,0,2,3,'Reporte Historico','Reporte Historico','reports/historico_cliente','default','reportes','Reportes','iconos/Sheet_of_paper.png'),(172,0,5,4,'Ingresos Diarios','Ingresos Diarios','reports/ingresos_diario','default','reportes','Reportes','iconos/Bank-Credit-64.png'),(174,0,5,5,'Ingresos Mensuales','Ingresos Mensuales','reports/ingresos_mes','default','reportes','Reportes','iconos/Bank-Credit-64.png'),(175,0,5,6,'Ingresos Anuales','Ingresos Anuales','reports/ingresos_annio','default','reportes','Reportes','iconos/Bank-Credit-64.png'),(176,5,0,5,'Ingresos','Ingresos','#','default','reportes','Reportes','iconos/Bank-Credit-64.png'),(177,0,4,2,'Cartera Vencida','Cartera Vencida','reports/cartera_vencida','default','reportes','Reportes','iconos/Bank-Credit-64.png');
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
  `porcentaje` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `numero_notas_credito` (`prefijo`,`consecutivo`),
  KEY `tipo_documento_id` (`tipo_documento_id`),
  KEY `clientes_id` (`clientes_id`),
  KEY `creditos_id` (`creditos_id`),
  KEY `empresa_id` (`empresa_id`),
  CONSTRAINT `notas_debito_fk_clientes` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`id`),
  CONSTRAINT `notas_debito_ibfk_2` FOREIGN KEY (`creditos_id`) REFERENCES `creditos` (`id`),
  CONSTRAINT `notas_debito_ibfk_3` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`),
  CONSTRAINT `notas_debito_tipo_documento` FOREIGN KEY (`tipo_documento_id`) REFERENCES `tipo_documento` (`id`)
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
/*!40000 ALTER TABLE `permitir_creditos` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `posiciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posiciones` (
  `posicion` varchar(50) NOT NULL,
  PRIMARY KEY (`posicion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `posiciones` WRITE;
/*!40000 ALTER TABLE `posiciones` DISABLE KEYS */;
INSERT INTO `posiciones` VALUES ('aplicaciones'),('left'),('navegacion'),('reportes');
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
  `cobradores_id` int(11) NOT NULL DEFAULT '0',
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
  `provisional` varchar(100) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `numero_recibos_caja` (`prefijo`,`consecutivo`),
  KEY `clientes_id` (`clientes_id`),
  KEY `tipo_documento_id` (`tipo_documento_id`),
  KEY `empresa_id` (`empresa_id`),
  CONSTRAINT `recibos_caja_fk_clientes` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`id`),
  CONSTRAINT `recibos_caja_fk_empresa` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`),
  CONSTRAINT `recibos_caja_fk_tipo_documento` FOREIGN KEY (`tipo_documento_id`) REFERENCES `tipo_documento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1 COMMENT='TABLA DE RECIBOS DE CAJA';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `recibos_caja` WRITE;
/*!40000 ALTER TABLE `recibos_caja` DISABLE KEYS */;
INSERT INTO `recibos_caja` VALUES (57,'REC',2,8,1,6,29,'2014-06-16','2014-06-17 19:43:59','19:43:59',0,0,'Generado Automaticamente desde creditos (Martes) ',NULL,NULL,3,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (2,'administrador'),(3,'cajero'),(4,'asesores');
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
INSERT INTO `secciones` VALUES ('Tablas del Sistemas'),('Terceros'),('Creditos'),('Administracion de Usuarios'),('Reportes');
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
  `deudores3_id` int(11) DEFAULT NULL,
  `fecha` date NOT NULL,
  `observacion` varchar(200) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `fecha_registro` datetime NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `estado_solicitud_id` int(11) NOT NULL,
  `porcentaje` int(12) NOT NULL DEFAULT '0',
  `capital` double(15,2) NOT NULL DEFAULT '0.00' COMMENT 'capital prestado',
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `solicitud` WRITE;
/*!40000 ALTER TABLE `solicitud` DISABLE KEYS */;
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
  CONSTRAINT `solicitud_detalle_fk_solicitud` FOREIGN KEY (`id`) REFERENCES `solicitud_detalle` (`solicitud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `solicitud_detalle` WRITE;
/*!40000 ALTER TABLE `solicitud_detalle` DISABLE KEYS */;
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
DROP TABLE IF EXISTS `syslogger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syslogger` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `module` varchar(100) DEFAULT '',
  `application` varchar(100) DEFAULT '',
  `controller` varchar(100) DEFAULT '',
  `action` varchar(100) DEFAULT '',
  `descripcion` text,
  `username` varchar(100) DEFAULT '',
  `error_sistema` text NOT NULL,
  `ip_remota` varchar(200) DEFAULT '',
  `fecha` datetime DEFAULT NULL,
  `tipo_documento_id` int(12) DEFAULT NULL,
  `prefijo` varchar(5) DEFAULT NULL,
  `consecutivo` int(12) unsigned zerofill DEFAULT NULL,
  `objeto` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `syslogger` WRITE;
/*!40000 ALTER TABLE `syslogger` DISABLE KEYS */;
INSERT INTO `syslogger` VALUES (1,NULL,'default','creditos','add','Registro Insertado Movil','21232f297a57a5a743894a0e4a801fc3','Insertado Satisfactoriamente Movil','190.67.202.231','2014-06-17 19:44:00',6,'REC',000000000002,'{\"id\":\"57\",\"prefijo\":\"REC\",\"consecutivo\":\"2\",\"clientes_id\":\"8\",\"cobradores_id\":\"1\",\"tipo_documento_id\":\"6\",\"creditos_id\":\"29\",\"fecha\":\"2014-06-16\",\"fecha_act\":\"2014-06-17 19:43:59\",\"hora_act\":\"19:43:59\",\"activo\":\"0\",\"anulado\":\"0\",\"observaciones\":\"Generado Automaticamente desde creditos (Martes) \",\"cheque\":null,\"banco\":null,\"empresa_id\":\"3\",\"provisional\":null}'),(2,NULL,'default','creditos','add','Registro Insertado','21232f297a57a5a743894a0e4a801fc3','Insertado Detalle Recibo Caja 60','190.67.202.231','2014-06-17 19:44:00',6,'REC',000000000002,'{\"id\":\"1\",\"detalle_cxc_id\":\"1\",\"codigo\":\"1\",\"vencimiento\":\"2014-06-17\",\"recibos_caja_id\":\"57\",\"capital\":\"8333.33\",\"intereses\":\"1666.67\",\"descripcion\":\"Descuento martes 1-REC2-60\",\"valor\":\"10000.000\",\"descuento\":\"0.00\",\"anulado\":\"0\",\"dias_intereses\":\"0\"}'),(3,NULL,'default','creditos','add','Registro Insertado','21232f297a57a5a743894a0e4a801fc3','Insertado Detalle Recibo Caja 60','190.67.202.231','2014-06-17 19:44:00',6,'REC',000000000002,'{\"id\":\"2\",\"detalle_cxc_id\":\"8\",\"codigo\":\"8\",\"vencimiento\":\"2014-06-24\",\"recibos_caja_id\":\"57\",\"capital\":\"8333.33\",\"intereses\":\"1666.67\",\"descripcion\":\"Descuento martes 8-REC2-60\",\"valor\":\"10000.000\",\"descuento\":\"0.00\",\"anulado\":\"0\",\"dias_intereses\":\"0\"}'),(4,NULL,'default','creditos','add','Registro Insertado','21232f297a57a5a743894a0e4a801fc3','Insertado Detalle Recibo Caja 60','190.67.202.231','2014-06-17 19:44:00',6,'REC',000000000002,'{\"id\":\"3\",\"detalle_cxc_id\":\"15\",\"codigo\":\"15\",\"vencimiento\":\"2014-07-01\",\"recibos_caja_id\":\"57\",\"capital\":\"8333.33\",\"intereses\":\"1666.67\",\"descripcion\":\"Descuento martes 15-REC2-60\",\"valor\":\"10000.000\",\"descuento\":\"0.00\",\"anulado\":\"0\",\"dias_intereses\":\"0\"}'),(5,NULL,'default','creditos','add','Registro Insertado','21232f297a57a5a743894a0e4a801fc3','Insertado Detalle Recibo Caja 60','190.67.202.231','2014-06-17 19:44:00',6,'REC',000000000002,'{\"id\":\"4\",\"detalle_cxc_id\":\"22\",\"codigo\":\"22\",\"vencimiento\":\"2014-07-08\",\"recibos_caja_id\":\"57\",\"capital\":\"8333.33\",\"intereses\":\"1666.67\",\"descripcion\":\"Descuento martes 22-REC2-60\",\"valor\":\"10000.000\",\"descuento\":\"0.00\",\"anulado\":\"0\",\"dias_intereses\":\"0\"}'),(6,NULL,'default','creditos','add','Registro Insertado','21232f297a57a5a743894a0e4a801fc3','Insertado Detalle Recibo Caja 60','190.67.202.231','2014-06-17 19:44:00',6,'REC',000000000002,'{\"id\":\"5\",\"detalle_cxc_id\":\"29\",\"codigo\":\"29\",\"vencimiento\":\"2014-07-15\",\"recibos_caja_id\":\"57\",\"capital\":\"8333.33\",\"intereses\":\"1666.67\",\"descripcion\":\"Descuento martes 29-REC2-60\",\"valor\":\"10000.000\",\"descuento\":\"0.00\",\"anulado\":\"0\",\"dias_intereses\":\"0\"}'),(7,NULL,'default','creditos','add','Registro Insertado','21232f297a57a5a743894a0e4a801fc3','Insertado Detalle Recibo Caja 60','190.67.202.231','2014-06-17 19:44:00',6,'REC',000000000002,'{\"id\":\"6\",\"detalle_cxc_id\":\"36\",\"codigo\":\"36\",\"vencimiento\":\"2014-07-22\",\"recibos_caja_id\":\"57\",\"capital\":\"8333.33\",\"intereses\":\"1666.67\",\"descripcion\":\"Descuento martes 36-REC2-60\",\"valor\":\"10000.000\",\"descuento\":\"0.00\",\"anulado\":\"0\",\"dias_intereses\":\"0\"}'),(8,NULL,'default','creditos','add','Registro Insertado','21232f297a57a5a743894a0e4a801fc3','Insertado Detalle Recibo Caja 60','190.67.202.231','2014-06-17 19:44:00',6,'REC',000000000002,'{\"id\":\"7\",\"detalle_cxc_id\":\"43\",\"codigo\":\"43\",\"vencimiento\":\"2014-07-29\",\"recibos_caja_id\":\"57\",\"capital\":\"8333.33\",\"intereses\":\"1666.67\",\"descripcion\":\"Descuento martes 43-REC2-60\",\"valor\":\"10000.000\",\"descuento\":\"0.00\",\"anulado\":\"0\",\"dias_intereses\":\"0\"}'),(9,NULL,'default','creditos','add','Registro Insertado','21232f297a57a5a743894a0e4a801fc3','Insertado Detalle Recibo Caja 60','190.67.202.231','2014-06-17 19:44:00',6,'REC',000000000002,'{\"id\":\"8\",\"detalle_cxc_id\":\"50\",\"codigo\":\"50\",\"vencimiento\":\"2014-08-05\",\"recibos_caja_id\":\"57\",\"capital\":\"8333.33\",\"intereses\":\"1666.67\",\"descripcion\":\"Descuento martes 50-REC2-60\",\"valor\":\"10000.000\",\"descuento\":\"0.00\",\"anulado\":\"0\",\"dias_intereses\":\"0\"}'),(10,NULL,'default','creditos','add','Registro Insertado','21232f297a57a5a743894a0e4a801fc3','Insertado Detalle Recibo Caja 60','190.67.202.231','2014-06-17 19:44:00',6,'REC',000000000002,'{\"id\":\"9\",\"detalle_cxc_id\":\"57\",\"codigo\":\"57\",\"vencimiento\":\"2014-08-12\",\"recibos_caja_id\":\"57\",\"capital\":\"8333.33\",\"intereses\":\"1666.67\",\"descripcion\":\"Descuento martes 57-REC2-60\",\"valor\":\"10000.000\",\"descuento\":\"0.00\",\"anulado\":\"0\",\"dias_intereses\":\"0\"}'),(11,NULL,'default','cobradores_movil','extraer_cobradores','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'cobradores_movil/extraer_cobradores Usuarios del Sistema \' Fecha 2014-06-17 19:53:11','190.13.109.249','2014-06-17 19:53:11',NULL,NULL,NULL,NULL),(12,NULL,'default','cartera_movil','extraer_cartera','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'cartera_movil/extraer_cartera Usuarios del Sistema \' Fecha 2014-06-17 19:53:11','190.13.109.249','2014-06-17 19:53:11',NULL,NULL,NULL,NULL),(13,NULL,'default','usuarios_movil','extraer_usuarios','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'usuarios_movil/extraer_usuarios Usuarios del Sistema \' Fecha 2014-06-17 19:53:12','190.216.136.150','2014-06-17 19:53:12',NULL,NULL,NULL,NULL),(14,NULL,'default','cobradores_movil','extraer_cobradores','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'cobradores_movil/extraer_cobradores Usuarios del Sistema \' Fecha 2014-06-17 19:54:16','190.67.202.231','2014-06-17 19:54:16',NULL,NULL,NULL,NULL),(15,NULL,'default','cartera_movil','extraer_cartera','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'cartera_movil/extraer_cartera Usuarios del Sistema \' Fecha 2014-06-17 19:54:27','190.67.202.231','2014-06-17 19:54:27',NULL,NULL,NULL,NULL),(16,NULL,'default','usuarios_movil','extraer_usuarios','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'usuarios_movil/extraer_usuarios Usuarios del Sistema \' Fecha 2014-06-17 19:54:28','190.67.202.231','2014-06-17 19:54:28',NULL,NULL,NULL,NULL),(17,NULL,'default','cobradores_movil','extraer_cobradores','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'cobradores_movil/extraer_cobradores Usuarios del Sistema \' Fecha 2014-06-17 19:55:02','190.67.202.231','2014-06-17 19:55:02',NULL,NULL,NULL,NULL),(18,NULL,'default','cartera_movil','extraer_cartera','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'cartera_movil/extraer_cartera Usuarios del Sistema \' Fecha 2014-06-17 19:55:24','190.67.202.231','2014-06-17 19:55:24',NULL,NULL,NULL,NULL),(19,NULL,'default','usuarios_movil','extraer_usuarios','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'usuarios_movil/extraer_usuarios Usuarios del Sistema \' Fecha 2014-06-17 19:55:28','190.67.202.231','2014-06-17 19:55:28',NULL,NULL,NULL,NULL),(20,NULL,'default','cobradores_movil','extraer_cobradores','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'cobradores_movil/extraer_cobradores Usuarios del Sistema \' Fecha 2014-06-17 19:56:08','190.67.202.231','2014-06-17 19:56:08',NULL,NULL,NULL,NULL),(21,NULL,'default','cobradores_movil','extraer_cobradores','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'cobradores_movil/extraer_cobradores Usuarios del Sistema \' Fecha 2014-06-22 11:06:44','190.216.136.150','2014-06-22 11:06:44',NULL,NULL,NULL,NULL),(22,NULL,'default','cartera_movil','extraer_cartera','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'cartera_movil/extraer_cartera Usuarios del Sistema \' Fecha 2014-06-22 11:06:46','190.13.109.249','2014-06-22 11:06:46',NULL,NULL,NULL,NULL),(23,NULL,'default','usuarios_movil','extraer_usuarios','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'usuarios_movil/extraer_usuarios Usuarios del Sistema \' Fecha 2014-06-22 11:06:47','190.13.109.249','2014-06-22 11:06:47',NULL,NULL,NULL,NULL),(24,NULL,'default','cartera_movil','extraer_cartera','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'cartera_movil/extraer_cartera Usuarios del Sistema \' Fecha 2014-06-22 11:09:18','190.13.109.249','2014-06-22 11:09:18',NULL,NULL,NULL,NULL),(25,NULL,'default','cobradores_movil','extraer_cobradores','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'cobradores_movil/extraer_cobradores Usuarios del Sistema \' Fecha 2014-06-22 11:09:47','190.13.109.249','2014-06-22 11:09:47',NULL,NULL,NULL,NULL),(26,NULL,'default','cartera_movil','extraer_cartera','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'cartera_movil/extraer_cartera Usuarios del Sistema \' Fecha 2014-06-22 11:09:51','190.216.136.150','2014-06-22 11:09:51',NULL,NULL,NULL,NULL),(27,NULL,'default','usuarios_movil','extraer_usuarios','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'usuarios_movil/extraer_usuarios Usuarios del Sistema \' Fecha 2014-06-22 11:09:52','190.216.136.150','2014-06-22 11:09:52',NULL,NULL,NULL,NULL),(28,NULL,'default','cartera_movil','extraer_cartera','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'cartera_movil/extraer_cartera Usuarios del Sistema \' Fecha 2014-06-22 11:10:52','190.216.136.150','2014-06-22 11:10:52',NULL,NULL,NULL,NULL),(29,NULL,'default','cobradores_movil','extraer_cobradores','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'cobradores_movil/extraer_cobradores Usuarios del Sistema \' Fecha 2014-06-22 11:11:00','190.216.136.150','2014-06-22 11:11:00',NULL,NULL,NULL,NULL),(30,NULL,'default','cartera_movil','extraer_cartera','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'cartera_movil/extraer_cartera Usuarios del Sistema \' Fecha 2014-06-22 11:11:01','190.216.136.150','2014-06-22 11:11:01',NULL,NULL,NULL,NULL),(31,NULL,'default','usuarios_movil','extraer_usuarios','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'usuarios_movil/extraer_usuarios Usuarios del Sistema \' Fecha 2014-06-22 11:11:02','190.216.136.150','2014-06-22 11:11:02',NULL,NULL,NULL,NULL),(32,NULL,'default','cobradores_movil','extraer_cobradores','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'cobradores_movil/extraer_cobradores Usuarios del Sistema \' Fecha 2014-06-22 11:11:22','190.13.109.249','2014-06-22 11:11:22',NULL,NULL,NULL,NULL),(33,NULL,'default','cartera_movil','extraer_cartera','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'cartera_movil/extraer_cartera Usuarios del Sistema \' Fecha 2014-06-22 11:11:25','190.216.136.150','2014-06-22 11:11:25',NULL,NULL,NULL,NULL),(34,NULL,'default','usuarios_movil','extraer_usuarios','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'usuarios_movil/extraer_usuarios Usuarios del Sistema \' Fecha 2014-06-22 11:11:26','190.13.109.249','2014-06-22 11:11:26',NULL,NULL,NULL,NULL),(35,NULL,'default','cartera_movil','extraer_cartera','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'cartera_movil/extraer_cartera Usuarios del Sistema \' Fecha 2014-06-22 11:12:45','181.71.140.67','2014-06-22 11:12:45',NULL,NULL,NULL,NULL),(36,NULL,'default','cobradores_movil','extraer_cobradores','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'cobradores_movil/extraer_cobradores Usuarios del Sistema \' Fecha 2014-06-22 11:13:08','181.71.140.67','2014-06-22 11:13:08',NULL,NULL,NULL,NULL),(37,NULL,'default','cobradores_movil','extraer_cobradores','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'cobradores_movil/extraer_cobradores Usuarios del Sistema \' Fecha 2014-06-22 11:13:14','181.71.140.67','2014-06-22 11:13:14',NULL,NULL,NULL,NULL),(38,NULL,'default','cartera_movil','extraer_cartera','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'cartera_movil/extraer_cartera Usuarios del Sistema \' Fecha 2014-06-22 11:13:18','181.71.140.67','2014-06-22 11:13:18',NULL,NULL,NULL,NULL),(39,NULL,'default','cobradores_movil','extraer_cobradores','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'cobradores_movil/extraer_cobradores Usuarios del Sistema \' Fecha 2014-06-22 11:13:21','181.71.140.67','2014-06-22 11:13:21',NULL,NULL,NULL,NULL),(40,NULL,'default','cartera_movil','extraer_cartera','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'cartera_movil/extraer_cartera Usuarios del Sistema \' Fecha 2014-06-22 11:13:22','181.71.140.67','2014-06-22 11:13:22',NULL,NULL,NULL,NULL),(41,NULL,'default','usuarios_movil','extraer_usuarios','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'usuarios_movil/extraer_usuarios Usuarios del Sistema \' Fecha 2014-06-22 11:13:23','181.71.140.67','2014-06-22 11:13:23',NULL,NULL,NULL,NULL),(42,NULL,'default','cobradores_movil','extraer_cobradores','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'cobradores_movil/extraer_cobradores Usuarios del Sistema \' Fecha 2014-06-22 11:17:59','181.71.140.67','2014-06-22 11:17:59',NULL,NULL,NULL,NULL),(43,NULL,'default','cobradores_movil','extraer_cobradores','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'cobradores_movil/extraer_cobradores Usuarios del Sistema \' Fecha 2014-06-22 11:18:03','181.71.140.67','2014-06-22 11:18:03',NULL,NULL,NULL,NULL),(44,NULL,'default','cartera_movil','extraer_cartera','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'cartera_movil/extraer_cartera Usuarios del Sistema \' Fecha 2014-06-22 11:18:06','181.71.140.67','2014-06-22 11:18:06',NULL,NULL,NULL,NULL),(45,NULL,'default','cartera_movil','extraer_cartera','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'cartera_movil/extraer_cartera Usuarios del Sistema \' Fecha 2014-06-22 11:18:10','181.71.140.67','2014-06-22 11:18:10',NULL,NULL,NULL,NULL),(46,NULL,'default','cobradores_movil','extraer_cobradores','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'cobradores_movil/extraer_cobradores Usuarios del Sistema \' Fecha 2014-06-22 11:19:37','181.71.140.67','2014-06-22 11:19:37',NULL,NULL,NULL,NULL),(47,NULL,'default','cobradores_movil','extraer_cobradores','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'cobradores_movil/extraer_cobradores Usuarios del Sistema \' Fecha 2014-06-22 11:19:41','181.71.140.67','2014-06-22 11:19:41',NULL,NULL,NULL,NULL),(48,NULL,'default','cartera_movil','extraer_cartera','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'cartera_movil/extraer_cartera Usuarios del Sistema \' Fecha 2014-06-22 11:19:44','181.71.140.67','2014-06-22 11:19:44',NULL,NULL,NULL,NULL),(49,NULL,'default','cartera_movil','extraer_cartera','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'cartera_movil/extraer_cartera Usuarios del Sistema \' Fecha 2014-06-22 11:19:47','181.71.140.67','2014-06-22 11:19:47',NULL,NULL,NULL,NULL),(50,NULL,'default','usuarios_movil','extraer_usuarios','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'usuarios_movil/extraer_usuarios Usuarios del Sistema \' Fecha 2014-06-22 11:19:51','181.71.140.67','2014-06-22 11:19:51',NULL,NULL,NULL,NULL),(51,NULL,'default','cobradores_movil','extraer_cobradores','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'cobradores_movil/extraer_cobradores Usuarios del Sistema \' Fecha 2014-06-22 11:19:54','181.71.140.67','2014-06-22 11:19:54',NULL,NULL,NULL,NULL),(52,NULL,'default','cartera_movil','extraer_cartera','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'cartera_movil/extraer_cartera Usuarios del Sistema \' Fecha 2014-06-22 11:19:55','181.71.140.67','2014-06-22 11:19:55',NULL,NULL,NULL,NULL),(53,NULL,'default','usuarios_movil','extraer_usuarios','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'usuarios_movil/extraer_usuarios Usuarios del Sistema \' Fecha 2014-06-22 11:19:56','181.71.140.67','2014-06-22 11:19:56',NULL,NULL,NULL,NULL),(54,NULL,'default','cartera_movil','extraer_cartera','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'cartera_movil/extraer_cartera Usuarios del Sistema \' Fecha 2014-06-22 11:20:55','181.71.140.67','2014-06-22 11:20:55',NULL,NULL,NULL,NULL),(55,NULL,'default','cartera_movil','extraer_cartera','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'cartera_movil/extraer_cartera Usuarios del Sistema \' Fecha 2014-06-22 11:21:01','181.71.140.67','2014-06-22 11:21:01',NULL,NULL,NULL,NULL),(56,NULL,'default','cartera_movil','extraer_cartera','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'cartera_movil/extraer_cartera Usuarios del Sistema \' Fecha 2014-06-22 11:23:04','181.71.140.67','2014-06-22 11:23:04',NULL,NULL,NULL,NULL),(57,NULL,'default','cartera_movil','extraer_cartera','Error de Acceso',NULL,'El usuario debe estar autenticado para usar este modulo recurso: \'cartera_movil/extraer_cartera Usuarios del Sistema \' Fecha 2014-06-23 06:20:12','190.216.136.150','2014-06-23 06:20:12',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `syslogger` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=16384 COMMENT='TABLA TIPO DOCUMENTO';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tipo_documento` WRITE;
/*!40000 ALTER TABLE `tipo_documento` DISABLE KEYS */;
INSERT INTO `tipo_documento` VALUES (1,'COMPRAS',3,NULL,'20','20',0,'7','Arial',NULL,'media_letter'),(2,'ENTRADAS_ESPECIALES',3,NULL,'20','20',0,'7','Arial',NULL,'media_letter'),(3,'PEDIDO_CLIENTES',3,NULL,'20','20',0,'7','Arial',NULL,'media_letter'),(4,'EGRESOS',3,NULL,'20','20',0,'7','Arial',NULL,'media_letter'),(5,'SALIDAS_ESPECIALES',3,NULL,'20','20',0,'7','Arial',NULL,'media_letter'),(6,'RECIBOS_CAJA',3,NULL,'20','20',0,'7','Arial',NULL,'media_letter'),(7,'CUADRE_CAJA',3,NULL,'20','20',0,'7','Arial',NULL,'media_letter'),(8,'TRASLADOS',3,NULL,'20','20',0,'7','Arial',NULL,'media_letter'),(9,'SOLICITUD',3,NULL,'20','20',0,'7','Arial',NULL,'media_letter'),(10,'CREDITOS',3,NULL,'0','0',0,'12','ARIAL',NULL,'CARTA'),(11,'NOTAS_CREDITO',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'NOTAS_DEBITO',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tipo_documento` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `view_cartera`;
/*!50001 DROP VIEW IF EXISTS `view_cartera`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_cartera` (
  `empresa_id` tinyint NOT NULL,
  `clientes_id` tinyint NOT NULL,
  `fecha` tinyint NOT NULL,
  `id` tinyint NOT NULL,
  `creditos_id` tinyint NOT NULL,
  `idt` tinyint NOT NULL,
  `tipo_documento_id` tinyint NOT NULL,
  `prefijo` tinyint NOT NULL,
  `consecutivo` tinyint NOT NULL,
  `vencimiento` tinyint NOT NULL,
  `codigo` tinyint NOT NULL,
  `valor_cuota` tinyint NOT NULL,
  `valor_pagado` tinyint NOT NULL,
  `valor_nota_credito` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;
/*!50001 DROP TABLE IF EXISTS `view_cartera`*/;
/*!50001 DROP VIEW IF EXISTS `view_cartera`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_cartera` AS select `creditos`.`empresa_id` AS `empresa_id`,`creditos`.`clientes_id` AS `clientes_id`,`creditos`.`fecha` AS `fecha`,`detalle_cxc`.`id` AS `id`,`detalle_cxc`.`creditos_id` AS `creditos_id`,`detalle_cxc`.`idt` AS `idt`,`detalle_cxc`.`tipo_documento_id` AS `tipo_documento_id`,`detalle_cxc`.`prefijo` AS `prefijo`,`detalle_cxc`.`consecutivo` AS `consecutivo`,`detalle_cxc`.`vencimiento` AS `vencimiento`,`detalle_cxc`.`codigo` AS `codigo`,sum((`detalle_cxc`.`valor` * `detalle_cxc`.`multiplicar`)) AS `valor_cuota`,ifnull((select sum(`rc`.`valor`) AS `valor` from `detalle_recibos_caja` `rc` where ((`rc`.`detalle_cxc_id` = `detalle_cxc`.`id`) and (`rc`.`anulado` = 0))),0) AS `valor_pagado`,ifnull((select sum(`nc`.`valor`) AS `valor` from `detalle_notas_credito` `nc` where ((`nc`.`detalle_cxc_id` = `detalle_cxc`.`id`) and (`nc`.`anulado` = 0))),0) AS `valor_nota_credito` from (`creditos` join `detalle_cxc`) where ((`creditos`.`id` = `detalle_cxc`.`creditos_id`) and (`detalle_cxc`.`anulado` = 0)) group by `creditos`.`empresa_id`,`creditos`.`clientes_id`,`creditos`.`fecha`,`detalle_cxc`.`tipo_documento_id`,`detalle_cxc`.`prefijo`,`detalle_cxc`.`consecutivo`,`detalle_cxc`.`vencimiento`,`detalle_cxc`.`codigo`,ifnull((select sum(`rc`.`valor`) AS `valor` from `detalle_recibos_caja` `rc` where ((`rc`.`detalle_cxc_id` = `detalle_cxc`.`id`) and (`rc`.`anulado` = 0))),0),ifnull((select sum(`nc`.`valor`) AS `valor` from `detalle_notas_credito` `nc` where ((`nc`.`detalle_cxc_id` = `detalle_cxc`.`id`) and (`nc`.`anulado` = 0))),0) having ((((`valor_cuota` - `valor_pagado`) - `valor_nota_credito`) > 0) and (`valor_cuota` > 0)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

