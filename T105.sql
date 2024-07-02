/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t105`;
CREATE DATABASE IF NOT EXISTS `t105` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t105`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springbootwk338/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springbootwk338/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springbootwk338/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `duiyingyuan`;
CREATE TABLE IF NOT EXISTS `duiyingyuan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuanmingcheng` varchar(200) DEFAULT NULL COMMENT '预案名称',
  `shouzaileixing` varchar(200) DEFAULT NULL COMMENT '受灾类型',
  `shouzaifanwei` longtext COMMENT '受灾范围',
  `shouzaishijian` varchar(200) DEFAULT NULL COMMENT '受灾时间',
  `shouzairenyuanshumu` int DEFAULT NULL COMMENT '受灾人员数目',
  `dengjishijian` date DEFAULT NULL COMMENT '登记时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3 COMMENT='对应预案';

DELETE FROM `duiyingyuan`;
INSERT INTO `duiyingyuan` (`id`, `addtime`, `yuanmingcheng`, `shouzaileixing`, `shouzaifanwei`, `shouzaishijian`, `shouzairenyuanshumu`, `dengjishijian`) VALUES
	(71, '2021-05-07 01:01:04', '预案名称1', '受灾类型1', '受灾范围1', '受灾时间1', 1, '2021-05-07'),
	(72, '2021-05-07 01:01:04', '预案名称2', '受灾类型2', '受灾范围2', '受灾时间2', 2, '2021-05-07'),
	(73, '2021-05-07 01:01:04', '预案名称3', '受灾类型3', '受灾范围3', '受灾时间3', 3, '2021-05-07'),
	(74, '2021-05-07 01:01:04', '预案名称4', '受灾类型4', '受灾范围4', '受灾时间4', 4, '2021-05-07'),
	(75, '2021-05-07 01:01:04', '预案名称5', '受灾类型5', '受灾范围5', '受灾时间5', 5, '2021-05-07'),
	(76, '2021-05-07 01:01:04', '预案名称6', '受灾类型6', '受灾范围6', '受灾时间6', 6, '2021-05-07');

DROP TABLE IF EXISTS `shijianleixing`;
CREATE TABLE IF NOT EXISTS `shijianleixing` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shijianleixing` varchar(200) DEFAULT NULL COMMENT '事件类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='事件类型';

DELETE FROM `shijianleixing`;
INSERT INTO `shijianleixing` (`id`, `addtime`, `shijianleixing`) VALUES
	(41, '2021-05-07 01:01:04', '事件类型1'),
	(42, '2021-05-07 01:01:04', '事件类型2'),
	(43, '2021-05-07 01:01:04', '事件类型3'),
	(44, '2021-05-07 01:01:04', '事件类型4'),
	(45, '2021-05-07 01:01:04', '事件类型5'),
	(46, '2021-05-07 01:01:04', '事件类型6');

DROP TABLE IF EXISTS `shijianleixingtongji`;
CREATE TABLE IF NOT EXISTS `shijianleixingtongji` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tongjibianhao` varchar(200) DEFAULT NULL COMMENT '统计编号',
  `shijianleixing` varchar(200) DEFAULT NULL COMMENT '事件类型',
  `shuliang` int DEFAULT NULL COMMENT '数量',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tongjibianhao` (`tongjibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3 COMMENT='事件类型统计';

DELETE FROM `shijianleixingtongji`;
INSERT INTO `shijianleixingtongji` (`id`, `addtime`, `tongjibianhao`, `shijianleixing`, `shuliang`, `dengjiriqi`, `beizhu`) VALUES
	(61, '2021-05-07 01:01:04', '统计编号1', '事件类型1', 1, '2021-05-07', '备注1'),
	(62, '2021-05-07 01:01:04', '统计编号2', '事件类型2', 2, '2021-05-07', '备注2'),
	(63, '2021-05-07 01:01:04', '统计编号3', '事件类型3', 3, '2021-05-07', '备注3'),
	(64, '2021-05-07 01:01:04', '统计编号4', '事件类型4', 4, '2021-05-07', '备注4'),
	(65, '2021-05-07 01:01:04', '统计编号5', '事件类型5', 5, '2021-05-07', '备注5'),
	(66, '2021-05-07 01:01:04', '统计编号6', '事件类型6', 6, '2021-05-07', '备注6');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'abo', 'users', '管理员', 'bp8lwznmv76l9lr0wxfe5s5v4dghkpt6', '2021-05-07 01:02:11', '2024-02-16 03:30:39'),
	(2, 11, '员工1', 'yuangong', '员工', '1a5o5ybnql29m2de7092w7tc2fwna3ce', '2024-02-16 02:31:20', '2024-02-16 03:31:21');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-05-07 01:01:04');

DROP TABLE IF EXISTS `yuangong`;
CREATE TABLE IF NOT EXISTS `yuangong` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) NOT NULL COMMENT '员工工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yuangongxingming` varchar(200) NOT NULL COMMENT '员工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) NOT NULL COMMENT '年龄',
  `lianxidianhua` varchar(200) NOT NULL COMMENT '联系电话',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuangonggonghao` (`yuangonggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='员工';

DELETE FROM `yuangong`;
INSERT INTO `yuangong` (`id`, `addtime`, `yuangonggonghao`, `mima`, `yuangongxingming`, `xingbie`, `nianling`, `lianxidianhua`, `tupian`) VALUES
	(11, '2021-05-07 01:01:04', '员工1', '123456', '员工姓名1', '男', '年龄1', '13823888881', 'http://localhost:8080/springbootwk338/upload/yuangong_tupian1.jpg'),
	(12, '2021-05-07 01:01:04', '员工2', '123456', '员工姓名2', '男', '年龄2', '13823888882', 'http://localhost:8080/springbootwk338/upload/yuangong_tupian2.jpg'),
	(13, '2021-05-07 01:01:04', '员工3', '123456', '员工姓名3', '男', '年龄3', '13823888883', 'http://localhost:8080/springbootwk338/upload/yuangong_tupian3.jpg'),
	(14, '2021-05-07 01:01:04', '员工4', '123456', '员工姓名4', '男', '年龄4', '13823888884', 'http://localhost:8080/springbootwk338/upload/yuangong_tupian4.jpg'),
	(15, '2021-05-07 01:01:04', '员工5', '123456', '员工姓名5', '男', '年龄5', '13823888885', 'http://localhost:8080/springbootwk338/upload/yuangong_tupian5.jpg'),
	(16, '2021-05-07 01:01:04', '员工6', '123456', '员工姓名6', '男', '年龄6', '13823888886', 'http://localhost:8080/springbootwk338/upload/yuangong_tupian6.jpg');

DROP TABLE IF EXISTS `yuanleixing`;
CREATE TABLE IF NOT EXISTS `yuanleixing` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuanleixing` varchar(200) DEFAULT NULL COMMENT '预案类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='预案类型';

DELETE FROM `yuanleixing`;
INSERT INTO `yuanleixing` (`id`, `addtime`, `yuanleixing`) VALUES
	(31, '2021-05-07 01:01:04', '预案类型1'),
	(32, '2021-05-07 01:01:04', '预案类型2'),
	(33, '2021-05-07 01:01:04', '预案类型3'),
	(34, '2021-05-07 01:01:04', '预案类型4'),
	(35, '2021-05-07 01:01:04', '预案类型5'),
	(36, '2021-05-07 01:01:04', '预案类型6');

DROP TABLE IF EXISTS `yuanleixingtongji`;
CREATE TABLE IF NOT EXISTS `yuanleixingtongji` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tongjibianhao` varchar(200) DEFAULT NULL COMMENT '统计编号',
  `yuanleixing` varchar(200) DEFAULT NULL COMMENT '预案类型',
  `shuliang` int DEFAULT NULL COMMENT '数量',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tongjibianhao` (`tongjibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COMMENT='预案类型统计';

DELETE FROM `yuanleixingtongji`;
INSERT INTO `yuanleixingtongji` (`id`, `addtime`, `tongjibianhao`, `yuanleixing`, `shuliang`, `dengjiriqi`, `beizhu`) VALUES
	(51, '2021-05-07 01:01:04', '统计编号1', '预案类型1', 1, '2021-05-07', '备注1'),
	(52, '2021-05-07 01:01:04', '统计编号2', '预案类型2', 2, '2021-05-07', '备注2'),
	(53, '2021-05-07 01:01:04', '统计编号3', '预案类型3', 3, '2021-05-07', '备注3'),
	(54, '2021-05-07 01:01:04', '统计编号4', '预案类型4', 4, '2021-05-07', '备注4'),
	(55, '2021-05-07 01:01:04', '统计编号5', '预案类型5', 5, '2021-05-07', '备注5'),
	(56, '2021-05-07 01:01:04', '统计编号6', '预案类型6', 6, '2021-05-07', '备注6');

DROP TABLE IF EXISTS `yuanxinxi`;
CREATE TABLE IF NOT EXISTS `yuanxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuanmingcheng` varchar(200) DEFAULT NULL COMMENT '预案名称',
  `yuanleixing` varchar(200) DEFAULT NULL COMMENT '预案类型',
  `shijianleixing` varchar(200) DEFAULT NULL COMMENT '事件类型',
  `chulibumen` varchar(200) DEFAULT NULL COMMENT '处理部门',
  `yuanwenben` longtext COMMENT '预案文本',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuanmingcheng` (`yuanmingcheng`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='预案信息';

DELETE FROM `yuanxinxi`;
INSERT INTO `yuanxinxi` (`id`, `addtime`, `yuanmingcheng`, `yuanleixing`, `shijianleixing`, `chulibumen`, `yuanwenben`) VALUES
	(21, '2021-05-07 01:01:04', '预案名称1', '预案类型1', '事件类型1', '处理部门1', '预案文本1'),
	(22, '2021-05-07 01:01:04', '预案名称2', '预案类型2', '事件类型2', '处理部门2', '预案文本2'),
	(23, '2021-05-07 01:01:04', '预案名称3', '预案类型3', '事件类型3', '处理部门3', '预案文本3'),
	(24, '2021-05-07 01:01:04', '预案名称4', '预案类型4', '事件类型4', '处理部门4', '预案文本4'),
	(25, '2021-05-07 01:01:04', '预案名称5', '预案类型5', '事件类型5', '处理部门5', '预案文本5'),
	(26, '2021-05-07 01:01:04', '预案名称6', '预案类型6', '事件类型6', '处理部门6', '预案文本6');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
