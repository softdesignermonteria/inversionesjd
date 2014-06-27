
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COMMENT='tabla empleados';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,3,0,'Administrador Sistema',NULL,'administrador@softdesignermonteria.net','0000000','00000000000','http://www.softdesignermonteria.net',0,'2013-11-14 00:00:00','2013-11-14','2013-11-20',0.00),(7,3,987654321,'USUPRUEBA','CALLE 36 CRA 14C21','ERMIGUVE24@HOTMAIL.COM','7847858','3126247930','WWW.SOFTDESIGNERMONTERIA.NET',1,'2013-11-20 15:50:42','2013-11-20','2014-12-31',890000.00),(8,3,45678,'USUARIO DE PRUEBA','KM8 VIA CERETÃƒâ€°','ERWIN.GULFO@UPB.EDU.CO','7860146','3126247930','WWW.UPB.EDU.CO',1,'2013-11-22 08:29:52','2013-11-22','2014-12-31',1400000.00),(9,3,1067846610,'ERWIN MIGUEL GULFO V','CALLE 36 NRO 14C21','ERWIN.GULFO@UPB.EDU.CO','784785899','3242222','NO',1,'2014-05-22 14:58:18','2014-05-22','2015-02-28',1000.00);
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
INSERT INTO `menu` VALUES (1,1,0,1,'Terceros','Modulo de Clientes y Proveedores','#','default','navegacion','Terceros','iconos/User_male.png'),(12,0,1,2,'Clientes','Clientes','clientes/','default','navegacion','Terceros','iconos/User_male.png'),(92,1,0,1,'Menu Principal','Menu Principal','#','default','left','sistema','aplicaciones/agenda.jpg'),(93,1,0,1,'Terceros','Modulo de Clientes y Deuores y Empleados','#','default','aplicaciones','Terceros','iconos/User_male.png'),(94,0,1,2,'Clientes','Modulo de Clientes','clientes/','default','aplicaciones','Terceros','iconos/User_male.png'),(95,0,1,3,'Cobradores','Modulo de Cobradores','cobradores/','default','aplicaciones','Terceros','iconos/User_male.png'),(97,10,0,10,'Tablas del Sistemas','Modulo de Tablas del Sistema','#','default','aplicaciones','@','iconos/Gears.png'),(98,0,10,1,'Tipo de Documento','Modulo de tipo de Documento','tipo_documento/','default','aplicaciones','@','iconos/Notepad.png'),(99,0,10,2,'Consecutivos','Modulo de Consecutivos del sistema','consecutivos/','default','aplicaciones','@','iconos/blog_add-64.png'),(100,2,0,1,'Creditos','Modulo de Creditos','#','default','aplicaciones','Creditos','iconos/Folder.png'),(101,0,2,2,'Solicitudes','Modulo de Solicitudes de Credito','solicitud/','default','aplicaciones','Creditos','iconos/Sheet_of_paper.png'),(102,0,2,2,'Creditos','Modulo de Creditos','creditos','default','aplicaciones','Creditos','iconos/Folder.png'),(105,0,2,1,'Recibos de caja','Recibos de caja','recibos_caja/','default','aplicaciones','Creditos','iconos/Visa.png'),(106,0,2,1,'Notas Debitos','Notas Debitos','notas_debito/','default','aplicaciones','Creditos','iconos/address_book-64.png'),(107,0,2,1,'Notas Creditos','Notas Creditos','notas_credito/','default','aplicaciones','Creditos','iconos/Sheet_of_paper.png'),(108,0,1,5,'Cobradores','Cobradores','cobradores/','default','navegacion','Terceros','iconos/User_male.png'),(112,2,0,1,'Creditos','Modulo de Creditos','#','default','navegacion','Creditos','iconos/Folder.png'),(113,0,2,2,'Solicitud','Solicitud','solicitud/','default','navegacion','Creditos','iconos/Sheet_of_paper.png'),(117,0,2,0,'Creditos','Creditos','creditos/','default','navegacion','Creditos','iconos/Folder.png'),(118,0,2,4,'Permitir Creditos','Modulo autorizar Usuarios al Credito','permitir_creditos/','default','aplicaciones','Creditos','iconos/Users-64.png'),(141,3,0,4,'Caja','Modulo de Caja','#','default','navegacion','@','iconos/Visa.png'),(142,0,3,2,'Recibos de Caja','Agregar Recibos de Caja','recibos_caja/','default','navegacion','Tablas del Sistemas','iconos/Visa.png'),(143,0,2,4,'Notas Debito','Modulo de Notas Debito','notas_debito/','default','navegacion','Creditos','iconos/Folder.png'),(144,0,2,5,'Notas Credito','Modulo de Notas Credito','notas_credito/','default','navegacion','Creditos','iconos/Folder.png'),(145,10,0,10,'Reportes','Modulo de Reportes','#','default','navegacion','Reportes','iconos/Chart.png'),(146,0,10,1,'Reportes','Ver Todos los Reportes','reports/','default','navegacion','Reportes','iconos/Chart.png'),(147,0,1,10,'Empleados','Modulo Empleados','empleado/','default','navegacion','Terceros','iconos/User_male.png'),(148,0,1,4,'Empleado','Modulo Empleado','empleado/','default','aplicaciones','Terceros','iconos/User_male.png'),(149,8,0,11,'Usuarios','Modulo Usuario','#','default','aplicaciones','@','iconos/User_black.png'),(150,0,8,1,'Agregar Rol','Modulo Usuarios del Sistema','roles_de_usuario/','default','aplicaciones','@','iconos/User_black.png'),(151,0,8,2,'Agregar Usuario','Agrega Usuario del Sistema','usuarios/','default','aplicaciones','Administracion de Usuarios','iconos/User_black.png'),(152,0,8,3,'Permisos','Otorga Permisos de usuario','administrador/permisos','default','aplicaciones','@','iconos/SETTINGS-flat-64.png'),(153,0,8,5,'Modificar ContraseÃ¯Â¿','Modificar ContraseÃ¯Â¿Â½a','administrador/modificar','default','aplicaciones','@','iconos/Lock.png'),(154,0,10,5,'Menu App','Menu App','menuapp/','default','aplicaciones','Tablas del Sistemas','iconos/Gears.png'),(155,0,10,4,'Departamentos','Departamentos','departamentos/','default','@','Tablas del Sistemas','iconos/Map.png'),(156,0,10,4,'Municipios','Municipios','municipios','default','aplicaciones','Tablas del Sistemas','iconos/Map.png'),(157,0,10,3,'Departamentos','Departamentos','departamentos/','default','aplicaciones','Tablas del Sistemas','iconos/Map.png'),(158,0,10,6,'Empresa','Configurar Empresa','empresa/','default','aplicaciones','Tablas del Sistema','iconos/empresa.png'),(159,0,10,7,'Huella','Modificar cedula asociada a la huella','somhue','default','aplicaciones','Tablas del Sistema','iconos/huellas.png'),(160,0,10,100,'Copia de Seguridad','Copia de Seguridad','backup/index','default','aplicaciones','@','iconos/db.png'),(161,1,0,1,'Reportes','Reportes Clientes','#','default','reportes','Reportes','iconos/User_male.png'),(162,0,1,1,'Clientes','Reportes Clientes','reports/clientes','default','reportes','Reportes','iconos/User_male.png'),(163,0,1,2,'Referencias','Reportes Referencias','reports/referencias','default','reportes','Reportes','iconos/User_male.png'),(164,2,0,2,'Creditos','Reportes Creditos','reports/creditos','default','reportes','Reportes','iconos/Calendar.png'),(165,0,2,1,'Creditos','Reportes de Creditos','reports/creditos','default','reportes','Reportes','iconos/Folder.png'),(166,3,0,1,'Caja','Reportes de caja','#','default','reportes','Reportes','iconos/Visa.png'),(167,0,3,1,'Recibos caja','Reportes Recibos caja','reports/recibos_caja','default','reportes','Reportes','iconos/Visa.png'),(168,4,0,4,'Cartera','Reporte de Cartera','reports/cartera','default','reportes','Reportes','iconos/Bank-Credit-64.png'),(169,0,4,1,'cartera','Reporte de Cartera','reports/cartera','default','reportes','Reportes','iconos/Bank-Credit-64.png'),(170,0,1,3,'Reporte Historico','Reporte Historico','reports/historico_cliente','default','reportes','Reportes','iconos/Sheet_of_paper.png'),(171,0,2,3,'Reporte Historico','Reporte Historico','reports/historico_cliente','default','reportes','Reportes','iconos/Sheet_of_paper.png'),(172,0,5,4,'Ingresos Diarios','Ingresos Diarios','reports/ingresos_diario','default','reportes','Reportes','iconos/Bank-Credit-64.png'),(174,0,5,5,'Ingresos Mensuales','Ingresos Mensuales','reports/ingresos_mes','default','reportes','Reportes','iconos/Bank-Credit-64.png'),(175,0,5,6,'Ingresos Anuales','Ingresos Anuales','reports/ingresos_annio','default','reportes','Reportes','iconos/Bank-Credit-64.png'),(176,5,0,5,'Ingresos','Ingresos','#','default','reportes','Reportes','iconos/Bank-Credit-64.png'),(177,0,4,2,'Cartera Vencida','Cartera Vencida','reports/cartera_vencida','default','reportes','Reportes','iconos/Bank-Credit-64.png');
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

