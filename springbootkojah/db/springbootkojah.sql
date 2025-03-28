-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootkojah
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `springbootkojah`
--

/*!40000 DROP DATABASE IF EXISTS `springbootkojah`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springbootkojah` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springbootkojah`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangke`
--

DROP TABLE IF EXISTS `fangke`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangke` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangkezhanghao` varchar(200) NOT NULL COMMENT '访客账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `fangkexingming` varchar(200) NOT NULL COMMENT '访客姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `dianziyoujian` varchar(200) DEFAULT NULL COMMENT '电子邮件',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `touxiang` longtext COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangkezhanghao` (`fangkezhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1676341865440 DEFAULT CHARSET=utf8 COMMENT='访客';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangke`
--

LOCK TABLES `fangke` WRITE;
/*!40000 ALTER TABLE `fangke` DISABLE KEYS */;
INSERT INTO `fangke` VALUES (12,'2023-02-14 02:28:12','访客账号2','123456','访客姓名2','男',2,'773890002@qq.com','13823888882','upload/fangke_touxiang2.jpg'),(13,'2023-02-14 02:28:12','访客账号3','123456','访客姓名3','男',3,'773890003@qq.com','13823888883','upload/fangke_touxiang3.jpg'),(14,'2023-02-14 02:28:12','访客账号4','123456','访客姓名4','男',4,'773890004@qq.com','13823888884','upload/fangke_touxiang4.jpg'),(15,'2023-02-14 02:28:12','访客账号5','123456','访客姓名5','男',5,'773890005@qq.com','13823888885','upload/fangke_touxiang5.jpg'),(16,'2023-02-14 02:28:12','访客账号6','123456','访客姓名6','男',6,'773890006@qq.com','13823888886','upload/fangke_touxiang6.jpg'),(17,'2023-02-14 02:28:12','访客账号7','123456','访客姓名7','男',7,'773890007@qq.com','13823888887','upload/fangke_touxiang7.jpg'),(18,'2023-02-14 02:28:12','访客账号8','123456','访客姓名8','男',8,'773890008@qq.com','13823888888','upload/fangke_touxiang8.jpg'),(1676341865439,'2023-02-14 02:31:05','11','11','张怡','女',30,'3652@qq.com','13336655214','upload/1676341863530.jpeg');
/*!40000 ALTER TABLE `fangke` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangkelaifang`
--

DROP TABLE IF EXISTS `fangkelaifang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangkelaifang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `fangkezhanghao` varchar(200) DEFAULT NULL COMMENT '访客账号',
  `fangkexingming` varchar(200) DEFAULT NULL COMMENT '访客姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `fangrenxingming` varchar(200) DEFAULT NULL COMMENT '访人姓名',
  `fangrenshoujihao` varchar(200) DEFAULT NULL COMMENT '访人手机号',
  `laifangshijian` date DEFAULT NULL COMMENT '来访时间',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1676341965445 DEFAULT CHARSET=utf8 COMMENT='访客来访';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangkelaifang`
--

LOCK TABLES `fangkelaifang` WRITE;
/*!40000 ALTER TABLE `fangkelaifang` DISABLE KEYS */;
INSERT INTO `fangkelaifang` VALUES (31,'2023-02-14 02:28:12','预约编号1','标题1','访客账号1','访客姓名1','联系方式1','访人姓名1','访人手机号1','2023-02-14','备注1'),(32,'2023-02-14 02:28:12','预约编号2','标题2','访客账号2','访客姓名2','联系方式2','访人姓名2','访人手机号2','2023-02-14','备注2'),(33,'2023-02-14 02:28:12','预约编号3','标题3','访客账号3','访客姓名3','联系方式3','访人姓名3','访人手机号3','2023-02-14','备注3'),(34,'2023-02-14 02:28:12','预约编号4','标题4','访客账号4','访客姓名4','联系方式4','访人姓名4','访人手机号4','2023-02-14','备注4'),(35,'2023-02-14 02:28:12','预约编号5','标题5','访客账号5','访客姓名5','联系方式5','访人姓名5','访人手机号5','2023-02-14','备注5'),(36,'2023-02-14 02:28:12','预约编号6','标题6','访客账号6','访客姓名6','联系方式6','访人姓名6','访人手机号6','2023-02-14','备注6'),(37,'2023-02-14 02:28:12','预约编号7','标题7','访客账号7','访客姓名7','联系方式7','访人姓名7','访人手机号7','2023-02-14','备注7'),(38,'2023-02-14 02:28:12','预约编号8','标题8','访客账号8','访客姓名8','联系方式8','访人姓名8','访人手机号8','2023-02-14','备注8'),(1676341965444,'2023-02-14 02:32:44','1676341902636','来访','11','张怡','13336655214','张翼','15556632145','2023-02-15','<p>基于SpringBoot的来访管理系统的设计与实现基于SpringBoot的来访管理系统的设计与实现基于SpringBoot的来访管理系统的设计与实现基于SpringBoot的来访管理系统的设计与实现基于SpringBoot的来访管理系统的设计与实现基于SpringBoot的来访管理系统的设计与实现基于SpringBoot的来访管理系统的设计与实现基于SpringBoot的来访管理系统的设计与实现基于SpringBoot的来访管理系统的设计与实现基于SpringBoot的来访管理系统的设计与实现基于SpringBoot的来访管理系统的设计与实现</p>');
/*!40000 ALTER TABLE `fangkelaifang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangkeyuyue`
--

DROP TABLE IF EXISTS `fangkeyuyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangkeyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `fangkezhanghao` varchar(200) DEFAULT NULL COMMENT '访客账号',
  `fangkexingming` varchar(200) DEFAULT NULL COMMENT '访客姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `fangrenxingming` varchar(200) DEFAULT NULL COMMENT '访人姓名',
  `fangrenshoujihao` varchar(200) DEFAULT NULL COMMENT '访人手机号',
  `fangwenriqi` date DEFAULT NULL COMMENT '访问日期',
  `fangwenzhuangtai` varchar(200) DEFAULT NULL COMMENT '访问状态',
  `yuyueshijian` date DEFAULT NULL COMMENT '预约时间',
  `fangwenshiyin` longtext COMMENT '访问事因',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuyuebianhao` (`yuyuebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1676341949902 DEFAULT CHARSET=utf8 COMMENT='访客预约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangkeyuyue`
--

LOCK TABLES `fangkeyuyue` WRITE;
/*!40000 ALTER TABLE `fangkeyuyue` DISABLE KEYS */;
INSERT INTO `fangkeyuyue` VALUES (21,'2023-02-14 02:28:12','1111111111','标题1','访客账号1','访客姓名1','联系方式1','访人姓名1','访人手机号1','2023-02-14','已访问','2023-02-14','访问事因1'),(22,'2023-02-14 02:28:12','2222222222','标题2','访客账号2','访客姓名2','联系方式2','访人姓名2','访人手机号2','2023-02-14','已访问','2023-02-14','访问事因2'),(23,'2023-02-14 02:28:12','3333333333','标题3','访客账号3','访客姓名3','联系方式3','访人姓名3','访人手机号3','2023-02-14','已访问','2023-02-14','访问事因3'),(24,'2023-02-14 02:28:12','4444444444','标题4','访客账号4','访客姓名4','联系方式4','访人姓名4','访人手机号4','2023-02-14','已访问','2023-02-14','访问事因4'),(25,'2023-02-14 02:28:12','5555555555','标题5','访客账号5','访客姓名5','联系方式5','访人姓名5','访人手机号5','2023-02-14','未访问','2023-02-14','<p>访问事因5</p>'),(26,'2023-02-14 02:28:12','6666666666','标题6','访客账号6','访客姓名6','联系方式6','访人姓名6','访人手机号6','2023-02-14','已访问','2023-02-14','访问事因6'),(27,'2023-02-14 02:28:12','7777777777','标题7','访客账号7','访客姓名7','联系方式7','访人姓名7','访人手机号7','2023-02-14','已访问','2023-02-14','访问事因7'),(28,'2023-02-14 02:28:12','8888888888','标题8','访客账号8','访客姓名8','联系方式8','访人姓名8','访人手机号8','2023-02-14','已访问','2023-02-14','访问事因8'),(1676341949901,'2023-02-14 02:32:29','1676341902636','来访','11','张怡','13336655214','张翼','15556632145','2023-02-16','已访问','2023-02-14','<p>基于SpringBoot的来访管理系统的设计与实现基于SpringBoot的来访管理系统的设计与实现基于SpringBoot的来访管理系统的设计与实现基于SpringBoot的来访管理系统的设计与实现基于SpringBoot的来访管理系统的设计与实现基于SpringBoot的来访管理系统的设计与实现基于SpringBoot的来访管理系统的设计与实现基于SpringBoot的来访管理系统的设计与实现基于SpringBoot的来访管理系统的设计与实现基于SpringBoot的来访管理系统的设计与实现基于SpringBoot的来访管理系统的设计与实现基于SpringBoot的来访管理系统的设计与实现基于SpringBoot的来访管理系统的设计与实现基于SpringBoot的来访管理系统的设计与实现基于SpringBoot的来访管理系统的设计与实现基于SpringBoot的来访管理系统的设计与实现基于SpringBoot的来访管理系统的设计与实现基于SpringBoot的来访管理系统的设计与实现v</p>');
/*!40000 ALTER TABLE `fangkeyuyue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,11,'访客账号1','fangke','访客','zk4js10kxzzb3ctsimv5wpg3sh2dnn68','2023-02-14 02:30:21','2023-02-14 03:30:21'),(2,1676341865439,'11','fangke','访客','2foz2zru2rmkv6swt97qe2u0p8w9f3cq','2023-02-14 02:31:09','2023-02-14 03:31:39'),(3,1,'admin','users','管理员','dd9ibiacabufqgqs47036x6e17wqhxv2','2023-02-14 02:31:17','2023-02-14 03:33:35');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-02-14 02:28:12');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-15  9:41:46
