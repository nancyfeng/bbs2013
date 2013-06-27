/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50141
Source Host           : localhost:3306
Source Database       : gamesbbs

Target Server Type    : MYSQL
Target Server Version : 50141
File Encoding         : 65001

Date: 2012-01-04 23:29:38
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate_id` int(11) DEFAULT NULL COMMENT '板块id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `context` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '内容',
  PRIMARY KEY (`id`),
  KEY `FK3C3132FA3332439` (`user_id`),
  KEY `FK3C3132FF071FA5B` (`plate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('20', '2', '36', '我选择，我喜欢');
INSERT INTO `admin` VALUES ('19', '1', '35', '我要申请');
INSERT INTO `admin` VALUES ('21', '3', '40', '');

-- ----------------------------
-- Table structure for `groud`
-- ----------------------------
DROP TABLE IF EXISTS `groud`;
CREATE TABLE `groud` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '类分名称',
  `plate_id` int(11) DEFAULT NULL COMMENT '板块id',
  PRIMARY KEY (`id`),
  KEY `FK41E06534281937B` (`plate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of groud
-- ----------------------------
INSERT INTO `groud` VALUES ('1', '真三', '1');
INSERT INTO `groud` VALUES ('2', 'DOTA', '1');
INSERT INTO `groud` VALUES ('3', '澄海3C', '1');
INSERT INTO `groud` VALUES ('4', '其他RPG', '1');
INSERT INTO `groud` VALUES ('5', '英雄联盟', '2');
INSERT INTO `groud` VALUES ('6', '地下城与勇士', '2');
INSERT INTO `groud` VALUES ('7', '天龙八部', '2');
INSERT INTO `groud` VALUES ('8', '其他网游', '2');
INSERT INTO `groud` VALUES ('9', '植物大战僵尸', '3');
INSERT INTO `groud` VALUES ('10', '仙剑奇侠传5', '3');
INSERT INTO `groud` VALUES ('11', '街机游戏', '3');
INSERT INTO `groud` VALUES ('12', '其他单机游戏', '3');

-- ----------------------------
-- Table structure for `plate`
-- ----------------------------
DROP TABLE IF EXISTS `plate`;
CREATE TABLE `plate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '块板名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of plate
-- ----------------------------
INSERT INTO `plate` VALUES ('1', 'war3板块');
INSERT INTO `plate` VALUES ('2', '网游板块');
INSERT INTO `plate` VALUES ('3', '单机板块');

-- ----------------------------
-- Table structure for `post`
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groud_id` int(11) DEFAULT NULL COMMENT '分类id',
  `createTime` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '发帖时间',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '标题',
  `context` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '容内',
  `replyTime` int(11) DEFAULT NULL COMMENT '回复次数',
  `readTime` int(11) DEFAULT NULL COMMENT '览浏次数',
  PRIMARY KEY (`id`),
  KEY `FK49B8BB3A3332439` (`user_id`),
  KEY `FK49B8BB3F071FA5B` (`groud_id`)
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('101', '1', '2012-01-04  15:55:50', '35', '真三俱乐部', '无兄弟，不真三', '7', '15');
INSERT INTO `post` VALUES ('93', '2', '2012-01-03  14:57:46', '35', 'dota帖', '内容', '1', '4');
INSERT INTO `post` VALUES ('94', '1', '2012-01-03  14:58:01', '35', '真三帖', '内容', '2', '14');
INSERT INTO `post` VALUES ('98', '1', '2012-01-03  17:56:36', '36', '赵云', '单下', '2', '8');
INSERT INTO `post` VALUES ('102', '2', '2012-01-04  16:00:53', '38', 'dota6.73b发布', '新英雄很飘逸', '0', '1');
INSERT INTO `post` VALUES ('103', '1', '2012-01-04  16:05:12', '41', '真三', '我为测试而来', '0', '6');
INSERT INTO `post` VALUES ('104', '1', '2012-01-04  23:22:18', '35', 'df', 'ff', '1', '2');

-- ----------------------------
-- Table structure for `reply`
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `context` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '回复内容',
  `replyTime` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '回复时间',
  `post_id` int(11) DEFAULT NULL COMMENT '主贴id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `FK4B322CAFFF37E5B` (`post_id`),
  KEY `FK4B322CAA3332439` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES ('58', '回复2', '2012-01-03  15:17:21', '94', '36');
INSERT INTO `reply` VALUES ('57', '真三回复', '2012-01-03  14:59:00', '94', '35');
INSERT INTO `reply` VALUES ('59', '顶', '2012-01-03  17:56:58', '98', '36');
INSERT INTO `reply` VALUES ('62', '回复1', '2012-01-04  15:56:07', '101', '35');
INSERT INTO `reply` VALUES ('63', '回复2', '2012-01-04  15:56:15', '101', '35');
INSERT INTO `reply` VALUES ('64', '回复3', '2012-01-04  15:57:04', '101', '38');
INSERT INTO `reply` VALUES ('65', '回复4', '2012-01-04  15:57:20', '101', '38');
INSERT INTO `reply` VALUES ('66', '回复5', '2012-01-04  15:57:28', '101', '38');
INSERT INTO `reply` VALUES ('67', '回复6', '2012-01-04  15:57:35', '101', '38');
INSERT INTO `reply` VALUES ('68', '测试通过', '2012-01-04  15:57:57', '101', '38');
INSERT INTO `reply` VALUES ('69', 'ff', '2012-01-04  23:22:26', '104', '35');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '码密',
  `address` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '址地',
  `answer` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '案答',
  `birthday` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '日生',
  `email` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'email',
  `idiograph` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '性个签名',
  `isOpen` int(11) NOT NULL COMMENT '否是公开信息',
  `qq` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'qq',
  `question` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '题问',
  `realname` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '实真姓名',
  `score` int(11) NOT NULL COMMENT '分积',
  `sex` int(11) NOT NULL COMMENT '别性',
  `type` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户类型',
  `postTime` int(11) DEFAULT NULL COMMENT '帖发次数',
  `replyTime` int(11) DEFAULT NULL COMMENT '帖回次数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('35', 'user', '123456', '广东', '我的答案', '1900年 1月 1日 ', 'aa.@com', '签名', '0', '11122333', '', '真名', '29', '0', '普通用户', '5', '4');
INSERT INTO `user` VALUES ('36', 'admin', '123456', '让我想想', '你懂的', '1900年 1月 1日 ', 'aa.@com', '我是我自己的神', '1', '56899922', '', '真么', '512', '1', '管理员', '2', '2');
INSERT INTO `user` VALUES ('37', '测试', 'aaaaaa', '地方', '测试答案', '1912年 8月 1日 ', 'emai。', '怎么', '0', '33772222', '测试问题', '拉拉', '5', '1', '普通用户', '1', '0');
INSERT INTO `user` VALUES ('38', '李嘉敏', '000000', 'fsf', 'ffsdf', '1908年 8月 13日 ', 'ldfl.fj', '垚淼', '1', '222', 'sffdfd', 'fdf', '10', '1', '普通用户', '1', '5');
INSERT INTO `user` VALUES ('39', 'a1515', '123456', '123123', '123123', '1900年 1月 1日 ', '3215@qq.com', '3123213', '0', '1232312', '123', '123123', '6', '0', '普通用户', '1', '1');
INSERT INTO `user` VALUES ('41', '垚淼', '123456', '发生大幅', '福到底', '1900年 1月 1日 ', '的', '为测试而来', '1', '333336565', '反对撒地方', '非师范', '5', '1', '普通用户', '1', '0');
