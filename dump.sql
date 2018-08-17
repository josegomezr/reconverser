-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: aula_upc
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.16.04.1

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
-- Table structure for table `clase_evaluacion`
--

DROP TABLE IF EXISTS `clase_evaluacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clase_evaluacion` (
  `desde` int(11) NOT NULL,
  `hasta` int(11) NOT NULL,
  `clase` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clase_evaluacion`
--

LOCK TABLES `clase_evaluacion` WRITE;
/*!40000 ALTER TABLE `clase_evaluacion` DISABLE KEYS */;
INSERT INTO `clase_evaluacion` VALUES (0,1,'N/A','http://upc.josegomezr.com.ve/static/assets/img/clases/icono-na.png'),(1,2,'Puede mejorar','http://upc.josegomezr.com.ve/static/assets/img/clases/icono-por-mejorar.png'),(2,3,'Regular','http://upc.josegomezr.com.ve/static/assets/img/clases/icono-regular.png'),(3,4,'Bueno','http://upc.josegomezr.com.ve/static/assets/img/clases/icono-bueno.png'),(4,5,'Excelente','http://upc.josegomezr.com.ve/static/assets/img/clases/icono-excelente.png');
/*!40000 ALTER TABLE `clase_evaluacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversacion`
--

DROP TABLE IF EXISTS `conversacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversacion` (
  `conversacion_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `estudiante_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hilo_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`conversacion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversacion`
--

LOCK TABLES `conversacion` WRITE;
/*!40000 ALTER TABLE `conversacion` DISABLE KEYS */;
INSERT INTO `conversacion` VALUES (1,'2','1'),(2,'1','1'),(3,'2','2'),(4,'1','2'),(5,'2','3'),(6,'1','3'),(7,'1','4'),(8,'3','4');
/*!40000 ALTER TABLE `conversacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curso` (
  `curso_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `curso_codigo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `curso_nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `curso_icono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`curso_id`),
  KEY `curso_curso_codigo_index` (`curso_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'15rh9x','Base de Datos III','2018-06-24 03:56:13','2018-06-24 03:56:13','https://placehold.it/128x128?text=15rh9x'),(2,'p6n5bm','Matemática I','2018-06-24 03:56:13','2018-06-24 03:56:13','http://upc.josegomezr.com.ve/static/assets/img/cursos/matematica-basica.png'),(3,'zxplet','Ortografía y Redacción','2018-06-24 03:56:14','2018-06-24 03:56:14','https://placehold.it/128x128?text=zxplet'),(4,'f8sedz','Administración II','2018-06-24 03:56:14','2018-06-24 03:56:14','https://placehold.it/128x128?text=f8sedz'),(5,'9d5onm','Física III','2018-06-24 03:56:14','2018-06-24 03:56:14','http://upc.josegomezr.com.ve/static/assets/img/cursos/fisica.png'),(6,'ymg2dg','Química IV','2018-06-24 03:56:14','2018-06-24 03:56:14','http://upc.josegomezr.com.ve/static/assets/img/cursos/quimica.png'),(7,'87dhi9','Contabilidad General','2018-06-24 03:56:14','2018-06-24 03:56:14','https://placehold.it/128x128?text=87dhi9'),(8,'p2jb8u','Contabilidad Financiera','2018-06-24 03:56:14','2018-06-24 03:56:14','https://placehold.it/128x128?text=p2jb8u'),(9,'lsva78','Logísitca I','2018-06-24 03:56:14','2018-06-24 03:56:14','https://placehold.it/128x128?text=lsva78'),(10,'2iloxt','Programación IV','2018-06-24 03:56:14','2018-06-24 03:56:14','https://placehold.it/128x128?text=2iloxt'),(11,'2bpjrl','Bases de datos VI','2018-06-24 03:56:14','2018-06-24 03:56:14','https://placehold.it/128x128?text=2bpjrl'),(12,'5hughy','Minicomputadoras','2018-06-24 03:56:14','2018-06-24 03:56:14','https://placehold.it/128x128?text=5hughy'),(13,'plnq4m','Algoritmos I','2018-06-24 03:56:14','2018-06-24 03:56:14','https://placehold.it/128x128?text=plnq4m'),(14,'wjeuql','Programación Web I','2018-06-24 03:56:14','2018-06-24 03:56:14','https://placehold.it/128x128?text=wjeuql'),(15,'a0lmlw','Redes I','2018-06-24 03:56:14','2018-06-24 03:56:14','https://placehold.it/128x128?text=a0lmlw');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiante`
--

DROP TABLE IF EXISTS `estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estudiante` (
  `estudiante_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `estudiante_codigo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estudiante_nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estudiante_apellido_paterno` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estudiante_apellido_materno` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estudiante_distrito` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estudiante_sexo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estudiante_correo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estudiante_correo_personal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estudiante_telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estudiante_facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `estudiante_facultad` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estudiante_foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`estudiante_id`),
  KEY `estudiante_estudiante_codigo_index` (`estudiante_codigo`),
  KEY `estudiante_estudiante_correo_index` (`estudiante_correo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiante`
--

LOCK TABLES `estudiante` WRITE;
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
INSERT INTO `estudiante` VALUES (1,'n05oox','Angela','Paredes','Perez','75-63-81','f','usuario1@upc.edu.pe','jewel.boehm@yahoo.com','+5970662005674','xhagenes','2018-06-24 03:56:13','2018-06-24 03:56:13','Ing. Química','http://upc.josegomezr.com.ve/static/assets/img/estudiantes/estudiante-1.png'),(2,'h64iss','Richard','Quispe','Dávila','91-01-38','m','usuario2@upc.edu.pe','ppouros@hotmail.com','+8556623917813','anderson.ella','2018-06-24 03:56:13','2018-06-24 03:56:13','Ing. Civil','http://upc.josegomezr.com.ve/static/assets/img/estudiantes/estudiante-1.png'),(3,'tiqzkd','Mariella','Palomino','Alvarez','08-07-60','f','usuario@upc.edu.pe','everett84@gmail.com','+5109726766733','qcollins','2018-06-24 03:56:13','2018-06-24 03:56:13','Ing. Sistemas','http://upc.josegomezr.com.ve/static/assets/img/estudiantes/estudiante-1.png'),(4,'dad2de','Ada','Madrid','Campos','77-81-01','f','usuario3@upc.edu.pe','adamadrid@gmail.com','+584167837731','adamadrid','2018-06-24 03:56:13','2018-06-24 03:56:13','Ing. Industrial','http://upc.josegomezr.com.ve/static/assets/img/estudiantes/estudiante-1.png');
/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hashtag`
--

DROP TABLE IF EXISTS `hashtag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hashtag` (
  `hashtag_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hashtag_hashtag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashtag_orden` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`hashtag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hashtag`
--

LOCK TABLES `hashtag` WRITE;
/*!40000 ALTER TABLE `hashtag` DISABLE KEYS */;
INSERT INTO `hashtag` VALUES (1,'Deja mucho trabajo',1,'2018-06-29 10:32:13','2018-06-29 10:32:13'),(2,'Bilingue',2,'2018-06-29 10:32:14','2018-06-29 10:32:14'),(3,'Racista',1,'2018-06-29 10:32:14','2018-06-29 10:32:15'),(4,'Buena metodologia',3,'2018-06-29 10:32:16','2018-06-29 10:32:15'),(5,'Muy metódico',5,'2018-06-29 10:32:16','2018-06-29 10:32:16'),(6,'Paciencia',5,'2018-06-29 10:32:17','2018-06-29 10:32:17');
/*!40000 ALTER TABLE `hashtag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hashtag_inscripcion`
--

DROP TABLE IF EXISTS `hashtag_inscripcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hashtag_inscripcion` (
  `hashtag_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inscripcion_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profesor_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `curso_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estudiante_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `hashtag_inscripcion_profesor_id_index` (`profesor_id`),
  KEY `hashtag_inscripcion_curso_id_index` (`curso_id`),
  KEY `hashtag_inscripcion_estudiante_id_index` (`estudiante_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hashtag_inscripcion`
--

LOCK TABLES `hashtag_inscripcion` WRITE;
/*!40000 ALTER TABLE `hashtag_inscripcion` DISABLE KEYS */;
INSERT INTO `hashtag_inscripcion` VALUES ('1','361','5','5','1','2018-06-29 15:27:46','2018-06-29 15:27:46'),('2','361','5','5','1','2018-06-29 15:27:46','2018-06-29 15:27:46'),('6','361','5','5','1','2018-06-29 15:27:46','2018-06-29 15:27:46'),('2','363','5','2','1','2018-06-30 17:06:21','2018-06-30 17:06:21'),('3','363','5','2','1','2018-06-30 17:06:21','2018-06-30 17:06:21'),('4','363','5','2','1','2018-06-30 17:06:21','2018-06-30 17:06:21');
/*!40000 ALTER TABLE `hashtag_inscripcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hilo`
--

DROP TABLE IF EXISTS `hilo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hilo` (
  `hilo_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hilo_asunto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hilo_ultimo_mensaje` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`hilo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hilo`
--

LOCK TABLES `hilo` WRITE;
/*!40000 ALTER TABLE `hilo` DISABLE KEYS */;
INSERT INTO `hilo` VALUES (1,'Realmente dicta bien?','opiniones del profe','2018-06-29 01:54:11','2018-06-29 01:54:26'),(2,'Consulta','consulta del curso','2018-06-29 02:11:51','2018-06-29 02:11:52'),(3,'Saludos','Hola ese profesor es complicado?','2018-06-30 17:18:48','2018-06-30 17:18:49'),(4,'Saludos','Mira es chevere enseña bien y lo conoci en la cafeteria.','2018-06-30 18:22:24','2018-06-30 18:23:05');
/*!40000 ALTER TABLE `hilo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inscripcion`
--

DROP TABLE IF EXISTS `inscripcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inscripcion` (
  `inscripcion_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profesor_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `curso_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estudiante_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inscripcion_periodo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `calificacion` int(11) DEFAULT NULL,
  `inscripcion_comentario` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inscripcion_comentario_estado` int(11) DEFAULT '0',
  `dificultad` int(11) DEFAULT NULL,
  `tomar_denuevo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`inscripcion_id`),
  KEY `inscripcion_inscripcion_periodo_index` (`inscripcion_periodo`),
  KEY `inscripcion_profesor_id_index` (`profesor_id`),
  KEY `inscripcion_curso_id_index` (`curso_id`),
  KEY `inscripcion_estudiante_id_index` (`estudiante_id`)
) ENGINE=InnoDB AUTO_INCREMENT=430 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscripcion`
--

LOCK TABLES `inscripcion` WRITE;
/*!40000 ALTER TABLE `inscripcion` DISABLE KEYS */;
INSERT INTO `inscripcion` VALUES (417,'1','2','3','2018-1','2018-06-30 23:35:33','2018-08-06 16:16:20',NULL,NULL,0,NULL,NULL),(418,'1','2','2','2018-1','2018-06-30 23:35:33','2018-06-30 23:35:35',NULL,NULL,0,NULL,NULL),(419,'1','2','1','2018-1','2018-06-30 23:35:33','2018-06-30 23:35:35',NULL,NULL,0,NULL,NULL),(420,'2','5','1','2018-1','2018-06-30 23:35:33','2018-06-30 23:35:33',NULL,NULL,0,NULL,NULL),(421,'2','5','2','2018-1','2018-06-30 23:35:33','2018-06-30 23:35:33',4,'Es un excelente profesor!',1,3,1),(422,'2','5','3','2018-1','2018-06-30 23:35:33','2018-06-30 23:35:33',NULL,NULL,0,NULL,NULL),(423,'1','6','1','2018-1','2018-06-30 23:35:33','2018-06-30 23:35:33',NULL,NULL,0,NULL,NULL),(424,'2','6','2','2018-1','2018-06-30 23:35:33','2018-06-30 23:35:33',NULL,NULL,0,NULL,NULL),(425,'3','6','3','2018-1','2018-06-30 23:35:33','2018-06-30 23:35:33',NULL,NULL,0,NULL,NULL),(426,'3','4','4','2018-1','2018-06-30 23:35:33','2018-06-30 23:35:33',NULL,NULL,0,NULL,NULL),(427,'4','5','4','2018-1','2018-06-30 23:35:33','2018-06-30 23:35:33',NULL,NULL,0,NULL,NULL),(428,'5','6','4','2018-1','2018-06-30 23:35:33','2018-06-30 23:35:33',NULL,NULL,0,NULL,NULL),(429,'6','7','4','2018-1','2018-06-30 23:35:33','2018-06-30 23:35:33',NULL,NULL,0,NULL,NULL);
/*!40000 ALTER TABLE `inscripcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensaje`
--

DROP TABLE IF EXISTS `mensaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensaje` (
  `mensaje_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mensaje_texto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hilo_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estudiante_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`mensaje_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensaje`
--

LOCK TABLES `mensaje` WRITE;
/*!40000 ALTER TABLE `mensaje` DISABLE KEYS */;
INSERT INTO `mensaje` VALUES (1,'Hola en verdad enseña bien?','1','1','2018-06-29 01:54:11','2018-06-29 01:54:11'),(2,'Estas seguro que su examen es dificil?','1','1','2018-06-29 01:54:26','2018-06-29 01:54:26'),(3,'Ese profesor me jalo el ciclo pasado. Su examen es tranca','2','1','2018-06-29 02:11:52','2018-06-29 02:11:52'),(4,'Pregunta el profe te ayuda si llegas tarde?','3','1','2018-06-30 17:18:48','2018-06-30 17:18:48'),(5,'Como lo conociste al profesor?','4','3','2018-06-30 18:22:25','2018-06-30 18:22:25'),(6,'Mira es chevere enseña bien y lo conoci en la cafeteria.','4','3','2018-06-30 18:23:05','2018-06-30 18:23:05');
/*!40000 ALTER TABLE `mensaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (21,'2018_06_23_222501_initial',1),(22,'2018_06_23_235855_agregar_inscripcion_al_sistema',2),(23,'2018_06_24_035732_user_auth',3),(25,'2018_06_24_180401_icono_para_curso',4),(26,'2018_06_24_184118_facultad_para_profesor',5),(27,'2018_06_24_190602_facultad_para_estudiante',6),(45,'2018_06_25_152107_add_comments',7),(46,'2018_06_25_224113_add_preguntas',7),(47,'2018_06_26_030413_add_hashtag',7),(48,'2018_06_26_170318_add_mensajes',7),(49,'2018_06_29_161451_add_clases_evaluacion',8),(50,'2018_06_29_174034_add_dificultad_y_recomendacion',9);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pregunta`
--

DROP TABLE IF EXISTS `pregunta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pregunta` (
  `pregunta_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pregunta_texto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pregunta_tipo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pregunta_orden` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`pregunta_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pregunta`
--

LOCK TABLES `pregunta` WRITE;
/*!40000 ALTER TABLE `pregunta` DISABLE KEYS */;
INSERT INTO `pregunta` VALUES (1,'¿Tiene buena metodología?','SI_NO',4,NULL,NULL),(2,'¿Tolera Tardanza?','UNO_CINCO',1,NULL,NULL),(3,'¿Deja mucho trabajo ?','UNO_CINCO',2,NULL,NULL),(4,'¿Permite entrar tarde?','SI_NO',3,NULL,NULL);
/*!40000 ALTER TABLE `pregunta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pregunta_inscripcion`
--

DROP TABLE IF EXISTS `pregunta_inscripcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pregunta_inscripcion` (
  `pregunta_id` int(11) NOT NULL,
  `inscripcion_id` int(11) NOT NULL,
  `respuesta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pregunta_inscripcion`
--

LOCK TABLES `pregunta_inscripcion` WRITE;
/*!40000 ALTER TABLE `pregunta_inscripcion` DISABLE KEYS */;
INSERT INTO `pregunta_inscripcion` VALUES (1,361,'1','2018-06-29 15:27:46','2018-06-29 15:27:46'),(2,361,'4','2018-06-29 15:27:46','2018-06-29 15:27:46'),(3,361,'3','2018-06-29 15:27:46','2018-06-29 15:27:46'),(1,363,'1','2018-06-30 17:06:20','2018-06-30 17:06:20'),(2,363,'3','2018-06-30 17:06:20','2018-06-30 17:06:20'),(3,363,'2','2018-06-30 17:06:20','2018-06-30 17:06:20'),(4,363,'1','2018-06-30 17:06:21','2018-06-30 17:06:21');
/*!40000 ALTER TABLE `pregunta_inscripcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesor`
--

DROP TABLE IF EXISTS `profesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profesor` (
  `profesor_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profesor_codigo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profesor_nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profesor_apellido_paterno` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profesor_apellido_materno` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profesor_sexo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profesor_correo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profesor_correo_personal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profesor_telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `profesor_facultad` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`profesor_id`),
  KEY `profesor_profesor_codigo_index` (`profesor_codigo`),
  KEY `profesor_profesor_correo_index` (`profesor_correo`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesor`
--

LOCK TABLES `profesor` WRITE;
/*!40000 ALTER TABLE `profesor` DISABLE KEYS */;
INSERT INTO `profesor` VALUES (1,'g0u8yb','Alberto','Venero','Rodriguez','m','oframi@example.net','horacio64@yahoo.com','+2499070728704','2018-06-24 03:56:14','2018-06-24 03:56:14','g0g0g0g0g0g0g0g0g0g0'),(2,'hjqbor','Julio','Costa','Pacheco','m','jermain33@example.net','dsteuber@yahoo.com','+6582068800580','2018-06-24 03:56:14','2018-06-24 03:56:14','hjhjhjhjhjhjhjhjhjhj'),(3,'8jn8s6','Maria','Pozo','Perez','f','schaden.sammie@example.net','wilderman.newton@hotmail.com','+8774200457037','2018-06-24 03:56:14','2018-06-24 03:56:14','8j8j8j8j8j8j8j8j8j8j'),(4,'sr15kz','Nei','Luigi','Martinez','m','santina73@example.net','vdickinson@hotmail.com','+5678110686213','2018-06-24 03:56:14','2018-06-24 03:56:14','srsrsrsrsrsrsrsrsrsr'),(5,'q1yl8w','Lorena','Abadias','Velazquez','m','frami.griffin@example.org','pedro05@yahoo.com','+2465696965550','2018-06-24 03:56:14','2018-06-24 03:56:14','q1q1q1q1q1q1q1q1q1q1'),(6,'7zx8k9','Karley','Stehr','Boyle','m','gia.hoppe@example.org','reva36@hotmail.com','+2854988748041','2018-06-24 03:56:15','2018-06-24 03:56:15','7z7z7z7z7z7z7z7z7z7z'),(7,'r7v21w','Jackeline','Lindgren','Thiel','f','gfahey@example.org','shaniya.murazik@yahoo.com','+1773313910191','2018-06-24 03:56:15','2018-06-24 03:56:15','r7r7r7r7r7r7r7r7r7r7'),(8,'v16hri','Willow','Spinka','Hauck','f','block.howard@example.net','vito50@yahoo.com','+6625392540597','2018-06-24 03:56:15','2018-06-24 03:56:15','v1v1v1v1v1v1v1v1v1v1'),(9,'hz82h1','Martin','Mosciski','Koch','m','schuppe.alessandra@example.net','luciano16@gmail.com','+6181159316123','2018-06-24 03:56:15','2018-06-24 03:56:15','hzhzhzhzhzhzhzhzhzhz'),(10,'s5fho6','Marisa','Stoltenberg','Raynor','f','heaven16@example.net','fausto.langworth@yahoo.com','+5750728794424','2018-06-24 03:56:15','2018-06-24 03:56:15','s5s5s5s5s5s5s5s5s5s5'),(11,'3ndyaz','Jadyn','Gerhold','Littel','f','nhermiston@example.com','shad.keeling@yahoo.com','+2823523715370','2018-06-24 03:56:15','2018-06-24 03:56:15','3n3n3n3n3n3n3n3n3n3n'),(12,'him0ry','Austen','Donnelly','Carroll','m','pacocha.hortense@example.org','adam08@hotmail.com','+6830740065546','2018-06-24 03:56:15','2018-06-24 03:56:15','hihihihihihihihihihi'),(13,'frerei','Lorna','Okuneva','Parisian','f','aglae.fisher@example.org','dessie.pouros@gmail.com','+4219201875477','2018-06-24 03:56:15','2018-06-24 03:56:15','frfrfrfrfrfrfrfrfrfr'),(14,'btjkem','Colten','Cormier','Ritchie','m','xbayer@example.org','camylle10@yahoo.com','+9955077561917','2018-06-24 03:56:15','2018-06-24 03:56:15','btbtbtbtbtbtbtbtbtbt'),(15,'1k9myb','Mya','Heathcote','Block','f','yanderson@example.com','fhudson@gmail.com','+8077281379415','2018-06-24 03:56:15','2018-06-24 03:56:15','1k1k1k1k1k1k1k1k1k1k');
/*!40000 ALTER TABLE `profesor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Antonina Hagenes MD','usuario@upc.edu.pe','$2y$10$53M3Cbc8bf4UnoKY3gdH7eTq30gtr678o7pjRVCkST22RVNTM3jLW','387730c4-201c-330f-a12c-a38085324c5c',NULL,'2018-06-24 04:10:14','2018-06-24 04:10:14'),(2,'Landen Bernier','usuario1@upc.edu.pe','$2y$10$53M3Cbc8bf4UnoKY3gdH7eTq30gtr678o7pjRVCkST22RVNTM3jLW','6be0aaf8-0903-38c1-802b-edfa215eea44',NULL,'2018-06-24 04:10:14','2018-06-24 04:10:14'),(3,'Dock Jacobs','usuario2@upc.edu.pe','$2y$10$53M3Cbc8bf4UnoKY3gdH7eTq30gtr678o7pjRVCkST22RVNTM3jLW','4304691a-1ca1-343e-82df-ca5153139532',NULL,'2018-06-24 04:10:14','2018-06-24 04:10:14'),(4,'Dahlia Bernhard','usuario3@upc.edu.pe','$2y$10$53M3Cbc8bf4UnoKY3gdH7eTq30gtr678o7pjRVCkST22RVNTM3jLW','412203f2-1d73-3d92-bba5-f6d7ddcc5058',NULL,'2018-06-24 04:10:15','2018-06-24 04:10:15'),(5,'Ronny Glover','usuario4@upc.edu.pe','$2y$10$53M3Cbc8bf4UnoKY3gdH7eTq30gtr678o7pjRVCkST22RVNTM3jLW','3cbe3b16-c6d5-38ae-b769-5b49c74c7f6c',NULL,'2018-06-24 04:10:15','2018-06-24 04:10:15');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-06 12:18:38
