-- MySQL dump 10.13  Distrib 5.7.23, for osx10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: cannon
-- ------------------------------------------------------
-- Server version	5.7.27

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
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branch` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `active` char(1) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1gxi5vl5ufs2l8swye7g26n16` (`creator_id`),
  KEY `FK4mavupar7e5wr8jeuda2d49up` (`modifier_id`),
  KEY `FKqi6b3wpl77vybu6nwkh4jylib` (`parent_id`),
  KEY `FKktl781jfkncjj3c1wdlbbw844` (`user_id`),
  CONSTRAINT `FK1gxi5vl5ufs2l8swye7g26n16` FOREIGN KEY (`creator_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK4ao9yfo2cwh91r0qlqc66vf32` FOREIGN KEY (`parent_id`) REFERENCES `branch` (`id`),
  CONSTRAINT `FK4mavupar7e5wr8jeuda2d49up` FOREIGN KEY (`modifier_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK97quhfbk9v2ifo4p4f2tv7or2` FOREIGN KEY (`creator_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK98ex8501qbl0s11e9sq666sj6` FOREIGN KEY (`creator_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKktl781jfkncjj3c1wdlbbw844` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKo5usfgrti1oh9o2a8rv1tbrsy` FOREIGN KEY (`parent_id`) REFERENCES `branch` (`id`),
  CONSTRAINT `FKonvbkdsjjeatvx7ki84o5hjdp` FOREIGN KEY (`modifier_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKqi6b3wpl77vybu6nwkh4jylib` FOREIGN KEY (`parent_id`) REFERENCES `branch` (`id`),
  CONSTRAINT `FKqwirx2dq1jsj1f8ux83jyf4km` FOREIGN KEY (`modifier_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKry6s93789c89i5y36o42yh1c1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES (1,'2017-01-22 07:52:50.584','2017-06-13 10:26:15.812',1,'System',1,1,NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doc`
--

DROP TABLE IF EXISTS `doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doc` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKecu5ojsni9beuru2po48f9aaj` (`user_id`),
  CONSTRAINT `FKecu5ojsni9beuru2po48f9aaj` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doc`
--

LOCK TABLES `doc` WRITE;
/*!40000 ALTER TABLE `doc` DISABLE KEYS */;
/*!40000 ALTER TABLE `doc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `auth_key` varchar(255) DEFAULT NULL,
  `auth_uris` varchar(255) DEFAULT NULL,
  `display` varchar(255) DEFAULT NULL,
  `entity` varchar(255) DEFAULT NULL,
  `http_method` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `menu_url` varchar(255) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKh9eedsmuc7u7f3wm3betx9822` (`creator_id`),
  KEY `FKcq45bqtlseybf27r7bdgo0k85` (`modifier_id`),
  KEY `FKndhq1fslrx1ll0iqu99lchih6` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (25,'2017-10-19 15:53:10.444','2017-10-19 15:53:10.444',0,'Index branch','/v[\\d]+/branch','Index branch','branch','GET',NULL,NULL,1,1,NULL),(26,'2017-10-19 15:53:10.446','2017-10-19 15:53:10.446',0,'Create branch','/v[\\d]+/branch','Create branch','branch','POST',NULL,NULL,1,1,NULL),(27,'2017-10-19 15:53:10.448','2017-10-19 15:53:10.448',0,'Read branch','/v[\\d]+/branch/[\\d]+','Read branch','branch','GET',NULL,NULL,1,1,NULL),(28,'2017-10-19 15:53:10.450','2017-10-19 15:53:10.450',0,'Update branch','/v[\\d]+/branch/[\\d]+','Update branch','branch','PUT',NULL,NULL,1,1,NULL),(29,'2017-10-19 15:53:10.452','2017-10-19 15:53:10.452',0,'Update branch','/v[\\d]+/branch/[\\d]+','Update branch','branch','PATCH',NULL,NULL,1,1,NULL),(30,'2017-10-19 15:53:10.454','2017-10-19 15:53:10.454',0,'Delete branch','/v[\\d]+/branch/[\\d]+','Delete branch','branch','DELETE',NULL,NULL,1,1,NULL),(103,'2017-10-19 15:53:10.640','2017-10-19 15:53:10.640',0,'Index permission','/v[\\d]+/permission','Index permission','permission','GET',NULL,NULL,1,1,NULL),(104,'2017-10-19 15:53:10.642','2017-10-19 15:53:10.642',0,'Create permission','/v[\\d]+/permission','Create permission','permission','POST',NULL,NULL,1,1,NULL),(105,'2017-10-19 15:53:10.644','2017-10-19 15:53:10.644',0,'Read permission','/v[\\d]+/permission/[\\d]+','Read permission','permission','GET',NULL,NULL,1,1,NULL),(106,'2017-10-19 15:53:10.645','2017-10-19 15:53:10.645',0,'Update permission','/v[\\d]+/permission/[\\d]+','Update permission','permission','PUT',NULL,NULL,1,1,NULL),(107,'2017-10-19 15:53:10.647','2017-10-19 15:53:10.647',0,'Update permission','/v[\\d]+/permission/[\\d]+','Update permission','permission','PATCH',NULL,NULL,1,1,NULL),(108,'2017-10-19 15:53:10.649','2017-10-19 15:53:10.649',0,'Delete permission','/v[\\d]+/permission/[\\d]+','Delete permission','permission','DELETE',NULL,NULL,1,1,NULL),(127,'2017-10-19 15:53:10.695','2017-10-19 15:53:10.695',0,'Index role','/v[\\d]+/role','Index role','role','GET',NULL,NULL,1,1,NULL),(128,'2017-10-19 15:53:10.698','2017-10-19 15:53:10.698',0,'Create role','/v[\\d]+/role','Create role','role','POST',NULL,NULL,1,1,NULL),(129,'2017-10-19 15:53:10.700','2017-10-19 15:53:10.700',0,'Read role','/v[\\d]+/role/[\\d]+','Read role','role','GET',NULL,NULL,1,1,NULL),(130,'2017-10-19 15:53:10.702','2017-10-19 15:53:10.702',0,'Update role','/v[\\d]+/role/[\\d]+','Update role','role','PUT',NULL,NULL,1,1,NULL),(131,'2017-10-19 15:53:10.703','2017-10-19 15:53:10.703',0,'Update role','/v[\\d]+/role/[\\d]+','Update role','role','PATCH',NULL,NULL,1,1,NULL),(132,'2017-10-19 15:53:10.705','2017-10-19 15:53:10.705',0,'Delete role','/v[\\d]+/role/[\\d]+','Delete role','role','DELETE',NULL,NULL,1,1,NULL),(133,'2017-10-19 15:53:10.710','2017-10-19 15:53:10.710',0,'Index role-permission','/v[\\d]+/role-permission','Index role-permission','role-permission','GET',NULL,NULL,1,1,NULL),(134,'2017-10-19 15:53:10.712','2017-10-19 15:53:10.712',0,'Create role-permission','/v[\\d]+/role-permission','Create role-permission','role-permission','POST',NULL,NULL,1,1,NULL),(135,'2017-10-19 15:53:10.713','2017-10-19 15:53:10.713',0,'Read role-permission','/v[\\d]+/role-permission/[\\d]+','Read role-permission','role-permission','GET',NULL,NULL,1,1,NULL),(136,'2017-10-19 15:53:10.714','2017-10-19 15:53:10.714',0,'Update role-permission','/v[\\d]+/role-permission/[\\d]+','Update role-permission','role-permission','PUT',NULL,NULL,1,1,NULL),(137,'2017-10-19 15:53:10.716','2017-10-19 15:53:10.716',0,'Update role-permission','/v[\\d]+/role-permission/[\\d]+','Update role-permission','role-permission','PATCH',NULL,NULL,1,1,NULL),(138,'2017-10-19 15:53:10.717','2017-10-19 15:53:10.717',0,'Delete role-permission','/v[\\d]+/role-permission/[\\d]+','Delete role-permission','role-permission','DELETE',NULL,NULL,1,1,NULL),(139,'2017-10-19 15:53:10.722','2017-10-19 15:53:10.722',0,'Index rule','/v[\\d]+/rule','Index rule','rule','GET',NULL,NULL,1,1,NULL),(140,'2017-10-19 15:53:10.724','2017-10-19 15:53:10.724',0,'Create rule','/v[\\d]+/rule','Create rule','rule','POST',NULL,NULL,1,1,NULL),(141,'2017-10-19 15:53:10.725','2017-10-19 15:53:10.725',0,'Read rule','/v[\\d]+/rule/[\\d]+','Read rule','rule','GET',NULL,NULL,1,1,NULL),(142,'2017-10-19 15:53:10.727','2017-10-19 15:53:10.727',0,'Update rule','/v[\\d]+/rule/[\\d]+','Update rule','rule','PUT',NULL,NULL,1,1,NULL),(143,'2017-10-19 15:53:10.728','2017-10-19 15:53:10.728',0,'Update rule','/v[\\d]+/rule/[\\d]+','Update rule','rule','PATCH',NULL,NULL,1,1,NULL),(144,'2017-10-19 15:53:10.730','2017-10-19 15:53:10.730',0,'Delete rule','/v[\\d]+/rule/[\\d]+','Delete rule','rule','DELETE',NULL,NULL,1,1,NULL),(163,'2017-10-19 15:53:10.775','2017-10-19 15:53:10.775',0,'Index user','/v[\\d]+/user','Index user','user','GET',NULL,NULL,1,1,NULL),(164,'2017-10-19 15:53:10.777','2017-10-19 15:53:10.777',0,'Create user','/v[\\d]+/user','Create user','user','POST',NULL,NULL,1,1,NULL),(165,'2017-10-19 15:53:10.779','2017-10-19 15:53:10.779',0,'Read user','/v[\\d]+/user/[\\d]+','Read user','user','GET',NULL,NULL,1,1,NULL),(166,'2017-10-19 15:53:10.780','2017-10-19 15:53:10.780',0,'Update user','/v[\\d]+/user/[\\d]+','Update user','user','PUT',NULL,NULL,1,1,NULL),(167,'2017-10-19 15:53:10.782','2017-10-19 15:53:10.782',0,'Update user','/v[\\d]+/user/[\\d]+','Update user','user','PATCH',NULL,NULL,1,1,NULL),(168,'2017-10-19 15:53:10.784','2017-10-19 15:53:10.784',0,'Delete user','/v[\\d]+/user/[\\d]+','Delete user','user','DELETE',NULL,NULL,1,1,NULL);
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgiycbu32u3ohnrmlp1xpl7bh4` (`creator_id`),
  KEY `FKoowdh5engkxou7i5796ivmkrg` (`modifier_id`),
  KEY `FK6wf4clqgv1a344hjbgngpn4yb` (`user_id`),
  CONSTRAINT `FK6b5v0nulx0jtp4wkabuilcrhf` FOREIGN KEY (`modifier_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK6wf4clqgv1a344hjbgngpn4yb` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKbghhvui0q6uvryrgpwyf41202` FOREIGN KEY (`creator_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKer0xpqr0mstdpdxev6xkfc9wi` FOREIGN KEY (`modifier_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKfmrlx37cuimko1ecbj95sniao` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKgiycbu32u3ohnrmlp1xpl7bh4` FOREIGN KEY (`creator_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKicv3aucuajbj03ecxq3u43qrr` FOREIGN KEY (`creator_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKoowdh5engkxou7i5796ivmkrg` FOREIGN KEY (`modifier_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'2016-12-27 09:02:29.690','2018-07-07 06:46:02.646',1,'super admin',1,1,NULL);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_permission`
--

DROP TABLE IF EXISTS `role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `permission_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKagm093b5ownnb6cyft7c3kurj` (`creator_id`),
  KEY `FKi8iiyuadjhp8w70ynins1rgue` (`modifier_id`),
  KEY `FKf8yllw1ecvwqy3ehyxawqa1qp` (`permission_id`),
  KEY `FKa6jx8n8xkesmjmv6jqug6bg68` (`role_id`),
  KEY `FKhdgvh3gt53pgusy2lcxx0lidj` (`user_id`),
  CONSTRAINT `FK3jdx45782fwr4w7ektpm14arh` FOREIGN KEY (`creator_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK49yenbqf2nxqht3n1ttyw4t3a` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FK8f6n4ff287ms11hwltw8eewvk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK8qubm97v5phnptps1xr1aqb8p` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`),
  CONSTRAINT `FK9cf0bchgarvkyjtofxc91fe3n` FOREIGN KEY (`creator_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKa6jx8n8xkesmjmv6jqug6bg68` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FKagm093b5ownnb6cyft7c3kurj` FOREIGN KEY (`creator_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKb02tanobrvpkd735gjsml7dtq` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FKe3xdq52ltmkoxm7p46v0i8vd0` FOREIGN KEY (`modifier_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKf8yllw1ecvwqy3ehyxawqa1qp` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`),
  CONSTRAINT `FKhdgvh3gt53pgusy2lcxx0lidj` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKi8iiyuadjhp8w70ynins1rgue` FOREIGN KEY (`modifier_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKnt1go1ape759epkyidqp2apw3` FOREIGN KEY (`modifier_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKtofn3uptyl4qc34wa2cdd2e7g` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39743 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_permission`
--

LOCK TABLES `role_permission` WRITE;
/*!40000 ALTER TABLE `role_permission` DISABLE KEYS */;
INSERT INTO `role_permission` VALUES (39683,'2018-07-07 06:46:02.545','2018-07-07 06:46:02.545',0,1,1,25,1,NULL),(39684,'2018-07-07 06:46:02.546','2018-07-07 06:46:02.546',0,1,1,26,1,NULL),(39685,'2018-07-07 06:46:02.547','2018-07-07 06:46:02.547',0,1,1,27,1,NULL),(39686,'2018-07-07 06:46:02.549','2018-07-07 06:46:02.549',0,1,1,28,1,NULL),(39687,'2018-07-07 06:46:02.550','2018-07-07 06:46:02.550',0,1,1,29,1,NULL),(39688,'2018-07-07 06:46:02.551','2018-07-07 06:46:02.551',0,1,1,30,1,NULL),(39707,'2018-07-07 06:46:02.575','2018-07-07 06:46:02.575',0,1,1,103,1,NULL),(39708,'2018-07-07 06:46:02.576','2018-07-07 06:46:02.576',0,1,1,104,1,NULL),(39709,'2018-07-07 06:46:02.578','2018-07-07 06:46:02.578',0,1,1,105,1,NULL),(39710,'2018-07-07 06:46:02.579','2018-07-07 06:46:02.579',0,1,1,106,1,NULL),(39711,'2018-07-07 06:46:02.580','2018-07-07 06:46:02.580',0,1,1,107,1,NULL),(39712,'2018-07-07 06:46:02.582','2018-07-07 06:46:02.582',0,1,1,108,1,NULL),(39713,'2018-07-07 06:46:02.583','2018-07-07 06:46:02.583',0,1,1,127,1,NULL),(39714,'2018-07-07 06:46:02.584','2018-07-07 06:46:02.584',0,1,1,128,1,NULL),(39715,'2018-07-07 06:46:02.586','2018-07-07 06:46:02.586',0,1,1,129,1,NULL),(39716,'2018-07-07 06:46:02.587','2018-07-07 06:46:02.587',0,1,1,130,1,NULL),(39717,'2018-07-07 06:46:02.588','2018-07-07 06:46:02.588',0,1,1,131,1,NULL),(39718,'2018-07-07 06:46:02.589','2018-07-07 06:46:02.589',0,1,1,132,1,NULL),(39719,'2018-07-07 06:46:02.590','2018-07-07 06:46:02.590',0,1,1,133,1,NULL),(39720,'2018-07-07 06:46:02.591','2018-07-07 06:46:02.591',0,1,1,134,1,NULL),(39721,'2018-07-07 06:46:02.592','2018-07-07 06:46:02.592',0,1,1,135,1,NULL),(39722,'2018-07-07 06:46:02.592','2018-07-07 06:46:02.592',0,1,1,136,1,NULL),(39723,'2018-07-07 06:46:02.593','2018-07-07 06:46:02.593',0,1,1,137,1,NULL),(39724,'2018-07-07 06:46:02.594','2018-07-07 06:46:02.594',0,1,1,138,1,NULL),(39725,'2018-07-07 06:46:02.596','2018-07-07 06:46:02.596',0,1,1,139,1,NULL),(39726,'2018-07-07 06:46:02.597','2018-07-07 06:46:02.597',0,1,1,140,1,NULL),(39727,'2018-07-07 06:46:02.598','2018-07-07 06:46:02.598',0,1,1,141,1,NULL),(39728,'2018-07-07 06:46:02.599','2018-07-07 06:46:02.599',0,1,1,142,1,NULL),(39729,'2018-07-07 06:46:02.600','2018-07-07 06:46:02.600',0,1,1,143,1,NULL),(39730,'2018-07-07 06:46:02.601','2018-07-07 06:46:02.601',0,1,1,144,1,NULL),(39737,'2018-07-07 06:46:02.609','2018-07-07 06:46:02.609',0,1,1,163,1,NULL),(39738,'2018-07-07 06:46:02.610','2018-07-07 06:46:02.610',0,1,1,164,1,NULL),(39739,'2018-07-07 06:46:02.611','2018-07-07 06:46:02.611',0,1,1,165,1,NULL),(39740,'2018-07-07 06:46:02.612','2018-07-07 06:46:02.612',0,1,1,166,1,NULL),(39741,'2018-07-07 06:46:02.614','2018-07-07 06:46:02.614',0,1,1,167,1,NULL),(39742,'2018-07-07 06:46:02.614','2018-07-07 06:46:02.614',0,1,1,168,1,NULL);
/*!40000 ALTER TABLE `role_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_permission_rule`
--

DROP TABLE IF EXISTS `role_permission_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_permission_rule` (
  `role_permission_id` bigint(20) NOT NULL,
  `rule_id` bigint(20) NOT NULL,
  KEY `FKci40w9ke39k3pd4w2tkmt4l7d` (`rule_id`),
  KEY `FKhuxsojjj3aaynewjntl6seqvp` (`role_permission_id`),
  CONSTRAINT `FK4m0vmfmwmerpc2ke92nuv208x` FOREIGN KEY (`role_permission_id`) REFERENCES `role_permission` (`id`),
  CONSTRAINT `FK5tti3cceuc1ndr7rje79xe062` FOREIGN KEY (`rule_id`) REFERENCES `rule` (`id`),
  CONSTRAINT `FK828i2uym4ui9pda9fohb2qvrk` FOREIGN KEY (`rule_id`) REFERENCES `rule` (`id`),
  CONSTRAINT `FKci40w9ke39k3pd4w2tkmt4l7d` FOREIGN KEY (`rule_id`) REFERENCES `rule` (`id`),
  CONSTRAINT `FKgwficw92wdnrhpidby8peirgp` FOREIGN KEY (`role_permission_id`) REFERENCES `role_permission` (`id`),
  CONSTRAINT `FKhuxsojjj3aaynewjntl6seqvp` FOREIGN KEY (`role_permission_id`) REFERENCES `role_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_permission_rule`
--

LOCK TABLES `role_permission_rule` WRITE;
/*!40000 ALTER TABLE `role_permission_rule` DISABLE KEYS */;
INSERT INTO `role_permission_rule` VALUES (39683,1);
/*!40000 ALTER TABLE `role_permission_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rule`
--

DROP TABLE IF EXISTS `rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rule` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `params` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `enable` char(1) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKt563w3p6atvxp82y7mvd6usa1` (`creator_id`),
  KEY `FKp7rj1lrxysuwi3p1gxl73roti` (`modifier_id`),
  KEY `FKqt26bdssvwqn621glj61guhb` (`user_id`),
  CONSTRAINT `FK6pq33gji8l55jtgbq855sbmx0` FOREIGN KEY (`modifier_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK75uckt4w47iqavbyop7fatn7f` FOREIGN KEY (`modifier_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKlo6u4keu19k656xcwl66pp09w` FOREIGN KEY (`creator_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKlpy9btqkqg198dchlcsvtwvtx` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKp5xq1tk2u471kh82aun11m8fx` FOREIGN KEY (`creator_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKp7rj1lrxysuwi3p1gxl73roti` FOREIGN KEY (`modifier_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKqt26bdssvwqn621glj61guhb` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKt563w3p6atvxp82y7mvd6usa1` FOREIGN KEY (`creator_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rule`
--

LOCK TABLES `rule` WRITE;
/*!40000 ALTER TABLE `rule` DISABLE KEYS */;
INSERT INTO `rule` VALUES (1,'2017-05-20 10:41:58.743','2017-05-27 11:57:02.528',1,'all',NULL,'scope',NULL,NULL,'Y',NULL),(2,'2017-05-20 10:41:58.743','2017-05-27 11:57:02.528',1,'user',NULL,'scope',NULL,NULL,'Y',NULL),(3,'2017-05-20 10:41:58.743','2017-05-27 11:57:02.528',1,'creator',NULL,'scope',NULL,NULL,'Y',NULL);
/*!40000 ALTER TABLE `rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `version` bigint(20) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modifier_id` bigint(20) DEFAULT NULL,
  `branch_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `verify` char(1) DEFAULT NULL,
  `introducer_id` bigint(20) DEFAULT NULL,
  `expires_in` bigint(20) DEFAULT NULL,
  `ip_black_list` varchar(255) DEFAULT NULL,
  `ip_white_list` varchar(255) DEFAULT NULL,
  `anonymous_access_domain` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `coin` bigint(20) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `active` char(1) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_username` (`username`),
  KEY `FKrlj77ymttuppjd3f7xvuk7x1q` (`creator_id`),
  KEY `FK4h3955rsrfhasipafokaro9ff` (`modifier_id`),
  KEY `FK9yy0ya980j002yvtxi9r7kv6b` (`branch_id`),
  KEY `FKn82ha3ccdebhokx3a8fgdqeyy` (`role_id`),
  KEY `FKiqlul966n736s0uvexrlhdxcv` (`introducer_id`),
  KEY `FKsi9lb5yo3m7vs9b9a6w5076jb` (`user_id`),
  CONSTRAINT `FKb9eskcxirnsmt61s23y9jkscc` FOREIGN KEY (`introducer_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKd109424e29jbj4bo7qg38ndyf` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  CONSTRAINT `FKdk57ah8234x0f7xfemfv3ptrj` FOREIGN KEY (`creator_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKg4j7qh9d8aevi3a30y46tp656` FOREIGN KEY (`creator_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKjtadwdt4dbgru52jt5l15map8` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FKl4f8520xt55yqwdkmoi3c5b1w` FOREIGN KEY (`introducer_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKlinh7n6hwkwxkmi0h7617y41x` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FKmy4ngbsns4vjfmi8b3pqk379` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKppdu8fsqw99g57j3k9vwr72qt` FOREIGN KEY (`modifier_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKr9fl57c476tlm3hr7rf8xik3j` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  CONSTRAINT `FKsi9lb5yo3m7vs9b9a6w5076jb` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKswx9k4jwgun320m8jdey70iga` FOREIGN KEY (`modifier_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'2017-07-23 10:07:59.980','2018-08-23 10:33:08.776',2,'leon.zhou@intelliware.co.nz','$2a$10$tLYZWACu0IEOjDKpNa77SeRYX2au4dDa6CEOfXfJSoBE/4rcvcApO','BACKEND',1,1,1,1,'leonzhou','leon.zhou@intelliware.co.nz','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'4',NULL,NULL,NULL);
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

-- Dump completed on 2019-11-20 23:05:35
