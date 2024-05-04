/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmo8x1z
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmo8x1z` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmo8x1z`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmo8x1z/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssmo8x1z/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssmo8x1z/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `dudao` */

DROP TABLE IF EXISTS `dudao`;

CREATE TABLE `dudao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dudaogonghao` varchar(200) NOT NULL COMMENT '督导工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `dudaoxingming` varchar(200) NOT NULL COMMENT '督导姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `dudaodianhua` varchar(200) DEFAULT NULL COMMENT '督导电话',
  `dudaoyouxiang` varchar(200) DEFAULT NULL COMMENT '督导邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dudaogonghao` (`dudaogonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='督导';

/*Data for the table `dudao` */

insert  into `dudao`(`id`,`addtime`,`dudaogonghao`,`mima`,`dudaoxingming`,`xingbie`,`zhaopian`,`dudaodianhua`,`dudaoyouxiang`) values (31,'2021-04-27 20:20:18','督导1','123456','督导姓名1','男','http://localhost:8080/ssmo8x1z/upload/dudao_zhaopian1.jpg','13823888881','773890001@qq.com');
insert  into `dudao`(`id`,`addtime`,`dudaogonghao`,`mima`,`dudaoxingming`,`xingbie`,`zhaopian`,`dudaodianhua`,`dudaoyouxiang`) values (32,'2021-04-27 20:20:18','督导2','123456','督导姓名2','男','http://localhost:8080/ssmo8x1z/upload/dudao_zhaopian2.jpg','13823888882','773890002@qq.com');
insert  into `dudao`(`id`,`addtime`,`dudaogonghao`,`mima`,`dudaoxingming`,`xingbie`,`zhaopian`,`dudaodianhua`,`dudaoyouxiang`) values (33,'2021-04-27 20:20:18','督导3','123456','督导姓名3','男','http://localhost:8080/ssmo8x1z/upload/dudao_zhaopian3.jpg','13823888883','773890003@qq.com');
insert  into `dudao`(`id`,`addtime`,`dudaogonghao`,`mima`,`dudaoxingming`,`xingbie`,`zhaopian`,`dudaodianhua`,`dudaoyouxiang`) values (34,'2021-04-27 20:20:18','督导4','123456','督导姓名4','男','http://localhost:8080/ssmo8x1z/upload/dudao_zhaopian4.jpg','13823888884','773890004@qq.com');
insert  into `dudao`(`id`,`addtime`,`dudaogonghao`,`mima`,`dudaoxingming`,`xingbie`,`zhaopian`,`dudaodianhua`,`dudaoyouxiang`) values (35,'2021-04-27 20:20:18','督导5','123456','督导姓名5','男','http://localhost:8080/ssmo8x1z/upload/dudao_zhaopian5.jpg','13823888885','773890005@qq.com');
insert  into `dudao`(`id`,`addtime`,`dudaogonghao`,`mima`,`dudaoxingming`,`xingbie`,`zhaopian`,`dudaodianhua`,`dudaoyouxiang`) values (36,'2021-04-27 20:20:18','督导6','123456','督导姓名6','男','http://localhost:8080/ssmo8x1z/upload/dudao_zhaopian6.jpg','13823888886','773890006@qq.com');

/*Table structure for table `dudaoliuyan` */

DROP TABLE IF EXISTS `dudaoliuyan`;

CREATE TABLE `dudaoliuyan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `gaijinneirong` varchar(200) DEFAULT NULL COMMENT '改进内容',
  `dudaoliuyan` longtext COMMENT '督导留言',
  `dudaogonghao` varchar(200) DEFAULT NULL COMMENT '督导工号',
  `dudaoxingming` varchar(200) DEFAULT NULL COMMENT '督导姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619526263762 DEFAULT CHARSET=utf8 COMMENT='督导留言';

/*Data for the table `dudaoliuyan` */

insert  into `dudaoliuyan`(`id`,`addtime`,`jiaoshixingming`,`zhaopian`,`gaijinneirong`,`dudaoliuyan`,`dudaogonghao`,`dudaoxingming`,`userid`) values (131,'2021-04-27 20:20:18','教师姓名1','http://localhost:8080/ssmo8x1z/upload/dudaoliuyan_zhaopian1.jpg','改进内容1','督导留言1','督导工号1','督导姓名1',1);
insert  into `dudaoliuyan`(`id`,`addtime`,`jiaoshixingming`,`zhaopian`,`gaijinneirong`,`dudaoliuyan`,`dudaogonghao`,`dudaoxingming`,`userid`) values (132,'2021-04-27 20:20:18','教师姓名2','http://localhost:8080/ssmo8x1z/upload/dudaoliuyan_zhaopian2.jpg','改进内容2','督导留言2','督导工号2','督导姓名2',2);
insert  into `dudaoliuyan`(`id`,`addtime`,`jiaoshixingming`,`zhaopian`,`gaijinneirong`,`dudaoliuyan`,`dudaogonghao`,`dudaoxingming`,`userid`) values (133,'2021-04-27 20:20:18','教师姓名3','http://localhost:8080/ssmo8x1z/upload/dudaoliuyan_zhaopian3.jpg','改进内容3','督导留言3','督导工号3','督导姓名3',3);
insert  into `dudaoliuyan`(`id`,`addtime`,`jiaoshixingming`,`zhaopian`,`gaijinneirong`,`dudaoliuyan`,`dudaogonghao`,`dudaoxingming`,`userid`) values (134,'2021-04-27 20:20:18','教师姓名4','http://localhost:8080/ssmo8x1z/upload/dudaoliuyan_zhaopian4.jpg','改进内容4','督导留言4','督导工号4','督导姓名4',4);
insert  into `dudaoliuyan`(`id`,`addtime`,`jiaoshixingming`,`zhaopian`,`gaijinneirong`,`dudaoliuyan`,`dudaogonghao`,`dudaoxingming`,`userid`) values (135,'2021-04-27 20:20:18','教师姓名5','http://localhost:8080/ssmo8x1z/upload/dudaoliuyan_zhaopian5.jpg','改进内容5','督导留言5','督导工号5','督导姓名5',5);
insert  into `dudaoliuyan`(`id`,`addtime`,`jiaoshixingming`,`zhaopian`,`gaijinneirong`,`dudaoliuyan`,`dudaogonghao`,`dudaoxingming`,`userid`) values (136,'2021-04-27 20:20:18','教师姓名6','http://localhost:8080/ssmo8x1z/upload/dudaoliuyan_zhaopian6.jpg','改进内容6','督导留言6','督导工号6','督导姓名6',6);
insert  into `dudaoliuyan`(`id`,`addtime`,`jiaoshixingming`,`zhaopian`,`gaijinneirong`,`dudaoliuyan`,`dudaogonghao`,`dudaoxingming`,`userid`) values (1619526263761,'2021-04-27 20:24:23','教师姓名6','http://localhost:8080/ssmo8x1z/upload/jiaoshi_zhaopian6.jpg','哈哈哈','<p>哈哈哈</p>','督导1','督导姓名1',NULL);

/*Table structure for table `dudaopingjia` */

DROP TABLE IF EXISTS `dudaopingjia`;

CREATE TABLE `dudaopingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `jiaoxuezhiliangpingfen` varchar(200) DEFAULT NULL COMMENT '教学质量评分',
  `jiaoxuetaidupingfen` varchar(200) DEFAULT NULL COMMENT '教学态度评分',
  `zonghejiaoxuepingfen` varchar(200) DEFAULT NULL COMMENT '综合教学评分',
  `pingjunfen` float DEFAULT NULL COMMENT '平均分',
  `pingjialiuyan` longtext COMMENT '评价留言',
  `dudaogonghao` varchar(200) DEFAULT NULL COMMENT '督导工号',
  `dudaoxingming` varchar(200) DEFAULT NULL COMMENT '督导姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619526244495 DEFAULT CHARSET=utf8 COMMENT='督导评价';

/*Data for the table `dudaopingjia` */

insert  into `dudaopingjia`(`id`,`addtime`,`jiaoshixingming`,`zhaopian`,`jiaoxuezhiliangpingfen`,`jiaoxuetaidupingfen`,`zonghejiaoxuepingfen`,`pingjunfen`,`pingjialiuyan`,`dudaogonghao`,`dudaoxingming`,`userid`) values (91,'2021-04-27 20:20:18','教师姓名1','http://localhost:8080/ssmo8x1z/upload/dudaopingjia_zhaopian1.jpg','5','5','5',1,'评价留言1','督导工号1','督导姓名1',1);
insert  into `dudaopingjia`(`id`,`addtime`,`jiaoshixingming`,`zhaopian`,`jiaoxuezhiliangpingfen`,`jiaoxuetaidupingfen`,`zonghejiaoxuepingfen`,`pingjunfen`,`pingjialiuyan`,`dudaogonghao`,`dudaoxingming`,`userid`) values (92,'2021-04-27 20:20:18','教师姓名2','http://localhost:8080/ssmo8x1z/upload/dudaopingjia_zhaopian2.jpg','5','5','5',2,'评价留言2','督导工号2','督导姓名2',2);
insert  into `dudaopingjia`(`id`,`addtime`,`jiaoshixingming`,`zhaopian`,`jiaoxuezhiliangpingfen`,`jiaoxuetaidupingfen`,`zonghejiaoxuepingfen`,`pingjunfen`,`pingjialiuyan`,`dudaogonghao`,`dudaoxingming`,`userid`) values (93,'2021-04-27 20:20:18','教师姓名3','http://localhost:8080/ssmo8x1z/upload/dudaopingjia_zhaopian3.jpg','5','5','5',3,'评价留言3','督导工号3','督导姓名3',3);
insert  into `dudaopingjia`(`id`,`addtime`,`jiaoshixingming`,`zhaopian`,`jiaoxuezhiliangpingfen`,`jiaoxuetaidupingfen`,`zonghejiaoxuepingfen`,`pingjunfen`,`pingjialiuyan`,`dudaogonghao`,`dudaoxingming`,`userid`) values (94,'2021-04-27 20:20:18','教师姓名4','http://localhost:8080/ssmo8x1z/upload/dudaopingjia_zhaopian4.jpg','5','5','5',4,'评价留言4','督导工号4','督导姓名4',4);
insert  into `dudaopingjia`(`id`,`addtime`,`jiaoshixingming`,`zhaopian`,`jiaoxuezhiliangpingfen`,`jiaoxuetaidupingfen`,`zonghejiaoxuepingfen`,`pingjunfen`,`pingjialiuyan`,`dudaogonghao`,`dudaoxingming`,`userid`) values (95,'2021-04-27 20:20:18','教师姓名5','http://localhost:8080/ssmo8x1z/upload/dudaopingjia_zhaopian5.jpg','5','5','5',5,'评价留言5','督导工号5','督导姓名5',5);
insert  into `dudaopingjia`(`id`,`addtime`,`jiaoshixingming`,`zhaopian`,`jiaoxuezhiliangpingfen`,`jiaoxuetaidupingfen`,`zonghejiaoxuepingfen`,`pingjunfen`,`pingjialiuyan`,`dudaogonghao`,`dudaoxingming`,`userid`) values (96,'2021-04-27 20:20:18','教师姓名6','http://localhost:8080/ssmo8x1z/upload/dudaopingjia_zhaopian6.jpg','5','5','5',6,'评价留言6','督导工号6','督导姓名6',6);
insert  into `dudaopingjia`(`id`,`addtime`,`jiaoshixingming`,`zhaopian`,`jiaoxuezhiliangpingfen`,`jiaoxuetaidupingfen`,`zonghejiaoxuepingfen`,`pingjunfen`,`pingjialiuyan`,`dudaogonghao`,`dudaoxingming`,`userid`) values (1619526244494,'2021-04-27 20:24:03','教师姓名6','http://localhost:8080/ssmo8x1z/upload/jiaoshi_zhaopian6.jpg','4','4','4',4,'<p>123</p>','督导1','督导姓名1',NULL);

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jiaoshiyouxiang` varchar(200) DEFAULT NULL COMMENT '教师邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`jiaoshigonghao`,`mima`,`jiaoshixingming`,`xingbie`,`zhaopian`,`zhicheng`,`lianxidianhua`,`jiaoshiyouxiang`) values (21,'2021-04-27 20:20:18','教师1','123456','教师姓名1','男','http://localhost:8080/ssmo8x1z/upload/jiaoshi_zhaopian1.jpg','助教','13823888881','773890001@qq.com');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshigonghao`,`mima`,`jiaoshixingming`,`xingbie`,`zhaopian`,`zhicheng`,`lianxidianhua`,`jiaoshiyouxiang`) values (22,'2021-04-27 20:20:18','教师2','123456','教师姓名2','男','http://localhost:8080/ssmo8x1z/upload/jiaoshi_zhaopian2.jpg','助教','13823888882','773890002@qq.com');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshigonghao`,`mima`,`jiaoshixingming`,`xingbie`,`zhaopian`,`zhicheng`,`lianxidianhua`,`jiaoshiyouxiang`) values (23,'2021-04-27 20:20:18','教师3','123456','教师姓名3','男','http://localhost:8080/ssmo8x1z/upload/jiaoshi_zhaopian3.jpg','助教','13823888883','773890003@qq.com');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshigonghao`,`mima`,`jiaoshixingming`,`xingbie`,`zhaopian`,`zhicheng`,`lianxidianhua`,`jiaoshiyouxiang`) values (24,'2021-04-27 20:20:18','教师4','123456','教师姓名4','男','http://localhost:8080/ssmo8x1z/upload/jiaoshi_zhaopian4.jpg','助教','13823888884','773890004@qq.com');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshigonghao`,`mima`,`jiaoshixingming`,`xingbie`,`zhaopian`,`zhicheng`,`lianxidianhua`,`jiaoshiyouxiang`) values (25,'2021-04-27 20:20:18','教师5','123456','教师姓名5','男','http://localhost:8080/ssmo8x1z/upload/jiaoshi_zhaopian5.jpg','助教','13823888885','773890005@qq.com');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshigonghao`,`mima`,`jiaoshixingming`,`xingbie`,`zhaopian`,`zhicheng`,`lianxidianhua`,`jiaoshiyouxiang`) values (26,'2021-04-27 20:20:18','教师6','123456','教师姓名6','男','http://localhost:8080/ssmo8x1z/upload/jiaoshi_zhaopian6.jpg','助教','13823888886','773890006@qq.com');

/*Table structure for table `jiaoshishouke` */

DROP TABLE IF EXISTS `jiaoshishouke`;

CREATE TABLE `jiaoshishouke` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengxuhao` varchar(200) DEFAULT NULL COMMENT '课程序号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengfengmian` varchar(200) DEFAULT NULL COMMENT '课程封面',
  `xuanzeriqi` date DEFAULT NULL COMMENT '选择日期',
  `shoukejihua` longtext COMMENT '授课计划',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='教师授课';

/*Data for the table `jiaoshishouke` */

insert  into `jiaoshishouke`(`id`,`addtime`,`kechengxuhao`,`kechengmingcheng`,`kechengfengmian`,`xuanzeriqi`,`shoukejihua`,`jiaoshigonghao`,`jiaoshixingming`,`userid`) values (71,'2021-04-27 20:20:18','课程序号1','课程名称1','http://localhost:8080/ssmo8x1z/upload/jiaoshishouke_kechengfengmian1.jpg','2021-04-27','授课计划1','教师工号1','教师姓名1',1);
insert  into `jiaoshishouke`(`id`,`addtime`,`kechengxuhao`,`kechengmingcheng`,`kechengfengmian`,`xuanzeriqi`,`shoukejihua`,`jiaoshigonghao`,`jiaoshixingming`,`userid`) values (72,'2021-04-27 20:20:18','课程序号2','课程名称2','http://localhost:8080/ssmo8x1z/upload/jiaoshishouke_kechengfengmian2.jpg','2021-04-27','授课计划2','教师工号2','教师姓名2',2);
insert  into `jiaoshishouke`(`id`,`addtime`,`kechengxuhao`,`kechengmingcheng`,`kechengfengmian`,`xuanzeriqi`,`shoukejihua`,`jiaoshigonghao`,`jiaoshixingming`,`userid`) values (73,'2021-04-27 20:20:18','课程序号3','课程名称3','http://localhost:8080/ssmo8x1z/upload/jiaoshishouke_kechengfengmian3.jpg','2021-04-27','授课计划3','教师工号3','教师姓名3',3);
insert  into `jiaoshishouke`(`id`,`addtime`,`kechengxuhao`,`kechengmingcheng`,`kechengfengmian`,`xuanzeriqi`,`shoukejihua`,`jiaoshigonghao`,`jiaoshixingming`,`userid`) values (74,'2021-04-27 20:20:18','课程序号4','课程名称4','http://localhost:8080/ssmo8x1z/upload/jiaoshishouke_kechengfengmian4.jpg','2021-04-27','授课计划4','教师工号4','教师姓名4',4);
insert  into `jiaoshishouke`(`id`,`addtime`,`kechengxuhao`,`kechengmingcheng`,`kechengfengmian`,`xuanzeriqi`,`shoukejihua`,`jiaoshigonghao`,`jiaoshixingming`,`userid`) values (75,'2021-04-27 20:20:18','课程序号5','课程名称5','http://localhost:8080/ssmo8x1z/upload/jiaoshishouke_kechengfengmian5.jpg','2021-04-27','授课计划5','教师工号5','教师姓名5',5);
insert  into `jiaoshishouke`(`id`,`addtime`,`kechengxuhao`,`kechengmingcheng`,`kechengfengmian`,`xuanzeriqi`,`shoukejihua`,`jiaoshigonghao`,`jiaoshixingming`,`userid`) values (76,'2021-04-27 20:20:18','课程序号6','课程名称6','http://localhost:8080/ssmo8x1z/upload/jiaoshishouke_kechengfengmian6.jpg','2021-04-27','授课计划6','教师工号6','教师姓名6',6);

/*Table structure for table `kechengxinxi` */

DROP TABLE IF EXISTS `kechengxinxi`;

CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengxuhao` varchar(200) DEFAULT NULL COMMENT '课程序号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengfengmian` varchar(200) DEFAULT NULL COMMENT '课程封面',
  `shangkeshijian` varchar(200) DEFAULT NULL COMMENT '上课时间',
  `shangkedidian` varchar(200) DEFAULT NULL COMMENT '上课地点',
  `kechengshizhang` varchar(200) DEFAULT NULL COMMENT '课程时长',
  `kechengjianjie` longtext COMMENT '课程简介',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechengxuhao` (`kechengxuhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='课程信息';

/*Data for the table `kechengxinxi` */

insert  into `kechengxinxi`(`id`,`addtime`,`kechengxuhao`,`kechengmingcheng`,`kechengfengmian`,`shangkeshijian`,`shangkedidian`,`kechengshizhang`,`kechengjianjie`) values (51,'2021-04-27 20:20:18','课程序号1','课程名称1','http://localhost:8080/ssmo8x1z/upload/kechengxinxi_kechengfengmian1.jpg','上课时间1','上课地点1','课程时长1','课程简介1');
insert  into `kechengxinxi`(`id`,`addtime`,`kechengxuhao`,`kechengmingcheng`,`kechengfengmian`,`shangkeshijian`,`shangkedidian`,`kechengshizhang`,`kechengjianjie`) values (52,'2021-04-27 20:20:18','课程序号2','课程名称2','http://localhost:8080/ssmo8x1z/upload/kechengxinxi_kechengfengmian2.jpg','上课时间2','上课地点2','课程时长2','课程简介2');
insert  into `kechengxinxi`(`id`,`addtime`,`kechengxuhao`,`kechengmingcheng`,`kechengfengmian`,`shangkeshijian`,`shangkedidian`,`kechengshizhang`,`kechengjianjie`) values (53,'2021-04-27 20:20:18','课程序号3','课程名称3','http://localhost:8080/ssmo8x1z/upload/kechengxinxi_kechengfengmian3.jpg','上课时间3','上课地点3','课程时长3','课程简介3');
insert  into `kechengxinxi`(`id`,`addtime`,`kechengxuhao`,`kechengmingcheng`,`kechengfengmian`,`shangkeshijian`,`shangkedidian`,`kechengshizhang`,`kechengjianjie`) values (54,'2021-04-27 20:20:18','课程序号4','课程名称4','http://localhost:8080/ssmo8x1z/upload/kechengxinxi_kechengfengmian4.jpg','上课时间4','上课地点4','课程时长4','课程简介4');
insert  into `kechengxinxi`(`id`,`addtime`,`kechengxuhao`,`kechengmingcheng`,`kechengfengmian`,`shangkeshijian`,`shangkedidian`,`kechengshizhang`,`kechengjianjie`) values (55,'2021-04-27 20:20:18','课程序号5','课程名称5','http://localhost:8080/ssmo8x1z/upload/kechengxinxi_kechengfengmian5.jpg','上课时间5','上课地点5','课程时长5','课程简介5');
insert  into `kechengxinxi`(`id`,`addtime`,`kechengxuhao`,`kechengmingcheng`,`kechengfengmian`,`shangkeshijian`,`shangkedidian`,`kechengshizhang`,`kechengjianjie`) values (56,'2021-04-27 20:20:18','课程序号6','课程名称6','http://localhost:8080/ssmo8x1z/upload/kechengxinxi_kechengfengmian6.jpg','上课时间6','上课地点6','课程时长6','课程简介6');

/*Table structure for table `shenqingdudaotingke` */

DROP TABLE IF EXISTS `shenqingdudaotingke`;

CREATE TABLE `shenqingdudaotingke` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengxuhao` varchar(200) DEFAULT NULL COMMENT '课程序号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengfengmian` varchar(200) DEFAULT NULL COMMENT '课程封面',
  `tingkeriqi` date DEFAULT NULL COMMENT '听课日期',
  `dudaogonghao` varchar(200) DEFAULT NULL COMMENT '督导工号',
  `dudaoxingming` varchar(200) DEFAULT NULL COMMENT '督导姓名',
  `dudaoyouxiang` varchar(200) DEFAULT NULL COMMENT '督导邮箱',
  `shenqingliyou` longtext COMMENT '申请理由',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='申请督导听课';

/*Data for the table `shenqingdudaotingke` */

insert  into `shenqingdudaotingke`(`id`,`addtime`,`kechengxuhao`,`kechengmingcheng`,`kechengfengmian`,`tingkeriqi`,`dudaogonghao`,`dudaoxingming`,`dudaoyouxiang`,`shenqingliyou`,`jiaoshigonghao`,`jiaoshixingming`,`sfsh`,`shhf`,`userid`) values (81,'2021-04-27 20:20:18','课程序号1','课程名称1','http://localhost:8080/ssmo8x1z/upload/shenqingdudaotingke_kechengfengmian1.jpg','2021-04-27','督导工号1','督导姓名1','督导邮箱1','申请理由1','教师工号1','教师姓名1','是','',1);
insert  into `shenqingdudaotingke`(`id`,`addtime`,`kechengxuhao`,`kechengmingcheng`,`kechengfengmian`,`tingkeriqi`,`dudaogonghao`,`dudaoxingming`,`dudaoyouxiang`,`shenqingliyou`,`jiaoshigonghao`,`jiaoshixingming`,`sfsh`,`shhf`,`userid`) values (82,'2021-04-27 20:20:18','课程序号2','课程名称2','http://localhost:8080/ssmo8x1z/upload/shenqingdudaotingke_kechengfengmian2.jpg','2021-04-27','督导工号2','督导姓名2','督导邮箱2','申请理由2','教师工号2','教师姓名2','是','',2);
insert  into `shenqingdudaotingke`(`id`,`addtime`,`kechengxuhao`,`kechengmingcheng`,`kechengfengmian`,`tingkeriqi`,`dudaogonghao`,`dudaoxingming`,`dudaoyouxiang`,`shenqingliyou`,`jiaoshigonghao`,`jiaoshixingming`,`sfsh`,`shhf`,`userid`) values (83,'2021-04-27 20:20:18','课程序号3','课程名称3','http://localhost:8080/ssmo8x1z/upload/shenqingdudaotingke_kechengfengmian3.jpg','2021-04-27','督导工号3','督导姓名3','督导邮箱3','申请理由3','教师工号3','教师姓名3','是','',3);
insert  into `shenqingdudaotingke`(`id`,`addtime`,`kechengxuhao`,`kechengmingcheng`,`kechengfengmian`,`tingkeriqi`,`dudaogonghao`,`dudaoxingming`,`dudaoyouxiang`,`shenqingliyou`,`jiaoshigonghao`,`jiaoshixingming`,`sfsh`,`shhf`,`userid`) values (84,'2021-04-27 20:20:18','课程序号4','课程名称4','http://localhost:8080/ssmo8x1z/upload/shenqingdudaotingke_kechengfengmian4.jpg','2021-04-27','督导工号4','督导姓名4','督导邮箱4','申请理由4','教师工号4','教师姓名4','是','',4);
insert  into `shenqingdudaotingke`(`id`,`addtime`,`kechengxuhao`,`kechengmingcheng`,`kechengfengmian`,`tingkeriqi`,`dudaogonghao`,`dudaoxingming`,`dudaoyouxiang`,`shenqingliyou`,`jiaoshigonghao`,`jiaoshixingming`,`sfsh`,`shhf`,`userid`) values (85,'2021-04-27 20:20:18','课程序号5','课程名称5','http://localhost:8080/ssmo8x1z/upload/shenqingdudaotingke_kechengfengmian5.jpg','2021-04-27','督导工号5','督导姓名5','督导邮箱5','申请理由5','教师工号5','教师姓名5','是','',5);
insert  into `shenqingdudaotingke`(`id`,`addtime`,`kechengxuhao`,`kechengmingcheng`,`kechengfengmian`,`tingkeriqi`,`dudaogonghao`,`dudaoxingming`,`dudaoyouxiang`,`shenqingliyou`,`jiaoshigonghao`,`jiaoshixingming`,`sfsh`,`shhf`,`userid`) values (86,'2021-04-27 20:20:18','课程序号6','课程名称6','http://localhost:8080/ssmo8x1z/upload/shenqingdudaotingke_kechengfengmian6.jpg','2021-04-27','督导工号6','督导姓名6','督导邮箱6','申请理由6','教师工号6','教师姓名6','是','',6);

/*Table structure for table `tingkejieguotongzhi` */

DROP TABLE IF EXISTS `tingkejieguotongzhi`;

CREATE TABLE `tingkejieguotongzhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengxuhao` varchar(200) DEFAULT NULL COMMENT '课程序号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengfengmian` varchar(200) DEFAULT NULL COMMENT '课程封面',
  `tingkeriqi` varchar(200) DEFAULT NULL COMMENT '听课日期',
  `tingkejieguo` longtext COMMENT '听课结果',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='听课结果通知';

/*Data for the table `tingkejieguotongzhi` */

insert  into `tingkejieguotongzhi`(`id`,`addtime`,`kechengxuhao`,`kechengmingcheng`,`kechengfengmian`,`tingkeriqi`,`tingkejieguo`,`jiaoshigonghao`,`jiaoshixingming`,`userid`) values (101,'2021-04-27 20:20:18','课程序号1','课程名称1','http://localhost:8080/ssmo8x1z/upload/tingkejieguotongzhi_kechengfengmian1.jpg','听课日期1','听课结果1','教师工号1','教师姓名1',1);
insert  into `tingkejieguotongzhi`(`id`,`addtime`,`kechengxuhao`,`kechengmingcheng`,`kechengfengmian`,`tingkeriqi`,`tingkejieguo`,`jiaoshigonghao`,`jiaoshixingming`,`userid`) values (102,'2021-04-27 20:20:18','课程序号2','课程名称2','http://localhost:8080/ssmo8x1z/upload/tingkejieguotongzhi_kechengfengmian2.jpg','听课日期2','听课结果2','教师工号2','教师姓名2',2);
insert  into `tingkejieguotongzhi`(`id`,`addtime`,`kechengxuhao`,`kechengmingcheng`,`kechengfengmian`,`tingkeriqi`,`tingkejieguo`,`jiaoshigonghao`,`jiaoshixingming`,`userid`) values (103,'2021-04-27 20:20:18','课程序号3','课程名称3','http://localhost:8080/ssmo8x1z/upload/tingkejieguotongzhi_kechengfengmian3.jpg','听课日期3','听课结果3','教师工号3','教师姓名3',3);
insert  into `tingkejieguotongzhi`(`id`,`addtime`,`kechengxuhao`,`kechengmingcheng`,`kechengfengmian`,`tingkeriqi`,`tingkejieguo`,`jiaoshigonghao`,`jiaoshixingming`,`userid`) values (104,'2021-04-27 20:20:18','课程序号4','课程名称4','http://localhost:8080/ssmo8x1z/upload/tingkejieguotongzhi_kechengfengmian4.jpg','听课日期4','听课结果4','教师工号4','教师姓名4',4);
insert  into `tingkejieguotongzhi`(`id`,`addtime`,`kechengxuhao`,`kechengmingcheng`,`kechengfengmian`,`tingkeriqi`,`tingkejieguo`,`jiaoshigonghao`,`jiaoshixingming`,`userid`) values (105,'2021-04-27 20:20:18','课程序号5','课程名称5','http://localhost:8080/ssmo8x1z/upload/tingkejieguotongzhi_kechengfengmian5.jpg','听课日期5','听课结果5','教师工号5','教师姓名5',5);
insert  into `tingkejieguotongzhi`(`id`,`addtime`,`kechengxuhao`,`kechengmingcheng`,`kechengfengmian`,`tingkeriqi`,`tingkejieguo`,`jiaoshigonghao`,`jiaoshixingming`,`userid`) values (106,'2021-04-27 20:20:18','课程序号6','课程名称6','http://localhost:8080/ssmo8x1z/upload/tingkejieguotongzhi_kechengfengmian6.jpg','听课日期6','听课结果6','教师工号6','教师姓名6',6);

/*Table structure for table `tingketongzhiyoujian` */

DROP TABLE IF EXISTS `tingketongzhiyoujian`;

CREATE TABLE `tingketongzhiyoujian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengxuhao` varchar(200) DEFAULT NULL COMMENT '课程序号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengfengmian` varchar(200) DEFAULT NULL COMMENT '课程封面',
  `tingkeriqi` varchar(200) DEFAULT NULL COMMENT '听课日期',
  `tongzhishijian` datetime DEFAULT NULL COMMENT '通知时间',
  `dudaogonghao` varchar(200) DEFAULT NULL COMMENT '督导工号',
  `dudaoxingming` varchar(200) DEFAULT NULL COMMENT '督导姓名',
  `dudaoyouxiang` varchar(200) DEFAULT NULL COMMENT '督导邮箱',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='听课通知邮件';

/*Data for the table `tingketongzhiyoujian` */

insert  into `tingketongzhiyoujian`(`id`,`addtime`,`kechengxuhao`,`kechengmingcheng`,`kechengfengmian`,`tingkeriqi`,`tongzhishijian`,`dudaogonghao`,`dudaoxingming`,`dudaoyouxiang`,`userid`) values (111,'2021-04-27 20:20:18','课程序号1','课程名称1','http://localhost:8080/ssmo8x1z/upload/tingketongzhiyoujian_kechengfengmian1.jpg','听课日期1','2021-04-27 20:20:18','督导工号1','督导姓名1','督导邮箱1',1);
insert  into `tingketongzhiyoujian`(`id`,`addtime`,`kechengxuhao`,`kechengmingcheng`,`kechengfengmian`,`tingkeriqi`,`tongzhishijian`,`dudaogonghao`,`dudaoxingming`,`dudaoyouxiang`,`userid`) values (112,'2021-04-27 20:20:18','课程序号2','课程名称2','http://localhost:8080/ssmo8x1z/upload/tingketongzhiyoujian_kechengfengmian2.jpg','听课日期2','2021-04-27 20:20:18','督导工号2','督导姓名2','督导邮箱2',2);
insert  into `tingketongzhiyoujian`(`id`,`addtime`,`kechengxuhao`,`kechengmingcheng`,`kechengfengmian`,`tingkeriqi`,`tongzhishijian`,`dudaogonghao`,`dudaoxingming`,`dudaoyouxiang`,`userid`) values (113,'2021-04-27 20:20:18','课程序号3','课程名称3','http://localhost:8080/ssmo8x1z/upload/tingketongzhiyoujian_kechengfengmian3.jpg','听课日期3','2021-04-27 20:20:18','督导工号3','督导姓名3','督导邮箱3',3);
insert  into `tingketongzhiyoujian`(`id`,`addtime`,`kechengxuhao`,`kechengmingcheng`,`kechengfengmian`,`tingkeriqi`,`tongzhishijian`,`dudaogonghao`,`dudaoxingming`,`dudaoyouxiang`,`userid`) values (114,'2021-04-27 20:20:18','课程序号4','课程名称4','http://localhost:8080/ssmo8x1z/upload/tingketongzhiyoujian_kechengfengmian4.jpg','听课日期4','2021-04-27 20:20:18','督导工号4','督导姓名4','督导邮箱4',4);
insert  into `tingketongzhiyoujian`(`id`,`addtime`,`kechengxuhao`,`kechengmingcheng`,`kechengfengmian`,`tingkeriqi`,`tongzhishijian`,`dudaogonghao`,`dudaoxingming`,`dudaoyouxiang`,`userid`) values (115,'2021-04-27 20:20:18','课程序号5','课程名称5','http://localhost:8080/ssmo8x1z/upload/tingketongzhiyoujian_kechengfengmian5.jpg','听课日期5','2021-04-27 20:20:18','督导工号5','督导姓名5','督导邮箱5',5);
insert  into `tingketongzhiyoujian`(`id`,`addtime`,`kechengxuhao`,`kechengmingcheng`,`kechengfengmian`,`tingkeriqi`,`tongzhishijian`,`dudaogonghao`,`dudaoxingming`,`dudaoyouxiang`,`userid`) values (116,'2021-04-27 20:20:18','课程序号6','课程名称6','http://localhost:8080/ssmo8x1z/upload/tingketongzhiyoujian_kechengfengmian6.jpg','听课日期6','2021-04-27 20:20:18','督导工号6','督导姓名6','督导邮箱6',6);

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'学生1','xuesheng','学生','ytxr11yfgr3veu02jy88upqndz3h032r','2021-04-27 20:22:16','2021-04-27 21:22:16');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,31,'督导1','dudao','督导','d33m47ubwu1aotjv0px4wi6pcthdv9zx','2021-04-27 20:23:30','2021-04-27 21:23:31');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-27 20:20:18');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`nianling`,`dianhua`,`youxiang`,`shenfenzheng`,`zhaopian`) values (11,'2021-04-27 20:20:18','学生1','123456','学生姓名1','男',1,'13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssmo8x1z/upload/xuesheng_zhaopian1.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`nianling`,`dianhua`,`youxiang`,`shenfenzheng`,`zhaopian`) values (12,'2021-04-27 20:20:18','学生2','123456','学生姓名2','男',2,'13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssmo8x1z/upload/xuesheng_zhaopian2.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`nianling`,`dianhua`,`youxiang`,`shenfenzheng`,`zhaopian`) values (13,'2021-04-27 20:20:18','学生3','123456','学生姓名3','男',3,'13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssmo8x1z/upload/xuesheng_zhaopian3.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`nianling`,`dianhua`,`youxiang`,`shenfenzheng`,`zhaopian`) values (14,'2021-04-27 20:20:18','学生4','123456','学生姓名4','男',4,'13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssmo8x1z/upload/xuesheng_zhaopian4.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`nianling`,`dianhua`,`youxiang`,`shenfenzheng`,`zhaopian`) values (15,'2021-04-27 20:20:18','学生5','123456','学生姓名5','男',5,'13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssmo8x1z/upload/xuesheng_zhaopian5.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`nianling`,`dianhua`,`youxiang`,`shenfenzheng`,`zhaopian`) values (16,'2021-04-27 20:20:18','学生6','123456','学生姓名6','男',6,'13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssmo8x1z/upload/xuesheng_zhaopian6.jpg');

/*Table structure for table `xueshengliuyan` */

DROP TABLE IF EXISTS `xueshengliuyan`;

CREATE TABLE `xueshengliuyan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `gaijinneirong` varchar(200) DEFAULT NULL COMMENT '改进内容',
  `xueshengliuyan` longtext COMMENT '学生留言',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619526162915 DEFAULT CHARSET=utf8 COMMENT='学生留言';

/*Data for the table `xueshengliuyan` */

insert  into `xueshengliuyan`(`id`,`addtime`,`jiaoshixingming`,`zhaopian`,`gaijinneirong`,`xueshengliuyan`,`xuehao`,`xueshengxingming`,`userid`) values (121,'2021-04-27 20:20:18','教师姓名1','http://localhost:8080/ssmo8x1z/upload/xueshengliuyan_zhaopian1.jpg','改进内容1','学生留言1','学号1','学生姓名1',1);
insert  into `xueshengliuyan`(`id`,`addtime`,`jiaoshixingming`,`zhaopian`,`gaijinneirong`,`xueshengliuyan`,`xuehao`,`xueshengxingming`,`userid`) values (122,'2021-04-27 20:20:18','教师姓名2','http://localhost:8080/ssmo8x1z/upload/xueshengliuyan_zhaopian2.jpg','改进内容2','学生留言2','学号2','学生姓名2',2);
insert  into `xueshengliuyan`(`id`,`addtime`,`jiaoshixingming`,`zhaopian`,`gaijinneirong`,`xueshengliuyan`,`xuehao`,`xueshengxingming`,`userid`) values (123,'2021-04-27 20:20:18','教师姓名3','http://localhost:8080/ssmo8x1z/upload/xueshengliuyan_zhaopian3.jpg','改进内容3','学生留言3','学号3','学生姓名3',3);
insert  into `xueshengliuyan`(`id`,`addtime`,`jiaoshixingming`,`zhaopian`,`gaijinneirong`,`xueshengliuyan`,`xuehao`,`xueshengxingming`,`userid`) values (124,'2021-04-27 20:20:18','教师姓名4','http://localhost:8080/ssmo8x1z/upload/xueshengliuyan_zhaopian4.jpg','改进内容4','学生留言4','学号4','学生姓名4',4);
insert  into `xueshengliuyan`(`id`,`addtime`,`jiaoshixingming`,`zhaopian`,`gaijinneirong`,`xueshengliuyan`,`xuehao`,`xueshengxingming`,`userid`) values (125,'2021-04-27 20:20:18','教师姓名5','http://localhost:8080/ssmo8x1z/upload/xueshengliuyan_zhaopian5.jpg','改进内容5','学生留言5','学号5','学生姓名5',5);
insert  into `xueshengliuyan`(`id`,`addtime`,`jiaoshixingming`,`zhaopian`,`gaijinneirong`,`xueshengliuyan`,`xuehao`,`xueshengxingming`,`userid`) values (126,'2021-04-27 20:20:18','教师姓名6','http://localhost:8080/ssmo8x1z/upload/xueshengliuyan_zhaopian6.jpg','改进内容6','学生留言6','学号6','学生姓名6',6);
insert  into `xueshengliuyan`(`id`,`addtime`,`jiaoshixingming`,`zhaopian`,`gaijinneirong`,`xueshengliuyan`,`xuehao`,`xueshengxingming`,`userid`) values (1619526162914,'2021-04-27 20:22:42','教师姓名6','http://localhost:8080/ssmo8x1z/upload/jiaoshi_zhaopian6.jpg','321','<p>请输入学生留言123</p>\n<p>123123</p>\n<p>123</p>','学生1','学生姓名1',11);

/*Table structure for table `xueshengpingjia` */

DROP TABLE IF EXISTS `xueshengpingjia`;

CREATE TABLE `xueshengpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `jiaoxuezhiliangpingfen` varchar(200) DEFAULT NULL COMMENT '教学质量评分',
  `jiaoxuetaidupingfen` varchar(200) DEFAULT NULL COMMENT '教学态度评分',
  `zonghejiaoxuepingfen` varchar(200) DEFAULT NULL COMMENT '综合教学评分',
  `pingjunfen` float DEFAULT NULL COMMENT '平均分',
  `pingjialiuyan` longtext COMMENT '评价留言',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619526151498 DEFAULT CHARSET=utf8 COMMENT='学生评价';

/*Data for the table `xueshengpingjia` */

insert  into `xueshengpingjia`(`id`,`addtime`,`jiaoshixingming`,`zhaopian`,`jiaoxuezhiliangpingfen`,`jiaoxuetaidupingfen`,`zonghejiaoxuepingfen`,`pingjunfen`,`pingjialiuyan`,`xuehao`,`xueshengxingming`,`userid`) values (41,'2021-04-27 20:20:18','教师姓名1','http://localhost:8080/ssmo8x1z/upload/xueshengpingjia_zhaopian1.jpg','5','5','5',1,'评价留言1','学号1','学生姓名1',1);
insert  into `xueshengpingjia`(`id`,`addtime`,`jiaoshixingming`,`zhaopian`,`jiaoxuezhiliangpingfen`,`jiaoxuetaidupingfen`,`zonghejiaoxuepingfen`,`pingjunfen`,`pingjialiuyan`,`xuehao`,`xueshengxingming`,`userid`) values (42,'2021-04-27 20:20:18','教师姓名2','http://localhost:8080/ssmo8x1z/upload/xueshengpingjia_zhaopian2.jpg','5','5','5',2,'评价留言2','学号2','学生姓名2',2);
insert  into `xueshengpingjia`(`id`,`addtime`,`jiaoshixingming`,`zhaopian`,`jiaoxuezhiliangpingfen`,`jiaoxuetaidupingfen`,`zonghejiaoxuepingfen`,`pingjunfen`,`pingjialiuyan`,`xuehao`,`xueshengxingming`,`userid`) values (43,'2021-04-27 20:20:18','教师姓名3','http://localhost:8080/ssmo8x1z/upload/xueshengpingjia_zhaopian3.jpg','5','5','5',3,'评价留言3','学号3','学生姓名3',3);
insert  into `xueshengpingjia`(`id`,`addtime`,`jiaoshixingming`,`zhaopian`,`jiaoxuezhiliangpingfen`,`jiaoxuetaidupingfen`,`zonghejiaoxuepingfen`,`pingjunfen`,`pingjialiuyan`,`xuehao`,`xueshengxingming`,`userid`) values (44,'2021-04-27 20:20:18','教师姓名4','http://localhost:8080/ssmo8x1z/upload/xueshengpingjia_zhaopian4.jpg','5','5','5',4,'评价留言4','学号4','学生姓名4',4);
insert  into `xueshengpingjia`(`id`,`addtime`,`jiaoshixingming`,`zhaopian`,`jiaoxuezhiliangpingfen`,`jiaoxuetaidupingfen`,`zonghejiaoxuepingfen`,`pingjunfen`,`pingjialiuyan`,`xuehao`,`xueshengxingming`,`userid`) values (45,'2021-04-27 20:20:18','教师姓名5','http://localhost:8080/ssmo8x1z/upload/xueshengpingjia_zhaopian5.jpg','5','5','5',5,'评价留言5','学号5','学生姓名5',5);
insert  into `xueshengpingjia`(`id`,`addtime`,`jiaoshixingming`,`zhaopian`,`jiaoxuezhiliangpingfen`,`jiaoxuetaidupingfen`,`zonghejiaoxuepingfen`,`pingjunfen`,`pingjialiuyan`,`xuehao`,`xueshengxingming`,`userid`) values (46,'2021-04-27 20:20:18','教师姓名6','http://localhost:8080/ssmo8x1z/upload/xueshengpingjia_zhaopian6.jpg','5','5','5',6,'评价留言6','学号6','学生姓名6',6);
insert  into `xueshengpingjia`(`id`,`addtime`,`jiaoshixingming`,`zhaopian`,`jiaoxuezhiliangpingfen`,`jiaoxuetaidupingfen`,`zonghejiaoxuepingfen`,`pingjunfen`,`pingjialiuyan`,`xuehao`,`xueshengxingming`,`userid`) values (1619526151497,'2021-04-27 20:22:30','教师姓名6','http://localhost:8080/ssmo8x1z/upload/jiaoshi_zhaopian6.jpg','3','5','4',4,'<p>请输入评价留言12312</p>','学生1','学生姓名1',11);

/*Table structure for table `xueshengxuanke` */

DROP TABLE IF EXISTS `xueshengxuanke`;

CREATE TABLE `xueshengxuanke` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengxuhao` varchar(200) DEFAULT NULL COMMENT '课程序号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengfengmian` varchar(200) DEFAULT NULL COMMENT '课程封面',
  `yuyueriqi` date DEFAULT NULL COMMENT '预约日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='学生选课';

/*Data for the table `xueshengxuanke` */

insert  into `xueshengxuanke`(`id`,`addtime`,`kechengxuhao`,`kechengmingcheng`,`kechengfengmian`,`yuyueriqi`,`xuehao`,`xueshengxingming`,`userid`) values (61,'2021-04-27 20:20:18','课程序号1','课程名称1','http://localhost:8080/ssmo8x1z/upload/xueshengxuanke_kechengfengmian1.jpg','2021-04-27','学号1','学生姓名1',1);
insert  into `xueshengxuanke`(`id`,`addtime`,`kechengxuhao`,`kechengmingcheng`,`kechengfengmian`,`yuyueriqi`,`xuehao`,`xueshengxingming`,`userid`) values (62,'2021-04-27 20:20:18','课程序号2','课程名称2','http://localhost:8080/ssmo8x1z/upload/xueshengxuanke_kechengfengmian2.jpg','2021-04-27','学号2','学生姓名2',2);
insert  into `xueshengxuanke`(`id`,`addtime`,`kechengxuhao`,`kechengmingcheng`,`kechengfengmian`,`yuyueriqi`,`xuehao`,`xueshengxingming`,`userid`) values (63,'2021-04-27 20:20:18','课程序号3','课程名称3','http://localhost:8080/ssmo8x1z/upload/xueshengxuanke_kechengfengmian3.jpg','2021-04-27','学号3','学生姓名3',3);
insert  into `xueshengxuanke`(`id`,`addtime`,`kechengxuhao`,`kechengmingcheng`,`kechengfengmian`,`yuyueriqi`,`xuehao`,`xueshengxingming`,`userid`) values (64,'2021-04-27 20:20:18','课程序号4','课程名称4','http://localhost:8080/ssmo8x1z/upload/xueshengxuanke_kechengfengmian4.jpg','2021-04-27','学号4','学生姓名4',4);
insert  into `xueshengxuanke`(`id`,`addtime`,`kechengxuhao`,`kechengmingcheng`,`kechengfengmian`,`yuyueriqi`,`xuehao`,`xueshengxingming`,`userid`) values (65,'2021-04-27 20:20:18','课程序号5','课程名称5','http://localhost:8080/ssmo8x1z/upload/xueshengxuanke_kechengfengmian5.jpg','2021-04-27','学号5','学生姓名5',5);
insert  into `xueshengxuanke`(`id`,`addtime`,`kechengxuhao`,`kechengmingcheng`,`kechengfengmian`,`yuyueriqi`,`xuehao`,`xueshengxingming`,`userid`) values (66,'2021-04-27 20:20:18','课程序号6','课程名称6','http://localhost:8080/ssmo8x1z/upload/xueshengxuanke_kechengfengmian6.jpg','2021-04-27','学号6','学生姓名6',6);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
