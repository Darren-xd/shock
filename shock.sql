/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : shock

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-12-25 21:26:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `room`
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomName` varchar(255) DEFAULT NULL,
  `usePwd` varchar(30) DEFAULT '123456',
  `installPwd` varchar(30) DEFAULT '123456',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1004 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES ('1002', '测试房间', '123456', '123456');
INSERT INTO `room` VALUES ('1003', '房间1', '888888', '888888');

-- ----------------------------
-- Table structure for `shock`
-- ----------------------------
DROP TABLE IF EXISTS `shock`;
CREATE TABLE `shock` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `phoneNum` varchar(13) DEFAULT NULL,
  `deviceId` varchar(50) DEFAULT NULL,
  `roomNum` int(50) DEFAULT NULL,
  `shockType` varchar(10) DEFAULT NULL,
  `reciverPhoneNum` varchar(13) DEFAULT NULL,
  `isreciver` varchar(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5937 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shock
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `deviceId` varchar(50) DEFAULT NULL,
  `phoneNum` varchar(13) DEFAULT NULL,
  `roomNum` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
