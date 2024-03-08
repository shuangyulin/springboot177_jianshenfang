/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jianshenfangguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jianshenfangguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jianshenfangguanli`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-03-05 14:55:49'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-03-05 14:55:49'),(3,'qicai_types','器材类型',1,'器材类型1',NULL,NULL,'2022-03-05 14:55:49'),(4,'qicai_types','器材类型',2,'器材类型2',NULL,NULL,'2022-03-05 14:55:49'),(5,'qicai_types','器材类型',3,'器材类型3',NULL,NULL,'2022-03-05 14:55:49'),(6,'kecheng_types','课程类型',1,'孕妇康复',NULL,NULL,'2022-03-05 14:55:49'),(7,'kecheng_types','课程类型',2,'瘦身',NULL,NULL,'2022-03-05 14:55:49'),(8,'kecheng_types','课程类型',3,'瑜伽课程',NULL,NULL,'2022-03-05 14:55:49'),(9,'qicai_types','器材类型',4,'器材累心4',NULL,'','2022-03-05 15:18:57');

/*Table structure for table `jianshenfang` */

DROP TABLE IF EXISTS `jianshenfang`;

CREATE TABLE `jianshenfang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jianshenfang_name` varchar(200) DEFAULT NULL COMMENT '健身房名称  Search111 ',
  `jianshenfang_photo` varchar(200) DEFAULT NULL COMMENT '健身房照片',
  `jianshenfang_address` varchar(200) DEFAULT NULL COMMENT '健身房位置',
  `jianshenfang_content` text COMMENT '健身房详细介绍',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='健身房';

/*Data for the table `jianshenfang` */

insert  into `jianshenfang`(`id`,`jianshenfang_name`,`jianshenfang_photo`,`jianshenfang_address`,`jianshenfang_content`,`insert_time`,`create_time`) values (1,'健身房名称1','http://localhost:8080/jianshenfangguanli/upload/jianshenfang1.jpg','健身房位置1','健身房详细介绍1','2022-03-05 14:58:52','2022-03-05 14:58:52'),(2,'健身房名称2','http://localhost:8080/jianshenfangguanli/upload/jianshenfang2.jpg','健身房位置2','健身房详细介绍2','2022-03-05 14:58:52','2022-03-05 14:58:52'),(3,'健身房名称3','http://localhost:8080/jianshenfangguanli/upload/jianshenfang3.jpg','健身房位置3','健身房详细介绍3','2022-03-05 14:58:52','2022-03-05 14:58:52'),(4,'健身房名称4','http://localhost:8080/jianshenfangguanli/upload/jianshenfang4.jpg','健身房位置4','健身房详细介绍4','2022-03-05 14:58:52','2022-03-05 14:58:52'),(5,'健身房名称5','http://localhost:8080/jianshenfangguanli/upload/jianshenfang5.jpg','健身房位置5','健身房详细介绍5','2022-03-05 14:58:52','2022-03-05 14:58:52');

/*Table structure for table `jiaolian` */

DROP TABLE IF EXISTS `jiaolian`;

CREATE TABLE `jiaolian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaolian_name` varchar(200) DEFAULT NULL COMMENT '教练姓名 Search111 ',
  `jiaolian_phone` varchar(200) DEFAULT NULL COMMENT '教练手机号',
  `jiaolian_photo` varchar(200) DEFAULT NULL COMMENT '教练头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `rongyu_content` text COMMENT '所获荣誉',
  `jiaolian_content` text COMMENT '教练详细介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='教练';

/*Data for the table `jiaolian` */

insert  into `jiaolian`(`id`,`jiaolian_name`,`jiaolian_phone`,`jiaolian_photo`,`sex_types`,`rongyu_content`,`jiaolian_content`,`create_time`) values (1,'教练姓名1','17703786901','http://localhost:8080/jianshenfangguanli/upload/jiaolian1.jpg',2,'所获荣誉1','教练详细介绍1','2022-03-05 14:58:52'),(2,'教练姓名2','17703786902','http://localhost:8080/jianshenfangguanli/upload/jiaolian2.jpg',1,'所获荣誉2','教练详细介绍2','2022-03-05 14:58:52'),(3,'教练姓名3','17703786903','http://localhost:8080/jianshenfangguanli/upload/jiaolian3.jpg',1,'所获荣誉3','教练详细介绍3','2022-03-05 14:58:52'),(4,'教练姓名4','17703786904','http://localhost:8080/jianshenfangguanli/upload/jiaolian4.jpg',1,'所获荣誉4','教练详细介绍4','2022-03-05 14:58:52'),(5,'教练姓名5','17703786905','http://localhost:8080/jianshenfangguanli/upload/jiaolian5.jpg',1,'<p>所获荣誉5111</p>','<p>教练详细介绍51111</p>','2022-03-05 14:58:52');

/*Table structure for table `kecheng` */

DROP TABLE IF EXISTS `kecheng`;

CREATE TABLE `kecheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaolian_id` int(20) NOT NULL COMMENT '教练',
  `jianshenfang_id` int(20) NOT NULL COMMENT '健身房',
  `kecheng_name` varchar(200) DEFAULT NULL COMMENT '课程名称 Search111 ',
  `kecheng_types` int(11) DEFAULT NULL COMMENT '课程类型 Search111 ',
  `kecheng_kaike` varchar(200) DEFAULT NULL COMMENT '上课时间',
  `kecheng_content` text COMMENT '课程介绍',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='课程';

/*Data for the table `kecheng` */

insert  into `kecheng`(`id`,`jiaolian_id`,`jianshenfang_id`,`kecheng_name`,`kecheng_types`,`kecheng_kaike`,`kecheng_content`,`insert_time`,`create_time`) values (1,1,1,'课程名称1',2,'每周二上午十点到上午十二点','课程介绍1','2022-03-05 14:58:52','2022-03-05 14:58:52'),(2,2,2,'课程名称2',3,'每周三上午十点到上午十二点','课程介绍2','2022-03-05 14:58:52','2022-03-05 14:58:52'),(3,3,3,'课程名称3',3,'每周四上午十点到上午十二点','课程介绍3','2022-03-05 14:58:52','2022-03-05 14:58:52'),(4,4,4,'课程名称4',2,'每周五上午十点到上午十二点','课程介绍4','2022-03-05 14:58:52','2022-03-05 14:58:52'),(5,3,4,'课程名称5',3,'每周六上午十点到上午十二点1','<p>课程介绍51</p>','2022-03-05 14:58:52','2022-03-05 14:58:52');

/*Table structure for table `qicai` */

DROP TABLE IF EXISTS `qicai`;

CREATE TABLE `qicai` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qicai_name` varchar(200) DEFAULT NULL COMMENT '器材名称 Search111 ',
  `qicai_types` int(11) DEFAULT NULL COMMENT '器材类型 Search111 ',
  `qicai_photo` varchar(200) DEFAULT NULL COMMENT '器材照片',
  `qicai_number` int(11) DEFAULT NULL COMMENT '器材数量',
  `qicai_content` text COMMENT '器材介绍',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='器材';

/*Data for the table `qicai` */

insert  into `qicai`(`id`,`qicai_name`,`qicai_types`,`qicai_photo`,`qicai_number`,`qicai_content`,`insert_time`,`create_time`) values (1,'器材名称1',3,'http://localhost:8080/jianshenfangguanli/upload/yonghu1.jpg',173,'器材介绍1','2022-03-05 14:58:52','2022-03-05 14:58:52'),(2,'器材名称2',3,'http://localhost:8080/jianshenfangguanli/upload/yonghu2.jpg',310,'器材介绍2','2022-03-05 14:58:52','2022-03-05 14:58:52'),(3,'器材名称3',3,'http://localhost:8080/jianshenfangguanli/upload/yonghu3.jpg',204,'器材介绍3','2022-03-05 14:58:52','2022-03-05 14:58:52'),(4,'器材名称4',3,'http://localhost:8080/jianshenfangguanli/upload/yonghu1.jpg',382,'器材介绍4','2022-03-05 14:58:52','2022-03-05 14:58:52'),(5,'器材名称5',1,'http://localhost:8080/jianshenfangguanli/upload/yonghu2.jpg',87,'器材介绍5','2022-03-05 14:58:52','2022-03-05 14:58:52');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','tsg3rhkk6h6ko8iey8nprpie18ydfu4u','2022-03-05 15:02:02','2022-03-05 16:25:01'),(2,3,'a3','yonghu','用户','xg9wxoj858untxbmrc5ty1vn5s7uxs01','2022-03-05 15:20:27','2022-03-05 16:20:28');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2022-05-02 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `daoqi_time` timestamp NULL DEFAULT NULL COMMENT '会员到期日期',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '注册时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`daoqi_time`,`insert_time`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199610232001','http://localhost:8080/jianshenfangguanli/upload/yonghu1.jpg',1,'1@qq.com','2022-03-05 14:58:52','2022-03-05 14:58:52','2022-03-05 14:58:52'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/jianshenfangguanli/upload/yonghu2.jpg',1,'2@qq.com','2022-03-05 14:58:52','2022-03-05 14:58:52','2022-03-05 14:58:52'),(3,'a3','123456','用户姓名3','17703786903','410224199610232003','http://localhost:8080/jianshenfangguanli/upload/yonghu3.jpg',2,'3@qq.com','2022-07-01 14:58:52','2022-03-05 15:19:48','2022-03-05 14:58:52');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
