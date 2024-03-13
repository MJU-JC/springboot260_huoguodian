/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.26 : Database - huoguodianguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`huoguodianguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `huoguodianguanli`;

/*Table structure for table `caipin` */

DROP TABLE IF EXISTS `caipin`;

CREATE TABLE `caipin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `caipin_name` varchar(200) DEFAULT NULL COMMENT '菜品名称  Search111 ',
  `caipin_uuid_number` varchar(200) DEFAULT NULL COMMENT '菜品编号  Search111 ',
  `caipin_photo` varchar(200) DEFAULT NULL COMMENT '菜品照片',
  `caipin_types` int(11) DEFAULT NULL COMMENT '菜品类型 Search111',
  `caipin_kucun_number` int(11) DEFAULT NULL COMMENT '菜品库存',
  `caipin_old_money` decimal(10,2) DEFAULT NULL COMMENT '菜品原价 ',
  `caipin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `caipin_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `caipin_content` text COMMENT '菜品介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `caipin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='菜品';

/*Data for the table `caipin` */

insert  into `caipin`(`id`,`caipin_name`,`caipin_uuid_number`,`caipin_photo`,`caipin_types`,`caipin_kucun_number`,`caipin_old_money`,`caipin_new_money`,`caipin_clicknum`,`caipin_content`,`shangxia_types`,`caipin_delete`,`create_time`) values (1,'菜品名称1','165182250888865','http://localhost:8080/huoguodianguanli/upload/caipin1.jpg',3,100,'669.46','85.46',469,'菜品介绍1',1,1,'2022-05-06 15:35:08'),(2,'菜品名称2','165182250888999','http://localhost:8080/huoguodianguanli/upload/caipin2.jpg',3,102,'822.94','473.92',415,'菜品介绍2',1,1,'2022-05-06 15:35:08'),(3,'菜品名称3','165182250888915','http://localhost:8080/huoguodianguanli/upload/caipin3.jpg',1,102,'930.22','90.27',466,'菜品介绍3',1,1,'2022-05-06 15:35:08'),(4,'菜品名称4','16518225088892','http://localhost:8080/huoguodianguanli/upload/caipin4.jpg',3,104,'552.55','148.44',211,'菜品介绍4',1,1,'2022-05-06 15:35:08'),(5,'菜品名称5','16518225088893','http://localhost:8080/huoguodianguanli/upload/caipin5.jpg',2,105,'860.17','96.11',495,'菜品介绍5',2,1,'2022-05-06 15:35:08');

/*Table structure for table `caipin_commentback` */

DROP TABLE IF EXISTS `caipin_commentback`;

CREATE TABLE `caipin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `caipin_id` int(11) DEFAULT NULL COMMENT '菜品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '会员',
  `caipin_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='菜品评价';

/*Data for the table `caipin_commentback` */

insert  into `caipin_commentback`(`id`,`caipin_id`,`yonghu_id`,`caipin_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'评价内容1','2022-05-06 15:35:08','回复信息1','2022-05-06 15:35:08','2022-05-06 15:35:08'),(2,2,3,'评价内容2','2022-05-06 15:35:08','回复信息2','2022-05-06 15:35:08','2022-05-06 15:35:08'),(3,3,1,'评价内容3','2022-05-06 15:35:08','回复信息3','2022-05-06 15:35:08','2022-05-06 15:35:08'),(4,4,2,'评价内容4','2022-05-06 15:35:08','回复信息4','2022-05-06 15:35:08','2022-05-06 15:35:08'),(5,5,3,'评价内容5','2022-05-06 15:35:08','回复信息5','2022-05-06 15:35:08','2022-05-06 15:35:08'),(6,1,1,'评论内容121212','2022-05-06 16:08:36',NULL,NULL,'2022-05-06 16:08:36');

/*Table structure for table `caipin_order` */

DROP TABLE IF EXISTS `caipin_order`;

CREATE TABLE `caipin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `caipin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `caipin_id` int(11) DEFAULT NULL COMMENT '菜品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '会员',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `caipin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `caipin_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `caipin_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='菜品订单';

/*Data for the table `caipin_order` */

insert  into `caipin_order`(`id`,`caipin_order_uuid_number`,`caipin_id`,`yonghu_id`,`buy_number`,`caipin_order_true_price`,`caipin_order_types`,`caipin_order_payment_types`,`insert_time`,`create_time`) values (1,'1651824415046',3,1,1,'90.27',1,1,'2022-05-06 16:06:55','2022-05-06 16:06:55'),(2,'1651824415046',1,1,1,'85.46',5,1,'2022-05-06 16:06:55','2022-05-06 16:06:55'),(3,'1651824415046',5,1,1,'96.11',2,1,'2022-05-06 16:06:55','2022-05-06 16:06:55');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属会员',
  `caipin_id` int(11) DEFAULT NULL COMMENT '菜品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/huoguodianguanli/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/huoguodianguanli/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/huoguodianguanli/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-05-06 15:34:58'),(2,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-05-06 15:34:58'),(3,'sex_types','性别类型',1,'男',NULL,NULL,'2022-05-06 15:34:58'),(4,'sex_types','性别类型',2,'女',NULL,NULL,'2022-05-06 15:34:58'),(5,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-05-06 15:34:58'),(6,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-05-06 15:34:58'),(7,'caipin_types','菜品类型',1,'菜品类型1',NULL,NULL,'2022-05-06 15:34:58'),(8,'caipin_types','菜品类型',2,'菜品类型2',NULL,NULL,'2022-05-06 15:34:58'),(9,'caipin_types','菜品类型',3,'菜品类型3',NULL,NULL,'2022-05-06 15:34:58'),(10,'caipin_order_types','订单类型',1,'已支付',NULL,NULL,'2022-05-06 15:34:58'),(11,'caipin_order_types','订单类型',2,'退款',NULL,NULL,'2022-05-06 15:34:58'),(12,'caipin_order_types','订单类型',3,'已出餐',NULL,NULL,'2022-05-06 15:34:58'),(13,'caipin_order_types','订单类型',4,'已上餐',NULL,NULL,'2022-05-06 15:34:58'),(14,'caipin_order_types','订单类型',5,'已评价',NULL,NULL,'2022-05-06 15:34:58'),(15,'caipin_order_payment_types','订单支付类型',1,'现金',NULL,NULL,'2022-05-06 15:34:58'),(16,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-05-06 15:34:58'),(17,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-05-06 15:34:58');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '会员',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,'发布内容1',NULL,1,'2022-05-06 15:35:08','2022-05-06 15:35:08','2022-05-06 15:35:08'),(2,'帖子标题2',1,NULL,'发布内容2',NULL,1,'2022-05-06 15:35:08','2022-05-06 15:35:08','2022-05-06 15:35:08'),(3,'帖子标题3',2,NULL,'发布内容3',NULL,1,'2022-05-06 15:35:08','2022-05-06 15:35:08','2022-05-06 15:35:08'),(4,'帖子标题4',3,NULL,'发布内容4',NULL,1,'2022-05-06 15:35:08','2022-05-06 15:35:08','2022-05-06 15:35:08'),(5,'帖子标题5',1,NULL,'发布内容5',NULL,1,'2022-05-06 15:35:08','2022-05-06 15:35:08','2022-05-06 15:35:08'),(6,NULL,1,NULL,'登录后才能查看数据详情页面和评论购买加入购物车等操作',5,2,'2022-05-06 16:03:53',NULL,'2022-05-06 16:03:53'),(7,NULL,NULL,1,'管理111',5,2,'2022-05-06 16:07:35',NULL,'2022-05-06 16:07:35');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `news_types` int(11) NOT NULL COMMENT '公告类型 Search111  ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `news_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_photo`,`news_types`,`insert_time`,`news_content`,`create_time`) values (1,'公告名称1','http://localhost:8080/huoguodianguanli/upload/news1.jpg',1,'2022-05-06 15:35:08','公告详情1','2022-05-06 15:35:08'),(2,'公告名称2','http://localhost:8080/huoguodianguanli/upload/news2.jpg',2,'2022-05-06 15:35:08','公告详情2','2022-05-06 15:35:08'),(3,'公告名称3','http://localhost:8080/huoguodianguanli/upload/news3.jpg',1,'2022-05-06 15:35:08','公告详情3','2022-05-06 15:35:08'),(4,'公告名称4','http://localhost:8080/huoguodianguanli/upload/news4.jpg',2,'2022-05-06 15:35:08','公告详情4','2022-05-06 15:35:08'),(5,'公告名称5','http://localhost:8080/huoguodianguanli/upload/news5.jpg',2,'2022-05-06 15:35:08','公告详情5','2022-05-06 15:35:08');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','tzj1g311wemvo0k8pi1q21j2aufmpa0p','2022-05-06 16:02:38','2022-05-06 17:13:20'),(2,1,'a1','yonghu','会员','4obfj1p2inmpgwwyl5v2e843mymcsl5s','2022-05-06 16:02:45','2022-05-06 17:08:16');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-08-01 08:15:04');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '会员姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '会员手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '会员身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '会员头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='会员';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`create_time`) values (1,'a1','123456','会员姓名1','17703786901','410224199610232001','http://localhost:8080/huoguodianguanli/upload/yonghu1.jpg',2,'1@qq.com','325.82','2022-05-06 15:35:08'),(2,'a2','123456','会员姓名2','17703786902','410224199610232002','http://localhost:8080/huoguodianguanli/upload/yonghu2.jpg',1,'2@qq.com','609.95','2022-05-06 15:35:08'),(3,'a3','123456','会员姓名3','17703786903','410224199610232003','http://localhost:8080/huoguodianguanli/upload/yonghu3.jpg',2,'3@qq.com','202.73','2022-05-06 15:35:08');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
