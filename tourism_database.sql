/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : tourism_database

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-03-08 18:24:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员主键',
  `admin_account` varchar(255) NOT NULL COMMENT '账号',
  `admin_password` varchar(255) NOT NULL COMMENT '密码',
  `admin_nickname` varchar(255) DEFAULT NULL COMMENT '昵称',
  `admin_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `admin_phone` varchar(255) DEFAULT NULL COMMENT '电话',
  `admin_email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `admin_question` varchar(255) NOT NULL COMMENT '密保问题',
  `admin_answer` varchar(255) NOT NULL COMMENT '密保答案',
  `admin_address` varchar(255) DEFAULT NULL COMMENT '地址',
  `admin_money` float(20,0) NOT NULL DEFAULT '0' COMMENT '余额',
  `admin_regtime` datetime NOT NULL COMMENT '注册时间',
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '13618660475', '13618660475', '巴勉', '/TourismPlatform/resources/admin/img/2.jpg.png', '13618660475', null, '我是谁？', '巴勉', '', '0', '2019-02-22 15:27:12');

-- ----------------------------
-- Table structure for attraction
-- ----------------------------
DROP TABLE IF EXISTS `attraction`;
CREATE TABLE `attraction` (
  `att_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '景点主键',
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员外键',
  `att_name` varchar(255) NOT NULL COMMENT '名称',
  `att_price` float(10,2) NOT NULL DEFAULT '0.00' COMMENT '价格',
  `att_ photo` varchar(255) DEFAULT NULL COMMENT '照片',
  `att_address` varchar(255) DEFAULT NULL COMMENT '地址',
  `att_introduce` varchar(255) DEFAULT NULL COMMENT '介绍',
  `att_grade` float(20,1) NOT NULL DEFAULT '0.0' COMMENT '景点评分',
  PRIMARY KEY (`att_id`),
  KEY `admin_id` (`admin_id`),
  CONSTRAINT `attraction_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attraction
-- ----------------------------
INSERT INTO `attraction` VALUES ('1', '1', '长城', '100.00', '/TourismPlatform/resources/test.jpg', '北京市延庆县', '世界第一城!', '1.8');
INSERT INTO `attraction` VALUES ('2', '1', '冰雪节', '120.00', '/TourismPlatform/resources/3.jpg', '黑龙江省-哈尔滨市-道外区', '冰雪的王国！', '3.0');

-- ----------------------------
-- Table structure for collection
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection` (
  `coll_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '收藏主键',
  `att_id` int(11) DEFAULT NULL COMMENT '景点外键',
  `user_id` int(11) DEFAULT NULL COMMENT '用户外键',
  PRIMARY KEY (`coll_id`),
  KEY `att_id` (`att_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `collection_ibfk_1` FOREIGN KEY (`att_id`) REFERENCES `attraction` (`att_id`),
  CONSTRAINT `collection_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collection
-- ----------------------------
INSERT INTO `collection` VALUES ('3', '1', '1');

-- ----------------------------
-- Table structure for detail
-- ----------------------------
DROP TABLE IF EXISTS `detail`;
CREATE TABLE `detail` (
  `line_id` int(11) NOT NULL,
  `detail_start` varchar(255) DEFAULT NULL COMMENT '起始点',
  `detail_end` varchar(255) DEFAULT NULL COMMENT '终点',
  `detail_line` varchar(255) DEFAULT NULL COMMENT '详细路线',
  PRIMARY KEY (`line_id`),
  CONSTRAINT `detail_ibfk_1` FOREIGN KEY (`line_id`) REFERENCES `line` (`line_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of detail
-- ----------------------------
INSERT INTO `detail` VALUES ('1', '武汉', '京港澳高速公路沿东北方向行驶', '北京');

-- ----------------------------
-- Table structure for evaluation
-- ----------------------------
DROP TABLE IF EXISTS `evaluation`;
CREATE TABLE `evaluation` (
  `eva_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评价主键',
  `eva_content` varchar(255) DEFAULT NULL COMMENT '内容',
  `eva_time` datetime DEFAULT NULL COMMENT '时间',
  `user_id` int(11) DEFAULT NULL COMMENT '用户外键',
  `user_nickname` varchar(255) DEFAULT NULL COMMENT '评价人',
  `is_anonymous` bit(2) NOT NULL DEFAULT b'0' COMMENT '是否匿名',
  `eva_grade` float NOT NULL DEFAULT '0' COMMENT '评分',
  `att_id` int(11) DEFAULT NULL COMMENT '景点外键',
  `eva_photo` varchar(255) DEFAULT NULL COMMENT '评价照片',
  PRIMARY KEY (`eva_id`),
  KEY `user_id` (`user_id`),
  KEY `att_id` (`att_id`),
  CONSTRAINT `evaluation_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `evaluation_ibfk_2` FOREIGN KEY (`att_id`) REFERENCES `attraction` (`att_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of evaluation
-- ----------------------------
INSERT INTO `evaluation` VALUES ('1', '棒棒哒', '2019-03-01 09:46:56', '1', '巴勉', '', '5', '1', '/TourismPlatform/resources/test.jpg');
INSERT INTO `evaluation` VALUES ('3', '非常好玩', '2019-03-01 17:10:58', '1', '巴勉', '\0', '2', '1', '/TourismPlatform/resources/test.jpg');
INSERT INTO `evaluation` VALUES ('4', '好好玩', '2019-03-07 17:39:06', '1', '知其白', '\0', '0', '1', '/TourismPlatform/resources/eva/141afea3-e2c1-4b92-bc58-5db0c354820e.jpg');
INSERT INTO `evaluation` VALUES ('5', '测试', '2019-03-07 17:47:33', '1', '知其白', '\0', '0', '1', null);

-- ----------------------------
-- Table structure for foot
-- ----------------------------
DROP TABLE IF EXISTS `foot`;
CREATE TABLE `foot` (
  `foot_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '足迹主键',
  `user_id` int(11) DEFAULT NULL COMMENT '用户外键',
  `att_id` int(11) DEFAULT NULL COMMENT '景点外键',
  PRIMARY KEY (`foot_id`),
  KEY `user_id` (`user_id`),
  KEY `foot_ibfk_2` (`att_id`),
  CONSTRAINT `foot_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `foot_ibfk_2` FOREIGN KEY (`att_id`) REFERENCES `attraction` (`att_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of foot
-- ----------------------------

-- ----------------------------
-- Table structure for img
-- ----------------------------
DROP TABLE IF EXISTS `img`;
CREATE TABLE `img` (
  `img_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '风景主键',
  `att_id` int(11) DEFAULT NULL COMMENT '景点外键',
  `img` varchar(255) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`img_id`),
  KEY `att_id` (`att_id`),
  CONSTRAINT `img_ibfk_1` FOREIGN KEY (`att_id`) REFERENCES `attraction` (`att_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of img
-- ----------------------------
INSERT INTO `img` VALUES ('1', '1', '/TourismPlatform/resources/test.jpg');
INSERT INTO `img` VALUES ('2', null, '/TourismPlatform/resources/Att/Img/bbebcc22-3d60-49fc-9a5a-9b2d983eb9b9.jpg');
INSERT INTO `img` VALUES ('3', null, '/TourismPlatform/resources/Att/Img/5aa8c3b9-c310-41a8-85fe-554289954543.jpg');

-- ----------------------------
-- Table structure for line
-- ----------------------------
DROP TABLE IF EXISTS `line`;
CREATE TABLE `line` (
  `line_id` int(11) NOT NULL AUTO_INCREMENT,
  `att_id` int(11) DEFAULT NULL COMMENT '景点外键',
  `line_name` varchar(255) DEFAULT NULL COMMENT '名称',
  PRIMARY KEY (`line_id`),
  KEY `att_id` (`att_id`),
  CONSTRAINT `line_ibfk_1` FOREIGN KEY (`att_id`) REFERENCES `attraction` (`att_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of line
-- ----------------------------
INSERT INTO `line` VALUES ('1', '1', '自驾游');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `mess_id` int(11) NOT NULL COMMENT '消息主键',
  `user_id` int(11) DEFAULT NULL COMMENT '用户外键',
  `att_id` int(11) DEFAULT NULL COMMENT '景点外键',
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员外键',
  `line_id` int(11) DEFAULT NULL COMMENT '路线外键',
  `is_approved` bit(1) DEFAULT b'0' COMMENT '是否通过',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  PRIMARY KEY (`mess_id`),
  KEY `user_id` (`user_id`),
  KEY `att_id` (`att_id`),
  KEY `admin_id` (`admin_id`),
  CONSTRAINT `message_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `message_ibfk_2` FOREIGN KEY (`att_id`) REFERENCES `attraction` (`att_id`),
  CONSTRAINT `message_ibfk_3` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `att_id` int(11) DEFAULT NULL,
  `att_price` float(20,2) DEFAULT NULL,
  `order_time` datetime NOT NULL,
  `order_number` int(11) DEFAULT NULL,
  `order_money` float(20,0) DEFAULT NULL,
  `att_name` varchar(255) DEFAULT NULL,
  `is_evaluation` bit(2) NOT NULL DEFAULT b'0',
  `is_order` bit(2) NOT NULL DEFAULT b'0',
  `is_delete` bit(2) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`),
  KEY `att_id` (`att_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`att_id`) REFERENCES `attraction` (`att_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '1', '1', '80.00', '2019-01-25 18:05:10', '10', '800', '长城', '', '', '\0');
INSERT INTO `orders` VALUES ('2', '1', '1', null, '2019-03-03 21:50:33', null, '0', '长城', '', '', '\0');
INSERT INTO `orders` VALUES ('3', '1', '1', '80.00', '2019-03-07 15:08:10', '2', '160', '长城', '', '', '\0');
INSERT INTO `orders` VALUES ('4', '1', '1', '80.00', '2019-03-07 17:16:19', '1', '80', '长城', '\0', '', '\0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户主键',
  `user_account` varchar(255) NOT NULL COMMENT '账号',
  `user_password` varchar(255) NOT NULL COMMENT '密码',
  `user_nickname` varchar(255) DEFAULT NULL COMMENT '昵称',
  `user_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `user_phone` varchar(255) DEFAULT NULL COMMENT '电话',
  `user_email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `user_question` varchar(255) NOT NULL COMMENT '密保问题',
  `user_answer` varchar(255) NOT NULL COMMENT '密保答案',
  `user_address` varchar(255) DEFAULT NULL COMMENT '地址',
  `user_money` float(20,0) NOT NULL DEFAULT '0' COMMENT '余额',
  `user_payword` int(11) NOT NULL,
  `user_regtime` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '13618660475', '123456', '知其白', '/TourismPlatform/resources/user/img/2.jpg.png', '13618660475', '1025600807@qq.com', '我的名字？', '巴勉', '武汉', '120', '888888', '2019-01-23 14:51:17');
INSERT INTO `user` VALUES ('2', '2016117142', '88888888', '知其黑', '/TourismPlatform/resources/user/img/2.jpg.png', '13618660475', '1025600807@qq.com', '你的生日？', '970510', '北京-北京市-东城区', '0', '888888', '2019-02-25 19:04:43');
