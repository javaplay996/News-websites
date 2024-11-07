/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm41ge8
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm41ge8` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm41ge8`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm41ge8/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm41ge8/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm41ge8/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussxinwenxinxi` */

DROP TABLE IF EXISTS `discussxinwenxinxi`;

CREATE TABLE `discussxinwenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619000818848 DEFAULT CHARSET=utf8 COMMENT='新闻信息评论表';

/*Data for the table `discussxinwenxinxi` */

insert  into `discussxinwenxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (71,'2021-04-21 18:11:59',1,1,'用户名1','评论内容1','回复内容1'),(72,'2021-04-21 18:11:59',2,2,'用户名2','评论内容2','回复内容2'),(73,'2021-04-21 18:11:59',3,3,'用户名3','评论内容3','回复内容3'),(74,'2021-04-21 18:11:59',4,4,'用户名4','评论内容4','回复内容4'),(75,'2021-04-21 18:11:59',5,5,'用户名5','评论内容5','回复内容5'),(76,'2021-04-21 18:11:59',6,6,'用户名6','评论内容6','回复内容6'),(1619000818847,'2021-04-21 18:26:58',31,1619000699369,'001','登录后可评论 收藏 点赞 分享等惭怍','这里回复评论');

/*Table structure for table `discussyonghufenxiang` */

DROP TABLE IF EXISTS `discussyonghufenxiang`;

CREATE TABLE `discussyonghufenxiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619001056479 DEFAULT CHARSET=utf8 COMMENT='用户分享评论表';

/*Data for the table `discussyonghufenxiang` */

insert  into `discussyonghufenxiang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (81,'2021-04-21 18:11:59',1,1,'用户名1','评论内容1','回复内容1'),(82,'2021-04-21 18:11:59',2,2,'用户名2','评论内容2','回复内容2'),(83,'2021-04-21 18:11:59',3,3,'用户名3','评论内容3','回复内容3'),(84,'2021-04-21 18:11:59',4,4,'用户名4','评论内容4','回复内容4'),(85,'2021-04-21 18:11:59',5,5,'用户名5','评论内容5','回复内容5'),(86,'2021-04-21 18:11:59',6,6,'用户名6','评论内容6','回复内容6'),(1619001056478,'2021-04-21 18:30:55',1619000886891,1619000699369,'001','111111111','在这里可以回复对自己发布的信息的评论');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619001035634 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (61,'2021-04-21 18:11:59','标题1','简介1','http://localhost:8080/ssm41ge8/upload/news_picture1.jpg','内容1'),(62,'2021-04-21 18:11:59','标题2','简介2','http://localhost:8080/ssm41ge8/upload/news_picture2.jpg','内容2'),(63,'2021-04-21 18:11:59','标题3','简介3','http://localhost:8080/ssm41ge8/upload/news_picture3.jpg','内容3'),(64,'2021-04-21 18:11:59','标题4','简介4','http://localhost:8080/ssm41ge8/upload/news_picture4.jpg','内容4'),(65,'2021-04-21 18:11:59','标题5','简介5','http://localhost:8080/ssm41ge8/upload/news_picture5.jpg','内容5'),(66,'2021-04-21 18:11:59','标题6','简介6','http://localhost:8080/ssm41ge8/upload/news_picture6.jpg','内容6'),(1619001035633,'2021-04-21 18:30:35','这里添加公告信息','111111111','http://localhost:8080/ssm41ge8/upload/1619001029649.jpg','<p><img src=\"http://localhost:8080/ssm41ge8/upload/1619001034120.jpg\"></p>');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619000839682 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1619000830675,'2021-04-21 18:27:09',1619000699369,31,'xinwenxinxi','新闻标题1','http://localhost:8080/ssm41ge8/upload/1619000595013.png'),(1619000839681,'2021-04-21 18:27:18',1619000699369,32,'xinwenxinxi','新闻标题2','http://localhost:8080/ssm41ge8/upload/xinwenxinxi_xinwentupian2.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','810w45tz2v4gllqf446othgmmrradmpe','2021-04-21 18:22:38','2021-04-21 19:31:24'),(2,1619000699369,'001','yonghu','用户','lomw307e1hkc4ywpkqc7jidk5t96oi11','2021-04-21 18:25:48','2021-04-21 19:30:44');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-21 18:12:00');

/*Table structure for table `xinwenleibie` */

DROP TABLE IF EXISTS `xinwenleibie`;

CREATE TABLE `xinwenleibie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xinwenleibie` varchar(200) NOT NULL COMMENT '新闻类别',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xinwenleibie` (`xinwenleibie`)
) ENGINE=InnoDB AUTO_INCREMENT=1619000966567 DEFAULT CHARSET=utf8 COMMENT='新闻类别';

/*Data for the table `xinwenleibie` */

insert  into `xinwenleibie`(`id`,`addtime`,`xinwenleibie`) values (21,'2021-04-21 18:11:59','时事'),(22,'2021-04-21 18:11:59','政治'),(23,'2021-04-21 18:11:59','经济'),(24,'2021-04-21 18:11:59','军事'),(25,'2021-04-21 18:11:59','体育'),(26,'2021-04-21 18:11:59','育儿'),(1619000966566,'2021-04-21 18:29:25','医疗');

/*Table structure for table `xinwenxinxi` */

DROP TABLE IF EXISTS `xinwenxinxi`;

CREATE TABLE `xinwenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xinwenbiaoti` varchar(200) NOT NULL COMMENT '新闻标题',
  `xinwenleibie` varchar(200) NOT NULL COMMENT '新闻类别',
  `xinwendiqu` varchar(200) DEFAULT NULL COMMENT '新闻地区',
  `xinwentupian` varchar(200) DEFAULT NULL COMMENT '新闻图片',
  `xinwenshipin` varchar(200) DEFAULT NULL COMMENT '新闻视频',
  `xinwenxiangqing` longtext COMMENT '新闻详情',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='新闻信息';

/*Data for the table `xinwenxinxi` */

insert  into `xinwenxinxi`(`id`,`addtime`,`xinwenbiaoti`,`xinwenleibie`,`xinwendiqu`,`xinwentupian`,`xinwenshipin`,`xinwenxiangqing`,`faburiqi`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (31,'2021-04-21 18:11:59','新闻标题1','体育','新闻地区1','http://localhost:8080/ssm41ge8/upload/1619000595013.png','http://localhost:8080/ssm41ge8/upload/1619000571830.mp4','<p><img src=\"http://localhost:8080/ssm41ge8/upload/1619000588855.png\"></p>','2021-04-21',2,1,'2021-04-21 18:31:36',10),(32,'2021-04-21 18:11:59','新闻标题2','育儿','新闻地区2','http://localhost:8080/ssm41ge8/upload/xinwenxinxi_xinwentupian2.jpg','','<p>新闻详情2</p>','2021-04-21',2,2,'2021-04-21 18:28:25',7),(33,'2021-04-21 18:11:59','新闻标题3','时事','新闻地区3','http://localhost:8080/ssm41ge8/upload/xinwenxinxi_xinwentupian3.jpg','','<p>新闻详情3</p>','2021-04-21',3,3,'2021-04-21 18:24:09',4),(34,'2021-04-21 18:11:59','新闻标题4','经济','新闻地区4','http://localhost:8080/ssm41ge8/upload/xinwenxinxi_xinwentupian4.jpg','','<p>新闻详情4</p>','2021-04-21',4,4,'2021-04-21 18:24:16',5),(35,'2021-04-21 18:11:59','新闻标题5','新闻类别5','新闻地区5','http://localhost:8080/ssm41ge8/upload/xinwenxinxi_xinwentupian5.jpg','','新闻详情5','2021-04-21',5,5,'2021-04-21 18:11:59',5),(36,'2021-04-21 18:11:59','新闻标题6','新闻类别6','新闻地区6','http://localhost:8080/ssm41ge8/upload/xinwenxinxi_xinwentupian6.jpg','','新闻详情6','2021-04-21',6,6,'2021-04-21 18:11:59',6);

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1619000699370 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`,`sfsh`,`shhf`) values (11,'2021-04-21 18:11:59','用户1','e10adc3949ba59abbe56e057f20f883e','姓名1','男','http://localhost:8080/ssm41ge8/upload/yonghu_touxiang1.jpg','13823888881','773890001@qq.com','是',''),(12,'2021-04-21 18:11:59','用户2','e10adc3949ba59abbe56e057f20f883e','姓名2','女','http://localhost:8080/ssm41ge8/upload/yonghu_touxiang2.jpg','13823888882','773890002@qq.com','是',''),(13,'2021-04-21 18:11:59','用户3','e10adc3949ba59abbe56e057f20f883e','姓名3','男','http://localhost:8080/ssm41ge8/upload/yonghu_touxiang3.jpg','13823888883','773890003@qq.com','是',''),(14,'2021-04-21 18:11:59','用户4','e10adc3949ba59abbe56e057f20f883e','姓名4','男','http://localhost:8080/ssm41ge8/upload/yonghu_touxiang4.jpg','13823888884','773890004@qq.com','是',''),(15,'2021-04-21 18:11:59','用户5','e10adc3949ba59abbe56e057f20f883e','姓名5','男','http://localhost:8080/ssm41ge8/upload/yonghu_touxiang5.jpg','13823888885','773890005@qq.com','是',''),(16,'2021-04-21 18:11:59','用户6','e10adc3949ba59abbe56e057f20f883e','姓名6','男','http://localhost:8080/ssm41ge8/upload/yonghu_touxiang6.jpg','13823888886','773890006@qq.com','是',''),(1619000699369,'2021-04-21 18:24:59','001','dc5c7986daef50c1e02ab09b442ee34f','小刘','男','http://localhost:8080/ssm41ge8/upload/1619000758539.jpg','16453212562','16@12.com','是','');

/*Table structure for table `yonghufenxiang` */

DROP TABLE IF EXISTS `yonghufenxiang`;

CREATE TABLE `yonghufenxiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenxiangbiaoti` varchar(200) NOT NULL COMMENT '分享标题',
  `fenxiangleixing` varchar(200) NOT NULL COMMENT '分享类型',
  `fenxiangtupian` varchar(200) DEFAULT NULL COMMENT '分享图片',
  `fenxiangshipin` varchar(200) DEFAULT NULL COMMENT '分享视频',
  `fenxiangriqi` date DEFAULT NULL COMMENT '分享日期',
  `fenxiangneirong` longtext NOT NULL COMMENT '分享内容',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619000886892 DEFAULT CHARSET=utf8 COMMENT='用户分享';

/*Data for the table `yonghufenxiang` */

insert  into `yonghufenxiang`(`id`,`addtime`,`fenxiangbiaoti`,`fenxiangleixing`,`fenxiangtupian`,`fenxiangshipin`,`fenxiangriqi`,`fenxiangneirong`,`yonghuming`,`youxiang`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`) values (41,'2021-04-21 18:11:59','分享标题1','分享类型1','http://localhost:8080/ssm41ge8/upload/yonghufenxiang_fenxiangtupian1.jpg','','2021-04-21','分享内容1','用户名1','773890001@qq.com','是','',2,1),(42,'2021-04-21 18:11:59','分享标题2','分享类型2','http://localhost:8080/ssm41ge8/upload/yonghufenxiang_fenxiangtupian2.jpg','','2021-04-21','分享内容2','用户名2','773890002@qq.com','是','',2,2),(43,'2021-04-21 18:11:59','分享标题3','分享类型3','http://localhost:8080/ssm41ge8/upload/yonghufenxiang_fenxiangtupian3.jpg','','2021-04-21','分享内容3','用户名3','773890003@qq.com','是','',3,3),(44,'2021-04-21 18:11:59','分享标题4','分享类型4','http://localhost:8080/ssm41ge8/upload/yonghufenxiang_fenxiangtupian4.jpg','','2021-04-21','分享内容4','用户名4','773890004@qq.com','是','',4,4),(45,'2021-04-21 18:11:59','分享标题5','分享类型5','http://localhost:8080/ssm41ge8/upload/yonghufenxiang_fenxiangtupian5.jpg','','2021-04-21','分享内容5','用户名5','773890005@qq.com','是','',5,5),(46,'2021-04-21 18:11:59','分享标题6','分享类型6','http://localhost:8080/ssm41ge8/upload/yonghufenxiang_fenxiangtupian6.jpg','','2021-04-21','分享内容6','用户名6','773890006@qq.com','是','',6,6),(1619000886891,'2021-04-21 18:28:06','这里分享信息','AAA','http://localhost:8080/ssm41ge8/upload/1619000861854.jpg','http://localhost:8080/ssm41ge8/upload/1619000875743.mp4','2021-04-21','<p><img src=\"../../../upload/1619000869717.jpg\" /></p>\n<p>发布后经管理员审核通过后</p>\n<p>在前台展示</p>','001','16@12.com','是','这里审核用户的发布',1,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
