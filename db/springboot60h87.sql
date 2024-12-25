-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot60h87
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
-- Current Database: `springboot60h87`
--

/*!40000 DROP DATABASE IF EXISTS `springboot60h87`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springboot60h87` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springboot60h87`;

--
-- Table structure for table `aixinjuanzeng`
--

DROP TABLE IF EXISTS `aixinjuanzeng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aixinjuanzeng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `juanzengbiaoti` varchar(200) NOT NULL COMMENT '捐赠标题',
  `juanzengneirong` longtext COMMENT '捐赠内容',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `jigoumingcheng` varchar(200) DEFAULT NULL COMMENT '机构名称',
  `juanzengdidian` varchar(200) NOT NULL COMMENT '捐赠地点',
  `fengmiantupian` varchar(200) DEFAULT NULL COMMENT '封面图片',
  `weixinzhanghao` varchar(200) NOT NULL COMMENT '微信账号',
  `weixinyonghuming` varchar(200) NOT NULL COMMENT '微信用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='爱心捐赠';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aixinjuanzeng`
--

LOCK TABLES `aixinjuanzeng` WRITE;
/*!40000 ALTER TABLE `aixinjuanzeng` DISABLE KEYS */;
INSERT INTO `aixinjuanzeng` VALUES (41,'2022-04-18 04:01:20','捐赠标题1','捐赠内容1','2022-04-18 12:01:20','机构名称1','捐赠地点1','upload/aixinjuanzeng_fengmiantupian1.jpg','微信账号1','微信用户名1'),(42,'2022-04-18 04:01:20','捐赠标题2','捐赠内容2','2022-04-18 12:01:20','机构名称2','捐赠地点2','upload/aixinjuanzeng_fengmiantupian2.jpg','微信账号2','微信用户名2'),(43,'2022-04-18 04:01:20','捐赠标题3','捐赠内容3','2022-04-18 12:01:20','机构名称3','捐赠地点3','upload/aixinjuanzeng_fengmiantupian3.jpg','微信账号3','微信用户名3'),(44,'2022-04-18 04:01:20','捐赠标题4','捐赠内容4','2022-04-18 12:01:20','机构名称4','捐赠地点4','upload/aixinjuanzeng_fengmiantupian4.jpg','微信账号4','微信用户名4'),(45,'2022-04-18 04:01:20','捐赠标题5','捐赠内容5','2022-04-18 12:01:20','机构名称5','捐赠地点5','upload/aixinjuanzeng_fengmiantupian5.jpg','微信账号5','微信用户名5'),(46,'2022-04-18 04:01:20','捐赠标题6','捐赠内容6','2022-04-18 12:01:20','机构名称6','捐赠地点6','upload/aixinjuanzeng_fengmiantupian6.jpg','微信账号6','微信用户名6');
/*!40000 ALTER TABLE `aixinjuanzeng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1650255053769 DEFAULT CHARSET=utf8 COMMENT='在线咨询';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (101,'2022-04-18 04:01:20',1,1,'提问1','回复1',1),(102,'2022-04-18 04:01:20',2,2,'提问2','回复2',2),(103,'2022-04-18 04:01:20',3,3,'提问3','回复3',3),(104,'2022-04-18 04:01:20',4,4,'提问4','回复4',4),(105,'2022-04-18 04:01:20',5,5,'提问5','回复5',5),(106,'2022-04-18 04:01:20',6,6,'提问6','回复6',6),(1650255014843,'2022-04-18 04:10:13',11,NULL,'咨询咨询咨询',NULL,0),(1650255053768,'2022-04-18 04:10:53',11,1,NULL,'回复回复回复',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Table structure for table `discussxuanchuanxinwen`
--

DROP TABLE IF EXISTS `discussxuanchuanxinwen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussxuanchuanxinwen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='宣传新闻评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussxuanchuanxinwen`
--

LOCK TABLES `discussxuanchuanxinwen` WRITE;
/*!40000 ALTER TABLE `discussxuanchuanxinwen` DISABLE KEYS */;
INSERT INTO `discussxuanchuanxinwen` VALUES (121,'2022-04-18 04:01:20',1,1,'用户名1','评论内容1','回复内容1'),(122,'2022-04-18 04:01:20',2,2,'用户名2','评论内容2','回复内容2'),(123,'2022-04-18 04:01:20',3,3,'用户名3','评论内容3','回复内容3'),(124,'2022-04-18 04:01:20',4,4,'用户名4','评论内容4','回复内容4'),(125,'2022-04-18 04:01:20',5,5,'用户名5','评论内容5','回复内容5'),(126,'2022-04-18 04:01:20',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussxuanchuanxinwen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongbaoming`
--

DROP TABLE IF EXISTS `huodongbaoming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huodongbaoming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `baomingbianhao` varchar(200) DEFAULT NULL COMMENT '报名编号',
  `huodongbianhao` varchar(200) DEFAULT NULL COMMENT '活动编号',
  `huodongmingcheng` varchar(200) DEFAULT NULL COMMENT '活动名称',
  `huodongdidian` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `kaishishijian` varchar(200) DEFAULT NULL COMMENT '开始时间',
  `jieshushijian` varchar(200) DEFAULT NULL COMMENT '结束时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `baomingshijian` datetime DEFAULT NULL COMMENT '报名时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `baomingbianhao` (`baomingbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='活动报名';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongbaoming`
--

LOCK TABLES `huodongbaoming` WRITE;
/*!40000 ALTER TABLE `huodongbaoming` DISABLE KEYS */;
INSERT INTO `huodongbaoming` VALUES (61,'2022-04-18 04:01:20','1111111111','活动编号1','活动名称1','活动地点1','开始时间1','结束时间1','用户账号1','用户姓名1','用户手机1','2022-04-18 12:01:20','备注1','是',''),(62,'2022-04-18 04:01:20','2222222222','活动编号2','活动名称2','活动地点2','开始时间2','结束时间2','用户账号2','用户姓名2','用户手机2','2022-04-18 12:01:20','备注2','是',''),(63,'2022-04-18 04:01:20','3333333333','活动编号3','活动名称3','活动地点3','开始时间3','结束时间3','用户账号3','用户姓名3','用户手机3','2022-04-18 12:01:20','备注3','是',''),(64,'2022-04-18 04:01:20','4444444444','活动编号4','活动名称4','活动地点4','开始时间4','结束时间4','用户账号4','用户姓名4','用户手机4','2022-04-18 12:01:20','备注4','是',''),(65,'2022-04-18 04:01:20','5555555555','活动编号5','活动名称5','活动地点5','开始时间5','结束时间5','用户账号5','用户姓名5','用户手机5','2022-04-18 12:01:20','备注5','是',''),(66,'2022-04-18 04:01:20','6666666666','活动编号6','活动名称6','活动地点6','开始时间6','结束时间6','用户账号6','用户姓名6','用户手机6','2022-04-18 12:01:20','备注6','是','');
/*!40000 ALTER TABLE `huodongbaoming` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiuwujuanzeng`
--

DROP TABLE IF EXISTS `jiuwujuanzeng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiuwujuanzeng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `juanzengbianhao` varchar(200) DEFAULT NULL COMMENT '捐赠编号',
  `juanzengbiaoti` varchar(200) DEFAULT NULL COMMENT '捐赠标题',
  `juanzengdidian` varchar(200) DEFAULT NULL COMMENT '捐赠地点',
  `wuliudanhao` varchar(200) DEFAULT NULL COMMENT '物流单号',
  `juanzengwupin` varchar(200) NOT NULL COMMENT '捐赠物品',
  `juanzengshijian` datetime DEFAULT NULL COMMENT '捐赠时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `juanzengbianhao` (`juanzengbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='旧物捐赠';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiuwujuanzeng`
--

LOCK TABLES `jiuwujuanzeng` WRITE;
/*!40000 ALTER TABLE `jiuwujuanzeng` DISABLE KEYS */;
INSERT INTO `jiuwujuanzeng` VALUES (51,'2022-04-18 04:01:20','1111111111','捐赠标题1','捐赠地点1','物流单号1','捐赠物品1','2022-04-18 12:01:20','用户账号1','用户姓名1','用户手机1'),(52,'2022-04-18 04:01:20','2222222222','捐赠标题2','捐赠地点2','物流单号2','捐赠物品2','2022-04-18 12:01:20','用户账号2','用户姓名2','用户手机2'),(53,'2022-04-18 04:01:20','3333333333','捐赠标题3','捐赠地点3','物流单号3','捐赠物品3','2022-04-18 12:01:20','用户账号3','用户姓名3','用户手机3'),(54,'2022-04-18 04:01:20','4444444444','捐赠标题4','捐赠地点4','物流单号4','捐赠物品4','2022-04-18 12:01:20','用户账号4','用户姓名4','用户手机4'),(55,'2022-04-18 04:01:20','5555555555','捐赠标题5','捐赠地点5','物流单号5','捐赠物品5','2022-04-18 12:01:20','用户账号5','用户姓名5','用户手机5'),(56,'2022-04-18 04:01:20','6666666666','捐赠标题6','捐赠地点6','物流单号6','捐赠物品6','2022-04-18 12:01:20','用户账号6','用户姓名6','用户手机6');
/*!40000 ALTER TABLE `jiuwujuanzeng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lejiewomen`
--

DROP TABLE IF EXISTS `lejiewomen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lejiewomen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `fengmiantupian` varchar(200) DEFAULT NULL COMMENT '封面图片',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `neirong` longtext COMMENT '内容',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='了解我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lejiewomen`
--

LOCK TABLES `lejiewomen` WRITE;
/*!40000 ALTER TABLE `lejiewomen` DISABLE KEYS */;
INSERT INTO `lejiewomen` VALUES (71,'2022-04-18 04:01:20','标题1','upload/lejiewomen_fengmiantupian1.jpg','2022-04-18 12:01:20','773890001@qq.com','内容1','联系方式1','联系人1',''),(72,'2022-04-18 04:01:20','标题2','upload/lejiewomen_fengmiantupian2.jpg','2022-04-18 12:01:20','773890002@qq.com','内容2','联系方式2','联系人2',''),(73,'2022-04-18 04:01:20','标题3','upload/lejiewomen_fengmiantupian3.jpg','2022-04-18 12:01:20','773890003@qq.com','内容3','联系方式3','联系人3',''),(74,'2022-04-18 04:01:20','标题4','upload/lejiewomen_fengmiantupian4.jpg','2022-04-18 12:01:20','773890004@qq.com','内容4','联系方式4','联系人4',''),(75,'2022-04-18 04:01:20','标题5','upload/lejiewomen_fengmiantupian5.jpg','2022-04-18 12:01:20','773890005@qq.com','内容5','联系方式5','联系人5',''),(76,'2022-04-18 04:01:20','标题6','upload/lejiewomen_fengmiantupian6.jpg','2022-04-18 12:01:20','773890006@qq.com','内容6','联系方式6','联系人6','');
/*!40000 ALTER TABLE `lejiewomen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `cpicture` varchar(200) DEFAULT NULL COMMENT '留言图片',
  `reply` longtext COMMENT '回复内容',
  `rpicture` varchar(200) DEFAULT NULL COMMENT '回复图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='留言求助';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (111,'2022-04-18 04:01:20',1,'用户名1','留言内容1','upload/messages_cpicture1.jpg','回复内容1','upload/messages_rpicture1.jpg'),(112,'2022-04-18 04:01:20',2,'用户名2','留言内容2','upload/messages_cpicture2.jpg','回复内容2','upload/messages_rpicture2.jpg'),(113,'2022-04-18 04:01:20',3,'用户名3','留言内容3','upload/messages_cpicture3.jpg','回复内容3','upload/messages_rpicture3.jpg'),(114,'2022-04-18 04:01:20',4,'用户名4','留言内容4','upload/messages_cpicture4.jpg','回复内容4','upload/messages_rpicture4.jpg'),(115,'2022-04-18 04:01:20',5,'用户名5','留言内容5','upload/messages_cpicture5.jpg','回复内容5','upload/messages_rpicture5.jpg'),(116,'2022-04-18 04:01:20',6,'用户名6','留言内容6','upload/messages_cpicture6.jpg','回复内容6','upload/messages_rpicture6.jpg');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuxingushi`
--

DROP TABLE IF EXISTS `shuxingushi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuxingushi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `fengmiantupian` varchar(200) NOT NULL COMMENT '封面图片',
  `neirong` longtext COMMENT '内容',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='书信故事';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuxingushi`
--

LOCK TABLES `shuxingushi` WRITE;
/*!40000 ALTER TABLE `shuxingushi` DISABLE KEYS */;
INSERT INTO `shuxingushi` VALUES (91,'2022-04-18 04:01:20','标题1','upload/shuxingushi_fengmiantupian1.jpg','内容1','2022-04-18 12:01:20','用户账号1','用户姓名1'),(92,'2022-04-18 04:01:20','标题2','upload/shuxingushi_fengmiantupian2.jpg','内容2','2022-04-18 12:01:20','用户账号2','用户姓名2'),(93,'2022-04-18 04:01:20','标题3','upload/shuxingushi_fengmiantupian3.jpg','内容3','2022-04-18 12:01:20','用户账号3','用户姓名3'),(94,'2022-04-18 04:01:20','标题4','upload/shuxingushi_fengmiantupian4.jpg','内容4','2022-04-18 12:01:20','用户账号4','用户姓名4'),(95,'2022-04-18 04:01:20','标题5','upload/shuxingushi_fengmiantupian5.jpg','内容5','2022-04-18 12:01:20','用户账号5','用户姓名5'),(96,'2022-04-18 04:01:20','标题6','upload/shuxingushi_fengmiantupian6.jpg','内容6','2022-04-18 12:01:20','用户账号6','用户姓名6');
/*!40000 ALTER TABLE `shuxingushi` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','bhk9xp8tj6q7k3p187ake8tqd4wc3xh7','2022-04-18 04:06:38','2022-04-18 05:06:39'),(2,11,'1','yonghu','用户','rtf4wx3f3qbp583diebmr655j8fl2cbi','2022-04-18 04:09:12','2022-04-18 05:09:13');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-04-18 04:01:20');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuanchuanxinwen`
--

DROP TABLE IF EXISTS `xuanchuanxinwen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuanchuanxinwen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xinwenbiaoti` varchar(200) NOT NULL COMMENT '新闻标题',
  `xinwenneirong` longtext COMMENT '新闻内容',
  `fengmiantupian` varchar(200) DEFAULT NULL COMMENT '封面图片',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='宣传新闻';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuanchuanxinwen`
--

LOCK TABLES `xuanchuanxinwen` WRITE;
/*!40000 ALTER TABLE `xuanchuanxinwen` DISABLE KEYS */;
INSERT INTO `xuanchuanxinwen` VALUES (21,'2022-04-18 04:01:20','新闻标题1','新闻内容1','upload/xuanchuanxinwen_fengmiantupian1.jpg','2022-04-18 12:01:20','发布人1'),(22,'2022-04-18 04:01:20','新闻标题2','新闻内容2','upload/xuanchuanxinwen_fengmiantupian2.jpg','2022-04-18 12:01:20','发布人2'),(23,'2022-04-18 04:01:20','新闻标题3','新闻内容3','upload/xuanchuanxinwen_fengmiantupian3.jpg','2022-04-18 12:01:20','发布人3'),(24,'2022-04-18 04:01:20','新闻标题4','新闻内容4','upload/xuanchuanxinwen_fengmiantupian4.jpg','2022-04-18 12:01:20','发布人4'),(25,'2022-04-18 04:01:20','新闻标题5','新闻内容5','upload/xuanchuanxinwen_fengmiantupian5.jpg','2022-04-18 12:01:20','发布人5'),(26,'2022-04-18 04:01:20','新闻标题6','新闻内容6','upload/xuanchuanxinwen_fengmiantupian6.jpg','2022-04-18 12:01:20','发布人6');
/*!40000 ALTER TABLE `xuanchuanxinwen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2022-04-18 04:01:20','1','1','用户姓名1','男','年龄1','upload/yonghu_touxiang1.jpg','13823888881'),(12,'2022-04-18 04:01:20','用户账号2','123456','用户姓名2','男','年龄2','upload/yonghu_touxiang2.jpg','13823888882'),(13,'2022-04-18 04:01:20','用户账号3','123456','用户姓名3','男','年龄3','upload/yonghu_touxiang3.jpg','13823888883'),(14,'2022-04-18 04:01:20','用户账号4','123456','用户姓名4','男','年龄4','upload/yonghu_touxiang4.jpg','13823888884'),(15,'2022-04-18 04:01:20','用户账号5','123456','用户姓名5','男','年龄5','upload/yonghu_touxiang5.jpg','13823888885'),(16,'2022-04-18 04:01:20','用户账号6','123456','用户姓名6','男','年龄6','upload/yonghu_touxiang6.jpg','13823888886');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `youqinglianjie`
--

DROP TABLE IF EXISTS `youqinglianjie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `youqinglianjie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `lianjiemingcheng` varchar(200) NOT NULL COMMENT '链接名称',
  `lianjiewangzhan` varchar(200) NOT NULL COMMENT '链接网站',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='友情链接';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `youqinglianjie`
--

LOCK TABLES `youqinglianjie` WRITE;
/*!40000 ALTER TABLE `youqinglianjie` DISABLE KEYS */;
INSERT INTO `youqinglianjie` VALUES (81,'2022-04-18 04:01:20','链接名称1','链接网站1','upload/youqinglianjie_tupian1.jpg'),(82,'2022-04-18 04:01:20','链接名称2','链接网站2','upload/youqinglianjie_tupian2.jpg'),(83,'2022-04-18 04:01:20','链接名称3','链接网站3','upload/youqinglianjie_tupian3.jpg'),(84,'2022-04-18 04:01:20','链接名称4','链接网站4','upload/youqinglianjie_tupian4.jpg'),(85,'2022-04-18 04:01:20','链接名称5','链接网站5','upload/youqinglianjie_tupian5.jpg'),(86,'2022-04-18 04:01:20','链接名称6','链接网站6','upload/youqinglianjie_tupian6.jpg');
/*!40000 ALTER TABLE `youqinglianjie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhiyuanhuodong`
--

DROP TABLE IF EXISTS `zhiyuanhuodong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhiyuanhuodong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongbianhao` varchar(200) DEFAULT NULL COMMENT '活动编号',
  `huodongmingcheng` varchar(200) NOT NULL COMMENT '活动名称',
  `fuwuneirong` longtext COMMENT '服务内容',
  `huodongdidian` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `kaishishijian` date DEFAULT NULL COMMENT '开始时间',
  `jieshushijian` date DEFAULT NULL COMMENT '结束时间',
  `huodongtupian` varchar(200) DEFAULT NULL COMMENT '活动图片',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`id`),
  UNIQUE KEY `huodongbianhao` (`huodongbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='志愿活动';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhiyuanhuodong`
--

LOCK TABLES `zhiyuanhuodong` WRITE;
/*!40000 ALTER TABLE `zhiyuanhuodong` DISABLE KEYS */;
INSERT INTO `zhiyuanhuodong` VALUES (31,'2022-04-18 04:01:20','1111111111','活动名称1','服务内容1','活动地点1','2022-04-18','2022-04-18','upload/zhiyuanhuodong_huodongtupian1.jpg','13823888881'),(32,'2022-04-18 04:01:20','2222222222','活动名称2','服务内容2','活动地点2','2022-04-18','2022-04-18','upload/zhiyuanhuodong_huodongtupian2.jpg','13823888882'),(33,'2022-04-18 04:01:20','3333333333','活动名称3','服务内容3','活动地点3','2022-04-18','2022-04-18','upload/zhiyuanhuodong_huodongtupian3.jpg','13823888883'),(34,'2022-04-18 04:01:20','4444444444','活动名称4','服务内容4','活动地点4','2022-04-18','2022-04-18','upload/zhiyuanhuodong_huodongtupian4.jpg','13823888884'),(35,'2022-04-18 04:01:20','5555555555','活动名称5','服务内容5','活动地点5','2022-04-18','2022-04-18','upload/zhiyuanhuodong_huodongtupian5.jpg','13823888885'),(36,'2022-04-18 04:01:20','6666666666','活动名称6','服务内容6','活动地点6','2022-04-18','2022-04-18','upload/zhiyuanhuodong_huodongtupian6.jpg','13823888886');
/*!40000 ALTER TABLE `zhiyuanhuodong` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-22 10:54:47
