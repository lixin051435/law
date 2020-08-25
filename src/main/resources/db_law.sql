/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : db_law

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2020-08-25 23:19:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `admin_id` varchar(255) NOT NULL,
  `admin_nickname` varchar(255) DEFAULT NULL,
  `admin_password` varchar(255) DEFAULT NULL,
  `admin_realname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------

-- ----------------------------
-- Table structure for t_info
-- ----------------------------
DROP TABLE IF EXISTS `t_info`;
CREATE TABLE `t_info` (
  `info_id` varchar(64) NOT NULL,
  `info_title` varchar(255) DEFAULT NULL,
  `info_type` varchar(255) DEFAULT '知识',
  `info_content` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_lawyer
-- ----------------------------
DROP TABLE IF EXISTS `t_lawyer`;
CREATE TABLE `t_lawyer` (
  `lawyer_id` varchar(255) NOT NULL,
  `lawyer_description` varchar(255) DEFAULT NULL COMMENT '律师详细介绍',
  `lawyer_gender` varchar(255) DEFAULT NULL,
  `lawyer_icon` varchar(255) DEFAULT NULL,
  `lawyer_nickname` varchar(255) DEFAULT NULL,
  `lawyer_password` varchar(255) DEFAULT NULL,
  `lawyer_realname` varchar(255) DEFAULT NULL,
  `lawyer_title` varchar(255) DEFAULT NULL COMMENT '律师介绍标题',
  `lawyer_type` int(11) DEFAULT NULL COMMENT '律师类型，0表示免费，1表示收费',
  `lawyer_field` varchar(255) DEFAULT NULL COMMENT '擅长领域',
  PRIMARY KEY (`lawyer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_lawyer
-- ----------------------------

-- ----------------------------
-- Table structure for t_question
-- ----------------------------
DROP TABLE IF EXISTS `t_question`;
CREATE TABLE `t_question` (
  `question_id` varchar(255) NOT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `createtime` datetime(6) DEFAULT NULL,
  `lawer_id` varchar(255) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `replytime` datetime(6) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `payment` decimal(10,1) DEFAULT NULL COMMENT '付费金额',
  `status` int(255) DEFAULT NULL COMMENT '提问状态',
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_question
-- ----------------------------

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` varchar(255) NOT NULL,
  `user_address` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_gender` varchar(255) DEFAULT NULL,
  `user_nickname` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_phone` varchar(255) DEFAULT NULL,
  `user_realname` varchar(255) DEFAULT NULL,
  `vip_level` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------

-- ----------------------------
-- Table structure for t_vip
-- ----------------------------
DROP TABLE IF EXISTS `t_vip`;
CREATE TABLE `t_vip` (
  `vip_id` varchar(64) NOT NULL,
  `vip_name` varchar(255) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  PRIMARY KEY (`vip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_vip
-- ----------------------------
INSERT INTO `t_vip` VALUES ('111', '1', '1');
INSERT INTO `t_vip` VALUES ('12', '12', '12');
INSERT INTO `t_vip` VALUES ('123', 'hj', null);
INSERT INTO `t_vip` VALUES ('hj', 'jk', null);
INSERT INTO `t_vip` VALUES ('hjkh ', 'kjlk', null);
INSERT INTO `t_vip` VALUES ('jk', 'hj', null);
INSERT INTO `t_vip` VALUES ('ljl', 'jkljkl', null);
INSERT INTO `t_vip` VALUES ('vip1', 'vip1', '7');
