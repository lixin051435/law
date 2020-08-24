/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : db_law

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2020-08-24 21:55:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `admin_id` varchar(64) NOT NULL,
  `admin_nickname` varchar(255) DEFAULT NULL,
  `admin_realname` varchar(255) DEFAULT NULL,
  `admin_password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------

-- ----------------------------
-- Table structure for t_lawer
-- ----------------------------
DROP TABLE IF EXISTS `t_lawer`;
CREATE TABLE `t_lawer` (
  `lawer_id` varchar(64) NOT NULL,
  `lawer_nickname` varchar(255) DEFAULT NULL,
  `lawer_realname` varchar(255) DEFAULT NULL,
  `lawer_password` varchar(255) DEFAULT NULL,
  `lawer_gender` varchar(255) DEFAULT NULL,
  `lawer_icon` varchar(255) DEFAULT NULL,
  `lawer_title` varchar(255) DEFAULT NULL,
  `lawer_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`lawer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_lawer
-- ----------------------------

-- ----------------------------
-- Table structure for t_question
-- ----------------------------
DROP TABLE IF EXISTS `t_question`;
CREATE TABLE `t_question` (
  `question_id` varchar(64) NOT NULL,
  `user_id` varchar(64) DEFAULT NULL,
  `lawer_id` varchar(64) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `replytime` datetime DEFAULT NULL,
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
  `user_id` varchar(64) NOT NULL,
  `user_nickname` varchar(255) DEFAULT NULL,
  `user_realname` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_gender` varchar(255) DEFAULT NULL,
  `user_address` varchar(255) DEFAULT NULL,
  `user_phone` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `vip_level` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
