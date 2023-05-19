-- MySQL dump 10.13  Distrib 5.7.32, for Win64 (x86_64)
--
-- Host: localhost    Database: jspmnzzch
-- ------------------------------------------------------
-- Server version	5.7.32-log

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmnzzch/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmnzzch/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmnzzch/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612159542209 DEFAULT CHARSET=utf8 COMMENT='论坛交流';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (1612159531925,'2021-02-01 06:05:31','问题交流','<p>请输入内容这里可以发布信息用于用户之间可以进行交流</p>',0,1612159411057,'1','开放'),(1612159542208,'2021-02-01 06:05:41',NULL,'11111',1612159531925,1612159411057,'1',NULL);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shebeibaoxiu`
--

DROP TABLE IF EXISTS `shebeibaoxiu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shebeibaoxiu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) NOT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `shebeifenlei` varchar(200) DEFAULT NULL COMMENT '设备分类',
  `baoxiuneirong` varchar(200) DEFAULT NULL COMMENT '报修内容',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612159508315 DEFAULT CHARSET=utf8 COMMENT='设备报修';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shebeibaoxiu`
--

LOCK TABLES `shebeibaoxiu` WRITE;
/*!40000 ALTER TABLE `shebeibaoxiu` DISABLE KEYS */;
INSERT INTO `shebeibaoxiu` VALUES (1612159508314,'2021-02-01 06:05:07','10004','华为mate30','手机','有10部都有问题','2021-02-01','1','刘倩','是','同意使用');
/*!40000 ALTER TABLE `shebeibaoxiu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shebeifenlei`
--

DROP TABLE IF EXISTS `shebeifenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shebeifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeifenlei` varchar(200) NOT NULL COMMENT '设备分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612159213504 DEFAULT CHARSET=utf8 COMMENT='设备分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shebeifenlei`
--

LOCK TABLES `shebeifenlei` WRITE;
/*!40000 ALTER TABLE `shebeifenlei` DISABLE KEYS */;
INSERT INTO `shebeifenlei` VALUES (31,'2021-02-01 05:35:35','数码'),(32,'2021-02-01 05:35:35','电器'),(33,'2021-02-01 05:35:35','手机'),(34,'2021-02-01 05:35:35','其他'),(1612159213503,'2021-02-01 06:00:12','电脑');
/*!40000 ALTER TABLE `shebeifenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shebeiguihai`
--

DROP TABLE IF EXISTS `shebeiguihai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shebeiguihai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `shebeifenlei` varchar(200) DEFAULT NULL COMMENT '设备分类',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guihaineirong` longtext COMMENT '归还内容',
  `guihairiqi` date DEFAULT NULL COMMENT '归还日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `longitude` float DEFAULT NULL COMMENT '经度',
  `latitude` float DEFAULT NULL COMMENT '纬度',
  `fulladdress` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612159697787 DEFAULT CHARSET=utf8 COMMENT='设备归还';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shebeiguihai`
--

LOCK TABLES `shebeiguihai` WRITE;
/*!40000 ALTER TABLE `shebeiguihai` DISABLE KEYS */;
INSERT INTO `shebeiguihai` VALUES (1612159697786,'2021-02-01 06:08:17','10004','华为mate30','手机','10','http://localhost:8080/jspmnzzch/upload/1612159668200.jpg','没用问题按时归还','2021-02-09','1','刘倩','15214121412','是','没有问题，归还成功',121.244,31.022,'上海市松江区松江工业区沪松路508号上海亚盛汽车销售服务有限公司');
/*!40000 ALTER TABLE `shebeiguihai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shebeilingyong`
--

DROP TABLE IF EXISTS `shebeilingyong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shebeilingyong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) NOT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `shebeifenlei` varchar(200) DEFAULT NULL COMMENT '设备分类',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `lingyongriqi` date DEFAULT NULL COMMENT '领用日期',
  `guihairiqi` date DEFAULT NULL COMMENT '归还日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612159483096 DEFAULT CHARSET=utf8 COMMENT='设备领用';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shebeilingyong`
--

LOCK TABLES `shebeilingyong` WRITE;
/*!40000 ALTER TABLE `shebeilingyong` DISABLE KEYS */;
INSERT INTO `shebeilingyong` VALUES (1612159483095,'2021-02-01 06:04:42','10004','华为mate30','手机',10,'领用测试','2021-02-01','2021-02-09','1','刘倩','15214121412','是','同意使用状况');
/*!40000 ALTER TABLE `shebeilingyong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shebeiruku`
--

DROP TABLE IF EXISTS `shebeiruku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shebeiruku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `rukudanhao` varchar(200) DEFAULT NULL COMMENT '入库单号',
  `shebeibianhao` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `shebeifenlei` varchar(200) DEFAULT NULL COMMENT '设备分类',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `goumaishangjia` varchar(200) NOT NULL COMMENT '购买商家',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `rukuriqi` date DEFAULT NULL COMMENT '入库日期',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `rukudanhao` (`rukudanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1612159329870 DEFAULT CHARSET=utf8 COMMENT='设备入库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shebeiruku`
--

LOCK TABLES `shebeiruku` WRITE;
/*!40000 ALTER TABLE `shebeiruku` DISABLE KEYS */;
INSERT INTO `shebeiruku` VALUES (1612159329869,'2021-02-01 06:02:09','1612159287','10004','华为mate30','手机',20,'华为有限公司','15214121412','上海市人民路2号','2021-01-31','31号像华为公司购买20台华为mate30 已经进行入库');
/*!40000 ALTER TABLE `shebeiruku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shebeixinxi`
--

DROP TABLE IF EXISTS `shebeixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shebeixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) NOT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) NOT NULL COMMENT '设备名称',
  `shebeifenlei` varchar(200) DEFAULT NULL COMMENT '设备分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `shebeixiangqing` longtext COMMENT '设备详情',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shebeibianhao` (`shebeibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1612159284353 DEFAULT CHARSET=utf8 COMMENT='设备信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shebeixinxi`
--

LOCK TABLES `shebeixinxi` WRITE;
/*!40000 ALTER TABLE `shebeixinxi` DISABLE KEYS */;
INSERT INTO `shebeixinxi` VALUES (41,'2021-02-01 05:35:35','10001','索尼照相机','数码','http://localhost:8080/jspmnzzch/upload/shebeixinxi_tupian1.jpg',50,'设备详情1\r\n','2021-02-01'),(42,'2021-02-01 05:35:35','10002','索尼耳机','电器','http://localhost:8080/jspmnzzch/upload/shebeixinxi_tupian2.jpg',200,'设备详情2\r\n','2021-02-01'),(43,'2021-02-01 05:35:35','设备编号3','设备名称3','设备分类3','http://localhost:8080/jspmnzzch/upload/shebeixinxi_tupian3.jpg',3,'设备详情3','2021-02-01'),(44,'2021-02-01 05:35:35','设备编号4','设备名称4','设备分类4','http://localhost:8080/jspmnzzch/upload/shebeixinxi_tupian4.jpg',4,'设备详情4','2021-02-01'),(45,'2021-02-01 05:35:35','设备编号5','设备名称5','设备分类5','http://localhost:8080/jspmnzzch/upload/shebeixinxi_tupian5.jpg',5,'设备详情5','2021-02-01'),(1612159284352,'2021-02-01 06:01:23','10004','华为mate30','手机','http://localhost:8080/jspmnzzch/upload/1612159239472.png',60,'<img src=\"http://localhost:8080/jspmnzzch/upload/1612159265756.png\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspmnzzch/upload/1612159265756.png\">这里可以写一些相关信息\r\n','2021-01-31');
/*!40000 ALTER TABLE `shebeixinxi` ENABLE KEYS */;
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
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','ecvhkqze7zz7ac3pejlsrvides8dwahv','2021-02-01 05:52:57','2021-02-01 07:08:40'),(2,11,'001','yonghu','用户','ubip7lvc9k51lxj26npx1aco0cbthasm','2021-02-01 05:53:14','2021-02-01 06:53:52'),(3,1612159411057,'1','yonghu','用户','r8mp0nalxndo1ncqpjoibpflla1jgcy5','2021-02-01 06:03:36','2021-02-01 07:07:10');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-02-01 05:35:35');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xitonggonggao`
--

DROP TABLE IF EXISTS `xitonggonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xitonggonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xitonggonggao`
--

LOCK TABLES `xitonggonggao` WRITE;
/*!40000 ALTER TABLE `xitonggonggao` DISABLE KEYS */;
INSERT INTO `xitonggonggao` VALUES (21,'2021-02-01 05:35:35','公告信息','http://localhost:8080/jspmnzzch/upload/xitonggonggao_tupian1.jpg','<img src=\"http://localhost:8080/jspmnzzch/upload/1612159184654.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspmnzzch/upload/1612159184654.jpg\">这里可以发布一些公告内容，这里的内容都适用于测试的，可以自行添加修改删除的\r\n','2021-01-31 13:14:35'),(22,'2021-02-01 05:35:35','标题2','http://localhost:8080/jspmnzzch/upload/xitonggonggao_tupian2.jpg','公告内容2','2021-02-01 13:35:35'),(23,'2021-02-01 05:35:35','标题3','http://localhost:8080/jspmnzzch/upload/xitonggonggao_tupian3.jpg','公告内容3','2021-02-01 13:35:35'),(24,'2021-02-01 05:35:35','标题4','http://localhost:8080/jspmnzzch/upload/xitonggonggao_tupian4.jpg','公告内容4','2021-02-01 13:35:35'),(25,'2021-02-01 05:35:35','标题5','http://localhost:8080/jspmnzzch/upload/xitonggonggao_tupian5.jpg','公告内容5','2021-02-01 13:35:35'),(26,'2021-02-01 05:35:35','标题6','http://localhost:8080/jspmnzzch/upload/xitonggonggao_tupian6.jpg','公告内容6','2021-02-01 13:35:35');
/*!40000 ALTER TABLE `xitonggonggao` ENABLE KEYS */;
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
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1612159411058 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-02-01 05:35:35','001','001','姓名1','男','http://localhost:8080/jspmnzzch/upload/yonghu_touxiang1.jpg','440300199101010001','13823888881'),(12,'2021-02-01 05:35:35','用户2','123456','姓名2','男','http://localhost:8080/jspmnzzch/upload/yonghu_touxiang2.jpg','440300199202020002','13823888882'),(13,'2021-02-01 05:35:35','用户3','123456','姓名3','男','http://localhost:8080/jspmnzzch/upload/yonghu_touxiang3.jpg','440300199303030003','13823888883'),(14,'2021-02-01 05:35:35','用户4','123456','姓名4','男','http://localhost:8080/jspmnzzch/upload/yonghu_touxiang4.jpg','440300199404040004','13823888884'),(15,'2021-02-01 05:35:35','用户5','123456','姓名5','男','http://localhost:8080/jspmnzzch/upload/yonghu_touxiang5.jpg','440300199505050005','13823888885'),(16,'2021-02-01 05:35:35','用户6','123456','姓名6','男','http://localhost:8080/jspmnzzch/upload/yonghu_touxiang6.jpg','440300199606060006','13823888886'),(1612159411057,'2021-02-01 06:03:31','1','1','刘倩','女','http://localhost:8080/jspmnzzch/upload/1612159429277.png','441214121412141214','15214121412');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-01 14:12:22
